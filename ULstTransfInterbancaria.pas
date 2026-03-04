unit ULstTransfInterbancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  JvExControls, JvLabel, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ImgList, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, Vcl.Menus,VirtualUI_SDK,cxGridExportLink,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormLstTransferenciasInterBancarias = class(TForm)
    pnBase: TPanel;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    pnCabecera: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Label1: TLabel;
    QTransferencias: TFDQuery;
    QTransferenciasID: TIntegerField;
    QTransferenciasID_CTA_CAJA_DESDE: TIntegerField;
    QTransferenciasID_CTA_CAJA_HASTA: TIntegerField;
    QTransferenciasNUMERO: TStringField;
    QTransferenciasIMPORTE: TFloatField;
    QTransferenciasTIPO: TStringField;
    QTransferenciasCLASE: TStringField;
    QTransferenciasNOMBRE_CTA_DESDE: TStringField;
    QTransferenciasNOMBRE_CTA_HASTA: TStringField;
    QTransferenciasNRO_CTA_DESDE: TStringField;
    QTransferenciasNRO_CTA_HASTA: TStringField;
    DSTransferencias: TDataSource;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE_CTA_DESDE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE_CTA_HASTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_CTA_DESDE: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_CTA_HASTA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetHighContrast2: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    PopupMenu1: TPopupMenu;
    ExportarAjustesdeClientes1: TMenuItem;
    SaveDialog: TSaveDialog;
    BitBtn1: TBitBtn;
    QTransferenciasFECHA: TSQLTimeStampField;
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportarAjustesdeClientes1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLstTransferenciasInterBancarias: TFormLstTransferenciasInterBancarias;

implementation

uses UDMain_FD, System.DateUtils;

{$R *.dfm}

procedure TFormLstTransferenciasInterBancarias.BitBtn1Click(Sender: TObject);
begin
  QTransferencias.Close;
  QTransferencias.ParamByName('desde').Value:=Desde.Date;
  QTransferencias.ParamByName('hasta').Value:=Hasta.Date;
  QTransferencias.Open;
end;

procedure TFormLstTransferenciasInterBancarias.ExportarAjustesdeClientes1Click(
  Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (QTransferencias.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='Transferencias';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxGrid1)
            else
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormLstTransferenciasInterBancarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormLstTransferenciasInterBancarias.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
 JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormLstTransferenciasInterBancarias.FormDestroy(Sender: TObject);
begin
  FormLstTransferenciasInterBancarias:=nil;
end;

procedure TFormLstTransferenciasInterBancarias.FormShow(Sender: TObject);
  var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := EncodeDate(y,m,1);
end;

procedure TFormLstTransferenciasInterBancarias.SpeedButton1Click(
  Sender: TObject);
begin
  QTransferencias.Close;
  QTransferencias.ParamByName('desde').Value:=Desde.Date;
  QTransferencias.ParamByName('hasta').Value:=Hasta.Date;
  QTransferencias.Open;
end;

procedure TFormLstTransferenciasInterBancarias.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  QTransferencias.Close;
  QTransferencias.ParamByName('desde').Value:=Desde.Date;
  QTransferencias.ParamByName('hasta').Value:=Hasta.Date;
  QTransferencias.Open;
end;

end.
