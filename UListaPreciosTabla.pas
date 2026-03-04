unit UListaPreciosTabla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, DBClient, Provider, Mask, DBCtrls, DBCGrids, Grids, DBGrids,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, IBGenerator, Data.DB, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormListaPreciosTabla = class(TFormABMBase)
    DSPListaTablaCab: TDataSetProvider;
    DSPListaTablaDet: TDataSetProvider;
    CDSListaTablaCab: TClientDataSet;
    CDSListaTablaDet: TClientDataSet;
    DSListaTablaDet: TDataSource;
    dbcDetalle: TDBCtrlGrid;
    dbeCodigo: TDBEdit;
    dbePrecio1: TDBEdit;
    dbePrecio2: TDBEdit;
    dbeIdTabla: TDBEdit;
    dbeDetalle: TDBEdit;
    btNuevoDet: TBitBtn;
    btConfirmaDet: TBitBtn;
    btCancelarDet: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CDSListaTablaCabID: TIntegerField;
    CDSListaTablaCabDETALLE: TStringField;
    CDSListaTablaCabFECHA: TSQLTimeStampField;
    CDSListaTablaDetID: TIntegerField;
    CDSListaTablaDetID_CAB: TIntegerField;
    CDSListaTablaDetCODIGO: TIntegerField;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    CDSBuscadorFECHA: TSQLTimeStampField;
    IBIdDet: TIBGenerator;
    QListaTablaCab: TFDQuery;
    QListaTablaDet: TFDQuery;
    QListaTablaCabID: TIntegerField;
    QListaTablaCabDETALLE: TStringField;
    QListaTablaCabFECHA: TSQLTimeStampField;
    QListaTablaDetID: TIntegerField;
    QListaTablaDetID_CAB: TIntegerField;
    QListaTablaDetCODIGO: TIntegerField;
    QListaTablaDetPRECIO1: TFloatField;
    QListaTablaDetPRECIO2: TFloatField;
    CDSListaTablaDetPRECIO1: TFloatField;
    CDSListaTablaDetPRECIO2: TFloatField;
    QBus: TFDQuery;
    QBorrarItemDetalle: TFDQuery;
    spRenumeraDetalle: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSListaTablaDetNewRecord(DataSet: TDataSet);
    procedure CDSListaTablaDetAfterPost(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btNuevoDetClick(Sender: TObject);
    procedure btConfirmaDetClick(Sender: TObject);
    procedure btCancelarDetClick(Sender: TObject);
    procedure dbcDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSListaTablaDetAfterInsert(DataSet: TDataSet);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure DSListaTablaDetStateChange(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSListaTablaDetBeforeDelete(DataSet: TDataSet);
    procedure CDSListaTablaDetAfterDelete(DataSet: TDataSet);
    procedure CDSListaTablaCabNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListaPreciosTabla: TFormListaPreciosTabla;

implementation

uses UDMain_FD,DMBuscadoresForm;
{$R *.DFM}

procedure TFormListaPreciosTabla.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSListaTablaCab,DSPListaTablaCab);
  AddClientDataSet(CDSListaTablaDet,DSPListaTablaDet);
  CDSListaTablaCab.Open;
  CDSListaTablaDet.Open;
  Campo:='id';
  Tabla:='TABLA_PRECIOSCAB';
  
end;

procedure TFormListaPreciosTabla.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (ActiveControl is TDBCtrlGrid) Then
    inherited;

end;

procedure TFormListaPreciosTabla.CDSListaTablaDetNewRecord(
  DataSet: TDataSet);
var
  RegNro:Integer;
begin
  inherited;
  if CDSListaTablaDet.RecordCount>0 Then
    regnro:=CDSListaTablaDet.RecordCount
  else
    regnro:=0;
  CDSListaTablaDetID.Value:=IBIdDet.IncrementFD(1);
  CDSListaTablaDetCODIGO.Value:=RegNro+1;
  CDSListaTablaDetID_CAB.Value:=CDSListaTablaCabID.Value;
  CDSListaTablaDetPRECIO1.AsFloat:=0;
  CDSListaTablaDetPRECIO2.AsFloat:=0;
end;

procedure TFormListaPreciosTabla.CDSListaTablaDetAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  btNuevoDet.SetFocus;
 
end;

procedure TFormListaPreciosTabla.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSListaTablaCab.Close;
  CDSListaTablaCab.Params.ParamByName('id').Value:=DatoNew;
  CDSListaTablaCab.Open;

  CDSListaTablaDet.Close;
  CDSListaTablaDet.Params.ParamByName('id').Value:=DatoNew;
  CDSListaTablaDet.Open;


end;

procedure TFormListaPreciosTabla.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;

end;

procedure TFormListaPreciosTabla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListaPreciosTabla.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListaPreciosTabla:=nil;
end;

procedure TFormListaPreciosTabla.btNuevoDetClick(Sender: TObject);
begin
  CDSListaTablaDet.Append;
end;

procedure TFormListaPreciosTabla.btConfirmaDetClick(Sender: TObject);
begin

  CDSListaTablaDet.Post;
end;

procedure TFormListaPreciosTabla.btCancelarDetClick(Sender: TObject);
begin

  CDSListaTablaDet.Cancel;
end;

procedure TFormListaPreciosTabla.dbcDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (Key=vk_return) and ((ActiveControl as TDBEdit).Name='dbePrecio1') Then
    Key:=vk_tab
  else
    if (Key=vk_return) and ((ActiveControl as TDBEdit).Name='dbePrecio2') Then
      begin
        Key:=vk_tab;
        if CDSListaTablaDet.State in [dsInsert,dsEdit] Then
          CDSListaTablaDet.Post;
        btNuevoDet.SetFocus;
//        CDSListaTablaDet.Append;
       end;

   //begin
   // perform(wm_nextdlgctl, 0, 0);
    //key := #0;
 // end;
end;

procedure TFormListaPreciosTabla.CDSListaTablaDetAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
   dbePrecio1.SetFocus;
end;

procedure TFormListaPreciosTabla.CancelarExecute(Sender: TObject);
begin
  inherited;
  CDSListaTablaCab.Close;
  CDSListaTablaCab.Params.ParamByName('id').Clear;
  CDSListaTablaCab.Open;

  CDSListaTablaDet.Close;
  CDSListaTablaDet.Params.ParamByName('id').Clear;
  CDSListaTablaDet.Open;

end;

procedure TFormListaPreciosTabla.ModificarExecute(Sender: TObject);
begin
  inherited;
  dbcDetalle.EditMode:=True;
end;

procedure TFormListaPreciosTabla.DSListaTablaDetStateChange(
  Sender: TObject);
begin
  inherited;
  btNuevoDet.Enabled   :=DSListaTablaDet.State in [dsBrowse];
  btConfirmaDet.Enabled:=Not(DSListaTablaDet.State in [dsBrowse]);
  btCancelarDet.Enabled:=Not(DSListaTablaDet.State in [dsBrowse]);
  if (DSBase.State=dsBrowse) and (DSListaTablaDet.State in [dsInsert,dsEdit]) Then
    Modificar.Execute;
    //DSBase.Edit;
end;

procedure TFormListaPreciosTabla.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
end;

procedure TFormListaPreciosTabla.AgregarExecute(Sender: TObject);
begin
  CDSListaTablaCab.Close;
  CDSListaTablaCab.Params.ParamByName('id').Clear;
  CDSListaTablaCab.Open;

  CDSListaTablaDet.Close;
  CDSListaTablaDet.Params.ParamByName('id').Clear;
  CDSListaTablaDet.Open;
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormListaPreciosTabla.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSListaTablaCabID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormListaPreciosTabla.CDSListaTablaDetBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  QBorrarItemDetalle.Close;
  QBorrarItemDetalle.ParamByName('id').Value:=CDSListaTablaDetID.Value;
  QBorrarItemDetalle.ExecSQL;
 
  spRenumeraDetalle.Close;
  spRenumeraDetalle.ParamByName('id_Lista').AsInteger:=CDSListaTablaCabID.Value;
  spRenumeraDetalle.ExecProc;
  spRenumeraDetalle.Close;


end;

procedure TFormListaPreciosTabla.CDSListaTablaDetAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DatoNew:=CDSListaTablaCabID.AsString;
  Recuperar.Execute;
end;

procedure TFormListaPreciosTabla.CDSListaTablaCabNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSListaTablaCabID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSListaTablaCabID.Value:=1;
  QUltimoCodigo2.Close;

end;

end.
