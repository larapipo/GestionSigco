unit UBuscadorClientesAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ActnList, Db,   StdCtrls, Buttons, CheckLst,
  Grids, DBGrids, ExtCtrls,IniFiles, FMTBcd, Provider,
  DBClient, SqlExpr, JvExControls, JvLabel, JvDBControls, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorClientesAgenda = class(TForm)
    pnBuscador: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    dbgResultado: TDBGrid;
    chbCampos: TCheckListBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDato: TEdit;
    cbCampos: TComboBox;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    DSClientes: TDataSource;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    Buscar: TAction;
    MainMenu: TMainMenu;
    Opciones1: TMenuItem;
    BExacta: TMenuItem;
    BComienzaCon: TMenuItem;
    BIncluye: TMenuItem;
    N1: TMenuItem;
    LeftCero: TMenuItem;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesDIRECCION: TStringField;
    CDSClientesTELEFONO_1: TStringField;
    CDSClientesTELEFONO_2: TStringField;
    CDSClientesCAMPO_1: TStringField;
    CDSClientesCAMPO_2: TStringField;
    DBStatusLabel1: TJvDBStatusLabel;
    CDSClientesREFERENCIA: TStringField;
    QClien: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure chbCamposClickCheck(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure edDatoEnter(Sender: TObject);
    procedure edDatoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure cbCamposChange(Sender: TObject);
    procedure BExactaClick(Sender: TObject);
    procedure BComienzaConClick(Sender: TObject);
    procedure BIncluyeClick(Sender: TObject);
    procedure LeftCeroClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FCodigo:String;
    FTipo:String;
    { Private declarations }
  public
    { Public declarations }
   BuscadorIni,ArchivoIni   :TIniFile;
   Dato,CamposVisibles:String;
   CampoNro,Sucursal:Integer;
  published
    NombreCampo:TStringList;
    property Codigo:String read FCodigo write FCodigo;

  end;

var
  FormBuscadorClientesAgenda: TFormBuscadorClientesAgenda;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormBuscadorClientesAgenda.FormCreate(Sender: TObject);
VAR I:Integer;
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorClienteAgenda.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorClienteAgenda.ini');

  //*************************************************************
  Dato                      := BuscadorIni.ReadString('Dato', 'Dato', '');
  CampoNro                  := BuscadorIni.ReadInteger('Campo', 'Campo',1);
  CamposVisibles            := BuscadorIni.ReadString('ver', 'Ver', '11100000');
  BExacta.Checked           := BuscadorIni.ReadBool('Modo', 'Exacto', False);
  BIncluye.Checked          := BuscadorIni.ReadBool('Modo', 'Incluye', False);
  BComienzaCon.Checked      := BuscadorIni.ReadBool('Modo', 'Comienza', True);
  LeftCero.Checked          := BuscadorIni.ReadBool('Modo', 'LeftCero', True);
  BuscadorIni.Free;
  //****************************************************************************
  //****************************************************************************
  //****************************************************************************
  if Length(CamposVisibles)<8 Then
    CamposVisibles:=CamposVisibles+ copy('000000000000000',1,8-Length(CamposVisibles));
  AutoSize:=True;
  NombreCampo:=TStringList.Create;
  for i:= 0 to CDSClientes.FieldCount-1 do
    begin
      NombreCampo.Add(CDSClientes.Fields[i].FieldName);
      chbCampos.Items.Add(CDSClientes.Fields[i].DisplayName);
      if i<3 Then chbCampos.Checked[i]:=True;
      cbCampos.Items.Add(CDSClientes.Fields[i].DisplayName);
      cbCampos.ItemIndex:=1;
    end;
  //CamposVisibles:='';
  for i:=0 to chbCampos.Items.Count-1 do
    begin
      chbCampos.Checked[i]:='1'=CamposVisibles[i+1];
    end;
  chbCampos.OnClickCheck(Sender);
end;

procedure TFormBuscadorClientesAgenda.chbCamposClickCheck(Sender: TObject);
var i:Integer;
begin
  For i:= 0 to chbCampos.Items.Count-1 do
  dbgResultado.Columns[i].Visible:=chbCampos.Checked[i]
end;

procedure TFormBuscadorClientesAgenda.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 Then
   Buscar.Execute;
end;

procedure TFormBuscadorClientesAgenda.edDatoEnter(Sender: TObject);
begin
 edDato.SelectAll;
end;

procedure TFormBuscadorClientesAgenda.edDatoClick(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorClientesAgenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:Byte;
begin
  CamposVisibles:='';
  for i:=0 to chbCampos.Items.Count-1 do
    begin
      if chbCampos.Checked[i] Then
        CamposVisibles:=CamposVisibles+'1'
      else
        CamposVisibles:=CamposVisibles+'0'
    end;
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorClienteAgenda.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorClienteAgenda.ini');
 //*************************************************************
  BuscadorIni.WriteString('Dato', 'Dato', edDato.Text);
  BuscadorIni.WriteInteger('campo', 'campo', cbCampos.ItemIndex);

  BuscadorIni.WriteString('Ver', 'Ver', CamposVisibles);
  BuscadorIni.WriteBool('Modo', 'Exacto',BExacta.Checked);
  BuscadorIni.WriteBool('Modo', 'Incluye', BIncluye.Checked);
  BuscadorIni.WriteBool('Modo', 'Comienza',BComienzaCon.Checked);
  BuscadorIni.WriteBool('Modo', 'LeftCero', LeftCero.Checked);

  BuscadorIni.Free;
  CDSClientes.Close;
  Action:=caFree;
end;

procedure TFormBuscadorClientesAgenda.FormDestroy(Sender: TObject);
begin
  FormBuscadorClientesAgenda:=nil;
end;

procedure TFormBuscadorClientesAgenda.AceptarExecute(Sender: TObject);
begin
  if Not(CDSClientes.IsEmpty) Then
    begin
      FCodigo:=CDSClientesCODIGO.Value;
      Close;
    end
  else
    begin
      FCodigo:='';
      Close;
    end;
end;

procedure TFormBuscadorClientesAgenda.CancelarExecute(Sender: TObject);
begin
  FCodigo:='';
  Close;
end;

procedure TFormBuscadorClientesAgenda.FormShow(Sender: TObject);
begin
  edDato.Text:=Dato;
  cbCampos.ItemIndex:=CampoNro;
  Buscar.Execute;
  edDato.SetFocus;
  edDato.SelectAll;
end;

procedure TFormBuscadorClientesAgenda.BuscarExecute(Sender: TObject);
VAR Modo:String;
begin
  if (NombreCampo[cbCampos.ItemIndex]='CODIGO') and (Length(edDato.Text)>6) Then
    edDato.Text:=Copy(edDato.Text,1,6);

  if (NombreCampo[cbCampos.ItemIndex]='CODIGO') and (LeftCero.Checked=True) Then
    edDato.Text:=copy('000000',1,6-Length(edDato.Text))+edDato.Text;
  if BExacta.Checked Then
    Modo:=' =:Dato '
  Else
    if BComienzaCon.Checked Then
      Modo:=' Like :Dato '
    else
      if BIncluye.Checked Then
        Modo:=' containing :dato ';

  CDSClientes.Close;
  CDSClientes.CommandText:='';
  CDSClientes.CommandText:='select a.codigo,a.nombre,a.direccion, '+
                           'a.telefono_1,a.telefono_2,a.campo_1,a.campo_2,a.referencia from agenda a '+
                           'where a.'+NombreCampo[cbCampos.ItemIndex]+Modo;

  CDSClientes.Params.ParamByName('DATO').Value:=''+edDato.Text+'';

  if BComienzaCon.Checked Then
    if (NombreCampo[cbCampos.ItemIndex]='CODIGO') Then
      CDSClientes.Params.ParamByName('DATO').Value:=''+edDato.Text+''
    else
      CDSClientes.Params.ParamByName('DATO').Value:=''+edDato.Text+'%';
  CDSClientes.Open;
  if CDSClientes.RecordCount=1 Then
    begin
      dbgResultado.SetFocus;
    end;
end;

procedure TFormBuscadorClientesAgenda.dbgResultadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 Then Aceptar.Execute;
end;

procedure TFormBuscadorClientesAgenda.cbCamposChange(Sender: TObject);
begin
  edDato.Text:='';
  CDSClientes.Close;
end;

procedure TFormBuscadorClientesAgenda.BExactaClick(Sender: TObject);
begin
  BExacta.Checked     :=True;
  BIncluye.Checked    :=False;
  BComienzaCon.Checked:=False;
end;

procedure TFormBuscadorClientesAgenda.BComienzaConClick(Sender: TObject);
begin
  BExacta.Checked     :=False;
  BIncluye.Checked    :=False;
  BComienzaCon.Checked:=True;
end;

procedure TFormBuscadorClientesAgenda.BIncluyeClick(Sender: TObject);
begin
  BExacta.Checked     :=False;
  BIncluye.Checked    :=True;
  BComienzaCon.Checked:=False;
end;

procedure TFormBuscadorClientesAgenda.LeftCeroClick(Sender: TObject);
begin
  if LeftCero.Checked=True Then
    LeftCero.Checked:=False
  else
    if LeftCero.Checked=False Then
      LeftCero.Checked:=True;
end;

procedure TFormBuscadorClientesAgenda.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=vk_UP) and ((Shift=[ssShift]) OR (Shift=[ssCtrl])) Then
    edDato.SetFocus;
  if (key=vk_Down) AND edDato.Focused Then
    dbgResultado.SetFocus;
  if (Key=vk_return) and (dbgResultado.Focused) Then Aceptar.Execute;
end;

end.
