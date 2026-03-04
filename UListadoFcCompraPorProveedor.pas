unit UListadoFcCompraPorProveedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Mask, Buttons, ToolWin, ExtCtrls, Grids, DBGrids,  Librerias,
  frxDBSet, frxClass, ImgList, JvComponentBase, JvExControls,
  JvGradient, JvDBLookup, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, Provider, DBClient, JvBaseEdits, JvAppStorage,
  JvAppIniStorage, System.Actions, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.ActnList, CompBuscador, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, VirtualUI_SDK,cxGridExportLink, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  frCoreClasses;

type
  TFormListadoFcCompraPorProveedor = class(TFormABMBase)
    UpDown1: TUpDown;
    DSFcCompra: TDataSource;
    Label2: TLabel;
    DSProveedor: TDataSource;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frDBFc: TfrxDBDataset;
    dbcProveedor: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSProvee: TClientDataSet;
    DSPProvee: TDataSetProvider;
    CDSFcComp: TClientDataSet;
    DSPFcComp: TDataSetProvider;
    CDSFcCompID_FC: TIntegerField;
    CDSFcCompTIPOCPBTE: TStringField;
    CDSFcCompCLASECPBTE: TStringField;
    CDSFcCompFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompFECHAFISCAL: TSQLTimeStampField;
    CDSFcCompCODIGO: TStringField;
    CDSFcCompNOMBRE: TStringField;
    CDSFcCompRAZONSOCIAL: TStringField;
    CDSFcCompNROCPBTE: TStringField;
    CDSProveeCODIGO: TStringField;
    CDSProveeNOMBRE: TStringField;
    CDSFcCompTOTAL: TFloatField;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    CDSFcCompTOTALNETO: TFloatField;
    CDSFcCompNETOCAL: TFloatField;
    CDSFcCompPIVA_CAL: TFMTBCDField;
    CDSFcCompIBB_CALC: TFMTBCDField;
    CDSFcCompIVA_CALC: TFMTBCDField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAFISCAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NETOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1PIVA_CAL: TcxGridDBColumn;
    cxGrid1DBTableView1IBB_CALC: TcxGridDBColumn;
    cxGrid1DBTableView1IVA_CALC: TcxGridDBColumn;
    SaveDialog: TSaveDialog;
    BitBtn2: TBitBtn;
    ToolButton2: TToolButton;
    chAgrupado: TCheckBox;
    QFcComp: TFDQuery;
    CDSFcCompTOTALPARC: TFloatField;
    CDSFcCompIBB: TFloatField;
    CDSFcCompPIVA: TFloatField;
    CDSFcCompIVA: TFloatField;
    QProvee: TFDQuery;
    pnCab: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbgFcDblClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbcProveedorClick(Sender: TObject);
    procedure CDSFcCompCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure chAgrupadoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoFcCompraPorProveedor: TFormListadoFcCompraPorProveedor;

implementation

uses UCompra_2, UCompraCtdo_2, UDMain_FD;
{$R *.DFM}


procedure TFormListadoFcCompraPorProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoFcCompraPorProveedor.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSProvee.Open;
end;

procedure TFormListadoFcCompraPorProveedor.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormListadoFcCompraPorProveedor.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;

end;

procedure TFormListadoFcCompraPorProveedor.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoFcCompraPorProveedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoFcCompraPorProveedor:=Nil;
end;

procedure TFormListadoFcCompraPorProveedor.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoFcCompraPorProveedor<>nil then
    if FormListadoFcCompraPorProveedor.Width<>1017 then
      FormListadoFcCompraPorProveedor.Width:=1017;

end;

procedure TFormListadoFcCompraPorProveedor.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog.FileName:='FacturasCompra';
  SaveDialog.DefaultExt:='XLS';
  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
  if SaveDialog.Execute Then
    begin
      cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1,True,true,false,'xls');
      Sleep(1500);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog.FileName);
    end;
end;

procedure TFormListadoFcCompraPorProveedor.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFcComp.Close;
  CDSFcComp.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSFcComp.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSFcComp.Params.ParamByName('Codigo').Value:=dbcProveedor.Value;
  CDSFcComp.Open;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;

end;

procedure TFormListadoFcCompraPorProveedor.ImprimirExecute(
  Sender: TObject);
begin
  inherited;
  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoFcCompraPorProveedores.fr3');
  frxReport.Variables['desde']    :=''''+Desde.Text+'''';
  frxReport.Variables['hasta']    :=''''+Hasta.Text+'''';
  frxReport.Variables['Proveedor']:=''''+dbcProveedor.Text+'''';

  frxReport.ShowReport;
end;

procedure TFormListadoFcCompraPorProveedor.CDSFcCompCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSFcCompTOTAL.Value:=CDSFcCompTOTALPARC.AsFloat;
  if CDSFcCompTIPOCPBTE.Value='NC' Then
    CDSFcCompTOTAL.Value:=CDSFcCompTOTALPARC.AsFloat * -1;

  CDSFcCompNETOCAL.Value:=CDSFcCompTOTALNETO.AsFloat;
  if CDSFcCompTIPOCPBTE.Value='NC' Then
    CDSFcCompNETOCAL.Value:=CDSFcCompTOTALNETO.AsFloat *-1;

  CDSFcCompPIVA_CAL.Value:=CDSFcCompPIVA.AsFloat;
  if CDSFcCompTIPOCPBTE.Value='NC' Then
    CDSFcCompPIVA_CAL.Value:=CDSFcCompPIVA.AsFloat *-1;

  CDSFcCompIBB_CALC.Value:=CDSFcCompIBB.AsFloat;
  if CDSFcCompTIPOCPBTE.Value='NC' Then
    CDSFcCompIBB_CALC.Value:=CDSFcCompIBB.AsFloat *-1;

  CDSFcCompIVA_CALC.Value:=CDSFcCompIVA.AsFloat;
  if CDSFcCompTIPOCPBTE.Value='NC' Then
    CDSFcCompIVA_CALC.Value:=CDSFcCompIVA.AsFloat *-1;


end;

procedure TFormListadoFcCompraPorProveedor.chAgrupadoClick(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=chAgrupado.Checked;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
end;

procedure TFormListadoFcCompraPorProveedor.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 if ((CDSFcCompTIPOCPBTE.Value='FC') or (CDSFcCompTIPOCPBTE.Value='NC')) then
    begin
      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Self);
      FormCompra_2.DatoNew  :=CDSFcCompID_FC.AsString;
      FormCompra_2.TipoCpbte:=CDSFcCompTIPOCPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    if (CDSFcCompTIPOCPBTE.Value='FO') then
      begin
        if Not(Assigned(FormCompraCtdo_2)) then
          FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
        FormCompraCtdo_2.DatoNew  :=CDSFcCompID_FC.AsString;
        FormCompraCtdo_2.TipoCpbte:=CDSFcCompTIPOCPBTE.AsString;
        FormCompraCtdo_2.Recuperar.Execute;
        FormCompraCtdo_2.Show;
      end
end;

procedure TFormListadoFcCompraPorProveedor.dbcProveedorClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;  
end;

procedure TFormListadoFcCompraPorProveedor.dbgFcDblClick(Sender: TObject);
begin
  inherited;
  if CDSFcCompTIPOCPBTE.Value<>'FO' Then
    begin
      if Not(Assigned(FormCompra_2)) Then
        FormCompra_2:=TFormCompra_2.Create(Application);
      FormCompra_2.Show;
      formCompra_2.DatoNew  :=IntToStr(CDSFcCompID_FC.Value);
      FormCompra_2.TipoCpbte:=CDSFcCompTIPOCPBTE.Value;
      FormCompra_2.Recuperar.Execute;
    end
  else
    if CDSFcCompTIPOCPBTE.Value='FO' Then
      begin
        if Not(Assigned(FormCompraCtdo_2)) Then
          FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Application);
        FormCompraCtdo_2.Show;
        FormCompraCtdo_2.DatoNew  :=IntToStr(CDSFcCompID_FC.Value);
        FormCompraCtdo_2.TipoCpbte:=CDSFcCompTIPOCPBTE.Value;
        FormCompraCtdo_2.Recuperar.Execute;
      end;

end;

procedure TFormListadoFcCompraPorProveedor.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoFcCompraPorProveedor.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

end.