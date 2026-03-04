unit ULstMovCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, cxGraphics,StrUtils,
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
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Datasnap.DBClient, Datasnap.Provider, Vcl.Samples.Spin,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.DBCtrls, JvLabel, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls,DateUtils,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  cxGridExportLink, Vcl.Menus,VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormLstMovCajaGeneral = class(TFormABMBase)
    pnCab: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    SpinButton1: TSpinButton;
    DSPValores: TDataSetProvider;
    CDSValores: TClientDataSet;
    DSValores: TDataSource;
    CDSValoresTIPO_CPBTE: TStringField;
    CDSValoresCLASE_CPBTE: TStringField;
    CDSValoresNRO_CPBTE: TStringField;
    CDSValoresDEBE: TFloatField;
    CDSValoresHABER: TFloatField;
    CDSValoresSIGNO: TStringField;
    CDSValoresTIPOPPAGO: TStringField;
    CDSValoresFPAGO: TStringField;
    CDSValoresTIPOOP: TStringField;
    CDSValoresTIPO: TStringField;
    CDSValoresID_CPBTE: TIntegerField;
    CDSValoresSUCURSAL: TIntegerField;
    CDSValoresNOM_CPBTE: TStringField;
    CDSValoresID_CTA_CAJA: TIntegerField;
    CDSValoresID_CAJA: TIntegerField;
    CDSValoresNOMBRE_CAJA: TStringField;
    CDSValoresNUMERO_CAJA: TIntegerField;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1FPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOOP: TcxGridDBColumn;
    cxGrid1DBTableView1NOM_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CTA_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_CAJA: TcxGridDBColumn;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    ExportarXLS1: TMenuItem;
    RxLabel7: TJvLabel;
    RxLabel10: TJvLabel;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Button1: TButton;
    QValores: TFDQuery;
    JvLabel1: TJvLabel;
    CDSValoresFECHA: TSQLTimeStampField;
    CDSValoresNOMBRE: TStringField;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    N1: TMenuItem;
    GroupBox1: TMenuItem;
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLstMovCajaGeneral: TFormLstMovCajaGeneral;

implementation

{$R *.dfm}

uses UFiltroComprobantesVenta,UDMain_FD;

procedure TFormLstMovCajaGeneral.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSValores.Close;
  CDSValores.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSValores.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSValores.Open;
end;

procedure TFormLstMovCajaGeneral.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
   FormFiltroCpbtes.ShowModal;
end;

procedure TFormLstMovCajaGeneral.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormLstMovCajaGeneral.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.DefaultExt:='xls';
  SaveDialog1.FileName  :='MovimientosCajaGral';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if Not(CDSValores.IsEmpty) Then
    if SaveDialog1.Execute then
      if SaveDialog1.FileName<>'' Then
        begin
          if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1);
          Sleep(300);

          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);

        end;
end;

procedure TFormLstMovCajaGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormLstMovCajaGeneral.FormCreate(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
 // ceCliente.SetFocus;
end;

procedure TFormLstMovCajaGeneral.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLstMovCajaGeneral:=nil;
end;

procedure TFormLstMovCajaGeneral.FormResize(Sender: TObject);
begin
  inherited;
  if FormLstMovCajaGeneral<>nil then
    if FormLstMovCajaGeneral.Width>1400 then
      FormLstMovCajaGeneral.Width:=1400;

end;

procedure TFormLstMovCajaGeneral.GroupBox1Click(Sender: TObject);
begin
  inherited;
  GroupBox1.Checked:=not(GroupBox1.Checked);
  cxGrid1DBTableView1.OptionsView.GroupByBox:=GroupBox1.Checked;
end;

procedure TFormLstMovCajaGeneral.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormLstMovCajaGeneral.SpinButton1DownClick(Sender: TObject);
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
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
  Buscar.Execute;

end;

procedure TFormLstMovCajaGeneral.SpinButton1UpClick(Sender: TObject);
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
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
  Buscar.Execute;
end;


end.
