unit UAnulacionRecibos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, UMovValoresEgresos, StdCtrls, Mask,
    ActnList, ComCtrls, Buttons, ToolWin, ExtCtrls, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, Provider, DBClient, JvExMask, JvToolEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid,Variants, JvBaseEdits, Data.DB, Vcl.DBCtrls,
  JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormAnulacionRecibos = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    GroupBox1: TGroupBox;
    dbeNombre: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeTotal: TDBEdit;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
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
    dbeFecha: TJvDBDateEdit;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    pcDetalle: TPageControl;
    tsValores: TTabSheet;
    tsRetenciones: TTabSheet;
    pnValores: TPanel;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    dbgRetenciones: TJvDBGrid;
    BuscarRetenciones: TAction;
    edTotaRetenciones: TJvCalcEdit;
    procedure pnValoresEnter(Sender: TObject);
    procedure RxDBECodigoButtonClick(Sender: TObject);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure BuscarRetencionesExecute(Sender: TObject);
    procedure dbgRetencionesEditButtonClick(Sender: TObject);
    procedure dbgRetencionesColEnter(Sender: TObject);
    procedure tsRetencionesEnter(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnulacionRecibos: TFormAnulacionRecibos;

PROCEDURE UltimoComprobante;

implementation

{$R *.DFM}
uses DMAnulacionRecibos,UBuscadorClientes, UCarteraCheques,
     UBuscadorCpbte, UDMain_FD, DMStoreProcedureForm, UBuscadorRetenciones;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosAnulacionRecibo,DMStoreProcedure, FormAnulacionRecibos  DO
    BEGIN
      IF (CDSAnulacionReciboLETRA.AsString <> '') AND (CDSAnulacionReciboCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSAnulacionReciboLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSAnulacionReciboSUCURSAL.AsInteger;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSAnulacionReciboCLASECPBTE.AsString;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSAnulacionReciboTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAnulacionReciboSUCSetText(CDSAnulacionReciboSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAnulacionReciboNUMEROSetText(CDSAnulacionReciboNUMERO, IntToStr(Numero));
          CDSAnulacionReciboTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSAnulacionReciboCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAnulacionReciboNROCPBTE.AsString := CDSAnulacionReciboLETRA.AsString +
                                            CDSAnulacionReciboSUC.AsString +
                                            CDSAnulacionReciboNUMERO.AsString;
    END;
END;



procedure TFormAnulacionRecibos.pnValoresEnter(Sender: TObject);
begin
  inherited;
  IF DatosAnulacionRecibo.CDSAnulacionRecibo.State=dsInsert THEN
    IF (dbeTotal.Text<>'') and
       //(Moneda3D(' ',FrameMovValoresEgresos1.MascaraImportes,StrToFloat(dbeTotal.Text))>0) and
       (dbeFecha.Text<>'') and
       (dbeSuc.Text<>'') and (dbeLetra.Text<>'') and (dbeSuc.Text<>'') and
       (dbeNumero.Text<>'') and (RxDBECodigo.Text<>'') and (DatosAnulacionRecibo.CDSAnulacionReciboMUESTRACOMPROBANTE.AsString<>'')
    THEN
      begin
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
          TipoCpbte      := DatosAnulacionRecibo.CDSAnulacionReciboTIPOCPBTE.Value;
          TipoOperacion  := 'E';
          ClaseCpbte     := DatosAnulacionRecibo.CDSAnulacionReciboCLASECPBTE.Value;
          NroCpbte       := DatosAnulacionRecibo.CDSAnulacionReciboNROCPBTE.Value;
          FechaOperacion := DatosAnulacionRecibo.CDSAnulacionReciboFECHA.AsDateTime;
          IdCpbte        := DatosAnulacionRecibo.CDSAnulacionReciboID_ANULACION.Value;
          Origen         := DatosAnulacionRecibo.CDSAnulacionReciboRAZONSOCIAL.Value;
        END;
        pnValores.Enabled:=True;
       // pnCabecera.Enabled:=True;
      end
    else
      begin
        ShowMessage('Faltan datos en el encabezado...');
        pnCabecera.Enabled:= True;
        dbeFecha.SetFocus;
      end;

end;

procedure TFormAnulacionRecibos.RxDBECodigoButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    begin
      DatosAnulacionRecibo.CDSAnulacionReciboTOTAL.AsFloat:=0;
      edTotaRetenciones.Value := 0;

      DatosAnulacionRecibo.CDSAnulacionRet.close;
      DatosAnulacionRecibo.CDSAnulacionRet.Params.ParamByName('id').Clear;
      DatosAnulacionRecibo.CDSAnulacionRet.Open;

      FrameMovValoresEgresos1.CDSCajaMov.Close;
      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
      FrameMovValoresEgresos1.CDSCajaMov.Open;

      FrameMovValoresEgresos1.ceCaja.Text       :='';
      FrameMovValoresEgresos1.edMuestraCaja.Text:='';
      FrameMovValoresEgresos1.lbTotalValores.Caption :='0.000';

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

      DatosAnulacionRecibo.CDSAnulacionReciboCODIGOSetText(DatosAnulacionRecibo.CDSAnulacionReciboCODIGO,FormBuscadorClientes.Codigo);
    end;

end;

procedure TFormAnulacionRecibos.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosAnulacionRecibo.CDSAnulacionReciboCODIGO.Clear;
      DatosAnulacionRecibo.CDSAnulacionReciboNOMBRE.Clear;
      DatosAnulacionRecibo.CDSAnulacionRet.close;
      DatosAnulacionRecibo.CDSAnulacionRet.Params.ParamByName('id').Clear;
      DatosAnulacionRecibo.CDSAnulacionRet.Open;

      FrameMovValoresEgresos1.CDSCajaMov.Close;
      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
      FrameMovValoresEgresos1.CDSCajaMov.Open;

      FrameMovValoresEgresos1.ceCaja.Text       :='';
      FrameMovValoresEgresos1.edMuestraCaja.Text:='';
      FrameMovValoresEgresos1.lbTotalValores.Caption :='0.000';

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

    end;

end;

procedure TFormAnulacionRecibos.tsRetencionesEnter(Sender: TObject);
begin
  inherited;
  dbgRetenciones.SelectedIndex:=0;
end;

procedure TFormAnulacionRecibos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  sbEstado.SimplePanel := True;
  FrameMovValoresEgresos1.tsDebito.Visible:=False;
  FrameMovValoresEgresos1.tsCheques.Visible:=False;
  IF NOT (Assigned(DatosAnulacionRecibo)) THEN
    DatosAnulacionRecibo := TDatosAnulacionRecibo.Create(Application);
  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);
  DSBase.DataSet:=DatosAnulacionRecibo.CDSAnulacionRecibo;
  WITH DatosAnulacionRecibo DO
    BEGIN
      AddClientDataSet(CDSAnulacionRecibo, DSPAnulacionRecibo);
      AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);

      AddClientDataSet(CDSAnulacionRet, DSPAnulacionRet);
      AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
      AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
//      AddClientDataSet(FrameMovValoresEgresos1.wwCDSCheques,FrameMovValoresEgresos1.DSPCheques);
      AddClientDataSet(FrameMovValoresEgresos1.CDSTransBco,FrameMovValoresEgresos1.DSPTransBco);
      AddClientDataSet(FrameMovValoresEgresos1.CDSDebitos,FrameMovValoresEgresos1.DSPDebitos);
      AddClientDataSet(FrameMovValoresEgresos1.CDSChe3,FrameMovValoresEgresos1.DSPChe3);
      FrameMovValoresEgresos1.pcValores.ActivePageIndex:=0;

      CDSAnulacionRecibo.Open;
      CDSAnulacionRet.Open;

      CDSEmpresa.Open;
      FrameMovValoresEgresos1.CDSChe3.Open;
      FrameMovValoresEgresos1.CDSMovEfectivo.Open;
//      FrameMovValoresEgresos1.wwCDSCheques.Open;
      FrameMovValoresEgresos1.CDSCajaMov.Open;
      FrameMovValoresEgresos1.CDSTransBco.OPen;
      FrameMovValoresEgresos1.CDSDebitos.OPen;

      FrameMovValoresEgresos1.CDSBuscaCaja.Open;

      CDSAnulacionRecibo.EmptyDataSet;
      FrameMovValoresEgresos1.CDSChe3.EmptyDataSet;
      FrameMovValoresEgresos1.CDSMovEfectivo.EmptyDataSet;
//      FrameMovValoresEgresos1.wwCDSCheques.EmptyDataSet;
      FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
      FrameMovValoresEgresos1.CDSTransBco.EmptyDataSet;

      FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

      FrameMovValoresEgresos1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;
      DatosAnulacionRecibo.AplicaMascaraNumerica;
      Tabla:='ANULACION_RECIBO';
      Campo:='id_anulacion';
    END;
  pcDetalle.ActivePageIndex:=0;
end;

procedure TFormAnulacionRecibos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnulacionRecibos:=nil;
end;

procedure TFormAnulacionRecibos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DatosAnulacionRecibo.CDSAnulacionRecibo.Close;
  DatosAnulacionRecibo.CDSAnulacionRet.Close;
  Action:=caFree;
end;

procedure TFormAnulacionRecibos.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormAnulacionRecibos.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
  DatosAnulacionRecibo.CDSAnulacionReciboTOTAL.AsFloat:=FrameMovValoresEgresos1.SumaValores;
end;

procedure TFormAnulacionRecibos.FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  DatosAnulacionRecibo.CDSAnulacionReciboTOTAL.AsFloat:=FrameMovValoresEgresos1.SumaValores
end;

procedure TFormAnulacionRecibos.AgregarExecute(Sender: TObject);
begin
  DatosAnulacionRecibo.CDSAnulacionRecibo.close;
  DatosAnulacionRecibo.CDSAnulacionRecibo.Params.ParamByName('id').Clear;
  DatosAnulacionRecibo.CDSAnulacionRecibo.Open;

  DatosAnulacionRecibo.CDSAnulacionRet.close;
  DatosAnulacionRecibo.CDSAnulacionRet.Params.ParamByName('id').Clear;
  DatosAnulacionRecibo.CDSAnulacionRet.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;

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

  inherited;
 //  if Not(DatosOPago.wwCDSOPago.Eof) Then
   // CancelarCambios;
  FrameMovValoresEgresos1.SumaValores       :=0;
  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  pnCabecera.Enabled := True;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  pcDetalle.ActivePageIndex:=0;
  dbeFecha.SetFocus;

end;

procedure TFormAnulacionRecibos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew   :=IntToStr(DatosAnulacionRecibo.CDSAnulacionReciboID_ANULACION.Value);
  TipoCpbte :=DatosAnulacionRecibo.CDSAnulacionReciboTIPOCPBTE.Value;
   inherited;
  Recuperar.Execute;
end;

procedure TFormAnulacionRecibos.dbgRetencionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgRetenciones.SelectedIndex>0 then
    dbgRetenciones.SelectedIndex:=0;
end;

procedure TFormAnulacionRecibos.dbgRetencionesEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarRetenciones.Execute;
end;

procedure TFormAnulacionRecibos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosAnulacionRecibo.CDSAnulacionRecibo.close;
  DatosAnulacionRecibo.CDSAnulacionRecibo.Params.ParamByName('id').Value := DatoNew;
  DatosAnulacionRecibo.CDSAnulacionRecibo.Open;

  DatosAnulacionRecibo.CDSAnulacionRet.close;
  DatosAnulacionRecibo.CDSAnulacionRet.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  DatosAnulacionRecibo.CDSAnulacionRet.Open;


  FrameMovValoresEgresos1.TipoOperacion := 'E';

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := DatoNew;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;

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

  IF DatosAnulacionRecibo.CDSAnulacionRecibo.State <> dsBrowse THEN
    DatosAnulacionRecibo.CDSAnulacionRecibo.Cancel;

  pnValores.Enabled  :=True;
  pnPrincipal.Enabled:=true;

  // VERIFICO SI LA CAJA ESTA CERRADA
  DatosAnulacionRecibo.QCaja.Close;
  DatosAnulacionRecibo.QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  DatosAnulacionRecibo.QCaja.Open;
  sbEstado.SimpleText:='';

  if DatosAnulacionRecibo.QCajaESTADO.Value=1 Then
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
  DatosAnulacionRecibo.QCaja.Close;


  DatoNew:=''+DatoNew+'';

  DatosAnulacionRecibo.CDSAnulacionRet.First;
  edTotaRetenciones.Value:=0;
  while not(DatosAnulacionRecibo.CDSAnulacionRet.Eof) do
    begin
      edTotaRetenciones.Value:=edTotaRetenciones.Value+
                               DatosAnulacionRecibo.CDSAnulacionRetIMPORTE.AsFloat;
      DatosAnulacionRecibo.CDSAnulacionRet.Next;
    end;
  DatosAnulacionRecibo.CDSAnulacionRet.First;

end;

procedure TFormAnulacionRecibos.CancelarExecute(Sender: TObject);
begin
  DatosAnulacionRecibo.CDSAnulacionRecibo.close;
  DatosAnulacionRecibo.CDSAnulacionRecibo.Params.ParamByName('id').Clear;
  DatosAnulacionRecibo.CDSAnulacionRecibo.Open;

  DatosAnulacionRecibo.CDSAnulacionRet.close;
  DatosAnulacionRecibo.CDSAnulacionRet.Params.ParamByName('id').Clear;
  DatosAnulacionRecibo.CDSAnulacionRet.Open;

 // FrameMovValoresEgresos1.CDSCheques.Close;
 // FrameMovValoresEgresos1.CDSChe3.Close;
 // FrameMovValoresEgresos1.CDSMovEfectivo.Close;


  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

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

  inherited;

end;

procedure TFormAnulacionRecibos.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    inherited;

end;

procedure TFormAnulacionRecibos.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 24;
  FormBuscaCpbte.TipoCpbte1:='XR';
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

procedure TFormAnulacionRecibos.BuscarRetencionesExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorRetenciones)) then
     FormBuscadorRetenciones:=TFormBuscadorRetenciones.Create(self);
   FormBuscadorRetenciones.Codigo:=DatosAnulacionRecibo.CDSAnulacionReciboCODIGO.AsString;
   FormBuscadorRetenciones.ShowModal;
   if (FormBuscadorRetenciones.Id >-1) and (Not(VarIsNull(FormBuscadorRetenciones.Id))) then
     begin
        if DatosAnulacionRecibo.CDSAnulacionRet.State=dsBrowse then
          DatosAnulacionRecibo.CDSAnulacionRet.Edit;
        DatosAnulacionRecibo.CDSAnulacionRetID_MOV_RETENCIONES.Value:=DatosAnulacionRecibo.CDSBuscaRetID_MOV_RETENCIONES.Value;
        DatosAnulacionRecibo.CDSAnulacionRetID_RETENCION.Value      :=DatosAnulacionRecibo.CDSBuscaRetID_RETENCION.Value;
        DatosAnulacionRecibo.CDSAnulacionRetDETALLE.Value           :=DatosAnulacionRecibo.CDSBuscaRetDETALLE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetTIPOCPBTE.Value         :=DatosAnulacionRecibo.CDSBuscaRetTIPOCPBTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetCLASECPBTE.Value        :=DatosAnulacionRecibo.CDSBuscaRetCLASECPBTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetNROCPBTE.Value          :=DatosAnulacionRecibo.CDSBuscaRetNROCPBTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetID_CPBTE.Value          :=DatosAnulacionRecibo.CDSBuscaRetID_CPBTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetFECHA.Value             :=DatosAnulacionRecibo.CDSBuscaRetFECHA.Value;
        DatosAnulacionRecibo.CDSAnulacionRetFECHA_RETENCION.Value   :=DatosAnulacionRecibo.CDSBuscaRetFECHA_RETENCION.Value;
        DatosAnulacionRecibo.CDSAnulacionRetNRO_RETENCION.Value     :=DatosAnulacionRecibo.CDSBuscaRetNRO_RETENCION.Value;
        DatosAnulacionRecibo.CDSAnulacionRetIMPORTE.Value           :=DatosAnulacionRecibo.CDSBuscaRetIMPORTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetCODIGO_CLIENTE.Value    :=DatosAnulacionRecibo.CDSBuscaRetCODIGO_CLIENTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetCUIT_CLIENTE.Value      :=DatosAnulacionRecibo.CDSBuscaRetCUIT_CLIENTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRetJURIDICCION.Value       :=DatosAnulacionRecibo.CDSBuscaRetJURIDICCION.Value;
        DatosAnulacionRecibo.CDSAnulacionRetNOMBRE_CLIENTE.Value    :=DatosAnulacionRecibo.CDSBuscaRetNOMBRE_CLIENTE.Value;
        DatosAnulacionRecibo.CDSAnulacionRet.Post;
     end;

end;

procedure TFormAnulacionRecibos.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled        := DSBase.State IN [dsInsert];
  Modificar.Enabled         := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  Borrar.Enabled            := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  //ImprimirRetencionRanancia.Enabled  := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsCheques.Enabled       := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsDebito.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresEgresos1.ceCaja.Enabled:= DSBase.State IN [dsInsert];

end;

end.
