unit ULoteProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvGlowButton, AdvBadge, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLoteProduccion = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    pnBase: TPanel;
    Label1: TLabel;
    edLote: TEdit;
    edFecha: TDateTimePicker;
    Label2: TLabel;
    edFechaVto: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    edCantidad: TEdit;
    Label5: TLabel;
    AdvBadgeGlowButton1: TAdvBadgeGlowButton;
    AdvBadgeGlowButton2: TAdvBadgeGlowButton;
    QLote: TFDQuery;
    spAltaStock: TFDStoredProc;
    procedure AdvBadgeGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
    FId_op,FId_Det : Integer;
    FCodigo        : String;
    FDeposito      : Integer;
    FTipoComprob   : string;
  public
    { Public declarations }
  published
    property ID_op       :Integer read fid_op write FId_op;
    property ID_Det      :Integer read FId_Det write FId_Det;
    property Codigo      :String read FCodigo write FCodigo;
    property Deposito    :Integer read FDeposito write FDeposito;
    property TipoComprob :string read FTipoComprob write FTipoComprob;
  end;

var
  FormLoteProduccion: TFormLoteProduccion;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormLoteProduccion.AdvBadgeGlowButton1Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QLote.Close;
    QLote.ParamByName('id_opt').Value       :=FId_op;
    QLote.ParamByName('id_det').Value       :=FId_Det;
    QLote.ParamByName('id_Lote').Value      :=-1;
    QLote.ParamByName('codigo').Value       :=FCodigo;
    QLote.ParamByName('lote').Value         :=edLote.Text;
    QLote.ParamByName('despacho').Value     :='-';
    QLote.ParamByName('cantidad').Value     :=edCantidad.Text;
    QLote.ParamByName('fecha').Value        :=edFecha.DateTime;
    QLote.ParamByName('fechavto').Value     :=edFechaVto.DateTime;
    QLote.ParamByName('deposito').Value     :=FDeposito;
    QLote.ParamByName('tipo_comprob').Value :=FTipoComprob;
    QLote.ExecSQL;

    spAltaStock.Close;
    spAltaStock.ParamByName('id_parte_diario').Value := -1;//CDSDiarioID.Value;
    spAltaStock.ParamByName('sucursal').Value        := DMMain_FD.SucursalPorDef;
    spAltaStock.ParamByName('cantidad').Value        := Strtofloat( edCantidad.Text);
    spAltaStock.ExecProc;
    spAltaStock.Close;



    DMMain_FD.fdcGestion.Commit;
    QLote.Close;
  finally
    DMMain_FD.fdcGestion.Rollback;
    QLote.Close;
  end;

end;

end.
