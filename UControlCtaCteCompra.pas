unit UControlCtaCteCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls,  wwDialog, wwidlg, rxrxPlacemnt, Db,
  DBTables, Wwintl, ActnList, ImgList, RXClock, RXCtrls, RXDBCtrl,
  StdCtrls, Buttons, ToolWin, ExtCtrls, Provider, DBClient, Grids, DBGrids,
  Mask, rxToolEdit;

type
  TFormABMBase1 = class(TFormABMBase)
    QOPagos: TQuery;
    DBGrid1: TDBGrid;
    DSFacturas: TDataSource;
    DSMovimientos: TDataSource;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    QFacturas: TQuery;
    QMovimientos: TQuery;
    DSPFacturas: TDataSetProvider;
    DSPMovimientos: TDataSetProvider;
    CDSFacturas: TClientDataSet;
    CDSMovimientos: TClientDataSet;
    ceCliente: TComboEdit;
    edNombreCliente: TEdit;
    DSPClientes: TDataSetProvider;
    wwBuscadorCliente: TwwLookupDialog;
    CDSClientes: TClientDataSet;
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
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TDateTimeField;
    CDSClientesFECHAALTA: TDateTimeField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    BuscarCliente: TAction;
    QClientes: TQuery;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesCODIGO: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEDISCADO: TStringField;
    QFacturasID_FC: TIntegerField;
    QFacturasTIPOCPBTE: TStringField;
    QFacturasCLASECPBTE: TStringField;
    QFacturasNROCPBTE: TStringField;
    QFacturasCODIGO: TStringField;
    QFacturasLETRAFAC: TStringField;
    QFacturasSUCFAC: TStringField;
    QFacturasNUMEROFAC: TStringField;
    QFacturasNOMBRE: TStringField;
    QFacturasRAZONSOCIAL: TStringField;
    QFacturasDIRECCION: TStringField;
    QFacturasCPOSTAL: TStringField;
    QFacturasLOCALIDAD: TStringField;
    QFacturasTIPOIVA: TIntegerField;
    QFacturasCUIT: TStringField;
    QFacturasFECHAVTA: TDateTimeField;
    QFacturasFECHAVTO: TDateTimeField;
    QFacturasCONDICIONVTA: TIntegerField;
    QFacturasANULADO: TStringField;
    QFacturasNRORTO: TStringField;
    QFacturasN_OPERACION2: TFloatField;
    QFacturasVENDEDOR: TStringField;
    QFacturasNETOGRAV1: TFloatField;
    QFacturasNETOGRAV2: TFloatField;
    QFacturasDSTO: TFloatField;
    QFacturasDSTOIMPORTE: TFloatField;
    QFacturasNETOEXEN1: TFloatField;
    QFacturasNETOEXEN2: TFloatField;
    QFacturasTOTAL: TFloatField;
    QFacturasDEBE: TFloatField;
    QFacturasIMPRESO: TStringField;
    QFacturasOBSERVACION1: TStringField;
    QFacturasOBSERVACION2: TStringField;
    QFacturasCPTE_MANUAL: TStringField;
    QFacturasSUCURSAL: TIntegerField;
    QFacturasFACTURANRO: TStringField;
    QFacturasZONA: TIntegerField;
    QFacturasLDR: TIntegerField;
    QFacturasDEPOSITO: TIntegerField;
    QFacturasCALCULA_SOBRETASA: TStringField;
    QFacturasDESGLOZAIVA: TStringField;
    QFacturasNROENTREGA: TIntegerField;
    QFacturasINGRESA_A_CTACTE: TStringField;
    QFacturasINGRESA_LIBRO_IVA: TStringField;
    QMovimientosID_MOVCCVTA: TIntegerField;
    QMovimientosID_CPBTE: TIntegerField;
    QMovimientosCLIENTE: TStringField;
    QMovimientosFECHAVTA: TDateTimeField;
    QMovimientosFECHAVTO: TDateTimeField;
    QMovimientosTIPOCPBTE: TStringField;
    QMovimientosCLASECPBTE: TStringField;
    QMovimientosNROCPBTE: TStringField;
    QMovimientosDEBE: TFloatField;
    QMovimientosHABER: TFloatField;
    QMovimientosSALDO: TFloatField;
    QMovimientosDETALLE: TStringField;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasNROCPBTE: TStringField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasLETRAFAC: TStringField;
    CDSFacturasSUCFAC: TStringField;
    CDSFacturasNUMEROFAC: TStringField;
    CDSFacturasNOMBRE: TStringField;
    CDSFacturasRAZONSOCIAL: TStringField;
    CDSFacturasDIRECCION: TStringField;
    CDSFacturasCPOSTAL: TStringField;
    CDSFacturasLOCALIDAD: TStringField;
    CDSFacturasTIPOIVA: TIntegerField;
    CDSFacturasCUIT: TStringField;
    CDSFacturasFECHAVTA: TDateTimeField;
    CDSFacturasFECHAVTO: TDateTimeField;
    CDSFacturasCONDICIONVTA: TIntegerField;
    CDSFacturasANULADO: TStringField;
    CDSFacturasNRORTO: TStringField;
    CDSFacturasN_OPERACION2: TFloatField;
    CDSFacturasVENDEDOR: TStringField;
    CDSFacturasNETOGRAV1: TFloatField;
    CDSFacturasNETOGRAV2: TFloatField;
    CDSFacturasDSTO: TFloatField;
    CDSFacturasDSTOIMPORTE: TFloatField;
    CDSFacturasNETOEXEN1: TFloatField;
    CDSFacturasNETOEXEN2: TFloatField;
    CDSFacturasTOTAL: TFloatField;
    CDSFacturasDEBE: TFloatField;
    CDSFacturasIMPRESO: TStringField;
    CDSFacturasOBSERVACION1: TStringField;
    CDSFacturasOBSERVACION2: TStringField;
    CDSFacturasCPTE_MANUAL: TStringField;
    CDSFacturasSUCURSAL: TIntegerField;
    CDSFacturasFACTURANRO: TStringField;
    CDSFacturasZONA: TIntegerField;
    CDSFacturasLDR: TIntegerField;
    CDSFacturasDEPOSITO: TIntegerField;
    CDSFacturasCALCULA_SOBRETASA: TStringField;
    CDSFacturasDESGLOZAIVA: TStringField;
    CDSFacturasNROENTREGA: TIntegerField;
    CDSFacturasINGRESA_A_CTACTE: TStringField;
    CDSFacturasINGRESA_LIBRO_IVA: TStringField;
    CDSMovimientosTIPOCPBTE: TStringField;
    CDSMovimientosID_CPBTE: TIntegerField;
    CDSMovimientosID_MOVCCVTA: TIntegerField;
    CDSMovimientosCLIENTE: TStringField;
    CDSMovimientosFECHAVTA: TDateTimeField;
    CDSMovimientosFECHAVTO: TDateTimeField;
    CDSMovimientosCLASECPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosDEBE: TFloatField;
    CDSMovimientosHABER: TFloatField;
    CDSMovimientosSALDO: TFloatField;
    CDSMovimientosDETALLE: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABMBase1: TFormABMBase1;

implementation

uses DMMainForm;
{$R *.DFM}

procedure TFormABMBase1.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFacturas.Close;
  CDSMovimientos.Close;
  CDSFacturas.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSFacturas.Open;
  CDSFacturas.First;
  CDSMovimientos.Params.ParamByName('id').Value:=CDSFacturasID_FC.Value;
  CDSMovimientos.Open;
end;

procedure TFormABMBase1.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  QClientes.Close;
  QClientes.Open;
  IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=
        wwBuscadorCliente.LookupTable.FieldByName('Codigo').AsString;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=
        wwBuscadorCliente.LookupTable.FieldByName('Codigo').AsString;
      CDSClientes.Open;
    END;
end;

procedure TFormABMBase1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormABMBase1.FormDestroy(Sender: TObject);
begin
  inherited;
  FormABMBase1:=nil;
end;

end.
