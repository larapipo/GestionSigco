unit UAjustesLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider,
  Datasnap.DBClient, JvToolEdit, JvExMask, Vcl.Mask, Vcl.DBCtrls,Types,
  IBGenerator, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormAjusteLotes = class(TFormABMBase)
    CDSAjustes: TClientDataSet;
    DSPAjustes: TDataSetProvider;
    CDSAjustesID: TIntegerField;
    CDSAjustesID_LOTE: TIntegerField;
    CDSAjustesCODIGO: TStringField;
    CDSAjustesLOTE: TStringField;
    CDSAjustesDESPACHO: TStringField;
    CDSAjustesFECHA: TSQLTimeStampField;
    CDSAjustesFECHAVTO: TSQLTimeStampField;
    CDSAjustesDEPOSITO: TIntegerField;
    CDSAjustesTIPO_COMPROB: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edId: TDBEdit;
    edLote: TDBEdit;
    edDespacho: TDBEdit;
    ceLote: TJvDBComboEdit;
    edEntra: TDBEdit;
    edSale: TDBEdit;
    edFecha: TJvDBDateEdit;
    CDSAjustesMUESTRASTOCK: TStringField;
    Label10: TLabel;
    edDetalle: TDBEdit;
    edDeposito: TDBEdit;
    CDSAjustesMUESTRADEPOSITO: TStringField;
    BuscarLote: TAction;
    CDSBuscaLotes: TClientDataSet;
    CDSBuscaLotesLOTE: TStringField;
    CDSBuscaLotesDESPACHO: TStringField;
    CDSBuscaLotesID: TIntegerField;
    CDSBuscaLotesCODIGO: TStringField;
    CDSBuscaLotesFECHA_ENTRADA: TSQLTimeStampField;
    CDSBuscaLotesFECHA_VTO: TSQLTimeStampField;
    CDSBuscaLotesDEPOSITO: TIntegerField;
    DSPBuscaLotes: TDataSetProvider;
    BuscarArticulos: TAction;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    ibAjuste: TIBGenerator;
    ceCodigo: TJvDBComboEdit;
    ComBuscadorLote: TComBuscador;
    QAjustesFD: TFDQuery;
    QAjustesFDID: TIntegerField;
    QAjustesFDID_LOTE: TIntegerField;
    QAjustesFDCODIGO: TStringField;
    QAjustesFDLOTE: TStringField;
    QAjustesFDDESPACHO: TStringField;
    QAjustesFDENTRA: TFloatField;
    QAjustesFDSALE: TFloatField;
    QAjustesFDFECHA: TSQLTimeStampField;
    QAjustesFDFECHAVTO: TSQLTimeStampField;
    QAjustesFDDEPOSITO: TIntegerField;
    QAjustesFDTIPO_COMPROB: TStringField;
    QAjustesFDMUESTRASTOCK: TStringField;
    QAjustesFDMUESTRADEPOSITO: TStringField;
    CDSAjustesENTRA: TFloatField;
    CDSAjustesSALE: TFloatField;
    CDSBuscaLotesSALDO: TFloatField;
    CDSBuscaLotesCANTIDAD: TFloatField;
    procedure BuscarLoteExecute(Sender: TObject);
    procedure CDSAjustesID_LOTESetText(Sender: TField; const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure CDSAjustesNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAjusteLotes: TFormAjusteLotes;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorArticulos, UBuscadorAjustesLotes;

procedure TFormAjusteLotes.BuscarArticulosExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       CDSStock.Close;
       CDSStock.Params.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       CDSStock.Open;
       if not(CDSStock.IsEmpty) then
         begin
           edDetalle.Text:=CDSStockDETALLE_STK.Value;
           ceCodigo.Text :=CDSStockCODIGO_STK.Value;
         end
       else
         begin
           edDetalle.Text:='';
           ceCodigo.Text :='';
         end;
       CDSStock.Close;
    end;

end;

procedure TFormAjusteLotes.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorAjustesLotes)) then
    FormBuscadorAjustesLotes:=TFormBuscadorAjustesLotes.Create(self);
  FormBuscadorAjustesLotes.showmodal;
  if FormBuscadorAjustesLotes.ModalResult=mrOk then
    begin
      DatoNew:=IntToStr(FormBuscadorAjustesLotes.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormAjusteLotes.BuscarLoteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaLotes.CommandText:='select s.* from stock_lotes_impo s where s.codigo = :codigo';
  CDSBuscaLotes.Close;
  CDSBuscaLotes.Params.ParamByName('Codigo').Value:=CDSAjustesCODIGO.Value;
  CDSBuscaLotes.Open;
    begin
   //   if DatosVentas.CDSVentaCabTIPOCPBTE.AsString<>'NC' Then
        begin
          comBuscadorLote.Execute;
          if comBuscadorLote.rOk Then
          CDSAjustesID_LOTESetText(CDSAjustesID_LOTE,comBuscadorLote.Id);
      end
    end;
  CDSBuscaLotes.Close;
end;

procedure TFormAjusteLotes.CDSAjustesID_LOTESetText(Sender: TField;
  const Text: string);
var Estado: TValueRelationship;
begin
  if (Text<>'') and (Text<>#13) then
    BEGIN
      if CDSAjustes.State=dsBrowse then
        CDSAjustes.Edit;
      Sender.AsString:=Text;
      DMMain_FD.QStockLote.Close;
      DMMain_FD.QStockLote.ParamByName('idlote').Value:=Sender.AsInteger;
      DMMain_FD.QStockLote.Open;
      CDSAjustesID_LOTE.Value         := Sender.AsInteger;
      CDSAjustesDEPOSITO.Value        := CDSAjustesDEPOSITO.Value;
      CDSAjustesLOTE.Value            := DMMain_FD.QStockLoteLote.Value;
      CDSAjustesDESPACHO.Value        := DMMain_FD.QStockLoteDESPACHO.Value;
      CDSAjustesFECHA.Value           := DMMain_FD.QStockLoteFECHA_ENTRADA.Value;
      CDSAjustesFECHAVTO.Value        := DMMain_FD.QStockLoteFECHA_VTO.Value;
      CDSAjustesMUESTRADEPOSITO.Value := DMMain_FD.QStockLoteMUESTRADEPOSITO.Value;
   END;
end;

procedure TFormAjusteLotes.CDSAjustesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAjustesID.Value           :=IBAjuste.IncrementFD(1);
  CDSAjustesFECHA.AsDateTime   :=Date;
  CDSAjustesENTRA.AsFloat      :=0;
  CDSAjustesSALE.AsFloat       :=0;
  CDSAjustesTIPO_COMPROB.Value :='AX';
  CDSAjustesDEPOSITO.Value     :=DepositoPorDefecto;
end;

procedure TFormAjusteLotes.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:= CDSAjustesID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormAjusteLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAjusteLotes.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=1;
  AddClientDataset(CDSAjustes, DSPAjustes);
  CDSAjustes.Open;
  Tabla:='ajuste_lotes';
  campo:='id';
end;

procedure TFormAjusteLotes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAjusteLotes:=nil;
end;

procedure TFormAjusteLotes.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSAjustes.Close;
  CDSAjustes.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSAjustes.Open;
end;

end.
