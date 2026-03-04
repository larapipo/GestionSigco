unit UCambioPrecio_sombra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB,StdCtrls, DBClient,
  Provider, JvComponentBase, ImgList,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, JvDBLookup, SqlExpr, DBXCommon, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormCambioPrecioSombra = class(TFormABMBase)
    DSPConsultaStock: TDataSetProvider;
    CDSConsultaStock: TClientDataSet;
    CDSConsultaStockCODIGO_STK: TStringField;
    CDSConsultaStockDETALLE_STK: TStringField;
    CDSConsultaStockMARCA_STK: TStringField;
    CDSConsultaStockRUBRO_STK: TStringField;
    DSRubro: TDataSource;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CDSConsultaStockSUBRUBRO_STK: TStringField;
    dbgPrecios: TJvDBGrid;
    dbcMarcas: TJvDBLookupCombo;
    dbcRubro: TJvDBLookupCombo;
    dbcSubRubro: TJvDBLookupCombo;
    CDSConsultaStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSConsultaStockMODO_GRAVAMEN: TStringField;
    CDSMarca: TClientDataSet;
    DSPMarca: TDataSetProvider;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    QMarca: TFDQuery;
    QRubros: TFDQuery;
    QSubRubro: TFDQuery;
    QConsultaStock: TFDQuery;
    CDSConsultaStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSConsultaStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSConsultaStockFIJACION_PRECIO_TOTAL: TFloatField;
    spCambiaPrecioFD: TFDStoredProc;
    procedure dbcMarcasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgPreciosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSConsultaStockAfterEdit(DataSet: TDataSet);
    procedure dbgPreciosColEnter(Sender: TObject);
    procedure CDSConsultaStockAfterScroll(DataSet: TDataSet);
    procedure CDSConsultaStockBeforeInsert(DataSet: TDataSet);
    procedure dbgPreciosDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCambioPrecioSombra: TFormCambioPrecioSombra;

implementation

uses UStock_2,UDMain_fd;

{$R *.dfm}

procedure TFormCambioPrecioSombra.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSConsultaStock.Close;
  CDSConsultaStock.Filtered := False;
  CDSConsultaStock.Filter   := '';
  dbcMarcas.ClearValue;
  dbcRubro.ClearValue;
  dbcSubRubro.ClearValue;
  CDSConsultaStock.Open;
end;

procedure TFormCambioPrecioSombra.CDSConsultaStockAfterEdit(DataSet: TDataSet);
begin
  inherited;
  CDSConsultaStockFECHA_ACT_SOMBRA.AsDateTime:=Date;
end;

procedure TFormCambioPrecioSombra.CDSConsultaStockAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if CDSConsultaStock.RecordCount>0 then
    begin
      if CDSConsultaStockMODO_GRAVAMEN.Value[1] in ['G','M'] then
        dbgPrecios.SelectedIndex:=3
      else
        dbgPrecios.SelectedIndex:=4;
    end;

end;

procedure TFormCambioPrecioSombra.CDSConsultaStockBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  SysUtils.Abort;
end;

procedure TFormCambioPrecioSombra.ConfirmaExecute(Sender: TObject);
var NuevoCostoExento,NuevoCostoGravado,
    NuevoFPExento,NuevoFPGravado:Real;
begin
  CDSConsultaStock.First;
  CDSConsultaStock.DisableControls;
  While not(CDSConsultaStock.Eof) DO
    begin
      if ((CDSConsultaStockCOSTO_GRAVADO_SOMBRA.AsString<>'') and (CDSConsultaStockCOSTO_GRAVADO_SOMBRA.AsFloat>0)) or
         ((CDSConsultaStockCOSTO_EXENTO_SOMBRA.AsString<>'')  and (CDSConsultaStockCOSTO_EXENTO_SOMBRA.AsFloat>0)) Then
       begin
         DMMain_FD.fdcGestion.StartTransaction;
         try
           spCambiaPrecioFD.close;
           spCambiaPrecioFD.ParamByName('Codigo').Value       := CDSConsultaStockCODIGO_STK.Value;
           spCambiaPrecioFD.ParamByName('COSTOEXENTO').Value  := CDSConsultaStockCOSTO_EXENTO_SOMBRA.AsFloat;
           spCambiaPrecioFD.ParamByName('COSTOGRAVADO').Value := CDSConsultaStockCOSTO_GRAVADO_SOMBRA.AsFloat;
           spCambiaPrecioFD.ParamByName('Fecha').AsDate       := CDSConsultaStockFECHA_ACT_SOMBRA.AsDateTime;
           spCambiaPrecioFD.ExecProc;
           DMMain_FD.fdcGestion.Commit;
           spCambiaPrecioFD.close;
         Except
           DMMain_FD.fdcGestion.Rollback;
           ShowMessage('Item no Modificado');
         end;
       end;
      CDSConsultaStock.Next;
    end;
  spCambiaPrecioFD.close;

  CDSConsultaStock.EnableControls;
  CDSConsultaStock.Close;
  Buscar.Execute;
end;

procedure TFormCambioPrecioSombra.dbgPreciosColEnter(Sender: TObject);
begin
  inherited;
  if dbgPrecios.SelectedIndex<=2 then
    dbgPrecios.SelectedIndex:=3;

  if (CDSConsultaStockMODO_GRAVAMEN.Value[1] in ['G','M']) and (dbgPrecios.SelectedIndex=4) then
     dbgPrecios.SelectedIndex:=3;
  if (CDSConsultaStockMODO_GRAVAMEN.Value[1] in ['E']) and (dbgPrecios.SelectedIndex=3) then
     dbgPrecios.SelectedIndex:=4;

end;

procedure TFormCambioPrecioSombra.dbgPreciosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=CDSConsultaStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
  FormStock_2.BringToFront;
end;

procedure TFormCambioPrecioSombra.dbgPreciosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  CDSConsultaStock.IndexFieldNames:=Field.FieldName;
end;

procedure TFormCambioPrecioSombra.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
  pnPrincipal.Enabled:=True;
end;

procedure TFormCambioPrecioSombra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCambioPrecioSombra.FormCreate(Sender: TObject);
VAR Mascara:String;
begin
  inherited;
  AutoSize:=False;
  AddClientDataSet(CDSConsultaStock,DSPConsultaStock);
//  CDSConsultaStock.Open;
  CDSMarca.Open;
  CDSRubro.Open;
  CDSSubRubro.Open;
  //aplica la mascara
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='STOCK';
  DMMain_FD.QOpciones.Open;
  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSConsultaStockFIJACION_PRECIO_TOTAL).EditFormat := Mascara;
  TFMTBCDField(CDSConsultaStockCOSTO_GRAVADO_SOMBRA).EditFormat  := Mascara;
  TFMTBCDField(CDSConsultaStockCOSTO_EXENTO_SOMBRA).EditFormat   := Mascara;

  TFMTBCDField(CDSConsultaStockFIJACION_PRECIO_TOTAL).DisplayFormat := Mascara;
  TFMTBCDField(CDSConsultaStockCOSTO_GRAVADO_SOMBRA).DisplayFormat  := Mascara;
  TFMTBCDField(CDSConsultaStockCOSTO_EXENTO_SOMBRA).DisplayFormat   := Mascara;
  DMMain_FD.QOpciones.Close;
  //***************
  pnPrincipal.Enabled:=True;
end;

procedure TFormCambioPrecioSombra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCambioPrecioSombra:=nil;
end;

procedure TFormCambioPrecioSombra.FormResize(Sender: TObject);
begin
  inherited;
  if FormCambioPrecioSombra<>nil then
    if FormCambioPrecioSombra.Width<>800 then
      FormCambioPrecioSombra.Width:=800;
      
end;

procedure TFormCambioPrecioSombra.dbcMarcasChange(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=dbcRubro.KeyValue;
  CDSSubRubro.Open;
  CDSConsultaStock.Filtered := False;
  CDSConsultaStock.Filter := '';
  IF dbcMarcas.Value <> '' THEN
    BEGIN
      CDSConsultaStock.Filter := 'marca_stk=' + char(39) + dbcMarcas.Value + char(39);
    END;
  IF dbcRubro.Value <> '' THEN
    BEGIN
      IF dbcMarcas.Value <> '' THEN
        CDSConsultaStock.Filter := CDSConsultaStock.Filter + ' and ' + 'rubro_stk=' + char(39) + dbcRubro.value + char(39)
      ELSE
        CDSConsultaStock.Filter := 'rubro_stk=' + char(39) +
          dbcRubro.value + char(39);
    END;
  IF dbcSubRubro.Value <> '' THEN
    BEGIN
      IF (dbcMarcas.Value <> '') OR (dbcRubro.Value <> '') THEN
        CDSConsultaStock.Filter := CDSConsultaStock.Filter + ' and ' +
          'subrubro_stk=' + char(39) + dbcSubRubro.value + char(39)
      ELSE
        CDSConsultaStock.Filter := 'subrubro_stk=' + char(39) +
          dbcSubRubro.value + char(39);
    END;
  IF (CDSConsultaStock.Filter <> '') and (Not(CDSConsultaStock.IsEmpty)) THEN
    CDSConsultaStock.Filtered := True;

end;

end.