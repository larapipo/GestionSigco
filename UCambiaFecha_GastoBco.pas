unit UCambiaFecha_GastoBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, JvExControls, JvDBLookup,
  StdCtrls, Mask, JvExMask, JvToolEdit, Buttons, JvGradient, ExtCtrls, DBXCommon,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons;

type
  TFormCambioFechaGastoBco = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    Fecha: TJvDateEdit;
    FecFiscal: TJvDateEdit;
    dbcCajaDestino: TJvDBLookupCombo;
    CtaCajaDestino: TLabel;
    DSCtasCaja: TDataSource;
    QCtasCaja: TFDQuery;
    QCtasCajaID_CUENTA: TIntegerField;
    QCtasCajaID_TIPO_CTA: TIntegerField;
    QCtasCajaNOMBRE: TStringField;
    QCtasCajaNRO_CUENTA: TStringField;
    QCtasCajaID_BANCO: TIntegerField;
    QCtasCajaCUIT: TStringField;
    QCtasCajaRAZONSOCIAL: TStringField;
    QUpdateGasto: TFDQuery;
    chIva: TAdvOfficeCheckBox;
    chContabiliza: TAdvOfficeCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
 private
    { Private declarations }
    FFechaOP     :TDateTime;
    FFechaFiscal :TDateTime;
    FIdCta       :Integer;
    FIdLiq       :Integer;
    FIngIva      :Boolean;
    FContabiliza :Boolean;
  public
    { Public declarations }
  published
    property FechaOp     :TDateTime read FFechaOp write FFechaOp;
    property FechaFiscal :TDateTime read FFechaFiscal write FFechaFiscal;
    property IdCta :Integer read FIdCta write FIdCta;
    property IdLiq :Integer read FIdLiq write FIdLiq;
    property IngIva :Boolean read FIngIva write FIngIva;
    property Contabiliza :Boolean read FContabiliza write FContabiliza;
  end;
var
  FormCambioFechaGastoBco: TFormCambioFechaGastoBco;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormCambioFechaGastoBco.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QUpdateGasto.Close;
    QUpdateGasto.ParamByName('fecha').AsDate      :=Fecha.Date;
    QUpdateGasto.ParamByName('fechaFiscal').AsDate:=FecFiscal.Date;

    if chContabiliza.Checked then
      QUpdateGasto.ParamByName('contabiliza').AsString  :='S'
    else
      QUpdateGasto.ParamByName('contabiliza').AsString  :='N';

    if chIva.Checked then
      QUpdateGasto.ParamByName('IngIva').AsString       :='S'
    else
      QUpdateGasto.ParamByName('IngIva').AsString       :='N';

    QUpdateGasto.ParamByName('id_cta').AsInteger        := dbcCajaDestino.KeyValue;
    QUpdateGasto.ParamByName('idgasto').AsInteger       := FIdLiq;
    QUpdateGasto.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Realizo la Operación.....');
  end;
  QUpdateGasto.Close;
end;

procedure TFormCambioFechaGastoBco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambioFechaGastoBco.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QCtasCaja.Close;
  QCtasCaja.Open;
end;

procedure TFormCambioFechaGastoBco.FormDestroy(Sender: TObject);
begin
 FormCambioFechaGastoBco:=nil;
end;

procedure TFormCambioFechaGastoBco.FormShow(Sender: TObject);
begin
  Fecha.Date             :=FFechaOP;
  FecFiscal.Date         :=FFechaFiscal;
  dbcCajaDestino.KeyValue:=FIdCta;
  chIva.Checked          :=FIngIva;
  chContabiliza.Checked  :=FContabiliza;
end;

end.
