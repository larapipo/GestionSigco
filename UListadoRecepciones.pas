unit UListadoRecepciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, cxClasses, cxCustomData, cxStyles, cxEdit,
  dxBarBuiltInMenu, cxCustomPivotGrid, cxDBPivotGrid, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.Mask, JvExMask, JvToolEdit,System.DateUtils;

type
  TFormListadoRecepciones = class(TFormABMBase)
    Panel2: TPanel;
    Panel3: TPanel;
    QRececpciones: TFDQuery;
    QRececpcionesID_RECMER: TIntegerField;
    QRececpcionesTIPOCPBTE: TStringField;
    QRececpcionesCLASECPBTE: TStringField;
    QRececpcionesNROCPBTE: TStringField;
    QRececpcionesCODIGO: TStringField;
    QRececpcionesLETRARECMER: TStringField;
    QRececpcionesSUCRECMER: TStringField;
    QRececpcionesNUMERORECMER: TStringField;
    QRececpcionesNOMBRE: TStringField;
    QRececpcionesRAZONSOCIAL: TStringField;
    QRececpcionesDIRECCION: TStringField;
    QRececpcionesCPOSTAL: TStringField;
    QRececpcionesLOCALIDAD: TStringField;
    QRececpcionesTIPOIVA: TIntegerField;
    QRececpcionesCUIT: TStringField;
    QRececpcionesFECHARECEPCION: TSQLTimeStampField;
    QRececpcionesANULADO: TStringField;
    QRececpcionesORDENCOMPRA: TStringField;
    QRececpcionesREMITOS: TStringField;
    QRececpcionesNETOGRAV1: TFloatField;
    QRececpcionesDSTO: TFloatField;
    QRececpcionesDSTOIMPORTE: TFloatField;
    QRececpcionesNETOGRAV2: TFloatField;
    QRececpcionesNETOEXEN1: TFloatField;
    QRececpcionesNETOEXEN2: TFloatField;
    QRececpcionesIMPORTEEXCLUIDO2: TFloatField;
    QRececpcionesIMPORTEEXCLUIDO1: TFloatField;
    QRececpcionesTOTAL: TFloatField;
    QRececpcionesOBSERVACION1: TStringField;
    QRececpcionesOBSERVACION2: TStringField;
    QRececpcionesSUCURSALCOMPRA: TIntegerField;
    QRececpcionesZONA: TIntegerField;
    QRececpcionesDEPOSITO: TIntegerField;
    QRececpcionesDESGLOZAIVA: TStringField;
    QRececpcionesCALCULA_SOBRETASA: TStringField;
    QRececpcionesNETOMONOTRIBUTO1: TFloatField;
    QRececpcionesNETOMONOTRIBUTO2: TFloatField;
    QRececpcionesUSUARIO: TStringField;
    QRececpcionesPROCESADA: TStringField;
    QRececpcionesID_FACTURA: TIntegerField;
    QRececpcionesNROFACTURA: TStringField;
    QRececpcionesMERCADERIA_CONSIGNACION: TStringField;
    QRececpcionesFECHA_HORA: TSQLTimeStampField;
    QRececpcionesID_ORDENCOMPRA: TIntegerField;
    DSRecepciones: TDataSource;
    QRececpcionesMUESTRADEPOSITO: TStringField;
    QRececpcionesMUESTRASUCURSAL: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHARECEPCION: TcxGridDBColumn;
    cxGrid1DBTableView1ORDENCOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1REMITOS: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRADEPOSITO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASUCURSAL: TcxGridDBColumn;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    cxGrid1DBTableView1PROCESADA: TcxGridDBColumn;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoRecepciones: TFormListadoRecepciones;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListadoRecepciones.BuscarExecute(Sender: TObject);
begin
  inherited;
  QRececpciones.Close;
  QRececpciones.ParamByName('Desde').AsDate    := Desde.Date;
  QRececpciones.ParamByName('Hasta').AsDate    := Hasta.Date;
  QRececpciones.ParamByName('codigo').AsString := '******';

  QRececpciones.Open;
end;

procedure TFormListadoRecepciones.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
ColEstado:Integer;
begin
  inherited;
  colEstado := cxGrid1DBTableView1PROCESADA.Index;
  if AViewInfo.Selected then
    begin
       ACanvas.Font.Color  := clWhite;
       ACanvas.Brush.Color := clBlue;
     end
  else
    begin
      if (AviewInfo.GridRecord.Values[colEstado]='S') then
        ACanvas.Brush.Color:=clMoneyGreen;
    end;
end;

procedure TFormListadoRecepciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoRecepciones.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;

end;

procedure TFormListadoRecepciones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRecepciones:=nil;
end;

procedure TFormListadoRecepciones.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    begin
      Desde.Date := IncMonth(Desde.Date,(1));
      Hasta.Date := IncMonth(Hasta.Date,(1));
    end
  else
    if Button=btPrev Then
      begin
        Desde.Date := IncMonth(Desde.Date,(-1));
        Hasta.Date := IncMonth(Hasta.Date,(-1));
      end;
  Buscar.Execute;
end;

end.
