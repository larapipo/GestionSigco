unit UChequesPropios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, rxToolEdit, RXDBCtrl, StdCtrls, Mask, DBCtrls, Wwdatsrc,
  Provider, DBClient, wwclient, Db, Wwquery,  rxrxPlacemnt,
  wwDialog, wwidlg, DBTables, ActnList, RXCtrls, Buttons, ToolWin,
  ComCtrls, ExtCtrls, RxLookup;

type
  TFormAnulaCheques = class(TFormABMBase)
    wwQCheques: TwwQuery;
    DSPCheques: TDataSetProvider;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dbeNumero: TDBEdit;
    dbEmision: TDBDateEdit;
    dbCobro: TDBDateEdit;
    dbeUnidades: TDBEdit;
    dbeImporte: TDBEdit;
    dbeOrdende: TDBEdit;
    Label1: TLabel;
    Label6: TLabel;
    dbeObs: TDBEdit;
    QBancos: TQuery;
    DSBancos: TDataSource;
    RxDBCBancos: TRxDBLookupCombo;
    Bevel1: TBevel;
    QBuscador: TQuery;
    CDSCheques: TClientDataSet;
    CDSChequesID_CHEQUE_PRO: TIntegerField;
    CDSChequesID_CAJA: TIntegerField;
    CDSChequesID_MOV_CAJA: TIntegerField;
    CDSChequesID_FPAGO: TIntegerField;
    CDSChequesID_CHEQUERA: TIntegerField;
    CDSChequesID_BANCO: TIntegerField;
    CDSChequesFECHA_EMISION: TDateTimeField;
    CDSChequesFECHA_COBRO: TDateTimeField;
    CDSChequesORDEN_DE: TStringField;
    CDSChequesNUMERO: TIntegerField;
    CDSChequesUNIDADES: TFloatField;
    CDSChequesIMPORTE: TFloatField;
    CDSChequesCOTIZACION: TFloatField;
    CDSChequesID_CUENTA_CAJA: TIntegerField;
    CDSChequesID_CUENTA_BANCO: TIntegerField;
    CDSChequesMONEDA: TIntegerField;
    CDSChequesANULADO: TStringField;
    CDSChequesOBSERVACIONES: TStringField;
    QBuscadorID_CHEQUE_PRO: TIntegerField;
    QBuscadorID_CHEQUERA: TIntegerField;
    QBuscadorID_BANCO: TIntegerField;
    QBuscadorFECHA_EMISION: TDateTimeField;
    QBuscadorFECHA_COBRO: TDateTimeField;
    QBuscadorORDEN_DE: TStringField;
    QBuscadorNUMERO: TIntegerField;
    QBuscadorIMPORTE: TFloatField;
    QBuscadorANULADO: TStringField;
    cbCondicion: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnulaCheques: TFormAnulaCheques;

implementation

uses DMMainForm;
{$R *.DFM}

procedure TFormAnulaCheques.FormCreate(Sender: TObject);
begin
  inherited;
  AddClientDataSet(CDSCheques,DSPCheques);
  CDSCheques.OPen;
  QBancos.Open;
  pnPrincipal.Enabled:=True;
end;

procedure TFormAnulaCheques.BuscarExecute(Sender: TObject);
begin
  inherited;
  if RxDBCBancos.Value<>'' Then
    begin
       QBuscador.Close;
       QBuscador.ParamByName('id').Value:=RxDBCBancos.KeyValue;
       if cbCondicion.Checked=True Then
         begin
           QBuscador.ParamByName('condicion').Value:='S';
           Modificar.Caption:='&Restituir';
         end
       else
         if cbCondicion.Checked=False Then
           begin
             QBuscador.ParamByName('condicion').Value:='N';
             Modificar.Caption:='&Anular';
           end;
       QBuscador.Open;
       if wwBuscador.Execute Then
         if wwBuscador.LookupTable.FieldByName('id_cheque_pro').AsString<>'' Then
           begin
             CDSCheques.Close;
             CDSCheques.Params.ParamByName('id').Value:=wwBuscador.LookupTable.FieldByName('id_cheque_pro').AsInteger;
             CDSCheques.Open;
           end;
       QBuscador.Close;
    end
  else
    ShowMessage('No se selecciono el banco emisor');
end;

procedure TFormAnulaCheques.ModificarExecute(Sender: TObject);
begin
  inherited;
  if CDSChequesANULADO.Value='N' Then
    CDSChequesANULADO.Value :='S'
  else
    if CDSChequesANULADO.Value='S' Then
      CDSChequesANULADO.Value :='N';

//  CDSChequesIMPORTE.Value :=0;
//  CDSChequesUNIDADES.Value:=0;
 // CDSChequesORDEN_DE.Value:='Cheque Anulado';
  dbeObs.SetFocus;
end;

procedure TFormAnulaCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAnulaCheques.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnulaCheques:=nil;
end;

procedure TFormAnulaCheques.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
end;

end.
