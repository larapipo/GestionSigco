unit UReferenciasPreciosClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFormReferencias = class(TForm)
    jvpReferencias: TPanel;
    btCerrar: TButton;
    dbgArticulos: TJvDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReferencias: TFormReferencias;

implementation

uses UPrecioEspecialCliente;

{$R *.dfm}

procedure TFormReferencias.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormReferencias.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
