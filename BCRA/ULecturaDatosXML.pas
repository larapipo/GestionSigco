unit ULecturaDatosXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, xmldom, XMLIntf, msxmldom, XMLDoc, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, DBClient, Provider, Xmlxform, JvBaseDlg,
  JvSelectDirectory,IniFiles, JvExDBGrids, JvDBGrid, JvComCtrls, JvExComCtrls,
  Mask, JvExMask, JvToolEdit, JvBaseEdits, DBCtrls, JvDBLookup,Math,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLecturaXML = class(TFormABMBase)
    CDSArticulos: TClientDataSet;
    DSArticulos: TDataSource;
    BuscarPathXML: TAction;
    lbArchivos: TListBox;
    OpenDialog1: TOpenDialog;
    edArchivosXML: TEdit;
    SpeedButton1: TSpeedButton;
    CDSVtas: TClientDataSet;
    DSVtas: TDataSource;
    edArchivosXRT: TEdit;
    SpeedButton2: TSpeedButton;
    BuscarPathXTR: TAction;
    BitBtn1: TBitBtn;
    CDSArticulosCOD_ARTICU: TStringField;
    CDSArticulosDESCRIPCION: TStringField;
    CDSArticulosIMPORTE1: TFloatField;
    CDSArticulosIMPORTE2: TFloatField;
    CDSVtasCOD_ARTICU: TStringField;
    CDSVtasDESCRIPCION: TStringField;
    CDSVtasUNITARIO: TFloatField;
    CDSVtasCANTIDAD: TFloatField;
    sdDirectorio: TJvSelectDirectory;
    LeerArchisoXML: TAction;
    Label3: TLabel;
    pcMovimientos: TJvPageControl;
    Pag1: TTabSheet;
    pag2: TTabSheet;
    JvTabDefaultPainter1: TJvTabDefaultPainter;
    dbgArticulos: TJvDBGrid;
    dbgVentas: TJvDBGrid;
    edTotalVta: TJvCalcEdit;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    DSComprobante: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    DSPComprobante: TDataSetProvider;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    DSDeposito: TDataSource;
    QComproba: TSQLQuery;
    QComprobaID_COMPROBANTE: TIntegerField;
    QComprobaTIPO_COMPROB: TStringField;
    QComprobaCLASE_COMPROB: TStringField;
    QComprobaDENOMINACION: TStringField;
    QComprobaSUCURSAL: TIntegerField;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel3: TJvLabel;
    JvLabel1: TJvLabel;
    QCajas: TSQLQuery;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    DSCajas: TDataSource;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    dbcSucursal: TJvDBLookupCombo;
    dbcComprobante: TJvDBLookupCombo;
    dbcDeposito: TJvDBLookupCombo;
    dbcCtas: TJvDBLookupCombo;
    QDepositos: TSQLQuery;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    Facturar: TAction;
    VerificaArticulos: TAction;
    Label1: TLabel;
    cbRubro: TJvDBLookupCombo;
    Label2: TLabel;
    cbSubRubro: TJvDBLookupCombo;
    DSRubros: TDataSource;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    DSSubRubro: TDataSource;
    spABMStock: TSQLStoredProc;
    QExisteCdigo: TSQLQuery;
    QExisteCdigoCODIGO_STK: TStringField;
    BitBtn3: TBitBtn;
    btFactura: TBitBtn;
    pbVentas: TProgressBar;
    pbArticulos: TProgressBar;
    QTraeCodigo: TSQLQuery;
    CDSArticulosCOD_RUBRO: TStringField;
    CDSArticulosRUBRO: TStringField;
    CDSVtasIMPORTE_C_DESCUENTO: TFloatField;
    Label4: TLabel;
    cxDBTextEdit1: TDBText;
    spABMSubRubro: TSQLStoredProc;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    CDSCabecera: TClientDataSet;
    CDSCabeceraFecha: TDateField;
    CDSCabeceraHora: TTimeField;
    CDSCabeceraSucursal: TStringField;
    DSCabecera: TDataSource;
    dbeFecha: TJvDBDateEdit;
    QBuscadorSubRubro: TSQLQuery;
    QBuscadorSubRubroCODIGO_SUBRUBRO: TStringField;
    QBuscadorSubRubroDETALLE_SUBRUBRO: TStringField;
    QBuscadorSubRubroCODIGO_RUBRO: TStringField;
    QBuscadorSubRubroCONTROL_SUBRUBRO: TStringField;
    QCodigoFree: TSQLQuery;
    QCodigoFreeNEWCODIGO: TIntegerField;
    QUltimoCodigoSub: TSQLQuery;
    QUltimoCodigoSubMAX: TStringField;
    dbgExcepciones: TDBGrid;
    JvLabel2: TJvLabel;
    QEceptuados: TSQLQuery;
    DSEceptuados: TDataSource;
    CDSEceptuados: TClientDataSet;
    DSPEceptuados: TDataSetProvider;
    QEceptuadosCODIGO: TStringField;
    CDSEceptuadosCODIGO: TStringField;
    edEceptuado: TJvCalcEdit;
    JvLabel3: TJvLabel;
    Label7: TLabel;
    QTraeCodigoDETALLE_STK: TStringField;
    QTraeCodigoRUBRO_STK: TStringField;
    QTraeCodigoSUBRUBRO_STK: TStringField;
    QTraeCodigoCODIGO_STK: TStringField;
    DSCompNC: TDataSource;
    CDSCompNC: TClientDataSet;
    DSPCompNC: TDataSetProvider;
    QCompNC: TSQLQuery;
    JvLabel4: TJvLabel;
    dbcNotaCredito: TJvDBLookupCombo;
    QCompNCID_COMPROBANTE: TIntegerField;
    QCompNCTIPO_COMPROB: TStringField;
    QCompNCCLASE_COMPROB: TStringField;
    QCompNCDENOMINACION: TStringField;
    QCompNCSUCURSAL: TIntegerField;
    CDSCompNCID_COMPROBANTE: TIntegerField;
    CDSCompNCTIPO_COMPROB: TStringField;
    CDSCompNCCLASE_COMPROB: TStringField;
    CDSCompNCDENOMINACION: TStringField;
    CDSCompNCSUCURSAL: TIntegerField;
    HacerNC: TAction;
    chNegativos: TCheckBox;
    btNCredito: TBitBtn;
    edTotalGral: TJvCalcEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edNegativos: TJvCalcEdit;
    Label11: TLabel;
    ceCodigo: TJvComboEdit;
    edDetalle: TEdit;
    BuscarArticulo: TAction;
    QStock: TSQLQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    XMLDSPVtas: TXMLTransformProvider;
    XMLDSPArticulos: TXMLTransformProvider;
    XMLDSPCabecera: TXMLTransformProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarPathXMLExecute(Sender: TObject);
    procedure BuscarPathXTRExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure LeerArchisoXMLExecute(Sender: TObject);
    procedure lbArchivosClick(Sender: TObject);
    procedure lbArchivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BorrarExecute(Sender: TObject);
    procedure dbgArticulosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgVentasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSVtasAfterOpen(DataSet: TDataSet);
    procedure FacturarExecute(Sender: TObject);
    procedure VerificaArticulosExecute(Sender: TObject);
    procedure cbSubRubroEnter(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure CDSVtasAfterRefresh(DataSet: TDataSet);
    procedure CDSEceptuadosAfterPost(DataSet: TDataSet);
    procedure CDSEceptuadosAfterDelete(DataSet: TDataSet);
    procedure HacerNCExecute(Sender: TObject);
    procedure chNegativosClick(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   ArchivoIni:TIniFile;
   sDirectorio:String;
   campo:String;
   procedure Sumar;
   procedure AgregarCabecera;
   procedure AgregarCabeceraNC;
   procedure AgregaDetalle;
   procedure AgregarCabeceraTk;
   procedure AgregaDetalleTk;
   procedure AgregarDetalleNC;

  end;

var
  FormLecturaXML: TFormLecturaXML;

implementation

{$R *.dfm}
uses DMMainForm_2, UFacturaCtdo_2, DMVentaCtdo, UBuscaDirectorio, UTiketVta,
  DMTicket, DMVenta, UFactura_2, UBuscadorArticulos;

procedure TFormLecturaXML.AgregarCabecera;
begin
  with DatosVentasCtdo DO
  begin
    FormCpbteCtdo_2.SucursalPorDefecto:= dbcSucursal.KeyValue;
    FormCpbteCtdo_2.DepositoPorDefecto:= dbcDeposito.KeyValue;
    FormCpbteCtdo_2.CajaPorDefecto    := dbcCtas.KeyValue;
    CDSVentaCabFECHAVTA.AsDateTime    := dbeFecha.Date;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr( dbcSucursal.KeyValue));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ClientePorDefecto);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(dbcDeposito.KeyValue));
    CDSVentaCabANULADO.Value       :='N';

    CDSVentaCabDSTO.AsFloat        := 0;
    CDSVentaCabIMPRESO.Value       :='N';
    CDSVentaCabCPTE_MANUAL.Value   :='N';
    CDSVentaCabREDUCIDA.Value      :='N';

    CDSVentaCabLISTAPRECIO.Clear;
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_2.UsuarioActivo;
    FormCpbteCtdo_2.DiscriminaIva:='S';
  end;

end;


procedure TFormLecturaXML.AgregarCabeceraNC;
begin
  with DatosVentas DO
  begin
    FormCpbte_2.SucursalPorDefecto:= dbcSucursal.KeyValue;
    FormCpbte_2.DepositoPorDefecto:= dbcDeposito.KeyValue;
    FormCpbte_2.CajaPorDefecto    := dbcCtas.KeyValue;
    CDSVentaCabFECHAVTA.AsDateTime    := dbeFecha.Date;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr( dbcSucursal.KeyValue));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ClientePorDefecto);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcNotaCredito.KeyValue));
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(dbcDeposito.KeyValue));
    CDSVentaCabANULADO.Value       :='N';

    CDSVentaCabNC_CONTADO.Value       :='S';
    CDSVentaCabCAJA_POR_DEFECTO.Value := dbcCtas.KeyValue;
    CDSVentaCabDSTO.AsFloat        := 0;
    CDSVentaCabIMPRESO.Value       :='N';
    CDSVentaCabCPTE_MANUAL.Value   :='N';
    CDSVentaCabREDUCIDA.Value      :='N';

//    CDSVentaCabLISTAPRECIO.Clear;
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_2.UsuarioActivo;
    FormCpbte_2.DiscriminaIva:='S';
  end;

end;


procedure TFormLecturaXML.AgregarCabeceraTk;
begin
  with DatosVentasTicket DO
  begin
    FormTicketVta.SucursalPorDefecto  := dbcSucursal.KeyValue;
    FormTicketVta.DepositoPorDefecto  := dbcDeposito.KeyValue;
    FormTicketVta.CajaPorDefecto      := dbcCtas.KeyValue;
    CDSVentaCabFECHAVTA.AsDateTime    := dbeFecha.Date;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr( dbcSucursal.KeyValue));
    if (ClientePorDefecto='') then
      Raise Exception.Create('No hay definido un cliente por defetcto.....');
    
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ClientePorDefecto);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(dbcDeposito.KeyValue));
    CDSVentaCabANULADO.Value       :='N';

    CDSVentaCabDSTO.AsFloat        := 0;
    CDSVentaCabIMPRESO.Value       :='N';
    CDSVentaCabCPTE_MANUAL.Value   :='N';
    CDSVentaCabREDUCIDA.Value      :='N';

    //CDSVentaCabLISTAPRECIO.Clear;
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_2.UsuarioActivo;
    FormTicketVta.DiscriminaIva:='S';
  end;

end;

procedure TFormLecturaXML.AgregaDetalle;
Var UnitarioTotal,Precio:Extended;
Aux:String;
begin
  inherited;
  if CDSEceptuados.Locate('Codigo',CDSVtasCOD_ARTICU.AsString,[])=False Then
    begin
      with DatosVentasCtdo DO
        begin
          CDSVentaDet.Append;

          QTraeCodigo.Close;
          QTraeCodigo.ParamByName('codigo').Value := CDSVtasCOD_ARTICU.AsString;
          QTraeCodigo.Open;
          if QTraeCodigo.Fields[0].AsString<>'' then
            Aux := QTraeCodigo.Fields[0].AsString
          else
            Aux :=ceCodigo.Text;
          QTraeCodigo.Close;

          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,Aux);
          CDSVentaDetDetalle.Value          :=CDSVtasDESCRIPCION.Value;
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSVtasCANTIDAD.AsString);
          CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
          CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
          CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
          CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FormatFloat('0.00',RoundTo((CDSVtasIMPORTE_C_DESCUENTO.AsFloat/CDSVtasCANTIDAD.AsFloat),-2)));
          if CDSVentaDet.State<>dsBrowse then
            CDSVentaDet.Post;
        end;
    end;
end;

procedure TFormLecturaXML.AgregaDetalleTk;
Var UnitarioTotal,Precio:Extended;
Aux:String;
begin
  inherited;
  if CDSEceptuados.Locate('Codigo',CDSVtasCOD_ARTICU.AsString,[])=False Then
    begin
      with DatosVentasTicket DO
        begin
          CDSVentaDet.Append;
          QTraeCodigo.Close;
          QTraeCodigo.ParamByName('codigo').Value := CDSVtasCOD_ARTICU.AsString;
          QTraeCodigo.Open;
          if QTraeCodigo.Fields[0].AsString<>'' then
            Aux := QTraeCodigo.Fields[0].AsString
          else
            Aux :=ceCodigo.Text;

          QTraeCodigo.Close;

        //if True then

          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,Aux);
          CDSVentaDetDetalle.Value          :=CDSVtasDESCRIPCION.Value;
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSVtasCANTIDAD.AsString);
          CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
          CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
          CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
          CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(CDSVtasIMPORTE_C_DESCUENTO.AsFloat/CDSVtasCANTIDAD.AsFloat));
          CDSVentaDetTOTALSetText(CDSVentaDetTOTAL,FloatToStr(RoundTo(CDSVtasIMPORTE_C_DESCUENTO.AsFloat,-2)));
          if CDSVentaDet.State<>dsBrowse then
            CDSVentaDet.Post;

        end;
    end;
end;

procedure TFormLecturaXML.AgregarDetalleNC;
Var UnitarioTotal,Precio:Extended;
Aux:String;
begin
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      QTraeCodigo.Close;
      QTraeCodigo.ParamByName('codigo').Value := CDSVtasCOD_ARTICU.AsString;
      QTraeCodigo.Open;
      if QTraeCodigo.Fields[0].AsString<>'' then
        Aux := QTraeCodigo.Fields[0].AsString
      else
        Aux :=ceCodigo.Text;

      QTraeCodigo.Close;

      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,Aux);
      CDSVentaDetDetalle.Value          :=CDSVtasDESCRIPCION.Value;
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSVtasCANTIDAD.AsString);
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(CDSVtasIMPORTE_C_DESCUENTO.AsFloat)/Abs(CDSVtasCANTIDAD.AsFloat)));
      if CDSVentaDet.State<>dsBrowse then
        CDSVentaDet.Post;
    end;
end;

procedure TFormLecturaXML.Sumar;
Var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSVtas,True);
  CDSClone.First;

//  CDSVtas.Filtered := False;
//  CDSVtas.Filter   := '';
//  if chNegativos.Checked then
//    CDSVtas.Filter  := 'IMPORTE_C_DESCUENTO < 0 ';
//  CDSVtas.Filtered := chNegativos.Checked;

  edTotalVta.Value :=0;
  edEceptuado.Value:=0;
  edTotalGral.Value:=0;
  edNegativos.Value:=0;
  while Not(CDSClone.Eof) do
    begin
      if CDSEceptuados.Locate('Codigo',CDSClone.FieldByName('COD_ARTICU').AsString,[])=False Then
        begin
          if (RoundTo(CDSClone.FieldByName('IMPORTE_C_DESCUENTO').AsFloat,-2) >= 0 ) then
            edTotalVta.Value:=edTotalVta.Value + RoundTo(CDSClone.FieldByName('IMPORTE_C_DESCUENTO').AsFloat,-2)
          else
            if (RoundTo(CDSClone.FieldByName('IMPORTE_C_DESCUENTO').AsFloat,-2) < 0 ) then
              edNegativos.Value:=edNegativos.Value - RoundTo(CDSClone.FieldByName('IMPORTE_C_DESCUENTO').AsFloat,-2);
        end
      else
        begin
          edEceptuado.Value:=edEceptuado.Value + RoundTo(CDSClone.FieldByName('IMPORTE_C_DESCUENTO').AsFloat,-2);
        end;

      edTotalGral.Value:=edTotalGral.Value + RoundTo(CDSClone.FieldByName('IMPORTE_C_DESCUENTO').AsFloat,-2);


      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;


procedure TFormLecturaXML.VerificaArticulosExecute(Sender: TObject);
var CodigoArt,CodigoSub,Detalle,CodigoRub:String;
begin
  inherited;
  pbArticulos.Position:=0;
  pbArticulos.Min     :=0;
  if (CDSArticulos.RecordCount-1)>0 then
    pbArticulos.Max:=CDSArticulos.RecordCount-1;
  CDSArticulos.First;
  while not(CDSArticulos.Eof) do
    begin
      pbArticulos.Position := pbArticulos.Position+1;
      Application.ProcessMessages;

      Detalle  := trim(UpperCase(copy(CDSArticulosDESCRIPCION.AsString,1,45)));

      CodigoSub:='';
      CodigoRub:='';

      QTraeCodigo.Close;
      QTraeCodigo.ParamByName('codigo').AsString:=Trim(CDSArticulosCOD_ARTICU.AsString);
      QTraeCodigo.Open;
      if QTraeCodigoCODIGO_STK.AsString<>'' then
        begin
          CodigoArt := QTraeCodigoCODIGO_STK.AsString;
          Detalle   := QTraeCodigoDETALLE_STK.AsString;
          CodigoRub := QTraeCodigoRUBRO_STK.AsString;
          CodigoSub := QTraeCodigoSUBRUBRO_STK.AsString;
        end
      else
        begin
          QUltimoCodigo.Close;
          QUltimoCodigo.Open;
          if QUltimoCodigo.Fields[0].AsString<>'' Then
            CodigoArt:=IntToStr(QUltimoCodigo.Fields[0].AsInteger+1)
          else
            CodigoArt:='0';
          QUltimoCodigo.Close;
          CodigoArt := copy('00000000',1,8-length(CodigoArt)) + CodigoArt;
        end;

      spABMStock.Close;
      spABMStock.ParamByName('CODIGO').Value                := CodigoArt;
      spABMStock.ParamByName('CODIGO_alternativo').Value    := CDSArticulosCOD_ARTICU.AsString;
      spABMStock.ParamByName('Detalle').AsString            := Detalle;
      spABMStock.ParamByName('Detalle_Adicional').AsString  := Detalle;
      spABMStock.ParamByName('costo_gravado').Value         := CDSArticulosIMPORTE1.Value / 1.21;

      spABMStock.ParamByName('Marca').AsString    := '';

      if CodigoSub='' then
        begin
          QBuscadorSubRubro.Close;
          QBuscadorSubRubro.ParamByName('descripcion').Value:=trim(UpperCase(copy(CDSArticulosRUBRO.AsString,1,25)));
          QBuscadorSubRubro.Open;
          if QBuscadorSubRubroDETALLE_SUBRUBRO.AsString='' then
            begin
              QCodigoFree.Close;
              QCodigoFree.ParamByName('rubro').Value:=cbRubro.KeyValue;
              QCodigoFree.Open;
              if QCodigoFree.Fields[0].AsString<>'' then
                CodigoSub:=Copy('00000',1,5-Length(QCodigoFree.Fields[0].AsString))+QCodigoFree.Fields[0].AsString
              else
                begin
                  QUltimoCodigoSub.Close;
                  QUltimoCodigoSub.ParamByName('rubro').Value:=cbRubro.KeyValue;
                  QUltimoCodigoSub.Open;
                  if QUltimoCodigoSub.Fields[0].AsString<>'' then
                    CodigoSub:=Copy('00000',1,5-Length(IntToStr(QUltimoCodigoSub.Fields[0].AsInteger)))+IntToStr(QUltimoCodigoSub.Fields[0].AsInteger+1)
                  else
                    CodigoSub:=cbRubro.KeyValue+'00';
                  QUltimoCodigoSub.Close;
                end;
            end
          else
            CodigoSub:=QBuscadorSubRubroCODIGO_SUBRUBRO.AsString;
          spABMSubRubro.Close;
          spABMSubRubro.ParamByName('CODIGO').Value          := CodigoSub;
          spABMSubRubro.ParamByName('Detalle').AsString      := trim(UpperCase(copy(CDSArticulosRUBRO.AsString,1,35)));
          spABMSubRubro.ParamByName('codigo_Rubro').AsString := cbRubro.KeyValue;;
          spABMSubRubro.ExecProc;
          spABMSubRubro.Close;
        end;
      if CodigoRub='' then
        spABMStock.ParamByName('Rubro').AsString    := cbRubro.KeyValue
      else
        spABMStock.ParamByName('Rubro').AsString    := CodigoRub;

      spABMStock.ParamByName('subRubro').AsString      := CodigoSub;
      spABMStock.ParamByName('modo_gravamen').AsString := 'G';

      spABMStock.ParamByName('costo_exento').Value  := 0;
      spABMStock.ParamByName('tasa_iva').AsInteger  := 1;

      spABMStock.ParamByName('sobretasa_iva').AsInteger  := 1;
      spABMStock.ParamByName('moneda').AsInteger         := 1;

      spABMStock.ExecProc;
      CDSArticulos.Next;
    end;
  pbArticulos.Position:=0;
end;

procedure TFormLecturaXML.BorrarExecute(Sender: TObject);
Var ArchivoXML,ArchivoNEW:String;
begin
//  inherited;
  ArchivoXML:=sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  ArchivoNew:=ArchivoXML;
  Delete(ArchivoNEW,length(ArchivoXML),1);
  ArchivoNEW:=ArchivoNEW+'_';
  RenameFile(ArchivoXML,ArchivoNEW);
  lbArchivos.DeleteSelected;
  if lbArchivos.Count>0 Then lbArchivos.ItemIndex:=0;
  if lbArchivos.Count<=0 Then
    Recuperar.Execute;
end;

procedure TFormLecturaXML.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       QStock.Close;
       QStock.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       QStock.Open;
       if not(QStock.IsEmpty) then
         begin
           edDetalle.Text:=QStockDETALLE_STK.Value;
           ceCodigo.Text :=QStockCODIGO_STK.Value;
           Buscar.Execute;
         end
       else
         begin
           edDetalle.Text:='';
           ceCodigo.Text :='';
         end
    end;
end;

procedure TFormLecturaXML.BuscarPathXMLExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Self);

  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk then
    edArchivosXML.Text:=FormBuscaDirectorio.Directorio;
//  sdDirectorio.Title:='Seleccion de Directorio';
//  if sdDirectorio.Execute then
//    if sdDirectorio.Directory<>'' then
//      edArchivosXML.Text:=sdDirectorio.Directory;
end;

procedure TFormLecturaXML.BuscarPathXTRExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Self);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk then
    edArchivosXRT.Text:=FormBuscaDirectorio.Directorio;

//  sdDirectorio.Title:='Seleccion de Directorio';
//  if sdDirectorio.Execute then
//    if sdDirectorio.Directory<>'' then
//      edArchivosXRT.Text:=sdDirectorio.Directory;
end;

procedure TFormLecturaXML.cbRubroChange(Sender: TObject);
begin
  inherited;
  cbSubRubro.ClearValue;
end;

procedure TFormLecturaXML.cbSubRubroEnter(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=cbRubro.KeyValue;
  CDSSubRubro.Open;
end;

procedure TFormLecturaXML.CDSEceptuadosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSEceptuados.ApplyUpdates(0);
end;

procedure TFormLecturaXML.CDSEceptuadosAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSEceptuados.ApplyUpdates(0);
end;

procedure TFormLecturaXML.CDSVtasAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormLecturaXML.CDSVtasAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormLecturaXML.chNegativosClick(Sender: TObject);
begin
  inherited;
  CDSVtas.Filtered := False;
  CDSVtas.Filter   := '';
  if chNegativos.Checked then
    CDSVtas.Filter  := 'IMPORTE_C_DESCUENTO < 0 ';
  CDSVtas.Filtered := chNegativos.Checked;
  Sumar;
end;

procedure TFormLecturaXML.dbcSucursalChange(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  CDSCompNC.Close;
  CDSCompNC.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSCompNC.Open;

  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSDepositos.Open;

end;

procedure TFormLecturaXML.dbgArticulosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
 try
    Campo := Field.FieldName;
    with dbgArticulos.DataSource.DataSet as TClientDataSet do
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

procedure TFormLecturaXML.dbgVentasTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
 try
    Campo := Field.FieldName;
    with dbgVentas.DataSource.DataSet as TClientDataSet do
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

procedure TFormLecturaXML.FacturarExecute(Sender: TObject);
var
  p : TDataSetNotifyEvent;
  pt : pointer;
// deshabiltar evento temporalmente
begin
  inherited;
  chNegativos.Checked:=False;
  chNegativosClick(Sender);
//  Sumar;
  if Not(CDSVtas.IsEmpty) Then
    begin
      if CDSComprobantesTIPO_COMPROB.Value='FO' then
        begin
          if Not(Assigned(FormCpbteCtdo_2)) Then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.WindowState:=wsMinimized;
          FormCpbteCtdo_2.Agregar.Execute;
        end
      else
        if CDSComprobantesTIPO_COMPROB.Value='TK' then
          begin
            if Not(Assigned(FormTicketVta)) Then
              FormTicketVta:=TFormTicketVta.Create(self);
            FormTicketVta.WindowState:=wsMinimized;
            FormTicketVta.Agregar.Execute;
          end;

      if CDSComprobantesTIPO_COMPROB.Value='FO' then
        AgregarCabecera
      else
        if CDSComprobantesTIPO_COMPROB.Value='TK' then
          AgregarCabeceraTk;

      pbVentas.Min:=0;
      pbVentas.Max:=0;
      pbVentas.Position:=0;
      if (CDSVtas.RecordCount-1)>0 Then
        pbVentas.Max:=CDSVtas.RecordCount-1;
      CDSVtas.First;

      if Assigned(DatosVentasTicket) then
        begin
          p  := DatosVentasTicket.CDSVentaDet.AfterPost;
          pt := @DatosVentasTicket.CDSVentaDet.AfterPost;
          DatosVentasTicket.CDSVentaDet.AfterPost := nil;
        end;
      if Assigned(DatosVentasCtdo) then
        begin
          p  := DatosVentasCtdo.CDSVentaDet.AfterPost;
          pt := @DatosVentasCtdo.CDSVentaDet.AfterPost;
          DatosVentasCtdo.CDSVentaDet.AfterPost := nil;
        end;

      // calculos con los campos

      while Not(CDSVtas.Eof) Do // Ingreso el detalle
        begin
          pbVentas.Position:=pbVentas.Position+1;
          Application.ProcessMessages;
          if ((Trunc(CDSVtasIMPORTE_C_DESCUENTO.Asfloat*100)>0) and
              (Trunc(CDSVtasCANTIDAD.Asfloat*100)>0))  then
            begin
              if CDSComprobantesTIPO_COMPROB.Value='FO' then
                AgregaDetalle
              else
                if CDSComprobantesTIPO_COMPROB.Value='TK' then
                  AgregaDetalleTk;
            end;
          CDSVtas.Next;
        end;

      if Assigned(DatosVentasTicket) then
        begin
          DatosVentasTicket.CDSVentaDet.AfterPost := p;
          if pt <> nil then
            DatosVentasTicket.CDSVentaDet.AfterPost(DatosVentasTicket.CDSVentaDet);
        end;

      if Assigned(DatosVentasCtdo) then
        begin
          DatosVentasCtdo.CDSVentaDet.AfterPost := p;
          if pt <> nil then
            DatosVentasCtdo.CDSVentaDet.AfterPost(DatosVentasCtdo.CDSVentaDet);
        end;

      pbVentas.Position:=0;
      Application.ProcessMessages;
      if CDSComprobantesTIPO_COMPROB.Value='FO' then
        begin
          if DatosVentasCtdo.CDSVentaDet.State<>dsBrowse then
            DatosVentasCtdo.CDSVentaDet.Post;
          FormCpbteCtdo_2.WindowState  :=wsNormal;
          FormCpbtectdo_2.DBGrillaDetalle.SetFocus;
        end
      else
        if CDSComprobantesTIPO_COMPROB.Value='TK' then
          begin
            if DatosVentasTicket.CDSVentaDet.State<>dsBrowse then
              DatosVentasTicket.CDSVentaDet.Post;
            FormTicketVta.WindowState  :=wsNormal;
            FormTicketVta.DBGrillaDetalle.SetFocus;
          end;
    end
  else
    ShowMessage('No hay Datos para Facturar....');

end;

procedure TFormLecturaXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_XML.ini');
  //*************************************************************
  ArchivoIni.WriteString('ArchivoXML', 'XML', edArchivosXML.Text);
  ArchivoIni.WriteString('ArchivoXML', 'XRT', edArchivosXRT.Text);

  ArchivoIni.WriteInteger('ArchivoXML', 'Sucursal', dbcSucursal.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'Comprobante', dbcComprobante.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'NotaCredito', dbcNotaCredito.KeyValue);

  ArchivoIni.WriteInteger('ArchivoXML', 'Deposito', dbcDeposito.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'Caja', dbcCtas.KeyValue);

  ArchivoIni.WriteString('ArchivoXML', 'Rubro', cbRubro.KeyValue);
  ArchivoIni.WriteString('ArchivoXML', 'SubRubro', cbSubRubro.KeyValue);

  ArchivoIni.WriteString('ArchivoXML', 'codigo', ceCodigo.Text);
  ArchivoIni.WriteString('ArchivoXML', 'detalle', edDetalle.Text);

  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormLecturaXML.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;



  CDSRubro.Open;

  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=cbRubro.KeyValue;
  CDSSubRubro.Open;

  CDSSucursal.Open;

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  CDSCompNC.Close;
  CDSCompNC.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSCompNC.Open;

  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSDepositos.Open;

  CDSCajas.Open;

  CDSEceptuados.Close;
  CDSEceptuados.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_XML.ini');
  //*************************************************************
  edArchivosXML.Text        := ArchivoIni.ReadString('ArchivoXML', 'XML', 'C:\');
  edArchivosXRT.Text        := ArchivoIni.ReadString('ArchivoXML', 'XRT', 'C:\');
  dbcSucursal.KeyValue      := ArchivoIni.ReadInteger('ArchivoXML', 'Sucursal', -1);
  dbcComprobante.KeyValue   := ArchivoIni.ReadInteger('ArchivoXML', 'Comprobante', -1);
  dbcNotaCredito.KeyValue   := ArchivoIni.ReadInteger('ArchivoXML', 'NotaCredito', -1);
  dbcDeposito.KeyValue      := ArchivoIni.ReadInteger('ArchivoXML', 'Deposito', -1);
  dbcCtas.KeyValue          := ArchivoIni.ReadInteger('ArchivoXML', 'Caja', -1);

  cbRubro.KeyValue       := ArchivoIni.ReadString('ArchivoXML', 'Rubro', '***');
  cbSubRubro.KeyValue    := ArchivoIni.ReadString('ArchivoXML', 'SubRubro', '*****');
  ceCodigo.Text          := ArchivoIni.ReadString('ArchivoXML', 'codigo', '');
  edDetalle.Text         := ArchivoIni.ReadString('ArchivoXML', 'detalle', '');

  ArchivoIni.Free;
  //  dtFecha.Date:=Date;

end;

procedure TFormLecturaXML.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLecturaXML:=nil;
end;

procedure TFormLecturaXML.HacerNCExecute(Sender: TObject);
begin
  inherited;
  chNegativos.Checked:=True;
  chNegativosClick(Sender);
  //Sumar;
  if Not(CDSVtas.IsEmpty) Then
    begin
      if Not(Assigned(FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      FormCpbte_2.WindowState:=wsMinimized;
      FormCpbte_2.Agregar.Execute;

      AgregarCabeceraNC;

      pbVentas.Min:=0;
      pbVentas.Max:=0;
      pbVentas.Position:=0;
      if (CDSVtas.RecordCount-1)>0 Then
        pbVentas.Max:=CDSVtas.RecordCount-1;
      CDSVtas.First;
      while Not(CDSVtas.Eof) Do // Ingreso el detalle
        begin
          pbVentas.Position:=pbVentas.Position+1;
          Application.ProcessMessages;
          if ((Trunc(CDSVtasIMPORTE_C_DESCUENTO.Asfloat*100)<0) and
             (Trunc(CDSVtasCANTIDAD.Asfloat*100)<0))  then
            begin
               AgregarDetalleNC;
            end;
          CDSVtas.Next;
        end;
      pbVentas.Position:=0;
      Application.ProcessMessages;
      if DatosVentas.CDSVentaDet.State<>dsBrowse then
        DatosVentas.CDSVentaDet.Post;
      FormCpbte_2.WindowState  :=wsNormal;
      FormCpbte_2.DBGrillaDetalle.SetFocus;
    end
  else
    ShowMessage('No hay Datos para Acreditar....');


end;

procedure TFormLecturaXML.lbArchivosClick(Sender: TObject);
begin
  inherited;
  if (lbArchivos.Items[lbArchivos.ItemIndex]<>'') then
  begin
    XMLDSPVtas.TransformRead.TransformationFile  := edArchivosXRT.Text+'\ventas.xtr';
    XMLDSPVtas.TransformWrite.TransformationFile := edArchivosXRT.Text+'\ventas.xtr';
    XMLDSPVtas.XMLDataFile                       := edArchivosXML.Text+'\'+lbArchivos.Items[lbArchivos.ItemIndex];

    XMLDSPArticulos.TransformRead.TransformationFile  := edArchivosXRT.Text+'\Productos.xtr';
    XMLDSPArticulos.TransformWrite.TransformationFile := edArchivosXRT.Text+'\Productos.xtr';
    XMLDSPArticulos.XMLDataFile                       := edArchivosXML.Text+'\'+lbArchivos.Items[lbArchivos.ItemIndex];


    XMLDSPCabecera.TransformRead.TransformationFile  := edArchivosXRT.Text+'\Cabecera.xtr';
    XMLDSPCabecera.TransformWrite.TransformationFile := edArchivosXRT.Text+'\Cabecera.xtr';
    XMLDSPCabecera.XMLDataFile                       := edArchivosXML.Text+'\'+lbArchivos.Items[lbArchivos.ItemIndex];


    CDSCabecera.Close;
    CDSCabecera.Open;

    CDSArticulos.Close;
    CDSArticulos.Open;

    CDSVtas.Close;
    CDSVtas.Open;

  end;

end;

procedure TFormLecturaXML.lbArchivosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    Borrar.Execute;
end;

procedure TFormLecturaXML.LeerArchisoXMLExecute(Sender: TObject);
var
  Busqueda  : TSearchRec;
  iResultado: Integer;
begin
  // Nos aseguramos que termine en contrabarra
  lbArchivos.Clear;
  sbEstado.SimplePanel:=True;
  sbEstado.SimpleText:='Buscando Archivos para importar.......';
  Application.ProcessMessages;
  sDirectorio := IncludeTrailingPathDelimiter(edArchivosXML.Text);//    edArchivosXML.Text+'\';
  iResultado  := FindFirst( sDirectorio + '*.xml', faAnyFile, Busqueda );

  while iResultado = 0 do
  begin
    // ¿Ha encontrado un archivo y no es un directorio?
    if ( Busqueda.Attr and faArchive = faArchive ) and
       ( Busqueda.Attr and faDirectory <> faDirectory ) then
      lbArchivos.Items.Add(Busqueda.Name);
    iResultado := FindNext( Busqueda );
  end;
  FindClose( Busqueda );
  sbEstado.SimpleText :='';
  Application.ProcessMessages;

end;

procedure TFormLecturaXML.RecuperarExecute(Sender: TObject);
begin
  inherited;
  LeerArchisoXML.Execute;
  lbArchivos.ItemIndex:=0;

  if  (lbArchivos.ItemIndex>-1) and (lbArchivos.Items[lbArchivos.ItemIndex]<>'') then
  begin
    XMLDSPVtas.TransformRead.TransformationFile  := edArchivosXRT.Text+'\ventas.xtr';
    XMLDSPVtas.TransformWrite.TransformationFile := edArchivosXRT.Text+'\ventas.xtr';
    XMLDSPVtas.XMLDataFile                       := edArchivosXML.Text+'\'+lbArchivos.Items[lbArchivos.ItemIndex];

    XMLDSPArticulos.TransformRead.TransformationFile  := edArchivosXRT.Text+'\Productos.xtr';
    XMLDSPArticulos.TransformWrite.TransformationFile := edArchivosXRT.Text+'\Productos.xtr';
    XMLDSPArticulos.XMLDataFile                       := edArchivosXML.Text+'\'+lbArchivos.Items[lbArchivos.ItemIndex];

    XMLDSPCabecera.TransformRead.TransformationFile  := edArchivosXRT.Text+'\Cabecera.xtr';
    XMLDSPCabecera.TransformWrite.TransformationFile := edArchivosXRT.Text+'\Cabecera.xtr';
    XMLDSPCabecera.XMLDataFile                       := edArchivosXML.Text+'\'+lbArchivos.Items[lbArchivos.ItemIndex];

    CDSArticulos.Close;
    CDSArticulos.Open;

    CDSCabecera.Close;
    CDSCabecera.Open;

    CDSVtas.Close;
    CDSVtas.IndexDefs.Clear;
    CDSVtas.Open;


  end;

end;

end.
