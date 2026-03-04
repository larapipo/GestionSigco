unit UCambiaFecha_Cta_LiqTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, JvExControls,
  JvGradient, Buttons, JvDBLookup, Mask, JvExMask, JvToolEdit, ExtCtrls,
  DBXCommon, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambioFechaLiqTC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Fecha: TJvDateEdit;
    FecFiscal: TJvDateEdit;
    dbcCajaDestino: TJvDBLookupCombo;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    JvGradient1: TJvGradient;
    CtaCajaDestino: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DSPCtasCaja: TDataSetProvider;
    CDSCtasCaja: TClientDataSet;
    CDSCtasCajaID_CUENTA: TIntegerField;
    CDSCtasCajaID_TIPO_CTA: TIntegerField;
    CDSCtasCajaNOMBRE: TStringField;
    CDSCtasCajaNRO_CUENTA: TStringField;
    CDSCtasCajaID_BANCO: TIntegerField;
    CDSCtasCajaCUIT: TStringField;
    CDSCtasCajaRAZONSOCIAL: TStringField;
    DSCtasCaja: TDataSource;
    chIva: TCheckBox;
    chContabiliza: TCheckBox;
    QUpdateLiqFD: TFDQuery;
    QCtasCaja: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
  FormCambioFechaLiqTC: TFormCambioFechaLiqTC;

implementation

uses UDMain_FD, DMStoreProcedureForm;

{$R *.dfm}

procedure TFormCambioFechaLiqTC.btOkClick(Sender: TObject);
begin
  DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value       := FecFiscal.Date;
  DMStoreProcedure.QVerificaPeriodoFiscal.Open;
  if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
    begin
      Raise Exception.Create('Fecha no Valida, este período fiscal no esta permitido');
      FecFiscal.Date:=FFechaFiscal;
    end;

  DMMain_FD.fdcGestion.StartTransaction;
  try
    QUpdateLiqFD.Close;
    QUpdateLiqFD.ParamByName('fecha').AsDate      :=Fecha.Date;

    QUpdateLiqFD.ParamByName('fechaFiscal').AsDate:=FecFiscal.Date;

    if chContabiliza.Checked then
      QUpdateLiqFD.ParamByName('contabiliza').AsString  :='S'
    else
      QUpdateLiqFD.ParamByName('contabiliza').AsString  :='N';

    if chIva.Checked then
      QUpdateLiqFD.ParamByName('IngIva').AsString       :='S'
    else
      QUpdateLiqFD.ParamByName('IngIva').AsString       :='N';

    QUpdateLiqFD.ParamByName('id_cta').AsInteger      :=dbcCajaDestino.KeyValue;
    QUpdateLiqFD.ParamByName('idLiq').AsInteger       :=FIdLiq;
    QUpdateLiqFD.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Realizo la Operación.....');
  end;
  QUpdateLiqFD.Close;
end;

procedure TFormCambioFechaLiqTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambioFechaLiqTC.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSCtasCaja.Close;
  CDSCtasCaja.Open;
end;

procedure TFormCambioFechaLiqTC.FormDestroy(Sender: TObject);
begin
  FormCambioFechaLiqTC:=nil;
end;

procedure TFormCambioFechaLiqTC.FormShow(Sender: TObject);
begin
  Fecha.Date             :=FFechaOP;
  FecFiscal.Date         :=FFechaFiscal;
  dbcCajaDestino.KeyValue:=FIdCta;
  chIva.Checked          :=FIngIva;
  chContabiliza.Checked  :=FContabiliza;
end;

end.
