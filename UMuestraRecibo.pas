unit UMuestraRecibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXDBCtrl, StdCtrls, DBCtrls, RXCtrls, ExtCtrls, wwdbdatetimepicker,
  Wwdbigrd, Wwdbgrid, UMovValoresIngreso, Mask, Grids, DBGrids,
  ComCtrls, RXClock, Db, DBTables, Wwquery, DBClient, wwclient,
  Provider, rxToolEdit;

type
  TFormMuestraRecibo = class(TForm)
    pcDetalle: TPageControl;
    Pag1: TTabSheet;
    Label17: TLabel;
    Label2: TLabel;
    dbgAplicaciones: TDBGrid;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    ceTotalAplicaciones: TComboEdit;
    Pag2: TTabSheet;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    Pag3: TTabSheet;
    Label1: TLabel;
    ceTotalRetenciones: TComboEdit;
    wwdbgretenciones: TwwDBGrid;
    wwdbFechaRetencion: TwwDBDateTimePicker;
    pnCabecera: TPanel;
    RxLabel59: TRxLabel;
    RxLabel58: TRxLabel;
    RxLabel60: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    dbtMuestraComprobante: TDBText;
    RxLabel6: TRxLabel;
    GroupBox1: TGroupBox;
    dbeNombre: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    wwDBDFecha: TwwDBDateTimePicker;
    dbeSucursal: TDBEdit;
    dbeTotal: TDBEdit;
    dbeSaldo: TDBEdit;
    Panel3: TPanel;
    RxClock1: TRxClock;
    dbeSucVenta: TDBEdit;
    dbeCliente: TDBEdit;
    DSPRecibo: TDataSetProvider;
    wwCDSRecibo: TwwClientDataSet;
    wwCDSReciboCODIGO: TStringField;
    wwCDSReciboSUCURSAL: TIntegerField;
    wwCDSReciboID_RC: TIntegerField;
    wwCDSReciboTIPOCPBTE: TStringField;
    wwCDSReciboNROCPBTE: TStringField;
    wwCDSReciboNOMBRE: TStringField;
    wwCDSReciboRAZONSOCIAL: TStringField;
    wwCDSReciboDIRECCION: TStringField;
    wwCDSReciboCPOSTAL: TStringField;
    wwCDSReciboLOCALIDAD: TStringField;
    wwCDSReciboTIPOIVA: TIntegerField;
    wwCDSReciboCUIT: TStringField;
    wwCDSReciboFECHA: TDateTimeField;
    wwCDSReciboANULADO: TStringField;
    wwCDSReciboN_OPERACION2: TFloatField;
    wwCDSReciboVENDEDOR: TStringField;
    wwCDSReciboTOTAL: TFloatField;
    wwCDSReciboSALDO_APLICAR: TFloatField;
    wwCDSReciboIMPRESO: TStringField;
    wwCDSReciboOBSERVACION1: TStringField;
    wwCDSReciboOBSERVACION2: TStringField;
    wwCDSReciboZONA: TIntegerField;
    wwCDSReciboMUESTRASUCURSAL: TStringField;
    wwCDSReciboLETRARC: TStringField;
    wwCDSReciboSUCRC: TStringField;
    wwCDSReciboNUMERORC: TStringField;
    wwCDSReciboCLASECPBTE: TStringField;
    wwCDSReciboMUESTRACOMPROBANTE: TStringField;
    wwCDSReciboId_TipoCpbte: TIntegerField;
    DSPMovAplicaCCVta: TDataSetProvider;
    wwCDSMovAplicaCCVta: TwwClientDataSet;
    wwCDSMovAplicaCCVtaID_MOV: TIntegerField;
    wwCDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField;
    wwCDSMovAplicaCCVtaFECHA: TDateTimeField;
    wwCDSMovAplicaCCVtaCLIENTE: TStringField;
    wwCDSMovAplicaCCVtaID_CPBTE: TIntegerField;
    wwCDSMovAplicaCCVtaTIPOCPBTE: TStringField;
    wwCDSMovAplicaCCVtaNUMEROCPBTE: TStringField;
    wwCDSMovAplicaCCVtaIMPORTE: TFloatField;
    wwCDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField;
    wwCDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField;
    wwCDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField;
    wwCDSMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField;
    wwCDSMovAplicaCCVtaDETALLE: TStringField;
    wwCDSMovAplicaCCVtaCLASECPBTE: TStringField;
    DSPRetenciones: TDataSetProvider;
    wwCDSRetenciones: TwwClientDataSet;
    wwCDSRetencionesID_RETENCION: TIntegerField;
    wwCDSRetencionesFECHA_RETENCION: TDateTimeField;
    wwCDSRetencionesDETALLE: TStringField;
    wwCDSRetencionesIMPORTE: TFloatField;
    wwCDSRetencionesID_MOV_RETENCIONES: TIntegerField;
    wwCDSRetencionesTIPOCPBTE: TStringField;
    wwCDSRetencionesNROCPBTE: TStringField;
    wwCDSRetencionesID_CPBTE: TIntegerField;
    wwCDSRetencionesFECHA: TDateTimeField;
    wwCDSRetencionesCLASECPBTE: TStringField;
    wwQRetenciones: TwwQuery;
    wwQRetencionesID_MOV_RETENCIONES: TIntegerField;
    wwQRetencionesID_RETENCION: TIntegerField;
    wwQRetencionesDETALLE: TStringField;
    wwQRetencionesTIPOCPBTE: TStringField;
    wwQRetencionesNROCPBTE: TStringField;
    wwQRetencionesID_CPBTE: TIntegerField;
    wwQRetencionesFECHA: TDateTimeField;
    wwQRetencionesIMPORTE: TFloatField;
    wwQRetencionesCLASECPBTE: TStringField;
    wwQRetencionesFECHA_RETENCION: TDateTimeField;
    DSRecibo: TDataSource;
    DSMovAplicaCCVta: TDataSource;
    DSRetenciones: TDataSource;
    wwQRetencionesNRO_RETENCION: TStringField;
    wwCDSRetencionesNRO_RETENCION: TStringField;
    wwQRetencionesCODIGO_CLIENTE: TStringField;
    wwQRetencionesNOMBRE_CLIENTE: TStringField;
    wwQRetencionesCUIT_CLIENTE: TStringField;
    wwCDSRetencionesCODIGO_CLIENTE: TStringField;
    wwCDSRetencionesNOMBRE_CLIENTE: TStringField;
    wwCDSRetencionesCUIT_CLIENTE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    id          :Integer;
    Tipo        :String;
    MascaraGral :String;
    PROCEDURE CalcularAplicaciones;
    PROCEDURE calcularRetenciones;
    PROCEDURE AplicaMascaraNumerica;

    { Public declarations }
  end;

var
  FormMuestraRecibo: TFormMuestraRecibo;

implementation

{$R *.DFM}

uses DMMainForm;

PROCEDURE TFormMuestraRecibo.CalcularAplicaciones;
VAR SumaAplicaciones:Real;
BEGIN
  SumaAplicaciones := 0;
  wwCDSMovAplicaCCVta.DisableControls;
  wwCDSMovAplicaCCVta.First;
  WHILE NOT (wwCDSMovAplicaCCVta.Eof) DO
    BEGIN
      SumaAplicaciones               := SumaAplicaciones + wwCDSMovAplicaCCVtaIMPORTE.Value;
      wwCDSMovAplicaCCVta.Next;
    END;
  wwCDSMovAplicaCCVta.EnableControls;
  ceTotalAplicaciones.Text := FormatFloat(MascaraGral,SumaAplicaciones);
END;

PROCEDURE TFormMuestraRecibo.CalcularRetenciones;
VAR SumaRetenciones:Real;
BEGIN
  SumaRetenciones := 0;
  wwCDSRetenciones.DisableControls;
  wwCDSRetenciones.First;
  WHILE NOT (wwCDSRetenciones.Eof) DO
    BEGIN
      SumaRetenciones := SumaRetenciones + wwCDSRetencionesIMPORTE.Value;
      wwCDSRetenciones.Next;
    END;
  wwCDSRetenciones.EnableControls;
  ceTotalRetenciones.Text := FormatFloat(MascaraGral, SumaRetenciones);
END;


procedure TFormMuestraRecibo.AplicaMascaraNumerica;
begin
  DMMain.QOpciones.Close;
  DMMain.QOpciones.ParamByName('Opcion').Value:='RECIBOS';
  DMMain.QOpciones.Open;
  MascaraGral:=DMMain.QOpciones.Fields[0].AsString;
  TFloatField(wwCDSReciboSALDO_APLICAR).EditFormat  :=MascaraGral;
  TFloatField(wwCDSReciboTOTAL).EditFormat          :=MascaraGral;
  TFloatField(wwCDSMovAplicaCCVtaIMPORTE).EditFormat:=MascaraGral;
  TFloatField(wwCDSRetencionesIMPORTE).EditFormat   :=MascaraGral;

  TFloatField(wwCDSReciboSALDO_APLICAR).DisplayFormat  :=MascaraGral;
  TFloatField(wwCDSReciboTOTAL).DisplayFormat          :=MascaraGral;
  TFloatField(wwCDSMovAplicaCCVtaIMPORTE).DisplayFormat:=MascaraGral;
  TFloatField(wwCDSRetencionesIMPORTE).DisplayFormat   :=MascaraGral;
end;


procedure TFormMuestraRecibo.FormShow(Sender: TObject);
begin
  wwCDSRecibo.close;
  wwCDSRecibo.Params.ParamByName('id').Value := Id;
  wwCDSRecibo.Open;

  wwCDSMovAplicaCCVta.Close;
  wwCDSMovAplicaCCVta.Params.ParamByName('id').Value   := Id;
  wwCDSMovAplicaCCVta.Params.ParamByName('Tipo').Value := Tipo;
  wwCDSMovAplicaCCVta.Open;

  wwCDSRetenciones.Close;
  wwCDSRetenciones.Params.ParamByName('Id').Value := Id;
  wwCDSRetenciones.Open;

  FrameMovValoresIngreso1.TipoOperacion := 'I';

  FrameMovValoresIngreso1.wwCDSCajaMov.Close;
  FrameMovValoresIngreso1.wwCDSCajaMov.Params.ParamByName('id').Value   := Id;
  FrameMovValoresIngreso1.wwCDSCajaMov.Params.ParamByName('Tipo').Value := Tipo;
  FrameMovValoresIngreso1.wwCDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.wwCDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.wwCDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.wwCDSCajaMovID_CAJA.Value;

  FrameMovValoresIngreso1.wwCDSChe3.Close;
  FrameMovValoresIngreso1.wwCDSMovEfectivo.Close;
  FrameMovValoresIngreso1.wwCDSMovTCredito.Close;
  FrameMovValoresIngreso1.wwCDSChe3.Params.ParamByName('id').Value        := FrameMovValoresIngreso1.wwCDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.wwCDSMovEfectivo.Params.ParamByName('id').Value := FrameMovValoresIngreso1.wwCDSCajaMovID_MOV_CAJA.Value;

  FrameMovValoresIngreso1.wwCDSChe3.Open;
  FrameMovValoresIngreso1.wwCDSMovEfectivo.Open;
  FrameMovValoresIngreso1.wwCDSMovTCredito.Open;
  AplicaMascaraNumerica;
  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;


  CalcularAplicaciones;
  FrameMovValoresIngreso1.CalcularValores;
  calcularRetenciones;
  pcDetalle.ActivePageIndex:=0;


end;

procedure TFormMuestraRecibo.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  wwCDSRecibo.Close;
  wwCDSMovAplicaCCVta.Close;
  Action:=caFree;
end;

procedure TFormMuestraRecibo.FormDestroy(Sender: TObject);
begin
  FormMuestraRecibo:=nil;
end;

end.
