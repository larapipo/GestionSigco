unit UPresupuetoIncidencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, IBGenerator, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ComCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxBlobEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, System.ImageList;

type
  TFormPresupuestoIncidencias = class(TFormABMBase)
    tlb1: TToolBar;
    btn3: TToolButton;
    btn1: TToolButton;
    btn2: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    dbgIncidiencias: TJvDBGrid;
    pn1: TPanel;
    lb1: TLabel;
    lbRazonSocial: TLabel;
    lbTelefono1: TLabel;
    lbTelefono2: TLabel;
    lbTeledonoCelular: TLabel;
    lb2: TLabel;
    lbCodigo: TLabel;
    ibgDetalle: TIBGenerator;
    CDSIncidencias: TClientDataSet;
    CDSIncidenciasID: TIntegerField;
    CDSIncidenciasFECHA_HORA: TSQLTimeStampField;
    CDSIncidenciasDETALLE: TStringField;
    CDSIncidenciasUSUARIO: TStringField;
    CDSIncidenciasANIO_MES: TIntegerField;
    CDSIncidenciasCOLOR_FUENTE: TIntegerField;
    CDSIncidenciasCOLOR_BRUSH: TIntegerField;
    CDSIncidenciasBOLD: TSmallintField;
    DSPIncidencias: TDataSetProvider;
    QIncidencias: TFDQuery;
    QIncidenciasID: TIntegerField;
    QIncidenciasFECHA_HORA: TSQLTimeStampField;
    QIncidenciasID_PRESUPUESTO: TIntegerField;
    QIncidenciasDETALLE: TStringField;
    QIncidenciasUSUARIO: TStringField;
    QIncidenciasANIO_MES: TIntegerField;
    QIncidenciasCOLOR_FUENTE: TIntegerField;
    QIncidenciasCOLOR_BRUSH: TIntegerField;
    QIncidenciasBOLD: TSmallintField;
    CDSIncidenciasID_PRESUPUESTO: TIntegerField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCONTACTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QIncidenciasCODIGO: TStringField;
    ColorFont: TAction;
    dlgFont1: TFontDialog;
    dlgColor1: TColorDialog;
    FontBold: TAction;
    ColorFondo: TAction;
    QContacto: TFDQuery;
    DSPContacto: TDataSetProvider;
    CDSContacto: TClientDataSet;
    QContactoID: TIntegerField;
    QContactoNOMBRE: TStringField;
    QContactoTELEFONO: TStringField;
    QContactoID_PRESUPUESTO: TIntegerField;
    CDSContactoID: TIntegerField;
    CDSContactoNOMBRE: TStringField;
    CDSContactoTELEFONO: TStringField;
    CDSContactoID_PRESUPUESTO: TIntegerField;
    DSContacto: TDataSource;
    QContactoASUNTO: TStringField;
    CDSContactoASUNTO: TStringField;
    Label1: TLabel;
    edContacto: TDBEdit;
    Label2: TLabel;
    edTelefono: TDBEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    CDSIncidenciasCODIGO: TStringField;
    DBMemo1: TDBMemo;
    QContactoNOMBRE_2: TStringField;
    QContactoTELEFONO_2: TStringField;
    CDSContactoNOMBRE_2: TStringField;
    CDSContactoTELEFONO_2: TStringField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    QIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField;
    CDSIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField;
    QContactoEMAIL: TStringField;
    CDSContactoEMAIL: TStringField;
    Label6: TLabel;
    edCorreo: TDBEdit;
    procedure CDSIncidenciasNewRecord(DataSet: TDataSet);
    procedure CDSIncidenciasAfterDelete(DataSet: TDataSet);
    procedure CDSIncidenciasAfterPost(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgIncidienciasColEnter(Sender: TObject);
    procedure dbgIncidienciasEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ColorFontExecute(Sender: TObject);
    procedure FontBoldExecute(Sender: TObject);
    procedure ColorFondoExecute(Sender: TObject);
    procedure dbgIncidienciasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSContactoNewRecord(DataSet: TDataSet);
  private
    FId    :Integer;{ Private declarations }
    FCodigo:string;
  public
    { Public declarations }
  published
     property Id:Integer read FId write FId;
     property Codigo:String read FCodigo write FCodigo;

  end;

var
  FormPresupuestoIncidencias: TFormPresupuestoIncidencias;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormPresupuestoIncidencias.AgregarExecute(Sender: TObject);
begin
//  inherited;

end;

procedure TFormPresupuestoIncidencias.CDSContactoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSContactoID_PRESUPUESTO.Value := FId;
  CDSContactoID.Value             := CDSContacto.RecordCount+1;
end;

procedure TFormPresupuestoIncidencias.CDSIncidenciasAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Confirma.Execute;
end;

procedure TFormPresupuestoIncidencias.CDSIncidenciasAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  Confirma.Execute;
end;

procedure TFormPresupuestoIncidencias.CDSIncidenciasNewRecord(
  DataSet: TDataSet);
var a,m,d:word;
cadena:String;
begin
  inherited;
  CDSIncidenciasID_PRESUPUESTO.Value  := FId;
  CDSIncidenciasFECHA_HORA.AsDateTime := Now;
  CDSIncidenciasUSUARIO.Value         := DMMain_FD.UsuarioActivo;
  CDSIncidenciasID.Value              := ibgDetalle.IncrementFD(1);
  DecodeDate(Date,a,m,d);
  cadena:=IntToStr(a)+IntToStr(m);
  CDSIncidenciasANIO_MES.Value        := StrToInt(cadena);
  CDSIncidenciasCOLOR_FUENTE.Value    := clBlack;
  CDSIncidenciasCOLOR_BRUSH.Value     := clWhite;
  CDSIncidenciasBOLD.Value            := 0;
end;

procedure TFormPresupuestoIncidencias.ColorFondoExecute(Sender: TObject);
begin
  if dlgColor1.Execute then
    if (dlgColor1.Color<>null) then
      begin
        CDSIncidencias.Edit;
        CDSIncidenciasCOLOR_BRUSH.Value:=dlgColor1.Color;
        CDSIncidencias.Post;
      end;   //
end;

procedure TFormPresupuestoIncidencias.ColorFontExecute(Sender: TObject);
begin
  inherited;
  if dlgColor1.Execute then
    if (dlgColor1.Color<>null) then
      begin
        CDSIncidencias.Edit;
        CDSIncidenciasCOLOR_FUENTE.Value:=dlgColor1.Color;
        CDSIncidencias.Post;
        //Confirma.Execute;
      end;
end;

procedure TFormPresupuestoIncidencias.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
  if CDSContacto.State<>dsBrowse then
    CDSContacto.Post;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSIncidencias.ApplyUpdates(0);
    CDSContacto.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage(' No se gravaron  los cambios');
  end;
  Recuperar.Execute;
end;

procedure TFormPresupuestoIncidencias.dbgIncidienciasColEnter(Sender: TObject);
begin
  inherited;
  if dbgIncidiencias.SelectedIndex=0  then
    dbgIncidiencias.SelectedIndex:=1
  else
  if dbgIncidiencias.SelectedIndex=3  then
    dbgIncidiencias.SelectedIndex:=2;
end;

procedure TFormPresupuestoIncidencias.dbgIncidienciasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var Mes:byte;
begin
  inherited;
  if gdSelected	in state Then
    begin
      dbgIncidiencias.Canvas.Font.Color:=clWhite;
      dbgIncidiencias.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if CDSIncidenciasCOLOR_FUENTE.AsString<>'' then
        dbgIncidiencias.Canvas.Font.Color :=CDSIncidenciasCOLOR_FUENTE.Value
      else
        dbgIncidiencias.Canvas.Font.Color :=clBlack;

      if CDSIncidenciasCOLOR_BRUSH.AsString<>'' then
        dbgIncidiencias.Canvas.Brush.Color:=CDSIncidenciasCOLOR_BRUSH.Value
      else
        dbgIncidiencias.Canvas.Brush.Color:=clWhite;

      if CDSIncidenciasBOLD.Value=0 then
        dbgIncidiencias.Canvas.Font.Style:=[]
      else
        dbgIncidiencias.Canvas.Font.Style:=[fsBold];
    end;

  dbgIncidiencias.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormPresupuestoIncidencias.dbgIncidienciasEnter(Sender: TObject);
begin
  inherited;
  dbgIncidiencias.SelectedIndex:=1;
end;

procedure TFormPresupuestoIncidencias.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
end;

procedure TFormPresupuestoIncidencias.FontBoldExecute(Sender: TObject);
begin
  begin
    CDSIncidencias.Edit;
    if (CDSIncidenciasBOLD.Value=0) or (CDSIncidenciasBOLD.AsString='') then
      CDSIncidenciasBOLD.Value:=1
    else
      CDSIncidenciasBOLD.Value:=0;
    CDSIncidencias.Post;
  end;   //
end;

procedure TFormPresupuestoIncidencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if CDSIncidencias.State in [dsEdit,dsInsert] then
    CDSIncidencias.Post;

  Action:=cafree;
end;

procedure TFormPresupuestoIncidencias.FormCreate(Sender: TObject);
begin
 // inherited;
//  DatoNew := IntToStr(FId);
  AutoSize:= False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormPresupuestoIncidencias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPresupuestoIncidencias:=nil;
end;

procedure TFormPresupuestoIncidencias.FormShow(Sender: TObject);
begin
 // inherited;
//  DatoNew         :=IntToStr(FId);
  CDSIncidencias.Close;
  CDSIncidencias.Params.ParamByName('Id').Value := FId;
  CDSIncidencias.Open;
  //  if Not(CDSIncidencias.IsEmpty) then
  begin
    QClientes.Close;
    QClientes.ParamByName('codigo').Value:= FCodigo;
    QClientes.Open;

    lbCodigo.Caption         := QClientesCODIGO.Value;
    lbRazonSocial.Caption    := QClientesRAZON_SOCIAL.Value;
    lbTelefono1.Caption      := QClientesTELEFONO_COMERCIAL_1.Value;
    lbTelefono2.Caption      := QClientesTELEFONO_COMERCIAL_2.Value;
    lbTeledonoCelular.Caption:= QClientesTELEFONO_CELULAR.Value;
  end;
  CDSContacto.Close;
  CDSContacto.Params.ParamByName('ID').Value:=FId;
  CDSContacto.Open;

  if CDSContacto.IsEmpty then
    CDSContacto.Insert;
 //    else
//      begin
//        lbCodigo.Caption         := '';
//        lbNombre.Caption         := '';
//        lbRazonSocial.Caption    := '';
//        lbDireccion.Caption      := '';
//        lbTelefono1.Caption      := '';
//        lbTelefono2.Caption      := '';
//        lbTeledonoCelular.Caption:= '';
//      end;
  //ceCliente.SetFocus;
  //ceCliente.SelectAll;
  dbgIncidiencias.SetFocus;
//  Buscar.Execute;
end;

procedure TFormPresupuestoIncidencias.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSContacto.Close;
  CDSContacto.Params.ParamByName('ID').Value  :=FId;
  CDSContacto.Open;

  CDSIncidencias.Close;
  CDSIncidencias.Params.ParamByName('Id').Value:=FId;
  CDSIncidencias.Open;


  QClientes.Close;
  QClientes.ParamByName('codigo').Value  := FCodigo;
  QClientes.Open;

  lbCodigo.Caption         := QClientesCODIGO.Value;
  lbRazonSocial.Caption    := QClientesRAZON_SOCIAL.Value;
  lbTelefono1.Caption      := QClientesTELEFONO_COMERCIAL_1.Value;
  lbTelefono2.Caption      := QClientesTELEFONO_COMERCIAL_2.Value;
  lbTeledonoCelular.Caption:= QClientesTELEFONO_CELULAR.Value;
  dbgIncidiencias.SetFocus;

end;

end.
