unit UAnulacionOPago;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, FMTBcd, frxClass, frxDBSet,   ComCtrls, StdCtrls,
  UMovValoresIngreso,   Mask, DBCtrls, DB, SqlExpr,
  JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls,Librerias,Milib, JvExMask, JvToolEdit, Provider, DBClient,
  JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormAnulacionOPago = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    GroupBox1: TGroupBox;
    dbeNombre: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeTotal: TDBEdit;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    BuscarProveedor: TAction;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frAnulacionOPago: TfrxReport;
    frDBDSAnulacion: TfrxDBDataset;
    frDBDSMovCaja: TfrxDBDataset;
    Imprimir: TAction;
    pcDetalle: TPageControl;
    tsVlores: TTabSheet;
    tsRetencionesGanacia: TTabSheet;
    tsRetencionesIIBB: TTabSheet;
    btBuscarRetGan: TBitBtn;
    BuscarRetGan: TAction;
    btCancelarRetGan: TBitBtn;
    btOkRetGan: TBitBtn;
    ConfirmaRetGan: TAction;
    CancelarRetGan: TAction;
    pnRetGanancia: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dbeConceptoRetG: TDBEdit;
    dbeTasaRetG: TDBEdit;
    dbeMinImpoRetG: TDBEdit;
    dbeImpRetG: TDBEdit;
    dbeNroRetG: TDBEdit;
    pnRetIngBru: TPanel;
    Label12: TLabel;
    dbeImpRet: TDBEdit;
    Label11: TLabel;
    dbeNroRet: TDBEdit;
    Label2: TLabel;
    dbeTipo: TDBEdit;
    Label8: TLabel;
    dbeClase: TDBEdit;
    Label9: TLabel;
    dbeNroOrig: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BuscarRetIIBB: TAction;
    ConfirmaRetIIBB: TAction;
    CancelaRetIIBB: TAction;
    Label10: TLabel;
    dbeFecha: TJvDBDateEdit;
    dbeFechaRetG: TJvDBDateEdit;
    DBDateEdit1: TJvDBDateEdit;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    QBuscaComp: TFDQuery;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSBuscaComprobTOMA_NRO_DE: TIntegerField;
    CDSBuscaComprobAFECTA_IVA: TStringField;
    CDSBuscaComprobAFECTA_CC: TStringField;
    CDSBuscaComprobDESGLOZA_IVA: TStringField;
    CDSBuscaComprobCOMPRA_VENTA: TStringField;
    CDSBuscaComprobCOPIAS: TIntegerField;
    CDSBuscaComprobREPORTE: TStringField;
    CDSBuscaComprobIMPRIME: TStringField;
    CDSBuscaComprobFISCAL: TStringField;
    CDSBuscaComprobNOMBREIMPRESORA: TStringField;
    CDSBuscaComprobPENDIENTEIMPRESION: TStringField;
    CDSBuscaComprobLINEAS_DETALLE: TSmallintField;
    CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    CDSBuscaComprobDEFECTO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure pcDetalleEnter(Sender: TObject);
    procedure BuscarRetGanExecute(Sender: TObject);
    procedure ConfirmaRetGanExecute(Sender: TObject);
    procedure CancelarRetGanExecute(Sender: TObject);
    procedure BuscarRetIIBBExecute(Sender: TObject);
    procedure ConfirmaRetIIBBExecute(Sender: TObject);
    procedure CancelaRetIIBBExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnulacionOPago: TFormAnulacionOPago;

PROCEDURE UltimoComprobante;

implementation

uses DMAnulacionOPagos, UBuscadorCpbte, UBuscadorRetGanancia,
     UbuscadorRetIIBB, UDMain_FD, DMStoreProcedureForm, UBuscadorProveedor;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosAnulacionOPago,DMStoreProcedure, FormAnulacionOPago DO
    BEGIN
      IF (CDSAnulacionOPagoLETRA.AsString <> '') AND (CDSAnulacionOPagoCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSAnulacionOPagoLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSAnulacionOPagoSUCURSAL.AsInteger;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSAnulacionOPagoCLASECPBTE.AsString;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSAnulacionOPagoTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAnulacionOPagoSUCSetText(CDSAnulacionOPagoSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAnulacionOPagoNUMEROSetText(CDSAnulacionOPAgoNUMERO, IntToStr(Numero));
          CDSAnulacionOPAGOTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSAnulacionOPAGOCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAnulacionOPagoNROCPBTE.AsString := CDSAnulacionOpagoLETRA.AsString +
                                            CDSAnulacionOpagoSUC.AsString +
                                            CDSAnulacionOPagoNUMERO.AsString;
    END;
END;


procedure TFormAnulacionOPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DatosAnulacionOPago.CDSAnulacionOPago.Close;
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Close;
  DatosAnulacionOPago.CDSAnulacionRetIB.Close;
  Action:=caFree;
end;

procedure TFormAnulacionOPago.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  pcDetalle.ActivePageIndex:= 0;
  sbEstado.SimplePanel     := True;
  IF NOT (Assigned(DatosAnulacionOPago)) THEN
    DatosAnulacionOPago := TDatosAnulacionOPago.Create(Application);
  DSBase.DataSet:=DatosAnulacionOPago.CDSAnulacionOPago;
  with DatosAnulacionOPago do
    begin
      AddClientDataSet(CDSAnulacionOPago,DSPAnulacionOPago);
      AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);

      AddClientDataSet(CDSAnulacionRetGanancia,DSPAnulacionRetGanancia);
      AddClientDataSet(CDSAnulacionRetIB,DSPAnulacionRetIB);

      AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);
      AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
      AddClientDataSet(FrameMovValoresIngreso1.CDSMovTCredito,FrameMovValoresIngreso1.DSPMovTCredito);
      AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);
      AddClientDataSet(FrameMovValoresIngreso1.CDSAnulacionChe,FrameMovValoresIngreso1.DSPAnulacionChe);

      CDSAnulacionOPago.Open;
      CDSAnulacionRetGanancia.Open;
      CDSAnulacionRetIB.Open;
      CDSEmpresa.Open;
      CDSAnulacionOPago.EmptyDataSet;
      FrameMovValoresIngreso1.CDSChe3.Open;
      FrameMovValoresIngreso1.CDSMovEfectivo.Open;
      FrameMovValoresIngreso1.CDSMovTCredito.Open;
      FrameMovValoresIngreso1.CDSCajaMov.Open;
      FrameMovValoresIngreso1.CDSTransBco.Open;
      FrameMovValoresIngreso1.CDSAnulacionChe.Open;
      FrameMovValoresIngreso1.QCajaCab.Open;

      FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

      FrameMovValoresIngreso1.pcValores.ActivePageIndex:=0;
      FrameMovValoresIngreso1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;

      AplicaMascaraNumerica;

      Tabla:='ANULACION_OPAGO';
      Campo:='id_anulacion';
    end;
end;

procedure TFormAnulacionOPago.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnulacionOPago:=nil;
end;

procedure TFormAnulacionOPago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Shift=[ssCtrl]) and (Key=VK_DELETE) and (DMMain_FD.UsuarioAdministrador=True) Then
    begin
      DatosAnulacionOPago.QCaja.Close;
      DatosAnulacionOPago.QCaja.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
      DatosAnulacionOPago.QCaja.Open;
      if DatosAnulacionOPago.QCajaESTADO.Value=1 Then
        begin
          ShowMessage('La caja de está cerrada, por lo que no se puede modificar ni borrar');
          Cancelar.Execute;
        end
      else
        Borrar.Execute
    end;
  DatosAnulacionOPago.QCaja.Close;

end;

procedure TFormAnulacionOPago.AgregarExecute(Sender: TObject);
begin
  DatosAnulacionOPago.CDSAnulacionOPago.close;
  DatosAnulacionOPago.CDSAnulacionOPago.Params.ParamByName('id').Clear;
  DatosAnulacionOPago.CDSAnulacionOPago.Open;

  DatosAnulacionOPago.CDSAnulacionRetGanancia.close;
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Params.ParamByName('id').Clear;
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Open;

  DatosAnulacionOPago.CDSAnulacionRetIB.close;
  DatosAnulacionOPago.CDSAnulacionRetIB.Params.ParamByName('id').Clear;
  DatosAnulacionOPago.CDSAnulacionRetIB.Open;

  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;


  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSAnulacionChe.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSAnulacionChe.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CDSDebitos.Close;
  FrameMovValoresIngreso1.CDSDebitos.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSDebitos.Open;

  inherited;
 //  if Not(DatosOPago.wwCDSOPago.Eof) Then
   // CancelarCambios;
  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  FrameMovValoresIngreso1.SumaValores       :=0;
  pnCabecera.Enabled                        := True;
  FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;
  dbeFecha.SetFocus;
end;

procedure TFormAnulacionOPago.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      DatosAnulacionOPago.CDSAnulacionOPagoCODIGOSetText(DatosAnulacionOPago.CDSAnulacionOPagoCODIGO, FormBuscadorProveedor.Codigo);
    END;
end;

procedure TFormAnulacionOPago.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosAnulacionOPago.CDSAnulacionOPagoCODIGO.Clear;
      DatosAnulacionOPago.CDSAnulacionOPagoRAZONSOCIAL.Clear;
    end;
end;

procedure TFormAnulacionOPago.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frAnulacionOPago.DesignReport();
end;

procedure TFormAnulacionOPago.FormShow(Sender: TObject);
begin
  inherited;
  //pnValores.Enabled:=False;
  btNuevo.SetFocus;
end;

procedure TFormAnulacionOPago.CancelarExecute(Sender: TObject);
begin
  DatosAnulacionOPago.CDSAnulacionOPago.close;
  DatosAnulacionOPago.CDSAnulacionOPago.Params.ParamByName('id').Clear;
  DatosAnulacionOPago.CDSAnulacionOPago.Open;


  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;


  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSAnulacionChe.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSAnulacionChe.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CDSDebitos.Close;
  FrameMovValoresIngreso1.CDSDebitos.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSDebitos.Open;

  inherited;
  pnCabecera.Enabled:=True;
  FrameMovValoresIngreso1.ceCaja.Text        := '';
  FrameMovValoresIngreso1.edMuestraCaja.Text := '';
  FrameMovValoresIngreso1.SumaValores        := 0;
end;

procedure TFormAnulacionOPago.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 23;
  FormBuscaCpbte.TipoCpbte1:='XP';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormAnulacionOPago.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosAnulacionOPago.CDSAnulacionOPago.close;
  DatosAnulacionOPago.CDSAnulacionOPago.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosAnulacionOPago.CDSAnulacionOPago.Open;

  DatosAnulacionOPago.CDSAnulacionRetGanancia.close;
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Open;

  DatosAnulacionOPago.CDSAnulacionRetIB.close;
  DatosAnulacionOPago.CDSAnulacionRetIB.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosAnulacionOPago.CDSAnulacionRetIB.Open;


  FrameMovValoresIngreso1.TipoOperacion := 'I';

  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSAnulacionChe.Close;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := DatoNew;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value        :=  StrToInt(DatoNew);// FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);// FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSAnulacionChe.Params.ParamByName('id').Value := StrToInt(DatoNew);// FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSAnulacionChe.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value     := StrToInt(DatoNew);// FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CDSDebitos.Close;
  FrameMovValoresIngreso1.CDSDebitos.Params.ParamByName('id').Value     := StrToInt(DatoNew);// FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSDebitos.Open;


  FrameMovValoresIngreso1.CalcularValores;

  IF DatosAnulacionOPago.CDSAnulacionOPago.State <> dsBrowse THEN
    DatosAnulacionOPago.CDSAnulacionOPago.Cancel;

  pnPrincipal.Enabled:=true;

  // VERIFICO SI LA CAJA ESTA CERRADA
  DatosAnulacionOPago.QCaja.Close;
  DatosAnulacionOPago.QCaja.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  DatosAnulacionOPago.QCaja.Open;
  sbEstado.SimpleText:='';

  sbEstado.SimplePanel := True;
  if DatosAnulacionOPago.QCajaESTADO.Value=1 Then
    begin
      sbEstado.SimpleText:='La caja de está cerrada, por lo que no se puede modificar ni borrar';
      btModificar.Enabled:=False;
      btBorrar.Enabled   :=False;
    end
  else
    begin
      btModificar.Enabled:=True;
      btBorrar.Enabled   :=True;
    end;
  DatosAnulacionOPago.QCaja.Close;

  DatoNew:=''+DatoNew+'';

end;

procedure TFormAnulacionOPago.ConfirmaExecute(Sender: TObject);
var TotalIngresos:Real;
SinDebitar:Boolean;
begin
  if DatosAnulacionOPago.CDSAnulacionRetGanancia.State<>dsBrowse Then
    DatosAnulacionOPago.CDSAnulacionRetGanancia.Post;
  if DatosAnulacionOPago.CDSAnulacionRetIB.State<>dsBrowse Then
    DatosAnulacionOPago.CDSAnulacionRetIB.Post;
  DatoNew  :=IntToStr(DatosAnulacionOPago.CDSAnulacionOPagoID_ANULACION.Value);
  TipoCpbte:=DatosAnulacionOPago.CDSAnulacionOPagoTIPOCPBTE.Value;
  TotalIngresos := Moneda3D(' ',DatosAnulacionOPago.MascaraGral,FrameMovValoresIngreso1.SumaValores) +
                   Moneda3D(' ',DatosAnulacionOPago.MascaraGral,DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.AsFloat) +
                   Moneda3D(' ',DatosAnulacionOPago.MascaraGral,DatosAnulacionOPago.CDSAnulacionRetIBTOTAL.AsFloat);

    IF Moneda3D(' ',DatosAnulacionOPago.MascaraGral,TotalIngresos) <> Moneda3D(' ',DatosAnulacionOPago.MascaraGral,DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat) THEN
      RAISE Exception.Create('Hay diferencias entre lo percibido' + #13 +
                  'Ingresos por...:'+FloatToStr(Moneda3D(' ',DatosAnulacionOPago.MascaraGral, TotalIngresos))+#13+
                  'Importe Cpbt...:'+FloatToStr(Moneda3D(' ',DatosAnulacionOPago.MascaraGral, DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat))+#13+
                  'Diferencia ....:'+FloatToStr(Moneda3D(' ',DatosAnulacionOPago.MascaraGral, DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat)-Moneda3D(' ',DatosAnulacionOPago.MascaraGral, TotalIngresos))) ;

  // verifico si los cheques si los hay sean debitados y luego cancelados

  SinDebitar:=False;

  if (FrameMovValoresIngreso1.CDSAnulacionChe.RecordCount=1 ) then
    begin
      DatosAnulacionOPago.QCheDebitado.Close;
      DatosAnulacionOPago.QCheDebitado.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSAnulacionCheID_CHE_ANULADO.Value;
      DatosAnulacionOPago.QCheDebitado.Open;
      if DatosAnulacionOPago.QCheDebitadoID.AsString='' then
        SinDebitar:=True;
    end
  else
    begin
      FrameMovValoresIngreso1.CDSAnulacionChe.First;

      while ( FrameMovValoresIngreso1.CDSAnulacionChe.Eof )and (FrameMovValoresIngreso1.CDSAnulacionChe.RecordCount>1 ) do
        begin
          DatosAnulacionOPago.QCheDebitado.Close;
          DatosAnulacionOPago.QCheDebitado.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSAnulacionCheID_CHE_ANULADO.Value;
          DatosAnulacionOPago.QCheDebitado.Open;
          if DatosAnulacionOPago.QCheDebitadoID.AsString='' then
            SinDebitar:=True;
           FrameMovValoresIngreso1.CDSAnulacionChe.Next;
        end;
    end;
  if (SinDebitar) then
    raise Exception.Create('Los cheques que hace referencia no han sido debitados. Hagalo primero y luego continue....');
  inherited;
  Recuperar.Execute;
end;

procedure TFormAnulacionOPago.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat:=FrameMovValoresIngreso1.SumaValores+
                                                    DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.AsFloat+
                                                    DatosAnulacionOPago.CDSAnulacionRetIBTOTAL.AsFloat;

end;

procedure TFormAnulacionOPago.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
  DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat:=FrameMovValoresIngreso1.SumaValores+
                                                    DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.AsFloat+
                                                    DatosAnulacionOPago.CDSAnulacionRetIBTOTAL.AsFloat;

end;

procedure TFormAnulacionOPago.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled        := DSBase.State IN [dsInsert];
  Modificar.Enabled         := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  Borrar.Enabled            := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  FrameMovValoresIngreso1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
//  FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTCredito.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert];

  BuscarRetGan.Enabled := DSBase.State = dsInsert;
  BuscarRetIIBB.Enabled:= DSBase.State = dsInsert;
end;

procedure TFormAnulacionOPago.ImprimirExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
  DMMain_FD.QOpciones.Open;

  DatosAnulacionOPago.QComprob.Close;
  DatosAnulacionOPago.QComprob.ParamByName('id').Value :=DatosAnulacionOPago.CDSAnulacionOPagoID_TIPOCOMPROBANTE.Value;
  DatosAnulacionOPago.QComprob.ParamByName('suc').Value:=DatosAnulacionOPago.CDSAnulacionOPagoSUCURSAL.Value;
  DatosAnulacionOPago.QComprob.Open;

  frAnulacionOPago.PrintOptions.Printer:=PrNomCpbte;
  frAnulacionOPago.SelectPrinter;
  frAnulacionOPago.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\'+DatosAnulacionOPago.QComprobREPORTE.AsString);
  frAnulacionOPago.Variables['Mascara']  :=''''+DatosAnulacionOPago.MascaraGral+'''';
  frAnulacionOPago.Variables['importeletra']:=''''+numero2letras(DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat)+'''';
  frAnulacionOPago.PrintOptions.Copies :=DatosAnulacionOPago.QComprobCOPIAS.Value;

  DatosAnulacionOPago.QComprob.Close;
  DMMain_FD.QOpciones.Close;
  frAnulacionOPago.PrepareReport;
  frAnulacionOPago.ShowReport;

end;

procedure TFormAnulacionOPago.pcDetalleEnter(Sender: TObject);
begin
  inherited;
 IF DatosAnulacionOPago.CDSAnulacionOPago.State=dsInsert THEN
    IF (dbeFecha.Text<>'') and
       (dbeSuc.Text<>'') and (dbeLetra.Text<>'') and
       (dbeNumero.Text<>'') and
       (RxDBECodigo.Text<>'') and (DatosAnulacionOPago.CDSAnulacionOPagoMUESTRACOMPROBANTE.AsString<>'')
    THEN
      begin
        pcDetalle.Enabled:=True;
       // pnCabecera.Enabled:=True;
        WITH FrameMovValoresIngreso1 DO
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
            TipoCpbte      := DatosAnulacionOpago.CDSAnulacionOPagoTIPOCPBTE.Value;
            TipoOperacion  := 'I';
            ClaseCpbte     := DatosAnulacionOPago.CDSAnulacionOPagoCLASECPBTE.Value;
            NroCpbte       := DatosAnulacionOPago.CDSAnulacionOPagoNROCPBTE.Value;
            FechaOperacion := DatosAnulacionOPago.CDSAnulacionOPagoFECHA.AsDateTime;
            IdCpbte        := DatosAnulacionOPago.CDSAnulacionOPagoID_ANULACION.Value;
            Origen         := DatosAnulacionOPago.CDSAnulacionOPagoRAZONSOCIAL.Value;
          END;
        pnCabecera.Enabled:=False;
      end
    else
      begin
        ShowMessage('Faltan datos en el encabezado...');
       //nValores.Enabled :=False;
        pnCabecera.Enabled:= True;
        dbeFecha.SetFocus;
      end;
end;

procedure TFormAnulacionOPago.BuscarRetGanExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadoRetGanancia)) Then
    FormBuscadoRetGanancia:=TFormBuscadoRetGanancia.Create(Application);
  FormBuscadoRetGanancia.Codigo:=DatosAnulacionOPago.CDSAnulacionOPagoCODIGO.Value;
  FormBuscadoRetGanancia.ShowModal;
  if FormBuscadoRetGanancia.Nro_id<>-1 Then
    begin
      DatosAnulacionOPago.QRetGanancia.Close;
      DatosAnulacionOPago.QRetGanancia.ParamByName('id').Value:=FormBuscadoRetGanancia.Nro_id;
      DatosAnulacionOPago.QRetGanancia.Open;
      if DatosAnulacionOPago.CDSAnulacionRetGanancia.IsEmpty Then
        DatosAnulacionOPago.CDSAnulacionRetGanancia.Insert
      else
        DatosAnulacionOPago.CDSAnulacionRetGanancia.Edit;
      DatosAnulacionOPago.CDSAnulacionRetGananciaCODIGO_PROVEEDOR.Value:=DatosAnulacionOPago.QRetGananciaCODIGO_PROVEEDOR.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaCODIGO_REGIMEN.Value  :=DatosAnulacionOPago.QRetGananciaCODIGO_REGIMEN.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaCONCEPTO.Value        :=DatosAnulacionOPago.QRetGananciaCONCEPTO.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaTASA.Value            :=DatosAnulacionOPago.QRetGananciaTASA.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaMINIMO_NO_IMPONIBLE.Value  :=DatosAnulacionOPago.QRetGananciaMINIMO_NO_IMPONIBLE.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaPAGOS_ACUMULADOS.Value     :=DatosAnulacionOPago.QRetGananciaPAGOS_ACUMULADOS.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.Value    :=DatosAnulacionOPago.QRetGananciaIMPUESTO_RETENIDO.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaOBSERVACIONES.Value        :=DatosAnulacionOPago.QRetGananciaOBSERVACIONES.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaVALOR_MINIMO_IMPUESTO.Value:=DatosAnulacionOPago.QRetGananciaVALOR_MINIMO_IMPUESTO.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaNUMERO_RETENCION.Value     :=DatosAnulacionOPago.QRetGananciaNUMERO_RETENCION.Value;
      DatosAnulacionOPago.CDSAnulacionRetGananciaID_RETENCION.Value         :=DatosAnulacionOPago.QRetGananciaID.Value;

     end;
end;

procedure TFormAnulacionOPago.ConfirmaRetGanExecute(Sender: TObject);
begin
  inherited;
  DatosAnulacionOPago.DSAnulacionRetGanancia.DataSet.Post;
  DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat:=FrameMovValoresIngreso1.SumaValores+DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.AsFloat+
                                                      DatosAnulacionOPago.CDSAnulacionRetIBTOTAL.AsFloat ;

end;

procedure TFormAnulacionOPago.CancelarRetGanExecute(Sender: TObject);
begin
  inherited;
  DatosAnulacionOPago.DSAnulacionRetGanancia.DataSet.Cancel;
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Close;
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Params.ParamByName('id').clear;
  DatosAnulacionOPago.CDSAnulacionRetGanancia.Open;
  DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat:=FrameMovValoresIngreso1.SumaValores+DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.AsFloat;

end;

procedure TFormAnulacionOPago.BuscarRetIIBBExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorRetIIBB)) Then
    FormBuscadorRetIIBB:=TFormBuscadorRetIIBB.Create(Application);
  FormBuscadorRetIIBB.Codigo:=DatosAnulacionOPago.CDSAnulacionOPagoCODIGO.Value;
  FormBuscadorRetIIBB.ShowModal;
  if FormBuscadorRetIIBB.Nro_id<>-1 Then
    begin
      DatosAnulacionOPago.QRetIIBB.Close;
      DatosAnulacionOPago.QRetIIBB.ParamByName('id').Value:=FormBuscadorRetIIBB.Nro_id;
      DatosAnulacionOPago.QRetIIBB.Open;
      if DatosAnulacionOPago.CDSAnulacionRetIB.IsEmpty Then
        DatosAnulacionOPago.CDSAnulacionRetIB.Insert
      else
        DatosAnulacionOPago.CDSAnulacionRetIB.Edit;
      DatosAnulacionOPago.CDSAnulacionRetIBTASA_RETENCION.Value     :=DatosAnulacionOPago.QRetIIBBTASA_RETENCION.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBID_CPBTE_ORIGEN.Value    :=DatosAnulacionOPago.QRetIIBBID_CPBTE_ORIGEN.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBTIPOCPBTE_ORIGEN.Value   :=DatosAnulacionOPago.QRetIIBBTIPOCPBTE_ORIGEN.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBCLASECPBTE_ORIGEN.Value  :=DatosAnulacionOPago.QRetIIBBCLASECPBTE_ORIGEN.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBNROCPBTE_ORIGEN.Value    :=DatosAnulacionOPago.QRetIIBBNROCPBTE_ORIGEN.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBNROCPBTE_RET.Value       :=DatosAnulacionOPago.QRetIIBBNROCPBTE.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBTOTAL.Value              :=DatosAnulacionOPago.QRetIIBBTOTAL.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBNETO_GRAVADO.Value       :=DatosAnulacionOPago.QRetIIBBNETO_GRAVADO.Value;
      DatosAnulacionOPago.CDSAnulacionRetIBID_RETENCION_ING_BRU.Value :=DatosAnulacionOPago.QRetIIBBID.Value;

    end;

end;

procedure TFormAnulacionOPago.ConfirmaRetIIBBExecute(Sender: TObject);
begin
  inherited;
  DatosAnulacionOPago.DSAnulacionRetIB.DataSet.Post;
  DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat:=FrameMovValoresIngreso1.SumaValores+DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.AsFloat+
                                                      DatosAnulacionOPago.CDSAnulacionRetIBTOTAL.AsFloat ;

end;

procedure TFormAnulacionOPago.CancelaRetIIBBExecute(Sender: TObject);
begin
  inherited;
  DatosAnulacionOPago.DSAnulacionRetIB.DataSet.Cancel;
  DatosAnulacionOPago.CDSAnulacionRetIB.Close;
  DatosAnulacionOPago.CDSAnulacionRetIB.Params.ParamByName('id').clear;
  DatosAnulacionOPago.CDSAnulacionRetIB.Open;
  DatosAnulacionOPago.CDSAnulacionOPagoTOTAL.AsFloat:=FrameMovValoresIngreso1.SumaValores+DatosAnulacionOPago.CDSAnulacionRetGananciaIMPUESTO_RETENIDO.AsFloat+
                                                      DatosAnulacionOPago.CDSAnulacionRetIBTOTAL.AsFloat ;

end;

end.