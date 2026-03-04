unit UBuscadorXidentificador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorXidentific = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    DSBuscador: TDataSource;
    CDSBuscadorID_OT: TIntegerField;
    CDSBuscadorTIPOCPBTE: TStringField;
    CDSBuscadorNROCPBTE: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    CDSBuscadorIDENTIFICADORPRODUCTO: TStringField;
    CDSBuscadorDESCRIPCIONPRODUCTO: TStringField;
    CDSBuscadorCLASECPBTE: TStringField;
    edDato: TEdit;
    btAceptar: TBitBtn;
    btCancelar: TBitBtn;
    QBuscador: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDatoChange(Sender: TObject);
    procedure edDatoEnter(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    FId_Rec:Integer;
    { Private declarations }
  public
    { Public declarations }
   published
     property id_rec:Integer read FId_Rec write FId_Rec;

  end;

var
  FormBuscadorXidentific: TFormBuscadorXidentific;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormBuscadorXidentific.btAceptarClick(Sender: TObject);
begin
  id_rec:=CDSBuscadorID_OT.Value;
  Close;
end;

procedure TFormBuscadorXidentific.btCancelarClick(Sender: TObject);
begin
 id_rec:=-1;
 Close;
end;

procedure TFormBuscadorXidentific.edDatoChange(Sender: TObject);
begin
// if Trim(edDato.Text)<>'' then
   begin
     CDSBuscador.Close;
     CDSBuscador.Params.ParamByName('dato').AsString:=UpperCase(Trim(edDato.Text));
     CDSBuscador.Open;
   end;

end;

procedure TFormBuscadorXidentific.edDatoEnter(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorXidentific.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorXidentific.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorXidentific.FormDestroy(Sender: TObject);
begin
  FormBuscadorXidentific:=Nil;
end;

procedure TFormBuscadorXidentific.JvDBGrid1DblClick(Sender: TObject);
begin
  btAceptar.OnClick(sender);

end;

end.
