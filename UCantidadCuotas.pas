unit UCantidadCuotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin, Mask, JvExMask, JvToolEdit,
  JvBaseEdits;

type
  TFormCantidadCuotas = class(TForm)
    Panel1: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    seCuotas: TSpinEdit;
    Label1: TLabel;
    seIntervalo: TSpinEdit;
    Label2: TLabel;
    edAdelanto: TJvCalcEdit;
    Label3: TLabel;
    edFecha: TJvDateEdit;
    Label4: TLabel;
    edVtoAnticipo: TJvDateEdit;
    Label5: TLabel;
    procedure btOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCuotas   :Integer;
    FIntervalo:Integer;
    FAnticipo :Extended;
    FFecha    :TDateTime;
    FVtoAnticipo:TDateTime;
  public
    { Public declarations }
  published
    property Cuotas:Integer read FCuotas write FCuotas;
    property Intervalo:Integer read FIntervalo write FIntervalo;
    property Anticipo:Extended read FAnticipo write FAnticipo;
    property Fecha:TDateTime read FFecha write FFecha;
    property VtoAnticipo:TDateTime read FVtoAnticipo write FVtoAnticipo;

  end;

var
  FormCantidadCuotas: TFormCantidadCuotas;

implementation

{$R *.dfm}

procedure TFormCantidadCuotas.btOkClick(Sender: TObject);
begin
  FCuotas      := seCuotas.Value;
  FAnticipo    := edAdelanto.Value;
  FFecha       := edFecha.Date;
  FVtoAnticipo := edVtoAnticipo.Date;
  FIntervalo   := seIntervalo.Value;
end;

procedure TFormCantidadCuotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCantidadCuotas.FormCreate(Sender: TObject);
begin
  AutoSize           := True;
  edAdelanto.Value   := 0;
  edFecha.Date       := Date;
  edVtoAnticipo.Date := Date;
end;

procedure TFormCantidadCuotas.FormDestroy(Sender: TObject);
begin
  FormCantidadCuotas:=nil;
end;

end.
