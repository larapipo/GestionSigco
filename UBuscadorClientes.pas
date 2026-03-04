unit UBuscadorClientes;

interface

uses
  Windows, Messages, SysUtils, FMTBcd, Forms, IniFiles, Provider, DB, DBClient, SqlExpr, Menus,
  Variants, Classes, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,vcl.Graphics,StrUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, JvExControls, JvDBLookup, Vcl.Controls, Vcl.CheckLst, JvLabel,
  JvDBControls, JvGradient, Vcl.ExtCtrls, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, AdvScrollControl, DBAdvSearchList;

type
  TFormBuscadorClientes = class(TForm)
    DSClientes: TDataSource;
    pnBuscador: TPanel;
    chbCampos: TCheckListBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    Label5: TLabel;
    DSSucursal: TDataSource;
    cbSucursal: TJvDBLookupCombo;
    DBStatusLabel1: TJvDBStatusLabel;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    dbgClientes: TDBGrid;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    Panel2: TPanel;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    QClientes: TFDQuery;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesMUESTRAIVA: TStringField;
    CDSClientesCUENTA_OPERATIVA: TStringField;
    CDSClientesNOMBRE_COMPLETO: TStringField;
    CDSClientesCODIGO_COORPORATIVO: TStringField;
    CDSClientesTARJETA_CLIENTE: TStringField;
    btNuevo: TBitBtn;
    NuevoCliente: TAction;
    FDQuery_Borrar: TFDQuery;
    edDato: TEdit;
    Panel3: TPanel;
    Label2: TLabel;
    cbCampos: TComboBox;
    CDSClientesBUSCADOR: TStringField;
    lbModoBusqueda: TLabel;
    N2: TMenuItem;
    FiltrarInactivos1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure chbCamposClickCheck(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure BExactaClick(Sender: TObject);
    procedure BComienzaConClick(Sender: TObject);
    procedure BIncluyeClick(Sender: TObject);
    procedure LeftCeroClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgClientesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgClientesTitleClick(Column: TColumn);
    procedure dbgClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QClientesCODIGO_COORPORATIVOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QClientesCUENTA_OPERATIVAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cbSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NuevoClienteExecute(Sender: TObject);
    procedure edDatoEnter(Sender: TObject);
    procedure edDatoClick(Sender: TObject);
    procedure cbCamposClick(Sender: TObject);
    procedure edDatoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FiltrarInactivos1Click(Sender: TObject);
  private
    FCodigo:String;
    FNombre:String;
    FTipo:String;
    FCampoUsado:String;
    { Private declarations }
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
   BuscadorIni,ArchivoIni   :TIniFile;
   Dato,CamposVisibles:String;
   CampoNro,Sucursal:Integer;
  published
    NombreCampo:TStringList;
    property Tipo:String read FTipo write FTipo;
    property Codigo:String read FCodigo write FCodigo;
    property Nombre:String read FNombre write FNombre;
    property CampoUsado:String read FCampoUsado write FCampoUsado;

  end;

var
  FormBuscadorClientes: TFormBuscadorClientes;

implementation

uses UDMain_FD, UClienteNuevo;

{$R *.DFM}

procedure TFormBuscadorClientes.CreateParams(var Params: TCreateParams);
var version:string;
const
  CS_DROPSHADOW = $00020000;
begin
  inherited;
  Version:=Copy(DMMain_FD.GetOSVersion,1,10);
  if (Version='Windows XP') Then
    Params.WindowClass.Style := Params.WindowClass.Style or CS_DROPSHADOW;
end;




procedure TFormBuscadorClientes.FormCreate(Sender: TObject);
VAR I:Integer;
begin
  AutoSize:=False;
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.UsuarioActivo + '_buscadorCliente.ini')
  else
    BuscadorIni := TIniFile.Create(DMMain_FD.MainPath + 'general_buscadorCliente.ini');
  //*************************************************************
  Dato                      := BuscadorIni.ReadString('Dato', 'Dato', '');
  CampoNro                  := BuscadorIni.ReadInteger('Campo', 'Campo',1);
  Sucursal                  := BuscadorIni.ReadInteger('Sucursal','sucursal',-1);
  CamposVisibles            := BuscadorIni.ReadString('ver', 'Ver', '1110000000000000000');
  BExacta.Checked           := BuscadorIni.ReadBool('Modo', 'Exacto', False);
  BIncluye.Checked          := BuscadorIni.ReadBool('Modo', 'Incluye', True);
  BComienzaCon.Checked      := BuscadorIni.ReadBool('Modo', 'Comienza', False);
  LeftCero.Checked          := BuscadorIni.ReadBool('Modo', 'LeftCero', True);
  FiltrarInactivos1.Checked := BuscadorIni.ReadBool('Filtro', 'Inactivos', False);

  BuscadorIni.Free;
  //****************************************************************************
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;



  // este cambio es para usar solo la sucursal que tiene el usuario
  // pisa el dato del ini anterior, leyeno el INI del Usuario
  if not DMMain_FD.ModificaSucursal Then
    Sucursal  :=  DMMain_FD.Sucursal;
    //begin
//      ArchivoIni := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.NombreIni);
//      Sucursal                  := ArchivoIni.ReadInteger('Sucursal', 'Sucursal',-1);
//      ArchivoIni.Free;
//    end;
  //****************************************************************************
  //****************************************************************************
  //****************************************************************************
  if Length(CamposVisibles)<18 Then
    CamposVisibles:=CamposVisibles+ copy('0000000000000000000000',1,18-Length(CamposVisibles));
  AutoSize:=False;
  NombreCampo:=TStringList.Create;
  QSucursal.Open;
  cbSucursal.KeyValue:=Sucursal;

//  Buscar.Execute;
  for i:= 0 to CDSClientes.FieldCount-1 do
    begin
      if CDSClientes.Fields[i].Visible then
        begin
          NombreCampo.Add(CDSClientes.Fields[i].FieldName);
          chbCampos.Items.Add(CDSClientes.Fields[i].DisplayName);
          if i<3 Then chbCampos.Checked[i]:=True;
          cbCampos.Items.Add(CDSClientes.Fields[i].DisplayName);
          cbCampos.ItemIndex:=CampoNro;// 1;
        end;
    end;

 // CamposVisibles:='';
  for i:=0 to chbCampos.Items.Count-1 do
    begin
      chbCampos.Checked[i]:='1'=CamposVisibles[i+1];
    end;
  chbCampos.OnClickCheck(Sender);


 // seClientes.Text :=  Dato;

end;


procedure TFormBuscadorClientes.chbCamposClickCheck(Sender: TObject);
var i:Integer;
begin
  For i:= 0 to chbCampos.Items.Count-1 do
    dbgClientes.Columns[i].Visible:=chbCampos.Checked[i]
end;



procedure TFormBuscadorClientes.edDatoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // if key=VK_DOWN then
 //  begin
 //     if Not(dbgClientes.DataSource.DataSet.Eof) Then
 //       dbgClientes.DataSource.DataSet.Next;
 //   end
 // else
 //   if key=VK_UP then
 //     begin
 //       if Not(dbgClientes.DataSource.DataSet.bof) Then
 //         dbgClientes.DataSource.DataSet.Prior;
 //     end;

 // edDato.SetFocus;
 // edDato.SelectAll;
end;

procedure TFormBuscadorClientes.edDatoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 Then
    Begin
      Key:=#0;
      Buscar.Execute;
    End;
end;


procedure TFormBuscadorClientes.edDatoEnter(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorClientes.edDatoClick(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorClientes.FiltrarInactivos1Click(Sender: TObject);
begin
  FiltrarInactivos1.Checked:=Not(FiltrarInactivos1.Checked);
  if FiltrarInactivos1.Checked then
    begin
      CDSClientes.Filter:='ACTIVO=''S''';
      CDSClientes.Filtered:=FiltrarInactivos1.Checked;
    end
  else
    if nOT(FiltrarInactivos1.Checked) then
      begin
        CDSClientes.Filter:='';
        CDSClientes.Filtered:=FiltrarInactivos1.Checked;
      end


end;

procedure TFormBuscadorClientes.FormClose(Sender: TObject;
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
    BuscadorIni := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.UsuarioActivo+'_buscadorCliente.ini')
  else
    BuscadorIni := TIniFile.Create(DMMain_FD.MainPath + 'general_buscadorCliente.ini');
 //*************************************************************
  BuscadorIni.WriteInteger('campo', 'campo', cbCampos.ItemIndex);


  if VarIsNull(cbSucursal.KeyValue) Then
    BuscadorIni.WriteInteger('Sucursal', 'sucursal',-1)
  else
    BuscadorIni.WriteInteger('Sucursal', 'sucursal',cbSucursal.KeyValue);

  BuscadorIni.WriteString('Ver', 'Ver', CamposVisibles);
  BuscadorIni.WriteBool('Modo', 'Exacto',BExacta.Checked);
  BuscadorIni.WriteBool('Modo', 'Incluye', BIncluye.Checked);
  BuscadorIni.WriteBool('Modo', 'Comienza',BComienzaCon.Checked);
  BuscadorIni.WriteBool('Modo', 'LeftCero', LeftCero.Checked);
  BuscadorIni.WriteString('Dato', 'Dato', Dato);
  BuscadorIni.WriteBool('Filtro', 'Inactivos', FiltrarInactivos1.Checked);

  BuscadorIni.Free;
  CDSClientes.Close;
  Action:=caFree;
end;

procedure TFormBuscadorClientes.FormDestroy(Sender: TObject);
begin
  FormBuscadorClientes:=nil;
end;

procedure TFormBuscadorClientes.AceptarExecute(Sender: TObject);
begin
  if Not(CDSClientes.IsEmpty) Then
    begin
      FCodigo       := CDSClientesCODIGO.AsString;
      FNombre       := CDSClientesNOMBRE.AsString;
      Dato          := edDato.Text;// CDSClientesCODIGO.AsString;
      Close;
    end
  else
    begin
      FCodigo:='';
      FNombre:='';
      Close;
    end;
  //if (seClientes.FilterCondition.AllColumns=False) then
//    FCampoUsado := seClientes.Columns[seClientes.FilterCondition.Column].DisplayName;

  ModalResult   :=  mrOk;
end;

procedure TFormBuscadorClientes.CancelarExecute(Sender: TObject);
begin
  FCodigo     := '';
  FNombre     := '';
  ModalResult :=  mrCancel;
  Close;
end;

procedure TFormBuscadorClientes.FormShow(Sender: TObject);
begin
  edDato.Text        := Dato;
  cbSucursal.Enabled := DMMain_FD.ModificaSucursal;
  BringToFront;
  FormBuscadorClientes.Update;
  Buscar.Execute;
  edDato.SetFocus;
  edDato.SelectAll;
  if BExacta.Checked then
    lbModoBusqueda.Caption:='(Modo Busqueda :Exacta )'
  else
    if BIncluye.Checked then
      lbModoBusqueda.Caption:='(Modo Busqueda :Incuye )'
    else
      if BComienzaCon.Checked then
        lbModoBusqueda.Caption:='(Modo Busqueda :Comienza Con )';


  edDato.SetFocus;
  edDato.SelectAll;


end;

procedure TFormBuscadorClientes.BuscarExecute(Sender: TObject);
var Modo:String;
begin
  if (NombreCampo[cbCampos.ItemIndex]='CODIGO') and (Length(edDato.Text)>6) Then
    edDato.Text:=Copy(edDato.Text,1,6);

  if (NombreCampo[cbCampos.ItemIndex]='CODIGO') and (LeftCero.Checked=True) Then
    edDato.Text:=copy('000000',1,6-Length(edDato.Text))+edDato.Text;

  CDSClientes.Close;
  CDSClientes.IndexDefs.Clear;
  CDSClientes.IndexName:='';


  if BExacta.Checked Then
    Modo:=' = '
  Else
    if BComienzaCon.Checked Then
      Modo:=' Like '
    else
      if BIncluye.Checked Then
        Modo:=' containing ';

  CDSClientes.CommandText:='';
  CDSClientes.CommandText:='select c.codigo,c.nombre,c.razon_social,c.direccion_comercial, '+
                                  'c.nro_de_cuit,c.nrodocumento,C.telefono_comercial_1,C.telefono_comercial_2,'+
                                  'C.telefono_celular, c.limite_credito,c.sucursal,c.activo,c.localidad,i.detalle as MuestraIva,c.cuenta_operativa,c.nombre_completo,c.codigo_coorporativo, '+
                                  'c.tarjeta_cliente,c.buscador from clientes c '+
                                  'left join inscripcion i on i.codigo = c.condicion_iva '+
                                  'where ( c.activo in ( '+tipo+' )) and ' +
                                  '      ( c.sucursal = :suc  or  :suc = -1 ) and ' +
                                  '        c.' +NombreCampo[cbCampos.ItemIndex]+Modo+':dato '+
                                  'order by c.'+NombreCampo[cbCampos.ItemIndex];

  CDSClientes.Params.ParamByName('SUC').Clear;
  CDSClientes.Params.ParamByName('DATO').Clear;


  CDSClientes.Params.ParamByName('SUC').AsInteger := cbSucursal.KeyValue;
  CDSClientes.Params.ParamByName('DATO').AsString := edDato.Text;

  if BComienzaCon.Checked Then
    if (NombreCampo[cbCampos.ItemIndex]='CODIGO') Then
      CDSClientes.Params.ParamByName('DATO').AsString :=''+copy(edDato.Text,1,5)+'%'
    else
      CDSClientes.Params.ParamByName('DATO').AsString :=''+edDato.Text+'%';


  CDSClientes.Open;

  dbgClientes.Width := dbgClientes.Width-1;
  dbgClientes.Width := dbgClientes.Width+1;


  if CDSClientes.RecordCount>0 Then
    dbgClientes.SetFocus
  else
    begin
      edDato.SetFocus;
      edDato.SelectAll;
    end;


//  CDSClientes.Close;
//  CDSClientes.Params.ParamByName('dato').Value:=edDato.Text;
//  CDSClientes.Open;
//
//  CDSClientes.Filtered  :=  False;
//  CDSClientes.Filter    := '(ACTIVO IN ('+FTipo+')) ';
// // CDSClientes.Close;
//  if cbSucursal.KeyValue > -1 then
//    begin
//
//      CDSClientes.Filter    :=  CDSClientes.Filter +  ' and ( Sucursal = ' + IntToStr(cbSucursal.KeyValue)+' )';
//      CDSClientes.Filtered  :=  True;
//    end
//  else
//    CDSClientes.Filtered    :=  False;
  if CDSClientes.RecordCount>0 then
    begin
      CDSClientes.Locate('CODIGO',Dato,[]);
      dbgClientes.SetFocus;
    end;
  edDato.SetFocus;

  if FiltrarInactivos1.Checked then
    begin
      CDSClientes.Filter:='ACTIVO=''S''';
      CDSClientes.Filtered:=FiltrarInactivos1.Checked;
    end
  else
    if nOT(FiltrarInactivos1.Checked) then
      begin
        CDSClientes.Filter:='';
        CDSClientes.Filtered:=FiltrarInactivos1.Checked;
      end;

end;

procedure TFormBuscadorClientes.dbgResultadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 Then Aceptar.Execute;
end;


procedure TFormBuscadorClientes.cbCamposClick(Sender: TObject);
begin
  if cbCampos.ItemIndex>=19 then
    BIncluye.Checked:=True;
  Buscar.Execute;
  edDato.SetFocus;
end;

procedure TFormBuscadorClientes.cbSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
    begin
      cbSucursal.KeyValue :=  -1;
      CDSClientes.Filtered  :=  False;
    end;

end;

procedure TFormBuscadorClientes.BExactaClick(Sender: TObject);
begin
  BExacta.Checked     :=True;
  BIncluye.Checked    :=False;
  BComienzaCon.Checked:=False;
  if BExacta.Checked then
    lbModoBusqueda.Caption:='(Modo Busqueda :Exacta )'
  else
    if BIncluye.Checked then
      lbModoBusqueda.Caption:='(Modo Busqueda :Incuye )'
    else
      if BComienzaCon.Checked then
        lbModoBusqueda.Caption:='(Modo Busqueda :Comienza Con )';
   Buscar.Execute;
   edDato.SetFocus;
end;

procedure TFormBuscadorClientes.BComienzaConClick(Sender: TObject);
begin
  BExacta.Checked     :=False;
  BIncluye.Checked    :=False;
  BComienzaCon.Checked:=True;
  if BExacta.Checked then
    lbModoBusqueda.Caption:='(Modo Busqueda :Exacta )'
  else
    if BIncluye.Checked then
      lbModoBusqueda.Caption:='(Modo Busqueda :Incuye )'
    else
      if BComienzaCon.Checked then
        lbModoBusqueda.Caption:='(Modo Busqueda :Comienza Con )';
   Buscar.Execute;
   edDato.SetFocus;
end;

procedure TFormBuscadorClientes.BIncluyeClick(Sender: TObject);
begin
  BExacta.Checked     :=False;
  BIncluye.Checked    :=True;
  BComienzaCon.Checked:=False;
  if BExacta.Checked then
    lbModoBusqueda.Caption:='(Modo Busqueda :Exacta )'
  else
    if BIncluye.Checked then
      lbModoBusqueda.Caption:='(Modo Busqueda :Incuye )'
    else
      if BComienzaCon.Checked then
        lbModoBusqueda.Caption:='(Modo Busqueda :Comienza Con )';
   Buscar.Execute;
   edDato.SetFocus;
end;

procedure TFormBuscadorClientes.LeftCeroClick(Sender: TObject);
begin
  if LeftCero.Checked=True Then
    LeftCero.Checked:=False
  else
    if LeftCero.Checked=False Then
      LeftCero.Checked:=True;

  if BExacta.Checked then
    lbModoBusqueda.Caption:='(Modo Busqueda :Exacta )'
  else
    if BIncluye.Checked then
      lbModoBusqueda.Caption:='(Modo Busqueda :Incuye )'
    else
      if BComienzaCon.Checked then
        lbModoBusqueda.Caption:='(Modo Busqueda :Comienza Con )';
   edDato.SetFocus;

end;

procedure TFormBuscadorClientes.NuevoClienteExecute(Sender: TObject);
begin
  FCodigo :=  DMMain_FD.NuevoCliente(FNombre);
  Close;
end;

procedure TFormBuscadorClientes.QClientesCODIGO_COORPORATIVOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=AnsiRightStr('          '+Sender.AsString,10);
end;

procedure TFormBuscadorClientes.QClientesCUENTA_OPERATIVAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:= AnsiRightStr('0000000000'+Sender.AsString,10);
end;

procedure TFormBuscadorClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_UP) and ((Shift=[ssShift]) OR (Shift=[ssCtrl])) Then
    edDato.SetFocus
  else
    if (key=VK_UP) AND edDato.Focused Then
      dbgClientes.SetFocus
    else
      if (key=vk_Down) AND edDato.Focused Then
        dbgClientes.SetFocus;
{ if ((key=VK_LEFT) or (key=VK_RIGHT)) and (Shift=[ssAlt]) then
    begin
      if (key=VK_LEFT) Then
        begin
          if cbCampos.ItemIndex<cbCampos.Items.Count-1 then
            cbCampos.ItemIndex:=cbCampos.ItemIndex+1
          else
            cbCampos.ItemIndex:=0
        end
      else
        if (key=VK_RighT) Then
          begin
           if cbCampos.ItemIndex>0 then
             cbCampos.ItemIndex:=cbCampos.ItemIndex-1
           else
             cbCampos.ItemIndex:=cbCampos.Items.Count-1;
         end;
      edDato.SetFocus;
    end;                  }

end;

procedure TFormBuscadorClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (CharInSet(Key,['A'..'Z','a'..'z','1'..'9','0','-','.',',',';'])) and (dbgClientes.Focused) then
    begin
//      seClientes.SetFocus;
//      seClientes.Text     := UpCase(Key);
//      seClientes.SelStart := Length(seClientes.Text);
      edDato.SetFocus;
      edDato.Text     := UpCase(key);
      edDato.SelStart := Length(edDato.Text);
      Key:=#0;
    end;
end;

procedure TFormBuscadorClientes.dbgClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if CDSClientesACTIVO.Value='N' Then
    dbgClientes.Canvas.Font.Style :=[fsStrikeOut]
  else
    dbgClientes.Canvas.Font.Style :=[];
  if CDSClientesCODIGO_COORPORATIVO.AsString<>'' then
    dbgclientes.canvas.Brush.Color:=clMoneyGreen;

  if gdSelected in State Then
    begin
      dbgClientes.Canvas.Brush.Color:=clNavy;
      dbgClientes.Canvas.Font.Color :=clWhite;
    end
  else
    dbgClientes.Canvas.Font.Color:=clBlack;

  dbgClientes.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormBuscadorClientes.dbgClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_UP) and (dbgClientes.DataSource.DataSet.Bof) and (Not(ActiveControl is TEdit)) then
    begin
      edDato.SetFocus;
      edDato.SelectAll;
//      seClientes.SetFocus;
//      seClientes.SelectAll;
    end;

end;

procedure TFormBuscadorClientes.dbgClientesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 Then
    Aceptar.Execute;
end;


procedure TFormBuscadorClientes.dbgClientesTitleClick(Column: TColumn);
var campo:string;
begin
//  para el uso en DBGrid, ordenar por columna
 try
   Campo := Column.FieldName;
   with dbgClientes.DataSource.DataSet as TClientDataSet do
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

end.
