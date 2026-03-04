unit UMontoATransferir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, ExtCtrls, FMTBcd,
  DBCtrls, DB, DBClient, Provider, SqlExpr, JvExControls, JvGradient, Buttons,
  JvDBLookup,IniFiles,System.StrUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormMontoATransferir = class(TForm)
    pnPrincipal: TPanel;
    pnCabecera: TPanel;
    pnPie: TPanel;
    edDisponible: TJvCalcEdit;
    edTransfiere: TJvCalcEdit;
    DSCtaCaja: TDataSource;
    dbcCajaOrigen: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    CDSCtaCaja: TClientDataSet;
    DSPCtaCaja: TDataSetProvider;
    CDSCtaCajaID_CAJA: TIntegerField;
    CDSCtaCajaID_CUENTA_CAJA: TIntegerField;
    CDSCtaCajaFECHA_INCIO: TSQLTimeStampField;
    CDSCtaCajaFECHA_CIERRE: TSQLTimeStampField;
    CDSCtaCajaESTADO: TIntegerField;
    CDSCtaCajaOBS: TMemoField;
    CDSCtaCajaNUMEROCAJA: TIntegerField;
    CDSCtaCajaMUESTRACTACAJA: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    dbcCajaDestino: TDBLookupComboBox;
    CDSCajaDestino: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    MemoField1: TMemoField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    DSCajaDestino: TDataSource;
    pnFinal: TPanel;
    btTransferir: TBitBtn;
    btCancelar: TBitBtn;
    DSComprobante: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    DSPComprobante: TDataSetProvider;
    CDSComprobantesMUESTRASUCURSAL: TStringField;
    Label5: TLabel;
    dbcComprobantes: TJvDBLookupCombo;
    QCtaCaja: TFDQuery;
    CDSCtaCajaSALDO_INCIAL: TFloatField;
    CDSCajaDestinoSALDO_INCIAL: TFloatField;
    QComproba: TFDQuery;
    spTransferenciaEfectivo: TFDStoredProc;
    edObservaciones: TEdit;
    Label6: TLabel;
    procedure btCancelarClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCajaOrigen :Integer;
    FCajaDestino:Integer;
    FIdCpbte: integer;
    FImporteOrigen,FImporteDestino:Real;
    FTxOk:Boolean;
    FFecha:  TDateTime;
    { Private declarations }
  public
    { Public declarations }
    procedure Transferir;

  published
    ArchivoIni:TInifile;
    property Fecha     : TDateTime read FFecha write FFecha;
    property CajaOrigen: Integer read FCajaOrigen write FCajaOrigen;
    property CajaDestino: Integer read FCajaDestino write FCajaDestino;
    property IdCpbte: Integer read FIdCpbte write FIdCpbte;
    property ImporteOrigen:Real read FImporteOrigen write FImporteOrigen;
    property TxOk:Boolean read FTxOk write FTxOk;

  end;

var
  FormMontoATransferir: TFormMontoATransferir;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormMontoATransferir.btCancelarClick(Sender: TObject);
begin
  DMMain_FD.LogFileFD(1,2,'Cancelacion Transferencia Caja Cta.:'+dbcCajaOrigen.Text+' Hacia >>'+dbcCajaDestino.Text+' - '+
                          'Comprobante:'+dbcComprobantes.Text+'-- Monto:'+ FormatFloat(',0.00',edTransfiere.Value),
                          'CAJATX');

  Close;
end;

procedure TFormMontoATransferir.Transferir;
VAR Monto:String;
begin
  if (VarIsNull(dbcCajaDestino.KeyValue) or (dbcCajaDestino.Text='')) then
    Raise Exception.Create('No se especifico la caja destino');
  if (VarIsNull(dbcComprobantes.KeyValue)) or (dbcComprobantes.KeyValue=-1)  then
    Raise Exception.Create('No se especifico el comprobante de Transferencia a Usar');
  if Trunc(edTransfiere.Value*100)> Trunc(edDisponible.Value*100) then
     if MessageDlg('Intenta Transferir un monto mayor al disponible... esta seguro??',mtConfirmation,mbYesNo,0,mbyes)=mrNo Then
       Raise Exception.Create('Operacin Cancelada por Monto Superior al Disponible.....');
  if (dbcCajaOrigen.KeyValue<>dbcCajaDestino.KeyValue) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spTransferenciaEfectivo.Close;
        spTransferenciaEfectivo.Params.ParamByName('ID_CAJA_ORIGEN').AsInteger  := CajaOrigen;
        spTransferenciaEfectivo.Params.ParamByName('ID_CAJA_DESTINO').AsInteger := dbcCajaDestino.KeyValue;// CajaDestino;
        spTransferenciaEfectivo.Params.ParamByName('SUCURSAL').AsInteger        := dbcComprobantes.LookupSource.DataSet.FieldByName('sucursal').Value;
        spTransferenciaEfectivo.Params.ParamByName('MONTO').AsFloat             := edTransfiere.Value;
        spTransferenciaEfectivo.Params.ParamByName('FECHA').AsDate              := FFecha;
        spTransferenciaEfectivo.Params.ParamByName('OBSERVACIONES').AsString    := edObservaciones.Text;

        spTransferenciaEfectivo.ExecProc;
        spTransferenciaEfectivo.Close;
        DMMain_FD.LogFileFD(0,2,'Transferencia Efectivo de Caja Cta.:'+dbcCajaOrigen.Text+' Hacia >>'+dbcCajaDestino.Text+' - '+
                                'Comprobante:'+dbcComprobantes.Text+'-- Monto a Tx:'+ FormatFloat(',0.00',edTransfiere.Value)+
                                '<-> Monto Disp.:'+ FormatFloat(',0.00',edDisponible.Value),
                                'CAJATX');
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;

end;

procedure TFormMontoATransferir.btTransferirClick(Sender: TObject);
begin
  Transferir;
  Close;
end;

procedure TFormMontoATransferir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CajaTx')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_CajaTx.ini');
  //*************************************************************
  ArchivoIni.WriteInteger('Caja', 'Destino', dbcCajaDestino.KeyValue);
  ArchivoIni.WriteInteger('Caja', 'Comprobante', dbcComprobantes.KeyValue);
  ArchivoIni.Free;

  CDSCtaCaja.Close;

  Action:=caFree;
end;

procedure TFormMontoATransferir.FormCreate(Sender: TObject);
begin

  AutoSize:=True;
  CDSCtaCaja.Open;
  CDSCajaDestino.Open;
  CDSComprobantes.Open;
  FFecha  :=  Date;
end;

procedure TFormMontoATransferir.FormDestroy(Sender: TObject);
begin
  FormMontoATransferir:=nil;
end;

procedure TFormMontoATransferir.FormShow(Sender: TObject);
begin
  CDSCtaCaja.Close;
  CDSCtaCaja.Open;

  CDSCajaDestino.Close;
  CDSCajaDestino.Open;

  CDSCajaDestino.Filter  := 'id_cuenta_caja<>'+IntToStr(FCajaOrigen);
  CDSCajaDestino.Filtered:= True;
  dbcCajaOrigen.KeyValue := FCajaOrigen;

  if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CajaTx')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_CajaTx.ini');

  if (FCajaDestino <> Null) and (FCajaDestino > 0) then
    dbcCajaDestino.KeyValue := FCajaDestino
  else
    dbcCajaDestino.KeyValue   := ArchivoIni.ReadInteger('Caja', 'Destino', -1);

  if (FIdCpbte <> Null) and (FIdCpbte > 0) then
    dbcComprobantes.KeyValue  :=  FIdCpbte
  else
    dbcComprobantes.KeyValue  := ArchivoIni.ReadInteger('Caja', 'Comprobante', -1);

  ArchivoIni.Free;


  edDisponible.Value     := FImporteOrigen;
  edTransfiere.Value     := FImporteOrigen;

  if Visible then
    begin
      edTransfiere.SetFocus;
      edTransfiere.SelectAll;
    end;
end;

end.
