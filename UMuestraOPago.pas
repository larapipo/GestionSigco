unit UMuestraOPago;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, FMTBcd, SqlExpr, JvExControls, JvLabel, DB, DBClient, Provider, DBCtrls,
  ExtCtrls, UMovValoresEgresos,   Mask, Grids, DBGrids, ComCtrls,
  JvExMask, JvToolEdit, JvDBControls, JvBaseEdits;

type
  TFormMuestraOPago = class(TForm)
    pcDetalle: TPageControl;
    Pag1: TTabSheet;
    Label17: TLabel;
    Label2: TLabel;
    dbgAplicaciones: TDBGrid;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    Pag2: TTabSheet;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    GroupBox1: TGroupBox;
    dbeNombre: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeTotal: TDBEdit;
    dbeSaldo: TDBEdit;
    Panel3: TPanel;
    DSPOPago: TDataSetProvider;
    DSPMovAplicaCCCompra: TDataSetProvider;
    DSOPago: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CDSOPago: TClientDataSet;
    CDSOPagoID_OP: TIntegerField;
    CDSOPagoTIPOCPBTE: TStringField;
    CDSOPagoCLASECPBTE: TStringField;
    CDSOPagoNROCPBTE: TStringField;
    CDSOPagoCODIGO: TStringField;
    CDSOPagoLETRAOP: TStringField;
    CDSOPagoSUCOP: TStringField;
    CDSOPagoNUMEROOP: TStringField;
    CDSOPagoNOMBRE: TStringField;
    CDSOPagoRAZONSOCIAL: TStringField;
    CDSOPagoDIRECCION: TStringField;
    CDSOPagoCPOSTAL: TStringField;
    CDSOPagoLOCALIDAD: TStringField;
    CDSOPagoTIPOIVA: TIntegerField;
    CDSOPagoCUIT: TStringField;
    CDSOPagoNRO_IIBB: TStringField;
    CDSOPagoFECHA: TSQLTimeStampField;
    CDSOPagoANULADO: TStringField;
    CDSOPagoN_OPERACION2: TFMTBCDField;
    CDSOPagoTOTAL: TFMTBCDField;
    CDSOPagoSALDO_APLICAR: TFMTBCDField;
    CDSOPagoOBSERVACION1: TStringField;
    CDSOPagoOBSERVACION2: TStringField;
    CDSOPagoSUCURSAL: TIntegerField;
    CDSOPagoDESCUENTO: TFMTBCDField;
    CDSOPagoDESGLOZAIVA: TStringField;
    CDSOPagoNC_ID_FC: TIntegerField;
    CDSOPagoNC_LETRAFAC: TStringField;
    CDSOPagoNC_SUCFAC: TStringField;
    CDSOPagoNC_NUMEROFAC: TStringField;
    CDSOPagoTASA_PERCEPCIONIVA: TFMTBCDField;
    CDSOPagoTASA_PERCEPCIONIB: TFMTBCDField;
    CDSOPagoUSUARIO: TStringField;
    CDSOPagoTOTAL_NETO_GRAVADO: TFMTBCDField;
    CDSOPagoTOTAL_PAGOS_DEL_MES: TFMTBCDField;
    CDSOPagoTOTAL_RETENIDO_MES: TFMTBCDField;
    CDSOPagoTASA_RETENCION_GANACIA: TFMTBCDField;
    CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFMTBCDField;
    CDSOPagoRETIENE_GANACIAS: TStringField;
    CDSOPagoRETENCION_GANACIA_GENERADO: TStringField;
    CDSOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField;
    CDSOPagoCONCEPTO_RETENCION_GANACIA: TStringField;
    CDSOPagoIMPUESTO_MINIMO_GANANCIA: TFMTBCDField;
    CDSOPagoRETIENE_IIBB: TStringField;
    CDSOPagoTASA_RETENCION_IIBB: TFMTBCDField;
    CDSOPagoMINIMO_IMPONIBLE_RET_IIBB: TFMTBCDField;
    CDSOPagoFECHA_HORA: TSQLTimeStampField;
    CDSOPagoMUESTRASUCURSAL: TStringField;
    CDSOPagoMUESTRACOMPROBANTE: TStringField;
    CDSOPagoID_TIPOCOMPROBANTE: TIntegerField;
    CDSOPagoDESCUENTO_PORCENTAJE: TFMTBCDField;
    CDSOPagoTOTAL_NETO: TFMTBCDField;
    CDSOPagoSUMAAPLICACIONES: TFloatField;
    CDSMovAplicaCCCompra: TClientDataSet;
    CDSMovAplicaCCCompraID_MOV: TIntegerField;
    CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField;
    CDSMovAplicaCCCompraFECHA: TSQLTimeStampField;
    CDSMovAplicaCCCompraPROVEEDOR: TStringField;
    CDSMovAplicaCCCompraID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraTIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraCLASECPBTE: TStringField;
    CDSMovAplicaCCCompraNUMEROCPBTE: TStringField;
    CDSMovAplicaCCCompraIMPORTE: TFMTBCDField;
    CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_NETO: TFMTBCDField;
    CDSMovAplicaCCCompraDETALLE: TStringField;
    CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField;
    CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFMTBCDField;
    CDSMovAplicaCCCompraCONCILIADO: TStringField;
    DSMovAplicaCCCompra: TDataSource;
    dbeTotalNeto: TDBEdit;
    dbeDesctoPorcentaje: TDBEdit;
    debDescuento: TDBEdit;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel8: TJvLabel;
    JvLabel1: TJvLabel;
    pnl1: TPanel;
    dbtNC_NROCOMPROB: TDBText;
    dbtNc: TDBText;
    dbtSuc: TDBText;
    DBDFecha: TJvDBDateEdit;
    ceTotalAplicaciones: TJvCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:Integer;
    Tipo:String;
    MascaraGral           :String;
    PROCEDURE CalcularAplicaciones;
    procedure AplicaMascaraNumerica;

  end;

var
  FormMuestraOPago: TFormMuestraOPago;

implementation

{$R *.DFM}

uses  UDMain_FD;

PROCEDURE TFormMuestraOPago.CalcularAplicaciones;
VAR Aux:Real;
BEGIN
  Aux:=0;
  CDSMovAplicaCCCompra.DisableControls;
  CDSMovAplicaCCCompra.First;
  WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
    BEGIN
      Aux:=Aux+CDSMovAplicaCCCompraIMPORTE.AsFloat;
      CDSMovAplicaCCCompra.Next;
    END;
  CDSMovAplicaCCCompra.EnableControls;
  ceTotalAplicaciones.Value := Aux;
END;


procedure TFormMuestraOPago.AplicaMascaraNumerica;
begin
  MascaraGral:=',0.00';
  TFMTBCDField(CDSOPagoSALDO_APLICAR).EditFormat      :=MascaraGral;
  TFMTBCDField(CDSOPagoTOTAL).EditFormat              :=MascaraGral;
  TFMTBCDField(CDSMovAplicaCCCompraIMPORTE).EditFormat:=MascaraGral;

  TFMTBCDField(CDSOPagoSALDO_APLICAR).DisplayFormat      :=MascaraGral;
  TFMTBCDField(CDSOPagoTOTAL).DisplayFormat              :=MascaraGral;
  TFMTBCDField(CDSMovAplicaCCCompraIMPORTE).DisplayFormat:=MascaraGral;

end;

procedure TFormMuestraOPago.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraOPago.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSOPago.Close;
  CDSMovAplicaCCCompra.Close;
  Action:=caFree;
end;

procedure TFormMuestraOPago.FormDestroy(Sender: TObject);
begin
  FormMuestraOPago:=nil;
end;

procedure TFormMuestraOPago.FormShow(Sender: TObject);
begin
    AplicaMascaraNumerica;
    FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

    CDSOPago.close;
    CDSOPago.Params.ParamByName('id').Value :=  id;
    CDSOPago.Open;

    CDSMovAplicaCCCompra.Close;
    CDSMovAplicaCCCompra.Params.ParamByName('id').Value   := id;
    CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Value := tipo;
    CDSMovAplicaCCCompra.Open;

    FrameMovValoresEgresos1.TipoOperacion := 'E';

    FrameMovValoresEgresos1.CDSCheques.Close;
    FrameMovValoresEgresos1.CDSChe3.Close;
    FrameMovValoresEgresos1.CDSMovEfectivo.Close;

    FrameMovValoresEgresos1.CDSCajaMov.Close;
    FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := id;
    FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := tipo;
    FrameMovValoresEgresos1.CDSCajaMov.Open;

    FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
    FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
    FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;

    FrameMovValoresEgresos1.CDSChe3.Close;
    FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
    FrameMovValoresEgresos1.CDSChe3.Open;

    FrameMovValoresEgresos1.CDSMovEfectivo.Close;
    FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
    FrameMovValoresEgresos1.CDSMovEfectivo.Open;

    FrameMovValoresEgresos1.CDSCheques.Close;
    FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
    FrameMovValoresEgresos1.CDSCheques.Open;

    FrameMovValoresEgresos1.CalcularValores;
    pcDetalle.ActivePageIndex:=0;
    CalcularAplicaciones;
end;

end.