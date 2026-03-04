unit UCambioProveedorFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr,DBXCommon, DB, ActnList, StdCtrls, Buttons, Mask,
  JvExControls, JvGradient, ExtCtrls, JvExMask, JvToolEdit, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCambiaProveedorFactura = class(TForm)
    pnPrincipal: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    JvGradient2: TJvGradient;
    edNombreCliente: TEdit;
    btOk: TBitBtn;
    btcancelar: TBitBtn;
    edRazonSocial: TEdit;
    edDireccion: TEdit;
    edCuit: TEdit;
    edLocalidad: TEdit;
    edCPostal: TEdit;
    edIva: TEdit;
    ActionList1: TActionList;
    BuscarProveedor: TAction;
    spCambiaProveedor: TFDStoredProc;
    QProveedores: TFDQuery;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    QProveedoresRAZON_SOCIAL: TStringField;
    QProveedoresN_DE_CUENTA: TStringField;
    QProveedoresID_COD_POSTAL: TIntegerField;
    QProveedoresCOD_POSTAL: TStringField;
    QProveedoresLOCALIDAD: TStringField;
    QProveedoresDIRECCION: TStringField;
    QProveedoresTELEFONO_1: TStringField;
    QProveedoresTELEFONO_2: TStringField;
    QProveedoresCONDICION_IVA: TIntegerField;
    QProveedoresN_DE_CUIT: TStringField;
    QProveedoresACTIVO: TStringField;
    QProveedoresRETIENE_IVA: TStringField;
    QProveedoresRETIENE_IB: TStringField;
    QProveedoresRETIENE_GANANCIAS: TStringField;
    QProveedoresIVA_SERVICIOS: TStringField;
    QProveedoresPRECIOS_CON_IVA: TStringField;
    QProveedoresOBSERVACIONES: TMemoField;
    QProveedoresNOMBRE_REPRESENTANTE: TStringField;
    QProveedoresDIRECCION_REPRESENTANTE: TStringField;
    QProveedoresTELEFONO_REPRESENTANTE: TStringField;
    QProveedoresTIPO_PROVEEDOR: TStringField;
    QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField;
    QProveedoresFECHAALTA: TSQLTimeStampField;
    QProveedoresSALDO_INICIAL: TFloatField;
    QProveedoresID_PERC_IVA: TIntegerField;
    QProveedoresID_PERC_IBB: TIntegerField;
    QProveedoresID_PERC_IBB_2: TIntegerField;
    QProveedoresRUBRO: TIntegerField;
    QProveedoresID_FACTURAPORDEFECTO: TIntegerField;
    QProveedoresEXENTO_GANACIA: TStringField;
    QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    QProveedoresEXENTO_RETENCION_IB: TStringField;
    QProveedoresID_TASA_RETENCION_IB: TIntegerField;
    QProveedoresNRO_IIBB: TStringField;
    QProveedoresCORREO: TStringField;
    QProveedoresCONV_MULTI: TStringField;
    QProveedoresMONEDA_PRECIOS: TIntegerField;
    QProveedoresTELEDISCADO: TStringField;
    QProveedoresDESPERIVA: TStringField;
    QProveedoresDESPERIB: TStringField;
    QProveedoresDESPERIB2: TStringField;
    QProveedoresMUESTRADETALLERETIIBB: TStringField;
    QProveedoresMUESTRATASARETIIBB: TFloatField;
    QProveedoresMUESTRAMINIMPONIRETIIBB: TFloatField;
    ceCliente: TJvComboEdit;
    spCambiaProveeRecepcion: TFDStoredProc;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
  private
    { Private declarations }
  private
    FCodigo,
    FRazonSocial,
    FNombre,
    FDireccion,
    FLocalidad,
    FCPostal,
    FTipoIva,
    FCuit,
    FTipo:String;
    FID_CPBTE:Integer;
    { Private declarations }
  public

  published
    property codigo:string read FCodigo write FCodigo;
    property reazonsocial:string read FRazonSocial write FRazonSocial;
    property nombre:string read FNombre write FNombre;
    property direccion:string read FDireccion write FDireccion;
    property localidad:string read FLocalidad write FLocalidad;
    property cpostal:string read FCPostal write FCPostal;
    property tipoiva:string read FTipoIva write FTipoIva;
    property cuit:string read FCuit write FCuit;
    property Tipo:string read FTipo write FTipo;
    property Id_Cpbte:Integer read FID_CPBTE write FID_CPBTE;

    { Public declarations }
  end;

var
  FormCambiaProveedorFactura: TFormCambiaProveedorFactura;

implementation

uses UBuscadorProveedor,UDMain_FD;

{$R *.dfm}

procedure TFormCambiaProveedorFactura.btcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambiaProveedorFactura.btOkClick(Sender: TObject);
begin
  if (Trim(ceCliente.Text)<>'') and (Trim(edNombreCliente.Text)<>'') then
  begin
    DMMain_FD.fdcGestion.StartTransaction;
    try
      if FTipo<>'RM' then
        begin
          spCambiaProveedor.Close;
          spCambiaProveedor.ParamByName('id_cpbte').Value  := FID_CPBTE;
          spCambiaProveedor.ParamByName('Codigo').Value    := ceCliente.Text;
          spCambiaProveedor.ParamByName('tipo').Value      := FTipo;
          spCambiaProveedor.ExecProc;
          DMMain_FD.LogFileFD(0,2,'Cambio de Proveedor en Factura('+IntToStr(FID_CPBTE)+'): Original:'+FCodigo+
                         ' Nuevo   :'+ceCliente.Text,
                          'CAMBIOPRO');
          spCambiaProveedor.Close;
        end
      else
        if FTipo='RM' then
          begin
            spCambiaProveeRecepcion.Close;
            spCambiaProveeRecepcion.ParamByName('id_cpbte').Value  := FID_CPBTE;
            spCambiaProveeRecepcion.ParamByName('Codigo').Value    := ceCliente.Text;
            spCambiaProveeRecepcion.ParamByName('tipo').Value      := FTipo;
            spCambiaProveeRecepcion.ExecProc;
            DMMain_FD.LogFileFD(0,2,'Cambio de Proveedor en Recepcion('+IntToStr(FID_CPBTE)+': Original:'+FCodigo+
                         ' Nuevo   :'+ceCliente.Text,
                          'CAMBIOREP');
            spCambiaProveeRecepcion.Close;
          end;
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo realizar el cambio...');
    end;
  end;
  close;
end;

procedure TFormCambiaProveedorFactura.BuscarProveedorExecute(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       ceCliente.Text :=FormBuscadorProveedor.Codigo;
       QProveedores.Close;
       QProveedores.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
       QProveedores.Open;
       IF NOT (QProveedores.IsEmpty) THEN
         BEGIN
           edNombreCliente.Text := QProveedoresNOMBRE.Value;
           edRazonSocial.Text   := QProveedoresRAZON_SOCIAL.Value;
           edDireccion.Text     := QProveedoresDIRECCION.Value;
           edLocalidad.Text     := QProveedoresDIRECCION.Value;
           edCPostal.Text       := QProveedoresCOD_POSTAL.Value;
           edIva.Text           := QProveedoresCONDICION_IVA.AsString;
           edCuit.Text          := QProveedoresN_DE_CUIT.AsString;
           ceCliente.SetFocus;
          ceCliente.SelectAll;
         END;

     END;
end;


procedure TFormCambiaProveedorFactura.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QProveedores.Close;
      QProveedores.ParamByName('Codigo').Value := Dato;
      QProveedores.Open;
      IF NOT(QProveedores.IsEmpty) THEN
        begin
          edNombreCliente.Text := QProveedoresNOMBRE.Value;
          edNombreCliente.Text := QProveedoresNOMBRE.Value;
          edRazonSocial.Text   := QProveedoresRAZON_SOCIAL.Value;
          edDireccion.Text     := QProveedoresDIRECCION.Value;
          edLocalidad.Text     := QProveedoresDIRECCION.Value;
          edCPostal.Text       := QProveedoresCOD_POSTAL.Value;
          edIva.Text           := QProveedoresCONDICION_IVA.AsString;
          edCuit.Text          := QProveedoresN_DE_CUIT.AsString;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    end;
  ceCliente.SetFocus;
  ceCliente.SelectAll;
END;

procedure TFormCambiaProveedorFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambiaProveedorFactura.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
end;

procedure TFormCambiaProveedorFactura.FormDestroy(Sender: TObject);
begin
  FormCambiaProveedorFactura:=nil;
end;

procedure TFormCambiaProveedorFactura.FormShow(Sender: TObject);
begin
  ceCliente.Text       :=FCodigo;
  edNombreCliente.Text :=FNombre;
  edRazonSocial.Text   :=FRazonSocial;
  edDireccion.Text     :=FDireccion;
  edCuit.Text          :=FCuit;
  edLocalidad.Text     :=FLocalidad;
  edCPostal.Text       :=FCPostal;
  edIva.Text           :=FTipoIva;
end;

end.