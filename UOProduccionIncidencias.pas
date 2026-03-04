unit UOProduccionIncidencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  IBGenerator, Datasnap.DBClient, Datasnap.Provider, JvExMask, JvToolEdit;

type
  TFormOProduccionIncidencias = class(TFormABMBase)
    pn1: TPanel;
    lb1: TLabel;
    lbRazonSocial: TLabel;
    lbTelefono1: TLabel;
    lbTelefono2: TLabel;
    lbTeledonoCelular: TLabel;
    lb2: TLabel;
    lbCodigo: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edContacto: TDBEdit;
    edTelefono: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    edCorreo: TDBEdit;
    tlb1: TToolBar;
    btn3: TToolButton;
    btn1: TToolButton;
    btn2: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    dbgIncidiencias: TJvDBGrid;
    DBMemo1: TDBMemo;
    QContacto: TFDQuery;
    QContactoID: TIntegerField;
    QContactoNOMBRE: TStringField;
    QContactoTELEFONO: TStringField;
    QContactoASUNTO: TStringField;
    QContactoNOMBRE_2: TStringField;
    QContactoTELEFONO_2: TStringField;
    QContactoEMAIL: TStringField;
    DSPContacto: TDataSetProvider;
    CDSContacto: TClientDataSet;
    CDSContactoID: TIntegerField;
    CDSContactoNOMBRE: TStringField;
    CDSContactoTELEFONO: TStringField;
    CDSContactoASUNTO: TStringField;
    CDSContactoNOMBRE_2: TStringField;
    CDSContactoTELEFONO_2: TStringField;
    CDSContactoEMAIL: TStringField;
    DSContacto: TDataSource;
    ibgDetalle: TIBGenerator;
    CDSIncidencias: TClientDataSet;
    DSPIncidencias: TDataSetProvider;
    QIncidencias: TFDQuery;
    QIncidenciasID: TIntegerField;
    QIncidenciasDETALLE: TStringField;
    QIncidenciasUSUARIO: TStringField;
    QIncidenciasANIO_MES: TIntegerField;
    QIncidenciasCOLOR_FUENTE: TIntegerField;
    QIncidenciasCOLOR_BRUSH: TIntegerField;
    QIncidenciasBOLD: TSmallintField;
    CDSIncidenciasID: TIntegerField;
    CDSIncidenciasDETALLE: TStringField;
    CDSIncidenciasUSUARIO: TStringField;
    CDSIncidenciasANIO_MES: TIntegerField;
    CDSIncidenciasCOLOR_FUENTE: TIntegerField;
    CDSIncidenciasCOLOR_BRUSH: TIntegerField;
    CDSIncidenciasBOLD: TSmallintField;
    CDSIncidenciasCLIENTE: TStringField;
    QContactoID_OPRODUCCION: TIntegerField;
    CDSContactoID_OPRODUCCION: TIntegerField;
    QIncidenciasID_OPRODUCCION: TIntegerField;
    CDSIncidenciasID_OPRODUCCION: TIntegerField;
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
    QIncidenciasCLIENTE: TStringField;
    QIncidenciasFECHA_HORA: TSQLTimeStampField;
    QIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField;
    CDSIncidenciasFECHA_HORA: TSQLTimeStampField;
    CDSIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField;
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbgIncidienciasColEnter(Sender: TObject);
    procedure dbgIncidienciasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgIncidienciasEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSIncidenciasNewRecord(DataSet: TDataSet);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSIncidenciasAfterDelete(DataSet: TDataSet);
    procedure CDSIncidenciasAfterPost(DataSet: TDataSet);
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
  FormOProduccionIncidencias: TFormOProduccionIncidencias;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormOProduccionIncidencias.AgregarExecute(Sender: TObject);
begin
//  inherited;

end;

procedure TFormOProduccionIncidencias.CDSContactoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSContactoID_OPRODUCCION.Value := FId;
  CDSContactoID.Value             := CDSContacto.RecordCount+1;
end;

procedure TFormOProduccionIncidencias.CDSIncidenciasAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  Confirma.Execute;
end;

procedure TFormOProduccionIncidencias.CDSIncidenciasAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  Confirma.Execute;
end;

procedure TFormOProduccionIncidencias.CDSIncidenciasNewRecord(
  DataSet: TDataSet);
var a,m,d:word;
cadena:String;
 begin
  inherited;
  CDSIncidenciasID_OPRODUCCION.Value  := FId;
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

procedure TFormOProduccionIncidencias.ConfirmaExecute(Sender: TObject);
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

procedure TFormOProduccionIncidencias.dbgIncidienciasColEnter(Sender: TObject);
begin
  inherited;
  if dbgIncidiencias.SelectedIndex=0  then
    dbgIncidiencias.SelectedIndex:=1
  else
  if dbgIncidiencias.SelectedIndex=3  then
    dbgIncidiencias.SelectedIndex:=2;
end;

procedure TFormOProduccionIncidencias.dbgIncidienciasDrawColumnCell(
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

procedure TFormOProduccionIncidencias.dbgIncidienciasEnter(Sender: TObject);
begin
  inherited;
  dbgIncidiencias.SelectedIndex:=1;
end;

procedure TFormOProduccionIncidencias.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormOProduccionIncidencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if CDSIncidencias.State in [dsEdit,dsInsert] then
    CDSIncidencias.Post;

  Action:=cafree;
end;

procedure TFormOProduccionIncidencias.FormCreate(Sender: TObject);
begin
  //inherited;
  AutoSize:= False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormOProduccionIncidencias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOProduccionIncidencias:=nil;
end;

procedure TFormOProduccionIncidencias.FormShow(Sender: TObject);
begin
  inherited;
 // inherited;
//  DatoNew         :=IntToStr(FId);
  CDSIncidencias.Close;
  CDSIncidencias.Params.ParamByName('Id').Value := FId;
  CDSIncidencias.Open;
  if Trim(FCodigo)<>'' then
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

procedure TFormOProduccionIncidencias.RecuperarExecute(Sender: TObject);
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

  lbCodigo.Caption          := QClientesCODIGO.Value;
  lbRazonSocial.Caption     := QClientesRAZON_SOCIAL.Value;
  lbTelefono1.Caption       := QClientesTELEFONO_COMERCIAL_1.Value;
  lbTelefono2.Caption       := QClientesTELEFONO_COMERCIAL_2.Value;
  lbTeledonoCelular.Caption := QClientesTELEFONO_CELULAR.Value;
  if dbgIncidiencias.Enabled then
    dbgIncidiencias.SetFocus;
end;

end.
