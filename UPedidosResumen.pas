unit UPedidosResumen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,cxExportPivotGridLink,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient,
  Datasnap.Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxCustomPivotGrid, cxDBPivotGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxVGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, VirtualUI_SDK,IniFiles,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, Vcl.CheckLst, JvExExtCtrls,
  JvExtComponent, JvPanel, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  Vcl.Tabs, JvDBLookup, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinBlack, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, System.ImageList, AdvGrid, dxSkinWXI,
  Vcl.Menus;

type
  TFormPedidosResumen = class(TFormABMBase)
    QPedidos: TFDQuery;
    DSPPedidos: TDataSetProvider;
    CDSPedidos: TClientDataSet;
    DSPedidos: TDataSource;
    btExcel2: TBitBtn;
    BitBtn2: TBitBtn;
    ToolButton1: TToolButton;
    dxComponentPrinter1: TdxComponentPrinter;
    SaveDialog1: TSaveDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Remitos: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1CLIENTE: TcxDBPivotGridField;
    cxDBPivotGrid1FACTURADO: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGO: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_PEDIDA: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_UNID_PED: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_UNID_ENTR: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_PRESENTACION: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_SUBRUBRO: TcxDBPivotGridField;
    Label1: TLabel;
    Label2: TLabel;
    btExcel: TBitBtn;
    pnTotales: TJvPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    QPedidosID_CAB: TIntegerField;
    QPedidosFECHA: TSQLTimeStampField;
    QPedidosCLIENTE: TStringField;
    QPedidosFACTURADO: TStringField;
    QPedidosNOMBRE: TStringField;
    QPedidosID: TIntegerField;
    QPedidosIDCAB: TIntegerField;
    QPedidosCODIGO: TStringField;
    QPedidosCANTIDAD_PEDIDA: TFloatField;
    QPedidosCANTIDAD_UNID_PED: TFloatField;
    QPedidosCANTIDAD_UNID_ENTR: TFloatField;
    QPedidosCANTIDAD_PRESENTACION: TFloatField;
    QPedidosDETALLE_STK: TStringField;
    QPedidosDETALLE_SUBRUBRO: TStringField;
    CDSPedidosID_CAB: TIntegerField;
    CDSPedidosFECHA: TSQLTimeStampField;
    CDSPedidosCLIENTE: TStringField;
    CDSPedidosFACTURADO: TStringField;
    CDSPedidosNOMBRE: TStringField;
    CDSPedidosID: TIntegerField;
    CDSPedidosIDCAB: TIntegerField;
    CDSPedidosCODIGO: TStringField;
    CDSPedidosCANTIDAD_PEDIDA: TFloatField;
    CDSPedidosCANTIDAD_UNID_PED: TFloatField;
    CDSPedidosCANTIDAD_UNID_ENTR: TFloatField;
    CDSPedidosCANTIDAD_PRESENTACION: TFloatField;
    CDSPedidosDETALLE_STK: TStringField;
    CDSPedidosDETALLE_SUBRUBRO: TStringField;
    Label4: TLabel;
    cxDBPivotGrid1ID: TcxDBPivotGridField;
    cxDBPivotGridIDCAB: TcxDBPivotGridField;
    NoteBook: TNotebook;
    TabSet: TTabSet;
    AdvStringGrid1: TAdvStringGrid;
    Label5: TLabel;
    dbcVistas: TJvDBLookupCombo;
    spVistas: TSpeedButton;
    QVista: TFDQuery;
    QVistaID: TIntegerField;
    QVistaVISTA: TBlobField;
    QVistaDESCRIPCION: TStringField;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    CDSPedidosGRUPO: TIntegerField;
    QPedidosCANTIDADGRUPO: TFloatField;
    CDSPedidosCANTIDADGRUPO: TFloatField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    CDSPedidosGRUPOENTRE: TFloatField;
    pnCabezera: TPanel;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros1: TMenuItem;
    N1: TMenuItem;
    ExpandirGrilla1: TMenuItem;
    LimpiarFiltros: TAction;
    ExpandirGrilla: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btExcel2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure cxDBPivotGrid1DblClick(Sender: TObject);
    procedure CDSPedidosCalcFields(DataSet: TDataSet);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LimpiarFiltrosExecute(Sender: TObject);
    procedure ExpandirGrillaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Dato: TStringList;
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormPedidosResumen: TFormPedidosResumen;
  FDragDrop : Boolean;
  AMoved    : Boolean;


implementation

uses UDMain_FD, UVistasGrillas, UPedidos,DMPedidos;
{$R *.dfm}

procedure TFormPedidosResumen.btExcel2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSPedidos.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Pedidos';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute then
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
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormPedidosResumen.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormPedidosResumen.btExcelClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSPedidos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog1.FileName:='Pedidos';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        begin
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
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormPedidosResumen.BuscarExecute(Sender: TObject);
var  i:Integer;
begin
  inherited;
  CDSPedidos.Close;
  CDSPedidos.Open;
  if Not(CDSPedidos.IsEmpty) then
    begin
      for i:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[i].ExpandAll;
    end;
end;

procedure TFormPedidosResumen.CDSPedidosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSPedidosGRUPO.Value     :=Trunc(CDSPedidosCANTIDAD_UNID_PED.AsFloat/CDSPedidosCANTIDADGRUPO.AsFloat);
  CDSPedidosGRUPOENTRE.Value:=(CDSPedidosCANTIDAD_UNID_ENTR.AsFloat/CDSPedidosCANTIDADGRUPO.AsFloat);

end;

procedure TFormPedidosResumen.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormPedidosResumen.cxDBPivotGrid1DblClick(Sender: TObject);


 procedure GetGroupItems(AParent: TcxPivotGridGroupItem);
  var
    AGroupItem: TcxPivotGridGroupItem;
   begin
     AGroupItem := AParent;
     Dato.Append(AGroupItem.DisplayText);
     //Memo1.Lines.Add('Field: ' + AGroupItem.Field.Name);
     while AGroupItem.Parent <> nil do
       begin
         if AGroupItem.Parent.Parent = nil then Break;
         AGroupItem := AGroupItem.Parent;
         Dato.Append(AGroupItem.DisplayText);
         //Memo1.Lines.Add('Field: ' + AGroupItem.Field.Name);
       end;
   end;
begin
  //Memo1.Lines.Clear;
  Dato:=TStringList.Create;
  if cxDBPivotGrid1.HitTest.HitAtDataCell then
    GetGroupItems( TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).CrossCell.Row );

  if Not(Assigned(FormPedidos)) Then
    FormPedidos:=TFormPedidos.Create(Self);
  begin
    DatosPedidos.CDSPedidoCab.Close;
    DatosPedidos.CDSPedidoCab.Params.ParamByName('id').Value:=StrToInt(Dato[1]);
    DatosPedidos.CDSPedidoCab.Open;

    DatosPedidos.CDSPedidoDet.Close;
    DatosPedidos.CDSPedidoDet.Params.ParamByName('id').Value:=DatosPedidos.CDSPedidoCabID.Value;
    DatosPedidos.CDSPedidoDet.Open;
  end;
  FormPedidos.Show;

end;

procedure TFormPedidosResumen.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormPedidosResumen.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormPedidosResumen.cxDBPivotGrid1MouseUp(Sender: TObject;
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

// **** lee el valor de una celda en un cxDBPivotGrid de la que se pica
{
 ************** NO BORRAR ****************
 var
  AColumn: TcxPivotGridViewDataItem;
  AValue: string;
begin
  if cxDBPivotGrid1.HitTest.HitAtDataCell then
    begin
      AColumn := TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Column;
      AValue  := VarToStr(TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Value);
      Caption :=  AValue;
    end;
  if cxDBPivotGrid1.HitTest.HitAtGroupHeader then
   begin
     AValue  := TcxPivotGridHeaderCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).DisplayText;
     Caption := AValue;
   end;
 ShowMessage(Caption);
}
procedure TFormPedidosResumen.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
  i:Integer;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream);
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;


procedure TFormPedidosResumen.ExpandirGrillaExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  cxDBPivotGrid1.BeginUpdate;
  for i:= 0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  cxDBPivotGrid1.EndUpdate;
end;

procedure TFormPedidosResumen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaPedidos');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaPedidos.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);


  Action:=caFree;
end;

procedure TFormPedidosResumen.FormCreate(Sender: TObject);
var i:Integer;
begin
  inherited;
  AutoSize:=False;
  CDSPedidos.Close;
  CDSPedidos.Open;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaPedidos.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  ArchivoIni.Free;

  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='GRPEDIDOS';
  CDSVista.Open;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;

  CDSPedidos.First;
  if CDSPedidos.RecordCount>1 then
    while Not(CDSPedidos.Eof) do
      begin
        TabSet.Tabs.Add(CDSPedidosNOMBRE.AsString);
        NoteBook.Pages.Add(CDSPedidosNOMBRE.AsString);
        CDSPedidos.Next;
      end
    else
  if CDSPedidos.RecordCount=1 then
    begin
      TabSet.Tabs.Add(CDSPedidosNOMBRE.AsString);
      NoteBook.Pages.Add(CDSPedidosNOMBRE.AsString);
    end;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormPedidosResumen.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPedidosResumen:=nil;
end;

procedure TFormPedidosResumen.FormShow(Sender: TObject);
var i:Integer;
begin
  inherited;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaPedidos');
  //*************************************************************
  if cxDBPivotGrid1.FieldCount>0 then

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaPedidos.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.Free;
end;


procedure TFormPedidosResumen.Label1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormPedidosResumen.Label2Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);

end;

procedure TFormPedidosResumen.LimpiarFiltrosExecute(Sender: TObject);
var APivot: TcxDBPivotGrid;
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

procedure TFormPedidosResumen.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormPedidosResumen.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='GRPEDIDOS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='GRPEDIDOS';
  CDSVista.Open;
end;

end.
