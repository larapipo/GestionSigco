unit SystelConnFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,System.StrUtils,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxBarBuiltInMenu, cxPC, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLabel, Vcl.ExtCtrls, systelConn, cxMemo, cxProgressBar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxPropertiesStore, dxmdaset, cxDropDownEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys,UDMain_FD,IniFiles, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  CompBuscador;
  {dxDateRanges,} {Data.DB,} {cxDBData,}{ cxGridCustomTableView,} {cxGridTableView,}
  {cxGridDBTableView,} {dxmdaset,} {cxGridLevel,} {cxClasses,} {cxGridCustomView,}
  {cxGrid,} {cxPropertiesStore,}{ cxDropDownEdit}

type
  TFormSystelConn = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    ePuerto: TcxSpinEdit;
    MainPageControl: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    eResultado: TcxMemo;
    Panel3: TPanel;
    btnBuscaEquipo: TcxButton;
    cxLabel2: TcxLabel;
    eID: TcxSpinEdit;
    Sincroniza: TcxButton;
    ProgressBar: TcxProgressBar;
    CfgPageControl: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxLabel3: TcxLabel;
    eTextoMarquesina: TcxTextEdit;
    BtnGrabaMarquesina: TcxButton;
    cxTabSheet4: TcxTabSheet;
    btnGetFecha: TcxButton;
    btnSetFecha: TcxButton;
    cxTabSheet5: TcxTabSheet;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    eDatosComercio1: TcxTextEdit;
    eDatosComercio2: TcxTextEdit;
    btnGrabaDatosComercio: TcxButton;
    cxTabSheet6: TcxTabSheet;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    ePVPP1: TcxTextEdit;
    ePVPP2: TcxTextEdit;
    ePVPP3: TcxTextEdit;
    ePVPP4: TcxTextEdit;
    ePVPP5: TcxTextEdit;
    ePVPP6: TcxTextEdit;
    ePVPP7: TcxTextEdit;
    ePVPP8: TcxTextEdit;
    ePVPP9: TcxTextEdit;
    ePVPP10: TcxTextEdit;
    ePVPP11: TcxTextEdit;
    ePVPP12: TcxTextEdit;
    ePVPU1: TcxTextEdit;
    ePVPU2: TcxTextEdit;
    ePVPU3: TcxTextEdit;
    ePVPU4: TcxTextEdit;
    ePVPU5: TcxTextEdit;
    ePVPU6: TcxTextEdit;
    ePVPU7: TcxTextEdit;
    ePVPU8: TcxTextEdit;
    ePVPU9: TcxTextEdit;
    ePVPU10: TcxTextEdit;
    ePVPU11: TcxTextEdit;
    ePVPU12: TcxTextEdit;
    eSDP1: TcxTextEdit;
    eSDP2: TcxTextEdit;
    eSDP3: TcxTextEdit;
    eSDP4: TcxTextEdit;
    eSDP5: TcxTextEdit;
    eSDP6: TcxTextEdit;
    eSDP7: TcxTextEdit;
    eSDP8: TcxTextEdit;
    eSDP9: TcxTextEdit;
    eSDP10: TcxTextEdit;
    eSDP11: TcxTextEdit;
    eSDP12: TcxTextEdit;
    cxLabel9: TcxLabel;
    btnEnviaCodigoBarrascfg: TcxButton;
    tvData: TcxGridDBTableView;
    GridLevel: TcxGridLevel;
    Grid: TcxGrid;
    memData: TdxMemData;
    memDataPLU: TStringField;
    memDataDESCRIPCION: TStringField;
    memDataVERSION_PLU: TStringField;
    memDataPRECIOLISTA1: TCurrencyField;
    memDataPRECIOLISTA2: TCurrencyField;
    memDataNRO_SECCION: TStringField;
    memDataTIPO_VENTA: TStringField;
    dsMemData: TDataSource;
    tvDataRecId: TcxGridDBColumn;
    tvDataPLU: TcxGridDBColumn;
    tvDataDESCRIPCION: TcxGridDBColumn;
    tvDataVERSION_PLU: TcxGridDBColumn;
    tvDataPRECIOLISTA1: TcxGridDBColumn;
    tvDataPRECIOLISTA2: TcxGridDBColumn;
    tvDataNRO_SECCION: TcxGridDBColumn;
    tvDataTIPO_VENTA: TcxGridDBColumn;
    PropertyStore: TcxPropertiesStore;
    cxTabSheet7: TcxTabSheet;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    eVendedor1: TcxTextEdit;
    eVendedor2: TcxTextEdit;
    eVendedor3: TcxTextEdit;
    eVendedor4: TcxTextEdit;
    btnGrabaVendedores: TcxButton;
    memDataSINCRO: TStringField;
    tvDataSINCRO: TcxGridDBColumn;
    cxTabSheet8: TcxTabSheet;
    cxLabel14: TcxLabel;
    ePermisoPrecios: TcxComboBox;
    BtnEnviaCfgPrecios: TcxButton;
    cxLabel15: TcxLabel;
    eCodBarraxProd: TcxComboBox;
    btnEnviaCfgCodBarras: TcxButton;
    btnLeePeso: TcxButton;
    QStock: TFDQuery;
    memDataDETALLE_SECC: TStringField;
    chCuoraMax: TCheckBox;
    btBorrar: TButton;
    btConectar: TButton;
    cxButton1: TcxButton;
    Memo1: TMemo;
    EDplu: TEdit;
    chBorrar: TCheckBox;
    spTipoEan: TcxSpinEdit;
    cxLabel16: TcxLabel;
    ComBuscador1: TComBuscador;
    procedure btnBuscaEquipoClick(Sender: TObject);
    procedure BtnGrabaMarquesinaClick(Sender: TObject);
    procedure btnGetFechaClick(Sender: TObject);
    procedure btnSetFechaClick(Sender: TObject);
    procedure btnGrabaDatosComercioClick(Sender: TObject);
    procedure ePVPP1KeyPress(Sender: TObject; var Key: Char);
    procedure ePVPP1Exit(Sender: TObject);
    procedure eSDP1KeyPress(Sender: TObject; var Key: Char);
    procedure eSDP1Exit(Sender: TObject);
    procedure btnEnviaCodigoBarrascfgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGrabaVendedoresClick(Sender: TObject);
    procedure SincronizaClick(Sender: TObject);
    procedure BtnEnviaCfgPreciosClick(Sender: TObject);
    procedure btnEnviaCfgCodBarrasClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnLeePesoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBorrarClick(Sender: TObject);
    procedure btConectarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    PrimeraVez:boolean;
  public
    { Public declarations }
    SystelConnect:TSystelConnect;

  end;

var
  FormSystelConn: TFormSystelConn;
  ArchivoIni    : TIniFile;

implementation


{$R *.dfm}

Const
  Msg_ErrSerie ='Error al tratar de conectar con el puerto serie';
  Msg_Terminado='Terminado !!!';

procedure TFormSystelConn.btConectarClick(Sender: TObject);
begin
  SystelConnect.Port  :=epuerto.Value;
  SystelConnect.Id    :=eID.Value;
  SystelConnect.Connect;
  SystelConnect.Ping;
  if systelconnect.Respuesta<>'' then
    begin
      Showmessage('Coneccion Correcta');
      SystelConnect.Disconnect;
    end;
end;

procedure TFormSystelConn.btnBuscaEquipoClick(Sender: TObject);
var x, I, Act: integer;
begin

  ProgressBar.Properties.Min  :=  0;
  ProgressBar.Properties.Max  :=  15;
//  Act                         :=  1;
  ProgressBar.Visible         :=  true;
  eID.Value                   :=  1;
 // SystelConnect.Id            :=  20;

  for I := 1 to 15 do
  begin
    try
      SystelConnect.Disconnect;
      SystelConnect.Port        :=  I;
      ProgressBar.Position      := ProgressBar.Position + 1;
      Act:=1;

      while (Act<=20) do
        begin
          SystelConnect.Disconnect;
          SystelConnect.Id  :=Act;
          SystelConnect.Connect;
          SystelConnect.Ping;
          if systelconnect.Respuesta<>'' then
            begin
              Showmessage('Encontrado');
              ePuerto.Value        :=  SystelConnect.Port;
              eID.Value            :=  SystelConnect.Id;
              ProgressBar.Visible  :=  false;
              SystelConnect.Disconnect;
              exit;
            end
          else
            begin
//              if SystelConnect.Id > eID.Value then
//                begin
//                  SystelConnect.Id  :=  eID.Value -  Act;
               Act               :=  Act +1;
//                end
//              else
//                SystelConnect.Id  :=  eID.Value +  Act;
            end;
          application.ProcessMessages;
        end;

    except
      ProgressBar.Position := 0;
      if I=15 then ShowMessage('Equipo No Conectado.... ');
    end;
  end;
  ProgressBar.Visible:=false;
end;

procedure TFormSystelConn.btnEnviaCfgCodBarrasClick(Sender: TObject);
var se,cb:char;
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     systelconnect.Connect;

     se:='S';
     if eCodBarraxProd.Text='Si' then cb:='S' else cb:='N';

     systelconnect.ConfiguracionGeneral(se,cb);
     eResultado.Lines.add(SystelConnect.Respuesta);
     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.BtnEnviaCfgPreciosClick(Sender: TObject);
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     systelconnect.Connect;
     systelconnect.ConfigPermisoPrecios(ePermisoPrecios.ItemIndex.ToString);
     eResultado.Lines.add(SystelConnect.Respuesta);
     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.btnEnviaCodigoBarrascfgClick(Sender: TObject);
var p:TConfigCodigoBarras;
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id  :=eid.Value;
   try
     SystelConnect.Connect;
     p.TipoCodigo:='P';
     p.DatosCodigo:=ePVPP1.Text+
                    ePVPP2.Text+
                    ePVPP3.text+
                    ePVPP4.text+
                    ePVPP5.text+
                    ePVPP6.text+
                    ePVPP7.text+
                    ePVPP8.text+
                    ePVPP9.text+
                    ePVPP10.text+
                    ePVPP11.text+
                    ePVPP12.text;

     SystelConnect.ConfigCodigoBarras(p);
     eResultado.Lines.add(SystelConnect.Respuesta);

     p.TipoCodigo:='U';
     p.DatosCodigo:=ePVPU1.Text+
                    ePVPU2.Text+
                    ePVPU3.text+
                    ePVPU4.text+
                    ePVPU5.text+
                    ePVPU6.text+
                    ePVPU7.text+
                    ePVPU8.text+
                    ePVPU9.text+
                    ePVPU10.text+
                    ePVPU11.text+
                    ePVPU12.text;

     SystelConnect.ConfigCodigoBarras(p);
     eResultado.Lines.add(SystelConnect.Respuesta);

     p.TipoCodigo:='S';
     p.DatosCodigo:=eSDP1.Text+
                    eSDP2.Text+
                    eSDP3.text+
                    eSDP4.text+
                    eSDP5.text+
                    eSDP6.text+
                    eSDP7.text+
                    eSDP8.text+
                    eSDP9.text+
                    eSDP10.text+
                    eSDP11.text+
                    eSDP12.text;

     SystelConnect.ConfigCodigoBarras(p);
     eResultado.Lines.add(SystelConnect.Respuesta);



     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.btnGetFechaClick(Sender: TObject);
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     SystelConnect.Connect;
     SystelConnect.GetFechayHora;
     eResultado.Lines.add(SystelConnect.Respuesta);
     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.btnGrabaDatosComercioClick(Sender: TObject);
var p:tpaqueteDatosComercio;
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     systelconnect.Connect;
     p.Linea1:=eDatoscomercio1.Text;
     p.Linea2:=eDatoscomercio2.Text;
     systelconnect.SetDatosComercio(p);
     eResultado.Lines.add(SystelConnect.Respuesta);
     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.BtnGrabaMarquesinaClick(Sender: TObject);
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     SystelConnect.Connect;
     SystelConnect.SetMarquesina(eTextoMarquesina.Text);
     eResultado.Lines.Add(systelconnect.Respuesta);
     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.btnGrabaVendedoresClick(Sender: TObject);
var p:TPaqueteVendedores;
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     SystelConnect.Connect;
     p.Nro:='1';
     p.Nombre:=eVendedor1.Text;
     SystelConnect.GrabaVendedor(p);
     eResultado.Lines.Add(systelconnect.Respuesta);
     p.Nro:='2';
     p.Nombre:=eVendedor2.Text;
     SystelConnect.GrabaVendedor(p);
     eResultado.Lines.Add(systelconnect.Respuesta);
     p.Nro:='3';
     p.Nombre:=eVendedor3.Text;
     SystelConnect.GrabaVendedor(p);
     eResultado.Lines.Add(systelconnect.Respuesta);
     p.Nro:='4';
     p.Nombre:=eVendedor4.Text;
     SystelConnect.GrabaVendedor(p);
     eResultado.Lines.Add(systelconnect.Respuesta);

     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.btnLeePesoClick(Sender: TObject);
var p:TPesoActual;
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     SystelConnect.Connect;
     SystelConnect.PesoActual(p);
     eResultado.Lines.add(SystelConnect.Respuesta);
     eResultado.lines.add('Peso   :'+floattostr(p.Peso));
     eResultado.Lines.add('Estable:'+p.Estable);
     eResultado.Lines.add('Tara   :'+floattostr(p.Tara));
     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.btnSetFechaClick(Sender: TObject);
begin
   systelconnect.Port:=epuerto.Value;
   systelconnect.Id:=eid.Value;
   try
     SystelConnect.Connect;
     SystelConnect.SetFechayHora;
     eResultado.Lines.add(SystelConnect.Respuesta);
     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.cxButton1Click(Sender: TObject);
var Cadena:string;
Aux:string;
begin
  systelconnect.Id:=eid.Value;
   try
     SystelConnect.Connect;
     SystelConnect.SolicitudPLUEx(EDplu.Text);
     Cadena :=SystelConnect.Respuesta;
     Delete(Cadena,1,2);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Numero PLU :'+Aux);

     Aux := AnsiLeftStr(Cadena,1);
     Delete(Cadena,1,1);
     Memo1.Lines.add('Gestion :'+Aux);

     Aux := AnsiLeftStr(Cadena,18);
     Delete(Cadena,1,18);
     Memo1.Lines.add('Nombre PLU :'+Aux);

     Aux := AnsiLeftStr(Cadena,6);
     Delete(Cadena,1,6);
     Memo1.Lines.add('Precio Lista 1 :'+Aux);

     Aux := AnsiLeftStr(Cadena,6);
     Delete(Cadena,1,6);
     Memo1.Lines.add('Precio Lista 2 :'+Aux);

     Aux := AnsiLeftStr(Cadena,5);
     Delete(Cadena,1,5);
     Memo1.Lines.add('Codigo PLU :'+Aux);

     Aux := AnsiLeftStr(Cadena,2);
     Delete(Cadena,1,2);
     Memo1.Lines.add('Sector :'+Aux);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Dias Vto :'+Aux);

     Aux := AnsiLeftStr(Cadena,1);
     Delete(Cadena,1,1);
     Memo1.Lines.add('Tipo Vta :'+Aux);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Tara PLU:'+Aux);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('% Agua :'+Aux);

     Aux := AnsiLeftStr(Cadena,1);
     Delete(Cadena,1,1);
     Memo1.Lines.add('Tabla Nutricional :'+Aux);

     Aux := AnsiLeftStr(Cadena,30);
     Delete(Cadena,1,30);
     Memo1.Lines.add('Tabla Descripcion :'+Aux);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Kalorias :'+Aux);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('CarboHidratos :'+Aux);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Proteinas :'+Aux);

     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Grasas :'+Aux);
     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Gr Saturadas :'+Aux);
     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Gr Trnas :'+Aux);
     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Fibras :'+Aux);
     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Sodio :'+Aux);
     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Origen :'+Aux);
     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Conservacion :'+Aux);
     Aux := AnsiLeftStr(Cadena,4);
     Delete(Cadena,1,4);
     Memo1.Lines.add('Recetas :'+Aux);

     Aux := AnsiLeftStr(Cadena,12);
     Delete(Cadena,1,12);
     Memo1.Lines.add('Nro Lote :'+Aux);

     Aux := AnsiLeftStr(Cadena,1);
     Delete(Cadena,1,1);
     Memo1.Lines.add('EAN :'+Aux);

     Aux := AnsiLeftStr(Cadena,12);
     Delete(Cadena,1,12);
     Memo1.Lines.add('Nro EAN :'+Aux);

     Aux := AnsiLeftStr(Cadena,1);
     Delete(Cadena,1,1);
     Memo1.Lines.add('Ingrediente :'+Aux);

     Memo1.Lines.add('Otros :'+cadena);

     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);
   end;
end;

procedure TFormSystelConn.btBorrarClick(Sender: TObject);
var plus   : Widestring;
    p      : TPaquetePLU;
    Px     : TPaquetePLUEx;
    r      : WideString;
    plud   : string;
begin
  {cargacodigos}
  eResultado.Lines.add('Sincronizando....');
  eResultado.lines.add('Consulta Listado PLU Cargados....');
  systelconnect.Port := epuerto.Value;
  systelconnect.Id   := eid.Value;
  SystelConnect.Connect;
  SystelConnect.GetPLUCargados;
  plus:=SystelConnect.Respuesta;
  eResultado.lines.add(systelconnect.Respuesta);
  r:=systelconnect.respuesta;
  {borra}
  while pos('N',r)<>0 do
    begin
      plud:=copy(r,pos('N',r)+1,4);
      systelconnect.BorraPLU(plud);
      delete(r,pos('N',r),7);
    end;
  eResultado.Lines.add('Borrado Finalizado....');
  SystelConnect.Disconnect;
  // Borrando Secciones
  eResultado.Lines.add('Sincronizando....');
  eResultado.lines.add('Consulta Secciones Cargadas....');
  SystelConnect.Connect;
  SystelConnect.GetSeccionesCargados;
  plus:=SystelConnect.Respuesta;
  eResultado.lines.add(systelconnect.Respuesta);
  r:=systelconnect.respuesta;
  delete(r,1,2);

  {borra}
  while pos(';',r)<>0 do
    begin
      plud:=copy(r,1,2);
      systelconnect.BorrarSeccion(plud);
      delete(r,1,pos(';',r));
    end;
  eResultado.Lines.add('Borrado Finalizado....');
  SystelConnect.Disconnect;

  SystelConnect.Connect;
  SystelConnect.GetPLUCargados;
  plus:=SystelConnect.Respuesta;
  eResultado.lines.add( 'Remante ..'+IntToStr(length(plus)));
  SystelConnect.Disconnect;

end;

procedure TFormSystelConn.eSDP1Exit(Sender: TObject);
begin
   if tcxtextedit(sender).text='' then tcxtextedit(sender).text:='0';
end;

procedure TFormSystelConn.eSDP1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if ord(key)>=32 then
   begin
      if pos(uppercase(key),'0123456789IBA')=0 then key:=#0;
      if key<>#0 then SelectNext(ActiveControl as TWinControl, true,true);
   end;
end;

procedure TFormSystelConn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni     := TIniFile.Create(ExtractFilePath(ParamStr(0))+'BalanzaPLU.Ini');

  ArchivoIni.WriteString('PVP', 'p1', ePVPP1.Text);
  ArchivoIni.WriteString('PVP', 'p2', ePVPP2.Text);
  ArchivoIni.WriteString('PVP', 'p3', ePVPP3.Text);
  ArchivoIni.WriteString('PVP', 'p4', ePVPP4.Text);
  ArchivoIni.WriteString('PVP', 'p5', ePVPP5.Text);
  ArchivoIni.WriteString('PVP', 'p6', ePVPP6.Text);
  ArchivoIni.WriteString('PVP', 'p7', ePVPP7.Text);
  ArchivoIni.WriteString('PVP', 'p8', ePVPP8.Text);
  ArchivoIni.WriteString('PVP', 'p9', ePVPP9.Text);
  ArchivoIni.WriteString('PVP','p10', ePVPP10.Text);
  ArchivoIni.WriteString('PVP','p11', ePVPP11.Text);
  ArchivoIni.WriteString('PVP','p12', ePVPP12.Text);

  ArchivoIni.WriteString('PVPu', 'p1', ePVPU1.Text);
  ArchivoIni.WriteString('PVPu', 'p2', ePVPU2.Text);
  ArchivoIni.WriteString('PVPu', 'p3', ePVPU3.Text);
  ArchivoIni.WriteString('PVPu', 'p4', ePVPU4.Text);
  ArchivoIni.WriteString('PVPu', 'p5', ePVPU5.Text);
  ArchivoIni.WriteString('PVPu', 'p6', ePVPU6.Text);
  ArchivoIni.WriteString('PVPu', 'p7', ePVPU7.Text);
  ArchivoIni.WriteString('PVPu', 'p8', ePVPU8.Text);
  ArchivoIni.WriteString('PVPu', 'p9', ePVPU9.Text);
  ArchivoIni.WriteString('PVPu','p10', ePVPU10.Text);
  ArchivoIni.WriteString('PVPu','p11', ePVPU11.Text);
  ArchivoIni.WriteString('PVPu','p12', ePVPU12.Text);

  ArchivoIni.WriteString('SDPu', 'p1', eSDP1.Text);
  ArchivoIni.WriteString('SDPu', 'p2', eSDP2.Text);
  ArchivoIni.WriteString('SDPu', 'p3', eSDP3.Text);
  ArchivoIni.WriteString('SDPu', 'p4', eSDP4.Text);
  ArchivoIni.WriteString('SDPu', 'p5', eSDP5.Text);
  ArchivoIni.WriteString('SDPu', 'p6', eSDP6.Text);
  ArchivoIni.WriteString('SDPu', 'p7', eSDP7.Text);
  ArchivoIni.WriteString('SDPu', 'p8', eSDP8.Text);
  ArchivoIni.WriteString('SDPu', 'p9', eSDP9.Text);
  ArchivoIni.WriteString('SDPu','p10', eSDP10.Text);
  ArchivoIni.WriteString('SDPu','p11', eSDP11.Text);
  ArchivoIni.WriteString('SDPu','p12', eSDP12.Text);

  ArchivoIni.WriteInteger('Puerto', 'COM',ePuerto.Value);
  ArchivoIni.WriteInteger('equipo',  'id', eID.Value);

  ArchivoIni.WriteInteger('EAN',  'id', spTipoEan.Value);

  ArchivoIni.Free;

  Action:=caFree;


end;

procedure TFormSystelConn.FormCreate(Sender: TObject);
var stream:tfilestream;
begin
   Memdata.Active:=true;
   PrimeraVez    :=true;
   MainPageControl.ActivePageIndex:=0;
   CfgPageControl.ActivePageIndex :=0;
   try
     stream :=tfilestream.Create('systel.dat',fmOpenRead);
     Propertystore.StorageStream:=stream;
     PropertyStore.RestoreFrom;
     stream.free;
   except

   end;
  ArchivoIni     := TIniFile.Create(ExtractFilePath(ParamStr(0))+'BalanzaPLU.Ini');

  ePVPP1.Text    := ArchivoIni.ReadString('PVP', 'p1', '2');
  ePVPP2.Text    := ArchivoIni.ReadString('PVP', 'p2', 'P');
  ePVPP3.Text    := ArchivoIni.ReadString('PVP', 'p3', 'P');
  ePVPP4.Text    := ArchivoIni.ReadString('PVP', 'p4', 'P');
  ePVPP5.Text    := ArchivoIni.ReadString('PVP', 'p5', 'P');
  ePVPP6.Text    := ArchivoIni.ReadString('PVP', 'p6', 'I');
  ePVPP7.Text    := ArchivoIni.ReadString('PVP', 'p7', 'I');
  ePVPP8.Text    := ArchivoIni.ReadString('PVP', 'p8', 'I');
  ePVPP9.Text    := ArchivoIni.ReadString('PVP', 'p9', 'I');
  ePVPP10.Text   := ArchivoIni.ReadString('PVP','p10', 'I');
  ePVPP11.Text   := ArchivoIni.ReadString('PVP','p11', 'I');
  ePVPP12.Text   := ArchivoIni.ReadString('PVP','p12', 'I');

  ePVPU1.Text   := ArchivoIni.ReadString('PVPu', 'p1', '2');
  ePVPU2.Text   := ArchivoIni.ReadString('PVPu', 'p2', 'P');
  ePVPU3.Text   := ArchivoIni.ReadString('PVPu', 'p3', 'P');
  ePVPU4.Text   := ArchivoIni.ReadString('PVPu', 'p4', 'P');
  ePVPU5.Text   := ArchivoIni.ReadString('PVPu', 'p5', 'P');
  ePVPU6.Text   := ArchivoIni.ReadString('PVPu', 'p6', 'I');
  ePVPU7.Text   := ArchivoIni.ReadString('PVPu', 'p7', 'I');
  ePVPU8.Text   := ArchivoIni.ReadString('PVPu', 'p8', 'I');
  ePVPU9.Text   := ArchivoIni.ReadString('PVPu', 'p9', 'I');
  ePVPU10.Text  := ArchivoIni.ReadString('PVPu','p10', 'I');
  ePVPU11.Text  := ArchivoIni.ReadString('PVPu','p11', 'I');
  ePVPU12.Text  := ArchivoIni.ReadString('PVPu','p12', 'I');

  eSDP1.Text   := ArchivoIni.ReadString('SDPu', 'p1', '2');
  eSDP2.Text   := ArchivoIni.ReadString('SDPu', 'p2', '0');
  eSDP3.Text   := ArchivoIni.ReadString('SDPu', 'p3', '0');
  eSDP4.Text   := ArchivoIni.ReadString('SDPu', 'p4', '3');
  eSDP5.Text   := ArchivoIni.ReadString('SDPu', 'p5', '0');
  eSDP6.Text   := ArchivoIni.ReadString('SDPu', 'p6', 'I');
  eSDP7.Text   := ArchivoIni.ReadString('SDPu', 'p7', 'I');
  eSDP8.Text   := ArchivoIni.ReadString('SDPu', 'p8', 'I');
  eSDP9.Text   := ArchivoIni.ReadString('SDPu', 'p9', 'I');
  eSDP10.Text  := ArchivoIni.ReadString('SDPu','p10', 'I');
  eSDP11.Text  := ArchivoIni.ReadString('SDPu','p11', 'I');
  eSDP12.Text  := ArchivoIni.ReadString('SDPu','p12', 'I');

  ePuerto.Value:= ArchivoIni.ReadInteger('Puerto', 'COM', 1);
  eID.Value    := ArchivoIni.ReadInteger('equipo',  'id', 20);

  spTipoEan.Value := ArchivoIni.REadInteger('EAN',  'id', 1);

  ArchivoIni.Free;

end;

procedure TFormSystelConn.FormDestroy(Sender: TObject);
var stream:tfilestream;
begin

   stream:=tfilestream.Create('systel.dat',fmcreate);
   Propertystore.StorageStream:=stream;
   PropertyStore.StoreTo(true);

   stream.Free;
   FormSystelConn:=nil;
end;

procedure TFormSystelConn.SincronizaClick(Sender: TObject);
var plus   : string;
    p      : TPaquetePLU;
    Px     : TPaquetePLUEx;
    Sx     : TPaqueteSeccion;
    r      : WideString;
    plud   : String;
begin
   systelconnect.Port := epuerto.Value;
   systelconnect.Id   := eid.Value;
   try
     if PrimeraVez then
     begin
       if chBorrar.Checked then
         btBorrar.Click;

//       {cargaSectores}
//
//       eResultado.Lines.add('Sincronizando....');
//       eResultado.lines.add('Consulta Listado Sectores Cargados....');
//       SystelConnect.Connect;
//       SystelConnect.GetSeccionesCargados;
//       plus:=SystelConnect.Respuesta;
//       eResultado.lines.add(systelconnect.Respuesta);
//       r:=systelconnect.respuesta;
//       {borra}
//       while pos('N',r)<>0 do
//       begin
//          plud:=copy(r,pos('N',r)+1,4);
//          systelconnect.BorrarSeccion(plud);
//          delete(r,pos('N',r),7);
//       end;
//       //**************************************************************
//
//       {cargacodigos}
//       eResultado.Lines.add('Sincronizando....');
//       eResultado.lines.add('Consulta Listado PLU Cargados....');
//       SystelConnect.Connect;
//       SystelConnect.GetPLUCargados;
//       plus:=SystelConnect.Respuesta;
//       eResultado.lines.add(systelconnect.Respuesta);
//       r:=systelconnect.respuesta;
//       {borra}
//       while pos('N',r)<>0 do
//       begin
//          plud:=copy(r,pos('N',r)+1,4);
//          systelconnect.BorraPLU(plud);
//          delete(r,pos('N',r),7);
//       end;


     end;

     SystelConnect.Connect;

     PrimeraVez:=false;
     {agrega nuevos}
     memData.First;
     repeat
       if memdata['sincro']<>'Si' then
       begin
       {
         p.NroPLU            := memdata['plu'];
         p.VersionPLU        := memdata['version_plu'];
         p.NombrePLU         := memdata['descripcion'];
         p.PrecioLista1      := FormatFloat('0',MemDataPRECIOLISTA1.ASFloat*100);
         delete(p.PrecioLista1,pos(',',p.PrecioLista1),1);
         delete(p.PrecioLista1,pos('.',p.PrecioLista1),1);
         p.PrecioLista1      := AnsiRightStr('000000'+p.PrecioLista1,6);
         p.PrecioLista2      := FormatFloat('0',memDataPRECIOLISTA2.AsFloat*100);
         delete(p.PrecioLista2,pos(',',p.PrecioLista2),1);
         delete(p.PrecioLista2,pos('.',p.PrecioLista2),1);
         p.PrecioLista2      := AnsiRightStr('000000'+p.PrecioLista2,6);
         p.CodigoPLU         := memdata['plu'];
         p.NroSeccion        := memdata['nro_seccion'];
         p.DiasVencimiento   := '0000';
         p.TipoVenta         := memdata['tipo_venta'];
         p.TaraPLU           := '0';
         p.MantenerTotales   := 'N';
         p.Ingredientes      := 'N';
         p.IngredientesOtros := 'N';

         p.PrecioLista1 :=Copy('000000',1,6-Length(p.PrecioLista1))+ p.PrecioLista1;
         p.PrecioLista2 :=Copy('000000',1,6-Length(p.PrecioLista2))+ p.PrecioLista2;
        }

         p.NroPLU              := memdata['plu'];
         p.VersionPLU          := memdata['version_plu'];
         p.NombrePLU           := memdata['descripcion'];

         p.PrecioLista1        := floattostr(memdata['preciolista1'] * SystelConnect.Coeficiente);
         delete(p.PrecioLista1,pos('.',p.PrecioLista1),1);
         delete(p.PrecioLista1,pos(',',p.PrecioLista1),1);
         p.PrecioLista2       := floattostr(memdata['preciolista2'] * SystelConnect.Coeficiente);
         delete(p.PrecioLista2,pos('.',p.PrecioLista2),1);
         delete(p.PrecioLista2,pos(',',p.PrecioLista2),1);
         p.CodigoPLU           := memdata['plu'];
         p.NroSeccion          := memdata['nro_seccion'];
         p.DiasVencimiento     := '0000';
         p.TipoVenta           := memdata['tipo_venta'];
         p.TaraPLU             := '0';
         p.MantenerTotales     := 'N';
         p.Ingredientes        := 'N';
         p.IngredientesOtros   := '';

 // **** Pelu Extendido para la Cuora MAX *******************************
         Px.NroPLU             := memdata['plu'];
         Px.NombrePLU          := memdata['descripcion'];
         Px.PrecioLista1       := floattostr(memdata['preciolista1']*SystelConnect.Coeficiente);
         delete(px.PrecioLista1,pos('.',Px.PrecioLista1),1);
         delete(px.PrecioLista1,pos(',',Px.PrecioLista1),1);
         Px.PrecioLista2       := floattostr(memdata['preciolista2']*SystelConnect.Coeficiente);
         delete(px.PrecioLista2,pos('.',Px.PrecioLista2),1);
         delete(px.PrecioLista2,pos(',',Px.PrecioLista2),1);
         Px.CodigoPLU          := '0'+memdata['plu'];
         Px.NroSeccion         := memdata['nro_seccion'];
         Px.DiasVencimiento    := '0000';
         Px.TipoVenta          := memdata['tipo_venta'];
         Px.TaraPLU            := '0000';
         Px.PorcentajeAgua     := '0000';
         Px.TablaNutricional_0 := 'N';
         Px.TablaNutricional_1 := '000000000000000000000000000000';
         Px.TablaNutricional_2 := '0000';
         Px.TablaNutricional_3 := '0000';
         Px.TablaNutricional_4 := '0000';
         Px.TablaNutricional_5 := '0000';
         Px.TablaNutricional_6 := '0000';
         Px.TablaNutricional_7 := '0000';
         Px.TablaNutricional_8 := '0000';
         Px.TablaNutricional_9 := '0000';
         Px.Origen             := '0000';
         Px.Conservacion       := '0000';
         Px.Recetas            := '0000';
         Px.NroLote            := '000000000000';
         Px.ConfiguracionEAN   :=  IntToStr(spTipoEan.Value);// '1'; // General
         Px.ConfiguracionEAN_N := '20PPPPIIIIII';
         Px.Ingredientes       := 'N';
         Px.IngredientesOtros  := '0';

         Sx.NroSeccion         := memDataNRO_SECCION.Value;
         Sx.Descripcion        := Copy(memDataDETALLE_SECC.Value ,1,18);

         SystelConnect.EnvioSeccion(Sx);

         eResultado.lines.add(systelconnect.Respuesta);

         if chCuoraMax.Checked=False then
           Systelconnect.EnvioPLU(p)
         else
           Systelconnect.EnvioPLUeX(Px);


         eResultado.lines.add(systelconnect.Respuesta);

         memdata.Edit;
         if pos('~Error',systelconnect.Respuesta)=0 then memdata['sincro']:='Si'
                                                    Else memdata['sincro']:='Error';
         memdata.Post;
       end;
       memdata.next;
     until memdata.Eof;

     SystelConnect.Disconnect;
     ShowMessage(Msg_Terminado);
   except
      ShowMessage(Msg_errSerie);

   end;
end;

procedure TFormSystelConn.ePVPP1Exit(Sender: TObject);
begin
   if tcxTextEdit(sender).Text='' then
     tcxtextedit(sender).text:='0';
end;

procedure TFormSystelConn.ePVPP1KeyPress(Sender: TObject; var Key: Char);
begin
   if ord(key)>=32 then
   begin
      if pos(uppercase(key),'0123456789IBPCS')=0 then key:=#0;
      if key<>#0 then SelectNext(ActiveControl as TWinControl, true, true);
   end;
end;

end.
