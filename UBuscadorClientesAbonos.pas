unit UBuscadorClientesAbonos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.ExtCtrls, Data.FMTBcd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr, Vcl.Buttons, JvExControls,
  JvGradient, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorClientesAbonados = class(TForm)
    pnCabecera: TPanel;
    pnCuerpo: TPanel;
    pnPie: TPanel;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    DSClientes: TDataSource;
    dbgCupones: TcxGrid;
    dbgCuponesDBTableView1: TcxGridDBTableView;
    dbgCuponesLevel1: TcxGridLevel;
    edNombre: TJvDBFindEdit;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    dbgCuponesDBTableView1CODIGO: TcxGridDBColumn;
    dbgCuponesDBTableView1NOMBRE: TcxGridDBColumn;
    dbgCuponesDBTableView1RAZON_SOCIAL: TcxGridDBColumn;
    dbgCuponesDBTableView1DIRECCION_COMERCIAL: TcxGridDBColumn;
    dbgCuponesDBTableView1LOCALIDAD: TcxGridDBColumn;
    dbgCuponesDBTableView1CPOSTAL: TcxGridDBColumn;
    dbgCuponesDBTableView1TELEFONO_COMERCIAL_1: TcxGridDBColumn;
    dbgCuponesDBTableView1TELEFONO_COMERCIAL_2: TcxGridDBColumn;
    btOk: TBitBtn;
    BitBtn2: TBitBtn;
    CDSClientesZONA: TIntegerField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesCOBRADOR: TStringField;
    edDireccio: TJvDBFindEdit;
    Label1: TLabel;
    Label2: TLabel;
    edCodigo: TJvDBFindEdit;
    Label3: TLabel;
    QClientes: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgCuponesDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCuponesDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDireccioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    Property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormBuscadorClientesAbonados: TFormBuscadorClientesAbonados;

implementation

Uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorClientesAbonados.btOkClick(Sender: TObject);
begin
  FCodigo:=CDSClientesCODIGO.AsString;
end;

procedure TFormBuscadorClientesAbonados.BitBtn2Click(Sender: TObject);
begin
  FCodigo:='';
end;

procedure TFormBuscadorClientesAbonados.dbgCuponesDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if AViewInfo.GridRecord.Selected then
    begin
      ACanvas.Brush.Color := clNavy;
      ACanvas.Font.Color  := clWhite;
    end;
end;

procedure TFormBuscadorClientesAbonados.dbgCuponesDBTableView1DblClick(
  Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorClientesAbonados.edCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key=VK_DOWN then
    begin
      If Not(CDSClientes.Eof) Then  CDSClientes.Next;
    end
  else
    if key=VK_Up then
      begin
        If Not(CDSClientes.bof) Then  CDSClientes.Prior;
      end;

end;

procedure TFormBuscadorClientesAbonados.edDireccioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key=VK_DOWN then
    begin
      If Not(CDSClientes.Eof) Then  CDSClientes.Next;
    end
  else
    if key=VK_Up then
      begin
        If Not(CDSClientes.bof) Then  CDSClientes.Prior;
      end;

end;

procedure TFormBuscadorClientesAbonados.edNombreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=VK_DOWN then
    begin
      If Not(CDSClientes.Eof) Then  CDSClientes.Next;
    end
  else
    if key=VK_Up then
      begin
        If Not(CDSClientes.bof) Then  CDSClientes.Prior;
      end;

end;

procedure TFormBuscadorClientesAbonados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorClientesAbonados.FormCreate(Sender: TObject);
begin
  CDSClientes.Close;
  CDSClientes.Open;
  AutoSize:=True;
end;

procedure TFormBuscadorClientesAbonados.FormDestroy(Sender: TObject);
begin
  FormBuscadorClientesAbonados:=nil;
end;

procedure TFormBuscadorClientesAbonados.FormShow(Sender: TObject);
begin
  BringToFront;
  edNombre.SetFocus;
  edNombre.SelectAll;

end;

end.
