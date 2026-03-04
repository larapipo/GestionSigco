unit UArqueoCaja;

interface

uses
  Winapi.Windows,UABMBase, Winapi.Messages,  System.Variants, System.Classes, Vcl.Graphics,
  System.UITypes,System.Actions,Vcl.Forms,SysUtils,
  Vcl.DBCtrls, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, IBGenerator,
  Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, AdvPageControl,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, Vcl.Controls,
  Vcl.ActnList, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  System.ImageList;

type
  TFormArqueoCaja = class(TFormABMBase)
    QArqueoCab: TFDQuery;
    QArqueoDet: TFDQuery;
    DSPArqueoCab: TDataSetProvider;
    DSPArqueoDet: TDataSetProvider;
    CDSArqueoCab: TClientDataSet;
    CDSArqueoDet: TClientDataSet;
    QArqueoCabID: TIntegerField;
    QArqueoCabID_CAJA: TIntegerField;
    QArqueoCabID_CTA_CAJA: TIntegerField;
    QArqueoCabID_MOV_CAJA: TIntegerField;
    QArqueoCabSALDO_EFECTIVO: TFloatField;
    QArqueoCabSALDO_OTROS: TFloatField;
    QArqueoCabTOTAL_ARQUEO: TFloatField;
    CDSArqueoCabID: TIntegerField;
    CDSArqueoCabID_CAJA: TIntegerField;
    CDSArqueoCabID_CTA_CAJA: TIntegerField;
    CDSArqueoCabID_MOV_CAJA: TIntegerField;
    CDSArqueoCabSALDO_EFECTIVO: TFloatField;
    CDSArqueoCabSALDO_OTROS: TFloatField;
    CDSArqueoCabTOTAL_ARQUEO: TFloatField;
    pnTitulo: TPanel;
    pnCab: TPanel;
    pnDatos: TPanel;
    pcDatos: TAdvPageControl;
    pagRecuento: TAdvTabSheet;
    pagSaldos: TAdvTabSheet;
    dbgRecuento: TDBGrid;
    dbgSaldos: TDBGrid;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    QArqueoCabMUESTRACTACAJA: TStringField;
    QArqueoCabMUESTRANROCAJA: TIntegerField;
    ibgCab: TIBGenerator;
    ibgDet: TIBGenerator;
    ibgSaldos: TIBGenerator;
    CDSArqueoCabMUESTRACTACAJA: TStringField;
    CDSArqueoCabMUESTRANROCAJA: TIntegerField;
    dbeCtaCaja: TDBEdit;
    DBEdit1: TDBEdit;
    QArqueoDetID: TIntegerField;
    QArqueoDetID_CAB: TIntegerField;
    QArqueoDetID_TPAGO: TIntegerField;
    QArqueoDetDENOMINACIO: TIntegerField;
    QArqueoDetCANTIDAD: TIntegerField;
    QArqueoDetIMPORTE: TFloatField;
    QArqueoDetMUESTRATIPOPAGO: TStringField;
    CDSArqueoDetID: TIntegerField;
    CDSArqueoDetID_CAB: TIntegerField;
    CDSArqueoDetID_TPAGO: TIntegerField;
    CDSArqueoDetDENOMINACIO: TIntegerField;
    CDSArqueoDetCANTIDAD: TIntegerField;
    CDSArqueoDetIMPORTE: TFloatField;
    CDSArqueoDetMUESTRATIPOPAGO: TStringField;
    DSPRecalculo: TDataSetProvider;
    CDSRecalculo: TClientDataSet;
    CDSRecalculoMONEDA: TIntegerField;
    CDSRecalculoSALDO: TFloatField;
    CDSRecalculoDEBE: TFloatField;
    CDSRecalculoHABER: TFloatField;
    CDSRecalculoFPAGO: TSmallintField;
    CDSRecalculoTPAGO: TSmallintField;
    CDSRecalculoDETALLE: TStringField;
    DSRecalculo: TDataSource;
    QRecalculo: TFDQuery;
    DSArqueoDet: TDataSource;
    FBuscaFormaPago: TFDQuery;
    QFPago: TFDQuery;
    QFPagoID_TPAGO: TIntegerField;
    QFPagoDETALLE: TStringField;
    FBuscaFormaPagoID_TPAGO: TIntegerField;
    FBuscaFormaPagoDETALLE: TStringField;
    pnPieRecuento: TPanel;
    dbeOtrosValores: TDBEdit;
    Label5: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    QCajaPorDefecto: TFDQuery;
    QUltimoMov: TFDQuery;
    QUltimoMovID_MOV_CAJA: TIntegerField;
    QArqueoSaldos: TFDQuery;
    QArqueoSaldosID: TIntegerField;
    QArqueoSaldosID_CAB: TIntegerField;
    QArqueoSaldosID_TPAGO: TIntegerField;
    QArqueoSaldosID_FPAGO: TIntegerField;
    QArqueoSaldosDETALLE: TStringField;
    QArqueoSaldosIMPORTE: TFloatField;
    DSPArqueoSaldos: TDataSetProvider;
    CDSArqueoSaldos: TClientDataSet;
    CDSArqueoSaldosID: TIntegerField;
    CDSArqueoSaldosID_CAB: TIntegerField;
    CDSArqueoSaldosID_TPAGO: TIntegerField;
    CDSArqueoSaldosID_FPAGO: TIntegerField;
    CDSArqueoSaldosDETALLE: TStringField;
    CDSArqueoSaldosIMPORTE: TFloatField;
    DSArqueoSaldos: TDataSource;
    QCajaPorDefectoID_CAJA: TIntegerField;
    QCajaPorDefectoID_CUENTA_CAJA: TIntegerField;
    QCajaPorDefectoSALDO_INCIAL: TFloatField;
    QCajaPorDefectoESTADO: TIntegerField;
    QCajaPorDefectoOBS: TMemoField;
    QCajaPorDefectoNUMEROCAJA: TIntegerField;
    DBEdit5: TDBEdit;
    QBuscadorArqueo: TFDQuery;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField1: TStringField;
    IntegerField5: TIntegerField;
    Label2: TLabel;
    dbeNro: TDBEdit;
    QCajaPorDefectoNOMBRE: TStringField;
    QArqueoCabFECHA_HORA: TSQLTimeStampField;
    CDSArqueoCabFECHA_HORA: TSQLTimeStampField;
    QCajaPorDefectoFECHA_INCIO: TSQLTimeStampField;
    QCajaPorDefectoFECHA_CIERRE: TSQLTimeStampField;
    QBuscadorArqueoFECHA_HORA: TSQLTimeStampField;
    procedure CDSArqueoCabNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CDSArqueoDetNewRecord(DataSet: TDataSet);
    procedure CDSArqueoDetID_TPAGOSetText(Sender: TField; const Text: string);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgRecuentoColEnter(Sender: TObject);
    procedure CDSArqueoDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSArqueoDetAfterPost(DataSet: TDataSet);
    procedure CDSArqueoDetBeforeInsert(DataSet: TDataSet);
    procedure CDSArqueoDetBeforeDelete(DataSet: TDataSet);
    procedure dbeOtrosValoresChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSArqueoSaldosNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure dbgRecuentoEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
   
  private
    FSaldo_Efectivo   :Extended;
    FSaldo_Otros      :Extended;
    FID_Cta_Caja :Integer;
    FID_Caja     :Integer;
    { Private declarations }
  public
    { Public declarations }
    procedure sumar;
  published
    property Saldo_Efectivo:Extended read FSaldo_Efectivo write FSaldo_Efectivo;
    property Saldo_Otro:Extended read FSaldo_Otros write FSaldo_Otros;
    property ID_Caja:Integer read FID_Caja write FID_Caja;
    property ID_Cta_Caja:Integer read FID_Cta_Caja write FID_Cta_Caja;
  end;


var
  FormArqueoCaja: TFormArqueoCaja;

implementation

USES UDMain_FD;

{$R *.dfm}

procedure TFormArqueoCaja.AgregarExecute(Sender: TObject);
begin
  CDSArqueoCab.Close;
  CDSArqueoCab.Params.ParamByName('id').Clear;
  CDSArqueoCab.Open;

  CDSArqueoDet.Close;
  CDSArqueoDet.Params.ParamByName('id_cab').Clear;
  CDSArqueoDet.Open;

  CDSArqueoSaldos.Close;
  CDSArqueoSaldos.Params.ParamByName('id').Clear;
  CDSArqueoSaldos.Open;

  inherited;
  pcDatos.ActivePageIndex:=0;
end;

procedure TFormArqueoCaja.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    inherited;
end;

procedure TFormArqueoCaja.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscadorArqueo.Close;
  QBuscadorArqueo.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
    BEGIN
     DatoNew:=ComBuscadorBase.Id;
     Recuperar.Execute;
    END;
  QBuscadorArqueo.Close;
end;

procedure TFormArqueoCaja.CDSArqueoCabNewRecord(DataSet: TDataSet);
const
  valores : array [0..9] of integer = (20000,10000,2000,1000,500,200,100,50,20,10);
var
  I: Integer;
begin
  inherited;

  QCajaPorDefecto.Close;
  QCajaPorDefecto.ParamByName('id_cta_caja').Value:=CajaPorDefecto;
  QCajaPorDefecto.Open;

  QUltimoMov.Close;
  QUltimoMov.ParamByName('id').Value:=QCajaPorDefecto.Fields[0].asInteger;
  QUltimoMov.Open;

  CDSRecalculo.Close;
  CDSRecalculo.Params.ParamByName('id').Value:= QCajaPorDefecto.Fields[0].asInteger;
  CDSRecalculo.Open;

  CDSArqueoCabID.Value               := ibgCab.IncrementFD(1);
  CDSArqueoCabID_CAJA.Value          := QCajaPorDefectoID_CAJA.AsInteger;// FID_Caja;
  CDSArqueoCabID_CTA_CAJA.Value      := CajaPorDefecto;

  if QUltimoMovID_MOV_CAJA.AsString<>'' then
    CDSArqueoCabID_MOV_CAJA.Value      := QUltimoMovID_MOV_CAJA.Value
  else
    CDSArqueoCabID_MOV_CAJA.Value      := -1;

  CDSArqueoCabMUESTRANROCAJA.Value   := QCajaPorDefectoNUMEROCAJA.Value;
  CDSArqueoCabMUESTRACTACAJA.Value   := QCajaPorDefectoNOMBRE.Value;
  CDSArqueoCabSALDO_EFECTIVO.Value   := 0;
  CDSArqueoCabSALDO_OTROS.Value      := 0;
  CDSArqueoCabTOTAL_ARQUEO.Value     := 0;

  CDSArqueoCabFECHA_HORA.AsDateTime  := now;

  for I := 0 to 9 do
    begin
      CDSArqueoDet.Append;
      CDSArqueoDetDENOMINACIO.Value:= Valores[i];
      CDSArqueoDet.Post;
    end;

  CDSRecalculo.CLose;
  CDSRecalculo.Params.ParamByName('id').Value := QCajaPorDefecto.Fields[0].asInteger;
  CDSRecalculo.OPen;

  CDSRecalculo.First;
  while Not(CDSRecalculo.Eof) do
    begin
      CDSArqueoSaldos.Append;
      CDSArqueoSaldosID_TPAGO.Value :=CDSRecalculoTPAGO.Value;
      CDSArqueoSaldosID_FPAGO.Value :=CDSRecalculoFPAGO.Value;
      CDSArqueoSaldosDETALLE.Value  :=CDSRecalculoDETALLE.Value;
      CDSArqueoSaldosIMPORTE.Value  :=CDSRecalculoSALDO.Value;
      CDSArqueoSaldos.Post;
      CDSRecalculo.Next;
    end;


  QCajaPorDefecto.Close;
  QUltimoMov.Open;
end;

procedure TFormArqueoCaja.CDSArqueoDetAfterPost(DataSet: TDataSet);
begin
  inherited;
   Sumar;
end;



procedure TFormArqueoCaja.CDSArqueoDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CDSArqueoDet.Cancel;
  SysUtils.Abort;
end;

procedure TFormArqueoCaja.CDSArqueoDetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if CDSArqueoDet.RecordCount>=10 then
    begin
      CDSArqueoDet.Cancel;
      SysUtils.Abort;
    end;

end;

procedure TFormArqueoCaja.CDSArqueoDetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Trim(Text)='' then
    Sender.AsString:='0';
  CDSArqueoDetIMPORTE.Value:=CDSArqueoDetCANTIDAD.Value * CDSArqueoDetDENOMINACIO.Value;
  if (CDSArqueoDet.State<>dsBrowse) and (CDSArqueoDetCANTIDAD.Value>0) then
    CDSArqueoDet.Post;
end;

procedure TFormArqueoCaja.CDSArqueoDetID_TPAGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      QFPago.Close;
      QFPago.ParamByName('id').Value:=StrToInt(Trim(Text));
      QFPago.Open;
      if QFPago.Fields[0].AsString<>'' then
        CDSArqueoDetMUESTRATIPOPAGO.Value:=QFPagoDETALLE.Value
      else
        CDSArqueoDetMUESTRATIPOPAGO.Value:='';
    end;

end;

procedure TFormArqueoCaja.CDSArqueoDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSArqueoDetID.Value       := ibgDet.IncrementFD(1);
  CDSArqueoDetID_CAB.Value   := CDSArqueoCabID.Value;
  CDSArqueoDetID_TPAGO.Value := -1;
  CDSArqueoDetCANTIDAD.Value := 0;
  CDSArqueoDetIMPORTE.Value  := 0;
end;

procedure TFormArqueoCaja.CDSArqueoSaldosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSArqueoSaldosID.Value      := ibgSaldos.IncrementFD(1);
  CDSArqueoSaldosID_CAB.Value  := CDSArqueoCabID.Value;
  CDSArqueoSaldosDETALLE.Value := '';
  CDSArqueoSaldosIMPORTE.Value := 0;
end;

procedure TFormArqueoCaja.ConfirmaExecute(Sender: TObject);
begin
  if CDSArqueoDet.State<>dsBrowse then
    CDSArqueoDet.Post;
  if CDSArqueoCab.State<>dsBrowse then
    CDSArqueoCab.Post;
  if CDSArqueoSaldos.State<>dsBrowse then
    CDSArqueoSaldos.Post;
  DatoNew:=CDSArqueoCabID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormArqueoCaja.dbeOtrosValoresChange(Sender: TObject);
begin
  inherited;
  if CDSArqueoCab.State in [dsInsert,dsEdit] then
    sumar;
end;

procedure TFormArqueoCaja.dbgRecuentoColEnter(Sender: TObject);
begin
  inherited;
  if dbgRecuento.SelectedIndex>1 then
    dbgRecuento.SelectedIndex:=1
  ELSE
  if dbgRecuento.SelectedIndex<1 then
    dbgRecuento.SelectedIndex:=1;


end;

procedure TFormArqueoCaja.dbgRecuentoEnter(Sender: TObject);
begin
  inherited;
  if not(dbgRecuento.SelectedIndex=1) then

  dbgRecuento.SelectedIndex:=1;
end;

procedure TFormArqueoCaja.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled     := True;
  pnDatos.Enabled         := True;
  dbgRecuento.Enabled     := DSBase.State in [dsInsert,dsEdit];
  dbgRecuento.ReadOnly    := DSBase.State=dsBrowse;
  dbgSaldos.Visible       := DSBase.State=dsBrowse;
  dbeOtrosValores.Enabled := DSBase.State in [dsInsert,dsEdit];
end;

procedure TFormArqueoCaja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:= caFree;
end;

procedure TFormArqueoCaja.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  AddClientDataSet(CDSArqueoCab,DSPArqueoCab);
  AddClientDataSet(CDSArqueoDet,DSPArqueoDet);
  AddClientDataSet(CDSArqueoSaldos,DSPArqueoSaldos);

  Campo:='ID';
  Tabla:='arqueo_caja_cab';

  SinBDE := 2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  CDSArqueoCab.Close;
  CDSArqueoDet.Close;
  CDSArqueoSaldos.Close;

  CDSArqueoCab.Open;
  CDSArqueoDet.Open;
  CDSArqueoSaldos.Open;

  pcDatos.ActivePageIndex := 0;
  dbgRecuento.Width       := dbgRecuento.Width+1;
  dbgRecuento.Width       := dbgRecuento.Width-1;
  Borrar.Enabled          := DMMain_FD.UsuarioAdministrador;

end;

procedure TFormArqueoCaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormArqueoCaja:=nil;
end;

procedure TFormArqueoCaja.FormResize(Sender: TObject);
begin
  inherited;
  if (FormArqueoCaja<>nil) Then
    if (FormArqueoCaja.Width>753) or (FormArqueoCaja.Width<753)  then
      FormArqueoCaja.Width:=753;
end;

procedure TFormArqueoCaja.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSArqueoCab.Close;
  CDSArqueoCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSArqueoCab.Open;

  CDSArqueoDet.Close;
  CDSArqueoDet.Params.ParamByName('id_cab').Value:=StrToInt(DatoNew);
  CDSArqueoDet.Open;

  CDSArqueoSaldos.Close;
  CDSArqueoSaldos.Params.ParamByName('id').Value:=StrToInt(DatoNew);;
  CDSArqueoSaldos.Open;
end;

procedure TFormArqueoCaja.sumar;
var CDSClone:TClientDataSet;
begin
  if CDSArqueoCab.State<>dsBrowse then
    begin
      CDSClone:=TClientDataSet.Create(Self);
      CDSClone.CloneCursor(CDSArqueoDet,True);
      CDSClone.First;
      CDSArqueoCabSALDO_EFECTIVO.Value :=0;
      while Not(CDSClone.Eof) do
        begin
          CDSArqueoCabSALDO_EFECTIVO.Value:=CDSArqueoCabSALDO_EFECTIVO.Value+CDSClone.FieldByName('IMPORTE').ASFLoat;
          CDSClone.Next;
        end;
      FreeAndNil(CDSClone);
      CDSArqueoCabTOTAL_ARQUEO.Value := CDSArqueoCabSALDO_EFECTIVO.Value+CDSArqueoCabSALDO_OTROS.Value
    end;
end;

end.
