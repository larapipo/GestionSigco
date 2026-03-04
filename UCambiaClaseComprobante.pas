unit UCambiaClaseComprobante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, DB, JvExControls, JvDBLookup,
  JvGradient, Buttons, Mask, FMTBcd, SqlExpr,DBXCommon, Provider, DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambiarClaseCpbte = class(TForm)
    pnPrincipal: TPanel;
    pnDatosViejos: TPanel;
    edLetra: TEdit;
    edClase: TEdit;
    DSSucursalOld: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DSSucursal: TDataSource;
    DSComprobantes: TDataSource;
    dbcComprobantes: TJvDBLookupCombo;
    Label5: TLabel;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    dbcSucursalNew: TJvDBLookupCombo;
    dbeId: TDBEdit;
    dbeDetalle: TDBEdit;
    edTipo: TEdit;
    Label6: TLabel;
    CDSSucursalOld: TClientDataSet;
    DSPSucursalOld: TDataSetProvider;
    CDSSucursalOldCODIGO: TIntegerField;
    CDSSucursalOldDETALLE: TStringField;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSComprobantes: TClientDataSet;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesPREFIJO: TStringField;
    CDSComprobantesNUMERARCION_PROPIA: TStringField;
    CDSComprobantesNUMERO: TStringField;
    CDSComprobantesTOMA_NRO_DE: TIntegerField;
    CDSComprobantesAFECTA_IVA: TStringField;
    CDSComprobantesAFECTA_CC: TStringField;
    CDSComprobantesDESGLOZA_IVA: TStringField;
    CDSComprobantesCOMPRA_VENTA: TStringField;
    CDSComprobantesCOPIAS: TIntegerField;
    CDSComprobantesREPORTE: TStringField;
    CDSComprobantesIMPRIME: TStringField;
    CDSComprobantesFISCAL: TStringField;
    CDSComprobantesNOMBREIMPRESORA: TStringField;
    CDSComprobantesPENDIENTEIMPRESION: TStringField;
    CDSComprobantesLINEAS_DETALLE: TSmallintField;
    CDSComprobantesCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprobantesDEFECTO: TStringField;
    QSucOld: TFDQuery;
    QSuc: TFDQuery;
    QComprob: TFDQuery;
    spCambiaClase: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbcSucursalNewChange(Sender: TObject);
  private
    { Private declarations }
    FTipo:String;
    FClase:String;
    FLetra:String;
    FNroCpbte:String;
    FSucursal:Integer;
    FIdComprobante:Integer;
    FCompraVenta:String;
  public
    Cual:String;
    { Public declarations }
  published
    property Tipo:String Read FTipo write FTipo;
    property Clase:String Read FClase write FClase;
    property Letra:String Read FLetra write FLetra;
    property NroCpbte:String Read FNroCpbte write FNroCpbte;
    property Sucursal:Integer Read FSucursal write FSucursal;
    property IdComprobante:Integer Read FIdComprobante write FIdComprobante;
    property ComproVenta:String Read FCompraVenta write FCompraVenta;
  end;

var
  FormCambiarClaseCpbte: TFormCambiarClaseCpbte;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormCambiarClaseCpbte.btOkClick(Sender: TObject);
VAR Flag:Boolean;
begin
  Flag:=False;
  if ( FClase=dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value) and
     ( FTipo=dbcComprobantes.LookupSource.DataSet.FieldByName('Tipo_comprob').Value) then
    if FLetra=dbcComprobantes.LookupSource.DataSet.FieldByName('Letra').Value then
      raise Exception.Create('Son de la Misma Clase.... no se cambiara...');
  if dbcSucursalNew.KeyValue<=0 then
    raise Exception.Create('No Hay Sucursal...');

  if dbcComprobantes.KeyValue<=0 then
    raise Exception.Create('No Hay Comprobante...');

  DMMain_FD.fdcGestion.StartTransaction;
  try
    if ComproVenta='C' then Cual:='Compras' else
    if ComproVenta='V' Then Cual:='Ventas' else
    if ComproVenta='T' Then Cual:='Pasa CC';

    spCambiaClase.Close;
    spCambiaClase.ParamByName('idCpbte').Value     := FIdComprobante;
    spCambiaClase.ParamByName('Tipo').Value        := FTipo;
    // si es del tipo Vta lo Paso en Minuscula....//
    if ComproVenta='V' Then
      spCambiaClase.ParamByName('Tipo').Value      := LowerCase(FTipo) else

    if ComproVenta='T' Then
      spCambiaClase.ParamByName('Tipo').Value      := 'FA';

    spCambiaClase.ParamByName('sucursal_old').Value:= FSucursal;
    spCambiaClase.ParamByName('sucursal_new').Value:= dbcSucursalNew.KeyValue;

    spCambiaClase.ParamByName('letra_old').Value   := FLetra;
    spCambiaClase.ParamByName('letra_new').Value   := dbcComprobantes.LookupSource.DataSet.FieldByName('Letra').Value;
    spCambiaClase.ParamByName('clase_old').Value   := FClase;
    spCambiaClase.ParamByName('clase_new').Value   := dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value;
    spCambiaClase.ParamByName('libroiva').Value    := dbcComprobantes.LookupSource.DataSet.FieldByName('afecta_iva').Value;
    spCambiaClase.ParamByName('ctacte').Value      := dbcComprobantes.LookupSource.DataSet.FieldByName('afecta_cc').Value;

    spCambiaClase.ExecProc;

    Flag:=True;
    spCambiaClase.Close;
    DMMain_FD.fdcGestion.Commit;
  Except
    Flag:=False;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se realizo el cambio...');
    ModalResult:=mrCancel;
  end;

 if Flag=True then
   begin
     // **** Ingreso en el Log File  **************
     if ComproVenta='C' Then
       DMMain_FD.LogFileFD(1,5,'Transformación Clase Cpbte.Compra: '+ FTipo+'-'+ FClase+'-'+'Nro Cpbte:'+FNroCpbte+
                            ' Id :'+IntToStr(FIdComprobante)+' Nueva Clase '+ dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value,
                             Cual);
     if ComproVenta='V' Then
       DMMain_FD.LogFileFD(1,5,'Transformación Clase Cpbte.Venta: '+ FTipo+'-'+ FClase+'-'+'Nro Cpbte:'+FNroCpbte+
                            ' Id :'+IntToStr(FIdComprobante)+' Nueva Clase '+ dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value,
                             Cual);
     if ComproVenta='T' Then
       DMMain_FD.LogFileFD(1,5,'Transformación Clase Cpbte.a Ct.Cte Compra: '+ FTipo+'-'+ FClase+'-'+'Nro Cpbte:'+FNroCpbte+
                            ' Id :'+IntToStr(FIdComprobante)+' Nueva Clase '+ dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value,
                             Cual);

   end;

end;

procedure TFormCambiarClaseCpbte.dbcSucursalNewChange(Sender: TObject);
begin
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('sucursal').Value     :=dbcSucursalNew.KeyValue;
  CDSComprobantes.Params.ParamByName('tipo').Value         :=FTipo;
  CDSComprobantes.Params.ParamByName('compraventa').Value  :=FCompraVenta;
  if FCompraVenta='T' then    // <<<<<< si es una conversion de fc a cta cte
    CDSComprobantes.Params.ParamByName('compraventa').Value  :='C';

  CDSComprobantes.Open;
end;

procedure TFormCambiarClaseCpbte.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSSucursal.Open;
end;

procedure TFormCambiarClaseCpbte.FormDestroy(Sender: TObject);
begin
  FormCambiarClaseCpbte:=nil;
end;

procedure TFormCambiarClaseCpbte.FormShow(Sender: TObject);
begin
  edLetra.Text:=FLetra;
  edClase.Text:=FClase;
  edTipo.Text :=FTipo;
  CDSSucursalOld.Close;
  CDSSucursalOld.Params.ParamByName('codigo').Value:=FSucursal;
  CDSSucursalOld.Open;
  CDSSucursal.Open;
  DMMain_FD.LogFileFD(1,5,'Inicio de Cambio de Clase Cpbte, Actual='+FClase+'-'+
                                                                     FLetra+' '+
                                                                     FNroCpbte+'-('+
                                                                     IntToStr(FIdComprobante)+')','FCVTA');

end;

end.
