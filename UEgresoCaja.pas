UNIT UEgresoCaja;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, JvLabel,
  JvDBControls, JvExMask, JvToolEdit, IBGenerator, frxClass, frxDBSet,
  DBClient, Provider, ComCtrls, Mask, DBCtrls, StdCtrls,
  Grids, System.StrUtils,
  JvComponentBase, JvFormPlacement, ImgList, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls,Librerias, FMTBcd, SqlExpr, DBXCommon, UMovValoresEgresos,
  DBGrids, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, System.ImageList, frCoreClasses;

TYPE
  TFormEgresoCaja = CLASS(TFormABMBase)
    pnValores: TPanel;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    BuscarSucursal: TAction;
    BuscarCuentas: TAction;
    BuscaRubros: TAction;
    DSPEgresoCaja: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    BuscarTipoCpbte: TAction;
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDetalle: TDBEdit;
    pnImporte: TPanel;
    dbImporte: TDBEdit;
    frEgresos: TfrxReport;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frDBDMovCaja: TfrxDBDataset;
    DSPEgresoCajaDetalle: TDataSetProvider;
    CDSEgresoCajaDetalles: TClientDataSet;
    DSEgresoCajaDetalle: TDataSource;
    IbgEgreDetalle: TIBGenerator;
    frDBEgresosDetalles: TfrxDBDataset;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    IbgEgreso: TIBGenerator;
    frDBEgresosCab: TfrxDBDataset;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    frDBEmpresa: TfrxDBDataset;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    frDBEfectivo: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBCheque: TfrxDBDataset;
    frDBTransf: TfrxDBDataset;
    frDBDebitos: TfrxDBDataset;
    frDBTC: TfrxDBDataset;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel4: TJvLabel;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSEgresoCajaDetallesID: TIntegerField;
    CDSEgresoCajaDetallesID_CPBTE: TIntegerField;
    CDSEgresoCajaDetallesTIPOCPBTE: TStringField;
    CDSEgresoCajaDetallesCLASECPBTE: TStringField;
    CDSEgresoCajaDetallesNROCPBTE: TStringField;
    CDSEgresoCajaDetallesFECHACPBTE: TSQLTimeStampField;
    CDSEgresoCajaDetallesFECHAGASTO: TSQLTimeStampField;
    CDSEgresoCajaDetallesDETALLE: TStringField;
    CDSEgresoCajaDetallesSUCURSALVENTA: TIntegerField;
    CDSEgresoCajaDetallesMUESTRARUBRO: TStringField;
    CDSEgresoCajaDetallesMUESTRACUENTA: TStringField;
    CDSEgresoCajaDetallesRUBROGASTO: TStringField;
    CDSEgresoCajaDetallesCODIGOGASTO: TStringField;
    CDSEgresoCajaDetallesIMPORTE: TFloatField;
    CDSEgresoCaja: TClientDataSet;
    CDSEgresoCajaID_EGRESO: TIntegerField;
    CDSEgresoCajaTIPOCPBTE: TStringField;
    CDSEgresoCajaCLASECPBTE: TStringField;
    CDSEgresoCajaLETRA: TStringField;
    CDSEgresoCajaSUC: TStringField;
    CDSEgresoCajaNUMERO: TStringField;
    CDSEgresoCajaSUCURSALVENTA: TIntegerField;
    CDSEgresoCajaFECHA: TSQLTimeStampField;
    CDSEgresoCajaCODIGO_GASTO: TStringField;
    CDSEgresoCajaRUBRO_GASTO: TStringField;
    CDSEgresoCajaIMPORTE: TFloatField;
    CDSEgresoCajaNROCPBTE: TStringField;
    CDSEgresoCajaOBS: TMemoField;
    CDSEgresoCajaUSUARIO: TStringField;
    CDSEgresoCajaFECHA_HORA: TSQLTimeStampField;
    CDSEgresoCajaMUESTRASUCURSAL: TStringField;
    CDSEgresoCajaMUESTRACOMPROBANTE: TStringField;
    CDSEgresoCajaID_TIPOCOMPROBANTE: TIntegerField;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    QBuscaRub: TFDQuery;
    CDSBuscaRubroCODIGO: TStringField;
    CDSBuscaRubroDETALLE: TStringField;
    QBuscaCuentas: TFDQuery;
    CDSBuscaCuenta: TClientDataSet;
    DSPBuscaCuenta: TDataSetProvider;
    CDSBuscaCuentaCODIGO: TStringField;
    CDSBuscaCuentaCODIGO_RUBRO: TStringField;
    CDSBuscaCuentaDETALLE: TStringField;
    CDSEgresoCajaDETALLE: TStringField;
    GravarNumeroOperacion: TAction;
    CDSEgresoCajaNUMERO_OPERACION: TStringField;
    Label4: TLabel;
    edNumeroOP: TDBText;
    QComprobCAJA_DEFECTO: TIntegerField;
    spAsignacionCtroCosto: TSpeedButton;
    DetallesCostos: TAction;
    DBText3: TDBText;
    GenerarXML: TAction;
    CambiarFecha: TAction;
    btModificaFecha: TBitBtn;
    dbgCtroCosto: TDBGrid;
    DSCtroCosto: TDataSource;
    frDBCCosto: TfrxDBDataset;
    dbgDetalle_2: TDBGrid;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorRubro: TComBuscador;
    ComBuscadorCuenta: TComBuscador;
    RevisionValores: TAction;
    ToolBar2: TToolBar;
    MainMenu1: TMainMenu;
    OtrasOperaciones1: TMenuItem;
    RevisiondeValores1: TMenuItem;
    N1: TMenuItem;
    GenerarXML1: TMenuItem;
    GravarNumeroOperacion1: TMenuItem;
    N2: TMenuItem;
    CambiarFecha1: TMenuItem;
    BuscarPorDetalle: TAction;
    BitBtn1: TBitBtn;
    ImpresionCheques: TAction;
    AsignarObra: TAction;
    CDSEgresoCajaID_OBRA: TIntegerField;
    AsignarObra1: TMenuItem;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE pnValoresEnter(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE AgregarExecute(Sender: TObject);
    PROCEDURE ConfirmaExecute(Sender: TObject);
    PROCEDURE BuscarSucursalExecute(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE BuscarCuentasExecute(Sender: TObject);
    PROCEDURE BuscaRubrosExecute(Sender: TObject);
    PROCEDURE BorrarExecute(Sender: TObject);
    procedure CDSEgresoCajaNewRecord(DataSet: TDataSet);
    procedure CDSEgresoCajaSUCSetText(Sender: TField;
      const Text: String);
    procedure CDSEgresoCajaNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSEgresoCajaSUCURSALVENTASetText(Sender: TField;
      const Text: String);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure FrameMovValoresEgresos1wwCDSCajaMovAfterPost(
//      DataSet: TDataSet);
    procedure CDSEgresoCajaID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure ImprimirExecute(Sender: TObject);
    procedure CDSEgresoCajaDetallesNewRecord(DataSet: TDataSet);
    procedure CDSEgresoCajaDetallesRUBROGASTOSetText(Sender: TField;
      const Text: String);
    procedure CDSEgresoCajaDetallesCODIGOGASTOSetText(Sender: TField;
      const Text: String);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSEgresoCajaDetallesBeforePost(DataSet: TDataSet);
    procedure Panel1DblClick(Sender: TObject);
    procedure CDSEgresoCajaDetallesAfterPost(DataSet: TDataSet);
    procedure CDSEgresoCajaDetallesIMPORTESetText(Sender: TField;
      const Text: String);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn7Click(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure CDSEgresoCajaDetallesAfterDelete(DataSet: TDataSet);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSEgresoCajaDetallesBeforeInsert(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure GravarNumeroOperacionExecute(Sender: TObject);
    procedure DetallesCostosExecute(Sender: TObject);
    procedure GenerarXMLExecute(Sender: TObject);
    procedure CambiarFechaExecute(Sender: TObject);
    procedure dbgDetalle_2KeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalle_2ColEnter(Sender: TObject);
    procedure dbgDetalle_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalle_2Enter(Sender: TObject);
    procedure dbgDetalle_2EditButtonClick(Sender: TObject);
    procedure dbgDetalle_2DblClick(Sender: TObject);
    procedure RevisionValoresExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BuscarPorDetalleExecute(Sender: TObject);
    procedure ImpresionChequesExecute(Sender: TObject);
    procedure AsignarObraExecute(Sender: TObject);
  private
    { Private declarations }
    FId_Vencimiento:Integer;
  public
    Mascara:String;
    CpbteNuevo: Char;
    procedure sumar;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarCta(dato1, dato2: STRING): boolean;
    FUNCTION AsignarRubro(dato: STRING): boolean;
    { Public declarations }
  published
    property Id_Vencimiento:Integer write FId_Vencimiento;
  END;

VAR
  FormEgresoCaja: TFormEgresoCaja;

PROCEDURE UltimoComprobante;

IMPLEMENTATION

USES UCarteraCheques, UBuscadorCpbte, DMBuscadoresForm,UDMain_FD,
  DMStoreProcedureForm, UNumeroOperacion, UIngresaNroOP, UAsignacionCtroCosto,
  UFecha, UBuscadorComprobantes, URevisionValoresEgresados, UBusca_Det_Ing_Egre,
  UImpresionChePropios, UBuscadorCuentaGastos, UAsignaObra;
{$R *.DFM}

procedure TFormEgresoCaja.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frEgresos.DesignReport;
end;

procedure TFormEgresoCaja.sumar;
VAR AUx:String;
BEGIN
  CDSEgresoCajaIMPORTE.AsFloat:=0;
  CDSEgresoCajaDetalles.First;
  while not(CDSEgresoCajaDetalles.Eof) Do
    begin
      CDSEgresoCajaIMPORTE.AsFloat:=CDSEgresoCajaIMPORTE.AsFloat+CDSEgresoCajaDetallesIMPORTE.AsFloat;
      CDSEgresoCajaDetalles.Next;
    end;
  aux:= FormatFloat(',0.00',CDSEgresoCajaIMPORTE.AsFloat - FrameMovValoresEgresos1.SumaValores);
  FrameMovValoresEgresos1.lbResto.Caption:= aux;

END;

FUNCTION TFormEgresoCaja.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSEgresoCajaID_TIPOCOMPROBANTE.Clear;
      CDSEgresoCajaMUESTRACOMPROBANTE.Clear;
      CDSEgresoCajaMUESTRASUCURSAL.Value:=CDSSucursalDETALLE.Value;

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta= ''C'' and '+
                                                ' (tipo_comprob = ''EC'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;

     if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSEgresoCajaID_TIPOCOMPROBANTESetText(CDSEgresoCajaID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          if (FormEgresoCaja.dbeDetalle.Enabled) and (FormEgresoCaja.dbeDetalle.Visible) then
            FormEgresoCaja.dbeDetalle.SetFocus;
        end
      else
        begin
          DMBuscadores.CDSBuscaComprob.Filtered:=False;
          DMBuscadores.CDSBuscaComprob.Filter  :='(DEFECTO = ''S'' ) and ( EN_USO = ''S'' )';
          DMBuscadores.CDSBuscaComprob.Filtered:=True;
          if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
            begin
              DMBuscadores.CDSBuscaComprob.First;
              if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                begin
                  CDSEgresoCajaID_TIPOCOMPROBANTESetText(CDSEgresoCajaID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                  FormEgresoCaja.dbeDetalle.SetFocus;
                end;
            end
          else
            begin
              DMBuscadores.CDSBuscaComprob.Filtered:=False;
              DMBuscadores.CDSBuscaComprob.Filter  :='( EN_USO = ''S'' )';
              DMBuscadores.CDSBuscaComprob.Filtered:=True;
              if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
                begin
                  DMBuscadores.CDSBuscaComprob.First;
                  if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                    begin
                      CDSEgresoCajaID_TIPOCOMPROBANTESetText(CDSEgresoCajaID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                      FormEgresoCaja.dbeDetalle.SetFocus;
                    end;
               end;
            end;
        end;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.Filter:='';
      DMBuscadores.CDSBuscaComprob.Filtered:=False;
    END
  ELSE
    BEGIN
      Result := False;
      CDSEgresoCajaMUESTRASUCURSAL.Value := '';
    END;
   CDSSucursal.Close;
END;

FUNCTION TFormEgresoCaja.AsignarComprobante(Dato: Integer):
  Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSEgresoCajaSUCURSALVENTA.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      //*****************************************************************************
      // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
      //*****************************************************************************
      if (TForm(Self.Owner).Name <>'FormCajaResumen') then
         begin
           if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
             FormEgresoCaja.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
           else
             begin
               if (TForm(Self.Owner).Name <>'FormCajaResumen') then
                 FormEgresoCaja.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
             end;
         end;
      //*****************************************************************************
      //*****************************************************************************
      CDSEgresoCajaMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSEgresoCajaLETRA.Value              := QComprobLETRA.Value;
      CDSEgresoCajaTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSEgresoCajaCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSEgresoCajaMUESTRACOMPROBANTE.Value := '';
      CDSEgresoCajaLETRA.Value              := '';
      CDSEgresoCajaTIPOCPBTE.Value          := '';
      CDSEgresoCajaCLASECPBTE.Value         := '';
    END;
  QComprob.Close;
END;

FUNCTION TFormEgresoCaja.AsignarCta(Dato1, Dato2: STRING): Boolean;
BEGIN
  DMMain_FD.CDSCtaGasto.Close;
  DMMain_FD.CDSCtaGasto.Params.ParamByName('rubro').Value  := dato1;
  DMMain_FD.CDSCtaGasto.Params.ParamByName('codigo').Value := Dato2;
  DMMain_FD.CDSCtaGasto.Open;
  IF NOT (DMMain_FD.CDSCtaGasto.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSEgresoCajaDetallesRUBROGASTO.Text     := DMMain_FD.CDSCtaGastoCODIGO_RUBRO.AsString;
      CDSEgresoCajaDetallesMUESTRACUENTA.Value := DMMain_FD.CDSCtaGastoDETALLE.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSEgresoCajaDetallesRUBROGASTO.Text     := '';
      CDSEgresoCajaDetallesMUESTRACUENTA.Value := '';
    END;
  DMMain_FD.CDSCtaGasto.Close;
END;

procedure TFormEgresoCaja.AsignarObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAsignaObras)) then
    FormAsignaObras:=TFormAsignaObras.Create(self);
  FormAsignaObras.Tipo      := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormAsignaObras.id_origen := DSBase.DataSet.FieldByName('ID_EGRESO').Value;
  FormAsignaObras.Id_Obra   := DSBase.DataSet.FieldByName('ID_OBRA').Value;
  FormAsignaObras.ShowModal;
  DatoNew:=DSBase.DataSet.FieldByName('ID_EGRESO').AsString;
  Recuperar.Execute;
  if (Assigned(FormAsignaObras)) then
    FreeAndNil(FormAsignaObras);
end;

FUNCTION TFormEgresoCaja.AsignarRubro(Dato: STRING): Boolean;
BEGIN
  DMMain_FD.CDSRubroGasto.Close;
  DMMain_FD.CDSRubroGasto.Params.ParamByName('codigo').AsString := dato;
  DMMain_FD.CDSRubroGasto.Open;
  IF NOT (DMMain_FD.CDSRubroGasto.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSEgresoCajaDetallesMUESTRARUBRO.Value:=DMMain_FD.CDSRubroGastoDETALLE.Value;
     // CDSEgresoCajaDetallesCODIGOGASTO.Clear;
     // CDSEgresoCajaDetallesMUESTRACUENTA.Clear;
    END
  ELSE
    BEGIN
      Result := False;
      CDSEgresoCajaDetallesMUESTRARUBRO.Value:='';
    END;
  DMMain_FD.CDSRubroGasto.Close;
END;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormEgresoCaja,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSEgresoCajaLETRA.AsString <> '') AND (CDSEgresoCajaCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSEgresoCajaLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSEgresoCajaSUCURSALVENTA.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSEgresoCajaCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSEgresoCajaTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSEgresoCajaSUCSetText(CDSEgresoCajaSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSEgresoCajaNUMEROSetText(CDSEgresoCajaNUMERO, IntToStr(Numero));
          CDSEgresoCajaTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSEgresoCajaCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSEgresoCajaNROCPBTE.AsString := CDSEgresoCajaLETRA.AsString +
                                        CDSEgresoCajaSUC.AsString +
                                        CDSEgresoCajaNUMERO.AsString;
    END;

END;

PROCEDURE TFormEgresoCaja.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  FrameMovValoresEgresos1.pcValores.ActivePageIndex:=0;
  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);
  if DSBase.DataSet=Nil Then
    DSBase.DataSet:=CDSEgresoCaja;

  AddClientDataSet(CDSEgresoCaja,DSPEgresoCaja);
  AddClientDataSet(CDSEgresoCajaDetalles,DSPEgresoCajaDetalle);

  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
  AddClientDataSet(FrameMovValoresEgresos1.CDSTransBco,FrameMovValoresEgresos1.DSPTransBco);
  AddClientDataSet(FrameMovValoresEgresos1.CDSDebitos,FrameMovValoresEgresos1.DSPDebitos);
  AddClientDataSet(FrameMovValoresEgresos1.CDSChe3, FrameMovValoresEgresos1.DSPChe3);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCompra, FrameMovValoresEgresos1.DSPMovTCCompra);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCuota, FrameMovValoresEgresos1.DSPMovTCCuota);


  FrameMovValoresEgresos1.CDSChe3.Open;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.CDSCheques.Open;
  FrameMovValoresEgresos1.CDSTransBco.Open;
  FrameMovValoresEgresos1.CDSDebitos.Open;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.QCajaCab.Open;

  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;
  FrameMovValoresEgresos1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;

  CDSEgresoCaja.Open;
  CDSEgresoCajaDetalles.Open;
  pnImporte.BevelInner:=bvNone;
  pnImporte.BevelOuter:=bvNone;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='EGRESOS';
  DMMain_FD.QOpciones.Open;

  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;

  TFloatField(CDSEgresoCajaIMPORTE).EditFormat   :=Mascara;
  TFloatField(CDSEgresoCajaIMPORTE).DisplayFormat:=Mascara;
  DMMain_FD.QOpciones.Close;
  Tabla:='EGR_CAJA';
  Campo:='id_egreso';
END;

PROCEDURE TFormEgresoCaja.pnValoresEnter(Sender: TObject);
BEGIN
  INHERITED;
  if (DSBase.State=dsInsert) or (DSBase.State=dsEdit) Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
     BEGIN
       pnCabecera.Enabled :=False;
       pnValores.Enabled  :=True;
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
           TipoCpbte      := CDSEgresoCajaTIPOCPBTE.Value;
           TipoOperacion  := 'E';
           ClaseCpbte     := CDSEgresoCajaCLASECPBTE.Value;
           NroCpbte       := CDSEgresoCajaNROCPBTE.Value;
           FechaOperacion := CDSEgresoCajaFECHA.AsDateTime;
           IdCpbte        := CDSEgresoCajaID_EGRESO.Value;
           Origen         := CDSEgresoCajaDetalle.Value;
         END;
     END
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
      pnCabecera.Enabled:=True;
    //  pnValores.Enabled:=false;
      dbeFecha.SetFocus;
    end;
END;

procedure TFormEgresoCaja.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    Recuperar.Execute;
end;

PROCEDURE TFormEgresoCaja.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  INHERITED;
  Action:=caFree;
// FreeAndNil(FormCarteraCheques);
END;

PROCEDURE TFormEgresoCaja.AgregarExecute(Sender: TObject);
BEGIN
  sbEstado.SimpleText:='';
  CDSEgresoCaja.close;
  CDSEgresoCaja.Params.ParamByName('id').Clear;
  CDSEgresoCaja.Params.ParamByName('Tipo').Clear;
  CDSEgresoCaja.Open;

  CDSEgresoCajaDetalles.Close;
  CDSEgresoCajaDetalles.Params.ParamByName('id').Clear;
  CDSEgresoCajaDetalles.Open;

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

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;


  INHERITED;
  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera de cheques
  FrameMovValoresEgresos1.SumaValores:=0;
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  pnCabecera.Enabled:=True;
  dbeDetalle.SetFocus;
  CpbteNuevo:='S';
//  RxDBESucursal.SetFocus;
//  wwDBDFecha.SetFocus;
END;

PROCEDURE TFormEgresoCaja.ConfirmaExecute(Sender: TObject);
var d,m,y:word;
BEGIN
  if CDSEgresoCajaDetalles.State in [dsInsert,dsEdit] Then
    CDSEgresoCajaDetalles.Post;

  if CDSEgresoCajaDetalles.RecordCount<=0 Then
    Raise Exception.Create('No se detallaron las cuentas que de gastos.....');

  if FrameMovValoresEgresos1.SumaValores<=0 Then
    begin
      WITH FrameMovValoresEgresos1 DO
        begin
          //wwCDSCajaMov.EmptyDataSet;
          IF (DSBase.State=dsInsert) THEN
            begin
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
              QCajaCab.Open;
              IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) THEN
                BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                  Id_Caja            := QCajaCabID_CAJA.Value;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
            end;
          TipoCpbte      := CDSEgresoCajaTIPOCPBTE.Value;
          TipoOperacion  := 'E';
          ClaseCpbte     := CDSEgresoCajaCLASECPBTE.Value;
          NroCpbte       := CDSEgresoCajaNROCPBTE.Value;
          FechaOperacion := CDSEgresoCajaFECHA.AsDateTime;
          IdCpbte        := CDSEgresoCajaID_EGRESO.Value;
          Origen         := CDSEgresoCajaDETALLE.Value;

          CDSCajaMov.Insert;
          CDSCajaMovHABER.AsFloat            := CDSEgresoCajaIMPORTE.AsFloat;
          CDSCajaMovDEBE.AsFloat             := 0;
          CDSFormaPagoEfec.Close;
          CDSFormaPagoEfec.Open;
          CDSFormaPagoEfec.First;
          CDSCajaMovID_TPAGO.Value           := 1;
          CDSCajaMovID_FPAGO.Value           := CDSFormaPagoEfecID_FPAGO.Value;
          CDSCajaMovUNIDADES.AsFloat         := CDSEgresoCajaIMPORTE.AsFloat;
          CDSCajaMovCOTIZACION.Value         := CDSFormaPagoEfecCOTIZACION.Value;
          CDSCajaMovCLASE_COMPROB.Value      := ClaseCpbte;
          CDSCajaMovID_CUENTA_CAJA.Value     := id_cuenta_caja;
          CDSCajaMovMONEDA.Value             := CDSFormaPagoEfecMONEDA.Value;
          CDSFormaPagoEfec.Close;
          CDSMovEfectivo.Insert;
          CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
          CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
          CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
          CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
          CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
          CDSMovEfectivoUNIDADES.Value       := CDSCajaMovUNIDADES.Value;
          CDSMovEfectivoIMPORTE.AsFloat      := CDSEgresoCajaIMPORTE.AsFloat;
          CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
          CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
          CDSMovEfectivo.Post;
          QCajaCab.Close;
        END;
    end;

  if CDSEgresoCajaDetalles.State in [dsInsert,dsEdit] Then
    CDSEgresoCajaDetalles.Post;
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
     IF Moneda3D(' ',Mascara, CDSEgresoCajaIMPORTE.AsFloat) <> 0 THEN
        BEGIN
          IF Moneda3D(' ',Mascara,FrameMovValoresEgresos1.SumaValores) = Moneda3D(' ',Mascara,CDSEgresoCajaIMPORTE.AsFloat) THEN
            BEGIN
              DatoNew   :=IntToStr(CDSEgresoCajaID_EGRESO.Value);
              TipoCpbte :=CDSEgresoCajaTIPOCPBTE.Value;
              CDSEgresoCajaNROCPBTE.Value := CDSEgresoCajaLETRA.Value +  CDSEgresoCajaSUC.Value + CDSEgresoCajaNUMERO.Value;
              if CDSEgresoCaja.State<>dsBrowse Then
                CDSEgresoCaja.Post;

              // **** hago ingreso de numero operacion ******
              if (DSBase.State=dsInsert) and (DMMain_FD.Ingresa_NroOp) then
                begin
                  if Not(Assigned(FormIngresaNroOP)) then
                    FormIngresaNroOP:=TFormIngresaNroOP.Create(Self);
                  DecodeDate(CDSEgresoCajaFECHA.AsDateTime,y,m,d);
                  FormIngresaNroOP.Prefijo:= IntToStr(y);
                  FormIngresaNroOP.ShowModal;
                  if FormIngresaNroOP.ModalResult=mrOk then
                    CDSEgresoCajaNUMERO_OPERACION.Value:=FormIngresaNroOP.Prefijo+FormIngresaNroOP.Numero
                  else
                    CDSEgresoCajaNUMERO_OPERACION.Value:='';
                end;
                // ********************************************

              INHERITED;
              Recuperar.Execute;
              if (TForm(Self.Owner).Name ='FormABMVencimientos') and (FId_Vencimiento>0) then
                begin
                  DMStoreProcedure.QActualizaVencimiento.Close;
                  DMStoreProcedure.QActualizaVencimiento.ParamByName('Fecha').Value      :=CDSEgresoCajaFECHA.AsDateTime;
                  DMStoreProcedure.QActualizaVencimiento.ParamByName('Tipo').Value       :=CDSEgresoCajaTIPOCPBTE.Value;
                  DMStoreProcedure.QActualizaVencimiento.ParamByName('Clase').Value      :=CDSEgresoCajaCLASECPBTE.Value;
                  DMStoreProcedure.QActualizaVencimiento.ParamByName('NroCpbte').Value   :=CDSEgresoCajaNROCPBTE.Value;
                  DMStoreProcedure.QActualizaVencimiento.ParamByName('id').Value         :=FId_Vencimiento;
                  DMStoreProcedure.QActualizaVencimiento.ParamByName('id_egreso').Value  :=CDSEgresoCajaID_EGRESO.Value;

                  DMStoreProcedure.QActualizaVencimiento.ExecSQL();
                  DMStoreProcedure.QActualizaVencimiento.Close;
                end;

              if Not(DSBase.DataSet.IsEmpty) and (SeguimientoCtroCosto=True) and (CpbteNuevo='S') then
                 DetallesCostos.Execute;
              if (TForm(Self.Owner).Name <>'FormCajaResumen') then
                begin
                  IF (CpbteNuevo='S') then
                    if Imprime='S' Then
                      if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
                        Imprimir.Execute;
                end;
            END
          ELSE
            ShowMessage('Hay diferencias entre lo percibido y el importe del gasto....');
        END
      ELSE
        ShowMessage('No se ingreso el importe del Comprobante....')
    ELSE
      ShowMessage('Faltan datos en la cabecera....');
    if (TForm(Self.Owner).Name <>'FormLecturaXML') then
      begin
        IF btNuevo.Enabled = True THEN
          btNuevo.SetFocus;
      end
    else
      SAlir.Execute;  
END;

PROCEDURE TFormEgresoCaja.BuscarSucursalExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSEgresoCajaSucursalVentaSetText(CDSEgresoCajaSucursalVenta, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
END;

PROCEDURE TFormEgresoCaja.FormDestroy(Sender: TObject);
BEGIN
  INHERITED;
  FormEgresoCaja := NIL;
END;

PROCEDURE TFormEgresoCaja.BuscarExecute(Sender: TObject);
BEGIN
  INHERITED;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1 := 'EC';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.Tag        := 5;
  if DMMain_FD.ModificaCaja Then
    FormBuscaCpbte.ModificaCaja:='S'
  else
    FormBuscaCpbte.ModificaCaja:='N';
  FormBuscaCpbte.CuentaCaja  :=CajaPorDefecto;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
  // DatosMovValoresRecibo.QCajaCab.Open;
END;

procedure TFormEgresoCaja.BuscarPorDetalleExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State=dsBrowse then
    begin
      if (Assigned(FormBusdadorDetIngEgr)) then
        FreeAndNil(FormBusdadorDetIngEgr);

      if Not(Assigned(FormBusdadorDetIngEgr)) then
        FormBusdadorDetIngEgr:=TFormBusdadorDetIngEgr.Create(Self);
      FormBusdadorDetIngEgr.ShowModal;
      if FormBusdadorDetIngEgr.ModalResult=mrOk then
        begin
          TipoCpbte := 'EC';
          DatoNew   := IntToStr(FormBusdadorDetIngEgr.id);
          Recuperar.Execute;
        end;
    end;
end;

PROCEDURE TFormEgresoCaja.BuscarCuentasExecute(Sender: TObject);
BEGIN
  INHERITED;
  if Not(Assigned(FormBuscadorCuentaGastos)) Then
    FormBuscadorCuentaGastos := TFormBuscadorCuentaGastos.Create(self);
  FormBuscadorCuentaGastos.ShowModal;
  if FormBuscadorCuentaGastos.ModalResult=mrOk then
    begin
      CDSEgresoCajaDetallesRUBROGASTO.Text  := FormBuscadorCuentaGastos.Rubro;
      CDSEgresoCajaDetallesCODIGOGASTO.Text := FormBuscadorCuentaGastos.Cuenta;
      dbgDetalle_2.SelectedIndex            := dbgDetalle_2.SelectedIndex+1;
    end;
END;

PROCEDURE TFormEgresoCaja.BuscaRubrosExecute(Sender: TObject);
BEGIN
  INHERITED;
  if DSBase.State<>dsBrowse then
    begin
      CDSBuscaRubro.Close;
      CDSBuscaRubro.Open;
      comBuscadorRubro.Execute;
      if comBuscadorRubro.rOk Then
        CDSEgresoCajaDetallesRUBROGASTOSetText(CDSEgresoCajaDetallesRUBROGASTO, comBuscadorRubro.Id);
      CDSBuscaRubro.Close;
    end;
END;

PROCEDURE TFormEgresoCaja.BorrarExecute(Sender: TObject);
var Detalle:string;
BEGIN
  //inherited;
  DMStoreProcedure.QControlFondos.Close;
  DMStoreProcedure.QControlFondos.ParamByName('id').Value   := CDSEgresoCajaID_EGRESO.Value;
  DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value := 'EC';
  DMStoreProcedure.QControlFondos.Open;
  if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
    RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
  DMStoreProcedure.QControlFondos.Close;

 if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?',
   mtInformation, [mbYes, mbNo], 0) = mrYes Then
  begin
    DMMain_FD.fdcGestion.StartTransaction;
    try
      // **** Ingreso en el Log File  **************
      Detalle:= 'Borrado Egreso: '+
                 CDSEgresoCajaDETALLE.Value+'-'+
                 CDSEgresoCajaCLASECPBTE.Value+'-'+
                 CDSEgresoCajaLETRA.Value+'-'+
                 CDSEgresoCajaSUC.Value+'-'+
                 CDSEgresoCajaNUMERO.Value+'-'+
                 ' Importe: '+
                 FormatFloat('0.00',CDSEgresoCajaIMPORTE.AsFloat);

      DMMain_FD.LogFileFD(0,6,Detalle,'EGR_CAJA');

      CDSEgresoCaja.Delete;
      CDSEgresoCaja.ApplyUpdates(0);
      CDSEgresoCaja.EmptyDataSet;
      DMMain_FD.fdcGestion.Commit;
      FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
      CDSEgresoCaja.close;
      CDSEgresoCaja.Params.ParamByName('id').Clear;
      CDSEgresoCaja.Params.ParamByName('Tipo').Clear;
      CDSEgresoCaja.Open;

      CDSEgresoCajaDetalles.Close;
      CDSEgresoCajaDetalles.Params.ParamByName('id').Clear;
      CDSEgresoCajaDetalles.Open;


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

      FrameMovValoresEgresos1.ceCaja.Text       :='';
      FrameMovValoresEgresos1.edMuestraCaja.Text:='';

    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('Transaccion no finalizada....!');
    end;
  end;


END;

procedure TFormEgresoCaja.CDSEgresoCajaNewRecord(DataSet: TDataSet);
begin
  inherited;
  //wwCDSEgresoCajaID_EGRESO.Value := IBGEg_caja.Increment(1);
  CDSEgresoCajaID_EGRESO.Value       := IbgEgreso.IncrementFD(1);
  CDSEgresoCajaSUCURSALVENTASetText(CDSEgresoCajaSUCURSALVENTA,IntToStr(SucursalPorDefecto));
  CDSEgresoCajaFECHA.AsDateTime      := Date;
  CDSEgresoCajaIMPORTE.AsFloat       := 0;
  CDSEgresoCajaUSUARIO.Value         := DMMain_FD.UsuarioActivo;
  CDSEgresoCajaFECHA_HORA.AsDateTime := Now;
  CDSEgresoCajaID_OBRA.Value         :=-1;
end;

procedure TFormEgresoCaja.CDSEgresoCajaSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - length(text)) + Text;
  CDSEgresoCajaNROCPBTE.Value := CDSEgresoCajaLETRA.Value +
                                 CDSEgresoCajaSUC.Value +
                                 CDSEgresoCajaNUMERO.Value;
end;

procedure TFormEgresoCaja.CDSEgresoCajaNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSEgresoCajaNROCPBTE.Value := CDSEgresoCajaLETRA.Value +
                                 CDSEgresoCajaSUC.Value +
                                 CDSEgresoCajaNUMERO.Value;
end;

procedure TFormEgresoCaja.CDSEgresoCajaSUCURSALVENTASetText( Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          RxDBESucursal.SetFocus;
          SysUtils.Abort;
        END;
    end;
end;


procedure TFormEgresoCaja.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''C'' and '+
                                            '(tipo_comprob=''EC'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSEgresoCajaSUCURSALVENTA.Value;


  FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
//      DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
      CDSEgresoCajaID_TIPOCOMPROBANTESetText(CDSEgresoCajaID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;

end;


procedure TFormEgresoCaja.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSEgresoCajaSUCURSALVENTA.Clear;
      CDSEgresoCajaMUESTRASUCURSAL.Clear;
      CDSEgresoCajaID_TIPOCOMPROBANTE.Clear;
      CDSEgresoCajaMUESTRACOMPROBANTE.Clear;
      CDSEgresoCajaLETRA.Clear;
      CDSEgresoCajaSUC.Clear;
      CDSEgresoCajaNUMERO.Clear;
    end;
end;

procedure TFormEgresoCaja.CambiarFechaExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if Not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      FormFecha.dbcCtaBco.Visible  :=False;
      FormFecha.dbcSucursal.Visible:=False;
      FormFecha.lbCta.Visible      :=False;
      FormFecha.Label1.Visible     :=False;
      FormFecha.fecha:=CDSEgresoCajaFECHA.AsDateTime;
      FormFecha.ShowModal;
      if FormFecha.ModalResult=mrOk then
        begin
          Modificar.Execute;
          CDSEgresoCajaFECHA.AsDateTime:=FormFecha.fecha;
          Confirma.Execute;
          Recuperar.Execute;
        end;
      FreeAndNil(FormFecha);
    end;
end;

procedure TFormEgresoCaja.CancelarExecute(Sender: TObject);
begin
 if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  sbEstado.SimpleText:='';
  FrameMovValoresEgresos1.CDSCheques.Cancel;
  FrameMovValoresEgresos1.CDSMovEfectivo.Cancel;
  FrameMovValoresEgresos1.CDSChe3.Cancel;
  FrameMovValoresEgresos1.CDSCajaMov.Cancel;

  CDSEgresoCaja.close;
  CDSEgresoCaja.Params.ParamByName('id').Clear;
  CDSEgresoCaja.Params.ParamByName('Tipo').Clear;
  CDSEgresoCaja.Open;

  CDSEgresoCajaDetalles.Close;
  CDSEgresoCajaDetalles.Params.ParamByName('id').Clear;
  CDSEgresoCajaDetalles.Open;

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

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  inherited;
  if TForm(Self.Owner).Name='FormCajaResumen' then
    Salir.Execute;

  pnCabecera.Enabled:=True;
  FrameMovValoresEgresos1.ceCaja.Text:='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
end;

procedure TFormEgresoCaja.ModificarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=False;
  WITH FrameMovValoresEgresos1 DO
    BEGIN
      TipoCpbte          := CDSEgresoCajaTIPOCPBTE.Value;
      TipoOperacion      := 'E';
      ClaseCpbte         := CDSEgresoCajaCLASECPBTE.Value;
      NroCpbte           := CDSEgresoCajaNROCPBTE.Value;
      FechaOperacion     := CDSEgresoCajaFECHA.AsDateTime;
      IdCpbte            := CDSEgresoCajaID_EGRESO.Value;
      Origen             := CDSEgresoCajaDETALLE.Value;

      ceCaja.Text        := CDSCajaMovID_CUENTA_CAJA.AsString;
      edMuestraCaja.Text := CDSCajaMovMUESTRACAJA.Value;
      Id_Caja            := CDSCajaMovID_CAJA.Value;
      id_cuenta_caja     := CDSCajaMovID_CUENTA_CAJA.AsInteger;
      FechaCaja          := CDSCajaMovFECHA_CAJA.AsDateTime;

    END;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.Open;
  CpbteNuevo:='N';
end;

procedure TFormEgresoCaja.DetallesCostosExecute(Sender: TObject);
var pos:Integer;
Valor:Real;
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if Not(Assigned(FormAsignacionCentroCosto)) then
        FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
      FormAsignacionCentroCosto.IdCpbte  :=CDSEgresoCajaID_EGRESO.Value;
      FormAsignacionCentroCosto.TipoCpbte:=CDSEgresoCajaTIPOCPBTE.Value;
      FormAsignacionCentroCosto.Tipo     :='E';
      FormAsignacionCentroCosto.Total    :=CDSEgresoCajaIMPORTE.AsFloat;

      dbgDetalle_2.DataSource.DataSet.First;
      while Not(dbgDetalle_2.DataSource.DataSet.Eof) do
        begin
          pos:=FormAsignacionCentroCosto.LstConcepto.IndexOf(dbgDetalle_2.DataSource.DataSet.FieldByName('codigogasto').AsString);
          if Pos<0 Then
            begin
              FormAsignacionCentroCosto.LstConcepto.Append(dbgDetalle_2.DataSource.DataSet.FieldByName('codigogasto').AsString);
              FormAsignacionCentroCosto.LstDetalles.Append(dbgDetalle_2.DataSource.DataSet.FieldByName('detalle').AsString);
              FormAsignacionCentroCosto.LstImportes.Append(AnsiReplaceText(dbgDetalle_2.DataSource.DataSet.FieldByName('importe').AsString,',',''));
             end
           else
             begin
               Valor:=StrToFloat(AnsiReplaceText(FormAsignacionCentroCosto.LstImportes[Pos],',','') )+
                      StrToFloat(AnsiReplaceText(dbgDetalle_2.DataSource.DataSet.FieldByName('Importe').AsString,',',''));
               FormAsignacionCentroCosto.LstImportes[Pos]:=FloatToStr(Valor);
             end;

//          FormAsignacionCentroCosto.LstConcepto.Append(DBGDetalle.GetFieldValue(2));
//          FormAsignacionCentroCosto.LstDetalles.Append(DBGDetalle.GetFieldValue(3) );
//          FormAsignacionCentroCosto.LstImportes.Append(DBGDetalle.GetFieldValue(4) );

          dbgDetalle_2.DataSource.DataSet.Next;
        end;


      FormAsignacionCentroCosto.ShowModal;

      dbgCtroCosto.Visible:=False;
      DetallesCostos.ImageIndex:=10;
      if DMMain_FD.AplicPorCtroCosto(CDSEgresoCajaID_EGRESO.AsInteger,
                                     CDSEgresoCajaTIPOCPBTE.AsString,
                                     'E')  then
        begin
          DetallesCostos.ImageIndex:=11;
          dbgCtroCosto.Visible:=True;
        end;
    end;
end;

procedure TFormEgresoCaja.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=DSBase.State=dsInsert;
//  pnValores.Enabled :=DSBase.State in [dsInsert,dsEdit];
  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsCheques.Enabled       := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsDebito.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresEgresos1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  dbgDetalle_2.ReadOnly                             := DSBase.State IN [dsBrowse];
  //dbgDetalle.Options ReadOnly                             := DSBase.State IN [dsBrowse];

  btImprimir.Enabled        := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  ImpresionCheques.Enabled  := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);

  btModificaFecha.Enabled  := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  BuscarPorDetalle.Enabled := DSBase.State IN [dsBrowse];
end;

procedure TFormEgresoCaja.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSEgresoCajaID_TIPOCOMPROBANTE.Clear;
      CDSEgresoCajaMUESTRACOMPROBANTE.Clear;
      CDSEgresoCajaLETRA.Clear;
      CDSEgresoCajaSUC.Clear;
      CDSEgresoCajaNUMERO.Clear;
    end;
end;



//procedure TFormEgresoCaja.FrameMovValoresEgresos1wwCDSCajaMovAfterPost(DataSet: TDataSet);
//var aux:Real;
//begin
//  inherited;
//  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
//  aux:= CDSEgresoCajaIMPORTE.AsFloat -( FrameMovValoresEgresos1.SumaValores );
//  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(Mascara,aux);
// //  wwCDSEgresoCajaIMPORTE.Value:=FrameMovValoresEgresos1.SumaValores;
//end;


procedure TFormEgresoCaja.GenerarXMLExecute(Sender: TObject);
var Cadena,PathEgresosCaja:String;
begin
  inherited;
  if Not(CDSEgresoCaja.IsEmpty)  Then
    begin
      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'ArchivosEgresos') then
         CreateDir(ExtractFilePath(ParamStr(0))+'ArchivosEgresos');

      PathEgresosCaja:=ExtractFilePath(ParamStr(0))+'ArchivosEgresos';

      Cadena:=PathEgresosCaja+'\'+'EC_SUC['+CDSEgresoCajaSUCURSALVENTA.AsString+']-'+CDSEgresoCajaNROCPBTE.Value+'-';
      begin
          // *******  a la carpeta comun de transferencia..... ***************
          CDSEgresoCaja.SaveToFile(Cadena+'Cab.XML');
          CDSEgresoCajaDetalles.SaveToFile(Cadena+'Det.XM_');
          FrameMovValoresEgresos1.CDSCajaMov.SaveToFile(Cadena+'CajaMov.XM_');
          FrameMovValoresEgresos1.CDSChe3.SaveToFile(Cadena+'Che3.XM_');
          FrameMovValoresEgresos1.CDSMovEfectivo.SaveToFile(Cadena+'MovEfectivo.XM_');
          FrameMovValoresEgresos1.CDSMovTCCompra.SaveToFile(Cadena+'MovTCredito.XM_');
          FrameMovValoresEgresos1.CDSTransBco.SaveToFile(Cadena+'TranBco.XM_');
          // *****************************************************************
          FrameMovValoresEgresos1.CDSCheques.SaveToFile(Cadena+'Cheques.XM_');
          FrameMovValoresEgresos1.CDSDebitos.SaveToFile(Cadena+'Debitos.XM_');
          FrameMovValoresEgresos1.CDSChe3.SaveToFile(Cadena+'Che3.XM_');
          FrameMovValoresEgresos1.CDSMovTCCompra.SaveToFile(Cadena+'MovTCCompra.XM_');
          FrameMovValoresEgresos1.CDSMovTCCuota.SaveToFile(Cadena+'MovTCCuota.XM_');

        end;
      // *****************************************************************
    end
  else
    ShowMessage('No Hay datos para exportar....');
  ShowMessage('Datos exportados....en '+PathEgresosCaja);


end;

procedure TFormEgresoCaja.GravarNumeroOperacionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroOperacion)) then
        FormNumeroOperacion    :=TFormNumeroOperacion.Create(Self);
      FormNumeroOperacion.Id   :=CDSEgresoCajaID_EGRESO.Value;
      FormNumeroOperacion.Tipo :=CDSEgresoCajaTIPOCPBTE.Value;
      if (CDSEgresocajaNUMERO_OPERACION.AsString='') or (length(CDSEgresoCajaNUMERO_OPERACION.AsString)<8) then
        FormNumeroOperacion.Anio:= Copy(DateToStr(CDSEgresoCajaFECHA.AsDateTime),7,4)
      else
        begin
          FormNumeroOperacion.Anio  := Copy(CDSEgresoCajaNUMERO_OPERACION.AsString,1,4);
          FormNumeroOperacion.Numero:= Copy(CDSEgresoCajaNUMERO_OPERACION.AsString,5,4);
        end;
      FormNumeroOperacion.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormEgresoCaja.CDSEgresoCajaID_TIPOCOMPROBANTESetText(
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
          FormEgresoCaja.RxCTipoCpbte.SetFocus;
        END;
      IF CDSEgresoCaja.State = dsInsert THEN
        UltimoComprobante;
    end;

end;

procedure TFormEgresoCaja.ImpresionChequesExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormImpresionChePropios)) then
    FormImpresionChePropios:=TFormImpresionChePropios.Create(self);
  FormImpresionChePropios.TipoCpbte   :='EC';
  FormImpresionChePropios.Id          :=CDSEgresoCajaID_EGRESO.Value;
  FormImpresionChePropios.PathReportes:=DMMain_FD.PathReportesCpbte;
  FormImpresionChePropios.ShowModal;
end;

procedure TFormEgresoCaja.ImprimirExecute(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;
  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSEgresoCajaID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSEgresoCajaSUCURSALVENTA.Value;
  QComprob.Open;

  frEgresos.PrintOptions.Printer:=PrNomCpbte;
  frEgresos.SelectPrinter;

  frEgresos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frEgresos.Variables['Mascara']  :=''''+Mascara+'''';
  frEgresos.Variables['sucursal'] :=''''+dbeSucursal.Text+'''';

  frEgresos.PrepareReport;
  frEgresos.ShowReport;
  CDSEmpresa.Close;
  QComprob.Close;
end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSEgresoCajaDetallesID.Value           :=IbgEgreDetalle.IncrementFD(1);
  CDSEgresoCajaDetallesID_CPBTE.Value     :=CDSEgresoCajaID_EGRESO.Value;
  CDSEgresoCajaDetallesFECHACPBTE.Value   :=CDSEgresoCajaFECHA.Value;
  CDSEgresoCajaDetallesFECHAGASTO.Value   :=CDSEgresoCajaFECHA.Value;
  CDSEgresoCajaDetallesTIPOCPBTE.Value    :=CDSEgresoCajaTIPOCPBTE.Value;
  CDSEgresoCajaDetallesCLASECPBTE.Value   :=CDSEgresoCajaCLASECPBTE.Value;
  CDSEgresoCajaDetallesNROCPBTE.Value     :=CDSEgresoCajaNROCPBTE.Value;
  CDSEgresoCajaDetallesSUCURSALVENTA.Value:=CDSEgresoCajaSUCURSALVENTA.Value;
  if CDSEgresoCajaDetalles.RecordCount<1 Then
    CDSEgresoCajaDetallesDETALLE.Value:=CDSEgresoCajaDETALLE.Value;
end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesRUBROGASTOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSEgresoCajaDetalles.State=dsBrowse Then
        CDSEgresoCajaDetalles.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarRubro(Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
   end;
end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesCODIGOGASTOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSEgresoCajaDetalles.State=dsBrowse Then CDSEgresoCajaDetalles.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarCta('***',Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
    end;
end;


procedure TFormEgresoCaja.dbgDetalle_2ColEnter(Sender: TObject);
begin
  inherited;
  if dbgDetalle_2.SelectedIndex<=1 then
    dbgDetalle_2.SelectedIndex:=2;
end;

procedure TFormEgresoCaja.dbgDetalle_2DblClick(Sender: TObject);
begin
  inherited;
 // if dbgDetalle_2.SelectedIndex=1 Then
//    BuscaRubros.Execute
//  else
    if dbgDetalle_2.SelectedIndex=2 Then
      BuscarCuentas.Execute;

end;

procedure TFormEgresoCaja.dbgDetalle_2EditButtonClick(Sender: TObject);
begin
  inherited;
//  if dbgDetalle_2.SelectedIndex=1 Then
//    BuscaRubros.Execute
//  else
    if dbgDetalle_2.SelectedIndex=2 Then
      BuscarCuentas.Execute;
end;

procedure TFormEgresoCaja.dbgDetalle_2Enter(Sender: TObject);
begin
  inherited;
  if dbgDetalle_2.SelectedIndex<=1 then
    dbgDetalle_2.SelectedIndex:=2;
end;

procedure TFormEgresoCaja.dbgDetalle_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (dbgDetalle_2.SelectedIndex = 4) THEN
        dbgDetalle_2.SelectedIndex := 3
      else
        if (dbgDetalle_2.SelectedIndex = 3) THEN
          dbgDetalle_2.SelectedIndex := 2
        else
          if (dbgDetalle_2.SelectedIndex = 2) THEN
            dbgDetalle_2.SelectedIndex := 1;
      key := 0;
    END;
end;

procedure TFormEgresoCaja.dbgDetalle_2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgDetalle_2.SelectedIndex<4 then
        dbgDetalle_2.SelectedIndex:=dbgDetalle_2.SelectedIndex+1
      else
        begin
          dbgDetalle_2.DataSource.DataSet.Append;
          dbgDetalle_2.SelectedIndex:=1;
        end;
    end
  else
    if Key=#10 Then
      begin
        Key:=#0;
//        if dbgDetalle_2.SelectedIndex=1 Then
//          BuscaRubros.Execute
//        else
          if dbgDetalle_2.SelectedIndex=2 Then
            BuscarCuentas.Execute;
      end;
end;

procedure TFormEgresoCaja.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TDBMemo)) and
    (not (ActiveControl is TDBGrid))
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    if btCancelar.Enabled Then
      Cancelar.Execute;

end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if DSBase.State=dsBrowse then
    begin
        SysUtils.Abort;
        CDSEgresoCajaDetalles.Cancel;
      end;
end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if CDSEgresoCajaDetalles.State in [dsInsert,dsEdit] Then
    if (CDSEgresoCajaDetallesRUBROGASTO.AsString='') Or
       (CDSEgresoCajaDetallesCODIGOGASTO.AsString='') Or
       (CDSEgresoCajaDetallesIMPORTE.AsFloat<=0) Then
      begin
        SysUtils.Abort;
        CDSEgresoCajaDetalles.Cancel;
      end;
end;

procedure TFormEgresoCaja.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frEgresos.DesignReport;
end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesAfterPost(DataSet: TDataSet);
begin
  inherited;
  sumar;
end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesIMPORTESetText(
  Sender: TField; const Text: String);
begin
  inherited;

  Sender.AsString:=FloatToStr(Moneda3D(' ',Mascara,StrToFloat(Text)));
end;

procedure TFormEgresoCaja.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  CDSEgresoCaja.close;
  CDSEgresoCaja.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSEgresoCaja.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSEgresoCaja.Open;

  CDSEgresoCajaDetalles.Close;
  CDSEgresoCajaDetalles.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSEgresoCajaDetalles.Open;

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
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Value    := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CalcularValores;

  pnPrincipal.Enabled :=True;
  pnValores.Enabled   :=True;

  // VERIFICO SI LA CAJA ESTA CERRADA
//  QCaja.Close;
//  QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
//  QCaja.Open;
  // se paso a una funcion en el DMMain_FD
  if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
    begin
      sbEstado.SimpleText:='Caja cerrada, no se puede modificar ni borrar';
      btModificar.Enabled     :=False;
      btBorrar.Enabled        :=False;
      RevisionValores.Enabled :=False;
    end
  else
    begin
      btModificar.Enabled     :=True;
      btBorrar.Enabled        :=True;
      RevisionValores.Enabled :=True;
    end;

  dbgCtroCosto.Visible:=False;
  DetallesCostos.ImageIndex:=10;
  if DMMain_FD.AplicPorCtroCosto(CDSEgresoCajaID_EGRESO.AsInteger,
                                     CDSEgresoCajaTIPOCPBTE.AsString,
                                     'E')  then
    begin
      DetallesCostos.ImageIndex:=11;
      dbgCtroCosto.Visible:=True;
    end;
  FormEgresoCaja.Caption:='Egresos de Caja -- '+CDSEgresoCajaFECHA_HORA.AsString+'//'+Copy(CDSEgresoCajaUSUARIO.Value,1,15);

  DatoNew:=''+DatoNew+'';
  if RevisionValores.Enabled then
    RevisionValores.Enabled := (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master');


end;

procedure TFormEgresoCaja.RevisionValoresExecute(Sender: TObject);
var Aux:String;
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    if (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master') then
      begin
        Aux:= FrameMovValoresEgresos1.lbTotalValores.Caption;
        Aux:= AnsiReplaceText(Aux,',','');
        if Not(Assigned(FormRevisionValoresEgresados)) then
          FormRevisionValoresEgresados:=TFormRevisionValoresEgresados.Create(self);
        FormRevisionValoresEgresados.Id_Comprobante  := DSBase.DataSet.FieldByName('Id_egreso').Value;
        FormRevisionValoresEgresados.TipoComprobante := DSBase.DataSet.FieldByName('TipoCpbte').Value;
        FormRevisionValoresEgresados.ClaseComprob    := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
        FormRevisionValoresEgresados.ImporteOriginal := StrToFloat(Aux);
        FormRevisionValoresEgresados.Id_Caja         := FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
        FormRevisionValoresEgresados.Id_Cta_Caja     := FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
        FormRevisionValoresEgresados.NroComprobante  := DSBase.DataSet.FieldByName('NroCpbte').Value;
        FormRevisionValoresEgresados.FechaOperacion  := DSBase.DataSet.FieldByName('Fecha').Value;
        FormRevisionValoresEgresados.Show;
      end;
end;

procedure TFormEgresoCaja.FormShow(Sender: TObject);
begin
  inherited;
  dbgDetalle_2.SelectedIndex:=2;
  btNuevo.SetFocus;
end;

procedure TFormEgresoCaja.FrameMovValoresEgresos1BitBtn7Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostEfectivoExecute(Sender);

end;

procedure TFormEgresoCaja.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
Var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
  aux:= CDSEgresoCajaIMPORTE.AsFloat -( FrameMovValoresEgresos1.SumaValores );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(Mascara,aux);
end;

procedure TFormEgresoCaja.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
Var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  aux:= CDSEgresoCajaIMPORTE.AsFloat -( FrameMovValoresEgresos1.SumaValores );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(Mascara,aux);

 // FrameMovValoresEgresos1.DSCajaMovStateChange(Sender);
 // dbgDetalle.Enabled:=FrameMovValoresEgresos1.DSCajaMov.DataSet.State=dsBrowse;

end;

procedure TFormEgresoCaja.FrameMovValoresEgresos1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
var aux:Real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovBeforeDelete(DataSet);
  aux:= CDSEgresoCajaIMPORTE.AsFloat -( FrameMovValoresEgresos1.SumaValores );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(Mascara,aux);
end;

procedure TFormEgresoCaja.PrevExecute(Sender: TObject);
begin
   if (DMMain_FD.ModificaCaja<>True) Then
    begin
      DatoOld:=DatoNew;
      QBrowse2.Close;
      QBrowse2.SQL.Clear;
      QBrowse2.SQL.Add('select max('+''+campo+''+') from  '+''+tabla+''+
      ' left join caja_mov c on c.id_comprobante='+''+campo+''+' and c.tipo_comprob=tipocpbte'+
      ' where '+''+campo+''+' < '+''+DatoNew+''+' and c.id_cuenta_caja='+IntToStr(CajaPorDefecto));
      QBrowse2.Open;
      if QBrowse2.Fields[0].AsString='' Then
        begin
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select max('+''+campo+''+') from  '+''+tabla+''+
          ' left join caja_mov c on c.id_comprobante='+''+campo+''+' and c.tipo_comprob=tipocpbte'+
          ' where '+''+campo+''+' > '+''+DatoNew+''+' and c.id_cuenta_caja='+IntToStr(CajaPorDefecto));
          QBrowse2.Open;
        end;

      DatoNew:=QBrowse2.Fields[0].AsString;
      Recuperar.Execute;
    end
  else
    inherited;

end;

procedure TFormEgresoCaja.NextExecute(Sender: TObject);
begin
   if (DMMain_FD.ModificaCaja<>True) Then
    begin
      DatoOld:=DatoNew;
      QBrowse2.Close;
      QBrowse2.SQL.Clear;
      QBrowse2.SQL.Add('select min('+''+campo+''+') from  '+''+tabla+''+
      ' left join caja_mov c on c.id_comprobante='+''+campo+''+' and c.tipo_comprob=tipocpbte'+
      ' where '+''+campo+''+' > '+''+DatoNew+''+' and c.id_cuenta_caja='+IntToStr(CajaPorDefecto));
      QBrowse2.Open;
      if QBrowse2.Fields[0].AsString='' Then
        begin
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select min('+''+campo+''+') from  '+''+tabla+''+
          ' left join caja_mov c on c.id_comprobante='+''+campo+''+' and c.tipo_comprob=tipocpbte'+
          ' where '+''+campo+''+' < '+''+DatoNew+''+' and c.id_cuenta_caja='+IntToStr(CajaPorDefecto));
          QBrowse2.Open;
        end;

      DatoNew:=QBrowse2.Fields[0].AsString;
      Recuperar.Execute;
    end
  else
    inherited;

end;

procedure TFormEgresoCaja.CDSEgresoCajaDetallesAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  sumar;
end;

END.
