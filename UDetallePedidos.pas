unit UDetallePedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvLabel, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList,  System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,DateUtils,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxCustomPivotGrid, cxDBPivotGrid, Vcl.CheckLst, JvExExtCtrls, JvExtComponent,
  JvPanel,IniFiles,VirtualUI_Sdk, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,cxExportPivotGridLink,
  JvDBLookup, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinBlack, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCalc, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxBarBuiltInMenu, System.ImageList,
  AdvOfficeButtons, dxPScxVGridLnk, Vcl.Menus, Vcl.DBCtrls;

type
  TFormDetallePedidosRealizados = class(TFormABMBase)
    CDSPedidos: TClientDataSet;
    DSPPedidos: TDataSetProvider;
    DSPedidos: TDataSource;
    CDSPedidosCODIGO: TStringField;
    CDSPedidosDETALLE_STK: TStringField;
    CDSPedidosFECHAPEDIDO: TSQLTimeStampField;
    CDSPedidosFECHAENTREGA: TSQLTimeStampField;
    CDSPedidosCLIENTE: TStringField;
    CDSPedidosNOMBRE: TStringField;
    CDSPedidosID_FACTURA: TIntegerField;
    CDSPedidosTIPO_FACTURA: TStringField;
    CDSPedidosNROCPBTE: TStringField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1CODIGO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid1FECHAPEDIDO: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_PEDIDA: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_PRESENTACION: TcxDBPivotGridField;
    cxDBPivotGrid1FECHAENTREGA: TcxDBPivotGridField;
    cxDBPivotGrid1CLIENTE: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid1ID_FACTURA: TcxDBPivotGridField;
    cxDBPivotGrid1TIPO_FACTURA: TcxDBPivotGridField;
    cxDBPivotGrid1NROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDADENTREGADA: TcxDBPivotGridField;
    CDSPedidosDia_Mes: TStringField;
    CDSPedidosDIA: TStringField;
    CDSPedidosMES: TStringField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    pnTotales: TJvPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    Label2: TLabel;
    Label3: TLabel;
    btDatosCruzados: TBitBtn;
    BitBtn1: TBitBtn;
    SaveDialog: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    CDSPedidosGRUPODE: TIntegerField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    CDSPedidosGRUPO_ENT: TIntegerField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    CDSPedidosDETALLE_SUBRUBRO: TStringField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    Label4: TLabel;
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
    CDSPedidosSEMANA: TIntegerField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    QPedidos: TFDQuery;
    CDSPedidosCANTIDAD_UNID_PED: TFloatField;
    CDSPedidosCANTIDAD_PRESENTACION: TFloatField;
    CDSPedidosCANTIDADGRUPO: TFloatField;
    CDSPedidosCANTIDADENTREGADA: TFloatField;
    CDSPedidosPENDIENTE: TFloatField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    pnCabecera: TPanel;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel2: TJvLabel;
    UpDown1: TUpDown;
    Label5: TLabel;
    chSoloSInFacturar: TAdvOfficeCheckBox;
    LimpiarFiltros: TAction;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros1: TMenuItem;
    CDSPedidosFALTANTE: TFloatField;
    CDSPedidosMORA: TIntegerField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    Expandir: TAction;
    ExpandirGrilla1: TMenuItem;
    N1: TMenuItem;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSPedidosCalcFields(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chOpSumasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btDatosCruzadosClick(Sender: TObject);
    procedure chSoloSInFacturarClick(Sender: TObject);
    procedure LimpiarFiltrosExecute(Sender: TObject);
    procedure ExpandirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);
var
  FormDetallePedidosRealizados: TFormDetallePedidosRealizados;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

{$R *.dfm}

uses UVistasGrillas,UDMain_FD;

procedure TFormDetallePedidosRealizados.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSPedidos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='DetallePedidos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        begin
          cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
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

procedure TFormDetallePedidosRealizados.btDatosCruzadosClick(Sender: TObject);
begin
  inherited;
 dxComponentPrinter1Link1.Preview(True);
end;


procedure TFormDetallePedidosRealizados.BuscarExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  CDSPedidos.Close;
  CDSPedidos.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSPedidos.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  if chSoloSInFacturar.Checked then
    CDSPedidos.Params.ParamByName('idfc').Value:=0
  else
    CDSPedidos.Params.ParamByName('idfc').Value:=-2;
  CDSPedidos.Open;


 // cxDBPivotGrid1.BeginUpdate;
 // for i:= 0 to cxDBPivotGrid1.FieldCount-1 do
 //   cxDBPivotGrid1.Fields[i].ExpandAll;
 // cxDBPivotGrid1.EndUpdate;
end;

procedure TFormDetallePedidosRealizados.ExpandirExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  cxDBPivotGrid1.BeginUpdate;
  for i:= 0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  cxDBPivotGrid1.EndUpdate;
end;


procedure TFormDetallePedidosRealizados.CDSPedidosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSPedidosDIA.AsString     := FormatDateTime('DD',CDSPedidosFECHAPEDIDO.AsDateTime);
  CDSPedidosMES.AsString     := FormatDateTime('mmmm',CDSPedidosFECHAPEDIDO.AsDateTime);
  CDSPedidosDia_Mes.AsString := FormatDateTime('DD/MM',CDSPedidosFECHAPEDIDO.AsDateTime);
  CDSPedidosGRUPODE.Value    := Trunc(CDSPedidosCANTIDAD_UNID_PED.AsFloat/CDSPedidosCANTIDADGRUPO.AsFloat);
  CDSPedidosGRUPO_ENT.Value  := Trunc(CDSPedidosCANTIDADENTREGADA.AsFloat/CDSPedidosCANTIDADGRUPO.AsFloat);
  CDSPedidosSEMANA.Value     := WeekOfTheMonth(CDSPedidosFECHAPEDIDO.AsDateTime);
  CDSPedidosPENDIENTE.Value  := CDSPedidosCANTIDAD_UNID_PED.Value-CDSPedidosCANTIDADENTREGADA.Value;
  CDSPedidosFALTANTE.Value   := CDSPedidosCANTIDAD_UNID_PED.Value-CDSPedidosCANTIDADENTREGADA.Value;
  CDSPedidosMORA.Value       := Trunc(CDSPedidosFECHAENTREGA.AsDateTime)-Trunc(CDSPedidosFECHAPEDIDO.AsDateTime);
end;

procedure TFormDetallePedidosRealizados.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormDetallePedidosRealizados.chSoloSInFacturarClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormDetallePedidosRealizados.cxDBPivotGrid1MouseDown(Sender: TObject;
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


procedure TFormDetallePedidosRealizados.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormDetallePedidosRealizados.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormDetallePedidosRealizados.dbcVistasChange(Sender: TObject);
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


procedure TFormDetallePedidosRealizados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallePedidos');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumDetallePedido.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.Free;
end;

procedure TFormDetallePedidosRealizados.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumDetallePedido.ini');
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  ArchivoIni.Free;

  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='DTPEDIDOS';
  CDSVista.Open;

  cxDBPivotGrid1.OptionsView.FilterFields:=False;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;
end;

procedure TFormDetallePedidosRealizados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDetallePedidosRealizados:=nil;
end;

procedure TFormDetallePedidosRealizados.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  Desde.SetFocus;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallePedidos');
  //*************************************************************
end;

procedure TFormDetallePedidosRealizados.Label2Click(Sender: TObject);
begin
  inherited;
 pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormDetallePedidosRealizados.Label3Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormDetallePedidosRealizados.LimpiarFiltrosExecute(Sender: TObject);
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


procedure TFormDetallePedidosRealizados.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormDetallePedidosRealizados.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='DTPEDIDOS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='DTPEDIDOS';
  CDSVista.Open;
end;

procedure TFormDetallePedidosRealizados.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    begin
      if m=12 Then
        begin m:=1;y:=y+1;End
      else
         m:=m+1

    end
  else
    if Button=btPrev Then
      begin
        if m=1 Then
          begin
            m:=12;y:=y-1;
          end
        else
          m:=m-1;
      end;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));

  Buscar.Execute;
end;

end.
