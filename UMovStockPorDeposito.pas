unit UMovStockPorDeposito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Mask, Grids, DBGrids,Librerias,DateUtils,Strutils,
  frxDBSet, frxClass, frxVariables, ImgList, JvComponentBase,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvDBLookup, JvExMask, JvToolEdit, SqlExpr, Provider, DBClient, JvExDBGrids,
  JvDBGrid, DBCtrls, JvBaseEdits, FileCtrl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, cxCustomPivotGrid, cxDBPivotGrid, CheckLst, JvExExtCtrls,
  JvExtComponent, JvPanel, DataExport, DataToXLS,cxExportPivotGridLink,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  VirtualUI_SDK, CompBuscador,IniFiles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, Vcl.Menus, System.ImageList, dxSkinWXI,
  frCoreClasses;

type
  TFormMovTransferenciaStock = class(TFormABMBase)
    DSMov: TDataSource;
    DSDeposito: TDataSource;
    TraerMov: TAction;
    frxReporte: TfrxReport;
    frDBMov: TfrxDBDataset;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    CDSMovID_MOV: TIntegerField;
    CDSMovCODIGO_ARTICULO: TStringField;
    CDSMovTIPOOPERACION: TStringField;
    CDSMovTIPOCPBTE: TStringField;
    CDSMovCLASECPBTE: TStringField;
    CDSMovNROCPBTE: TStringField;
    CDSMovDETALLE: TStringField;
    CDSMovDETALLE_STK: TStringField;
    CDSMovFIJACION_PRECIO_TOTAL: TFloatField;
    CDSMovUNIDAD: TStringField;
    CDSMovMUESTRACODIGODEPOSITO: TIntegerField;
    CDSMovMUESTRANOMBREDEPO: TStringField;
    CDSMovDEPOSITO_ORIGEN: TIntegerField;
    CDSMovDEPOSITO_DESTINO: TIntegerField;
    CDSMovNOMBRE_DEPOSITO_ORIGEN: TStringField;
    CDSMovRECIBIDO_POR: TStringField;
    CDSMovUSUARIO: TStringField;
    CDSMovNOMBRE_DEPOSITO_DESTINO: TStringField;
    DSOrigen: TDataSource;
    DSDestino: TDataSource;
    CDSMovCOSTOTOAL: TFloatField;
    VerComprobante: TAction;
    CDSMovID_CPBTE: TIntegerField;
    CDSMovCONDETALLE: TBooleanField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgMov: TJvDBGrid;
    edTotal: TJvCalcEdit;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    pnTotales: TJvPanel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    DataToXLS1: TDataToXLS;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    btExcelGastos: TBitBtn;
    CDSMovMESMOVIMIENTO: TSmallintField;
    CDSMovANIOMOVIMIENTO: TSmallintField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    TabSheet3: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    DSCpbte: TDataSource;
    frDBCpbte: TfrxDBDataset;
    Label8: TLabel;
    Label9: TLabel;
    DataToXLS2: TDataToXLS;
    BitBtn2: TBitBtn;
    QMov: TFDQuery;
    QDeposito: TFDQuery;
    QOrigen: TFDQuery;
    QDestino: TFDQuery;
    QCpbte: TFDQuery;
    CDSMovENTRA: TFloatField;
    CDSMovSALE: TFloatField;
    CDSMovCONTENIDO_COMPRA: TFloatField;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QCpbteID_TRCAB: TIntegerField;
    QCpbteTIPOCPBTE: TStringField;
    QCpbteCLASECPBTE: TStringField;
    QCpbteLETRATR: TStringField;
    QCpbteSUCTR: TStringField;
    QCpbteNUMEROTR: TStringField;
    QCpbteNOMBRE_DEPOSITO_ORIGEN: TStringField;
    QCpbteNOMBRE_DEPOSITO_DESTINO: TStringField;
    QCpbteNROCPBTE: TStringField;
    QCpbteSUCURSAL: TIntegerField;
    QCpbteDETALLE: TStringField;
    pnCabecera: TPanel;
    Label12: TLabel;
    Desde: TJvDateEdit;
    Label1: TLabel;
    dbcOrigen: TJvDBLookupCombo;
    Hasta: TJvDateEdit;
    Label13: TLabel;
    UpDown1: TUpDown;
    Label2: TLabel;
    dbcDestino: TJvDBLookupCombo;
    RxDBDeposito: TJvDBLookupCombo;
    Label14: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    pnPie: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    chbDetalle: TAdvOfficeCheckBox;
    rgModo: TAdvOfficeRadioGroup;
    rgCosto: TAdvOfficeRadioGroup;
    pnPieListado: TPanel;
    pnPieAgrupado: TPanel;
    pnPieCOmprobantes: TPanel;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovFECHA_HORA: TSQLTimeStampField;
    CDSMovFECHA_RECECION: TSQLTimeStampField;
    QCpbteFECHA: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    CDSMovDETALLE_RUBRO: TStringField;
    CDSMovDETALLE_SUBRUBRO: TStringField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    CDSMovCODIGOALTERNATIVO: TStringField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure TraerMovExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgMovTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbcOrigenClick(Sender: TObject);
    procedure dbcDestinoClick(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure btExcelGastosClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LimpiarFiltrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Filtrar;
    procedure Sumar;
  end;

 TPivotGridAccess = class(TcxDBPivotGrid);
 TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormMovTransferenciaStock: TFormMovTransferenciaStock;
  FDragDrop : Boolean;
  AMoved : Boolean;


implementation

uses UTransferencia,UDMain_FD;

{$R *.DFM}

procedure TFormMovTransferenciaStock.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 pnTotales.Visible:=False;
end;

procedure TFormMovTransferenciaStock.Sumar;
var p:TBookmark;
begin
  edTotal.Value:=0;
  p:=CDSMov.GetBookmark;
  CDSMov.DisableControls;
  CDSMov.First;
  while Not(CDSMov.Eof) do
    begin
      edTotal.Value:=edTotal.Value+(CDSMovFIJACION_PRECIO_TOTAL.Value*(CDSMovENTRA.AsFloat-CDSMovSALE.AsFloat));
      CDSMov.Next;
    end;
  CDSMov.GotoBookmark(p);
  CDSMov.FreeBookmark(p);
  CDSMov.EnableControls;
end;



procedure TFormMovTransferenciaStock.Filtrar;
begin
  CDSMov.Filtered:=False;
  CDSMov.Filter:='';
  if (dbcOrigen.KeyValue = -1) and (dbcDestino.KeyValue <> -1) then
    CDSMov.Filter:='deposito_destino = '+IntToStr(dbcDestino.KeyValue)
  else
    if (dbcOrigen.KeyValue <> -1) and (dbcDestino.KeyValue = -1) then
      CDSMov.Filter:='deposito_origen = '+IntToStr(dbcOrigen.KeyValue)
    else
      if (dbcOrigen.KeyValue <> -1) and (dbcDestino.KeyValue <> -1) then
        CDSMov.Filter:='deposito_origen = '+IntToStr(dbcOrigen.KeyValue)+ 'and '+'deposito_destino = '+IntToStr(dbcDestino.KeyValue);
  if CDSMov.Filter<>'' then
    CDSMov.Filtered:=True;
  Sumar;
end;

procedure TFormMovTransferenciaStock.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:Word;
begin
  inherited;
  if Button=btnext Then
    begin
      Desde.Date := IncMonth(Desde.Date,(1));
      DecodeDate(Desde.Date,y,m,d);
      Desde.Date := EncodeDate(y,m,1);
      Hasta.Date := EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    if Button=btPrev Then
    begin
      Desde.Date := IncMonth(Desde.Date,(-1));
      DecodeDate(Desde.Date,y,m,d);
      Desde.Date := EncodeDate(y,m,1);
      Hasta.Date := EncodeDate(y,m,DaysInMonth(Desde.Date));
//      Desde.Date := IncMonth(Desde.Date,(-1));
//      Hasta.Date := IncMonth(Hasta.Date,(-1));
    end;
  TraerMov.Execute;

end;

procedure TFormMovTransferenciaStock.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if not (Assigned(FormTransferencias)) then
    FormTransferencias := TFormTransferencias.Create(self);
  FormTransferencias.DatoNew:=CDSMovID_CPBTE.AsString;
  FormTransferencias.Recuperar.Execute;
  FormTransferencias.Show;
end;

procedure TFormMovTransferenciaStock.TraerMovExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  CDSMov.Close;
  CDSMov.CommandText:='';
  CDSMov.Params.Clear;
  CDSMov.Params.CreateParam(ftDate,'hasta',ptInput);
  CDSMov.Params.CreateParam(ftDate,'desde',ptInput);
  CDSMov.Params.CreateParam(ftInteger,'deposito',ptInput);

  if rgCosto.ItemIndex=0 then
    begin
      CDSMov.CommandText:='select mov.id_mov,mov.codigo_articulo,mov.fecha,mov.tipooperacion,'+
                          'mov.tipocpbte,mov.clasecpbte,mov.nrocpbte,mov.detalle,mov.entra,'+
                          'mov.sale,s.detalle_stk,(s.fijacion_precio_total/s.contenido_compra) as fijacion_precio_total,'+
                          's.unidad,s.contenido_compra,mov.deposito as MuestraCodigoDeposito,'+
                          'dep.nombre as MuestranombreDepo,'+
                          'tr.deposito_origen,tr.deposito_destino,tr.nombre_deposito_destino,tr.nombre_deposito_origen,'+
                          'tr.fecha_rececion,mov.id_cpbte,'+
                          'tr.fecha_hora,tr.recibido_por,tr.usuario,((s.fijacion_precio_total/s.contenido_compra)*(mov.sale+mov.entra)) as CostoToal,  '+
                          'extract (month from mov.fecha) as MesMovimiento, '+
                          'extract (year from mov.fecha) as AnioMovimiento, '+
                          'r.detalle_rubro,sr.detalle_subrubro,s.reemplazo_stk as CodigoAlternativo from mov_stock mov ' +
                          'left join  stock s on s.codigo_stk=mov.codigo_articulo '+
                          'left join rubros r on r.codigo_rubro=s.rubro_stk '+
                          'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
                          'left join depositos dep on dep.id=mov.deposito '+
                          'left join trancab tr on tr.id_trcab=mov.id_cpbte '+
                          'where mov.deposito=:deposito and '+
                          'mov.fecha>= :desde and mov.fecha<= :hasta '+
                          'and mov.tipooperacion=''X'' '+
                          'order by s.detalle_stk';
    end
  else
    if rgCosto.ItemIndex=1 then
      begin
        CDSMov.CommandText:='select mov.id_mov,mov.codigo_articulo,mov.fecha,mov.tipooperacion,'+
                            'mov.tipocpbte,mov.clasecpbte,mov.nrocpbte,mov.detalle,mov.entra,'+
                            'mov.sale,s.detalle_stk,(trd.costo*1) as fijacion_precio_total,'+
                            's.unidad,s.contenido_compra,mov.deposito as MuestraCodigoDeposito,'+
                            'dep.nombre as MuestranombreDepo,'+
                            'tr.deposito_origen,tr.deposito_destino,tr.nombre_deposito_destino,tr.nombre_deposito_origen,'+
                            'tr.fecha_rececion,mov.id_cpbte,'+
                            'tr.fecha_hora,tr.recibido_por,tr.usuario,(trd.costo*(mov.sale+mov.entra)) as CostoToal , '+
                            'extract (month from mov.fecha) as MesMovimiento,'+
                            'extract (year from mov.fecha) as AnioMovimiento,'+
                            'r.detalle_rubro,sr.detalle_subrubro,s.reemplazo_stk as CodigoAlternativo from mov_stock mov ' +
                            'left join stock s on s.codigo_stk = mov.codigo_articulo '+
                            'left join rubros r on r.codigo_rubro=s.rubro_stk '+
                            'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
                                  'left join depositos dep on dep.id = mov.deposito '+
                            'left join trancab tr on tr.id_trcab = mov.id_cpbte '+
                            'left join trandet trd on trd.id_trancab = mov.id_cpbte and trd.id_trandet = mov.id_detalle_cpbte '+
                            'where mov.deposito=:deposito and '+
                            'mov.fecha>= :desde and mov.fecha<= :hasta '+
                            'and mov.tipooperacion=''X'' '+
                            'order by s.detalle_stk';
      end;
  CDSMov.Params.ParamByName('desde').Value   := Desde.Date;
  CDSMov.Params.ParamByName('Hasta').Value   := Hasta.Date;
  CDSMov.Params.ParamByName('Deposito').Value:= RxDBDeposito.KeyValue;
  CDSMov.Open;
  Filtrar;
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;

  QCpbte.Close;
  QCpbte.ParamByName('desde').Value   := Desde.Date;
  QCpbte.ParamByName('Hasta').Value   := Hasta.Date;
  QCpbte.Open;
end;

procedure TFormMovTransferenciaStock.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date));
  cxDBPivotGrid1.OptionsView.FilterFields   := False;
end;

procedure TFormMovTransferenciaStock.FormCreate(Sender: TObject);
var i:integer;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QOrigen.Open;
  QDestino.Open;
  QDeposito.OPen;
  CDSMov.Open;
  cxDBPivotGrid1.OptionsView.FilterFields   := False;
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaTx');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaTransferencias.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  ArchivoIni.Free;

  PageControl1.ActivePageIndex:=0;
  for i := 0 to chOpSumas.Count - 1 do
    chOpSumas.Checked[i]:=True;
end;

procedure TFormMovTransferenciaStock.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormMovTransferenciaStock.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;

procedure TFormMovTransferenciaStock.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormMovTransferenciaStock.cxDBPivotGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[c].ExpandAll;
   end;
 FDragDrop:=False;
 AMoved   :=False;
end;

procedure TFormMovTransferenciaStock.dbcDestinoClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormMovTransferenciaStock.dbcOrigenClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormMovTransferenciaStock.dbgMovTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgMov.DataSource.DataSet as TClientDataSet do
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

procedure TFormMovTransferenciaStock.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSMov.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='MovimientosTx';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormMovTransferenciaStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaTx');

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaTransferencias.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.Free;

  inherited;
  CDSMov.Close;
  QDeposito.Close;
  QOrigen.Close;
  QDestino.Close;
  Action:=caFree;
end;

procedure TFormMovTransferenciaStock.ImprimirExecute(Sender: TObject);
var estado:String;
begin
  inherited;
//LstMovStockporDeposito

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  if PageControl1.ActivePageIndex<2 then
    begin
      if rgModo.ItemIndex=0 then
        frxReporte.LoadFromFile(DMMain_fd.PathReportesLst+'\LstMovStockporDeposito.fr3')
      else
        if rgModo.ItemIndex=1 then
          frxReporte.LoadFromFile(DMMain_fd.PathReportesLst+'\LstMovStockporDeposito_2.fr3');
    end;
  if PageControl1.ActivePageIndex=2 then
     frxReporte.LoadFromFile(DMMain_fd.PathReportesLst+'\LstMovStockporCpbte.fr3');

  frxReporte.Variables.Clear;
  frxReporte.Variables['desde']   :=''''+Desde.Text+'''';
  frxReporte.Variables['hasta']   :=''''+hasta.Text+'''';
  frxReporte.Variables['deposito']:=''''+RxDBDeposito.Text+'''';
  frxReporte.Variables['Origen']  :=''''+dbcOrigen.Text+'''';
  frxReporte.Variables['Destino'] :=''''+dbcDestino.Text+'''';

  if chbDetalle.Checked=True Then
    frxReporte.Variables['condetalle']:=''''+'S'+''''
  else
    frxReporte.Variables['condetalle']:=''''+'N'+'''';

//  frxReporte.Variables['ConDetalle']:=chbDetalle.Checked;

  frxReporte.PrepareReport;
  frxReporte.ShowReport;

end;

procedure TFormMovTransferenciaStock.Label8Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormMovTransferenciaStock.Label9Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormMovTransferenciaStock.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   APivot:=cxDBPivotGrid1;
   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormMovTransferenciaStock.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormMovTransferenciaStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMovTransferenciaStock:=Nil;
end;

procedure TFormMovTransferenciaStock.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(QCpbte.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='CompTx';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS2.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS2.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormMovTransferenciaStock.btExcelGastosClick(Sender: TObject);
begin
  inherited;
   if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSMov.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;

      SaveDialog1.FileName:='MovimientosTx';
      SaveDialog1.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
               cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1)
            else
               cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      //cxDBPivotGrid1.OptionsView.FilterFields   :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormMovTransferenciaStock.BuscarExecute(Sender: TObject);
begin
  inherited;
  TraerMov.Execute;
end;

end.
