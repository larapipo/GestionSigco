unit UImportarCobroCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, ADODB, StdCtrls, Grids, DBGrids, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls,StrUtils, JvDBLookup, DBClient, Provider, Mask, JvExMask, JvToolEdit,
  DBCtrls,IniFiles, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormImportarCobroCupones = class(TFormABMBase)
    dbgrdStock: TDBGrid;
    edPath: TEdit;
    btn1: TSpeedButton;
    btnAyudaFormato: TSpeedButton;
    ADODSStockXLS: TADODataSet;
    DSStockXLS: TDataSource;
    ADOConnection: TADOConnection;
    OpenDialog: TOpenDialog;
    btImportar: TBitBtn;
    IngrearPago: TAction;
    QBuscaCliente: TSQLQuery;
    QBuscaClienteCODIGO: TStringField;
    btNovedades: TButton;
    QCtasCaja: TSQLQuery;
    DSPCtasCaja: TDataSetProvider;
    CDSCtasCaja: TClientDataSet;
    CDSCtasCajaID_CUENTA: TIntegerField;
    CDSCtasCajaID_TIPO_CTA: TIntegerField;
    CDSCtasCajaNOMBRE: TStringField;
    CDSCtasCajaNRO_CUENTA: TStringField;
    CDSCtasCajaID_BANCO: TIntegerField;
    CDSCtasCajaCUIT: TStringField;
    CDSCtasCajaRAZONSOCIAL: TStringField;
    DSCtasCaja: TDataSource;
    CtaCajaDestino: TLabel;
    dbcCajaDestino: TJvDBLookupCombo;
    Label1: TLabel;
    edFecha: TJvDateEdit;
    Label2: TLabel;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursales: TDataSource;
    Label3: TLabel;
    QComp: TSQLQuery;
    DSPComprob: TDataSetProvider;
    CDSComprob: TClientDataSet;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobSUCURSAL: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobDENOMINACION: TStringField;
    CDSComprobLETRA: TStringField;
    CDSComprobCOPIAS: TIntegerField;
    CDSComprobREPORTE: TStringField;
    CDSComprobDEFECTO: TStringField;
    DSComprob: TDataSource;
    dbcComprobante: TJvDBLookupCombo;
    dbcSucursalFacturacion: TJvDBLookupCombo;
    procedure btn1Click(Sender: TObject);
    procedure IngrearPagoExecute(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure btnAyudaFormatoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbcSucursalFacturacionChange(Sender: TObject);
    procedure dbcComprobanteEnter(Sender: TObject);
  private
    { Private declarations }
  public
    lista:TStringList;
    Path:String;    
    ImportarIni:TIniFile;

    { Public declarations }
  end;

var
  FormImportarCobroCupones: TFormImportarCobroCupones;

implementation

uses UAvisoProceso, UReciboAbonos, UListCpbteNoImportados;

{$R *.dfm}

procedure TFormImportarCobroCupones.btn1Click(Sender: TObject);
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
        ADODSStockXLS.Connection :=ADOConnection;
        ADODSStockXLS.CommandType:=cmdTableDirect;
      //  ADODSStockXLS.CommandText:='Hoja1$';
        ADOConnection.Connected:=true;
        ADODSStockXLS.Active:=True;
      end;

end;

procedure TFormImportarCobroCupones.btnAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  ShowMessage('En el Archivo de excel , poner como nombre de solapa, hoja1, para que no de error...')
end;

procedure TFormImportarCobroCupones.btNovedadesClick(Sender: TObject);
begin
  inherited;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

procedure TFormImportarCobroCupones.dbcComprobanteEnter(Sender: TObject);
begin
  inherited;
  CDSComprob.Close;
  CDSComprob.Params.ParamByName('suc').Value:=dbcSucursalFacturacion.KeyValue;
  CDSComprob.Open;

end;

procedure TFormImportarCobroCupones.dbcSucursalFacturacionChange(
  Sender: TObject);
begin
  inherited;
  CDSComprob.Close;
  CDSComprob.Params.ParamByName('suc').Value:=-1;
  CDSComprob.Open;
end;

procedure TFormImportarCobroCupones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ImportarIni     := TIniFile.Create(path + 'Importa_rec_cobros.Ini');
  ImportarIni.WriteInteger('Datos', 'caja',dbcCajaDestino.KeyValue );
  ImportarIni.WriteInteger('Datos','Sucursal',dbcSucursalFacturacion.KeyValue);
  ImportarIni.WriteInteger('Datos','Cpbte',dbcComprobante.KeyValue);
  ImportarIni.Free;

  CDSCtasCaja.Close;
  CDSSucursal.Close;
  CDSComprob.Open;

  Action   :=caFree;
end;

procedure TFormImportarCobroCupones.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;

  CDSCtasCaja.Close;
  CDSCtasCaja.Open;

  CDSSucursal.Close;
  CDSSucursal.Open;

  path                           := ExtractFilePath(ParamStr(0));
  ImportarIni                    := TIniFile.Create(path + 'Importa_rec_cobros.Ini');
  dbcCajaDestino.KeyValue        := ImportarIni.ReadInteger('Datos', 'caja',CajaPorDefecto);
  dbcSucursalFacturacion.KeyValue:= ImportarIni.ReadInteger('Datos','Sucursal',SucursalPorDefecto);

  CDSComprob.Close;
  CDSComprob.Params.ParamByName('suc').Value:=dbcSucursalFacturacion.KeyValue;
  CDSComprob.Open;

  CDSComprob.First;
  if CDSComprobID_COMPROBANTE.AsString<>'' then
    dbcComprobante.KeyValue        := ImportarIni.ReadInteger('Datos','Cpbte',CDSComprobID_COMPROBANTE.AsInteger)
  else
    dbcComprobante.KeyValue        := ImportarIni.ReadInteger('Datos','Cpbte',-1);


  ImportarIni.Free;
end;

procedure TFormImportarCobroCupones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarCobroCupones:=nil;
end;

procedure TFormImportarCobroCupones.FormShow(Sender: TObject);
begin
  inherited;
  edFecha.date:=Date;
end;

procedure TFormImportarCobroCupones.IngrearPagoExecute(Sender: TObject);
var codigo:String;
cajaActual:integer;
begin
  inherited;
  if dbcSucursalFacturacion.KeyValue<=-1 then
     RAISE Exception.Create('Falta Sucursal...');

  if dbcComprobante.KeyValue<=-1 then
     RAISE Exception.Create('Falta Comprobante..');

  if dbcCajaDestino.KeyValue<=-1 then
     RAISE Exception.Create('Falta Caja...');

  CajaActual     := CajaPorDefecto;
  CajaPorDefecto := dbcCajaDestino.KeyValue;
  Screen.Cursor:=crHourGlass;
  sbEstado.SimplePanel:=True;
  sbEstado.SimpleText:='Ingresando Datos....';
  Application.ProcessMessages;
  if Not(Assigned(FormReciboAbonos)) Then
    FormReciboAbonos :=TFormReciboAbonos.Create(Self);
  FormReciboAbonos.FormStyle:=fsNormal;
  FormReciboAbonos.Visible  :=False;
  FormReciboAbonos.CajaPorDefecto:=dbcCajaDestino.KeyValue;
  ADODSStockXLS.First;


  if Lista=nil then
    lista:=TStringList.Create;
  Lista.Clear;
  while not ADODSStockXLS.Eof do
    begin
      codigo:= AnsiLeftStr(Trim(ADODSStockXLS.fieldbyName('Barra').AsString),6);
      QBuscaCliente.Close;
      QBuscaCliente.ParamByName('CODIGO').AsString:=Codigo;
      QBuscaCliente.open;
      if (QBuscaClienteCODIGO.AsString<>'') Then
        begin
          sbEstado.SimpleText:='Ingresando Datos....'+Codigo;
          Application.ProcessMessages;
          FormReciboAbonos.Agregar.Execute;
          FormReciboAbonos.dbcSucursal.KeyValue              := dbcSucursalFacturacion.KeyValue;
        //  FormReciboAbonos.dbcSucursalFacturacion.KeyValue   := dbcSucursalFacturacion.KeyValue;
          FormReciboAbonos.dbcComprobante.KeyValue           := dbcComprobante.KeyValue;
          FormReciboAbonos.edCodigoBarra.Text                := Trim(ADODSStockXLS.fieldbyName('Barra').AsString);
          FormReciboAbonos.edFecha.Date                      := edFecha.Date;
          FormReciboAbonos.TraerCupon.Execute;
          if FormReciboAbonos.CDSRecDet.RecordCount>0 then
            FormReciboAbonos.Confirma.Execute
          else
            begin
              FormReciboAbonos.Cancelar.Execute;
              lista.Add(ADODSStockXLS.fieldbyName('Fecha').AsString+'-'+
                        ADODSStockXLS.fieldbyName('cliente').AsString+'-'+
                        ADODSStockXLS.fieldbyName('Barra').AsString+'.. Valor Cero o Cupon no encontrado..');
            end;
        end
      else
        begin
          lista.Add(ADODSStockXLS.fieldbyName('Fecha').AsString+'-'+
                    ADODSStockXLS.fieldbyName('cliente').AsString+'-'+
                    ADODSStockXLS.fieldbyName('Barra').AsString+'.. Cliente No encontrado...');
        end;
      ADODSStockXLS.Next;
    end;
  ADOConnection.Connected:=False;
  ADODSStockXLS.Active   :=False;
  FormReciboAbonos.Close;
  Screen.Cursor:=crDefault;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  CajaPorDefecto:=cajaActual;
end;

end.
