unit UComparacionPrecios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls,Buttons, StrUtils,
  StdCtrls, ToolWin, ExtCtrls,  frxDBSet, frxClass,   ImgList,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvDBLookup, Provider, DBClient, frxExportXLS,
  frxExportText, frxExportPDF, DataExport, DataToXLS, JvAppStorage,
  JvAppIniStorage, System.Actions, Vcl.Grids, Vcl.DBGrids, VirtualUI_SDK,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormComparativaPrecios = class(TFormABMBase)
    DSPreciosProveedor: TDataSource;
    frListado: TfrxReport;
    frDBPrecios: TfrxDBDataset;
    DSStock: TDataSource;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    Label1: TLabel;
    DSProveedor: TDataSource;
    Label2: TLabel;
    rxcStock: TJvDBLookupCombo;
    RxcProveedores: TJvDBLookupCombo;
    CDSPreciosProveedor: TClientDataSet;
    DSPPreciosProveedor: TDataSetProvider;
    CDSPreciosProveedorCODIGO_STK: TStringField;
    CDSPreciosProveedorMUESTRASTOCK: TStringField;
    CDSPreciosProveedorCODIGO_PROV: TStringField;
    CDSPreciosProveedorMUESTRAPROVEEDOR: TStringField;
    frxPDFExport1: TfrxPDFExport;
    BitBtn1: TBitBtn;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    pnCabecera: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASTOCK: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMA_ACTUALIZACION: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_PROV: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAPROVEEDOR: TcxGridDBColumn;
    QPreciosProvee: TFDQuery;
    CDSPreciosProveedorPRECIO: TFloatField;
    QStk: TFDQuery;
    QStkCODIGO_STK: TStringField;
    QStkDETALLE_STK: TStringField;
    QProvee: TFDQuery;
    QProveeCODIGO: TStringField;
    QProveeNOMBRE: TStringField;
    CDSPreciosProveedorULTIMA_ACTUALIZACION: TSQLTimeStampField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rxcStockClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComparativaPrecios: TFormComparativaPrecios;

implementation

uses DMBuscadoresForm,UDMain_FD;

{$R *.DFM}

procedure TFormComparativaPrecios.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not( CDSPreciosProveedor.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='XLS';
      SaveDialog1.FileName:='Comparativa';

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
           if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
          end;
    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormComparativaPrecios.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSPreciosProveedor.Close;
  IF rxcStock.Value='*' then
    begin
      CDSPreciosProveedor.CommandText:='';
      if RxcProveedores.Value='*' Then
        CDSPreciosProveedor.CommandText:='select r.codigo_stk,s.detalle_stk as MuestraStock,r.precio,r.ultima_actualizacion,r.codigo_prov,p.nombre as MuestraProveedor from relacion_articuloprovee r '+
                                  'left join poveedor p on p.codigo=r.codigo_prov '+
                                  'left join stock s on s.codigo_stk=r.codigo_stk '+
                                  'order by s.detalle_stk'
      else
        CDSPreciosProveedor.CommandText:='select r.codigo_stk,s.detalle_stk as MuestraStock,r.precio,r.ultima_actualizacion,r.codigo_prov,p.nombre as MuestraProveedor from relacion_articuloprovee r '+
                                  'left join poveedor p on p.codigo=r.codigo_prov '+
                                  'left join stock s on s.codigo_stk=r.codigo_stk '+
                                  'where r.codigo_prov<>'+''''+RxcProveedores.Value+''''+
                                  ' order by s.detalle_stk'
    end
  else
    begin
      CDSPreciosProveedor.CommandText:='';
      if RxcProveedores.Value='*' Then
        CDSPreciosProveedor.CommandText:='select r.codigo_stk,s.detalle_stk as MuestraStock,r.precio,r.ultima_actualizacion,r.codigo_prov,p.nombre as MuestraProveedor from relacion_articuloprovee r '+
                                  'left join poveedor p on p.codigo=r.codigo_prov '+
                                  'left join stock s on s.codigo_stk=r.codigo_stk '+
                                  'where r.codigo_stk='+''''+rxcStock.Value+''''+
                                  ' order by s.detalle_stk'
      else
        CDSPreciosProveedor.CommandText:='select r.codigo_stk,s.detalle_stk as MuestraStock,r.precio,r.ultima_actualizacion,r.codigo_prov,p.nombre as MuestraProveedor from relacion_articuloprovee r '+
                                  'left join poveedor p on p.codigo=r.codigo_prov '+
                                  'left join stock s on s.codigo_stk=r.codigo_stk '+
                                  'where r.codigo_stk='+''''+rxcStock.Value+''''+
                                  ' and '+
                                  'r.codigo_prov<>'+''''+RxcProveedores.Value+''''+
                                  ' order by s.detalle_stk';

    end;
  CDSPreciosProveedor.Open;


end;

procedure TFormComparativaPrecios.FormCreate(Sender: TObject);
begin
  inherited;
  QStk.Open;
  QProvee.Open;
end;

procedure TFormComparativaPrecios.rxcStockClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormComparativaPrecios.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListado.DesignReport;
end;

procedure TFormComparativaPrecios.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not(ActiveControl is TJvDBLookupCombo) Then
  inherited;

end;

procedure TFormComparativaPrecios.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSPreciosProveedor.IsEmpty) Then
    begin

      frListado.PrintOptions.Printer:=PrNomListados;
      frListado.SelectPrinter;
      frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\LstPreciosComparativa.fr3');

      frListado.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');


end;

procedure TFormComparativaPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QStk.Close;
  QProvee.Close;
  CDSPreciosProveedor.Close;
  Action:=caFree;
end;

procedure TFormComparativaPrecios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComparativaPrecios:=Nil;
end;

end.