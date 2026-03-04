UNIT UBuscarPresupuestos;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Grids, DBGrids, ContNrs,
  ComCtrls, CDSUtil, Provider,
  ActnList,  Menus, db,
  StdCtrls, Buttons, Librerias, FMTBcd, DBClient, SqlExpr,
  ExtCtrls, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;
TYPE
// Tipo procedural (fuera de la clase, pero dentro del bloque type)
  TInsertarDetalleProc = procedure(Codigo: STRING; Cantidad: Double; Unitario: Double;
                                   Descuento: Double; Detalle: STRING;
                                   Id_cab, Id_Det: Integer) of object;

  TFormBuscarPresupuestos = CLASS(TForm)
    pnBase: TPanel;
    Label1: TLabel;
    DBGrillaDetalle: TDBGrid;
    dbgCabecera: TDBGrid;
    btConfirma: TBitBtn;
    btTodos: TBitBtn;
    btSalir: TBitBtn;
    DSPresupuestosCliente: TDataSource;
    DSDetallePresupuesto: TDataSource;
    ActionList1: TActionList;
    AceptarItem: TAction;
    QPresupuestosCliente: TFDQuery;
    CDSPresupuestosCliente: TClientDataSet;
    CDSPresupuestosClienteID_PR: TIntegerField;
    CDSPresupuestosClienteFECHAVTA: TSQLTimeStampField;
    CDSPresupuestosClienteNROCPBTE: TStringField;
    CDSPresupuestosClienteTOTAL: TFloatField;
    CDSPresupuestosClienteMUESTRALDR: TStringField;
    DSPPresupuestosCliente: TDataSetProvider;
    CDSDetallePresupuesto: TClientDataSet;
    CDSDetallePresupuestoID: TIntegerField;
    CDSDetallePresupuestoID_CABPRES: TIntegerField;
    CDSDetallePresupuestoTIPOCPBTE: TStringField;
    CDSDetallePresupuestoCLASECPBTE: TStringField;
    CDSDetallePresupuestoNROCPBTE: TStringField;
    CDSDetallePresupuestoRENGLON: TFloatField;
    CDSDetallePresupuestoFECHAVTA: TSQLTimeStampField;
    CDSDetallePresupuestoCODIGOARTICULO: TStringField;
    CDSDetallePresupuestoDETALLE: TStringField;
    CDSDetallePresupuestoUNIDAD: TStringField;
    CDSDetallePresupuestoDESGLOZAIVA: TStringField;
    CDSDetallePresupuestoDESCUENTO: TFloatField;
    CDSDetallePresupuestoCANTIDAD: TFloatField;
    CDSDetallePresupuestoCOSTO_EXENTO: TFloatField;
    CDSDetallePresupuestoCOSTO_GRAVADO: TFloatField;
    CDSDetallePresupuestoCOSTO_TOTAL: TFloatField;
    CDSDetallePresupuestoUNITARIO_GRAVADO: TFloatField;
    CDSDetallePresupuestoIVA_UNITARIO: TFloatField;
    CDSDetallePresupuestoUNITARIO_EXENTO: TFloatField;
    CDSDetallePresupuestoUNITARIO_TOTAL: TFloatField;
    CDSDetallePresupuestoTOTAL_EXENTO: TFloatField;
    CDSDetallePresupuestoTOTAL_GRAVADO: TFloatField;
    CDSDetallePresupuestoIVA_TOTAL: TFloatField;
    CDSDetallePresupuestoTOTAL: TFloatField;
    CDSDetallePresupuestoIVA_TASA: TFloatField;
    CDSDetallePresupuestoTIPOIVA_TASA: TIntegerField;
    CDSDetallePresupuestoIVA_SOBRETASA: TFloatField;
    CDSDetallePresupuestoTIPOIVA_SOBRETASA: TIntegerField;
    CDSDetallePresupuestoSUCURSAL: TIntegerField;
    CDSDetallePresupuestoDEPOSITO: TIntegerField;
    CDSDetallePresupuestoCALCULA_SOBRETASA: TStringField;
    CDSDetallePresupuestoMODO_GRAVAMEN: TStringField;
    CDSDetallePresupuestoMARGEN: TFloatField;
    CDSDetallePresupuestoAFECTA_STOCK: TStringField;
    CDSDetallePresupuestoID_MONEDA: TIntegerField;
    CDSDetallePresupuestoCOTIZACION: TFloatField;
    CDSDetallePresupuestoACEPTADO: TStringField;
    CDSDetallePresupuestoNOTAS: TStringField;
    CDSDetallePresupuestoCPBTESALIDA_ID: TIntegerField;
    CDSDetallePresupuestoCPBTESALIDA_TIPO: TStringField;
    CDSDetallePresupuestoCPBTESALIDA_CLASE: TStringField;
    CDSDetallePresupuestoCPBTESALIDA_NROCPBTE: TStringField;
    DSPDetallePresupuesto: TDataSetProvider;
    QDetallePresupuesto: TFDQuery;
    CDSPresupuestosClienteSUB_NRO: TStringField;
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    pnPie: TPanel;
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE dbgCabeceraCellClick(Column: TColumn);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormShow(Sender: TObject);
    PROCEDURE btConfirmaClick(Sender: TObject);
    PROCEDURE btTodosClick(Sender: TObject);
    PROCEDURE btSalirClick(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE DBGrillaDetalleKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE AceptarItemExecute(Sender: TObject);
    procedure CDSPresupuestosClienteAfterScroll(DataSet: TDataSet);
    procedure CDSDetallePresupuestoUNITARIO_TOTALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSDetallePresupuestoTOTALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
    procedure dbgCabeceraDblClick(Sender: TObject);

  private
    { Private declarations }
    FOrigen :String;
    FCliente:String;
    FOnInsertarDetalle: TInsertarDetalleProc;   // campo privado
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; AOnInsertarDetalle: TInsertarDetalleProc); reintroduce;
  published
    PROPERTY Origen: STRING read FOrigen write FOrigen;
    PROPERTY Cliente: STRING read FCliente write FCliente;
  END;

VAR
  FormBuscarPresupuestos: TFormBuscarPresupuestos;

IMPLEMENTATION

USES  UBuscadorPresupuestos;

{$R *.DFM}

constructor TFormBuscarPresupuestos.Create(AOwner: TComponent; AOnInsertarDetalle: TInsertarDetalleProc);
begin
  inherited Create(AOwner);
  FOnInsertarDetalle := AOnInsertarDetalle;
end;


PROCEDURE TFormBuscarPresupuestos.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  CDSPresupuestosCliente.Close;
  CDSDetallePresupuesto.Close;
  Action := caFree;
END;

PROCEDURE TFormBuscarPresupuestos.dbgCabeceraCellClick(Column: TColumn);
BEGIN
//  DetallePresupuesto.Close;
//  DetallePresupuesto.Params.ParamByName('Presupuesto').Value := PresupuestosClienteId_Pr.Value;
//  DetallePresupuesto.Open;
END;

procedure TFormBuscarPresupuestos.dbgCabeceraDblClick(Sender: TObject);
begin
  btTodos.Click;
end;

PROCEDURE TFormBuscarPresupuestos.FormCreate(Sender: TObject);
BEGIN
  AutoSize := False;
END;

PROCEDURE TFormBuscarPresupuestos.FormShow(Sender: TObject);
BEGIN
  CDSPresupuestosCliente.Close;
  CDSPresupuestosCliente.Params.ParamByName('Cliente').Value := Cliente;
  CDSPresupuestosCliente.Open;
  CDSDetallePresupuesto.Close;
  CDSDetallePresupuesto.Params.ParamByName('Presupuesto').Value := CDSPresupuestosClienteId_Pr.Value;
  CDSDetallePresupuesto.Open;
END;

PROCEDURE TFormBuscarPresupuestos.btConfirmaClick(Sender: TObject);
VAR Importe:Real;
BEGIN
  Importe := CDSDetallePresupuestoUNITARIO_GRAVADO.AsFloat;
  IF CDSDetallePresupuestoDESGLOZAIVA.Value = 'N' THEN
    Importe:= Importe * (1+CDSDetallePresupuestoIVA_TASA.AsFloat /100);


  if Origen='FC' Then
    if Assigned(FOnInsertarDetalle) then
      FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);
  if Origen='FO' Then
    if Assigned(FOnInsertarDetalle) then
      FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);
  if Origen='OR' Then
    if Assigned(FOnInsertarDetalle) then
      FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);

{
PROCEDURE TFormOrdenProduccion.InsertarDetalle(Codigo: STRING;
                                              Cantidad: double;
                                              Unitario:double;
                                              Descuento: double;
                                              Detalle: STRING;
                                              Id_cab:Integer,
                                              Id_Det:Integer);
begin
  dbgDetalle.DataSource.DataSet.Append;
  DatosOProduccion.CDSOProdDetCODIGOSetText(DatosOProduccion.CDSOProdDetCODIGO, Codigo);
  DatosOProduccion.CDSOProdDetDETALLE.Value := Detalle;
  DatosOProduccion.CDSOProdDetCANTIDADSetText(DatosOProduccion.CDSOProdDetCANTIDAD,FloatToStr(Cantidad));
  DatosOProduccion.CDSOProdDetID_PRESU_CAB.Value := Id_cab;
  DatosOProduccion.CDSOProdDetID_PRESU_DET.Value := Id_Det;
  DBGDetalle.DataSource.DataSet.Post;
end
}

END;

PROCEDURE TFormBuscarPresupuestos.btTodosClick(Sender: TObject);
VAR Importe:Real;
BEGIN
  WITH CDSDetallePresupuesto DO
    BEGIN
      First;
      WHILE NOT Eof DO
        BEGIN
          Importe := CDSDetallePresupuestoUNITARIO_GRAVADO.AsFloat;
            IF CDSDetallePresupuestoDESGLOZAIVA.Value = 'N' THEN
          Importe:= Importe * (1+CDSDetallePresupuestoIVA_TASA.AsFloat /100);

          if Origen='FC' Then
           if Assigned(FOnInsertarDetalle) then
             FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);
          if Origen='FO' Then
            if Assigned(FOnInsertarDetalle) then
               FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);
          if Origen='OR' Then
            if Assigned(FOnInsertarDetalle) then
              FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);

          Next;
        END;
    END;
END;

procedure TFormBuscarPresupuestos.CDSDetallePresupuestoTOTALGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
VAR
  Aux1: real;
BEGIN
  Aux1 := Sender.AsFloat;
  IF CDSDetallePresupuestoDESGLOZAIVA.Value = 'N' THEN
    Aux1 := Moneda3D('+','0.00',Aux1 + CDSDetallePresupuestoIVA_TOTAL.AsFloat);
  Text := FormatFloat('0.00', Aux1);

end;

procedure TFormBuscarPresupuestos.CDSDetallePresupuestoUNITARIO_TOTALGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
VAR
  Aux1, Aux2, Aux3: real;
BEGIN
  Aux1:= CDSDetallePresupuestoUNITARIO_EXENTO.AsFloat;
  Aux2:= CDSDetallePresupuestoUNITARIO_GRAVADO.AsFloat;
  IF CDSDetallePresupuestoDESGLOZAIVA.Value = 'N' THEN
    Aux2:= Aux2 + CDSDetallePresupuestoIVA_UNITARIO.AsFloat;
//  Aux2:= Moneda3D('+',MascaraDetalleUnitario,Aux2);
  Aux3:= Aux1 + Aux2;
  Text:= FormatFloat('0.00',Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
END;


procedure TFormBuscarPresupuestos.CDSPresupuestosClienteAfterScroll(
  DataSet: TDataSet);
begin
  CDSDetallePresupuesto.Close;
  CDSDetallePresupuesto.Params.ParamByName('Presupuesto').Value := CDSPresupuestosClienteId_Pr.Value;
  CDSDetallePresupuesto.Open;
end;

PROCEDURE TFormBuscarPresupuestos.btSalirClick(Sender: TObject);
BEGIN
  close;
END;

PROCEDURE TFormBuscarPresupuestos.FormDestroy(Sender: TObject);
BEGIN
  FormBuscarPresupuestos := NIL;
END;

procedure TFormBuscarPresupuestos.FormResize(Sender: TObject);
begin
  if FormBuscarPresupuestos<>nil then
    if FormBuscarPresupuestos.width<>726 then
      FormBuscarPresupuestos.Width:=726;
end;

PROCEDURE TFormBuscarPresupuestos.DBGrillaDetalleKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      AceptarItem.Execute;
    END;
END;

PROCEDURE TFormBuscarPresupuestos.AceptarItemExecute(Sender: TObject);
VAR Importe:Real;
BEGIN
  Importe := CDSDetallePresupuestoUNITARIO_GRAVADO.Value;
  IF CDSDetallePresupuestoDESGLOZAIVA.Value = 'N' THEN
    Importe:= Importe * (1+CDSDetallePresupuestoIVA_TASA.AsFloat /100);
  if Origen='FC' Then
    if Assigned(FOnInsertarDetalle) then
      FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);
  if Origen='FO' Then
    if Assigned(FOnInsertarDetalle) then
      FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);
  if Origen='OR' Then
    if Assigned(FOnInsertarDetalle) then
      FOnInsertarDetalle(CDSDetallePresupuestoCodigoArticulo.Value,
                                        CDSDetallePresupuestoCantidad.AsFloat,
                                        0,
                                        Importe,
                                        cdsdetallePresupuestodetalle.AsString,
                                        CDSDetallePresupuestoID_CABPRES.Value,
                                        CDSDetallePresupuestoID.Value);

END;


END.
