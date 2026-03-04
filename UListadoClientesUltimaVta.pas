unit UListadoClientesUltimaVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, JvExMask,
  JvToolEdit,Librerias, JvDBLookup, DataExport, DataToXLS, frxClass, frxDBSet,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, Data.DB,
  Data.SqlExpr, JvComponentBase,VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, frCoreClasses;

type
  TFormListadoUltimaVtaCliente = class(TFormABMBase)
    CDSConsulta: TClientDataSet;
    DSPConsulta: TDataSetProvider;
    dbgConsulta: TJvDBGrid;
    DSConsulta: TDataSource;
    CDSConsultaCODIGO: TStringField;
    CDSConsultaNOMBRE: TStringField;
    CDSConsultaRAZON_SOCIAL: TStringField;
    CDSConsultaVENDEDOR: TStringField;
    CDSConsultaMAX: TSQLTimeStampField;
    hasta: TJvDateEdit;
    Label1: TLabel;
    UpDown1: TUpDown;
    desde: TJvDateEdit;
    Label2: TLabel;
    dbcVendedor: TJvDBLookupCombo;
    Label3: TLabel;
    DSPVendedor: TDataSetProvider;
    CDSVendedor: TClientDataSet;
    CDSVendedorCODIGO: TStringField;
    CDSVendedorNOMBRE: TStringField;
    DSVendedores: TDataSource;
    XLSFact: TDataToXLS;
    SaveDialog: TSaveDialog;
    btExportar: TBitBtn;
    frxReport: TfrxReport;
    frxDBConsulta: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    QConsulta: TFDQuery;
    QVendedor: TFDQuery;
    Label4: TLabel;
    procedure DSBaseStateChange(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoUltimaVtaCliente: TFormListadoUltimaVtaCliente;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormListadoUltimaVtaCliente.btExportarClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSConsulta.IsEmpty) then
    begin
      SaveDialog.DefaultExt:='xls';
      SaveDialog.FileName  :='Ventas';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              XLSFact.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
              XLSFact.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
    end
  else
    ShowMessage('No hay datos para exportar');

end;

procedure TFormListadoUltimaVtaCliente.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSConsulta.Close;
  CDSConsulta.IndexName:='';
  CDSConsulta.IndexDefs.Clear;
  CDSConsulta.Params.ParamByName('desde').AsDate     :=desde.Date;
  CDSConsulta.Params.ParamByName('hasta').AsDate     :=hasta.Date;
  CDSConsulta.Params.ParamByName('vendedor').AsString:= dbcVendedor.KeyValue;
  CDSConsulta.Open;

end;

procedure TFormListadoUltimaVtaCliente.dbgConsultaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgConsulta.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoUltimaVtaCliente.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListadoUltimaVtaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSVendedor.Close;
  CDSConsulta.Close;
  Action:=cafree;
end;

procedure TFormListadoUltimaVtaCliente.FormCreate(Sender: TObject);
var y,m,d:word;
begin
  inherited;
  AutoSize:=False;
  CDSVendedor.Open;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

end;

procedure TFormListadoUltimaVtaCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoUltimaVtaCliente:=nil;
end;

procedure TFormListadoUltimaVtaCliente.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoUltimaVtaCliente<>nil then
    if FormListadoUltimaVtaCliente.Width<>957 then
      FormListadoUltimaVtaCliente.Width:=957;
end;



procedure TFormListadoUltimaVtaCliente.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoClientesUltimaVta.fr3');
  frxReport.Variables['Desde']:=''''+DateToStr(desde.Date)+'''';
  frxReport.Variables['Hasta']:=''''+DateToStr(hasta.Date)+'''';
  // frCtaCte.PrepareReport;
  frxReport.ShowReport;
end;

procedure TFormListadoUltimaVtaCliente.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoUltimaVtaCliente.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
 if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(1))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-1));
  Buscar.Execute;
end;

end.
