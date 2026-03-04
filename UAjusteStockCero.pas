unit UAjusteStockCero;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBCtrls, StdCtrls, Db, ActnList, Buttons,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, System.Variants,
  JvDBControls, FMTBcd, JvDBLookup, SqlExpr, Provider, DBClient, JvButton,
  JvNavigationPane, Grids, DBGrids, JvExDBGrids, JvDBGrid, frxClass, frxDBSet,
  frxExportText, frxExportPDF, DBXCommon, JvAppStorage, JvAppIniStorage,
  System.Actions, Vcl.ComCtrls, JvComponentBase, Vcl.ToolWin, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormAjusteStockCero = class(TFormABMBase)
    DSDeposito: TDataSource;
    DSComprobante: TDataSource;
    DSSucursal: TDataSource;
    dbcSucursal: TDBLookupComboBox;
    dbcComprobante: TDBLookupComboBox;
    dbcDeposito: TDBLookupComboBox;
    dtFecha: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    DSSubRubro: TDataSource;
    DSRubro: TDataSource;
    rxcRubro: TJvDBLookupCombo;
    rxcSubRubro: TJvDBLookupCombo;
    RxLabel1: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSComprobantes: TClientDataSet;
    DSPComprobante: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    anProceso: TAnimate;
    VerDetalle: TAction;
    btDetalle: TButton;
    CDSResultado: TClientDataSet;
    DSPResultado: TDataSetProvider;
    CDSResultadoCODIGO_ARTICULO: TStringField;
    CDSResultadoDETALLE_STK: TStringField;
    CDSResultadoACTUAL: TFloatField;
    DSResultado: TDataSource;
    pnDetalle: TPanel;
    dbgResultado: TJvDBGrid;
    btImprime: TBitBtn;
    frxReport1: TfrxReport;
    frxDBResultado: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    QComprobante: TFDQuery;
    QResultado: TFDQuery;
    spGeneraAjuste: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure dbcComprobanteEnter(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure rxcSubRubroEnter(Sender: TObject);
    procedure VerDetalleExecute(Sender: TObject);
    procedure dbgResultadoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btImprimeClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAjusteStockCero: TFormAjusteStockCero;

implementation

uses DMBuscadoresForm, UDMain_FD;
{$R *.DFM}

procedure TFormAjusteStockCero.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSSucursal.open;
  CDSDepositos.Open;
  CDSRubro.Open;
  CDSSubRubro.Open;
  dtFecha.DateTime:=Date;
end;

procedure TFormAjusteStockCero.dbcComprobanteEnter(Sender: TObject);
begin
  inherited;
   if Not(CDSSucursal.IsEmpty) Then
    begin
      CDSComprobantes.Close;
      CDSComprobantes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
      CDSComprobantes.Open;
    end;
end;

procedure TFormAjusteStockCero.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
// DBLookupComboBox2.Text:='';
end;

procedure TFormAjusteStockCero.dbgResultadoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgResultado.DataSource.DataSet as TClientDataSet do
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

procedure TFormAjusteStockCero.btImprimeClick(Sender: TObject);
begin
  inherited;
  CDSResultado.DisableControls;
  

  frxReport1.PrintOptions.Printer:=PrNomListados;
  frxReport1.SelectPrinter;

  frxReport1.LoadFromFile(DMMain_FD.PathReportesLst+'\LstResultadoAjuste.fr3');
  frxReport1.Variables['Deposito']:=''''+dbcDeposito.Text+'''';
  frxReport1.Variables['Rubro']   :=''''+rxcRubro.Text+'''';
  frxReport1.Variables['SubRubro']:=''''+rxcSubRubro.Text+'''';

  frxReport1.ShowReport;
  CDSResultado.EnableControls;

end;

procedure TFormAjusteStockCero.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  if (dbcSucursal.KeyValue<>null) and
     (dbcComprobante.KeyValue<>null) and
     (dbcDeposito.KeyValue<>null) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        anProceso.Visible:=True;
        anProceso.Active:=True;

        Application.ProcessMessages;
        spGeneraAjuste.Close;
        spGeneraAjuste.ParamByName('id_comprobante').Value  := dbcComprobante.KeyValue;
        spGeneraAjuste.ParamByName('sucursal').Value        := dbcSucursal.KeyValue;
        spGeneraAjuste.ParamByName('deposito').Value        := dbcDeposito.KeyValue;
        spGeneraAjuste.ParamByName('Fecha').Value           := dtFecha.date;
        spGeneraAjuste.ParamByName('Rubro').Value           := rxcRubro.KeyValue;
        spGeneraAjuste.ParamByName('SubRubro').Value        := rxcSubRubro.KeyValue;
        spGeneraAjuste.ParamByName('usuario').Value         := DMMain_FD.UsuarioActivo;
        spGeneraAjuste.ParamByName('fecha_hora').Value      := Now;

        spGeneraAjuste.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        ShowMessage('Ajuste Realizado');
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo hacer el Ajuste .....  ');
      end;
      anProceso.Active :=False;
      anProceso.Visible:=False;
      CDSSucursal.Close;
      CDSDepositos.Close;
      CDSComprobantes.CLose;
      CDSSucursal.open;
      CDSDepositos.Open;
      CDSComprobantes.Open;
      spGeneraAjuste.Close;
      Close;
    end
  else
    ShowMessage('Faltan Datos');
  CDSResultado.Close;

end;

procedure TFormAjusteStockCero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAjusteStockCero.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAjusteStockCero:=nil;
end;

procedure TFormAjusteStockCero.rxcSubRubroEnter(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').value:=rxcRubro.Value;
  CDSSubRubro.Open;
end;

procedure TFormAjusteStockCero.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport1.DesignReport;
end;

procedure TFormAjusteStockCero.VerDetalleExecute(Sender: TObject);
begin
  inherited;
  CDSResultado.CLose;
  CDSResultado.Params.ParamByName('deposito').Value:= dbcDeposito.KeyValue;
  CDSResultado.Params.ParamByName('Fecha').Value   := dtFecha.Date;
  CDSResultado.Params.ParamByName('rubro').Value   := rxcRubro.KeyValue;
  CDSResultado.Params.ParamByName('subrubro').Value:= rxcSubRubro.KeyValue;
  CDSResultado.Open;
end;

end.
