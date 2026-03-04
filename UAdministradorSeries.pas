unit UAdministradorSeries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, DBClient, Provider, Mask,   DBCtrls,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr, JvDBGridExport,
  JvExDBGrids, JvDBGrid, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormAdministradorSeries = class(TFormABMBase)
    DSStock: TDataSource;
    DSStockSeries: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DSMovSeries: TDataSource;
    Label3: TLabel;
    DSPStockSeries: TDataSetProvider;
    CDSStockSeries: TClientDataSet;
    CDSMovSeries: TClientDataSet;
    DSPMovSeries: TDataSetProvider;
    edNombre: TEdit;
    BuscarArticulo: TAction;
    edOrigen: TEdit;
    ceCodigo: TJvComboEdit;
    QMovSeires: TSQLQuery;
    QStockSeries: TSQLQuery;
    QStockSeriesID: TIntegerField;
    QStockSeriesCODIGO_STK: TStringField;
    QStockSeriesCODIGOSERIE: TStringField;
    QStockSeriesFECHAINGRESO: TSQLTimeStampField;
    QStockSeriesFECHAEGRESO: TSQLTimeStampField;
    QStockSeriesID_CPBTE_INGRESO: TIntegerField;
    QStockSeriesTIPOCPBTE_INGRESO: TStringField;
    QStockSeriesCLASECPBTE_INGRESO: TStringField;
    QStockSeriesNRO_CPBTE_INGRESO: TStringField;
    QStockSeriesID_CPBTE_EGRESO: TIntegerField;
    QStockSeriesTIPOCPBTE_EGRESO: TStringField;
    QStockSeriesCLASECPBTE_EGRESO: TStringField;
    QStockSeriesNRO_CPBTE_EGRESO: TStringField;
    QStockSeriesDEPOSITO: TIntegerField;
    QStockSeriesOBS: TStringField;
    QStockSeriesALTA_POR_VTA: TStringField;
    QMovSeiresID_MOV: TIntegerField;
    QMovSeiresID_STOCK_SERIE: TIntegerField;
    QMovSeiresCODIGO_STK: TStringField;
    QMovSeiresID_CPBTE: TIntegerField;
    QMovSeiresTIPOCPBTE: TStringField;
    QMovSeiresCLASECPBTE: TStringField;
    QMovSeiresFECHA: TSQLTimeStampField;
    QMovSeiresNROCPBTE: TStringField;
    QMovSeiresDEPOSITO: TIntegerField;
    QMovSeiresDETALLE: TStringField;
    QMovSeiresORIGEN: TStringField;
    CDSMovSeriesID_MOV: TIntegerField;
    CDSMovSeriesID_STOCK_SERIE: TIntegerField;
    CDSMovSeriesCODIGO_STK: TStringField;
    CDSMovSeriesID_CPBTE: TIntegerField;
    CDSMovSeriesTIPOCPBTE: TStringField;
    CDSMovSeriesCLASECPBTE: TStringField;
    CDSMovSeriesFECHA: TSQLTimeStampField;
    CDSMovSeriesNROCPBTE: TStringField;
    CDSMovSeriesDEPOSITO: TIntegerField;
    CDSMovSeriesDETALLE: TStringField;
    CDSMovSeriesORIGEN: TStringField;
    CDSStockSeriesID: TIntegerField;
    CDSStockSeriesCODIGO_STK: TStringField;
    CDSStockSeriesCODIGOSERIE: TStringField;
    CDSStockSeriesFECHAINGRESO: TSQLTimeStampField;
    CDSStockSeriesFECHAEGRESO: TSQLTimeStampField;
    CDSStockSeriesID_CPBTE_INGRESO: TIntegerField;
    CDSStockSeriesTIPOCPBTE_INGRESO: TStringField;
    CDSStockSeriesCLASECPBTE_INGRESO: TStringField;
    CDSStockSeriesNRO_CPBTE_INGRESO: TStringField;
    CDSStockSeriesID_CPBTE_EGRESO: TIntegerField;
    CDSStockSeriesTIPOCPBTE_EGRESO: TStringField;
    CDSStockSeriesCLASECPBTE_EGRESO: TStringField;
    CDSStockSeriesNRO_CPBTE_EGRESO: TStringField;
    CDSStockSeriesDEPOSITO: TIntegerField;
    CDSStockSeriesOBS: TStringField;
    CDSStockSeriesALTA_POR_VTA: TStringField;
    QStock: TSQLQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockCONTROL_SERIE: TStringField;
    Label4: TLabel;
    QOrigen: TSQLQuery;
    QOrigenDETALLE: TStringField;
    JvDBGridWordExport1: TJvDBGridWordExport;
    JvDBStatusLabel1: TJvDBStatusLabel;
    dbgStockSerie: TJvDBGrid;
    dbgMov: TJvDBGrid;
    chDisponibles: TCheckBox;
    procedure QStockAfterScroll(DataSet: TDataSet);
    procedure CDSStockSeriesAfterScroll(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSMovSeriesAfterScroll(DataSet: TDataSet);
    procedure CDSStockSeriesBeforeInsert(DataSet: TDataSet);
    procedure CDSMovSeriesBeforeInsert(DataSet: TDataSet);
    procedure CancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgStockSerieTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgMovDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdministradorSeries: TFormAdministradorSeries;

implementation

uses UBuscadorArticulos, UFactura_2, UFacturaCtdo_2, UCompra_2,
  UCompraCtdo_2, UAjusteMercaderia,UDMain_FD;

{$R *.DFM}

procedure TFormAdministradorSeries.QStockAfterScroll(DataSet: TDataSet);
begin
  inherited;
 // Recuperar.Execute;
end;

procedure TFormAdministradorSeries.CDSStockSeriesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  edOrigen.Text:='';
  CDSMovSeries.Close;
  CDSMovSeries.Params.ParamByName('id_stock_serie').Value:=CDSStockSeriesID.Value;
  CDSMovSeries.Open;
end;

procedure TFormAdministradorSeries.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
  IF CDSStockSeries.State <>dsBrowse Then
    CDSStockSeries.Post;
  IF CDSMovSeries.State <>dsBrowse Then
    CDSMovSeries.Post;

  CDSStockSeries.ApplyUpdates(0);
  CDSMovSeries.ApplyUpdates(0);
end;

procedure TFormAdministradorSeries.dbgMovDblClick(Sender: TObject);
begin
  inherited;
  if CDSMovSeriesORIGEN.Value='V' then
    begin
      if CDSMovSeriesTIPOCPBTE.Value='FC' then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew  :=CDSMovSeriesID_CPBTE.AsString;
          FormCpbte_2.TipoCpbte:='FC';
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
          FormCpbte_2.BringToFront;
        end
      else
        if CDSMovSeriesTIPOCPBTE.Value='FO' then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew  :=CDSMovSeriesID_CPBTE.AsString;
            FormCpbteCtdo_2.TipoCpbte:='FO';
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
            FormCpbteCtdo_2.BringToFront;
        end
    end
  else

  if CDSMovSeriesORIGEN.Value='C' then
    begin
      if CDSMovSeriesTIPOCPBTE.Value='FC' then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Self);
          FormCompra_2.DatoNew  :=CDSMovSeriesID_CPBTE.AsString;
          FormCompra_2.TipoCpbte:='FC';
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
          FormCompra_2.BringToFront;
        end
      else
        if CDSMovSeriesTIPOCPBTE.Value='FO' then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
            FormCompraCtdo_2.DatoNew  :=CDSMovSeriesID_CPBTE.AsString;
            FormCompraCtdo_2.TipoCpbte:='FO';
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
            FormCompraCtdo_2.BringToFront;
        end
    end
  else

  if CDSMovSeriesORIGEN.Value='J' then
    begin
      if CDSMovSeriesTIPOCPBTE.Value='AS' then
        begin
          if Not(Assigned(FormAjustesStock)) then
            FormAjustesStock:=TFormAjustesStock.Create(Self);
          FormAjustesStock.DatoNew  :=CDSMovSeriesID_CPBTE.AsString;
          FormAjustesStock.TipoCpbte:='AS';
          FormAjustesStock.Recuperar.Execute;
          FormAjustesStock.Show;
          FormAjustesStock.BringToFront;
        end
    end;

end;

procedure TFormAdministradorSeries.dbgStockSerieTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgStockSerie.DataSource.DataSet as TClientDataSet do
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

procedure TFormAdministradorSeries.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  edOrigen.Text:='';
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
      ceCodigo.Text:=FormBuscadorArticulos.Codigo;
      DatoNew:=FormBuscadorArticulos.Codigo;
      Recuperar.Execute;
    end;
end;

procedure TFormAdministradorSeries.RecuperarExecute(Sender: TObject);
begin
  inherited;
  QStock.Close;
  QStock.ParamByName('Codigo').Value:=DatoNew;
  QStock.Open;
  edNombre.Text:=QStockDETALLE_STK.Value;
  ceCodigo.Text:=QStockCODIGO_STK.Value;

  CDSStockSeries.Close;
  CDSStockSeries.Params.ParamByName('codigo_stk').Value:=DatoNew;
  if chDisponibles.Checked then
    CDSStockSeries.Params.ParamByName('disponible').Value:= 0
  else
    CDSStockSeries.Params.ParamByName('disponible').Value:= -1;


  CDSStockSeries.Open;

  CDSMovSeries.Close;
  CDSMovSeries.Params.ParamByName('id_stock_serie').Value:=CDSStockSeriesID.Value;
  CDSMovSeries.Open;

end;

procedure TFormAdministradorSeries.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAdministradorSeries.FormCreate(Sender: TObject);
begin
  inherited;
  Tabla:='stock';
  Campo:='codigo_stk';
end;

procedure TFormAdministradorSeries.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAdministradorSeries:=nil;
end;

procedure TFormAdministradorSeries.CDSMovSeriesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  edOrigen.Text:='';
  if CDSMovSeriesID_CPBTE.AsString<>'' Then
    begin
      QOrigen.Close;
      QOrigen.ParamByName('Origen').AsString :=CDSMovSeriesORIGEN.AsString;
      QOrigen.ParamByName('Id').AsInteger    :=CDSMovSeriesID_CPBTE.AsInteger;
      QOrigen.Open;
      edOrigen.Text:=QOrigenDETALLE.AsString;
    end;
end;

procedure TFormAdministradorSeries.CDSStockSeriesBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  SysUtils.Abort;
end;

procedure TFormAdministradorSeries.CDSMovSeriesBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  SysUtils.Abort;
end;

procedure TFormAdministradorSeries.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSStockSeries.Close;
  CDSStockSeries.Params.ParamByName('codigo_stk').Value:=ceCodigo.Text;
  if chDisponibles.Checked then
    CDSStockSeries.Params.ParamByName('disponible').Value:= 0
  else
    CDSStockSeries.Params.ParamByName('disponible').Value:= -1;

  CDSStockSeries.Open;

  CDSMovSeries.Close;
  CDSMovSeries.Params.ParamByName('id_stock_serie').Value:=CDSStockSeriesID.Value;
  CDSMovSeries.Open;
end;

procedure TFormAdministradorSeries.CancelarExecute(Sender: TObject);
begin
 // inherited;
  CDSStockSeries.Close;
  CDSStockSeries.Params.ParamByName('codigo_stk').Clear;
  CDSStockSeries.Open;

  CDSMovSeries.Close;
  CDSMovSeries.Params.ParamByName('id_stock_serie').Clear;
  CDSMovSeries.Open;

end;

end.
