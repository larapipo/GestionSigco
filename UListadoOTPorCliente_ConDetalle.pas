unit UListadoOTPorCliente_ConDetalle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,   ActnList, ComCtrls, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask,
  Grids, DBGrids, DBCtrls, Librerias,
  frxClass,  frxDBSet,  frxDesgn, ImgList, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, JvExControls, JvGradient, FMTBcd,
  JvToolEdit, JvExMask, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxGrid, Data.DB, Datasnap.DBClient, Datasnap.Provider, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormOrdenesTrabajoPorClienteDetalle = class(TFormABMBase)
    DSOt: TDataSource;
    DSPOt: TDataSetProvider;
    CDSOt: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edNombreCliente: TEdit;
    UpDown1: TUpDown;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    BuscarCliente: TAction;
    TraerMov: TAction;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frDBOTr: TfrxDBDataset;
    frMov: TfrxReport;
    DSPEmpresa: TDataSetProvider;
    ceCliente: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFMTBCDField;
    CDSClientesSALDOINICIAL: TFMTBCDField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1RESPONSABLE_OT: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAINICIO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAESTIMADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAFINAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAEMPLEADO: TcxGridDBColumn;
    CDSOtID_OT: TIntegerField;
    CDSOtTIPOCPBTE: TStringField;
    CDSOtRESPONSABLE_OT: TStringField;
    CDSOtCLASECPBTE: TStringField;
    CDSOtNROCPBTE: TStringField;
    CDSOtNOMBRE: TStringField;
    CDSOtCODIGO: TStringField;
    CDSOtDESCRIPCION: TMemoField;
    CDSOtDESCRIPCIONPRODUCTO: TStringField;
    CDSOtMUESTRAEMPLEADO: TStringField;
    QOt: TFDQuery;
    CDSOtPUNTOS: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    CDSOtFECHAINICIO: TSQLTimeStampField;
    CDSOtFECHAESTIMADA: TSQLTimeStampField;
    CDSOtFECHAFINAL: TSQLTimeStampField;
    CDSOtTOTALHORAS: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure TraerMovExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrdenesTrabajoPorClienteDetalle: TFormOrdenesTrabajoPorClienteDetalle;

implementation

uses UBuscadorClientes,UDMain_FD;

{$R *.DFM}

procedure TFormOrdenesTrabajoPorClienteDetalle.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechasCCVta));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

  CDSOt.OPen;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.FormDestroy(
  Sender: TObject);
begin
  inherited;
  FormOrdenesTrabajoPorClienteDetalle:=nil;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.BuscarClienteExecute(
  Sender: TObject);
begin
  inherited;
   ClientePorDefecto:='';
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
      ceCliente.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          TraerMov.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;
  CDSClientes.Open;
END;


procedure TFormOrdenesTrabajoPorClienteDetalle.TraerMovExecute(
  Sender: TObject);
begin
  inherited;
  CDSOt.Close;
  CDSOt.Params.ParamByName('desde').Value:=Desde.Date;
  CDSOt.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSOt.Params.ParamByName('codigo').Value:=''+ceCliente.Text+'';
  CDSOt.Open;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.ceClienteKeyPress(
  Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT(CDSClientes.eof) THEN
        begin
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          TraerMov.Execute;
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
END;


procedure TFormOrdenesTrabajoPorClienteDetalle.UpDown1Click(
  Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(1))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-1));
  TraerMov.Execute;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.ImprimirExecute(
  Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;
  frMov.PrintOptions.Printer:=PrNomListados;
  frMov.SelectPrinter;
  frMov.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoMovimientosOT.fr3');
  frMov.Variables['Cliente'] := ''''+edNombreCliente.Text+'''';
  frMov.Variables['Desde']   := ''''+Desde.Text+'''';
  frMov.Variables['Hasta']   := ''''+Hasta.Text+'''';
  // frCtaCte.PrepareReport;
  frMov.ShowReport;
  CDSEmpresa.Close;
  ceCliente.SetFocus;
  ceCliente.SelectAll;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.Panel1Click(
  Sender: TObject);
begin
  inherited;
  frMov.DesignReport;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.FormShow(Sender: TObject);
begin
  inherited;
  ceCliente.SetFocus;
end;

procedure TFormOrdenesTrabajoPorClienteDetalle.FormKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (not (ActiveControl is TJvComboEdit)) Then
    inherited;

end;

procedure TFormOrdenesTrabajoPorClienteDetalle.btBuscarClick(
  Sender: TObject);
begin
  inherited;
  TraerMov.Execute;
end;

end.