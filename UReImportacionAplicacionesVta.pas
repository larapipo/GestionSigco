unit UReImportacionAplicacionesVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, DBClient, Provider, SqlExpr, DBXCommon, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ComCtrls, DBCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, Buttons,
  Grids, DBGrids, JvExDBGrids, JvDBGrid,Math, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator, dxSkinBlue,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, Vcl.ExtCtrls, frxClass, frxExportBaseDialog, frxExportPDF, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations;

type
  TFormReImpAplicacionesVta = class(TForm)
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbgAplicaciones: TJvDBGrid;
    dbgMovCC: TJvDBGrid;
    dbgACta: TJvDBGrid;
    DSPAplicaciones: TDataSetProvider;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionXML: TClientDataSet;
    DSAplicacionXML: TDataSource;
    DSAplicaciones: TDataSource;
    DSPMovCC: TDataSetProvider;
    DSMovCC: TDataSource;
    DSPACta: TDataSetProvider;
    CDSACta: TClientDataSet;
    DSACta: TDataSource;
    CDSMovCC: TClientDataSet;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCVTA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesCLIENTE: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesDETALLE: TStringField;
    CDSAplicacionesCONCILIADO: TStringField;
    CDSMovCCID_MOVCCVTA: TIntegerField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCCLIENTE: TStringField;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSACtaID_MOV: TIntegerField;
    CDSACtaFECHA: TSQLTimeStampField;
    CDSACtaCLIENTE: TStringField;
    CDSACtaID_CPBTE: TIntegerField;
    CDSACtaTIPOCPBTE: TStringField;
    CDSACtaCLASECPBTE: TStringField;
    CDSACtaNUMEROCPBTE: TStringField;
    CDSACtaDETALLE: TStringField;
    DSPRecibo: TDataSetProvider;
    CDSRecibo: TClientDataSet;
    CDSReciboID_RC: TIntegerField;
    CDSReciboTIPOCPBTE: TStringField;
    CDSReciboCLASECPBTE: TStringField;
    CDSReciboNROCPBTE: TStringField;
    CDSReciboCODIGO: TStringField;
    CDSReciboLETRARC: TStringField;
    CDSReciboSUCRC: TStringField;
    CDSReciboNUMERORC: TStringField;
    CDSReciboNOMBRE: TStringField;
    CDSReciboRAZONSOCIAL: TStringField;
    CDSReciboDIRECCION: TStringField;
    CDSReciboCPOSTAL: TStringField;
    CDSReciboLOCALIDAD: TStringField;
    CDSReciboTIPOIVA: TIntegerField;
    CDSReciboCUIT: TStringField;
    CDSReciboFECHA: TSQLTimeStampField;
    CDSReciboANULADO: TStringField;
    CDSReciboVENDEDOR: TStringField;
    CDSReciboSALDO_APLICAR: TFMTBCDField;
    CDSReciboIMPRESO: TStringField;
    CDSReciboOBSERVACION1: TStringField;
    CDSReciboOBSERVACION2: TStringField;
    CDSReciboSUCURSAL: TIntegerField;
    CDSReciboZONA: TIntegerField;
    CDSReciboTOTAL_NETO: TFMTBCDField;
    CDSReciboPORCENTAJE_DSCTO: TFMTBCDField;
    CDSReciboIMPORTE_DSCTO: TFMTBCDField;
    CDSReciboTOTAL: TFMTBCDField;
    CDSReciboUSUARIO: TStringField;
    CDSReciboFECHA_HORA: TSQLTimeStampField;
    CDSReciboCPBTE_MANUAL: TStringField;
    CDSReciboNC_ID: TIntegerField;
    CDSReciboNC_TIPOCPBTE: TStringField;
    CDSReciboNC_CLASECPBTE: TStringField;
    CDSReciboNC_NROCOMPROB: TStringField;
    CDSReciboN_OPERACION2: TFMTBCDField;
    CDSReciboMUESTRASUCURSAL: TStringField;
    CDSReciboMUESTRACOMPROBANTE: TStringField;
    CDSReciboID_TIPOCOMPROBANTE: TIntegerField;
    CDSReciboMUESTRAVENDEDOR: TStringField;
    CDSReciboMUESTRAIVA: TStringField;
    CDSReciboNUMERO_OPERACION: TStringField;
    CDSReciboNRO_RECIBO_INTERMO: TIntegerField;
    CDSReciboID_REC_CUPON: TIntegerField;
    pnSuperior: TPanel;
    Splitter1: TSplitter;
    pnTituloa: TPanel;
    Splitter2: TSplitter;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btGravar: TBitBtn;
    btAplicar: TButton;
    btReset: TBitBtn;
    cxDBTextEdit1: TDBEdit;
    cxDBTextEdit2: TDBEdit;
    cxDBTextEdit3: TDBEdit;
    cxDBDateEdit1: TDBEdit;
    cxDBSpinEdit2: TDBEdit;
    pnPie: TPanel;
    btPasar: TButton;
    PageControl1: TPageControl;
    tsAplicaciones: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tsMovApl: TTabSheet;
    edSaldo: TJvCalcEdit;
    edTotalActa: TJvCalcEdit;
    cxDBSpinEdit1: TDBEdit;
    frxPDFExport1: TfrxPDFExport;
    cxGrid1DBTableView1ID_MOV: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENTE: TcxGridDBColumn;
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
    cxGrid1DBTableView1CONCILIADO: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid2DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CLIENTE: TcxGridDBColumn;
    cxGrid2DBTableView1FECHAVTA: TcxGridDBColumn;
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
    cxGrid2DBTableView2ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid2DBTableView2FECHA: TcxGridDBColumn;
    cxGrid2DBTableView2CLIENTE: TcxGridDBColumn;
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
    cxGrid2DBTableView2CONCILIADO: TcxGridDBColumn;
    QAplicaciones: TFDQuery;
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesID_MOVCCVTA: TIntegerField;
    QAplicacionesFECHA: TSQLTimeStampField;
    QAplicacionesCLIENTE: TStringField;
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
    QAplicacionesCONCILIADO: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    QACta: TFDQuery;
    QACtaID_MOV: TIntegerField;
    QACtaFECHA: TSQLTimeStampField;
    QACtaCLIENTE: TStringField;
    QACtaID_CPBTE: TIntegerField;
    QACtaTIPOCPBTE: TStringField;
    QACtaCLASECPBTE: TStringField;
    QACtaNUMEROCPBTE: TStringField;
    QACtaIMPORTE: TFloatField;
    QACtaDETALLE: TStringField;
    CDSACtaIMPORTE: TFloatField;
    QMovCC: TFDQuery;
    QMovCCID_MOVCCVTA: TIntegerField;
    QMovCCID_CPBTE: TIntegerField;
    QMovCCCLIENTE: TStringField;
    QMovCCFECHAVTA: TSQLTimeStampField;
    QMovCCFECHAVTO: TSQLTimeStampField;
    QMovCCTIPOCPBTE: TStringField;
    QMovCCCLASECPBTE: TStringField;
    QMovCCNROCPBTE: TStringField;
    QMovCCDEBE: TFloatField;
    QMovCCHABER: TFloatField;
    QMovCCSALDO: TFloatField;
    QMovCCDETALLE: TStringField;
    QMovCCNRO_CUOTA: TIntegerField;
    QMovCCID_MONEDA: TIntegerField;
    QMovCCCOTIZACION: TFloatField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCNRO_CUOTA: TIntegerField;
    CDSMovCCID_MONEDA: TIntegerField;
    CDSMovCCCOTIZACION: TFloatField;
    procedure btPasarClick(Sender: TObject);
    procedure btResetClick(Sender: TObject);
    procedure btAplicarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CDSMovCCAfterOpen(DataSet: TDataSet);
    procedure CDSACtaAfterOpen(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure CDSAplicacionesReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
    FCodigo:String;
  public
    { Public declarations }
    path,Path_Archivo:String;
    procedure ControlActa;
  published
    property codigo:String read FCodigo write FCodigo;
  end;


var
  FormReImpAplicacionesVta: TFormReImpAplicacionesVta;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormReImpAplicacionesVta.ControlACta;
begin
  CDSACta.First;
  while Not(CDSACta.Eof) do
    begin
      if CDSACtaTIPOCPBTE.Value='RC' then
        begin
          CDSRecibo.Close;
          CDSRecibo.Params.ParamByName('id').Value:=CDSACtaID_CPBTE.Value;
          CDSRecibo.Open;
          if (Trunc(CDSReciboSALDO_APLICAR.AsFloat*100))<>(Trunc(CDSACtaIMPORTE.AsFloat*100))  then
            begin
              CDSRecibo.Edit;
              CDSReciboSALDO_APLICAR.AsFloat := CDSReciboTOTAL.AsFloat;
              CDSACta.Edit;
              CDSACtaIMPORTE.Value           := CDSReciboTOTAL.AsFloat;
              CDSACta.Post;
              CDSRecibo.Post;
              CDSRecibo.ApplyUpdates(0);
              CDSRecibo.Close;
             end;
        end;
      CDSACta.Next;
    end;
end;


procedure TFormReImpAplicacionesVta.btGravarClick(Sender: TObject);
var rOk :Boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
    try
      rOk:=False;
      if CDSMovCC.ApplyUpdates(0)=0 Then
        if CDSAplicaciones.ApplyUpdates(0)=0 Then
          if CDSACta.ApplyUpdates(0)=0 then
            rok:=True;
      if rOk then
        DMMain_FD.fdcGestion.Commit
      else
        begin
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se Gravaron los cambios...');
        end;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se Gravaron los cambios...');
    end;
  Close;
end;

procedure TFormReImpAplicacionesVta.btResetClick(Sender: TObject);
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
  btPasar.Enabled   := True;
  btGravar.Enabled  := False;
  btAplicar.Enabled := False;
end;

procedure TFormReImpAplicacionesVta.btPasarClick(Sender: TObject);
var i:integer;
begin
  CDSAplicacionXML.First;
  while Not(CDSAplicacionXML.Eof) do
    begin
      CDSAplicaciones.Insert;
      For i:=0 to CDSAplicacionXML.FieldCount-1 do
        begin
          if CDSAplicaciones.FindField(CDSAplicacionXML.Fields[i].FieldName)<>nil Then
            CDSAplicaciones.FieldByName(CDSAplicacionXML.Fields[i].FieldName).Value:=CDSAplicacionXML.FieldByName(CDSAplicacionXML.Fields[i].FieldName).Value;
        end;
      CDSAplicaciones.Post;
      CDSAplicacionXML.Next;
    end;
  btPasar.Enabled   := False;
  btAplicar.Enabled := True;
end;


procedure TFormReImpAplicacionesVta.btAplicarClick(Sender: TObject);
var Control:Integer;
top:integer;
begin
  btAplicar.Enabled := False;
  ControlActa;
  CDSAplicaciones.First;
  Top:=1;
  while not(CDSAplicaciones.Eof) do
    begin
      if CDSMovCC.Locate('ID_MOVCCVTA',CDSAplicacionesID_MOVCCVTA.AsString,[]) Then
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
                end; // y este no esta
                  if CDSACta.Locate('ID_CPBTE;TIPOCPBTE;CLASECPBTE',VarArrayOf([CDSAplicacionesID_CPBTE.AsString,CDSAplicacionesTIPOCPBTE.AsString,CDSAplicacionesCLASECPBTE.AsString]),[]) Then
                    begin
                      CDSACta.Edit;
                      CDSACtaIMPORTE.AsFloat:=CDSACtaIMPORTE.AsFloat-CDSAplicacionesIMPORTE.AsFloat;
                      if (Trunc(RoundTo(CDSACtaIMPORTE.AsFloat,-2)*100)<=1) then CDSACtaIMPORTE.AsFloat:=0;
                      CDSACta.Post;
                    end;
                //end
            end;
        end;
      CDSAplicaciones.Next;
      Application.ProcessMessages;
    end;
  btPasar.Enabled   := False;
  btAplicar.Enabled := False;
  btGravar.Enabled  := True;
  Application.ProcessMessages;

end;

procedure TFormReImpAplicacionesVta.CDSACtaAfterOpen(DataSet: TDataSet);
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

procedure TFormReImpAplicacionesVta.CDSAplicacionesReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TFormReImpAplicacionesVta.CDSMovCCAfterOpen(DataSet: TDataSet);
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

procedure TFormReImpAplicacionesVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree; 
end;

procedure TFormReImpAplicacionesVta.FormDestroy(Sender: TObject);
begin
 FormReImpAplicacionesVta:=nil;
end;

procedure TFormReImpAplicacionesVta.FormShow(Sender: TObject);
begin
  path:=ExtractFilePath(ParamStr(0));
  path_Archivo:=path+'Arch_AplicacionVta\'+'Aplicaciones_'+FCodigo+'.XML';
  CDSAplicacionXML.LoadFromFile(Path_Archivo);
  CDSAplicacionXML.IndexFieldNames:='ID_MOV';

  CDSAplicaciones.Close;
  CDSAplicaciones.Params.ParamByName('codigo').AsString:=FCodigo;
  CDSAplicaciones.Open;

  CDSMovCC.Close;
  CDSMovCC.Params.ParamByName('codigo').AsString:=FCodigo;
  CDSMovCC.Open;

  CDSACta.Close;
  CDSACta.Params.ParamByName('codigo').AsString:=FCodigo;
  CDSACta.Open;
  btGravar.Enabled  := False;
  btAplicar.Enabled := False;
end;

end.
