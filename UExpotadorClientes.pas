unit UExpotadorClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, Grids, DBGrids, ComCtrls, Gauges, JvComponentBase,
  ImgList, ActnList,JvExControls, JvGradient, Buttons,
  StdCtrls, ToolWin, ExtCtrls, DataExport, DataToAscii, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormExportarClientes = class(TFormABMBase)
    DSClientes: TDataSource;
    dbgClientes: TDBGrid;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Exportar: TAction;
    SelectAll: TAction;
    UnSelect: TAction;
    DSPClientes: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSLdr: TClientDataSet;
    DataToAscii: TDataToAscii;
    BitBtn2: TBitBtn;
    ExportarTxt: TAction;
    SaveDialog1: TSaveDialog;
    DSPCondVenta: TDataSetProvider;
    CDSCondVenta: TClientDataSet;
    DSPBuscaSucursales: TDataSetProvider;
    CDSBuscaSucursales: TClientDataSet;
    CDSBuscaSucursalesCODIGO: TIntegerField;
    CDSBuscaSucursalesDETALLE: TStringField;
    DSBuscaSucursales: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    Label1: TLabel;
    QClientes: TFDQuery;
    QLdr: TFDQuery;
    QCondVentaCli: TFDQuery;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesNOMBRE_COMPLETO: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesCORREOELECTRONICO_2: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesID_RECIBOPORDEFECTO: TIntegerField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesID_PLANTILLA: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesDIAS_MAYOR_30: TIntegerField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    CDSClientesFRANQUICIA: TStringField;
    CDSClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    CDSClientesID_TRANSPORTE: TIntegerField;
    CDSClientesIMPRIME_SALDOFACTURA: TStringField;
    CDSClientesCORTAR_SERVICIO: TStringField;
    CDSClientesCON_PLANPAGO: TStringField;
    CDSClientesDIRECCION_POSTAL: TStringField;
    CDSClientesCALLE_1: TStringField;
    CDSClientesCALLE_2: TStringField;
    CDSClientesVENDER_DE_CTDO: TStringField;
    CDSClientesPRESENTO_F8001: TStringField;
    CDSClientesDESDE_F8001: TSQLTimeStampField;
    CDSClientesHASTA_F8001: TSQLTimeStampField;
    CDSClientesID_TARJETACREDITO: TIntegerField;
    CDSClientesNRO_TARJETA_C: TStringField;
    CDSClientesNRO_SEG_TC: TStringField;
    CDSClientesID_BANCO: TIntegerField;
    CDSClientesNRO_CTA_BCO: TStringField;
    CDSClientesCODIGO_COORPORATIVO: TStringField;
    CDSClientesCUENTA_OPERATIVA: TStringField;
    CDSClientesTARJETA_CLIENTE: TStringField;
    CDSClientesVENCIMIENTO_TC: TSQLTimeStampField;
    CDSClientesFOTO: TBlobField;
    CDSClientesCON_MONITOREO: TStringField;
    CDSClientesCON_GPRS: TStringField;
    CDSClientesCON_HOSTING: TStringField;
    CDSClientesCOMUNITARIO: TStringField;
    CDSClientesID_PRESTADOR: TIntegerField;
    CDSClientesMES_ADICIONAL: TIntegerField;
    CDSClientesMES_SEMESTRAL: TIntegerField;
    CDSClientesMOROSO: TStringField;
    CDSClientesPLANTILLA_CIVA: TStringField;
    CDSClientesOBSERVACIONES1: TStringField;
    CDSClientesOBSERVACIONES2: TStringField;
    CDSClientesAVISO: TStringField;
    CDSClientesRUBRO: TIntegerField;
    CDSClientesENVIAR_CPTE_MAIL: TStringField;
    CDSClientesNRO_IP: TStringField;
    CDSClientesCHEQUES: TStringField;
    CDSClientesID_ADMINISTRACION: TIntegerField;
    CDSClientesOBRA_SOCIAL: TIntegerField;
    CDSClientesNRO_AFILIADO: TStringField;
    CDSClientesNICKNAME_MERCADOPAGO: TStringField;
    CDSClientesBUSCADOR: TStringField;
    CDSClientesFECHA_INACTIVO: TSQLTimeStampField;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    CDSLdrLOCALIDAD: TStringField;
    CDSLdrPROVINCIA: TIntegerField;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFloatField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    procedure ExportarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ExportarTxtExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportarClientes: TFormExportarClientes;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormExportarClientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSClientes.Open;

  CDSLdr.Close;
  CDSLdr.Params.ParamByName('sucursal').Value    :=dbcSucursal.KeyValue;
  CDSLdr.Open;

  CDSCondVenta.Close;
  CDSCondVenta.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSCondVenta.Open;
  Screen.Cursor:=crDefault;

end;

procedure TFormExportarClientes.ExportarExecute(Sender: TObject);
//var ArchiTxt:TextFile;
//paso,i,z,reg:Integer;
//Dato:String;
begin
  inherited;
  sbEstado.SimpleText:='Exportando Clientes';
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  CDSClientes.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Clientes.XML');
  CDSLdr.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Ldr.XML');
  CDSCondVenta.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\CondVenta.XML');


  sbEstado.SimpleText:='Grabando Datos ...';
  Sleep(1000);
  //gTotal.Progress   :=0;
  sbEstado.SimpleText:='Exportanción Finalizada... ver en '+ExtractFilePath(ParamStr(0))+'Archivos Temporales... ';

end;

procedure TFormExportarClientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSBuscaSucursales.Open;
end;

procedure TFormExportarClientes.ExportarTxtExecute(Sender: TObject);
var n:string;
begin
  inherited;
  IF NOT (CDSClientes.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Clientes';
      SaveDialog1.DefaultExt:='TXT';
      if SaveDialog1.Execute Then
        DataToAscii.SaveToFile(SaveDialog1.FileName);
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormExportarClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSClientes.Close;
  CDSLdr.Close;
  CDSCondVenta.Close;
  CDSBuscaSucursales.Close;
  Action:=caFree;
end;

procedure TFormExportarClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormExportarClientes:=nil;
end;

procedure TFormExportarClientes.FormShow(Sender: TObject);
begin
  inherited;
 // Buscar.Execute;
end;

end.
