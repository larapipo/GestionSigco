unit UControlCantidadesStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, DBCtrls,   Grids, DBGrids,
  System.ImageList, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, JvExControls, JvDBLookup, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions,
  JvLabel, JvDBControls, JvGradient, DataExport, DataToXLS, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, tmsAdvGridExcel;

type
  TFormControlCantidadesStock = class(TFormABMBase)
    CDSDepositoStk: TClientDataSet;
    DSPDepositoStk: TDataSetProvider;
    DSDepositos: TDataSource;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    cbDepositos: TJvDBLookupCombo;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosID: TIntegerField;
    CDSDepositoStkID_DEPOSITO: TIntegerField;
    CDSDepositoStkCODIGO_STK: TStringField;
    CDSDepositoStkMUESTRADETALLE: TStringField;
    DSRubro: TDataSource;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    DSPMarca: TDataSetProvider;
    CDSMarca: TClientDataSet;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    rxcbSubRubro: TJvDBLookupCombo;
    Label3: TLabel;
    rxcbRubro: TJvDBLookupCombo;
    Label2: TLabel;
    rxcbMarca: TJvDBLookupCombo;
    Label6: TLabel;
    QSubRubro: TFDQuery;
    QMarca: TFDQuery;
    QRubro: TFDQuery;
    QDepos: TFDQuery;
    QDepositosStk: TFDQuery;
    QDepositosStkID_DEPOSITO: TIntegerField;
    QDepositosStkCODIGO_STK: TStringField;
    QDepositosStkMUESTRADETALLE: TStringField;
    QDepositosStkMINIMO: TFloatField;
    QDepositosStkMEDIO: TFloatField;
    QDepositosStkRECARGO: TFloatField;
    PNcABECERA: TPanel;
    CDSDepositoStkMINIMO: TFloatField;
    CDSDepositoStkMEDIO: TFloatField;
    CDSDepositoStkRECARGO: TFloatField;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    ExportarXLS: TAction;
    BitBtn1: TBitBtn;
    DBAdvGrid1: TDBAdvGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rxcbRubroClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure AdvGridExcelIO1ExportColumnFormat(Sender: TObject; GridCol,
      GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
      var ExportCellAsString: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlCantidadesStock: TFormControlCantidadesStock;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormControlCantidadesStock.AdvGridExcelIO1ExportColumnFormat(
  Sender: TObject; GridCol, GridRow, XlsCol, XlsRow: Integer;
  const Value: WideString; var ExportCellAsString: Boolean);
begin
  inherited;
   if GridCol<=2 then
     ExportCellAsString:=True;
end;

procedure TFormControlCantidadesStock.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSDepositoStk.Close;
  CDSDepositoStk.Params.ParamByName('CodigoDeposito').Value:=cbDepositos.KeyValue;
  CDSDepositoStk.Params.ParamByName('Marca').Value         :=rxcbMarca.KeyValue;
  CDSDepositoStk.Params.ParamByName('Rubro').Value         :=rxcbRubro.KeyValue;
  CDSDepositoStk.Params.ParamByName('SubRubro').Value      :=rxcbSubRubro.KeyValue;
  CDSDepositoStk.Open;
end;

procedure TFormControlCantidadesStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSMarca.Close;
  CDSRubro.Close;
  CDSSubRubro.Close;
  CDSDepositos.Close;
  Action:=caFree;
end;

procedure TFormControlCantidadesStock.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=False;
  AddClientDataSet(CDSDepositoStk,DSPDepositoStk);
  CDSDepositos.Open;
  CDSDepositoStk.Open;
  CDSMarca.Open;
  CDSRubro.Open;
  CDSSubRubro.Open;
end;

procedure TFormControlCantidadesStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlCantidadesStock:=nil;
end;

procedure TFormControlCantidadesStock.FormResize(Sender: TObject);
begin
  inherited;
   if FormControlCantidadesStock<>nil then
     if FormControlCantidadesStock.Width<>656 then
       FormControlCantidadesStock.Width:=656;


end;

procedure TFormControlCantidadesStock.FormShow(Sender: TObject);
begin
  inherited;
  CDSDepositos.Open;
end;

procedure TFormControlCantidadesStock.rxcbRubroClick(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=CDSRubroCODIGO_RUBRO.Value;
  CDSSubRubro.Open;
  rxcbSubRubro.KeyValue:='';
  Buscar.Execute;
end;

procedure TFormControlCantidadesStock.DSBaseStateChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFormControlCantidadesStock.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if SaveDialog1.Execute then
    begin
      if SaveDialog1.FileName<>'' then
        if ExtractFileExt(SaveDialog1.FileName)='' then
         SaveDialog1.FileName:=SaveDialog1.FileName+'.xls';

      AdvGridExcelIO1.XLSExport(SaveDialog1.FileName);
    end;
end;

procedure TFormControlCantidadesStock.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if DBGrid1.SelectedIndex<2 Then
    DBGrid1.SelectedIndex:=2;
end;

procedure TFormControlCantidadesStock.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrid1.SelectedIndex < 4) THEN
        DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
      ELSE
        BEGIN
          DBGrid1.DataSource.DataSet.Next;
          DBGrid1.SelectedIndex := 1;
        END;
    END;
end;

end.