unit UReImportacionAplicacionesCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBClient,Math,
  Provider, SqlExpr, DBXCommon, StdCtrls, Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridBandedTableView, Mask, JvExMask, JvToolEdit, JvBaseEdits, DBCtrls,
  ComCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinBasic, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges, dxScrollbarAnnotations,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls;

type
  TFormReImpAplicacionesCompra = class(TForm)
    QAplicaciones: TFDQuery;
    DSPAplicaciones: TDataSetProvider;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionXML: TClientDataSet;
    JvDBGrid1: TJvDBGrid;
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesID_MOVCCCOMPRA: TIntegerField;
    QAplicacionesFECHA: TSQLTimeStampField;
    QAplicacionesPROVEEDOR: TStringField;
    QAplicacionesID_CPBTE: TIntegerField;
    QAplicacionesTIPOCPBTE: TStringField;
    QAplicacionesCLASECPBTE: TStringField;
    QAplicacionesNUMEROCPBTE: TStringField;
    QAplicacionesIMPORTE: TFloatField;
    QAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    QAplicacionesAPLICA_TIPOCPBTE: TStringField;
    QAplicacionesAPLICA_CLASECPBTE: TStringField;
    QAplicacionesAPLICA_NROCPBTE: TStringField;
    QAplicacionesDETALLE: TStringField;
    QAplicacionesAPLICA_NETO: TFloatField;
    QAplicacionesCONCILIADO: TStringField;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCCOMPRA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesPROVEEDOR: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesDETALLE: TStringField;
    CDSAplicacionesAPLICA_NETO: TFloatField;
    CDSAplicacionesCONCILIADO: TStringField;
    DSAplicacionXML: TDataSource;
    DSAplicaciones: TDataSource;
    Button1: TButton;
    btGravar: TBitBtn;
    QMovCC: TFDQuery;
    DSPMovCC: TDataSetProvider;
    QMovCCID_MOVCCCOMPRA2: TIntegerField;
    QMovCCID_CPBTE2: TIntegerField;
    QMovCCPROVEEDOR2: TStringField;
    QMovCCFECHACOMPRA2: TSQLTimeStampField;
    QMovCCFECHAVTO2: TSQLTimeStampField;
    QMovCCTIPOCPBTE2: TStringField;
    QMovCCCLASECPBTE2: TStringField;
    QMovCCNROCPBTE2: TStringField;
    QMovCCDEBE2: TFloatField;
    QMovCCHABER2: TFloatField;
    QMovCCSALDO2: TFloatField;
    QMovCCDETALLE2: TStringField;
    dbgMovCC: TJvDBGrid;
    DSMovCC: TDataSource;
    btAplicar: TButton;
    btReset: TBitBtn;
    dbgACta: TJvDBGrid;
    QACta: TFDQuery;
    QACtaID_MOV: TIntegerField;
    QACtaFECHA: TSQLTimeStampField;
    QACtaPROVEEDOR: TStringField;
    QACtaID_CPBTE: TIntegerField;
    QACtaTIPOCPBTE: TStringField;
    QACtaCLASECPBTE: TStringField;
    QACtaNUMEROCPBTE: TStringField;
    QACtaIMPORTE: TFloatField;
    QACtaDETALLE: TStringField;
    DSPACta: TDataSetProvider;
    CDSACta: TClientDataSet;
    DSACta: TDataSource;
    CDSACtaID_MOV: TIntegerField;
    CDSACtaFECHA: TSQLTimeStampField;
    CDSACtaPROVEEDOR: TStringField;
    CDSACtaID_CPBTE: TIntegerField;
    CDSACtaTIPOCPBTE: TStringField;
    CDSACtaCLASECPBTE: TStringField;
    CDSACtaNUMEROCPBTE: TStringField;
    CDSACtaIMPORTE: TFloatField;
    CDSACtaDETALLE: TStringField;
    edTotalActa: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit1: TDBEdit;
    cxDBTextEdit2: TDBEdit;
    cxDBTextEdit3: TDBEdit;
    cxDBSpinEdit1: TDBEdit;
    cxDBDateEdit1: TDBEdit;
    cxDBSpinEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ID_MOVCCCOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TabSheet2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2TableView1: TcxGridTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID_MOVCCCOMPRA: TcxGridDBColumn;
    cxGrid2DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid2DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGrid2DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1DEBE: TcxGridDBColumn;
    cxGrid2DBTableView1HABER: TcxGridDBColumn;
    cxGrid2DBTableView1SALDO: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid2Level2: TcxGridLevel;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2ID_MOV: TcxGridDBColumn;
    cxGrid2DBTableView2ID_MOVCCCOMPRA: TcxGridDBColumn;
    cxGrid2DBTableView2FECHA: TcxGridDBColumn;
    cxGrid2DBTableView2PROVEEDOR: TcxGridDBColumn;
    cxGrid2DBTableView2ID_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2NUMEROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid2DBTableView2APLICA_ID_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2APLICA_NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid2DBTableView2APLICA_NETO: TcxGridDBColumn;
    cxGrid2DBTableView2CONCILIADO: TcxGridDBColumn;
    edSaldo: TJvCalcEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CDSMovCC: TClientDataSet;
    CDSMovCCID_MOVCCCOMPRA: TIntegerField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCPROVEEDOR: TStringField;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCDETALLE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btAplicarClick(Sender: TObject);
    procedure btResetClick(Sender: TObject);
    procedure CDSMovCCAfterOpen(DataSet: TDataSet);
    procedure CDSACtaAfterOpen(DataSet: TDataSet);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FCodigo:String;
  public
    { Public declarations }
    path,Path_Archivo:String;
  published
    property codigo:String read FCodigo write FCodigo;
  end;

var
  FormReImpAplicacionesCompra: TFormReImpAplicacionesCompra;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormReImpAplicacionesCompra.btGravarClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
//    CDSMovCC.ApplyUpdates(0);
    CDSAplicaciones.ApplyUpdates(0);
    CDSACta.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Gravaron los cambios...');
  end;
  Close;
end;

procedure TFormReImpAplicacionesCompra.btResetClick(Sender: TObject);
begin
  CDSAplicaciones.Close;
  CDSAplicaciones.Open;
  CDSAplicaciones.EmptyDataSet;
  CDSMovCC.Close;
  CDSMovCC.Params.ParamByName('codigo').AsString:=FCodigo;
  CDSMovCC.Open;
  CDSACta.Close;
  CDSACta.Params.ParamByName('codigo').AsString:=FCodigo;
  CDSACta.Open;
end;

procedure TFormReImpAplicacionesCompra.Button1Click(Sender: TObject);
var i:integer;
begin
  CDSAplicacionXML.IndexFieldNames:='FECHA';
  CDSAplicacionXML.First;
  while Not(CDSAplicacionXML.Eof) do
    begin
      CDSAplicaciones.Insert;
      For i:=0 to CDSAplicacionXML.FieldCount-1 do
        begin
          if CDSAplicaciones.FindField(CDSAplicacionXML.Fields[i].FieldName)<>nil Then
            begin
              CDSAplicaciones.FieldByName(CDSAplicacionXML.Fields[i].FieldName).Value:=CDSAplicacionXML.FieldByName(CDSAplicacionXML.Fields[i].FieldName).Value;
            end;
        end;
      CDSAplicaciones.Post;

      CDSAplicacionXML.Next;
    end;
end;

procedure TFormReImpAplicacionesCompra.btAplicarClick(Sender: TObject);
var Control:Integer;
begin
  CDSAplicaciones.First;
  while not(CDSAplicaciones.Eof) do
    begin
      if CDSMovCC.Locate('ID_MOVCCCOMPRA',CDSAplicacionesID_MOVCCCOMPRA.AsString,[]) Then
        begin
          Control:=Abs(Trunc(RoundTo(CDSMovCCSALDO.AsFloat-CDSAplicacionesIMPORTE.AsFloat,-2)*100));
          if ((Control>=0.0) and (RoundTo(CDSAplicacionesIMPORTE.AsFloat,-2)>0.02)) then
            begin
              CDSMovCC.Edit;
              CDSMovCCSALDO.AsFloat:=RoundTo( CDSMovCCSALDO.AsFloat-CDSAplicacionesIMPORTE.AsFloat,-2);
              if (RoundTo(CDSMovCCSALDO.AsFloat,-2)<=0.01) then CDSMovCCSALDO.AsFloat:=0;
              CDSMovCC.Post;
              if Trunc(CDSMovCCSALDO.AsFloat*100)>=0 then
                begin
                  if (Trunc(RoundTo(CDSMovCCSALDO.AsFloat,-2)*100)<=1) then
                    begin
                      CDSMovCC.Edit;
                      CDSMovCCSALDO.AsFloat:=0;
                      CDSMovCC.Post;
                    end;
                  if CDSACta.Locate('ID_CPBTE;TIPOCPBTE;CLASECPBTE',VarArrayOf([CDSAplicacionesID_CPBTE.AsString,CDSAplicacionesTIPOCPBTE.AsString,CDSAplicacionesCLASECPBTE.AsString]),[]) Then
                    begin
                      CDSACta.Edit;
                      CDSACtaIMPORTE.AsFloat:=CDSACtaIMPORTE.AsFloat-CDSAplicacionesIMPORTE.AsFloat;
                      if (Trunc(RoundTo(CDSACtaIMPORTE.AsFloat,-2)*100)<=1) then CDSACtaIMPORTE.AsFloat:=0;
                      CDSACta.Post;
                    end;
                end;
            end;
        end;
      CDSAplicaciones.Next;
    end;
end;

procedure TFormReImpAplicacionesCompra.CDSACtaAfterOpen(DataSet: TDataSet);
var CDSClone:TClientDataSet;
Aux:Extended;
begin
  edTotalActa.Value:=0;
  Aux:=0;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSACta,true);
  CDSClone.First;
  while not(CDSClone.Eof) do
    begin
      Aux:=Aux+CDSClone.FieldByName('importe').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
  edTotalActa.Value:=Aux;
  dbgACta.Width:=dbgACta.Width+1;
  dbgACta.Width:=dbgACta.Width-1;
end;

procedure TFormReImpAplicacionesCompra.CDSMovCCAfterOpen(DataSet: TDataSet);
var CDSClone2:TClientDataSet;
Aux:Extended;
begin
 // edSaldo.Value:=0;
//  Aux:=0;
//  CDSMovCC.First;
//  while not(CDSMovCC.Eof) do
//    begin
//      Aux:= Aux + CDSMovCCSALDO.AsFloat;
//      CDSMovCC.Next;
//    end;
//  CDSMovCC.First;
//  edSaldo.Value:=Aux;


  edSaldo.Value:=0;
  Aux:=0;
  CDSClone2:=TClientDataSet.Create(self);
  CDSClone2.CloneCursor(CDSMovCC,true);
  CDSClone2.First;
  while not(CDSClone2.Eof) do
    begin
      if CDSClone2.FieldByName('Saldo').AsString<>'' then
        Aux:= Aux + CDSClone2.FieldByName('Saldo').AsFloat;
      CDSClone2.Next;
    end;
  FreeAndNil(CDSClone2);
  edSaldo.Value:=Aux;
end;

procedure TFormReImpAplicacionesCompra.ClientDataSet1AfterOpen(
  DataSet: TDataSet);
var CDSClone2:TClientDataSet;
Aux:Extended;
begin
 // edSaldo.Value:=0;
//  Aux:=0;
//  CDSMovCC.First;
//  while not(CDSMovCC.Eof) do
//    begin
//      Aux:= Aux + CDSMovCCSALDO.AsFloat;
//      CDSMovCC.Next;
//    end;
//  CDSMovCC.First;
//  edSaldo.Value:=Aux;


  edSaldo.Value:=0;
  Aux:=0;
  CDSClone2:=TClientDataSet.Create(self);
  CDSClone2.CloneCursor(CDSMovCC,true);
  CDSClone2.First;
  while not(CDSClone2.Eof) do
    begin
      if CDSClone2.FieldByName('Saldo').AsString<>'' then
        Aux:= Aux + CDSClone2.FieldByName('Saldo').AsFloat;
      CDSClone2.Next;
    end;
  FreeAndNil(CDSClone2);
  edSaldo.Value:=Aux;
  dbgMovCC.Width:=dbgMovCC.Width+1;
  dbgMovCC.Width:=dbgMovCC.Width-1;
end;


procedure TFormReImpAplicacionesCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormReImpAplicacionesCompra.FormCreate(Sender: TObject);
begin
//   path:=ExtractFilePath(ParamStr(0));
//   path_Archivo:=path+'Arch_AplicacionCompra\'+'Aplicaciones_'+FCodigo+'.XML';
//   CDSAplicacionXML.LoadFromFile(Path_Archivo);
end;

procedure TFormReImpAplicacionesCompra.FormDestroy(Sender: TObject);
begin
  FormReImpAplicacionesCompra:=nil;
end;

procedure TFormReImpAplicacionesCompra.FormShow(Sender: TObject);
begin
   path:=ExtractFilePath(ParamStr(0));
   path_Archivo:=path+'Arch_AplicacionCompra\'+'Aplicaciones_'+FCodigo+'.XML';
   CDSAplicacionXML.LoadFromFile(Path_Archivo);

   CDSAplicaciones.Close;
   CDSAplicaciones.Params.ParamByName('codigo').AsString:=FCodigo;
   CDSAplicaciones.Open;

   CDSMovCC.Close;
   CDSMovCC.Params.ParamByName('codigo').AsString:=FCodigo;
   CDSMovCC.Open;

   CDSACta.Close;
   CDSACta.Params.ParamByName('codigo').AsString:=FCodigo;
   CDSACta.Open;
end;


end.
