unit UControladorCaja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, Db, ActnList, StdCtrls, Buttons, ToolWin,
  ComCtrls, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, IBGenerator,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid,Variants, Menus,
  DataExport, DataToXLS, JvDBGridFooter, JvExMask, JvToolEdit, JvBaseEdits,
  System.Actions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, JvAppStorage, JvAppIniStorage, CompBuscador,VirtualUI_SDK,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormControlCaja = class(TFormABMBase)
    DSCabecera: TDataSource;
    DSPCabecera: TDataSetProvider;
    CDSCabecera: TClientDataSet;
    DSPPie: TDataSetProvider;
    CDSPie: TClientDataSet;
    DSRecalculo: TDataSource;
    DSPie: TDataSource;
    IBGSaldosCaja: TIBGenerator;
    pcCaja: TPageControl;
    pag2: TTabSheet;
    DSMov: TDataSource;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    QCabecera: TFDQuery;
    QCabeceraID_CAJA_SALDO: TIntegerField;
    QCabeceraID_CAJA_CAB: TIntegerField;
    QCabeceraID_TPAGO: TIntegerField;
    QCabeceraID_FPAGO: TIntegerField;
    QCabeceraIMPORTE: TFloatField;
    QCabeceraESTADO_CAJA: TSmallintField;
    QCabeceraOBSERVACIONES: TStringField;
    QCabeceraMUESTRATIPOPAGO: TStringField;
    CDSCabeceraID_CAJA_SALDO: TIntegerField;
    CDSCabeceraID_CAJA_CAB: TIntegerField;
    CDSCabeceraID_TPAGO: TIntegerField;
    CDSCabeceraID_FPAGO: TIntegerField;
    CDSCabeceraIMPORTE: TFloatField;
    CDSCabeceraESTADO_CAJA: TSmallintField;
    CDSCabeceraOBSERVACIONES: TStringField;
    CDSCabeceraMUESTRATIPOPAGO: TStringField;
    QMov: TFDQuery;
    CDSMovID_MOV_CAJA: TIntegerField;
    CDSMovID_CAJA: TIntegerField;
    CDSMovFECHA_CAJA: TSQLTimeStampField;
    CDSMovFECHA_OPERACION: TSQLTimeStampField;
    CDSMovTIPO_OPERACION: TStringField;
    CDSMovTIPO_COMPROB: TStringField;
    CDSMovCLASE_COMPROB: TStringField;
    CDSMovID_COMPROBANTE: TIntegerField;
    CDSMovNRO_COMPROBANTE: TStringField;
    CDSMovHABER: TFloatField;
    CDSMovDEBE: TFloatField;
    CDSMovID_TPAGO: TIntegerField;
    CDSMovID_FPAGO: TIntegerField;
    CDSMovUNIDADES: TFloatField;
    CDSMovCOTIZACION: TFloatField;
    CDSMovID_CUENTA_CAJA: TIntegerField;
    CDSMovMONEDA: TIntegerField;
    QPie: TFDQuery;
    QPieID_CAJA_SALDO: TIntegerField;
    QPieID_CAJA_CAB: TIntegerField;
    QPieID_TPAGO: TIntegerField;
    QPieID_FPAGO: TIntegerField;
    QPieIMPORTE: TFloatField;
    QPieESTADO_CAJA: TSmallintField;
    QPieOBSERVACIONES: TStringField;
    QPieMUESTRATIPOPAGO: TStringField;
    CDSPieID_CAJA_SALDO: TIntegerField;
    CDSPieID_CAJA_CAB: TIntegerField;
    CDSPieID_TPAGO: TIntegerField;
    CDSPieID_FPAGO: TIntegerField;
    CDSPieIMPORTE: TFloatField;
    CDSPieESTADO_CAJA: TSmallintField;
    CDSPieOBSERVACIONES: TStringField;
    CDSPieMUESTRATIPOPAGO: TStringField;
    QMovID_MOV_CAJA: TIntegerField;
    QMovID_CAJA: TIntegerField;
    QMovFECHA_CAJA: TSQLTimeStampField;
    QMovFECHA_OPERACION: TSQLTimeStampField;
    QMovTIPO_OPERACION: TStringField;
    QMovTIPO_COMPROB: TStringField;
    QMovCLASE_COMPROB: TStringField;
    QMovID_COMPROBANTE: TIntegerField;
    QMovNRO_COMPROBANTE: TStringField;
    QMovHABER: TFloatField;
    QMovDEBE: TFloatField;
    QMovID_TPAGO: TIntegerField;
    QMovID_FPAGO: TIntegerField;
    QMovUNIDADES: TFloatField;
    QMovCOTIZACION: TFloatField;
    QMovID_CUENTA_CAJA: TIntegerField;
    QMovMONEDA: TIntegerField;
    QCaja: TFDQuery;
    QNombreTriggers: TFDQuery;
    QDriveTrigger: TFDQuery;
    QRecalculo: TFDQuery;
    CDSRecalculo: TClientDataSet;
    DSPRecalculo: TDataSetProvider;
    CDSRecalculoMONEDA: TIntegerField;
    CDSRecalculoSALDO: TFloatField;
    CDSRecalculoDEBE: TFloatField;
    CDSRecalculoHABER: TFloatField;
    CDSRecalculoFPAGO: TSmallintField;
    CDSRecalculoTPAGO: TSmallintField;
    CDSRecalculoDETALLE: TStringField;
    CDSNombreTriggers: TClientDataSet;
    DSPNombreTriggers: TDataSetProvider;
    CDSNombreTriggersRDBTRIGGER_NAME: TStringField;
    CDSNombreTriggersRDBTRIGGER_INACTIVE: TSmallintField;
    CDSCaja: TClientDataSet;
    DSPCaja: TDataSetProvider;
    DSCaja: TDataSource;
    CDSCajaID_CAJA: TIntegerField;
    CDSCajaID_CUENTA_CAJA: TIntegerField;
    CDSCajaFECHA_INCIO: TSQLTimeStampField;
    CDSCajaFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaSALDO_INCIAL: TFloatField;
    CDSCajaESTADO: TIntegerField;
    CDSCajaOBS: TMemoField;
    CDSCajaNUMEROCAJA: TIntegerField;
    CDSCajaMUESTRACAJA: TStringField;
    pag1: TTabSheet;
    QCtaCaja: TFDQuery;
    DSPCtaCaja: TDataSetProvider;
    CDSCtaCaja: TClientDataSet;
    CDSCtaCajaID_CUENTA: TIntegerField;
    CDSCtaCajaID_TIPO_CTA: TIntegerField;
    CDSCtaCajaNOMBRE: TStringField;
    CDSCtaCajaNRO_CUENTA: TStringField;
    CDSCtaCajaID_BANCO: TIntegerField;
    CDSCtaCajaCUIT: TStringField;
    CDSCtaCajaRAZONSOCIAL: TStringField;
    DSCtaCaja: TDataSource;
    dbcCtas: TDBLookupComboBox;
    dbgCajas: TJvDBGrid;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    btDesactiva: TButton;
    btActiva: TButton;
    dbgCabecera: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    dbgPie: TJvDBGrid;
    CDSCabSig: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FMTBCDField1: TFloatField;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    DSCabSig: TDataSource;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    CDSPiePrev: TClientDataSet;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FMTBCDField2: TFloatField;
    SmallintField2: TSmallintField;
    StringField3: TStringField;
    StringField4: TStringField;
    DSPiePrev: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    recalcular: TAction;
    Button1: TButton;
    TabSheet1: TTabSheet;
    dbgMovChe3: TJvDBGrid;
    QMovChe3: TFDQuery;
    CDSMovChe3: TClientDataSet;
    DSMovChe3: TDataSource;
    DSPMovChe3: TDataSetProvider;
    btBuscarChe: TBitBtn;
    CDSMovChe3ID_MOV_CAJA: TIntegerField;
    CDSMovChe3ID_CAJA: TIntegerField;
    CDSMovChe3NOMBRE: TStringField;
    CDSMovChe3ID_COMPROBANTE: TIntegerField;
    CDSMovChe3TIPO_COMPROB: TStringField;
    CDSMovChe3CLASE_COMPROB: TStringField;
    CDSMovChe3NRO_COMPROBANTE: TStringField;
    CDSMovChe3DEBE: TFloatField;
    CDSMovChe3HABER: TFloatField;
    CDSMovChe3ID_MOV_CAJA_PADRE: TIntegerField;
    CDSMovChe3ID_CHEQUE_TER: TIntegerField;
    CDSMovChe3FECHA_EMISION: TSQLTimeStampField;
    CDSMovChe3FECHA_COBRO: TSQLTimeStampField;
    CDSMovChe3ORIGEN: TStringField;
    CDSMovChe3NUMERO: TIntegerField;
    CDSMovChe3IMPORTE: TFloatField;
    CDSMovChe3ID_TPAGO: TIntegerField;
    CDSMovChe3ID_FPAGO: TIntegerField;
    SQLQuery1: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    btRelacion: TBitBtn;
    QMovChe3H: TFDQuery;
    DSPMovChe3H: TDataSetProvider;
    CDSMovChe3H: TClientDataSet;
    CDSMovChe3HID_MOV_CAJA: TIntegerField;
    CDSMovChe3HID_CAJA: TIntegerField;
    CDSMovChe3HNOMBRE: TStringField;
    CDSMovChe3HID_COMPROBANTE: TIntegerField;
    CDSMovChe3HTIPO_COMPROB: TStringField;
    CDSMovChe3HCLASE_COMPROB: TStringField;
    CDSMovChe3HNRO_COMPROBANTE: TStringField;
    CDSMovChe3HDEBE: TFloatField;
    CDSMovChe3HHABER: TFloatField;
    CDSMovChe3HID_MOV_CAJA_PADRE: TIntegerField;
    CDSMovChe3HID_CHEQUE_TER: TIntegerField;
    CDSMovChe3HFECHA_EMISION: TSQLTimeStampField;
    CDSMovChe3HFECHA_COBRO: TSQLTimeStampField;
    CDSMovChe3HORIGEN: TStringField;
    CDSMovChe3HNUMERO: TIntegerField;
    CDSMovChe3HIMPORTE: TFloatField;
    CDSMovChe3HID_TPAGO: TIntegerField;
    CDSMovChe3HID_FPAGO: TIntegerField;
    DSMovChe3H: TDataSource;
    CDSMovChe3CONCILIADO: TIntegerField;
    CDSMovChe3HCONCILIADO: TIntegerField;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    ExportarMovChe3Excel: TAction;
    PopupMenu1: TPopupMenu;
    ExportarMovChe3Excel1: TMenuItem;
    debe: TJvCalcEdit;
    haber: TJvCalcEdit;
    saldo: TJvCalcEdit;
    Tdebe: TJvCalcEdit;
    THaber: TJvCalcEdit;
    TSaldo: TJvCalcEdit;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    pnMovHaber: TPanel;
    dbgMovHaber: TDBGrid;
    BitBtn1: TBitBtn;
    MovHaber1: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CUENTA_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1MONEDA: TcxGridDBColumn;
    VerCpbte: TAction;
    chCajaSeleccionada: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSPieNewRecord(DataSet: TDataSet);
    procedure dbgCabeceraColEnter(Sender: TObject);
    procedure dbgPieColEnter(Sender: TObject);
    procedure btDesactivaClick(Sender: TObject);
    procedure btActivaClick(Sender: TObject);
    procedure DBGMovTitleClick(Column: TColumn);
    procedure ModificarExecute(Sender: TObject);
    procedure CDSCajaAfterScroll(DataSet: TDataSet);
    procedure dbcCtasClick(Sender: TObject);
    procedure dbgCajasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgCajasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure recalcularExecute(Sender: TObject);
    procedure btBuscarCheClick(Sender: TObject);
    procedure btRelacionClick(Sender: TObject);
    procedure dbgMovChe3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ExportarMovChe3ExcelExecute(Sender: TObject);
    procedure MovHaber1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VerCpbteExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgCajasDblClick(Sender: TObject);
    procedure CDSCabeceraNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Sumar;
  end;

var
  FormControlCaja: TFormControlCaja;

implementation

uses UDMain_FD, URecibo_2, UFacturaCtdo_2, UTiketVta, UFactura_2,
  UTransferenciaEfectivo, UTransferenciaCh3, UAnulacionOPago, UIngresoCaja,
  UChequesACaja, UOPago_2, UCompraCtdo_2, UAdelantosSueldos, UEgresoCaja,
  UDepositosBancarios, URemplazoChequesTercero, URemplazoCheques, UCaja;
{$R *.DFM}

procedure TFormControlCaja.Sumar;
  var CDSClone:TClientDataSet;
begin
  inherited;
  TDebe.Value   :=0;
  THaber.Value  :=0;
  TSaldo.Value  :=0;
  Debe.Value    :=0;
  Haber.Value   :=0;
  Saldo.Value   :=0;

  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSMovChe3,true);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      if (CDSClone.FieldByName('Conciliado').AsString<>'') and
         (CDSClone.FieldByName('Conciliado').AsInteger>0)then
        begin
          Debe.Value   := Debe.Value+CDSClone.FieldByName('Debe').AsFloat;
          Haber.Value  := Haber.Value+CDSClone.FieldByName('Haber').AsFloat;
          Saldo.Value  :=debe.Value-Haber.Value;
        end;
      TDebe.Value   := TDebe.Value+CDSClone.FieldByName('Debe').AsFloat;
      THaber.Value  := THaber.Value+CDSClone.FieldByName('Haber').AsFloat;
      TSaldo.Value  := Tdebe.Value-THaber.Value;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;


procedure TFormControlCaja.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  if CDSMovTIPO_OPERACION.AsString='I' then
    begin
      if CDSMovTIPO_COMPROB.Value='RC' then
        begin
          IF NOT (Assigned(FormRecibo_2)) THEN
            FormRecibo_2:= TFormRecibo_2.Create(self);
          FormRecibo_2.DatoNew    := CDSMovID_COMPROBANTE.AsString;
          FormRecibo_2.TipoCpbte  := CDSMovTIPO_COMPROB.AsString;
          FormRecibo_2.Recuperar.Execute;
          FormRecibo_2.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='FO' then
        begin
          IF NOT (Assigned(FormCpbteCtdo_2)) THEN
            FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCpbteCtdo_2.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='TK' then
        begin
          IF NOT (Assigned(FormTicketVta)) THEN
            FormTicketVta   := TFormTicketVta.Create(self);
          FormTicketVta.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormTicketVta.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCpbte_2.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='CX' then
        begin
          IF NOT (Assigned(FormTransferenciaEfectivo)) THEN
            FormTransferenciaEfectivo   := TFormTransferenciaEfectivo.Create(self);
          FormTransferenciaEfectivo.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormTransferenciaEfectivo.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormTransferenciaEfectivo.Recuperar.Execute;
          FormTransferenciaEfectivo.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='QX' then
        begin
          IF NOT (Assigned(FormTransferenciaChe3)) THEN
            FormTransferenciaChe3   := TFormTransferenciaChe3.Create(self);
          FormTransferenciaChe3.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormTransferenciaChe3.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormTransferenciaChe3.Recuperar.Execute;
          FormTransferenciaChe3.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='XP' then
        begin
          IF NOT (Assigned(FormAnulacionOPago)) THEN
            FormAnulacionOPago   := TFormAnulacionOPago.Create(self);
          FormAnulacionOPago.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormAnulacionOPago.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormAnulacionOPago.Recuperar.Execute;
          FormAnulacionOPago.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='IC' then
        begin
          IF NOT (Assigned(FormIngresoCaja)) THEN
            FormIngresoCaja   := TFormIngresoCaja.Create(self);
          FormIngresoCaja.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormIngresoCaja.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormIngresoCaja.Recuperar.Execute;
          FormIngresoCaja.Show;
        end
      else
      if CDSMovTIPO_COMPROB.Value='CC' then
        begin
          IF NOT (Assigned(FormCheACaja)) THEN
            FormCheACaja   := TFormCheACaja.Create(self);
          FormCheACaja.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCheACaja.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormCheACaja.Recuperar.Execute;
          FormCheACaja.Show;
        end;
    end
  else
     if CDSMovTIPO_OPERACION.AsString='E' then
      begin
        if CDSMovTIPO_COMPROB.Value='OP' then
          begin
            IF NOT (Assigned(FormOPago_2)) THEN
              FormOPago_2:= TFormOPago_2.Create(self);
            FormOPago_2.DatoNew    := CDSMovID_COMPROBANTE.AsString;
            FormOPago_2.TipoCpbte  := CDSMovTIPO_COMPROB.AsString;
            FormOPago_2.Recuperar.Execute;
            FormOPago_2.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='FO' then
          begin
            IF NOT (Assigned(FormCompraCtdo_2)) THEN
              FormCompraCtdo_2   := TFormCompraCtdo_2.Create(self);
            FormCompraCtdo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormCompraCtdo_2.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='VA' then
          begin
            IF NOT (Assigned(FormAdelantosSueldo)) THEN
              FormAdelantosSueldo   := TFormAdelantosSueldo.Create(self);
            FormAdelantosSueldo.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormAdelantosSueldo.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormAdelantosSueldo.Recuperar.Execute;
            FormAdelantosSueldo.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='EC' then
          begin
            IF NOT (Assigned(FormEgresoCaja)) THEN
              FormEgresoCaja   := TFormEgresoCaja.Create(self);
            FormEgresoCaja.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormEgresoCaja.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormEgresoCaja.Recuperar.Execute;
            FormEgresoCaja.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='CX' then
          begin
            IF NOT (Assigned(FormTransferenciaEfectivo)) THEN
              FormTransferenciaEfectivo   := TFormTransferenciaEfectivo.Create(self);
            FormTransferenciaEfectivo.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormTransferenciaEfectivo.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormTransferenciaEfectivo.Recuperar.Execute;
            FormTransferenciaEfectivo.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='QX' then
          begin
            IF NOT (Assigned(FormTransferenciaChe3)) THEN
              FormTransferenciaChe3   := TFormTransferenciaChe3.Create(self);
            FormTransferenciaChe3.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormTransferenciaChe3.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormTransferenciaChe3.Recuperar.Execute;
            FormTransferenciaChe3.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='DP' then
          begin
            IF NOT (Assigned(FormDepositosBancarios)) THEN
              FormDepositosBancarios   := TFormDepositosBancarios.Create(self);
            FormDepositosBancarios.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormDepositosBancarios.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormDepositosBancarios.Recuperar.Execute;
            FormDepositosBancarios.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='QT' then
          begin
            IF NOT (Assigned(FormRemplazoChequesTerceros)) THEN
              FormRemplazoChequesTerceros   := TFormRemplazoChequesTerceros.Create(self);
            FormRemplazoChequesTerceros.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormRemplazoChequesTerceros.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormRemplazoChequesTerceros.Recuperar.Execute;
            FormRemplazoChequesTerceros.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='QR' then
          begin
            IF NOT (Assigned(FormRemplazoCheques)) THEN
              FormRemplazoCheques   := TFormRemplazoCheques.Create(self);
            FormRemplazoCheques.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormRemplazoCheques.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormRemplazoCheques.Recuperar.Execute;
            FormRemplazoCheques.Show;
          end
        else
        if CDSMovTIPO_COMPROB.Value='NC' then
          begin
            IF NOT (Assigned(FormCpbte_2)) THEN
              FormCpbte_2   := TFormCpbte_2.Create(self);
            FormCpbte_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormCpbte_2.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
          end;

      end;

end;

procedure TFormControlCaja.FormCreate(Sender: TObject);
begin
  inherited;
//  AddClientDataSet(CDSCabecera,DSPCabecera);
//  AddClientDataSet(CDSPie,DSPPie);
  AutoSize:=False;
  CDSCabecera.Open;
  CDSPie.Open;
  CDSMov.Open;
  CDSCtaCaja.Open;
  pcCaja.ActivePageIndex:=0;
end;

procedure TFormControlCaja.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
end;

procedure TFormControlCaja.ExportarMovChe3ExcelExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.FileName:='MovimientoChe';
  SaveDialog1.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if Not(CDSMovChe3.IsEmpty) then
    if SaveDialog1.Execute then
      if SaveDialog1.FileName<>'' then
         begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

end;

procedure TFormControlCaja.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
 CDSCabecera.ApplyUpdates(0);
 CDSPie.ApplyUpdates(0);
 CDSMov.ApplyUpdates(0);

 CDSCabecera.Close;
 CDSPie.Close;
 CDSMov.Close;

 CDSCabecera.Open;
 CDSPie.Open;
 CDSMov.Open;
end;

procedure TFormControlCaja.dbcCtasClick(Sender: TObject);
begin
  inherited;
  begin
    CDSCaja.Close;
    CDSCaja.Params.ParamByName('id').Value:=dbcCtas.KeyValue;
    CDSCaja.Open;
    dbgCajas.Width:=dbgCajas.Width+1;
    dbgCajas.Width:=dbgCajas.Width-1;

  end;
end;

procedure TFormControlCaja.dbgCajasDblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormCaja)) then
    FormCaja:=TFormCaja.Create(Self);
  FormCaja.Recuperar(CDSCajaID_CAJA.AsInteger);
  FormCaja.pcMovimientos.ActivePageIndex:=0;
  FormCaja.Show;
end;

procedure TFormControlCaja.dbgCajasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (CDSCajaESTADO.Value=0) then
    dbgCajas.canvas.brush.color := clMoneyGreen;
  if (gdFocused in State) then
    dbgCajas.canvas.brush.color := clNavy;
   //Esta línea es nueva

  dbgCajas.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlCaja.dbgCajasTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var campo:string;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgCajas.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlCaja.dbgMovChe3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (CDSMovChe3CONCILIADO.Value>0) then
    dbgMovChe3.canvas.brush.color := clMoneyGreen;
  if (gdFocused in State) then
    dbgMovChe3.canvas.brush.color := clNavy;
   //Esta línea es nueva

  dbgMovChe3.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlCaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlCaja:=nil;
end;

procedure TFormControlCaja.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlCaja<>nil then
    if FormControlCaja.Width<>955 then
      FormControlCaja.Width:=955;

end;

procedure TFormControlCaja.ModificarExecute(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlCaja.MovHaber1Click(Sender: TObject);
begin
  inherited;
  pnMovHaber.Visible:=True;
end;

procedure TFormControlCaja.recalcularExecute(Sender: TObject);
var aux:variant;
Puntero :TBookmark;
begin
  inherited;
   Puntero:=CDSCaja.GetBookmark;
   CDSCaja.First;
   CDSCabecera.First;
   CDSCaja.Next;
   CDSCaja.Prior;
   if chCajaSeleccionada.Checked then
     CDSCaja.GotoBookmark(Puntero);
   while Not(CDSCaja.Eof) do
     begin
       CDSCabecera.First;
       if CDSPiePrev.Active then
         begin
           while Not(CDSCabecera.Eof) do
             begin
               aux:=CDSPiePrev.Lookup('ID_TPAGO;ID_FPAGO',VarArrayOf([CDSCabeceraID_TPAGO.AsString,CDSCabeceraID_FPAGO.AsString]),'IMPORTE');
               if Not(VarIsNull(aux)) then
                 begin
                   CDSCabecera.Edit;
                   CDSCabeceraIMPORTE.AsFloat:= CDSPiePrev.Lookup('ID_TPAGO;ID_FPAGO',VarArrayOf([CDSCabeceraID_TPAGO.AsString,CDSCabeceraID_FPAGO.AsString]),'IMPORTE');
                 end;
               CDSCabecera.Next;
             end;
         end;
       if CDSCajaESTADO.Value=1 then
         begin
           CDSPie.First;
           while Not(CDSPie.Eof) do
             begin
               aux:=CDSRecalculo.Lookup('TPAGO;FPAGO',VarArrayOf([CDSPieID_TPAGO.AsString,CDSPieID_FPAGO.AsString]),'SALDO');
               if Not(VarIsNull(aux)) then
               begin
                 CDSPie.Edit;
                 CDSPieIMPORTE.AsFloat:= CDSRecalculo.Lookup('TPAGO;FPAGO',VarArrayOf([CDSPieID_TPAGO.AsString,CDSPieID_FPAGO.AsString]),'SALDO');
               end;
               CDSPie.Next;
             end;
         end;
       Confirma.Execute;
       Application.ProcessMessages;
       CDSCaja.Next;
     end;
 // CDSCabecera
   CDSCaja.FreeBookmark(Puntero);
end;

procedure TFormControlCaja.CDSCabeceraNewRecord(DataSet: TDataSet);
begin
  inherited;

  CDSCabeceraID_CAJA_SALDO.value := IBGSaldosCaja.IncrementFD(1);
  CDSCabeceraID_CAJA_CAB.Value   := CDSCajaID_CAJA.Value;
  CDSCabeceraESTADO_CAJA.Value   := 0; //Cerrada
  CDSCabeceraIMPORTE.Value       := 0;

end;

procedure TFormControlCaja.CDSCajaAfterScroll(DataSet: TDataSet);
var CDSCajaAnterior,CDSCajaSiguiente:TClientDataSet;

begin
  inherited;
  if CDSCabecera.State=dsEdit Then
      CDSCabecera.Post;
    if CDSPie.State=dsEdit Then
      CDSPie.Post;
    begin
      CDSCabecera.Close;
      CDSCabecera.Params.ParamByName('id').Value  := CDSCajaID_CAJA.Value;
      CDSCabecera.Open;

      CDSCajaAnterior:=TClientDataSet.Create(self);
      CDSCajaAnterior.CloneCursor(CDSCaja,True);
      CDSCajaAnterior.Prior;

      CDSCajaSiguiente:=TClientDataSet.Create(self);
      CDSCajaSiguiente.CloneCursor(CDSCaja,True);
      CDSCajaSiguiente.Next;
      CDSPiePrev.Close;
     if Not(CDSCajaAnterior.Bof) then
       begin
         CDSPiePrev.Close;
         CDSPiePrev.Params.ParamByName('id').Value  := CDSCajaAnterior.FieldByName('ID_CAJA').AsInteger;
         CDSPiePrev.Open;
        end;
       CDSCabSig.Close;
      if Not(CDSCajaSiguiente.Eof) then
        begin
          CDSCabSig.Close;
          CDSCabSig.Params.ParamByName('id').Value  := CDSCajaSiguiente.FieldByName('ID_CAJA').AsInteger;
          CDSCabSig.Open;
        end;

      CDSPie.Close;
      CDSPie.Params.ParamByName('id').Value      := CDSCajaID_CAJA.Value;
      CDSPie.Open;


      CDSMov.Close;
      CDSMov.Params.ParamByName('id').Value       := CDSCajaID_CAJA.Value;
      CDSMov.Open;

      CDSRecalculo.CLose;
      CDSRecalculo.Params.ParamByName('id').Value := CDSCajaID_CAJA.Value;
      CDSRecalculo.OPen;

      FreeAndNil(CDSCajaAnterior);
      FreeAndNil(CDSCajaSiguiente);
    end;
  btBuscarChe.Click;  
end;


procedure TFormControlCaja.CDSPieNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPieID_CAJA_SALDO.value := IBGSaldosCaja.IncrementFD(1);
  CDSPieID_CAJA_CAB.Value   := CDSCajaID_CAJA.Value;
  CDSPieESTADO_CAJA.Value   := 1; //Cerrada
end;

procedure TFormControlCaja.dbgCabeceraColEnter(Sender: TObject);
begin
  inherited;
  if dbgCabecera.SelectedIndex=2 Then
    dbgCabecera.SelectedIndex:=3;
end;

procedure TFormControlCaja.dbgPieColEnter(Sender: TObject);
begin
  inherited;
  if dbgPie.SelectedIndex=2 Then
    dbgPie.SelectedIndex:=3;

end;

procedure TFormControlCaja.btDesactivaClick(Sender: TObject);
begin
  inherited;
  CDSNombreTriggers.Close;
  CDSNombreTriggers.Open;
  while not(CDSNombreTriggers.Eof) do
    begin
      QDriveTrigger.Close;
      QDriveTrigger.SQL.Clear;
      QDriveTrigger.SQL.Add('ALTER TRIGGER '+''+CDSNombreTriggers.Fields[0].AsString+''+' INACTIVE');
      QDriveTrigger.ExecSQL;
      QDriveTrigger.Close;
      CDSNombreTriggers.Next;
    end;
  CDSNombreTriggers.Close;
  CDSNombreTriggers.Open;
  btActiva.Enabled   :=True;
  btDesactiva.Enabled:=False;
end;

procedure TFormControlCaja.btRelacionClick(Sender: TObject);
var i:Integer;
Encontrado:Boolean;
Puntero:TBookmark;
begin
  inherited;
  CDSMovChe3H.Close;
  CDSMovChe3H.Params.ParamByName('idctacaja').Value:=dbcCtas.KeyValue;
  CDSMovChe3H.Params.ParamByName('idcaja').Value   :=CDSCajaID_CAJA.Value;
  CDSMovChe3H.Open;

  CDSMovChe3.First;
  while not(CDSMovChe3.Eof) do
    begin
      Encontrado:=False;
      CDSMovChe3H.First;
      while ((Not(CDSMovChe3H.Eof)) and (Not(Encontrado))) do
        begin
          if (Trunc(CDSMovChe3DEBE.AsFloat*1000)= Trunc(CDSMovChe3HHABER.AsFloat*1000)) and
             ((CDSMovChe3CONCILIADO.AsString='') and (CDSMovChe3CONCILIADO.Value <= 0)) and
             ((CDSMovChe3HCONCILIADO.AsString='') and(CDSMovChe3HCONCILIADO.Value <=0)) then
            begin
              Encontrado := True;
              I := CDSMovChe3ID_MOV_CAJA.Value;

              Puntero:=CDSMovChe3.GetBookmark;

              CDSMovChe3.Edit;
              CDSMovChe3CONCILIADO.Value:= CDSMovChe3HID_MOV_CAJA.Value;
              CDSMovChe3.Post;

//              CDSMovChe3H.Edit;
//              CDSMovChe3HCONCILIADO.Value:= CDSMovChe3ID_MOV_CAJA.Value;
//              CDSMovChe3H.Post;

              if CDSMovChe3.Locate('id_mov_caja',CDSMovChe3HID_MOV_CAJA.AsString,[]) Then
                begin
                  CDSMovChe3.Edit;
                  CDSMovChe3CONCILIADO.Value:=I;
                  CDSMovChe3.Post;
                  //CDSMovChe3.Locate('id_mov_caja',CDSMovChe3HID_MOV_CAJA.AsString,[]);
                  CDSMovChe3.GotoBookmark(Puntero);
                  CDSMovChe3.FreeBookmark(Puntero);
                  CDSMovChe3H.Delete;
                end;
            end;
          if (Not(CDSMovChe3H.Eof)) then
            CDSMovChe3H.Next;
        end;
      CDSMovChe3.Next;
      Application.ProcessMessages;
    end;
  Sumar;
end;

procedure TFormControlCaja.btBuscarCheClick(Sender: TObject);
begin
  inherited;
  CDSMovChe3.Close;
  CDSMovChe3.Params.ParamByName('idctacaja').Value:=dbcCtas.KeyValue;
  CDSMovChe3.Params.ParamByName('idcaja').Value   :=CDSCajaID_CAJA.Value;
  CDSMovChe3.Open;
  CDSMovChe3H.Close;
  CDSMovChe3H.Params.ParamByName('idctacaja').Value:=dbcCtas.KeyValue;
  CDSMovChe3H.Params.ParamByName('idcaja').Value   :=CDSCajaID_CAJA.Value;
  CDSMovChe3H.Open;
  dbgMovChe3.Width:=dbgMovChe3.Width+1;
  dbgMovChe3.Width:=dbgMovChe3.Width-1;

  Sumar;
end;

procedure TFormControlCaja.BitBtn1Click(Sender: TObject);
begin
  inherited;
  pnMovHaber.Visible:=False;
end;

procedure TFormControlCaja.btActivaClick(Sender: TObject);
begin
  inherited;
  CDSNombreTriggers.Close;
  CDSNombreTriggers.Open;
  while not(CDSNombreTriggers.Eof) do
    begin
      QDriveTrigger.Close;
      QDriveTrigger.SQL.Clear;
      QDriveTrigger.SQL.Add('ALTER TRIGGER '+''+CDSNombreTriggers.Fields[0].AsString+''+' ACTIVE');
      QDriveTrigger.ExecSQL;
      QDriveTrigger.Close;
      CDSNombreTriggers.Next;
    end;
  CDSNombreTriggers.Close;
  CDSNombreTriggers.Open;
  btActiva.Enabled   :=False;
  btDesactiva.Enabled:=True;
end;

procedure TFormControlCaja.DBGMovTitleClick(Column: TColumn);
begin
  inherited;
  CDSMov.IndexFieldNames:=Column.FieldName;
end;

end.
