unit UIngresoCantNT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, Buttons, ExtCtrls,db;

type
  TFormIngresoCantidadNT = class(TForm)
    pnBase: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TDBText;
    BitBtn1: TBitBtn;
    dbePedido: TJvDBCalcEdit;
    dbeFaltante: TJvDBCalcEdit;
    dbeLote: TDBEdit;
    btOk: TBitBtn;
    dbeEntrega: TDBEdit;
    edCodigoEAN: TEdit;
    dbeCodigo: TDBEdit;
    procedure btOkClick(Sender: TObject);
    procedure edCodigoEANKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIngresoCantidadNT: TFormIngresoCantidadNT;

implementation

uses DMNotasTransf;

{$R *.dfm}

procedure TFormIngresoCantidadNT.btOkClick(Sender: TObject);
begin
 if DatosNotaTransferencia.CDSNDet.State<>dsBrowse then
    DatosNotaTransferencia.CDSNDet.Post;
  edCodigoEAN.SetFocus;
  edCodigoEAN.SelectAll;
end;

procedure TFormIngresoCantidadNT.edCodigoEANKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
    begin
      Key:=#0;
      if DatosNotaTransferencia.CDSNDet.Locate('EAN',edCodigoEAN.Text,[])=False Then
        begin
          DatosNotaTransferencia.QBuscaCodigoBarra.Close;
          DatosNotaTransferencia.QBuscaCodigoBarra.ParamByName('codigo').Value:=edCodigoEAN.Text;
          DatosNotaTransferencia.QBuscaCodigoBarra.Open;
          if DatosNotaTransferencia.CDSNDet.Locate('CODIGOARTICULO',DatosNotaTransferencia.QBuscaCodigoBarra.Fields[0].AsString,[])=False Then
            ShowMessage('dato no encontrado');
          DatosNotaTransferencia.QBuscaCodigoBarra.Close;
        end
      else
        begin
          dbeEntrega.SetFocus;
          dbeEntrega.SelectAll;
        end;
    end;
end;

procedure TFormIngresoCantidadNT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caHide; 
end;

procedure TFormIngresoCantidadNT.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormIngresoCantidadNT.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TEdit))
  then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    Close;
end;

procedure TFormIngresoCantidadNT.FormShow(Sender: TObject);
begin
  edCodigoEAN.SetFocus;
  edCodigoEAN.SelectAll;
end;

end.
