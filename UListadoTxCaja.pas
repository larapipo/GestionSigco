unit UListadoTxCaja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ComCtrls, StdCtrls, Mask, ImgList, DB, ActnList,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBLookup, Provider, DBClient,Librerias, 
  frxExportText, frxExportRTF, frxExportXLS, frxClass, frxExportPDF, frxDBSet,
  JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask,
  JvToolEdit, SqlExpr, System.Actions, JvAppStorage,
  JvAppIniStorage, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormListadoTxCaja = class(TFormABMBase)
    lb1: TLabel;
    lb2: TLabel;
    ud1: TUpDown;
    DSCtaCajaOrigen: TDataSource;
    cbCuentaOrigen: TJvDBLookupCombo;
    dbgMov: TJvDBGrid;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    DSMov: TDataSource;
    cbCuentaDestino: TJvDBLookupCombo;
    lb3: TLabel;
    DSCtaCajaDes: TDataSource;
    frxReporte: TfrxReport;
    frDBMov: TfrxDBDataset;
    frDBDetalles: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    btImprimir: TBitBtn;
    btn1: TToolButton;
    intgrfldCDSMovCAJA_ORIGEN: TIntegerField;
    intgrfldCDSMovCAJA_DESTINO: TIntegerField;
    CDSMovCAJAORIGEN: TStringField;
    CDSMovCAJADESTINO: TStringField;
    CDSMovNROCPBTE: TStringField;
    CDSMovOBSERVACIONES: TStringField;
    CDSMovID: TIntegerField;
    CDSMovESTADO: TStringField;
    CDSMovTIPO_TRANSFERENCIA: TStringField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    QMov: TFDQuery;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovIMPORTE: TFloatField;
    QCtaCajaOrigen: TFDQuery;
    QCtaCajaDes: TFDQuery;
    CDSCajaOrigen: TClientDataSet;
    DSPCajaOrigen: TDataSetProvider;
    CDSCajaOrigenID_CUENTA: TIntegerField;
    CDSCajaOrigenID_TIPO_CTA: TIntegerField;
    CDSCajaOrigenNOMBRE: TStringField;
    CDSCajaDes: TClientDataSet;
    DSPCajaDes: TDataSetProvider;
    CDSCajaDesID_CUENTA: TIntegerField;
    CDSCajaDesID_TIPO_CTA: TIntegerField;
    CDSCajaDesNOMBRE: TStringField;
    CDSDetalle: TClientDataSet;
    DSPDetalle: TDataSetProvider;
    QDetalle: TFDQuery;
    CDSDetalleID_BANCO: TIntegerField;
    CDSDetalleNOMBRE: TStringField;
    CDSDetalleNUMERO: TIntegerField;
    CDSDetalleORIGEN: TStringField;
    CDSDetalleIMPORTE: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgMovTitleClick(Column: TColumn);
    procedure CDSMovAfterScroll(DataSet: TDataSet);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure cbCuentaOrigenClick(Sender: TObject);
    procedure cbCuentaDestinoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoTxCaja: TFormListadoTxCaja;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListadoTxCaja.btImprimirClick(Sender: TObject);
begin
  inherited;
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListadoTxCaja.fr3');
  frxReporte.Variables['Desde']:=''''+Desde.Text+'''';
  frxReporte.Variables['Hasta']:=''''+Hasta.Text+'''';
  frxReporte.ShowReport;
end;

procedure TFormListadoTxCaja.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSMov.IndexDefs.Clear;
  CDSMov.Close;
  CDSMov.Params.ParamByName('Desde').Value  :=Desde.Date;
  CDSMov.Params.ParamByName('hasta').Value  :=Hasta.Date;
  CDSMov.Params.ParamByName('Origen').Value :=cbCuentaOrigen.KeyValue;
  CDSMov.Params.ParamByName('Destino').Value:=cbCuentaDestino.KeyValue;
  CDSMov.Open;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').Value:=CDSMovID.Value;
  CDSDetalle.Open;
end;

procedure TFormListadoTxCaja.cbCuentaDestinoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoTxCaja.cbCuentaOrigenClick(Sender: TObject);
begin
  inherited;
 Buscar.Execute;
end;

procedure TFormListadoTxCaja.CDSMovAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').Value:=CDSMovID.Value;
  CDSDetalle.Open;

end;

procedure TFormListadoTxCaja.dbgMovTitleClick(Column: TColumn);
var campo:string;
begin
  try
    Campo := Column.FieldName;
    with dbgMov.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoTxCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoTxCaja.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize  :=False;
  CDSCajaOrigen.Open;
  CDSCajaDes.Open;
end;

procedure TFormListadoTxCaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoTxCaja:=nil;
end;

procedure TFormListadoTxCaja.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoTxCaja<>nil then
    if FormListadoTxCaja.width<>760 then
      FormListadoTxCaja.width:=760;


end;

procedure TFormListadoTxCaja.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
 // ceCliente.SetFocus;
end;

procedure TFormListadoTxCaja.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormListadoTxCaja.ud1Click(Sender: TObject; Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
end;

end.