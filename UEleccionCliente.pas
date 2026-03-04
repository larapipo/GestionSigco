unit UEleccionCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, System.Actions,
  Vcl.ActnList, Data.DB, Data.SqlExpr, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, JvExMask, JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Controls;

type
  TFormEleccionClientes = class(TForm)
    Label1: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    pnBase: TPanel;
    ActionList1: TActionList;
    BuscarCliente: TAction;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo Write fcodigo;
  end;

var FormEleccionClientes:TFormEleccionClientes;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorClientes;

procedure TFormEleccionClientes.BitBtn1Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
  FCodigo:='';
  Close;
end;

procedure TFormEleccionClientes.btOkClick(Sender: TObject);
begin
  FCodigo     :=Trim(ceCliente.text);
  //ModalResult :=mrOk;
 // Close;
end;

procedure TFormEleccionClientes.BuscarClienteExecute(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes :=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo :='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
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

    END;
end;

procedure TFormEleccionClientes.ceClienteKeyPress(Sender: TObject; var Key: Char);
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
    END;
end;

procedure TFormEleccionClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormEleccionClientes.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormEleccionClientes.FormDestroy(Sender: TObject);
begin
  FormEleccionClientes:=Nil;
end;

end.
