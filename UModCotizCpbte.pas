unit UModCotizCpbte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits;

type
  TFormCambioCotizCpbte = class(TForm)
    JvCalcEdit1: TJvCalcEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
   FCotizacion:Extended;
   FId:Integer;
  public
    { Public declarations }
  published
    property Cotizacion:Extended read FCotizacion write FCotizacion;
    property Id:Integer read FId write FId;
  end;

var
  FormCambioCotizCpbte: TFormCambioCotizCpbte;

implementation
uses DMStoreProcedureForm;
{$R *.dfm}

procedure TFormCambioCotizCpbte.BitBtn1Click(Sender: TObject);
begin
  if (DMStoreProcedure.Actualiza_Cotiz_Cpbte(FId,JvCalcEdit1.Value)) Then
    close;
//  DMStoreProcedure.spActualiza_cotiz_cpbte.Close;
//  DMStoreProcedure.spActualiza_cotiz_cpbte.ParamByName('ID_CPBTE').AsInteger :=FId;
//  DMStoreProcedure.spActualiza_cotiz_cpbte.ParamByName('COTIZACION').AsFLoat :=JvCalcEdit1.Value;;
//  DMStoreProcedure.spActualiza_cotiz_cpbte.ExecProc;
//  DMStoreProcedure.spActualiza_cotiz_cpbte.Close;

end;

procedure TFormCambioCotizCpbte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambioCotizCpbte.FormShow(Sender: TObject);
begin
  JvCalcEdit1.Value:=FCotizacion;
end;

end.
