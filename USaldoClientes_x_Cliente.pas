unit USaldoClientes_x_Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, IBGenerator, frxExportText, frxExportXLS,
  frxExportPDF, DB, DBClient, DataExport, DataToXLS, frxClass,
  frxExportRTF, ImgList, ActnList, frxDBSet, Provider,  StdCtrls,
  DBGrids, JvExControls, JvDBLookup, Grids, Buttons,
  Mask, JvGradient, ExtCtrls,IniFiles,Printers,
  DBCtrls, JvLabel, JvExMask, JvToolEdit, FMTBcd, SqlExpr, 
  JvBaseEdits, DBXCommon, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, JvFormPlacement, JvComponentBase, JvAppStorage, JvAppIniStorage,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormsaldoClientes_x_Cliente = class(TForm)
    pnSaldos: TPanel;
    JvGradient2: TJvGradient;
    lbEstado: TLabel;
    btTraerSaldos: TBitBtn;
    BitBtn2: TBitBtn;
    DSPSaldosClientes: TDataSetProvider;
    frDBSaldos: TfrxDBDataset;
    DSPMovCC: TDataSetProvider;
    frDetalles: TfrxReport;
    frDBDetalles: TfrxDBDataset;
    ActionList1: TActionList;
    Imprimir: TAction;
    ImprimirDetalle: TAction;
    TraeSaldos: TAction;
    MuestraDetalle: TAction;
    SellAll: TAction;
    Salir: TAction;
    EnviarCorreo: TAction;
    EnviarCorreoDetalles: TAction;
    ExportaSaldosXLS: TAction;
    Incidencias: TAction;
    ImageList1: TImageList;
    XLSSaldo: TDataToXLS;
    frDBDSEmpresa: TfrxDBDataset;
    DSFiltroCab: TDataSource;
    DSFiltroDet: TDataSource;
    CDSMovCC: TClientDataSet;
    CDSMovCCID_MOVCCVTA: TIntegerField;
    CDSMovCCCODIGO: TStringField;
    CDSMovCCDETALLE: TStringField;
    DSMovCC: TDataSource;
    CDSSaldosCliente: TClientDataSet;
    CDSSaldosClienteCODIGO: TStringField;
    CDSSaldosClienteRAZON_SOCIAL: TStringField;
    CDSSaldosClienteDIRECCION_COMERCIAL: TStringField;
    CDSSaldosClienteTELEFONO_COMERCIAL_1: TStringField;
    CDSSaldosClienteTELEFONO_COMERCIAL_2: TStringField;
    CDSSaldosClienteVENDEDOR: TStringField;
    CDSSaldosClienteZONA: TIntegerField;
    CDSSaldosClienteCORREOELECTRONICO: TStringField;
    CDSSaldosClienteACTIVO: TStringField;
    CDSSaldosClienteCPOSTAL: TStringField;
    CDSSaldosClienteLOCALIDAD: TStringField;
    CDSSaldosClienteSeleccion: TBooleanField;
    CDSSaldosClienteCUIT: TStringField;
    DSSaldosClientes: TDataSource;
    DSMovAplicacion: TDataSource;
    DSPMovAplicacion: TDataSetProvider;
    CDSMovAplicacion: TClientDataSet;
    frDBAplicaciones: TfrxDBDataset;
    DSMovACta: TDataSource;
    DSPMovACta: TDataSetProvider;
    CDSMovACta: TClientDataSet;
    CDSMovACtaID_MOV: TIntegerField;
    CDSMovACtaCLIENTE: TStringField;
    CDSMovACtaID_CPBTE: TIntegerField;
    CDSMovACtaTIPOCPBTE: TStringField;
    CDSMovACtaCLASECPBTE: TStringField;
    CDSMovACtaNUMEROCPBTE: TStringField;
    CDSMovACtaDETALLE: TStringField;
    frDBMovACta: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    SaveDialog1: TSaveDialog;
    ibgId: TIBGenerator;
    dbgMovACta: TDBGrid;
    dbcGrupo: TJvDBLookupCombo;
    chFiltro: TCheckBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    edNombreCliente: TEdit;
    BuscarCliente: TAction;
    VerComprobante: TAction;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCTIPOCPBTE: TStringField;
    VerApliacion: TAction;
    CDSMovCCID_COMPROBANTE: TIntegerField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    CDSMovACtaID_COMPROBANTE: TIntegerField;
    ceCliente: TJvComboEdit;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel5: TJvLabel;
    CDSSaldosClienteSALDO: TFloatField;
    CDSMovACtaID: TIntegerField;
    CDSMovAplicacionID: TIntegerField;
    CDSMovAplicacionID_MOV: TIntegerField;
    CDSMovAplicacionID_MOVCCVTA: TIntegerField;
    CDSMovAplicacionCLIENTE: TStringField;
    CDSMovAplicacionID_CPBTE: TIntegerField;
    CDSMovAplicacionTIPOCPBTE: TStringField;
    CDSMovAplicacionCLASECPBTE: TStringField;
    CDSMovAplicacionNUMEROCPBTE: TStringField;
    CDSMovAplicacionAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicacionAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicacionAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicacionAPLICA_NROCPBTE: TStringField;
    CDSMovAplicacionDETALLE: TStringField;
    CDSMovAplicacionID_COMPROBANTE: TIntegerField;
    edTotal: TJvCalcEdit;
    edACta: TJvCalcEdit;
    edSaldos: TJvCalcEdit;
    Hasta: TJvDateEdit;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    CDSMovCCCUOTA: TIntegerField;
    QMovAplicacion: TFDQuery;
    QFiltroDet: TFDQuery;
    QFiltroDetID: TIntegerField;
    QFiltroDetID_CAB: TIntegerField;
    QFiltroDetID_CPBTE: TIntegerField;
    QFiltroDetMUESTRACOMPROBANTE: TStringField;
    QFiltroDetMUESTRATIPO: TStringField;
    QFiltroDetMUESTRACLASE: TStringField;
    QFiltroDetMUESTRASUC: TStringField;
    QFiltroCab: TFDQuery;
    QEmpresa: TFDQuery;
    QEmpresaNOMBRE: TStringField;
    QEmpresaACTIVIDAD: TStringField;
    QEmpresaDIRECCION: TStringField;
    QEmpresaLOCALIDAD: TStringField;
    QEmpresaCORREO: TStringField;
    QEmpresaTELEFONO1: TStringField;
    QEmpresaTELEFONO2: TStringField;
    QEmpresaCUIT: TStringField;
    QEmpresaCONDICIONIVA: TStringField;
    QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    QEmpresaLOGO: TBlobField;
    QEmpresaCPOSTAL: TStringField;
    QEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_ING_BRUTOS: TStringField;
    QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    QEmpresaTASA_PERCEPCION_IB: TFloatField;
    QEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    QEmpresaPROVINCIA: TIntegerField;
    QEmpresaTASA_RET_IIBB: TFloatField;
    QEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    QEmpresaPUNITORIOS: TFloatField;
    QEmpresaNRO_RENSPA: TStringField;
    QEmpresaNRO_RUCA: TIntegerField;
    QEmpresaCUIT_AUTORIZADO: TStringField;
    QEmpresaNOMBRE_AUTORIZADO: TStringField;
    QEmpresaCBU: TStringField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO_2: TStringField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesTIPOABONO: TStringField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesDIAS_MAYOR_30: TIntegerField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesFOTO: TBlobField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QClientesCHEQUES: TStringField;
    QSaldosClientes: TFDQuery;
    CDSSaldosClienteLIMITE_CREDITO: TFloatField;
    CDSMovAplicacionIMPORTE: TFloatField;
    QUltimoMovTemporal: TFDQuery;
    QUltimoMovTemporalMAX: TIntegerField;
    QMovCC: TFDQuery;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    QMovACta: TFDQuery;
    CDSMovACtaIMPORTE: TFloatField;
    QBorrarTemporalesFD: TFDQuery;
    spGeneraMovFD: TFDStoredProc;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1CUOTA: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView2ID: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOV: TcxGridDBColumn;
    cxGrid1DBTableView2FECHA: TcxGridDBColumn;
    cxGrid1DBTableView2CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_COMPROBANTE: TcxGridDBColumn;
    CDSSaldosClienteULTIMOPAGO: TSQLTimeStampField;
    CDSSaldosClienteFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovACtaFECHA: TSQLTimeStampField;
    CDSMovAplicacionFECHA: TSQLTimeStampField;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    QClientesCORREOELECTRONICO: TStringField;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TraeSaldosExecute(Sender: TObject);
    procedure ImprimirDetalleExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure VerApliacionExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure pnSaldosDblClick(Sender: TObject);
    procedure dbcGrupoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PrListados,PrDefault:Integer;
    Condiciones:String;
    // Variables de Correo ******
    DirCorreo,NombreCuenta,
    AsuntoCorreo,NombreServidor,
    PrNomListados,PrListadoDefecto,
    Clave,Autotenticacion,Remitente:String;
    Puerto:Integer;
    Minimo,Maximo:Real;
    procedure ArmarCondiciones;
  end;

var
  FormsaldoClientes_x_Cliente: TFormsaldoClientes_x_Cliente;
  ID_MovTemporales:Integer;

implementation

uses UBuscadorClientes, UFactura_2, URecibo_2,  UCorreo,
  DMBuscadoresForm,UDMain_FD;

{$R *.dfm}


procedure TFormsaldoClientes_x_Cliente.ArmarCondiciones;
begin
  Condiciones:='';
  if Not(QFiltroDet.IsEmpty) then
  begin
    QFiltroDet.First;
    while not(QFiltroDet.Eof) do
      begin
        if Condiciones='' Then
          condiciones:='(m.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') '
        else
          condiciones:=Condiciones+' or (m.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') ';
        QFiltroDet.Next;
    end;
    Condiciones:=' and ('+condiciones+')';
  end;
end;

procedure TFormsaldoClientes_x_Cliente.BuscarClienteExecute(Sender: TObject);
var aux:Real;
BEGIN
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.Value;
          if QClientesACTIVO.Value='S' Then
            lbEstado.caption:='Cliente Activo'
          else
            if QClientesACTIVO.Value='N' Then
              lbEstado.caption:='Cliente Inactivo'
            else
              if QClientesACTIVO.Value='G' Then
                lbEstado.caption:='Gestion Judicial'
              else
                if QClientesACTIVO.Value='I' Then
                  lbEstado.caption:='Incobrables';

          TraeSaldos.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
END;


procedure TFormsaldoClientes_x_Cliente.Button1Click(Sender: TObject);
begin
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QBorrarTemporalesFD.Close;
        QBorrarTemporalesFD.ParamByName('id').Value:= -1;
        QBorrarTemporalesFD.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
      except
        ShowMessage('No se pudo borrar los temporales...');
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;
  QBorrarTemporalesFD.Close;

end;

procedure TFormsaldoClientes_x_Cliente.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
          if QClientesACTIVO.Value='S' Then
            lbEstado.caption:=''
          else
            if QClientesACTIVO.Value='N' Then
              lbEstado.caption:='Cliente Inactivo'
            else
              if QClientesACTIVO.Value='G' Then
                lbEstado.caption:='Gestion Judicial'
              else
                if QClientesACTIVO.Value='I' Then
                  lbEstado.caption:='Incobrables';
          TraeSaldos.Execute;
         
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormsaldoClientes_x_Cliente.cxGrid1DBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  ADataController.CollapseDetails;
end;

procedure TFormsaldoClientes_x_Cliente.dbcGrupoChange(Sender: TObject);
begin
  QFiltroDet.Close;
  QFiltroDet.ParamByName('id').Value:=dbcGrupo.KeyValue;
  QFiltroDet.Open;
end;

procedure TFormsaldoClientes_x_Cliente.EnviarCorreoExecute(Sender: TObject);
begin
  CDSSaldosCliente.First;
  CDSMovCC.FindFirst;
  IF NOT (CDSSaldosCliente.IsEmpty) THEN
    BEGIN
      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;
      frDetalles.LoadFromFile(DMMain_FD.PathReportesLst+'\LstSaldoClienteDetalles_uno.fr3');
      frDetalles.PrepareReport;
    END
  ELSE
    ShowMessage('No hay datos a listar');
  CDSSaldosCliente.First;
  CDSMovCC.EnableControls;

  frxPDFExport1.ShowDialog:=False;
  frxPDFExport1.FileName:=ExtractFilePath(ParamStr(0))+'Archivos Temporales\SaldosResumen.pdf';
  frDetalles.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);


  FormCorreo.CorreoDestino       := DMMain_FD.GetCorreoCliente_1(Trim(ceCliente.Text));
  FormCorreo.CCopia              := DMMain_FD.GetCorreoCliente_2(Trim(ceCliente.Text));

  FormCorreo.CorreoOrigen        := DirCorreo;
  FormCorreo.Remitente           := Remitente;
  FormCorreo.edDireccion.Text    := FormCorreo.CorreoDestino;
  FormCorreo.Destinatario        := edNombreCliente.Text;
  FormCorreo.Puerto              := Puerto;
  FormCorreo.NombreServidorCorreo:= NombreServidor;
  FormCorreo.NombreCuentaCorreo  := NombreCuenta;
  FormCorreo.Clave               := Clave;
  FormCorreo.Autenticacion       := Autotenticacion;
  FormCorreo.Asunto              := 'Saldos Cta.Cte - al '+ FormatDateTime('dd-mm-yy',hasta.Date);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\SaldosResumen.pdf');
  FormCorreo.Show;

end;

procedure TFormsaldoClientes_x_Cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if ID_MovTemporales<>-1 then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QBorrarTemporalesFD.Close;
        QBorrarTemporalesFD.ParamByName('id').Value:=ID_MovTemporales;
        QBorrarTemporalesFD.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
      except
        ShowMessage('No se pudo borrar los temporales...');
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;
  QBorrarTemporalesFD.Close;

  CDSSaldosCliente.Close;
  CDSMovCC.Close;
  QEmpresa.Close;
  Action := caFree;
end;

procedure TFormsaldoClientes_x_Cliente.FormCreate(Sender: TObject);
Var
ArchivoIni        :TIniFile;
I:Integer;
ClaveAux:String;
BEGIN
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Hasta.Date:= Date;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  //Impresoras
  PrListados       :=ArchivoIni.ReadInteger('Impresoras', 'Listados', printer.PrinterIndex);
  PrNomListados    :=ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto :=ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');

  Minimo        := ArchivoIni.ReadFloat('SaldoCC', 'Minimo', 0);
  Maximo        := ArchivoIni.ReadFloat('SaldoCC', 'Maximo', 100000);

   // Sucursal
  ArchivoIni.Free;
  // Tomo la Impresora por defecto.
  prDefault:=printer.PrinterIndex;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);

  // Opciones de Correo ***********
  DirCorreo       := ArchivoIni.ReadString('Correo', 'DirCorreo', '');
  NombreCuenta    := ArchivoIni.ReadString('Correo', 'NombreCuenat', '');
  AsuntoCorreo    := ArchivoIni.ReadString('Correo', 'AsuntoCorreo', '');
  NombreServidor  := ArchivoIni.ReadString('Correo', 'NombreServido', '');
  Clave           := ArchivoIni.ReadString('Correo', 'Clave', '');
  Autotenticacion := ArchivoIni.ReadString('Correo', 'Autenticacion', 'S');
  Remitente       := ArchivoIni.ReadString('Correo', 'Remitente', '');
  Puerto          := ArchivoIni.ReadInteger('Correo', 'puerto', 25);

  // Desencripto la clave
  claveAux:='';
  if clave<>'' Then
  for I :=2 to length(Clave) do
    begin
      ClaveAux:=ClaveAux+Chr(255-Ord(clave[i]));
    end;
  Clave:=ClaveAux;
  CDSSaldosCliente.IndexDefs.Clear;
 
  ArchivoIni.Free;
  QEmpresa.Open;
  QFiltroCab.Open;
  QFiltroCab.First;
  ID_MovTemporales:=-1; // para saber que no se hizo ninguna consulta
  lbEstado.Caption:='Estado';
end;

procedure TFormsaldoClientes_x_Cliente.FormDestroy(Sender: TObject);
begin
  FormsaldoClientes_x_Cliente:=nil;
end;

procedure TFormsaldoClientes_x_Cliente.FormResize(Sender: TObject);
begin
  if FormsaldoClientes_x_Cliente<>nil then
    if FormsaldoClientes_x_Cliente.Width<>911 then
      FormsaldoClientes_x_Cliente.Width:=911;
end;

procedure TFormsaldoClientes_x_Cliente.ImprimirDetalleExecute(Sender: TObject);
begin
  IF NOT (CDSSaldosCliente.IsEmpty) THEN
    BEGIN
      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;
      frDetalles.LoadFromFile(DMMain_FD.PathReportesLst+'\LstSaldoClienteDetalles_uno.fr3');
      frDetalles.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos a listar');
  IF NOT (CDSSaldosCliente.IsEmpty) THEN
    begin
      CDSSaldosCliente.First;
      CDSMovCC.EnableControls;
    end;
//  wwCDSSaldosCliente.EnableControls;
end;

procedure TFormsaldoClientes_x_Cliente.pnSaldosDblClick(Sender: TObject);
begin
  frDetalles.DesignReport;
end;

procedure TFormsaldoClientes_x_Cliente.SalirExecute(Sender: TObject);
begin
   Close;
end;

procedure TFormsaldoClientes_x_Cliente.TraeSaldosExecute(Sender: TObject);
var Aux_Saldos,Aux_ACta:Real;
begin
 If CDSMovCC.Active then
    CDSMovCC.Close;
  if CDSSaldosCliente.Active Then
    CDSSaldosCliente.Close;
  if CDSMovACta.Active then
    CDSMovACta.Close;
  if CDSMovAplicacion.Active then
    CDSMovAplicacion.Close;


  lbEstado.Caption:='Limpiando tabla Temporal....';
  Sleep(1);
  Application.ProcessMessages;
  if (ID_MovTemporales <> -1 ) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QBorrarTemporalesFD.Close;
        QBorrarTemporalesFD.ParamByName('id').Value:=ID_MovTemporales;
        QBorrarTemporalesFD.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
      except
        ShowMessage('No se pudo borrar los temporales...');
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;
  QBorrarTemporalesFD.Close;
  ID_MovTemporales:=ibgId.IncrementFD(1);

  // Sleep(1);
  lbEstado.Caption:='Preparando Tabla de Consulta....';
  Application.ProcessMessages;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spGeneraMovFD.Close;
    spGeneraMovFD.ParamByName('p_id').Value        :=ID_MovTemporales;
    spGeneraMovFD.ParamByName('p_codigo').Value    :=ceCliente.Text;
    spGeneraMovFD.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spGeneraMovFD.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Fallo la consulta');
  end;

  Condiciones:='';
  if chFiltro.Checked then
    ArmarCondiciones;

  lbEstado.Caption:='Generando Consulta....';
 // Sleep(1);
  Application.ProcessMessages;

  CDSSaldosCliente.CommandText:='';
  CDSSaldosCliente.Params.Clear;

  CDSSaldosCliente.Params.CreateParam(ftDate,'hasta',ptInput);
  CDSSaldosCliente.Params.CreateParam(ftInteger,'id',ptInput);

  CDSSaldosCliente.Params.ParamByName('hasta').Value :=Hasta.Date;
  CDSSaldosCliente.Params.ParamByName('id').Value    :=ID_MovTemporales;

  CDSSaldosCliente.CommandText:=
      'select m.CODIGO, m.RAZON_SOCIAL, m.DIRECCION_COMERCIAL, m.TELEFONO_COMERCIAL_1,m.cpostal,m.localidad, '+
              'm.TELEFONO_COMERCIAL_2, m.VENDEDOR, m.ZONA, m.CORREOELECTRONICO, m.ULTIMOPAGO, m.ACTIVO,'+
              'm.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,(SUM(m.DEBE)-SUM(m.HABER)) AS saldo,m.cuit,m.cuota from movccvta_temporal_x_cliente m '+
         ' WHERE M.fechavta<=:hasta  and m.id=:id '+condiciones+
         ' group by '+
           ' m.CODIGO, m.RAZON_SOCIAL, m.DIRECCION_COMERCIAL, m.TELEFONO_COMERCIAL_1,m.cpostal,m.localidad, '+
           ' m.TELEFONO_COMERCIAL_2, m.VENDEDOR, m.ZONA, m.CORREOELECTRONICO, m.ULTIMOPAGO, m.ACTIVO,'+
           ' m.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,m.CUIT,m.cuota ';

  CDSSaldosCliente.Open;
  CDSSaldosCliente.First;
 // CDSSaldosCliente.IndexFieldNames:='Saldo';

  CDSMovCC.Close;
  CDSMovCC.MasterFields    := '';
  CDSMovCC.IndexFieldNames := '';
  CDSMovCC.CommandText     := '';

  CDSMovCC.CommandText:= 'select m.id_movccvta,m.codigo,m.fechavta,m.fechavto,m.detalle,m.debe,m.haber,'+
                         'm.saldo,m.id_cpbte,m.tipocpbte,m.id_comprobante,m.cuota from MOVCCVTA_TEMPORAL_x_cliente  m '+
                         ' where m.codigo = :codigo and  m.saldo>0 and  M.fechavta <= :hasta and m.id = '+IntToStr(ID_MovTemporales)+' '+Condiciones +
                         ' order by m.fechavta ';

  CDSMovCC.Params.ParamByName('codigo').AsString  := ''+CDSSaldosClienteCODIGO.AsString+'';
  CDSMovCC.Params.ParamByName('hasta').AsDate     := hasta.date;


//  CDSMovCC.MasterSource   := DSSaldosClientes;
//  CDSMovCC.MasterFields   :='codigo';
//  CDSMovCC.IndexFieldNames:='codigo';
  CDSMovCC.Open;

  CDSMovAplicacion.Close;
 // CDSMovAplicacion.Params.ParamByName('Id').Value := CDSMovCCID_MOVCCVTA.Value;
  CDSMovAplicacion.MasterSource   := DSMovCC;
  CDSMovCC.MasterFields   :='ID_MOVCCVTA';
  CDSMovCC.IndexFieldNames:='ID_MOVCCVTA';
  CDSMovAplicacion.Open;

  CDSMovACta.Close;
  CDSMovACta.MasterFields    := '';
  CDSMovACta.IndexFieldNames := '';
  CDSMovACta.CommandText     := '';

  if Condiciones<>'' then

    CDSMovACta.CommandText:=  ' select m.* from MovACtaCCVta_temporal_x_cliente m where m.cliente = :codigo and m.id='+IntToStr(ID_MovTemporales)+' and m.Importe<>0 '+
                               Condiciones +
                              ' order by m.fecha,m.numerocpbte '
  else
    CDSMovACta.CommandText:=  ' select m.* from MovACtaCCVta_temporal_x_cliente m where m.cliente = :codigo and m.id='+IntToStr(ID_MovTemporales)+' and m.Importe<>0 '+
                              ' order by m.fecha,m.numerocpbte ';

  CDSMovACta.Params.ParamByName('codigo').AsString  := ''+CDSSaldosClienteCODIGO.AsString+'';

  //CDSMovACta.MasterSource    := DSSaldosClientes;
//  CDSMovACta.MasterFields    := 'codigo';
//  CDSMovACta.IndexFieldNames := 'cliente';
  CDSMovACta.Open;


  lbEstado.Caption:='';

  Aux_Saldos:=0;
  CDSMovCC.First;
  cdsMovCC.DisableControls;
  while not(CdsMovCC.Eof) Do
    begin
      Aux_Saldos:=CDSMovCCSALDO.AsFloat+Aux_Saldos;
      CDSMovCC.Next;
    end;
  CDSMovCC.First;
  cdsMovCC.EnableControls;

  Aux_ACta:=0;
  CDSMovACta.First;
  CDSMovACta.DisableControls;
  while not(CDSMovACta.Eof) Do
    begin
      Aux_ACta:=Aux_ACta+CDSMovACtaIMPORTE.AsFloat;
      CDSMovACta.Next;
    end;
  CDSMovACta.First;
  CDSMovACta.EnableControls;

  edACta.Value  :=Aux_ACta;
  edSaldos.Value:=Aux_Saldos;

  edTotal.Value:=Aux_Saldos-Aux_ACta;
end;

procedure TFormsaldoClientes_x_Cliente.VerApliacionExecute(Sender: TObject);
begin
  if (CDSMovAplicacionTIPOCPBTE.Value='NC') then
    begin
      if Not(Assigned(FormCpbte_2)) then
       FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.datoNew:=CDSMovCCID_CPBTE.AsString;
      FormCpbte_2.TipoCpbte:=CDSMovCCTIPOCPBTE.Value;
      FormCpbte_2.Recuperar.Execute;
    end
  else
    if (CDSMovAplicacionTIPOCPBTE.Value='RC') then
      begin
        if Not(Assigned(FormRecibo_2)) then
         FormRecibo_2:=TFormRecibo_2.Create(Self);
        FormRecibo_2.datoNew  :=CDSMovAplicacionID_CPBTE.AsString;
        FormRecibo_2.TipoCpbte:=CDSMovAplicacionTIPOCPBTE.Value;
        FormRecibo_2.Recuperar.Execute;
      end


end;

procedure TFormsaldoClientes_x_Cliente.VerComprobanteExecute(Sender: TObject);
begin
  if (CDSMovCCTIPOCPBTE.Value='FC') or (CDSMovCCTIPOCPBTE.Value='ND') then
    begin
      if Not(Assigned(FormCpbte_2)) then
       FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.datoNew:=CDSMovCCID_CPBTE.AsString;
      FormCpbte_2.TipoCpbte:=CDSMovCCTIPOCPBTE.Value;
      FormCpbte_2.Recuperar.Execute;
    end;

end;

end.