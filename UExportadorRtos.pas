unit UExportadorRtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, JvExControls, JvDBLookup,
  Vcl.Mask, JvExMask, JvToolEdit, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, JvLabel, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvDBControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,DateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormExportaRe = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    dbgFcVtaCab: TDBGrid;
    dbgFcVtaDet: TDBGrid;
    UpDown1: TUpDown;
    cbSuc: TDBLookupComboBox;
    Animate: TAnimate;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    cbComprobantes: TJvDBLookupCombo;
    chbPorDia: TCheckBox;
    QFcVtaCab: TSQLQuery;
    QFcVtaDet: TSQLQuery;
    DSPFcVtaDet: TDataSetProvider;
    DSPFcVtaCab: TDataSetProvider;
    CDSFcVtaCab: TClientDataSet;
    CDSFcVtaDet: TClientDataSet;
    DSFcVtaDet: TDataSource;
    DSFcVTaCab: TDataSource;
    DSSuc: TDataSource;
    DSPSuc: TDataSetProvider;
    CDSSuc: TClientDataSet;
    CDSSucCODIGO: TIntegerField;
    CDSSucDETALLE: TStringField;
    DSComprobantes: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    DSPComprobantes: TDataSetProvider;
    QComprobante: TSQLQuery;
    QComprobanteTIPO_COMPROB: TStringField;
    QComprobanteCLASE_COMPROB: TStringField;
    QComprobanteDENOMINACION: TStringField;
    QComprobanteSUCURSAL: TIntegerField;
    QComprobanteLETRA: TStringField;
    QComprobanteID_COMPROBANTE: TIntegerField;
    CDSFcVtaCabID_RTO: TIntegerField;
    CDSFcVtaCabTIPOCPBTE: TStringField;
    CDSFcVtaCabCLASECPBTE: TStringField;
    CDSFcVtaCabNROCPBTE: TStringField;
    CDSFcVtaCabCODIGO: TStringField;
    CDSFcVtaCabLETRARTO: TStringField;
    CDSFcVtaCabSUCRTO: TStringField;
    CDSFcVtaCabNUMERORTO: TStringField;
    CDSFcVtaCabNOMBRE: TStringField;
    CDSFcVtaCabRAZONSOCIAL: TStringField;
    CDSFcVtaCabDIRECCION: TStringField;
    CDSFcVtaCabCPOSTAL: TStringField;
    CDSFcVtaCabLOCALIDAD: TStringField;
    CDSFcVtaCabTIPOIVA: TIntegerField;
    CDSFcVtaCabCUIT: TStringField;
    CDSFcVtaCabLISTAPRECIO: TIntegerField;
    CDSFcVtaCabFECHAVTA: TSQLTimeStampField;
    CDSFcVtaCabFECHAVTO: TSQLTimeStampField;
    CDSFcVtaCabCONDICIONVTA: TIntegerField;
    CDSFcVtaCabANULADO: TStringField;
    CDSFcVtaCabNROFACT: TStringField;
    CDSFcVtaCabN_OPERACION2: TFMTBCDField;
    CDSFcVtaCabNETOGRAV1: TFMTBCDField;
    CDSFcVtaCabNETOGRAV2: TFMTBCDField;
    CDSFcVtaCabDSTO: TFMTBCDField;
    CDSFcVtaCabDSTOIMPORTE: TFMTBCDField;
    CDSFcVtaCabNETOEXEN1: TFMTBCDField;
    CDSFcVtaCabNETOEXEN2: TFMTBCDField;
    CDSFcVtaCabTOTAL: TFMTBCDField;
    CDSFcVtaCabDEBE: TFMTBCDField;
    CDSFcVtaCabIMPRESO: TStringField;
    CDSFcVtaCabOBSERVACION1: TStringField;
    CDSFcVtaCabOBSERVACION2: TStringField;
    CDSFcVtaCabCPTE_MANUAL: TStringField;
    CDSFcVtaCabSUCURSAL: TIntegerField;
    CDSFcVtaCabZONA: TIntegerField;
    CDSFcVtaCabLDR: TIntegerField;
    CDSFcVtaCabDEPOSITO: TIntegerField;
    CDSFcVtaCabCALCULA_SOBRETASA: TStringField;
    CDSFcVtaCabDESGLOZAIVA: TStringField;
    CDSFcVtaCabNROENTREGA: TIntegerField;
    CDSFcVtaCabINGRESA_A_CTACTE: TStringField;
    CDSFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    CDSFcVtaCabIDFACTURA: TIntegerField;
    CDSFcVtaCabCOMISIONVENDEDOR: TFMTBCDField;
    CDSFcVtaCabVENDEDOR: TStringField;
    CDSFcVtaCabUSUARIO: TStringField;
    CDSFcVtaCabRENGLONES: TSmallintField;
    CDSFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    CDSFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSFcVtaCabID_TRANSPORTE: TIntegerField;
    CDSFcVtaCabFECHA_HORA: TSQLTimeStampField;
    CDSFcVtaCabTAREAS: TStringField;
    CDSFcVtaCabPRESUPUESTO_ID: TIntegerField;
    CDSFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSFcVtaCabNOTAVTA_ID: TIntegerField;
    CDSFcVtaCabNOTAVTA_NROCPBTE: TStringField;
    CDSFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    CDSFcVtaCabPOLIZA: TStringField;
    CDSFcVtaCabCANT_BULTOS: TIntegerField;
    CDSFcVtaCabREMITO_ELECTRONICO: TStringField;
    CDSFcVtaCabCAE: TStringField;
    CDSFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSFcVtaCabDEVOLUCION: TStringField;
    CDSFcVtaCabID_CHOFER: TIntegerField;
    CDSFcVtaCabTRASNPORTE_UNIDAD: TIntegerField;
    CDSFcVtaCabTRASNPORTE_ADICIONAL: TIntegerField;
    CDSFcVtaDetID: TIntegerField;
    CDSFcVtaDetID_CABRTO: TIntegerField;
    CDSFcVtaDetTIPOCPBTE: TStringField;
    CDSFcVtaDetCLASECPBTE: TStringField;
    CDSFcVtaDetNROCPBTE: TStringField;
    CDSFcVtaDetRENGLON: TFMTBCDField;
    CDSFcVtaDetFECHAVTA: TSQLTimeStampField;
    CDSFcVtaDetCODIGOARTICULO: TStringField;
    CDSFcVtaDetDETALLE: TStringField;
    CDSFcVtaDetUNIDAD: TStringField;
    CDSFcVtaDetCANTIDAD: TFMTBCDField;
    CDSFcVtaDetCOSTO_GRAVADO: TFloatField;
    CDSFcVtaDetCOSTO_EXENTO: TFloatField;
    CDSFcVtaDetCOSTO_TOTAL: TFloatField;
    CDSFcVtaDetUNITARIO_GRAVADO: TFloatField;
    CDSFcVtaDetIVA_UNITARIO: TFloatField;
    CDSFcVtaDetUNITARIO_EXENTO: TFloatField;
    CDSFcVtaDetUNITARIO_TOTAL: TFloatField;
    CDSFcVtaDetTOTAL_GRAVADO: TFMTBCDField;
    CDSFcVtaDetIVA_TOTAL: TFMTBCDField;
    CDSFcVtaDetTOTAL_EXENTO: TFMTBCDField;
    CDSFcVtaDetTOTAL: TFMTBCDField;
    CDSFcVtaDetDESGLOZAIVA: TStringField;
    CDSFcVtaDetMODO_GRAVAMEN: TStringField;
    CDSFcVtaDetIVA_TASA: TFMTBCDField;
    CDSFcVtaDetIVA_SOBRETASA: TFMTBCDField;
    CDSFcVtaDetTIPOIVA_TASA: TIntegerField;
    CDSFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFcVtaDetDESCUENTO: TFMTBCDField;
    CDSFcVtaDetDEPOSITO: TIntegerField;
    CDSFcVtaDetMARGEN: TFMTBCDField;
    CDSFcVtaDetAFECTA_STOCK: TStringField;
    CDSFcVtaDetCALCULA_SOBRETASA: TStringField;
    CDSFcVtaDetGRAVADO_IB: TStringField;
    CDSFcVtaDetID_MONEDA: TIntegerField;
    CDSFcVtaDetCOTIZACION: TFMTBCDField;
    CDSFcVtaDetLOTE: TIntegerField;
    CDSFcVtaDetOBSERVACION: TStringField;
    CDSFcVtaDetNOTAVENTA_ID: TIntegerField;
    CDSFcVtaDetNOTAVENTA_ID_DET: TIntegerField;
    CDSFcVtaDetCODIGOBARRA: TStringField;
    CDSFcVtaDetPRECIO_EDITABLE: TStringField;
    CDSFcVtaDetCANT_FACTURA: TFMTBCDField;
    CDSFcVtaDetID_MERCA_ACOPIO_DET: TIntegerField;
    CDSFcVtaDetPRESENTACION_CANT: TFMTBCDField;
    CDSFcVtaDetCANTIDAD_UNIDADES: TFMTBCDField;
    btExportarEn: TBitBtn;
    ToolButton1: TToolButton;
    Exportar: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportarExecute(Sender: TObject);
    procedure cbSucClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgFcVtaCabDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportaRe: TFormExportaRe;

implementation

{$R *.dfm}

uses URemitos;

procedure TFormExportaRe.BuscarExecute(Sender: TObject);
begin
  inherited;
 CDSFcVtaCab.Close;
  CDSFcVtaCab.Params.ParamByName('desde').Value   :=desde.Date;
  CDSFcVtaCab.Params.ParamByName('hasta').Value   :=hasta.Date;
  CDSFcVtaCab.Params.ParamByName('Sucursal').Value:=cbSuc.KeyValue;
  CDSFcVtaCab.Params.ParamByName('idcpbte').Value :=cbComprobantes.KeyValue;

  CDSFcVtaCab.Open;

  CDSFcVtaCab.First;
  CDSFcVtaDet.Close;
  CDSFcVtaDet.Params.ParamByName('id_desde').Value:=CDSFcVtaCab.FieldbyName('id_rto').Value;
  CDSFcVtaCab.Last;
  CDSFcVtaDet.Params.ParamByName('id_hasta').Value:=CDSFcVtaCab.FieldbyName('id_rto').Value;
  CDSFcVtaDet.Open;

  CDSFcVtaCab.First;

// Caja_Mov - Moviemitnos de caja

  dbgFcVtaCab.Width:=dbgFcVtaCab.Width+1;
  dbgFcVtaCab.Width:=dbgFcVtaCab.Width-1;

  dbgFcVtaDet.Width:=dbgFcVtaDet.Width+1;
  dbgFcVtaDet.Width:=dbgFcVtaDet.Width-1;

end;

procedure TFormExportaRe.cbSucClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:=cbSuc.KeyValue;
  CDSComprobantes.Open;

end;

procedure TFormExportaRe.dbgFcVtaCabDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRemitos)) then
    FormRemitos:=TFormRemitos.Create(Self);
  FormRemitos.DatoNew:=CDSFcVtaCabID_RTO.AsString;
  FormRemitos.TipoCpbte:=CDSFcVtaCabTIPOCPBTE.AsString;
  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;
end;

procedure TFormExportaRe.ExportarExecute(Sender: TObject);
begin
  inherited;
 if CDSFcVtaCab.IsEmpty Then Buscar.Execute;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  if Not(CDSFcVtaCab.IsEmpty)  Then
    begin
      Animate.Visible:=True;
      Animate.Active:=True;
      CDSFcVtaCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\RtoCab.XML');
      CDSFcVtaDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\RtoDet.XML');
    end
  else
    ShowMessage('No Hay datos para exportar....');
  Animate.Visible:=False;
  Animate.Active:=False;
  ShowMessage('Datos exportados....');
end;

procedure TFormExportaRe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormExportaRe.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSSuc.Open;
  CDSSuc.First;
  cbSuc.KeyValue:=SucursalPorDefecto;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:=cbSuc.KeyValue;
  CDSComprobantes.Open;
end;

procedure TFormExportaRe.FormDestroy(Sender: TObject);
begin
  inherited;
  FormExportaRe:=nil;
end;

procedure TFormExportaRe.FormShow(Sender: TObject);
var d,m,y:word;
begin
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
  Buscar.Execute;
end;

procedure TFormExportaRe.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  BUSCAR.Execute;
end;

end.
