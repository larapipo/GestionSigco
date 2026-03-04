unit UBuscadorCodRipsa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.Provider, Datasnap.DBClient,
  Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement;

type
  TFormBuscadorCodRipsa = class(TForm)
    QRipsa: TFDQuery;
    DSRipsa: TDataSource;
    Panel1: TPanel;
    CDSRipsa: TClientDataSet;
    DSPRips: TDataSetProvider;
    CDSRipsaCODIGO: TStringField;
    CDSRipsaCODIGO_RIPSA: TStringField;
    CDSRipsaNOMBRE: TStringField;
    CDSRipsaRAZON_SOCIAL: TStringField;
    CDSRipsaDIRECCION_COMERCIAL: TStringField;
    dbgCodigos: TDBGrid;
    edDato: TJvDBFindEdit;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    Label1: TLabel;
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbgCodigosDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edDatoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FCodigo :string;
  public
    { Public declarations }
  published
    property Codigo:string read FCodigo write FCodigo;
  end;

var
  FormBuscadorCodRipsa: TFormBuscadorCodRipsa;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormBuscadorCodRipsa.btAceptarClick(Sender: TObject);
begin
  FCodigo:=CDSRipsaCODIGO.Value;
end;

procedure TFormBuscadorCodRipsa.btCancelarClick(Sender: TObject);
begin
  FCodigo:='';
end;

procedure TFormBuscadorCodRipsa.dbgCodigosDblClick(Sender: TObject);
begin
  btAceptar.Click;
end;

procedure TFormBuscadorCodRipsa.edDatoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_UP then
    begin
    //  if not(CDSRipsa.Eof) then
        CDSRipsa.Prior;
    end
  else
  if Key=VK_DOWN then
    begin
      if not(CDSRipsa.Eof) then
        CDSRipsa.Next;
    end
end;

procedure TFormBuscadorCodRipsa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorCodRipsa.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  CDSRipsa.Close;
  CDSRipsa.Open;
end;

procedure TFormBuscadorCodRipsa.FormDestroy(Sender: TObject);
begin
  FormBuscadorCodRipsa:=nil;
end;

procedure TFormBuscadorCodRipsa.FormShow(Sender: TObject);
begin
  edDato.SetFocus;
  BringToFront;
end;

end.
