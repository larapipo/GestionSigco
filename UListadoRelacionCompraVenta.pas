unit UListadoRelacionCompraVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, frxClass,
  frxDBSet, Grids, DBGrids, Mask,   DBClient, Provider,DateUtils,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr,
  System.Actions, JvAppStorage, JvAppIniStorage, CompBuscador, DataExport,
  DataToXLS,VirtualUI_SDK, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormListadoRelacionCompraVenta = class(TFormABMBase)
    UpDown1: TUpDown;
    dbgDetalle: TDBGrid;
    DSDetalle: TDataSource;
    frDBMov: TfrxDBDataset;
    frListado: TfrxReport;
    DSPDetalle: TDataSetProvider;
    CDSDetalle: TClientDataSet;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    QDetalle: TFDQuery;
    CDSDetalleCODIGO: TStringField;
    CDSDetalleDETALLE: TStringField;
    CDSDetalleCOMPRACANTIDAD: TFloatField;
    CDSDetalleCOMPRAPRECIO: TFloatField;
    CDSDetalleVENTACANTIDAD: TFloatField;
    CDSDetalleVENTAPRECIO: TFloatField;
    spGeneraTabla: TFDStoredProc;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    chbporDia: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    btExcel: TBitBtn;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    ToolButton2: TToolButton;
    CDSDetalleFECHA: TDateField;
    pnCab: TPanel;
    procedure dbgDetalleTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoRelacionCompraVenta: TFormListadoRelacionCompraVenta;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListadoRelacionCompraVenta.BitBtn1Click(Sender: TObject);
begin
   inherited;
   if Not(CDSDetalle.IsEmpty) Then
    begin
      frListado.PrintOptions.Printer:=PrNomListados;
      frListado.SelectPrinter;
      frListado.LoadFromFile(DmMain_FD.PathReportesLst+'\ListadoRelacionCompraVenta.fr3');
      frListado.Variables['desde']   :=''''+Desde.Text+'''';
      frListado.Variables['hasta']   :=''''+Hasta.Text+'''';

      frListado.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoRelacionCompraVenta.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName  :='CompraVenta';
      SaveDialog.DefaultExt:='XLS';

      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoRelacionCompraVenta.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  sbEstado.SimpleText:='Procesando consulta.......';
  Application.ProcessMessages;
  spGeneraTabla.Close;
  spGeneraTabla.ParamByName('Desde').Value:=Desde.Date;
  spGeneraTabla.ParamByName('Hasta').Value:=Hasta.Date;
  spGeneraTabla.ExecProc;
  spGeneraTabla.Close;
  CDSDetalle.Close;
  CDSDetalle.IndexDefs.Clear;
  CDSDetalle.Open;
  CDSDetalle.IndexFieldNames:='Fecha';
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
end;

procedure TFormListadoRelacionCompraVenta.dbgDetalleTitleClick(Column: TColumn);
var campo:string;
begin
 try
    Campo := Column.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormListadoRelacionCompraVenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  CDSDetalle.Close;
end;

procedure TFormListadoRelacionCompraVenta.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormListadoRelacionCompraVenta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRelacionCompraVenta:=nil;
end;

procedure TFormListadoRelacionCompraVenta.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoRelacionCompraVenta<>nil then
    if FormListadoRelacionCompraVenta.Width<>865 then
      FormListadoRelacionCompraVenta.Width:=865;

end;

procedure TFormListadoRelacionCompraVenta.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
 DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;

procedure TFormListadoRelacionCompraVenta.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListado.DesignReport;
end;

procedure TFormListadoRelacionCompraVenta.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbporDia.Checked=False then
   begin
     DecodeDate(Desde.Date,y,m,d);
      if Button=btnext Then
        if m=12 Then
          begin
            m:=1;y:=y+1;
          end
        else
          m:=m+1
      else
        if Button=btPrev Then
          if m=1 Then
            begin
              m:=12;y:=y-1;
            end
          else
            m:=m-1;

      Desde.Date:=EncodeDate(y,m,1);
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
   end
 else
   if chbporDia.Checked=True then
     begin
       if Button=btnext Then
         Desde.Date := IncDay(Desde.Date,(1))
       else
         if Button=btPrev Then
           Desde.Date := IncDay(Desde.Date,(-1));
       Hasta.Date:=desde.Date;
   //    Buscar.Execute;
   end;


  //  Desde.SetFocus;

  Buscar.Execute;
end;

end.