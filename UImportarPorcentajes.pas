unit UImportarPorcentajes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, ComCtrls, ADODB, DB, StdCtrls, Grids, DBGrids,
  ActnList, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, DBClient, Provider, JvDBLookup, JvExComCtrls, JvProgressBar,
  JvDBProgressBar, DBXCommon, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormImportarPorcentajes = class(TFormABMBase)
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    spAyudaFormato: TSpeedButton;
    dbgStock: TDBGrid;
    pnAviso: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ADOConnection: TADOConnection;
    ADODSStockXLS: TADODataSet;
    btImportar: TBitBtn;
    ToolButton1: TToolButton;
    OpenDialog: TOpenDialog;
    DSStockXLS: TDataSource;
    Label2: TLabel;
    dbclista: TJvDBLookupCombo;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    DSLista: TDataSource;
    pbEstado: TProgressBar;
    QActualiza: TFDQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarPorcentajes: TFormImportarPorcentajes;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormImportarPorcentajes.btImportarClick(Sender: TObject);
var Codigo:String;
begin
 inherited;
 sbEstado.SimplePanel:=True;
 sbEstado.SimpleText:='';
 pbEstado.Min:=0;
 if ADODSStockXLS.RecordCount-1>0 then
   pbEstado.Max:=ADODSStockXLS.RecordCount-1;
 pbEstado.Position:=0;
 ADODSStockXLS.First;
  while not ADODSStockXLS.Eof do
    begin
      if pbEstado.Position<pbEstado.Max then
        pbEstado.Position:=pbEstado.Position+1;
      sbEstado.SimpleText:='Reg:'+IntToStr(pbEstado.Position)+'/'+IntToStr(pbEstado.Max);
      Application.ProcessMessages;
      Codigo := Trim(ADODSStockXLS.FieldByName('Codigo').AsString);
      if codigo<>'' Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            QActualiza.Close;
            QActualiza.ParamByName('codigo').Value    := ADODSStockXLS.FieldByName('codigo').AsString;
            QActualiza.ParamByName('rec').Value       := ADODSStockXLS.FieldByName('recargo').Value;
            QActualiza.ParamByName('id_lista').Value  := dbclista.KeyValue;//   StrToInt(Edit1.Text);
            QActualiza.ExecSQL;
            DMMain_FD.fdcGestion.Commit;
            QActualiza.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
          //  ShowMessage('Transacción no finalizada....!');
          End;
        end;
      ADODSStockXLS.Next;
    end;
  sbEstado.SimpleText:='..';
  pbEstado.Position:=0;
  Application.ProcessMessages;
  edPath.Clear;
  ADOConnection.Connected:=False;
  ADODSStockXLS.Active:=False;
end;

procedure TFormImportarPorcentajes.CancelarExecute(Sender: TObject);
begin
//  inherited;
  ADODSStockXLS.Last;
  edPath.Clear;
end;

procedure TFormImportarPorcentajes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportarPorcentajes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSListaPrecios.Close;
  CDSListaPrecios.Params.ParamByName('uso').Value:='*';
  CDSListaPrecios.Open;
end;

procedure TFormImportarPorcentajes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarPorcentajes:=nil;
end;

procedure TFormImportarPorcentajes.FormResize(Sender: TObject);
begin
  inherited;
  if FormImportarPorcentajes<>nil Then
    if FormImportarPorcentajes.Width<>580 Then
      FormImportarPorcentajes.Width:=580;
end;

procedure TFormImportarPorcentajes.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportarPorcentajes.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
         edPath.Text:=OpenDialog.FileName;
        ADOConnection.Connected:=False;
        ADODSStockXLS.Active:=False;
        ADOConnection.ConnectionString:='';
        //ADODataSet1.CommandText:='';
        ADOConnection.ConnectionString:=
        'Provider=Microsoft.Jet.OLEDB.4.0; '+
        'User ID=Admin; '+
        'Data Source='+edPath.Text+'; '+
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
        ADODSStockXLS.Connection:=ADOConnection;
        ADODSStockXLS.CommandType:=cmdTableDirect;
        ADODSStockXLS.CommandText:='Hoja1$';
        ADOConnection.Connected:=true;
        ADODSStockXLS.Active:=True;
      end;

end;

end.
