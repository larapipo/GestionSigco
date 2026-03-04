unit UConciliacionChePropios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Mask,   Buttons, Grids, DBGrids, ExtCtrls, ActnList, Db,
  DBClient, Provider,  Librerias, JvExMask, JvToolEdit, JvDBControls,
  JvExDBGrids, JvDBGrid, JvExControls, JvGradient, JvDBLookup, FMTBcd, SqlExpr,
  DBXCommon, Menus, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement;

type
  TFormConciliacionChePropios = class(TForm)
    DSBancos: TDataSource;
    DSPCheques: TDataSetProvider;
    CDSCheques: TClientDataSet;
    DSCheques: TDataSource;
    ActionList1: TActionList;
    Buscar: TAction;
    Aceptar: TAction;
    Salir: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    btAceptar: TBitBtn;
    BitBtn1: TBitBtn;
    btSalir: TBitBtn;
    dbgChe: TJvDBGrid;
    JvDBDateEdit1: TJvDBDateEdit;
    sbEstado: TStatusBar;
    chFechaDebito: TCheckBox;
    dbcBancoas: TJvDBLookupCombo;
    CDSChequesFECHA_EMISION: TSQLTimeStampField;
    CDSChequesFECHA_COBRO: TSQLTimeStampField;
    CDSChequesID_CHEQUE_PRO: TIntegerField;
    CDSChequesID_CHEQUERA: TIntegerField;
    CDSChequesMUESTRACHEQUERA: TStringField;
    CDSChequesID_CUENTA_BANCO: TIntegerField;
    CDSChequesMUESTRACUENTACAJABCO: TStringField;
    CDSChequesID_BANCO: TIntegerField;
    CDSChequesORDEN_DE: TStringField;
    CDSChequesNUMERO: TIntegerField;
    CDSChequesFECHA_DEBITO: TSQLTimeStampField;
    CDSChequesDEBITADO: TStringField;
    CDSChequesFECHA: TDateField;
    chFechaEmision: TCheckBox;
    PonerFechaDebito: TAction;
    BitBtn2: TBitBtn;
    ModificarChe: TAction;
    PopupMenu1: TPopupMenu;
    ModificarChe1: TMenuItem;
    QBancos: TFDQuery;
    QBancosID_CUENTA: TIntegerField;
    QBancosID_TIPO_CTA: TIntegerField;
    QBancosNOMBRE: TStringField;
    QBancosNRO_CUENTA: TStringField;
    QBancosID_BANCO: TIntegerField;
    QBancosCUIT: TStringField;
    QBancosRAZONSOCIAL: TStringField;
    QCheques: TFDQuery;
    CDSChequesUNIDADES: TFloatField;
    CDSChequesIMPORTE: TFloatField;
    spDebitar: TFDStoredProc;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSChequesBeforeInsert(DataSet: TDataSet);
    procedure CDSChequesFechaSetText(Sender: TField; const Text: String);
    procedure btAceptarClick(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure dbgCheuqesDblClick(Sender: TObject);
    procedure dbgCheTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgCheDblClick(Sender: TObject);
    procedure dbgCheMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgCheKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgCheColEnter(Sender: TObject);
    procedure dbcBancoasClick(Sender: TObject);
    procedure chFechaEmisionClick(Sender: TObject);
    procedure chFechaDebitoClick(Sender: TObject);
    procedure PonerFechaDebitoExecute(Sender: TObject);
    procedure ModificarCheExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConciliacionChePropios: TFormConciliacionChePropios;

implementation

{$R *.DFM}

uses UDMain_FD, UCambiaFechaNroChe;

procedure TFormConciliacionChePropios.BuscarExecute(Sender: TObject);
begin
 if dbcBancoas.Value<>'' Then
    begin
       CDSCheques.Close;
       CDSCheques.Params.ParamByName('id').Value:=dbcBancoas.KeyValue;
       CDSCheques.Open;
     end
  else
    ShowMessage('No se selecciono el banco emisor');
 dbgChe.Width:=dbgChe.Width-1;
 dbgChe.Width:=dbgChe.Width+1;

end;

procedure TFormConciliacionChePropios.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QBancos.Open;
end;

procedure TFormConciliacionChePropios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QBancos.Close;
  Action:=caFree;
end;

procedure TFormConciliacionChePropios.FormDestroy(Sender: TObject);
begin
  FormConciliacionChePropios:=nil;
end;

procedure TFormConciliacionChePropios.FormResize(Sender: TObject);
begin
  if FormConciliacionChePropios<>nil then
    if FormConciliacionChePropios.Width<>746 then
      FormConciliacionChePropios.Width:=746;
end;

procedure TFormConciliacionChePropios.ModificarCheExecute(Sender: TObject);
var P:TBookmark;
begin

  P:=CDSCheques.GetBookmark;
  if Not(Assigned(FormModificarDatosChPropio)) then
    FormModificarDatosChPropio:=TFormModificarDatosChPropio.Create(Self);
  FormModificarDatosChPropio.id          := CDSChequesID_CHEQUE_PRO.Value;
  FormModificarDatosChPropio.Id_Cta_Bco  := CDSChequesID_CUENTA_BANCO.Value;
  FormModificarDatosChPropio.FechaEmision:= CDSChequesFECHA_EMISION.AsDateTime;
  FormModificarDatosChPropio.FechaCobro  := CDSChequesFECHA_COBRO.AsDateTime;
  FormModificarDatosChPropio.Numero      := CDSChequesNUMERO.Value;

  FormModificarDatosChPropio.ShowModal;
  Buscar.Execute;
  CDSCheques.GotoBookmark(p);
  CDSCheques.FreeBookmark(p);
end;

procedure TFormConciliacionChePropios.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  sbEstado.SimpleText:= '';

end;

procedure TFormConciliacionChePropios.PonerFechaDebitoExecute(Sender: TObject);
begin
  CDSCheques.First;
  while Not(CDSCheques.Eof) do
    begin
      CDSCheques.Edit;
      if chFechaDebito.Checked then
        CDSChequesFECHA_DEBITO.Value:=CDSChequesFECHA_COBRO.Value
      else
        if chFechaEmision.Checked then
          CDSChequesFECHA_DEBITO.Value:=CDSChequesFECHA_EMISION.Value
        else
          CDSChequesFECHA_DEBITO.AsDateTime:=Date;
      CDSCheques.Next;
    end;
  if CDSCheques.State<>dsBrowse then
    CDSCheques.Post;
  CDSCheques.First;
end;

procedure TFormConciliacionChePropios.dbcBancoasClick(Sender: TObject);
begin
if dbcBancoas.Value<>'' Then
    begin
       CDSCheques.Close;
       CDSCheques.Params.ParamByName('id').Value:=dbcBancoas.KeyValue;
       CDSCheques.Open;
    end
  else
    ShowMessage('No se selecciono el banco emisor');
end;

procedure TFormConciliacionChePropios.dbgCheColEnter(Sender: TObject);
begin
if dbgChe.SelectedIndex<5 Then
    dbgChe.SelectedIndex:=5;
end;

procedure TFormConciliacionChePropios.dbgCheDblClick(Sender: TObject);
begin
  if Not(CDSCheques.IsEmpty) then
    begin
      CDSCheques.Edit;
      if chFechaDebito.Checked=True then
        CDSChequesFECHA_DEBITO.Value:=CDSChequesFECHA_COBRO.Value
      else
        if chFechaEmision.Checked=True then
          CDSChequesFECHA_DEBITO.Value:=CDSChequesFECHA_EMISION.Value
        else
          CDSChequesFECHA_DEBITO.AsDateTime:=Date;
      CDSCheques.Post;
    end;
end;

procedure TFormConciliacionChePropios.dbgCheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Not(CDSCheques.IsEmpty) then
    begin
      if ((key=vk_Delete) or (key= vk_back)) and (dbgChe.SelectedIndex=5) Then
        begin
          if CDSCheques.State in [dsBrowse] Then  CDSCheques.Edit;
            CDSChequesFecha.Clear;
        end;
    end;

end;

procedure TFormConciliacionChePropios.dbgCheMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  sbEstado.SimpleText:= 'Doble click, para consiliar con fecha elegida ( ver opcion de fecha arriba)...';
end;

procedure TFormConciliacionChePropios.dbgCheTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  CDSCheques.IndexName:=Field.FieldName;
end;

procedure TFormConciliacionChePropios.dbgCheuqesDblClick(Sender: TObject);
begin
  CDSCheques.Edit;
  CDSChequesFECHA_DEBITO.AsDateTime:=Date;
  CDSCheques.Post;
end;

procedure TFormConciliacionChePropios.CDSChequesBeforeInsert(
  DataSet: TDataSet);
begin
  SysUtils.Abort;
end;

procedure TFormConciliacionChePropios.CDSChequesFechaSetText(
  Sender: TField; const Text: String);
var d,m,y:word;
dd,mm,yy:word;
begin
  Sender.AsString:=Text;
  DecodeDate(Date,yy,mm,dd);
  DecodeDate(CDSChequesFECHA.AsDateTime,Y,m,d);
  if (y<1900) or (y>yy) Then y:=yy;
  CDSChequesFECHA.AsDateTime:=EncodeDate(y,m,d);
end;


procedure TFormConciliacionChePropios.chFechaDebitoClick(Sender: TObject);
begin
  if chFechaEmision.Checked then
    chFechaEmision.Checked:=False;
end;

procedure TFormConciliacionChePropios.chFechaEmisionClick(Sender: TObject);
begin
  if chFechaDebito.Checked then
    chFechaDebito.Checked:=False;
end;

procedure TFormConciliacionChePropios.btAceptarClick(Sender: TObject);
begin

  CDSCheques.First;
  CDSCheques.DisableControls;
  while Not(CDSCheques.Eof) Do
    begin
      sbEstado.SimpleText:='Debitando Che.:'+CDSChequesNUMERO.AsString+'-'+CDSChequesORDEN_DE.Value;
      Application.ProcessMessages;
      if  CDSChequesFECHA_DEBITO.AsString<>'' Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spDebitar.Close;
            spDebitar.ParamByName('id_cuenta_banco').Value:=CDSChequesID_CUENTA_BANCO.Value;
            spDebitar.ParamByName('id_cheque_pro').Value  :=CDSChequesID_CHEQUE_PRO.Value;
            spDebitar.ParamByName('Fecha_Debito').Value   :=CDSChequesFECHA_DEBITO.AsDateTime;
            spDebitar.ParamByName('Fecha_Cobro').Value    :=CDSChequesFECHA_COBRO.AsDateTime;
            spDebitar.ParamByName('Importe').Value        :=CDSChequesIMPORTE.AsFloat;
            spDebitar.ParamByName('Numero').Value         :=CDSChequesNUMERO.Value;
            spDebitar.ParamByName('Orden_de').Value       :=CDSChequesORDEN_DE.Value;
            spDebitar.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            spDebitar.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no realizada.....');
          end;
        end;
      CDSCheques.Next;
    end;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;

  CDSCheques.First;
  CDSCheques.EnableControls;
  Buscar.Execute;
end;

procedure TFormConciliacionChePropios.SalirExecute(Sender: TObject);
begin
  Close;
end;

end.