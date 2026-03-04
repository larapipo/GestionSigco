unit UProveedor_x_CtaOrden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvDBControls, ExtCtrls,
  Buttons, ActnList, FMTBcd, DB, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions;

type
  TFormProveedor_x_CtaOrden = class(TForm)
    pnPrincipal: TPanel;
    Proveedor: TLabel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    ActionList: TActionList;
    BuscarProveedor: TAction;
    edNombre: TEdit;
    ceProveedor: TJvComboEdit;
    QProveedores: TFDQuery;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
  private
    FCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property codigo:string read FCodigo write FCodigo;
  end;

var
  FormProveedor_x_CtaOrden: TFormProveedor_x_CtaOrden;

implementation

uses UBuscadorProveedor,UDMain_FD;

{$R *.dfm}

procedure TFormProveedor_x_CtaOrden.btOkClick(Sender: TObject);
begin
  FCodigo:=ceProveedor.Text;
end;

procedure TFormProveedor_x_CtaOrden.btCancelarClick(Sender: TObject);
begin
  FCodigo:='';
end;

procedure TFormProveedor_x_CtaOrden.BuscarProveedorExecute(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorProveedor)) THEN
    FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      QProveedores.Close;
      QProveedores.ParamByName('codigo').Value:=FormBuscadorProveedor.Codigo;
      QProveedores.Open;
      ceProveedor.Text :=QProveedoresCODIGO.Value;
      edNombre.Text    :=QProveedoresNOMBRE.Value;
      QProveedores.Close;
    end;

end;

procedure TFormProveedor_x_CtaOrden.ceProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      ceProveedor.Text:=copy('000000',1,6-Length(Trim(ceProveedor.Text)))+Trim(ceProveedor.Text);

      QProveedores.Close;
      QProveedores.ParamByName('codigo').Value:=ceProveedor.Text;
      QProveedores.Open;
      if (QProveedoresCODIGO.AsString<>'') then
        begin
          ceProveedor.Text :=QProveedoresCODIGO.Value;
          edNombre.Text    :=QProveedoresNOMBRE.Value;
          FCodigo:=QProveedoresCODIGO.Value;
        end
      else
        begin
          ceProveedor.Text :='';
          edNombre.Text    :='';
          FCodigo:='';
        end;
      QProveedores.Close;
    end;
end;

procedure TFormProveedor_x_CtaOrden.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormProveedor_x_CtaOrden.FormCreate(Sender: TObject);
begin
  ceProveedor.Text :='';
  edNombre.Text    :='';
  FCodigo          :='';
  AutoSize:=True;
end;

procedure TFormProveedor_x_CtaOrden.FormDestroy(Sender: TObject);
begin
  FormProveedor_x_CtaOrden:=nil;
end;

end.
