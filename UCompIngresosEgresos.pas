unit UCompIngresosEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvExControls,
  JvGradient, DB, Provider, DBClient, SqlExpr, ExtCtrls, ActnList, Buttons, JvDBLookup,
  DateUtils, AdvObj,  Math, JvBaseEdits, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,IniFiles,
  cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, frxClass, frxDBSet,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter, dxSkinOffice2007Black,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator, System.Actions, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, Vcl.Menus, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  frCoreClasses;

type
  TFormComposicionIngEgre = class(TForm)
    Panel1: TPanel;
    DSVtas: TDataSource;
    pnCabecera: TPanel;
    Label1: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label2: TLabel;
    UpDown1: TUpDown;
    Panel2: TPanel;
    btBuscar: TBitBtn;
    ActionList1: TActionList;
    Buscar: TAction;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    Label3: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    edTotalVtas: TJvCalcEdit;
    Label5: TLabel;
    Label4: TLabel;
    edTotaVtaCtaCte: TJvCalcEdit;
    Label6: TLabel;
    edTotalVtaCtdo: TJvCalcEdit;
    DSRecibos: TDataSource;
    Label7: TLabel;
    edTotalCobranza: TJvCalcEdit;
    edTotalGralIngresos: TJvCalcEdit;
    Label8: TLabel;
    Label10: TLabel;
    edTotalOtrosIngresos: TJvCalcEdit;
    CDSSaldoMov_I: TClientDataSet;
    CDSSaldoMov_E: TClientDataSet;
    DSPSaldosMov: TDataSetProvider;
    CDSSaldoMov_ITIPOPPAGO: TStringField;
    CDSSaldoMov_IFPAGO: TStringField;
    CDSSaldoMov_ITIPOOP: TStringField;
    CDSSaldoMov_ITIPO: TStringField;
    CDSSaldoMov_IDEBE: TFloatField;
    CDSSaldoMov_IHABER: TFloatField;
    CDSSaldoMov_ETIPOPPAGO: TStringField;
    CDSSaldoMov_EFPAGO: TStringField;
    CDSSaldoMov_ETIPOOP: TStringField;
    CDSSaldoMov_ETIPO: TStringField;
    CDSSaldoMov_EDEBE: TFloatField;
    CDSSaldoMov_EHABER: TFloatField;
    DSSaldoMov_I: TDataSource;
    DSSaldoMov_E: TDataSource;
    DSPCompr: TDataSetProvider;
    CDSComp: TClientDataSet;
    DSCompr: TDataSource;
    Button1: TButton;
    CDSSaldoMov_ITIPO_CPBTE: TStringField;
    CDSSaldoMov_ETIPO_CPBTE: TStringField;
    Label9: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOPPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOOP: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    CDSCompTIPOCPBTE: TStringField;
    CDSCompMES: TSmallintField;
    CDSCompANIO: TSmallintField;
    CDSCompSUCURSALCOMPRA: TIntegerField;
    CDSCompDESCSUCURSAL: TStringField;
    CDSCompTIPOCOMPROBANT: TStringField;
    CDSCompDENOMINACION: TStringField;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edTotalCompras: TJvCalcEdit;
    edTotalComprCtaCte: TJvCalcEdit;
    edTotalComprCtdo: TJvCalcEdit;
    edTotalOPagos: TJvCalcEdit;
    edTotalGralEgresos: TJvCalcEdit;
    edTotalGastos: TJvCalcEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1TIPOPPAGO: TcxGridDBColumn;
    cxGridDBTableView1TIPOOP: TcxGridDBColumn;
    cxGridDBTableView1HABER: TcxGridDBColumn;
    Label17: TLabel;
    DSOPago: TDataSource;
    DSPSaldoMov_E: TDataSetProvider;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalTIPOCPBTE: TStringField;
    CDSPersonalCLASECPBTE: TStringField;
    CDSPersonalFECHA: TSQLTimeStampField;
    Label18: TLabel;
    edTotalPersonal: TJvCalcEdit;
    Label19: TLabel;
    edTotalDepositos: TJvCalcEdit;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    CDSDepositosSUCURSAL: TIntegerField;
    DSMovTc: TDataSource;
    Label20: TLabel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2FECHA: TcxGridDBColumn;
    cxGrid1DBTableView2FECHA_ACREDITACION: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView2TARJETACREDITO: TcxGridDBColumn;
    cxGrid1DBTableView2FECHAACREDITACION_PROBABLE: TcxGridDBColumn;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    DSMovTC_ACobrar: TDataSource;
    cxGrid1DBTableView3FECHA: TcxGridDBColumn;
    cxGrid1DBTableView3FECHA_ACREDITACION: TcxGridDBColumn;
    cxGrid1DBTableView3IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView3TARJETACREDITO: TcxGridDBColumn;
    cxGrid1DBTableView3FECHAACREDITACION_PROBABLE: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    DSReemp: TDataSource;
    Label22: TLabel;
    edTotalReemplazos: TJvCalcEdit;
    Label24: TLabel;
    edTotalRetenciones: TJvCalcEdit;
    Label25: TLabel;
    edTotalRet_Rec: TJvCalcEdit;
    Label26: TLabel;
    edTotalDiferencia: TJvCalcEdit;
    Bevel1: TBevel;
    Label27: TLabel;
    edTotaldePagos: TJvCalcEdit;
    Label28: TLabel;
    edTotalCobrado: TJvCalcEdit;
    Label21: TLabel;
    edTotalCobrosCheque: TJvCalcEdit;
    Label23: TLabel;
    edTotalResTC: TJvCalcEdit;
    frxReporte: TfrxReport;
    frEgr: TfrxDBDataset;
    frIng: TfrxDBDataset;
    btImprimir: TBitBtn;
    QRecibos: TFDQuery;
    QRecibosMES: TSmallintField;
    QRecibosANIO: TSmallintField;
    QRecibosSUCURSAL: TIntegerField;
    QRecibosDESCSUCURSAL: TStringField;
    QRecibosTIPOCOMPROBANT: TStringField;
    QRecibosDENOMINACION: TStringField;
    QRecibosTOTAL: TFloatField;
    QRecibosRET_PERCIBIDAS: TFloatField;
    QVtas: TFDQuery;
    QDepositos: TFDQuery;
    QReemp: TFDQuery;
    QCCheque: TFDQuery;
    QVtasTIPOCPBTE: TStringField;
    QVtasMES: TSmallintField;
    QVtasANIO: TSmallintField;
    QVtasSUCURSAL: TIntegerField;
    QVtasDESCSUCURSAL: TStringField;
    QVtasTIPOCOMPROBANT: TStringField;
    QVtasDENOMINACION: TStringField;
    QVtasTOTAL: TFloatField;
    QVtasNC_CONTADO: TStringField;
    QReempTIPOCPBTE: TStringField;
    QReempMES: TSmallintField;
    QReempANIO: TSmallintField;
    QReempSUCURSAL: TIntegerField;
    QReempDESCSUCURSAL: TStringField;
    QReempTIPOCOMPROBANT: TStringField;
    QReempIMPORTE: TFloatField;
    QCChequeTIPOCPBTE: TStringField;
    QCChequeMES: TSmallintField;
    QCChequeANIO: TSmallintField;
    QCChequeSUCURSAL: TIntegerField;
    QCChequeDESCSUCURSAL: TStringField;
    QCChequeTIPOCOMPROBANT: TStringField;
    QCChequeIMPORTE: TFloatField;
    QSaldosMov: TFDQuery;
    QMovTc: TFDQuery;
    QResTC: TFDQuery;
    QResTCTIPOCPBTE: TStringField;
    QResTCFECHA: TSQLTimeStampField;
    QResTCMES: TSmallintField;
    QResTCANIO: TSmallintField;
    QResTCSUCURSAL: TIntegerField;
    QResTCDESCSUCURSAL: TStringField;
    QResTCTIPOCOMPROBANT: TStringField;
    QResTCTOTAL: TFloatField;
    QMovTcID_MOV_TC: TIntegerField;
    QMovTcACREDITADA: TStringField;
    QMovTcCAN_CUOTAS: TIntegerField;
    QMovTcCOEFICIENTE: TFloatField;
    QMovTcCOTIZACION: TFloatField;
    QMovTcFECHA: TSQLTimeStampField;
    QMovTcFECHA_ACREDITACION: TSQLTimeStampField;
    QMovTcID_CAJA: TIntegerField;
    QMovTcID_MOV_CAJA: TIntegerField;
    QMovTcID_CUENTA_BANCO: TIntegerField;
    QMovTcID_CUENTA_CAJA: TIntegerField;
    QMovTcID_TC: TIntegerField;
    QMovTcIMPORTE: TFloatField;
    QMovTcIMPORTE_NETO: TFloatField;
    QMovTcIMPORTE_RECARGO: TFloatField;
    QMovTcN_DOCU: TStringField;
    QMovTcNRO_CUPON: TIntegerField;
    QMovTcTITULAR: TStringField;
    QMovTcVALORCUOTA: TFloatField;
    QMovTcTIPOP_COMPROB: TStringField;
    QMovTcCLASE_COMPROB: TStringField;
    QMovTcID_COMPROBANTE: TIntegerField;
    QMovTcNRO_COMPROBANTE: TStringField;
    QMovTcSUCURSAL: TIntegerField;
    QMovTcTARJETACREDITO: TStringField;
    QMovTcFECHAACREDITACION_PROBABLE: TSQLTimeStampField;
    QMovTcNRO_LOTE: TStringField;
    QMovTcNRO_TERMINAL: TStringField;
    QMovTcDIAS_PARA_ACR: TIntegerField;
    QMovTcTIPOOPERACION: TStringField;
    QMovTC_ACobrar: TFDQuery;
    QMovTC_ACobrarID_MOV_TC: TIntegerField;
    QMovTC_ACobrarACREDITADA: TStringField;
    QMovTC_ACobrarCAN_CUOTAS: TIntegerField;
    QMovTC_ACobrarCOEFICIENTE: TFloatField;
    QMovTC_ACobrarCOTIZACION: TFloatField;
    QMovTC_ACobrarID_CAJA: TIntegerField;
    QMovTC_ACobrarID_MOV_CAJA: TIntegerField;
    QMovTC_ACobrarID_CUENTA_BANCO: TIntegerField;
    QMovTC_ACobrarID_CUENTA_CAJA: TIntegerField;
    QMovTC_ACobrarID_TC: TIntegerField;
    QMovTC_ACobrarIMPORTE: TFloatField;
    QMovTC_ACobrarIMPORTE_NETO: TFloatField;
    QMovTC_ACobrarIMPORTE_RECARGO: TFloatField;
    QMovTC_ACobrarN_DOCU: TStringField;
    QMovTC_ACobrarNRO_CUPON: TIntegerField;
    QMovTC_ACobrarTITULAR: TStringField;
    QMovTC_ACobrarVALORCUOTA: TFloatField;
    QMovTC_ACobrarTIPOP_COMPROB: TStringField;
    QMovTC_ACobrarCLASE_COMPROB: TStringField;
    QMovTC_ACobrarID_COMPROBANTE: TIntegerField;
    QMovTC_ACobrarNRO_COMPROBANTE: TStringField;
    QMovTC_ACobrarSUCURSAL: TIntegerField;
    QMovTC_ACobrarTARJETACREDITO: TStringField;
    QMovTC_ACobrarNRO_LOTE: TStringField;
    QMovTC_ACobrarNRO_TERMINAL: TStringField;
    QMovTC_ACobrarDIAS_PARA_ACR: TIntegerField;
    QMovTC_ACobrarTIPOOPERACION: TStringField;
    QPersonal: TFDQuery;
    QOPago: TFDQuery;
    QOPagoFECHA: TSQLTimeStampField;
    QOPagoMES: TSmallintField;
    QOPagoANIO: TSmallintField;
    QOPagoSUCURSAL: TIntegerField;
    QOPagoDESCSUCURSAL: TStringField;
    QOPagoTIPOCOMPROBANT: TStringField;
    QOPagoDENOMINACION: TStringField;
    QOPagoTOTAL: TFloatField;
    QOPagoRET_GANANCIA: TFloatField;
    QOPagoRET_IIBB: TFloatField;
    CDSDepositosIMPORTE: TFloatField;
    CDSPersonalIMPORTE: TFloatField;
    QCompr: TFDQuery;
    CDSCompTOTAL: TFloatField;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    QRecibosFECHA: TSQLTimeStampField;
    QVtasFECHAVTA: TSQLTimeStampField;
    QReempFECHA: TSQLTimeStampField;
    QCChequeFECHA: TSQLTimeStampField;
    QMovTC_ACobrarFECHA: TSQLTimeStampField;
    QMovTC_ACobrarFECHA_ACREDITACION: TSQLTimeStampField;
    QMovTC_ACobrarFECHAACREDITACION_PROBABLE: TSQLTimeStampField;
    CDSCompFECHACOMPRA: TSQLTimeStampField;
    CDSDepositosFECHA: TSQLTimeStampField;
    Label29: TLabel;
    edTotalNC: TJvCalcEdit;
    PopupMenu1: TPopupMenu;
    Grupo: TMenuItem;
    btSalir: TBitBtn;
    chDepositos: TCheckBox;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GrupoClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure chDepositosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalVtas,VtaCtdo,VtaCC,NCCtdo,NCred,Cobranzas,Ingresos,
    TotalCompras,CompCtdo,CompCC,Pagos,Egresos:Extended;
    Efectivo,Tarjeta,Cheques,Otros,RetGanc,RetIIBB,RetPercibidas:Extended;
    PrNomListados:String;
    procedure Sumar;
  end;

var
  FormComposicionIngEgre: TFormComposicionIngEgre;

implementation

uses  UFiltroComprobantesVenta,UDMain_FD;
{$R *.dfm}

procedure TFormComposicionIngEgre.Sumar;
begin
  TotalVtas:=0;
  VtaCtdo  :=0;
  VtaCC    :=0;
  NCCtdo   :=0;
  NCred    :=0;
  Cobranzas:=0;
  Ingresos :=0;
  TotalCompras:=0;
  Pagos       :=0;
  Egresos     :=0;
  CompCtdo    :=0;
  CompCC      :=0;

  QVtas.First;
  while not(QVtas.Eof) do
    begin
      if (QVtasTIPOCPBTE.Value='FO') or (QVtasTIPOCPBTE.Value='TK')  then
        VtaCtdo:=VtaCtdo+RoundTo(QVtasTOTAL.AsFloat,-2)
      else
        if (QVtasTIPOCPBTE.Value='FC') or (QVtasTIPOCPBTE.Value='ND') then
          VtaCC:=VtaCC+RoundTo(QVtasTOTAL.AsFloat,-2)
        else
          if (QVtasTIPOCPBTE.Value='NC') and (QVtasNC_CONTADO.Value='S') then
            NCCtdo:=NCCtdo+RoundTo(QVtasTOTAL.AsFloat,-2)
          else
            if (QVtasTIPOCPBTE.Value='NC') and (QVtasNC_CONTADO.Value='N') then
              NCred:=NCred+RoundTo(QVtasTOTAL.AsFloat,-2);

      QVtas.Next;
    end;

  edTotalNC.Value            := NCCtdo + NCred;
  TotalVtas                  := VtaCtdo + VtaCC;//

  Cobranzas     :=0;
  RetPercibidas :=0;

  QRecibos.First;
  while not(QRecibos.Eof) do
    begin
      Cobranzas := Cobranzas + RoundTo(QRecibosTOTAL.AsFloat,-2);
      if QRecibosRET_PERCIBIDAS.AsString<>'' then
        RetPercibidas:=RetPercibidas + RoundTo(QRecibosRET_PERCIBIDAS.AsFloat,-2);
      QRecibos.Next;
    end;

  edTotalRet_Rec.Value   := RetPercibidas;

  edTotalReemplazos.Value:= 0;
  QReemp.First;
  while not(QReemp.Eof) do
    begin
      edTotalReemplazos.Value := edTotalReemplazos.Value + RoundTo(QReempIMPORTE.AsFloat,-2);
      QReemp.Next;
    end;

  edTotalCobrosCheque.Value:= 0;
  QCCheque.First;
  while not(QCCheque.Eof) do
    begin
      edTotalCobrosCheque.Value := edTotalCobrosCheque.Value + RoundTo(QCChequeIMPORTE.AsFloat,-2);
      QCCheque.Next;
    end;

  CDSSaldoMov_I.First;
  while not(CDSSaldoMov_I.Eof) do
    begin
      if CDSSaldoMov_ITIPO_CPBTE.Value='IC' then
        Ingresos:=Ingresos + RoundTo(CDSSaldoMov_IDEBE.AsFloat,-2);
      CDSSaldoMov_I.Next;
    end;

  edTotalOtrosIngresos.Value := Ingresos;
  edTotalVtas.Value          := TotalVtas;
  edTotaVtaCtaCte.Value      := VtaCC;
  edTotalVtaCtdo.Value       := VtaCtdo ;
  edTotalCobranza.Value      := Cobranzas;
  edTotalCobrado.Value       := Cobranzas - RetPercibidas;
  edTotalGralIngresos.Value  := Ingresos + (VtaCtdo) +
                                edTotalCobrado.Value + edTotalReemplazos.Value +
                                edTotalCobrosCheque.Value;
//  edTotalNC.Value            := NCCtdo + NCred;
//  edTotalNCCtdo.Value        := NCCtdo;

  NCred    :=0;
  CDSComp.First;
  while not(CDSComp.Eof) do
    begin
      if (CDSCompTIPOCPBTE.Value='FO')   then
        CompCtdo:=CompCtdo+RoundTo(CDSCompTOTAL.AsFloat,-2)
      else
        if (CDSCompTIPOCPBTE.Value='FC') or (CDSCompTIPOCPBTE.Value='ND') then
          CompCC:=CompCC+RoundTo(CDSCompTOTAL.AsFloat,-2)
        else
          if (CDSCompTIPOCPBTE.Value='NC') then
            NCred:=NCred+RoundTo(CDSCompTOTAL.AsFloat,-2);

      CDSComp.Next;
    end;

  TotalCompras     := CompCtdo + CompCC;

  RetGanc:=0; RetIIBB:=0;
  QOPago.First;
  while not(QOPago.Eof) do
    begin
      Pagos := Pagos   + RoundTo(QOPagoTOTAL.AsFloat,-2);
      RetGanc:=RetGanc + RoundTo(QOPagoRET_GANANCIA.AsFloat,-2);
      RetIIBB:=RetIIBB + RoundTo(QOPagoRET_IIBB.AsFloat,-2);
      QOPago.Next;
    end;
  edTotalRetenciones.Value := RetGanc + RetIIBB;

  CDSSaldoMov_E.First;
  while not(CDSSaldoMov_E.Eof) do
    begin
      if CDSSaldoMov_ETIPO_CPBTE.Value='EC' then
        Egresos:=Egresos + RoundTo(CDSSaldoMov_EHABER.AsFloat,-2);
      CDSSaldoMov_E.Next;
    end;

  edTotalPersonal.Value:=0;
  CDSPersonal.First;
  while not(CDSPersonal.Eof) do
    begin
      edTotalPersonal.Value:=edTotalPersonal.Value + RoundTo(CDSPersonalIMPORTE.AsFLoat,-2);
      CDSPersonal.Next;
    end;

  edTotalDepositos.Value:=0;
  CDSDepositos.First;
  while not(CDSDepositos.Eof) do
    begin
      edTotalDepositos.Value:=edTotalDepositos.Value + RoundTo(CDSDepositosIMPORTE.AsFLoat,-2);
      CDSDepositos.Next;
    end;

  edTotalResTC.Value:=0;
  QResTC.First;
  while not(QResTC.Eof) do
    begin
      edTotalResTC.Value:=edTotalResTC.Value + RoundTo(QResTCTOTAL.AsFLoat,-2);
      QResTC.Next;
    end;


  edTotalGastos.Value       := Egresos;
  edTotalCompras.Value      := TotalCompras;
  edTotalComprCtaCte.Value  := CompCC - NCred;
  edTotalComprCtdo.Value    := CompCtdo;
  edTotalOPagos.Value       := Pagos;
  edTotaldePagos.Value      := Pagos-  edTotalRetenciones.Value;
  edTotalGralEgresos.Value  := Egresos +
                               CompCtdo +
                               edTotaldePagos.Value +
                               edTotalPersonal.Value +
                               edTotalDepositos.Value +
                               edTotalResTC.Value +
                               edTotalReemplazos.Value;

  edTotalDiferencia.Value := edTotalGralIngresos.Value - edTotalGralEgresos.Value;
end;

procedure TFormComposicionIngEgre.btImprimirClick(Sender: TObject);
begin

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ComposicionIngEgr.fr3');
  frxReporte.Variables['desde']         :=''''+Desde.Text+'''';
  frxReporte.Variables['hasta']         :=''''+Hasta.Text+'''';
  frxReporte.Variables['sucursal']      :=''''+dbcSucursal.Text+'''';
  frxReporte.Variables['TotalVta']      :=''''+edTotalVtas.Text+'''';
  frxReporte.Variables['VtaCC']         :=''''+edTotaVtaCtaCte.Text+'''';
  frxReporte.Variables['VtaCtdo']       :=''''+edTotalVtaCtdo.Text+'''';
  frxReporte.Variables['OtroIng']       :=''''+edTotalOtrosIngresos.Text+'''';
  frxReporte.Variables['CobroChe']      :=''''+edTotalCobrosCheque.Text+'''';
  frxReporte.Variables['TotalRc']       :=''''+edTotalCobranza.Text+'''';
  frxReporte.Variables['RetencionesVta']:=''''+edTotalRet_Rec.Text+'''';
  frxReporte.Variables['TotalCobrado']  :=''''+edTotalCobrado.Text+'''';
  frxReporte.Variables['ReempValores']  :=''''+edTotalReemplazos.Text+'''';
  frxReporte.Variables['TotalIngresos'] :=''''+edTotalGralIngresos.Text+'''';

  frxReporte.Variables['TotalCompra']    :=''''+edTotalCompras.Text+'''';
  frxReporte.Variables['ComprasCC']      :=''''+edTotalComprCtaCte.Text+'''';
  frxReporte.Variables['ComprasCtdo']    :=''''+edTotalComprCtdo.Text+'''';
  frxReporte.Variables['Gastos']         :=''''+edTotalGastos.Text+'''';
  frxReporte.Variables['Personal']       :=''''+edTotalPersonal.Text+'''';
  frxReporte.Variables['TotalOPagos']    :=''''+edTotalOPagos.Text+'''';
  frxReporte.Variables['TotalRetCompra'] :=''''+edTotalRetenciones.Text+'''';
  frxReporte.Variables['TotalPagado']    :=''''+edTotaldePagos.Text+'''';
  frxReporte.Variables['TotalDeposito']  :=''''+edTotalDepositos.Text+'''';
  frxReporte.Variables['TotalTC']        :=''''+edTotalResTC.Text+'''';
  frxReporte.Variables['TotalEgresos']   :=''''+edTotalGralEgresos.Text+'''';



  frxReporte.ShowReport;
end;

procedure TFormComposicionIngEgre.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormComposicionIngEgre.BuscarExecute(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;

  QVtas.Close;
  QVtas.ParamByName('desde').Value:= desde.Date;
  QVtas.ParamByName('hasta').Value:= hasta.Date;
  QVtas.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  QVtas.ParamByName('tipo').Value := '**';
  QVtas.Open;

  QRecibos.Close;
  QRecibos.ParamByName('desde').Value:= desde.Date;
  QRecibos.ParamByName('hasta').Value:= hasta.Date;
  QRecibos.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  QRecibos.ParamByName('tipo').Value := 'RC';
  QRecibos.Open;

  CDSSaldoMov_I.Close;
  CDSSaldoMov_I.Params.ParamByName('desde').Value:= desde.Date;
  CDSSaldoMov_I.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSSaldoMov_I.Params.ParamByName('Tipo').Value := 'I';
  CDSSaldoMov_I.Params.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  CDSSaldoMov_I.Open;

  CDSComp.Close;
  CDSComp.Params.ParamByName('desde').Value:= desde.Date;
  CDSComp.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSComp.Params.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  CDSComp.Params.ParamByName('tipo').Value := '**';
  CDSComp.Open;

  QOPago.Close;
  QOPago.ParamByName('desde').Value:= desde.Date;
  QOPago.ParamByName('hasta').Value:= hasta.Date;
  QOPago.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  QOPago.ParamByName('tipo').Value := 'OP';
  QOPago.Open;


  CDSSaldoMov_E.Close;
  CDSSaldoMov_E.Params.ParamByName('desde').Value:= desde.Date;
  CDSSaldoMov_E.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSSaldoMov_E.Params.ParamByName('Tipo').Value := 'E';
  CDSSaldoMov_E.Params.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  CDSSaldoMov_E.Open;

  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('desde').Value:= desde.Date;
  CDSPersonal.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSPersonal.Open;

  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('desde').Value:= desde.Date;
  CDSDepositos.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSDepositos.Params.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  CDSDepositos.Open;

  QReemp.Close;
  QReemp.ParamByName('desde').Value:= desde.Date;
  QReemp.ParamByName('hasta').Value:= hasta.Date;
  QReemp.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  QReemp.Open;

  QResTC.Close;
  QResTC.ParamByName('desde').Value:= desde.Date;
  QResTC.ParamByName('hasta').Value:= hasta.Date;
  QResTC.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  QResTC.Open;


  QCCheque.Close;
  QCCheque.ParamByName('desde').Value:= desde.Date;
  QCCheque.ParamByName('hasta').Value:= hasta.Date;
  QCCheque.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  QCCheque.Open;

  QMovTc.Close;
  QMovTc.ParamByName('id_tarjeta').Value   := -1;
  QMovTc.ParamByName('Acred').AsString     := '*';
  QMovTc.ParamByName('desde').Value        := desde.Date;
  QMovTc.ParamByName('hasta').Value        := hasta.date;
  QMovTc.ParamByName('vta_acred').AsString := 'V';
  QMovTc.ParamByName('Lote').AsString      := '00000';
  QMovTc.ParamByName('Terminal').AsString  := '00000000';
  QMovTc.ParamByName('sucursal').Value     := StrToInt(dbcSucursal.KeyValue);
  QMovTc.Open;

  QMovTC_ACobrar.Close;
  QMovTC_ACobrar.ParamByName('id_tarjeta').Value   := -1;
  QMovTC_ACobrar.ParamByName('Acred').AsString     := 'N';
  QMovTC_ACobrar.ParamByName('desde').Value        := desde.Date;
  QMovTC_ACobrar.ParamByName('hasta').Value        := hasta.date;
  QMovTC_ACobrar.ParamByName('vta_acred').AsString := 'V';
  QMovTC_ACobrar.ParamByName('Lote').AsString      := '00000';
  QMovTC_ACobrar.ParamByName('Terminal').AsString  := '00000000';
  QMovTC_ACobrar.ParamByName('sucursal').Value     := StrToInt(dbcSucursal.KeyValue);
  QMovTC_ACobrar.Open;

  Screen.Cursor:=crDefault;

  Sumar;
end;

procedure TFormComposicionIngEgre.Button1Click(Sender: TObject);
begin
 if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
   FormFiltroCpbtes.ShowModal;
end;

procedure TFormComposicionIngEgre.chDepositosClick(Sender: TObject);
begin
  CDSSaldoMov_E.Filtered:=False;
  if chDepositos.Checked then
    begin
      CDSSaldoMov_E.Filter   := 'TIPO_CPBTE<>''DP''';
      CDSSaldoMov_E.Filtered := True;
    end;

end;

procedure TFormComposicionIngEgre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormComposicionIngEgre.FormCreate(Sender: TObject);
var d,m,y:word;
ArchivoIni:TIniFile;
begin
  inherited;
  autoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  CDSSucursal.Close;
  CDSSucursal.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);

  //Impresoras
  PrNomListados   :=ArchivoIni.ReadString('Impresoras', 'Listados', '');
 
  ArchivoIni.Free;

end;

procedure TFormComposicionIngEgre.FormDestroy(Sender: TObject);
begin
  FormComposicionIngEgre:=nil;
end;

procedure TFormComposicionIngEgre.FormResize(Sender: TObject);
begin
  if (Width>1028)
    then width:=1028;
  if (Width<1028)
    then width:=1028;
end;

procedure TFormComposicionIngEgre.GrupoClick(Sender: TObject);
begin
  cxGrid1DBTableView1.OptionsView.GroupByBox:= not(cxGrid1DBTableView1.OptionsView.GroupByBox);
end;

procedure TFormComposicionIngEgre.Panel1DblClick(Sender: TObject);
begin
  frxReporte.DesignReport;
end;

procedure TFormComposicionIngEgre.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

end.
