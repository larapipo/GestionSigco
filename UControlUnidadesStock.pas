unit UControlUnidadesStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Provider, DBClient, Grids, DBGrids,  frxDBSet, frxClass, ImgList,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.DB, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  frCoreClasses;

type
  TFormControlUnidadesStock = class(TFormABMBase)
    DSStock: TDataSource;
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    CDSStockCODIGO_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frDBStock: TfrxDBDataset;
    DSRubro: TDataSource;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    Label6: TLabel;
    rxcbMarca: TJvDBLookupCombo;
    Label2: TLabel;
    rxcbRubro: TJvDBLookupCombo;
    Label3: TLabel;
    rxcbSubRubro: TJvDBLookupCombo;
    DSListaUnidades: TDataSource;
    dbcUnidades: TJvDBLookupCombo;
    Label1: TLabel;
    spAsigancion: TSpeedButton;
    rgUnidades: TRadioGroup;
    QListaUnidades: TFDQuery;
    QSubRubro: TFDQuery;
    QMarca: TFDQuery;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QRubroCONTROL_RUBRO: TStringField;
    QRubroFUERA_PROMO: TStringField;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1CONTENIDO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION_CANTIDAD: TcxGridDBColumn;
    CDSStockIVA_MODIFICADO: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1DBTableView1IVA_MODIFICADO: TcxGridDBColumn;
    CDSStockDETALLE_STK: TStringField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockUNIDAD: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTENIDO_COMPRA: TFloatField;
    QStockPRESENTACION_CANTIDAD: TFloatField;
    QStockIVA_MODIFICADO: TStringField;
    QUnidades: TFDQuery;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    MarcarAll: TAction;
    DesmarcaAll: TAction;
    QStockPLU: TStringField;
    CDSStockPLU: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    QStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    QVerificaPLU: TFDQuery;
    QVerificaPLUPLU: TStringField;
    QStockDIAS_VENCIMIENTO: TIntegerField;
    CDSStockDIAS_VENCIMIENTO: TIntegerField;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSStockBeforeInsert(DataSet: TDataSet);
    procedure CDSStockDETALLE_STKSetText(Sender: TField;
      const Text: String);
    procedure CDSStockUNIDADSetText(Sender: TField; const Text: String);
    procedure CDSStockUNIDAD_COMPRASetText(Sender: TField;
      const Text: String);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure rxcbRubroClick(Sender: TObject);
    procedure rxcbMarcaClick(Sender: TObject);
    procedure rxcbSubRubroChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure spAsigancionClick(Sender: TObject);
    procedure QListaUnidadesAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure MarcarAllExecute(Sender: TObject);
    procedure DesmarcaAllExecute(Sender: TObject);
    procedure CDSStockPLUSetText(Sender: TField; const Text: string);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlUnidadesStock: TFormControlUnidadesStock;
  Puntero:TBookmark;
implementation

uses  UStock_2,UDMain_FD;

{$R *.DFM}

procedure TFormControlUnidadesStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSStock.Close;
  QUnidades.Close;
  QListaUnidades.Close;
  Action:=caFree;
end;

procedure TFormControlUnidadesStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlUnidadesStock:=nil;
end;

procedure TFormControlUnidadesStock.FormCreate(Sender: TObject);
begin
  inherited;
  QMarca.Open;
  QRubro.Open;
  QSubRubro.Open;
  QStock.Open;
  QListaUnidades.Open;
  AutoSize:=False;
end;

procedure TFormControlUnidadesStock.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  sbEstado.SimpleText:='Procesando Cambios.....Espere..';
  CDSStock.ApplyUpdates(0);
  CDSStock.Close;
  CDSStock.OPen;
  sbEstado.SimpleText:='';
  Buscar.Execute;

end;

procedure TFormControlUnidadesStock.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TformStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormControlUnidadesStock.CDSStockBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  sysUtils.Abort;
end;

procedure TFormControlUnidadesStock.CDSStockDETALLE_STKSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=UpperCase(Text);
end;

procedure TFormControlUnidadesStock.CDSStockPLUSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=copy('00000',1,5-Length(Trim(Text)))+Trim(Text);
  if Sender.AsString='00000' then Sender.AsString:='';

  if Sender.AsString<>'' then
    begin
      QVerificaPLU.Close;
      QVerificaPLU.ParamByName('codigo').Value:=Sender.AsString;
      QVerificaPLU.Open;
      if Not(QVerificaPLU.IsEmpty) Then
        begin
          ShowMessage('Codigo en Uso.... Verifique y vuelva a intentar...');
          Sender.AsString:='';
        end;
    end;


end;

procedure TFormControlUnidadesStock.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSStock.Close;
  CDSStock.Params.ParamByName('MARCA').Value   := rxcbMarca.KeyValue;
  CDSStock.Params.ParamByName('RUBRO').Value   := rxcbRubro.KeyValue;
  CDSStock.Params.ParamByName('SUBRUBRO').Value:= rxcbSubRubro.KeyValue;
  CDSStock.Open;
end;

procedure TFormControlUnidadesStock.CDSStockUNIDADSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text<>'' Then
    begin
      Sender.AsString:=UpperCase(text);
      QUnidades.Close;
      QUnidades.ParamByName('sigla').AsString:=Sender.AsString;
      QUnidades.Open;
      if QUnidades.IsEmpty Then
        begin
          ShowMessage('Unidad no valida...');
          Sender.Clear;
        end;
      QUnidades.Close;
    end;
end;

procedure TFormControlUnidadesStock.CDSStockUNIDAD_COMPRASetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text<>'' Then
    begin
      Sender.AsString:=UpperCase(text);
      QUnidades.Close;
      QUnidades.ParamByName('sigla').AsString:=Sender.AsString;
      QUnidades.Open;
      if QUnidades.IsEmpty Then
        begin
          ShowMessage('Unidad no valida...');
          Sender.Clear;
        end;
      QUnidades.Close;
    end;

end;

procedure TFormControlUnidadesStock.DesmarcaAllExecute(Sender: TObject);
begin
  inherited;
  CDSStock.First;
  CDSStock.DisableControls;
  while Not(CDSStock.Eof) do
    begin
      CDSStock.Edit;
      CDSStockIVA_MODIFICADO.Value:='N';
      CDSStock.Next;
    end;
  CDSStock.First;
  CDSStock.EnableControls;
end;

procedure TFormControlUnidadesStock.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
end;

procedure TFormControlUnidadesStock.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
end;

procedure TFormControlUnidadesStock.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlUnidadesStock<>nil then
    if FormControlUnidadesStock.Width<>1260 then
      FormControlUnidadesStock.Width:=1260;

end;

procedure TFormControlUnidadesStock.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListadoUnidadesStock.fr3');

  frxReport.ShowReport;
end;

procedure TFormControlUnidadesStock.MarcarAllExecute(Sender: TObject);
begin
  inherited;
  CDSStock.First;
  CDSStock.DisableControls;
  while Not(CDSStock.Eof) do
    begin
      CDSStock.Edit;
      CDSStockIVA_MODIFICADO.Value:='S';
      CDSStock.Next;
    end;
  CDSStock.First;
  CDSStock.EnableControls;
end;

procedure TFormControlUnidadesStock.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormControlUnidadesStock.QListaUnidadesAfterPost(DataSet: TDataSet);
begin
  inherited;
  QListaUnidades.ApplyUpdates(-1);
end;

procedure TFormControlUnidadesStock.rxcbMarcaClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlUnidadesStock.rxcbRubroClick(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.ParamByName('rubro').Value:=QRubroCODIGO_RUBRO.Value;
  QSubRubro.Open;
  rxcbSubRubro.KeyValue:='*****';
  Buscar.Execute;
end;

procedure TFormControlUnidadesStock.rxcbSubRubroChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlUnidadesStock.spAsigancionClick(Sender: TObject);
begin
  inherited;
  CDSStock.First;
  while Not(CDSStock.Eof) do
    begin
      CDSStock.Edit;
      if rgUnidades.ItemIndex=1 Then CDSStockUNIDADSetText(CDSStockUNIDAD,dbcUnidades.KeyValue)
      else
      if rgUnidades.ItemIndex=0 Then CDSStockUNIDAD_COMPRASetText(CDSStockUNIDAD_COMPRA,dbcUnidades.KeyValue);
      CDSStock.Next;
    end;
end;

end.
