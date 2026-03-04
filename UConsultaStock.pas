UNIT UConsultaStock;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, DBClient, Provider,
  StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons,
  ActnList, ImgList,  IniFiles, JvExControls, JvGradient, JvDBLookup,
  FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

TYPE
  TFormConsultaStock = CLASS(TForm)
    DSPConsultaPorDeposito: TDataSetProvider;
    CDSConsultaPorDeposito: TClientDataSet;
    DSConsultaStock: TDataSource;
    CDSConsultaPorDepositoCODIGO_STK: TStringField;
    CDSConsultaPorDepositoDETALLE_STK: TStringField;
    DSMarca: TDataSource;
    DSRubro: TDataSource;
    CDSConsultaPorDepositoMARCA_STK: TStringField;
    CDSConsultaPorDepositoRUBRO_STK: TStringField;
    CDSConsultaPorDepositoSUBRUBRO_STK: TStringField;
    DSDeposito: TDataSource;
    DSSubRubro: TDataSource;
    ActionList1: TActionList;
    Buscar: TAction;
    DSExistencia: TDataSource;
    DSPConsultaPorLista: TDataSetProvider;
    CDSConsultaPorLista: TClientDataSet;
    DSListaPrecioCab: TDataSource;
    CDSConsultaPorListaCODIGO_STK: TStringField;
    CDSConsultaPorListaDETALLE_STK: TStringField;
    CDSConsultaPorListaMARCA_STK: TStringField;
    CDSConsultaPorListaRUBRO_STK: TStringField;
    CDSConsultaPorListaSUBRUBRO_STK: TStringField;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSMarca: TClientDataSet;
    DSPMarca: TDataSetProvider;
    CDSDeposito: TClientDataSet;
    DSPDeposito: TDataSetProvider;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSListaPrecioCab: TClientDataSet;
    DSPListaPrecioCab: TDataSetProvider;
    CDSExistencia: TClientDataSet;
    DSPExistencia: TDataSetProvider;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    CDSListaPrecioCabID: TIntegerField;
    CDSListaPrecioCabNOMBRE: TStringField;
    CDSListaPrecioCabPORDEFECTO: TStringField;
    CDSListaPrecioCabF_PAGO: TIntegerField;
    CDSListaPrecioCabUSO_ADMINISTRADOR: TStringField;
    CDSListaPrecioCabCLONADA: TStringField;
    CDSListaPrecioCabID_LISTA_CLONADA: TIntegerField;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSConsultaPorListaMUESTRAPRECIO: TFloatField;
    CDSConsultaPorDepositoMUESTRAPRECIO: TFloatField;
    CDSConsultaPorDepositoMUESTRAPRECIOIVA: TFloatField;
    ComBuscador: TComBuscador;
    QConsultaPorDeposito: TFDQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbcDeposito: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    dbgDepositos: TDBGrid;
    BitBtn2: TBitBtn;
    rgTomaRecargo: TRadioGroup;
    rgUnidades: TRadioGroup;
    dbcListas: TJvDBLookupCombo;
    rxcMarca: TJvDBLookupCombo;
    rxcRubro: TJvDBLookupCombo;
    rxcSubRubro: TJvDBLookupCombo;
    JvDBFindEdit1: TJvDBFindEdit;
    QConsultaPorLista: TFDQuery;
    CDSConsultaPorListaMUESTRAPRECIOIVA: TFloatField;
    QListaPrecioCab: TFDQuery;
    CDSListaPrecioCabRECARGOBASE: TFloatField;
    CDSListaPrecioCabCOEFICIENTE: TFloatField;
    CDSListaPrecioCabFECHA: TSQLTimeStampField;
    dbgStock: TDBGrid;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE rxcMarcaChange(Sender: TObject);
    PROCEDURE dbcDepositoClick(Sender: TObject);
    PROCEDURE BuscarExecute(Sender: TObject);
    procedure CDSConsultaPorDepositoAfterScroll(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure rxcSubRubroEnter(Sender: TObject);
    procedure rgTomaRecargoClick(Sender: TObject);
    procedure dbcListasClick(Sender: TObject);
    procedure dbgStockTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgStockMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgStockEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  END;

VAR
 FormConsultaStock: TFormConsultaStock;

IMPLEMENTATION

USES DMBuscadoresForm, UDMain_FD;
{$R *.DFM}

PROCEDURE TFormConsultaStock.FormCreate(Sender: TObject);

BEGIN
  AutoSize := False;
  CDSMarca.Open;
  CDSRubro.Open;
  CDSSubRubro.Open;
  CDSDeposito.Open;
  CDSDeposito.First;
  CDSListaPrecioCab.Open;
  CDSListaPrecioCab.First;
  dbcDeposito.ListSource.DataSet.First;

  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  dbcDeposito.KeyValue   := ArchivoIni.ReadInteger('Deposito', 'Deposito', 1);
  ArchivoIni.Free;

  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Consulta_'+DMMain_FD.NombreIni);
  dbcDeposito.KeyValue   := ArchivoIni.ReadInteger('Deposito', 'Deposito', dbcDeposito.KeyValue);
  rgUnidades.ItemIndex   := ArchivoIni.ReadInteger('Unidades', 'Unidades', 0);
  rgTomaRecargo.ItemIndex:= ArchivoIni.ReadInteger('recargo', 'recargo', 0);
  dbcListas.KeyValue     := ArchivoIni.ReadInteger('lista', 'lista', 0);
  rxcMarca.KeyValue      := ArchivoIni.ReadString('marca', 'marca', rxcMarca.KeyValue);
  rxcRubro.KeyValue      := ArchivoIni.ReadString('Rubro', 'marca', rxcRubro.KeyValue);
  rxcSubRubro.KeyValue   := ArchivoIni.ReadString('SubRubro', 'marca', rxcSubRubro.KeyValue);

  ArchivoIni.Free;

  rgTomaRecargo.OnClick(Sender);

//  if rgTomaRecargo.ItemIndex=0 then
//    begin
//      CDSConsultaPorDeposito.IndexDefs.Clear;
//      CDSConsultaPorDeposito.IndexName:='';
//      CDSConsultaPorDeposito.Close;
//      CDSConsultaPorDeposito.Params.ParamByName('Deposito').Value := dbcDeposito.KeyValue;
//      CDSConsultaPorDeposito.Open;
//    end
//  else
//    if rgTomaRecargo.ItemIndex=1 then
//      begin
//        CDSConsultaPorLista.IndexDefs.Clear;
//        CDSConsultaPorLista.IndexName:='';
//        CDSConsultaPorLista.Close;
//        CDSConsultaPorLista.Params.ParamByName('Deposito').Value := dbcDeposito.KeyValue;
//        CDSConsultaPorLista.Open;
//      end;


END;

PROCEDURE TFormConsultaStock.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Consulta_'+DMMain_FD.NombreIni);
  ArchivoIni.WriteInteger('Deposito', 'Deposito', dbcDeposito.KeyValue);
  ArchivoIni.WriteInteger('Unidades', 'Unidades', 0);
  ArchivoIni.WriteInteger('recargo', 'recargo', rgTomaRecargo.ItemIndex);
  ArchivoIni.WriteInteger('lista', 'lista', dbcListas.KeyValue);
  ArchivoIni.WriteString('marca', 'marca', rxcMarca.KeyValue);
  ArchivoIni.WriteString('Rubro', 'marca', rxcRubro.KeyValue);
  ArchivoIni.WriteString('SubRubro', 'marca', rxcSubRubro.KeyValue);


  ArchivoIni.Free;

  CDSConsultaPorDeposito.Close;
  CDSConsultaPorLista.CLose;
  CDSMarca.Close;
  CDSRubro.Close;
  CDSSubRubro.Close;
  Action := caFree;
END;

PROCEDURE TFormConsultaStock.FormDestroy(Sender: TObject);
BEGIN
  FormConsultaStock := NIL;
END;

procedure TFormConsultaStock.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if (Shift=[ssShift]) 	then
    dbgStock.DragMode:=dmAutomatic
  else
    dbgStock.DragMode:=dmManual;
end;

procedure TFormConsultaStock.FormResize(Sender: TObject);
begin
  if FormConsultaStock<>nil then
    if FormConsultaStock.Width<>821 then
      FormConsultaStock.Width:=821;
end;

procedure TFormConsultaStock.FormShow(Sender: TObject);
begin
  if rgTomaRecargo.ItemIndex=0 then
    dbcDeposito.OnClick(Sender)
  else
    if rgTomaRecargo.ItemIndex=1 then
       dbcListas.OnClick(Sender);

end;

PROCEDURE TFormConsultaStock.rxcMarcaChange(Sender: TObject);
BEGIN
  if rgTomaRecargo.ItemIndex=0 Then
    begin
      CDSConsultaPorDeposito.Filtered := False;
      CDSConsultaPorDeposito.Filter := '';
    end
  else
    begin
      CDSConsultaPorLista.Filtered := False;
      CDSConsultaPorLista.Filter := '';
    end;
  IF rxcMarca.Value <> '****' THEN
    BEGIN
      CDSConsultaPorDeposito.Filter := 'marca_stk=' + char(39) + rxcMarca.Value
        + char(39);
      CDSConsultaPorLista.Filter := 'marca_stk=' + char(39) + rxcMarca.Value
        + char(39);
    END;
  IF rxcRubro.Value <> '***' THEN
    BEGIN
      IF rxcMarca.Value <> '****' THEN
        begin
          CDSConsultaPorDeposito.Filter := CDSConsultaPorDeposito.Filter + ' and ' +
            'rubro_stk=' + char(39) + rxcRubro.value + char(39);
          CDSConsultaPorLista.Filter := CDSConsultaPorDeposito.Filter + ' and ' +
            'rubro_stk=' + char(39) + rxcRubro.value + char(39);
        end
      ELSE
        begin
          CDSConsultaPorDeposito.Filter := 'rubro_stk=' + char(39) +
            rxcRubro.value + char(39);
          CDSConsultaPorLista.Filter := 'rubro_stk=' + char(39) +
            rxcRubro.value + char(39);
        end;
    END;
  IF rxcSubRubro.Value <> '*****' THEN
    BEGIN
      iF (rxcMarca.Value <> '***') OR (rxcRubro.Value <> '***') THEN
        begin
          CDSConsultaPorDeposito.Filter := CDSConsultaPorDeposito.Filter + ' and ' +
            'subrubro_stk=' + char(39) + rxcSubRubro.value + char(39);
          CDSConsultaPorLista.Filter := CDSConsultaPorDeposito.Filter + ' and ' +
            'subrubro_stk=' + char(39) + rxcSubRubro.value + char(39);
        end
      ELSE
        begin
          CDSConsultaPorDeposito.Filter := 'subrubro_stk=' + char(39) +
            rxcSubRubro.value + char(39);
          CDSConsultaPorLista.Filter := 'subrubro_stk=' + char(39) +
            rxcSubRubro.value + char(39);
        end;
    END;
  if rgTomaRecargo.ItemIndex=0 Then
    begin
      IF CDSConsultaPorDeposito.Filter <> '' THEN
        CDSConsultaPorDeposito.Filtered := True;
    end
  else
    begin
      IF CDSConsultaPorLista.Filter <> '' THEN
        CDSConsultaPorLista.Filtered := True;
    end

END;

PROCEDURE TFormConsultaStock.dbcDepositoClick(Sender: TObject);
BEGIN
  CDSConsultaPorDeposito.Close;
  CDSConsultaPorDeposito.Params.ParamByName('Deposito').Value := dbcDeposito.KeyValue;
  CDSConsultaPorDeposito.Open;
END;

PROCEDURE TFormConsultaStock.BuscarExecute(Sender: TObject);
BEGIN
  CDSConsultaPorDeposito.IndexDefs.Clear;
  CDSConsultaPorLista.IndexDefs.Clear;

  CDSConsultaPorDeposito.IndexName:='';
  CDSConsultaPorLista.IndexName:='';

  CDSConsultaPorDeposito.Filtered := False;
  CDSConsultaPorDeposito.Filter := '';

  CDSConsultaPorLista.Filtered := False;
  CDSConsultaPorLista.Filter := '';

  if rgTomaRecargo.ItemIndex=0 Then
    ComBuscador.Data:= CDSConsultaPorDeposito
  else
    ComBuscador.Data:= CDSConsultaPorLista;
  rxcMarca.ClearValue;
  rxcRubro.ClearValue;
  rxcSubRubro.ClearValue;
  ComBuscador.Execute;
  dbgStock.SetFocus;
END;

procedure TFormConsultaStock.CDSConsultaPorDepositoAfterScroll(
  DataSet: TDataSet);
begin
  CDSExistencia.Close;
  if rgUnidades.ItemIndex=0 Then
    CDSExistencia.Params.ParamByName('unidad').AsString:='V'
  else
  if rgUnidades.ItemIndex=1 Then
    CDSExistencia.Params.ParamByName('unidad').AsString:='C';
  if rgTomaRecargo.ItemIndex=0 Then
    CDSExistencia.Params.ParamByName('codigo').AsString:=CDSConsultaPorDepositoCODIGO_STK.Value
  else
    CDSExistencia.Params.ParamByName('codigo').AsString:=CDSConsultaPorListaCODIGO_STK.Value;
  CDSExistencia.Params.ParamByName('fisico').Value:=1;
  CDSExistencia.Params.ParamByName('usuario').AsFloat:=DMMain_FD.UsuarioActivoId;

  CDSExistencia.Open;
  TNumericField(dbgDepositos.Fields[2]).DisplayFormat := ',0.00;-,0.00;-';
  TNumericField(dbgDepositos.Fields[3]).DisplayFormat := ',0.00;-,0.00;-';
  TNumericField(dbgDepositos.Fields[4]).DisplayFormat := ',0.00;-,0.00;-';

end;

procedure TFormConsultaStock.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultaStock.rxcSubRubroEnter(Sender: TObject);
begin
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').value:=rxcRubro.Value;
  CDSSubRubro.Open;
end;

procedure TFormConsultaStock.rgTomaRecargoClick(Sender: TObject);
begin
  CDSConsultaPorDeposito.Close;
  CDSConsultaPorLista.Close;
  CDSConsultaPorDeposito.IndexDefs.Clear;

  CDSConsultaPorLista.IndexDefs.Clear;
  CDSConsultaPorDeposito.IndexName:='';
  CDSConsultaPorLista.IndexName   :='';


  //  QListaPrecios.Close;
  if rgTomaRecargo.ItemIndex=0 Then
    begin
      dbcDeposito.Color       := clWhite;
      dbcListas.Color         := clBtnFace;
      dbcDeposito.Enabled     := rgTomaRecargo.ItemIndex=0;
      dbcListas.Enabled       := rgTomaRecargo.ItemIndex=1;
      DSConsultaStock.DataSet := CDSConsultaPorDeposito;

      CDSConsultaPorDeposito.Close;
      CDSConsultaPorDeposito.Params.ParamByName('Deposito').AsInteger := dbcDeposito.KeyValue;
      CDSConsultaPorDeposito.Open;
    end
  else
    begin
      dbcDeposito.Color       := clBtnFace;
      dbcListas.Color         := clWhite;
      dbcDeposito.Enabled     := rgTomaRecargo.ItemIndex=0;
      dbcListas.Enabled       := rgTomaRecargo.ItemIndex=1;
      DSConsultaStock.DataSet := CDSConsultaPorLista;
      dbcListas.KeyValue      := CDSListaPrecioCabID.Value;

      CDSConsultaPorLista.Close;
      CDSConsultaPorLista.Params.ParamByName('Lista').Value := dbcListas.KeyValue;
      CDSConsultaPorLista.Open;
    end;

end;

procedure TFormConsultaStock.dbcListasClick(Sender: TObject);
begin
  CDSConsultaPorLista.Close;
  CDSConsultaPorLista.Params.ParamByName('Lista').Value:=dbcListas.KeyValue;
  CDSConsultaPorLista.Open;
end;


procedure TFormConsultaStock.dbgStockEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  dbgStock.DragMode:=dmManual;
end;

procedure TFormConsultaStock.dbgStockMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if {(Button=mbLeft)} (Shift=[ssShift,ssLeft]) 	then
    dbgStock.DragMode:=dmAutomatic
  else
    dbgStock.DragMode:=dmManual;
end;

procedure TFormConsultaStock.dbgStockTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
Var Campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgStock.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

END.