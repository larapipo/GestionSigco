unit UGarantiasEnvio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, rxToolEdit, RXDBCtrl, DBCtrls, Grids, DBGrids, StdCtrls, Mask,
  ComCtrls, Wwintl,  rxrxPlacemnt, wwDialog, wwidlg, Db, DBTables,
  ActnList, RXCtrls, Buttons, ToolWin, ExtCtrls, Provider, DBClient,
  wwclient, IBGenerator, Wwquery,  frxDBSet, frxClass;

type
  TFormGarantiaEnvios = class(TFormABMBase)
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Label17: TLabel;
    dbeObs1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    RxDBECodigo: TRxDBComboEdit;
    RxDBESucursal: TRxDBComboEdit;
    RxDBEDeposito: TRxDBComboEdit;
    dbeMuestraDeposito: TDBEdit;
    RxCTipoCpbte: TRxDBComboEdit;
    dbeFecha: TDBDateEdit;
    dbgSeries: TDBGrid;
    dbtCantidad: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    DSPGtiaCab: TDataSetProvider;
    QGtiaCab: TQuery;
    QGtiaCabID_RTO: TIntegerField;
    QGtiaCabFECHAENVIO: TDateTimeField;
    QGtiaCabLETRA: TStringField;
    QGtiaCabSUCRTO: TStringField;
    QGtiaCabNUMRTO: TStringField;
    QGtiaCabSUCURSAL: TIntegerField;
    QGtiaCabNROCPBTE: TStringField;
    QGtiaCabTIPOCPBTE: TStringField;
    QGtiaCabCLASECPBTE: TStringField;
    QGtiaCabOBS: TStringField;
    QGtiaCabDEPOSITO: TIntegerField;
    QGtiaCabPROVEEDOR: TStringField;
    QGtiaCabESTADO: TStringField;
    QGtiaCabUSUARIO: TStringField;
    QGtiaCabMUESTRAPROVEEDOR: TStringField;
    CDSGtiaCab: TClientDataSet;
    CDSGtiaCabID_RTO: TIntegerField;
    CDSGtiaCabFECHAENVIO: TDateTimeField;
    CDSGtiaCabLETRA: TStringField;
    CDSGtiaCabSUCRTO: TStringField;
    CDSGtiaCabNUMRTO: TStringField;
    CDSGtiaCabSUCURSAL: TIntegerField;
    CDSGtiaCabNROCPBTE: TStringField;
    CDSGtiaCabTIPOCPBTE: TStringField;
    CDSGtiaCabCLASECPBTE: TStringField;
    CDSGtiaCabOBS: TStringField;
    CDSGtiaCabDEPOSITO: TIntegerField;
    CDSGtiaCabPROVEEDOR: TStringField;
    CDSGtiaCabESTADO: TStringField;
    CDSGtiaCabUSUARIO: TStringField;
    CDSGtiaCabMUESTRAPROVEEDOR: TStringField;
    QGtiaCabMUESTRACOMPROBANTE: TStringField;
    QGtiaCabID_TIPOCOMPROBANTE: TIntegerField;
    QGtiaCabMUESTRASUCURSAL: TStringField;
    QGtiaCabMUESTRADEPOSITO: TStringField;
    CDSGtiaCabMUESTRACOMPROBANTE: TStringField;
    CDSGtiaCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSGtiaCabMUESTRASUCURSAL: TStringField;
    CDSGtiaCabMUESTRADEPOSITO: TStringField;
    CDSGtiaDet: TClientDataSet;
    DSPGtiaDet: TDataSetProvider;
    QGtiaDet: TQuery;
    IBGCab: TIBGenerator;
    DSGtiaDet: TDataSource;
    IBGDet: TIBGenerator;
    QGtiaDetID_RTO_DET: TIntegerField;
    QGtiaDetID_RTO_CAB: TIntegerField;
    QGtiaDetFECHA: TDateTimeField;
    QGtiaDetPROVEEDOR: TStringField;
    QGtiaDetCODIGO: TStringField;
    QGtiaDetDETALLE: TStringField;
    QGtiaDetUNIDAD: TStringField;
    QGtiaDetCANTIDAD: TFloatField;
    QGtiaDetNROCPBTE: TStringField;
    QGtiaDetDEPOSITO: TIntegerField;
    QGtiaDetCLASECPBTE: TStringField;
    QGtiaDetTIPOCPBTE: TStringField;
    QGtiaDetAFECTASTOCK: TStringField;
    QGtiaDetCON_NRO_SERIE: TStringField;
    CDSGtiaDetID_RTO_DET: TIntegerField;
    CDSGtiaDetID_RTO_CAB: TIntegerField;
    CDSGtiaDetFECHA: TDateTimeField;
    CDSGtiaDetPROVEEDOR: TStringField;
    CDSGtiaDetCODIGO: TStringField;
    CDSGtiaDetDETALLE: TStringField;
    CDSGtiaDetUNIDAD: TStringField;
    CDSGtiaDetCANTIDAD: TFloatField;
    CDSGtiaDetNROCPBTE: TStringField;
    CDSGtiaDetDEPOSITO: TIntegerField;
    CDSGtiaDetCLASECPBTE: TStringField;
    CDSGtiaDetTIPOCPBTE: TStringField;
    CDSGtiaDetAFECTASTOCK: TStringField;
    CDSGtiaDetCON_NRO_SERIE: TStringField;
    QGtiaSubDetalle: TQuery;
    DSPGtiaSubDet: TDataSetProvider;
    CDSGtiaSubDetalle: TClientDataSet;
    DSAjusteSubDetalle: TDataSource;
    IBGSubDet: TIBGenerator;
    QGtiaSubDetalleID: TIntegerField;
    QGtiaSubDetalleID_RTODET: TIntegerField;
    QGtiaSubDetalleID_RTOCAB: TIntegerField;
    QGtiaSubDetalleTIPOCPBTE: TStringField;
    QGtiaSubDetalleCLASECPBTE: TStringField;
    QGtiaSubDetalleFECHA: TDateTimeField;
    QGtiaSubDetalleNROCPBTE: TStringField;
    QGtiaSubDetalleCODIGOARTICULO: TStringField;
    QGtiaSubDetalleSERIE: TStringField;
    QGtiaSubDetalleDEPOSITO: TIntegerField;
    QGtiaSubDetalleTIPO: TStringField;
    CDSGtiaSubDetalleID: TIntegerField;
    CDSGtiaSubDetalleID_RTODET: TIntegerField;
    CDSGtiaSubDetalleID_RTOCAB: TIntegerField;
    CDSGtiaSubDetalleTIPOCPBTE: TStringField;
    CDSGtiaSubDetalleCLASECPBTE: TStringField;
    CDSGtiaSubDetalleFECHA: TDateTimeField;
    CDSGtiaSubDetalleNROCPBTE: TStringField;
    CDSGtiaSubDetalleCODIGOARTICULO: TStringField;
    CDSGtiaSubDetalleSERIE: TStringField;
    CDSGtiaSubDetalleDEPOSITO: TIntegerField;
    CDSGtiaSubDetalleTIPO: TStringField;
    QBuscaComprob: TQuery;
    wwBuscadorComprobantes: TwwLookupDialog;
    QComprob: TQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    BuscarProveedor: TAction;
    QProveedor: TQuery;
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    QSucursal: TQuery;
    QDeposito: TQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    BuscarTipoCpbte: TAction;
    BuscarSucursal: TAction;
    wwBuscadorSucursal: TwwLookupDialog;
    BuscarDeposito: TAction;
    wwBuscadorDeposito: TwwLookupDialog;
    BuscarArticulo: TAction;
    wwQStock: TwwQuery;
    wwQStockCODIGO_STK: TStringField;
    wwQStockDETALLE_STK: TStringField;
    wwQStockUNIDAD: TStringField;
    wwQStockCONTROLASTOCK: TStringField;
    wwQStockMUESTRAFISICO: TFloatField;
    wwQStockUNIDAD_COMPRA: TStringField;
    wwQStockCONTENIDO_COMPRA: TFloatField;
    wwQStockCONTROL_SERIE: TStringField;
    DSPStock: TDataSetProvider;
    wwCDSStock: TwwClientDataSet;
    wwCDSStockCODIGO_STK: TStringField;
    wwCDSStockDETALLE_STK: TStringField;
    wwCDSStockUNIDAD: TStringField;
    wwCDSStockCONTROLASTOCK: TStringField;
    wwCDSStockMUESTRAFISICO: TFloatField;
    wwCDSStockUNIDAD_COMPRA: TStringField;
    wwCDSStockCONTENIDO_COMPRA: TFloatField;
    wwCDSStockCONTROL_SERIE: TStringField;
    Imprimir: TAction;
    frGtia: TfrxReport;
    frDSGtiaCab: TfrxDBDataset;
    frDSGtiaDet: TfrxDBDataset;
    QBuscaNroSerie: TQuery;
    QBuscaNroSerieCODIGOSERIE: TStringField;
    QBuscaNroSerieCODIGO_STK: TStringField;
    QBuscaNroSerieFECHAINGRESO: TDateTimeField;
    QBuscaNroSerieID: TIntegerField;
    QBuscaNroSerieFECHAEGRESO: TDateTimeField;
    QNroSerie: TQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TDateTimeField;
    QNroSerieFECHAEGRESO: TDateTimeField;
    wwBuscadorSerie: TwwLookupDialog;
    BuscarSerie: TAction;
    lbCantidad: TLabel;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure CDSGtiaCabPROVEEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabNewRecord(DataSet: TDataSet);
    procedure CDSGtiaCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabSUCRTOSetText(Sender: TField; const Text: String);
    procedure CDSGtiaCabNUMRTOSetText(Sender: TField; const Text: String);
    procedure CDSGtiaCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSGtiaDetCODIGOSetText(Sender: TField; const Text: String);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbgSeriesEditButtonClick(Sender: TObject);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure CDSGtiaSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSGtiaDetNewRecord(DataSet: TDataSet);
    procedure CDSGtiaDetBeforeDelete(DataSet: TDataSet);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure CDSGtiaSubDetalleAfterDelete(DataSet: TDataSet);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DatoControl:String;
    CodigosSeries:TStringList;
    function ControlSerie:Boolean;
    procedure VerificadorDetalle;
    function AsignarProveedor(Dato:String):Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;

  end;

var
  FormGarantiaEnvios: TFormGarantiaEnvios;
  copias:integer;
PROCEDURE UltimoComprobante;

implementation

uses DMMainForm, UBuscadorProveedor, UBuscadorArticulos, UBuscadorCpbte;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMMain,FormGarantiaEnvios DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF (CDSGtiaCabLETRA.AsString <> '') AND (CDSGtiaCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSGtiaCabLETRA.AsString;
           spNumeroCpbte.ParamByName('Sucursal').Value    := CDSGtiaCabSUCURSAL.Value;
           spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSGtiaCabCLASECPBTE.Value;
           spNumeroCpbte.ParamByName('TipoComp').Value    := CDSGtiaCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
           spNumeroCpbte.ExecProc;
           IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
             BEGIN
               IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                 Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
               ELSE
                 Numero := 1;
               CDSGtiaCabSUCRTOSetText(CDSGtiaCabSUCRTO,IntToStr(Numero));
               IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                 Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
               ELSE
                 Numero := 1;
               CDSGtiaCabNUMRTOSetText(CDSGtiaCabNUMRTO,IntToStr(Numero));
             END;
           CDSGtiaCabTIPOCPBTE.Value  :=spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
           CDSGtiaCabCLASECPBTE.Value :=spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
           Copias := spNumeroCpbte.ParamByName('Copias').AsInteger;
           Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
           spNumeroCpbte.Close;
         END;
       CDSGtiaCabNROCPBTE.AsString := CDSGtiaCabLETRA.AsString +
       CDSGtiaCabSUCRTO.AsString +
       CDSGtiaCabNUMRTO.AsString;
    end;
END;

function TFormGarantiaEnvios.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
  //wwCDSAjusteDet.DisableControls;
  CDSGtiaDet.First;
  while not(CDSGtiaDet.Eof) and aux=True do
    begin
      aux:=True;
      if (CDSGtiaDetCON_NRO_SERIE.Value='S') then
        begin
          if (Abs(Int(CDSGtiaDetCantidad.Value))=CDSGtiaSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      CDSGtiaDet.Next;
    end;
  CDSGtiaDet.First;
  //wwCDSAjusteDet.EnableControls;
  Result:=Aux;
end;

procedure TFormGarantiaEnvios.VerificadorDetalle;
var puntero:TBookMark;
begin
  if CDSGtiaDet.RecordCount>0 Then
    begin
      puntero:=CDSGtiaDet.GetBookmark;
      CDSGtiaDet.First;
      CDSGtiaDet.DisableControls;
      while not(CDSGtiaDet.eof) do
        begin
          CDSGtiaDet.edit;
          CDSGtiaDetDEPOSITO.Value     :=CDSGtiaCabDEPOSITO.Value;
          CDSGtiaDetFECHA.Value        :=CDSGtiaCabFECHAENVIO.Value;
          CDSGtiaDetNROCPBTE.Value     :=CDSGtiaCabNROCPBTE.Value;
          CDSGtiaDet.Next;
        end;
      CDSGtiaDet.GotoBookmark(Puntero);
      CDSGtiaDet.FreeBookmark(puntero);
      CDSGtiaDet.EnableControls;
    end;

   if CDSGtiaSubDetalle.RecordCount>0 Then
    begin
      puntero:=CDSGtiaSubDetalle.GetBookmark;
      CDSGtiaSubDetalle.First;
      CDSGtiaSubDetalle.DisableControls;
      while not(CDSGtiaSubDetalle.eof) do
        begin
          CDSGtiaSubDetalle.edit;
          CDSGtiaSubDetalleFECHA.Value          :=CDSGtiaCabFECHAENVIO.Value;
          CDSGtiaSubDetalleNROCPBTE.Value       :=CDSGtiaCabNROCPBTE.Value;
          CDSGtiaSubDetalleCODIGOARTICULO.Value :=CDSGtiaDetCODIGO.Value;
          CDSGtiaSubDetalleDEPOSITO.Value       :=CDSGtiaCabDEPOSITO.Value;
          CDSGtiaSubDetalleNROCPBTE.Value       :=CDSGtiaCabNROCPBTE.Value;
          CDSGtiaSubDetalle.Next;
        end;
      CDSGtiaSubDetalle.GotoBookmark(Puntero);
      CDSGtiaSubDetalle.FreeBookmark(puntero);
      CDSGtiaSubDetalle.EnableControls;
    end;

end;




FUNCTION TFormGarantiaEnvios.AsignarProveedor(Dato: STRING): Boolean;
BEGIN
  QProveedor.Close;
  QProveedor.ParamByName('Codigo').Value := Dato;
  QProveedor.Open;
  IF NOT (QProveedor.Eof) THEN
    BEGIN
      CDSGtiaCabMUESTRAPROVEEDOR.AsString      := QProveedorNOMBRE.AsString;
      //asigno el comprobante segun condicoin de Inscripcion
      // si el cliente no tiene asignado un comprobante traigo el que le
      // corresponde por el tipo de Iva
      Result := True;
    END
  ELSE
    Result := False;
  QProveedor.Close;
END;


FUNCTION TFormGarantiaEnvios.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  QSucursal.Close;
  QSucursal.ParamByName('Codigo').Value := dato;
  QSucursal.Open;
  IF NOT (QSucursal.IsEmpty) THEN
    BEGIN
      CDSGtiaCabID_TIPOCOMPROBANTE.Clear;
      CDSGtiaCabMUESTRACOMPROBANTE.Clear;
      QBuscaComprob.close;
      QBuscaComprob.ParamByName('suc').Value:=Dato;
      QBuscaComprob.Open;
      if QBuscaComprob.RecordCount=1 Then
        begin
          CDSGtiaCabID_TIPOCOMPROBANTESetText(CDSGtiaCabID_TIPOCOMPROBANTE,QBuscaComprob.fieldByName('Id_comprobante').AsString);
        end;
      QBuscaComprob.Close;
      Result := True;
      CDSGtiaCabMUESTRASUCURSAL.Value := QSucursalDETALLE.Value;
    END
  ELSE
    Result := False;
  QSucursal.Close;
END;

FUNCTION TFormGarantiaEnvios.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSGtiaCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSGtiaCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSGtiaCabLETRA.Value              := QComprobLETRA.Value;
      CDSGtiaCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSGtiaCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSGtiaCabMUESTRACOMPROBANTE.Value := '';
      CDSGtiaCabLETRA.Value              := '';
      CDSGtiaCabTIPOCPBTE.Value          := '';
      CDSGtiaCabCLASECPBTE.Value         := '';
    END;
END;

FUNCTION TFormGarantiaEnvios.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  QDeposito.Close;
  QDeposito.ParamByName('Id').Value := Dato;
  QDeposito.Open;
  IF NOT (QDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSGtiaCabMUESTRADEPOSITO.Value := QDepositoNombre.Value;
      RxDBECodigo.SetFocus;
    END
  ELSE
    begin
      Result := False;
      CDSGtiaCabMUESTRADEPOSITO.Value := '';
    end;
  QDeposito.Close;
END;

FUNCTION TFormGarantiaEnvios.ASignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSGtiaDet.State = dsBrowse THEN
    CDSGtiaDet.Edit;
    BEGIN
      wwCDSStock.Close;
      wwCDSStock.Params.ParamByName('Codigo').Value   := Dato;
      wwCDSStock.Params.ParamByName('Deposito').Value := CDSGtiaCabDEPOSITO.Value;
      wwCDSStock.Open;
      IF NOT (wwCDSStock.IsEmpty) THEN
        BEGIN
          CDSGtiaDetDETALLE.AsString         := wwCDSStockDetalle_Stk.AsString;
          CDSGtiaDetUNIDAD.Value             := wwCDSStockUnidad.Value;
          CDSGtiaDetAFECTASTOCK.Value        := wwCDSStockCONTROLASTOCK.Value;
          CDSGtiaDetCON_NRO_SERIE.Value      := wwCDSStockCONTROL_SERIE.Value;
          Result := True;
        END
      ELSE
        Result := False;
    END;
END;


procedure TFormGarantiaEnvios.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       CDSGtiaCabPROVEEDORSetText(CDSGtiaCabPROVEEDOR, FormBuscadorProveedor.Codigo);
     end;
end;

procedure TFormGarantiaEnvios.CDSGtiaCabPROVEEDORSetText(Sender: TField;
  const Text: String);
VAR
  Aux: STRING;
BEGIN
  if (Text<>#13) and (Text<>'') Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignarProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
    end;
END;

procedure TFormGarantiaEnvios.CDSGtiaCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaCabID_RTO.Value:=IBGCab.Increment(1);
  CDSGtiaCabFECHAENVIO.Value :=Date;
  CDSGtiaCabSUCURSALSetText(CDSGtiaCabSUCURSAL,IntToStr(SucursalPorDefecto));
  CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,IntToStr(DepositoPorDefecto));
  CDSGtiaCabUSUARIO.Value:=DMMain.UsuarioActivo;
end;

procedure TFormGarantiaEnvios.CDSGtiaCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
 if (text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TFormGarantiaEnvios.CDSGtiaCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
 if Text[1]<>#13 Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
      IF CDSGtiaCab.State=dsInsert Then
        UltimoComprobante;
     end;
end;

procedure TFormGarantiaEnvios.CDSGtiaCabSUCRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSGtiaCabNroCpbte.AsString := CDSGtiaCabLETRA.AsString +
  CDSGtiaCabSUCRTO.AsString + CDSGtiaCabNUMRTO.AsString;
end;

procedure TFormGarantiaEnvios.CDSGtiaCabNUMRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSGtiaCabNroCpbte.AsString := CDSGtiaCabLETRA.AsString +
  CDSGtiaCabSUCRTO.AsString +
  CDSGtiaCabNUMRTO.AsString;
end;

procedure TFormGarantiaEnvios.CDSGtiaCabDEPOSITOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
 if (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END;
     end;
end;

procedure TFormGarantiaEnvios.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CodigosSeries:=TStringList.Create;
  CodigosSeries.Clear;
  AddClientDataSet(CDSGtiaCab,DSPGtiaCab);
  AddClientDataSet(CDSGtiaDet,DSPGtiaDet);
  AddClientDataSet(CDSGtiaSubDetalle,DSPGtiaSubDet);
  CDSGtiaCab.Open;
  CDSGtiaDet.Open;
  CDSGtiaSubDetalle.Open;
  Tabla:='RTOGTIA_ENVIO_CAB';
  Campo:='id_rto';
end;

procedure TFormGarantiaEnvios.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  QBuscaComprob.Close;
  QBuscaComprob.Open;
  IF NOT (QBuscaComprob.IsEmpty) THEN
    BEGIN
      IF wwBuscadorComprobantes.Execute THEN
        if wwBuscadorComprobantes.LookupTable.FieldByName('id_comprobante').AsString<>'' Then
          CDSGtiaCabID_TIPOCOMPROBANTESetText(CDSGtiaCabID_TIPOCOMPROBANTE, wwBuscadorComprobantes.LookupTable.FieldByName('id_comprobante').AsString);
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  QBuscaComprob.Close;

end;

procedure TFormGarantiaEnvios.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGtiaCabSUCURSAL.Clear;
      CDSGtiaCabID_TIPOCOMPROBANTE.Clear;
      CDSGtiaCabMUESTRASUCURSAL.Clear;
      CDSGtiaCabMUESTRACOMPROBANTE.Clear;
      CDSGtiaCabLETRA.Clear;
      CDSGtiaCabSUCRTO.Clear;
      CDSGtiaCabNUMRTO.Clear;
    end;
end;

procedure TFormGarantiaEnvios.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DMMain.QSucursales.Close;
  DMMain.QSucursales.Open;
  IF wwBuscadorSucursal.Execute THEN
    if wwBuscadorSucursal.LookupTable.FieldByName('codigo').AsString<>'' Then
      CDSGtiaCabSUCURSALSetText(CDSGtiaCabSUCURSAL, wwBuscadorSucursal.LookupTable.fieldByName('Codigo').AsString);
  DMMain.QSucursales.Close;

end;

procedure TFormGarantiaEnvios.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGtiaCabSUCURSAL.Clear;
      CDSGtiaCabID_TIPOCOMPROBANTE.Clear;
      CDSGtiaCabMUESTRASUCURSAL.Clear;
      CDSGtiaCabMUESTRACOMPROBANTE.Clear;
      CDSGtiaCabLETRA.Clear;
      CDSGtiaCabSUCRTO.Clear;
      CDSGtiaCabNUMRTO.Clear;
    end;
end;

procedure TFormGarantiaEnvios.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DMMain.QDepositos.Close;
  DMMain.QDepositos.Open;
  if wwBuscadorDeposito.Execute Then
    if wwBuscadorDeposito.LookupTable.FieldByName('Id').AsString<>'' Then
        CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,wwBuscadorDeposito.LookupTable.FieldByName('Id').AsString);
  DMMain.QDepositos.Close;
end;

procedure TFormGarantiaEnvios.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGtiaCabPROVEEDOR.Clear;
      CDSGtiaCabMUESTRAPROVEEDOR.Clear;
    end;
end;

procedure TFormGarantiaEnvios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormGarantiaEnvios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGarantiaEnvios:=nil;
end;

procedure TFormGarantiaEnvios.AgregarExecute(Sender: TObject);
begin
  CDSGtiaCab.Close;
  CDSGtiaCab.Params.ParamByName('id').Clear;
  CDSGtiaCab.Open;
  CDSGtiaDet.Close;
  CDSGtiaDet.Params.ParamByName('id').Clear;
  CDSGtiaDet.OPen;
  CDSGtiaSubDetalle.Close;
  CDSGtiaSubDetalle.Params.ParamByName('id').Clear;
  CDSGtiaSubDetalle.Open;
  inherited;
  CodigosSeries.Clear;
  RxDBECodigo.SetFocus;

end;

procedure TFormGarantiaEnvios.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
 if (dbeFecha.Text='') or (dbeSucursal.Text='') or
     (CDSGtiaCabMUESTRACOMPROBANTE.AsString='') or (dbeSuc.Text='') or
     (dbeNumero.Text='') or (dbeMuestraDeposito.Text='') then
  begin
    ShowMessage('Faltan datos en la cabecera.....!!!');
    dbeFecha.SetFocus;
  end;
end;

procedure TFormGarantiaEnvios.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin

  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 3) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
    //  DBGrillaDetalle.DataSource.DataSet.Edit;
      IF DBGrillaDetalle.SelectedField = CDSGtiaDetCODIGO THEN
        BuscarArticulo.Execute;
    END;

end;

procedure TFormGarantiaEnvios.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
  begin
    IF CDSGtiaDet.State = dsBrowse THEN
      CDSGtiaDet.Edit;
    CDSGtiaDetCodigoSetText(CDSGtiaDetCodigo, FormBuscadorArticulos.Codigo);
  end;
end;

procedure TFormGarantiaEnvios.CDSGtiaDetCODIGOSetText(Sender: TField;
  const Text: String);
VAR S: STRING;
begin
  If CDSGtiaDet.State=dsBrowse Then
    CDSGtiaDet.edit;
  DMMain.QConsultaCodigoBarra.Close;
  DMMain.QConsultaCodigoBarra.ParamByName('CodigoBarra').AsString:=Text;
  DMMain.QConsultaCodigoBarra.Open;
  If DMMain.QConsultaCodigoBarra.Fields[0].AsString='' Then
    begin
      // BUsco por el serie ...
      DMMain.QConsultaCodigoSerie.Close;
      DMMain.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=Text;
      DMMain.QConsultaCodigoSerie.Open;
      If DMMain.QConsultaCodigoSerie.Fields[0].AsString='' Then
        begin
          Sender.AsString:=Text;
          DMMain.EncontroCodigoBarra:=False;
        end
      else
        begin
         Sender.AsString:=DMMain.QConsultaCodigoSerie.Fields[0].AsString;
         DMMain.EncontroCodigoBarra:=True;
        end;
      DMMain.QConsultaCodigoSerie.Close;
//      Sender.AsString:=Text;
//      DMMain.EncontroCodigoBarra:=False;
    end
  else
    begin
      Sender.AsString:=DMMain.QConsultaCodigoBarra.Fields[0].AsString;
      DMMain.EncontroCodigoBarra:=True;
    end;
  DMMain.QConsultaCodigoBarra.Close;

  S:=Sender.AsString;
  S:=Copy('00000000', 1, 8 - Length(S)) + S;
  Sender.AsString:=S;
  IF AsignarArticulo(s) = False THEN
    BEGIN
     // Busqueda por codigo
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
      FormBuscadorArticulos.CampoNro          := 0;
      FormBuscadorArticulos.Param1:=-1;
      FormBuscadorArticulos.Param2:=-1;
      FormBuscadorArticulos.Dato              := Text;
      FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        begin
          IF CDSGtiaDet.State = dsBrowse THEN
            CDSGtiaDet.Edit;
          CDSGtiaDetCODIGOSetText(CDSGtiaDetCodigo,FormBuscadorArticulos.Codigo);
        end
      else
        Sender.AsString:='';
    END;
  if DMMain.EncontroCodigoBarra Then
    DBGrillaDetalle.OnKeyPress(DBGrillaDetalle,Enter);



end;

procedure TFormGarantiaEnvios.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormGarantiaEnvios.ConfirmaExecute(Sender: TObject);
VAR Control:String;
begin
  DMMain.QOpciones.Close;
  DMMain.QOpciones.ParamByName('Opcion').Value:='CONTROLSERIE';
  DMMain.QOpciones.Open;
  Control:=DMMain.QOpciones.Fields[0].AsString[1];
  DMMain.QOpciones.Close;
  if (dbeFecha.Text<>'') and (dbeSucursal.Text<>'') and
     (CDSGtiaCabMUESTRACOMPROBANTE.AsString<>'') and (dbeSuc.Text<>'') and
     (dbeNumero.Text<>'') and (dbeMuestraDeposito.Text<>'') then
    begin
      if (Control='S') and (Not(ControlSerie))  then
          RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');
      CDSGtiaCab.Post;
      if CDSGtiaDet.State<>dsBrowse Then
        CDSGtiaDet.Post;
      if CDSGtiaSubDetalle.State<>dsBrowse Then
        CDSGtiaSubDetalle.Post;
      VerificadorDetalle;
      DatoNew:=IntToStr(CDSGtiaCabID_RTO.Value);
      TipoCpbte:=CDSGtiaCabTIPOCPBTE.Value;
      inherited;
      Recuperar.Execute;
      IF (Imprime='S') then
        if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
          Imprimir.Execute;// ShowMessage('hacer impresion');//   Imprimir.Execute;
        btNuevo.SetFocus;
     end
   else
     BEGIN
       ShowMessage('Datos en la Cabecera Incompletos o depósitos mal cargados....');
       pnCabecera.Enabled := True;
       dbeFecha.SetFocus;
     END;
end;

procedure TFormGarantiaEnvios.ImprimirExecute(Sender: TObject);
begin
  inherited;
  DMMain.QOpciones.Close;
  DMMain.QOpciones.ParamByName('opcion').Value:='REPORTES';
  DMMain.QOpciones.Open;

  QComprob.Close;
  QComprob.ParamByName('id').Value :=CDSGtiaCabID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:=CDSGtiaCabSUCURSAL.Value;
  QComprob.Open;
  frGtia.ChangePrinter(prDefault,PrCpbte);

  frGtia.PrintOptions.Copies := QComprobCOPIAS.Value;
  frGtia.LoadFromFile(DMMain.QOpciones.Fields[0].AsString+'\'+QComprobREPORTE.AsString);

  DMMain.QOpciones.Close;
  QComprob.Close;

  //  frFactura.PrepareReport;
  frGtia.ShowReport;
  btNuevo.SetFocus;
end;

procedure TFormGarantiaEnvios.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 28;
  FormBuscaCpbte.TipoCpbte1:='GE';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    begin
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;
end;

procedure TFormGarantiaEnvios.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGtiaCab.Close;
  CDSGtiaCab.Params.ParamByName('id').Value    :=StrToInt(DatoNew);
  CDSGtiaCab.Open;
  CDSGtiaDet.Close;
  CDSGtiaDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSGtiaDet.OPen;
  CDSGtiaSubDetalle.Close;
  CDSGtiaSubDetalle.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSGtiaSubDetalle.Open;
  CDSGtiaDet.First;
  while not(CDSGtiaDet.Eof) do
    begin
      CDSGtiaSubDetalle.First;
      while Not(CDSGtiaSubDetalle.Eof) do
        begin
           CodigosSeries.Add(CDSGtiaSubDetalleSERIE.Value);
           CDSGtiaSubDetalle.Next;
        end;
      CDSGtiaDet.Next;
    end;
  CDSGtiaDet.First;
  pnPrincipal.Enabled:=true;
 // pnDetalle.Enabled:=true;
  pnCabecera.Enabled:=False;
  DatoNew:=''+DatoNew+'';
end;

procedure TFormGarantiaEnvios.dbgSeriesEditButtonClick(Sender: TObject);
begin
  inherited;
  QBuscaNroSerie.Close;
  QBuscaNroSerie.ParamByName('codigo').Value  :=CDSGtiaDetCODIGO.Value;
  QBuscaNroSerie.ParamByName('deposito').Value:=CDSGtiaDetDEPOSITO.Value;
  QBuscaNroSerie.Open;
  IF wwBuscadorSerie.Execute THEN
    if wwBuscadorSerie.LookupTable.fieldByName('codigoserie').AsString<>'' Then
      CDSGtiaSubDetalleSERIESetText(CDSGtiaSubDetalleSERIE,wwBuscadorSerie.LookupTable.fieldByName('codigoserie').AsString);
  QBuscaNroSerie.Close;

end;

procedure TFormGarantiaEnvios.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;
end;

procedure TFormGarantiaEnvios.CDSGtiaSubDetalleAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSGtiaSubDetalle.RecordCount);
  CodigosSeries.Add(CDSGtiaSubDetalleSERIE.Value);
end;

procedure TFormGarantiaEnvios.CDSGtiaSubDetalleBeforeDelete(
  DataSet: TDataSet);
var i:Integer;
begin
  inherited;
  i:=CodigosSeries.IndexOf(CDSGtiaSubDetalleSERIE.AsString);
  CodigosSeries.Delete(I);
 end;

procedure TFormGarantiaEnvios.CDSGtiaSubDetalleBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if ((CDSGtiaSubDetalle.RecordCount+1)> Abs(CDSGtiaDetCantidad.Value))
  or (CDSGtiaDetCON_NRO_SERIE.Value='N') Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los Ingresados ...')
    end;

end;

procedure TFormGarantiaEnvios.CDSGtiaSubDetalleBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DatoControl:=CDSGtiaSubDetalleSERIE.Value;
  if CDSGtiaSubDetalleSERIE.AsString='' Then
    begin
      CDSGtiaSubDetalle.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormGarantiaEnvios.CDSGtiaSubDetalleNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSGtiaSubDetalleID.Value            :=IBGSubDet.Increment(1);
  CDSGtiaSubDetalleID_RTODET.Value     :=CDSGtiaDetID_RTO_DET.Value;
  CDSGtiaSubDetalleID_RTOCAB.Value     :=CDSGtiaCabID_RTO.Value;
  CDSGtiaSubDetalleTIPOCPBTE.Value     :=CDSGtiaCabTIPOCPBTE.Value;
  CDSGtiaSubDetalleCLASECPBTE.Value    :=CDSGtiaCabCLASECPBTE.Value;
  CDSGtiaSubDetalleFECHA.Value         :=CDSGtiaCabFECHAENVIO.Value;
  CDSGtiaSubDetalleNROCPBTE.Value      :=CDSGtiaCabNROCPBTE.Value;
  CDSGtiaSubDetalleCODIGOARTICULO.Value:=CDSGtiaDetCODIGO.Value;
  CDSGtiaSubDetalleDEPOSITO.Value      :=CDSGtiaCabDEPOSITO.Value;
  if CDSGtiaDetCANTIDAD.Value>0 Then
    CDSGtiaSubDetalleTIPO.Value:='I'
  ELSE
    CDSGtiaSubDetalleTIPO.Value:='E';

end;

procedure TFormGarantiaEnvios.CDSGtiaSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:Integer;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      //UpperCase(Text);
      i:=CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end;
      if CDSGtiaSubDetalle.State=dsBrowse Then
        CDSGtiaSubDetalle.Append;
      Sender.AsString:=UpperCase(Text);
      if CDSGtiaDetCON_NRO_SERIE.Value='S' Then
        begin
          if CDSGtiaDetCANTIDAD.Value>0 Then  // si es de ingreso
            begin
               QNroSerie.Close;
               QNroSerie.ParamByName('codigo').Value     :=CDSGtiaDetCodigo.Value;
               QNroSerie.ParamByName('codigoserie').Value:=Sender.AsString;
               QNroSerie.ParamByName('deposito').Value   :=CDSGtiaDetDeposito.Value;
               QNroSerie.Open;
               IF (QNroSerie.Fields[0].AsString='')THEN
                 BEGIN
                   ShowMessage('Codigo Serie Inexistente, o en otro depósito, o ya fué entregado...');
                   Sender.Clear;
                   CDSGtiaSubDetalleSERIE.AsString:='';
                 END;
               QNroSerie.Close;
            end;
        end;
    end;

end;


procedure TFormGarantiaEnvios.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled          :=(DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  DBGrillaDetalle.ReadOnly  :=DSBase.DataSet.State IN [dsBrowse];
  dbgSeries.ReadOnly        :=DSBase.DataSet.State IN [dsBrowse];
  pnPrincipal.Enabled       :=True;
  pnCabecera.Enabled        :=DSBase.DataSet.State=dsInsert;
 
end;

procedure TFormGarantiaEnvios.CDSGtiaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaDetID_RTO_DET.Value  :=IBGDet.Increment(1);
  CDSGtiaDetID_RTO_CAB.Value  :=CDSGtiaCabID_RTO.Value;
  CDSGtiaDetFECHA.Value       :=CDSGtiaCabFECHAENVIO.Value;
  CDSGtiaDetDEPOSITO.value    :=CDSGtiaCabDEPOSITO.Value;
  CDSGtiaDetTIPOCPBTE.Value   :=CDSGtiaCabTIPOCPBTE.Value;
  CDSGtiaDetCLASECPBTE.Value  :=CDSGtiaCabCLASECPBTE.Value;
  CDSGtiaDetNROCPBTE.Value    :=CDSGtiaCabNROCPBTE.Value;
  CDSGtiaDetCANTIDAD.Value    :=0;
end;

procedure TFormGarantiaEnvios.CDSGtiaDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaSubDetalle.First;
  while Not(CDSGtiaSubDetalle.Eof) do
    begin
      CDSGtiaSubDetalle.Delete;
      CDSGtiaSubDetalle.Next;
    end;
end;

procedure TFormGarantiaEnvios.BuscarSerieExecute(Sender: TObject);
var i:byte;
begin
  if (CDSGtiaDetCON_NRO_SERIE.Value='S') Then
    begin
      QBuscaNroSerie.Close;
      QBuscaNroSerie.SQL.Clear;
      QBuscaNroSerie.SQL.Add('select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                             'where  (ss.codigo_stk=:codigo  and  ss.id_cpbte_egreso is null)  and ( ss.deposito=:deposito or  :deposito = -1 ) ');
      DMMain.QOpciones.Close;
      DMMain.QOpciones.ParamByName('opcion').Value:='SERIEDEPOSITO';
      DMMain.QOpciones.Open;
      if DMMain.QOpciones.Fields[0].AsString[1]='S' Then
        QBuscaNroSerie.ParamByName('deposito').Value:= -1
      else
        QBuscaNroSerie.ParamByName('deposito').Value:=CDSGtiaDetDeposito.Value;
      DMMain.QOpciones.Close;
      wwBuscadorSerie.LookupTable:=QBuscaNroSerie;
  //    DatosVentas.QBuscaNroSerie.Close;
      QBuscaNroSerie.ParamByName('codigo').Value  :=CDSGtiaDetCODIGO.Value;
      QBuscaNroSerie.Open;

      QBuscaNroSerie.FieldList.Clear;
      for i:= 0 to QBuscaNroSerie.FieldCount-1 do
        wwBuscadorSerie.Selected.Add(QBuscaNroSerie.Fields[i].FieldName + #9 + IntToStr(QBuscaNroSerie.Fields[i].DisplayWidth) + #9 +
          QBuscaNroSerie.Fields[i].DisplayLabel);

      IF wwBuscadorSerie.Execute THEN
        if wwBuscadorSerie.LookupTable.fieldByName('codigoserie').AsString<>'' Then
          CDSGtiaSubDetalleSERIESetText(CDSGtiaSubDetalleSERIE,wwBuscadorSerie.LookupTable.fieldByName('codigoserie').AsString);
      QBuscaNroSerie.Close;
    end;

end;

procedure TFormGarantiaEnvios.CDSGtiaSubDetalleAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSGtiaSubDetalle.RecordCount);
end;

procedure TFormGarantiaEnvios.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 3;
end;

end.
