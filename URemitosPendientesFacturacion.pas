unit URemitosPendientesFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvExControls, JvDBLookup, StdCtrls, Mask,  
  Grids, DBGrids, JvComponentBase, ImgList, Data.FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, DataExport, DataToXLS, Data.DB, frxClass, frxDBSet, frxExportPDF,
  Datasnap.DBClient, Datasnap.Provider, Vcl.ComCtrls, JvExDBGrids, JvDBGrid,
  JvExMask, JvToolEdit, Vcl.ExtCtrls, JvLookOut, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvFormPlacement, System.Actions, Vcl.ActnList, JvLabel,
  JvDBControls, JvGradient, Vcl.Buttons, Vcl.ToolWin,VirtualUi_SDK,
  frxExportBaseDialog, System.ImageList, frCoreClasses, AdvSmoothButton;

type
  TFormRtoPendientes = class(TFormABMBase)
    dbgDet: TDBGrid;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    DSRtoCab: TDataSource;
    DSRtoDet: TDataSource;
    BuscarCliente: TAction;
    frxPDFExport1: TfrxPDFExport;
    frReporte: TfrxReport;
    frxDBCab: TfrxDBDataset;
    frxDBDet: TfrxDBDataset;
    BitBtn1: TBitBtn;
    frxDBArticulos: TfrxDBDataset;
    pnCabecera: TPanel;
    Label1: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    edNombreCliente: TEdit;
    chTodosLosClientes: TCheckBox;
    Splitter1: TSplitter;
    dbgRtos: TDBGrid;
    Splitter2: TSplitter;
    dbgArticulos: TDBGrid;
    Splitter3: TSplitter;
    DSRtos: TDataSource;
    DSArtPendientes: TDataSource;
    frxDBRtos: TfrxDBDataset;
    Label2: TLabel;
    VerRemito: TAction;
    ceCliente: TJvComboEdit;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
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
    CDSClientesLIMITE_CREDITO: TFMTBCDField;
    CDSClientesSALDOINICIAL: TFMTBCDField;
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
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
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
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    DSPSucursales: TDataSetProvider;
    CDSSucursales: TClientDataSet;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    DSSucursal: TDataSource;
    CDSRtoCab: TClientDataSet;
    DSPRtoCab: TDataSetProvider;
    CDSRtoCabID_RTO: TIntegerField;
    CDSRtoCabTIPOCPBTE: TStringField;
    CDSRtoCabCLASECPBTE: TStringField;
    CDSRtoCabNROCPBTE: TStringField;
    CDSRtoCabCODIGO: TStringField;
    CDSRtoCabLETRARTO: TStringField;
    CDSRtoCabSUCRTO: TStringField;
    CDSRtoCabNUMERORTO: TStringField;
    CDSRtoCabNOMBRE: TStringField;
    CDSRtoCabRAZONSOCIAL: TStringField;
    CDSRtoCabDIRECCION: TStringField;
    CDSRtoCabCPOSTAL: TStringField;
    CDSRtoCabLOCALIDAD: TStringField;
    CDSRtoCabTIPOIVA: TIntegerField;
    CDSRtoCabCUIT: TStringField;
    CDSRtoCabLISTAPRECIO: TIntegerField;
    CDSRtoCabCONDICIONVTA: TIntegerField;
    CDSRtoCabANULADO: TStringField;
    CDSRtoCabNROFACT: TStringField;
    CDSRtoCabIMPRESO: TStringField;
    CDSRtoCabOBSERVACION1: TStringField;
    CDSRtoCabOBSERVACION2: TStringField;
    CDSRtoCabCPTE_MANUAL: TStringField;
    CDSRtoCabSUCURSAL: TIntegerField;
    CDSRtoCabZONA: TIntegerField;
    CDSRtoCabLDR: TIntegerField;
    CDSRtoCabDEPOSITO: TIntegerField;
    CDSRtoCabCALCULA_SOBRETASA: TStringField;
    CDSRtoCabDESGLOZAIVA: TStringField;
    CDSRtoCabNROENTREGA: TIntegerField;
    CDSRtoCabINGRESA_A_CTACTE: TStringField;
    CDSRtoCabINGRESA_LIBRO_IVA: TStringField;
    CDSRtoCabIDFACTURA: TIntegerField;
    CDSRtoCabVENDEDOR: TStringField;
    CDSRtoCabUSUARIO: TStringField;
    CDSRtoCabRENGLONES: TSmallintField;
    CDSRtoCabNOTAPEDIDO_ID: TIntegerField;
    CDSRtoCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSRtoCabID_TRANSPORTE: TIntegerField;
    CDSRtoCabTAREAS: TStringField;
    CDSRtoCabPRESUPUESTO_ID: TIntegerField;
    CDSRtoCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSRtoCabNOTAVTA_ID: TIntegerField;
    CDSRtoCabNOTAVTA_NROCPBTE: TStringField;
    CDSRtoCabMUESTRASUCURSAL: TStringField;
    CDSRtoDet: TClientDataSet;
    DSPRtoDet: TDataSetProvider;
    CDSRtoDetID: TIntegerField;
    CDSRtoDetID_CABRTO: TIntegerField;
    CDSRtoDetTIPOCPBTE: TStringField;
    CDSRtoDetCLASECPBTE: TStringField;
    CDSRtoDetNROCPBTE: TStringField;
    CDSRtoDetCODIGOARTICULO: TStringField;
    CDSRtoDetDETALLE: TStringField;
    CDSRtoDetUNIDAD: TStringField;
    CDSRtoDetDESGLOZAIVA: TStringField;
    CDSRtoDetMODO_GRAVAMEN: TStringField;
    CDSRtoDetTIPOIVA_TASA: TIntegerField;
    CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtoDetDEPOSITO: TIntegerField;
    CDSRtoDetAFECTA_STOCK: TStringField;
    CDSRtoDetCALCULA_SOBRETASA: TStringField;
    CDSRtoDetGRAVADO_IB: TStringField;
    CDSRtoDetID_MONEDA: TIntegerField;
    CDSRtoDetLOTE: TIntegerField;
    CDSRtoDetOBSERVACION: TStringField;
    CDSRtoDetNOTAVENTA_ID: TIntegerField;
    CDSRtoDetNOTAVENTA_ID_DET: TIntegerField;
    CDSRtos: TClientDataSet;
    DSPRtos: TDataSetProvider;
    CDSRtosCODIGO: TStringField;
    CDSRtosNOMBRE: TStringField;
    CDSRtosNROCPBTE: TStringField;
    CDSArtPenidentesFact: TClientDataSet;
    DSPArtPendientesFac: TDataSetProvider;
    CDSArtPenidentesFactCODIGOARTICULO: TStringField;
    CDSArtPenidentesFactDETALLE: TStringField;
    CDSRtoDetIVA_UNITARIO: TFloatField;
    dbgCab: TJvDBGrid;
    ExportarExcel: TAction;
    JvExpressButton1: TJvExpressButton;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    btExcel: TBitBtn;
    CDSRtosCLASECPBTE: TStringField;
    frPendientes: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ImprimirDetalle: TAction;
    CDSRtosCODIGOARTICULO: TStringField;
    CDSRtosDETALLE: TStringField;
    CDSRtosUNITARIO_TOTAL: TFloatField;
    ImprimirDetalle1: TMenuItem;
    BitBtn2: TBitBtn;
    ToolButton1: TToolButton;
    Recalcular: TAction;
    QRtoCab: TFDQuery;
    CDSRtoCabTOTAL: TFloatField;
    QRtoDet: TFDQuery;
    CDSRtoDetCANTIDAD: TFloatField;
    CDSRtoDetCOSTO_GRAVADO: TFloatField;
    CDSRtoDetCOSTO_EXENTO: TFloatField;
    CDSRtoDetCOSTO_TOTAL: TFloatField;
    CDSRtoDetUNITARIO_GRAVADO: TFloatField;
    CDSRtoDetUNITARIO_EXENTO: TFloatField;
    CDSRtoDetUNITARIO_TOTAL: TFloatField;
    CDSRtoDetTOTAL_GRAVADO: TFloatField;
    CDSRtoDetIVA_TOTAL: TFloatField;
    CDSRtoDetTOTAL_EXENTO: TFloatField;
    CDSRtoDetTOTAL: TFloatField;
    CDSRtoDetIVA_TASA: TFloatField;
    CDSRtoDetIVA_SOBRETASA: TFloatField;
    CDSRtoDetDESCUENTO: TFloatField;
    QSucursales: TFDQuery;
    QRtos: TFDQuery;
    CDSRtosTOTAL: TFloatField;
    CDSRtosCANTIDAD: TFloatField;
    QArtPendientesFact: TFDQuery;
    CDSArtPenidentesFactCANTIDAD: TFloatField;
    CDSRtoCabFECHAVTA: TSQLTimeStampField;
    CDSRtoCabFECHAVTO: TSQLTimeStampField;
    CDSRtoCabFECHA_HORA: TSQLTimeStampField;
    CDSRtoDetFECHAVTA: TSQLTimeStampField;
    CDSRtosFECHAVTA: TSQLTimeStampField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chTodosLosClientesClick(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure VerRemitoExecute(Sender: TObject);
    procedure dbgCabTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ExportarExcelExecute(Sender: TObject);
    procedure ImprimirDetalleExecute(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure CDSRtoCabAfterScroll(DataSet: TDataSet);
    procedure dbcSucursalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRtoPendientes: TFormRtoPendientes;

implementation

uses UBuscadorClientes, URemitos, UDMain_FD;

{$R *.dfm}

procedure TFormRtoPendientes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRtoPendientes.fr3');
  if edNombreCliente.Text='' then
    frReporte.Variables['Cliente']:='''Todos los Clientes'''
  else
    frReporte.Variables['Cliente']:=''''+edNombreCliente.Text+'''';
  frReporte.ShowReport;
end;

procedure TFormRtoPendientes.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
          Buscar.Execute;
        END;
    end;


end;

procedure TFormRtoPendientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSRtoCab.Close;
  CDSRtoCab.Params.ParamByName('tipo').Value     :='RE';
  CDSRtoCab.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;

  if (chTodosLosClientes.Checked=True) then
    CDSRtoCab.Params.ParamByName('codigo').Value:='******'
  else
    CDSRtoCab.Params.ParamByName('codigo').Value:=ceCliente.Text;

  CDSRtoCab.Open;

  CDSRtoDet.Close;
  CDSRtoDet.Params.ParamByName('id').Value:=CDSRtoCabID_RTO.Value;
  CDSRtoDet.Open;

  CDSRtos.Close;
  if (chTodosLosClientes.Checked=True) then
    CDSRtos.Params.ParamByName('codigo').Value:='******'
  else
    CDSRtos.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSRtos.Open;

  CDSArtPenidentesFact.Close;
  if (chTodosLosClientes.Checked=True) then
    CDSArtPenidentesFact.Params.ParamByName('codigo').Value:='******'
  else
    CDSArtPenidentesFact.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSArtPenidentesFact.Open;

end;

procedure TFormRtoPendientes.CDSRtoCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSRtoDet.Close;
  CDSRtoDet.Params.ParamByName('id').Value:=CDSRtoCabID_RTO.Value;
  CDSRtoDet.Open;
end;

procedure TFormRtoPendientes.ceClienteKeyPress(Sender: TObject; var Key: Char);
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;
end;

procedure TFormRtoPendientes.chTodosLosClientesClick(Sender: TObject);
begin
  inherited;
  if ( chTodosLosClientes.Checked=True ) then
    begin
      ceCliente.Color  :=clBtnFace;
      ceCliente.Enabled:=False;
      ceCliente.Clear;
      edNombreCliente.Clear;
    end
  else
    begin
      ceCliente.Color  :=clWindow;
      ceCliente.Enabled:=True;
    end;
  Buscar.Execute;
end;

procedure TFormRtoPendientes.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormRtoPendientes.dbgCabTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgCab.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormRtoPendientes.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSRtoCab.IsEmpty) then
    begin
      SaveDialog1.FileName  :='Remitos';
      SaveDialog1.DefaultExt:='XLS';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
               VirtualUI.DownloadFile(SaveDialog1.FileName);
         end;
    end;
end;

procedure TFormRtoPendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRtoPendientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(Sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSSucursales.Open;
end;

procedure TFormRtoPendientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRtoPendientes:=nil;
end;

procedure TFormRtoPendientes.ImprimirDetalleExecute(Sender: TObject);
begin
  inherited;
  frReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRtoPendientesDetalle.fr3');
  frReporte.Variables['Cliente']:=''''+edNombreCliente.Text+'''';
  frReporte.ShowReport;
end;

procedure TFormRtoPendientes.RecalcularExecute(Sender: TObject);
begin
  inherited;
  if (chTodosLosClientes.Checked=False) and (CDSRtoCab.IsEmpty=False) then
    begin
      if Not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(self);
      CDSRtoCab.First;

      while Not(CDSRtoCab.Eof) do
        begin
          FormRemitos.DatoNew   :=CDSRtoCabID_RTO.AsString;
          FormRemitos.TipoCpbte :='RE';
          FormRemitos.Recuperar.Execute;
          FormRemitos.RecalcuoPrecios.Execute;
          FormRemitos.Confirma.Execute;
          CDSRtoCab.Next;
        end;
       FormRemitos.Salir.Execute;       
    end;
  Buscar.Execute;
end;

procedure TFormRtoPendientes.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

procedure TFormRtoPendientes.VerRemitoExecute(Sender: TObject);
begin
  inherited;
  if CDSRtoCabID_RTO.AsString<>'' then
    begin
      if Not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(self);
      FormRemitos.DatoNew:=CDSRtoCabID_RTO.AsString;
      FormRemitos.TipoCpbte:='RE';
      FormRemitos.Recuperar.Execute;
    end;
end;

end.