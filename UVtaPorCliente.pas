unit UVtaPorCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider,  wwDialog, wwidlg, rxrxPlacemnt,
  Db, DBTables, Wwintl, ActnList, ImgList, RXClock, RXCtrls, RXDBCtrl,
  StdCtrls, Buttons, ToolWin, ComCtrls, ExtCtrls, Mask, rxToolEdit, Grids,
  Wwdbigrd, Wwdbgrid, TeEngine, Series, TeeProcs, Chart, mxgraph, mxDB,
  mxstore, DBChart, rxCurrEdit
  
  ,Variants
  ;


type
  TFormVtaClienteProducto = class(TFormABMBase)
    QVtaCliente: TQuery;
    DSPVtaCliente: TDataSetProvider;
    CDSVtaCliente: TClientDataSet;
    DSVtaCliente: TDataSource;
    ceCliente: TComboEdit;
    edNombreCliente: TEdit;
    QClientes: TQuery;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesCODIGO: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEDISCADO: TStringField;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TDateTimeField;
    CDSClientesFECHAALTA: TDateTimeField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    wwBuscadorCliente: TwwLookupDialog;
    BuscarCliente: TAction;
    RxLabel3: TRxLabel;
    RxLabel1: TRxLabel;
    Desde: TDateEdit;
    RxLabel2: TRxLabel;
    Hasta: TDateEdit;
    RxLabel4: TRxLabel;
    wwDBGrid1: TwwDBGrid;
    CDSVtaClienteCODIGOARTICULO: TStringField;
    CDSVtaClienteDETALLE: TStringField;
    CDSVtaClienteCANT: TFloatField;
    CDSVtaClienteSUM: TFloatField;
    DBChart1: TDBChart;
    Query1: TQuery;
    QSumaGeneral: TQuery;
    ceSumaTotal: TCurrencyEdit;
    RxLabel5: TRxLabel;
    CDSVtaClienteporcentaje: TFloatField;
    TrackBar: TTrackBar;
    Series1: TBarSeries;
    Series2: TLineSeries;
    GroupBox1: TGroupBox;
    PorCantidad: TCheckBox;
    PorImporte: TCheckBox;
    MostrarSeries: TAction;
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSVtaClienteCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TrackBarChange(Sender: TObject);
    procedure MostrarSeriesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVtaClienteProducto: TFormVtaClienteProducto;

implementation

uses DMMainForm;

{$R *.DFM}

procedure TFormVtaClienteProducto.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormVtaClienteProducto.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  QClientes.Close;
  QClientes.Open;
  IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=
        wwBuscadorCliente.LookupTable.FieldByName('Codigo').AsString;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=
        wwBuscadorCliente.LookupTable.FieldByName('Codigo').AsString;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;

end;

procedure TFormVtaClienteProducto.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
  if (edNombreCliente.Text<>'') and (not((copy(Desde.text,1,1)=' ') or (copy(hasta.text,1,1)=' '))) then
    begin
       QSumaGeneral.Close;
       QSumaGeneral.ParamByName('codigo').Value:=ceCliente.Text;
       QSumaGeneral.ParamByName('desde').value:=Copy(desde.Text, 4, 2) + '/' + Copy(desde.Text, 1, 2) + '/' + Copy(desde.Text, 7, 4);
       QSumaGeneral.ParamByName('hasta').value:=Copy(hasta.Text, 4, 2) + '/' + Copy(hasta.Text, 1, 2) + '/' + Copy(hasta.Text, 7, 4);
       QSumaGeneral.Open;
       if QSumaGeneral.Fields[1].Value<>null Then
        ceSumaTotal.Value:=QSumaGeneral.Fields[1].Value;
       CDSVtaCliente.Close;
       CDSVtaCliente.Params.ParamByName('codigo').Value:=ceCliente.Text;
       CDSVtaCliente.Params.ParamByName('desde').value:=Copy(desde.Text, 4, 2) + '/' + Copy(desde.Text, 1, 2) + '/' + Copy(desde.Text, 7, 4);
       CDSVtaCliente.Params.ParamByName('hasta').value:=Copy(hasta.Text, 4, 2) + '/' + Copy(hasta.Text, 1, 2) + '/' + Copy(hasta.Text, 7, 4);
       CDSVtaCliente.Open;
       Query1.Close;
       Query1.ParamByName('codigo').Value:=ceCliente.Text;
       Query1.ParamByName('desde').value:=Copy(desde.Text, 4, 2) + '/' + Copy(desde.Text, 1, 2) + '/' + Copy(desde.Text, 7, 4);
       Query1.ParamByName('hasta').value:=Copy(hasta.Text, 4, 2) + '/' + Copy(hasta.Text, 1, 2) + '/' + Copy(hasta.Text, 7, 4);
       Query1.Open;
       TrackBar.Max:=DBChart1.NumPages;
    end;

end;

procedure TFormVtaClienteProducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSVtaCliente.Close;
  Action:=caFree;
end;

procedure TFormVtaClienteProducto.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVtaClienteProducto:=nil;
end;

procedure TFormVtaClienteProducto.FormCreate(Sender: TObject);
begin
  inherited;
  Desde.Date:=now;
  Hasta.Date:=now-30;
end;

procedure TFormVtaClienteProducto.CDSVtaClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVtaClienteporcentaje.Value:=(CDSVtaClienteSUM.Value/QSumaGeneral.Fields[1].Value)*100;
end;

procedure TFormVtaClienteProducto.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  inherited;
  IF AFieldName<>'porcentaje' Then
    begin
      IF AFieldName='SUM' Then
        CDSVtaCliente.IndexName:='SUM'
      else
        IF AFieldName='CANT' Then
          CDSVtaCliente.IndexName:='CANT'
        else
          CDSVtaCliente.IndexFieldNames:=AFieldName;
    end;
end;

procedure TFormVtaClienteProducto.TrackBarChange(Sender: TObject);
begin
  inherited;
  DBChart1.Page:=TrackBar.Position;
end;

procedure TFormVtaClienteProducto.MostrarSeriesExecute(Sender: TObject);
begin
  inherited;
  Series1.Active:=PorCantidad.Checked;
  Series2.Active:=PorImporte.Checked;
end;

end.
