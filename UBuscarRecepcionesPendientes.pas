unit UBuscarRecepcionesPendientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   ExtCtrls, Grids, DBGrids, DBClient, Provider, StdCtrls,
  Buttons, FMTBcd, SqlExpr, JvExControls, JvLabel, JvDBControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscarRecepcionesPendientes = class(TForm)
    pnPrincipal: TPanel;
    DSRecepCab: TDataSource;
    dbgRecepCab: TDBGrid;
    dbgRecepDet: TDBGrid;
    DSRecepDetalle: TDataSource;
    DSPRecepCab: TDataSetProvider;
    DSPRecepDet: TDataSetProvider;
    CDSRecepCab: TClientDataSet;
    CDSRecepCabID_RECMER: TIntegerField;
    CDSRecepCabNROCPBTE: TStringField;
    CDSRecepCabORDENCOMPRA: TStringField;
    CDSRecepCabPROCESADA: TStringField;
    CDSRecepDet: TClientDataSet;
    btCerrar: TBitBtn;
    CDSRecepCabFECHARECEPCION: TSQLTimeStampField;
    CDSRecepDetID: TIntegerField;
    CDSRecepDetID_CABREC: TIntegerField;
    CDSRecepDetTIPOCPBTE: TStringField;
    CDSRecepDetCLASECPBTE: TStringField;
    CDSRecepDetNROCPBTE: TStringField;
    CDSRecepDetCODIGOPROVEEDOR: TStringField;
    CDSRecepDetFECHARECEPCION: TSQLTimeStampField;
    CDSRecepDetCODIGOARTICULO: TStringField;
    CDSRecepDetDETALLE: TStringField;
    CDSRecepDetUNIDAD: TStringField;
    CDSRecepDetDESGLOZAIVA: TStringField;
    CDSRecepDetMODO_GRAVAMEN: TStringField;
    CDSRecepDetDEPOSITO: TIntegerField;
    CDSRecepDetAFECTA_STOCK: TStringField;
    CDSRecepDetCALCULA_SOBRETASA: TStringField;
    CDSRecepDetCON_NRO_SERIE: TStringField;
    CDSRecepDetID_FACTURA: TIntegerField;
    CDSRecepDetNROFACTURA: TStringField;
    CDSRecepDetMERCADERIA_CONSIGNACION: TStringField;
    CDSRecepCabID_ORDENCOMPRA: TIntegerField;
    CDSRecepCabMUESRANUMEROOC: TStringField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    QRecepMercaCab: TFDQuery;
    QRecepMercaDet: TFDQuery;
    QRecepMercaDetID: TIntegerField;
    QRecepMercaDetID_CABREC: TIntegerField;
    QRecepMercaDetTIPOCPBTE: TStringField;
    QRecepMercaDetCLASECPBTE: TStringField;
    QRecepMercaDetNROCPBTE: TStringField;
    QRecepMercaDetCODIGOPROVEEDOR: TStringField;
    QRecepMercaDetRENGLON: TFloatField;
    QRecepMercaDetFECHARECEPCION: TSQLTimeStampField;
    QRecepMercaDetCODIGOARTICULO: TStringField;
    QRecepMercaDetDETALLE: TStringField;
    QRecepMercaDetUNIDAD: TStringField;
    QRecepMercaDetCANTIDAD: TFloatField;
    QRecepMercaDetUNITARIO_TOTAL: TFloatField;
    QRecepMercaDetUNITARIO_EXENTO: TFloatField;
    QRecepMercaDetUNITARIO_GRAVADO: TFloatField;
    QRecepMercaDetDESGLOZAIVA: TStringField;
    QRecepMercaDetMODO_GRAVAMEN: TStringField;
    QRecepMercaDetIVA_TASA: TFloatField;
    QRecepMercaDetTIPOIVA_TASA: TIntegerField;
    QRecepMercaDetIVA_SOBRETASA: TFloatField;
    QRecepMercaDetTIPOIVA_SOBRETASA: TIntegerField;
    QRecepMercaDetCOSTO_TOTAL: TFloatField;
    QRecepMercaDetCOSTO_EXENTO: TFloatField;
    QRecepMercaDetCOSTO_GRAVADO: TFloatField;
    QRecepMercaDetDESCUENTO: TFloatField;
    QRecepMercaDetTOTAL: TFloatField;
    QRecepMercaDetDEPOSITO: TIntegerField;
    QRecepMercaDetMARGEN: TFloatField;
    QRecepMercaDetAFECTA_STOCK: TStringField;
    QRecepMercaDetCALCULA_SOBRETASA: TStringField;
    QRecepMercaDetCOSTO_IMP_INTERNO: TFloatField;
    QRecepMercaDetUNITARIO_IMP_INTERNO: TFloatField;
    QRecepMercaDetCON_NRO_SERIE: TStringField;
    QRecepMercaDetID_FACTURA: TIntegerField;
    QRecepMercaDetNROFACTURA: TStringField;
    QRecepMercaDetMERCADERIA_CONSIGNACION: TStringField;
    QRecepMercaDetCANTIDAD_SALDO: TFloatField;
    QRecepMercaDetPRESENTACION_CANT: TFloatField;
    QRecepMercaDetCANTIDAD_UNIDADES: TFloatField;
    QRecepMercaDetCONTROL_TRAZABILIDAD: TStringField;
    QRecepMercaCabID_RECMER: TIntegerField;
    QRecepMercaCabNROCPBTE: TStringField;
    QRecepMercaCabFECHARECEPCION: TSQLTimeStampField;
    QRecepMercaCabORDENCOMPRA: TStringField;
    QRecepMercaCabPROCESADA: TStringField;
    QRecepMercaCabID_ORDENCOMPRA: TIntegerField;
    QRecepMercaCabMUESRANUMEROOC: TStringField;
    CDSRecepDetRENGLON: TFloatField;
    CDSRecepDetTIPOIVA_TASA: TIntegerField;
    CDSRecepDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRecepDetPRESENTACION_CANT: TFloatField;
    CDSRecepDetCONTROL_TRAZABILIDAD: TStringField;
    CDSRecepDetIVA_SOBRETASA: TFloatField;
    CDSRecepDetCANTIDAD: TFloatField;
    CDSRecepDetUNITARIO_TOTAL: TFloatField;
    CDSRecepDetUNITARIO_EXENTO: TFloatField;
    CDSRecepDetUNITARIO_GRAVADO: TFloatField;
    CDSRecepDetIVA_TASA: TFloatField;
    CDSRecepDetCOSTO_TOTAL: TFloatField;
    CDSRecepDetCOSTO_EXENTO: TFloatField;
    CDSRecepDetCOSTO_GRAVADO: TFloatField;
    CDSRecepDetDESCUENTO: TFloatField;
    CDSRecepDetTOTAL: TFloatField;
    CDSRecepDetMARGEN: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSRecepDetAfterPost(DataSet: TDataSet);
    procedure dbgRecepDetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgRecepDetDblClick(Sender: TObject);
    procedure dbgRecepCabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btCerrarClick(Sender: TObject);
    procedure CDSRecepCabAfterScroll(DataSet: TDataSet);
    procedure dbgRecepCabDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   FormBuscarRecepcionesPendientes: TFormBuscarRecepcionesPendientes;

implementation

uses UCompra_2,DMCompra,UDMain_FD;

{$R *.DFM}


procedure TFormBuscarRecepcionesPendientes.FormDestroy(Sender: TObject);
begin
  FormBuscarRecepcionesPendientes:=nil;
end;

procedure TFormBuscarRecepcionesPendientes.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscarRecepcionesPendientes.CDSRecepCabAfterScroll(
  DataSet: TDataSet);
begin
  CDSRecepDet.Close;
  CDSRecepDet.Params.ParamByName('id').Value:=CDSRecepCabID_RECMER.Value;
  CDSRecepDet.Open;
end;

procedure TFormBuscarRecepcionesPendientes.CDSRecepDetAfterPost(
  DataSet: TDataSet);
var Estado:Boolean;
pun:TBookmark;
begin
  Estado:=True;
  Pun:=CDSRecepDet.GetBookmark;
  CDSRecepDet.First;
  CDSRecepDet.DisableControls;
  while (not(CDSRecepDet.Eof)) do
    begin
      if CDSRecepDetID_FACTURA.AsString='' Then
        Estado:=False;
      CDSRecepDet.Next;
    end;
  CDSRecepDet.GotoBookmark(Pun);
  CDSRecepDet.FreeBookmark(pun);
  CDSRecepDet.EnableControls;
  if Estado Then
    begin
      CDSRecepCab.Edit;
      CDSRecepCabPROCESADA.Value:='S';
      CDSRecepCab.Post;
    end;
end;

procedure TFormBuscarRecepcionesPendientes.dbgRecepDetDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if dbgRecepDet.DataSource.DataSet.FieldByName('ID_FACTURA').AsString<>'' Then
    dbgRecepDet.Canvas.Font.Style:=[fsBold]
  else
    dbgRecepDet.Canvas.Font.Style:=[];
  dbgRecepDet.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormBuscarRecepcionesPendientes.dbgRecepDetDblClick(
  Sender: TObject);
begin
   if (CDSRecepDetID_FACTURA.AsString='') or (CDSRecepDetID_FACTURA.Value=0) Then
     FormCompra_2.InsertarDetalle(CDSRecepDetCODIGOARTICULO.Value,
                                  CDSRecepDetCANTIDAD.AsFloat,
                                  CDSRecepDetUNITARIO_TOTAL.AsFloat,
                                  CDSRecepDetDESCUENTO.AsFloat,
                                  CDSRecepDetDETALLE.Value,
                                  CDSRecepCabID_ORDENCOMPRA.Value,
                                  CDSRecepCabMUESRANUMEROOC.Value  )
   else
     ShowMessage('Item ya facturado....');
end;

procedure TFormBuscarRecepcionesPendientes.dbgRecepCabDblClick(Sender: TObject);
begin
  CDSRecepDet.First;
  DatosCompra.CDSCompraDet.AfterPost   :=nil;
  DatosCompra.CDSCompraDet.AfterScroll :=nil;
  while  Not(CDSRecepDet.Eof) do
    begin
      if (CDSRecepDetID_FACTURA.AsString='') or (CDSRecepDetID_FACTURA.Value=0) Then
        FormCompra_2.InsertarDetalle(CDSRecepDetCODIGOARTICULO.Value,
                                     CDSRecepDetCANTIDAD.AsFloat,
                                     CDSRecepDetUNITARIO_TOTAL.AsFloat,
                                     CDSRecepDetDESCUENTO.AsFloat,
                                     CDSRecepDetDETALLE.Value,
                                     CDSRecepCabID_ORDENCOMPRA.Value,
                                     CDSRecepCabMUESRANUMEROOC.Value  );
       CDSRecepDet.Next;
    end;
  DatosCompra.CDSCompraDet.AfterPost  := DatosCompra.CDSCompraDetAfterPost;
  DatosCompra.CDSCompraDet.AfterScroll:= DatosCompra.CDSCompraDetAfterScroll;

  DatosCompra.CDSCompraDet.Edit;
  if DatosCompra.CDSCompraDet.State<>dsBrowse Then
    DatosCompra.CDSCompraDet.Post;
  //ShowMessage('Finalizado el Proceso....');

end;

procedure TFormBuscarRecepcionesPendientes.dbgRecepCabDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if dbgRecepCab.DataSource.DataSet.FieldByName('PROCESADA').AsString='S' Then
    dbgRecepCab.Canvas.Font.Style:=[fsStrikeOut]
  else
    dbgRecepCab.Canvas.Font.Style:=[];
  dbgRecepCab.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormBuscarRecepcionesPendientes.btCerrarClick(Sender: TObject);
begin
  Close;
end;

end.
