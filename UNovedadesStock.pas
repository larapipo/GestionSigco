unit UNovedadesStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  Provider, DBClient, StdCtrls, JvExControls, JvDBLookup, ActnList, ComCtrls,
  Mask, JvExMask, JvToolEdit, DataExport, DataToXLS, frxClass, frxDBSet,
  frxExportPDF, Buttons, JvGradient,DateUtils, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinOffice2007Black,cxGridExportLink,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator, dxSkinsdxRibbonPainter, System.Actions,
  VirtualUI_SDK, dxSkinBasic, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges, dxScrollbarAnnotations,
  frxExportBaseDialog, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frCoreClasses;

type
  TFormNovedadesStock = class(TForm)
    QNovedades: TFDQuery;
    CDSNovedades: TClientDataSet;
    DSPNovedades: TDataSetProvider;
    DSNovedades: TDataSource;
    CDSNovedadesCODIGO_STK: TStringField;
    CDSNovedadesDETALLE_STK: TStringField;
    CDSNovedadesFIJACION_PRECIO_EXENTO: TFloatField;
    CDSNovedadesFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSNovedadesFIJACION_PRECIO_IVA: TFloatField;
    CDSNovedadesFIJACION_PRECIO_FINAL: TFloatField;
    CDSNovedadesFIJACION_PRECIO_TOTAL: TFloatField;
    CDSNovedadesRUBRO_STK: TStringField;
    CDSNovedadesDETALLE_RUBRO: TStringField;
    CDSNovedadesSUBRUBRO_STK: TStringField;
    CDSNovedadesDETALLE_SUBRUBRO: TStringField;
    CDSNovedadesFECHA_ALTA: TSQLTimeStampField;
    CDSNovedadesFUAP: TSQLTimeStampField;
    CDSNovedadesCOSTOENETOLISTA: TFloatField;
    CDSNovedadesCOSTOGRAVLISTA: TFloatField;
    CDSNovedadesCOSTOTOTLISTA: TFloatField;
    CDSNovedadesRECARGILISTA: TFloatField;
    CDSNovedadesDESCUENTOLISTA: TFloatField;
    CDSNovedadesPRECIOEXELISTA: TFloatField;
    CDSNovedadesPRECIOGRAVLISTA: TFloatField;
    CDSNovedadesPRECIOIVALISTA: TFloatField;
    CDSNovedadesPRECIOLISTA: TFloatField;
    CDSNovedadesNOMBRELISTA: TStringField;
    ActionList1: TActionList;
    Buscar: TAction;
    frxPDFExport1: TfrxPDFExport;
    frxReporte: TfrxReport;
    frNovedades: TfrxDBDataset;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    DSlistaprecios: TDataSource;
    QListaPrecios: TFDQuery;
    intgrfldQListaPrecID_LISTA: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID_LISTA: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSNovedadesFACTUALIZACIOPRECIO: TSQLTimeStampField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    lb1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbgStock: TJvDBGrid;
    RadioGroup1: TRadioGroup;
    dbclistaPrecios: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    chbporDia: TCheckBox;
    TabSheet2: TTabSheet;
    QHistorico: TFDQuery;
    CDSHistorico: TClientDataSet;
    DSPHistorico: TDataSetProvider;
    DSHistorico: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CDSHistoricoID: TIntegerField;
    CDSHistoricoCODIGO_STK: TStringField;
    CDSHistoricoID_CAMBIO_PRECIO_GENERAL: TIntegerField;
    CDSHistoricoFECHA: TSQLTimeStampField;
    CDSHistoricoMOTIVO: TStringField;
    CDSHistoricoUSUARIO: TStringField;
    CDSHistoricoCOSTO_GRAVADO_OLD: TFloatField;
    CDSHistoricoCOSTO_EXENTO_OLD: TFloatField;
    CDSHistoricoCOSTO_OLD: TFloatField;
    CDSHistoricoF_PRECIO_GRAVADO_OLD: TFloatField;
    CDSHistoricoF_PRECIO_EXENTO_OLD: TFloatField;
    CDSHistoricoFPRECIO_OLD: TFloatField;
    CDSHistoricoCOSTO_GRAVADO_NEW: TFloatField;
    CDSHistoricoCOSTO_EXENTO_NEW: TFloatField;
    CDSHistoricoCOSTO_NEW: TFloatField;
    CDSHistoricoF_PRECIO_GRAVADO_NEW: TFloatField;
    CDSHistoricoF_PRECIO_EXENTO_NEW: TFloatField;
    CDSHistoricoFPRECIO_NEW: TFloatField;
    CDSHistoricoID_FC_COMPRA: TIntegerField;
    CDSHistoricoCODIGO_RUBRO: TStringField;
    CDSHistoricoDETALLE_RUBRO: TStringField;
    CDSHistoricoCODIGO_SUBRUBRO: TStringField;
    CDSHistoricoDETALLE_SUBRUBRO: TStringField;
    CDSHistoricoDETALLE_STK: TStringField;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO_OLD: TcxGridDBColumn;
    cxGrid1DBTableView1FPRECIO_OLD: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO_NEW: TcxGridDBColumn;
    cxGrid1DBTableView1FPRECIO_NEW: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    Label3: TLabel;
    FechaDesde: TJvDateEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    CDSHistoricoNOMBRE: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Panel2: TPanel;
    btBuscar: TBitBtn;
    btSalir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure dbclistaPreciosClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgStockDblClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PrNomListados:String;
  end;

var
  FormNovedadesStock: TFormNovedadesStock;

implementation

{$R *.dfm}
uses UDMain_FD, UStock_2;

procedure TFormNovedadesStock.BitBtn1Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=0 then
    begin
      CDSNovedades.DisableControls;
     
      frxReporte.PrintOptions.Printer:=PrNomListados;
      frxReporte.SelectPrinter;

      frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\LstNovedadesStock.fr3');

      frxReporte.PrintOptions.Printer:=PrNomListados;
      frxReporte.SelectPrinter;

      frxReporte.Variables['Desde']:=''''+DateToStr(desde.date)+'''';
      frxReporte.Variables['Hasta']:=''''+DateToStr(Hasta.date)+'''';

      DMMain_FD.QOpciones.Close;

      frxReporte.ShowReport;
      CDSNovedades.EnableControls;
    end
  else
    if PageControl1.ActivePageIndex=1 then
      begin
        cxGrid1DBTableView1DETALLE_RUBRO.Visible    :=False;
        cxGrid1DBTableView1DETALLE_SUBRUBRO.Visible :=False;
      //  cxGrid1DBTableView1MOTIVO.Visible           :=False;
        cxGrid1DBTableView1USUARIO.Visible          :=False;


        dxComponentPrinter1.Preview(True);
        cxGrid1DBTableView1DETALLE_RUBRO.Visible    :=True;
        cxGrid1DBTableView1DETALLE_SUBRUBRO.Visible :=True;
        cxGrid1DBTableView1MOTIVO.Visible           :=True;
        cxGrid1DBTableView1USUARIO.Visible          :=True;

      end;
end;

procedure TFormNovedadesStock.BitBtn2Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if PageControl1.ActivePageIndex=0 then
    begin
      if Not(CDSNovedades.IsEmpty) then
        begin
          SaveDialog.FileName  :='novedades';
          SaveDialog.DefaultExt:='xls';
          if SaveDialog.Execute Then
            if SaveDialog.FileName<>'' Then
              begin
                if VirtualUI.Active then
                  DataToXLS.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
                else
                  DataToXLS.SaveToFile(SaveDialog.FileName);

                if VirtualUI.Active then
                  begin
                    VirtualUI.StdDialogs:=False;
                    VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
                  end;
              end;

        end
      else
        ShowMessage('No hay datos para exportar');
    end
  else
    if PageControl1.ActivePageIndex=1 then
      begin
        if Not(CDSHistorico.IsEmpty) then
        begin
          SaveDialog.FileName:='Novedades';
          SaveDialog.DefaultExt:='xls';
          if SaveDialog.Execute Then
            if SaveDialog.FileName<>'' Then
              if VirtualUI.Active then
                cxGridExportLink.ExportGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxGrid1)
              else
                cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);

        end;
      end;

end;

procedure TFormNovedadesStock.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormNovedadesStock.BuscarExecute(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=0 then
    begin
      CDSNovedades.Close;
      CDSNovedades.Params.ParamByName('modo').Value:=RadioGroup1.ItemIndex;
      CDSNovedades.Params.ParamByName('lista').Value:=dbclistaPrecios.KeyValue;
      CDSNovedades.Params.ParamByName('desde').Value:=Desde.Date;
      CDSNovedades.Params.ParamByName('hasta').Value:=Hasta.Date;
      CDSNovedades.Open;
    end
  else
    if PageControl1.ActivePageIndex=1 then
      begin
        CDSHistorico.Close;
        CDSHistorico.Params.ParamByName('fecha').Value:=FechaDesde.Date;
        CDSHistorico.Open;
      end;


end;

procedure TFormNovedadesStock.dbclistaPreciosClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormNovedadesStock.dbgStockDblClick(Sender: TObject);
begin
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSNovedadesCODIGO_STK.AsString;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;  
end;

procedure TFormNovedadesStock.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormNovedadesStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSListaPrecios.Close;
  CDSNovedades.Close;
  Action:=caFree;
end;

procedure TFormNovedadesStock.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
  CDSListaPrecios.Close;
  CDSListaPrecios.Open;

end;

procedure TFormNovedadesStock.FormDestroy(Sender: TObject);
begin
  FormNovedadesStock:=nil;
end;

procedure TFormNovedadesStock.FormResize(Sender: TObject);
begin
  if FormNovedadesStock<>nil then
    if FormNovedadesStock.Width<>1173 then
      FormNovedadesStock.Width:=1173;

end;

procedure TFormNovedadesStock.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  FechaDesde.Date:=IncMonth(Date,-6);
  PageControl1.ActivePageIndex:=0;
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  Desde.SetFocus;
  Buscar.Execute;

end;

procedure TFormNovedadesStock.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormNovedadesStock.Panel1DblClick(Sender: TObject);
begin
  frxReporte.DesignReport;
end;

procedure TFormNovedadesStock.RadioGroup1Click(Sender: TObject);
begin
  buscar.Execute;
end;

procedure TFormNovedadesStock.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbporDia.Checked=False then
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
   end
 else
   if chbporDia.Checked=True then
     begin
       if Button=btnext Then
         Desde.Date := IncDay(Desde.Date,(1))
       else
         if Button=btPrev Then
           Desde.Date := IncDay(Desde.Date,(-1));
       Hasta.Date:=desde.Date;
       Buscar.Execute;
   end;

end;
 // Buscar.Execute;

end.
