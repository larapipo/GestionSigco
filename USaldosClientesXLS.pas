unit USaldosClientesXLS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Data.FMTBcd, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,  AdvUtil, AdvObj,dxPScxPivotGridLnk,cxGridExportLink,
  BaseGrid, cxCustomPivotGrid, cxDBPivotGrid,VirtualUI_SDK,
  Vcl.ExtCtrls, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,StrUtils, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormSaldosClientesXLS = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DSMovCC: TDataSource;
    DSPMovCC: TDataSetProvider;
    btVer: TBitBtn;
    CDSMovCC: TClientDataSet;
    btExcel: TBitBtn;
    dlgSave1: TSaveDialog;
    CDSMovCCCODIGO: TStringField;
    CDSMovCCRAZON_SOCIAL: TStringField;
    CDSMovCCNOMBRE: TStringField;
    CDSMovCCDIRECCION_COMERCIAL: TStringField;
    CDSMovCCTELEFONO_COMERCIAL_1: TStringField;
    CDSMovCCCPOSTAL: TStringField;
    CDSMovCCLOCALIDAD: TStringField;
    CDSMovCCTELEFONO_COMERCIAL_2: TStringField;
    CDSMovCCVENDEDOR: TStringField;
    CDSMovCCZONA: TIntegerField;
    CDSMovCCCORREOELECTRONICO: TStringField;
    CDSMovCCFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSMovCCTIPO_VTA: TStringField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCSALDO: TFloatField;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    CDSMovCCCODIGONOMBRE: TStringField;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    CDSMovCCCLASECPBTE: TStringField;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    Panel1: TPanel;
    QMovCC: TFDQuery;
    CDSMovCCLIMITE_CREDITO: TFloatField;
    CDSMovCCSALDOCPTE: TFloatField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    procedure btVerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure CDSMovCCCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TipoVta,Condiciones:String;
    Hasta  :TDateTime;
    Minimo,Maximo:Extended;
  end;

var
  FormSaldosClientesXLS: TFormSaldosClientesXLS;

implementation

uses USaldosClientes,UDMain_FD;

{$R *.dfm}

procedure TFormSaldosClientesXLS.btVerClick(Sender: TObject);
var i:integer;
begin
  CDSMovCC.Close;
  CDSMovCC.CommandText:='select m.CODIGO, m.RAZON_SOCIAL,m.nombre, m.DIRECCION_COMERCIAL, m.TELEFONO_COMERCIAL_1,m.cpostal,m.localidad,'+
                           'm.TELEFONO_COMERCIAL_2, m.VENDEDOR, m.ZONA, m.CORREOELECTRONICO,'+
                           'm.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,m.tipo_vta,m.debe,m.haber,m.tipocpbte,m.clasecpbte,m.nrocpbte,m.detalle,M.FECHAVTA,m.fechavto,'+
                           '(SUM(m.DEBE)-SUM(m.HABER)) AS saldo,m.saldo as SaldoCpte from movccvta_temporal m  '+
                         'WHERE ( m.tipo_vta = :tipovta or :tipovta = ''*'' ) and M.fechavta<=:hasta and m.saldo>0 '+condiciones+
                         'group by m.CODIGO, m.RAZON_SOCIAL, m.nombre, m.DIRECCION_COMERCIAL, m.TELEFONO_COMERCIAL_1,m.cpostal,m.localidad,'+
                                   'm.TELEFONO_COMERCIAL_2, m.VENDEDOR, m.ZONA, m.CORREOELECTRONICO,'+
                                   'm.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,m.tipo_vta,m.debe,m.haber,m.tipocpbte,m.clasecpbte,m.nrocpbte,m.detalle,M.FECHAVTA,m.fechavto,'+
                                   'm.saldo '+
                            'having (SUM(m.DEBE)-SUM(m.HABER))>= :menor and (SUM(m.DEBE)-SUM(m.HABER))<=:mayor';

  CDSMovCC.Params.ParamByName('tipoVta').Value  :=TipoVta;

  CDSMovCC.Params.ParamByName('hasta').Value    :=Hasta;
  CDSMovCC.Params.ParamByName('menor').Value    :=Minimo;
  CDSMovCC.Params.ParamByName('mayor').Value    :=Maximo;
  CDSMovCC.Open;
  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid

end;

procedure TFormSaldosClientesXLS.btExcelClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  dlgSave1.FileName:='SaldosClientes';
  dlgSave1.DefaultExt:='xls';

  if VirtualUI.Active then
    dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

  if dlgSave1.Execute Then
   if dlgSave1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', dlgSave1.FileName )) Then
           DlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1);

       if VirtualUI.Active then
         begin
           VirtualUI.StdDialogs:=False;
           VirtualUI.DownloadFile(dlgSave1.FileName);
         end;
     end;
end;

procedure TFormSaldosClientesXLS.CDSMovCCCalcFields(DataSet: TDataSet);
begin
  CDSMovCCCODIGONOMBRE.AsString:=CDSMovCCCODIGO.AsString+'-'+CDSMovCCNOMBRE.AsString;
end;

procedure TFormSaldosClientesXLS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSMovCC.Close;
end;

procedure TFormSaldosClientesXLS.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormSaldosClientesXLS.FormDestroy(Sender: TObject);
begin
  FormSaldosClientesXLS:=nil;
end;

procedure TFormSaldosClientesXLS.FormResize(Sender: TObject);
begin
  if FormSaldosClientesXLS<>nil then
    if FormSaldosClientesXLS.Width<>796 then
      FormSaldosClientesXLS.Width:=796;

end;

procedure TFormSaldosClientesXLS.FormShow(Sender: TObject);
begin
  btVer.Click;
end;

end.
