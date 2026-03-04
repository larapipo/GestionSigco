unit UCambiaClienteFecha_Recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB,     StdCtrls, Mask, JvExControls,
  JvGradient, ExtCtrls, Buttons, JvToolEdit, JvExMask, FMTBcd, SqlExpr, DBXCommon,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCambioClienteFecha_RC = class(TForm)
    pnPrincipal: TPanel;
    JvGradient2: TJvGradient;
    Label1: TLabel;
    Label2: TLabel;
    edNombreCliente: TEdit;
    ActionList1: TActionList;
    BuscarCliente: TAction;
    btOk: TBitBtn;
    btcancelar: TBitBtn;
    edLetra: TEdit;
    edSuc: TEdit;
    edNum: TEdit;
    lbl1: TLabel;
    ceCliente: TJvComboEdit;
    desde: TJvDateEdit;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    spCambiaClienteFecha: TFDStoredProc;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure edSucExit(Sender: TObject);
    procedure edNumExit(Sender: TObject);
  private
    { Private declarations }
    FId  :Integer;
    FFecha:TDate;
    FCliente :String;
    FPrefijo:string;
    FNumero:string;
    FLetra:string;
  public
    { Public declarations }
  published
    property Id:Integer read FId write FId;
    property Fecha:TDate read FFecha write FFecha;
    property Cliente:String read FCliente write FCliente;
    property Prefijo:String read FPrefijo write FPrefijo;
    property Numero:String read FNumero write FNumero;
    property Letra:String read FLetra write FLetra;
  end;

var
  FormCambioClienteFecha_RC: TFormCambioClienteFecha_RC;

implementation

uses UBuscadorClientes, UDMain_FD;

{$R *.dfm}

procedure TFormCambioClienteFecha_RC.btcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambioClienteFecha_RC.btOkClick(Sender: TObject);
var estado:Boolean;
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
  estado:=DMMain_FD.fdcGestion.InTransaction;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spCambiaClienteFecha.Close;
    spCambiaClienteFecha.ParamByName('id').Value         := FId;
    spCambiaClienteFecha.ParamByName('Cliente').AsString := ceCliente.Text;
    spCambiaClienteFecha.ParamByName('Fecha').AsDate     := desde.Date;
    spCambiaClienteFecha.ParamByName('suc').AsString     := edSuc.Text;
    spCambiaClienteFecha.ParamByName('Numero').AsString  := edNum.Text;
    spCambiaClienteFecha.ExecProc;
    DMMain_FD.LogFileFD(0,5,'Cambio Cliente/Fecha Recibo: Nro Cpbte:'+edNum.Text+
                            ' Id :'+IntToStr(FId)+' - Fecha '+ DateToStr(desde.Date),'RECIBO');


    DMMain_FD.fdcGestion.Commit;
    spCambiaClienteFecha.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    spCambiaClienteFecha.Close;
    ShowMessage('No se pudo realizar el cambio...');
  end;
  close;
end;

procedure TFormCambioClienteFecha_RC.BuscarClienteExecute(Sender: TObject);
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
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
      QClientes.Close;
    END;
end;

procedure TFormCambioClienteFecha_RC.ceClienteKeyPress(Sender: TObject;
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
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      QClientes.Close;
    END;
END;

procedure TFormCambioClienteFecha_RC.edNumExit(Sender: TObject);
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
end;

procedure TFormCambioClienteFecha_RC.edSucExit(Sender: TObject);
begin
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
end;

procedure TFormCambioClienteFecha_RC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambioClienteFecha_RC.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCambioClienteFecha_RC.FormDestroy(Sender: TObject);
begin
  FormCambioClienteFecha_RC:=nil;
end;

procedure TFormCambioClienteFecha_RC.FormShow(Sender: TObject);
var dato:string;
begin
  ceCliente.Text:=FCliente;
  desde.Date:=FFecha;
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
    end;
  edLetra.Text:=FLetra;
  QClientes.Close;
  edSuc.Text  :=FPrefijo;
  edNum.Text  :=FNumero;
end;

end.