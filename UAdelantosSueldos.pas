unit UAdelantosSueldos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, UMovValoresEgresos, StdCtrls, Mask, DBCtrls, Db,
  ActnList, ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient,
  Provider, Librerias, frxDBSet, frxClass, IBGenerator, JvComponentBase,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, DBXCommon, frxExportPDF, Grids, DBGrids,
  System.Actions, JvAppStorage, JvAppIniStorage, CompBuscador, JvDBLookup,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  System.ImageList, Vcl.Menus, frCoreClasses, AdvSmoothButton;

type
  TFormAdelantosSueldo = class(TFormABMBase)
    pnValores: TPanel;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    DSPAdelantos: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    BuscarEmpleado: TAction;
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    pnImporte: TPanel;
    DBEdit2: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDetalle: TDBEdit;
    dbeNombre: TDBEdit;
    frAdelantos: TfrxReport;
    frdbAdelantos: TfrxDBDataset;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frDBEfectivo: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBCheques: TfrxDBDataset;
    frDBDMovCaja: TfrxDBDataset;
    IBGId_Adelantos: TIBGenerator;
    frDBTransferencia: TfrxDBDataset;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxDBCodigo: TJvDBComboEdit;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QAdelantos: TFDQuery;
    QAdelantosID: TIntegerField;
    QAdelantosTIPOCPBTE: TStringField;
    QAdelantosCLASECPBTE: TStringField;
    QAdelantosLETRA: TStringField;
    QAdelantosSUC: TStringField;
    QAdelantosNUMERO: TStringField;
    QAdelantosSUCURSAL: TIntegerField;
    QAdelantosFECHA: TSQLTimeStampField;
    QAdelantosCODIGO: TStringField;
    QAdelantosIMPORTE: TFloatField;
    QAdelantosDETALLE: TStringField;
    QAdelantosNROCPBTE: TStringField;
    QAdelantosNOMBRE: TStringField;
    QAdelantosUSUARIO: TStringField;
    QAdelantosFECHA_HORA: TSQLTimeStampField;
    QAdelantosMUESTRASUCURSAL: TStringField;
    QAdelantosMUESTRACOMPROBANTE: TStringField;
    QAdelantosID_TIPOCOMPROBANTE: TIntegerField;
    CDSAdelantos: TClientDataSet;
    CDSAdelantosID: TIntegerField;
    CDSAdelantosTIPOCPBTE: TStringField;
    CDSAdelantosCLASECPBTE: TStringField;
    CDSAdelantosLETRA: TStringField;
    CDSAdelantosSUC: TStringField;
    CDSAdelantosNUMERO: TStringField;
    CDSAdelantosSUCURSAL: TIntegerField;
    CDSAdelantosFECHA: TSQLTimeStampField;
    CDSAdelantosCODIGO: TStringField;
    CDSAdelantosIMPORTE: TFloatField;
    CDSAdelantosDETALLE: TStringField;
    CDSAdelantosNROCPBTE: TStringField;
    CDSAdelantosNOMBRE: TStringField;
    CDSAdelantosUSUARIO: TStringField;
    CDSAdelantosFECHA_HORA: TSQLTimeStampField;
    CDSAdelantosMUESTRASUCURSAL: TStringField;
    CDSAdelantosMUESTRACOMPROBANTE: TStringField;
    CDSAdelantosID_TIPOCOMPROBANTE: TIntegerField;
    dbeFecha: TJvDBDateEdit;
    CambiarEmpleado: TAction;
    CambiarFecha: TAction;
    btModificaFecha: TBitBtn;
    BitBtn1: TBitBtn;
    QComprobCAJA_DEFECTO: TIntegerField;
    edNumeroOP: TDBText;
    Label1: TLabel;
    QAdelantosNUMERO_OPERACION: TStringField;
    CDSAdelantosNUMERO_OPERACION: TStringField;
    GravarNumeroOperacion: TAction;
    frxPDFExport1: TfrxPDFExport;
    SpeedButton1: TSpeedButton;
    DetalleCostos: TAction;
    dbgCtroCosto: TDBGrid;
    DSCtroCosto: TDataSource;
    frDBebitos: TfrxDBDataset;
    ComBuscadorEmpleado: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    QAdelantosID_MOTIVO: TIntegerField;
    CDSAdelantosID_MOTIVO: TIntegerField;
    DSMotivo: TDataSource;
    dbcMotivo: TJvDBLookupCombo;
    JvLabel1: TJvLabel;
    DBMemo1: TDBMemo;
    QAdelantosOBS: TStringField;
    CDSAdelantosOBS: TStringField;
    QEmpleado: TFDQuery;
    QEmpleadoNOMBRE: TStringField;
    QMotivo: TFDQuery;
    QMotivoID: TIntegerField;
    QMotivoDETALLE: TStringField;
    QBuscaEmpleados: TFDQuery;
    QBuscaEmpleadosNOMBRE: TStringField;
    QBuscaEmpleadosCODIGO: TStringField;
    QBuscaComprob: TFDQuery;
    QBuscaComprobID_COMPROBANTE: TIntegerField;
    QBuscaComprobTIPO_COMPROB: TStringField;
    QBuscaComprobCLASE_COMPROB: TStringField;
    QBuscaComprobDENOMINACION: TStringField;
    QBuscaComprobSUCURSAL: TIntegerField;
    QBuscaComprobLETRA: TStringField;
    QBuscaComprobPREFIJO: TStringField;
    QBuscaComprobNUMERARCION_PROPIA: TStringField;
    QBuscaComprobNUMERO: TStringField;
    QBuscaComprobTOMA_NRO_DE: TIntegerField;
    QBuscaComprobAFECTA_IVA: TStringField;
    QBuscaComprobAFECTA_CC: TStringField;
    QBuscaComprobDESGLOZA_IVA: TStringField;
    QBuscaComprobCOMPRA_VENTA: TStringField;
    QBuscaComprobCOPIAS: TIntegerField;
    QBuscaComprobREPORTE: TStringField;
    QBuscaComprobIMPRIME: TStringField;
    QBuscaComprobFISCAL: TStringField;
    QBuscaComprobNOMBREIMPRESORA: TStringField;
    QBuscaComprobPENDIENTEIMPRESION: TStringField;
    QBuscaComprobLINEAS_DETALLE: TSmallintField;
    QBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    QBuscaComprobDEFECTO: TStringField;
    QBuscaComprobCAJA_DEFECTO: TIntegerField;
    QBuscaComprobDIVIDE_IVA: TStringField;
    QBuscaComprobFACTURAELECTRONICA: TStringField;
    QBuscaComprobEN_USO: TStringField;
    QBuscaComprobCODIGO_AFIP: TStringField;
    QBuscaComprobID_AJUSTECC: TIntegerField;
    QBuscaComprobCENTRO_COSTO: TIntegerField;
    QBuscaComprobFILTRO_COMPROBANTES: TStringField;
    QBuscaComprobDEPOSITO: TIntegerField;
    QBuscaComprobULTIMONRO: TIntegerField;
    QBuscaComprobEDITAR_NRO: TStringField;
    CambiarClase: TAction;
    spMenu: TSpeedButton;
    PopupMenu1: TPopupMenu;
    ppmCambiarClase: TMenuItem;
    ppmCambiarEmpleado: TMenuItem;
    ppmCambiarFecha: TMenuItem;
    QAdelantosLOTE: TIntegerField;
    CDSAdelantosLOTE: TIntegerField;
    Label2: TLabel;
    DBText1: TDBText;
    N1: TMenuItem;
    BorrarLote1: TMenuItem;
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSAdelantosCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSAdelantosSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSAdelantosNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSAdelantosSUCSetText(Sender: TField; const Text: String);
    procedure pnValoresEnter(Sender: TObject);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSAdelantosNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSAdelantosID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure ImprimirExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure CambiarEmpleadoExecute(Sender: TObject);
    procedure CambiarFechaExecute(Sender: TObject);
    procedure GravarNumeroOperacionExecute(Sender: TObject);
    procedure DetalleCostosExecute(Sender: TObject);
    procedure CambiarClaseExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1CargaLoteChePropioExecute(Sender: TObject);
    procedure BorrarLote1Click(Sender: TObject);
  private
    { Private declarations }
    procedure BorrarLote(Lote:Integer);
  public
    Mascara:String;
    function AsignarEmpleado(Dato:String):Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;

    { Public declarations }
  end;

var
  FormAdelantosSueldo: TFormAdelantosSueldo;

PROCEDURE UltimoComprobante;

implementation

uses UCarteraCheques, UBuscadorCpbte, UDMain_FD,DMBuscadoresForm,
     DMStoreProcedureForm, UCambioVendedor, UFecha, UNumeroOperacion,
     UAsignacionCtroCosto, UBuscadorComprobantes, UCambiaClaseComprobante;

{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormAdelantosSueldo DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSAdelantosLETRA.AsString <> '') AND (CDSAdelantosCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value    := CDSAdelantosLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value     := CDSAdelantosSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value    := CDSAdelantosCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value     := CDSAdelantosTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value  := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAdelantosSUCSetText(CDSAdelantosSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAdelantosNUMEROSetText(CDSAdelantosNUMERO, IntToStr(Numero));
          CDSAdelantosTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSAdelantosCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAdelantosNROCPBTE.AsString := CDSAdelantosLETRA.AsString + CDSAdelantosSUC.AsString + CDSAdelantosNUMERO.AsString;
    END;

END;

FUNCTION TFormAdelantosSueldo.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSAdelantosID_TIPOCOMPROBANTE.Clear;
      CDSAdelantosMUESTRACOMPROBANTE.Clear;
      QBuscaComprob.close;
      QBuscaComprob.ParamByName('suc').Value:=Dato;
      QBuscaComprob.Open;
      if QBuscaComprob.RecordCount=1 Then
        begin
          CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE,QBuscaComprob.fieldByName('Id_comprobante').AsString);
          dbeDetalle.SetFocus;
        end
      else
        begin
          QBuscaComprob.Filter:='DEFECTO = ''S'' ';
          QBuscaComprob.Filtered:=True;
          QBuscaComprob.First;
          if QBuscaComprob.fieldByName('Id_comprobante').AsString<>'' then
            CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE,QBuscaComprob.fieldByName('Id_comprobante').AsString)
          else
            begin
              QBuscaComprob.Filtered:=False;
              QBuscaComprob.Filter:='';
              QBuscaComprob.First;
              CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE,QBuscaComprob.fieldByName('Id_comprobante').AsString)
            end;
        end;
      QBuscaComprob.Close;
      QBuscaComprob.Filter:='';
      QBuscaComprob.Filtered:=False;

      Result := True;
      CDSAdelantosMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAdelantosMUESTRASUCURSAL.Value := '';
    END;
END;


FUNCTION TFormAdelantosSueldo.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSAdelantosSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      //*****************************************************************************
      // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
      //*****************************************************************************
      if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
        FormAdelantosSueldo.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
      else
        FormAdelantosSueldo.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
      //*****************************************************************************
      //*****************************************************************************

      CDSAdelantosMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAdelantosLETRA.Value              := QComprobLETRA.Value;
      CDSAdelantosTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAdelantosCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAdelantosMUESTRACOMPROBANTE.Value := '';
      CDSAdelantosLETRA.Value              := '';
      CDSAdelantosTIPOCPBTE.Value          := '';
    END;
  QComprob.Close;
END;

function TFormAdelantosSueldo.AsignarEmpleado(dato:String):Boolean;
begin
  QEmpleado.Close;
  QEmpleado.ParamByName('Codigo').Value:=Dato;
  QEmpleado.Open;
  if Not(QEmpleado.IsEmpty) Then
    begin
      Result:=True;
      CDSAdelantosNOMBRE.Value:= QEmpleadoNOMBRE.Value;
      end
    else
      begin
        Result:=False;
        CDSAdelantosNOMBRE.Value:='';
      end;
  QEmpleado.Close;
end;

procedure TFormAdelantosSueldo.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
    if comBuscadorSucursal.rOk Then
      CDSAdelantosSUCURSALSetText(CDSAdelantosSucursal, IntToStr(comBuscadorSucursal.id));
  CDSBuscaSucursal.Close;
end;

procedure TFormAdelantosSueldo.CDSAdelantosCODIGOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;;
      if not(AsignarEmpleado(Sender.AsString)) Then
        begin
          Sender.AsString := '';
          ShowMessage('Codigo No Valido');
          RxDBCodigo.SetFocus;
        end;
    end;
end;

procedure TFormAdelantosSueldo.CDSAdelantosSUCURSALSetText(Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
        END;
     end;
end;

procedure TFormAdelantosSueldo.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  FrameMovValoresEgresos1.tsDebito.TabVisible      := True;
  FrameMovValoresEgresos1.tsTarjeta.TabVisible     := False;
  FrameMovValoresEgresos1.pcValores.ActivePageIndex:= 0;

  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);
  DSBase.DataSet := CDSAdelantos;
  AddClientDataSet(CDSAdelantos,DSPAdelantos);
  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
  AddClientDataSet(FrameMovValoresEgresos1.CDSTransBco,FrameMovValoresEgresos1.DSPTransBco);
  AddClientDataSet(FrameMovValoresEgresos1.CDSChe3, FrameMovValoresEgresos1.DSPChe3);
  AddClientDataSet(FrameMovValoresEgresos1.CDSDebitos, FrameMovValoresEgresos1.DSPDebitos);


  FrameMovValoresEgresos1.CDSChe3.Open;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.CDSCheques.Open;
  FrameMovValoresEgresos1.CDSTransBco.Open;
  FrameMovValoresEgresos1.QCajaCab.Open;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;
  FrameMovValoresEgresos1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;

  QMotivo.Close;
  QMotivo.Open;

  CDSAdelantos.Open;


  Mascara:=DMMain_FD.MascaraVales;

  TFloatField(CDSAdelantosIMPORTE).EditFormat:=Mascara;
  TFloatField(CDSAdelantosIMPORTE).DisplayFormat:=Mascara;

  pnImporte.BevelInner:=bvNone;
  pnImporte.BevelOuter:=bvNone;
  Tabla:='adelantos_sueldo';
  Campo:='id';
end;

procedure TFormAdelantosSueldo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
//  FreeAndNil(FormCarteraCheques);
end;

procedure TFormAdelantosSueldo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAdelantosSueldo:=nil;
end;

procedure TFormAdelantosSueldo.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
//  CDSBuscaComprob.Close;
//  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAdelantosSUCURSAL.Value;
//  CDSBuscaComprob.Open;
//  IF NOT (CDSBuscaComprob.IsEmpty) THEN
//    BEGIN
//      IF BuscadorTipoCpbte.Execute THEN
//        if BuscadorTipoCpbte.LookupTable.FieldByName('id_comprobante').AsString<>'' Then
//          CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE, BuscadorTipoCpbte.LookupTable.FieldByName('id_comprobante').AsString);
//    END
//  ELSE
//    ShowMessage('No hay comprobantes definidos para esta Operación...');
//  CDSBuscaComprob.Close;
//
//  DMBuscadores.CDSBuscaComprob.Close;
//  DMBuscadores.CDSBuscaComprob.CommandText:='';



  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''C'' and '+
                                            '(tipo_comprob=''VA'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAdelantosSUCURSAL.Value;


  FormBuscaComprobantes         := TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:= DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
//    CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE, comBuscadorTipoCpbte.LookupTable.FieldByName('id_comprobante').AsString);
      CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;



end;

procedure TFormAdelantosSueldo.CDSAdelantosNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAdelantosNROCPBTE.Value := CDSAdelantosLETRA.Value +
                                CDSAdelantosSUC.Value +
                                CDSAdelantosNUMERO.Value;
end;

procedure TFormAdelantosSueldo.CDSAdelantosSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAdelantosNROCPBTE.Value := CDSAdelantosLETRA.Value +
                                CDSAdelantosSUC.Value +
                                CDSAdelantosNUMERO.Value;
end;

procedure TFormAdelantosSueldo.pnValoresEnter(Sender: TObject);
begin
  inherited;
  if DSBase.State=dsInsert Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (RxDBCodigo.Text<>'') and (dbeFecha.Text<>'') then
    begin
      pnValores.Enabled:=True;
      pnCabecera.Enabled:=False;
      WITH FrameMovValoresEgresos1 DO
        BEGIN
           if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
             begin
               QCajaCab.Close;
               QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
               QCajaCab.Open;
               IF NOT (QCajaCab.IsEmpty) THEN
                 BEGIN
                   ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                   edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                   Id_Caja            := QCajaCabID_CAJA.Value;
                   id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                   FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                 end;
             end;
          TipoCpbte      := CDSAdelantosTIPOCPBTE.Value;
          TipoOperacion  := 'E';
          ClaseCpbte     := CDSAdelantosCLASECPBTE.Value;
          NroCpbte       := CDSAdelantosNROCPBTE.Value;
          FechaOperacion := CDSAdelantosFECHA.AsDateTime;
          IdCpbte        := CDSAdelantosID.Value;
          Origen         := CDSAdelantosNOMBRE.Value;
        END;
    end
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
      pnCabecera.Enabled:=True;
      //pnValores.Enabled:=false;
      dbeFecha.SetFocus;
    end;

end;

procedure TFormAdelantosSueldo.BuscarEmpleadoExecute(Sender: TObject);
begin
  inherited;
  QBuscaEmpleados.Close;
  QBuscaEmpleados.Open;
  comBuscadorEmpleado.Execute;
    if comBuscadorEmpleado.rOk Then
      CDSAdelantosCODIGOSetText(CDSAdelantosCODIGO,comBuscadorEmpleado.id);
  QBuscaEmpleados.Close;

end;

procedure TFormAdelantosSueldo.AgregarExecute(Sender: TObject);
begin
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
  CDSAdelantos.EmptyDataSet;
  CDSAdelantos.close;
  CDSAdelantos.Params.ParamByName('TipoCpbte').Clear;
  CDSAdelantos.Params.ParamByName('id').Clear;
  CDSAdelantos.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.ceCaja.Text:='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  inherited;
  sbEstado.SimpleText:='';
  pnCabecera.Enabled:=True;
  if FormAdelantosSueldo.Visible=True then
    dbeFecha.SetFocus;
end;

procedure TFormAdelantosSueldo.CDSAdelantosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAdelantosID.Value         := IBGId_Adelantos.IncrementFD(1);
  CDSAdelantosFECHA.AsDateTime := date;
  CDSAdelantosSUCURSALSetText(CDSAdelantosSUCURSAL,IntToStr(FormAdelantosSueldo.SucursalPorDefecto));
  CDSAdelantosUSUARIO.Value         := DMMain_FD.UsuarioActivo;
  CDSAdelantosFECHA_HORA.AsDateTime := Now;
  CDSAdelantosDETALLE.Value         := '';
  CDSAdelantosID_MOTIVO.Value       := 1;
  CDSAdelantosLOTE.Value            :=-1;

end;

procedure TFormAdelantosSueldo.ConfirmaExecute(Sender: TObject);
begin
  if Moneda3D(' ',Mascara,CDSAdelantosIMPORTE.AsFloat)<>0 Then
    if Moneda3D(' ',Mascara,CDSAdelantosIMPORTE.AsFloat)=Moneda3D(' ',Mascara,FrameMovValoresEgresos1.SumaValores) Then
      begin
        DatoNew   := IntToStr(CDSAdelantosID.Value);
        TipoCpbte := CDSAdelantosTIPOCPBTE.Value;
        CDSAdelantosIMPORTE.AsFloat:= FrameMovValoresEgresos1.SumaValores;
        CDSAdelantosNROCPBTE.Value := CDSAdelantosLETRA.Value +
                                      CDSAdelantosSUC.Value +
                                      CDSAdelantosNUMERO.Value;
        if CDSAdelantos.State<>dsBrowse Then
          CDSAdelantos.Post;
        inherited;
        Recuperar.Execute;
        if TForm(Self.Owner).Name='FormRetiroLotesPersonal' then
          Imprime:='N';
        if Imprime='S' Then
          IF (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
          Imprimir.Execute;

      end
    else
      SHowMessage('El importe del Cpbte. difiere con los valores ingresados.....')
  else
    ShowMessage('El Comprobante no puede tener importe 0(cero)....');
end;

procedure TFormAdelantosSueldo.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 7;
  FormBuscaCpbte.TipoCpbte1 := 'VA';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormAdelantosSueldo.BorrarExecute(Sender: TObject);
var Detalle:String;
begin
//  inherited;
  if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        // **** Ingreso en el Log File  **************
        Detalle:= 'Borrado Vale/Adelantos: '+
                   CDSAdelantosCLASECPBTE.Value+'-'+
                   CDSAdelantosLETRA.Value+'-'+
                   CDSAdelantosSUC.Value+'-'+
                   CDSAdelantosNUMERO.Value+'-'+
                   ' Empleado: '+
                   CDSAdelantosCODIGO.Value+'-'+CDSAdelantosNOMBRE.Value+
                   ' Importe: '+
                   FormatFloat('0.00',CDSAdelantosIMPORTE.AsFloat);

        DMMain_FD.LogFileFD(0,4,Detalle,'VALES');

        {
        DMStoreProcedure.spGravarLogDBX.Close;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 4;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Borrado Vale/Adelantos: '+
                                                             CDSAdelantosCLASECPBTE.Value+'-'+
                                                             CDSAdelantosLETRA.Value+'-'+
                                                             CDSAdelantosSUC.Value+'-'+
                                                             CDSAdelantosNUMERO.Value+'-'+
                                                             ' Empleado: '+
                                                             CDSAdelantosCODIGO.Value+'-'+CDSAdelantosNOMBRE.Value+
                                                             ' Importe: '+
                                                             FormatFloat('0.00',CDSAdelantosIMPORTE.AsFloat);
        DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='VALES';
        DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
        DMStoreProcedure.spGravarLogDBX.ExecProc;
        DMStoreProcedure.spGravarLogDBX.Close;
        }

        CDSAdelantos.Delete;
        CDSAdelantos.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
        CDSAdelantos.close;
        CDSAdelantos.Params.ParamByName('TipoCpbte').Clear;
        CDSAdelantos.Params.ParamByName('id').Clear;
        CDSAdelantos.Open;

        FrameMovValoresEgresos1.CDSCajaMov.Close;
        FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
        FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
        FrameMovValoresEgresos1.CDSCajaMov.Open;

        FrameMovValoresEgresos1.CDSChe3.Close;
        FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
        FrameMovValoresEgresos1.CDSChe3.Open;

        FrameMovValoresEgresos1.CDSMovEfectivo.Close;
        FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
        FrameMovValoresEgresos1.CDSMovEfectivo.Open;

        FrameMovValoresEgresos1.CDSCheques.Close;
        FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
        FrameMovValoresEgresos1.CDSCheques.Open;

        FrameMovValoresEgresos1.CDSTransBco.Close;
        FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
        FrameMovValoresEgresos1.CDSTransBco.Open;

        FrameMovValoresEgresos1.CDSDebitos.Close;
        FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
        FrameMovValoresEgresos1.CDSDebitos.Open;

        FrameMovValoresEgresos1.ceCaja.Text:='';
        FrameMovValoresEgresos1.edMuestraCaja.Text:='';
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transaccion no finalizada....!');
      end;
    end;
end;

procedure TFormAdelantosSueldo.BorrarLote(Lote: Integer);
var Q:TFDQuery;
begin
  if Lote>0 then
    begin
      Q:=TFDQuery.Create(nil);
      q.Connection:=DMMain_FD.fdcGestion;
      Q.SQL.Text:='delete from adelantos_sueldo a where a.lote=:lote ';
      Q.ParamByName('Lote').Value:=Lote;
      Q.ExecSQL;
      q.Close;
      FreeAndNil(q);
    end
  else
    ShowMessage('No hay lote para Borrar......');
end;

procedure TFormAdelantosSueldo.BorrarLote1Click(Sender: TObject);
begin
  inherited;
  BorrarLote(CDSAdelantosLOTE.Value);
  Recuperar.Execute;
end;

procedure TFormAdelantosSueldo.FrameMovValoresEgresos1CargaLoteChePropioExecute(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.CargaLoteChePropioExecute(Sender);

end;

procedure TFormAdelantosSueldo.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
  CDSAdelantosIMPORTE.AsFloat:=FrameMovValoresEgresos1.SumaValores;
end;

procedure TFormAdelantosSueldo.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  CDSAdelantosIMPORTE.AsFloat:=FrameMovValoresEgresos1.SumaValores;

end;

procedure TFormAdelantosSueldo.GravarNumeroOperacionExecute(Sender: TObject);
begin
 inherited;
 if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroOperacion)) then
        FormNumeroOperacion    :=TFormNumeroOperacion.Create(Self);
      FormNumeroOperacion.Id   :=CDSAdelantosID.Value;
      FormNumeroOperacion.Tipo :=CDSAdelantosTIPOCPBTE.Value;
      if (CDSAdelantosNUMERO_OPERACION.AsString='') or (length(CDSAdelantosNUMERO_OPERACION.AsString)<8) then
        FormNumeroOperacion.Anio:= Copy(DateToStr(CDSAdelantosFECHA.AsDateTime),7,4)
      else
        begin
          FormNumeroOperacion.Anio  := Copy(CDSAdelantosNUMERO_OPERACION.AsString,1,4);
          FormNumeroOperacion.Numero:= Copy(CDSAdelantosNUMERO_OPERACION.AsString,5,4);
        end;
      FormNumeroOperacion.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormAdelantosSueldo.CambiarClaseExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and Not(DSBase.dataSet.IsEmpty) then
    begin
      if not(Assigned(FormCambiarClaseCpbte)) then
        FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
      FormCambiarClaseCpbte.Tipo                     := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
      FormCambiarClaseCpbte.Clase                    := DSBase.DataSet.FieldByName('CLASECPBTE').Value;
      FormCambiarClaseCpbte.Letra                    := DSBase.DataSet.FieldByName('LETRA').Value;
      FormCambiarClaseCpbte.Sucursal                 := DSBase.DataSet.FieldByName('SUCURSAL').Value;
      FormCambiarClaseCpbte.NroCpbte                 := DSBase.DataSet.FieldByName('NROCPBTE').Value;
      FormCambiarClaseCpbte.IdComprobante            := DSBase.DataSet.FieldByName('ID').Value;
      FormCambiarClaseCpbte.ComproVenta              := 'C';
      FormCambiarClaseCpbte.dbcSucursalNew.KeyValue  := DSBase.DataSet.FieldByName('SUCURSAL').Value;
      FormCambiarClaseCpbte.dbcSucursalNew.Enabled   := False;

      FormCambiarClaseCpbte.ShowModal;

      DatoNew  :=IntToStr(FormCambiarClaseCpbte.IdComprobante);
      TipoCpbte:=FormCambiarClaseCpbte.Tipo;
      Recuperar.Execute;
    end;
end;

procedure TFormAdelantosSueldo.CambiarEmpleadoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambioVendedor)) then
    FormCambioVendedor:=TFormCambioVendedor.Create(Self);
  FormCambioVendedor.LbActual.Caption:='Empleado Actual';
  FormCambioVendedor.LbNuevo.Caption :='Empleado Nuevo';
  FormCambioVendedor.VendedorOld :=CDSAdelantosCODIGO.Value;
  FormCambioVendedor.VendedorNew :=CDSAdelantosCODIGO.Value;
  FormCambioVendedor.Motivo      :=CDSAdelantosID_MOTIVO.Value;

  FormCambioVendedor.CDSVendedorOld.Close;
  FormCambioVendedor.CDSVendedorNew.Close;

  FormCambioVendedor.CDSVendedorOld.CommandText:='select codigo,nombre from personal where Activo=''S'' ';
  FormCambioVendedor.CDSVendedorNew.CommandText:='select codigo,nombre from personal where Activo=''S'' ';

  FormCambioVendedor.CDSVendedorOld.Open;
  FormCambioVendedor.CDSVendedorNew.Open;

  FormCambioVendedor.ShowModal;
  if FormCambioVendedor.ModalResult=mrOk then
    begin
      CDSAdelantos.Edit;
      CDSAdelantosCODIGO.Value   :=FormCambioVendedor.VendedorNew;
      CDSAdelantosID_MOTIVO.Value:=FormCambioVendedor.Motivo;
      CDSAdelantos.Post;
      CDSAdelantos.ApplyUpdates(0);
      Recuperar.Execute;
    end;



end;

procedure TFormAdelantosSueldo.CambiarFechaExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormFecha)) Then
     FormFecha:=TFormFecha.Create(Self);
  formFecha.fecha := CDSAdelantosFECHA.AsDateTime;
  formFecha.ShowModal;
  if formFecha.ModalResult=mrok then
    begin
      CDSAdelantos.Edit;
      CDSAdelantosFECHA.AsDateTime:=FormFecha.fecha;
      CDSAdelantos.Post;
      CDSAdelantos.ApplyUpdates(0);
      Recuperar.Execute;
    end;

end;

procedure TFormAdelantosSueldo.CancelarExecute(Sender: TObject);
begin
  FrameMovValoresEgresos1.CDSCheques.Cancel;
  FrameMovValoresEgresos1.CDSMovEfectivo.Cancel;
  FrameMovValoresEgresos1.CDSChe3.Cancel;
  FrameMovValoresEgresos1.CDSCajaMov.Cancel;
  CDSAdelantos.close;
  CDSAdelantos.Params.ParamByName('TipoCpbte').Clear;
  CDSAdelantos.Params.ParamByName('id').Clear;
  CDSAdelantos.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.ceCaja.Text:='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

  inherited;
  pnCabecera.Enabled:=True;
  FrameMovValoresEgresos1.ceCaja.Text:='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
end;

procedure TFormAdelantosSueldo.ModificarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=False;
  WITH FrameMovValoresEgresos1 DO
  BEGIN
    TipoCpbte      := CDSAdelantosTIPOCPBTE.Value;
    TipoOperacion  := 'E';
    ClaseCpbte     := CDSAdelantosCLASECPBTE.Value;
    NroCpbte       := CDSAdelantosNROCPBTE.Value;
    FechaOperacion := CDSAdelantosFECHA.AsDateTime;
    IdCpbte        := CDSAdelantosID.Value;
    Origen         := '';
  END;
end;

procedure TFormAdelantosSueldo.DetalleCostosExecute(Sender: TObject);
begin
 inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if Not(Assigned(FormAsignacionCentroCosto)) then
        FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
      FormAsignacionCentroCosto.IdCpbte  :=CDSAdelantosID.Value;
      FormAsignacionCentroCosto.TipoCpbte:=CDSAdelantosTIPOCPBTE.Value;
      FormAsignacionCentroCosto.Tipo     :='E';
      FormAsignacionCentroCosto.Total    :=CDSAdelantosIMPORTE.AsFloat;

      FormAsignacionCentroCosto.LstConcepto.Append(CDSAdelantosCODIGO.AsString);
      FormAsignacionCentroCosto.LstDetalles.Append(CDSAdelantosNOMBRE.AsString);
      FormAsignacionCentroCosto.LstImportes.Append(CDSAdelantosIMPORTE.AsString);

      FormAsignacionCentroCosto.ShowModal;

      dbgCtroCosto.Visible:=False;
      DetalleCostos.ImageIndex:=11;
      if DMMain_FD.AplicPorCtroCosto(CDSAdelantosID.AsInteger,
                                     CDSAdelantosTIPOCPBTE.AsString,
                                     'E') then
        begin
          DetalleCostos.ImageIndex:=12;
          dbgCtroCosto.Visible:=True;
        end;
    end;
end;

procedure TFormAdelantosSueldo.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=DSBase.State=dsInsert;
  pnValores.Enabled :=DSBase.State in [dsInsert,dsEdit];
  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsCheques.Enabled       := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsDebito.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresEgresos1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  btImprimir.Enabled      :=(Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  CambiarFecha.Enabled    :=(Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse) and DMMain_FD.UsuarioAdministrador;
  CambiarEmpleado.Enabled :=(Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse) and DMMain_FD.UsuarioAdministrador;
  CambiarClase.Enabled    :=(Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse) and DMMain_FD.UsuarioAdministrador;
  if Buscar.Enabled then
    Buscar.Enabled:= DMMain_FD.VerCtaCtePersonal;
end;

procedure TFormAdelantosSueldo.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAdelantosSUCURSAL.Clear;
      CDSAdelantosMUESTRASUCURSAL.Clear;
      CDSAdelantosID_TIPOCOMPROBANTE.Clear;
      CDSAdelantosMUESTRACOMPROBANTE.Clear;
      CDSAdelantosLETRA.Clear;
      CDSAdelantosSUC.Clear;
      CDSAdelantosNUMERO.Clear;
    end;
end;

procedure TFormAdelantosSueldo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frAdelantos.DesignReport;
end;

procedure TFormAdelantosSueldo.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAdelantosID_TIPOCOMPROBANTE.Clear;
      CDSAdelantosMUESTRACOMPROBANTE.Clear;
      CDSAdelantosLETRA.Clear;
      CDSAdelantosSUC.Clear;
      CDSAdelantosNUMERO.Clear;
    end;

end;

procedure TFormAdelantosSueldo.RxDBCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAdelantosCODIGO.Clear;
      CDSAdelantosNOMBRE.Clear;
    end;
end;

procedure TFormAdelantosSueldo.CDSAdelantosID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
          RxCTipoCpbte.SetFocus;
        END;
      IF DSBase.State = dsInsert THEN
        UltimoComprobante;
    end;

end;

procedure TFormAdelantosSueldo.ImprimirExecute(Sender: TObject);
begin
  inherited;

  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSAdelantosID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSAdelantosSUCURSAL.Value;
  QComprob.Open;

  frAdelantos.PrintOptions.Printer:=PrNomCpbte;
  frAdelantos.SelectPrinter;

  frAdelantos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frAdelantos.Variables['Mascara']  :=''''+Mascara+'''';

  frAdelantos.PrepareReport;
  if FormAdelantosSueldo.Owner.Name='FormImpresionLoteVales' then
    begin
      frAdelantos.PrintOptions.ShowDialog:=False;
      frAdelantos.Print;
    end
  else
    frAdelantos.ShowReport;
  QComprob.Close;

end;

procedure TFormAdelantosSueldo.RecuperarExecute(Sender: TObject);
begin
  inherited;
    BEGIN
      sbEstado.SimpleText:='';
      CDSAdelantos.close;
      CDSAdelantos.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
      CDSAdelantos.Params.ParamByName('id').Value        := StrToInt(DatoNew);
      CDSAdelantos.Open;

      FrameMovValoresEgresos1.TipoOperacion:='E';

      FrameMovValoresEgresos1.CDSCajaMov.Close;
      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
      FrameMovValoresEgresos1.CDSCajaMov.Open;

      FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
      FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
      FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
      FrameMovValoresEgresos1.id_Cuenta_caja    :=FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
      FrameMovValoresEgresos1.FechaCaja         :=FrameMovValoresEgresos1.CDSCajaMovFECHA_CAJA.AsDateTime;


      FrameMovValoresEgresos1.CDSChe3.Close;
      FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);
      FrameMovValoresEgresos1.CDSChe3.Open;

      FrameMovValoresEgresos1.CDSMovEfectivo.Close;
      FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);
      FrameMovValoresEgresos1.CDSMovEfectivo.Open;

      FrameMovValoresEgresos1.CDSCheques.Close;
      FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := StrToInt(DatoNew);
      FrameMovValoresEgresos1.CDSCheques.Open;

      FrameMovValoresEgresos1.CDSTransBco.Close;
      FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Value    := StrToInt(DatoNew);
      FrameMovValoresEgresos1.CDSTransBco.Open;

      FrameMovValoresEgresos1.CDSDebitos.Close;
      FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Value     := StrToInt(DatoNew);
      FrameMovValoresEgresos1.CDSDebitos.Open;

      FrameMovValoresEgresos1.CalcularValores;

      pnPrincipal.Enabled:=True;
      pnValores.Enabled:=True;

      // VERIFICO SI LA CAJA ESTA CERRADA
       if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
        begin
         sbEstado.SimpleText:='La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
          btModificar.Enabled:=False;
          btBorrar.Enabled   :=False;
        end
      else
        begin
          btModificar.Enabled:=True;
          btBorrar.Enabled   :=True;
        end;
    END;

  dbgCtroCosto.Visible:=False;
  DetalleCostos.ImageIndex:=11;
  if DMMain_FD.AplicPorCtroCosto(CDSAdelantosID.AsInteger,
                                 CDSAdelantosTIPOCPBTE.AsString,
                                 'E') then
    begin
      DetalleCostos.ImageIndex:=12;
      dbgCtroCosto.Visible:=True;
    end;

  DatoNew:=''+DatoNew+'';
  FormAdelantosSueldo.Caption:='Adelantos de Sueldo -- '+CDSAdelantosFECHA_HORA.AsString+'//'+Copy(CDSAdelantosUSUARIO.Value,1,15);
end;

end.
