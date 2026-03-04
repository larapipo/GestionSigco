unit UValoresImportacionVtas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel, Data.DB;

type
  TFormValoresIngresarImporVtas = class(TForm)
    Panel1: TPanel;
    dbgCajaMov: TJvDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    dbgEfectivo: TJvDBGrid;
    Label3: TLabel;
    dbgTCredito: TJvDBGrid;
    Label4: TLabel;
    dbgCheques: TJvDBGrid;
    btCerra: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCerraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormValoresIngresarImporVtas: TFormValoresIngresarImporVtas;

implementation

uses DMImportacion,DMImportacion_Input, UDMain_FD, UListCpbteNoImportados;
{$R *.dfm}

procedure TFormValoresIngresarImporVtas.btCerraClick(Sender: TObject);
begin
  Close;
end;

procedure TFormValoresIngresarImporVtas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormValoresIngresarImporVtas.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormValoresIngresarImporVtas.FormDestroy(Sender: TObject);
begin
  FormValoresIngresarImporVtas:=nil;
end;

end.
