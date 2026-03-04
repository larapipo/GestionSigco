unit UCambiaProv_Fecha_OPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ActnList, StdCtrls, Buttons,   Mask,
  JvExControls, JvGradient, ExtCtrls, JvExMask, JvToolEdit, FMTBcd, SqlExpr,DBXCommon,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCambiaProvFecha_OPago = class(TForm)
    pnPrincipal: TPanel;
    JvGradient2: TJvGradient;
    Label1: TLabel;
    Label2: TLabel;
    lbl1: TLabel;
    edNombreProveedor: TEdit;
    btOk: TBitBtn;
    btcancelar: TBitBtn;
    edLetra: TEdit;
    edSuc: TEdit;
    edNum: TEdit;
    ActionList1: TActionList;
    BuscarProveedor: TAction;
    desde: TJvDateEdit;
    ceProveedor: TJvComboEdit;
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
    spCambiaClienteFecha: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
  private
    FId  :Integer;
    FFecha:TDate;
    FProveedor :String;
    FPrefijo:string;
    FNumero:string;
    FLetra:string;
    FSucursal:Integer;
    FClase:string;
  public
    { Public declarations }
  published
    property Id:Integer read FId write FId;
    property Fecha:TDate read FFecha write FFecha;
    property Provedor:String read FProveedor write FProveedor;
    property Prefijo:String read FPrefijo write FPrefijo;
    property Numero:String read FNumero write FNumero;
    property Letra:String read FLetra write FLetra;
    property Sucursal:Integer read FSucursal write FSucursal;
    property Clase:String read FClase write FClase;

  end;

var
  FormCambiaProvFecha_OPago: TFormCambiaProvFecha_OPago;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorProveedor;

procedure TFormCambiaProvFecha_OPago.btcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambiaProvFecha_OPago.btOkClick(Sender: TObject);
var FechaStr:String;
NroCpbte:string;
begin
  FechaStr:=DateToStr(desde.Date);
  while pos('/',FechaStr)<>0 Do
        delete(FechaStr,pos('/',FechaStr),1);
  if (Trim(FechaStr)<>'') and
     (ceProveedor.Text<>'') and
     (edNombreProveedor.Text<>'') and (desde.Date>0) then
    begin
     edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
      edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
      NroCpbte:=FLetra+edSuc.Text+edNum.Text;
      if (edNum.Text<>FNumero) and (edSuc.Text<>FPrefijo) then
        if DMMain_FD.VerificaNroOP(edSuc.Text,edNum.Text,FClase,FLetra,FSucursal) Then
          raise Exception.Create('Nro ya Cargado................');

      DMMain_FD.fdcGestion.StartTransaction;
      try
        spCambiaClienteFecha.Close;
        spCambiaClienteFecha.ParamByName('id_op').AsInteger  :=FId;
        spCambiaClienteFecha.ParamByName('Codigo').AsString  :=ceProveedor.Text;
        spCambiaClienteFecha.ParamByName('Fecha').ASDate     :=desde.Date;
        spCambiaClienteFecha.ParamByName('suc').AsString     :=edSuc.Text;
        spCambiaClienteFecha.ParamByName('Numero').AsString  :=edNum.Text;
        spCambiaClienteFecha.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo realizar el cambio...');
      end;
      close;
    end;
end;

procedure TFormCambiaProvFecha_OPago.BuscarProveedorExecute(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.PopupMode:= pmAuto;
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceProveedor.Text :=FormBuscadorProveedor.Codigo;
      QProveedores.Close;
      QProveedores.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      QProveedores.Open;
      IF NOT (QProveedores.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := QProveedoresNOMBRE.Value;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;

    END;

end;

procedure TFormCambiaProvFecha_OPago.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCambiaProvFecha_OPago.FormDestroy(Sender: TObject);
begin
 FormCambiaProvFecha_OPago:=nil;
end;

procedure TFormCambiaProvFecha_OPago.FormShow(Sender: TObject);
var dato:string;
begin
  ceProveedor.Text:=FProveedor;
  desde.Date:=FFecha;
  Dato:='';
  if (Trim(ceProveedor.Text)<>'') then
    Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) + ceProveedor.Text;
  ceProveedor.Text := Dato;
  QProveedores.Close;
  QProveedores.ParamByName('Codigo').Value := Dato;
  QProveedores.Open;
  IF NOT(QProveedores.IsEmpty) THEN
    begin
      edNombreProveedor.Text := QProveedoresNOMBRE.Value;
    end;
  edLetra.Text:=FLetra;
  edSuc.Text  :=FPrefijo;
  edNum.Text  :=FNumero;
end;



end.