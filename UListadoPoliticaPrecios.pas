unit UListadoPoliticaPrecios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls,StrUtils,
  Buttons, StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids,  frxDBSet,
  frxClass, frxExportXLS, frxExportRTF, DataToAscii,
  DataExport, DataToXLS,ComObj, ImgList, JvComponentBase, JvExControls, JvGradient,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup,
  JvExDBGrids, JvDBGrid, JvBaseDlg, JvProgressDialog, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxCustomPivotGrid, cxDBPivotGrid, dxSkinsDefaultPainters, System.Actions,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  JvAppStorage, JvAppIniStorage ,cxExportPivotGridLink, dxPScxExtComCtrlsLnk,
  Data.DB, Datasnap.DBClient, Datasnap.Provider,VirtualUI_SDK, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, System.ImageList, frCoreClasses;

type
  TFormListaPoliticasPrecios = class(TFormABMBase)
    DSStock: TDataSource;
    DSPoliticaPrecios: TDataSource;
    DSPPoliticaPrecios: TDataSetProvider;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSPoliticaPrecios: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockDETALLE_RUBRO: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockDETALLE_SUBRUBRO: TStringField;
    CDSPoliticaPreciosCODIGOARTICULO: TStringField;
    CDSPoliticaPreciosID_CAB: TIntegerField;
    btImprimir: TBitBtn;
    frxReporte: TfrxReport;
    frDBPrecios: TfrxDBDataset;
    frDBStock: TfrxDBDataset;
    Imprimir: TAction;
    DSSubRubro: TDataSource;
    DSRubro: TDataSource;
    DataToXLS1: TDataToXLS;
    DataToAscii1: TDataToAscii;
    pdProgress: TJvProgressDialog;
    CDSPoliticaPreciosNOMBRE: TStringField;
    DSPStock_2: TDataSetProvider;
    CDSStock_2: TClientDataSet;
    DSStock_2: TDataSource;
    CDSStock_2CODIGO_STK: TStringField;
    CDSStock_2DETALLE_STK: TStringField;
    CDSStock_2RUBRO_STK: TStringField;
    CDSStock_2DETALLE_RUBRO: TStringField;
    CDSStock_2SUBRUBRO_STK: TStringField;
    CDSStock_2DETALLE_SUBRUBRO: TStringField;
    CDSStock_2NOMBRELISTA: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    dbgArticulos: TJvDBGrid;
    dbgPrecios: TJvDBGrid;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    rxcRubro: TJvDBLookupCombo;
    rxcSubRubro: TJvDBLookupCombo;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    Label19: TLabel;
    dbcVistas: TJvDBLookupCombo;
    spVistas: TSpeedButton;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    QSubRubro: TFDQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QStock: TFDQuery;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    QPoliticaPrecios: TFDQuery;
    CDSPoliticaPreciosPRECIO: TFloatField;
    CDSPoliticaPreciosRECARGO: TFloatField;
    QStock_2: TFDQuery;
    CDSStock_2CODIGOALTERNATIVO: TStringField;
    CDSStock_2FIJACION_PRECIO_EXENTO: TFloatField;
    CDSStock_2FIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStock_2FIJACION_PRECIO_IVA: TFloatField;
    CDSStock_2FIJACION_PRECIO_FINAL: TFloatField;
    CDSStock_2FIJACION_PRECIO_TOTAL: TFloatField;
    CDSStock_2COSTOEXENTOLISTA: TFloatField;
    CDSStock_2COSTOGRAVLISTA: TFloatField;
    CDSStock_2COSTOTOTLISTA: TFloatField;
    CDSStock_2RECARGILISTA: TFloatField;
    CDSStock_2DESCUENTOLISTA: TFloatField;
    CDSStock_2PRECIOEXELISTA: TFloatField;
    CDSStock_2PRECIOGRAVLISTA: TFloatField;
    CDSStock_2PRECIOIVALISTA: TFloatField;
    CDSStock_2PRECIOLISTA: TFloatField;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    pnPie: TPanel;
    CDSPoliticaPreciosIVA_TASA: TFloatField;
    CDSPoliticaPreciosDESCUENTO: TFloatField;
    CDSPoliticaPreciosFECHA: TSQLTimeStampField;
    QVista: TFDQuery;
    QVistaID: TIntegerField;
    QVistaVISTA: TBlobField;
    QVistaDESCRIPCION: TStringField;
    QVistaDEFECTO: TStringField;
    QVistaORIGEN: TStringField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbgArticulosTitleClick(Column: TColumn);
    procedure rxcRubroChange(Sender: TObject);
    procedure rxcSubRubroEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListaPoliticasPrecios: TFormListaPoliticasPrecios;

implementation

uses UDMain_FD, UVistasGrillas;

{$R *.DFM}

procedure TFormListaPoliticasPrecios.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize :=False;
  QRubro.Open;
  QSubRubro.Open;

  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='POLITICAS';
  CDSVista.Open;

  PageControl1.ActivePageIndex:=0;
end;

procedure TFormListaPoliticasPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaPoliticas');
  //*************************************************************
  inherited;
  QStock.Close;
  CDSPoliticaPrecios.Close;
  QRubro.Close;
  QSubRubro.Close;
  Action:=caFree;
end;

procedure TFormListaPoliticasPrecios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListaPoliticasPrecios:=nil;
end;

procedure TFormListaPoliticasPrecios.FormShow(Sender: TObject);
begin
  inherited;
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaPoliticas');
  //*************************************************************
end;

procedure TFormListaPoliticasPrecios.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoPoliticaPrecios.fr3');
  //frLibro.PrepareReport;

  frxReporte.ShowReport;

end;

procedure TFormListaPoliticasPrecios.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
  i:integer;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream);
   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormListaPoliticasPrecios.dbgArticulosTitleClick(
  Column: TColumn);
begin
  inherited;
  CDSStock.IndexFieldNames:='rubro_stk;subrubro_stk;'+Column.FieldName;

end;

procedure TFormListaPoliticasPrecios.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListaPoliticasPrecios.rxcRubroChange(Sender: TObject);
begin
  inherited;
  CDSStock.Filtered := False;
  CDSStock.Filter := '';
  IF rxcRubro.Value <> '' THEN
    BEGIN
      CDSStock.Filter := 'rubro_stk=' + char(39) +
         rxcRubro.value + char(39);
      CDSStock.Filter := 'rubro_stk=' + char(39) +
         rxcRubro.value + char(39);
     end;
  IF rxcSubRubro.Value <> '' THEN
    BEGIN
      iF (rxcRubro.Value <> '') THEN
        begin
          CDSStock.Filter := CDSStock.Filter + ' and ' +
            'subrubro_stk=' + char(39) + rxcSubRubro.value + char(39);
          CDSStock.Filter := CDSStock.Filter + ' and ' +
            'subrubro_stk=' + char(39) + rxcSubRubro.value + char(39);
        end
      ELSE
        begin
          CDSStock.Filter := 'subrubro_stk=' + char(39) +
            rxcSubRubro.value + char(39);
          CDSStock.Filter := 'subrubro_stk=' + char(39) +
            rxcSubRubro.value + char(39);
        end;
    END;
  CDSStock.Filtered := True;

end;

procedure TFormListaPoliticasPrecios.rxcSubRubroEnter(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.ParamByName('rubro').value:=rxcRubro.Value;
  QSubRubro.Open;
end;

procedure TFormListaPoliticasPrecios.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormListaPoliticasPrecios.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='POLITICAS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='POLITICAS';
  CDSVista.Open;


end;

procedure TFormListaPoliticasPrecios.BitBtn1Click(Sender: TObject);
var i:Integer;
begin
  inherited;
  CDSStock_2.Close;
  CDSStock_2.Open;
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormListaPoliticasPrecios.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListaPoliticasPrecios.BitBtn3Click(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSStock_2.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='PoliticasPrecios';
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);

            if VirtualUI.Active then
               VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListaPoliticasPrecios.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSStock.Open;
  CDSPoliticaPrecios.Open;
  CDSPoliticaPrecios.MasterSource   :=DSStock;
  CDSPoliticaPrecios.IndexFieldNames:='codigoarticulo;id_cab';
  CDSPoliticaPrecios.MasterFields   :='codigo_stk';

end;

procedure TFormListaPoliticasPrecios.Button1Click(Sender: TObject);
begin
  inherited;

// procedure DoExportFile(AExport: TDataExport; AExtencion : String);
//  begin
//    if chkCopyColumns.Checked Then
//      AExport.GetFields.Assign( dbgContacts.Columns )
//    else
//      AExport.GetFields.Clear; { Dynamic Fields }
//
//    AExport.SaveToFile( ChangeFileExt( SaveDialog.FileName, AExtencion ) );
//  end;
//begin
//  if SaveDialog.Execute Then
//    case SaveDialog.FilterIndex of
//      1: DoExportFile( DataToDbf1,   '.dbf' );
//      2: DoExportFile( DataToAscii1, '.csv' );
//      3: DoExportFile( DataToXLS1,   '.xls' );
//      4: DoExportFile( DataToWK11,   '.wk1' );
//      5: DoExportFile( DataToHTML1,  '.html' );
//    end;
//  DataToXLS1.SaveToFile('c:\cc.xls');
//  DataToAscii1.SaveToFile('c:\cc.txt');
//  DataToAscii1.Active:=True;
end;

procedure TFormListaPoliticasPrecios.Button2Click(Sender: TObject);
var
  excel:Variant;
  fila, columna:Integer;
  SubRubro:String;
begin
  inherited;
   // with qry_excel, qry_excel.SQL do
   // begin
   //   Close;
    //  Open;
   //   if IsEmpty then
   //     begin
   //       MessageDlg('No existen datos que reportar!', mtWarning,[mbOk], 0);
   //       Exit;
   //     end;
      TRY
        excel := CreateOleObject('Excel.Application');
      EXCEPT
        ShowMessage('Excel no se pudo iniciar.');
        exit;
      END;
      excel.Visible := False;
      //First;
      fila          := 1;
      excel.Workbooks.Add;
      //Poner los títulos
      for columna := 0 to dbgArticulos.Columns.Count-1 do
        excel.Cells[fila,columna + 1].Value := dbgArticulos.Columns[columna].Title.Caption;

    //  SubRubro:=dbgArticulos.DataSource.DataSet.fieldByName('DETALLE_SUBRUBRO').Value;
      SubRubro:='';
      pdProgress.Min:=0;
      pdProgress.Max:=CDSStock.RecordCount-1;
      pdProgress.Position:=0;
      pdProgress.Show;
    //  CDSStock.DisableControls;
    //  CDSPoliticaPrecios.DisableControls;
      columna := dbgArticulos.Columns.Count+1;
      while not(dbgPrecios.DataSource.DataSet.eof) Do
        begin
          excel.Cells[fila,columna].Value := 'Lista Nº '+ dbgPrecios.DataSource.DataSet.Fields[1].AsString;
          Inc(Columna);
          dbgPrecios.DataSource.DataSet.Next;
        end;
      fila:=3;
      dbgArticulos.DataSource.DataSet.First;
      dbgPrecios.DataSource.DataSet.First;
      //Desengachar controles para agilizar
      //dbgArticulos.DataSource.DataSet.DisableControls;
      TRY
        while not(dbgArticulos.DataSource.DataSet.eof) do
          begin
            pdProgress.Position:=pdProgress.Position+1;
            if SubRubro<>dbgArticulos.DataSource.DataSet.fieldByName('DETALLE_SUBRUBRO').AsString Then
              begin
                SubRubro:=dbgArticulos.DataSource.DataSet.fieldByName('DETALLE_SUBRUBRO').AsString;
                excel.Cells[fila,1].Value := SubRubro;
                Inc(Fila);
              end;
            for columna := 0 to dbgArticulos.Columns.Count-1 do
              excel.Cells[fila,columna + 1].Value := dbgArticulos.DataSource.DataSet.FieldByName(dbgArticulos.Columns[columna].FieldName).asString;
            dbgPrecios.DataSource.DataSet.First;
            columna := dbgArticulos.Columns.Count+1;
            while not(dbgPrecios.DataSource.DataSet.eof) do
              begin
                excel.Cells[fila,columna].Value := StrToFloat(FormatFloat('0.00',dbgPrecios.DataSource.DataSet.FieldByName('PRECIO').AsFloat));
                Inc(Columna);
                dbgPrecios.DataSource.DataSet.Next;
              end;

            dbgArticulos.DataSource.DataSet.Next;
            inc(fila);
          end;
      EXCEPT
        ShowMessage('Atención, se produjo un error en la transmisión.');
      END;
//   CDSStock.EnableControls;
 //  CDSPoliticaPrecios.EnableControls;

   pdProgress.Hide;
   excel.Visible := True;

//    dbgArticulos.DataSource.DataSet.EnableControls;
    //end;
end;

end.