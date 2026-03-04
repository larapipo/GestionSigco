unit UClienteNuevo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvEdit, DBAdvEd,
  Vcl.DBCtrls, Vcl.ExtCtrls, AdvDBLookupComboBox, AeroButtons, AdvCombo,
  AdvDBComboBox, Data.DB, System.Actions, Vcl.ActnList, AdvSearchList,
  AdvSearchEdit, DBAdvSearchEdit, AdvEdBtn, DBAdvEdBtn, Datasnap.Provider,
  Datasnap.DBClient, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, TypInfo;

type
  TFormClienteNuevo = class(TForm)
    pnPrincipal: TPanel;
    pnFooter: TPanel;
    pnCabecera: TPanel;
    eNombre: TDBAdvEdit;
    eRazonSocial: TDBAdvEdit;
    eCodigo: TDBAdvEdit;
    cbSucursal: TAdvDBLookupComboBox;
    eDireccion: TDBAdvEdit;
    eTelefono1: TDBAdvEdit;
    eTelefono2: TDBAdvEdit;
    cbCondIva: TAdvDBLookupComboBox;
    eEMail: TDBAdvEdit;
    eDocumento: TDBAdvEdit;
    bitBtOk: TAeroBitBtn;
    bitBtCancel: TAeroBitBtn;
    DSClientes: TDataSource;
    cbTipoDoc: TAdvDBComboBox;
    eCelular: TDBAdvEdit;
    ActionList1: TActionList;
    Agregar: TAction;
    Modificar: TAction;
    Borrar: TAction;
    Cancelar: TAction;
    Salir: TAction;
    Buscar: TAction;
    Confirma: TAction;
    DSLocalidades: TDataSource;
    seLocalidad: TDBAdvSearchEdit;
    DSSucursales: TDataSource;
    ePrefijo: TDBAdvEdit;
    eIdCpostal: TDBAdvEditBtn;
    BuscaCPostal: TAction;
    comBuscadorLocalidades: TComBuscador;
    CDSCliente: TClientDataSet;
    CDSClienteCODIGO: TStringField;
    CDSClienteNOMBRE: TStringField;
    CDSClienteRAZON_SOCIAL: TStringField;
    CDSClienteDIRECCION_COMERCIAL: TStringField;
    CDSClienteTELEFONO_COMERCIAL_1: TStringField;
    CDSClienteTELEFONO_COMERCIAL_2: TStringField;
    CDSClienteTELEFONO_CELULAR: TStringField;
    CDSClienteCONDICION_IVA: TIntegerField;
    CDSClienteSUCURSAL: TIntegerField;
    CDSClienteTIPODOCUMENTO: TSmallintField;
    CDSClienteNRODOCUMENTO: TStringField;
    CDSClienteCORREOELECTRONICO: TStringField;
    CDSClienteNRO_DE_CUIT: TStringField;
    spIngresarCliente: TFDStoredProc;
    eCUIT: TDBEdit;
    DSPBuscaInscripcion: TDataSetProvider;
    CDSBuscaInscripcion: TClientDataSet;
    CDSBuscaInscripcionCODIGO: TIntegerField;
    CDSBuscaInscripcionDETALLE: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    DSBuscaInscripcion: TDataSource;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSBuscaCPostal: TClientDataSet;
    CDSBuscaCPostalDETALLE_POSTAL: TStringField;
    CDSBuscaCPostalCODIGO_POSTAL: TStringField;
    CDSBuscaCPostalTELEDISCADO: TStringField;
    CDSBuscaCPostalID_POSTAL: TIntegerField;
    CDSBuscaCPostalPROVINCIA: TIntegerField;
    DSPBuscaCPostal: TDataSetProvider;
    DSBuscaCliente: TDataSetProvider;
    CDSBuscaCliente: TClientDataSet;
    CDSBuscaClienteCODIGO: TStringField;
    CDSBuscaClienteNOMBRE: TStringField;
    CDSBuscaClienteRAZON_SOCIAL: TStringField;
    CDSBuscaClienteDIRECCION_COMERCIAL: TStringField;
    CDSBuscaClienteTELEFONO_COMERCIAL_1: TStringField;
    CDSBuscaClienteTELEFONO_CELULAR: TStringField;
    CDSBuscaClienteID_COD_POSTAL: TIntegerField;
    CDSBuscaClienteCPOSTAL: TStringField;
    CDSBuscaClienteLOCALIDAD: TStringField;
    CDSBuscaClienteCONDICION_IVA: TIntegerField;
    CDSBuscaClienteNRO_DE_CUIT: TStringField;
    CDSBuscaClienteSUCURSAL: TIntegerField;
    CDSBuscaClienteTIPODOCUMENTO: TSmallintField;
    CDSBuscaClienteNRODOCUMENTO: TStringField;
    CDSBuscaClienteCORREOELECTRONICO: TStringField;
    bitBtGuardar: TAeroBitBtn;
    GuardarCambios: TAction;
    CDSCpostal: TClientDataSet;
    DSCpostal: TDataSource;
    CDSCpostalID_COD_POSTAL: TIntegerField;
    CDSCpostalLOCALIDAD: TStringField;
    CDSCpostalCPOSTAL: TStringField;
    CDSCpostalMUESTRATELEDISCADO: TStringField;
    QBuscaInscripcion: TFDQuery;
    QBuscaSucursal: TFDQuery;
    QBuscaCPostalFD: TFDQuery;
    QClientes: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModificarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure DSClientesStateChange(Sender: TObject);
    procedure seLocalidadSelect(Sender: TObject);
    procedure BuscaCPostalExecute(Sender: TObject);
    procedure cbCondIvaChange(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSClienteNOMBRESetText(Sender: TField; const Text: string);
    procedure CDSClienteNewRecord(DataSet: TDataSet);
    procedure GuardarCambiosExecute(Sender: TObject);
    procedure CDSCpostalID_COD_POSTALSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
    FCodigo:  string;
    FNombre, FRazonSocial, FDomicilio, FTelefono, FCelular,
    FEmail, FNroDoc, FCUIT, FLocalidad, FCPostal:  string;
    FIdPostal, FCondIva, FTipoDoc, FSucursal: integer;

    DSEditing : boolean;
    DSDest    : TDataSource;

    function GetField (const FieldName: string): string;
    function GetFieldI (const FieldName: string): Integer;
    function GetCodigo: string;
    function GetNombre: string;
    function GetRazonSocial: string;
    function GetDomicilio: string;
    function GetTelefono: string;
    function GetCelular: string;
    function GetEmail: string;
    function GetNroDoc: string;
    function GetCUIT: string;
    function GetLocalidad: string;
    function GetCPostal: string;
    function GetIdPostal: Integer;
    function GetCondIva: Integer;
    function GetTipoDoc: Integer;
    function GetSucursal: Integer;

    procedure SetField(const FieldName: string; var Variable: string; const Value: string); overload;
    procedure SetField(const FieldName: string; var Variable: integer; const Value: integer); overload;
    procedure SetCodigo(const Value: string);
    procedure SetNombre(const Value: string);
    procedure SetRazonSocial(const Value: string);
    procedure SetDomicilio(const Value: string);
    procedure SetTelefono(const Value: string);
    procedure SetCelular(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetNroDoc(const Value: string);
    procedure SetCUIT(const Value: string);
    procedure SetLocalidad(const Value: string);
    procedure SetCPostal(const Value: string);
    procedure SetIdPostal(const Value: Integer);
    procedure SetCondIva(const Value: Integer);
    procedure SetTipoDoc(const Value: Integer);
    procedure SetSucursal(const Value: Integer);
    function  AsignarCampo(DS: TDataSet; Control: TControl; const FieldName: string): boolean;
{    function  AsignarCampo(DS: TDataSet; Control: TDBAdvEdit; const FieldName: string): boolean;  overload;
    function  AsignarCampo(DS: TDataSet; Control: TDBAdvEditBtn; const FieldName: string): boolean;  overload;
    function  AsignarCampo(DS: TDataSet; Control: TAdvDBLookupComboBox; const FieldName: string): boolean;  overload;
    function  AsignarCampo(DS: TDataSet; Control: TDBAdvSearchEdit; const FieldName: string): boolean;  overload;     }

    procedure IngresarCliente;

  public
    { Public declarations }
    property Codigo: string read GetCodigo write SetCodigo;
    property Nombre: string read GetNombre write SetNombre;
    property RazonSocial: string read GetRazonSocial write SetRazonSocial;
    property Domicilio: string read GetDomicilio write SetDomicilio;
    property Telefono:string read GetTelefono write SetTelefono;
    property Celular:string read GetCelular write SetCelular;
    property Email: string read GetEmail write SetEmail;
    property NroDoc:string read GetNroDoc write SetNroDoc;
    property CUIT:string read GetCUIT write SetCUIT;
    property Localidad:string read GetLocalidad write SetLocalidad;
    property CPostal: string  read GetCPostal write SetCPostal;
    property IdPostal:integer read GetIdPostal write SetIdPostal ;
    property CondIva:integer read GetCondIva write SetCondIva ;
    property TipoDoc:integer read GetTipoDoc write SetTipoDoc ;
    property Sucursal:integer read GetSucursal write SetSucursal ;

    function ModificarDatos(var DS: TDataSource): boolean; overload;
    function ModificarDatos(var CDS: TDataSet): boolean; overload;
  end;

var
  FormClienteNuevo: TFormClienteNuevo;

implementation

uses
  UDMain_FD;//, DMBuscadoresForm;

{$R *.dfm}

function TFormClienteNuevo.AsignarCampo(DS: TDataSet; Control: TControl; const FieldName: string): boolean;
begin
  if (IsPublishedProp (Control, 'DataField')) then
    begin
      if (DS.FindField(FieldName) <> NIL) then
        begin
          SetPropValue (Control, 'DataField',FieldName);
          Control.Visible   :=  True;
          Result            :=  true;
        end
      else
        begin
          SetPropValue (Control, 'DataField','');
          Control.Visible   :=  False;
          Result            :=  False;
        end;
    end
  else
    Result  :=  False;
end;

function TFormClienteNuevo.ModificarDatos(var CDS: TDataSet): boolean;
begin
  try
    DSClientes.DataSet    :=  NIL;
  //  if (DS.State = dsBrowse) then DS.DataSet.Edit;
    AsignarCampo(CDS, cbTipoDoc,  '');
    AsignarCampo(CDS, eDocumento, '');
    AsignarCampo(CDS, eNombre,    'NOMBRE');
    AsignarCampo(CDS, cbSucursal, 'SUCURSAL');
    AsignarCampo(CDS, eRazonSocial, 'RAZONSOCIAL');
    AsignarCampo(CDS, eDireccion, 'DIRECCION');
    AsignarCampo(CDS, eCuit,      'CUIT');
    AsignarCampo(CDS, cbCondIva,  'TIPOIVA');
    AsignarCampo(CDS, eTelefono1, 'TELEFONO1');
    AsignarCampo(CDS, eTelefono2, 'TELEFONO2');
    AsignarCampo(CDS, eCelular ,  'MUESTRACELULAR');
    AsignarCampo(CDS, eEmail,     'CORREOELECTRONICO');

    AsignarCampo(CDS, seLocalidad, 'LOCALIDAD');
    ePrefijo.Visible  :=  eTelefono1.Visible;

    DSClientes.DataSet      :=  CDS;
    DSEditing               :=  True;
   // cbCondIva.Enabled       :=  False;
    GuardarCambios.Visible  :=  True;

    Result                  :=  True;
  except
    Result                  :=  False;
    DSEditing               :=  False;
    Showmessage(' No se puede editar ');
    Cancelar.Execute;
  end;
end;

function TFormClienteNuevo.ModificarDatos(var DS: TDataSource): boolean;
var
  CDS: TDataSet;
begin
  CDS     :=  DS.DataSet;
  Result  :=  ModificarDatos(CDS);
end;


procedure TFormClienteNuevo.SetField(const FieldName: string; var Variable:string; const Value: string);
var
  Field:  TField;
begin
  if (Value <> '') then
    begin
      Variable     :=  Value;
      Field := DSClientes.DataSet.FindField(FieldName);
      if Field = nil then
        Field := DSCPostal.DataSet.FindField(FieldName);
      if (Field <> nil) and (Field.DataSet.State <> dsBrowse) then
        Field.AsString :=  Value;
    end;
end;

procedure TFormClienteNuevo.SetField(const FieldName: string; var Variable: integer; const Value: integer);
var
  Field:  TField;
begin
  if (Value > -1) then
    begin
      Variable     :=  Value;
      Field := DSClientes.DataSet.FindField(FieldName);
      if Field = nil then
        Field := DSCPostal.DataSet.FindField(FieldName);
      if (Field <> nil) and (Field.DataSet.State <> dsBrowse) then
        Field.AsInteger :=  Value;
    end;
end;

procedure TFormClienteNuevo.SetCodigo(const Value: string);
begin
  SetField('CODIGO',FCodigo ,Value);
end;

procedure TFormClienteNuevo.SetNombre(const Value: string);
begin
  SetField(eNombre.DataField,FNombre,Value);
end;

procedure TFormClienteNuevo.SetRazonSocial(const Value: string);
begin
  SetField(eRazonSocial.DataField,FRazonSocial,Value);
end;

procedure TFormClienteNuevo.SetTelefono (const Value: string);
begin
  SetField(eTelefono1.DataField,FTelefono,Value);
end;

procedure TFormClienteNuevo.SetCelular(const Value: string);
begin
  SetField(eCelular.DataField,FCelular,Value);
end;

procedure TFormClienteNuevo.SetDomicilio(const Value: string);
begin
  SetField(eDireccion.DataField,FDomicilio,Value);
end;

procedure TFormClienteNuevo.SetEmail(const Value: string);
begin
  SetField(eEmail.DataField,FEmail,Value);
end;

procedure TFormClienteNuevo.SetNroDoc(const Value: string);
begin
  SetField(eDocumento.DataField,FNroDoc,Value);
end;

procedure TFormClienteNuevo.SetCUIT(const Value: string);
begin
  SetField(eCUIT.DataField,FCUIT,Value);
end;

procedure TFormClienteNuevo.SetLocalidad(const Value: string);
begin
  SetField(seLocalidad.DataField,FLocalidad,Value);
end;

procedure TFormClienteNuevo.SetCPostal(const Value: string);
begin
  SetField('CPOSTAL',FCPostal,Value);
end;

procedure TFormClienteNuevo.SetIdPostal(const Value: Integer);
begin
//  DSClientes.DataSet.FieldByName('ID_COD_POSTAL').Text  :=  IntToStr(Value);
  SetField(eIdCpostal.DataField, FIdPostal, Value);
end;

procedure TFormClienteNuevo.SetCondIva(const Value: Integer);
begin
  SetField(cbCondIva.DataField,FCondIva,Value);
end;

procedure TFormClienteNuevo.SetTipoDoc(const Value: Integer);
begin
  SetField(cbTipoDoc.DataField,FTipoDoc,Value);
end;

procedure TFormClienteNuevo.SetSucursal(const Value: Integer);
begin
  SetField(cbSucursal.DataField,FSucursal,Value);
end;

function TFormClienteNuevo.GetField(const FieldName:string): string;
var
  Field: TField;
begin
  Field   := DSClientes.DataSet.FindField(FieldName);
  if Field = nil then
    Field :=  DSCPostal.DataSet.FindField(FieldName);

  if (Field <> nil) and (not Field.IsNull) then
    Result  :=  Field.AsString
  else
    Result  :=  '';
end;

function TFormClienteNuevo.GetFieldI(const FieldName:string): Integer;
var
  Field: TField;
begin
  Field   := DSClientes.DataSet.FindField(FieldName);
  if Field = nil then
    Field :=  DSCPostal.DataSet.FindField(FieldName);

  if (Field <> nil) and (not Field.IsNull) then
    Result  :=  Field.AsInteger
  else
    Result  :=  -1;
end;

function TFormClienteNuevo.GetCodigo: string;
begin
  Result  :=  GetField(eCodigo.DataField);
end;

function TFormClienteNuevo.GetNombre: string;
begin
  Result  :=  GetField(eNombre.DataField);
end;

function TFormClienteNuevo.GetRazonSocial: string;
begin
  Result  :=  GetField(eRazonSocial.DataField);
end;

function TFormClienteNuevo.GetSucursal: integer;
begin
  Result  :=  GetFieldI(cbSucursal.DataField);
end;

function TFormClienteNuevo.GetDomicilio: string;
begin
  Result  :=  GetField(eDireccion.DataField);
end;

function TFormClienteNuevo.GetTelefono: string;
begin
  Result  :=  GetField(eTelefono1.DataField);
end;

function TFormClienteNuevo.GetCelular: string;
begin
  Result  :=  GetField(eCelular.DataField);
end;

function TFormClienteNuevo.GetIdPostal: integer;
begin
  Result  :=  GetFieldI(eIdCPostal.DataField);
end;

function TFormClienteNuevo.GetCPostal: string;
begin
  Result  :=  GetField('CPOSTAL');
end;

function TFormClienteNuevo.GetLocalidad: string;
begin
  Result  :=  GetField(seLocalidad.DataField);
end;

function TFormClienteNuevo.GetCondIva: Integer;
begin
  Result  :=  GetFieldI(cbCondIva.DataField);
end;

function TFormClienteNuevo.GetCUIT: string;
begin
  Result  :=  GetField(eCUIT.DataField);
end;

function TFormClienteNuevo.GetTipoDoc: integer;
begin
  Result  :=  cbTipoDoc.ItemIndex + 1; //GetFieldI(cbTipoDoc.DataField);
end;

function TFormClienteNuevo.GetNroDoc: string;
begin
  Result  :=  GetField(eDocumento.DataField);
end;

procedure TFormClienteNuevo.GuardarCambiosExecute(Sender: TObject);
begin
  IngresarCliente;
  Confirma.Execute;
end;


function TFormClienteNuevo.GetEmail: string;
begin
  Result  :=  GetField(eEmail.DataField);
end;

procedure TFormClienteNuevo.AgregarExecute(Sender: TObject);
begin
  DSClientes.DataSet.Append;
end;


procedure TFormClienteNuevo.BorrarExecute(Sender: TObject);
begin
  if (DSClientes.State = dsBrowse) and
     (not DSClientes.DataSet.IsEmpty)
  then
    DSClientes.DataSet.Delete;
end;

procedure TFormClienteNuevo.CancelarExecute(Sender: TObject);
begin
  if DSClientes.State in [dsInsert, dsEdit] then
    DSClientes.DataSet.Cancel;

  if DSCPostal.State in [dsInsert, dsEdit] then
    DSCPostal.DataSet.Cancel;

  FCodigo :=  '';
  FNombre :=  '';
  DSEditing :=  False;
  Salir.Execute;
end;

procedure TFormClienteNuevo.BuscaCPostalExecute(Sender: TObject);
begin
//  DMBuscadores.QBuscaCPostal.Close;
//  DMBuscadores.QBuscaCPostal.Open;
//  comBuscadorLocalidades.Execute;
//  if comBuscadorLocalidades.rOk Then
//    CDSCPostalID_COD_POSTAL.Text := IntToStr(comBuscadorLocalidades.id);
  CDSBuscaCPostal.Close;
  CDSBuscaCPostal.Open;
  comBuscadorLocalidades.Execute;
  if comBuscadorLocalidades.rOk Then
    CDSCPostalID_COD_POSTAL.Text := IntToStr(comBuscadorLocalidades.id);
end;

procedure TFormClienteNuevo.BuscarExecute(Sender: TObject);
begin
//  FormClientes_2.Buscar.Execute;
end;

procedure TFormClienteNuevo.cbCondIvaChange(Sender: TObject);
begin
  if cbCondIva.KeyValue = 3 then
    begin
      cbTipoDoc.Visible     :=  True;
      cbTipoDoc.ItemIndex   :=  0;
      if not AsignarCampo(DSClientes.DataSet,eDocumento,'NRODOCUMENTO') then
        begin
          AsignarCampo(DSClientes.DataSet,eDocumento,'CUIT');
          AsignarCampo(DSClientes.DataSet,eCUIT,'');
        end;
    end
  else
    begin
      cbTipoDoc.Visible     :=  False;
      cbTipoDoc.ItemIndex   :=  -1;
    end;
  eDocumento.Visible    :=  cbTipoDoc.Visible;
  eCUIT.Visible         :=  not cbTipoDoc.Visible;
end;

procedure TFormClienteNuevo.CDSClienteNewRecord(DataSet: TDataSet);
BEGIN
  if FCodigo = '' then
    begin
      CDSClienteCODIGO.AsString              := DMMain_FD.UltimoCodigoCli;
      CDSClienteSUCURSAL.AsInteger           := DMMain_FD.SucursalPorDef;
      CDSCPostalID_COD_POSTAL.Text           := DMMain_FD.CPostalPorDef;

      if DMMain_FD.InscripcionPorDefecto > -1 then
        CDSClienteCONDICION_IVA.AsInteger    := DMMain_FD.InscripcionPorDefecto
      else
        CDSClienteCONDICION_IVA.AsInteger     := 3;

      if CDSClienteCONDICION_IVA.AsInteger = 3 then
        CDSClienteTIPODOCUMENTO.AsInteger :=  1;
    end;

end;

procedure TFormClienteNuevo.CDSClienteNOMBRESetText(Sender: TField;
  const Text: string);
begin
  if Trim(Text)<>'' then
    begin
      Sender.AsString                 := Trim(Text);
      CDSClienteRAZON_SOCIAL.AsString := Trim(Text);
    end;
end;

procedure TFormClienteNuevo.CDSCpostalID_COD_POSTALSetText(Sender: TField;
  const Text: string);
var
  IntAux: integer;
begin
  if TryStrToInt(Text,IntAux) then
    begin
      with DMMain_FD do
        begin
          QPostal.Close;
          QPostal.Params.ParamByName('id').Value := IntAux;
          QPostal.Open;
          IF NOT(QPostal.IsEmpty) THEN
            BEGIN
              IdPostal                                := IntAux;
              CPostal                                 := QPostalCODIGO_POSTAL.AsString;
              Localidad                               := QPostalDETALLE_POSTAL.AsString;
              CDSCPostalMUESTRATELEDISCADO.AsString   := QPostalTELEDISCADO.AsString;
            END;
          QPostal.Close;
        end;
    end;

end;

procedure TFormClienteNuevo.IngresarCliente;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spIngresarCliente.Close;
    spIngresarCliente.ParamByName('CODIGO').Value           :=  Codigo;
    spIngresarCliente.ParamByName('NOMBRE').Value           :=  Nombre;
    spIngresarCliente.ParamByName('RAZON_SOCIAL').Value     :=  RazonSocial;
    spIngresarCliente.ParamByName('DIRECCION').Value        :=  Domicilio;
    spIngresarCliente.ParamByName('TIPO_IVA').Value         :=  CondIva;
    spIngresarCliente.ParamByName('CUIT').Value             :=  CUIT;
    spIngresarCliente.ParamByName('C_POSTAL').Value         :=  CPostal;
    spIngresarCliente.ParamByName('LOCALIDAD').Value        :=  Localidad;
    spIngresarCliente.ParamByName('TELEFONO').Value         :=  Telefono;
    spIngresarCliente.ParamByName('MAIL').Value             :=  Email;
    spIngresarCliente.ParamByName('TIPODOC').Value          :=  TipoDoc;
    spIngresarCliente.ParamByName('NRODOCUMENTO').Value     :=  NroDoc;
    spIngresarCliente.ParamByName('SUCURSAL').Value         :=  Sucursal;
    spIngresarCliente.ParamByName('CELULAR').Value          :=  Celular;
    spIngresarCliente.ParamByName('ID_POSTAL').Value        :=  IdPostal;
    spIngresarCliente.ExecProc;
    DMMain_FD.fdcGestion.Commit;

    if not spIngresarCliente.ParamByName('CODIGO_ALTA').IsNull then
      FCodigo :=  spIngresarCliente.ParamByName('CODIGO_ALTA').Value;

    spIngresarCliente.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    showmessage(' Error en la carga del Cliente ');
    Cancelar.Execute;
  end;

end;

procedure TFormClienteNuevo.ConfirmaExecute(Sender: TObject);
begin
  if not DSEditing then
    begin
      if (DSClientes.State in [dsInsert, dsEdit]) and
         (not DSClientes.DataSet.IsEmpty)
      then
        DSClientes.DataSet.Post;

      IngresarCliente;
    end;

  Salir.Execute;
end;

procedure TFormClienteNuevo.DSClientesStateChange(Sender: TObject);
begin
  Cancelar.Enabled  :=  DSClientes.State in [dsInsert, dsEdit];
  Confirma.Enabled  :=  DSClientes.State in [dsInsert, dsEdit];
end;

procedure TFormClienteNuevo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DSLocalidades.DataSet.Close;
  DSSucursales.DataSet.Close;
  DSBuscaInscripcion.DataSet.Close;
  Action  :=  caFree;
end;

procedure TFormClienteNuevo.FormCreate(Sender: TObject);
begin
  CDSCliente.CreateDataSet;
  CDSCPostal.CreateDataSet;
  CDSCPostal.Append;
  DSLocalidades.DataSet.Open;
  DSSucursales.DataSet.Open;
  DSBuscaInscripcion.DataSet.Open;
  DSEditing :=  False;
end;

procedure TFormClienteNuevo.FormDestroy(Sender: TObject);
begin
  FormClienteNuevo  :=  nil;
end;

procedure TFormClienteNuevo.FormHide(Sender: TObject);
begin
  Salir.Execute;
end;

procedure TFormClienteNuevo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (not (ActiveControl is TButton)) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TFormClienteNuevo.ModificarExecute(Sender: TObject);
begin
  if FCodigo <> '' then
    begin
      if DSClientes.DataSet.IsEmpty then
        DSClientes.DataSet.Append
      else
        if DSClientes.State = dsBrowse then
          DSClientes.DataSet.Edit;


      if DSCPostal.DataSet.IsEmpty then
        DSCPostal.DataSet.Append
      else
        if DSCPostal.State = dsBrowse then
          DSCPostal.DataSet.Edit;

      CDSBuscaCliente.Close;
      CDSBuscaCliente.ParamByName('CODIGO').Value   :=  FCodigo;
      CDSBuscaCliente.Open;
      if not CDSBuscaCliente.IsEmpty then
        begin
          Codigo            :=  CDSBuscaClienteCODIGO.AsString;
          Nombre            :=  CDSBuscaClienteNOMBRE.AsString;
          RazonSocial       :=  CDSBuscaClienteRAZON_SOCIAL.AsString;
          Sucursal          :=  CDSBuscaClienteSUCURSAL.AsInteger;
          CondIva           :=  CDSBuscaClienteCONDICION_IVA.AsInteger;
          CUIT              :=  CDSBuscaClienteNRO_DE_CUIT.AsString;
          if not CDSBuscaClienteTIPODOCUMENTO.IsNull then
            begin
              TipoDoc           :=  CDSBuscaClienteTIPODOCUMENTO.AsInteger;
              NroDoc            :=  CDSBuscaClienteNRODOCUMENTO.AsString;
            end;
          if not CDSBuscaClienteID_COD_POSTAL.IsNull then
            IdPostal            :=  CDSBuscaClienteID_COD_POSTAL.AsInteger
          else
            begin
                CPostal         :=  CDSBuscaClienteCPOSTAL.AsString;
                Localidad       :=  CDSBuscaClienteLOCALIDAD.AsString;
            end;
          Domicilio             :=  CDSBuscaClienteDIRECCION_COMERCIAL.AsString;
          Telefono              :=  CDSBuscaClienteTELEFONO_COMERCIAL_1.AsString;
          Email                 :=  CDSBuscaClienteCORREOELECTRONICO.AsString;
        end;
      CDSBuscaCliente.Close;
    end;
end;

procedure TFormClienteNuevo.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormClienteNuevo.seLocalidadSelect(Sender: TObject);
begin
  CDSCPostalID_COD_POSTAL.Text  :=  seLocalidad.SearchList.SelectedItem.Captions[0];
end;

end.
