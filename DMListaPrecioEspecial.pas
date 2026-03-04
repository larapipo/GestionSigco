unit DMListaPrecioEspecial;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TDatosListaPrecioEspecial = class(TDataModule)
    spBorrarClones: TFDStoredProc;
    spControlRub_Sub: TFDStoredProc;
    spRecalcular: TFDStoredProc;
    spActualizaClones: TFDStoredProc;
    spPasaOriginal: TFDStoredProc;
    spActualizarCosto: TFDStoredProc;
    spActualizarRecClones: TFDStoredProc;
    spAplicarRec: TFDStoredProc;
    QExportaRubro: TFDQuery;
    DSPExportaRubro: TDataSetProvider;
    CDSExportaRubro: TClientDataSet;
    CDSExportaRubroCODIGO_RUBRO: TStringField;
    CDSExportaRubroCODIGO_SUBRUBRO: TStringField;
    CDSExportaRubroDETALLE_SUBRUBRO: TStringField;
    CDSExportaRubroDETALLE_RUBRO: TStringField;
    CDSExportaRubroCODIGO_SUBRUBRO_2: TStringField;
    CDSExportaRubroCODIGO_RUBRO_2: TStringField;
    CDSExportaRubroVACIO: TStringField;
    CDSExportaTxt: TClientDataSet;
    CDSExportaTxtCODIGO_STK: TStringField;
    CDSExportaTxtDETALLE_STK: TStringField;
    CDSExportaTxtRUBRO_STK: TStringField;
    CDSExportaTxtDETALLE_RUBRO: TStringField;
    CDSExportaTxtSUBRUBRO_STK: TStringField;
    CDSExportaTxtDETALLE_SUBRUBRO: TStringField;
    CDSExportaTxtPRECIO: TFloatField;
    CDSExportaTxtPRECIOTXT: TStringField;
    CDSExportaTxtSUBRUBRO_STK_TRIM: TStringField;
    CDSExportaTxtvacio: TStringField;
    CDSExportaTxtCODIGO_STK_LIMPIO: TStringField;
    CDSExportaTxtPRECIO2: TFloatField;
    CDSExportaTxtPRECIOTXTFUTURO: TStringField;
    CDSExportaTxtCOEFICIENTE_RECARGO: TFloatField;
    CDSExportaTxtPRECIOCOSTO_STOCK: TFloatField;
    CDSExportaTxtPRECIOCOSTO_LISTA: TFloatField;
    CDSExportaTxtPRECIOSINIVA: TFloatField;
    CDSExportaTxtPRECIOSINIVATXT: TStringField;
    CDSExportaTxtIVA_IMPORTE: TFloatField;
    CDSExportaTxtRECARGO: TFloatField;
    DSPExportaTxt: TDataSetProvider;
    QExportaTxt: TFDQuery;
    QExportaConStock: TFDQuery;
    DSPExportaConStock: TDataSetProvider;
    CDSExportaConStock: TClientDataSet;
    CDSExportaConStockCODIGO_STK: TStringField;
    CDSExportaConStockDETALLE_STK: TStringField;
    CDSExportaConStockRUBRO_STK: TStringField;
    CDSExportaConStockDETALLE_RUBRO: TStringField;
    CDSExportaConStockSUBRUBRO_STK: TStringField;
    CDSExportaConStockDETALLE_SUBRUBRO: TStringField;
    CDSExportaConStockPRECIO: TFloatField;
    CDSExportaConStockSTK_ACTUAL: TFloatField;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesVacio: TStringField;
    CDSClientesCodVendedor: TStringField;
    DSPClientes: TDataSetProvider;
    QClie: TFDQuery;
    QPasarOriginal: TFDQuery;
    QClones: TFDQuery;
    QClonesID: TIntegerField;
    QClonesNOMBRE: TStringField;
    QClonesRECARGOBASE: TFloatField;
    QClonesPORDEFECTO: TStringField;
    QClonesF_PAGO: TIntegerField;
    QClonesUSO_ADMINISTRADOR: TStringField;
    QClonesCLONADA: TStringField;
    QClonesID_LISTA_CLONADA: TIntegerField;
    QClonesCOEFICIENTE: TFloatField;
    QClonesEXCLUSIVO_EFECTIVO: TStringField;
    QArticulos: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    QArticulosRUBRO_STK: TStringField;
    QArticulosSUBRUBRO_STK: TStringField;
    QArticulosFIJACION_PRECIO_TOTAL: TFloatField;
    QArticulosFIJACION_PRECIO_GRAVADO: TFloatField;
    QArticulosFIJACION_PRECIO_EXENTO: TFloatField;
    QArticulosTASA_IVA: TIntegerField;
    QArticulosSOBRETASA_IVA: TIntegerField;
    QArticulosMUSTRATASAIVA: TFloatField;
    QArticulosMUESTRASOBRETASAIVA: TFloatField;
    QArticulosCONTENIDO_COMPRA: TFloatField;
    QArticulosMODO_GRAVAMEN: TStringField;
    QSubRubros: TFDQuery;
    QSubRubrosCODIGO_SUBRUBRO: TStringField;
    QSubRubrosDETALLE_SUBRUBRO: TStringField;
    QSubRubrosCODIGO_RUBRO: TStringField;
    QSubRubrosCONTROL_SUBRUBRO: TStringField;
    QSubRubrosFUERA_PROMO: TStringField;
    QRubros: TFDQuery;
    QRubrosCODIGO_RUBRO: TStringField;
    QRubrosDETALLE_RUBRO: TStringField;
    QRubrosCONTROL_RUBRO: TStringField;
    QRubrosFUERA_PROMO: TStringField;
    QClonesFECHA: TSQLTimeStampField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSExportaTxtCalcFields(DataSet: TDataSet);
    procedure CDSExportaRubroCalcFields(DataSet: TDataSet);
    procedure CDSClientesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosListaPrecioEspecial: TDatosListaPrecioEspecial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDatosListaPrecioEspecial.CDSClientesCalcFields(DataSet: TDataSet);
VAR i:Integer;
begin
  inherited;
  DatosListaPrecioEspecial.CDSClientesVacio.Value:='                             ';
  if DatosListaPrecioEspecial.CDSClientesVENDEDOR.AsString<>'' then
    begin
      I:=StrToInt(DatosListaPrecioEspecial.CDSClientesVENDEDOR.AsString);
      DatosListaPrecioEspecial.CDSClientesCodVendedor.Value:=IntToStr(i);
    end
  else
    DatosListaPrecioEspecial.CDSClientesCodVendedor.Value:='';
end;

procedure TDatosListaPrecioEspecial.CDSExportaRubroCalcFields(
  DataSet: TDataSet);
begin
  DatosListaPrecioEspecial.CDSExportaRubroVACIO.Value             := '          ';
  DatosListaPrecioEspecial.CDSExportaRubroCODIGO_SUBRUBRO_2.Value := (Copy(DatosListaPrecioEspecial.CDSExportaRubroCODIGO_SUBRUBRO.Value,4,2));
  DatosListaPrecioEspecial.CDSExportaRubroCODIGO_RUBRO_2.Value    := (DatosListaPrecioEspecial.CDSExportaRubroCODIGO_RUBRO.Value);
end;

procedure TDatosListaPrecioEspecial.CDSExportaTxtCalcFields(DataSet: TDataSet);
var s:String;
i:integer;
begin
  inherited;
  DatosListaPrecioEspecial.CDSExportaTxtvacio.Value:='                    ';
  DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXT.Value       := (FormatFloat('0.00',DatosListaPrecioEspecial.CDSExportaTxtPRECIO.AsFloat));
  DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXTFUTURO.Value := (FormatFloat('0.00',DatosListaPrecioEspecial.CDSExportaTxtPRECIO2.Value*DatosListaPrecioEspecial.CDSExportaTxtCOEFICIENTE_RECARGO.Value));
  DatosListaPrecioEspecial.CDSExportaTxtPRECIOSINIVATXT.Value := (FormatFloat('0.00',DatosListaPrecioEspecial.CDSExportaTxtPRECIOSINIVA.AsFloat));
  // le saco el IVA
  DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXTFUTURO.Value := (FormatFloat('0.00',DatosListaPrecioEspecial.CDSExportaTxtPRECIO2.Value*DatosListaPrecioEspecial.CDSExportaTxtCOEFICIENTE_RECARGO.Value));

  S:=DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXT.Value;
  while (pos('.',s)<>0) do
    begin
      i:=pos('.',s);
      delete(s,pos('.',s),1);
      Insert(',',s,i);
    end;
  DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXT.Value:=s;

  S:=DatosListaPrecioEspecial.CDSExportaTxtPRECIOSINIVATXT.Value;
  while (pos('.',s)<>0) do
    begin
      i:=pos('.',s);
      delete(s,pos('.',s),1);
      Insert(',',s,i);
    end;
  DatosListaPrecioEspecial.CDSExportaTxtPRECIOSINIVATXT.Value:=s;

  S:=DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXTFUTURO.Value;
  while (pos('.',s)<>0) do
    begin
      i:=pos('.',s);
      delete(s,pos('.',s),1);
      Insert(',',s,i);
    end;
  DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXTFUTURO.Value:=s;

  if DatosListaPrecioEspecial.CDSExportaTxtPRECIO2.Value=0 Then
    DatosListaPrecioEspecial.CDSExportaTxtPRECIOTXTFUTURO.Value := DatosListaPrecioEspecial.CDSExportaTxtPRECIOSINIVATXT.Value;

  DatosListaPrecioEspecial.CDSExportaTxtSUBRUBRO_STK_TRIM.Value := Copy(DatosListaPrecioEspecial.CDSExportaTxtSUBRUBRO_STK.Value,4,2);
  DatosListaPrecioEspecial.CDSExportaTxtCODIGO_STK_LIMPIO.Value := DatosListaPrecioEspecial.CDSExportaTxtCODIGO_STK.Value;

  S:=DatosListaPrecioEspecial.CDSExportaTxtCODIGO_STK_LIMPIO.Value;
  while (pos('-',s)<>0) do
    delete(s,pos('-',s),1);
  DatosListaPrecioEspecial.CDSExportaTxtCODIGO_STK_LIMPIO.Value:=s;
end;

procedure TDatosListaPrecioEspecial.DataModuleDestroy(Sender: TObject);
begin
  DatosListaPrecioEspecial:=nil;
end;

end.
