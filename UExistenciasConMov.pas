unit UExistenciasConMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Provider, DBClient, JvExControls, JvDBLookup,
  ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvLabel, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, cxCustomPivotGrid, cxDBPivotGrid,DateUtils,cxExportPivotGridLink,
  cxGridTableView, dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador,VirtualUI_SDK, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, System.ImageList;

type
  TFormExistenciaConMov = class(TFormABMBase)
    pnCab: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edFecha: TJvDateEdit;
    UpDown1: TUpDown;
    dbcDeposito: TJvDBLookupCombo;
    dbcRubro: TJvDBLookupCombo;
    dbcSubRubro: TJvDBLookupCombo;
    DSRubro: TDataSource;
    DSSubRubro: TDataSource;
    DSDepositos: TDataSource;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    DSPDepositos: TDataSetProvider;
    DSMovimientos: TDataSource;
    CDSMovimientos: TClientDataSet;
    DSPMovimientos: TDataSetProvider;
    CDSMovimientosCODIGO_ART: TStringField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosRUBRO: TStringField;
    CDSMovimientosSUBRUBRO: TStringField;
    CDSMovimientosDEPOSITO: TIntegerField;
    CDSMovimientosDIA: TIntegerField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    DSMarca: TDataSource;
    Label4: TLabel;
    dbcMarca: TJvDBLookupCombo;
    Panel3: TPanel;
    QMovimientos: TFDQuery;
    CDSMovimientosFISICO: TFloatField;
    CDSMovimientosACOPIO: TFloatField;
    CDSMovimientosVENTAS: TFloatField;
    CDSMovimientosCOMPRAS: TFloatField;
    CDSMovimientosCOMPROM: TFloatField;
    CDSMovimientosSALDO: TFloatField;
    QMarcas: TFDQuery;
    QMarcasMARCA_STK: TStringField;
    QMarcasDESCRIPCION_MARCA: TStringField;
    QRubros: TFDQuery;
    QRubrosCODIGO_RUBRO: TStringField;
    QRubrosDETALLE_RUBRO: TStringField;
    QSubRubro: TFDQuery;
    QDepositos: TFDQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    QRubrosCONTROL_RUBRO: TStringField;
    QRubrosFUERA_PROMO: TStringField;
    RxLabel2: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcRubroChange(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure cxDBPivotGrid1DblClick(Sender: TObject);
    procedure cxDBPivotGrid1CustomDrawCell(Sender: TcxCustomPivotGrid;
      ACanvas: TcxCanvas; AViewInfo: TcxPivotGridDataCellViewInfo;
      var ADone: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExistenciaConMov: TFormExistenciaConMov;

implementation

uses UMovStockDiario,DMBuscadoresForm,UDMain_FD;

{$R *.dfm}

procedure TFormExistenciaConMov.BuscarExecute(Sender: TObject);
var AGroupItem: TcxPivotGridGroupItem;
i:Integer;
begin
  inherited;
  if dbcDeposito.KeyValue>0 then
    begin
      Screen.Cursor:=crHourGlass;
      sbEstado.SimpleText:='Iniciando Consulta....';
      Application.ProcessMessages;
   //   cxDBPivotGrid1.DataSource:=nil;
      CDSMovimientos.Close;
      CDSMovimientos.Params.ParamByName('codigo').AsString   := '********';
      CDSMovimientos.Params.ParamByName('Fecha').AsDate      := edFecha.Date;
      CDSMovimientos.Params.ParamByName('rubro').AsString    := dbcRubro.KeyValue;
      CDSMovimientos.Params.ParamByName('subrubro').AsString := dbcSubRubro.KeyValue;
      CDSMovimientos.Params.ParamByName('deposito').AsString := dbcDeposito.KeyValue;
      CDSMovimientos.Params.ParamByName('marca').AsString    := dbcMarca.KeyValue;
      CDSMovimientos.Open;
     // cxDBPivotGrid1.DataSource:=DSMovimientos;
      sbEstado.SimpleText:='Cargando Datos de Consulta....';
      Application.ProcessMessages;

   //   CDSMovimientos.IndexFieldNames:='CODIGO_ART';

      cxDBPivotGrid1.BeginUpdate;
      with cxDBPivotGrid1.ViewData do
      begin
        for I := 0 to RowCount - 1 do
          begin
            AGroupItem:=cxDBPivotGrid1.ViewData.Rows[i].GroupItem;
            AGroupItem.Expanded:=True;
          end;
      end;
      cxDBPivotGrid1.EndUpdate;

      CDSMovimientos.First;
      Screen.Cursor:=crDefault;
      cxDBPivotGrid1.SetFocus;
    end;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  cxDBPivotGrid1.SetFocus;

end;

procedure TFormExistenciaConMov.cxDBPivotGrid1CustomDrawCell(
  Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas;
  AViewInfo: TcxPivotGridDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.Column.Field.Name = 'cxDBPivotGrid1Field7') or
     (AViewInfo.Column.Field.Name = 'cxDBPivotGrid1Field3')   then
    ACanvas.Brush.Color := clInfoBk;

end;

procedure TFormExistenciaConMov.cxDBPivotGrid1DblClick(Sender: TObject);
var AViewInfo: TcxPivotGridDataCellViewInfo;

var
  ARow,AColumn: TcxPivotGridViewDataItem;
  codigo,dia,AValue: string;
begin
  if cxDBPivotGrid1.HitTest.HitAtDataCell then
  begin
   ARow    := TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Row;
   Caption := ARow.GetGroupItemByField(cxDBPivotGrid1Field1).DisplayText;
   Codigo  := ARow.GetGroupItemByField(cxDBPivotGrid1Field1).DisplayText;

   AColumn := TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Column;
   Caption := Caption+'-'+AColumn.GetGroupItemByField(cxDBPivotGrid1Field6).DisplayText;
   dia     := AColumn.GetGroupItemByField(cxDBPivotGrid1Field6).DisplayText;

   AValue  := VarToStr(TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Value);

   if StrToFloat( AValue)>0  then
     begin
       if Not(Assigned(FormMovStockDiario)) then
         FormMovStockDiario:=TFormMovStockDiario.Create(self);
       FormMovStockDiario.Codigo   := codigo;
       FormMovStockDiario.Deposito := dbcDeposito.KeyValue;
       FormMovStockDiario.Fecha    := EncodeDate(YearOf(edFecha.Date),MonthOf(edFecha.Date),StrToInt(dia));
       FormMovStockDiario.Show;
     end;
  end;

end;

procedure TFormExistenciaConMov.dbcRubroChange(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.ParamByName('rubro').Value:=QRubrosCODIGO_RUBRO.Value;
  QSubRubro.Open;
  dbcSubRubro.KeyValue:='';
end;

procedure TFormExistenciaConMov.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSMovimientos.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='StockGral';
      SaveDialog1.DefaultExt:='XLS';
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;
          end;
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormExistenciaConMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSDepositos.Close;
  QRubros.Close;
  QSubRubro.Close;
  QMarcas.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormExistenciaConMov.FormCreate(Sender: TObject);
begin
  inherited;
  CDSDepositos.Open;
  QRubros.Open;
  QSubRubro.Open;
  QMarcas.Open;
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  dbcDeposito.keyValue:=DepositoPorDefecto;

end;

procedure TFormExistenciaConMov.FormDestroy(Sender: TObject);
begin
  inherited;
  FormExistenciaConMov:=nil;
end;

procedure TFormExistenciaConMov.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if  Not(ActiveControl is TUpDown) then

  inherited;

end;

procedure TFormExistenciaConMov.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
 inherited;
   if Button=btNext then
    edFecha.Date:=IncMonth(edFecha.Date,1)
  else
  if Button=btPrev then
    edFecha.Date:=IncMonth(edFecha.Date,-1);
 // Buscar.Execute;
end;

end.
