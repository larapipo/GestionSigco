unit UCambioCajaMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvDBLookup, ExtCtrls, FMTBcd, Buttons,
  JvGradient, SqlExpr, Provider, DB, DBClient, JvExMask, JvToolEdit,
  JvDBControls, Mask, DBCtrls,IniFiles, DBXCommon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCambioCajaMov = class(TForm)
    pnBase: TPanel;
    dbcCajaDestino: TJvDBLookupCombo;
    CtaCajaDestino: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CDSCaja: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    FMTBCDField1: TFloatField;
    IntegerField3: TIntegerField;
    MemoField1: TMemoField;
    IntegerField4: TIntegerField;
    DSCaja: TDataSource;
    DSCtasCaja: TDataSource;
    CDSCtasCaja: TClientDataSet;
    DSPCaja: TDataSetProvider;
    QCaja: TFDQuery;
    btTransferir: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    spTransferir: TFDStoredProc;
    dbcCaja: TJvDBLookupCombo;
    QCtasCaja: TFDQuery;
    DSPCtasCaja: TDataSetProvider;
    CDSCtasCajaID_CUENTA: TIntegerField;
    CDSCtasCajaID_TIPO_CTA: TIntegerField;
    CDSCtasCajaNOMBRE: TStringField;
    CDSCtasCajaNRO_CUENTA: TStringField;
    CDSCtasCajaID_BANCO: TIntegerField;
    CDSCtasCajaCUIT: TStringField;
    CDSCtasCajaRAZONSOCIAL: TStringField;
    QCajaOrigen: TFDQuery;
    QCajaOrigenID_CAJA: TIntegerField;
    QCajaOrigenID_CUENTA_CAJA: TIntegerField;
    QCajaOrigenFECHA_INCIO: TSQLTimeStampField;
    QCajaOrigenFECHA_CIERRE: TSQLTimeStampField;
    QCajaOrigenSALDO_INCIAL: TFloatField;
    QCajaOrigenESTADO: TIntegerField;
    QCajaOrigenOBS: TMemoField;
    QCajaOrigenNUMEROCAJA: TIntegerField;
    QCajaOrigenMUESTRACTACAJA: TStringField;
    Edit1: TDBEdit;
    dbcCajaOrigen: TDBEdit;
    DSCajaOrigen: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    cxDBDateEdit1: TDBEdit;
    cxDBDateEdit2: TDBEdit;
    JvDBDateEdit1: TDBEdit;
    JvDBDateEdit2: TDBEdit;
    Bevel1: TBevel;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbcCajaDestinoChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    FIDCaja:Integer;
    FIDCtaCaja:Integer;
    FID_Cpbte:Integer;
    FClaseCpbte:String;
    FTipoCpbte:String;
    FTipoOp:String;
    FDetalle:String;
  public
    { Public declarations }
    CambioCajaIni        :TIniFile;
    procedure Transferir;
  published
    property IDCaja:Integer read FIDCaja write FIDCaja;
    property IDCtaCaja:Integer read FIDCtaCaja write FIDCtaCaja;
    property ID_Cpbte:Integer read FID_Cpbte write FID_Cpbte;
    property ClaseCpbte:String read FClaseCpbte write FClaseCpbte;
    property TipoCpbte:String read FTipoCpbte write FTipoCpbte;
    property TipoOp:String read FTipoOp write FTipoOp;
    property Detalle:String read FDetalle write FDetalle;
  end;

var
  FormCambioCajaMov: TFormCambioCajaMov;

implementation

{$R *.dfm}
Uses UDMain_FD, DMStoreProcedureForm;

procedure TFormCambioCajaMov.Transferir;
var Detalle:String;
begin
  if ((FTipoCpbte<>'TX') and (FTipoCpbte<>'QX') and
      (FTipoCpbte<>'QR') and (FTipoCpbte<>'QT') and
      (FTipoCpbte<>'XP') and //(FTipoCpbte<>'XR') and
      (FTipoCpbte<>'ZI') and (FTipoCpbte<>'CC')) and
      (Trim(dbcCajaDestino.Text)<>'') and (Trim(dbcCaja.Text)<>'') then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spTransferir.Close;
        spTransferir.Params.ParamByName('Tipo_op').AsString           := FTipoOp;
        spTransferir.Params.ParamByName('TipoCpbte').AsString         := FTipoCpbte;
        spTransferir.Params.ParamByName('ClaseCpbte').AsString        := FClaseCpbte;
        spTransferir.Params.ParamByName('Id_Cpbte').AsInteger         := FID_Cpbte;
        spTransferir.Params.ParamByName('Caja_destino').AsInteger     := dbcCaja.KeyValue;
        spTransferir.Params.ParamByName('Caja_destino_cta').AsInteger := dbcCajaDestino.KeyValue;
        spTransferir.Params.ParamByName('Caja_Origen').AsInteger      := FIDCaja;
        spTransferir.Params.ParamByName('Caja_Origen_cta').AsInteger  := FIDCtaCaja;
        spTransferir.ExecProc;

        Detalle:= 'Cambio de Caja: '+
                  'Origen:'+'('+Edit1.Text+')' +dbcCajaOrigen.Text+'>>'+
                  'Destino: '+'('+dbcCaja.Text+')'+ dbcCajaDestino.Text+
                  ' '+FTipoCpbte+'-'+FClaseCpbte+'-'+FDetalle+'('+IntToStr(FID_Cpbte)+')';

        DMMain_FD.LogFileFD(0,2,Detalle,'CAMBIOCAJA');

        {
        DMStoreProcedure.spGravarLogDBX.Close;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 2;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Cambio de Caja: '+
                                                                 'Origen:'+'('+Edit1.Text+')' +dbcCajaOrigen.Text+'>>'+
                                                                 'Destino: '+'('+dbcCaja.Text+')'+ dbcCajaDestino.Text+
                                                                 ' '+FTipoCpbte+'-'+FClaseCpbte+'-'+FDetalle+'('+IntToStr(FID_Cpbte)+')';
        DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='CAMBIOCAJA';
        DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
        DMStoreProcedure.spGravarLogDBX.ExecProc;
        DMStoreProcedure.spGravarLogDBX.Close;
         }
       DMMain_FD.fdcGestion.Commit;

      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Operacion no finalizada/ puede estar no permitida por tener Mov. de Che de 3º....');
      end;
    end
  else
    ShowMessage('No Permitdo para este tipo de Movimientos...');
end;

procedure TFormCambioCajaMov.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambioCajaMov.btTransferirClick(Sender: TObject);
begin
  if (VarIsNull(dbcCaja.KeyValue) or (dbcCaja.KeyValue=0)) then
    Raise Exception.Create('No se eligio el Nro de Caja....');
  if (VarIsNull(dbcCajaDestino.KeyValue) or (dbcCajaDestino.KeyValue=0)) then
    Raise Exception.Create('No se eligio La caja Destino....');

  Transferir;
  Close;
end;

procedure TFormCambioCajaMov.CheckBox1Click(Sender: TObject);
begin
  CDSCtasCaja.Close;
  CDSCtasCaja.Params.ParamByName('estado').Value:=-1;
  CDSCtasCaja.Open;
end;

procedure TFormCambioCajaMov.dbcCajaDestinoChange(Sender: TObject);
begin
 CDSCaja.Close;
 CDSCaja.Params.ParamByName('cta_caja').Value:=dbcCajaDestino.KeyValue;
 CDSCaja.Open;
end;

procedure TFormCambioCajaMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
BEGIN
  CambioCajaIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CambiaCaja.ini');
  //*************************************************************
  CambioCajaIni.WriteInteger('id_caja', 'id_Cta_caja', dbcCajaDestino.KeyValue);
  CambioCajaIni.WriteInteger('id_caja', 'id_caja', dbcCaja.KeyValue);
  CambioCajaIni.Free;

  Action := caFree;
end;

procedure TFormCambioCajaMov.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSCtasCaja.Close;
 // CDSCtasCaja.Params.ParamByName('estado').Value:=0;
  CDSCtasCaja.Open;
end;

procedure TFormCambioCajaMov.FormDestroy(Sender: TObject);
begin
  FormCambioCajaMov:=nil;
end;

procedure TFormCambioCajaMov.FormShow(Sender: TObject);
begin
  QCajaOrigen.Close;
  QCajaOrigen.ParamByName('id_caja').Value:=FIDCaja;
  QCajaOrigen.Open;

  CDSCaja.Close;
  CDSCaja.Params.ParamByName('cta_caja').Value:=dbcCajaDestino.KeyValue;
  CDSCaja.Open;

  CambioCajaIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CambiaCaja.ini');
  //*************************************************************
  dbcCajaDestino.KeyValue  :=CambioCajaIni.ReadInteger('id_caja', 'id_Cta_caja', -1);
  dbcCaja.KeyValue         :=CambioCajaIni.ReadInteger('id_caja', 'id_caja', -1);
  CambioCajaIni.Free;

end;

end.
