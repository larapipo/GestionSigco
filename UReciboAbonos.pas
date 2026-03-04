unit UReciboAbonos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList, DB,  
  ActnList, ComCtrls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Mask, DBCtrls, DBClient, Provider, JvExMask, JvToolEdit, JvDBControls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, IBGenerator, JvFormPlacement, JvLabel,
  FMTBcd, SqlExpr, DBXCommon, System.Actions, JvDBLookup, JvAppStorage,
  JvAppIniStorage, CompBuscador,IniFiles,DateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormReciboAbonos = class(TFormABMBase)
    DSPRecCab: TDataSetProvider;
    CDSRecCab: TClientDataSet;
    Label1: TLabel;
    dbenumero: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edTotal: TDBEdit;
    edFecha: TJvDBDateEdit;
    dbgDetalle: TJvDBGrid;
    DSPRecDet: TDataSetProvider;
    CDSRecDet: TClientDataSet;
    DSRecDet: TDataSource;
    BitBtn1: TBitBtn;
    TraerCupon: TAction;
    edCodigoBarra: TEdit;
    ibgIdDet: TIBGenerator;
    Label4: TLabel;
    Label5: TLabel;
    DSSucursales: TDataSource;
    DSComprob: TDataSource;
    ibgRecCab: TIBGenerator;
    Label6: TLabel;
    GenerarDebito: TAction;
    GenerarRecibo: TAction;
    btBuscarAbono: TBitBtn;
    BuscarAbono: TAction;
    QRecibo: TFDQuery;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QComp: TFDQuery;
    CDSComprob: TClientDataSet;
    DSPComprob: TDataSetProvider;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobSUCURSAL: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobDENOMINACION: TStringField;
    CDSComprobLETRA: TStringField;
    CDSComprobCOPIAS: TIntegerField;
    CDSComprobREPORTE: TStringField;
    QArticuloDeb: TFDQuery;
    CDSArticuloDebito: TClientDataSet;
    DSPArticuloDebito: TDataSetProvider;
    CDSArticuloDebitoCLIENTE: TStringField;
    CDSArticuloDebitoID_CUPON_GRUPO: TIntegerField;
    CDSArticuloDebitoCODIGOARTICULO_DEBITOS: TStringField;
    QCupones: TFDQuery;
    CDSCupones: TClientDataSet;
    DSPCupones: TDataSetProvider;
    QCuponesID: TIntegerField;
    QCuponesNUMERO: TStringField;
    QCuponesFECHA_GENERACION: TSQLTimeStampField;
    QCuponesFECHA: TSQLTimeStampField;
    QCuponesCLIENTE: TStringField;
    QCuponesPERIODO: TStringField;
    QCuponesFECHA_VTO1: TSQLTimeStampField;
    QCuponesFECHA_VTO2: TSQLTimeStampField;
    QCuponesIMPORTE_1: TFloatField;
    QCuponesIMPORTE_2: TFloatField;
    QCuponesCODIGOBARRA1: TStringField;
    QCuponesCODIGOARTICULO: TStringField;
    QCuponesFACTURA_ID: TIntegerField;
    QCuponesFACTURA_FECHA: TSQLTimeStampField;
    QCuponesFACTURA_TIPO: TStringField;
    QCuponesFACTURA_CLASE: TStringField;
    QCuponesFACTURA_NROCPBTE: TStringField;
    QCuponesPAGADO: TStringField;
    CDSCuponesID: TIntegerField;
    CDSCuponesNUMERO: TStringField;
    CDSCuponesFECHA_GENERACION: TSQLTimeStampField;
    CDSCuponesFECHA: TSQLTimeStampField;
    CDSCuponesCLIENTE: TStringField;
    CDSCuponesPERIODO: TStringField;
    CDSCuponesFECHA_VTO1: TSQLTimeStampField;
    CDSCuponesFECHA_VTO2: TSQLTimeStampField;
    CDSCuponesIMPORTE_1: TFloatField;
    CDSCuponesIMPORTE_2: TFloatField;
    CDSCuponesCODIGOBARRA1: TStringField;
    CDSCuponesCODIGOARTICULO: TStringField;
    CDSCuponesFACTURA_ID: TIntegerField;
    CDSCuponesFACTURA_FECHA: TSQLTimeStampField;
    CDSCuponesFACTURA_TIPO: TStringField;
    CDSCuponesFACTURA_CLASE: TStringField;
    CDSCuponesFACTURA_NROCPBTE: TStringField;
    CDSCuponesPAGADO: TStringField;
    QRecCab: TFDQuery;
    QRecCabID: TIntegerField;
    QRecCabNUMERO: TIntegerField;
    QRecCabFECHA: TSQLTimeStampField;
    QRecCabSUCURSAL: TIntegerField;
    QRecCabID_COMPROBANTE_RECIBO: TIntegerField;
    QRecCabTOTAL: TFloatField;
    QRecCabID_RC: TIntegerField;
    QRecCabNUMERO_RC: TStringField;
    CDSRecCabID: TIntegerField;
    CDSRecCabNUMERO: TIntegerField;
    CDSRecCabFECHA: TSQLTimeStampField;
    CDSRecCabSUCURSAL: TIntegerField;
    CDSRecCabID_COMPROBANTE_RECIBO: TIntegerField;
    CDSRecCabTOTAL: TFloatField;
    CDSRecCabID_RC: TIntegerField;
    CDSRecCabNUMERO_RC: TStringField;
    QRecDet: TFDQuery;
    QRecDetID: TIntegerField;
    QRecDetID_CAB: TIntegerField;
    QRecDetID_CUPON: TIntegerField;
    QRecDetCODIGOBARRA: TStringField;
    QRecDetVTO1: TSQLTimeStampField;
    QRecDetVTO2: TSQLTimeStampField;
    QRecDetPRECIO1: TFloatField;
    QRecDetPRECIO2: TFloatField;
    QRecDetCOBRADO: TFloatField;
    QRecDetFACTURA_ID: TIntegerField;
    QRecDetFACTURA_TIPO: TStringField;
    QRecDetFACTURA_CLASE: TStringField;
    QRecDetNOTADEBITO_ID: TIntegerField;
    QRecDetNOTADEBITO_TIPO: TStringField;
    QRecDetNOTADEBITO_CLASE: TStringField;
    QRecDetIMPORTE_DEBITO: TFloatField;
    QRecDetGENERAR_DEBITO: TStringField;
    CDSRecDetID: TIntegerField;
    CDSRecDetID_CAB: TIntegerField;
    CDSRecDetID_CUPON: TIntegerField;
    CDSRecDetCODIGOBARRA: TStringField;
    CDSRecDetVTO1: TSQLTimeStampField;
    CDSRecDetVTO2: TSQLTimeStampField;
    CDSRecDetPRECIO1: TFloatField;
    CDSRecDetPRECIO2: TFloatField;
    CDSRecDetCOBRADO: TFloatField;
    CDSRecDetFACTURA_ID: TIntegerField;
    CDSRecDetFACTURA_TIPO: TStringField;
    CDSRecDetFACTURA_CLASE: TStringField;
    CDSRecDetNOTADEBITO_ID: TIntegerField;
    CDSRecDetNOTADEBITO_TIPO: TStringField;
    CDSRecDetNOTADEBITO_CLASE: TStringField;
    CDSRecDetIMPORTE_DEBITO: TFloatField;
    CDSRecDetGENERAR_DEBITO: TStringField;
    QBuscadorRec: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FMTBCDField1: TFloatField;
    IntegerField5: TIntegerField;
    StringField1: TStringField;
    DSPSucFc: TDataSetProvider;
    CDSSucFac: TClientDataSet;
    IntegerField11: TIntegerField;
    StringField3: TStringField;
    DSSucFac: TDataSource;
    QCodigoBarra_Cliente_1vto: TFDQuery;
    QCodigo_Barra: TFDQuery;
    QCodigo_BarraID: TIntegerField;
    QCodigoBarra_Cliente_1vtoID: TIntegerField;
    QCodigoBarra_Nro_Cliente: TFDQuery;
    QCodigoBarra_Nro_ClienteID: TIntegerField;
    CDSComprobDEFECTO: TStringField;
    QNotaDebitoDefecto: TFDQuery;
    QBuscaCuponCliente: TFDQuery;
    DSPBuscaCuponCliente: TDataSetProvider;
    CDSBuscaCuponCliente: TClientDataSet;
    CDSBuscaCuponClienteID: TIntegerField;
    CDSBuscaCuponClienteNUMERO: TStringField;
    CDSBuscaCuponClienteFECHA_GENERACION: TSQLTimeStampField;
    CDSBuscaCuponClienteFECHA: TSQLTimeStampField;
    CDSBuscaCuponClienteCLIENTE: TStringField;
    CDSBuscaCuponClientePERIODO: TStringField;
    CDSBuscaCuponClienteFECHA_VTO1: TSQLTimeStampField;
    CDSBuscaCuponClienteFECHA_VTO2: TSQLTimeStampField;
    CDSBuscaCuponClienteIMPORTE_1: TFloatField;
    CDSBuscaCuponClienteIMPORTE_2: TFloatField;
    CDSBuscaCuponClienteCODIGOBARRA1: TStringField;
    CDSBuscaCuponClienteCODIGOARTICULO: TStringField;
    CDSBuscaCuponClienteFACTURA_ID: TIntegerField;
    CDSBuscaCuponClienteFACTURA_FECHA: TSQLTimeStampField;
    CDSBuscaCuponClienteFACTURA_TIPO: TStringField;
    CDSBuscaCuponClienteFACTURA_CLASE: TStringField;
    CDSBuscaCuponClienteFACTURA_NROCPBTE: TStringField;
    CDSBuscaCuponClientePAGADO: TStringField;
    DSPRecibo_Form: TDataSetProvider;
    CDSRecibo_Form: TClientDataSet;
    CDSRecibo_FormID_RC: TIntegerField;
    CDSRecibo_FormTIPOCPBTE: TStringField;
    CDSRecibo_FormCLASECPBTE: TStringField;
    CDSRecibo_FormNROCPBTE: TStringField;
    CDSRecibo_FormCODIGO: TStringField;
    CDSRecibo_FormLETRARC: TStringField;
    CDSRecibo_FormSUCRC: TStringField;
    CDSRecibo_FormNUMERORC: TStringField;
    CDSRecibo_FormNOMBRE: TStringField;
    CDSRecibo_FormRAZONSOCIAL: TStringField;
    CDSRecibo_FormDIRECCION: TStringField;
    CDSRecibo_FormCPOSTAL: TStringField;
    CDSRecibo_FormLOCALIDAD: TStringField;
    CDSRecibo_FormTIPOIVA: TIntegerField;
    CDSRecibo_FormCUIT: TStringField;
    CDSRecibo_FormFECHA: TSQLTimeStampField;
    CDSRecibo_FormANULADO: TStringField;
    CDSRecibo_FormVENDEDOR: TStringField;
    CDSRecibo_FormSALDO_APLICAR: TFloatField;
    CDSRecibo_FormIMPRESO: TStringField;
    CDSRecibo_FormOBSERVACION1: TStringField;
    CDSRecibo_FormOBSERVACION2: TStringField;
    CDSRecibo_FormSUCURSAL: TIntegerField;
    CDSRecibo_FormZONA: TIntegerField;
    CDSRecibo_FormTOTAL_NETO: TFloatField;
    CDSRecibo_FormPORCENTAJE_DSCTO: TFloatField;
    CDSRecibo_FormIMPORTE_DSCTO: TFloatField;
    CDSRecibo_FormTOTAL: TFloatField;
    CDSRecibo_FormUSUARIO: TStringField;
    CDSRecibo_FormFECHA_HORA: TSQLTimeStampField;
    CDSRecibo_FormCPBTE_MANUAL: TStringField;
    CDSRecibo_FormNC_ID: TIntegerField;
    CDSRecibo_FormNC_TIPOCPBTE: TStringField;
    CDSRecibo_FormNC_CLASECPBTE: TStringField;
    CDSRecibo_FormNC_NROCOMPROB: TStringField;
    CDSRecibo_FormN_OPERACION2: TFloatField;
    CDSRecibo_FormMUESTRASUCURSAL: TStringField;
    CDSRecibo_FormMUESTRACOMPROBANTE: TStringField;
    CDSRecibo_FormID_TIPOCOMPROBANTE: TIntegerField;
    CDSRecibo_FormMUESTRAVENDEDOR: TStringField;
    CDSRecibo_FormMUESTRAIVA: TStringField;
    CDSRecibo_FormNUMERO_OPERACION: TStringField;
    CDSRecibo_FormNRO_RECIBO_INTERMO: TIntegerField;
    CDSRecibo_FormID_REC_CUPON: TIntegerField;
    CDSRecibo_FormIMPORTE_RECARGO: TFloatField;
    CDSRecibo_FormLOTE_COBRO_TC: TStringField;
    CDSRecibo_FormMUESTRANCREDITO: TStringField;
    QNotaDebitoDefectoID_NOTADEBITOPORDEFECTO: TIntegerField;
    Label7: TLabel;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    DSCaja: TDataSource;
    QRecCabMUESTRANUMERORECIBO: TStringField;
    CDSRecCabMUESTRANUMERORECIBO: TStringField;
    QRecDetMUESTRANROCPBTE: TStringField;
    CDSRecDetMUESTRANROCPBTE: TStringField;
    Nro_Recibo: TDBText;
    Nro_NotaCredito: TDBText;
    pnRec_Cred: TPanel;
    DBText2: TLabel;
    DBText1: TLabel;
    GenerarAjusteDeb: TAction;
    spIngresarAjuste: TFDStoredProc;
    IBId_Ajuste: TIBGenerator;
    Label8: TLabel;
    CDSCompAjuste: TClientDataSet;
    DSCompAjuste: TDataSource;
    CDSCompAjusteID_COMPROBANTE: TIntegerField;
    CDSCompAjusteTIPO_COMPROB: TStringField;
    CDSCompAjusteCLASE_COMPROB: TStringField;
    CDSCompAjusteDENOMINACION: TStringField;
    CDSCompAjusteSUCURSAL: TIntegerField;
    CDSCompAjusteLETRA: TStringField;
    CDSCompAjustePREFIJO: TStringField;
    CDSCompAjusteNUMERARCION_PROPIA: TStringField;
    CDSCompAjusteNUMERO: TStringField;
    CDSCompAjusteIMPRIME: TStringField;
    CDSCompAjusteFISCAL: TStringField;
    CDSCompAjusteDEFECTO: TStringField;
    CDSCompAjusteEN_USO: TStringField;
    CDSCompAjusteDEPOSITO: TIntegerField;
    Label9: TLabel;
    Nro_Ajuste: TDBText;
    CDSCompND: TClientDataSet;
    DSCompND: TDataSource;
    Label10: TLabel;
    CDSCompNDID_COMPROBANTE: TIntegerField;
    CDSCompNDTIPO_COMPROB: TStringField;
    CDSCompNDCLASE_COMPROB: TStringField;
    CDSCompNDDENOMINACION: TStringField;
    CDSCompNDSUCURSAL: TIntegerField;
    CDSCompNDLETRA: TStringField;
    CDSCompNDPREFIJO: TStringField;
    CDSCompNDNUMERARCION_PROPIA: TStringField;
    CDSCompNDNUMERO: TStringField;
    CDSCompNDTOMA_NRO_DE: TIntegerField;
    CDSCompNDAFECTA_IVA: TStringField;
    CDSCompNDAFECTA_CC: TStringField;
    CDSCompNDDESGLOZA_IVA: TStringField;
    CDSCompNDCOMPRA_VENTA: TStringField;
    CDSCompNDDEFECTO: TStringField;
    CDSCompNDEN_USO: TStringField;
    QRecDetAJUSTE_ID: TIntegerField;
    QRecDetAJUSTE_TIPO: TStringField;
    CDSRecDetAJUSTE_ID: TIntegerField;
    CDSRecDetAJUSTE_TIPO: TStringField;
    QRecDetAJUSTE_CLASE: TStringField;
    CDSRecDetAJUSTE_CLASE: TStringField;
    QRecCabID_AJUSTE: TIntegerField;
    CDSRecCabID_AJUSTE: TIntegerField;
    QRecDetMUESTRANROAJUSTE: TStringField;
    CDSRecDetMUESTRANROAJUSTE: TStringField;
    dbcSucursal: TDBLookupComboBox;
    dbcComprobante: TJvDBLookupCombo;
    dbcAjuste: TJvDBLookupCombo;
    dbcNotaDebito: TJvDBLookupCombo;
    dbcCtaCaja: TJvDBLookupCombo;
    QRecDetMUESTRANOMBRE: TStringField;
    QRecDetMUESTRACODIGO: TStringField;
    CDSRecDetMUESTRANOMBRE: TStringField;
    CDSRecDetMUESTRACODIGO: TStringField;
    Label11: TLabel;
    edNombre: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    lbIntervalo: TLabel;
    lbCargo: TLabel;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasSALDO_INCIAL: TFloatField;
    CDSCajasESTADO: TIntegerField;
    CDSCajasOBS: TMemoField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasMUESTRACAJA: TStringField;
    rgModoDebito: TRadioGroup;
    chbEfectivo: TCheckBox;
    chbInicio: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TraerCuponExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSRecCabNewRecord(DataSet: TDataSet);
    procedure CDSRecDetAfterPost(DataSet: TDataSet);
    procedure edCodigoBarraClick(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure GenerarDebitoExecute(Sender: TObject);
    procedure GenerarReciboExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarAbonoExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure edCodigoBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSRecDetNewRecord(DataSet: TDataSet);
    procedure Nro_ReciboClick(Sender: TObject);
    procedure Nro_NotaCreditoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GenerarAjusteDebExecute(Sender: TObject);
    procedure Nro_AjusteClick(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    CodigoCliente:string;

    procedure AgregarCabecera;
    procedure AgregaDetalle;

  end;

var
  FormReciboAbonos: TFormReciboAbonos;

implementation

uses DMBuscadoresForm, UFactura_2, URecibo_2, DMRecibos, UBuscaCupones,
  UDMain_FD, DMVenta, UBuscadorReciboCupon, DMStoreProcedureForm,
  UBuscadorTipoCpbte, UAjustesCCClientes_2;

{$R *.dfm}


procedure TFormReciboAbonos.AgregarCabecera;
begin
  with DatosVentas DO
  begin
    FormCpbte_2.DiscriminaIva      := 'S';
    FormCpbte_2.CajaPorDefecto     := dbcCtaCaja.KeyValue;
    CDSVentaCabFECHAVTA.AsDateTime := edFecha.Date;
    CDSVentaCabSUCURSALSetText(CDSVentaCabSUCURSAL,IntToStr(dbcSucursal.KeyValue));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CodigoCliente);
    QNotaDebitoDefecto.Close;
    QNotaDebitoDefecto.ParamByName('codigo').Value:=CDSVentaCabCodigo.Value;
    QNotaDebitoDefecto.Open;
    if QNotaDebitoDefectoID_NOTADEBITOPORDEFECTO.AsString<>'' then
      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,QNotaDebitoDefectoID_NOTADEBITOPORDEFECTO.AsString)
    else
      begin
        DMMain_FD.QComprobantePorDefecto.Close;
        DMMain_FD.QComprobantePorDefecto.ParamByName('desglozaIva').Value:= CDSVentaCabDESGLOZAIVA.Value;
        DMMain_FD.QComprobantePorDefecto.ParamByName('sucursal').Value   := CDSVentaCabSUCURSAL.Value;
        DMMain_FD.QComprobantePorDefecto.ParamByName('compraventa').Value:= 'V';
        DMMain_FD.QComprobantePorDefecto.ParamByName('tipo').Value       := 'ND';
        DMMain_FD.QComprobantePorDefecto.Open;
        if DMMain_FD.QComprobantePorDefecto.Fields[0].AsString<>'' Then
          CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMMain_FD.QComprobantePorDefecto.Fields[0].AsString)
        else
          begin
//            DMMain_FD.CDSCompPorTipo.Close;
//            DMMain_FD.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:= CDSVentaCabDESGLOZAIVA.Value;
//            DMMain_FD.CDSCompPorTipo.Params.ParamByName('sucursal').Value   := CDSVentaCabSUCURSAL.Value;
//            DMMain_FD.CDSCompPorTipo.Params.ParamByName('compraventa').Value:= 'V';
//            DMMain_FD.CDSCompPorTipo.Params.ParamByName('tipo').Value       := 'ND';
//            DMMain_FD.CDSCompPorTipo.Open;
//            DMMain_FD.CDSCompPorTipo.First;
//            if DMMain_FD.CDSCompPorTipo.Fields[0].AsString<>'' Then
//              CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMMain_FD.CDSCompPorTipo.Fields[0].AsString)

            if DMMain_FD.CpbtePorTipo('ND','V',CDSVentaCabSUCURSAL.Value,CDSVentaCabDESGLOZAIVA.Value)<>'' Then
              CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMMain_FD.CpbtePorTipo('ND','V',CDSVentaCabSUCURSAL.Value,CDSVentaCabDESGLOZAIVA.Value))
            else
              begin
                if Not(Assigned(FormBuscadorTipoCpbte)) then
                  FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
                FormBuscadorTipoCpbte.TipoCpbte1:='ND';
                FormBuscadorTipoCpbte.TipoCpbte2:='';
                FormBuscadorTipoCpbte.TipoCpbte3:='';
                FormBuscadorTipoCpbte.CV        :='V';
                FormBuscadorTipoCpbte.Sucursal  :=CDSVentaCabSUCURSAL.Value;
                FormBuscadorTipoCpbte.DiscriminaIVA:= CDSVentaCabDESGLOZAIVA.Value;
                FormBuscadorTipoCpbte.ShowModal;
                CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(FormBuscadorTipoCpbte.Id_Cpbte));
              end;



         end;
      end;

    if (CDSVentaCabID_TIPOCOMPROBANTE.AsString='') and (dbcNotaDebito.KeyValue>-1) then
      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcNotaDebito.KeyValue));

    CDSVentaCabLDRSetText(CDSVentaCabLDR,'0');

    IF (DMMain_FD.GetCondicionVtaPorDefecto(CodigoCliente)>-1) THEN
      CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,IntToStr(DMMain_FD.GetCondicionVtaPorDefecto(CodigoCliente)));


    CDSVentaCabANULADO.Value      := 'N';
    CDSVentaCabIMPRESO.Value      := 'N';
    CDSVentaCabOBSERVACION1.Value := 'Debito por Pago Fuera de termino.Vencimiento:'+ CDSRecDetVTO2.AsString;
    CDSVentaCabOBSERVACION2.Value := ' ';
    CDSVentaCabCPTE_MANUAL.Value  := 'N';
    CDSVentaCabREDUCIDA.Value     := 'N';

    CDSVentaCabZONA.Value         := 0;
    CDSVentaCabNROENTREGA.Value   := 1;
    CDSVentaCabIDREMITO.Clear;
    CDSVentaCabTIPO_REMITO.Clear;
    CDSVentaCabNRORTO.Value       := '';
    //seleciona lista de precio
    //CDSVentaCabLISTAPRECIO.Clear;

    CDSVentaCabFECHA_HORA.AsDateTime := Now;
    CDSVentaCabUSUARIO.Value         := DMMain_FD.UsuarioActivo;
 //   CDSRecDet.Edit;
//    CDSRecDetNOTADEBITO_ID.Value     :=CDSVentaCabID_FC.Value;
//    CDSRecDetNOTADEBITO_TIPO.Value   :=CDSVentaCabTIPOCPBTE.Value;
//    CDSRecDetNOTADEBITO_CLASE.Value  :=CDSVentaCabCLASECPBTE.Value;
//    CDSRecDet.Post;
   end;
end;

procedure TFormReciboAbonos.AgregarExecute(Sender: TObject);
begin
  sbEstado.SimpleText:='';
  CDSRecCab.Close;
  CDSRecCab.Params.ParamByName('id').Clear;
  CDSRecCab.Open;

  CDSRecDet.Close;
  CDSRecDet.Params.ParamByName('id').Clear;
  CDSRecDet.Open;


 // if CDSCajas.Locate('id_cuenta_caja',CajaPorDefecto,[]) Then
    begin
      inherited;
      if (FormReciboAbonos.Visible=True) and (edCodigoBarra.Enabled=True) then
        edCodigoBarra.SetFocus;
   //   dbcSucursal.KeyValue:=SucursalPorDefecto;
  //    CDSComprob.Close;
 //     CDSComprob.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
 //     CDSComprob.Open;
 //     if (CDSComprob.RecordCount>1) then
  //      CDSComprob.First;
 //     dbcComprobante.KeyValue:=CDSComprobID_COMPROBANTE.Value;
      if chbInicio.Checked then
        BuscarAbono.Execute;
    end
//  else
 //   sbEstado.SimpleText:='Caja Cerrada...';

  //  dbcComprobante.SetFocus;

end;

procedure TFormReciboAbonos.BorrarExecute(Sender: TObject);
VAR CheTx,CheUsado: Boolean;
    HayNC         : Boolean;
    Detalle       : String;
begin
  if DMMain_FD.BorrarRecibos=True Then
    begin
      IF MessageDlg('Atención está por hacer una operación de Borrado ,' + #13 +
        'Borra el Comprobante....?.', mtWarning, [mbYes, mbNo], 0) = mrYes  THEN
        BEGIN

          CDSRecibo_Form.Close;
          CDSRecibo_Form.Params.ParamByName('id').Value:=CDSRecCabID_RC.Value;
          CDSRecibo_Form.Open;

           // Verifico si estan los valores disponibles
          HayNC:=Not(CDSRecibo_FormNC_ID.AsString='');
          DMStoreProcedure.QControlFondos.Close;
          DMStoreProcedure.QControlFondos.ParamByName('id').Value  := CDSRecibo_FormID_RC.Value;
          DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:= 'RC';
          DMStoreProcedure.QControlFondos.Open;
          if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
            RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
          DMStoreProcedure.QControlFondos.Close;

          DMMain_FD.fdcGestion.StartTransaction;
          try

            CDSRecCab.Delete;
            CDSRecCab.ApplyUpdates(0);

            Detalle:= 'Borrado Recibo Abono : Nro.:'+
                       CDSRecCabNUMERO.AsString+'>> Rec.:'+
                       CDSRecibo_FormNROCPBTE.Value+'-'+
                       ' Cliente:'+CDSRecibo_FormNOMBRE.AsString+
                       ' Importe: '+
                       FormatFloat('0.00',CDSRecibo_FormTOTAL.AsFloat);
            DMMain_FD.LogFileFD(0,4,Detalle,'RECABONO');
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo hacer la operacion de borrado...');
          end;
       //   FormRecibo_2.Close;

          CDSRecCab.Close;
          CDSRecCab.Params.ParamByName('id').Clear;
          CDSRecCab.Open;

          CDSRecDet.Close;
          CDSRecDet.Params.ParamByName('id').Clear;
          CDSRecDet.Open;

          CDSRecibo_Form.Close;

      //    if (Assigned(FormRecibo_2)) then
      //      FreeAndNil(FormRecibo_2);
        end;
    end
  else
    ShowMessage('No est autorizado Para hacer una operación de Borrado,' + #13 +
                'Consulte con el Administrador.....');

  //  inherited;

end;

procedure TFormReciboAbonos.BuscarAbonoExecute(Sender: TObject);
begin
  inherited;
  if CDSRecDet.RecordCount>0 then
    begin
      while CDSRecDet.RecordCount>0 do
        begin
          CDSRecDet.First;
          CDSRecDet.Delete;
        end;
    end;

  if Not(Assigned(FormBuscadorCupones)) then
    FormBuscadorCupones:=TFormBuscadorCupones.Create(Self);
  FormBuscadorCupones.ShowModal;
  if (FormBuscadorCupones.ModalResult = mrOk) then
    begin
      FormBuscadorCupones.CDSCupones.First;
      while Not(FormBuscadorCupones.CDSCupones.Eof) do
        begin
          if (FormBuscadorCupones.CDSCuponesSeleccion.Value=True) and (FormBuscadorCupones.CDSCuponesPAGADO.Value='N')  Then
            begin
              edCodigoBarra.Text:= FormBuscadorCupones.CDSCuponesCODIGOBARRA1.Value;
              TraerCupon.Execute;
            end;
          FormBuscadorCupones.CDSCupones.Next;
        end;
    end;
end;

procedure TFormReciboAbonos.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorPagoCupones)) then
    FormBuscadorPagoCupones:=TFormBuscadorPagoCupones.Create(Self);
  FormBuscadorPagoCupones.ShowModal;
  if FormBuscadorPagoCupones.ModalResult=mrOk then
    begin
      datoNew:=IntToStr(FormBuscadorPagoCupones.Id);
      Recuperar.Execute;
//      CDSRecCab.Close;
//      CDSRecCab.Params.ParamByName('id').Value:=FormBuscadorPagoCupones.Id;
//      CDSRecCab.Open;
//
//      CDSComprob.Close;
//      CDSComprob.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
//      CDSComprob.Open;
//
//      CDSRecDet.Close;
//      CDSRecDet.Params.ParamByName('id').Value:=FormBuscadorPagoCupones.Id;
//      CDSRecDet.Open;

    end;
  
end;

procedure TFormReciboAbonos.AgregaDetalle;
Var UnitarioTotal:Real;
codigo:String;
begin
  inherited;
  CDSArticuloDebito.Close;
  CDSArticuloDebito.Params.ParamByName('cliente').Value:=CodigoCliente;
  CDSArticuloDebito.Open;
  codigo:=CDSArticuloDebitoCODIGOARTICULO_DEBITOS.Value;
  CDSArticuloDebito.Close;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,codigo);
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
      CDSVentaDetDESGLOZAIVA.Value        := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value           := CDSVentaCabDeposito.Value;
      CDSVentaDetMARGEN.AsFloat           := 0;
      CDSVentaDetCLASECPBTE.Value         := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,'0');
      CDSVentaDetUNITARIO_GRAVADO.AsFloat := CDSRecDetIMPORTE_DEBITO.AsFloat /(1+CDSVentaDetIVA_Tasa.AsFloat*0.01);

      CDSVentaDetUNITARIO_EXENTO.AsFloat  := 0;

      CDSVentaDetCOSTO_GRAVADO.AsFloat    := CDSRecDetIMPORTE_DEBITO.AsFloat /(1+ CDSVentaDetIVA_Tasa.AsFloat*0.01);

      CDSVentaDetCOSTO_EXENTO.AsFloat     := 0;

      CDSVentaDetCOSTO_TOTAL.AsFloat      := CDSRecDetIMPORTE_DEBITO.AsFloat /(1+CDSVentaDetIVA_Tasa.AsFloat*0.01);

      UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat+CDSVentaDetUnitario_Exento.AsFloat;
      if CDSVentaDetDesglozaIVA.Value='N' Then
        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal*(1+ CDSVentaDetIVA_Tasa.AsFloat/100)))
      else
        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
      CDSVentaDet.Post;
    end;
end;


procedure TFormReciboAbonos.CancelarExecute(Sender: TObject);
begin
  CDSRecCab.Close;
  CDSRecCab.Params.ParamByName('id').Clear;
  CDSRecCab.Open;

  CDSRecDet.Close;
  CDSRecDet.Params.ParamByName('id').Clear;
  CDSRecDet.Open;
  if FormReciboAbonos.Visible=True then
    inherited;

end;

procedure TFormReciboAbonos.CDSRecCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRecCabID.Value                    := ibgRecCab.IncrementFD(1);
  CDSRecCabFECHA.AsDateTime            := Date;
  CDSRecCabSUCURSAL.Value              := dbcSucursal.KeyValue;
  CDSRecCabID_COMPROBANTE_RECIBO.Value := -1;// aca hiba el tipo de comprbante recibo no lo boroor por compatbilidad dbcComprobante.KeyValue;

  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSRecCabNUMERO.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSRecCabNUMERO.Value:=1;
  QUltimoCodigo2.Close;

end;

procedure TFormReciboAbonos.CDSRecDetAfterPost(DataSet: TDataSet);
var codigo:String;
Puntero:TBookmark;
begin
  inherited;
  Puntero:=CDSRecDet.GetBookmark;
  CDSRecCabTOTAL.AsFloat:=0;
  CDSRecDet.First;
  CDSRecDet.DisableControls;
  codigo:=Copy(CDSRecDetCODIGOBARRA.Value,9,6);
  while not(CDSRecDet.Eof) do
    begin
      if codigo<>Copy(CDSRecDetCODIGOBARRA.Value,9,6) then
        raise Exception.Create('no se puede mesclar cupones de otros clientes...');
      CDSRecCabTOTAL.AsFloat :=  CDSRecCabTOTAL.AsFloat + CDSRecDetCOBRADO.AsFloat;
      CDSRecDet.Next;
    end;
  CDSRecDet.GotoBookmark(Puntero);
  //CDSRecDet.First;
  CDSRecDet.FreeBookmark(Puntero);
  CDSRecDet.EnableControls;
end;

procedure TFormReciboAbonos.CDSRecDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRecDetNOTADEBITO_ID.Value    := -1;
  CDSRecDetAJUSTE_ID.Value        := -1;
  CDSRecDetNOTADEBITO_TIPO.Value  := '';
  CDSRecDetNOTADEBITO_CLASE.Value := '';
end;

procedure TFormReciboAbonos.ConfirmaExecute(Sender: TObject);
begin
  if dbcComprobante.KeyValue<0 then
    Raise Exception.Create('No Hay Comprobante de Recibo Seleccionado');
  if dbcCtaCaja.KeyValue<0 then
    Raise Exception.Create('No Hay Caja Seleccionada');
  if dbcNotaDebito.KeyValue<0 then
    Raise Exception.Create('No Hay Nota de Debito Seleccionada');
  if dbcAjuste.KeyValue<0 then
    Raise Exception.Create('No Hay Comprobante de Ajuste Seleccionado');
  DatoNew:=CDSRecCabID.AsString;

  CDSRecCabSUCURSAL.Value              := dbcSucursal.KeyValue;
  CDSRecCabID_COMPROBANTE_RECIBO.Value := dbcComprobante.KeyValue;
  CDSRecCabID_AJUSTE.Value             := dbcAjuste.KeyValue;

  case rgModoDebito.ItemIndex of
    0:GenerarDebito.Execute;
    1:GenerarAjusteDeb.Execute;
  end;

  GenerarRecibo.Execute;

  inherited;
  Recuperar.Execute;
  if (FormReciboAbonos.Visible=True) Then
    btNuevo.SetFocus;
end;

procedure TFormReciboAbonos.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  dbcComprobante.KeyValue:=-1;
  dbcAjuste.KeyValue     :=-1;
  dbcNotaDebito.KeyValue :=-1;

  CDSComprob.Close;
  CDSComprob.CommandText:='select * from comprobantes where tipo_comprob =''RC'' and compra_venta=''V'' '+
                          'and sucursal=:suc and en_uso=''S'' ' +
                          'order by defecto desc ';
  CDSComprob.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSComprob.Open;

  CDSCompAjuste.Close;
  CDSCompAjuste.CommandText:='select * from comprobantes where tipo_comprob =''AJ'' and compra_venta=''V'' '+
                          'and sucursal=:suc and en_uso=''S'' ' +
                          'order by defecto desc ';

  CDSCompAjuste.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSCompAjuste.Open;


  CDSCompND.Close;
  CDSCompND.CommandText:='select * from comprobantes where tipo_comprob =''ND'' and compra_venta=''V'' '+
                             'and sucursal=:suc and en_uso=''S'' ' +
                             'order by defecto desc ';

  CDSCompND.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSCompND.Open;


end;

procedure TFormReciboAbonos.Nro_AjusteClick(Sender: TObject);
begin
  inherited;
  if (CDSRecDetAJUSTE_ID.AsString<>'') and (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) Then
    begin
      if Not(Assigned(FormAjustesCCVenta_2)) then
        FormAjustesCCVenta_2:=TFormAjustesCCVenta_2.Create(Self);
      FormAjustesCCVenta_2.DatoNew  :=CDSRecDetAJUSTE_ID.AsString;
      FormAjustesCCVenta_2.TipoCpbte:='AJ';
      FormAjustesCCVenta_2.Recuperar.Execute;
      FormAjustesCCVenta_2.Show;
      FormAjustesCCVenta_2.BringToFront;
    end;

end;

procedure TFormReciboAbonos.Nro_NotaCreditoClick(Sender: TObject);
begin
  inherited;
  if (CDSRecDetNOTADEBITO_ID.AsString<>'') and (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) Then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=CDSRecDetNOTADEBITO_ID.AsString;
      FormCpbte_2.TipoCpbte:='ND';
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
      FormCpbte_2.BringToFront;
    end;

end;

procedure TFormReciboAbonos.edCodigoBarraClick(Sender: TObject);
begin
  inherited;
  edCodigoBarra.SelectAll;
end;

procedure TFormReciboAbonos.edCodigoBarraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key= VK_RETURN then
    begin
      Key:=0;
      TraerCupon.Execute;
    end;
  
end;

procedure TFormReciboAbonos.FormActivate(Sender: TObject);
begin
  inherited;
 // if DatoNew<>'' Then Recuperar.Execute;
end;

procedure TFormReciboAbonos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ReciboAbono.ini');
 //*************************************************************
  ArchivoIni.WriteInteger('dato', 'Sucursal', dbcSucursal.KeyValue);

  ArchivoIni.WriteInteger('dato', 'Recibo', dbcComprobante.KeyValue);
  ArchivoIni.WriteInteger('dato', 'Caja', dbcCtaCaja.KeyValue);
  ArchivoIni.WriteInteger('dato', 'Ajuste', dbcAjuste.KeyValue);
  ArchivoIni.WriteInteger('dato', 'NDebito', dbcNotaDebito.KeyValue);
  ArchivoIni.WriteInteger('dato', 'Modo', rgModoDebito.ItemIndex);
  ArchivoIni.WriteBool('dato', 'Inicio', chbInicio.Checked);
  ArchivoIni.WriteBool('dato', 'Efectivo', chbEfectivo.Checked);

  ArchivoIni.Free;

  CDSSucursal.Close;
  CDSSucFac.Close;

  Action:=caFree;

end;

procedure TFormReciboAbonos.FormCreate(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  SinBde:=2;
  AddClientDataSet(CDSRecCab,DSPRecCab);
  AddClientDataSet(CDSRecDet,DSPRecDet);
  CDSSucursal.Close;
  CDSSucursal.Open;
  CDSSucFac.Open;
  CDSRecCab.Open;
  CDSRecDet.Open;
  lbIntervalo.Caption := IntToStr(DiasAbono);
  lbCargo.Caption     := IntToStr(CargoAbono);


  CDSCajas.Close;
  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      CDSCajas.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                'where  (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0)';
      CDSCajas.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end;
  CDSCajas.Open;
 //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ReciboAbono.ini');
  dbcSucursal.KeyValue:= ArchivoIni.ReadInteger('dato', 'Sucursal',SucursalPorDefecto);

  CDSComprob.Close;
  CDSComprob.CommandText:='select * from comprobantes where tipo_comprob =''RC'' and compra_venta=''V'' '+
                          'and sucursal=:suc and en_uso=''S'' ' +
                          'order by defecto desc ';
  CDSComprob.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSComprob.Open;

  CDSCompAjuste.Close;
  CDSCompAjuste.CommandText:='select * from comprobantes where tipo_comprob =''AJ'' and compra_venta=''V'' '+
                          'and sucursal=:suc and en_uso=''S'' ' +
                          'order by defecto desc ';

  CDSCompAjuste.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSCompAjuste.Open;


  CDSCompND.Close;
  CDSCompND.CommandText:='select * from comprobantes where tipo_comprob =''ND'' and compra_venta=''V'' '+
                             'and sucursal=:suc and en_uso=''S'' ' +
                             'order by defecto desc ';

  CDSCompND.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSCompND.Open;


  dbcComprobante.KeyValue := ArchivoIni.ReadInteger('dato', 'Recibo', -1);
  dbcCtaCaja.KeyValue     := ArchivoIni.ReadInteger('dato', 'Caja', CajaPorDefecto);
  dbcAjuste.KeyValue      := ArchivoIni.ReadInteger('dato', 'Ajuste', -1);
  dbcNotaDebito.KeyValue  := ArchivoIni.ReadInteger('dato', 'NDebito', -1);
  rgModoDebito.ItemIndex  := ArchivoIni.ReadInteger('dato', 'Modo', 0);
  chbInicio.Checked       := ArchivoIni.ReadBool('dato', 'Inicio', False);
  chbEfectivo.Checked     := ArchivoIni.ReadBool('dato', 'Efectivo',True);

  ArchivoIni.Free;
 //*************************************************************
  Campo:='id';
  Tabla:='Cupon_Abonos_rc_cab';
 end;

procedure TFormReciboAbonos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormReciboAbonos:=nil;
end;

procedure TFormReciboAbonos.FormShow(Sender: TObject);
begin
  inherited;
  CDSCajas.Close;
  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      CDSCajas.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                'where  (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0)';
      CDSCajas.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end;
  CDSCajas.Open;
  if CDSCajas.Locate('id_cuenta_caja', dbcCtaCaja.KeyValue,[])=False Then
    begin
      sbEstado.SimpleText:='Caja Cerrada...';
      dbcCtaCaja.KeyValue:=CajaPorDefecto;
    end;
end;

procedure TFormReciboAbonos.GenerarAjusteDebExecute(Sender: TObject);
var Id_AjusteDestino:Integer;
    HacerDeb:Boolean;
    ImporteAjuste:Extended;
begin
  HacerDeb:=False;
  CDSRecDet.First;
  while (not(CDSRecDet.Eof)) and (HacerDeb=False) do
    begin
      if (CDSRecDetGENERAR_DEBITO.Value='S') and (CDSRecDetIMPORTE_DEBITO.AsFloat>0.01) then
        HacerDeb:=True;
      CDSRecDet.Next;
    end;
  if HacerDeb then
    begin
      Id_AjusteDestino:=IBId_Ajuste.IncrementFD(1);
      ImporteAjuste   :=0;
      CDSRecDet.First;
      if CDSRecDet.RecordCount>1 then
        begin
          while (not(CDSRecDet.Eof)) do
            begin
              if (CDSRecDetGENERAR_DEBITO.Value='S') and (CDSRecDetIMPORTE_DEBITO.AsFloat>0.01) then
                begin
                  ImporteAjuste := CDSRecDetIMPORTE_DEBITO.AsFloat+ ImporteAjuste;
                  CDSRecDet.Edit;
                  CDSRecDetAJUSTE_ID.Value         :=Id_AjusteDestino;
                  CDSRecDetAJUSTE_TIPO.Value       :='AJ';
                  CDSRecDetAJUSTE_CLASE.Value      :=CDSCompAjusteCLASE_COMPROB.Value;
                  CDSRecDet.Post;
                end;
              CDSRecDet.Next;
            end;
        end
      else
        begin
          ImporteAjuste:=0;
          if (CDSRecDetGENERAR_DEBITO.Value='S') and (CDSRecDetIMPORTE_DEBITO.AsFloat>0.01) then
            begin
              ImporteAjuste := CDSRecDetIMPORTE_DEBITO.AsFloat+ ImporteAjuste;
              CDSRecDet.Edit;
              CDSRecDetAJUSTE_ID.Value         :=Id_AjusteDestino;
              CDSRecDetAJUSTE_TIPO.Value       :='AJ';
              CDSRecDetAJUSTE_CLASE.Value      :=CDSCompAjusteCLASE_COMPROB.Value;
              CDSRecDet.Post;
            end;
        end;
      if CDSRecDet.State<>dsBrowse then CDSRecDet.Post;
      CDSRecDet.First;
//      Id_AjusteDestino:=IBId_Ajuste.IncrementFD(1);
      //************************************************
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spIngresarAjuste.Close;
        spIngresarAjuste.ParamByName('id_ajuste').Value     := Id_AjusteDestino;
        spIngresarAjuste.ParamByName('id_comprob').Value    := dbcAjuste.KeyValue;
        spIngresarAjuste.ParamByName('cliente').Value       := CodigoCliente;
        spIngresarAjuste.ParamByName('haber').Value         := 0;
        spIngresarAjuste.ParamByName('debe').Value          := ImporteAjuste;//DatosRecibos.CDSReciboTOTAL.AsFloat * (edPorcentaje.Value * 0.01); // Calculo el 4%

        spIngresarAjuste.ParamByName('detalle').Value       := 'Interes Pago';
        spIngresarAjuste.ParamByName('fecha_op').Value      := Date;
        spIngresarAjuste.ParamByName('sucursal').Value      := dbcSucursal.KeyValue;
        spIngresarAjuste.ParamByName('usuario').Value       := DMMain_FD.UsuarioActivo;
        spIngresarAjuste.ParamByName('observaciones').Value := 'Recargo Pago Fuera de Termino';
        spIngresarAjuste.ParamByName('FECHA_VTO').Value     := Date;

        spIngresarAjuste.ExecProc;
        DMMain_FD.fdcGestion.Commit;

      except

        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se Ingresaron los Ajustes en las Ctas ....');
      end;
    end;
end;


procedure TFormReciboAbonos.GenerarDebitoExecute(Sender: TObject);
VAR HacerDeb:Boolean;
begin
  inherited;
  HacerDeb:=False;
  CDSRecDet.First;
  while (not(CDSRecDet.Eof)) and (HacerDeb=False) do
    begin
      if (CDSRecDetGENERAR_DEBITO.Value='S') and (CDSRecDetIMPORTE_DEBITO.AsFloat>0.01) then
        HacerDeb:=True;
      CDSRecDet.Next;
    end;
  if HacerDeb then
    begin
      if Not(Assigned( FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.Agregar.Execute;
      AgregarCabecera;
      CDSRecDet.First;
      while (not(CDSRecDet.Eof)) do
        begin
          if (CDSRecDetGENERAR_DEBITO.Value='S') and (CDSRecDetIMPORTE_DEBITO.AsFloat>0.01) then
            begin
              AgregaDetalle;
              CDSRecDet.Edit;
              CDSRecDetNOTADEBITO_ID.Value     :=DatosVentas.CDSVentaCabID_FC.Value;
              CDSRecDetNOTADEBITO_TIPO.Value   :=DatosVentas.CDSVentaCabTIPOCPBTE.Value;
              CDSRecDetNOTADEBITO_CLASE.Value  :=DatosVentas.CDSVentaCabCLASECPBTE.Value;
              CDSRecDet.Post;
            end;
          CDSRecDet.Next;
        end;
      if CDSRecDet.State<>dsBrowse then CDSRecDet.Post;
      FormCpbte_2.Confirma.Execute;
      FormCpbte_2.Salir.Execute;
//      FreeAndNil(FormCpbte_2);
    end;
  CDSRecDet.First;

end;

procedure TFormReciboAbonos.GenerarReciboExecute(Sender: TObject);
var estado:Boolean;
begin
  inherited;
  if (CDSRecDetCOBRADO.AsFloat>0.01) then
    begin
      if Not(Assigned(FormRecibo_2)) then
        FormRecibo_2:=TFormRecibo_2.Create(Self);
      FormRecibo_2.CajaPorDefecto  := dbcCtaCaja.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;// CajaPorDefecto;
      formRecibo_2.Agregar.Execute;
      DMMain_FD.CajaSeleccionada    := dbcCtaCaja.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
      FormRecibo_2.CajaPorDefecto  := dbcCtaCaja.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;// CajaPorDefecto;

      DatosRecibos.CDSReciboFECHA.AsDateTime:=edFecha.Date;
      DatosRecibos.CDSReciboSUCURSALSetText(DatosRecibos.CDSReciboSUCURSAL,IntToStr(dbcSucursal.KeyValue));

      DatosRecibos.CDSReciboCODIGOSetText(DatosRecibos.CDSReciboCODIGO,CodigoCliente);
      if DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.AsString='' then
        DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
      DatosRecibos.CDSReciboTOTALSetText(DatosRecibos.CDSReciboTOTAL,CDSRecCabTOTAL.AsString);
      DatosRecibos.CDSReciboID_REC_CUPON.Value:=CDSRecCabID.Value;
      estado:=FormRecibo_2.UsarGrupoFiltro;
      FormRecibo_2.UsarGrupoFiltro:=False;
      CDSRecCabID_RC.Value:=DatosRecibos.CDSReciboID_RC.Value;
      CDSRecDet.First;
      while not(CDSRecDet.Eof) do
        begin
          if  Not(VarIsNull(CDSRecDetNOTADEBITO_ID.Value)) and (CDSRecDetNOTADEBITO_ID.Value>-1) then
            if DatosRecibos.CDSMovCCVta.Locate('ID_CPBTE',CDSRecDetNOTADEBITO_ID.ASString,[]) then
              if DatosRecibos.CDSMovCCVtaSALDO.Value>0.01 then
                FormRecibo_2.dbgAplicacionesDragDrop(Sender, FormRecibo_2.dbgMovCC,10,10);

          if Not(VarIsNull(CDSRecDetAJUSTE_ID.Value)) and (CDSRecDetAJUSTE_ID.Value>-1)  then
            if DatosRecibos.CDSMovCCVta.Locate('ID_CPBTE',CDSRecDetAJUSTE_ID.ASString,[]) then
              if DatosRecibos.CDSMovCCVtaSALDO.Value>0.01 then
                FormRecibo_2.dbgAplicacionesDragDrop( Sender, FormRecibo_2.dbgMovCC,10,10);

          if  Not(VarIsNull(CDSRecDetFACTURA_ID.Value)) and (CDSRecDetFACTURA_ID.Value>-1) then
            if DatosRecibos.CDSMovCCVta.Locate('ID_CPBTE',CDSRecDetFACTURA_ID.ASString,[]) then
              if DatosRecibos.CDSMovCCVtaSALDO.Value>0.01 then
                FormRecibo_2.dbgAplicacionesDragDrop(Sender, FormRecibo_2.dbgMovCC,10,10);

          CDSRecDet.Next;
        end;
      FormRecibo_2.UsarGrupoFiltro:=estado;
      if (TForm(Self.Owner).Name='FormImportarCobroCupones') then
        begin
          FormRecibo_2.Confirma.Execute;
          FormRecibo_2.Close;
        end
      else
        begin
          if chbEfectivo.Checked then
            begin
              FormRecibo_2.Confirma.Execute;
              FormRecibo_2.Close;
            end
          else
            begin
              formRecibo_2.pcDetalle.SelectNextPage(True,True);
              FormRecibo_2.FrameMovValoresIngreso1.dbgMovimientos.SetFocus;
            end;
        end
    end;
//  if (Assigned(FormRecibo_2)) then
//     FreeAndNil(FormRecibo_2);
end;

procedure TFormReciboAbonos.Nro_ReciboClick(Sender: TObject);
begin
  inherited;
  if (CDSRecCabID_RC.AsString<>'') and (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormRecibo_2)) then
        FormRecibo_2:=TFormRecibo_2.Create(Self);
      FormRecibo_2.DatoNew:=CDSRecCabID_RC.AsString;
      FormRecibo_2.TipoCpbte:='RC';
      FormRecibo_2.Recuperar.Execute;
      FormRecibo_2.Show;
      FormRecibo_2.BringToFront;
    end;

end;

procedure TFormReciboAbonos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRecCab.Close;
  CDSRecCab.Params.ParamByName('id').Value:=strToInt(DatoNew);
  CDSRecCab.Open;

  CDSRecDet.Close;
  CDSRecDet.Params.ParamByName('id').Value:=strToInt(DatoNew);
  CDSRecDet.Open;

//  if CDSRecCabECHA_HORA.AsString='' then
//    FormRecibo_2.Caption:='Recibo -- '+DatosRecibos.CDSReciboFECHA.AsString+'//'+Copy(DatosRecibos.CDSReciboUSUARIO.Value,1,15)
//  else
//    FormRecibo_2.Caption:='Recibo -- '+DatosRecibos.CDSReciboFECHA_HORA.AsString+'//'+Copy(DatosRecibos.CDSReciboUSUARIO.Value,1,15);
//

end;

procedure TFormReciboAbonos.TraerCuponExecute(Sender: TObject);
var id:Integer;
divisor:Integer;
begin
  inherited;
  CodigoCliente:='';
  if Trim(edCodigoBarra.Text)<>'' then
    begin
      id:= -1;
      // Buscao el cupon **************
      QCodigo_Barra.Close;
      QCodigo_Barra.ParamByName('codigobarra').Value:=Trim(edCodigoBarra.Text);
      QCodigo_Barra.Open;
      if QCodigo_BarraID.AsString<>'' then
        id:=QCodigo_BarraID.Value
      else
        begin
          QCodigoBarra_Cliente_1vto.Close;
          QCodigoBarra_Cliente_1vto.ParamByName('codigo').Value:=Trim(Copy(edCodigoBarra.Text,1,6));
          QCodigoBarra_Cliente_1vto.ParamByName('fecha').Value :=Trim(Copy(edCodigoBarra.Text,7,2)+'/'+Copy(edCodigoBarra.Text,9,2)+'/'+Copy(edCodigoBarra.Text,11,4));
          QCodigoBarra_Cliente_1vto.Open;
          if QCodigoBarra_Cliente_1vtoID.AsString<>'' then
            id:=QCodigoBarra_Cliente_1vtoID.Value
          else
            begin
              QCodigoBarra_Nro_Cliente.Close;
              QCodigoBarra_Nro_Cliente.ParamByName('codigo').Value :=Trim(Copy(edCodigoBarra.Text,9,6));
              QCodigoBarra_Nro_Cliente.ParamByName('numero').Value :=Trim(Copy(edCodigoBarra.Text,1,8));
              QCodigoBarra_Nro_Cliente.Open;
              if QCodigoBarra_Nro_ClienteID.AsString<>'' then
                id:=QCodigoBarra_Nro_ClienteID.Value
            end;
        end;
      // **************************
      QCodigo_Barra.Close;
      QCodigoBarra_Cliente_1vto.Close;
      QCodigoBarra_Nro_Cliente.Close;

      if (id>-1) then
        begin
          CDSCupones.Close;
          CDSCupones.Params.ParamByName('id').Value:=id;
          CDSCupones.Open;
          if CDSCuponesPAGADO.Value<>'S' then
            begin
              if Not(CDSCupones.IsEmpty) then
                begin
                   CodigoCliente                   := CDSCuponesCLIENTE.AsString;
                   CDSRecDet.Append;
                   CDSRecDetID.Value               := ibgIdDet.IncrementFD(1);
                   CDSRecDetID_CAB.Value           := CDSRecCabID.Value;
                   CDSRecDetID_CUPON.Value         := CDSCuponesID.Value;
                   CDSRecDetCODIGOBARRA.Value      := Trim(edCodigoBarra.Text);
                   CDSRecDetVTO1.Value             := CDSCuponesFECHA_VTO1.Value;
                   CDSRecDetVTO2.Value             := CDSCuponesFECHA_VTO2.Value;
                   CDSRecDetPRECIO1.Value          := CDSCuponesIMPORTE_1.Value;
                   CDSRecDetPRECIO2.Value          := CDSCuponesIMPORTE_2.Value;
               //    CDSRecDetMUESTRANOMBRE.Value    := CDSCuponesIMPORTE_2.Value;
                   CDSRecDetGENERAR_DEBITO.Value   := 'N';
                   CDSRecDetIMPORTE_DEBITO.AsFloat := 0;
                   CDSRecDetCOBRADO.Value          := CDSRecDetPRECIO1.Value;
                   if ( CDSRecCabFECHA.AsDateTime > CDSRecDetVTO1.AsDateTime )then
                     begin
                       CDSRecDetGENERAR_DEBITO.Value   := 'S';
                       CDSRecDetIMPORTE_DEBITO.AsFloat := CDSRecDetPRECIO2.AsFloat - CDSRecDetPRECIO1.AsFloat;
                       CDSRecDetCOBRADO.Value          := CDSRecDetPRECIO2.Value;
                       if ( CDSRecCabFECHA.AsDateTime > CDSRecDetVTO2.AsDateTime )then
                         begin
                           divisor:= DaysBetween(CDSRecCabFECHA.AsDateTime,CDSRecDetVTO2.AsDateTime);
                           if DiasAbono>0 then
                             CDSRecDetIMPORTE_DEBITO.AsFloat := CDSRecDetIMPORTE_DEBITO.AsFloat + CargoAbono * (divisor div DiasAbono)
                           else
                             CDSRecDetIMPORTE_DEBITO.AsFloat := CDSRecDetIMPORTE_DEBITO.AsFloat + CargoAbono * (divisor div 1);

                           CDSRecDetCOBRADO.AsFLoat        := CDSRecDetPRECIO1.AsFloat + CDSRecDetIMPORTE_DEBITO.AsFloat;
                          end;

                     end;
                   CDSRecDetFACTURA_ID.Value     := CDSCuponesFACTURA_ID.Value;
                   CDSRecDetFACTURA_TIPO.Value   := CDSCuponesFACTURA_TIPO.Value;
                   CDSRecDetFACTURA_CLASE.Value  := CDSCuponesFACTURA_CLASE.Value;
                   CDSRecDet.Post;
                 end;
            end;
        end;
    end;
  edCodigoBarra.Text:='';
end;

end.