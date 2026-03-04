unit ULstControlOTrabajo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, JvDBLookup,
  Datasnap.Provider, Datasnap.DBClient, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask, JvExMask, JvToolEdit,System.DateUtils,
  DataExport, DataToXLS, Vcl.CheckLst,VirtualUI_SDK, Vcl.Menus, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormControlOTrabajo = class(TFormABMBase)
    pnCabecera: TPanel;
    RxLabel2: TJvLabel;
    cbTipoCpbte: TJvDBLookupCombo;
    CDSOrdenes: TClientDataSet;
    DSPOrdenes: TDataSetProvider;
    DSOrdenes: TDataSource;
    CDSOrdenesNROCPBTE: TStringField;
    CDSOrdenesFECHAINICIO: TSQLTimeStampField;
    CDSOrdenesCODIGO: TStringField;
    CDSOrdenesNOMBRE: TStringField;
    CDSOrdenesFACTURANRO: TStringField;
    CDSOrdenesDESCRIPCION: TStringField;
    CDSOrdenesNRO_TARJETA_C: TStringField;
    CDSOrdenesDETALLE: TStringField;
    CDSOrdenesESTADO: TIntegerField;
    dbgOrdenes: TJvDBGrid;
    CDSOrdenesFECHAFINAL: TSQLTimeStampField;
    CDSOrdenesMOTIVO: TStringField;
    CDSOrdenesLOCALIDAD: TStringField;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    DSComprobantes: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    DSPComprobantes: TDataSetProvider;
    pnColumnas: TPanel;
    btnSalirColumna: TSpeedButton;
    chklstColumnas: TCheckListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    CDSOrdenesMUESTRAESTADO: TStringField;
    CDSOrdenesMORA: TIntegerField;
    CDSOrdenesID_OT: TIntegerField;
    ModificarFechaFinalizacion: TAction;
    PopupMenu1: TPopupMenu;
    ModificarFechaFinalizacion1: TMenuItem;
    LimpiarFecha: TAction;
    LimpiarFecha1: TMenuItem;
    QOredenes: TFDQuery;
    CDSOrdenesTOTAL: TFloatField;
    QComprobante: TFDQuery;
    Label1: TLabel;
    QCambioFecha: TFDQuery;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure cbTipoCpbteClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgOrdenesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSOrdenesCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgOrdenesDblClick(Sender: TObject);
    procedure chklstColumnasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ModificarFechaFinalizacionExecute(Sender: TObject);
    procedure LimpiarFechaExecute(Sender: TObject);
    procedure btnSalirColumnaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlOTrabajo: TFormControlOTrabajo;

implementation
uses UDMain_FD,UOrdenDeTrabajo, UFecha;
{$R *.dfm}

procedure TFormControlOTrabajo.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if Not(CDSOrdenes.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='Ordenes';

      if VirtualUI.Active then
        SaveDialog1.FileName :=(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);

      if SaveDialog1.Execute Then
       if SaveDialog1.FileName<>'' Then
          DataToXLS1.SaveToFile(SaveDialog1.FileName);

      if VirtualUI.Active then
        begin
          VirtualUI.StdDialogs:=False;
          VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;
    end
  else
    ShowMessage('No hay datos para exportar');
  pnColumnas.Visible:=False;
end;

procedure TFormControlOTrabajo.BitBtn2Click(Sender: TObject);
begin
  inherited;
  pnColumnas.Visible:=True;
end;

procedure TFormControlOTrabajo.btnSalirColumnaClick(Sender: TObject);
begin
  inherited;
  pnColumnas.Visible:=False;
end;

procedure TFormControlOTrabajo.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOrdenes.Close;
  CDSOrdenes.IndexDefs.Clear;
  CDSOrdenes.IndexFieldNames:='';
  CDSOrdenes.Params.ParamByName('tipo').Value :=cbTipoCpbte.KeyValue;
  CDSOrdenes.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSOrdenes.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSOrdenes.Open;
end;

procedure TFormControlOTrabajo.cbTipoCpbteClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlOTrabajo.CDSOrdenesCalcFields(DataSet: TDataSet);
begin
  inherited;
  case CDSOrdenesESTADO.Value of
   0:CDSOrdenesMUESTRAESTADO.Value:='PRESUPUESTO';
   1:CDSOrdenesMUESTRAESTADO.Value:='ACEPTADO';
   2:CDSOrdenesMUESTRAESTADO.Value:='REPARADO';
   3:CDSOrdenesMUESTRAESTADO.Value:='RECLAMO';
   4:CDSOrdenesMUESTRAESTADO.Value:='GARANTIA';
   5:CDSOrdenesMUESTRAESTADO.Value:='NO ACEPTADO PRES.';
   6:CDSOrdenesMUESTRAESTADO.Value:='SIN REPARACION';
   7:CDSOrdenesMUESTRAESTADO.Value:='RETIRADA';
   8:CDSOrdenesMUESTRAESTADO.Value:='FINALIZADA';
  end;
 if CDSOrdenesFECHAFINAL.AsString<>'' then
   CDSOrdenesMORA.Value:=DaysBetween(CDSOrdenesFECHAFINAL.AsDateTime,CDSOrdenesFECHAINICIO.AsDateTime)
 else
      CDSOrdenesMORA.Value:=0;

end;

procedure TFormControlOTrabajo.chklstColumnasClick(Sender: TObject);
begin
  inherited;
 DataToXLS1.Columns[chklstColumnas.ItemIndex].Save:=chklstColumnas.Checked[chklstColumnas.ItemIndex];
end;

procedure TFormControlOTrabajo.dbgOrdenesDblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormOrdenDeTrabajo)) Then
     FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(Application);
   FormOrdenDeTrabajo.DatoNew  :=CDSOrdenesID_OT.AsString;
   FormOrdenDeTrabajo.TipoCpbte:='OT';


   FormOrdenDeTrabajo.Recuperar.Execute;
   FormOrdenDeTrabajo.Show;
end;

procedure TFormControlOTrabajo.dbgOrdenesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgOrdenes.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlOTrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlOTrabajo.FormCreate(Sender: TObject);
var d,m,y:word;
i:Integer;
begin
  inherited;

  autoSize:=False;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));


  CDSComprobantes.Close;
  CDSComprobantes.Open;

  for i:= 0 to dbgOrdenes.Columns.Count-1 do
    begin
      //NombreCampo.Add(QClientes.Fields[i].FieldName);
      chklstColumnas.Items.Add(dbgOrdenes.Columns[i].Title.Caption);
      chklstColumnas.Checked[i] :=True;// ColumnasExpXLS[i+1]='1';//   True;
      DataToXLS1.Columns[i].Save:=True;//ColumnasExpXLS[i+1]='1';
    end;
end;

procedure TFormControlOTrabajo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlOTrabajo:=nil;
end;

procedure TFormControlOTrabajo.LimpiarFechaExecute(Sender: TObject);
begin
  inherited;
  QCambioFecha.Close;
  QCambioFecha.ParamByName('fecha').Clear;
  QCambioFecha.ParamByName('id').Value        :=CDSOrdenesID_OT.Value;
  QCambioFecha.ExecSQL();
  QCambioFecha.Close;
  CDSOrdenes.Refresh;
end;

procedure TFormControlOTrabajo.ModificarFechaFinalizacionExecute(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFecha)) then
    FormFecha:=TFormFecha.Create(self);
  formFecha.dbcCtaBco.Visible  :=False;
  formFecha.dbcSucursal.Visible:=False;
  FormFecha.fecha         :=Date;
  FormFecha.ShowModal;
  if FormFecha.ModalResult=mrOk then
    begin
      QCambioFecha.Close;
      QCambioFecha.ParamByName('fecha').AsDateTime:=FormFecha.fecha;
      QCambioFecha.ParamByName('id').Value        :=CDSOrdenesID_OT.Value;
      QCambioFecha.ExecSQL();
      QCambioFecha.Close;
      CDSOrdenes.Refresh;
    end;
end;

procedure TFormControlOTrabajo.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
 DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.
