unit UResumenVtasAnualVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, ComCtrls, Mask, JvExMask,
  JvToolEdit, ToolWin, Buttons, StdCtrls, Spin, ExtCtrls,
  dxPSGrLnks, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, DateUtils,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxVGridLnk, dxPSStdGrLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPSBaseGridLnk, cxStyles, cxGridTableView,
  cxClasses, frxClass, frxExportPDF, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  AdvUtil, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, frxExportBaseDialog;

type
  TFormResumenAnualVtasVendedor = class(TForm)
    pcVentas: TPageControl;
    pag1: TTabSheet;
    pnCabecera: TPanel;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    pnPie: TPanel;
    Pag2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    btGraficar: TButton;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    btImprimir_2: TBitBtn;
    pnPieDiaria: TPanel;
    DSPVentas: TDataSetProvider;
    CDSVentas: TClientDataSet;
    CDSVentaDiaria: TClientDataSet;
    CDSVentaDiariaSUCURSAL: TIntegerField;
    CDSVentaDiariaNOMBRESUCURSAL: TStringField;
    CDSVentaDiariaDIA: TIntegerField;
    DSPVentasDiaria: TDataSetProvider;
    DSPVendedores: TDataSetProvider;
    CDSVendedores: TClientDataSet;
    CDSVentasCODIGOPERSONAL: TStringField;
    CDSVentasNOMBREPERSONAL: TStringField;
    CDSVentasMES: TIntegerField;
    CDSVendedoresCODIGO: TStringField;
    CDSVendedoresNOMBRE: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    DSVentas: TDataSource;
    DSVentasDiarias: TDataSource;
    cxStyleRepository6: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    kgVentas: TAdvStringGrid;
    kgVentaDiaria: TAdvStringGrid;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxStringGridReportLink;
    QVendedores: TFDQuery;
    QVentas: TFDQuery;
    QVentasDiaria: TFDQuery;
    CDSVentasTOTAL_VENTAS: TFloatField;
    CDSVentasTOTAL_NCREDITOS: TFloatField;
    CDSVentasTOTAL_ANULACIONES: TFloatField;
    CDSVentasTOTAL_NETO: TFloatField;
    CDSVentasTOTAL_COBRANZAS: TFloatField;
    CDSVentasTOTAL_PERSONAL: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_GRAVADO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_IVA: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CC_GRAVDADO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CC_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CC_IVA: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CC: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO_GRAVADO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO_IVA: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_IVA: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO: TFloatField;
    CDSVentaDiariaTOTAL_ANULACIONES: TFloatField;
    CDSVentaDiariaTOTAL_COBRANZAS: TFloatField;
    CDSVentaDiariaTOTAL_EGRESOS: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS_GRAVADO: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS_IVA: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS: TFloatField;
    CDSVentaDiariaTOTAL_NC_COMPRAS_GRAVADO: TFloatField;
    CDSVentaDiariaTOTAL_NC_COMPRAS_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_NC_COMPRAS_IVA: TFloatField;
    CDSVentaDiariaTOTAL_NC_COMPRAS: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO_GRAVADO: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO_IVA: TFloatField;
    CDSVentaDiariaTOTAL_PERSONAL: TFloatField;
    CDSVentaDiariaTOTAL_PAGOS: TFloatField;
    CDSVentaDiariaSALDO_CC_VTA: TFloatField;
    CDSVentaDiariaSALDO_CC_COMPRA: TFloatField;
    CDSVentaDiariaTOTAL_VTAS: TFloatField;
    CDSVentaDiariaTOTAL_INGRESOS: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO_GRAVADO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO_EXENTO: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO_IVA: TFloatField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO: TFloatField;
    CDSVentaDiariaTOTAL_GRAL_COMPRAS: TFloatField;
    CDSVentaDiariaTOTAL_EFECTIVO: TFloatField;
    CDSVentaDiariaTOTAL_CHEQUES3: TFloatField;
    CDSVentaDiariaTOTAL_RTOS: TFloatField;
    btImprimir: TBitBtn;
    btSalirVentas: TBitBtn;
    btBuscarVtas: TBitBtn;
    btImprimirDiario: TBitBtn;
    btSalir: TBitBtn;
    btBuscarDiaria: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btBuscarVtasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure pnCabeceraDblClick(Sender: TObject);
    procedure btSalirVentasClick(Sender: TObject);
    procedure CDSVentasMESGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure kgVentasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure kgVentasGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure btImprimirClick(Sender: TObject);
    procedure btGraficarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ArmarGrilla;
  end;

var
  FormResumenAnualVtasVendedor: TFormResumenAnualVtasVendedor;

const referencias: array [1..10] of string = ('Ventas','Anulaciones','N.de Credito','Neto Total','Cobranzas','Total Personal','--------','--------','--------','----------');
const Meses: array [1..12] of string = ('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');

implementation

uses UGrafico,UDMain_FD;

{$R *.dfm}

procedure TFormResumenAnualVtasVendedor.ArmarGrilla;
var
  pos :integer;
  I,Paso: Integer;
  h: Integer;
begin

  kgVentas.Clear;

  CDSVendedores.Close;
  CDSVendedores.Open;
  kgVentas.RowCount          := (CDSVendedores.RecordCount)*7;

 // x:=CDSVendedores.RecordCount-1;
  kgVentas.ColCount  :=14;
  kgVentas.Cells[0,0]:='Vendedores';

  kgVentas.ColWidths[0]:=100;
  kgVentas.ColWidths[1]:=100;

  // establezco el ancho de las col
  for I := 2 to 13 do
    kgVentas.ColWidths[I]:=70;
//  // Pongo los meses
  for I := 1 to 12 do
   begin
     kgVentas.Cells[I+1,0]:= Meses[i];
   end;
  // establezco el alto de las columna Cero
//  for I := 0 to x do
//    kgVentas.CellSpan[0,(I*7)+1]:= MakeCellSpan(1,7);
//
//  //lleno los titulos
  CDSVendedores.First;
  while not(CDSVendedores.Eof) do
    begin
      if CDSVendedores.RecNo=1 then
        kgVentas.Cells[0,1]:=CDSVendedoresNOMBRE.AsString
      else
        kgVentas.Cells[0,((CDSVendedores.RecNo-1)*7)+1]:=CDSVendedoresNOMBRE.AsString;

      for h := 1 to 7 do
        begin
          if CDSVendedores.RecNo=1 then
            kgVentas.Cells[1,h]:=referencias[h]
          else
            kgVentas.Cells[1,((CDSVendedores.RecNo-1)*7)+h]:=referencias[h]
        end;
       CDSVendedores.Next;
    end;
//  //lleno los titulos

  CDSVendedores.Close;

end;



procedure TFormResumenAnualVtasVendedor.BitBtn1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(DMMain_FD.PathReportesLst+'\ResumenVtas.fr3');
  frxReport1.Variables['Anio']:=''''+ IntToStr(SpinEdit1.Value)+'''';
  frxReport1.Variables['Desde']:=''''+ Desde.Text+'''';
  frxReport1.Variables['Hasta']:=''''+ Hasta.Text+'''';
  if pcVentas.ActivePageIndex=0 then
    frxReport1.Variables['modo']:='''A'''
  else
    frxReport1.Variables['modo']:='''D''';
  frxReport1.ShowReport;
end;


procedure TFormResumenAnualVtasVendedor.btBuscarVtasClick(Sender: TObject);
var h:String;Paso,I,Puntero:Integer;
begin
 // kgVentas.ClearGrid;
//  Celda.Create(kgVentas);
  Screen.Cursor:=crHourGlass;

  CDSVentas.Close;
  CDSVentas.Params.ParamByName('Anio').Value:=SpinEdit1.Value;
  CDSVentas.Open;

  CDSVentas.First;
  h:=CDSVentasCODIGOPERSONAL.Value;
  Paso:=1;Puntero:=0;
  while Not(CDSVentas.Eof) do
    begin
      for I := 3 to CDSVentas.FieldCount-1 do
        begin
          kgVentas.Cells[1+CDSVentasMES.Value,Paso]:=FormatFloat(',0.00;-,0.00;-',CDSVentas.Fields[I].Value);
          Paso:=Paso+1;
        end;
      CDSVentas.Next;
      if h<>CDSVentasCODIGOPERSONAL.Value then
        begin
          Puntero:=Puntero+7;
          h:=CDSVentasCODIGOPERSONAL.Value;
        end;
      Paso:=Puntero+1;
    end;
  Screen.Cursor:=crDefault;
end;


procedure TFormResumenAnualVtasVendedor.btGraficarClick(Sender: TObject);
var Col,Row:Integer;
S:String;
begin
//  Lista.Clear;
//  if Not(CDSVentas.IsEmpty) then
//    begin
//      for Col:= kgVentas.Selection.Col to kgVentas.Selection.Col2 do
//        begin
//          for Row:= kgVentas.Selection.Row2 to kgVentas.Selection.Row1 do
//            begin
//              S:=kgVentas.Cells[Col,Row];
//              Lista.Add(S);
//            end;
//        end;
//      if Not(Assigned(FormGrafico)) then
//        FormGrafico:=TFormGrafico.Create(self);
//      FormGrafico.Lista := Lista;
//      FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2];
//                           kgVentas.Cells[0,kgVentas.Selection.Row2];
//      if (kgVentas.Selection.Row2<7) then
//        FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                             kgVentas.Cells[0,1]
//      else
//        if (kgVentas.Selection.Row2>7) and (kgVentas.Selection.Row2<14) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,11]
//      else
//        if (kgVentas.Selection.Row2>14) and (kgVentas.Selection.Row2<21) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,21]
//      else
//        if (kgVentas.Selection.Row2>21) and (kgVentas.Selection.Row2<28) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,31]
//      else
//        if (kgVentas.Selection.Row2>28) and (kgVentas.Selection.Row2<35) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,41]
//      else
//        if (kgVentas.Selection.Row2>35) and (kgVentas.Selection.Row2<42) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,51]
//      else
//        if (kgVentas.Selection.Row2>42) and (kgVentas.Selection.Row2<49) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,61]
//      else
//        if (kgVentas.Selection.Row2>49) and (kgVentas.Selection.Row2<56) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,71];
//
//
//      FormGrafico.Tag:=1;
//      FormGrafico.ShowModal;
//    end;
//  ShowMessage(Lista.Text);
end;

procedure TFormResumenAnualVtasVendedor.btImprimirClick(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormResumenAnualVtasVendedor.btSalirVentasClick(Sender: TObject);
begin
  Close;
end;

procedure TFormResumenAnualVtasVendedor.Button1Click(Sender: TObject);
var Col,Row:Integer;
S:String;
begin
//  Lista.Clear;
//  if Not(CDSVentas.IsEmpty) then
//    begin
//      for Col:= kgVentas.Selection.Col to kgVentas.Selection.Col2 do
//        begin
//          for Row:= kgVentas.Selection.Row2 to kgVentas.Selection.Row1 do
//            begin
//              S:=kgVentas.Cells[Col,Row];
//              Lista.Add(S);
//            end;
//        end;
//      if Not(Assigned(FormGrafico)) then
//        FormGrafico:=TFormGrafico.Create(self);
//      FormGrafico.Lista := Lista;
//      FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2];
//                           kgVentas.Cells[0,kgVentas.Selection.Row2];
//      if (kgVentas.Selection.Row2<7) then
//        FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                             kgVentas.Cells[0,1]
//      else
//        if (kgVentas.Selection.Row2>7) and (kgVentas.Selection.Row2<14) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,11]
//      else
//        if (kgVentas.Selection.Row2>14) and (kgVentas.Selection.Row2<21) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,21]
//      else
//        if (kgVentas.Selection.Row2>21) and (kgVentas.Selection.Row2<28) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,31]
//      else
//        if (kgVentas.Selection.Row2>28) and (kgVentas.Selection.Row2<35) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,41]
//      else
//        if (kgVentas.Selection.Row2>35) and (kgVentas.Selection.Row2<42) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,51]
//      else
//        if (kgVentas.Selection.Row2>42) and (kgVentas.Selection.Row2<49) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,61]
//      else
//        if (kgVentas.Selection.Row2>49) and (kgVentas.Selection.Row2<56) then
//          FormGrafico.Titulo:= kgVentas.Cells[kgVentas.Selection.Col1-1,kgVentas.Selection.Row2]+' '+
//                               kgVentas.Cells[0,71];
//
//
//      FormGrafico.Tag:=1;
//      FormGrafico.ShowModal;
//    end;
  //ShowMessage(Lista.Text);
end;

procedure TFormResumenAnualVtasVendedor.CDSVentasMESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 case Sender.Value of
     1:Text:='Enero';
     2:Text:='Febrero';
     3:Text:='Marzo';
     4:Text:='Abril';
     5:Text:='Mayo';
     6:Text:='Junio';
     7:Text:='Julio';
     8:Text:='Agosto';
     9:Text:='Septiembre';
    10:Text:='Octubre';
    11:Text:='Noviembre';
    12:Text:='Diciembre';
  end;
end;

procedure TFormResumenAnualVtasVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormResumenAnualVtasVendedor.FormCreate(Sender: TObject);
begin
 // FormResumenVentas.WindowState:=wsMaximized;
  AutoSize:=False;
  pcVentas.Align           := alClient;
  pcVentas.ActivePageIndex := 0;

  kgVentas.Align           := alClient;
  kgVentaDiaria.Align      := alClient;

  pnPie.Align         :=alBottom;
  pnPieDiaria.Align   :=alBottom;
  //  AutoSize:=True;
  Pag2.TabVisible:=False;

end;

procedure TFormResumenAnualVtasVendedor.FormDestroy(Sender: TObject);
begin
 FormResumenAnualVtasVendedor:=nil;
end;

procedure TFormResumenAnualVtasVendedor.FormShow(Sender: TObject);
var y,d,m:Word;
begin
  SpinEdit1.Value:=YearOf(Date);
  ArmarGrilla;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;


procedure TFormResumenAnualVtasVendedor.kgVentasDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  //kgVentas.Cell[ACol,ARow].ApplyDrawProperties;
 // TKGridAttrTextCell(kgVentas.Cells[ACol,ARow]).HAlign:=halRight;
//  kgVentas.CellPainter.Canvas.Font.Color:=clBlack;
//  kgVentas.CellPainter.Canvas.Font.Style:=[];
//  if ARow=0 then
//    begin
//      kgVentas_old.CellPainter.HAlign:=halCenter;
//      kgVentas_old.CellPainter.Canvas.Font.Style:=[fsBold];
//    end
//  else
//    if (ACol=0) then
//      begin
//        kgVentas_old.CellPainter.HAlign:=halCenter;
//        kgVentas_old.CellPainter.Canvas.Font.Style:=[fsBold];
//      end
//    else
//      if (ACol=1) then
//        kgVentas_old.CellPainter.HAlign:=halLeft
//      else
//        kgVentas_old.CellPainter.HAlign:=halRight;
//  if (SameText((kgVentas_old.Cells[1,ARow]),Referencias[4])) Then
//    begin
//      kgVentas_old.CellPainter.Canvas.Font.Color:=clBlue;
//      kgVentas_old.CellPainter.Canvas.Font.Style:=[fsBold];
//    end;
//  kgVentas_old.CellPainter.DefaultDraw;
end;

procedure TFormResumenAnualVtasVendedor.kgVentasGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
 if ARow=0 then
    HAlign:=taCenter;
end;


procedure TFormResumenAnualVtasVendedor.pnCabeceraDblClick(Sender: TObject);
begin
  frxReport1.DesignReport;
end;

end.
