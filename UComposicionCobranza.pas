unit UComposicionCobranza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Provider,
  DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid,Librerias, Mask,  
  JvDBLookup, JvExStdCtrls, JvEdit, frxClass, frxDBSet, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, JvToolEdit, JvExMask,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.SqlExpr, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormComposicionCobranza = class(TFormABMBase)
    DSMovRecibos: TDataSource;
    CDSMovRecibos: TClientDataSet;
    DSPMovRecibos: TDataSetProvider;
    CDSMovRecibosID_TPAGO: TIntegerField;
    CDSMovRecibosID_FPAGO: TIntegerField;
    CDSMovRecibosDIASCOBRO: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbcZona: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    dbgMovRecibos: TJvDBGrid;
    DSPRecibos: TDataSetProvider;
    CDSRecibos: TClientDataSet;
    DSRecibos: TDataSource;
    CDSRecibosID_RC: TIntegerField;
    CDSRecibosTIPOCPBTE: TStringField;
    CDSRecibosCLASECPBTE: TStringField;
    CDSRecibosNROCPBTE: TStringField;
    CDSRecibosCODIGO: TStringField;
    CDSRecibosNOMBRE: TStringField;
    CDSRecibosZONA: TIntegerField;
    CDSRecibosSUCURSAL: TIntegerField;
    CDSRecibosVENDEDOR: TStringField;
    CDSMovRecibosMUESTRAFORMAPAGO: TStringField;
    dbgRecibos: TJvDBGrid;
    CDSMovRecibosID_COMPROBANTE: TIntegerField;
    CDSMovRecibosTIPO_COMPROB: TStringField;
    CDSMovRecibosNOMBRE: TStringField;
    DSPAplicaciones: TDataSetProvider;
    DSAplicaciones: TDataSource;
    dbgAplicaciones: TJvDBGrid;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesID_MOVCCVTA: TIntegerField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesMORA: TIntegerField;
    CDSRetenciones: TClientDataSet;
    DSPRetenciones: TDataSetProvider;
    DSRetenciones: TDataSource;
    JvDBGrid1: TJvDBGrid;
    CDSRetencionesID_MOV_RETENCIONES: TIntegerField;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPOCPBTE: TStringField;
    CDSRetencionesCLASECPBTE: TStringField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesID_CPBTE: TIntegerField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesCODIGO_CLIENTE: TStringField;
    CDSRetencionesCUIT_CLIENTE: TStringField;
    CDSRetencionesJURIDICCION: TIntegerField;
    CDSRetencionesNOMBRE_CLIENTE: TStringField;
    CDSMovRecibosFACTOR_P: TFloatField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    chRetenciones: TCheckBox;
    edEfectivo: TJvEdit;
    edChe: TJvEdit;
    edDias: TJvEdit;
    edDiasFacturas: TJvEdit;
    CDSAplicacionesFACTOR_F: TFloatField;
    Label10: TLabel;
    edNombreCliente: TEdit;
    chClientesTodos: TCheckBox;
    BuscarCliente: TAction;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frxReporte: TfrxReport;
    frDBAplicaciones: TfrxDBDataset;
    frDBMovimientos: TfrxDBDataset;
    frDBRetenciones: TfrxDBDataset;
    FrDBRecibos: TfrxDBDataset;
    chFiltro: TCheckBox;
    dbcGrupo: TJvDBLookupCombo;
    dbgGrupo: TDBGrid;
    CDSRecibosID_COMPROBANTE: TIntegerField;
    ceCliente: TJvComboEdit;
    Desde: TJvDateEdit;
    hasta: TJvDateEdit;
    QRecibos: TFDQuery;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSRecibosTOTAL: TFloatField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesTIPOABONO: TStringField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QAplicaciones: TFDQuery;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSAplicacionesFECHAFACTURA: TSQLTimeStampField;
    CDSAplicacionesFECHAVTOFACTURA: TSQLTimeStampField;
    CDSAplicacionesIMPORTEFACTURA: TFloatField;
    QMovRecibos: TFDQuery;
    CDSMovRecibosFECHA_COBRO: TSQLTimeStampField;
    CDSMovRecibosFECHA_EMISION: TSQLTimeStampField;
    CDSMovRecibosFECHA_ENTRADA: TSQLTimeStampField;
    CDSMovRecibosIMPORTE: TFloatField;
    CDSMovRecibosDEBE: TFloatField;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSPersonal: TDataSource;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    DSPPersonal: TDataSetProvider;
    DSZona: TDataSource;
    CDSZona: TClientDataSet;
    CDSZonaID_ZONA: TIntegerField;
    CDSZonaDETALLE: TStringField;
    DSPZona: TDataSetProvider;
    QFiltroC: TFDQuery;
    DSPFiltroCab: TDataSetProvider;
    CDSFiltroCab: TClientDataSet;
    CDSFiltroCabID: TIntegerField;
    CDSFiltroCabDETALLE: TStringField;
    DSFiltroCab: TDataSource;
    DSFiltroDet: TDataSource;
    CDSFiltroDet: TClientDataSet;
    CDSFiltroDetID: TIntegerField;
    CDSFiltroDetID_CAB: TIntegerField;
    CDSFiltroDetID_CPBTE: TIntegerField;
    CDSFiltroDetMUESTRACOMPROBANTE: TStringField;
    CDSFiltroDetMUESTRATIPO: TStringField;
    CDSFiltroDetMUESTRACLASE: TStringField;
    CDSFiltroDetMUESTRASUC: TStringField;
    DSPFiltroDet: TDataSetProvider;
    QFiltroD: TFDQuery;
    QRetenciones: TFDQuery;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    CDSRetencionesIMPORTE: TFloatField;
    RxLabel10: TJvLabel;
    chFechaVta: TCheckBox;
    procedure CDSMovRecibosCalcFields(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSRecibosAfterScroll(DataSet: TDataSet);
    procedure CDSAplicacionesCalcFields(DataSet: TDataSet);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure chClientesTodosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgRecibosDblClick(Sender: TObject);
    procedure dbcGrupoChange(Sender: TObject);
    procedure chFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComposicionCobranza: TFormComposicionCobranza;

implementation

uses UBuscadorClientes, DMBuscadoresForm, URecibo_2,UDMain_FD;

{$R *.dfm}

procedure TFormComposicionCobranza.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.Value;
        END;
    END;
END;


procedure TFormComposicionCobranza.BuscarExecute(Sender: TObject);
begin
 // inherited;
  if (chClientesTodos.Checked=False) and (edNombreCliente.Text='') then
    Raise Exception.Create('Falta indicar el cliente');

  CDSRecibos.Close;
  CDSRecibos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSRecibos.Params.ParamByName('zona').Value    :=dbcZona.KeyValue;
  CDSRecibos.Params.ParamByName('Vendedor').Value:=dbcVendedor.KeyValue;
  CDSRecibos.Params.ParamByName('desde').Value   :=desde.Date;
  CDSRecibos.Params.ParamByName('hasta').Value   :=hasta.Date;
  if chClientesTodos.Checked then
    CDSRecibos.Params.ParamByName('codigo').Value:='******'
  else
    CDSRecibos.Params.ParamByName('codigo').Value:=ceCliente.Text;

  
  CDSRecibos.Params.ParamByName('Vendedor').Value:=dbcVendedor.KeyValue;

  CDSRecibos.Open;

  CDSRecibos.Filtered:=False;

  if chFiltro.Checked=True then
    begin
      if Not(CDSFiltroDet.IsEmpty) then
        begin
          CDSRecibos.Filter:='';
          CDSFiltroDet.First;
          while Not(CDSFiltroDet.Eof) do
            begin
              if CDSRecibos.Filter='' then
                CDSRecibos.Filter:='id_comprobante = '+CDSFiltroDetID_CPBTE.AsString
              else
                CDSRecibos.Filter:=CDSRecibos.Filter+' or id_comprobante = '+CDSFiltroDetID_CPBTE.AsString;
              CDSFiltroDet.Next;
            end;
         CDSRecibos.Filtered:=True;
      end;
    end;


  CDSMovRecibos.Close;
  CDSMovRecibos.Params.ParamByName('ID').Value      :=CDSRecibosID_RC.Value;
  CDSMovRecibos.Open;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('ID').Value      :=CDSRecibosID_RC.Value;
  CDSRetenciones.Open;

end;

procedure TFormComposicionCobranza.CDSAplicacionesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if chFechaVta.Checked=False then
    begin
      CDSAplicacionesMORA.Value    := Trunc(CDSAplicacionesFECHA.AsDateTime-CDSAplicacionesFECHAVTOFACTURA.AsDateTime);
      CDSAplicacionesFACTOR_F.Value:= CDSAplicacionesIMPORTE.AsFloat*Trunc(CDSAplicacionesFECHA.AsDateTime-CDSAplicacionesFECHAVTOFACTURA.AsDateTime);
    end
  else
    if chFechaVta.Checked=True then
      begin
        CDSAplicacionesMORA.Value    := Trunc(CDSAplicacionesFECHA.AsDateTime-CDSAplicacionesFECHAFACTURA.AsDateTime);
        CDSAplicacionesFACTOR_F.Value:= CDSAplicacionesIMPORTE.AsFloat*Trunc(CDSAplicacionesFECHA.AsDateTime-CDSAplicacionesFECHAFACTURA.AsDateTime);
      end

end;

procedure TFormComposicionCobranza.CDSMovRecibosCalcFields(DataSet: TDataSet);
var i:real;
begin
  inherited;
  CDSMovRecibosDIASCOBRO.Value:=1;
  if CDSMovRecibosID_TPAGO.Value=3 then
    I:= CDSMovRecibosFECHA_COBRO.AsDateTime - CDSMovRecibosFECHA_ENTRADA.AsDateTime;
  if i<=0 Then i:=1;
  CDSMovRecibosDIASCOBRO.Value:= Trunc(i);
  CDSMovRecibosFACTOR_P.Value := CDSMovRecibosDIASCOBRO.Value*CDSMovRecibosDEBE.AsFloat;
end;

procedure TFormComposicionCobranza.CDSRecibosAfterScroll(DataSet: TDataSet);
var aux1,aux2,aux3,aux4:Real;
begin
  inherited;
  CDSMovRecibos.Close;
  CDSMovRecibos.Params.ParamByName('ID').Value   :=CDSRecibosID_RC.Value;
  CDSMovRecibos.Open;

  CDSAplicaciones.Close;
  CDSAplicaciones.Params.ParamByName('ID').Value :=CDSRecibosID_RC.Value;
  CDSAplicaciones.Open;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('ID').Value  :=CDSRecibosID_RC.Value;
  CDSRetenciones.Open;

  aux1:=0;
  aux2:=0;
  aux3:=0;
  aux4:=0;
  CDSMovRecibos.First;
  while Not(CDSMovRecibos.Eof) do
    begin
      //Aux2 acumulo LOS PAGOS CON CHEQUES
      if CDSMovRecibosID_TPAGO.Value=3 then
        aux2:=aux2+CDSMovRecibosDEBE.AsFloat
      else
        aux1:=aux1+CDSMovRecibosDEBE.AsFloat;
      //Aux1 acumulo los otros pagos
      aux3:=aux3+CDSMovRecibosFACTOR_P.Value;
      CDSMovRecibos.Next;
    end;
  if CDSMovRecibos.RecordCount<=0 then
    begin
      Aux2:=0;
      Aux1:=1;
      Aux3:=1;
    end;
  CDSMovRecibos.First;

  CDSRetenciones.First;
  while Not(CDSRetenciones.Eof) and (chRetenciones.Checked=True) do
    begin
      aux1:=aux1+CDSRetencionesIMPORTE.AsFloat;
      aux3:=aux3+CDSRetencionesIMPORTE.AsFloat;
      CDSRetenciones.Next;
    end;
  CDSRetenciones.First;

  edEfectivo.Text:=FormatFloat(',0.00',Aux1);
  edChe.Text     :=FormatFloat(',0.00',Aux2);
  edDias.Text    :=FormatFloat(',0.00',Aux3/(Aux1+Aux2));
 // if aux2>0 Then
 //    edDias.Text :=FormatFloat('###,###,##0.00',(aux3)/aux2)
 //  else
 //    edDias.Text :=FormatFloat('###,###,##0.00',1);

//******************************************************//


  aux1:=0;
  aux2:=0;
  aux3:=0;
  aux4:=0;
  CDSAplicaciones.First;
  while Not(CDSAplicaciones.Eof) do
    begin
      aux1:=aux1+CDSAplicacionesFACTOR_F.Value;
      aux2:=aux2+CDSAplicacionesIMPORTE.AsFloat;
      CDSAplicaciones.Next;
    end;
   if aux2>0 then
     edDiasFacturas.Text:=FormatFloat(',0.00',aux1/aux2)
   else
    edDiasFacturas.Text:='1';

  CDSAplicaciones.First;

end;

procedure TFormComposicionCobranza.ceClienteKeyPress(Sender: TObject;
  var Key: Char);

VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
          Desde.SetFocus;
        end;
      //ceCliente.SetFocus;
      //ceCliente.SelectAll;
    END;

end;

procedure TFormComposicionCobranza.chClientesTodosClick(Sender: TObject);
begin
  inherited;
  if chClientesTodos.Checked=False then
    begin
      ceCliente.Enabled:=True;
      ceCliente.Color:=clWhite;
      ceCliente.SetFocus;
    end
  else
    begin
      ceCliente.Enabled:=False;
      ceCliente.Color:=clBtnFace;
    end;

end;

procedure TFormComposicionCobranza.chFiltroClick(Sender: TObject);
begin
  inherited;
  if chFiltro.Checked=True then
    begin
      dbcGrupo.Color:=clWhite;
      dbgGrupo.Color:=clWhite;
      dbcGrupo.Enabled:=True;
      dbgGrupo.Enabled:=True;

    end
  else
  if chFiltro.Checked=False then
    begin
      dbcGrupo.Color:=clBtnFace;
      dbgGrupo.Color:=clBtnFace;
      dbcGrupo.Enabled:=False;
      dbgGrupo.Enabled:=False;
    end;

  CDSRecibos.Filtered:=False;
  if chFiltro.Checked=True then
    begin
      if Not(CDSFiltroDet.IsEmpty) then
        begin
          CDSRecibos.Filter:='';
          CDSFiltroDet.First;
          while Not(CDSFiltroDet.Eof) do
            begin
              if CDSRecibos.Filter='' then
                CDSRecibos.Filter:='id_comprobante = '+CDSFiltroDetID_CPBTE.AsString
              else
                CDSRecibos.Filter:=CDSRecibos.Filter+' or id_comprobante = '+CDSFiltroDetID_CPBTE.AsString;
              CDSFiltroDet.Next;
            end;
         CDSRecibos.Filtered:=True;
      end;
    end;

end;

procedure TFormComposicionCobranza.dbcGrupoChange(Sender: TObject);
begin
  inherited;
  CDSRecibos.Filtered:=False;
  CDSFiltroDet.Close;
  CDSFiltroDet.Params.ParamByName('id').Value:=dbcGrupo.KeyValue;
  CDSFiltroDet.Open;
  if chFiltro.Checked=True then
    begin
      if Not(CDSFiltroDet.IsEmpty) then
        begin
          CDSRecibos.Filter:='';
          CDSFiltroDet.First;
          while Not(CDSFiltroDet.Eof) do
            begin
              if CDSRecibos.Filter='' then
                CDSRecibos.Filter:='id_comprobante = '+CDSFiltroDetID_CPBTE.AsString
              else
                CDSRecibos.Filter:=CDSRecibos.Filter+' or id_comprobante = '+CDSFiltroDetID_CPBTE.AsString;
              CDSFiltroDet.Next;
            end;
         CDSRecibos.Filtered:=True;
      end;
    end;
end;

procedure TFormComposicionCobranza.dbgRecibosDblClick(Sender: TObject);
begin
  inherited;
  if Not(assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Application);
  FormRecibo_2.DatoNew  :=CDSRecibosID_RC.AsString;
  FormRecibo_2.TipoCpbte:='RC';
  FormRecibo_2.Recuperar.Execute;
end;

procedure TFormComposicionCobranza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormComposicionCobranza.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

  CDSPersonal.OPen;
  CDSZona.Open;
  CDSSucursal.Open;
  CDSFiltroCab.Open;
  CDSFiltroCab.First;

  chClientesTodos.Checked:=True;
  ceCliente.Enabled:=False;
  ceCliente.Color:=clBtnFace;
end;

procedure TFormComposicionCobranza.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComposicionCobranza:=nil;
end;

procedure TFormComposicionCobranza.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) and
    (not (ActiveControl is TJvComboEdit)) Then
  inherited;

end;

procedure TFormComposicionCobranza.FormShow(Sender: TObject);
begin
  inherited;
  chFiltro.Checked:=False;
  dbcGrupo.Color  :=clBtnFace;
  dbgGrupo.Color  :=clBtnFace;
  dbcGrupo.Enabled:=False;
  dbgGrupo.Enabled:=False;
end;

procedure TFormComposicionCobranza.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoComposicionCobranza.fr3');
  frxReporte.Variables['desde']   :=''''+Desde.Text+'''';
  frxReporte.Variables['hasta']   :=''''+hasta.Text+'''';
  frxReporte.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';
  frxReporte.Variables['Zona']    :=''''+dbcZona.Text+'''';
  frxReporte.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
  if (chRetenciones.Checked=True) then
    frxReporte.Variables['ConRetenciones']:='''S'''
  else
    frxReporte.Variables['ConRetenciones']:='''N''';
  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
end;

procedure TFormComposicionCobranza.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormComposicionCobranza.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;



end;


end.