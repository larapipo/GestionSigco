unit UEgresos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,RemoteDB.Client.Database,RemoteDB.Client.Dataset,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.Buttons, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  AdvDBLookupComboBox, JvExControls, JvDBLookup,IniFiles;

type
  TFormEgresos = class(TForm)
    pnCab: TPanel;
    pnPie: TPanel;
    DSPCuentas: TDataSetProvider;
    CDSCuentas: TClientDataSet;
    CDSCuentasCODIGO: TStringField;
    CDSCuentasCODIGO_RUBRO: TStringField;
    CDSCuentasDETALLE: TStringField;
    CDSCuentasEXCLUYE: TStringField;
    CDSCuentasMUESTRARUBRO: TStringField;
    DSCuentas: TDataSource;
    sBuscar: TDBAdvSearchEdit;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    edImporte: TJvCalcEdit;
    QCuentas: TFDQuery;
    spAgregarGasto: TFDStoredProc;
    QComprobante: TFDQuery;
    DSPComprobante: TDataSetProvider;
    CDSComprobante: TClientDataSet;
    DSComprobante: TDataSource;
    CDSComprobanteID_COMPROBANTE: TIntegerField;
    CDSComprobanteTIPO_COMPROB: TStringField;
    CDSComprobanteCLASE_COMPROB: TStringField;
    CDSComprobanteDENOMINACION: TStringField;
    CDSComprobanteSUCURSAL: TStringField;
    dbcComprobante: TJvDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    pnCabecera: TPanel;
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sBuscarSelect(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure sBuscarKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
    FIDComprobante:Integer;
    FServerUri:String;
    FIdCtaCaja:Integer;
  public
    { Public declarations }
  published
    ArchivoIni:TInifile;
    property IDComprobante :Integer read FIDComprobante write FIDComprobante;
    property ServerUri:String read FServerUri write FServerUri;
    property IdCtaCaja:Integer read FIdCtaCaja write FIdCtaCaja;
  end;

var
  FormEgresos: TFormEgresos;

implementation

uses  UDMain_FD;

{$R *.dfm}


procedure TFormEgresos.btOkClick(Sender: TObject);
var Cod:String;
begin
  if dbcComprobante.KeyValue<0 then
    raise Exception.Create('No Hay Comprobante seleccionado');

  Cod:=sBuscar.SearchList.SelectedItem.Captions[0];
  try
    DMMain_FD.fdcGestion.StartTransaction;
      begin
        spAgregarGasto.Close;
        spAgregarGasto.ParamByName('ID_COMPROBANTE').Value := dbcComprobante.KeyValue;
        spAgregarGasto.ParamByName('FECHA').Value          := Date;
        spAgregarGasto.ParamByName('IMPORTE').AsFloat      := edImporte.Value;
        spAgregarGasto.ParamByName('USUARIO').Value        := DMMain_FD.UsuarioActivo;
        spAgregarGasto.ParamByName('CODIGOGASTO').Value    := Cod;
        spAgregarGasto.ParamByName('ID_CUENTA_CAJA').Value := IdCtaCaja;
        spAgregarGasto.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      end;
    except
      DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormEgresos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_GastosCaja')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_GastosCaja.ini');
  //*************************************************************
  ArchivoIni.WriteInteger('Caja', 'Comprobante', dbcComprobante.KeyValue);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormEgresos.FormCreate(Sender: TObject);
begin
  CDSCuentas.Open;
  CDSComprobante.Open;
  if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_GastosCaja')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_GastosCaja.ini');
  //*************************************************************
  dbcComprobante.KeyValue:= ArchivoIni.ReadInteger('Caja', 'Comprobante', -1);
  ArchivoIni.Free;

end;

procedure TFormEgresos.FormDestroy(Sender: TObject);
begin
  FormEgresos:=nil;
end;

procedure TFormEgresos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) and
    (not (ActiveControl is Tbutton)) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    if btCancelar.Enabled Then
      btCancelar.Click;

end;

procedure TFormEgresos.FormShow(Sender: TObject);
begin
  if dbcComprobante.KeyValue<=0 then
     dbcComprobante.SetFocus
  else
    begin
      sBuscar.SetFocus;
      sBuscar.SelectAll;
    end;
end;

procedure TFormEgresos.sBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      Key:=#0;
      edImporte.SetFocus;
    end;
end;

procedure TFormEgresos.sBuscarSelect(Sender: TObject);
begin
  CDSCuentas.Locate('codigo',sBuscar.SearchList.SelectedItem.Captions[0],[]);
end;

end.
