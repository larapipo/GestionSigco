unit UAjustesCCClientes_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, ExtCtrls, Mask, DBCtrls, Db,
  ActnList, ImgList, Buttons, ToolWin, ComCtrls,System.Variants,
  IBGenerator, DBClient,  Provider,Librerias, JvComponentBase,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, JvExMask,
  JvToolEdit, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, Vcl.Menus, JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormAjustesCCVenta_2 = class(TFormABMBase)
    dbeNombre: TDBEdit;
    dbeRazonSocial: TDBEdit;
    dbeDetalle: TDBEdit;
    rgModo: TRadioGroup;
    DSPAjustes: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    IBId_Ajuste: TIBGenerator;
    BuscarCliente: TAction;
    dbeDebe: TDBEdit;
    dbeHaber: TDBEdit;
    DSPSucrusal: TDataSetProvider;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    DBEdit1: TDBEdit;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    Label1: TLabel;
    CambiarClase: TAction;
    dbeFecha: TJvDBDateEdit;
    dbeFechaVto: TJvDBDateEdit;
    rxdbCodigo: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSAjustes: TClientDataSet;
    CDSAjustesID: TIntegerField;
    CDSAjustesTIPOCPBTE: TStringField;
    CDSAjustesCLASECPBTE: TStringField;
    CDSAjustesLETRA: TStringField;
    CDSAjustesSUC: TStringField;
    CDSAjustesNUMERO: TStringField;
    CDSAjustesNROCPBTE: TStringField;
    CDSAjustesSUCURSAL: TIntegerField;
    CDSAjustesCODIGO: TStringField;
    CDSAjustesDETALLE: TStringField;
    CDSAjustesOBSERVACIONES: TStringField;
    CDSAjustesUSUARIO: TStringField;
    CDSAjustesMUESTRANOMBRE: TStringField;
    CDSAjustesMUESTRARAZONSOCIAL: TStringField;
    CDSAjustesMUESTRASUCURSAL: TStringField;
    CDSAjustesMUESTRACOMPROBANTE: TStringField;
    CDSAjustesID_TIPOCOMPROBANTE: TIntegerField;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel2: TJvLabel;
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
    spCambiarClaseCpbte: TSpeedButton;
    DSPCompDefecto: TDataSetProvider;
    CDSCompDefecto: TClientDataSet;
    CDSCompDefectoID_COMPROBANTE: TIntegerField;
    CDSCompDefectoTIPO_COMPROB: TStringField;
    CDSCompDefectoCLASE_COMPROB: TStringField;
    CDSCompDefectoDENOMINACION: TStringField;
    CDSCompDefectoSUCURSAL: TIntegerField;
    CDSCompDefectoLETRA: TStringField;
    ComBuscadorTipoCpbte: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    CDSAjustesLOTE: TIntegerField;
    DBText1: TDBText;
    JvLabel1: TJvLabel;
    PopupMenu1: TPopupMenu;
    BorrarLote: TAction;
    BorrarLote1: TMenuItem;
    JvLabel2: TJvLabel;
    dbcMotivo: TJvDBLookupCombo;
    DSPListaMotClientes: TDataSetProvider;
    CDSListaMotClientes: TClientDataSet;
    CDSListaMotClientesID: TIntegerField;
    CDSListaMotClientesDETALLE: TStringField;
    DSListaMotCliente: TDataSource;
    CDSAjustesMOTIVO_AJUSTE: TIntegerField;
    QAjustes: TFDQuery;
    CDSAjustesDEBE: TFloatField;
    CDSAjustesHABER: TFloatField;
    CDSAjustesSALDO: TFloatField;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QBuscaCompr: TFDQuery;
    QCompDefecto: TFDQuery;
    QVerificaMovCaja: TFDQuery;
    DBText2: TDBText;
    QAjustesID: TIntegerField;
    QAjustesTIPOCPBTE: TStringField;
    QAjustesCLASECPBTE: TStringField;
    QAjustesLETRA: TStringField;
    QAjustesSUC: TStringField;
    QAjustesNUMERO: TStringField;
    QAjustesNROCPBTE: TStringField;
    QAjustesSUCURSAL: TIntegerField;
    QAjustesCODIGO: TStringField;
    QAjustesDETALLE: TStringField;
    QAjustesDEBE: TFloatField;
    QAjustesHABER: TFloatField;
    QAjustesSALDO: TFloatField;
    QAjustesOBSERVACIONES: TStringField;
    QAjustesUSUARIO: TStringField;
    QAjustesID_FACTURA_CONSOLIDADA: TIntegerField;
    QAjustesID_FC_CUOTAS: TIntegerField;
    QAjustesLOTE: TIntegerField;
    QAjustesMOTIVO_AJUSTE: TIntegerField;
    QAjustesMUESTRANOMBRE: TStringField;
    QAjustesMUESTRARAZONSOCIAL: TStringField;
    QAjustesMUESTRASUCURSAL: TStringField;
    QAjustesMUESTRACOMPROBANTE: TStringField;
    QAjustesID_TIPOCOMPROBANTE: TIntegerField;
    QAjustesFECHA: TSQLTimeStampField;
    QAjustesFECHAVTO: TSQLTimeStampField;
    QAjustesFECHA_HORA: TSQLTimeStampField;
    CDSAjustesFECHA: TSQLTimeStampField;
    CDSAjustesFECHAVTO: TSQLTimeStampField;
    CDSAjustesFECHA_HORA: TSQLTimeStampField;
    QAjustesMUESTRAIDMOVCC: TIntegerField;
    QAjustesMUESTRAIDCAJA: TIntegerField;
    QAjustesMUSTRATIPOCOMPCAJA: TStringField;
    QAjustesMUESTRANROCOMPCAJA: TStringField;
    CDSAjustesID_FACTURA_CONSOLIDADA: TIntegerField;
    CDSAjustesID_FC_CUOTAS: TIntegerField;
    CDSAjustesMUESTRAIDMOVCC: TIntegerField;
    CDSAjustesMUESTRAIDCAJA: TIntegerField;
    CDSAjustesMUSTRATIPOCOMPCAJA: TStringField;
    CDSAjustesMUESTRANROCOMPCAJA: TStringField;
    QAjustesMUESTRATIPOCONSOLIDADA: TStringField;
    QAjustesMUESTRANROCONSOLIDADA: TStringField;
    QAjustesMUESTRATIPOFCCUOTAS: TStringField;
    QAjustesMUESTRAFCNROCUOTAS: TStringField;
    CDSAjustesMUESTRATIPOCONSOLIDADA: TStringField;
    CDSAjustesMUESTRANROCONSOLIDADA: TStringField;
    CDSAjustesMUESTRATIPOFCCUOTAS: TStringField;
    CDSAjustesMUESTRAFCNROCUOTAS: TStringField;
    pnPie: TPanel;
    Label2: TLabel;
    DBSpinEdit1: TDBText;
    DBSpinEdit2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBTextEdit1: TDBText;
    Label5: TLabel;
    DBTextEdit2: TDBText;
    Label6: TLabel;
    DBTextEdit3: TDBText;
    QAjustesMUESTRAIDCOMPCAJA: TIntegerField;
    CDSAjustesMUESTRAIDCOMPCAJA: TIntegerField;
    DBText3: TDBText;
    ToolButton1: TToolButton;
    SpeedButton1: TSpeedButton;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure rgModoClick(Sender: TObject);
    procedure CDSAjustesNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSAjustesNUMEROSetText(Sender: TField; const Text: String);
    procedure AgregarExecute(Sender: TObject);
//    procedure wwCDSAjustesDEBESetText(Sender: TField; const Text: String);
//    procedure wwCDSAjustesHABERSetText(Sender: TField; const Text: String);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSAjustesSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSUCSetText(Sender: TField; const Text: String);
    procedure CDSAjustesCODIGOSetText(Sender: TField;
      const Text: String);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CambiarClaseExecute(Sender: TObject);
    procedure BorrarLoteExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure DBSpinEdit2Click(Sender: TObject);
    procedure DBTextEdit3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mascara:String;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
  end;

var
  FormAjustesCCVenta_2: TFormAjustesCCVenta_2;

PROCEDURE UltimoComprobante;
  
implementation

{$R *.DFM}

USES  UBuscadorCpbte, UBuscadorClientes, UCambiaClaseComprobante,
  DMBuscadoresForm, DMStoreProcedureForm,UDMain_FD, UCaja, UFactura_2;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormAjustesCCVenta_2,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSAjustesLETRA.AsString <> '') AND (CDSAjustesCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value    := CDSAjustesLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value     := CDSAjustesSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value    := CDSAjustesCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value     := CDSAjustesTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value  := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAjustesSUCSetText(CDSAjustesSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAjustesNUMEROSetText(CDSAjustesNUMERO, IntToStr(Numero));
          CDSAjustesTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSAjustesCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAjustesNROCPBTE.AsString := CDSAjustesLETRA.AsString + CDSAjustesSUC.AsString + CDSAjustesNUMERO.AsString;
    END;

END;


FUNCTION TFormAjustesCCVenta_2.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('Codigo').Value := Dato;
  CDSClientes.Open;
  IF NOT (CDSClientes.IsEmpty) THEN
    BEGIN
      result := True;
      CDSAjustesMUESTRANOMBRE.Value      := CDSClientesNOMBRE.Value;
      CDSAjustesMUESTRARAZONSOCIAL.Value := CDSClientesRAZON_SOCIAL.Value;
    END
  ELSE
    Result := False;
END;

FUNCTION TFormAjustesCCVenta_2.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSAjustesID_TIPOCOMPROBANTE.Clear;
      CDSAjustesMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSAjustesID_TIPOCOMPROBANTESetText(CDSAjustesID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          if FormAjustesCCVenta_2.Visible then
            dbeDetalle.SetFocus;
        end
      else
        begin
          CDSCompDefecto.close;
          CDSCompDefecto.Params.ParamByName('suc').Value:=Dato;
          CDSCompDefecto.Open;
          if CDSCompDefectoID_COMPROBANTE.AsString<>'' Then
            begin
              CDSAjustesID_TIPOCOMPROBANTESetText(CDSAjustesID_TIPOCOMPROBANTE,CDSCompDefectoID_COMPROBANTE.AsString);
              if FormAjustesCCVenta_2.Visible then
                dbeDetalle.SetFocus;
            end
        end;
      Result := True;
      CDSAjustesMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAjustesMUESTRASUCURSAL.Value := '';
    END;
END;


FUNCTION TFormAjustesCCVenta_2.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSAjustesSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAjustesMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAjustesLETRA.Value              := QComprobLETRA.Value;
      CDSAjustesTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAjustesCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAjustesMUESTRACOMPROBANTE.Value := '';
      CDSAjustesLETRA.Value := '';
      CDSAjustesTIPOCPBTE.Value := '';
    END;
  QComprob.Close;
END;

procedure TFormAjustesCCVenta_2.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    CDSAjustesCODIGOSetText(CDSAjustesCODIGO,FormBuscadorClientes.Codigo);

end;

procedure TFormAjustesCCVenta_2.rgModoClick(Sender: TObject);
begin
  INHERITED;
  CASE rgModo.ItemIndex OF
    0:
      BEGIN
        dbeDebe.Enabled       := True;
        dbeHaber.Enabled      := False;
        dbeFechaVto.Enabled   := True;
        IF DSBase.State in [dsInsert,dsEdit] Then
          CDSAjustesHABER.AsFloat := 0;
        dbeHaber.Color        := clBtnFace;
        dbeDebe.Color         := clWhite;
        dbeFechaVto.Color     := clWhite;
      END;
    1:
      BEGIN
        dbeDebe.Enabled       := False;
        dbeHaber.Enabled      := True;
        dbeFechaVto.Enabled   := False;
        IF DSBase.State in [dsInsert,dsEdit] Then
          CDSAjustesDEBE.AsFloat := 0;
        dbeHaber.Color        := clWhite;
        dbeDebe.Color         := clBtnFace;
        dbeFechaVto.Color     := clBtnFace;

      END;
  END;
end;

procedure TFormAjustesCCVenta_2.CDSAjustesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAjustesID.Value:=IBId_Ajuste.IncrementFD(1);
  CDSAjustesFECHA.AsDateTime:=date;
  CDSAjustesSUCURSALSetText(CDSAjustesSUCURSAL,IntToStr(FormAjustesCCVenta_2.SucursalPorDefecto));
  CDSAjustesDETALLE.Value   :='Ajustes Saldo';
  CDSAjustesDEBE.AsFloat    := 0;
  CDSAjustesHABER.AsFloat   := 0;
  CDSAjustesSALDO.AsFloat   := 0;
  CDSAjustesLOTE.Value      := 0;
  CDSAjustesMOTIVO_AJUSTE.Value   := -1;
  CDSAjustesFECHA_HORA.AsDateTime := Now;
  CDSAjustesUSUARIO.Value         := DMMain_FD.UsuarioActivo;
end;



procedure TFormAjustesCCVenta_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 13;
  FormBuscaCpbte.TipoCpbte1 := 'AJ';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    begin
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormAjustesCCVenta_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSAjustes,DSPAjustes);
  CDSAjustes.OPen;
  rgModo.ItemIndex := 0;
  dbeDebe.Enabled       := True;
  dbeDebe.Color         := clWhite;
  dbeHaber.Enabled      := False;
  dbeHaber.Color        := clBtnFace;


  Mascara:=DMMain_FD.MascaraAplicacionesCC;

  CDSListaMotClientes.Close;
  CDSListaMotClientes.Open;

  CDSAjustes.Open;
  CDSAjustesDEBE.EditFormat    :='0.00';
  CDSAjustesHABER.EditFormat   :='0.00';
  CDSAjustesSALDO.EditFormat   :='0.00';
  CDSAjustesDEBE.DisplayFormat :=Mascara;
  CDSAjustesHABER.DisplayFormat:=Mascara;
  CDSAjustesSALDO.DisplayFormat:=Mascara;
  Tabla:='ajuste_cc_clientes';
  Campo:='id';
end;

procedure TFormAjustesCCVenta_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSAjustes.Close;
  Action:=caFree;
end;

procedure TFormAjustesCCVenta_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAjustesCCVenta_2:=Nil;
end;

procedure TFormAjustesCCVenta_2.FormShow(Sender: TObject);
begin
  inherited;
  if (btNuevo.Visible) then
    btNuevo.SetFocus;
end;

procedure TFormAjustesCCVenta_2.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');
  inherited;

end;

procedure TFormAjustesCCVenta_2.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');
  inherited;
end;

procedure TFormAjustesCCVenta_2.CDSAjustesNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAJustesNROCPBTE.Value := CDSAjustesLETRA.Value +  CDSAjustesSUC.Value + CDSAjustesNUMERO.Value;
end;

procedure TFormAjustesCCVenta_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  if (FormAjustesCCVenta_2.Visible) and (dbeFecha.Visible) then
    dbeFecha.SetFocus;
end;


procedure TFormAjustesCCVenta_2.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOK Then
    CDSAjustesSUCURSALSetText(CDSAjustesSucursal, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormAjustesCCVenta_2.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  if dsBase.State=dsInsert then
    begin
      CDSBuscaComprob.Close;
      CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAjustesSUCURSAL.Value;
      CDSBuscaComprob.Open;
      IF NOT (CDSBuscaComprob.IsEmpty) THEN
        BEGIN
          comBuscadorTipoCpbte.Execute;
          if comBuscadorTipoCpbte.rOK Then
            CDSAjustesID_TIPOCOMPROBANTESetText(CDSAjustesID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
        END
      ELSE
        ShowMessage('No hay comprobantes definidos para esta Operación...');
      CDSBuscaComprob.Close;
    end;
end;

procedure TFormAjustesCCVenta_2.CDSAjustesSUCURSALSetText(Sender: TField;
  const Text: String);
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

procedure TFormAjustesCCVenta_2.CDSAjustesID_TIPOCOMPROBANTESetText(
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

procedure TFormAjustesCCVenta_2.CDSAjustesSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAjustesNROCPBTE.Value := CDSAjustesLETRA.Value +  CDSAjustesSUC.Value + CDSAjustesNUMERO.Value;
end;

procedure TFormAjustesCCVenta_2.CDSAjustesCODIGOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;;
      if not(AsignarCliente(Sender.AsString)) Then
        begin
          Sender.AsString := '';
          ShowMessage('Codigo No Valido');
          RxDBCodigo.SetFocus;
        end;
    end;

end;

procedure TFormAjustesCCVenta_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSAjustes.Close;
  CDSAjustes.Params.ParamByName('id').Value:=DatoNew;
  CDSAjustes.Open;
  if CDSAjustesDEBE.AsFloat>0 Then
    rgModo.ItemIndex:=0
  else
    rgModo.ItemIndex:=1;
  DatoNew:=''+DatoNew+'';
  if (FormAjustesCCVenta_2.Visible) Then
  FormAjustesCCVenta_2.Caption:='Ajustes de Cta.Cte de Clientes -- '+CDSAjustesFECHA_HORA.AsString+'//'+Copy(CDSAjustesUSUARIO.Value,1,15);
end;

procedure TFormAjustesCCVenta_2.CambiarClaseExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormCambiarClaseCpbte)) then
    FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
  FormCambiarClaseCpbte.Tipo                     := CDSAjustesTIPOCPBTE.Value;
  FormCambiarClaseCpbte.Clase                    := CDSAjustesCLASECPBTE.Value;
  FormCambiarClaseCpbte.Letra                    := CDSAjustesLETRA.Value;
  FormCambiarClaseCpbte.Sucursal                 := CDSAjustesSUCURSAL.Value;
  FormCambiarClaseCpbte.NroCpbte                 := DSBase.DataSet.FieldByName('NROCPBTE').Value;
  FormCambiarClaseCpbte.IdComprobante            := CDSAjustesID.Value;
  FormCambiarClaseCpbte.ComproVenta              := 'V';
  FormCambiarClaseCpbte.dbcSucursalNew.KeyValue  := DSBase.DataSet.FieldByName('SUCURSAL').Value;
  FormCambiarClaseCpbte.dbcSucursalNew.Enabled   := False;

  FormCambiarClaseCpbte.ShowModal;
  DatoNew  :=IntToStr(FormCambiarClaseCpbte.IdComprobante);
  TipoCpbte:=FormCambiarClaseCpbte.Tipo;
  Recuperar.Execute;

end;

procedure TFormAjustesCCVenta_2.ConfirmaExecute(Sender: TObject);
begin
  if CDSAjustesID_TIPOCOMPROBANTE.AsString=''  then
    raise Exception.Create('No se ingreso tipo de comprobante...');
  if CDSAjustesCODIGO.AsString=''  then
    raise Exception.Create('No se ingreso el Cliente....');
  if (CDSAjustesFECHAVTO.AsString='') and (rgModo.ItemIndex=0) then
    CDSAjustesFECHAVTO.Value:=CDSAjustesFECHA.Value;

  DatoNew   := IntToStr(CDSAjustesID.Value);
  TipoCpbte := CDSAjustesTIPOCPBTE.Value;
  inherited;
  Recuperar.Execute;
  if (FormAjustesCCVenta_2.Visible) and (btNuevo.Visible) then
    btNuevo.SetFocus;
end;



procedure TFormAjustesCCVenta_2.DBSpinEdit2Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCaja)) then
    FormCaja:=TFormCaja.Create(Self);
  FormCaja.Recuperar(CDSAjustesMUESTRAIDCAJA.AsInteger);
  FormCaja.pcMovimientos.ActivePageIndex:=0;
  FormCaja.dbgIngresos.DataSource.DataSet.Locate('TIPO_CPBTE;ID_COMPROBANTE',VarArrayOf([CDSAjustesMUSTRATIPOCOMPCAJA.AsString,CDSAjustesMUESTRAIDCOMPCAJA.AsString]),[]);
  FormCaja.Show;
end;

procedure TFormAjustesCCVenta_2.DBTextEdit3Click(Sender: TObject);
begin
  inherited;
  if CDSAjustesID_FACTURA_CONSOLIDADA.AsString <>'' Then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      formCpbte_2.DatoNew:=CDSAjustesID_FACTURA_CONSOLIDADA.AsString;
      FormCpbte_2.TipoCpbte:=CDSAjustesMUESTRATIPOCONSOLIDADA.Value;// 'FC';
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end;
end;

procedure TFormAjustesCCVenta_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  dbeFecha.Enabled       := DSBase.State=dsInsert;
  dbeLetra.Enabled       := DSBase.State=dsInsert;
  dbeSuc.Enabled         := DSBase.State=dsInsert;
  dbeNumero.Enabled      := DSBase.State=dsInsert;

  RxDBESucursal.Enabled  := DSBase.State=dsInsert;
  rxdbCodigo.Enabled     := DSBase.State=dsInsert;
  RxCTipoCpbte.Enabled   := DSBase.State=dsInsert;

  CambiarClase.Enabled   := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  BorrarLote.Enabled     := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (DSBase.DataSet.FieldByName('LOTE').Value>0);


  end;

procedure TFormAjustesCCVenta_2.BorrarExecute(Sender: TObject);
begin
  QVerificaMovCaja.Close;
  QVerificaMovCaja.ParamByName('id').Value:=CDSAjustesID.Value;
  QVerificaMovCaja.Open;
  if QVerificaMovCaja.Fields[0].Value=0 then
    begin
      if DMMain_FD.UsuarioAdministrador Then
        inherited
      else
        ShowMessage('No tiene permiso para esta operación....');
    end
  else
    ShowMessage('Ajuste asociado a un movimiento de caja....');

end;

procedure TFormAjustesCCVenta_2.BorrarLoteExecute(Sender: TObject);
begin
  inherited;
  if CDSAjustesLOTE.AsString<>''  then
    if CDSAjustesLOTE.Value>0 then
      if MessageDlg('Esta por borrar el Lote Nro.: '+CDSAjustesLOTE.AsString+' ... esta seguro?',mtInformation,mbYesNo,0,mbNo)=mrYes then
        begin
          DMStoreProcedure.QBorraLoteAjusteVta.Close;
          DMStoreProcedure.QBorraLoteAjusteVta.ParamByName('Lote').Value:=CDSAjustesLOTE.Value;
          DMStoreProcedure.QBorraLoteAjusteVta.ExecSQL;
          DMStoreProcedure.QBorraLoteAjusteVta.Close;
          Recuperar.Execute;
        end;
end;

end.