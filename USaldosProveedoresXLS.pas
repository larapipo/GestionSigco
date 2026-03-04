unit USaldosProveedoresXLS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls, Vcl.Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Datasnap.DBClient, Datasnap.Provider,dxPScxPivotGridLnk,cxGridExportLink,
  Data.SqlExpr,VirtualUI_SDK, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,StrUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormSaldoProveedoresXLS = class(TForm)
    DSPMovCC: TDataSetProvider;
    CDSMovCC: TClientDataSet;
    DSMovCC: TDataSource;
    dlgSave1: TSaveDialog;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    CDSMovCCPROVEEDOR: TStringField;
    CDSMovCCNOMBRE: TStringField;
    CDSMovCCRAZON_SOCIAL: TStringField;
    CDSMovCCN_DE_CUIT: TStringField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    cxGrid1DBTableView1SALDOCPBTE: TcxGridDBColumn;
    CDSMovCCCODIGONOMBRE: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    QMovCC: TFDQuery;
    CDSMovCCTOTAL: TFloatField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDOCPTE: TFloatField;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSMovCCCalcFields(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Condiciones:String;
    Hasta  :TDateTime;
    Minimo,Maximo:Extended;
    Sucursal:Integer;
  end;

var
  FormSaldoProveedoresXLS: TFormSaldoProveedoresXLS;

implementation

uses USaldosClientes,UDMain_FD;

{$R *.dfm}

procedure TFormSaldoProveedoresXLS.BitBtn1Click(Sender: TObject);
var i:integer;
begin
  Screen.Cursor:=crHourGlass;
  CDSMovCC.Close;
  CDSMovCC.CommandText:='select mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit,(sum(mc.haber)-sum(mc.debe)) as total, '+
                        ' mc.debe,mc.haber,mc.tipocpbte,mc.clasecpbte,mc.nrocpbte,mc.detalle,mc.fechacompra,mc.fechavto,   mc.saldo as SaldoCpte from MOVCCCOMPRA_TEMPORAL  mc '+
                        'left JOIN POVEEDOR P ON P.CODIGO=MC.PROVEEDOR '+
                        'where mc.fechacompra<=:hasta and p.activo=''S'' and mc.saldo>0 '+Condiciones +' and ( mc.sucursal = :suc or :suc = -1 ) '+
                        'group by mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit,mc.debe,mc.haber,mc.tipocpbte,mc.clasecpbte,mc.nrocpbte,mc.detalle,mc.fechacompra,mc.fechavto,  mc.saldo '+
                        'having (sum(mc.haber-mc.debe)>=:minimo) and (sum(mc.haber-mc.debe)<=:maximo) and ((SUM(mc.DEBE)-SUM(mc.HABER))<> 0)';

  CDSMovCC.Params.ParamByName('suc').Value       :=Sucursal;
  CDSMovCC.Params.ParamByName('hasta').Value     :=Hasta;
  CDSMovCC.Params.ParamByName('minimo').Value    :=Minimo;
  CDSMovCC.Params.ParamByName('maximo').Value    :=Maximo;
  CDSMovCC.Open;
  Screen.Cursor:=crDefault;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormSaldoProveedoresXLS.BitBtn2Click(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  dlgSave1.FileName:='SaldosProveedores';
  dlgSave1.DefaultExt:='xls';
  if dlgSave1.Execute Then
   if dlgSave1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', dlgSave1.FileName )) Then
           dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1);

       if VirtualUI.Active then
         begin
           VirtualUI.StdDialogs:=False;
           VirtualUI.DownloadFile(dlgSave1.FileName+'.'+dlgSave1.DefaultExt);
         end;
     end;
end;

procedure TFormSaldoProveedoresXLS.CDSMovCCCalcFields(DataSet: TDataSet);
begin
  CDSMovCCCODIGONOMBRE.Value:=CDSMovCCPROVEEDOR.Value+'-'+CDSMovCCNOMBRE.Value;
end;

procedure TFormSaldoProveedoresXLS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSMovCC.Close;
end;

procedure TFormSaldoProveedoresXLS.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormSaldoProveedoresXLS.FormDestroy(Sender: TObject);
begin
  FormSaldoProveedoresXLS:=nil;
end;

procedure TFormSaldoProveedoresXLS.FormResize(Sender: TObject);
begin
  if FormSaldoProveedoresXLS<>nil then
    if FormSaldoProveedoresXLS.Width<>880 then
      FormSaldoProveedoresXLS.Width:=880;
end;

end.
