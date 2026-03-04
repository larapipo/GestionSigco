unit UListadoChRecibidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, DB, DBClient, Provider,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons,
  StdCtrls, ToolWin, ExtCtrls, frxClass, frxDBSet, DataExport, DataToXLS, Mask,
  JvExMask, JvToolEdit,DateUtils, JvBaseEdits, System.Actions, JvAppStorage,
  JvAppIniStorage,VirtualUI_SDK, JvMaskEdit, JvDBFindEdit, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,StrUtils,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormListadoChRecibidos = class(TFormABMBase)
    DSPCheque3: TDataSetProvider;
    CDSCheque3: TClientDataSet;
    CDSCheque3ID_CHEQUE_TER: TIntegerField;
    CDSCheque3ID_CAJA: TIntegerField;
    CDSCheque3ID_MOV_CAJA: TIntegerField;
    CDSCheque3ID_FPAGO: TIntegerField;
    CDSCheque3ID_BANCO: TIntegerField;
    CDSCheque3NUMERO: TIntegerField;
    CDSCheque3ORIGEN: TStringField;
    CDSCheque3DESTINO: TStringField;
    CDSCheque3DISPONIBLE: TStringField;
    CDSCheque3FIRMANTE: TStringField;
    CDSCheque3ID_MOV_CAJA_EGRESOS: TIntegerField;
    CDSCheque3ID_CUENTA_CAJA: TIntegerField;
    CDSCheque3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    CDSCheque3MONEDA: TIntegerField;
    CDSCheque3CUIT: TStringField;
    CDSCheque3SUCURSAL_BCO: TStringField;
    CDSCheque3NRO_CTA: TStringField;
    CDSCheque3Muestrabanco: TStringField;
    DSPBancos: TDataSetProvider;
    CDSBancos: TClientDataSet;
    CDSBancosID_BANCO: TIntegerField;
    CDSBancosNOMBRE: TStringField;
    CDSBancosDIRECCION: TStringField;
    CDSBancosTELEFONOS: TStringField;
    CDSBancosSUCURSAL: TStringField;
    CDSBancosLOCALIDAD: TStringField;
    CDSBancosNOTAS: TMemoField;
    CDSBancosID_POSTAL: TIntegerField;
    CDSCtaCaja: TClientDataSet;
    CDSCtaCajaID_CUENTA: TIntegerField;
    CDSCtaCajaID_TIPO_CTA: TIntegerField;
    CDSCtaCajaNOMBRE: TStringField;
    CDSCtaCajaNRO_CUENTA: TStringField;
    CDSCtaCajaID_BANCO: TIntegerField;
    CDSCtaCajaCUIT: TStringField;
    CDSCtaCajaRAZONSOCIAL: TStringField;
    DSPCtaCaja: TDataSetProvider;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    frxReport: TfrxReport;
    frCheques: TfrxDBDataset;
    Panel2: TPanel;
    DSCheque3: TDataSource;
    SaveDialog: TSaveDialog;
    DataToXLS: TDataToXLS;
    ExportarExcel: TAction;
    btExcel: TBitBtn;
    chAgrupados: TCheckBox;
    Label2: TLabel;
    Desde: TJvDateEdit;
    Label3: TLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Label4: TLabel;
    edImporte: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    dbgChe: TDBGrid;
    dbfOrigen: TJvDBFindEdit;
    JvDBFindEdit1: TJvDBFindEdit;
    JvDBFindEdit2: TJvDBFindEdit;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    QCtaCaja: TFDQuery;
    QBancos: TFDQuery;
    QCheque3: TFDQuery;
    CDSCheque3UNIDADES: TFloatField;
    CDSCheque3IMPORTE: TFloatField;
    CDSCheque3SALDO_UNIDADES: TFloatField;
    CDSCheque3SALDO_IMPORTE: TFloatField;
    Label9: TLabel;
    pnPie: TPanel;
    CDSCheque3FECHA_EMISION: TSQLTimeStampField;
    CDSCheque3FECHA_COBRO: TSQLTimeStampField;
    CDSCheque3FECHA_ENTRADA: TSQLTimeStampField;
    CDSCheque3FECHA_SALIDA: TSQLTimeStampField;
    CDSCheque3COTIZACION: TFloatField;
    CDSCheque3E_CHECK: TStringField;
    CDSCheque3ID_CTA_CAJA_BCO: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgCheTitleClick(Column: TColumn);
    procedure ExportarExcelExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSCheque3AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoChRecibidos: TFormListadoChRecibidos;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListadoChRecibidos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Not(CDSCheque3.IsEmpty) Then
    begin
      if chAgrupados.Checked then
        CDSCheque3.IndexFieldNames:='FECHA_ENTRADA';
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoChRecibidos.fr3');
      frxReport.Variables['Agrupado']:='''N''';
      if chAgrupados.Checked then
        frxReport.Variables['Agrupado']:='''S''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoChRecibidos.BuscarExecute(Sender: TObject);
begin
  //inherited;
  CDSCheque3.Close;
  CDSCheque3.IndexFieldNames:='';
  CDSCheque3.IndexDefs.Clear;
  CDSCheque3.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSCheque3.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSCheque3.Open;
  CDSCheque3.IndexFieldNames:='Fecha_Entrada';


end;

procedure TFormListadoChRecibidos.CDSCheque3AfterOpen(DataSet: TDataSet);
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSCheque3,True);
  CDSClone.First;
  edImporte.Value :=0;
  edSaldo.Value:=0;
  while Not(CDSClone.Eof) do
    begin
      edImporte.Value:= edImporte.Value+CDSClone.FieldByName('IMPORTE').AsFloat;
      edSaldo.Value  := edSaldo.Value+CDSClone.FieldByName('SALDO_IMPORTE').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormListadoChRecibidos.dbgCheTitleClick(Column: TColumn);
var campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Column.FieldName;
    with dbgChe.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoChRecibidos.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSCheque3.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='ChequesRecibidos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
          end;

    END
end;

procedure TFormListadoChRecibidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoChRecibidos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormListadoChRecibidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoChRecibidos:=nil;
end;

procedure TFormListadoChRecibidos.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date))
end;

procedure TFormListadoChRecibidos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoChRecibidos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.date));
  //if dbcCtas.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.
