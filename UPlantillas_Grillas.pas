unit UPlantillas_Grillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ImgList, DB, ActnList, ComCtrls, JvExControls, JvGradient, Buttons,
  StdCtrls, ToolWin, ExtCtrls, JvComponentBase, JvFormPlacement, JvLabel,
  JvDBControls, DBClient, Provider, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  FMTBcd, SqlExpr, DBXCommon,cxGridExportLink,
  frxClass, frxDBSet, JvAppStorage, JvAppIniStorage, System.Actions, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  JvExComCtrls, JvProgressBar, JvExButtons, JvBitBtn, JvDBLookup,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, cxDBLookupComboBox,VirtualUI_SDK,StrUtils, AdvOfficeButtons,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, frCoreClasses;

type
  TFormPlantillas_Grillas = class(TFormABMBase)
    DSPlantillas: TDataSource;
    DSPPlantillas: TDataSetProvider;
    CDSPlantillas: TClientDataSet;
    CDSPlantillasCODIGO: TStringField;
    CDSPlantillasMUESTRANOMBRE: TStringField;
    DSGruposPlantillas: TDataSource;
    Asignar: TAction;
    DeAsignar: TAction;
    BitBtn1: TBitBtn;
    frDetalles: TfrxReport;
    frDBDetalles: TfrxDBDataset;
    CDSPlantillasCON_GPRS: TStringField;
    CDSPlantillasCON_MONITOREO: TStringField;
    CDSPlantillasCON_HOSTING: TStringField;
    CDSPlantillasCOBRADOR: TStringField;
    CDSPlantillasMUESTRACOBRADOR: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRANOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAPLANTILLA: TcxGridDBColumn;
    cxGrid1DBTableView1CON_GPRS: TcxGridDBColumn;
    cxGrid1DBTableView1CON_MONITOREO: TcxGridDBColumn;
    cxGrid1DBTableView1CON_HOSTING: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACOBRADOR: TcxGridDBColumn;
    CDSPlantillasID_PLANTILLA: TIntegerField;
    QPlantillas: TFDQuery;
    QGruposPlantillas: TFDQuery;
    QGruposPlantillasID: TIntegerField;
    QGruposPlantillasDETALLE: TStringField;
    QGruposPlantillasTOTAL: TFloatField;
    QGruposPlantillasPRECIOS_CONIVA: TStringField;
    QComboPlantilla: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    CDSPlantillasCOMBOPLANTILLA: TStringField;
    QPlantillasCODIGO: TStringField;
    QPlantillasMUESTRANOMBRE: TStringField;
    QPlantillasID_PLANTILLA: TIntegerField;
    QPlantillasMUESTRAPLANTILLA: TStringField;
    QPlantillasCON_GPRS: TStringField;
    QPlantillasCON_MONITOREO: TStringField;
    QPlantillasCON_HOSTING: TStringField;
    QPlantillasCOBRADOR: TStringField;
    QPlantillasMUESTRACOBRADOR: TStringField;
    btExportarABCXls: TBitBtn;
    SaveDialog: TSaveDialog;
    pnPie: TPanel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    dbcGrupos: TJvDBLookupCombo;
    btAsignar: TJvBitBtn;
    btDeAsignar: TJvBitBtn;
    chbGPRS: TAdvOfficeCheckBox;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    chbAsigandos: TAdvOfficeCheckBox;
    ToolButton1: TToolButton;
    ProgressBar: TJvProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AsignarExecute(Sender: TObject);
    procedure DeAsignarExecute(Sender: TObject);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure chbAsigandosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSPlantillasIDSetText(Sender: TField; const Text: string);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure CDSPlantillasAfterPost(DataSet: TDataSet);
    procedure dbcGruposClick(Sender: TObject);
    procedure btExportarABCXlsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlantillas_Grillas: TFormPlantillas_Grillas;

implementation

{$R *.dfm}

uses UClientes_2,UDMain_FD;

procedure TFormPlantillas_Grillas.AsignarExecute(Sender: TObject);
var p:TBookmark;
i,RecIdx:Integer;
begin
  inherited;

 // poner el datacontroler en ModoGrid=True
 // cxGrid1DBTableView1.DataController.DataModeController.GridMode:=True;

  if cxGrid1DBTableView1.Controller.SelectedRowCount-1>0 then
    ProgressBar.Max:=cxGrid1DBTableView1.Controller.SelectedRowCount-1
  else
    ProgressBar.Max:=0;

  ProgressBar.Min:=0;
  ProgressBar.Position:=0;
 // cxGrid1DBTableView1.Controller.TopRowIndex;
  CDSPlantillas.DisableControls;
  for I := 0 to (cxGrid1DBTableView1.Controller.SelectedRowCount-1) do
    begin
      //p:=cxGrid1DBTableView1.DataController.GetSelectedBookmark(i);
      RecIdx:=cxGrid1DBTableView1.Controller.SelectedRows[i].RecordIndex+1;
      cxGrid1DBTableView1.DataController.RecNo:=RecIdx;
      ProgressBar.Position:= I;
      begin
        //CDSPlantillas.Bookmark:=p;
        sbEstado.SimpleText:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('CODIGO').AsString+'-'+
                             cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('MUESTRANOMBRE').Value;
        CDSPlantillas.Edit;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('ID_PLANTILLA').AsInteger             :=dbcGrupos.KeyValue;;
      end;
    end;
  if CDSPlantillas.State <>dsBrowse then
    CDSPlantillas.Post;
  cxGrid1DBTableView1.Controller.ClearSelection;
  CDSPlantillas.EnableControls;
  ProgressBar.Position:=0;
  sbEstado.SimpleText:='';

 //  cxGrid1DBTableView1.DataController.DataModeController.GridMode:=False;

end;

procedure TFormPlantillas_Grillas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  IF NOT (CDSPlantillas.IsEmpty) THEN
    BEGIN
      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;
      frDetalles.LoadFromFile(DMMain_FD.PathReportesLst+'\GrillaPlantilla.fr3');
      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;
     // frSaldos.PrepareReport();
      frDetalles.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos a listar');
end;

procedure TFormPlantillas_Grillas.btExportarABCXlsClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog.FileName:='PlantillasClientes';
  SaveDialog.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if SaveDialog.Execute Then
   if SaveDialog.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
           SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog.FileName);
     end;
end;

procedure TFormPlantillas_Grillas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSPlantillas.Close;
  CDSPlantillas.IndexDefs.Clear;
  CDSPlantillas.IndexFieldNames:='';
  if chbAsigandos.Checked then
    CDSPlantillas.Params.ParamByName('Estado').Value:= -1
  else
    CDSPlantillas.Params.ParamByName('Estado').Value:=dbcGrupos.KeyValue;
  CDSPlantillas.Open;

  CDSPlantillas.Filtered:=False;
  CDSPlantillas.Filter:='CON_GPRS = ''S''';
  CDSPlantillas.Filtered:=chbGPRS.Checked
end;

procedure TFormPlantillas_Grillas.CDSPlantillasAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSPlantillas.ApplyUpdates(0);
end;

procedure TFormPlantillas_Grillas.CDSPlantillasIDSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
end;

procedure TFormPlantillas_Grillas.chbAsigandosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormPlantillas_Grillas.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSPlantillas.State<>dsBrowse then
      CDSPlantillas.Post;
    CDSPlantillas.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    ShowMessage('No se pudo realizar los cambios....');
    DMMain_FD.fdcGestion.Rollback;
  end;
  CDSPlantillas.Close;
  CDSPlantillas.Open;

end;

procedure TFormPlantillas_Grillas.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(Self);
  FormClientes_2.DatoNew:=CDSPlantillasCODIGO.AsString;
  FormClientes_2.Recuperar.Execute;
  FormClientes_2.Show;
end;

procedure TFormPlantillas_Grillas.dbcGruposClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormPlantillas_Grillas.DeAsignarExecute(Sender: TObject);
var p:TBookmark;
I:Integer;
RecIdx:Integer;
begin
  inherited;
//  cxGrid1DBTableView1.DataController.DataModeController.GridMode:=True;
  if cxGrid1DBTableView1.Controller.SelectedRowCount-1>0 then
    ProgressBar.Max:=cxGrid1DBTableView1.Controller.SelectedRowCount-1
  else
    ProgressBar.Max:=0;

  ProgressBar.Min:=0;
  ProgressBar.Position:=0;
 // cxGrid1DBTableView1.Controller.TopRowIndex;
  CDSPlantillas.DisableControls;
  for I := 0 to (cxGrid1DBTableView1.Controller.SelectedRowCount-1) do
    begin
      //p:=cxGrid1DBTableView1.DataController.GetSelectedBookmark(i);
      RecIdx:=cxGrid1DBTableView1.Controller.SelectedRows[i].RecordIndex+1;
      cxGrid1DBTableView1.DataController.RecNo:=RecIdx;
      ProgressBar.Position:= I;
      begin
        //CDSPlantillas.Bookmark:=p;
        sbEstado.SimpleText:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('CODIGO').AsString+'-'+
                             cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('MUESTRANOMBRE').Value;
        CDSPlantillas.Edit;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('ID_PLANTILLA').AsInteger   :=-1;
      end;
    end;
  if CDSPlantillas.State <>dsBrowse then
    CDSPlantillas.Post;
  CDSPlantillas.EnableControls;
  sbEstado.SimpleText:='';
  cxGrid1DBTableView1.Controller.ClearSelection;
  ProgressBar.Position:=0;
 //  cxGrid1DBTableView1.DataController.DataModeController.GridMode:=False;

end;

procedure TFormPlantillas_Grillas.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
end;

procedure TFormPlantillas_Grillas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPlantillas_Grillas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QGruposPlantillas.Close;
  QGruposPlantillas.Open;
  Buscar.Execute;

end;

procedure TFormPlantillas_Grillas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlantillas_Grillas:=nil;
end;

procedure TFormPlantillas_Grillas.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frDetalles.DesignReport();
end;

procedure TFormPlantillas_Grillas.spSelectClick(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.Controller.SelectAll;
end;

procedure TFormPlantillas_Grillas.spunselectClick(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.Controller.ClearSelection;

end;

end.
