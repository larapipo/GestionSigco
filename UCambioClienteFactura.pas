unit UCambioClienteFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, StdCtrls, Buttons, Mask,
  JvExControls, JvGradient, ExtCtrls, FMTBcd, SqlExpr, DBXCommon, JvExMask, JvToolEdit,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambiaClienteFactura = class(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    edNombreCliente: TEdit;
    btOk: TBitBtn;
    btcancelar: TBitBtn;
    ActionList1: TActionList;
    BuscarCliente: TAction;
    edRazonSocial: TEdit;
    edDireccion: TEdit;
    edCuit: TEdit;
    edLocalidad: TEdit;
    edCPostal: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edIva: TEdit;
    edZona: TEdit;
    edLDR: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ceCliente: TJvComboEdit;
    spCambiaClienteFD: TFDStoredProc;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesCORREOELECTRONICO_2: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesTIPOABONO: TStringField;
    QClientesID_PLANTILLA: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesDIAS_MAYOR_30: TIntegerField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesFOTO: TBlobField;
    QClientesCON_MONITOREO: TStringField;
    QClientesCON_GPRS: TStringField;
    QClientesCON_HOSTING: TStringField;
    QClientesCOMUNITARIO: TStringField;
    QClientesID_PRESTADOR: TIntegerField;
    QClientesMES_ADICIONAL: TIntegerField;
    QClientesMES_SEMESTRAL: TIntegerField;
    QClientesMOROSO: TStringField;
    QClientesPLANTILLA_CIVA: TStringField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QClientesAVISO: TStringField;
    QClientesRUBRO: TIntegerField;
    QClientesENVIAR_CPTE_MAIL: TStringField;
    QClientesNRO_IP: TStringField;
    QClientesCHEQUES: TStringField;
    edNroDocumento: TEdit;
    Label7: TLabel;
    Label12: TLabel;
    edTipoDocumento: TEdit;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCodigo,
    FRazonSocial,
    FNombre,
    FDireccion,
    FLocalidad,
    FCPostal,
    FTipoIva,
    FCuit,
    FZona,
    FLDR,FTipo,FTipoDoc,FNroDocumento:String;
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
    property zona:string read FZona write FZona;
    property ldr:string read FLDR write FLDR;
    property Tipo:string read FTipo write FTipo;
    property Id_Cpbte:Integer read FID_CPBTE write FID_CPBTE;
    property TipoDoc:string read FTipoDoc write FTipoDoc;
    property NroDocumento:String read FNroDocumento write FNroDocumento;

    { Public declarations }
  end;

var
  FormCambiaClienteFactura: TFormCambiaClienteFactura;

implementation

uses UBuscadorClientes,UDMain_FD;

{$R *.dfm}

procedure TFormCambiaClienteFactura.btcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambiaClienteFactura.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;

  try
    spCambiaClienteFD.Close;
    spCambiaClienteFD.ParamByName('id_cpbte').Value  :=FID_CPBTE;
    spCambiaClienteFD.ParamByName('Codigo').Value    :=ceCliente.Text;
    spCambiaClienteFD.ParamByName('tipo').Value      :=FTipo;
    spCambiaClienteFD.ExecProc;
    DMMain_FD.LogFileFD(0,2,'Cambio de Cliente: Original:'+FCodigo+
                         ' Nuevo   :'+ceCliente.Text,
                          'CAMBIOCLT');
    DMMain_FD.fdcGestion.Commit;
    spCambiaClienteFD.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    spCambiaClienteFD.Close;
    ShowMessage('No se pudo realizar el cambio...');
  end;
  close;

end;

procedure TFormCambiaClienteFactura.BuscarClienteExecute(Sender: TObject);
begin
 IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.Value;
          edRazonSocial.Text   := QClientesRAZON_SOCIAL.Value;
          edDireccion.Text     := QClientesDIRECCION_COMERCIAL.Value;
          edLocalidad.Text     := QClientesLOCALIDAD.Value;
          edCPostal.Text       := QClientesCPOSTAL.Value;
          edIva.Text           := QClientesCONDICION_IVA.AsString;
          edCuit.Text          := QClientesNRO_DE_CUIT.AsString;
          edZona.Text          := QClientesZONA.AsString;
          edLDR.Text           :='0';
          edTipoDocumento.Text := QClientesTIPODOCUMENTO.AsString;
          edNroDocumento.Text  := QClientesNRODOCUMENTO.AsString;

          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
end;

procedure TFormCambiaClienteFactura.ceClienteButtonClick(Sender: TObject);
begin
  BuscarCliente.Execute;
end;

procedure TFormCambiaClienteFactura.ceClienteKeyPress(Sender: TObject;
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
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
          edRazonSocial.Text   := QClientesRAZON_SOCIAL.Value;
          edDireccion.Text     := QClientesDIRECCION_COMERCIAL.Value;
          edLocalidad.Text     := QClientesLOCALIDAD.Value;
          edCPostal.Text       := QClientesCPOSTAL.Value;
          edIva.Text           := QClientesCONDICION_IVA.AsString;
          edCuit.Text          := QClientesNRO_DE_CUIT.AsString;
          edZona.Text          := QClientesZONA.AsString;
          edLDR.Text           := '0';
          edTipoDocumento.Text := QClientesTIPODOCUMENTO.AsString;
          edNroDocumento.Text  := QClientesNRODOCUMENTO.AsString;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormCambiaClienteFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambiaClienteFactura.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCambiaClienteFactura.FormDestroy(Sender: TObject);
begin
  FormCambiaClienteFactura:=Nil;
end;

procedure TFormCambiaClienteFactura.FormShow(Sender: TObject);
begin
  edNombreCliente.Text :=FNombre;
  edRazonSocial.Text   :=FRazonSocial;
  edDireccion.Text     :=FDireccion;
  edCuit.Text          :=FCuit;
  edLocalidad.Text     :=FLocalidad;
  edCPostal.Text       :=FCPostal;
  edIva.Text           :=FTipoIva;
  edZona.Text          :=FZona;
  edLDR.Text           :=FLDR;

end;

end.