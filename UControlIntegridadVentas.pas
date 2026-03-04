unit UControlIntegridadVentas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,   ActnList, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Mask,   DBClient, Provider, Grids, DBGrids, Spin, Menus,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, JvExMask, JvToolEdit,
  JvBaseEdits, DBCtrls, JvDBGridFooter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxMaskEdit, cxCalendar,
  cxData, cxDataStorage, cxEdit, cxDBData, cxVGrid, cxDBVGrid, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.DB, Vcl.ComCtrls,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormControlIntegridad = class(TFormABMBase)
    pcDatos: TPageControl;
    pag1: TTabSheet;
    edNombreCliente: TEdit;
    BuscarCliente: TAction;
    Label1: TLabel;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    DSIntegridadFc: TDataSource;
    DSIntegridadRc: TDataSource;
    pag2: TTabSheet;
    pag7: TTabSheet;
    DSControlCtaCte: TDataSource;
    Button1: TButton;
    seLimite: TSpinEdit;
    btRc: TBitBtn;
    btFc: TBitBtn;
    DSIntegridadNC: TDataSource;
    Pag3: TTabSheet;
    BitBtn1: TBitBtn;
    BorraApliDeCpbte: TAction;
    pmBorradoApl: TPopupMenu;
    BorraApliDeRecibo1: TMenuItem;
    chTodoMovRec: TCheckBox;
    chTodoMovNC: TCheckBox;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel3: TBevel;
    Label5: TLabel;
    Bevel4: TBevel;
    Label6: TLabel;
    Bevel5: TBevel;
    Label7: TLabel;
    Bevel6: TBevel;
    ReHacemovcc: TAction;
    popMenuFc: TPopupMenu;
    ReHacerMovimientoCCte1: TMenuItem;
    Label8: TLabel;
    Bevel7: TBevel;
    Label9: TLabel;
    Bevel8: TBevel;
    DSIntegridadAjustesDebe: TDataSource;
    Pag4: TTabSheet;
    Pag5: TTabSheet;
    btAjustesDebe: TBitBtn;
    btAjusteHaber: TBitBtn;
    DSIntegridadAjustesHaber: TDataSource;
    pag6: TTabSheet;
    BitBtn2: TBitBtn;
    DSIntegridadAnulacionRec: TDataSource;
    QIntegridadAnulacionRec: TFDQuery;
    CDSIntegridadAnulacionRec: TClientDataSet;
    DSPIntegridadAnulacionRec: TDataSetProvider;
    CDSIntegridadAnulacionRecID_ANULACION: TIntegerField;
    CDSIntegridadAnulacionRecCODIGO: TStringField;
    CDSIntegridadAnulacionRecNOMBRE: TStringField;
    CDSIntegridadAnulacionRecTIPOCPBTE: TStringField;
    CDSIntegridadAnulacionRecCLASECPBTE: TStringField;
    CDSIntegridadAnulacionRecNROCPBTE: TStringField;
    CDSIntegridadAnulacionRecTOTAL: TFloatField;
    CDSIntegridadAnulacionRecIDMOVCTACTE: TIntegerField;
    CDSIntegridadAnulacionRecDEBE: TFloatField;
    CDSIntegridadAnulacionRecHABER: TFloatField;
    CDSIntegridadAnulacionRecDETALLE: TStringField;
    CDSIntegridadAnulacionRecSALDO: TFloatField;
    CDSIntegridadAnulacionRecIMPORTEAPLICADO: TFloatField;
    CDSIntegridadFc: TClientDataSet;
    DSPIntegridadFc: TDataSetProvider;
    CDSIntegridadFcID_FC: TIntegerField;
    CDSIntegridadFcCODIGO: TStringField;
    CDSIntegridadFcNOMBRE: TStringField;
    CDSIntegridadFcTIPOCPBTE: TStringField;
    CDSIntegridadFcCLASECPBTE: TStringField;
    CDSIntegridadFcNROCPBTE: TStringField;
    CDSIntegridadFcANULADO: TStringField;
    CDSIntegridadFcIDMOVCTACTE: TIntegerField;
    CDSIntegridadFcDETALLE: TStringField;
    QBorrarAplicacionDelCpbte: TFDQuery;
    spReHaceMov: TFDStoredProc;
    dbgFacturas: TJvDBGrid;
    ceCliente: TJvComboEdit;
    CDSIntegridadNC: TClientDataSet;
    DSPIntegridadNC: TDataSetProvider;
    CDSIntegridadNCID_FC: TIntegerField;
    CDSIntegridadNCCODIGO: TStringField;
    CDSIntegridadNCNOMBRE: TStringField;
    CDSIntegridadNCTIPOCPBTE: TStringField;
    CDSIntegridadNCCLASECPBTE: TStringField;
    CDSIntegridadNCNROCPBTE: TStringField;
    CDSIntegridadNCANULADO: TStringField;
    CDSIntegridadNCIDMOVCTACTE: TIntegerField;
    CDSIntegridadNCDETALLE: TStringField;
    CDSIntegridadNCDIFERENCIACONAPLICACIONES: TFloatField;
    dbgNotasCredito: TJvDBGrid;
    dbgRecibos: TJvDBGrid;
    CDSIntegridadRc: TClientDataSet;
    DSPIntegridadRc: TDataSetProvider;
    CDSIntegridadRcID_RC: TIntegerField;
    CDSIntegridadRcCODIGO: TStringField;
    CDSIntegridadRcNOMBRE: TStringField;
    CDSIntegridadRcTIPOCPBTE: TStringField;
    CDSIntegridadRcCLASECPBTE: TStringField;
    CDSIntegridadRcNROCPBTE: TStringField;
    CDSIntegridadRcANULADO: TStringField;
    CDSIntegridadRcIDMOVCTACTE: TIntegerField;
    CDSIntegridadRcDETALLE: TStringField;
    QIntegridadAjustesDebe: TFDQuery;
    CDSIntegridadAjustesDebe: TClientDataSet;
    DSPIntegridadAjustesDebe: TDataSetProvider;
    CDSIntegridadAjustesDebeID: TIntegerField;
    CDSIntegridadAjustesDebeCODIGO: TStringField;
    CDSIntegridadAjustesDebeTIPOCPBTE: TStringField;
    CDSIntegridadAjustesDebeCLASECPBTE: TStringField;
    CDSIntegridadAjustesDebeNROCPBTE: TStringField;
    CDSIntegridadAjustesDebeTOTAL: TFloatField;
    CDSIntegridadAjustesDebeIDMOVCTACTE: TIntegerField;
    CDSIntegridadAjustesDebeDEBE: TFloatField;
    CDSIntegridadAjustesDebeHABER: TFloatField;
    CDSIntegridadAjustesDebeDETALLE: TStringField;
    CDSIntegridadAjustesDebeSALDO: TFloatField;
    CDSIntegridadAjustesDebeIMPORTEAPLICADO: TFloatField;
    QIntegridadAjustesHaber: TFDQuery;
    CDSIntegridadAjustesHaber: TClientDataSet;
    DSPIntegridadAjustesHaber: TDataSetProvider;
    CDSIntegridadAjustesHaberID: TIntegerField;
    CDSIntegridadAjustesHaberCODIGO: TStringField;
    CDSIntegridadAjustesHaberTIPOCPBTE: TStringField;
    CDSIntegridadAjustesHaberCLASECPBTE: TStringField;
    CDSIntegridadAjustesHaberNROCPBTE: TStringField;
    CDSIntegridadAjustesHaberTOTAL: TFloatField;
    CDSIntegridadAjustesHaberIDMOVCTACTE: TIntegerField;
    CDSIntegridadAjustesHaberDEBE: TFloatField;
    CDSIntegridadAjustesHaberHABER: TFloatField;
    CDSIntegridadAjustesHaberDETALLE: TStringField;
    CDSIntegridadAjustesHaberSUMAAPLICAIONES: TFloatField;
    CDSIntegridadAjustesHaberDIFERENCIACONAPLICACIONES: TFloatField;
    QControlCtaCte: TFDQuery;
    CDSControlCtaCte: TClientDataSet;
    DSPControlCtaCte: TDataSetProvider;
    CDSControlCtaCteCODIGO: TStringField;
    CDSControlCtaCteNOMBRE: TStringField;
    CDSControlCtaCteSALDOCTACTE: TFloatField;
    CDSControlCtaCteSALDOAPLICACIONES: TFloatField;
    CDSControlCtaCteAPLICACIONESPENDI: TFloatField;
    CDSControlCtaCteDIFERENCIA: TFloatField;
    dbgAjusteDebe: TJvDBGrid;
    dbgAjusteHaber: TJvDBGrid;
    dbgAnulaciones: TJvDBGrid;
    dbgControlCC: TJvDBGrid;
    edFactura: TJvCalcEdit;
    edNCredito: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    edAplicado: TJvCalcEdit;
    edTotalAplRec: TJvCalcEdit;
    edTotalRec: TJvCalcEdit;
    edTotalHaberRec: TJvCalcEdit;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    edTotalNC: TJvCalcEdit;
    edTotalNcHaber: TJvCalcEdit;
    edTotalNCAplica: TJvCalcEdit;
    DBText1: TDBText;
    VerCpbte: TAction;
    QVerificaMOV_FC: TFDQuery;
    CDSVerificaMOV_FC: TClientDataSet;
    DSPVerificaMOV_FC: TDataSetProvider;
    DSVerificaMOV_FC: TDataSource;
    CDSVerificaMOV_FCID_MOVCCVTA: TIntegerField;
    CDSVerificaMOV_FCTIPOCPBTE: TStringField;
    CDSVerificaMOV_FCCLASECPBTE: TStringField;
    CDSVerificaMOV_FCFECHAVTA: TSQLTimeStampField;
    CDSVerificaMOV_FCDETALLE: TStringField;
    CDSVerificaMOV_FCDEBE: TFloatField;
    CDSVerificaMOV_FCHABER: TFloatField;
    CDSVerificaMOV_FCIDFACTURA: TIntegerField;
    CDSVerificaMOV_FCNROCPBTE: TStringField;
    CDSVerificaMOV_FCTOTAL: TFloatField;
    CDSVerificaMOV_FCCONTROL: TFloatField;
    TabSheet1: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Button2: TButton;
    Fc_Mov: TTabSheet;
    QFC_Mov: TFDQuery;
    CDSFc_Mov: TClientDataSet;
    DSPFc_Mov: TDataSetProvider;
    QFC_MovID_FC: TIntegerField;
    QFC_MovFECHAVTA: TSQLTimeStampField;
    QFC_MovCODIGO: TStringField;
    QFC_MovTIPOCPBTE: TStringField;
    QFC_MovCLASECPBTE: TStringField;
    QFC_MovNROCPBTE: TStringField;
    QFC_MovNOMBRE: TStringField;
    QFC_MovTOTAL: TFloatField;
    QFC_MovMUESTRADEBECC: TFloatField;
    QFC_MovMUESTRADIF: TFloatField;
    CDSFc_MovID_FC: TIntegerField;
    CDSFc_MovFECHAVTA: TSQLTimeStampField;
    CDSFc_MovCODIGO: TStringField;
    CDSFc_MovTIPOCPBTE: TStringField;
    CDSFc_MovCLASECPBTE: TStringField;
    CDSFc_MovNROCPBTE: TStringField;
    CDSFc_MovNOMBRE: TStringField;
    CDSFc_MovTOTAL: TFloatField;
    CDSFc_MovMUESTRADEBECC: TFloatField;
    CDSFc_MovMUESTRADIF: TFloatField;
    DSFC_Mov: TDataSource;
    dbgFc_Mov: TJvDBGrid;
    BitBtn3: TBitBtn;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSMovID_MOVCCVTA: TIntegerField;
    CDSMovID_CPBTE: TIntegerField;
    CDSMovCLIENTE: TStringField;
    CDSMovFECHAVTA: TSQLTimeStampField;
    CDSMovFECHAVTO: TSQLTimeStampField;
    CDSMovTIPOCPBTE: TStringField;
    CDSMovCLASECPBTE: TStringField;
    CDSMovNROCPBTE: TStringField;
    CDSMovDETALLE: TStringField;
    CDSMovNRO_CUOTA: TIntegerField;
    DSPApli: TDataSetProvider;
    CDSApli: TClientDataSet;
    CDSApliID_MOV: TIntegerField;
    CDSApliID_MOVCCVTA: TIntegerField;
    CDSApliFECHA: TSQLTimeStampField;
    CDSApliCLIENTE: TStringField;
    CDSApliID_CPBTE: TIntegerField;
    CDSApliTIPOCPBTE: TStringField;
    CDSApliCLASECPBTE: TStringField;
    CDSApliNUMEROCPBTE: TStringField;
    CDSApliAPLICA_ID_CPBTE: TIntegerField;
    CDSApliAPLICA_TIPOCPBTE: TStringField;
    CDSApliAPLICA_CLASECPBTE: TStringField;
    CDSApliAPLICA_NROCPBTE: TStringField;
    CDSApliDETALLE: TStringField;
    CDSApliCONCILIADO: TStringField;
    DSMov: TDataSource;
    DSApli: TDataSource;
    chCuotaUno: TCheckBox;
    CDSIntegridadFcNRO_CUOTA: TIntegerField;
    QMov: TFDQuery;
    QApli: TFDQuery;
    QMovID_MOVCCVTA: TIntegerField;
    QMovID_CPBTE: TIntegerField;
    QMovCLIENTE: TStringField;
    QMovFECHAVTA: TSQLTimeStampField;
    QMovFECHAVTO: TSQLTimeStampField;
    QMovTIPOCPBTE: TStringField;
    QMovCLASECPBTE: TStringField;
    QMovNROCPBTE: TStringField;
    QMovDEBE: TFloatField;
    QMovHABER: TFloatField;
    QMovSALDO: TFloatField;
    QMovDETALLE: TStringField;
    QMovNRO_CUOTA: TIntegerField;
    QMovID_MONEDA: TIntegerField;
    QMovCOTIZACION: TFloatField;
    CDSMovDEBE: TFloatField;
    CDSMovHABER: TFloatField;
    CDSMovSALDO: TFloatField;
    QApliID_MOV: TIntegerField;
    QApliID_MOVCCVTA: TIntegerField;
    QApliFECHA: TSQLTimeStampField;
    QApliCLIENTE: TStringField;
    QApliID_CPBTE: TIntegerField;
    QApliTIPOCPBTE: TStringField;
    QApliCLASECPBTE: TStringField;
    QApliNUMEROCPBTE: TStringField;
    QApliIMPORTE: TFloatField;
    QApliAPLICA_ID_CPBTE: TIntegerField;
    QApliAPLICA_TIPOCPBTE: TStringField;
    QApliAPLICA_CLASECPBTE: TStringField;
    QApliAPLICA_NROCPBTE: TStringField;
    QApliDETALLE: TStringField;
    QApliCONCILIADO: TStringField;
    CDSApliIMPORTE: TFloatField;
    QIntegridadFc: TFDQuery;
    CDSIntegridadFcTOTAL: TFloatField;
    CDSIntegridadFcOBSERVACION1: TStringField;
    CDSIntegridadFcDEBE: TFloatField;
    CDSIntegridadFcHABER: TFloatField;
    CDSIntegridadFcSALDO: TFloatField;
    CDSIntegridadFcIMPORTEAPLICADO: TFloatField;
    DBText2: TDBText;
    QIntegridadNC: TFDQuery;
    CDSIntegridadNCTOTAL: TFloatField;
    CDSIntegridadNCOBSERVACION1: TStringField;
    CDSIntegridadNCDEBE: TFloatField;
    CDSIntegridadNCHABER: TFloatField;
    CDSIntegridadNCSUMAAPLICACIONES: TFloatField;
    CDSIntegridadFcFECHAVTA: TSQLTimeStampField;
    CDSIntegridadFcFECHAVTA_1: TSQLTimeStampField;
    QIntegridadRc: TFDQuery;
    CDSIntegridadRcFECHA: TSQLTimeStampField;
    CDSIntegridadRcTOTAL: TFloatField;
    CDSIntegridadRcFECHAVTA: TSQLTimeStampField;
    CDSIntegridadRcDEBE: TFloatField;
    CDSIntegridadRcHABER: TFloatField;
    CDSIntegridadRcSUMAAPLICAIONES: TFloatField;
    CDSIntegridadRcDIFERENCIACONAPLICACIONES: TFloatField;
    CDSIntegridadNCFECHAVTA: TSQLTimeStampField;
    CDSIntegridadNCFECHAVTA_1: TSQLTimeStampField;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure dbgFacturasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgRecibosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgControlCCDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRcClick(Sender: TObject);
    procedure btFcClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgNotasCreditoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BorraApliDeCpbteExecute(Sender: TObject);
    procedure chTodoMovRecClick(Sender: TObject);
    procedure chTodoMovNCClick(Sender: TObject);
    procedure ReHacemovccExecute(Sender: TObject);
    procedure dbgAjusteDebeDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btAjustesDebeClick(Sender: TObject);
    procedure dbgAjusteHaberDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btAjusteHaberClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgAnulacionesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgFacturasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgRecibosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure VerCpbteExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbgControlCCDblClick(Sender: TObject);
    procedure chCuotaUnoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SumarFac;
    procedure SumarRec;
    procedure SumarNc;


  end;

var
  FormControlIntegridad: TFormControlIntegridad;

implementation

uses UBuscadorClientes,UDMain_FD,UFactura_2, UFacturaCtdo_2, URecibo_2,
  UAplicacionesCCVta_2;

{$R *.DFM}

procedure TFormControlIntegridad.SumarFac;
VAR CDSClone:TClientDataSet;

begin
  edTotal.Value   := 0;
  edFactura.Value := 0;
  edNCredito.Value:= 0;
  edDebe.Value    := 0;
  edHaber.Value   := 0;
  edSaldo.Value   := 0;
  edAplicado.Value:= 0;

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSIntegridadFC,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      if chCuotaUno.Checked=False then
        begin
          if ((CDSClone.FieldByName('TIPOCPBTE').Value='FC') or (CDSClone.FieldByName('TIPOCPBTE').Value='ND')) and
             (CDSClone.FieldByName('ANULADO').Value='N') then
            edFactura.Value :=edFactura.Value+CDSClone.FieldByName('TOTAL').AsFloat;
          if (CDSClone.FieldByName('TIPOCPBTE').Value='NC') and (CDSClone.FieldByName('ANULADO').Value='N') then
            edNCredito.Value :=edNCredito.Value+CDSClone.FieldByName('TOTAL').AsFloat;
        end
      else
        if chCuotaUno.Checked=True then
          begin
            if ((CDSClone.FieldByName('TIPOCPBTE').Value='FC') or (CDSClone.FieldByName('TIPOCPBTE').Value='ND')) and
               (CDSClone.FieldByName('ANULADO').Value='N') and (CDSClone.FieldByName('NRO_CUOTA').Value=1) then
              edFactura.Value :=edFactura.Value+CDSClone.FieldByName('TOTAL').AsFloat;
            if (CDSClone.FieldByName('TIPOCPBTE').Value='NC') and (CDSClone.FieldByName('ANULADO').Value='N') and
               (CDSClone.FieldByName('NRO_CUOTA').Value=1) then
              edNCredito.Value :=edNCredito.Value+CDSClone.FieldByName('TOTAL').AsFloat;
          end;


      edTotal.Value   := edFactura.Value + edNCredito.Value;
      edDebe.Value    := edDebe.Value + CDSClone.FieldByName('Debe').AsFloat;
      edHaber.Value   := edHaber.Value + CDSClone.FieldByName('Haber').AsFloat;
      edSaldo.Value   := edSaldo.Value + CDSClone.FieldByName('Saldo').AsFloat;
      edAplicado.Value:= edAplicado.Value+ CDSClone.FieldByName('ImporteAplicado').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormControlIntegridad.SumarRec;
VAR CDSClone:TClientDataSet;
begin
  edTotalRec.Value     := 0;
  edTotalAplRec.Value  := 0;
  edTotalHaberRec.Value:= 0;

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSIntegridadRc,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalRec.Value      := edTotalRec.Value+CDSClone.FieldByName('TOTAL').AsFloat;
      edTotalAplRec.Value   := edTotalAplRec.Value+CDSClone.FieldByName('SUMAAPLICAIONES').AsFloat;
      edTotalHaberRec.Value := edTotalHaberRec.Value+CDSClone.FieldByName('HABER').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormControlIntegridad.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  if (pcDatos.ActivePageIndex=0) or (pcDatos.ActivePageIndex=2) then
    begin
      if (CDSIntegridadFcID_FC.AsString<>'') and ((CDSIntegridadFcTIPOCPBTE.AsString='FC') or ( CDSIntegridadFcTIPOCPBTE.AsString = 'NC') or (CDSIntegridadFcTIPOCPBTE.AsString='ND')) then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          if pcDatos.ActivePageIndex=2 then
            begin
              FormCpbte_2.TipoCpbte:=CDSIntegridadNCTIPOCPBTE.AsString;
              FormCpbte_2.DatoNew  :=CDSIntegridadNCID_FC.AsString;
            end
          else
            if pcDatos.ActivePageIndex=0 then
              begin
                FormCpbte_2.TipoCpbte:=CDSIntegridadFcTIPOCPBTE.AsString;
                FormCpbte_2.DatoNew  :=CDSIntegridadFcID_FC.AsString;
              end;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if (CDSIntegridadFcID_FC.AsString<>'') and (CDSIntegridadFcTIPOCPBTE.AsString='FO') then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.TipoCpbte:=CDSIntegridadFcTIPOCPBTE.AsString;
            FormCpbteCtdo_2.DatoNew  :=CDSIntegridadFcID_FC.AsString;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end
    end
  else
    if pcDatos.ActivePageIndex=1 then
      begin
        if (CDSIntegridadRcID_RC.AsString<>'') then
          begin
            if Not(Assigned(FormRecibo_2)) then
              FormRecibo_2:=TFormRecibo_2.Create(Self);
            FormRecibo_2.TipoCpbte:=CDSIntegridadRcTIPOCPBTE.AsString;
            FormRecibo_2.DatoNew:=CDSIntegridadRcID_RC.AsString;
            FormRecibo_2.Recuperar.Execute;
            FormRecibo_2.Show;
          end;
      end
    else
      if pcDatos.ActivePageIndex=8 then
        begin
          if (CDSFc_MovID_FC.AsString<>'') then
            begin
              if Not(Assigned(FormCpbte_2)) then
                FormCpbte_2:=TFormCpbte_2.Create(Self);
              FormCpbte_2.TipoCpbte:=CDSFc_MovTIPOCPBTE.AsString;
              FormCpbte_2.DatoNew  :=CDSFc_MovID_FC.AsString;
              FormCpbte_2.Recuperar.Execute;
              FormCpbte_2.Show;
            end;
        end;


end;

procedure TFormControlIntegridad.SumarNc;
VAR CDSClone:TClientDataSet;
begin
  edTotalNC.Value         := 0;
  edTotalNcHaber.Value    := 0;
  edTotalNCAplica.Value   := 0;

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSIntegridadNC,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      if (CDSClone.FieldByName('TIPOCPBTE').Value='NC') and (CDSClone.FieldByName('ANULADO').Value<>'S')  Then
        edTotalNC.Value :=edTotalNC.Value+CDSClone.FieldByName('TOTAL').AsFloat;
      edTotalNcHaber.Value  :=edTotalNCHaber.Value+CDSClone.FieldByName('Haber').AsFloat;
      edTotalNCAplica.Value:=edTotalNCAplica.Value+CDSClone.FieldByName('SumaAplicaciones').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;



procedure TFormControlIntegridad.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorClientes)) Then
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text  :=FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      edNombreCliente.Text:=CDSClientesNOMBRE.Value;
    END;

end;



procedure TFormControlIntegridad.dbgFacturasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2,Tot3,Tot4:String;
begin
  inherited;
  if gdSelected in State then
    begin
      dbgFacturas.Canvas.Font.Color:=clWhite;
      dbgFacturas.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if (CDSIntegridadFcANULADO.Value)='S' Then
         dbgFacturas.canvas.Font.color := clRed
       else
         begin
           dbgFacturas.canvas.Font.color := clBlack;
           if Trunc(CDSIntegridadFcTOTAL.AsFloat * 1000)<>Trunc(CDSIntegridadFcDEBE.AsFloat*1000) Then
             dbgFacturas.canvas.Font.color := clGreen;
         end;

      Tot1:=FormatFloat('0.00',CDSIntegridadFcTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadFcDEBE.AsFloat+CDSIntegridadFcHABER.AsFloat);
      Tot3:=FormatFloat('0.00',CDSIntegridadFcDEBE.AsFloat);
      Tot4:=FormatFloat('0.00',CDSIntegridadFcIMPORTEAPLICADO.AsFloat);
      if (Tot1<>Tot2) or (tot3<>tot4)  Then
          dbgFacturas.Canvas.Font.Style:=[fsBold]
        else
          dbgFacturas.Canvas.Font.Style:=[];


    end;
  dbgFacturas.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormControlIntegridad.dbgFacturasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgFacturas.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlIntegridad.dbgRecibosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2:String;
begin
  inherited;
  if gdSelected in State  Then
    begin
      dbgRecibos.Canvas.Font.Color:=clWhite;
      dbgRecibos.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if (CDSIntegridadRcANULADO.Value)='S' Then
        dbgRecibos.canvas.Font.color := clRed
      else
        begin
          dbgRecibos.canvas.Font.color := clBlack;
          if Trunc(CDSIntegridadRcTOTAL.AsFloat*1000)<>Trunc(CDSIntegridadRcHABER.AsFloat*1000) Then
            dbgRecibos.canvas.Font.color := clGreen;
        end;

      Tot1:=FormatFloat('0.00',CDSIntegridadRcTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadRcDEBE.AsFloat+CDSIntegridadRcHABER.AsFloat);
      if Tot1<>Tot2 Then
        dbgRecibos.Canvas.Font.Style:=[fsBold]
      else
        dbgRecibos.Canvas.Font.Style:=[];

      Tot1:=FormatFloat('0.00',CDSIntegridadRcDIFERENCIACONAPLICACIONES.AsFloat);
      if Tot1<>'0.00' Then
        dbgRecibos.canvas.Font.color := clBlue
      else
        dbgRecibos.canvas.Font.color := clBlack;
    end;
  dbgRecibos.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlIntegridad.dbgRecibosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgRecibos.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlIntegridad.Button1Click(Sender: TObject);
begin
  inherited;
  CDSControlCtaCte.Close;
  CDSControlCtaCte.Params.ParamByName('limite').Value:=seLimite.Value;
  CDSControlCtaCte.Open;
end;

procedure TFormControlIntegridad.Button2Click(Sender: TObject);
begin
  inherited;
  CDSVerificaMOV_FC.Close;
  if ceCliente.Text<>'' Then
    CDSVerificaMOV_FC.Params.ParamByName('codigo').Value:=ceCliente.Text
  else
    CDSVerificaMOV_FC.Params.ParamByName('codigo').Value:='';
  CDSVerificaMOV_FC.Open;
end;

procedure TFormControlIntegridad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlIntegridad.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlIntegridad:=nil;
end;

procedure TFormControlIntegridad.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlIntegridad<>nil then
    if FormControlIntegridad.Width<>1080 then
      FormControlIntegridad.Width:=1080;

end;

procedure TFormControlIntegridad.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  pcDatos.ActivePageIndex:=0;
end;

procedure TFormControlIntegridad.dbgControlCCDblClick(Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  if Not(Assigned(FormAplicacionesCCVta_2)) then
    FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
  FormAplicacionesCCVta_2.edCodigo.Text:=CDSControlCtaCteCODIGO.Value;
  FormAplicacionesCCVta_2.edCodigoKeyPress(Sender,Enter);
  FormAplicacionesCCVta_2.Show;

  
end;

procedure TFormControlIntegridad.dbgControlCCDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2:String;
begin
  inherited;
  if gdSelected in State Then
    begin
      dbgControlCC.Canvas.Font.Color:=clWhite;
      dbgControlCC.Canvas.Brush.Color:=clNavy;
    end
  else
    begin

      Tot1:=FormatFloat('0.00',CDSControlCtaCteSALDOCTACTE.AsFloat);
      Tot2:=FormatFloat('0.00',CDSControlCtaCteSALDOAPLICACIONES.AsFloat-CDSControlCtaCteAPLICACIONESPENDI.AsFloat);

      if Tot1<>Tot2 Then
        begin
          dbgControlCC.canvas.Font.color := clRed;
          dbgControlCC.Canvas.Brush.Color:= clWindow;
       end;

    end;
  dbgControlCC.DefaultDrawColumnCell(Rect,-1,Column,State);
end;


procedure TFormControlIntegridad.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  Dato: STRING;
BEGIN
  IF Key = Vk_return THEN
    BEGIN
     
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      Buscar.Execute;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;

end;

procedure TFormControlIntegridad.btRcClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadRc.Close;
  if ceCliente.Text<>'' Then
    CDSIntegridadRc.Params.ParamByName('codigo').Value:=ceCliente.Text
  else
    CDSIntegridadRc.Params.ParamByName('codigo').Value:='';
  CDSIntegridadRc.Open;
  SumarRec;

end;

procedure TFormControlIntegridad.btFcClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadFc.Close;
  if ceCliente.Text<>'' Then
    CDSIntegridadFc.Params.ParamByName('codigo').Value:=ceCliente.Text
  else
    CDSIntegridadFc.Params.ParamByName('codigo').Value:='';
  CDSIntegridadFc.Open;
  SumarFac;

  CDSMov.Close;
  CDSMov.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSMov.Open;
  CDSApli.Close;
  CDSApli.Params.ParamByName('id').Value:=CDSMovID_MOVCCVTA.Value;
  CDSApli.Open;
  dbgFacturas.Width:=dbgFacturas.Width+1;
  dbgFacturas.Width:=dbgFacturas.Width-1;

end;

procedure TFormControlIntegridad.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CDSIntegridadNC.Close;
  if ceCliente.Text<>'' Then
    CDSIntegridadNC.Params.ParamByName('codigo').Value:=ceCliente.Text
  else
    CDSIntegridadNC.Params.ParamByName('codigo').Value:='';
  CDSIntegridadNC.Open;
  SumarNc;
end;

procedure TFormControlIntegridad.dbgNotasCreditoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2:String;
begin
  inherited;
  if gdSelected in State  Then
    begin
      dbgNotasCredito.Canvas.Font.Color:=clWhite;
      dbgNotasCredito.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if (CDSIntegridadNCANULADO.Value)='S' Then
        dbgNotasCredito.canvas.Font.color := clRed
      else
        dbgNotasCredito.canvas.Font.color := clBlack;

      Tot1:=FormatFloat('0.00',CDSIntegridadNcTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadNcDEBE.AsFloat+CDSIntegridadNcHABER.AsFloat);
      if Tot1<>Tot2 Then
        dbgNotasCredito.Canvas.Font.Style:=[fsBold]
      else
        dbgNotasCredito.Canvas.Font.Style:=[];

      Tot1:=FormatFloat('0.00',CDSIntegridadNcDIFERENCIACONAPLICACIONES.AsFloat);
      if Tot1<>'0.00' Then
        dbgNotasCredito.canvas.Font.color := clBlue
      else
        dbgNotasCredito.canvas.Font.color := clBlack;
    end;
  dbgNotasCredito.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormControlIntegridad.BorraApliDeCpbteExecute(Sender: TObject);
begin
  inherited;
 // QBorrarAplicacionDelCpbte.Close;
  // *********** Recibos **************
  if pcDatos.ActivePage=Pag2 Then
    begin
      spReHaceMov.Close;
      spReHaceMov.ParamByName('CPBTE_ID').Value   :=CDSIntegridadRcID_RC.Value;
      spReHaceMov.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadRcTIPOCPBTE.Value;
      spReHaceMov.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadRcCLASECPBTE.Value;
      spReHaceMov.ExecProc;
      spReHaceMov.Close;
    end
  else
  // *********** Notas de Credito **************
    if pcDatos.ActivePage=Pag3 Then
      begin
        spReHaceMov.Close;
        spReHaceMov.ParamByName('CPBTE_ID').Value   :=CDSIntegridadNCID_FC.Value;
        spReHaceMov.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadNCTIPOCPBTE.Value;
        spReHaceMov.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadNCCLASECPBTE.Value;
        spReHaceMov.ExecProc;
        spReHaceMov.Close;
      end
    else
  // *********** Ajustes **************
      if pcDatos.ActivePage=Pag5 Then
        begin
          QBorrarAplicacionDelCpbte.Close;
          QBorrarAplicacionDelCpbte.ParamByName('id').value   :=CDSIntegridadAjustesHaberID.Value;
          QBorrarAplicacionDelCpbte.ParamByName('Tipo').value :=CDSIntegridadAjustesHaberTIPOCPBTE.Value;
          QBorrarAplicacionDelCpbte.ParamByName('Clase').value:=CDSIntegridadAjustesHaberCLASECPBTE.Value;
          QBorrarAplicacionDelCpbte.ExecSQL;
          QBorrarAplicacionDelCpbte.Close;
        end;
 // QBorrarAplicacionDelCpbte.ExecSQL;

end;

procedure TFormControlIntegridad.chTodoMovRecClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadRc.Filtered:=False;
  CDSIntegridadRc.Filter:='DIFERENCIACONAPLICACIONES<>0';
  CDSIntegridadRc.Filtered:=chTodoMovRec.Checked;

end;

procedure TFormControlIntegridad.chCuotaUnoClick(Sender: TObject);
begin
  inherited;
  btFc.Click;
end;

procedure TFormControlIntegridad.chTodoMovNCClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadNc.Filtered:=False;
  CDSIntegridadNc.Filter:='DIFERENCIACONAPLICACIONES<>0';
  CDSIntegridadNc.Filtered:=chTodoMovNC.Checked;

end;

procedure TFormControlIntegridad.ReHacemovccExecute(Sender: TObject);
begin
  inherited;
  {****** Facturas ********}
  if pcDatos.ActivePage=Pag1 Then
    begin
      spReHaceMov.Close;
      spReHaceMov.ParamByName('CPBTE_ID').Value   :=CDSIntegridadFcID_FC.Value;
      spReHaceMov.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadFcTIPOCPBTE.Value;
      spReHaceMov.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadFcCLASECPBTE.Value;
      spReHaceMov.ExecProc;
    end
  else
  {****** Ajustes en el Debe  ********}
    if pcDatos.ActivePage=Pag4 Then
      begin
        spReHaceMov.Close;
        spReHaceMov.ParamByName('CPBTE_ID').Value   :=CDSIntegridadAjustesDebeID.Value;
        spReHaceMov.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadAjustesDebeTIPOCPBTE.Value;
        spReHaceMov.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadAjustesDebeCLASECPBTE.Value;
        spReHaceMov.ExecProc;
      end
    else
  {****** Ajustes en Anulaciones  ********}
      if pcDatos.ActivePage=Pag6 Then
        begin
          spReHaceMov.Close;
          spReHaceMov.ParamByName('CPBTE_ID').Value   :=CDSIntegridadAnulacionRecID_ANULACION.Value;
          spReHaceMov.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadAnulacionRecTIPOCPBTE.Value;
          spReHaceMov.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadAnulacionRecCLASECPBTE.Value;
          spReHaceMov.ExecProc;
        end;
  {****** Fc->Mov  ********}
      if pcDatos.ActivePage=Fc_Mov Then
        begin
          spReHaceMov.Close;
          spReHaceMov.ParamByName('CPBTE_ID').Value   :=CDSFc_MovID_FC.Value;
          spReHaceMov.ParamByName('CPBTE_TIPO').Value :=CDSFc_MovTIPOCPBTE.Value;
          spReHaceMov.ParamByName('CPBTE_CLASE').Value:=CDSFc_MovCLASECPBTE.Value;
          spReHaceMov.ExecProc;
        end;
  spReHaceMov.Close;
end;

procedure TFormControlIntegridad.dbgAjusteDebeDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2,Tot3,Tot4:String;
begin
  inherited;
  if gdSelected in State then
    begin
      dbgAjusteDebe.Canvas.Font.Color:=clWhite;
      dbgAjusteDebe.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
     Tot1:=FormatFloat('0.00',CDSIntegridadAjustesDebeTOTAL.AsFloat);
     Tot2:=FormatFloat('0.00',CDSIntegridadAjustesDebeDEBE.AsFloat+CDSIntegridadAjustesDebeHABER.AsFloat);
     Tot3:=FormatFloat('0.00',CDSIntegridadAjustesDebeDEBE.AsFloat);
     Tot4:=FormatFloat('0.00',CDSIntegridadAjustesDebeIMPORTEAPLICADO.AsFloat);
     if (Tot1<>Tot2) or (tot3<>tot4)  Then
       dbgAjusteDebe.Canvas.Font.Style:=[fsBold]
     else
       dbgAjusteDebe.Canvas.Font.Style:=[];
    end;
  dbgAjusteDebe.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormControlIntegridad.btAjustesDebeClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadAjustesDebe .Close;
  if ceCliente.Text<>'' Then
    CDSIntegridadAjustesDebe.Params.ParamByName('codigo').Value:=ceCliente.Text
  else
    CDSIntegridadAjustesDebe.Params.ParamByName('codigo').Value:='';
  CDSIntegridadAjustesDebe.Open;
end;

procedure TFormControlIntegridad.dbgAjusteHaberDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2:String;
begin
  inherited;
  if gdSelected in State  Then
    begin
      dbgAjusteHaber.Canvas.Font.Color:=clWhite;
      dbgAjusteHaber.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      Tot1:=FormatFloat('0.00',CDSIntegridadAjustesHaberTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadAjustesHaberDEBE.AsFloat+CDSIntegridadAjustesHaberHABER.AsFloat);
      if Tot1<>Tot2 Then
        dbgAjusteHaber.Canvas.Font.Style:=[fsBold]
      else
        dbgAjusteHaber.Canvas.Font.Style:=[];

      Tot1:=FormatFloat('0.00',CDSIntegridadAjustesHaberDIFERENCIACONAPLICACIONES.AsFloat);
      if Tot1<>'0.00' Then
        dbgAjusteHaber.canvas.Font.color := clBlue
      else
        dbgAjusteHaber.canvas.Font.color := clBlack;
    end;
  dbgAjusteHaber.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlIntegridad.btAjusteHaberClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadAjustesHaber.Close;
  if ceCliente.Text<>'' Then
    CDSIntegridadAjustesHaber.Params.ParamByName('codigo').Value:=ceCliente.Text
  else
    CDSIntegridadAjustesHaber.Params.ParamByName('codigo').Value:='';
  CDSIntegridadAjustesHaber.Open;
end;

procedure TFormControlIntegridad.BitBtn2Click(Sender: TObject);
begin
  inherited;
  CDSIntegridadAnulacionRec.Close;
  if ceCliente.Text<>'' Then
    CDSIntegridadAnulacionRec.Params.ParamByName('codigo').Value:=ceCliente.Text
  else
    CDSIntegridadAnulacionRec.Params.ParamByName('codigo').Value:='';
  CDSIntegridadAnulacionRec.Open;
end;

procedure TFormControlIntegridad.BitBtn3Click(Sender: TObject);
begin
  inherited;
  CDSFc_Mov.Close;
  CDSFc_Mov.OPen;
end;

procedure TFormControlIntegridad.dbgAnulacionesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2,Tot3,Tot4:String;
begin
  inherited;
  if gdSelected in State then
    begin
      dbgAnulaciones.Canvas.Font.Color:=clWhite;
      dbgAnulaciones.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      Tot1:=FormatFloat('0.00',CDSIntegridadAnulacionRecTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadAnulacionRecDEBE.AsFloat+CDSIntegridadAnulacionRecHABER.AsFloat);
      Tot3:=FormatFloat('0.00',CDSIntegridadAnulacionRecDEBE.AsFloat);
      Tot4:=FormatFloat('0.00',CDSIntegridadAnulacionRecIMPORTEAPLICADO.AsFloat);
      if (Tot1<>Tot2) or (tot3<>tot4)  Then
          dbgAnulaciones.Canvas.Font.Style:=[fsBold]
        else
          dbgAnulaciones.Canvas.Font.Style:=[];

    end;
  dbgAnulaciones.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
