unit UPanelControlOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, StdCtrls, Mask, JvExMask, JvToolEdit,
  ExtCtrls, FMTBcd, SqlExpr, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBCtrls,
  ActnList, JvBaseEdits, JvDBControls, Buttons, DBXCommon, Vcl.ComCtrls,
  JvExControls, JvLabel, System.Actions,DateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormControlOP = class(TForm)
    Panel1: TPanel;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorSALDO_INICIAL: TFMTBCDField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFMTBCDField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField;
    dbgOPago: TJvDBGrid;
    pnCabecera: TPanel;
    edNombreProveedor: TEdit;
    ceProveedor: TJvComboEdit;
    Label1: TLabel;
    CDSOPago: TClientDataSet;
    DSPOPago: TDataSetProvider;
    CDSOPagoID_OP: TIntegerField;
    CDSOPagoTIPOCPBTE: TStringField;
    CDSOPagoCLASECPBTE: TStringField;
    CDSOPagoNROCPBTE: TStringField;
    CDSOPagoCODIGO: TStringField;
    CDSOPagoNOMBRE: TStringField;
    DSOPago: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    CDSOPagoNC_ID_FC: TIntegerField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DSNc: TDataSource;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DSMovCaja: TDataSource;
    Label11: TLabel;
    DSRet: TDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Button1: TButton;
    Button2: TButton;
    chTodas: TCheckBox;
    Label7: TLabel;
    DSRetIngBr: TDataSource;
    dbeGan: TJvDBCalcEdit;
    dbeValores: TJvDBCalcEdit;
    dbgIIBB: TJvDBCalcEdit;
    edTotalValores: TJvCalcEdit;
    DSPMovAplicaCCCompra: TDataSetProvider;
    CDSMovAplicaCCCompra: TClientDataSet;
    CDSMovAplicaCCCompraID_MOV: TIntegerField;
    CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField;
    CDSMovAplicaCCCompraFECHA: TSQLTimeStampField;
    CDSMovAplicaCCCompraPROVEEDOR: TStringField;
    CDSMovAplicaCCCompraID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraTIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraCLASECPBTE: TStringField;
    CDSMovAplicaCCCompraNUMEROCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCCompraDETALLE: TStringField;
    CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField;
    CDSMovAplicaCCCompraCONCILIADO: TStringField;
    DSMovAplicaCCCompra: TDataSource;
    dbgAplicaciones: TDBGrid;
    chbGravar: TCheckBox;
    edTotalApl: TJvCalcEdit;
    btActivar: TButton;
    btInactive: TButton;
    SpeedButton1: TSpeedButton;
    dbgClon: TDBGrid;
    CDSClone: TClientDataSet;
    DSClone: TDataSource;
    btGuardarAplicaciones: TButton;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    CDSOPagoFECHA: TSQLTimeStampField;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    CDSACta: TClientDataSet;
    DSPACta: TDataSetProvider;
    btCaja: TButton;
    edIdCaja: TEdit;
    spAgregaEfectivo: TSpeedButton;
    edIdCtaCaja: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBNavigator1: TDBNavigator;
    Label16: TLabel;
    edTotalApl_2: TJvCalcEdit;
    DSFcComp: TDataSource;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Button3: TButton;
    Label20: TLabel;
    CDSOPagoLETRAOP: TStringField;
    CDSOPagoSUCOP: TStringField;
    CDSOPagoNUMEROOP: TStringField;
    Button4: TButton;
    Button5: TButton;
    CDSACtaID_MOV: TIntegerField;
    CDSACtaFECHA: TSQLTimeStampField;
    CDSACtaPROVEEDOR: TStringField;
    CDSACtaID_CPBTE: TIntegerField;
    CDSACtaTIPOCPBTE: TStringField;
    CDSACtaCLASECPBTE: TStringField;
    CDSACtaNUMEROCPBTE: TStringField;
    CDSACtaDETALLE: TStringField;
    DBGrid1: TDBGrid;
    DSACta: TDataSource;
    CDSACtaMUESTRAFACTURA: TStringField;
    Label21: TLabel;
    Button6: TButton;
    Label22: TLabel;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    chbTodosLosProvee: TCheckBox;
    QRetIngBrCab: TFDQuery;
    QACta: TFDQuery;
    QRet: TFDQuery;
    QMovcaja: TFDQuery;
    QOPago: TFDQuery;
    QOPagoFECHA: TSQLTimeStampField;
    QOPagoID_OP: TIntegerField;
    QOPagoTIPOCPBTE: TStringField;
    QOPagoCLASECPBTE: TStringField;
    QOPagoNROCPBTE: TStringField;
    QOPagoCODIGO: TStringField;
    QOPagoNOMBRE: TStringField;
    QOPagoTOTAL_NETO: TFloatField;
    QOPagoDESCUENTO: TFloatField;
    QOPagoDESCUENTO_PORCENTAJE: TFloatField;
    QOPagoLETRAOP: TStringField;
    QOPagoSUCOP: TStringField;
    QOPagoNUMEROOP: TStringField;
    QOPagoTOTAL: TFloatField;
    QOPagoNC_ID_FC: TIntegerField;
    QOPagoSALDO_APLICAR: TFloatField;
    CDSOPagoTOTAL_NETO: TFloatField;
    CDSOPagoDESCUENTO: TFloatField;
    CDSOPagoDESCUENTO_PORCENTAJE: TFloatField;
    CDSOPagoTOTAL: TFloatField;
    CDSOPagoSALDO_APLICAR: TFloatField;
    QMovcajaSUM: TFloatField;
    QRetIMPUESTO_RETENIDO: TFloatField;
    QACtaID_MOV: TIntegerField;
    QACtaFECHA: TSQLTimeStampField;
    QACtaPROVEEDOR: TStringField;
    QACtaID_CPBTE: TIntegerField;
    QACtaTIPOCPBTE: TStringField;
    QACtaCLASECPBTE: TStringField;
    QACtaNUMEROCPBTE: TStringField;
    QACtaIMPORTE: TFloatField;
    QACtaDETALLE: TStringField;
    QACtaMUESTRAFACTURA: TStringField;
    CDSACtaIMPORTE: TFloatField;
    QMovACta: TFDQuery;
    QFcComp: TFDQuery;
    QBorrarMovACta: TFDQuery;
    QFcCompID_FC: TIntegerField;
    QFcCompTIPOCPBTE: TStringField;
    QFcCompCLASECPBTE: TStringField;
    QFcCompCODIGO: TStringField;
    QFcCompNROCPBTE: TStringField;
    QFcCompLETRAFAC: TStringField;
    QFcCompSUCFAC: TStringField;
    QFcCompNUMEROFAC: TStringField;
    QFcCompNOMBRE: TStringField;
    QFcCompRAZONSOCIAL: TStringField;
    QFcCompDIRECCION: TStringField;
    QFcCompCPOSTAL: TStringField;
    QFcCompLOCALIDAD: TStringField;
    QFcCompTIPOIVA: TIntegerField;
    QFcCompCUIT: TStringField;
    QFcCompFECHACOMPRA: TSQLTimeStampField;
    QFcCompFECHAVTO: TSQLTimeStampField;
    QFcCompCONDICIONCOMPRA: TIntegerField;
    QFcCompANULADO: TStringField;
    QFcCompORDENCOMPRA: TStringField;
    QFcCompN_OPERACION2: TFloatField;
    QFcCompNETOGRAV1: TFloatField;
    QFcCompDSTO: TFloatField;
    QFcCompDSTOIMPORTE: TFloatField;
    QFcCompNETOGRAV2: TFloatField;
    QFcCompNETOEXEN1: TFloatField;
    QFcCompNETOEXEN2: TFloatField;
    QFcCompIMPORTEEXCLUIDO2: TFloatField;
    QFcCompIMPORTEEXCLUIDO1: TFloatField;
    QFcCompRETENCION_IVA: TFloatField;
    QFcCompTOTAL: TFloatField;
    QFcCompDEBE: TFloatField;
    QFcCompAPLICA: TStringField;
    QFcCompOBSERVACION1: TStringField;
    QFcCompOBSERVACION2: TStringField;
    QFcCompSUCURSALCOMPRA: TIntegerField;
    QFcCompZONA: TIntegerField;
    QFcCompDEPOSITO: TIntegerField;
    QFcCompDESGLOZAIVA: TStringField;
    QFcCompCALCULA_SOBRETASA: TStringField;
    QFcCompFECHAFISCAL: TSQLTimeStampField;
    QFcCompNETOMONOTRIBUTO1: TFloatField;
    QFcCompNETOMONOTRIBUTO2: TFloatField;
    QFcCompCPBTE_INTERNO: TStringField;
    QFcCompINGRESA_A_CTACTE: TStringField;
    QFcCompINGRESA_LIBRO_IVA: TStringField;
    QFcCompREDUCIDA: TStringField;
    QFcCompTIPO_PROVEEDOR: TStringField;
    QFcCompJURIDICCION: TIntegerField;
    QFcCompPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    QFcCompFECHA_HORA: TSQLTimeStampField;
    QFcCompUSUARIO: TStringField;
    QFcCompTOTAL_UNIDADES: TFloatField;
    QFcCompMONEDA_CPBTE: TIntegerField;
    QFcCompMONEDA_CPBTE_COTIZACION: TFloatField;
    QFcCompNUMERO_OPERACION: TStringField;
    QFcCompCAE: TStringField;
    QFcCompCAE_VENCIMIENTO: TSQLTimeStampField;
    QFcCompFACTURA_ELECTRONICA: TStringField;
    QFcCompCOD_OPERACION_AFIP: TSingleField;
    QFcCompTIPOCOMP_AFIP: TStringField;
    QFcCompCOD_CARACT_RECP_AFIP: TIntegerField;
    QFcCompCOD_CARACT_EMIS_AFIP: TIntegerField;
    QFcCompNRO_IIBB_RECEP: TStringField;
    QFcCompNRO_RENSPA_EMISOR: TStringField;
    QFcCompNRO_RENSPA_RECEP: TStringField;
    QFcCompFECHA_OPERACION: TSQLTimeStampField;
    QFcCompLUGAR_REALIZA_AFIP: TStringField;
    QFcCompCOD_MOTIVO_AFIP: TIntegerField;
    QFcCompNRO_RUCA_EMISOR_AFIP: TSingleField;
    QFcCompNRO_RUCA_RECEPTOR_AFIP: TSingleField;
    QFcCompFECHA_FAENA_AFIP: TSQLTimeStampField;
    QFcCompFECHA_RECEP_AFIP: TSQLTimeStampField;
    QFcCompDATOS_ADIC_AFIP: TStringField;
    QFcCompFECHA_INCIO_ACTIV: TSQLTimeStampField;
    QFcCompCODIGOBARRA_AFIP: TStringField;
    QFcCompCUIT_AUTORIZADO: TStringField;
    QFcCompNOMBRE_AUTORIZADO: TStringField;
    QFcCompTIPO_LIQUIDACION: TStringField;
    QFcCompCUIT_AUTORIZADO_RECEP: TStringField;
    QFcCompID_CPBTE_ANULADO_LIQ: TIntegerField;
    QFcCompLOTE_AFIP: TStringField;
    QFcCompID_OBRA: TIntegerField;
    QFcCompNC_POR_DIFERENCIA: TStringField;
    CDSMovAplicaCCCompraIMPORTE: TFloatField;
    CDSMovAplicaCCCompraAPLICA_NETO: TFloatField;
    CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFloatField;
    QActiveTr: TFDQuery;
    QInactiveTr: TFDQuery;
    QNc: TFDQuery;
    QNcTIPOCPBTE: TStringField;
    QNcCLASECPBTE: TStringField;
    QNcNROCPBTE: TStringField;
    QNcTOTAL: TFloatField;
    QRetIngBrCabID: TIntegerField;
    QRetIngBrCabCODIGO: TStringField;
    QRetIngBrCabNOMBRE: TStringField;
    QRetIngBrCabDIRECCION: TStringField;
    QRetIngBrCabCODIGOPOSTAL: TStringField;
    QRetIngBrCabLOCALIDAD: TStringField;
    QRetIngBrCabCUIT: TStringField;
    QRetIngBrCabTIPOCPBTE: TStringField;
    QRetIngBrCabCLASECPBTE: TStringField;
    QRetIngBrCabFECHA: TSQLTimeStampField;
    QRetIngBrCabLETRA: TStringField;
    QRetIngBrCabSUC: TStringField;
    QRetIngBrCabNUMERO: TStringField;
    QRetIngBrCabSUCURSAL: TIntegerField;
    QRetIngBrCabID_CPBTE_ORIGEN: TIntegerField;
    QRetIngBrCabTIPOCPBTE_ORIGEN: TStringField;
    QRetIngBrCabCLASECPBTE_ORIGEN: TStringField;
    QRetIngBrCabNROCPBTE_ORIGEN: TStringField;
    QRetIngBrCabNROCPBTE: TStringField;
    QRetIngBrCabTOTAL: TFloatField;
    QRetIngBrCabNOMBRE_AGTE_RET: TStringField;
    QRetIngBrCabDIRECCION_AGTE_RET: TStringField;
    QRetIngBrCabCUIT_AGTE_RET: TStringField;
    QRetIngBrCabCPOSTAL_AGTE_RET: TStringField;
    QRetIngBrCabLOCALIDAD_AGTE_RET: TStringField;
    QRetIngBrCabNRO_AGTE_RET: TStringField;
    QRetIngBrCabNETO_GRAVADO: TFloatField;
    QRetIngBrCabTASA_RETENCION: TFloatField;
    QRetIngBrCabANULADO: TStringField;
    QRetIngBrCabESTADO: TStringField;
    QRetIngBrCabNRO_IIBB: TStringField;
    spCajaMov: TFDStoredProc;
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure ceProveedorButtonClick(Sender: TObject);
    procedure CDSOPagoAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSOPagoAfterPost(DataSet: TDataSet);
    procedure dbgOPagoDblClick(Sender: TObject);
    procedure btActivarClick(Sender: TObject);
    procedure btInactiveClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btGuardarAplicacionesClick(Sender: TObject);
    procedure chTodasClick(Sender: TObject);
    procedure btCajaClick(Sender: TObject);
    procedure spAgregaEfectivoClick(Sender: TObject);
    procedure CDSMovAplicaCCCompraAfterDelete(DataSet: TDataSet);
    procedure dbgAplicacionesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgAplicacionesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure CDSCloneAfterScroll(DataSet: TDataSet);
    procedure CDSMovAplicaCCCompraNewRecord(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Traer;
    procedure SumaAplicaciones;
  end;

var
  FormControlOP: TFormControlOP;

implementation

uses UBuscadorProveedor,DMBuscadoresForm, UDMain_FD, UOPago_2,
  UBuscaCajasCerradas;

{$R *.dfm}

procedure TFormControlOP.SpeedButton1Click(Sender: TObject);
begin
  CDSOPago.Edit;
  CDSOPagoTOTAL.AsFloat := edTotalValores.Value;
  if (QNcTOTAL.AsString<>'') and (QNcTOTAL.AsFloat>0) Then
    CDSOPagoDESCUENTO.AsFloat := QNcTOTAL.AsFloat
  else
    CDSOPagoDESCUENTO.AsFloat:=0;
  CDSOPagoTOTAL_NETO.AsFloat:=CDSOPagoTOTAL.AsFloat+CDSOPagoDESCUENTO.AsFloat;
  CDSOPagoDESCUENTO_PORCENTAJE.AsFloat:= ((CDSOPagoTOTAL_NETO.AsFloat - CDSOPagoTOTAL.AsFloat)/CDSOPagoTOTAL_NETO.AsFloat)*100;

 end;

procedure TFormControlOP.spAgregaEfectivoClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
    try
      spCajaMov.Close;
      spCajaMov.ParamByName('ID_CPBTE').AsInteger      := CDSOPagoID_OP.AsInteger;
      spCajaMov.ParamByName('TIPO_COMPROB').AsString   := CDSOPagoTIPOCPBTE.AsString;
      spCajaMov.ParamByName('CLASE_COMPROB').AsString  := CDSOPagoCLASECPBTE.AsString;
      spCajaMov.ParamByName('NROCPBTE').AsString       := CDSOPagoNROCPBTE.AsString;
      spCajaMov.ParamByName('ID_CUENTA_CAJA').AsInteger:= StrToInt(edIdCtaCaja.Text);
      spCajaMov.ParamByName('ID_CAJA').AsInteger       := StrToInt(Trim(edIdCaja.Text));
      spCajaMov.ParamByName('FECHA_MOVIMIENTO').AsDate := CDSOPagoFECHA.AsDateTime;
      spCajaMov.ParamByName('DEBE').AsFloat            := 0;
      spCajaMov.ParamByName('HABER').AsFloat           := CDSOPagoTOTAL.AsFloat;
      spCajaMov.ParamByName('TIPOOPERACION').AsString  :='E';
      spCajaMov.ExecProc;
      spCajaMov.Close;
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('Operacion No finalizada....!');
    end;
  Traer;

end;

procedure TFormControlOP.SumaAplicaciones;
var CDSClone:TClientDataSet;
begin
  edTotalApl.Value:=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSMovAplicaCCCompra,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalApl.Value:=edTotalApl.Value + CDSClone.FieldByName('IMPORTE').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
  edTotalApl_2.Value:=edTotalApl.Value;  
end;

procedure TFormControlOP.Traer;
begin
  CDSOPago.Close;
  CDSOPago.Params.ParamByName('codigo').Value:=ceProveedor.Text;
  if chbTodosLosProvee.Checked then
    CDSOPago.Params.ParamByName('codigo').Value:= '******';

  if chTodas.Checked=True then
    CDSOPago.Params.ParamByName('id_nc').Value:=-2
  else
    CDSOPago.Params.ParamByName('id_nc').Value:=0;
  CDSOPago.Params.ParamByName('desde').AsDateTime:=Desde.Date;
  CDSOPago.Params.ParamByName('hasta').AsDateTime:=Hasta.Date;

  CDSOPago.Open;

end;

procedure TFormControlOP.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
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
  Traer;//Buscar.Execute;
end;

procedure TFormControlOP.btGuardarAplicacionesClick(Sender: TObject);
begin
  CDSMovAplicaCCCompra.SaveToFile('c:\aplicaciones.xml');
  CDSClone.LoadFromFile('c:\aplicaciones.xml');
end;

procedure TFormControlOP.btInactiveClick(Sender: TObject);
begin
  QInactiveTr.Close;
  QInactiveTr.ExecSQL;
  QInactiveTr.Close;
end;

procedure TFormControlOP.Button1Click(Sender: TObject);
begin
  Traer;
end;

procedure TFormControlOP.Button2Click(Sender: TObject);
begin
  QInactiveTr.Close;
  QInactiveTr.ExecSQL;
  QInactiveTr.Close;
  CDSOPago.ApplyUpdates(0);
  QActiveTr.Close;
  QActiveTr.ExecSQL;
  QActiveTr.Close;

end;

procedure TFormControlOP.Button3Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QBorrarMovACta.Close;
    QBorrarMovACta.ParamByName('id').Value  :=CDSOPagoID_OP.Value;
    QBorrarMovACta.ParamByName('Tipo').Value:=CDSOPagoTIPOCPBTE.Value;
    QBorrarMovACta.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
    QBorrarMovACta.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transaccion no Finalizada');
  end;

end;

procedure TFormControlOP.Button4Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QMovACta.Close;
    QMovACta.ParamByName('codigo').AsString :=CDSOPagoCODIGO.AsString;
    QMovACta.ParamByName('dato').AsString   :=CDSOPagoCLASECPBTE.Value+CDSOPagoLETRAOP.Value+CDSOPagoSUCOP.Value+CDSOPagoNUMEROOP.Value;
    QMovACta.ParamByName('fecha').AsDate    :=CDSOPagoFECHA.AsDateTime;
    QMovACta.ParamByName('id_op').Value     :=CDSOPagoID_OP.Value;
    QMovACta.ParamByName('saldo_aplicar').AsFloat:=CDSOPagoSALDO_APLICAR.AsFloat;
    QMovACta.ParamByName('nrocpbte').AsString    :=CDSOPagoNROCPBTE.Value;
    QMovACta.ParamByName('tipocpbte').AsString   :=CDSOPagoTIPOCPBTE.AsString;
    QMovACta.ParamByName('clasecpbte').AsString  :=CDSOPagoCLASECPBTE.AsString;
    QMovACta.ExecSQL;
    QMovACta.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transaccion no Finalizada');
  end;
end;

procedure TFormControlOP.Button5Click(Sender: TObject);
begin
 // CDSMovAplicaCCCompra.SaveToFile('c:\aplicaciones.xml');
  CDSClone.LoadFromFile('c:\aplicaciones.xml');

end;

procedure TFormControlOP.Button6Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QBorrarMovACta.Close;
    QBorrarMovACta.ParamByName('id').Value  :=CDSACtaID_CPBTE.Value;
    QBorrarMovACta.ParamByName('Tipo').Value:=CDSACtaTIPOCPBTE.Value;
    QBorrarMovACta.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
    QBorrarMovACta.Close;
    CDSACta.Close;
    CDSACta.Params.ParamByName('Codigo').Value  :=CDSOPagoCODIGO.Value;
    CDSACta.Open;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transaccion no Finalizada');
  end;

end;

procedure TFormControlOP.btCajaClick(Sender: TObject);
begin
 if Not(Assigned(FormBuscaCajasCerradas)) Then
    FormBuscaCajasCerradas:=TFormBuscaCajasCerradas.Create(Application);
 FormBuscaCajasCerradas.ShowModal;
 if FormBuscaCajasCerradas.ModalResult=mrok Then
   begin
     edIdCaja.Text   := IntToStr(FormBuscaCajasCerradas.idCaja);
     edIdCtaCaja.Text:= IntToStr(FormBuscaCajasCerradas.idCtaCaja);
   end;

end;

procedure TFormControlOP.btActivarClick(Sender: TObject);
begin
  QActiveTr.Close;
  QActiveTr.ExecSQL;
  QActiveTr.Close;
end;

procedure TFormControlOP.CDSCloneAfterScroll(DataSet: TDataSet);
begin
  QFcComp.Close;
  QFcComp.ParamByName('id').Value:=CDSClone.FieldByName('APLICA_ID_CPBTE').Value;
  QFcComp.Open;
end;

procedure TFormControlOP.CDSMovAplicaCCCompraAfterDelete(DataSet: TDataSet);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSMovAplicaCCCompra.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transaccion no Finalizada');
  end;
  SumaAplicaciones;
end;

procedure TFormControlOP.CDSMovAplicaCCCompraNewRecord(DataSet: TDataSet);
begin
  CDSMovAplicaCCCompraCONCILIADO.Value:='N';
end;

procedure TFormControlOP.CDSOPagoAfterPost(DataSet: TDataSet);
begin
  if chbGravar.Checked=True then
   Button2.OnClick(Self);
   //CDSOPago.ApplyUpdates(0);
end;

procedure TFormControlOP.CDSOPagoAfterScroll(DataSet: TDataSet);
var val1,val2,val3:String;
begin
  QMovcaja.Close;
  QMovcaja.ParamByName('id').Value:=CDSOPagoID_OP.Value;
  QMovcaja.ParamByName('tipo').Value:=CDSOPagoTIPOCPBTE.Value;
  QMovcaja.Open;

  QRet.Close;
  QRet.ParamByName('id').Value:=CDSOPagoID_OP.Value;
  QRet.Open;

  QNc.Close;
  QNc.ParamByName('id').Value:=CDSOPagoNC_ID_FC.Value;
  QNc.Open;

  CDSMovAplicaCCCompra.Close;
  CDSMovAplicaCCCompra.Params.ParamByName('id').Value  :=CDSOPagoID_OP.Value;
  CDSMovAplicaCCCompra.Params.ParamByName('tipo').Value:=CDSOPagoTIPOCPBTE.Value;
  CDSMovAplicaCCCompra.Open;

  CDSACta.Close;
  CDSACta.Params.ParamByName('Codigo').Value  :=CDSOPagoCODIGO.Value;
  CDSACta.Open;

  QRetIngBrCab.Close;
  QRetIngBrCab.ParamByName('id').Value  :=CDSOPagoID_OP.Value;
  QRetIngBrCab.ParamByName('tipo').Value:=CDSOPagoTIPOCPBTE.Value;
  QRetIngBrCab.Open;

  edTotalValores.Value:=dbeValores.Value+dbeGan.Value+dbgIIBB.Value;

  edIdCaja.Text    := '';
  edIdCtaCaja.Text := '';


  spAgregaEfectivo.Enabled := (Trunc(dbeValores.Value*100)) <= 0 ;
  btCaja.Enabled      := spAgregaEfectivo.Enabled;
  edIdCaja.Enabled    := spAgregaEfectivo.Enabled;
  edIdCtaCaja.Enabled := spAgregaEfectivo.Enabled;

  SumaAplicaciones;

  val1:= FloatToStr(CDSOPagoTOTAL.AsFloat);
  val2:= FloatToStr(edTotalValores.Value);
  val3:= FloatToStr(edTotalApl.Value);

  if (val1=val2) and (val2=Val3)
   then
     pnCabecera.Color:=clGreen
   else
     pnCabecera.Color:=clBtnFace;
  Application.ProcessMessages;
end;

procedure TFormControlOP.ceProveedorButtonClick(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceProveedor.Text := FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
   Traer;

end;

procedure TFormControlOP.ceProveedorKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) +
        ceProveedor.Text;
      ceProveedor.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        begin
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
        end;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
      Traer;
    END
  else
    if key=#10 Then
      begin
        Key:=#0;
      end;


end;

procedure TFormControlOP.chTodasClick(Sender: TObject);
begin
  Traer;
end;

procedure TFormControlOP.dbgAplicacionesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
// aca se verifica el grupo del movimiento si existen filtros.
   CDSMovAplicaCCCompra.Append;
   WITH (Source AS TDBGrid).DataSource.DataSet DO
     BEGIN
       CDSMovAplicaCCCompraID_MOV.Value            := FieldByName('Id_Mov').Value;
       CDSMovAplicaCCCompraID_MOVCCCOMPRA.Value    := FieldByName('ID_MOVCCCOMPRA').Value;
       CDSMovAplicaCCCompraFECHA.AsDateTime        := FieldByName('FECHA').AsDateTime;
       CDSMovAplicaCCCompraPROVEEDOR.AsString      := FieldByName('PROVEEDOR').AsString;
       CDSMovAplicaCCCompraID_CPBTE.AsInteger      := FieldByName('Id_Cpbte').AsInteger;
       CDSMovAplicaCCCompraTIPOCPBTE.Value         := FieldByName('TipoCpbte').Value;
       CDSMovAplicaCCCompraCLASECPBTE.Value        := FieldByName('ClaseCpbte').Value;
       CDSMovAplicaCCCompraNUMEROCPBTE.Value       := FieldByName('NUMEROCPBTE').Value;
       CDSMovAplicaCCCompraIMPORTE.AsFloat         := FieldByName('Importe').AsFloat;
       CDSMovAplicaCCCompraAPLICA_ID_CPBTE.Value   := FieldByName('APLICA_ID_CPBTE').Value;
       CDSMovAplicaCCCompraAPLICA_NROCPBTE.Value   := FieldByName('APLICA_NROCPBTE').Value;
       CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value  := QFcCompTIPOCPBTE.Value;
       CDSMovAplicaCCCompraAPLICA_CLASECPBTE.Value := QFcCompCLASECPBTE.Value;

       if FieldByName('APLICA_TIPOCPBTE').AsString<>'' then
         CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value  := FieldByName('APLICA_TIPOCPBTE').Value;
       if FieldByName('APLICA_CLASECPBTE').AsString<>'' then
         CDSMovAplicaCCCompraAPLICA_CLASECPBTE.Value := FieldByName('APLICA_CLASECPBTE').Value;
       CDSMovAplicaCCCompraAPLICA_NETO.AsFloat     := FieldByName('APLICA_NETO').AsFloat;
       CDSMovAplicaCCCompraDETALLE.Value           := CDSOPagoCLASECPBTE.AsString+'-'+
                                                      CDSOPagoLETRAOP.AsString+'-'+
                                                      CDSOPagoSUCOP.AsString+'-'+
                                                      CDSOPagoNUMEROOP.AsString;

       CDSMovAplicaCCCompraCONCILIADO.Value        := 'N';
       CDSMovAplicaCCCompra.Post;
    END;

end;

procedure TFormControlOP.dbgAplicacionesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
 IF Source = dbgClon THEN
    accept := True
  ELSE
    Accept := False;
end;

procedure TFormControlOP.dbgOPagoDblClick(Sender: TObject);
begin
  IF NOT (Assigned(FormOPago_2)) THEN
    FormOPago_2:= TFormOPago_2.Create(self);
  FormOPago_2.DatoNew    := CDSOPagoID_OP.AsString;
  FormOPago_2.TipoCpbte  := CDSOPagoTIPOCPBTE.AsString;
  FormOPago_2.Recuperar.Execute;
  FormOPago_2.Show;

end;

procedure TFormControlOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QActiveTr.Close;
  QActiveTr.ExecSQL;
  QActiveTr.Close;
  Action:=caFree;
end;

procedure TFormControlOP.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  AutoSize:=True;
  DecodeDate(Date,y,m,d);
  Desde.Date := EncodeDate(y,m,1);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;



end;

procedure TFormControlOP.FormDestroy(Sender: TObject);
begin
  FormControlOP:=nil;
end;

end.
