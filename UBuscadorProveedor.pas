unit UBuscadorProveedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db,   Menus, StdCtrls, Buttons, CheckLst,
  Grids, DBGrids, ExtCtrls,IniFiles, JvExControls, JvGradient,
  FMTBcd, SqlExpr, Provider, DBClient, JvExDBGrids, JvDBGrid, JvLabel,
  JvDBControls, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  AdvGroupBox, AdvOfficeButtons;

type
  TFormBuscadorProveedor = class(TForm)
    pnBuscador: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    chbCampos: TCheckListBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDato: TEdit;
    cbCampos: TComboBox;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    MainMenu: TMainMenu;
    Opciones1: TMenuItem;
    BExacta: TMenuItem;
    BComienzaCon: TMenuItem;
    BIncluye: TMenuItem;
    N1: TMenuItem;
    LeftCero: TMenuItem;
    DSProvee: TDataSource;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    Buscar: TAction;
    CDSProvee: TClientDataSet;
    DSPProvee: TDataSetProvider;
    CDSProveeCODIGO: TStringField;
    CDSProveeNOMBRE: TStringField;
    CDSProveeRAZON_SOCIAL: TStringField;
    CDSProveeDIRECCION: TStringField;
    CDSProveeN_DE_CUIT: TStringField;
    CDSProveeTELEFONO_1: TStringField;
    CDSProveeTELEFONO_2: TStringField;
    CDSProveeNOMBRE_REPRESENTANTE: TStringField;
    CDSProveeACTIVO: TStringField;
    CDSProveeTIPO_PROVEEDOR: TStringField;
    DBStatusLabel1: TJvDBStatusLabel;
    QProvee: TFDQuery;
    dbgResultado: TDBGrid;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    rgTipo: TAdvOfficeRadioGroup;
    Panel2: TPanel;
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edDatoClick(Sender: TObject);
    procedure edDatoEnter(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure cbCamposChange(Sender: TObject);
    procedure dbgResultadoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure chbCamposClickCheck(Sender: TObject);
    procedure BExactaClick(Sender: TObject);
    procedure BComienzaConClick(Sender: TObject);
    procedure BIncluyeClick(Sender: TObject);
    procedure LeftCeroClick(Sender: TObject);
    procedure dbgResultadoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgResultadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgResultadoTitleClick(Column: TColumn);
  private
    FCodigo:String;
    FNombre:String;
    FTipo  :String;
    FClase :String;
    { Private declarations }
  public
    { Public declarations }
   BuscadorIni        :TIniFile;
   Dato,CamposVisibles:String;
   CampoNro,Sucursal:Integer;
  published
    NombreCampo:TStringList;
    property Tipo:String read FTipo write FTipo;
    property Codigo:String read FCodigo write FCodigo;
    property clase:string read FClase write FClase;
    property Nombre:string write FNombre;

  end;
var
  FormBuscadorProveedor: TFormBuscadorProveedor;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormBuscadorProveedor.AceptarExecute(Sender: TObject);
begin
    if Not(CDSProvee.IsEmpty) Then
    begin
      FCodigo := CDSProveeCODIGO.Value;
      FNombre := CDSProveeNOMBRE.Value;
      Close;
    end
  else
    begin
      FCodigo := '';
      FNombre := '';
      Close;
    end;
end;

procedure TFormBuscadorProveedor.CancelarExecute(Sender: TObject);
begin
  FCodigo:='';
  Close;
end;

procedure TFormBuscadorProveedor.BuscarExecute(Sender: TObject);
VAR Modo:String;
begin
  if tipo='' Then Tipo:='''S''';
  if (NombreCampo[cbCampos.ItemIndex]='CODIGO') and (LeftCero.Checked=True) Then
    edDato.Text:=copy('000000',1,6-Length(Trim(edDato.Text)))+Trim(edDato.Text);
  if BExacta.Checked Then
    Modo:=' =:Dato '
  Else
    if BComienzaCon.Checked Then
      Modo:=' Like :Dato '
    else
      if BIncluye.Checked Then
        Modo:=' containing :dato ';

  CDSProvee.IndexDefs.Clear;
  CDSProvee.Close;
  CDSProvee.CommandText:='';
  CDSProvee.CommandText:='select p.codigo,p.nombre,p.razon_social,p.direccion,'+
                         'p.n_de_cuit,p.telefono_1,p.telefono_2,p.nombre_representante, p.activo, p.tipo_proveedor '+
                         'from poveedor p where p.'+NombreCampo[cbCampos.ItemIndex]+Modo+
                         ' and ( p.activo in ('+tipo+')) and (( p.tipo_proveedor = :tipo ) or ( :tipo = ''*'' )) ';


  CDSProvee.Params.ParamByName('DATO').AsString:=''+Trim(edDato.Text)+'';

  if BComienzaCon.Checked Then
    CDSProvee.Params.ParamByName('DATO').AsString:=''+Trim(edDato.Text)+'%';
  case rgTipo.ItemIndex of
    0: CDSProvee.Params.ParamByName('Tipo').AsString:='*';
    1: CDSProvee.Params.ParamByName('Tipo').AsString:='A';
    2: CDSProvee.Params.ParamByName('Tipo').AsString:='M';
    3: CDSProvee.Params.ParamByName('Tipo').AsString:='G';

  end;

  CDSProvee.Open;
  if CDSProvee.RecordCount>0 Then
    dbgResultado.SetFocus
  else
    if CDSProvee.RecordCount<=0 Then
      edDato.SetFocus;

  dbgResultado.Width:=dbgResultado.Width-1;
  dbgResultado.Width:=dbgResultado.Width+1;
end;

procedure TFormBuscadorProveedor.FormClose(Sender: TObject;
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
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorProvee.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorProvee.ini');
 //*************************************************************
  BuscadorIni.WriteString('Dato', 'Dato', edDato.Text);
  BuscadorIni.WriteInteger('campo', 'campo', cbCampos.ItemIndex);
  BuscadorIni.WriteString('Ver', 'Ver', CamposVisibles);
  BuscadorIni.WriteBool('Modo', 'Exacto',BExacta.Checked);
  BuscadorIni.WriteBool('Modo', 'Incluye', BIncluye.Checked);
  BuscadorIni.WriteBool('Modo', 'Comienza',BComienzaCon.Checked);
  BuscadorIni.WriteBool('Modo', 'LeftCero', LeftCero.Checked);

  BuscadorIni.Free;
  CDSProvee.Close;
  Action:=caFree;
end;

procedure TFormBuscadorProveedor.FormCreate(Sender: TObject);
VAR I:Integer;
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorProvee.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorProvee.ini');
  //*************************************************************
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Dato                      := BuscadorIni.ReadString('Dato', 'Dato', '');
  CampoNro                  := BuscadorIni.ReadInteger('Campo', 'Campo',1);
  CamposVisibles            := BuscadorIni.ReadString('ver', 'Ver', '111000000');
  BExacta.Checked           := BuscadorIni.ReadBool('Modo', 'Exacto', False);
  BIncluye.Checked          := BuscadorIni.ReadBool('Modo', 'Incluye', False);
  BComienzaCon.Checked      := BuscadorIni.ReadBool('Modo', 'Comienza', True);
  LeftCero.Checked          := BuscadorIni.ReadBool('Modo', 'LeftCero', True);
  BuscadorIni.Free;
  AutoSize:=True;
  NombreCampo:=TStringList.Create;
  for i:= 0 to CDSProvee.FieldCount-1 do
    begin
      NombreCampo.Add(CDSProvee.Fields[i].FieldName);
      chbCampos.Items.Add(CDSProvee.Fields[i].DisplayName);
      if i<3 Then chbCampos.Checked[i]:=True;
      cbCampos.Items.Add(CDSProvee.Fields[i].DisplayName);
      cbCampos.ItemIndex:=1;
    end;
  //CamposVisibles:='';
  for i:=0 to chbCampos.Items.Count-1 do
    begin
      chbCampos.Checked[i]:='1'=CamposVisibles[i+1];
    end;
  chbCampos.OnClickCheck(Sender);
  rgTipo.Font.Color:=clWhite;
  AutoSize:=False;
end;

procedure TFormBuscadorProveedor.FormDestroy(Sender: TObject);
begin
  FormBuscadorProveedor:=nil;
end;

procedure TFormBuscadorProveedor.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (key=vk_UP) and ((Shift=[ssShift]) OR (Shift=[ssCtrl])) Then
    edDato.SetFocus;
  if (key=vk_Down) AND edDato.Focused Then
    dbgResultado.SetFocus;
  if (Key=vk_return) and (dbgResultado.Focused) Then Aceptar.Execute;
end;

procedure TFormBuscadorProveedor.FormShow(Sender: TObject);
begin
  edDato.Text        := Dato;
  cbCampos.ItemIndex := CampoNro;
  Buscar.Execute;
  edDato.SetFocus;
  edDato.SelectAll;
  BringToFront;
end;

procedure TFormBuscadorProveedor.edDatoClick(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorProveedor.edDatoEnter(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorProveedor.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 Then
     Buscar.Execute;
end;

procedure TFormBuscadorProveedor.cbCamposChange(Sender: TObject);
begin
   edDato.Text:='';
   CDSProvee.Close;
   edDato.SetFocus;

end;

procedure TFormBuscadorProveedor.dbgResultadoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if CDSProveeACTIVO.Value='N' Then
    dbgResultado.Canvas.Font.Style :=[fsStrikeOut]
  else
    dbgResultado.Canvas.Font.Style :=[];

  dbgResultado.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormBuscadorProveedor.dbgResultadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_UP) and (dbgResultado.DataSource.DataSet.Bof) then
    begin
      edDato.SetFocus;
      edDato.SelectAll;
    end;

end;

procedure TFormBuscadorProveedor.dbgResultadoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 Then Aceptar.Execute;
end;

procedure TFormBuscadorProveedor.dbgResultadoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgResultado.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorProveedor.dbgResultadoTitleClick(Column: TColumn);
var campo:string;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Column.Field.FieldName;
    with dbgResultado.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorProveedor.chbCamposClickCheck(Sender: TObject);
var i:Integer;
begin
 For i:= 0 to chbCampos.Items.Count-1 do
  dbgResultado.Columns[i].Visible:=chbCampos.Checked[i]
end;

procedure TFormBuscadorProveedor.BExactaClick(Sender: TObject);
begin
  BExacta.Checked     :=True;
  BIncluye.Checked    :=False;
  BComienzaCon.Checked:=False;
end;

procedure TFormBuscadorProveedor.BComienzaConClick(Sender: TObject);
begin
  BExacta.Checked     :=False;
  BIncluye.Checked    :=False;
  BComienzaCon.Checked:=True;
end;

procedure TFormBuscadorProveedor.BIncluyeClick(Sender: TObject);
begin
  BExacta.Checked     :=False;
  BIncluye.Checked    :=True;
  BComienzaCon.Checked:=False;
end;

procedure TFormBuscadorProveedor.LeftCeroClick(Sender: TObject);
begin
  if LeftCero.Checked=True Then
    LeftCero.Checked:=False
  else
    if LeftCero.Checked=False Then
      LeftCero.Checked:=True;
end;

end.
