unit UClonadoListaPrecio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, DB,
    JvExControls, JvGradient, JvWaitingGradient, FMTBcd, SqlExpr,
  ComCtrls, JvLabel, DBXCommon, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormClonadorListaPrecio = class(TForm)
    pnPrincipal: TPanel;
    edLista: TEdit;
    edNombre: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btCancelar: TButton;
    btClonar: TButton;
    edCoeficiente: TJvMaskEdit;
    lbsAviso: TJvLabel;
    spClonarFD: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btClonarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FLista:Integer;
  published
    property Lista :integer read fLista write fLista;
  end;

var
  FormClonadorListaPrecio: TFormClonadorListaPrecio;

implementation

{$R *.dfm}
uses UDMain_FD;
procedure TFormClonadorListaPrecio.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormClonadorListaPrecio.btClonarClick(Sender: TObject);
begin
  Sleep(1);
  Application.ProcessMessages;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    lbsAviso.Visible :=True;
    Application.ProcessMessages;
    Sleep(1);
    spClonarFD.close;
    spClonarFD.ParamByName('coeficiente').Value := StrToFloat( edCoeficiente.Text);
    spClonarFD.ParamByName('desde_lista').Value := StrToInt( edLista.Text);
    spClonarFD.ParamByName('nombre_lista').Value:= edNombre.Text;
    spClonarFD.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spClonarFD.Close;
    lbsAviso.Visible :=False;
    Application.ProcessMessages;
    ShowMessage('Clonacion Terminada....');
  Except
    spClonarFD.Close;
    DMMain_FD.fdcGestion.Rollback;

    lbsAviso.Visible :=False;
    Application.ProcessMessages;
    ShowMessage('No se pudo generar la clonación....');
  end;
  Screen.Cursor:=crDefault;
  Close;
end;

procedure TFormClonadorListaPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormClonadorListaPrecio.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  edLista.Text:=IntToStr(Lista);
  edNombre.Text:='';
  edCoeficiente.Text:='1';

end;

procedure TFormClonadorListaPrecio.FormDestroy(Sender: TObject);
begin
  FormClonadorListaPrecio:=nil;
end;

procedure TFormClonadorListaPrecio.FormShow(Sender: TObject);
begin
  edLista.Text       :=IntToStr(Lista);
  edNombre.Text      :='';
  edCoeficiente.Text :='1';
  edNombre.SetFocus;
end;

end.
