unit UListadoGastosTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,   ComCtrls, StdCtrls, Mask,
  JvComponentBase, ImgList, DB,
    ActnList,  JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, Grids, DBGrids,Librerias, JvDBGridFooter, JvExDBGrids, JvDBGrid,
  frxClass, frxDBSet, DataExport, DataToXLS, frxExportPDF, frxExportXLS,
  frxExportText, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, dxSkinsCore,
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
  JvAppStorage, JvAppIniStorage, System.Actions, Vcl.Samples.Spin,
  Datasnap.DBClient, Datasnap.Provider, JvExMask, JvToolEdit, JvDBLookup,
  Data.SqlExpr,VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,StrUtils,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormGastosTC = class(TFormABMBase)
    DSTCredito: TDataSource;
    DSGastosTC: TDataSource;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frxReport: TfrxReport;
    frxDBGastos: TfrxDBDataset;
    Imprimir: TAction;
    ExportarXLS: TAction;
    frxPDFExport1: TfrxPDFExport;
    SaveDialog1: TSaveDialog;
    XLSGastos: TDataToXLS;
    BitBtn4: TBitBtn;
    ToolButton2: TToolButton;
    dbcTc: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel2: TJvLabel;
    CDSGastoTC: TClientDataSet;
    DSPGastoTC: TDataSetProvider;
    CDSGastoTCPERIODO_LIQUIDADO: TStringField;
    CDSGastoTCRAZONSOCIAL: TStringField;
    CDSGastoTCID_TC: TIntegerField;
    CDSGastoTCDESCRIPCION: TStringField;
    CDSGastoTCNUMEROCPBTE: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgGastos: TDBGrid;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1ID_TC: TcxDBPivotGridField;
    cxDBPivotGrid1DESCRIPCION: TcxDBPivotGridField;
    cxDBPivotGrid1NUMEROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA_FISCAL: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1PERIODO_LIQUIDADO: TcxDBPivotGridField;
    cxDBPivotGrid1RAZONSOCIAL: TcxDBPivotGridField;
    cxDBPivotGrid1TOTAL_PRESENTACION: TcxDBPivotGridField;
    cxDBPivotGrid1COSTO_FINANCIERO: TcxDBPivotGridField;
    cxDBPivotGrid1GANANCIAS: TcxDBPivotGridField;
    cxDBPivotGrid1IIBB: TcxDBPivotGridField;
    cxDBPivotGrid1IVA: TcxDBPivotGridField;
    cxDBPivotGrid1TOTAL_ACREDITADO: TcxDBPivotGridField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    Label1: TLabel;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    SpinButton1: TSpinButton;
    QTCredito: TFDQuery;
    QTCreditoID_TC: TIntegerField;
    QTCreditoDESCRIPCION: TStringField;
    QTCreditoMONEDA: TIntegerField;
    QTCreditoCODIGOARTICULO: TStringField;
    QTCreditoID_CUENTA_BANCO: TIntegerField;
    QTCreditoDIAS_ACREDITACION: TSmallintField;
    QTCreditoCUIT: TStringField;
    QTCreditoRAZONSOCIAL: TStringField;
    QGastosTC: TFDQuery;
    CDSGastoTCTOTAL_PRESENTACION: TFloatField;
    CDSGastoTCCOSTO_FINANCIERO: TFloatField;
    CDSGastoTCGANANCIAS: TFloatField;
    CDSGastoTCARANCEL: TFloatField;
    CDSGastoTCIIBB: TFloatField;
    CDSGastoTCIVA: TFloatField;
    CDSGastoTCTOTAL_ACREDITADO: TFloatField;
    CDSGastoTCIMPORTES_EXENTOS: TFloatField;
    rgModo: TAdvOfficeRadioGroup;
    CDSGastoTCFECHA: TSQLTimeStampField;
    CDSGastoTCFECHA_FISCAL: TSQLTimeStampField;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGastosTC: TFormGastosTC;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormGastosTC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSGastoTC.Close;

  case rgModo.ItemIndex of
  0:CDSGastoTC.CommandText :='select l.id_tc,t.descripcion,l.numerocpbte, l.fecha,l.fecha_fiscal,l.periodo_liquidado,l.razonsocial,l.total_presentacion, '+
                             'l.costo_financiero,l.ganancias,l.iibb,l.iva,l.arancel, l.total_acreditado,l.importes_exentos from liquidacion_tc_cab l '+
                             'left join t_credito t on t.id_tc=l.id_tc '+
                             'where ( l.fecha between :desde and :hasta ) '+
                             'and ( ( l.id_tc= :id_tc ) or ( :id_tc = -1 )) '+
                             'order by t.descripcion,l.fecha ';

  1:CDSGastoTC.CommandText :='select l.id_tc,t.descripcion,l.numerocpbte, l.fecha,l.fecha_fiscal,l.periodo_liquidado,l.razonsocial,l.total_presentacion, '+
                             'l.costo_financiero,l.ganancias,l.iibb,l.iva,l.arancel, l.total_acreditado,l.importes_exentos from liquidacion_tc_cab l '+
                             'left join t_credito t on t.id_tc=l.id_tc '+
                             'where ( l.fecha_fiscal between :desde and :hasta ) '+
                             'and ( ( l.id_tc= :id_tc ) or ( :id_tc = -1 )) '+
                             'order by t.descripcion,l.fecha ';

                             end;

  CDSGastoTC.Params.ParamByName('desde').Value:=Desde.date;
  CDSGastoTC.Params.ParamByName('hasta').Value:=Hasta.date;
  CDSGastoTC.Params.ParamByName('id_tc').Value:=StrToInt(dbcTc.Value);
  CDSGastoTC.Open;

  cxDBPivotGrid1DESCRIPCION.ExpandAll;
  cxDBPivotGrid1FECHA.ExpandAll;
  cxDBPivotGrid1FECHA_FISCAL.ExpandAll;

end;

procedure TFormGastosTC.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSGastoTC.IsEmpty) THEN
    BEGIN
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='GastosTC';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if Not(AnsiEndsText('xls',SaveDialog1.FileName)) then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            XLSGastos.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormGastosTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  QTCredito.Close;
  Action:=caFree;
end;

procedure TFormGastosTC.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
  QTCredito.Open;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormGastosTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormgastosTC:=nil;
end;

procedure TFormGastosTC.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
 // CDSTCredito.Open;
//  if m=1 Then
//    begin
//      m:=12;y:=y-1;
//    end
//  else
//    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
//  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));

  cxDBPivotGrid1.OptionsView.FilterFields:=False;
  cxDBPivotGrid1.OptionsView.DataFields  :=False;
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormGastosTC.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListaGastosTC.fr3');

  frxReport.Variables['Desde']  :=''''+Desde.Text+'''';
  frxReport.Variables['Hasta']  :=''''+Hasta.Text+'''';
  frxReport.Variables['Tarjeta']:=''''+dbcTc.Text+'''';
  frxReport.ShowReport;

end;

procedure TFormGastosTC.Label1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
  cxDBPivotGrid1.OptionsView.DataFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);

end;

procedure TFormGastosTC.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormGastosTC.SpinButton1DownClick(Sender: TObject);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
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

procedure TFormGastosTC.SpinButton1UpClick(Sender: TObject);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormGastosTC.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

end.