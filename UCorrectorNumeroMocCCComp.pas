UNIT UCorrectorNumeroMocCCComp;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBClient, Provider, Db, DBTables, StdCtrls, ExtCtrls,
  Wwdbigrd, Wwdbgrid, Menus, RXCtrls, RXDBCtrl, Mask,
  rxToolEdit, rxCurrEdit;

TYPE
  TFormCorrectorCC = CLASS(TForm)
    wwDBGrid1: TwwDBGrid;
    wwDBGClientes: TwwDBGrid;
    Splitter2: TSplitter;
    wwDBGrid3: TwwDBGrid;
    Splitter3: TSplitter;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    DSPFcVtaCab: TDataSetProvider;
    CDSFcVtaCab: TClientDataSet;
    DSPMovCCVta: TDataSetProvider;
    CDSMovCCVta: TClientDataSet;
    QClientes: TQuery;
    DSClientes: TDataSource;
    wwDBGrid4: TwwDBGrid;
    MainMenu1: TMainMenu;
    Acciones: TMenuItem;
    Gravar: TMenuItem;
    Cancelar: TMenuItem;
    Salir: TMenuItem;
    DSFcVtaCab: TDataSource;
    DSMovCCVta: TDataSource;
    QMovCCVta: TQuery;
    DSMovAplicaCCVta: TDataSource;
    QMovAplicaCCVta: TQuery;
    CDSMovAplicaCCVta: TClientDataSet;
    DSPMovAplicaCCVta: TDataSetProvider;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    QMovCCVtaID_MOVCCVTA: TIntegerField;
    QMovCCVtaID_CPBTE: TIntegerField;
    QMovCCVtaCLIENTE: TStringField;
    QMovCCVtaFECHAVTA: TDateTimeField;
    QMovCCVtaFECHAVTO: TDateTimeField;
    QMovCCVtaTIPOCPBTE: TStringField;
    QMovCCVtaNROCPBTE: TStringField;
    QMovCCVtaDEBE: TFloatField;
    QMovCCVtaHABER: TFloatField;
    QMovCCVtaSALDO: TFloatField;
    QMovCCVtaDETALLE: TStringField;
    CDSMovCCVtaID_MOVCCVTA: TIntegerField;
    CDSMovCCVtaTIPOCPBTE: TStringField;
    CDSMovCCVtaNROCPBTE: TStringField;
    CDSMovCCVtaDEBE: TFloatField;
    CDSMovCCVtaHABER: TFloatField;
    CDSMovCCVtaSALDO: TFloatField;
    CDSMovCCVtaDETALLE: TStringField;
    QMovAplicaCCVtaID_MOV: TIntegerField;
    QMovAplicaCCVtaID_MOVCCVTA: TIntegerField;
    QMovAplicaCCVtaFECHA: TDateTimeField;
    QMovAplicaCCVtaCLIENTE: TStringField;
    QMovAplicaCCVtaID_CPBTE: TIntegerField;
    QMovAplicaCCVtaTIPOCPBTE: TStringField;
    QMovAplicaCCVtaNUMEROCPBTE: TStringField;
    QMovAplicaCCVtaIMPORTE: TFloatField;
    QMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField;
    QMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField;
    QMovAplicaCCVtaAPLICA_NROCPBTE: TStringField;
    QMovAplicaCCVtaDETALLE: TStringField;
    CDSMovAplicaCCVtaID_MOV: TIntegerField;
    CDSMovAplicaCCVtaFECHA: TDateTimeField;
    CDSMovAplicaCCVtaID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaTIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaNUMEROCPBTE: TStringField;
    CDSMovAplicaCCVtaIMPORTE: TFloatField;
    CDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCVtaDETALLE: TStringField;
    QFcVtaCab: TQuery;
    CDSFcVtaCabID_FC: TIntegerField;
    CDSFcVtaCabTIPOCPBTE: TStringField;
    CDSFcVtaCabNROCPBTE: TStringField;
    CDSFcVtaCabCODIGO: TStringField;
    CDSFcVtaCabNOMBRE: TStringField;
    CDSFcVtaCabFECHAVTA: TDateTimeField;
    CDSFcVtaCabFECHAVTO: TDateTimeField;
    CDSFcVtaCabANULADO: TStringField;
    CDSFcVtaCabTOTAL: TFloatField;
    CDSFcVtaCabDEBE: TFloatField;
    QFcVtaCabID_FC: TIntegerField;
    QFcVtaCabTIPOCPBTE: TStringField;
    QFcVtaCabNROCPBTE: TStringField;
    QFcVtaCabCODIGO: TStringField;
    QFcVtaCabLETRAFAC: TStringField;
    QFcVtaCabSUCFAC: TStringField;
    QFcVtaCabNUMEROFAC: TStringField;
    QFcVtaCabNOMBRE: TStringField;
    QFcVtaCabRAZONSOCIAL: TStringField;
    QFcVtaCabDIRECCION: TStringField;
    QFcVtaCabCPOSTAL: TStringField;
    QFcVtaCabLOCALIDAD: TStringField;
    QFcVtaCabTIPOIVA: TIntegerField;
    QFcVtaCabCUIT: TStringField;
    QFcVtaCabFECHAVTA: TDateTimeField;
    QFcVtaCabFECHAVTO: TDateTimeField;
    QFcVtaCabCONDICIONVTA: TIntegerField;
    QFcVtaCabANULADO: TStringField;
    QFcVtaCabNRORTO: TStringField;
    QFcVtaCabN_OPERACION2: TFloatField;
    QFcVtaCabVENDEDOR: TStringField;
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
    QFcVtaCabFACTURANRO: TStringField;
    QFcVtaCabZONA: TIntegerField;
    QFcVtaCabLDR: TIntegerField;
    QFcVtaCabDEPOSITO: TIntegerField;
    QFcVtaCabCALCULA_SOBRETASA: TStringField;
    QFcVtaCabDESGLOZAIVA: TStringField;
    QFcVtaCabNROENTREGA: TIntegerField;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    Splitter4: TSplitter;
    CDSMovCCVtaID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField;
    Splitter1: TSplitter;
    wwDBGrid2: TwwDBGrid;
    Splitter5: TSplitter;
    wwDBGrid5: TwwDBGrid;
    DSRecibo: TDataSource;
    DSMovCCVtaRec: TDataSource;
    QRecibo: TQuery;
    QMovCCVtaRec: TQuery;
    DSPrecibo: TDataSetProvider;
    DSPMovCCVtaRec: TDataSetProvider;
    CDSRecibo: TClientDataSet;
    CDSMovCCVtaRec: TClientDataSet;
    CDSReciboID_RC: TIntegerField;
    CDSReciboTIPOCPBTE: TStringField;
    CDSReciboNROCPBTE: TStringField;
    CDSReciboCODIGO: TStringField;
    CDSReciboNOMBRE: TStringField;
    CDSReciboTOTAL: TFloatField;
    CDSReciboSALDO_APLICAR: TFloatField;
    CDSMovCCVtaRecID_MOV: TIntegerField;
    CDSMovCCVtaRecID_MOVCCVTA: TIntegerField;
    CDSMovCCVtaRecFECHA: TDateTimeField;
    CDSMovCCVtaRecCLIENTE: TStringField;
    CDSMovCCVtaRecID_CPBTE: TIntegerField;
    CDSMovCCVtaRecTIPOCPBTE: TStringField;
    CDSMovCCVtaRecNUMEROCPBTE: TStringField;
    CDSMovCCVtaRecIMPORTE: TFloatField;
    CDSMovCCVtaRecAPLICA_ID_CPBTE: TIntegerField;
    CDSMovCCVtaRecAPLICA_TIPOCPBTE: TStringField;
    CDSMovCCVtaRecAPLICA_NROCPBTE: TStringField;
    CDSMovCCVtaRecDETALLE: TStringField;
    Panel1: TPanel;
    CurrencyEdit1: TCurrencyEdit;
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE Panel1DblClick(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormCorrectorCC: TFormCorrectorCC;

IMPLEMENTATION

USES DMMainForm;

{$R *.DFM}

PROCEDURE TFormCorrectorCC.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  Action := caFree;
END;

PROCEDURE TFormCorrectorCC.FormCreate(Sender: TObject);
BEGIN
  CDSClientes.Open;
  CDSFcVtaCab.Open;
  CDSMovCCVta.Open;
  CDSMovAplicaCCVta.Open;
  CDSRecibo.Open;
  CDSMovCCVtaRec.Open;
END;


PROCEDURE TFormCorrectorCC.Panel1DblClick(Sender: TObject);
VAR
  Aux: Real;
BEGIN
  CDSMovCCVtaRec.DisableControls;
  CDSMovCCVtaRec.First;
  Aux := 0;
  WHILE NOT (CDSMovCCVtaRec.Eof) DO
    BEGIN
      Aux := Aux + CDSMovCCVtaRecIMPORTE.Value;
      CDSMovCCVtaRec.Next;
    END;
  CurrencyEdit1.Text := FloatToStr(Aux);
  CDSMovCCVtaRec.EnableControls;

END;

PROCEDURE TFormCorrectorCC.FormDestroy(Sender: TObject);
BEGIN
  FormCorrectorCC := NIL;
END;

END.
