unit UPendientesOC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, CompBuscador, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,DateUtils,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,cxGridExportLink,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore,IniFiles,dxPScxCommon,VirtualUI_SDK,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormPendientesOC = class(TFormABMBase)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QArti: TSQLQuery;
    Panel2: TPanel;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel2: TJvLabel;
    UpDown1: TUpDown;
    CDSArt: TClientDataSet;
    DSPArt: TDataSetProvider;
    CDSArtCODIGOARTICULO: TStringField;
    CDSArtDETALLE: TStringField;
    CDSArtCANTIDADPEDIDA: TFMTBCDField;
    CDSArtCODIGO: TStringField;
    CDSArtNOMBRE: TStringField;
    CDSArtNROCPBTE: TStringField;
    CDSArtCANTIDADRECIBIDA: TFMTBCDField;
    DSArt: TDataSource;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDADPEDIDA: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDADRECIBIDA: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    btImpABC: TBitBtn;
    ToolButton1: TToolButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link2: TdxGridReportLink;
    SaveDialog: TSaveDialog;
    CDSArtREEMPLAZO_STK: TStringField;
    CDSArtID_OC: TIntegerField;
    chbporDia: TAdvOfficeCheckBox;
    chbCodAlter: TAdvOfficeCheckBox;
    Label1: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure btImpABCClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CDSArtCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure chbCodAlterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  end;

var
  FormPendientesOC: TFormPendientesOC;

implementation

{$R *.dfm}

uses UOrdenCompra;

procedure TFormPendientesOC.BitBtn1Click(Sender: TObject);
begin
  inherited;
 // cxGrid a Excel
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog.FileName:='ArtOCompra';
  SaveDialog.DefaultExt:='xls';
  if SaveDialog.Execute Then
   if SaveDialog.FileName<>'' Then
     begin
       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1);


       if VirtualUI.Active then
         begin
           VirtualUI.StdDialogs:=False;
           VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
         end;
     end;
end;

procedure TFormPendientesOC.btImpABCClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link2.Caption:='Articulos en Ordenes de Compra ';
  dxComponentPrinter1Link2.Preview(True);

end;

procedure TFormPendientesOC.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSArt.Close;
  CDSArt.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSArt.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSArt.Open;

end;

procedure TFormPendientesOC.CDSArtCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=CDSArtCODIGOARTICULO.Value;
  if chbCodAlter.Checked then
    Text:=CDSArtREEMPLAZO_STK.Value;
end;

procedure TFormPendientesOC.chbCodAlterClick(Sender: TObject);
begin
  inherited;
  cxGrid1.Refresh;
end;

procedure TFormPendientesOC.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormOrdenCompra)) Then
    FormOrdenCompra:=TFormOrdenCompra.Create(Application);
  FormOrdenCompra.DatoNew   :=CDSArtID_OC.AsString;
  FormOrdenCompra.TipoCpbte :='OC';
  FormOrdenCompra.Recuperar.Execute;
end;

procedure TFormPendientesOC.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormPendientesOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_ArticulosOCOmpra.ini');
  ArchivoIni.WriteBool('Dato', 'CodALter',  chbCodAlter.Checked);
  ArchivoIni.Free;

  inherited;
  Action:=caFree;
end;

procedure TFormPendientesOC.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_ArticulosOCOmpra.ini');
  chbCodAlter.Checked := ArchivoIni.ReadBool('Dato', 'CodALter', False);
  ArchivoIni.Free;
end;

procedure TFormPendientesOC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPendientesOC:=nil;
end;

procedure TFormPendientesOC.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  Desde.SetFocus;
  //*************************************************************
 // cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArticulos');
  //********************
end;

procedure TFormPendientesOC.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

     end;
  Buscar.Execute;
end;

end.
