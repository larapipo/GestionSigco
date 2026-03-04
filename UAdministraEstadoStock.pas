unit UAdministraEstadoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  JvProgressBar, JvExComCtrls, JvDBProgressBar, Provider, DBClient, JvDBLookup,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.FMTBcd, Data.DB, Data.SqlExpr, JvComponentBase,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormAdminEstadosStock = class(TFormABMBase)
    Label1: TLabel;
    chModificaDetalle: TCheckBox;
    chbModificaPrecios: TCheckBox;
    chbControlaStock: TCheckBox;
    spDetalle: TSpeedButton;
    spPrecios: TSpeedButton;
    spArticulos: TSpeedButton;
    chbControlaStockServicios: TCheckBox;
    spServicios: TSpeedButton;
    DSListado: TDataSource;
    DSRubro: TDataSource;
    DSSubRubro: TDataSource;
    Panel2: TPanel;
    chControlaStockGeneral: TCheckBox;
    spActualizaCostoCompra: TSpeedButton;
    CBClases: TComboBox;
    Label5: TLabel;
    spClases: TSpeedButton;
    chbActualizaCostoCompra: TCheckBox;
    spControlaStockTodos: TSpeedButton;
    JvDBStatusLabel1: TJvDBStatusLabel;
    Label2: TLabel;
    cbRubro: TJvDBLookupCombo;
    Label3: TLabel;
    cbSubRubro: TJvDBLookupCombo;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    dbgListado: TJvDBGrid;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QListado: TFDQuery;
    QListadoCODIGO_STK: TStringField;
    QListadoDETALLE_STK: TStringField;
    QListadoEDITADETALLE: TStringField;
    QListadoEDITAPRECIO: TStringField;
    QListadoCONTROLASTOCK: TStringField;
    QListadoCLASE_ARTICULO: TIntegerField;
    QListadoACTUALIZACOSTO: TStringField;
    QStockClases: TFDQuery;
    QStockConceptos: TFDQuery;
    chbPercibirIVA: TCheckBox;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    QPercivaIVA: TFDQuery;
    DSPBuscaPercepIVA: TDataSetProvider;
    CDSBuscaPercepIVA: TClientDataSet;
    CDSBuscaPercepIVACODIGO: TIntegerField;
    CDSBuscaPercepIVADESCRIPCION: TStringField;
    CDSBuscaPercepIVATASA: TFloatField;
    DSPercepIVA: TDataSource;
    dbcTasa: TJvDBLookupCombo;
    QListadoPERCIBE_IVA: TStringField;
    QListadoID_TASA_PERCEP_IVA: TIntegerField;
    chTasaDif: TCheckBox;
    spTasaDif: TSpeedButton;
    QPercibeIVATasaDif: TFDQuery;
    QListadoAPLICA_TASA_DIF: TStringField;
    Label7: TLabel;
    chbWeb: TCheckBox;
    spWeb: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure spDetalleClick(Sender: TObject);
    procedure spPreciosClick(Sender: TObject);
    procedure spArticulosClick(Sender: TObject);
    procedure spServiciosClick(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure spActualizaCostoCompraClick(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure spClasesClick(Sender: TObject);
    procedure dbgListadoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgListadoCellClick(Column: TColumn);
    procedure spControlaStockTodosClick(Sender: TObject);
    procedure dbgListadoDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbSubRubroChange(Sender: TObject);
    procedure spTasaDifClick(Sender: TObject);
    procedure spWebClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdminEstadosStock: TFormAdminEstadosStock;

implementation

uses UDMain_FD,UStock_2;
{$R *.dfm}

procedure TFormAdminEstadosStock.cbSubRubroChange(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.dbgListadoCellClick(Column: TColumn);
begin
  inherited;
//  if Column.FieldName = 'NombreCampo' then
//  begin
//    Table1.Edit;
//    Table1.FindField('NombreCampo').AsBoolean:=not Table1.FindField('NombreCampo').AsBoolean;
//  end;
end;

procedure TFormAdminEstadosStock.dbgListadoDblClick(Sender: TObject);
begin
  inherited;
  if not (Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=QListadoCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  Formstock_2.Show;
end;

procedure TFormAdminEstadosStock.dbgListadoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

var
  Check: Integer;
  R: TRect;
begin

  if Column.FieldName = 'EDITAPRECIO' then
    begin
      dbgListado.Canvas.FillRect(Rect);
      Check := 0;
      if QListadoEDITAPRECIO.AsString='S' then Check := DFCS_CHECKED;
      R:=Rect;
      InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
      DrawFrameControl(dbgListado.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end
  else

  if Column.FieldName = 'EDITADETALLE' then
    begin
      dbgListado.Canvas.FillRect(Rect);
      Check := 0;
      if QListadoEDITADETALLE.AsString='S' then Check := DFCS_CHECKED;
      R:=Rect;
      InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
      DrawFrameControl(dbgListado.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end
  else

  if Column.FieldName = 'CONTROLASTOCK' then
    begin
      dbgListado.Canvas.FillRect(Rect);
      Check := 0;
      if QListadoCONTROLASTOCK.AsString='S' then Check := DFCS_CHECKED;
      R:=Rect;
      InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
      DrawFrameControl(dbgListado.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end

  else

  if Column.FieldName = 'ACTUALIZACOSTO' then
    begin
      dbgListado.Canvas.FillRect(Rect);
      Check := 0;
      if QListadoACTUALIZACOSTO.AsString='S' then Check := DFCS_CHECKED;
      R:=Rect;
      InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
       DrawFrameControl(dbgListado.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);

    end

  else

  if Column.FieldName = 'PERCIBE_IVA' then
    begin
      dbgListado.Canvas.FillRect(Rect);
      Check := 0;
      if QListadoPERCIBE_IVA.AsString='S' then Check := DFCS_CHECKED;
      R:=Rect;
      InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
       DrawFrameControl(dbgListado.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);

    end

 else

  if Column.FieldName = 'APLICA_TASA_DIF' then
    begin
      dbgListado.Canvas.FillRect(Rect);
      Check := 0;
      if QListadoAPLICA_TASA_DIF.AsString='S' then Check := DFCS_CHECKED;
      R:=Rect;
      InflateRect(R,-2,-2); //Disminuye el tamaño del CheckBox
       DrawFrameControl(dbgListado.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);

    end;
end;

procedure TFormAdminEstadosStock.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormAdminEstadosStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSBuscaPercepIVA.Close;
  Action:=cafree;
end;

procedure TFormAdminEstadosStock.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_';
  QRubro.Open;
  QSubRubro.Open;
  CDSBuscaPercepIVA.Open;
end;

procedure TFormAdminEstadosStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAdminEstadosStock:=nil;
end;

procedure TFormAdminEstadosStock.RecuperarExecute(Sender: TObject);
begin
  inherited;
  QListado.Close;
  QListado.ParamByName('Rubro').Value   :=cbRubro.KeyValue;
  QListado.ParamByName('SubRubro').Value:=cbSubRubro.KeyValue;
  QListado.Open;
end;

procedure TFormAdminEstadosStock.cbRubroChange(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.Params.ParamByName('rubro').Value:=QRubroCODIGO_RUBRO.Value;
  QSubRubro.Open;
  cbSubRubro.KeyValue:='';
  //Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spArticulosClick(Sender: TObject);
VAR Q:TFDQuery;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Screen.Cursor:=crHourGlass;
  Q            := TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;

  Q.SQL.Text:='''
                update stock s set s.controlastock= :Estado
                 where ( s.clase_articulo in (1,2,3)) and
                ( (s.rubro_stk=:rubro or :rubro = '***' ) and
                (s.subrubro_stk=:subrubro or :subrubro = '*****' ))
              ''';
  if chbControlaStock.Checked then
    Q.ParamByName('Estado').Value:='S'
  else
    Q.ParamByName('Estado').Value:='N';
  Q.ParamByName('rubro').Value    :=cbRubro.KeyValue;
  Q.ParamByName('subrubro').Value :=cbSubRubro.KeyValue;
  Q.ExecSQL;
  Q.Close;
  FreeANdNil(Q);
  Screen.Cursor:=crDefault;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spClasesClick(Sender: TObject);
begin
  inherited;
  if CBClases.ItemIndex>0 then
    begin

      Screen.Cursor:=crHourGlass;
      QStockClases.Close;
      if CBClases.ItemIndex=6 then //Inactivo
        QStockClases.ParamByName('clase').Value    := 0
      else
        QStockClases.ParamByName('clase').Value    := CBClases.ItemIndex;

      QStockClases.ParamByName('rubro').Value    := cbRubro.KeyValue;
      QStockClases.ParamByName('subrubro').Value := cbSubRubro.KeyValue;
      QStockClases.ExecSQL;
      QStockClases.Close;
      Screen.Cursor:=crDefault;
    end;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spDetalleClick(Sender: TObject);
var Q:TFDQuery;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Q            := TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;

  Q.SQL.Text:='''
                update stock s set s.editadetalle= :Estado
                  where ( s.clase_articulo in (1,2,3) )
                    and ( (s.rubro_stk=:rubro or :rubro = '***' ) and (s.subrubro_stk=:subrubro or :subrubro = '*****' ))
              ''';
   Q.Close;
  if chModificaDetalle.Checked then
    Q.ParamByName('Estado').Value:='S'
  else
    Q.ParamByName('Estado').Value:='N';
  Q.ParamByName('rubro').Value    :=cbRubro.KeyValue;
  Q.ParamByName('subrubro').Value :=cbSubRubro.KeyValue;
  Q.ExecSQL;
  Q.Close;
  FreeANdNil(Q);
  Screen.Cursor:=crDefault;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  QPercivaIVA.Close;
  if chbPercibirIVA.Checked then
    QPercivaIVA.ParamByName('Estado').Value:='S'
  else
    QPercivaIVA.ParamByName('Estado').Value :='N';

  QPercivaIVA.ParamByName('IDTASA').Value   := dbcTasa.KeyValue;
  QPercivaIVA.ParamByName('rubro').Value    := cbRubro.KeyValue;
  QPercivaIVA.ParamByName('subrubro').Value := cbSubRubro.KeyValue;
  QPercivaIVA.ExecSQL;
  QPercivaIVA.Close;
  Screen.Cursor:= crDefault;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spTasaDifClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  QPercibeIVATasaDif.Close;
  if chTasaDif.Checked then
    QPercibeIVATasaDif.ParamByName('Estado').Value:='S'
  else
    QPercibeIVATasaDif.ParamByName('Estado').Value :='N';

  QPercibeIVATasaDif.ParamByName('rubro').Value    := cbRubro.KeyValue;
  QPercibeIVATasaDif.ParamByName('subrubro').Value := cbSubRubro.KeyValue;
  QPercibeIVATasaDif.ExecSQL;
  QPercibeIVATasaDif.Close;
  Screen.Cursor:= crDefault;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spWebClick(Sender: TObject);
VAR Q:TFDQuery;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Q            := TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;

  Q.SQL.Text:='''
                update stock s set s.publicar_web= :Estado
                  where ( (s.rubro_stk=:rubro or :rubro = '***' ) and
                        (s.subrubro_stk=:subrubro or :subrubro = '*****' ))
              ''';
   Q.Close;
  if chbWeb.Checked then
    Q.ParamByName('Estado').Value:='S'
  else
    Q.ParamByName('Estado').Value:='N';
  Q.ParamByName('rubro').Value    :=cbRubro.KeyValue;
  Q.ParamByName('subrubro').Value :=cbSubRubro.KeyValue;
  Q.ExecSQL;
  Q.Close;
  FreeANdNil(Q);
  Screen.Cursor:=crDefault;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spControlaStockTodosClick(Sender: TObject);
VAR Q:TFDQuery;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Q            := TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;

  Q.SQL.Text:='''
                update stock s set s.controlastock= :Estado
                  where ( (s.rubro_stk=:rubro or :rubro = '***' ) and
                        (s.subrubro_stk=:subrubro or :subrubro = '*****' ))
              ''';
   Q.Close;
  if chControlaStockGeneral.Checked then
    Q.ParamByName('Estado').Value:='S'
  else
    Q.ParamByName('Estado').Value:='N';
  Q.ParamByName('rubro').Value    :=cbRubro.KeyValue;
  Q.ParamByName('subrubro').Value :=cbSubRubro.KeyValue;
  Q.ExecSQL;
  Q.Close;
  FreeANdNil(Q);
  Screen.Cursor:=crDefault;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spActualizaCostoCompraClick(Sender: TObject);
VAR Q:TFDQuery;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Q            := TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;

  Q.SQL.Text:='''
                update stock s set s.actualizacosto= :Estado
                  where ( s.clase_articulo in (1,2,3))
                        and ( (s.rubro_stk=:rubro or :rubro = '***' ) and (s.subrubro_stk=:subrubro or :subrubro = '*****' ))
              ''';
   Q.Close;
  if chbActualizaCostoCompra.Checked then
    Q.ParamByName('Estado').Value:='S'
  else
    Q.ParamByName('Estado').Value:='N';
  Q.ParamByName('rubro').Value    :=cbRubro.KeyValue;
  Q.ParamByName('subrubro').Value :=cbSubRubro.KeyValue;
  Q.ExecSQL;
  Q.Close;
  FreeANdNil(Q);
  Screen.Cursor:=crDefault;
  Recuperar.Execute;
end;

procedure TFormAdminEstadosStock.spPreciosClick(Sender: TObject);
VAR Q:TFDQuery;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Q            := TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;

  Q.SQL.Text:='''
                update stock s set s.editaprecio = :Estado
                  where ( s.clase_articulo in (1,2,3))
                        and ( (s.rubro_stk=:rubro or :rubro = '***' ) and (s.subrubro_stk=:subrubro or :subrubro = '*****' ))
              ''';
   Q.Close;
  if chbModificaPrecios.Checked then
    Q.ParamByName('Estado').Value:='S'
  else
    Q.ParamByName('Estado').Value:='N';
  Q.ParamByName('rubro').Value    :=cbRubro.KeyValue;
  Q.ParamByName('subrubro').Value :=cbSubRubro.KeyValue;
  Q.ExecSQL;
  Q.Close;
  FreeANdNil(Q);
  Screen.Cursor:=crDefault;
  Recuperar.Execute;

end;

procedure TFormAdminEstadosStock.spServiciosClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  QStockConceptos.Close;
  if chbControlaStockServicios.Checked then
    QStockConceptos.ParamByName('Estado').Value:='S'
  else
    QStockConceptos.ParamByName('Estado').Value:='N';
  QStockConceptos.ParamByName('rubro').Value    :=cbRubro.KeyValue;
  QStockConceptos.ParamByName('subrubro').Value :=cbSubRubro.KeyValue;
  QStockConceptos.ExecSQL;
  QStockConceptos.Close;
  Screen.Cursor:=crDefault;
  Recuperar.Execute;
end;

end.
