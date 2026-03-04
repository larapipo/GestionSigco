unit UCargarLoteTC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,StrUtils,
  JvBaseEdits, Vcl.Buttons, Vcl.ExtCtrls, JvExControls, JvDBLookup,IniFiles;

type
  TMovTc =record
          ID         :Integer;
          NroCupon   :Integer;
          Lote       :String[5];
          Terminal   :string[8];
          Importe    :Extended;
        end;
type
  TFormCargaLoteTC = class(TForm)
    QTarjetas: TFDQuery;
    CDSTCredito: TClientDataSet;
    DSTCredito: TDataSource;
    DSPTCredito: TDataSetProvider;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    CDSTCreditoNROLOTE: TStringField;
    CDSTCreditoTERMINAL: TStringField;
    dbgTarjetas: TDBGrid;
    CDSTCreditoIMPORTE: TFloatField;
    pnBase: TPanel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    edTotal: TJvCalcEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    dbcComprobantes: TJvDBLookupCombo;
    QComproba: TFDQuery;
    DSPComprobante: TDataSetProvider;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesMUESTRASUCURSAL: TStringField;
    DSComprobante: TDataSource;
    procedure dbgTarjetasEnter(Sender: TObject);
    procedure CDSTCreditoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure CDSTCreditoBeforeInsert(DataSet: TDataSet);
    procedure CDSTCreditoBeforeDelete(DataSet: TDataSet);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSTCreditoNROLOTESetText(Sender: TField; const Text: string);
    procedure CDSTCreditoTERMINALSetText(Sender: TField; const Text: string);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgTarjetasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FIdComprobante:Integer;
    FImporte      :Extended;
  public
    { Public declarations }

    ArchivoIni:TInifile;
    LstMov    : array [1..30] of TMovTC;
    procedure sumar;
  published
    property idComprobante:Integer read FIdComprobante write FIdComprobante;
    property Importe:Extended read FImporte write FImporte;
  end;


var
  FormCargaLoteTC: TFormCargaLoteTC;


implementation

uses UDMain_FD;
{$R *.dfm}


procedure TFormCargaLoteTC.btCancelarClick(Sender: TObject);
begin
  FIdComprobante := -1;
  FImporte       := 0;

end;

procedure TFormCargaLoteTC.btOkClick(Sender: TObject);
var i:integer;
begin
  if CDSTCredito.State<>dsBrowse then
    CDSTCredito.Post;
  CDSTCredito.First;
  i:=1;
  while not(CDSTCredito.Eof) do
    begin
      if CDSTCreditoIMPORTE.Value>0 then
        begin
          LstMOv[i].ID         := CDSTCreditoID_TC.Value;
          LstMOv[i].NroCupon   := 0;
          LstMOv[i].Lote       := CDSTCreditoNROLOTE.Value;
          LstMOv[i].Terminal   := CDSTCreditoTERMINAL.Value;
          LstMOv[i].Importe    := CDSTCreditoIMPORTE.Value;
          i:=i+1;
        end;
      CDSTCredito.Next;
    end;
  FIdComprobante := dbcComprobantes.KeyValue;
  FImporte       := edTotal.Value;
end;

procedure TFormCargaLoteTC.CDSTCreditoAfterPost(DataSet: TDataSet);
begin
  sumar;
end;

procedure TFormCargaLoteTC.CDSTCreditoBeforeDelete(DataSet: TDataSet);
begin
  CDSTCredito.Cancel;
end;

procedure TFormCargaLoteTC.CDSTCreditoBeforeInsert(DataSet: TDataSet);
begin
  CDSTCredito.Cancel;
end;

procedure TFormCargaLoteTC.CDSTCreditoNROLOTESetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=AnsiRightStr('00000'+Text,5);
end;

procedure TFormCargaLoteTC.CDSTCreditoTERMINALSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=AnsiRightStr('000000000'+Text,8);
end;

procedure TFormCargaLoteTC.dbgTarjetasEnter(Sender: TObject);
begin
  if dbgTarjetas.SelectedIndex=0 then
    dbgTarjetas.SelectedIndex:=1;
end;

procedure TFormCargaLoteTC.dbgTarjetasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    if dbgTarjetas.SelectedIndex<3 then
      dbgTarjetas.SelectedIndex:=dbgTarjetas.SelectedIndex+1

end;

procedure TFormCargaLoteTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni               := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_LoteTCCaja.ini');
  ArchivoIni.WriteInteger('LoteCaja', 'Reemplazo', dbcComprobantes.KeyValue);
  ArchivoIni.Free;

  //Action:=caFree;
end;

procedure TFormCargaLoteTC.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSTCredito.Close;
  CDSTCredito.Open;
  CDSComprobantes.Close;
  CDSComprobantes.Open;
  ArchivoIni               := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_LoteTCCaja.ini');
  dbcComprobantes.KeyValue := ArchivoIni.ReadInteger('LoteCaja', 'Reemplazo', -1);
  edTotal.Value            := 0;
  ArchivoIni.Free;
end;

procedure TFormCargaLoteTC.FormDestroy(Sender: TObject);
begin
  FormCargaLoteTC:=nil;
end;

procedure TFormCargaLoteTC.FormShow(Sender: TObject);
begin
  CDSTCredito.Close;
  CDSTCredito.Open;
  edTotal.Value:=0;
end;

procedure TFormCargaLoteTC.sumar;
var aux:Real;
P:TBookmark;
begin
  aux:=0;
  P:=CDSTCredito.GetBookmark;
  CDSTCredito.First;
  CDSTCredito.DisableControls;
  while not(CDSTCredito.Eof) do
    begin
      aux:=aux+CDSTCreditoIMPORTE.Value;
      CDSTCredito.Next;
    end;
  CDSTCredito.First;
  CDSTCredito.EnableControls;
  CDSTCredito.GotoBookmark(P);
  CDSTCredito.FreeBookmark(P);
  edTotal.Value:=aux;
end;

end.
