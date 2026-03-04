unit UExportadorFcComp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Gauges, Mask,  Librerias, DBClient,
  Provider,FileCtrl, JvComponentBase, ImgList, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask,
  JvToolEdit,DateUtils, Vcl.Grids, Vcl.DBGrids, JvAppStorage, JvAppIniStorage,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormExportarFcComp = class(TFormABMBase)
    dbgFcCompCab: TDBGrid;
    DSFcCompCab: TDataSource;
    dbgFcCompDet: TDBGrid;
    DSFcCompDet: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    dbgFcCompImpuesto: TDBGrid;
    DSFcCompImp: TDataSource;
    dbgRetIIBB: TDBGrid;
    dbgRetIVA: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DSFcCompPerIB: TDataSource;
    DSFcCompPerIva: TDataSource;
    DSCondPago: TDataSource;
    dbgDscto: TDBGrid;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Exportar: TAction;
    Label6: TLabel;
    UpDown1: TUpDown;
    DSPFcCompCab: TDataSetProvider;
    CDSFcCompCab: TClientDataSet;
    DSPFcCompDet: TDataSetProvider;
    CDSFcCompDet: TClientDataSet;
    DSPFcCompImp: TDataSetProvider;
    CDSFcCompImp: TClientDataSet;
    DSPFcCompPerIB: TDataSetProvider;
    CDSFcCompPerIB: TClientDataSet;
    DSPCondPago: TDataSetProvider;
    CDSCondPago: TClientDataSet;
    DSPFcCompPerIva: TDataSetProvider;
    CDSFcCompPerIva: TClientDataSet;
    Animate: TAnimate;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    chbPorDia: TCheckBox;
    edDirecorio: TJvDirectoryEdit;
    Label7: TLabel;
    QFcCompDet: TFDQuery;
    QFcCompCab: TFDQuery;
    QFcCompImp: TFDQuery;
    QFcCompPerIB: TFDQuery;
    QCondPago: TFDQuery;
    QFcCompPerIva: TFDQuery;
    CDSFcCompCabID_FC: TIntegerField;
    CDSFcCompCabTIPOCPBTE: TStringField;
    CDSFcCompCabCLASECPBTE: TStringField;
    CDSFcCompCabCODIGO: TStringField;
    CDSFcCompCabNROCPBTE: TStringField;
    CDSFcCompCabLETRAFAC: TStringField;
    CDSFcCompCabSUCFAC: TStringField;
    CDSFcCompCabNUMEROFAC: TStringField;
    CDSFcCompCabNOMBRE: TStringField;
    CDSFcCompCabRAZONSOCIAL: TStringField;
    CDSFcCompCabDIRECCION: TStringField;
    CDSFcCompCabCPOSTAL: TStringField;
    CDSFcCompCabLOCALIDAD: TStringField;
    CDSFcCompCabTIPOIVA: TIntegerField;
    CDSFcCompCabCUIT: TStringField;
    CDSFcCompCabFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompCabFECHAVTO: TSQLTimeStampField;
    CDSFcCompCabCONDICIONCOMPRA: TIntegerField;
    CDSFcCompCabANULADO: TStringField;
    CDSFcCompCabORDENCOMPRA: TStringField;
    CDSFcCompCabN_OPERACION2: TFloatField;
    CDSFcCompCabNETOGRAV1: TFloatField;
    CDSFcCompCabDSTO: TFloatField;
    CDSFcCompCabDSTOIMPORTE: TFloatField;
    CDSFcCompCabNETOGRAV2: TFloatField;
    CDSFcCompCabNETOEXEN1: TFloatField;
    CDSFcCompCabNETOEXEN2: TFloatField;
    CDSFcCompCabIMPORTEEXCLUIDO2: TFloatField;
    CDSFcCompCabIMPORTEEXCLUIDO1: TFloatField;
    CDSFcCompCabRETENCION_IVA: TFloatField;
    CDSFcCompCabTOTAL: TFloatField;
    CDSFcCompCabDEBE: TFloatField;
    CDSFcCompCabAPLICA: TStringField;
    CDSFcCompCabOBSERVACION1: TStringField;
    CDSFcCompCabOBSERVACION2: TStringField;
    CDSFcCompCabSUCURSALCOMPRA: TIntegerField;
    CDSFcCompCabZONA: TIntegerField;
    CDSFcCompCabDEPOSITO: TIntegerField;
    CDSFcCompCabDESGLOZAIVA: TStringField;
    CDSFcCompCabCALCULA_SOBRETASA: TStringField;
    CDSFcCompCabFECHAFISCAL: TSQLTimeStampField;
    CDSFcCompCabNETOMONOTRIBUTO1: TFloatField;
    CDSFcCompCabNETOMONOTRIBUTO2: TFloatField;
    CDSFcCompCabCPBTE_INTERNO: TStringField;
    CDSFcCompCabINGRESA_A_CTACTE: TStringField;
    CDSFcCompCabINGRESA_LIBRO_IVA: TStringField;
    CDSFcCompCabREDUCIDA: TStringField;
    CDSFcCompCabTIPO_PROVEEDOR: TStringField;
    CDSFcCompCabJURIDICCION: TIntegerField;
    CDSFcCompCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSFcCompCabFECHA_HORA: TSQLTimeStampField;
    CDSFcCompCabUSUARIO: TStringField;
    CDSFcCompCabTOTAL_UNIDADES: TFloatField;
    CDSFcCompCabMONEDA_CPBTE: TIntegerField;
    CDSFcCompCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSFcCompCabNUMERO_OPERACION: TStringField;
    CDSFcCompCabCAE: TStringField;
    CDSFcCompCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSFcCompCabFACTURA_ELECTRONICA: TStringField;
    CDSFcCompCabCOD_OPERACION_AFIP: TSingleField;
    CDSFcCompCabTIPOCOMP_AFIP: TStringField;
    CDSFcCompCabCOD_CARACT_RECP_AFIP: TIntegerField;
    CDSFcCompCabCOD_CARACT_EMIS_AFIP: TIntegerField;
    CDSFcCompCabNRO_IIBB_RECEP: TStringField;
    CDSFcCompCabNRO_RENSPA_EMISOR: TStringField;
    CDSFcCompCabNRO_RENSPA_RECEP: TStringField;
    CDSFcCompCabFECHA_OPERACION: TSQLTimeStampField;
    CDSFcCompCabLUGAR_REALIZA_AFIP: TStringField;
    CDSFcCompCabCOD_MOTIVO_AFIP: TIntegerField;
    CDSFcCompCabNRO_RUCA_EMISOR_AFIP: TSingleField;
    CDSFcCompCabNRO_RUCA_RECEPTOR_AFIP: TSingleField;
    CDSFcCompCabFECHA_FAENA_AFIP: TSQLTimeStampField;
    CDSFcCompCabFECHA_RECEP_AFIP: TSQLTimeStampField;
    CDSFcCompCabDATOS_ADIC_AFIP: TStringField;
    CDSFcCompCabFECHA_INCIO_ACTIV: TSQLTimeStampField;
    CDSFcCompCabCODIGOBARRA_AFIP: TStringField;
    CDSFcCompCabCUIT_AUTORIZADO: TStringField;
    CDSFcCompCabNOMBRE_AUTORIZADO: TStringField;
    CDSFcCompCabTIPO_LIQUIDACION: TStringField;
    CDSFcCompCabCUIT_AUTORIZADO_RECEP: TStringField;
    CDSFcCompCabID_CPBTE_ANULADO_LIQ: TIntegerField;
    CDSFcCompDetID: TIntegerField;
    CDSFcCompDetID_CABFAC: TIntegerField;
    CDSFcCompDetTIPOCPBTE: TStringField;
    CDSFcCompDetCLASECPBTE: TStringField;
    CDSFcCompDetNROCPBTE: TStringField;
    CDSFcCompDetCODIGOPROVEEDOR: TStringField;
    CDSFcCompDetRENGLON: TFloatField;
    CDSFcCompDetFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompDetCODIGOARTICULO: TStringField;
    CDSFcCompDetDETALLE: TStringField;
    CDSFcCompDetDETALLE_ADICIONAL: TStringField;
    CDSFcCompDetUNIDAD: TStringField;
    CDSFcCompDetCANTIDAD: TFloatField;
    CDSFcCompDetUNIDADES_TOTAL: TFloatField;
    CDSFcCompDetUNIDADES_EXENTO: TFloatField;
    CDSFcCompDetUNIDADES_GRAVADO: TFloatField;
    CDSFcCompDetUNITARIO_TOTAL: TFloatField;
    CDSFcCompDetUNITARIO_EXENTO: TFloatField;
    CDSFcCompDetUNITARIO_GRAVADO: TFloatField;
    CDSFcCompDetDESGLOZAIVA: TStringField;
    CDSFcCompDetMODO_GRAVAMEN: TStringField;
    CDSFcCompDetTIPOIVA_TASA: TIntegerField;
    CDSFcCompDetIVA_TASA: TFloatField;
    CDSFcCompDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFcCompDetIVA_SOBRETASA: TFloatField;
    CDSFcCompDetCOSTO_TOTAL: TFloatField;
    CDSFcCompDetCOSTO_EXENTO: TFloatField;
    CDSFcCompDetCOSTO_GRAVADO: TFloatField;
    CDSFcCompDetDESCUENTO: TFloatField;
    CDSFcCompDetTOTAL: TFloatField;
    CDSFcCompDetDEPOSITO: TIntegerField;
    CDSFcCompDetMARGEN: TFloatField;
    CDSFcCompDetAFECTA_STOCK: TStringField;
    CDSFcCompDetCALCULA_SOBRETASA: TStringField;
    CDSFcCompDetCOSTO_IMP_INTERNO: TFloatField;
    CDSFcCompDetUNIDADES_IMP_INTERNOS: TFloatField;
    CDSFcCompDetUNITARIO_IMP_INTERNO: TFloatField;
    CDSFcCompDetCON_NRO_SERIE: TStringField;
    CDSFcCompDetID_RECEPCION_CAB: TIntegerField;
    CDSFcCompDetID_RECEPCION_DET: TIntegerField;
    CDSFcCompDetNRORECEPCION: TStringField;
    CDSFcCompDetGRAVADO_IB: TStringField;
    CDSFcCompDetID_MONEDA: TIntegerField;
    CDSFcCompDetCOTIZACION: TFloatField;
    CDSFcCompDetCONTROL_TRAZABILIDAD: TStringField;
    CDSFcCompDetCANTIDAD_UNIDADES: TFloatField;
    CDSFcCompDetPRESENTACION_CANT: TFloatField;
    CDSFcCompDetTIPO_LIQUI: TIntegerField;
    CDSFcCompDetCODIGO_RAZA: TIntegerField;
    CDSFcCompDetDETALLE_RAZA: TStringField;
    CDSFcCompDetTROPA: TIntegerField;
    CDSFcCompDetCABEZAS: TIntegerField;
    CDSFcCompDetRUBRO: TStringField;
    CDSFcCompDetSUBRUBRO: TStringField;
    CDSFcCompDetMARCA_STK: TStringField;
    CDSFcCompDetMUESTRARUBRO: TStringField;
    CDSFcCompDetMUESTRASUBRUBRO: TStringField;
    CDSFcCompDetMUESTRAMARCA: TStringField;
    CDSFcCompImpID_IMPUESTO: TIntegerField;
    CDSFcCompImpCODIGO_GRAVAMEN: TIntegerField;
    CDSFcCompImpDETALLE: TStringField;
    CDSFcCompImpID_FCCOMPCAB: TIntegerField;
    CDSFcCompImpNETO: TFloatField;
    CDSFcCompImpTASA: TFloatField;
    CDSFcCompImpIMPORTE: TFloatField;
    CDSFcCompPerIBID_PERCEPCION: TIntegerField;
    CDSFcCompPerIBCODIGO_PERCEPCION: TIntegerField;
    CDSFcCompPerIBDETALLE: TStringField;
    CDSFcCompPerIBID_FCCOMPCAB: TIntegerField;
    CDSFcCompPerIBNETO: TFloatField;
    CDSFcCompPerIBTASA: TFloatField;
    CDSFcCompPerIBIMPORTE: TFloatField;
    CDSFcCompPerIBJURIDICION: TIntegerField;
    CDSFcCompPerIvaID_PERCEPCION: TIntegerField;
    CDSFcCompPerIvaCODIGO_PERCEPCION: TIntegerField;
    CDSFcCompPerIvaDETALLE: TStringField;
    CDSFcCompPerIvaID_FCCOMPCAB: TIntegerField;
    CDSFcCompPerIvaNETO: TFloatField;
    CDSFcCompPerIvaTASA: TFloatField;
    CDSFcCompPerIvaIMPORTE: TFloatField;
    CDSFcCompPerIvaCODIGOREGIMEN: TIntegerField;
    CDSCondPagoID: TIntegerField;
    CDSCondPagoID_FC: TIntegerField;
    CDSCondPagoTIPOCPBTE: TStringField;
    CDSCondPagoNROCPBTE: TStringField;
    CDSCondPagoCODIGO: TStringField;
    CDSCondPagoITEM: TIntegerField;
    CDSCondPagoFECHA: TSQLTimeStampField;
    CDSCondPagoDSCTO: TFloatField;
    CDSCondPagoIMPORTE: TFloatField;
    CDSCondPagoCLASECPBTE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ExportarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportarFcComp: TFormExportarFcComp;

implementation

uses UDMain_FD, System.IniFiles;
{$R *.DFM}

procedure TFormExportarFcComp.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni               := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ExportarFcCompXML.ini');
  edDirecorio.Text         := ArchivoIni.ReadString('ExpoFcComp', 'Directorio', '');
  ArchivoIni.Free;
  CDSFcCompCab.Open;
end;

procedure TFormExportarFcComp.ExportarExecute(Sender: TObject);
begin
  if CDSFcCompCab.IsEmpty Then Buscar.Execute;
  if Not(CDSFcCompCab.IsEmpty)  Then
    begin
      Animate.Visible:=True;
      Animate.Active:=True;
       if (Trim(edDirecorio.Text)='') then
         begin
          if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
            CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

          CDSFcCompCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompCab.XML');
          CDSFcCompDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompDet.XML');
          CDSFcCompImp.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompImp.XML');
          CDSFcCompPerIB.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompPerIB.XML');
          CDSFcCompPerIva.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCompPerIva.XML');
          CDSCondPago.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcCondPago.XML');
         end
       else
         begin
          CDSFcCompCab.SaveToFile(edDirecorio.Text+'\FcCompCab.XML');
          CDSFcCompDet.SaveToFile(edDirecorio.Text+'\FcCompDet.XML');
          CDSFcCompImp.SaveToFile(edDirecorio.Text+'\FcCompImp.XML');
          CDSFcCompPerIB.SaveToFile(edDirecorio.Text+'\FcCompPerIB.XML');
          CDSFcCompPerIva.SaveToFile(edDirecorio.Text+'\FcCompPerIva.XML');
          CDSCondPago.SaveToFile(edDirecorio.Text+'\FcCondPago.XML');
         end;
    end
  else
    ShowMessage('No Hay datos para exportar....');
  Animate.Visible:=False;
  Animate.Active:=False;
  ShowMessage('Datos exportados....');

end;


procedure TFormExportarFcComp.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  BUSCAR.Execute;  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormExportarFcComp.FormShow(Sender: TObject);
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

procedure TFormExportarFcComp.BuscarExecute(Sender: TObject);
var first,last:Integer;
begin
  inherited;
  CDSFcCompCab.Close;
  CDSFcCompCab.Params.ParamByName('desde').Value   :=desde.Date;
  CDSFcCompCab.Params.ParamByName('hasta').Value   :=hasta.Date;
  CDSFcCompCab.Open;
  // Leo el primer y ultimo Id
  CDSFcCompCab.First;
  first:=CDSFcCompCabID_FC.Value;
  CDSFcCompCab.Last;
  last :=CDSFcCompCabID_FC.Value;

  CDSFcCompDet.Close;
  CDSFcCompDet.Params.ParamByName('id_desde').Value:=first;
  CDSFcCompDet.Params.ParamByName('id_hasta').Value:=last;
  CDSFcCompDet.Open;

  CDSFcCompImp.Close;
  CDSFcCompImp.Params.ParamByName('id_desde').Value:=first;
  CDSFcCompImp.Params.ParamByName('id_hasta').Value:=last;
  CDSFcCompImp.Open;

  CDSFcCompPerIB.Close;
  CDSFcCompPerIB.Params.ParamByName('id_desde').Value:=first;
  CDSFcCompPerIB.Params.ParamByName('id_hasta').Value:=last;
  CDSFcCompPerIB.Open;

  CDSFcCompPerIva.Close;
  CDSFcCompPerIva.Params.ParamByName('id_desde').Value:=first;
  CDSFcCompPerIva.Params.ParamByName('id_hasta').Value:=last;
  CDSFcCompPerIva.Open;

  CDSCondPago.Close;
  CDSCondPago.Params.ParamByName('id_desde').Value:=first;
  CDSCondPago.Params.ParamByName('id_hasta').Value:=last;
  CDSCondPago.Open;

end;

procedure TFormExportarFcComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ExportarFcCompXML.ini');
  ArchivoIni.WriteString('ExpoFcComp', 'Directorio', edDirecorio.Text);
//  ArchivoIni.WriteInteger('ExpoStock', 'ListaPrecios', dbcListaPrecios.KeyValue);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormExportarFcComp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormExportarFcComp:=nil;
end;

end.