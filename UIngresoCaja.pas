unit UIngresoCaja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, UABMBase, JvDBControls,
  Librerias, DB, DBClient, Provider, JvExMask, JvToolEdit, Mask,
  DBCtrls, JvLabel, ComCtrls, StdCtrls, Grids,
  Forms, UMovValoresIngreso, JvComponentBase, JvFormPlacement,
  ImgList, Controls,  ActnList, JvExControls, JvGradient,
  Buttons, ToolWin, ExtCtrls, Dialogs, DBXCommon, DBGrids,StrUtils,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, frxClass,
  frxDBSet, IBGenerator, Data.SqlExpr, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, frCoreClasses,
  Vcl.Menus;

type
  TFormIngresoCaja = class(TFormABMBase)
    DSPSucrusal: TDataSetProvider;
    DSPIngresoCaja: TDataSetProvider;
    pnValores: TPanel;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    BuscarSucursal: TAction;
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
    frIngresos: TfrxReport;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    ibgIdIngreso: TIBGenerator;
    frDBDMovCaja: TfrxDBDataset;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DSPIngresoCajaDetalle: TDataSetProvider;
    CDSIngresoCajaDetalle: TClientDataSet;
    DSIngresoCajaDetalle: TDataSource;
    IbgIngreDetalle: TIBGenerator;
    BuscarCuentas: TAction;
    BuscaRubros: TAction;
    frDBIngresosDetalles: TfrxDBDataset;
    frDBEfect: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBTx: TfrxDBDataset;
    frDBTC: TfrxDBDataset;
    frDBEmpresa: TfrxDBDataset;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    rDBIngresos: TfrxDBDataset;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel4: TJvLabel;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QIngresoCaja: TFDQuery;
    QIngresoCajaDetalle: TFDQuery;
    QIngresoCajaID_INGRESO: TIntegerField;
    QIngresoCajaTIPOCPBTE: TStringField;
    QIngresoCajaCLASECPBTE: TStringField;
    QIngresoCajaLETRA: TStringField;
    QIngresoCajaSUC: TStringField;
    QIngresoCajaNUMERO: TStringField;
    QIngresoCajaSUCURSALVENTA: TIntegerField;
    QIngresoCajaFECHA: TSQLTimeStampField;
    QIngresoCajaIMPORTE: TFloatField;
    QIngresoCajaDETALLE2: TStringField;
    QIngresoCajaNROCPBTE: TStringField;
    QIngresoCajaMUESTRASUCURSAL: TStringField;
    QIngresoCajaMUESTRACOMPROBANTE: TStringField;
    QIngresoCajaID_TIPOCOMPROBANTE: TIntegerField;
    CDSIngrCaja: TClientDataSet;
    CDSIngrCajaID_INGRESO: TIntegerField;
    CDSIngrCajaTIPOCPBTE: TStringField;
    CDSIngrCajaCLASECPBTE: TStringField;
    CDSIngrCajaLETRA: TStringField;
    CDSIngrCajaSUC: TStringField;
    CDSIngrCajaNUMERO: TStringField;
    CDSIngrCajaSUCURSALVENTA: TIntegerField;
    CDSIngrCajaFECHA: TSQLTimeStampField;
    CDSIngrCajaIMPORTE: TFloatField;
    CDSIngrCajaNROCPBTE: TStringField;
    CDSIngrCajaMUESTRASUCURSAL: TStringField;
    CDSIngrCajaMUESTRACOMPROBANTE: TStringField;
    CDSIngrCajaID_TIPOCOMPROBANTE: TIntegerField;
    QIngresoCajaDetalleID: TIntegerField;
    QIngresoCajaDetalleID_CPBTE: TIntegerField;
    QIngresoCajaDetalleTIPOCPBTE: TStringField;
    QIngresoCajaDetalleCLASECPBTE: TStringField;
    QIngresoCajaDetalleNROCPBTE: TStringField;
    QIngresoCajaDetalleFECHACPBTE: TSQLTimeStampField;
    QIngresoCajaDetalleFECHAINGRESO: TSQLTimeStampField;
    QIngresoCajaDetalleRUBROINGRESO: TStringField;
    QIngresoCajaDetalleCODIGOINGRESO: TStringField;
    QIngresoCajaDetalleDETALLE: TStringField;
    QIngresoCajaDetalleIMPORTE: TFloatField;
    QIngresoCajaDetalleSUCURSALVENTA: TIntegerField;
    QIngresoCajaDetalleMUESTRARUBRO: TStringField;
    QIngresoCajaDetalleMUESTRACUENTA: TStringField;
    CDSIngresoCajaDetalleID: TIntegerField;
    CDSIngresoCajaDetalleID_CPBTE: TIntegerField;
    CDSIngresoCajaDetalleTIPOCPBTE: TStringField;
    CDSIngresoCajaDetalleCLASECPBTE: TStringField;
    CDSIngresoCajaDetalleNROCPBTE: TStringField;
    CDSIngresoCajaDetalleFECHACPBTE: TSQLTimeStampField;
    CDSIngresoCajaDetalleFECHAINGRESO: TSQLTimeStampField;
    CDSIngresoCajaDetalleRUBROINGRESO: TStringField;
    CDSIngresoCajaDetalleCODIGOINGRESO: TStringField;
    CDSIngresoCajaDetalleDETALLE: TStringField;
    CDSIngresoCajaDetalleIMPORTE: TFloatField;
    CDSIngresoCajaDetalleSUCURSALVENTA: TIntegerField;
    CDSIngresoCajaDetalleMUESTRARUBRO: TStringField;
    CDSIngresoCajaDetalleMUESTRACUENTA: TStringField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubro: TClientDataSet;
    CDSBuscaRubroCODIGO: TStringField;
    CDSBuscaRubroDETALLE: TStringField;
    CDSBuscaCuenta: TClientDataSet;
    CDSBuscaCuentaCODIGO: TStringField;
    CDSBuscaCuentaCODIGO_RUBRO: TStringField;
    CDSBuscaCuentaDETALLE: TStringField;
    DSPBuscaCuenta: TDataSetProvider;
    QBuscaRubro: TFDQuery;
    QBuscaRubroCODIGO: TStringField;
    QBuscaRubroDETALLE: TStringField;
    QBuscaCuentas: TFDQuery;
    QBuscaCuentasCODIGO: TStringField;
    QBuscaCuentasCODIGO_RUBRO: TStringField;
    QBuscaCuentasDETALLE: TStringField;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprob: TClientDataSet;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    QBuscaComprob: TFDQuery;
    CDSIngrCajaDETALLE: TStringField;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    QComprobCAJA_DEFECTO: TIntegerField;
    DBText3: TDBText;
    btModificaFecha: TBitBtn;
    CambiarFecha: TAction;
    DetallesCostos: TAction;
    dbgCtroCosto: TDBGrid;
    spCentroDeCosto: TSpeedButton;
    DSCtroCosto: TDataSource;
    frDBCCosto: TfrxDBDataset;
    dbgDetalle_2: TDBGrid;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorCuenta: TComBuscador;
    ComBuscadorRubro: TComBuscador;
    BuscarPorDetalle: TAction;
    QIngresoCajaUSUARIO: TStringField;
    QIngresoCajaFECHA_HORA: TSQLTimeStampField;
    CDSIngrCajaUSUARIO: TStringField;
    CDSIngrCajaFECHA_HORA: TSQLTimeStampField;
    QIngresoCajaID_OBRA: TIntegerField;
    CDSIngrCajaID_OBRA: TIntegerField;
    AsignarObra: TAction;
    AsignarObra1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure pnValoresEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSIngrCajaNewRecord(DataSet: TDataSet);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSIngrCajaSUCSetText(Sender: TField;
      const Text: String);
    procedure CDSIngrCajaNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSIngrCajaSUCURSALVENTASetText(Sender: TField;
      const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSIngrCajaID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure BuscarCuentasExecute(Sender: TObject);
    procedure CDSIngresoCajaDetalleRUBROINGRESOSetText(Sender: TField;
      const Text: String);
    procedure CDSIngresoCajaDetalleCODIGOINGRESOSetText(Sender: TField;
      const Text: String);
    procedure CDSIngresoCajaDetalleNewRecord(DataSet: TDataSet);
    procedure CDSIngresoCajaDetalleBeforePost(DataSet: TDataSet);
    procedure CDSIngresoCajaDetalleAfterPost(DataSet: TDataSet);
    procedure CDSIngresoCajaDetalleAfterDelete(DataSet: TDataSet);
    procedure BuscaRubrosExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure CambiarFechaExecute(Sender: TObject);
    procedure DetallesCostosExecute(Sender: TObject);
    procedure dbgDetalle_2ColEnter(Sender: TObject);
    procedure dbgDetalle_2DblClick(Sender: TObject);
    procedure dbgDetalle_2EditButtonClick(Sender: TObject);
    procedure dbgDetalle_2Enter(Sender: TObject);
    procedure dbgDetalle_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalle_2KeyPress(Sender: TObject; var Key: Char);
    procedure BuscarPorDetalleExecute(Sender: TObject);
    procedure AsignarObra1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Mascara:String;
    CpbteNuevo:String;
    procedure sumar;

    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarCta(dato1, dato2: STRING): boolean;
    FUNCTION AsignarRubro(dato: STRING): boolean;
    { Public declarations }
  end;

var
  FormIngresoCaja: TFormIngresoCaja;

PROCEDURE UltimoComprobante;

implementation

uses UBuscadorCpbte, DMBuscadoresForm, UDMain_FD,
  DMStoreProcedureForm, UFecha, UAsignacionCtroCosto, UBuscadorComprobantes,
  UBusca_Det_Ing_Egre, UBuscadorCuentaGastos, UAsignaObra;

{$R *.DFM}

procedure TFormIngresoCaja.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frIngresos.DesignReport;
end;

procedure TFormIngresoCaja.sumar;
BEGIN
  CDSIngrCajaIMPORTE.AsFloat:=0;
  CDSIngresoCajaDetalle.First;
  while not(CDSIngresoCajaDetalle.Eof) Do
    begin
      CDSIngrCajaIMPORTE.AsFloat:=CDSIngrCajaIMPORTE.AsFloat+CDSIngresoCajaDetalleIMPORTE.AsFloat;
      CDSIngresoCajaDetalle.Next;
    end;
END;

FUNCTION TFormIngresoCaja.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSIngrCajaID_TIPOCOMPROBANTE.Clear;
      CDSIngrCajaMUESTRACOMPROBANTE.Clear;
      CDSIngrCajaMUESTRASUCURSAL.Value:=CDSSucursalDETALLE.Value;

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta= ''V'' and '+
                                                ' (tipo_comprob = ''IC'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;

     if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSIngrCajaID_TIPOCOMPROBANTESetText(CDSIngrCajaID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          if (FormIngresoCaja.dbeDetalle.Enabled) and (FormIngresoCaja.dbeDetalle.Visible) then
            FormIngresoCaja.dbeDetalle.SetFocus;
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
                  CDSIngrCajaID_TIPOCOMPROBANTESetText(CDSIngrCajaID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                  FormIngresoCaja.dbeDetalle.SetFocus;
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
                      CDSIngrCajaID_TIPOCOMPROBANTESetText(CDSIngrCajaID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                      FormIngresoCaja.dbeDetalle.SetFocus;
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
      CDSIngrCajaMUESTRASUCURSAL.Value := '';
    END;
   CDSSucursal.Close;
END;

FUNCTION TFormIngresoCaja.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSIngrCajaSUCURSALVENTA.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      //*****************************************************************************
      // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
      //*****************************************************************************
      if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
        FormIngresoCaja.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
      else
        FormIngresoCaja.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
      //*****************************************************************************
      //*****************************************************************************
      CDSIngrCajaMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSIngrCajaLETRA.Value              := QComprobLETRA.Value;
      CDSIngrCajaTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSIngrCajaCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSIngrCajaMUESTRACOMPROBANTE.Value := '';
      CDSIngrCajaLETRA.Value              := '';
      CDSIngrCajaTIPOCPBTE.Value          := '';
      CDSIngrCajaCLASECPBTE.Value         := '';
    END;
  QComprob.Close;
END;

FUNCTION TFormIngresoCaja.AsignarCta(Dato1, Dato2: STRING): Boolean;
BEGIN
  DMMain_FD.CDSCtaGasto.Close;
  DMMain_FD.CDSCtaGasto.Params.ParamByName('rubro').Value := dato1;
  DMMain_FD.CDSCtaGasto.params.ParamByName('codigo').Value := Dato2;
  DMMain_FD.CDSCtaGasto.Open;
  IF NOT ( DMMain_FD.CDSCtaGasto.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSIngresoCajaDetalleRUBROINGRESO.Text   := DMMain_FD.CDSCtaGastoCODIGO_RUBRO.AsString;
      CDSIngresoCajaDetalleMUESTRACUENTA.Value := DMMain_FD.CDSCtaGastoDETALLE.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSIngresoCajaDetalleRUBROINGRESO.Text   := '';
      CDSIngresoCajaDetalleMUESTRACUENTA.Value := '';
    END;
   DMMain_FD.CDSCtaGasto.Close;
END;

procedure TFormIngresoCaja.AsignarObra1Click(Sender: TObject);
begin
 if Not(Assigned(FormAsignaObras)) then
    FormAsignaObras:=TFormAsignaObras.Create(self);
  FormAsignaObras.Tipo      := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormAsignaObras.id_origen := DSBase.DataSet.FieldByName('ID_INGRESO').Value;
  FormAsignaObras.Id_Obra   := DSBase.DataSet.FieldByName('ID_OBRA').Value;
  FormAsignaObras.ShowModal;
  DatoNew:=DSBase.DataSet.FieldByName('ID_INGRESO').AsString;
  Recuperar.Execute;
  if (Assigned(FormAsignaObras)) then
    FreeAndNil(FormAsignaObras);
end;

FUNCTION TFormIngresoCaja.AsignarRubro(Dato: STRING): Boolean;
BEGIN
  DMMain_FD.CDSRubroGasto.Close;
  DMMain_FD.CDSRubroGasto.Params.ParamByName('codigo').AsString := dato;
  DMMain_FD.CDSRubroGasto.Open;
  IF NOT (DMMain_FD.CDSRubroGasto.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSIngresoCajaDetalleMUESTRARUBRO.Value:=DMMain_FD.CDSRubroGastoDETALLE.Value;
     // CDSEgresoCajaDetallesCODIGOGASTO.Clear;
     // CDSEgresoCajaDetallesMUESTRACUENTA.Clear;
    END
  ELSE
    BEGIN
      Result := False;
      CDSIngresoCajaDetalleMUESTRARUBRO.Value:='';
    END;
  DMMain_FD.CDSRubroGasto.Close;
END;


PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormIngresoCaja,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSIngrCajaLETRA.AsString <> '') AND (CDSIngrCajaCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSIngrCajaLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSIngrCajaSUCURSALVENTA.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSIngrCajaCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSIngrCajaTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSIngrCajaSUCSetText(CDSIngrCajaSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSIngrCajaNUMEROSetText(CDSIngrCajaNUMERO, IntToStr(Numero));
          CDSIngrCajaTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSIngrCajaCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSIngrCajaNROCPBTE.AsString := CDSIngrCajaLETRA.AsString +
                                      CDSIngrCajaSUC.AsString +
                                      CDSIngrCajaNUMERO.AsString;
    END;

END;

procedure TFormIngresoCaja.FormCreate(Sender: TObject);
begin
  INHERITED;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=True;
  //FrameMovValoresIngreso1.tsTCredito.TabVisible := True;
 // FrameMovValoresIngreso1.tsTransf.TabVisible:=False;

  FrameMovValoresIngreso1.tsCheques.TabVisible:=False;
  FrameMovValoresIngreso1.tsDebito.TabVisible :=False;
  FrameMovValoresIngreso1.tsCtaCte.TabVisible :=False;

  DSBase.DataSet:=CDSIngrCaja;
  AddClientDataSet(CDSIngrCaja,DSPIngresoCaja);
  AddClientDataSet(CDSIngresoCajaDetalle,DSPIngresoCajaDetalle);

  AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);
  AddClientDataSet(FrameMovValoresIngreso1.CDSMovTCredito,FrameMovValoresIngreso1.DSPMovTCredito);
  AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);

  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Open;
  FrameMovValoresIngreso1.QCajaCab.Open;
  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;
  FrameMovValoresIngreso1.CDSCtasBancarias.Open;

  CDSIngrCaja.Open;
  CDSIngresoCajaDetalle.Open;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='EGRESOS';
//  DMMain_FD.QOpciones.Open;
//
//  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;

  TFloatField(CDSIngrCajaIMPORTE).EditFormat    := DMMain_FD.MascaraEgresos;
  TFloatField(CDSIngrCajaIMPORTE).DisplayFormat := DMMain_FD.MascaraEgresos;
//  DMMain_FD.QOpciones.Close;
  pnImporte.BevelInner:=bvNone;
  pnImporte.BevelOuter:=bvNone;
  FrameMovValoresIngreso1.ceCaja.Enabled        := DMMain_FD.ModificaCaja;
  Tabla:='Ing_caja';
  Campo:='id_ingreso';
end;

procedure TFormIngresoCaja.pnValoresEnter(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsInsert) or (DSBase.State=dsEdit) Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
     BEGIN
       pnCabecera.Enabled :=False;
       pnValores.Enabled  :=True;
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
           TipoCpbte      := CDSIngrCajaTIPOCPBTE.Value;
           TipoOperacion  := 'I';
           ClaseCpbte     := CDSIngrCajaCLASECPBTE.Value;
           NroCpbte       := CDSIngrCajaNROCPBTE.Value;
           FechaOperacion := CDSIngrCajaFECHA.AsDateTime;
           IdCpbte        := CDSIngrCajaID_INGRESO.Value;
           Origen         := CDSIngrCajaDETALLE.Value;
         END;
      END
   else
     begin
       ShowMessage('Faltan datos en el encabezado...');
       pnCabecera.Enabled:=True;
    //  pnValores.Enabled:=false;
      dbeFecha.SetFocus;
    end;

end;

procedure TFormIngresoCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormIngresoCaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormIngresoCaja:=nil;
end;

procedure TFormIngresoCaja.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
  if CDSIngresoCajaDetalle.State in [dsInsert,dsEdit] Then
    CDSIngresoCajaDetalle.Post;

  if CDSIngresoCajaDetalle.RecordCount<=0 Then
    Raise Exception.Create('No se detallaron las cuentas que de ingresos .....');

  if FrameMovValoresIngreso1.SumaValores<=0 Then
    begin
      WITH FrameMovValoresIngreso1 DO
        begin
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
          TipoCpbte      := CDSIngrCajaTIPOCPBTE.Value;
          TipoOperacion  := 'I';
          ClaseCpbte     := CDSIngrCajaCLASECPBTE.Value;
          NroCpbte       := CDSIngrCajaNROCPBTE.Value;
          FechaOperacion := CDSIngrCajaFECHA.AsDateTime;
          IdCpbte        := CDSIngrCajaID_INGRESO.Value;
          Origen         := CDSIngrCajaDetalle.Value;

          CDSCajaMov.Insert;
          CDSCajaMovHABER.AsFloat        := 0;
          CDSCajaMovDEBE.AsFloat         := CDSIngrCajaIMPORTE.AsFloat;
          CDSFormaPagoEfec.Close;
          CDSFormaPagoEfec.Open;
          CDSFormaPagoEfec.First;
          CDSCajaMovID_TPAGO.Value       := 1;
          CDSCajaMovID_FPAGO.Value       := CDSFormaPagoEfecID_FPAGO.Value;
          CDSCajaMovUNIDADES.AsFloat     := CDSIngrCajaIMPORTE.AsFloat;
          CDSCajaMovCOTIZACION.Value     := CDSFormaPagoEfecCOTIZACION.Value;
          CDSCajaMovCLASE_COMPROB.Value  := ClaseCpbte;
          CDSCajaMovID_CUENTA_CAJA.Value := id_Cuenta_caja;
          CDSCajaMovMONEDA.Value         := CDSFormaPagoEfecMONEDA.Value;
          CDSFormaPagoEfec.Close;
          CDSMovEfectivo.Insert;
          CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
          CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
          CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
          CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
          CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
          CDSMovEfectivoUNIDADES.AsFloat     := CDSCajaMovUNIDADES.AsFloat;
          CDSMovEfectivoIMPORTE.AsFloat      := CDSIngrCajaIMPORTE.AsFloat;
          CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
          CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
          CDSMovEfectivo.Post;
          QCajaCab.Close;
        END;
    end;

  if CDSIngresoCajaDetalle.State in [dsInsert,dsEdit] Then
    CDSIngresoCajaDetalle.Post;
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
     IF Trunc(CDSIngrCajaIMPORTE.AsFloat*100) <> 0 THEN
        BEGIN
          IF Moneda3D(' ',Mascara,FrameMovValoresIngreso1.SumaValores) = Moneda3D(' ',Mascara,CDSIngrCajaIMPORTE.AsFLoat) THEN
            BEGIN
              DatoNew   :=IntToStr(CDSIngrCajaID_INGRESO.Value);
              TipoCpbte :=CDSIngrCajaTIPOCPBTE.Value;
              CDSIngrCajaNROCPBTE.Value := CDSIngrCajaLETRA.Value +
                                           CDSIngrCajaSUC.Value +
                                           CDSIngrCajaNUMERO.Value;
              If CDSIngrCaja.State>dsBrowse Then
                CDSIngrCaja.Post;
              INHERITED;
              Recuperar.Execute;
              if Not(DSBase.DataSet.IsEmpty) and (SeguimientoCtroCosto=True) and (CpbteNuevo='S') then
                 DetallesCostos.Execute;
               if Imprime='S' Then
                IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes THEN Imprimir.Execute;
              IF (FormIngresoCaja.Visible=True) and (btNuevo.Enabled = True) THEN
                btNuevo.SetFocus;
            END
          ELSE
            ShowMessage('Hay diferencias entre lo percibido y el importe del Ingreso de caja....');
        END
      ELSE
        ShowMessage('No se puede cerrar Comprobante con importe 0(cero)....')
    ELSE
      ShowMessage('Faltan datos en la cabecera....');
   IF (FormIngresoCaja.Visible=True) and (btNuevo.Enabled = True) THEN
       btNuevo.SetFocus;

end;

procedure TFormIngresoCaja.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSIngrCajaSucursalVentaSetText(CDSIngrCajaSucursalVenta, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormIngresoCaja.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1:='IC';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 8;
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

end;

procedure TFormIngresoCaja.BuscarPorDetalleExecute(Sender: TObject);
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
          TipoCpbte:='IC';
          DatoNew:=IntToStr(FormBusdadorDetIngEgr.id);
          Recuperar.Execute;
        end;
    end;
end;

procedure TFormIngresoCaja.BorrarExecute(Sender: TObject);
var Detalle:string;
begin
 // inherited;
  //inherited;
  DMStoreProcedure.QControlFondos.Close;
  DMStoreProcedure.QControlFondos.ParamByName('id').Value  :=CDSIngrCajaID_INGRESO.Value;
  DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:='IC';
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
        Detalle:=  'Borrado Ingresos: '+
                   CDSIngrCajaDETALLE.Value+'-'+
                   CDSIngrCajaCLASECPBTE.Value+'-'+
                   CDSIngrCajaLETRA.Value+'-'+
                   CDSIngrCajaSUC.Value+'-'+
                   CDSIngrCajaNUMERO.Value+'-'+
                   ' Importe: '+
                   FormatFloat('0.00',CDSIngrCajaIMPORTE.AsFloat);

        DMMain_FD.LogFileFD(0,6,Detalle,'ING_CAJA');

        {
        DMStoreProcedure.spGravarLogDBX.Close;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 6;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Borrado Ingresos: '+
                                                             CDSIngrCajaDETALLE.Value+'-'+
                                                             CDSIngrCajaCLASECPBTE.Value+'-'+
                                                             CDSIngrCajaLETRA.Value+'-'+
                                                             CDSIngrCajaSUC.Value+'-'+
                                                             CDSIngrCajaNUMERO.Value+'-'+
                                                             ' Importe: '+
                                                             FormatFloat('0.00',CDSIngrCajaIMPORTE.AsFloat);
        DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='ING_CAJA';
        DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
        DMStoreProcedure.spGravarLogDBX.ExecProc;
        DMStoreProcedure.spGravarLogDBX.Close;
        }
          // ******************************************
        CDSIngrCaja.Delete;
        CDSIngrCaja.ApplyUpdates(0);
        CDSIngrCaja.EmptyDataSet;
        DMMain_FD.fdcGestion.Commit;
        FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;

        CDSIngrCaja.close;
        CDSIngrCaja.Params.ParamByName('id').Clear;
        CDSIngrCaja.Params.ParamByName('Tipo').Clear;
        CDSIngrCaja.Open;

        CDSIngresoCajaDetalle.Close;
        CDSIngresoCajaDetalle.Params.ParamByName('id').Clear;
        CDSIngresoCajaDetalle.Open;

        FrameMovValoresIngreso1.CDSCajaMov.Close;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Open;

        FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
        FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
        FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;

        FrameMovValoresIngreso1.CDSChe3.Close;
        FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSChe3.Open;

        FrameMovValoresIngreso1.CDSMovEfectivo.Close;
        FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovEfectivo.Open;

        FrameMovValoresIngreso1.CDSMovTCredito.Close;
        FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovTCredito.Open;

        FrameMovValoresIngreso1.CDSTransBco.Close;
        FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSTransBco.Open;

        FrameMovValoresIngreso1.ceCaja.Text:='';
        FrameMovValoresIngreso1.edMuestraCaja.Text:='';
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transaccion no finalizada....!');
      end;
    end;
end;

procedure TFormIngresoCaja.CDSIngrCajaNewRecord(DataSet: TDataSet);
begin
  inherited;
  //wwCDSEgresoCajaID_EGRESO.Value := IBGEg_caja.Increment(1);
  CDSIngrCajaID_INGRESO.Value      := ibgIdIngreso.IncrementFD(1);
  CDSIngrCajaFECHA.AsDateTime      := Date;
  CDSIngrCajaIMPORTE.AsFloat       := 0;
  CDSIngrCajaSUCURSALVENTASetText(CDSIngrCajaSUCURSALVENTA,IntToStr(sucursalpordefecto));
  CDSIngrCajaFECHA_HORA.AsDateTime := now;
  CDSIngrCajaUSUARIO.Value         := DMMain_FD.UsuarioActivo;
  CDSIngrCajaID_OBRA.Value         := -1;

end;

procedure TFormIngresoCaja.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''V'' and '+
                                            '(tipo_comprob=''IC'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSIngrCajaSUCURSALVENTA.Value;


  FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
//      DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
      CDSIngrCajaID_TIPOCOMPROBANTESetText(CDSIngrCajaID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;

end;

procedure TFormIngresoCaja.CDSIngrCajaSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - length(text)) + Text;
  CDSIngrCajaNROCPBTE.Value := CDSIngrCajaLETRA.Value +
                               CDSIngrCajaSUC.Value +
                               CDSIngrCajaNUMERO.Value;
end;

procedure TFormIngresoCaja.CDSIngrCajaNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSIngrCajaNROCPBTE.Value := CDSIngrCajaLETRA.Value +
                               CDSIngrCajaSUC.Value +
                               CDSIngrCajaNUMERO.Value;

end;

procedure TFormIngresoCaja.CDSIngrCajaSUCURSALVENTASetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          SysUtils.Abort;
        END;
    end;

end;

procedure TFormIngresoCaja.AgregarExecute(Sender: TObject);
begin
  sbEstado.SimpleText:='';
  CDSIngrCaja.close;
  CDSIngrCaja.Params.ParamByName('id').Clear;
  CDSIngrCaja.Params.ParamByName('Tipo').Clear;
  CDSIngrCaja.Open;

  CDSIngresoCajaDetalle.Close;
  CDSIngresoCajaDetalle.Params.ParamByName('id').Clear;
  CDSIngresoCajaDetalle.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;


  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  CpbteNuevo:='S';
  inherited;
  pnCabecera.Enabled:=True;
  dbeFecha.SetFocus;
end;

procedure TFormIngresoCaja.CambiarFechaExecute(Sender: TObject);
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
      FormFecha.fecha:=CDSIngrCajaFECHA.AsDateTime;
      FormFecha.ShowModal;
      if FormFecha.ModalResult=mrOk then
        begin
          Modificar.Execute;
          CDSIngrCajaFECHA.AsDateTime:=FormFecha.fecha;

          Confirma.Execute;
          Recuperar.Execute;
        end;
      FreeAndNil(FormFecha);
    end;
end;

procedure TFormIngresoCaja.CancelarExecute(Sender: TObject);
begin
 if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  sbEstado.SimpleText:='';
  FrameMovValoresIngreso1.QTc.Cancel;
  FrameMovValoresIngreso1.CDSMovEfectivo.Cancel;
  FrameMovValoresIngreso1.CDSMovTCredito.Cancel;
  FrameMovValoresIngreso1.CDSChe3.Cancel;
  FrameMovValoresIngreso1.CDSCajaMov.Cancel;

  CDSIngrCaja.close;
  CDSIngrCaja.Params.ParamByName('id').Clear;
  CDSIngrCaja.Params.ParamByName('Tipo').Clear;
  CDSIngrCaja.Open;

  CDSIngresoCajaDetalle.Close;
  CDSIngresoCajaDetalle.Params.ParamByName('id').Clear;
  CDSIngresoCajaDetalle.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;


  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

  inherited;
  pnCabecera.Enabled:=True;
  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
end;

procedure TFormIngresoCaja.ModificarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=False;
  CpbteNuevo:='N';

  WITH FrameMovValoresIngreso1 DO
  BEGIN
    TipoCpbte      := CDSIngrCajaTIPOCPBTE.Value;
    TipoOperacion  := 'I';
    ClaseCpbte     := CDSIngrCajaCLASECPBTE.Value;
    NroCpbte       := CDSIngrCajaNROCPBTE.Value;
    FechaOperacion := CDSIngrCajaFECHA.AsDateTime;
    IdCpbte        := CDSIngrCajaID_INGRESO.Value;
    Origen         := CDSIngrCajaDETALLE.Text;

    ceCaja.Text        := CDSCajaMovID_CUENTA_CAJA.AsString;
    edMuestraCaja.Text := CDSCajaMovMUESTRACAJA.Value;
    Id_Caja            := CDSCajaMovID_CAJA.Value;
    id_cuenta_caja     := CDSCajaMovID_CUENTA_CAJA.AsInteger;
    FechaCaja          := CDSCajaMovFECHA_CAJA.AsDateTime;

  END;
end;


procedure TFormIngresoCaja.DetallesCostosExecute(Sender: TObject);
var pos:Integer;
Valor:Real;
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if Not(Assigned(FormAsignacionCentroCosto)) then
        FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
      FormAsignacionCentroCosto.IdCpbte  :=CDSIngrCajaID_INGRESO.Value;
      FormAsignacionCentroCosto.TipoCpbte:=CDSIngrCajaTIPOCPBTE.Value;
      FormAsignacionCentroCosto.Tipo     :='I';
      FormAsignacionCentroCosto.Total    :=CDSIngrCajaIMPORTE.AsFloat;

      dbgDetalle_2.DataSource.DataSet.First;
      while Not(dbgDetalle_2.DataSource.DataSet.Eof) do
        begin
          pos:=FormAsignacionCentroCosto.LstConcepto.IndexOf(dbgDetalle_2.DataSource.DataSet.FieldByName('codigoingreso').AsString);
          if Pos<0 Then
            begin
              FormAsignacionCentroCosto.LstConcepto.Append(dbgDetalle_2.DataSource.DataSet.FieldByName('codigoingreso').AsString);
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

      DetallesCostos.ImageIndex:=10;
      if  DMMain_FD.AplicPorCtroCosto(CDSIngrCajaID_INGRESO.AsInteger,
                                     CDSIngrCajaTIPOCPBTE.AsString,
                                     'I')  then
        DetallesCostos.ImageIndex:=11;

    end;
end;

procedure TFormIngresoCaja.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=DSBase.State=dsInsert;
  pnValores.Enabled :=DSBase.State in [dsInsert,dsEdit];
  FrameMovValoresIngreso1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  FrameMovValoresIngreso1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTCredito.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  Imprimir.Enabled         := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  btModificaFecha.Enabled  := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  BuscarPorDetalle.Enabled := DSBase.State IN [dsBrowse];
end;

procedure TFormIngresoCaja.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSIngrCajaSUCURSALVENTA.Clear;
      CDSIngrCajaMUESTRASUCURSAL.Clear;
      CDSIngrCajaID_TIPOCOMPROBANTE.Clear;
      CDSIngrCajaMUESTRACOMPROBANTE.Clear;
      CDSIngrCajaLETRA.Clear;
      CDSIngrCajaSUC.Clear;
      CDSIngrCajaNUMERO.Clear;
    end;
end;

procedure TFormIngresoCaja.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSIngrCajaID_TIPOCOMPROBANTE.Clear;
      CDSIngrCajaMUESTRACOMPROBANTE.Clear;
      CDSIngrCajaLETRA.Clear;
      CDSIngrCajaSUC.Clear;
      CDSIngrCajaNUMERO.Clear;
    end;
end;

procedure TFormIngresoCaja.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
Var aux:Extended;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  aux:= CDSIngrCajaIMPORTE.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(Mascara,aux);

end;

procedure TFormIngresoCaja.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux:Extended;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
  aux:= CDSIngrCajaIMPORTE.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(Mascara,aux);

  //wwCDSIngresoCajaIMPORTE.Value:=FrameMovValoresIngreso1.SumaValores;

end;

procedure TFormIngresoCaja.FrameMovValoresIngreso1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
var aux:Extended;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovBeforeDelete(DataSet);
  aux:= CDSIngrCajaIMPORTE.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(Mascara,aux);

end;

procedure TFormIngresoCaja.CDSIngrCajaID_TIPOCOMPROBANTESetText(
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
          FormIngresoCaja.RxCTipoCpbte.SetFocus;
        END;
      IF CDSIngrCaja.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TFormIngresoCaja.ImprimirExecute(Sender: TObject);
begin
  inherited;
  QComprob.Close;
  QComprob.ParamByName('id').Value :=CDSIngrCajaID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:=CDSIngrCajaSUCURSALVENTA.Value;
  QComprob.Open;
  CDSEmpresa.Open;

  frIngresos.PrintOptions.Printer:=PrNomCpbte;
  frIngresos.SelectPrinter;

  frIngresos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frIngresos.Variables['Mascara']  :=''''+Mascara+'''';
  frIngresos.Variables['sucursal'] :=''''+dbeSucursal.Text+'''';

  frIngresos.PrepareReport;
  frIngresos.ShowReport;
  CDSEmpresa.Close;
  QComprob.Close;
end;

procedure TFormIngresoCaja.FormShow(Sender: TObject);
begin
  inherited;
 
  btNuevo.SetFocus;
end;

procedure TFormIngresoCaja.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  CDSIngrCaja.close;
  CDSIngrCaja.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSIngrCaja.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSIngrCaja.Open;

  CDSIngresoCajaDetalle.Close;
  CDSIngresoCajaDetalle.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSIngresoCajaDetalle.Open;


  FrameMovValoresIngreso1.TipoOperacion:='I';

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresIngreso1.id_Cuenta_caja    :=FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresIngreso1.FechaCaja         :=FrameMovValoresIngreso1.CDSCajaMovFECHA_CAJA.AsDateTime;


  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value    := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSTransBco.Open;


  FrameMovValoresIngreso1.CalcularValores;

  pnPrincipal.Enabled:=True;
  pnValores.Enabled:=True;

  // VERIFICO SI LA CAJA ESTA CERRADA
  QCaja.Close;
  QCaja.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  QCaja.Open;


  dbgCtroCosto.Visible:=False;
  DetallesCostos.ImageIndex:=10;
  if DMMain_FD.AplicPorCtroCosto(CDSIngrCajaID_INGRESO.AsInteger,
                                 CDSIngrCajaTIPOCPBTE.AsString,
                                 'I') then
    begin
      DetallesCostos.ImageIndex:=11;
      dbgCtroCosto.Visible:=True;
    end;



  if QCajaESTADO.Value=1 Then
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
  QCaja.Close;
  DatoNew:=''+DatoNew+'';

end;

procedure TFormIngresoCaja.NextExecute(Sender: TObject);
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

procedure TFormIngresoCaja.PrevExecute(Sender: TObject);
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

procedure TFormIngresoCaja.BuscarCuentasExecute(Sender: TObject);
begin
  inherited;
//  CDSBuscaCuenta.Close;
//  CDSBuscaCuenta.Params.ParamByName('rubro').AsString := CDSIngresoCajaDetalleRUBROINGRESO.AsString;
//  CDSBuscaCuenta.Open;
//  comBuscadorCuenta.Execute;
//  if comBuscadorCuenta.rOk Then
//    CDSIngresoCajaDetalleCODIGOINGRESOSetText(CDSIngresoCajaDetalleCODIGOINGRESO, comBuscadorCuenta.Id);
//  CDSBuscaCuenta.Close;
 if Not(Assigned(FormBuscadorCuentaGastos)) Then
    FormBuscadorCuentaGastos:=TFormBuscadorCuentaGastos.Create(self);
  FormBuscadorCuentaGastos.ShowModal;
  if FormBuscadorCuentaGastos.ModalResult=mrOk then
    begin
      CDSIngresoCajaDetalleRUBROINGRESO.Text  := FormBuscadorCuentaGastos.Rubro;
      CDSIngresoCajaDetalleCODIGOINGRESO.Text := FormBuscadorCuentaGastos.Cuenta;
      dbgDetalle_2.SelectedIndex:=dbgDetalle_2.SelectedIndex+1;
    end;

end;

procedure TFormIngresoCaja.CDSIngresoCajaDetalleRUBROINGRESOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSIngresoCajaDetalle.State=dsBrowse Then CDSIngresoCajaDetalle.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarRubro(Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
   end;

end;

procedure TFormIngresoCaja.CDSIngresoCajaDetalleCODIGOINGRESOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSIngresoCajaDetalle.State=dsBrowse Then CDSIngresoCajaDetalle.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarCta('***',Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
    end;

end;

procedure TFormIngresoCaja.CDSIngresoCajaDetalleNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSIngresoCajaDetalleID.Value           := IbgIngreDetalle.IncrementFD(1);
  CDSIngresoCajaDetalleID_CPBTE.Value     := CDSIngrCajaID_INGRESO.Value;
  CDSIngresoCajaDetalleFECHACPBTE.Value   := CDSIngrCajaFECHA.Value;
  CDSIngresoCajaDetalleFECHAINGRESO.Value := CDSIngrCajaFECHA.Value;
  CDSIngresoCajaDetalleTIPOCPBTE.Value    := CDSIngrCajaTIPOCPBTE.Value;
  CDSIngresoCajaDetalleCLASECPBTE.Value   := CDSIngrCajaCLASECPBTE.Value;
  CDSIngresoCajaDetalleNROCPBTE.Value     := CDSIngrCajaNROCPBTE.Value;
  CDSIngresoCajaDetalleSUCURSALVENTA.Value:= CDSIngrCajaSUCURSALVENTA.Value;
  if CDSIngresoCajaDetalle.RecordCount<1 Then
    CDSIngresoCajaDetalleDETALLE.Value := CDSIngrCajaDETALLE.Value;
end;

procedure TFormIngresoCaja.dbgDetalle_2ColEnter(Sender: TObject);
begin
  inherited;
  if dbgDetalle_2.SelectedIndex<=1 then
    dbgDetalle_2.SelectedIndex:=2;
end;

procedure TFormIngresoCaja.dbgDetalle_2DblClick(Sender: TObject);
begin
  inherited;
//  if dbgDetalle_2.SelectedIndex=1 Then
//    BuscaRubros.Execute
//  else
    if dbgDetalle_2.SelectedIndex=2 Then
      BuscarCuentas.Execute;
end;

procedure TFormIngresoCaja.dbgDetalle_2EditButtonClick(Sender: TObject);
begin
  inherited;
//  if dbgDetalle_2.SelectedIndex=1 Then
//    BuscaRubros.Execute
//  else
    if dbgDetalle_2.SelectedIndex=2 Then
      BuscarCuentas.Execute;
end;

procedure TFormIngresoCaja.dbgDetalle_2Enter(Sender: TObject);
begin
  inherited;
  if dbgDetalle_2.SelectedIndex<=1 then
    dbgDetalle_2.SelectedIndex:=2;
end;

procedure TFormIngresoCaja.dbgDetalle_2KeyDown(Sender: TObject; var Key: Word;
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
            dbgDetalle_2.SelectedIndex := 2;
      key := 0;
    END;
end;

procedure TFormIngresoCaja.dbgDetalle_2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFormIngresoCaja.CDSIngresoCajaDetalleBeforePost(
  DataSet: TDataSet);
begin
  inherited;
 if CDSIngresoCajaDetalle.State in [dsInsert,dsEdit] Then
    if (CDSIngresoCajaDetalleRUBROINGRESO.AsString='') Or
       (CDSIngresoCajaDetalleCODIGOINGRESO.AsString='') Or
       (CDSIngresoCajaDetalleIMPORTE.AsFloat<=0) Then
      begin
        SysUtils.Abort;
        CDSIngresoCajaDetalle.Cancel;
      end;

end;

procedure TFormIngresoCaja.CDSIngresoCajaDetalleAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  sumar;
end;

procedure TFormIngresoCaja.CDSIngresoCajaDetalleAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormIngresoCaja.BuscaRubrosExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  comBuscadorRubro.Execute;
  if comBuscadorRubro.rOk Then
    CDSIngresoCajaDetalleRUBROINGRESOSetText(CDSIngresoCajaDetalleRUBROINGRESO, comBuscadorRubro.Id);
  CDSBuscaRubro.Close;

end;

procedure TFormIngresoCaja.FormKeyPress(Sender: TObject; var Key: Char);
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

end.
