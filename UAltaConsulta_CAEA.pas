unit UAltaConsulta_CAEA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  FEAFIPLib_TLB,Librerias,IniFiles, Datasnap.DBClient, Datasnap.Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlueprint, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList;

type
  TFormAltaConsulta_CAEA = class(TFormABMBase)
    edCae: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    SolicitudCAEA: TAction;
    edPeriodo: TEdit;
    cbOrden: TComboBox;
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
    QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    Grupo: TLabel;
    Label2: TLabel;
    QGuardarCAEA: TFDQuery;
    QCaea: TFDQuery;
    DSPCaea: TDataSetProvider;
    CDSCaea: TClientDataSet;
    CDSCaeaID: TIntegerField;
    CDSCaeaPERIODO: TStringField;
    CDSCaeaORDEN: TIntegerField;
    CDSCaeaINFORMADO_AFIP: TStringField;
    CDSCaeaCAEA: TStringField;
    DSCaea: TDataSource;
    Consultar: TAction;
    CDSCaeaVIGENCIADESDE: TStringField;
    CDSCaeaVIGENCIAHASTA: TStringField;
    CDSCaeaFECHATOPE: TStringField;
    CDSCaeaFECHAPROCESO: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PERIODO: TcxGridDBColumn;
    cxGrid1DBTableView1ORDEN: TcxGridDBColumn;
    cxGrid1DBTableView1INFORMADO_AFIP: TcxGridDBColumn;
    cxGrid1DBTableView1CAEA: TcxGridDBColumn;
    cxGrid1DBTableView1VIGENCIADESDE: TcxGridDBColumn;
    cxGrid1DBTableView1VIGENCIAHASTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHATOPE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAPROCESO: TcxGridDBColumn;
    QVerificaCAEA: TFDQuery;
    QVerificaCAEAID: TIntegerField;
    Label3: TLabel;
    lbDesde: TLabel;
    Label5: TLabel;
    lbHasta: TLabel;
    Label7: TLabel;
    lbProcesado: TLabel;
    Label9lbTope: TLabel;
    lbTope: TLabel;
    PopupMenu1: TPopupMenu;
    InformarSinMovmiento: TAction;
    procedure SolicitudCAEAExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConsultarExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure InformarSinMovmientoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSCaeaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    ClaveElectronica,CertificadoElectronico,URLWSAA,URLWSW,URLWSW_EX,URLBcra:String;
    ModoFcElectronica:Integer;
    CuitEmpresa:Real;
    { Public declarations }
  end;

var
  FormAltaConsulta_CAEA: TFormAltaConsulta_CAEA;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormAltaConsulta_CAEA.CDSCaeaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  //edCae.Text          := '';
  lbDesde.Caption     := '-------';
  lbHasta.Caption     := '-------';
  lbProcesado.Caption := '-------';
  lbTope.Caption      := '-------';
end;

procedure TFormAltaConsulta_CAEA.ConsultarExecute(Sender: TObject);
var
  lwsfev1: wsfev1;
  CAEA: widestring;
  FechavigDesde: widestring;
  FechaVigHasta: widestring;
  FechaTope: widestring;
  FechaProceso: widestring;
begin
  lwsfev1      := Cowsfev1.Create;
  lwsfev1.CUIT := CuitEmpresa;  // Cuit del vendedor
  lwsfev1.URL  := URLWSW;
  If lwsfev1.login(CertificadoElectronico,ClaveElectronica, URLWSAA) Then
    begin
      lwsfev1.Reset;
      If Not lwsfev1.CAEAConsultar(StrToInt(edPeriodo.Text),(cbOrden.ItemIndex+1), CAEA, FechavigDesde, FechaVigHasta, FechaTope, FechaProceso) Then
        begin
          ShowMessage( lwsfev1.ErrorDesc );
          edCae.Text          := '';
          lbDesde.Caption     := '-------';
          lbHasta.Caption     := '-------';
          lbProcesado.Caption := '-------';
          lbTope.Caption      := '-------';
        end
      Else
        begin
          edCae.Text          := CAEA;
          lbDesde.Caption     := FechavigDesde;
          lbHasta.Caption     := FechaVigHasta;
          lbProcesado.Caption := FechaProceso;
          lbTope.Caption      := FechaTope;


          QVerificaCAEA.Close;
          QVerificaCAEA.ParamByName('PERIODO').Value :=edPeriodo.Text;
          QVerificaCAEA.ParamByName('ORDEN').Value   :=cbOrden.ItemIndex+1;
          QVerificaCAEA.Open;
          if (VarIsNull(QVerificaCAEAID.Value)) or (QVerificaCAEAID.Value<=0)  then
            begin
              QGuardarCAEA.Close;
              QGuardarCAEA.ParamByName('PERIODO').Value :=edPeriodo.Text;
              QGuardarCAEA.ParamByName('ORDEN').Value   :=cbOrden.ItemIndex+1;
              QGuardarCAEA.ParamByName('DESDE').Value   :=FechavigDesde;
              QGuardarCAEA.ParamByName('HASTA').Value   :=FechaVigHasta;
              QGuardarCAEA.ParamByName('TOPE').Value    :=FechaTope;
              QGuardarCAEA.ParamByName('PROCESO').Value :=FechaProceso;
              QGuardarCAEA.ParamByName('CAEA').Value    :=CAEA;
              QGuardarCAEA.ExecSQL;
              QGuardarCAEA.Close;
              CDSCaea.Close;
              CDSCaea.Open;
            end;

        End;
    end
  Else
    ShowMessage( lwsfev1.ErrorDesc );
end;

procedure TFormAltaConsulta_CAEA.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  edCae.Text        := CDSCaeaCAEA.AsString;
  edPeriodo.Text    := CDSCaeaPERIODO.AsString;
  cbOrden.ItemIndex := CDSCaeaORDEN.Value-1;

end;

procedure TFormAltaConsulta_CAEA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAltaConsulta_CAEA.FormCreate(Sender: TObject);
var ArchivoIni:TIniFile;
cuit:string;
begin
  AutoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  // ***** Ubicacione de archivos Factura Electronica ...*****************
  ClaveElectronica      := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  CertificadoElectronico:= ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  URLWSAA               := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSAA','https://wsaahomo.afip.gov.ar/ws/services/LoginCms');
  URLWSW                := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW','https://wswhomo.afip.gov.ar/wsfev1/service.asmx');
  URLWSW_EX             := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW_EX','https://wswhomo.afip.gov.ar/wsfexv1/service.asmx');
  ModoFcElectronica     := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto
  ArchivoIni.Free;

  //*************************************************************
  // Opciones del Ini GENERAL
  //*************************************************************

  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.ini');
  ArchivoIni.Free;

  QEmpresa.Open;
  cuit:=QEmpresaCUIT.Value;
  while Pos('-',Cuit)>0 do
    delete(Cuit,Pos('-',Cuit),1);
  CuitEmpresa:=StrToFLoat(Cuit);
  CDSCaea.Close;
  CDSCaea.Open;
  edCae.Text          := '';
  lbDesde.Caption     := '-------';
  lbHasta.Caption     := '-------';
  lbProcesado.Caption := '-------';
  lbTope.Caption      := '-------';


end;

procedure TFormAltaConsulta_CAEA.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAltaConsulta_CAEA:=nil;
end;

procedure TFormAltaConsulta_CAEA.FormResize(Sender: TObject);
begin
  inherited;
   if FormAltaConsulta_CAEA<>nil then
     if FormAltaConsulta_CAEA.Width<>970 then
       FormAltaConsulta_CAEA.Width:=970;

end;

procedure TFormAltaConsulta_CAEA.InformarSinMovmientoExecute(Sender: TObject);
var
  lwsfev1: wsfev1;
  CAEA: widestring;
  PtoVta:Integer;
  Resultado:WideString;

begin
  lwsfev1      := Cowsfev1.Create;
  lwsfev1.CUIT := CuitEmpresa;  // Cuit del vendedor
  lwsfev1.URL  := URLWSW;
  If lwsfev1.login(CertificadoElectronico,ClaveElectronica, URLWSAA) Then
    begin
      lwsfev1.Reset;
      If Not lwsfev1.CAEASinMovimientoInformar(PtoVta, CAEA, RESULTADO) Then
        begin
          ShowMessage( lwsfev1.ErrorDesc );
        end
      Else
        begin
          ShowMessage( Resultado );
        End;
    end
  Else
    ShowMessage( lwsfev1.ErrorDesc );

end;

procedure TFormAltaConsulta_CAEA.SolicitudCAEAExecute(Sender: TObject);
var
  cuit:string;

  nro           : double;
  CAEA          : widestring;
  FechavigDesde: widestring;
  FechaVigHasta: widestring;
  FechaTope    : widestring;
  FechaProceso : widestring;
  lwsfev1      : wsfev1;
begin
  // Ver documentación www.bitingenieria.com.ar/webhelp
  lwsfev1      := Cowsfev1.Create;
  lwsfev1.CUIT := CuitEmpresa;// 20939802593;  // Cuit del vendedor
  lwsfev1.URL  := URLWSW;
  If lwsfev1.login(CertificadoElectronico, ClaveElectronica, URLWSAA) Then
    begin
      lwsfev1.Reset;
      If Not lwsfev1.CAEASolicitar(strtoint(edPeriodo.Text), cbOrden.ItemIndex+1,  CAEA, FechavigDesde, FechaVigHasta, FechaTope, FechaProceso) Then
        ShowMessage( lwsfev1.ErrorDesc )
      Else
        begin
          //btInformar.Enabled := True;
          edCAE.Text := CAEA;
          QGuardarCAEA.Close;
          QGuardarCAEA.ParamByName('PERIODO').Value :=edPeriodo.Text;
          QGuardarCAEA.ParamByName('ORDEN').Value   :=cbOrden.ItemIndex+1;
          QGuardarCAEA.ParamByName('DESDE').Value   :=StrToDate(FechavigDesde);
          QGuardarCAEA.ParamByName('HASTA').Value   :=StrToDate(FechaVigHasta);
          QGuardarCAEA.ParamByName('TOPE').Value    :=StrToDate(FechaTope);
          QGuardarCAEA.ParamByName('PROCESO').Value :=StrToDate(FechaProceso);
          QGuardarCAEA.ParamByName('CAEA').Value    :=CAEA;
          QGuardarCAEA.ExecSQL;
          QGuardarCAEA.Close;
          CDSCaea.Close;
          CDSCaea.Open;
        End
    end
  Else
     ShowMessage( lwsfev1.ErrorDesc );

end;

end.
