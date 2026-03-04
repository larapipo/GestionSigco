unit UAjustesSeries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,  UABMBase, Db,   ActnList, ComCtrls,
  Buttons,  StdCtrls, ToolWin, ExtCtrls,   Mask, DBCtrls,
   Grids,  DBGrids, IBGenerator, JvComponentBase, ImgList,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvExMask, JvToolEdit, ADODB, Menus, JvAppStorage,
  JvAppIniStorage, System.Actions, Datasnap.DBClient, Datasnap.Provider,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormAjustesSeries = class(TFormABMBase)
    DSPAjustesSeries: TDataSetProvider;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeObs: TDBEdit;
    BuscarArticulo: TAction;
    BuscarSucursal: TAction;
    DSPSucursal: TDataSetProvider;
    BuscarTipoCpbte: TAction;
    CDSStock: TClientDataSet;
    DSStock: TDataSetProvider;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    DSPAjustesSeriesDet: TDataSetProvider;
    CDSAjustesSeriesDet: TClientDataSet;
    dbgDetalle: TDBGrid;
    CDSAjustesSeriesDetID: TIntegerField;
    CDSAjustesSeriesDetID_AJUSTE: TIntegerField;
    CDSAjustesSeriesDetTIPOCPBTE: TStringField;
    CDSAjustesSeriesDetCLASECPBTE: TStringField;
    CDSAjustesSeriesDetNROCPBTE: TStringField;
    CDSAjustesSeriesDetCODIGOARTICULO: TStringField;
    CDSAjustesSeriesDetSERIE: TStringField;
    CDSAjustesSeriesDetDEPOSITO: TIntegerField;
    CDSAjustesSeriesDetTIPO: TStringField;
    DSAjustesSeriesDet: TDataSource;
    BuscarDeposito: TAction;
    rgTipoOperacion: TDBRadioGroup;
    IbgAjuste: TIBGenerator;
    IbgDetalle: TIBGenerator;
    CDSAjustesSeriesDetMUESTRAARTICULO: TStringField;
    CDSAjustesSeries: TClientDataSet;
    BuscarSerie: TAction;
    CDSStockCONTROL_SERIE: TStringField;
    DSPDeposito: TDataSetProvider;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSDepositoCENTRALIZA_STOCK: TStringField;
    CDSBuscaDeposito: TClientDataSet;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDepositoID: TIntegerField;
    CDSBuscaDepositoNOMBRE: TStringField;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel2: TJvLabel;
    RxCTipoCpbte: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    QAjustesSeries: TFDQuery;
    QAjustesSeriesID: TIntegerField;
    QAjustesSeriesTIPOCPBTE: TStringField;
    QAjustesSeriesCLASECPBTE: TStringField;
    QAjustesSeriesFECHA: TSQLTimeStampField;
    QAjustesSeriesSUCURSAL: TIntegerField;
    QAjustesSeriesLETRA: TStringField;
    QAjustesSeriesSUC: TStringField;
    QAjustesSeriesNUMERO: TStringField;
    QAjustesSeriesNROCPBTE: TStringField;
    QAjustesSeriesTIPO_AJUSTE: TStringField;
    QAjustesSeriesDEPOSITO: TIntegerField;
    QAjustesSeriesOBS: TStringField;
    QAjustesSeriesUSUARIO: TStringField;
    QAjustesSeriesMUESTRACOMPROBANTE: TStringField;
    QAjustesSeriesMUESTRASUCURSAL: TStringField;
    QAjustesSeriesID_TIPOCOMPROBANTE: TIntegerField;
    QAjustesSeriesMUESTRADEPOSITO: TStringField;
    CDSAjustesSeriesID: TIntegerField;
    CDSAjustesSeriesTIPOCPBTE: TStringField;
    CDSAjustesSeriesCLASECPBTE: TStringField;
    CDSAjustesSeriesFECHA: TSQLTimeStampField;
    CDSAjustesSeriesSUCURSAL: TIntegerField;
    CDSAjustesSeriesLETRA: TStringField;
    CDSAjustesSeriesSUC: TStringField;
    CDSAjustesSeriesNUMERO: TStringField;
    CDSAjustesSeriesNROCPBTE: TStringField;
    CDSAjustesSeriesTIPO_AJUSTE: TStringField;
    CDSAjustesSeriesDEPOSITO: TIntegerField;
    CDSAjustesSeriesOBS: TStringField;
    CDSAjustesSeriesUSUARIO: TStringField;
    CDSAjustesSeriesMUESTRACOMPROBANTE: TStringField;
    CDSAjustesSeriesMUESTRASUCURSAL: TStringField;
    CDSAjustesSeriesID_TIPOCOMPROBANTE: TIntegerField;
    CDSAjustesSeriesMUESTRADEPOSITO: TStringField;
    QAjustesSeriesDet: TFDQuery;
    QAjustesSeriesDetID: TIntegerField;
    QAjustesSeriesDetID_AJUSTE: TIntegerField;
    QAjustesSeriesDetTIPOCPBTE: TStringField;
    QAjustesSeriesDetCLASECPBTE: TStringField;
    QAjustesSeriesDetNROCPBTE: TStringField;
    QAjustesSeriesDetCODIGOARTICULO: TStringField;
    QAjustesSeriesDetSERIE: TStringField;
    QAjustesSeriesDetDEPOSITO: TIntegerField;
    QAjustesSeriesDetTIPO: TStringField;
    QAjustesSeriesDetMUESTRAARTICULO: TStringField;
    QAjustesSeriesDetFECHA: TSQLTimeStampField;
    CDSAjustesSeriesDetFECHA: TSQLTimeStampField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QBuscaComprob: TFDQuery;
    QBuscaNroSerie: TFDQuery;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
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
    CDSBuscaNroSerie: TClientDataSet;
    DSPBuscaNroSerie: TDataSetProvider;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieDEPOSITO: TIntegerField;
    ImportarExcel: TAction;
    ADOConnection: TADOConnection;
    ADODSDetalelleXLS: TADODataSet;
    DSCDetalleXLS: TDataSource;
    OpenDialog: TOpenDialog;
    PopupMenu1: TPopupMenu;
    ImportarDetalledesdeExcel1: TMenuItem;
    dbeFecha: TJvDBDateEdit;
    ComBuscadorDepositos: TComBuscador;
    ComBuscadorTipoCpbte: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorSerie: TComBuscador;
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSAjustesSeriesSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSeriesSUCSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSeriesNUMEROSetText(Sender: TField;
      const Text: String);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSAjustesSeriesID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSeriesNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSAjustesSeriesCODIGO_ARTICULOSetText(Sender: TField;
      const Text: String);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure CDSAjustesSeriesDetDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSeriesDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSeriesDetNewRecord(DataSet: TDataSet);
    procedure CDSAjustesSeriesDetAfterPost(DataSet: TDataSet);
    procedure CDSAjustesSeriesDetBeforeDelete(DataSet: TDataSet);
    procedure CDSAjustesSeriesDetBeforePost(DataSet: TDataSet);
    procedure CDSAjustesSeriesDetSERIESetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSeriesDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure rgTipoOperacionClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImportarExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodigosSeries:TStringList;
    lista:TStringList;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
    function AsignarArticulo(Dato:String):Boolean;
    procedure ReAsignarDetalle;
  end;

var
  FormAjustesSeries: TFormAjustesSeries;

PROCEDURE UltimoComprobante;

implementation

uses DMBuscadoresForm,UBuscadorArticulos,
     UBuscadorCpbte, DMStoreProcedureForm, UDMain_FD;

{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormAjustesSeries DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSAjustesSeriesLETRA.AsString <> '') AND (CDSAjustesSeriesCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value    := CDSAjustesSeriesLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value     := CDSAjustesSeriesSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value    := CDSAjustesSeriesCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value     := CDSAjustesSeriesTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value  := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAjustesSeriesSUCSetText(CDSAjustesSeriesSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAjustesSeriesNUMEROSetText(CDSAjustesSeriesNUMERO, IntToStr(Numero));
          CDSAjustesSeriesTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSAjustesSeriesCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAjustesSeriesNROCPBTE.AsString := CDSAjustesSeriesLETRA.AsString + CDSAjustesSeriesSUC.AsString + CDSAjustesSeriesNUMERO.AsString;
    END;
END;

procedure TFormAjustesSeries.ReAsignarDetalle;
VAR p:TBookmark;
begin
  p:=CDSAjustesSeriesDet.GetBookmark;
  CDSAjustesSeriesDet.First;
  CDSAjustesSeriesDet.DisableControls;
  while not(CDSAjustesSeriesDet.Eof) do
    begin
      CDSAjustesSeriesDet.Edit;
      CDSAjustesSeriesDetDEPOSITO.Value  :=CDSAjustesSeriesDEPOSITO.Value;
      CDSAjustesSeriesDetCLASECPBTE.Value:=CDSAjustesSeriesCLASECPBTE.Value;
      CDSAjustesSeriesDetFECHA.Value     :=CDSAjustesSeriesFECHA.Value;
      CDSAjustesSeriesDet.Next;
    end;
  CDSAjustesSeriesDet.GotoBookmark(p);
  CDSAjustesSeriesDet.EnableControls;
  CDSAjustesSeriesDet.FreeBookmark(p);
end;

FUNCTION TFormAjustesSeries.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAjustesSeriesMUESTRADEPOSITO.Value := CDSDepositoNombre.Value ;
    END
  ELSE
    begin
      Result := False;
      CDSAjustesSeriesMUESTRADEPOSITO.Value := '';
    end;
  CDSDeposito.Close;
END;

FUNCTION TFormAjustesSeries.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSAjustesSeriesID_TIPOCOMPROBANTE.Clear;
      CDSAjustesSeriesMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSAjustesSeriesID_TIPOCOMPROBANTESetText(CDSAjustesSeriesID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
        end;
      Result:=True;
      CDSAjustesSeriesMuestraSucursal.Value:=CDSSucursalDetalle.Value;
    END
  ELSE
    Result:=False;
  CDSBuscaComprob.close;
  CDSSucursal.Close;
END;

FUNCTION TFormAjustesSeries.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSAjustesSeriesSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAjustesSeriesMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAjustesSeriesLETRA.Value              := QComprobLETRA.Value;
      CDSAjustesSeriesTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAjustesSeriesCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAjustesSeriesMUESTRACOMPROBANTE.Value := '';
      CDSAjustesSeriesLETRA.Value := '';
      CDSAjustesSeriesTIPOCPBTE.Value := '';
    END;
  QComprob.Close;
END;

function TformAjustesSeries.AsignarArticulo(Dato:String):Boolean;
begin
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value:=Dato;
  CDSStock.Open;
  IF (NOT (CDSStock.IsEmpty)) and (CDSStockCONTROL_SERIE.Value='S') THEN
    BEGIN
      CDSAjustesSeriesDetCODIGOARTICULO.Value :=Dato;
      CDSAjustesSeriesDetMUESTRAARTICULO.Value:=CDSStockDETALLE_STK.Value;
      Result:=True;
    END
  ELSE
    begin
      CDSAjustesSeriesDetCODIGOARTICULO.Value  :='';
      CDSAjustesSeriesDetMUESTRAARTICULO.Value :='';
      Result:=False;
    end;

end;

procedure TFormAjustesSeries.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    BEGIN
      CDSAjustesSeriesDetCODIGOARTICULOSetText(CDSAjustesSeriesDetCODIGOARTICULO,FormBuscadorArticulos.Codigo);
    END;

end;

procedure TFormAjustesSeries.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CDSAjustesSeriesDet.Close;
  CDSAjustesSeries.Close;
  Action:=caFree;
end;

procedure TFormAjustesSeries.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBDe:=2;
  AddClientDataSet(CDSAjustesSeries,DSPAjustesSeries);
  AddClientDataSet(CDSAjustesSeriesDet,DSPAjustesSeriesDet);
  CDSAjustesSeries.Open;
  CDSAjustesSeriesDet.Open;
  sbEstado.SimplePanel:=True;
   // Lista de Codigos Serie en Memoria
  CodigosSeries:=TStringList.Create;
  CodigosSeries.Clear;

  Tabla:='Ajuste_Nro_Series';
  Campo:='Id';
end;

procedure TFormAjustesSeries.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSAjustesSeriesSucursalSetText(CDSAjustesSeriesSucursal, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormAjustesSeries.CDSAjustesSeriesSUCURSALSetText(
  Sender: TField; const Text: String);
begin
  inherited;
   IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          RxDbeSucursal.SetFocus;
        END
      ELSE IF CDSAjustesSeries.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TFormAjustesSeries.CDSAjustesSeriesSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSAjustesSeriesNROCPBTE.Value := CDSAjustesSeriesLETRA.Value + CDSAjustesSeriesSUC.Value + CDSAjustesSeriesNUMERO.Value;
end;

procedure TFormAjustesSeries.CDSAjustesSeriesNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSAjustesSeriesNROCPBTE.Value := CDSAjustesSeriesLETRA.Value + CDSAjustesSeriesSUC.Value + CDSAjustesSeriesNUMERO.Value;
end;

procedure TFormAjustesSeries.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAjustesSeriesSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (QBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSAjustesSeriesID_TIPOCOMPROBANTESetText(CDSAjustesSeriesID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;
end;

procedure TFormAjustesSeries.CDSAjustesSeriesID_TIPOCOMPROBANTESetText(
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


procedure TFormAjustesSeries.CDSAjustesSeriesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAjustesSeriesFECHA.AsDateTime   :=date;
  CDSAjustesSeriesID.Value      :=IbgAjuste.IncrementFD(1);
  CDSAjustesSeriesSUCURSALSetText(CDSAjustesSeriesSUCURSAL,IntToStr(SucursalPorDefecto));
  CDSAjustesSeriesDEPOSITOSetText(CDSAjustesSeriesDEPOSITO,IntToStr(DepositoPorDefecto));
  CDSAjustesSeriesTIPO_AJUSTE.Value:='I';
  CDSAjustesSeriesUSUARIO.Value :=DMMain_FD.UsuarioActivo;
end;

procedure TFormAjustesSeries.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAjustesSeries:=nil;
end;

procedure TFormAjustesSeries.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 25;
  FormBuscaCpbte.TipoCpbte1:='AN';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    begin
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew  :=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;  

end;

procedure TFormAjustesSeries.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSAjustesSeries.Close;
  CDSAjustesSeries.Params.ParamByName('id').AsInteger:=StrToInt(DatoNew);
  CDSAjustesSeries.Open;
  CDSAjustesSeriesDet.Close;
  CDSAjustesSeriesDet.Params.ParamByName('id').AsInteger:=StrToInt(DatoNew);
  CDSAjustesSeriesDet.Open;

  DatoNew:=''+DatoNew+'';

end;

procedure TFormAjustesSeries.CDSAjustesSeriesCODIGO_ARTICULOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Copy('00000000',1,8-length(Text))+Text;
      if Not(AsignarArticulo(Sender.AsString)) Then
        begin
          Sender.Clear;
          ShowMessage('Codigo no valido...');
        end;
    end;
end;

procedure TFormAjustesSeries.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDepositos.Execute;
  if comBuscadorDepositos.rOk Then
    CDSAjustesSeriesDEPOSITOSetText(CDSAjustesSeriesDEPOSITO,IntToStr(comBuscadorDepositos.Id));
  CDSBuscaDeposito.Close;

end;

procedure TFormAjustesSeries.CDSAjustesSeriesDetDEPOSITOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarDeposito(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Válido....');
        end;
    end;
end;

procedure TFormAjustesSeries.CDSAjustesSeriesDEPOSITOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarDeposito(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Valido...');
        end;
    end

end;

procedure TFormAjustesSeries.CDSAjustesSeriesDetNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSAjustesSeriesDetID.Value        :=IbgDetalle.IncrementFD(1);
  CDSAjustesSeriesDetID_AJUSTE.Value :=CDSAjustesSeriesID.Value;
  CDSAjustesSeriesDetDEPOSITO.Value  :=CDSAjustesSeriesDEPOSITO.Value;
  CDSAjustesSeriesDetTIPOCPBTE.Value :=CDSAjustesSeriesTIPOCPBTE.Value;
  CDSAjustesSeriesDetCLASECPBTE.Value:=CDSAjustesSeriesCLASECPBTE.Value;
  CDSAjustesSeriesDetNROCPBTE.Value  :=CDSAjustesSeriesNROCPBTE.Value;
  CDSAjustesSeriesDetFECHA.Value     :=CDSAjustesSeriesFECHA.Value;
  CDSAjustesSeriesDetTIPO.Value      :=CDSAjustesSeriesTIPO_AJUSTE.Value;
end;

procedure TFormAjustesSeries.CDSAjustesSeriesDetAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CodigosSeries.Add(CDSAjustesSeriesDetSERIE.Value);
end;

procedure TFormAjustesSeries.CDSAjustesSeriesDetBeforeDelete(
  DataSet: TDataSet);
VAR i:Integer;
begin
  inherited;
  i:=CodigosSeries.IndexOf(CDSAjustesSeriesDetSERIE.AsString);
    if i>=0 Then  CodigosSeries.Delete(I);
end;

procedure TFormAjustesSeries.CDSAjustesSeriesDetBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  IF ((CDSAjustesSeriesDetSERIE.AsString = '') AND
     (CDSAjustesSeriesDet.State IN [dsInsert, dsEdit])) or (CDSAjustesSeriesDetCODIGOARTICULO.AsString='')
    THEN
    BEGIN
      CDSAjustesSeriesDet.Cancel;
      SysUtils.Abort;
    END;

end;

procedure TFormAjustesSeries.CDSAjustesSeriesDetSERIESetText(
  Sender: TField; const Text: String);
var i:Integer;
begin
   if  (Text<>'') and (Text[1]<>#13) Then
     begin
       // verifico si no fue ingresado en el comprobante
       i:=CodigosSeries.IndexOf(UpperCase(Text));
       if i>=0 Then
         begin
           Sender.Clear;
           showmessage('Codigo de Serie Ingresado ...... ');
           SysUtils.Abort;
         end;
       if CDSAjustesSeriesDet.State=dsBrowse Then
        CDSAjustesSeriesDet.edit;
       Sender.AsString:=UpperCase(Trim(Text));
       if CDSAjustesSeriesTIPO_AJUSTE.Value='E' Then
         begin
           QNroSerie.Close;
           QNroSerie.ParamByName('codigo').Value     :=CDSAjustesSeriesDetCODIGOARTICULO.Value;
           QNroSerie.ParamByName('codigoserie').Value:=Sender.AsString;
           QNroSerie.ParamByName('deposito').Value:= -1;  // para que me tome de cualquier deposito
           QNroSerie.Open;
          IF (QNroSerie.Fields[0].AsString='') THEN
            BEGIN
              ShowMessage('Codigo Serie Inexistente, o ya fué entregado...');
              Sender.Clear;
              CDSAjustesSeriesDetSERIE.AsString:='';
              CDSAjustesSeriesDetFECHA.Clear;
            end;
            QNroSerie.Close;
         end
       else
         if CDSAjustesSeriesTIPO_AJUSTE.Value='I' Then
           begin
             QNroSerie.Close;
             QNroSerie.ParamByName('codigo').Value      :=CDSAjustesSeriesDetCODIGOARTICULO.Value;
             QNroSerie.ParamByName('codigoserie').Value :=Sender.AsString;
             QNroSerie.ParamByName('deposito').Value    := -1;  // para que me tome de cualquier deposito
             QNroSerie.Open;
             IF (QNroSerie.Fields[0].AsString<>'')  THEN
               BEGIN
                ShowMessage('Codigo Existente, ya fué ingresado...');
                Sender.Clear;
              END;
            QNroSerie.Close;
          end;
     end;
end;


procedure TFormAjustesSeries.CDSAjustesSeriesDetCODIGOARTICULOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      if CDSAjustesSeriesDet.State =dsBrowse Then
        CDSAjustesSeriesDet.Edit;
      Sender.AsString:=copy('00000000',1,8-Length(text))+text;
      if Not(AsignarArticulo(Sender.AsString)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido .... o el articulo no es controlado por Nro. de Serie.');
        end;
    end;
end;

procedure TFormAjustesSeries.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGDetalle.SelectedIndex < 2) THEN
        DBGDetalle.SelectedIndex := DBGDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGDetalle.DataSource.DataSet.Eof THEN
            DBGDetalle.DataSource.DataSet.Append;
          DBGDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF DBGDetalle.SelectedField = CDSAjustesSeriesDetCODIGOARTICULO THEN
           BuscarArticulo.Execute
        else
          IF DBGDetalle.SelectedField = CDSAjustesSeriesDetSERIE THEN
             BuscarSerie.Execute
      end
    else
      if (key = #27) then
        DBGDetalle.DataSource.DataSet.Cancel;


end;

procedure TFormAjustesSeries.BuscarSerieExecute(Sender: TObject);
VAR I:Integer;
begin
  inherited;
  if CDSAjustesSeriesTIPO_AJUSTE.Value='E' Then
    begin
      CDSBuscaNroSerie.Close;
      CDSBuscaNroSerie.CommandText:='';
      CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                                    'where  (ss.codigo_stk=:codigo  and  ss.id_cpbte_egreso is null)  and ( ss.deposito=:deposito or  :deposito = -1 ) ';
      CDSBuscaNroSerie.Params.ParamByName('deposito').Value:= -1
    end
  else
    if CDSAjustesSeriesTIPO_AJUSTE.Value='I' Then
      begin
        CDSBuscaNroSerie.Close;
        CDSBuscaNroSerie.CommandText:='';
        CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso, ss.deposito from stock_series ss '+
                                      'where ss.codigo_stk=:codigo and ss.deposito<>:deposito and Not(id_cpbte_egreso is null)';
        CDSBuscaNroSerie.Params.ParamByName('deposito').Value:=-1;
      end;
  comBuscadorSerie.Data := CDSBuscaNroSerie;
  CDSBuscaNroSerie.Params.ParamByName('codigo').Value  :=CDSAjustesSeriesDetCODIGOARTICULO.Value;
  CDSBuscaNroSerie.Open;

  //CDSBuscaNroSerie.FieldList.Clear;
 // for i:= 0 to CDSBuscaNroSerie.FieldCount-1 do
//    wwBuscadorSerie.Selected.Add(CDSBuscaNroSerie.Fields[i].FieldName + #9 + IntToStr(CDSBuscaNroSerie.Fields[i].DisplayWidth) + #9 +
//    CDSBuscaNroSerie.Fields[i].DisplayLabel);
//
   comBuscadorSerie.Execute;
   if comBuscadorSerie.rOk Then
     CDSAjustesSeriesDetSERIESetText(CDSAjustesSeriesDetSERIE,comBuscadorSerie.id);

  CDSBuscaNroSerie.Close;
end;

procedure TFormAjustesSeries.dbgDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  IF DBGDetalle.SelectedField = CDSAjustesSeriesDetCODIGOARTICULO THEN
    BuscarArticulo.Execute
  else
    IF (DBGDetalle.SelectedField = CDSAjustesSeriesDetSERIE) THEN
      BuscarSerie.Execute;
end;

procedure TFormAjustesSeries.rgTipoOperacionClick(Sender: TObject);
begin
  inherited;
  if CDSAjustesSeriesDet.RecordCount>=0 Then
    begin
      CDSAjustesSeriesDet.Close;
      CDSAjustesSeriesDet.Params.ParamByName('id').Clear;
      CDSAjustesSeriesDet.Open;
    end;  
end;

procedure TFormAjustesSeries.ConfirmaExecute(Sender: TObject);
begin
  ReAsignarDetalle;
  DatoNew:=CDSAjustesSeriesID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormAjustesSeries.AgregarExecute(Sender: TObject);
begin
  CDSAjustesSeries.Close;
  CDSAjustesSeries.Params.ParamByName('id').Clear;
  CDSAjustesSeries.Open;
  CDSAjustesSeriesDet.Close;
  CDSAjustesSeriesDet.Params.ParamByName('id').Clear;
  CDSAjustesSeriesDet.Open;

  inherited;
  dbgDetalle.SetFocus;
  CodigosSeries.Clear;
end;

procedure TFormAjustesSeries.CancelarExecute(Sender: TObject);
begin
  CDSAjustesSeries.Close;
  CDSAjustesSeries.Params.ParamByName('id').Clear;
  CDSAjustesSeries.Open;
  CDSAjustesSeriesDet.Close;
  CDSAjustesSeriesDet.Params.ParamByName('id').Clear;
  CDSAjustesSeriesDet.Open;
  inherited;
  CodigosSeries.Clear;
  btNuevo.SetFocus;
end;

procedure TFormAjustesSeries.BorrarExecute(Sender: TObject);
begin
  if (DMMain_FD.UsuarioAdministrador=True) Then
    inherited
  else ShowMessage('No esta autorizado para esta operación.....');

end;

procedure TFormAjustesSeries.ModificarExecute(Sender: TObject);
begin
  ShowMessage('Operación No Permitida.....');
  //inherited;

end;

procedure TFormAjustesSeries.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormAjustesSeries.ImportarExcelExecute(Sender: TObject);
var i:Integer;
Cant:String;
begin
  inherited;
  if DSBase.State in [dsInsert] then
    begin
      lista:=TStringList.Create;
      if MessageDlg('el archivo debe tener las columnas codigo,serie y el nombre de la hoja debe ser hoja1...',mtConfirmation,mbYesNo,0)=mrYes then
      if OpenDialog.Execute then
        if OpenDialog.FileName<>'' then
          begin
            Screen.Cursor:=crHourGlass;
            ADOConnection.Connected:=False;
            ADODSDetalelleXLS.Active:=False;
            ADOConnection.ConnectionString:='';
            //ADODataSet1.CommandText:='';
            ADOConnection.ConnectionString:=
            'Provider=Microsoft.Jet.OLEDB.4.0; '+
            'User ID=Admin; '+
            'Data Source='+OpenDialog.FileName+'; '+
            'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
            'Persist Security Info=False; '+
            'Jet OLEDB:System database=""; '+
            'Jet OLEDB:Registry Path=""; '+
            'Jet OLEDB:Database Password=""; '+
            'Jet OLEDB:Engine Type=35; '+
            'Jet OLEDB:Database Locking Mode=0; '+
            'Jet OLEDB:Global Partial Bulk Ops=2; '+
            'Jet OLEDB:Global Bulk Transactions=1; '+
            'Jet OLEDB:New Database Password=""; '+
            'Jet OLEDB:Create System Database=False; '+
            'Jet OLEDB:Encrypt Database=False; '+
            'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
            'Jet OLEDB:Compact Without Replica Repair=False; '+
            'Jet OLEDB:SFP=False ';
            ADODSDetalelleXLS.Connection:=ADOConnection;
            ADODSDetalelleXLS.CommandType:=cmdTableDirect;
            ADODSDetalelleXLS.CommandText:='Hoja1$';
            ADOConnection.Connected:=true;
            ADODSDetalelleXLS.Active:=True;
            ADODSDetalelleXLS.First;
            i:=0;cant:=IntToStr(ADODSDetalelleXLS.RecordCount-1);
            while not(ADODSDetalelleXLS.Eof) do
              begin
                sbEstado.SimpleText:='Procesando Reg:'+IntToStr(i)+'/'+cant;
                i:=i+1;
                Application.ProcessMessages;
                if (ADODSDetalelleXLS.FieldByName('serie').AsString<>'') and (ADODSDetalelleXLS.FieldByName('codigo').AsString<>'') then
                  begin
                    CDSStock.Close;
                    CDSStock.Params.ParamByName('Codigo').Value:=ADODSDetalelleXLS.FieldByName('CODIGO').AsString;
                    CDSStock.Open;
                    if CDSStockCODIGO_STK.AsString<>'' then
                      begin
                        CDSAjustesSeriesDet.Append;
                        CDSAjustesSeriesDetCODIGOARTICULOSetText(CDSAjustesSeriesDetCODIGOARTICULO,ADODSDetalelleXLS.FieldByName('codigo').AsString);
                        CDSAjustesSeriesDetSERIESetText(CDSAjustesSeriesDetSERIE,ADODSDetalelleXLS.FieldByName('SERIE').AsString);
                      end
                    else
                      begin
                        lista.Add(ADODSDetalelleXLS.FieldByName('codigo').AsString+'-'+
                                  ADODSDetalelleXLS.FieldByName('serie').AsString );
                      end;
                    CDSStock.Close;
                  end;
                ADODSDetalelleXLS.Next;
              end;
            Application.ProcessMessages;
            ADODSDetalelleXLS.Close;
            ADOConnection.Connected:=False;
          end;
    end;
  ADODSDetalelleXLS.Close;    
  Screen.Cursor:=crDefault;
end;

end.