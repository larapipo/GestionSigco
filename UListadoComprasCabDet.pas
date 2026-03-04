unit UListadoComprasCabDet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
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
  cxGrid,DateUtils, AdvOfficeButtons, Vcl.Mask, JvExMask, JvToolEdit,VirtualUI_SDK,cxGridExportLink,
  StrUtils, Datasnap.DBClient, Datasnap.Provider, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, cxCheckBox;

type
  TFormListadoComprasCabDet = class(TFormABMBase)
    pnCabecera: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label1: TLabel;
    Label2: TLabel;
    QCompr: TFDQuery;
    DSCompras: TDataSource;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAFISCAL: TcxGridDBColumn;
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
    cxGrid1DBTableView1NETOMONOTRIBUTO1: TcxGridDBColumn;
    cxGrid1DBTableView1NETOMONOTRIBUTO2: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_EXENTO: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_GRAVADO: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_IMP_INTERNO: TcxGridDBColumn;
    cxGrid1DBTableView1DESGLOZAIVA: TcxGridDBColumn;
    cxGrid1DBTableView1DEPOSITO: TcxGridDBColumn;
    cxGrid1DBTableView1MODO_GRAVAMEN: TcxGridDBColumn;
    cxGrid1DBTableView1IVA_TASA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCUENTO: TcxGridDBColumn;
    cxGrid1DBTableView1GRAVADO_IB: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_1: TcxGridDBColumn;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel2: TJvLabel;
    chBuscar: TAdvOfficeCheckBox;
    UpDown1: TUpDown;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    SaveDialog1: TSaveDialog;
    DSPCompras: TDataSetProvider;
    CDSCompras: TClientDataSet;
    CDSComprasTIPOCPBTE: TStringField;
    CDSComprasCLASECPBTE: TStringField;
    CDSComprasCODIGO: TStringField;
    CDSComprasNROCPBTE: TStringField;
    CDSComprasLETRAFAC: TStringField;
    CDSComprasSUCFAC: TStringField;
    CDSComprasNUMEROFAC: TStringField;
    CDSComprasRAZONSOCIAL: TStringField;
    CDSComprasNOMBRE: TStringField;
    CDSComprasDIRECCION: TStringField;
    CDSComprasTIPOIVA: TIntegerField;
    CDSComprasCUIT: TStringField;
    CDSComprasNETOGRAV1: TFloatField;
    CDSComprasDSTOIMPORTE: TFloatField;
    CDSComprasNETOGRAV2: TFloatField;
    CDSComprasNETOEXEN1: TFloatField;
    CDSComprasNETOEXEN2: TFloatField;
    CDSComprasNETOMONOTRIBUTO1: TFloatField;
    CDSComprasNETOMONOTRIBUTO2: TFloatField;
    CDSComprasTOTAL: TFloatField;
    CDSComprasCODIGOARTICULO: TStringField;
    CDSComprasDETALLE: TStringField;
    CDSComprasUNIDAD: TStringField;
    CDSComprasCANTIDAD: TFloatField;
    CDSComprasUNITARIO_EXENTO: TFloatField;
    CDSComprasUNITARIO_GRAVADO: TFloatField;
    CDSComprasUNITARIO_IMP_INTERNO: TFloatField;
    CDSComprasDESGLOZAIVA: TStringField;
    CDSComprasDEPOSITO: TIntegerField;
    CDSComprasMODO_GRAVAMEN: TStringField;
    CDSComprasIVA_TASA: TFloatField;
    CDSComprasDESCUENTO: TFloatField;
    CDSComprasGRAVADO_IB: TStringField;
    CDSComprasFECHACOMPRA: TSQLTimeStampField;
    CDSComprasFECHAFISCAL: TSQLTimeStampField;
    CDSComprasTOTAL1: TFloatField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    ToolButton2: TToolButton;
    CDSComprasID_FC: TIntegerField;
    CDSComprasENLIBROIVA: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure AdvOfficeCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoComprasCabDet: TFormListadoComprasCabDet;

implementation

uses UDMain_FD, UCompra_2, UCompraCtdo_2;
{$R *.dfm}

procedure TFormListadoComprasCabDet.AdvOfficeCheckBox1Click(Sender: TObject);
begin
  inherited;
  if AdvOfficeCheckBox1.Checked Then  AdvOfficeCheckBox1.Caption:='Consulta Por Fecha Fiscal'
    else
  AdvOfficeCheckBox1.Caption:='Consulta Por Fecha Factura';
end;

procedure TFormListadoComprasCabDet.BitBtn1Click(Sender: TObject);
var Nombre:String;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSCompras.IsEmpty) then
    begin
      SaveDialog1.FileName  :='ComprasCabDet.xls';
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

procedure TFormListadoComprasCabDet.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCompras.Close;
  CDSCompras.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSCompras.Params.ParamByName('Hasta').Value:=Hasta.Date;
  if (AdvOfficeCheckBox1.Checked) Then
    CDSCompras.Params.ParamByName('PorFechaFiscal').Value:='S'
  else
    if Not(AdvOfficeCheckBox1.Checked) Then
      CDSCompras.Params.ParamByName('PorFechaFiscal').Value:='N';
  CDSCompras.Open;
end;

procedure TFormListadoComprasCabDet.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if (CDSComprasTIPOCPBTE.AsString='FC') or
     (CDSComprasTIPOCPBTE.AsString='NC') or
     (CDSComprasTIPOCPBTE.AsString='ND') then
    begin
      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Self);
      FormCompra_2.DatoNew  :=CDSComprasID_FC.AsString;
      FormCompra_2.TipoCpbte:=CDSComprasTIPOCPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    if CDSComprasTIPOCPBTE.AsString='FO' then
      begin
        if Not(Assigned(FormCompraCtdo_2)) then
          FormCompraCtdo_2 := TFormCompraCtdo_2.Create(Self);
        FormCompraCtdo_2.DatoNew  :=CDSComprasID_FC.AsString;
        FormCompraCtdo_2.TipoCpbte:=CDSComprasTIPOCPBTE.AsString;
        FormCompraCtdo_2.Recuperar.Execute;
        FormCompraCtdo_2.Show;
    end;

end;

procedure TFormListadoComprasCabDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoComprasCabDet.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormListadoComprasCabDet.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoComprasCabDet:=nil;
end;

procedure TFormListadoComprasCabDet.FormShow(Sender: TObject);
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

procedure TFormListadoComprasCabDet.Label1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=Not(cxGrid1DBTableView1.OptionsView.GroupByBox);
end;

procedure TFormListadoComprasCabDet.UpDown1Click(Sender: TObject;
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
  if chBuscar.Checked Then
    Buscar.Execute;
  //  Desde.SetFocus;
end;

end.
