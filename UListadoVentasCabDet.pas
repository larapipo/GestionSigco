unit UListadoVentasCabDet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlueprint,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ComCtrls, AdvOfficeButtons, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvLabel, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, Vcl.ActnList, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin,
  Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,System.DateUtils,VirtualUI_SDK,cxGridExportLink,System.StrUtils,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormListadoVentasCabDet = class(TFormABMBase)
    pnCabecera: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    chBuscar: TAdvOfficeCheckBox;
    UpDown1: TUpDown;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    CDSVentas: TClientDataSet;
    CDSVentasTIPOCPBTE: TStringField;
    CDSVentasCLASECPBTE: TStringField;
    CDSVentasCODIGO: TStringField;
    CDSVentasNROCPBTE: TStringField;
    CDSVentasLETRAFAC: TStringField;
    CDSVentasSUCFAC: TStringField;
    CDSVentasNUMEROFAC: TStringField;
    CDSVentasRAZONSOCIAL: TStringField;
    CDSVentasNOMBRE: TStringField;
    CDSVentasDIRECCION: TStringField;
    CDSVentasTIPOIVA: TIntegerField;
    CDSVentasCUIT: TStringField;
    CDSVentasNETOGRAV1: TFloatField;
    CDSVentasDSTOIMPORTE: TFloatField;
    CDSVentasNETOGRAV2: TFloatField;
    CDSVentasNETOEXEN1: TFloatField;
    CDSVentasNETOEXEN2: TFloatField;
    CDSVentasTOTAL: TFloatField;
    CDSVentasCODIGOARTICULO: TStringField;
    CDSVentasDETALLE: TStringField;
    CDSVentasUNIDAD: TStringField;
    CDSVentasCANTIDAD: TFloatField;
    CDSVentasUNITARIO_EXENTO: TFloatField;
    CDSVentasUNITARIO_GRAVADO: TFloatField;
    CDSVentasDESGLOZAIVA: TStringField;
    CDSVentasDEPOSITO: TIntegerField;
    CDSVentasMODO_GRAVAMEN: TStringField;
    CDSVentasIVA_TASA: TFloatField;
    CDSVentasDESCUENTO: TFloatField;
    CDSVentasGRAVADO_IB: TStringField;
    CDSVentasTOTAL_1: TFloatField;
    DSPVentas: TDataSetProvider;
    QVentas: TFDQuery;
    DSVentas: TDataSource;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1LETRAFAC: TcxGridDBColumn;
    cxGrid1DBTableView1SUCFAC: TcxGridDBColumn;
    cxGrid1DBTableView1NUMEROFAC: TcxGridDBColumn;
    cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOIVA: TcxGridDBColumn;
    cxGrid1DBTableView1CUIT: TcxGridDBColumn;
    cxGrid1DBTableView1NETOGRAV1: TcxGridDBColumn;
    cxGrid1DBTableView1DSTOIMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1NETOGRAV2: TcxGridDBColumn;
    cxGrid1DBTableView1NETOEXEN1: TcxGridDBColumn;
    cxGrid1DBTableView1NETOEXEN2: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_EXENTO: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_GRAVADO: TcxGridDBColumn;
    cxGrid1DBTableView1DESGLOZAIVA: TcxGridDBColumn;
    cxGrid1DBTableView1MODO_GRAVAMEN: TcxGridDBColumn;
    cxGrid1DBTableView1IVA_TASA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCUENTO: TcxGridDBColumn;
    cxGrid1DBTableView1GRAVADO_IB: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_1: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    CDSVentasFECHAVTA: TSQLTimeStampField;
    CDSVentasFECHA_FISCAL: TSQLTimeStampField;
    procedure Label1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoVentasCabDet: TFormListadoVentasCabDet;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormListadoVentasCabDet.BitBtn1Click(Sender: TObject);
var Nombre:String;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSVentas.IsEmpty) then
    begin
      SaveDialog1.FileName  :='VentasCabDet.xls';
      SaveDialog1.DefaultExt:='xls';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            Nombre:=SaveDialog1.FileName;
            if Not(AnsiEndsText( '.xls', Nombre )) Then
              nombre:=SaveDialog1.FileName+'.xls';

//            if VirtualUI.Active then
//              begin
//                if Not(AnsiEndsText( '.xls', Nombre )) Then
//                  SaveDialog1.FileName:=Nombre+'.'+SaveDialog1.DefaultExt;
//              end
//            else
            if Nombre<>'' Then
              cxGridExportLink.ExportGridToExcel(Nombre, cxGrid1);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(Nombre);
          end;
    end;
end;

procedure TFormListadoVentasCabDet.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSVentas.Close;
  CDSVentas.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSVentas.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSVentas.Open;

end;

procedure TFormListadoVentasCabDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoVentasCabDet.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_Fd.Nombre_PC;
end;

procedure TFormListadoVentasCabDet.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoVentasCabDet:=nil;
end;

procedure TFormListadoVentasCabDet.FormShow(Sender: TObject);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;

procedure TFormListadoVentasCabDet.Label1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=Not(cxGrid1DBTableView1.OptionsView.GroupByBox);
end;

procedure TFormListadoVentasCabDet.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  if chBuscar.Checked Then
    Buscar.Execute;
end;

end.
