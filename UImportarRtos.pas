unit UImportarRtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Vcl.ComCtrls,
  IBGenerator, Data.DB, Datasnap.Provider, Datasnap.DBClient,
  Vcl.Samples.Gauges, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, Vcl.ActnList, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,IniFiles,
  JvThread, Math,DBXCommon, JvDBLookup, JvMemoryDataset, Vcl.Mask, JvExMask,
  JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormImportarRtos = class(TFormABMBase)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    Label4: TLabel;
    lbDirectorio: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    btNovedades: TButton;
    Progress: TGauge;
    CDSFcVtaCabXML: TClientDataSet;
    DSFcVtaCabXML: TDataSource;
    DSFcVtaDetXML: TDataSource;
    CDSFcVtaDetXML: TClientDataSet;
    QFcVtaCab: TFDQuery;
    QFcVtaDet: TFDQuery;
    DSPFcVtaDet: TDataSetProvider;
    DSPFcVtaCab: TDataSetProvider;
    CDSFcVtaCab: TClientDataSet;
    CDSFcVtaDet: TClientDataSet;
    DSFCVtaDet: TDataSource;
    DSFcVtaCab: TDataSource;
    QFcVtaCabID_RTO: TIntegerField;
    QFcVtaCabTIPOCPBTE: TStringField;
    QFcVtaCabCLASECPBTE: TStringField;
    QFcVtaCabNROCPBTE: TStringField;
    QFcVtaCabCODIGO: TStringField;
    QFcVtaCabLETRARTO: TStringField;
    QFcVtaCabSUCRTO: TStringField;
    QFcVtaCabNUMERORTO: TStringField;
    QFcVtaCabNOMBRE: TStringField;
    QFcVtaCabRAZONSOCIAL: TStringField;
    QFcVtaCabDIRECCION: TStringField;
    QFcVtaCabCPOSTAL: TStringField;
    QFcVtaCabLOCALIDAD: TStringField;
    QFcVtaCabTIPOIVA: TIntegerField;
    QFcVtaCabCUIT: TStringField;
    QFcVtaCabLISTAPRECIO: TIntegerField;
    QFcVtaCabFECHAVTA: TSQLTimeStampField;
    QFcVtaCabFECHAVTO: TSQLTimeStampField;
    QFcVtaCabCONDICIONVTA: TIntegerField;
    QFcVtaCabANULADO: TStringField;
    QFcVtaCabNROFACT: TStringField;
    QFcVtaCabN_OPERACION2: TFloatField;
    QFcVtaCabNETOGRAV1: TFloatField;
    QFcVtaCabNETOGRAV2: TFloatField;
    QFcVtaCabDSTO: TFloatField;
    QFcVtaCabDSTOIMPORTE: TFloatField;
    QFcVtaCabNETOEXEN1: TFloatField;
    QFcVtaCabNETOEXEN2: TFloatField;
    QFcVtaCabTOTAL: TFloatField;
    QFcVtaCabDEBE: TFloatField;
    QFcVtaCabIMPRESO: TStringField;
    QFcVtaCabOBSERVACION1: TStringField;
    QFcVtaCabOBSERVACION2: TStringField;
    QFcVtaCabCPTE_MANUAL: TStringField;
    QFcVtaCabSUCURSAL: TIntegerField;
    QFcVtaCabZONA: TIntegerField;
    QFcVtaCabLDR: TIntegerField;
    QFcVtaCabDEPOSITO: TIntegerField;
    QFcVtaCabCALCULA_SOBRETASA: TStringField;
    QFcVtaCabDESGLOZAIVA: TStringField;
    QFcVtaCabNROENTREGA: TIntegerField;
    QFcVtaCabINGRESA_A_CTACTE: TStringField;
    QFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    QFcVtaCabIDFACTURA: TIntegerField;
    QFcVtaCabCOMISIONVENDEDOR: TFloatField;
    QFcVtaCabVENDEDOR: TStringField;
    QFcVtaCabUSUARIO: TStringField;
    QFcVtaCabRENGLONES: TSmallintField;
    QFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    QFcVtaCabID_TRANSPORTE: TIntegerField;
    QFcVtaCabFECHA_HORA: TSQLTimeStampField;
    QFcVtaCabTAREAS: TStringField;
    QFcVtaCabPRESUPUESTO_ID: TIntegerField;
    QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    QFcVtaCabNOTAVTA_ID: TIntegerField;
    QFcVtaCabNOTAVTA_NROCPBTE: TStringField;
    QFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    QFcVtaCabPOLIZA: TStringField;
    QFcVtaCabCANT_BULTOS: TIntegerField;
    QFcVtaCabREMITO_ELECTRONICO: TStringField;
    QFcVtaCabCAE: TStringField;
    QFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QFcVtaCabDEVOLUCION: TStringField;
    QFcVtaCabID_CHOFER: TIntegerField;
    QFcVtaCabTRASNPORTE_UNIDAD: TIntegerField;
    QFcVtaCabTRASNPORTE_ADICIONAL: TIntegerField;
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
    CDSFcVtaCabN_OPERACION2: TFloatField;
    CDSFcVtaCabNETOGRAV1: TFloatField;
    CDSFcVtaCabNETOGRAV2: TFloatField;
    CDSFcVtaCabDSTO: TFloatField;
    CDSFcVtaCabDSTOIMPORTE: TFloatField;
    CDSFcVtaCabNETOEXEN1: TFloatField;
    CDSFcVtaCabNETOEXEN2: TFloatField;
    CDSFcVtaCabTOTAL: TFloatField;
    CDSFcVtaCabDEBE: TFloatField;
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
    CDSFcVtaCabCOMISIONVENDEDOR: TFloatField;
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
    QFcVtaDetID: TIntegerField;
    QFcVtaDetID_CABRTO: TIntegerField;
    QFcVtaDetTIPOCPBTE: TStringField;
    QFcVtaDetCLASECPBTE: TStringField;
    QFcVtaDetNROCPBTE: TStringField;
    QFcVtaDetRENGLON: TFloatField;
    QFcVtaDetFECHAVTA: TSQLTimeStampField;
    QFcVtaDetCODIGOARTICULO: TStringField;
    QFcVtaDetDETALLE: TStringField;
    QFcVtaDetUNIDAD: TStringField;
    QFcVtaDetCANTIDAD: TFloatField;
    QFcVtaDetCOSTO_GRAVADO: TFloatField;
    QFcVtaDetCOSTO_EXENTO: TFloatField;
    QFcVtaDetCOSTO_TOTAL: TFloatField;
    QFcVtaDetUNITARIO_GRAVADO: TFloatField;
    QFcVtaDetIVA_UNITARIO: TFloatField;
    QFcVtaDetUNITARIO_EXENTO: TFloatField;
    QFcVtaDetUNITARIO_TOTAL: TFloatField;
    QFcVtaDetTOTAL_GRAVADO: TFloatField;
    QFcVtaDetIVA_TOTAL: TFloatField;
    QFcVtaDetTOTAL_EXENTO: TFloatField;
    QFcVtaDetTOTAL: TFloatField;
    QFcVtaDetDESGLOZAIVA: TStringField;
    QFcVtaDetMODO_GRAVAMEN: TStringField;
    QFcVtaDetIVA_TASA: TFloatField;
    QFcVtaDetIVA_SOBRETASA: TFloatField;
    QFcVtaDetTIPOIVA_TASA: TIntegerField;
    QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    QFcVtaDetDESCUENTO: TFloatField;
    QFcVtaDetDEPOSITO: TIntegerField;
    QFcVtaDetMARGEN: TFloatField;
    QFcVtaDetAFECTA_STOCK: TStringField;
    QFcVtaDetCALCULA_SOBRETASA: TStringField;
    QFcVtaDetGRAVADO_IB: TStringField;
    QFcVtaDetID_MONEDA: TIntegerField;
    QFcVtaDetCOTIZACION: TFloatField;
    QFcVtaDetLOTE: TIntegerField;
    QFcVtaDetOBSERVACION: TStringField;
    QFcVtaDetNOTAVENTA_ID: TIntegerField;
    QFcVtaDetNOTAVENTA_ID_DET: TIntegerField;
    QFcVtaDetCODIGOBARRA: TStringField;
    QFcVtaDetPRECIO_EDITABLE: TStringField;
    QFcVtaDetCANT_FACTURA: TFloatField;
    QFcVtaDetID_MERCA_ACOPIO_DET: TIntegerField;
    QFcVtaDetPRESENTACION_CANT: TFloatField;
    QFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    CDSFcVtaDetID: TIntegerField;
    CDSFcVtaDetID_CABRTO: TIntegerField;
    CDSFcVtaDetTIPOCPBTE: TStringField;
    CDSFcVtaDetCLASECPBTE: TStringField;
    CDSFcVtaDetNROCPBTE: TStringField;
    CDSFcVtaDetRENGLON: TFloatField;
    CDSFcVtaDetFECHAVTA: TSQLTimeStampField;
    CDSFcVtaDetCODIGOARTICULO: TStringField;
    CDSFcVtaDetDETALLE: TStringField;
    CDSFcVtaDetUNIDAD: TStringField;
    CDSFcVtaDetCANTIDAD: TFloatField;
    CDSFcVtaDetCOSTO_GRAVADO: TFloatField;
    CDSFcVtaDetCOSTO_EXENTO: TFloatField;
    CDSFcVtaDetCOSTO_TOTAL: TFloatField;
    CDSFcVtaDetUNITARIO_GRAVADO: TFloatField;
    CDSFcVtaDetIVA_UNITARIO: TFloatField;
    CDSFcVtaDetUNITARIO_EXENTO: TFloatField;
    CDSFcVtaDetUNITARIO_TOTAL: TFloatField;
    CDSFcVtaDetTOTAL_GRAVADO: TFloatField;
    CDSFcVtaDetIVA_TOTAL: TFloatField;
    CDSFcVtaDetTOTAL_EXENTO: TFloatField;
    CDSFcVtaDetTOTAL: TFloatField;
    CDSFcVtaDetDESGLOZAIVA: TStringField;
    CDSFcVtaDetMODO_GRAVAMEN: TStringField;
    CDSFcVtaDetIVA_TASA: TFloatField;
    CDSFcVtaDetIVA_SOBRETASA: TFloatField;
    CDSFcVtaDetTIPOIVA_TASA: TIntegerField;
    CDSFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFcVtaDetDESCUENTO: TFloatField;
    CDSFcVtaDetDEPOSITO: TIntegerField;
    CDSFcVtaDetMARGEN: TFloatField;
    CDSFcVtaDetAFECTA_STOCK: TStringField;
    CDSFcVtaDetCALCULA_SOBRETASA: TStringField;
    CDSFcVtaDetGRAVADO_IB: TStringField;
    CDSFcVtaDetID_MONEDA: TIntegerField;
    CDSFcVtaDetCOTIZACION: TFloatField;
    CDSFcVtaDetLOTE: TIntegerField;
    CDSFcVtaDetOBSERVACION: TStringField;
    CDSFcVtaDetNOTAVENTA_ID: TIntegerField;
    CDSFcVtaDetNOTAVENTA_ID_DET: TIntegerField;
    CDSFcVtaDetCODIGOBARRA: TStringField;
    CDSFcVtaDetPRECIO_EDITABLE: TStringField;
    CDSFcVtaDetCANT_FACTURA: TFloatField;
    CDSFcVtaDetID_MERCA_ACOPIO_DET: TIntegerField;
    CDSFcVtaDetPRESENTACION_CANT: TFloatField;
    CDSFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    IBGRto_Cab: TIBGenerator;
    IBGRto_Det: TIBGenerator;
    btImportar: TBitBtn;
    ToolButton1: TToolButton;
    LeerXML: TAction;
    Importar: TAction;
    JvThread1: TJvThread;
    LeerRto: TAction;
    MTClientes: TJvMemoryData;
    MTClientesCodigo: TStringField;
    MTClientesNombre: TStringField;
    JvLabel1: TJvLabel;
    dbcClientes: TJvDBLookupCombo;
    DSMClientes: TDataSource;
    Label3: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesSUCURSAL: TIntegerField;
    QClientesACTIVO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesMUESTRACOORPORATIVO: TStringField;
    BuscarCliente: TAction;
    QClientesNRO_DE_CUIT: TStringField;
    procedure LeerXMLExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvThread1Execute(Sender: TObject; Params: Pointer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImportarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure LeerRtoExecute(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSFcVtaCabCODIGOSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    lista:TStringList;
  end;

var
  FormImportarRtos: TFormImportarRtos;

implementation

{$R *.dfm}

uses UDMain_FD, UListCpbteNoImportados, UBuscaDirectorio, URemitos,
     UBuscadorClientes;

procedure TFormImportarRtos.BitBtn1Click(Sender: TObject);
var CDSClone:TClientDataSet;
Codigo:String;
begin
  inherited;
    CDSFcVtaCabXML.LoadFromFile(lbDirectorio.Caption+'\rtocab.xml');
    CDSFcVtaDetXML.MasterSource   :=DSFcVtaCabXML;
    CDSFcVtaDetXML.MasterFields   :='id_rto';
    CDSFcVtaDetXML.IndexFieldNames:='id_cabrto';
    CDSFcVtaDetXML.LoadFromFile(lbDirectorio.Caption+'\rtodet.xml');
 //   CDSFcVtaImpXML.MasterSource   :=DSFcVtaCabXML;
 //   CDSFcVtaImpXML.MasterFields   :='id_fc';
 //   CDSFcVtaImpXML.IndexFieldNames:='ID_FCVTACAB';
 //   CDSFcVtaImpXML.LoadFromFile(lbDirectorio.Caption+'\fcvtaimp.xml');
    CDSFcVtaCabXML.IndexFieldNames:='nrocpbte';

    CDSClone:=TClientDataSet.Create(Self);
    mtClientes.Open;
    mtClientes.EmptyTable;

    CDSClone.CloneCursor(CDSFcVtaCabXML,True);
    CDSClone.First;
    while Not(CDSClone.Eof) do
      begin
        Codigo:=CDSClone.FieldByName('Codigo').AsString;
        if Not(mtClientes.Locate('Codigo',Codigo,[])) Then
          begin
            mtClientes.Append;
            mtClientesCodigo.Value:=CDSClone.FieldByName('CODIGO').AsString;
            mtClientesNombre.Value:=CDSClone.FieldByName('NOMBRE').AsString;
            mtClientes.Post;
          end;
        CDSClone.Next;
      end;
    CDSClone.Close;
    FreeAndNil(CDSClone)
end;

procedure TFormImportarRtos.btImportarClick(Sender: TObject);
begin
  inherited;
  Importar.Execute;
  Application.ProcessMessages;
end;

procedure TFormImportarRtos.btNovedadesClick(Sender: TObject);
begin
  inherited;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

procedure TFormImportarRtos.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      if QClientesCODIGO.AsString<>'' then
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
        end
      else
        begin
          ceCliente.Text := '';
        end;

    END;
end;

procedure TFormImportarRtos.CDSFcVtaCabCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('000000',1,6-Length(Trim(Text)))+Trim(Text);
  QClientes.Close;
  QClientes.ParamByName('Codigo').Value := Sender.AsString;
  QClientes.Open;
  if Not(QClientes.IsEmpty) then
    begin
      CDSFcVtaCabCODIGO.Value      := QClientesCODIGO.AsString;
      CDSFcVtaCabNOMBRE.Value      := QClientesNOMBRE.AsString;
      CDSFcVtaCabRAZONSOCIAL.Value := QClientesRAZON_SOCIAL.AsString;
      CDSFcVtaCabTIPOIVA.Value     := QClientesCONDICION_IVA.AsInteger;
      CDSFcVtaCabDIRECCION.Value   := QClientesDIRECCION_COMERCIAL.AsString;
      CDSFcVtaCabCUIT.Value        := QClientesNRO_DE_CUIT.AsString;
    end;
  QClientes.Close;

end;

procedure TFormImportarRtos.ceClienteKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
     if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      if QClientesCODIGO.AsString<>'' then
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
        end
      else
        begin
          ceCliente.Text := '';
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
  QClientes.Close;

end;

procedure TFormImportarRtos.dbcClientesChange(Sender: TObject);
begin
  inherited;
  CDSFcVtaCabXML.Filtered:=False;
  CDSFcVtaCabXML.Filter:='';
  if dbcClientes.KeyValue<>'******' then
    CDSFcVtaCabXML.Filter:='codigo='+''''+dbcClientes.KeyValue+''''
  else
    CDSFcVtaCabXML.Filter:='';

  CDSFcVtaCabXML.Filtered:=True;
end;

procedure TFormImportarRtos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    DBGrid1.DataSource.DataSet.Delete;
end;

procedure TFormImportarRtos.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  CDSFcVtaCab.IndexFieldNames:=Column.Field.FieldName;
end;

procedure TFormImportarRtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if JvThread1.Terminated=False then
    JvThread1.Terminate;
  while not (JvThread1.Terminated) do
  begin
    Sleep(100);
    Application.ProcessMessages;
  end;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarRto.ini');
  ArchivoIni.WriteString('Path', 'Path', lbDirectorio.Caption);
  ArchivoIni.Free;
  FreeAndNil(lista);
  Action:=caFree;
end;

procedure TFormImportarRtos.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni           := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarRto.ini');
  lbDirectorio.Caption := ArchivoIni.ReadString('Path', 'Path', '...');
  ArchivoIni.Free;
end;

procedure TFormImportarRtos.FormDestroy(Sender: TObject);
begin
  inherited;
 if FormImportarRtos<>nil then
    FormImportarRtos:=nil;
end;

procedure TFormImportarRtos.ImportarExecute(Sender: TObject);
var
Nombre:String;
I:iNTEGER;
begin
 // inherited;
  lista:=TStringList.Create;

  CDSFcVtaCab.Open;
  CDSFcVtaDet.Open;
//  CDSFcVtaImp.Open;
//  Animate1.Visible:=True;
//  Animate1.Active :=True;
  CDSFcVtaCabXML.First;
  Progress.MaxValue:=CDSFcVtaCabXML.RecordCount;
  while not(CDSFcVtaCabXML.Eof) do
    begin
      DMMain_FD.QBuscaRto.Close;
      DMMain_FD.QBuscaRto.ParamByName('letra').Value    :=CDSFcVtaCabXML.FieldByName('LetraRto').Value;
      DMMain_FD.QBuscaRto.ParamByName('sucfac').Value   :=CDSFcVtaCabXML.FieldByName('sucrto').Value;
      DMMain_FD.QBuscaRto.ParamByName('numfac').Value   :=CDSFcVtaCabXML.FieldByName('numeroRto').Value;
      DMMain_FD.QBuscaRto.ParamByName('sucursal').Value :=CDSFcVtaCabXML.FieldByName('sucursal').Value;
      DMMain_FD.QBuscaRto.ParamByName('tipo').Value     :=CDSFcVtaCabXML.FieldByName('tipocpbte').Value;
      DMMain_FD.QBuscaRto.ParamByName('clase').Value    :=CDSFcVtaCabXML.FieldByName('clasecpbte').Value;
      DMMain_FD.QBuscaRto.Open;

      Progress.Progress:=Progress.Progress+1;
      Application.ProcessMessages;

      if DMMain_FD.QBuscaRto.Fields[0].AsString='' then
        begin
          CDSFcVtaCab.Insert;
          For i:=0 to CDSFcVtaCabXML.FieldCount-1 do
            begin
              if CDSFcVtaCab.FindField(CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=CDSFcVtaCabXML.Fields[i].FieldName;
                  //if Nombre='CODIGO' Then
                  //  VerificaCliente(Trim(CDSFcVtaCabXML.FieldByName(Nombre).Value));
                  CDSFcVtaCab.FieldByName(Nombre).Value:=CDSFcVtaCabXML.FieldByName(Nombre).Value;
                end;
            end;
          if Trim(ceCliente.Text)<>'' then
            begin
              CDSFcVtaCabCODIGOSetText(CDSFcVtaCabCODIGO,Trim(ceCliente.Text));
            end;



          CDSFcVtaCab.FieldByName('id_RTO').Value:=IBGRto_Cab.IncrementFD(1);
          //****  Marco Todas como no anuladas
          CDSFcVtaCab.FieldByName('Anulado').Value:='N';
          //Paso al Detalle
          CDSFcVtaDetXML.First;
          while not(CDSFcVtaDetXML.Eof) do
            begin
            //Inserto Detalle
              CDSFcVtaDet.Insert;
              For i:=0 to CDSFcVtaDetXML.FieldCount-1 do
                begin
                  if CDSFcVtaDet.FindField(CDSFcVtaDetXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcVtaDetXML.Fields[i].FieldName;
                      CDSFcVtaDet.FieldByName(Nombre).Value:=CDSFcVtaDetXML.FieldByName(Nombre).Value;
                    end;
                end;

              if (Trunc(CDSFcVtaDetIVA_UNITARIO.AsFloat*1000)=0) then
                CDSFcVtaDetIVA_UNITARIO.AsFloat  := RoundTo ( CDSFcVtaDetUNITARIO_GRAVADO.AsFloat * ( CDSFcVtaDetIVA_TASA.AsFloat * 0.01),DMMain_FD.DecRedondeo);

              if (Trunc(CDSFcVtaDetTOTAL_GRAVADO.AsFloat*1000)=0) then
                CDSFcVtaDetTOTAL_GRAVADO.AsFloat := RoundTo ( CDSFcVtaDetCANTIDAD.AsFloat * CDSFcVtaDetUNITARIO_GRAVADO.AsFloat * ( 1- CDSFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

              if (Trunc(CDSFcVtaDetTOTAL_EXENTO.AsFloat*1000)=0) then
                CDSFcVtaDetTOTAL_EXENTO.AsFloat  := RoundTo ( CDSFcVtaDetCANTIDAD.AsFloat * CDSFcVtaDetUNITARIO_EXENTO.AsFloat * ( 1- CDSFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

              if (Trunc(CDSFcVtaDetTOTAL.AsFloat*1000)=0) then
                CDSFcVtaDetTOTAL.AsFloat         := CDSFcVtaDetTOTAL_GRAVADO.AsFloat +
                                                  CDSFcVtaDetTOTAL_EXENTO.AsFloat;

              if (Trunc(CDSFcVtaDetIVA_TOTAL.AsFloat*1000)=0) then
                CDSFcVtaDetIVA_TOTAL.AsFloat := RoundTo ( CDSFcVtaDetTOTAL_GRAVADO.AsFloat * CDSFcVtaDetIVA_TASA.AsFloat * 0.01,-2 );

              CDSFcVtaDet.FieldByName('id').Value       := IBGRto_Det.IncrementFD(1);
              CDSFcVtaDet.FieldByName('id_cabrto').Value:= CDSFcVtaCab.FieldByName('id_rto').Value;


              CDSFcVtaDet.Post;
              CDSFcVtaDetXML.Next;
            end;


//        //Paso al Iva
//          CDSFcVtaImpXML.First;
//          while not(CDSFcVtaImpXML.Eof) do
//            begin
//            //Inserto Detalle
//              CDSFcVtaImp.Insert;
//              For i:=0 to CDSFcVtaImpXML.FieldCount-1 do
//                begin
//                  if CDSFcVtaImp.FindField(CDSFcVtaImpXML.Fields[i].FieldName)<>nil Then
//                    begin
//                      Nombre:=CDSFcVtaImpXML.Fields[i].FieldName;
//                      CDSFcVtaImp.FieldByName(Nombre).Value:=CDSFcVtaImpXML.FieldByName(Nombre).Value;
//                    end;
//                end;
//              CDSFcVtaImp.FieldByName('id_impuesto').Value  := IBGImpuestos.IncrementFD(1);
//              CDSFcVtaImp.FieldByName('id_FcVtaCab').Value  := CDSFcVtaCab.FieldByName('id_fc').Value;
//              CDSFcVtaImp.Post;
//              CDSFcVtaImpXML.Next;
//            end;
//          CDSFcVtaCabCAJA_POR_DEFECTO.Value:=rxdbcCaja.KeyValue;
          CDSFcVtaCabCPTE_MANUAL.Value     :='S';

          CDSFcVtaCab.Post;

          if CDSFcVtaCab.State<>dsbrowse Then CDSFcVtaCab.Post;
          if CDSFcVtaDet.State<>dsbrowse Then CDSFcVtaDet.Post;
//          if CDSFcVtaImp.State<>dsbrowse Then CDSFcVtaImp.Post;

          DMMain_FD.fdcGestion.StartTransaction;
          Try
          // Si es de contado ingreso el mov de caja
            CDSFcVtaCab.ApplyUpdates(0);
            CDSFcVtaDet.ApplyUpdates(0);
  //          CDSFcVtaImp.ApplyUpdates(0);

            if CDSFcVtaCabXML.FieldByName('Anulado').Value='S' Then
              begin
                CDSFcVtaCab.edit;
                CDSFcVtaCab.FieldByName('Anulado').Value:='S';
                CDSFcVtaCab.Post;
                CDSFcVtaCab.ApplyUpdates(0);
              end;
            DMMain_FD.fdcGestion.Commit;
            CDSFcVtaCab.Close;
            CDSFcVtaCab.Params.ParamByName('id').Clear;
            CDSFcVtaCab.OPeN;

            CDSFcVtaDet.Close;
            CDSFcVtaDet.Params.ParamByName('id').Clear;
            CDSFcVtaDet.OPeN;

//            CDSFcVtaImp.Close;
//            CDSFcVtaImp.Params.ParamByName('id').Clear;
//            CDSFcVtaImp.OPeN;


          except
            DMMain_FD.fdcGestion.Rollback;

            CDSFcVtaCab.Close;
            CDSFcVtaCab.Params.ParamByName('id').Clear;
            CDSFcVtaCab.OPeN;

            CDSFcVtaDet.Close;
            CDSFcVtaDet.Params.ParamByName('id').Clear;
            CDSFcVtaDet.OPeN;

//            CDSFcVtaImp.Close;
//            CDSFcVtaImp.Params.ParamByName('id').Clear;
//            CDSFcVtaImp.OPeN;


            ShowMessage('Transacción no finalizada....!');
          end;
        end
      else
        begin
          lista.Add(CDSFcVtaCabXML.FieldByName('letrafac').AsString+'-'+
                    CDSFcVtaCabXML.FieldByName('sucfac').AsString+'-'+
                    CDSFcVtaCabXML.FieldByName('numerofac').AsString+'   '+
                    CDSFcVtaCabXML.FieldByName('Nombre').AsString);
        end;
      CDSFcVtaCabXML.Next;
    end;
 // Animate1.Visible:=False;
 // Animate1.Active:=False;

  CDSFcVtaCabXML.Close;
 // CDSFcVtaImpXML.Close;
  CDSFcVtaDetXML.Close;

  CDSFcVtaCab.Close;
  CDSFcVtaDet.Close;
 // CDSFcVtaImp.Close;

  Progress.Progress:=0;


end;

procedure TFormImportarRtos.JvThread1Execute(Sender: TObject; Params: Pointer);
begin
  inherited;
  Importar.Execute;
  JvThread1.Terminate;
end;

procedure TFormImportarRtos.Label4Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.Directorio:=lbDirectorio.Caption;
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    lbDirectorio.Caption:=FormBuscaDirectorio.Directorio;
end;

procedure TFormImportarRtos.LeerRtoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRemitos)) then
    FormRemitos:=TFormRemitos.Create(self);
  formRemitos.DatoNew:=CDSFcVtaCabXML.FieldByName('id_rto').AsString;
  FormRemitos.TipoCpbte:='RE';
  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;
end;

procedure TFormImportarRtos.LeerXMLExecute(Sender: TObject);
begin
  inherited;
  begin
    CDSFcVtaCabXML.LoadFromFile(lbDirectorio.Caption+'\Rtocab.xml');
    CDSFcVtaDetXML.MasterSource   :=DSFcVtaCabXML;
    CDSFcVtaDetXML.MasterFields   :='id_rto';
    CDSFcVtaDetXML.IndexFieldNames:='id_cabrto';
    CDSFcVtaDetXML.LoadFromFile(lbDirectorio.Caption+'\rtodet.xml');
    //CDSFcVtaImpXML.MasterSource   :=DSFcVtaCabXML;
//    CDSFcVtaImpXML.MasterFields   :='id_fc';
//    CDSFcVtaImpXML.IndexFieldNames:='ID_FCVTACAB';
//    CDSFcVtaImpXML.LoadFromFile(lbDirectorio.Caption+'\fcvtaimp.xml');
    CDSFcVtaCabXML.IndexFieldNames:='nrocpbte';
  end;
end;

end.
