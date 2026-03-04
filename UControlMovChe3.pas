unit UControlMovChe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DateUtils, UABMBase, FMTBcd, DB, DBClient, Provider, JvExControls,
  JvDBLookup, ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  JvLabel, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvBaseEdits, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, cxVGrid, cxDBVGrid,
  cxInplaceContainer, dxSkinsCore, dxSkinOffice2007Black, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxScrollbarAnnotations, System.ImageList, cxFilter, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, System.Rtti,
  VCL.TMSFNCDataGridCell, VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase,
  VCL.TMSFNCDataGridCore, VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomControl,
  VCL.TMSFNCDataGrid, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, dxSkinWXI, cxCustomData, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.Menus;

type
  TFormControlMovChe3 = class(TFormABMBase)
    QCaja: TFDQuery;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    CDSCajasID_CUENTA: TIntegerField;
    CDSCajasID_TIPO_CTA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    CDSCajasNRO_CUENTA: TStringField;
    CDSCajasID_BANCO: TIntegerField;
    CDSCajasCUIT: TStringField;
    CDSCajasRAZONSOCIAL: TStringField;
    DSCajas: TDataSource;
    pcMovimientos: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    dbcCaja: TJvDBLookupCombo;
    QMov: TFDQuery;
    DSMov: TDataSource;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    CDSMovID_MOV_CAJA: TIntegerField;
    CDSMovID_CAJA: TIntegerField;
    CDSMovID_FPAGO: TIntegerField;
    CDSMovTIPO_COMPROB: TStringField;
    CDSMovCLASE_COMPROB: TStringField;
    CDSMovID_COMPROBANTE: TIntegerField;
    CDSMovFECHA_OPERACION: TSQLTimeStampField;
    CDSMovFECHA_CAJA: TSQLTimeStampField;
    CDSMovID_CUENTA_CAJA: TIntegerField;
    CDSMovDEBE: TFloatField;
    CDSMovHABER: TFloatField;
    dbgMovimientos: TJvDBGrid;
    CDSMovNRO_COMPROBANTE: TStringField;
    CDSMovTIPO_OPERACION: TStringField;
    edHaber: TJvCalcEdit;
    edDebe: TJvCalcEdit;
    QCheque3: TFDQuery;
    DSPCheque3: TDataSetProvider;
    CDSCheque3: TClientDataSet;
    DSCheque3: TDataSource;
    CDSCheque3ID_CHEQUE_TER: TIntegerField;
    CDSCheque3ID_MOV_CAJA: TIntegerField;
    CDSCheque3FECHA_ENTRADA: TSQLTimeStampField;
    CDSCheque3FECHA_EMISION: TSQLTimeStampField;
    CDSCheque3FECHA_COBRO: TSQLTimeStampField;
    CDSCheque3FECHA_SALIDA: TSQLTimeStampField;
    CDSCheque3ORIGEN: TStringField;
    CDSCheque3ID_BANCO: TIntegerField;
    CDSCheque3NOMBRE: TStringField;
    CDSCheque3NUMERO: TIntegerField;
    CDSCheque3IMPORTE: TFloatField;
    CDSCheque3DESTINO: TStringField;
    CDSCheque3ID_MOV_CAJA_EGRESOS: TIntegerField;
    CDSCheque3DISPONIBLE: TStringField;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1ID_CHEQUE_TER: TcxDBEditorRow;
    cxDBVerticalGrid1ID_MOV_CAJA: TcxDBEditorRow;
    cxDBVerticalGrid1FECHA_ENTRADA: TcxDBEditorRow;
    cxDBVerticalGrid1FECHA_EMISION: TcxDBEditorRow;
    cxDBVerticalGrid1FECHA_COBRO: TcxDBEditorRow;
    cxDBVerticalGrid1FECHA_SALIDA: TcxDBEditorRow;
    cxDBVerticalGrid1ORIGEN: TcxDBEditorRow;
    cxDBVerticalGrid1ID_BANCO: TcxDBEditorRow;
    cxDBVerticalGrid1NOMBRE: TcxDBEditorRow;
    cxDBVerticalGrid1NUMERO: TcxDBEditorRow;
    cxDBVerticalGrid1IMPORTE: TcxDBEditorRow;
    cxDBVerticalGrid1DESTINO: TcxDBEditorRow;
    cxDBVerticalGrid1ID_MOV_CAJA_EGRESOS: TcxDBEditorRow;
    cxDBVerticalGrid1DISPONIBLE: TcxDBEditorRow;
    TabSheet2: TTabSheet;
    dbgEgresos: TJvDBGrid;
    edDebe_E: TJvCalcEdit;
    edHaber_E: TJvCalcEdit;
    cxDBVerticalGrid2: TcxDBVerticalGrid;
    QMovE: TFDQuery;
    DSPMovE: TDataSetProvider;
    CDSMovE: TClientDataSet;
    DSMovE: TDataSource;
    QCheque3E: TFDQuery;
    DSPCheque3E: TDataSetProvider;
    CDSCheque3E: TClientDataSet;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    SQLTimeStampField3: TSQLTimeStampField;
    SQLTimeStampField4: TSQLTimeStampField;
    SQLTimeStampField5: TSQLTimeStampField;
    SQLTimeStampField6: TSQLTimeStampField;
    StringField5: TStringField;
    IntegerField8: TIntegerField;
    StringField6: TStringField;
    IntegerField9: TIntegerField;
    FMTBCDField3: TFloatField;
    StringField7: TStringField;
    IntegerField10: TIntegerField;
    StringField8: TStringField;
    DSCheuqe3E: TDataSource;
    cxDBVerticalGrid2ID_CHEQUE_TER: TcxDBEditorRow;
    cxDBVerticalGrid2ID_MOV_CAJA: TcxDBEditorRow;
    cxDBVerticalGrid2FECHA_ENTRADA: TcxDBEditorRow;
    cxDBVerticalGrid2FECHA_EMISION: TcxDBEditorRow;
    cxDBVerticalGrid2FECHA_COBRO: TcxDBEditorRow;
    cxDBVerticalGrid2FECHA_SALIDA: TcxDBEditorRow;
    cxDBVerticalGrid2ORIGEN: TcxDBEditorRow;
    cxDBVerticalGrid2ID_BANCO: TcxDBEditorRow;
    cxDBVerticalGrid2NOMBRE: TcxDBEditorRow;
    cxDBVerticalGrid2NUMERO: TcxDBEditorRow;
    cxDBVerticalGrid2IMPORTE: TcxDBEditorRow;
    cxDBVerticalGrid2DESTINO: TcxDBEditorRow;
    cxDBVerticalGrid2ID_MOV_CAJA_EGRESOS: TcxDBEditorRow;
    cxDBVerticalGrid2DISPONIBLE: TcxDBEditorRow;
    CDSMovEID_MOV_CAJA: TIntegerField;
    CDSMovEID_CAJA: TIntegerField;
    CDSMovEID_FPAGO: TIntegerField;
    CDSMovETIPO_COMPROB: TStringField;
    CDSMovECLASE_COMPROB: TStringField;
    CDSMovEID_COMPROBANTE: TIntegerField;
    CDSMovENRO_COMPROBANTE: TStringField;
    CDSMovEFECHA_OPERACION: TSQLTimeStampField;
    CDSMovEFECHA_CAJA: TSQLTimeStampField;
    CDSMovEID_CUENTA_CAJA: TIntegerField;
    CDSMovEDEBE: TFloatField;
    CDSMovEHABER: TFloatField;
    CDSMovETIPO_OPERACION: TStringField;
    QMovChe: TFDQuery;
    DSPMovChe: TDataSetProvider;
    CDSMovChe: TClientDataSet;
    DSMovChe: TDataSource;
    dbgMovChe: TJvDBGrid;
    Label4: TLabel;
    QLstMovChe: TFDQuery;
    DSPLstMovChe: TDataSetProvider;
    CDSLstMovChe: TClientDataSet;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    SQLTimeStampField9: TSQLTimeStampField;
    SQLTimeStampField10: TSQLTimeStampField;
    SQLTimeStampField11: TSQLTimeStampField;
    SQLTimeStampField12: TSQLTimeStampField;
    StringField4: TStringField;
    IntegerField13: TIntegerField;
    StringField9: TStringField;
    IntegerField14: TIntegerField;
    FMTBCDField2: TFloatField;
    StringField10: TStringField;
    IntegerField15: TIntegerField;
    DSLstMovChe: TDataSource;
    JvDBGrid3: TJvDBGrid;
    CDSMovCheID_CHEQUE_TER: TIntegerField;
    CDSMovCheID_MOV_CAJA: TIntegerField;
    CDSMovCheFECHA_ENTRADA: TSQLTimeStampField;
    CDSMovCheFECHA_EMISION: TSQLTimeStampField;
    CDSMovCheFECHA_COBRO: TSQLTimeStampField;
    CDSMovCheFECHA_SALIDA: TSQLTimeStampField;
    CDSMovCheORIGEN: TStringField;
    CDSMovCheID_BANCO: TIntegerField;
    CDSMovCheNOMBRE: TStringField;
    CDSMovCheNUMERO: TIntegerField;
    CDSMovCheIMPORTE: TFloatField;
    CDSMovCheDESTINO: TStringField;
    CDSMovCheID_MOV_CAJA_EGRESOS: TIntegerField;
    Label5: TLabel;
    TabSheet3: TTabSheet;
    QMovTx: TFDQuery;
    DSPMovTx: TDataSetProvider;
    CDSMovTx: TClientDataSet;
    DSMovTx: TDataSource;
    CDSMovTxID_MOV_CAJA: TIntegerField;
    CDSMovTxID_CAJA: TIntegerField;
    CDSMovTxID_FPAGO: TIntegerField;
    CDSMovTxTIPO_COMPROB: TStringField;
    CDSMovTxCLASE_COMPROB: TStringField;
    CDSMovTxID_COMPROBANTE: TIntegerField;
    CDSMovTxNRO_COMPROBANTE: TStringField;
    CDSMovTxFECHA_OPERACION: TSQLTimeStampField;
    CDSMovTxFECHA_CAJA: TSQLTimeStampField;
    CDSMovTxID_CUENTA_CAJA: TIntegerField;
    CDSMovTxDEBE: TFloatField;
    CDSMovTxHABER: TFloatField;
    CDSMovTxTIPO_OPERACION: TStringField;
    JvDBGrid4: TJvDBGrid;
    edDebeTx: TJvCalcEdit;
    edHaberTx: TJvCalcEdit;
    CDSMovVALORCHE: TFloatField;
    BitBtn1: TBitBtn;
    CDSMovEVALORCHE: TFloatField;
    edIngresos: TJvCalcEdit;
    edEgrsos: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CDSCheque3ID_CUENTA_CAJA: TIntegerField;
    CDSMovCAJADELCHE: TIntegerField;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    QCambiaCajaChe: TFDQuery;
    CDSMovID_CHEQUE_TER: TIntegerField;
    CDSMovDISPONIBLE: TStringField;
    CDSMovEDISPONIBLE: TStringField;
    chbDisponibles: TCheckBox;
    JvDBStatusLabel1: TJvDBStatusLabel;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    QControlMovDuplicado: TFDQuery;
    DSPControlMovDuplicado: TDataSetProvider;
    CDSControlMovDuplicado: TClientDataSet;
    DSControlMovDuplicado: TDataSource;
    CDSControlMovDuplicadoID_CHE: TIntegerField;
    Button1: TButton;
    Label9: TLabel;
    cbTipo: TComboBox;
    cbTipoEgre: TComboBox;
    edDifIngresos: TJvCalcEdit;
    TabSheet5: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QMovChequesGeneral: TFDQuery;
    QMovChequesGeneralID_CHEQUE_TER: TIntegerField;
    QMovChequesGeneralID_MOV_CAJA: TIntegerField;
    QMovChequesGeneralID_MOV_CAJA_EGRESOS: TIntegerField;
    QMovChequesGeneralNUMERO: TIntegerField;
    QMovChequesGeneralFECHA_EMISION: TSQLTimeStampField;
    QMovChequesGeneralORIGEN: TStringField;
    QMovChequesGeneralDESTINO: TStringField;
    QMovChequesGeneralINGRESO: TFloatField;
    QMovChequesGeneralSALIDA: TFloatField;
    QMovChequesGeneralMOVIMIENTO: TStringField;
    QMovChequesGeneralNRO_TRANSFERENCIA: TStringField;
    QMovChequesGeneralCAJAINGRESO: TStringField;
    QMovChequesGeneralCAJAEGRESO: TStringField;
    QMovChequesGeneralFECHAENTRADA: TSQLTimeStampField;
    QMovChequesGeneralFECHASALIDA: TSQLTimeStampField;
    QMovChequesGeneralFECHATRANSFERENCIA: TSQLTimeStampField;
    QMovChequesGeneralCUENTACAJA: TStringField;
    QMovChequesGeneralCAJAORIGEN: TStringField;
    QMovChequesGeneralCAJADESTINO: TStringField;
    DSMovChequesGeneral: TDataSource;
    cxGrid1DBTableView1ID_CHEQUE_TER: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView1ORIGEN: TcxGridDBColumn;
    cxGrid1DBTableView1DESTINO: TcxGridDBColumn;
    cxGrid1DBTableView1INGRESO: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1MOVIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_TRANSFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1CAJAINGRESO: TcxGridDBColumn;
    cxGrid1DBTableView1CAJAEGRESO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHASALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHATRANSFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1CUENTACAJA: TcxGridDBColumn;
    cxGrid1DBTableView1CAJAORIGEN: TcxGridDBColumn;
    cxGrid1DBTableView1CAJADESTINO: TcxGridDBColumn;
    btBuscarMov: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    MostrarCampos1: TMenuItem;
    Expandir1: TMenuItem;
    Contraer1: TMenuItem;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSMovAfterScroll(DataSet: TDataSet);
    procedure dbgMovimientosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSMovEAfterScroll(DataSet: TDataSet);
    procedure CDSCheque3EAfterScroll(DataSet: TDataSet);
    procedure CDSMovTxAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgEgresosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgMovimientosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure dbgEgresosDblClick(Sender: TObject);
    procedure dbgEgresosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure CDSMovCAJADELCHEChange(Sender: TField);
    procedure chbDisponiblesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure cbTipoEgreChange(Sender: TObject);
    procedure CDSMovEAfterOpen(DataSet: TDataSet);
    procedure CDSMovCheAfterOpen(DataSet: TDataSet);
    procedure CDSMovAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure btBuscarMovClick(Sender: TObject);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure MostrarCampos1Click(Sender: TObject);
    procedure Expandir1Click(Sender: TObject);
    procedure Contraer1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawGroupCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
  private
    function GetColumnByField(View: TcxGridDBTableView;
      const FieldName: string): TcxGridColumn;
    { Private declarations }
  public
    { Public declarations }
    procedure SumarIngresos;
    procedure SumarEgresos;
  end;

var
  FormControlMovChe3: TFormControlMovChe3;

implementation

uses UDMain_FD, UTablaChequesTercero, URecibo_2, UIngresoCaja,
  UFacturaCtdo_2, UOPago_2, UEgresoCaja, UCompraCtdo_2, UDepositosBancarios;

{$R *.dfm}

procedure TFormControlMovChe3.SumarIngresos;
var CDSClone:TClientdataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSMov,True);
  CDSClone.First;
  edDebe.Value :=0;
  edHaber.Value:=0;
  while Not(CDSClone.Eof) do
    begin
      edHaber.Value:= edHaber.Value+CDSClone.FieldByName('VALORCHE').AsFloat;
      edDebe.Value := edDebe.Value +CDSClone.FieldByName('DEBE').AsFloat;
      CDSClone.Next;
    end;
  if (Abs(edHaber.Value-edDebe.Value))>0 then
    begin
      edHaber.Color:= clRed;
      edDebe.Color := clRed;
      edHaber.Font.Color:=clWhite;
      edDebe.Font.Color :=clWhite;
    end
  else
    begin
      edHaber.Color:= clWhite;
      edDebe.Color := clWindow;
      edHaber.Font.Color:=clBlack;
      edDebe.Font.Color :=clBlack;
    end;
  FreeAndNil(CDSClone);
  edIngresos.Value := edDebe.Value;
  edEgrsos.Value   := edHaber_E.Value;
  edDifIngresos.Value:=edDebe.Value-edHaber.Value;
  edSaldo.Value    := edIngresos.Value - edEgrsos.Value;
end;

procedure TFormControlMovChe3.SumarEgresos;
var CDSClone:TClientdataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSMovE,True);
  CDSClone.First;
  edDebe_E.Value :=0;
  edHaber_E.Value:=0;
  while Not(CDSClone.Eof) do
    begin
      edHaber_E.Value:= edHaber_E.Value+CDSClone.FieldByName('HABER').AsFloat;
      edDebe_E.Value := edDebe_E.Value+CDSClone.FieldByName('VALORCHE').AsFloat;
      CDSClone.Next;
    end;

  if (Abs(edHaber_E.Value-edDebe_E.Value))>0 then
    begin
      edHaber_E.Color:= clRed;
      edDebe_E.Color := clRed;
      edHaber_E.Font.Color:=clWhite;
      edDebe_E.Font.Color :=clWhite;
    end
  else
    begin
      edHaber_E.Color:= clWhite;
      edDebe_E.Color := clWindow;
      edHaber_E.Font.Color:=clBlack;
      edDebe_E.Font.Color :=clBlack;
    end;
  FreeAndNil(CDSClone);
  edIngresos.Value := edDebe.Value;
  edEgrsos.Value   := edHaber_E.Value;
  edSaldo.Value    := edIngresos.Value - edEgrsos.Value;
end;

procedure TFormControlMovChe3.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormTablaCheques3)) then
    FormTablaCheques3:=TFormTablaCheques3.Create(self);
  FormTablaCheques3.Show;

end;

procedure TFormControlMovChe3.btBuscarMovClick(Sender: TObject);
begin
  inherited;
  QMovChequesGeneral.Close;
  QMovChequesGeneral.ParamByName('desde').AsDate:=desde.Date;
  QMovChequesGeneral.ParamByName('hasta').AsDate:=hasta.Date;

  QMovChequesGeneral.ParamByName('id').Value:=-1;
  QMovChequesGeneral.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormControlMovChe3.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSMov.Close;
  CDSMov.IndexFieldNames:='';
  CDSMov.IndexDefs.Clear;
  CDSMov.Params.ParamByName('Desde').AsDate:=desde.Date;
  CDSMov.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSMov.Params.ParamByName('id_cta').AsInteger:=dbcCaja.KeyValue;
  if pcMovimientos.ActivePageIndex=0 then
    CDSMov.Params.ParamByName('Tipo').AsString:='I';
  CDSMov.Params.ParamByName('TipoCpbte').AsString:=cbTipo.Text;
  CDSMov.Open;
  SumarIngresos;

  CDSMovE.Close;
  CDSMovE.IndexFieldNames:='';
  CDSMovE.IndexDefs.Clear;
  CDSMovE.Params.ParamByName('Desde').AsDate:=desde.Date;
  CDSMovE.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSMovE.Params.ParamByName('id_cta').AsInteger:=dbcCaja.KeyValue;
  CDSMovE.Params.ParamByName('Tipo').AsString:='E';
  CDSMovE.Params.ParamByName('TipoCpbte').AsString:=cbTipoEgre.Text;

  CDSMovE.Open;
  SumarEgresos;


  CDSMovTx.Close;
  CDSMovTx.IndexFieldNames:='';
  CDSMovTx.IndexDefs.Clear;
  CDSMovTx.Params.ParamByName('Desde').AsDate:=desde.Date;
  CDSMovTx.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSMovTx.Params.ParamByName('id_cta').AsInteger:=dbcCaja.KeyValue;
  CDSMovTx.Open;

  edIngresos.Value:= edDebe.Value;
  edEgrsos.Value  := edHaber_E.Value;
  edSaldo.Value   := edIngresos.Value-edEgrsos.Value;
end;

procedure TFormControlMovChe3.Button1Click(Sender: TObject);
begin
  inherited;
  CDSControlMovDuplicado.Close;
  CDSControlMovDuplicado.Open;
end;

procedure TFormControlMovChe3.cbTipoChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
  SumarIngresos;
end;

procedure TFormControlMovChe3.cbTipoEgreChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
  SumarEgresos;
end;

procedure TFormControlMovChe3.CDSCheque3EAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSMovChe.Close;
  CDSMovChe.Params.ParamByName('id').Value:=CDSMovEID_MOV_CAJA.Value;
  CDSMovChe.Open;

  CDSLstMovChe.Close;
  CDSLstMovChe.Params.ParamByName('id_che').Value:=CDSMovCheID_CHEQUE_TER.Value;
  CDSLstMovChe.Open;

end;

procedure TFormControlMovChe3.CDSMovAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dbgMovimientos.Width:=dbgMovimientos.Width+1;
  dbgMovimientos.Width:=dbgMovimientos.Width-1;
end;

procedure TFormControlMovChe3.CDSMovAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSCheque3.Close;
  CDSCheque3.Params.ParamByName('id').Value:=CDSMovID_MOV_CAJA.Value;
  CDSCheque3.Open;
end;

procedure TFormControlMovChe3.CDSMovCAJADELCHEChange(Sender: TField);
begin
  inherited;
  if (CDSMovCAJADELCHE.OldValue<>CDSMovCAJADELCHE.NewValue) and (CDSMovDISPONIBLE.Value='S') then
    begin
      QCambiaCajaChe.Close;
      QCambiaCajaChe.ParamByName('idcaja').Value   :=CDSMovCAJADELCHE.Value;
      QCambiaCajaChe.ParamByName('id_Cheque').Value:=CDSMovID_CHEQUE_TER.Value;
      QCambiaCajaChe.ExecSQL;
      QCambiaCajaChe.Close;
    end;
end;

procedure TFormControlMovChe3.CDSMovCheAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dbgMovChe.Width:=dbgMovChe.Width+1;
  dbgMovChe.Width:=dbgMovChe.Width-1;
end;

procedure TFormControlMovChe3.CDSMovEAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dbgEgresos.Width:=dbgEgresos.Width+1;
  dbgEgresos.Width:=dbgEgresos.Width-1;

end;

procedure TFormControlMovChe3.CDSMovEAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSCheque3E.Close;
  CDSCheque3E.Params.ParamByName('id').Value:=CDSMovEID_MOV_CAJA.Value;
  CDSCheque3E.Open;
end;

procedure TFormControlMovChe3.CDSMovTxAfterOpen(DataSet: TDataSet);
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSMovTx,True);
  CDSClone.First;
  edDebeTx.Value :=0;
  edHaberTx.Value:=0;
  while Not(CDSClone.Eof) do
    begin
      edHaberTx.Value:= edHaberTx.Value+CDSClone.FieldByName('HABER').AsFloat;
      edDebeTx.Value := edDebeTx.Value+CDSClone.FieldByName('DEBE').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormControlMovChe3.chbDisponiblesClick(Sender: TObject);
begin
  inherited;
  CDSMov.Filtered:=False;
  CDSMov.Filter:='Disponible = ''S''';
  CDSMov.Filtered:=chbDisponibles.Checked;
  SumarIngresos;
end;

procedure TFormControlMovChe3.Contraer1Click(Sender: TObject);
begin
  inherited;
   cxGrid1DBTableView1.ViewData.Collapse(True);
end;


function TFormControlMovChe3.GetColumnByField(View: TcxGridDBTableView; const FieldName: string): TcxGridColumn;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to View.ColumnCount - 1 do
  begin
    if SameText(View.Columns[i].DataBinding.FieldName, FieldName) then
    begin
      Result := View.Columns[i];
      Exit;
    end;
  end;
end;

procedure TFormControlMovChe3.cxGrid1DBTableView1CustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
var
  View: TcxGridTableView;
  groupValue: Variant;
  totalIngreso, totalSalida, diff: Currency;
  groupColIndex, ingIndex, salIndex: Integer;
  i: Integer;
  started: Boolean;
  colIngreso, colSalida: TcxGridColumn;
  textRect: TRect;
begin
  View := Sender as TcxGridTableView;
  if View.GroupedItemCount = 0 then Exit;  // No hay agrupación

  // Tomar la columna agrupada (asumimos una única columna de agrupación)
  groupColIndex := View.GroupedColumns[0].Index;
  groupValue    := AViewInfo.GridRecord.Values[groupColIndex];

  // Obtener las columnas de Ingreso y Salida por nombre de campo

  colIngreso    := GetColumnByField(cxGrid1DBTableView1, 'Ingreso');//cxGrid1DBTableView1.Columns[6]; // Ajusta el índice según corresponda
  colSalida     := GetColumnByField(cxGrid1DBTableView1, 'Salida');//cxGrid1DBTableView1.Columns[7];  // Ajusta el índice según corresponda
  if (colIngreso = nil) or (colSalida = nil) then Exit;  // Validación de seguridad

  ingIndex   := colIngreso.Index;
  salIndex   := colSalida.Index;

  // Recorrer registros del DataController para sumar Ingreso y Salida del grupo actual
  totalIngreso := 0;
  totalSalida  := 0;
  started := False;
  for i := 0 to View.DataController.RecordCount - 1 do
    begin
      // Comparar valor del campo agrupado con el valor del grupo actual
      if VarToStr(View.DataController.Values[i, groupColIndex]) = VarToStr(groupValue) then
        begin
          started := True;
          // Sumar ingreso y salida (salida se suma en negativo restando luego)
          if not VarIsNull(View.DataController.Values[i, ingIndex]) then
            totalIngreso := totalIngreso + View.DataController.Values[i, ingIndex];
          if not VarIsNull(View.DataController.Values[i, salIndex]) then
            totalSalida := totalSalida + View.DataController.Values[i, salIndex];
        end
      else
        if started then
          Break;  // Hemos salido del grupo actual, no es necesario seguir
    end;

  diff := totalIngreso - totalSalida;
  if diff = 0 then
    Exit;  // Diferencia cero: no cambiar nada (color por defecto)

  // Elegir color según signo de la diferencia
  if diff > 0 then
    ACanvas.Brush.Color := clGreen    // positivo: verde
  else
    ACanvas.Brush.Color := clRed;     // negativo: rojo

  ACanvas.Font.Color := clWindowText; // Texto en color normal (negro)
  ACanvas.FillRect(AViewInfo.Bounds); // Rellenar el fondo de la celda con el color elegido

  // Dibujar el texto del grupo (título) con un pequeño desplazamiento para no tapar el ícono de expandir/colapsar
  textRect := AViewInfo.Bounds;
  OffsetRect(textRect, 20, 0);  // desplaza 20 pixeles a la derecha
  ACanvas.Font.Style := [fsBold];
  ACanvas.DrawText(AViewInfo.Text, textRect, cxAlignVCenter or cxSingleLine);

  ADone := True;  // Indicar que hemos personalizado completamente el dibujo
end;

procedure TFormControlMovChe3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlMovChe3.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  autoSize:=False;
  CDSCajas.Close;
  CDSCajas.Open;
  pcMovimientos.ActivePageIndex:=0;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

procedure TFormControlMovChe3.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlMovChe3:=nil;
end;

procedure TFormControlMovChe3.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlMovChe3<>nil then
    if FormControlMovChe3.Width<1125 then
      FormControlMovChe3.Width:=1125;
end;

procedure TFormControlMovChe3.hastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  hasta.Date:=adate;
  Buscar.Execute;
   btBuscarMov.Click;

end;

procedure TFormControlMovChe3.MostrarCampos1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=Not cxGrid1DBTableView1.OptionsView.GroupByBox;
end;

procedure TFormControlMovChe3.dbgEgresosDblClick(Sender: TObject);
begin
  inherited;
  if CDSMovETIPO_COMPROB.Value='OP' then
    begin
      if Not(Assigned(FormOPago_2)) then
        FormOPago_2:=TFormOPago_2.Create(Self);
      FormOPago_2.DatoNew   := CDSMovEID_COMPROBANTE.AsString;
      FormOPago_2.TipoCpbte := 'OP';
      FormOPago_2.Recuperar.Execute;
      FormOPago_2.Show;
    end
  else
    if CDSMovETIPO_COMPROB.Value='EC' then
      begin
        if Not(Assigned(FormEgresoCaja)) then
          FormEgresoCaja:=TFormEgresoCaja.Create(Self);
        FormEgresoCaja.DatoNew   := CDSMovEID_COMPROBANTE.AsString;
        FormEgresoCaja.TipoCpbte := 'EC';
        FormEgresoCaja.Recuperar.Execute;
        FormEgresoCaja.Show;
      end
    else
      if CDSMovETIPO_COMPROB.Value='FO' then
        begin
          if Not(Assigned(FormCompraCtdo_2)) then
            FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
          FormCompraCtdo_2.DatoNew   := CDSMovEID_COMPROBANTE.AsString;
          FormCompraCtdo_2.TipoCpbte := 'FO';
          FormCompraCtdo_2.Recuperar.Execute;
          FormCompraCtdo_2.Show;
        end
      else
        if CDSMovETIPO_COMPROB.Value='DP' then
          begin
            if Not(Assigned(FormDepositosBancarios)) then
              FormDepositosBancarios:=TFormDepositosBancarios.Create(Self);
            FormDepositosBancarios.DatoNew   := CDSMovEID_COMPROBANTE.AsString;
            FormDepositosBancarios.TipoCpbte := 'FO';
            FormDepositosBancarios.Recuperar.Execute;
            FormDepositosBancarios.Show;
          end;

end;

procedure TFormControlMovChe3.dbgEgresosDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
 IF (Abs(CDSMovEHABER.AsFloat - CDSMovEVALORCHE.AsFloat)>0) THEN
    dbgEgresos.Canvas.Font.Style := [fsBold]
  ELSE
    dbgEgresos.Canvas.Font.Style := [];
 dbgEgresos.DefaultDrawDataCell(Rect, Field, State);

end;

procedure TFormControlMovChe3.dbgEgresosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgEgresos.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlMovChe3.dbgMovimientosDblClick(Sender: TObject);
begin
  inherited;
  if CDSMovTIPO_COMPROB.Value='RC' then
    begin
      if Not(Assigned(FormRecibo_2)) then
        FormRecibo_2:=TFormRecibo_2.Create(Self);
      FormRecibo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
      FormRecibo_2.TipoCpbte := 'RC';
      FormRecibo_2.Recuperar.Execute;
      FormRecibo_2.Show;
    end
  else
    if CDSMovTIPO_COMPROB.Value='IC' then
      begin
        if Not(Assigned(FormIngresoCaja)) then
          FormIngresoCaja:=TFormIngresoCaja.Create(Self);
        FormIngresoCaja.DatoNew   := CDSMovID_COMPROBANTE.AsString;
        FormIngresoCaja.TipoCpbte := 'IC';
        FormIngresoCaja.Recuperar.Execute;
        FormIngresoCaja.Show;
      end
    else
      if CDSMovTIPO_COMPROB.Value='FO' then
        begin
          if Not(Assigned(FormCpbteCtdo_2)) then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
          FormCpbteCtdo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCpbteCtdo_2.TipoCpbte := 'FO';
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end;


end;

procedure TFormControlMovChe3.dbgMovimientosDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
 IF (Abs(CDSMovDEBE.AsFloat - CDSMovVALORCHE.AsFloat)>0) THEN
    dbgMovimientos.Canvas.Font.Style := [fsBold]
  ELSE
    dbgMovimientos.Canvas.Font.Style := [];
 dbgMovimientos.DefaultDrawDataCell(Rect, Field, State);
end;


procedure TFormControlMovChe3.dbgMovimientosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgMovimientos.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlMovChe3.desdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  desde.Date:=ADate;
  Buscar.Execute;
  btBuscarMov.Click;
end;

procedure TFormControlMovChe3.Expandir1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormControlMovChe3.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Buscar.Execute;
  btBuscarMov.Click;
end;

end.
