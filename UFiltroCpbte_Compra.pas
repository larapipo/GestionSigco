unit UFiltroCpbte_Compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, JvExControls, JvDBLookup, JvComponentBase, 
  ImgList,   ActnList, ComCtrls,
  JvGradient, Buttons, ToolWin, ExtCtrls, IBGenerator, JvFormPlacement, JvLabel,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Data.SqlExpr, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormFiltroCpbte_Compra = class(TFormABMBase)
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    dbgComprobantes: TDBGrid;
    dbgDetalle: TDBGrid;
    dbeDetalle: TDBEdit;
    dbeId: TDBEdit;
    DSComprobantes: TDataSource;
    DSSucrusal: TDataSource;
    DSPCpbteFiltroCab: TDataSetProvider;
    CDSCpbteFiltroCab: TClientDataSet;
    DSPCpbteFiltroDet: TDataSetProvider;
    CDSCpbteFiltroDet: TClientDataSet;
    DSCpbteFiltroDet: TDataSource;
    ibIdDet: TIBGenerator;
    PasaTodo: TAction;
    BorraTodo: TAction;
    TraerComprobantes: TAction;
    QCpbteFiltroCab: TFDQuery;
    QCpbteFiltroCabID: TIntegerField;
    QCpbteFiltroCabDETALLE: TStringField;
    CDSCpbteFiltroCabID: TIntegerField;
    CDSCpbteFiltroCabDETALLE: TStringField;
    QCpbteFiltroDet: TFDQuery;
    QCpbteFiltroDetID: TIntegerField;
    QCpbteFiltroDetID_CAB: TIntegerField;
    QCpbteFiltroDetID_CPBTE: TIntegerField;
    QCpbteFiltroDetMUESTRACOMPROBANTE: TStringField;
    QCpbteFiltroDetMUESTRATIPO: TStringField;
    QCpbteFiltroDetMUESTRACLASE: TStringField;
    QCpbteFiltroDetMUESTRASUC: TStringField;
    CDSCpbteFiltroDetID: TIntegerField;
    CDSCpbteFiltroDetID_CAB: TIntegerField;
    CDSCpbteFiltroDetID_CPBTE: TIntegerField;
    CDSCpbteFiltroDetMUESTRACOMPROBANTE: TStringField;
    CDSCpbteFiltroDetMUESTRATIPO: TStringField;
    CDSCpbteFiltroDetMUESTRACLASE: TStringField;
    CDSCpbteFiltroDetMUESTRASUC: TStringField;
    QComprobantes: TFDQuery;
    CDSComprobantes: TClientDataSet;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesMUESTRASUCURSAL: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    QBuscador: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    QVerificaUsado: TFDQuery;
    Label5: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    QCpbteFiltroCabGRUPO: TSmallintField;
    CDSCpbteFiltroCabGRUPO: TSmallintField;
    CDSComprobantesMUESTRAFILTRO: TStringField;
    procedure AgregarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PasaTodoExecute(Sender: TObject);
    procedure dbgDetalleDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgDetalleDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BorraTodoExecute(Sender: TObject);
    procedure CDSCpbteFiltroCabNewRecord(DataSet: TDataSet);
    procedure TraerComprobantesExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSCpbteFiltroDetNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSCpbteFiltroDetBeforePost(DataSet: TDataSet);
    procedure dbgComprobantesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroCpbte_Compra: TFormFiltroCpbte_Compra;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormFiltroCpbte_Compra.AgregarExecute(Sender: TObject);
begin
  CDSCpbteFiltroCab.Close;
  CDSCpbteFiltroCab.Params.ParamByName('id').Clear;
  CDSCpbteFiltroCab.Open;

  CDSCpbteFiltroDet.Close;
  CDSCpbteFiltroDet.Params.ParamByName('id').Clear;
  CDSCpbteFiltroDet.Open;
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormFiltroCpbte_Compra.BorraTodoExecute(Sender: TObject);
begin
  inherited;
  while not(CDSCpbteFiltroDet.eof) Do
  CDSCpbteFiltroDet.Delete;
end;

procedure TFormFiltroCpbte_Compra.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormFiltroCpbte_Compra.CDSCpbteFiltroCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSCpbteFiltroCabID.Value:=1
  else
    CDSCpbteFiltroCabID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
end;

procedure TFormFiltroCpbte_Compra.CDSCpbteFiltroDetBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  QVerificaUsado.Close;
  QVerificaUsado.ParamByName('id').Value:=CDSCpbteFiltroDetID_CPBTE.Value;
  QVerificaUsado.Open;
  if QVerificaUsado.Fields[0].AsString<>'' then
    begin
      ShowMessage('Comprobante usado en otro Filtro');
  //    CDSCpbteFiltroDet.Cancel;
  //    SysUtils.Abort;
    end;
  QVerificaUsado.Close;
end;

procedure TFormFiltroCpbte_Compra.CDSCpbteFiltroDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCpbteFiltroDetID.Value     := ibIdDet.IncrementFD(1);
  CDSCpbteFiltroDetID_CAB.Value := CDSCpbteFiltroCabID.Value;
end;

procedure TFormFiltroCpbte_Compra.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCpbteFiltroCabID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormFiltroCpbte_Compra.dbgComprobantesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (Trim(CDSComprobantesMUESTRAFILTRO.AsString)<>'') then
    dbgComprobantes.Canvas.Brush.Color:=clRed;
  if (gdFocused in State) then
    dbgComprobantes.canvas.brush.color := clBlack;
  dbgComprobantes.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormFiltroCpbte_Compra.dbgDetalleDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if (CDSCpbteFiltroDet.Locate('id_cpbte', (Source AS TDBGrid).DataSource.DataSet.FieldByName('Id_comprobante').Value,[])=False) then
    begin
      CDSCpbteFiltroDet.Append;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSCpbteFiltroDetID_CPBTE.Value           := FieldByName('Id_comprobante').Value;
          CDSCpbteFiltroDetMUESTRACOMPROBANTE.Value := FieldByName('Denominacion').Value;
          CDSCpbteFiltroDetMUESTRATIPO.Value        := FieldByName('Tipo_comprob').Value;
          CDSCpbteFiltroDetMUESTRACLASE.Value       := FieldByName('Clase_comprob').Value;
          CDSCpbteFiltroDetMUESTRASUC.Value         := FieldByName('MuestraSucursal').Value; dbcSucursal.KeyValue;
        END;
      CDSCpbteFiltroDet.Post;
    end
  else
    ShowMessage('Comprobante ya Ingresado');  
end;

procedure TFormFiltroCpbte_Compra.dbgDetalleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
IF (Source = dbgComprobantes) and (not(DSBase.State in [dsBrowse])) THEN
    accept := True
  ELSE
    Accept := False;
  if (CDSCpbteFiltroDet.Locate('id_cpbte',(Source AS TDBGrid).DataSource.DataSet.FieldByName('Id_comprobante').Value,[])) Then
    Accept:=False;
end;

procedure TFormFiltroCpbte_Compra.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  dbeDetalle.Enabled :=Not(DSBase.DataSet.State=dsBrowse);
  dbeId.Enabled      :=Not(DSBase.DataSet.State=dsBrowse);
  dbgComprobantes.ReadOnly:= DSBase.DataSet.State=dsBrowse;
  dbgDetalle.ReadOnly     := DSBase.DataSet.State=dsBrowse;
  PasaTodo.Enabled   :=Not(DSBase.DataSet.State=dsBrowse);
  BorraTodo.Enabled  :=Not(DSBase.DataSet.State=dsBrowse);
end;

procedure TFormFiltroCpbte_Compra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSCpbteFiltroCab.Close;
  CDSCpbteFiltroDet.Close;
  CDSSucursal.Close;
  CDSComprobantes.Close;
  Action:=cafree;
end;

procedure TFormFiltroCpbte_Compra.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  AddClientDataSet(CDSCpbteFiltroCab,DSPCpbteFiltroCab);
  AddClientDataSet(CDSCpbteFiltroDet,DSPCpbteFiltroDet);
  CDSCpbteFiltroCab.Open;
  CDSCpbteFiltroDet.Open;
  CDSSucursal.Open;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprobantes.Open;
  Tabla:='TABLA_CPBTE_CCCOMP_CAB';
  Campo:='id';
end;

procedure TFormFiltroCpbte_Compra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFiltroCpbte_Compra:=nil;
end;

procedure TFormFiltroCpbte_Compra.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormFiltroCpbte_Compra.PasaTodoExecute(Sender: TObject);
begin
  inherited;
  begin
    CDSComprobantes.First;
    while Not(CDSComprobantes.Eof) do
      begin
        if Not(CDSCpbteFiltroDet.Locate('id_cpbte',CDSComprobantesID_COMPROBANTE.value,[])) Then
          begin
            CDSCpbteFiltroDet.Insert;
            CDSCpbteFiltroDetID_CPBTE.Value           := CDSComprobantesID_COMPROBANTE.Value;
            CDSCpbteFiltroDetMUESTRACOMPROBANTE.Value := CDSComprobantesDENOMINACION.Value;
            CDSCpbteFiltroDetMUESTRATIPO.Value        := CDSComprobantesTIPO_COMPROB.Value;
            CDSCpbteFiltroDetMUESTRACLASE.Value       := CDSComprobantesCLASE_COMPROB.Value;
            CDSCpbteFiltroDetMUESTRASUC.Value         := CDSComprobantesMUESTRASUCURSAL.Value;
            CDSCpbteFiltroDet.Post;
          end;
        CDSComprobantes.Next;
      end;
    CDSComprobantes.First;
  end
end;

procedure TFormFiltroCpbte_Compra.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCpbteFiltroCab.Close;
  CDSCpbteFiltroCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCpbteFiltroCab.Open;

  CDSCpbteFiltroDet.Close;
  CDSCpbteFiltroDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCpbteFiltroDet.Open;

end;

procedure TFormFiltroCpbte_Compra.TraerComprobantesExecute(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

end.
