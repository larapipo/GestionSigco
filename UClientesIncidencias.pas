unit UClientesIncidencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, ComCtrls,   StdCtrls, Mask, ImgList, ActnList,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls, Provider, DBClient,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, IBGenerator, DBCtrls, JvDialogs,
  JvExStdCtrls, JvCombobox, JvColorCombo, JvComponentBase, JvDBGridExport,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, DBXCommon,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormClientesIncidencias = class(TFormABMBase)
    BuscarCliente: TAction;
    CDSIncidencias: TClientDataSet;
    DSPIncidencias: TDataSetProvider;
    dbgIncidiencias: TJvDBGrid;
    ibgDetalle: TIBGenerator;
    DBNavigator1: TDBNavigator;
    JvDBGridCSVExport1: TJvDBGridCSVExport;
    dlgFont1: TFontDialog;
    dlgColor1: TColorDialog;
    Colorfont: TAction;
    tlb1: TToolBar;
    pn1: TPanel;
    lb1: TLabel;
    JvGradient1: TJvGradient;
    ColorFondo: TAction;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    FontBold: TAction;
    lbNombre: TLabel;
    lbRazonSocial: TLabel;
    lbDireccion: TLabel;
    lbTelefono1: TLabel;
    lbTelefono2: TLabel;
    lbTeledonoCelular: TLabel;
    lb2: TLabel;
    lbCodigo: TLabel;
    QIncidencias: TFDQuery;
    QIncidenciasID: TIntegerField;
    QIncidenciasCLIENTE: TStringField;
    QIncidenciasFECHA_HORA: TSQLTimeStampField;
    QIncidenciasDETALLE: TStringField;
    QIncidenciasUSUARIO: TStringField;
    QIncidenciasANIO_MES: TIntegerField;
    QIncidenciasCOLOR_FUENTE: TIntegerField;
    QIncidenciasCOLOR_BRUSH: TIntegerField;
    QIncidenciasBOLD: TSmallintField;
    CDSIncidenciasID: TIntegerField;
    CDSIncidenciasCLIENTE: TStringField;
    CDSIncidenciasFECHA_HORA: TSQLTimeStampField;
    CDSIncidenciasDETALLE: TStringField;
    CDSIncidenciasUSUARIO: TStringField;
    CDSIncidenciasANIO_MES: TIntegerField;
    CDSIncidenciasCOLOR_FUENTE: TIntegerField;
    CDSIncidenciasCOLOR_BRUSH: TIntegerField;
    CDSIncidenciasBOLD: TSmallintField;
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
    procedure BuscarClienteExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSIncidenciasNewRecord(DataSet: TDataSet);
    procedure CDSIncidenciasBeforeInsert(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgIncidienciasColEnter(Sender: TObject);
    procedure dbgIncidienciasEnter(Sender: TObject);
    procedure CDSIncidenciasBeforeDelete(DataSet: TDataSet);
    procedure CDSIncidenciasBeforeEdit(DataSet: TDataSet);
    procedure CDSIncidenciasAfterPost(DataSet: TDataSet);
    procedure CDSIncidenciasAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure dbgIncidienciasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn1Click(Sender: TObject);
    procedure ColorfontExecute(Sender: TObject);
    procedure ColorFondoExecute(Sender: TObject);
    procedure FontBoldExecute(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormClientesIncidencias: TFormClientesIncidencias;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormClientesIncidencias.AgregarExecute(Sender: TObject);
begin
//  inherited;

end;

procedure TFormClientesIncidencias.btn1Click(Sender: TObject);
var colorletra:TColor;
begin
  inherited;
end;

procedure TFormClientesIncidencias.BuscarClienteExecute(Sender: TObject);
var aux:Real;
BEGIN
    BEGIN
//      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := lbCodigo.Caption;
      QClientes.Open;
      if Not(QClientes.IsEmpty) then
        begin
          Recuperar.Execute;
          lbCodigo.Caption         := QClientesCODIGO.Value;
          lbNombre.Caption         := QClientesNOMBRE.Value;
          lbRazonSocial.Caption    := QClientesRAZON_SOCIAL.Value;
          lbDireccion.Caption      := QClientesDIRECCION_COMERCIAL.Value;
          lbTelefono1.Caption      := QClientesTELEFONO_COMERCIAL_1.Value;
          lbTelefono2.Caption      := QClientesTELEFONO_COMERCIAL_2.Value;
          lbTeledonoCelular.Caption:= QClientesTELEFONO_CELULAR.Value;
         end
      else
        begin
          lbCodigo.Caption         := '';
          lbNombre.Caption         := '';
          lbRazonSocial.Caption    := '';
          lbDireccion.Caption      := '';
          lbTelefono1.Caption      := '';
          lbTelefono2.Caption      := '';
          lbTeledonoCelular.Caption:= '';
        end;
     END;
END;

procedure TFormClientesIncidencias.CDSIncidenciasAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Confirma.Execute;
end;

procedure TFormClientesIncidencias.CDSIncidenciasAfterPost(DataSet: TDataSet);
begin
  inherited;
  Confirma.Execute;
end;

procedure TFormClientesIncidencias.CDSIncidenciasBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if DMMain_FD.BMIncidencias=False then
    begin
      ShowMessage('Operación no permitida');
      SysUtils.Abort;
    end;
end;

procedure TFormClientesIncidencias.CDSIncidenciasBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DMMain_FD.BMIncidencias=False then
    begin
      ShowMessage('Operación no permitida');
      SysUtils.Abort;
    end;
end;

procedure TFormClientesIncidencias.CDSIncidenciasBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if Trim(lbCodigo.Caption)='' then
    begin
      ShowMessage('No se indico el cliente');
      SysUtils.Abort;
    end
  else
    begin
      CDSIncidencias.First;
    end;  
end;

procedure TFormClientesIncidencias.CDSIncidenciasNewRecord(DataSet: TDataSet);
var a,m,d:word;
cadena:String;
begin
  inherited;
  CDSIncidenciasCLIENTE.Value         := lbCodigo.Caption;
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

procedure TFormClientesIncidencias.ColorFondoExecute(Sender: TObject);
begin
  inherited;
  if dlgColor1.Execute then
    if (dlgColor1.Color<>null) then
      begin
        CDSIncidencias.Edit;
        CDSIncidenciasCOLOR_BRUSH.Value:=dlgColor1.Color;
        CDSIncidencias.Post;
      end;   //
end;

procedure TFormClientesIncidencias.ColorfontExecute(Sender: TObject);
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

procedure TFormClientesIncidencias.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSIncidencias.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage(' No se gravaron  los cambios');
  end;
  Recuperar.Execute;
end;

procedure TFormClientesIncidencias.dbgIncidienciasColEnter(Sender: TObject);
begin
  inherited;
  if dbgIncidiencias.SelectedIndex=0  then
    dbgIncidiencias.SelectedIndex:=1
  else
  if dbgIncidiencias.SelectedIndex=2  then
    dbgIncidiencias.SelectedIndex:=1;

end;

procedure TFormClientesIncidencias.dbgIncidienciasDrawColumnCell(
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

procedure TFormClientesIncidencias.dbgIncidienciasEnter(Sender: TObject);
begin
  inherited;
  dbgIncidiencias.SelectedIndex:=1;
end;

procedure TFormClientesIncidencias.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormClientesIncidencias.FontBoldExecute(Sender: TObject);
begin
 // inherited;
  begin
    CDSIncidencias.Edit;
    if (CDSIncidenciasBOLD.Value=0) or (CDSIncidenciasBOLD.AsString='') then
      CDSIncidenciasBOLD.Value:=1
    else
      CDSIncidenciasBOLD.Value:=0;
    CDSIncidencias.Post;
  end;   //
end;

procedure TFormClientesIncidencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if CDSIncidencias.State in [dsEdit,dsInsert] then
    CDSIncidencias.Post;

  Action:=cafree;
end;

procedure TFormClientesIncidencias.FormCreate(Sender: TObject);
begin
//  inherited;
  lbCodigo.Caption:=Codigo;
  DatoNew :=Codigo;
  AutoSize:=False;
end;

procedure TFormClientesIncidencias.FormDestroy(Sender: TObject);
begin
 // inherited;
  FormClientesIncidencias:=nil;
end;

procedure TFormClientesIncidencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

procedure TFormClientesIncidencias.FormShow(Sender: TObject);
begin
 // inherited;
  DatoNew         :=Codigo;
  lbCodigo.Caption:=Codigo;

  QClientes.Close;
  QClientes.ParamByName('Codigo').Value := DatoNew;
  QClientes.Open;
    if Not(QClientes.IsEmpty) then
      begin
        Recuperar.Execute;
        lbCodigo.Caption         := QClientesCODIGO.Value;
        lbNombre.Caption         := QClientesNOMBRE.Value;
        lbRazonSocial.Caption    := QClientesRAZON_SOCIAL.Value;
        lbDireccion.Caption      := QClientesDIRECCION_COMERCIAL.Value;
        lbTelefono1.Caption      := QClientesTELEFONO_COMERCIAL_1.Value;
        lbTelefono2.Caption      := QClientesTELEFONO_COMERCIAL_2.Value;
        lbTeledonoCelular.Caption:= QClientesTELEFONO_CELULAR.Value;
      end
    else
      begin
        lbCodigo.Caption         := '';
        lbNombre.Caption         := '';
        lbRazonSocial.Caption    := '';
        lbDireccion.Caption      := '';
        lbTelefono1.Caption      := '';
        lbTelefono2.Caption      := '';
        lbTeledonoCelular.Caption:= '';
      end;
  //ceCliente.SetFocus;
  //ceCliente.SelectAll;
  dbgIncidiencias.SetFocus;
  BringToFront;
//  Buscar.Execute;
end;

procedure TFormClientesIncidencias.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSIncidencias.Close;
  CDSIncidencias.Params.ParamByName('Codigo').Value:=Trim(lbCodigo.Caption);
  CDSIncidencias.Open;
end;

procedure TFormClientesIncidencias.SalirExecute(Sender: TObject);
begin
// inherited;
 close;
end;

end.