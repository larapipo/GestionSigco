unit UIngAjustesExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,   DB, ADODB, StdCtrls, Grids, DBGrids,
  JvComponentBase, ImgList,
  ActnList, ComCtrls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Mask, JvExMask, JvToolEdit, JvDBLookup, JvDBLookupComboEdit,
  Provider,DBClient, Data.FMTBcd, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvFormPlacement, System.Actions, JvLabel, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormIngAjusCCExcel = class(TFormABMBase)
    edPath: TEdit;
    dbgStock: TDBGrid;
    SpeedButton1: TSpeedButton;
    spAyudaFormato: TSpeedButton;
    pnAviso: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btImportarVta: TBitBtn;
    ADOConnection: TADOConnection;
    ADODSDatosXLS: TADODataSet;
    DSDatosXLS: TDataSource;
    OpenDialog: TOpenDialog;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    DSComprobantes: TDataSource;
    dbcComprob: TJvDBLookupCombo;
    btImportarComp: TBitBtn;
    QComprob: TSQLQuery;
    CDSComprob: TClientDataSet;
    DSPComprob: TDataSetProvider;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobDENOMINACION: TStringField;
    CDSComprobSUCURSAL: TIntegerField;
    CDSComprobMUESTRASUCURSAL: TStringField;
    QClientes: TSQLQuery;
    QClientesCODIGO: TStringField;
    QProveedores: TSQLQuery;
    QProveedoresCODIGO: TStringField;
    QLoteClientes: TSQLQuery;
    QLoteProveedores: TSQLQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btImportarVtaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btImportarCompClick(Sender: TObject);
    procedure dbgStockTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIngAjusCCExcel: TFormIngAjusCCExcel;

implementation

uses UAjustesCCClientes_2, UAjustesCCProveedores,
     URenombrarColumnaGrilla,UDMain_FD;

{$R *.dfm}

procedure TFormIngAjusCCExcel.btImportarCompClick(Sender: TObject);
var Debe,Haber:Currency;
Proveedor:String;
Lote,Importados:Integer;
begin
  inherited;
  Importados:=0;
  if dbcComprob.KeyValue<0 then
    raise Exception.Create('No hay Comprobante seleccionado');
  if ADODSDatosXLS.IsEmpty then
    raise Exception.Create('No hay Datos para procesar');

  QLoteProveedores.Close;
  QLoteProveedores.Open;
  if QLoteProveedores.Fields[0].AsString<>'' then
    Lote:= QLoteProveedores.Fields[0].AsInteger+1
  else
    Lote:= 1;
  QLoteProveedores.Close;

  if Not(Assigned(FormAjusteCCProveedores)) then
    FormAjusteCCProveedores:=TFormAjusteCCProveedores.Create(Self);
 // FormAjustesCCVenta_2.Visible:=False;
  ADODSDatosXLS.First;
  while Not(ADODSDatosXLS.Eof) do
    begin
     if ADODSDatosXLS.FieldByName('Debe').AsString<>'' then
        Debe:=ADODSDatosXLS.FieldByName('Debe').Value
      else
        Debe:=0;

      if ADODSDatosXLS.FieldByName('Haber').AsString<>'' then
        Haber:=ADODSDatosXLS.FieldByName('Haber').Value
      else
        Haber:=0;

      QProveedores.Close;
      QProveedores.ParamByName('codigo').AsString:=Copy(ADODSDatosXLS.FieldByName('Codigo').AsString,1,6);
      QProveedores.Open;
      Proveedor := QProveedoresCODIGO.AsString;
      QProveedores.Close;

      if ((Haber+Debe)>0) and (Proveedor<>'') then
        begin
          Importados:=Importados+1;
          FormAjusteCCProveedores.Agregar.Execute;
          FormAjusteCCProveedores.CDSAjustesSUCURSALSetText(FormAjusteCCProveedores.CDSAjustesSUCURSAL,IntToStr(dbcComprob.LookupSource.DataSet.FieldByName('Sucursal').Value));
          FormAjusteCCProveedores.CDSAjustesID_TIPOCOMPROBANTESetText(FormAjusteCCProveedores.CDSAjustesID_TIPOCOMPROBANTE,IntToStr(dbcComprob.KeyValue));
          FormAjusteCCProveedores.CDSAjustesFECHA.AsDateTime    := ADODSDatosXLS.FieldByName('Fecha').Value;
          if ADODSDatosXLS.FieldByName('FechaVto').AsString<>'' then
            FormAjusteCCProveedores.CDSAjustesFECHAVTO.AsDateTime := ADODSDatosXLS.FieldByName('FechaVto').Value;
          FormAjusteCCProveedores.CDSAjustesCODIGOSetText(FormAjusteCCProveedores.CDSAjustesCODIGO,Proveedor);
          FormAjusteCCProveedores.CDSAjustesLOTE.Value       :=Lote;

          if ADODSDatosXLS.FieldByName('Debe').AsString<>'' then
            FormAjusteCCProveedores.CDSAjustesDEBE.AsFloat  := ADODSDatosXLS.FieldByName('Debe').Value
          else
            FormAjusteCCProveedores.CDSAjustesDEBE.AsFloat  := 0;

          if ADODSDatosXLS.FieldByName('Haber').AsString<>'' then
            FormAjusteCCProveedores.CDSAjustesHABER.AsFloat := ADODSDatosXLS.FieldByName('Haber').Value
          else
            FormAjusteCCProveedores.CDSAjustesHABER.AsFloat := 0;


          FormAjusteCCProveedores.CDSAjustesDETALLE.Value := Copy(Trim(ADODSDatosXLS.FieldByName('detalle').AsString),1,20);
          FormAjusteCCProveedores.Confirma.Execute;
        end;
      ADODSDatosXLS.Next;
    end;
  FormAjusteCCProveedores.Close;
  if FormAjusteCCProveedores<>Nil then
    FreeAndNil(FormAjusteCCProveedores);
  ShowMessage('Cantidad de Registros Importados.:'+IntToStr(Importados));

end;

procedure TFormIngAjusCCExcel.btImportarVtaClick(Sender: TObject);
var Debe,Haber:Currency;
Cliente:String;
lote,Importados:Integer;
begin
  inherited;
  Importados:=0;
  if dbcComprob.KeyValue<0 then
    raise Exception.Create('No hay Comprobante seleccionado');
  if ADODSDatosXLS.IsEmpty then
    raise Exception.Create('No hay Datos para procesar');

  if Not(Assigned(FormAjustesCCVenta_2)) then
    FormAjustesCCVenta_2:=TFormAjustesCCVenta_2.Create(Self);
 // FormAjustesCCVenta_2.Visible:=False;
  ADODSDatosXLS.First;

  QLoteClientes.Close;
  QLoteClientes.Open;
  if QLoteClientes.Fields[0].AsString<>'' then
    Lote:= QLoteClientes.Fields[0].AsInteger+1
  else
    Lote:= 1;
  QLoteClientes.Close;

  while Not(ADODSDatosXLS.Eof) do
    begin
      if ADODSDatosXLS.FieldByName('Debe').AsString<>'' then
        Debe:=ADODSDatosXLS.FieldByName('Debe').Value
      else
        Debe:=0;

      if ADODSDatosXLS.FieldByName('Haber').AsString<>'' then
        Haber:=ADODSDatosXLS.FieldByName('Haber').Value
      else
        Haber:=0;

      QClientes.Close;
      QClientes.ParamByName('codigo').AsString:=Copy(ADODSDatosXLS.FieldByName('Codigo').AsString,1,6);
      QClientes.Open;
      Cliente := QClientesCODIGO.AsString ;
      QClientes.Close;

      if ((Haber+Debe)>0) and (Cliente<>'') then
        begin
          Importados:=Importados+1;
          FormAjustesCCVenta_2.Agregar.Execute;
          FormAjustesCCVenta_2.CDSAjustesSUCURSALSetText(FormAjustesCCVenta_2.CDSAjustesSUCURSAL,IntToStr(dbcComprob.LookupSource.DataSet.FieldByName('Sucursal').Value));
          FormAjustesCCVenta_2.CDSAjustesID_TIPOCOMPROBANTESetText(FormAjustesCCVenta_2.CDSAjustesID_TIPOCOMPROBANTE,IntToStr(dbcComprob.KeyValue));
          FormAjustesCCVenta_2.CDSAjustesCODIGOSetText(FormAjustesCCVenta_2.CDSAjustesCODIGO,Cliente);
          FormAjustesCCVenta_2.CDSAjustesFECHA.AsDateTime    := ADODSDatosXLS.FieldByName('Fecha').AsDateTime;
          if ADODSDatosXLS.FieldByName('FechaVto').AsString<>'' then
            FormAjustesCCVenta_2.CDSAjustesFECHAVTO.AsDateTime := ADODSDatosXLS.FieldByName('FechaVto').AsDAteTime;
          FormAjustesCCVenta_2.CDSAjustesLOTE.Value          := Lote;

          if ADODSDatosXLS.FieldByName('Debe').AsString<>'' then
            FormAjustesCCVenta_2.CDSAjustesDEBE.AsFloat    := ADODSDatosXLS.FieldByName('Debe').Value
          else
            ADODSDatosXLS.FieldByName('Debe').AsFloat      :=0;

          if ADODSDatosXLS.FieldByName('Haber').AsString<>'' then
            FormAjustesCCVenta_2.CDSAjustesHABER.AsFloat   := ADODSDatosXLS.FieldByName('Haber').Value
          else
            FormAjustesCCVenta_2.CDSAjustesHABER.AsFloat   := 0;

          FormAjustesCCVenta_2.CDSAjustesDETALLE.Value       := Copy(Trim(ADODSDatosXLS.FieldByName('detalle').AsString),1,20);
          FormAjustesCCVenta_2.Confirma.Execute;
        end;
      ADODSDatosXLS.Next;
    end;
  FormAjustesCCVenta_2.Close;
  if FormAjustesCCVenta_2<>Nil then
    FreeAndNil(FormAjustesCCVenta_2);
  ShowMessage('Cantidad de Registros Importados.:'+IntToStr(Importados));

end;

procedure TFormIngAjusCCExcel.dbgStockTitleClick(Column: TColumn);
begin
  inherited;
  if Not(Assigned(FormRenombrarColumnaGrilla)) then
    FormRenombrarColumnaGrilla:=TFormRenombrarColumnaGrilla.create(FormIngAjusCCExcel);
  FormRenombrarColumnaGrilla.Nombre:=Column.Title.Caption;
  FormRenombrarColumnaGrilla.ShowModal;
  Column.Title.Caption:=FormRenombrarColumnaGrilla.Nombre;

end;

procedure TFormIngAjusCCExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSComprob.Close;
  Action:=caFree;

end;

procedure TFormIngAjusCCExcel.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=true;
  CDSComprob.Open;
end;

procedure TFormIngAjusCCExcel.FormDestroy(Sender: TObject);
begin
  inherited;
  FormIngAjusCCExcel:=Nil;
end;

procedure TFormIngAjusCCExcel.SpeedButton1Click(Sender: TObject);
begin
  inherited;
if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
         edPath.Text:=OpenDialog.FileName;
        ADOConnection.Connected:=False;
        ADODSDatosXLS.Active:=False;
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
        ADODSDatosXLS.Connection:=ADOConnection;
        ADODSDatosXLS.CommandType:=cmdTableDirect;
        ADODSDatosXLS.CommandText:='Hoja1$';
        ADOConnection.Connected:=true;
        ADODSDatosXLS.Active:=True;
      end;
end;

procedure TFormIngAjusCCExcel.SpeedButton2Click(Sender: TObject);
begin
  inherited;
 if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

end.
