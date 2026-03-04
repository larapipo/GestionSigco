unit UAltaProductosCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExMask, JvToolEdit,
  JvDBControls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvSearchEdit,
  System.Actions, Vcl.ActnList, Vcl.Buttons, AdvSearchList, DBAdvSearchEdit;

type
  TFormAltaProdutosCliente = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    ActionList1: TActionList;
    BuscaCliente: TAction;
    QMarcas: TFDQuery;
    QCategorias: TFDQuery;
    DSMarcas: TDataSource;
    DSCategorias: TDataSource;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    Action1: TAction;
    Action2: TAction;
    seMarcas: TDBAdvSearchEdit;
    seCategorias: TDBAdvSearchEdit;
    QCategoriasID: TIntegerField;
    QCategoriasDETALLE: TStringField;
    QMarcasMARCA_STK: TStringField;
    QMarcasDESCRIPCION_MARCA: TStringField;
    edDescripcion: TEdit;
    edIdentificador: TEdit;
    edModelo: TEdit;
    edNombreCliente: TEdit;
    ceCliente: TJvComboEdit;
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
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesLISTAPRECIOS: TIntegerField;
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
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
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
    QClientesTIPOABONO: TStringField;
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
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
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
    QClientesMUESTRACOORPORATIVO: TStringField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    spAltaProducto: TFDStoredProc;
    mObs: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure seCategoriasSelect(Sender: TObject);
    procedure seMarcasSelect(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscaClienteExecute(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    FCliente : string ;
    FNombre  : String;
    FId      : Integer;
    { Private declarations }
  public
    { Public declarations }
    Cod_Marca     :string ;
    Cod_Categoria :Integer;
  published
    property Cliente:string read FCliente write FCliente;
    property Nombre:String read FNombre write FNombre;
    property Id:Integer read FId write FId;

  end;

var
  FormAltaProdutosCliente: TFormAltaProdutosCliente;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorClientes;

procedure TFormAltaProdutosCliente.seCategoriasSelect(Sender: TObject);
begin
 Cod_Categoria:= StrToInt( seCategorias.SearchList.SelectedItem.Captions[1]);
end;

procedure TFormAltaProdutosCliente.btOkClick(Sender: TObject);
begin
  FId:= -1;
  DMmain_fd.fdcGestion.StartTransaction;
  try
    spAltaProducto.Close;
    spAltaProducto.Params.ParamByName('ID_CATEGORIA').Value  := Cod_Categoria;
    spAltaProducto.Params.ParamByName('IDENTIFICADOR').Value := edIdentificador.Text;
    spAltaProducto.Params.ParamByName('DESCRIPCION').Value   := edDescripcion.Text;
    spAltaProducto.Params.ParamByName('PROPIETARIO').Value   := ceCliente.Text;
    spAltaProducto.Params.ParamByName('OBS').Value           := mObs.Lines.Text;
    spAltaProducto.Params.ParamByName('MARCA').Value         := Cod_Marca;
    spAltaProducto.Params.ParamByName('MODELO').Value        := edModelo.Text;
    spAltaProducto.ExecProc;
    Fid:= spAltaProducto.Params.ParamByName('new_ID').Value;
    spAltaProducto.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Error de Grabacion...');
  end;

end;

procedure TFormAltaProdutosCliente.BuscaClienteExecute(Sender: TObject);
begin
  ceCliente.Text:='';
  edNombreCliente.Text:='';
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
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
      edNombreCliente.Text := QClientesNOMBRE.AsString;
     END;
 end;

procedure TFormAltaProdutosCliente.FormCreate(Sender: TObject);
begin
  QMarcas.Open;
  QCategorias.Open;
  ceCliente.Text       := FCliente;
  edNombreCliente.Text := FNombre;
end;

procedure TFormAltaProdutosCliente.FormDestroy(Sender: TObject);
begin
  FormAltaProdutosCliente:=nil;
end;

procedure TFormAltaProdutosCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is TBitBtn)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TDBMemo))
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TFormAltaProdutosCliente.FormShow(Sender: TObject);
begin
  edDescripcion.SetFocus;
  ceCliente.Text       := FCliente;
  edNombreCliente.Text := FNombre;
end;

procedure TFormAltaProdutosCliente.seMarcasSelect(Sender: TObject);
begin
  cod_Marca:=  seMarcas.SearchList.SelectedItem.Captions[1];
end;

end.

