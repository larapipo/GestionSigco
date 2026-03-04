unit UFiltroCpbte_Vta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, Grids, DBGrids, JvExControls,
  JvDBLookup, StdCtrls, JvComponentBase, ImgList,
    ActnList, ComCtrls, JvGradient,
  Buttons, ToolWin, ExtCtrls, Mask, DBCtrls, IBGenerator, JvFormPlacement,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.FMTBcd, JvExDBGrids, JvDBGrid, Data.SqlExpr, JvLabel,
  JvDBControls, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormFiltroCpbte_vta = class(TFormABMBase)
    Label1: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    dbgDetalle: TDBGrid;
    Label4: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DSComprobantes: TDataSource;
    DSSucrusal: TDataSource;
    DSPCpbteFiltroDet: TDataSetProvider;
    CDSCpbteFiltroDet: TClientDataSet;
    CDSCpbteFiltroDetID: TIntegerField;
    CDSCpbteFiltroDetID_CAB: TIntegerField;
    CDSCpbteFiltroDetID_CPBTE: TIntegerField;
    CDSCpbteFiltroDetMUESTRACOMPROBANTE: TStringField;
    CDSCpbteFiltroDetMUESTRATIPO: TStringField;
    CDSCpbteFiltroDetMUESTRACLASE: TStringField;
    DSCpbteFiltroDet: TDataSource;
    DSPCpbteFiltroCab: TDataSetProvider;
    CDSCpbteFiltroCab: TClientDataSet;
    Label3: TLabel;
    dbeDetalle: TDBEdit;
    Label5: TLabel;
    dbeId: TDBEdit;
    QUltimoCodigoMAX: TIntegerField;
    TraerComprobantes: TAction;
    PasaTodo: TAction;
    CDSCpbteFiltroDetMUESTRASUC: TStringField;
    ibIdDet: TIBGenerator;
    BorraTodo: TAction;
    CDSCpbteFiltroCabID: TIntegerField;
    CDSCpbteFiltroCabDETALLE: TStringField;
    CDSComprobantes: TClientDataSet;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesMUESTRASUCURSAL: TStringField;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    dbgComprobantes: TJvDBGrid;
    CDSCpbteFiltroCabGRUPO: TSmallintField;
    JvDBComboBox1: TJvDBComboBox;
    Label6: TLabel;
    CDSComprobantesMUESTRAFILTRO: TStringField;
    Label7: TLabel;
    QBuscador: TFDQuery;
    QBuscadorID: TIntegerField;
    QBuscadorDETALLE: TStringField;
    QBuscadorGRUPO: TSmallintField;
    QCpbteFiltroCab: TFDQuery;
    QCpbteFiltroDet: TFDQuery;
    QCpbteFiltroDetID: TIntegerField;
    QCpbteFiltroDetID_CAB: TIntegerField;
    QCpbteFiltroDetID_CPBTE: TIntegerField;
    QCpbteFiltroDetMUESTRACOMPROBANTE: TStringField;
    QCpbteFiltroDetMUESTRATIPO: TStringField;
    QCpbteFiltroDetMUESTRACLASE: TStringField;
    QCpbteFiltroDetMUESTRASUC: TStringField;
    QComprobantes: TFDQuery;
    QVerificaUsado: TFDQuery;
    QVerificaUsadoID: TIntegerField;
    chControl: TCheckBox;
    PasarSeleccionados: TAction;
    SpeedButton3: TSpeedButton;
    QCpbteFiltroCabID: TIntegerField;
    QCpbteFiltroCabDETALLE: TStringField;
    QCpbteFiltroCabGRUPO: TSmallintField;
    QCpbteFiltroCabMODO: TIntegerField;
    JvDBComboBox2: TJvDBComboBox;
    CDSCpbteFiltroCabMODO: TIntegerField;
    procedure CDSCpbteFiltroCabNewRecord(DataSet: TDataSet);
    procedure CDSCpbteFiltroDetNewRecord(DataSet: TDataSet);
    procedure dbgDetalleDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgDetalleDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure TraerComprobantesExecute(Sender: TObject);
    procedure PasaTodoExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BorraTodoExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSCpbteFiltroDetBeforePost(DataSet: TDataSet);
    procedure dbgComprobantesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgComprobantesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PasarSeleccionadosExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroCpbte_vta: TFormFiltroCpbte_vta;

implementation

uses DMBuscadoresForm, UDMain_FD;

{$R *.dfm}

procedure TFormFiltroCpbte_vta.BorraTodoExecute(Sender: TObject);
begin
  inherited;
 while not(CDSCpbteFiltroDet.eof) Do
  CDSCpbteFiltroDet.Delete;
end;

procedure TFormFiltroCpbte_vta.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscador.Close;
  QBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  QBuscador.Close;

end;

procedure TFormFiltroCpbte_vta.AgregarExecute(Sender: TObject);
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

procedure TFormFiltroCpbte_vta.CDSCpbteFiltroCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSCpbteFiltroCabID.Value:=1
  else
    CDSCpbteFiltroCabID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;

  CDSCpbteFiltroCabMODO.Value:=1

end;

procedure TFormFiltroCpbte_vta.CDSCpbteFiltroDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if chControl.Checked then
    begin
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
end;

procedure TFormFiltroCpbte_vta.CDSCpbteFiltroDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCpbteFiltroDetID.Value     := ibIdDet.IncrementFD(1);
  CDSCpbteFiltroDetID_CAB.Value := CDSCpbteFiltroCabID.Value;
end;

procedure TFormFiltroCpbte_vta.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCpbteFiltroCabID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormFiltroCpbte_vta.dbgComprobantesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (Trim(CDSComprobantesMUESTRAFILTRO.AsString)<>'') then
    dbgComprobantes.Canvas.Brush.Color:=clRed;
  if (gdFocused in State) then
    dbgComprobantes.canvas.brush.color := clBlack;
  dbgComprobantes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormFiltroCpbte_vta.dbgComprobantesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
 inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgComprobantes.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormFiltroCpbte_vta.dbgDetalleDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if (CDSCpbteFiltroDet.Locate('id_cpbte', (Source AS TDBGrid).DataSource.DataSet.FieldByName('Id_comprobante').Value,[])=False) then
    begin
      CDSCpbteFiltroDet.Append;
      WITH (Source AS TJvDBGrid).DataSource.DataSet DO
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
  dbgComprobantes.DragMode:=dmManual;
end;

procedure TFormFiltroCpbte_vta.dbgDetalleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF (Source = dbgComprobantes) and (not(DSBase.State in [dsBrowse])) THEN
    accept := True
  ELSE
    Accept := False;
  if chControl.Checked then
    if (CDSCpbteFiltroDet.Locate('id_cpbte',(Source AS TJvDBGrid).DataSource.DataSet.FieldByName('Id_comprobante').Value,[])) Then
      Accept:=False;
end;

procedure TFormFiltroCpbte_vta.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled     := True;
  dbeDetalle.Enabled      := Not(DSBase.DataSet.State=dsBrowse);
  dbeId.Enabled           := Not(DSBase.DataSet.State=dsBrowse);
  dbgComprobantes.ReadOnly:= DSBase.DataSet.State=dsBrowse;
  dbgDetalle.ReadOnly     := DSBase.DataSet.State=dsBrowse;
  PasaTodo.Enabled        := Not(DSBase.DataSet.State=dsBrowse);
  BorraTodo.Enabled       := Not(DSBase.DataSet.State=dsBrowse);

end;

procedure TFormFiltroCpbte_vta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormFiltroCpbte_vta.FormCreate(Sender: TObject);
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
  Tabla:='TABLA_CPBTE_CCVTA_CAB';
  Campo:='id';

end;

procedure TFormFiltroCpbte_vta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFiltroCpbte_vta:=nil;
end;

procedure TFormFiltroCpbte_vta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 // dbgComprobantes.DragMode:=dmManual;
  if Shift=[ssAlt] then
    dbgComprobantes.DragMode:=dmAutomatic;

 // dbgComprobantes.UnselectAll;

end;

procedure TFormFiltroCpbte_vta.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  dbgComprobantes.DragMode:=dmManual;

end;

procedure TFormFiltroCpbte_vta.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;

end;

procedure TFormFiltroCpbte_vta.PasarSeleccionadosExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  //CDSComprobantes.First;
   for I := 0 to dbgComprobantes.SelectedRows.Count - 1 do
     begin
       {$IF CompilerVersion < 24}
         dbgComprobantes.DataSource.DataSet.GotoBookmark(Pointer(dbgComprobantes.SelectedRows.Items[i]));
       {$ELSE}
         dbgComprobantes.DataSource.DataSet.GotoBookmark((dbgComprobantes.SelectedRows.Items[i]));
       {$ENDIF}
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
     end;
  CDSComprobantes.First;
  dbgComprobantes.UnselectAll;
  dbgComprobantes.DragMode :=dmManual;
end;

procedure TFormFiltroCpbte_vta.PasaTodoExecute(Sender: TObject);
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

procedure TFormFiltroCpbte_vta.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCpbteFiltroCab.Close;
  CDSCpbteFiltroCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCpbteFiltroCab.Open;

  CDSCpbteFiltroDet.Close;
  CDSCpbteFiltroDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCpbteFiltroDet.Open;

  dbgDetalle.Width:=dbgDetalle.Width+1;
  dbgDetalle.Width:=dbgDetalle.Width-1;

end;

procedure TFormFiltroCpbte_vta.TraerComprobantesExecute(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

end.
