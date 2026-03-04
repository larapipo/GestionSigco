unit UImportacionFacCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, StdCtrls, Mask, JvExMask,
  JvToolEdit, JvExControls, JvDBLookup, JvLabel, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls, ADODB, Grids,
  DBGrids,IniFiles,math,StrUtils, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, JvExExtCtrls, JvExtComponent, JvPanel, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid;

type
  TFormImportacionCompraGral = class(TFormABMBase)
    RxLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel6: TJvLabel;
    dbcFacturaA: TJvDBLookupCombo;
    RxLabel3: TJvLabel;
    dbcDeposito: TJvDBLookupCombo;
    Label1: TLabel;
    ceCodigo: TJvComboEdit;
    Label3: TLabel;
    ceCodigo105: TJvComboEdit;
    edDetalle2: TEdit;
    edDetalle: TEdit;
    Label2: TLabel;
    edPath: TEdit;
    BuscarArchivo: TSpeedButton;
    JvLabel1: TJvLabel;
    ceCentroCosto: TJvDBLookupCombo;
    QCtroCosto: TFDQuery;
    DSPCtroCosto: TDataSetProvider;
    CDSCtroCosto: TClientDataSet;
    CDSCtroCostoID: TIntegerField;
    CDSCtroCostoDESCRIPCION: TStringField;
    CDSCtroCostoPOR_DEFECTO: TStringField;
    DSCtroCosto: TDataSource;
    QAplicCCosto: TFDQuery;
    DSSucursal: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSFc_A: TDataSource;
    CDSFc_A: TClientDataSet;
    DSDeposito: TDataSource;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSPDepositos: TDataSetProvider;
    QComproba: TFDQuery;
    QDepositos: TFDQuery;
    ADOConnection: TADOConnection;
    ADODSMovXLS: TADODataSet;
    DSMovXLS: TDataSource;
    JvLabel2: TJvLabel;
    dbcFacturaB: TJvDBLookupCombo;
    dbcF_ContadoA: TJvDBLookupCombo;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    dbcF_ContadoB: TJvDBLookupCombo;
    dbcNc_A: TJvDBLookupCombo;
    dbcNd_A: TJvDBLookupCombo;
    dbcNd_B: TJvDBLookupCombo;
    DSPComprobante: TDataSetProvider;
    CDSFc_B: TClientDataSet;
    DSFc_B: TDataSource;
    CDSFo_A: TClientDataSet;
    DSFo_A: TDataSource;
    CDSFc_AID_COMPROBANTE: TIntegerField;
    CDSFc_ATIPO_COMPROB: TStringField;
    CDSFc_ACLASE_COMPROB: TStringField;
    CDSFc_ADENOMINACION: TStringField;
    CDSFc_ASUCURSAL: TIntegerField;
    CDSFc_ALETRA: TStringField;
    CDSFc_BID_COMPROBANTE: TIntegerField;
    CDSFc_BTIPO_COMPROB: TStringField;
    CDSFc_BCLASE_COMPROB: TStringField;
    CDSFc_BDENOMINACION: TStringField;
    CDSFc_BSUCURSAL: TIntegerField;
    CDSFc_BLETRA: TStringField;
    CDSFo_AID_COMPROBANTE: TIntegerField;
    CDSFo_ATIPO_COMPROB: TStringField;
    CDSFo_ACLASE_COMPROB: TStringField;
    CDSFo_ADENOMINACION: TStringField;
    CDSFo_ASUCURSAL: TIntegerField;
    CDSFo_ALETRA: TStringField;
    CDSFo_B: TClientDataSet;
    DSFo_B: TDataSource;
    CDSFo_BID_COMPROBANTE: TIntegerField;
    CDSFo_BTIPO_COMPROB: TStringField;
    CDSFo_BCLASE_COMPROB: TStringField;
    CDSFo_BDENOMINACION: TStringField;
    CDSFo_BSUCURSAL: TIntegerField;
    CDSFo_BLETRA: TStringField;
    CDSNc_A: TClientDataSet;
    DSNc_A: TDataSource;
    CDSNc_AID_COMPROBANTE: TIntegerField;
    CDSNc_ATIPO_COMPROB: TStringField;
    CDSNc_ACLASE_COMPROB: TStringField;
    CDSNc_ADENOMINACION: TStringField;
    CDSNc_ASUCURSAL: TIntegerField;
    CDSNc_ALETRA: TStringField;
    CDSNc_B: TClientDataSet;
    DSNc_B: TDataSource;
    CDSNd_A: TClientDataSet;
    DSNd_A: TDataSource;
    DSNd_B: TDataSource;
    CDSNd_B: TClientDataSet;
    dbcNc_B: TJvDBLookupCombo;
    dbcF_ContadoC: TJvDBLookupCombo;
    JvLabel3: TJvLabel;
    dbcFacturaC: TJvDBLookupCombo;
    JvLabel10: TJvLabel;
    CDSFc_C: TClientDataSet;
    DSFc_C: TDataSource;
    CDSFo_C: TClientDataSet;
    DSFo_C: TDataSource;
    CDSNd_AID_COMPROBANTE: TIntegerField;
    CDSNd_ATIPO_COMPROB: TStringField;
    CDSNd_ACLASE_COMPROB: TStringField;
    CDSNd_ADENOMINACION: TStringField;
    CDSNd_ASUCURSAL: TIntegerField;
    CDSNd_ALETRA: TStringField;
    CDSNc_BID_COMPROBANTE: TIntegerField;
    CDSNc_BTIPO_COMPROB: TStringField;
    CDSNc_BCLASE_COMPROB: TStringField;
    CDSNc_BDENOMINACION: TStringField;
    CDSNc_BSUCURSAL: TIntegerField;
    CDSNc_BLETRA: TStringField;
    CDSFc_CID_COMPROBANTE: TIntegerField;
    CDSFc_CTIPO_COMPROB: TStringField;
    CDSFc_CCLASE_COMPROB: TStringField;
    CDSFc_CDENOMINACION: TStringField;
    CDSFc_CSUCURSAL: TIntegerField;
    CDSFc_CLETRA: TStringField;
    CDSNd_BID_COMPROBANTE: TIntegerField;
    CDSNd_BTIPO_COMPROB: TStringField;
    CDSNd_BCLASE_COMPROB: TStringField;
    CDSNd_BDENOMINACION: TStringField;
    CDSNd_BSUCURSAL: TIntegerField;
    CDSNd_BLETRA: TStringField;
    CDSFo_CID_COMPROBANTE: TIntegerField;
    CDSFo_CTIPO_COMPROB: TStringField;
    CDSFo_CCLASE_COMPROB: TStringField;
    CDSFo_CDENOMINACION: TStringField;
    CDSFo_CSUCURSAL: TIntegerField;
    CDSFo_CLETRA: TStringField;
    Label4: TLabel;
    ceCodigoCero: TJvComboEdit;
    edDetalleExento: TEdit;
    BuscarArticulo: TAction;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    spAyudaFormato: TSpeedButton;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    pnAviso_: TPanel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Importar: TAction;
    QBuscaProveeCuit: TFDQuery;
    spIngresarProveedor: TFDStoredProc;
    Label6: TLabel;
    Label7: TLabel;
    ceCodigo27: TJvComboEdit;
    edDetalle27: TEdit;
    OpenDialog: TOpenDialog;
    spPercecpciones: TFDStoredProc;
    QBuscaProveeCuitCODIGO: TStringField;
    pnContenedor: TJvPanel;
    dbgClientesXLS: TDBAdvGrid;
    JvDBStatusLabel1: TJvDBStatusLabel;
    spAltaCompra: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcSucursalClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure ImportarExecute(Sender: TObject);
    procedure BuscarArchivoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportacionCompraGral: TFormImportacionCompraGral;

implementation

{$R *.dfm}
uses UBuscadorArticulos, UDMain_FD;

procedure TFormImportacionCompraGral.BuscarArchivoClick(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
         edPath.Text:=OpenDialog.FileName;
        ADOConnection.Connected:=False;
        ADODSMovXLS.Active:=False;
        ADOConnection.ConnectionString:='';
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
        ADODSMovXLS.Connection := ADOConnection;
        ADODSMovXLS.CommandType:= cmdTableDirect;
        ADOConnection.Connected  := True;
        ADODSMovXLS.Active     := True;
      end;
end;

procedure TFormImportacionCompraGral.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       CDSStock.Close;
       CDSStock.Params.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       CDSStock.Open;
       if not(CDSStock.IsEmpty) then
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:=CDSStockDETALLE_STK.Value;
               ceCodigo.Text :=CDSStockCODIGO_STK.Value;
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :=CDSStockDETALLE_STK.Value;
                 ceCodigo105.Text :=CDSStockCODIGO_STK.Value;
               end
           else
             if (Sender as TJvComboEdit).Name='ceCodigoCero' then
               begin
                 edDetalleExento.Text :=CDSStockDETALLE_STK.Value;
                 ceCodigoCero.Text    :=CDSStockCODIGO_STK.Value;
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigo27' then
                 begin
                   edDetalle27.Text :=CDSStockDETALLE_STK.Value;
                   ceCodigo27.Text  :=CDSStockCODIGO_STK.Value;
                 end

         end
       else
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:='';
               ceCodigo.Text :='';
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :='';
                 ceCodigo105.Text :='';
               end
           else
             if (Sender as TJvComboEdit).Name='ceCodigoCero' then
               begin
                 edDetalleExento.Text :='';
                 ceCodigoCero.Text    :='';
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigo27' then
                 begin
                   edDetalle27.Text :='';
                   ceCodigo27.Text  :='';
                 end


         end;
       CDSStock.Close;

    end;

end;

procedure TFormImportacionCompraGral.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSDepositos.Open;
  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSDepositos.Open;

  dbcDeposito.KeyValue:=DepositoPorDefecto;

  CDSFc_A.Close;
  CDSFc_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_A.Open;

  CDSFc_B.Close;
  CDSFc_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_B.Open;

  CDSFo_A.Close;
  CDSFo_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_A.Open;

  CDSFo_B.Close;
  CDSFo_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_B.Open;

  CDSNc_A.Close;
  CDSNc_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNc_A.Open;

  CDSNc_B.Close;
  CDSNc_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNc_B.Open;

  CDSNd_A.Close;
  CDSNd_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNd_A.Open;

  CDSNd_B.Close;
  CDSNd_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNd_B.Open;

  CDSFc_C.Close;
  CDSFc_C.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_C.Open;

  CDSFo_C.Close;
  CDSFo_C.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_C.Open;
end;

procedure TFormImportacionCompraGral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImportacionCompra.ini');
  //*************************************************************
  ArchivoIni.WriteInteger('Dato', 'Deposito',dbcDeposito.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'Sucursal',dbcSucursal.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFCA',dbcFacturaA.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFCB',dbcFacturaB.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFCC',dbcFacturaC.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFOA',dbcF_ContadoA.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFOB',dbcF_ContadoB.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFOC',dbcF_ContadoC.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNCA',dbcNc_A.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNCB',dbcNc_B.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNDA',dbcNd_A.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNDB',dbcNd_B.KeyValue);
  ArchivoIni.WriteString('Dato', 'CodArticulo',ceCodigo.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo',edDetalle.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo105',ceCodigo105.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo2',edDetalle2.Text);
  ArchivoIni.WriteString('Dato', 'CodArticuloEx',ceCodigoCero.Text);
  ArchivoIni.WriteString('Dato', 'DetArticuloEx',edDetalleExento.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo27',ceCodigo27.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo27',edDetalle27.Text);


  ArchivoIni.WriteInteger('Dato', 'CentroCosto',ceCentroCosto.KeyValue);
  ArchivoIni.Free;
  inherited;
  Action:=caFree;
end;

procedure TFormImportacionCompraGral.FormCreate(Sender: TObject);
begin
  inherited;
  CDSSucursal.Open;
  dbcSucursal.KeyValue:=SucursalPorDefecto;

  CDSDepositos.Open;
  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSDepositos.Open;

  dbcDeposito.KeyValue:=DepositoPorDefecto;

  CDSCtroCosto.Close;
  CDSCtroCosto.Open;

  CDSFc_A.Close;
  CDSFc_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_A.Open;

  CDSFc_B.Close;
  CDSFc_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_B.Open;

  CDSFo_A.Close;
  CDSFo_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_A.Open;

  CDSFo_B.Close;
  CDSFo_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_B.Open;

  CDSNc_A.Close;
  CDSNc_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNc_A.Open;

  CDSNc_B.Close;
  CDSNc_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNc_B.Open;

  CDSNd_A.Close;
  CDSNd_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNd_A.Open;

  CDSNd_B.Close;
  CDSNd_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNd_B.Open;

  CDSFc_C.Close;
  CDSFc_C.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_C.Open;

  CDSFo_C.Close;
  CDSFo_C.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_C.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImportacionCompra.ini');
  //*************************************************************
//  ceProveedor.Text        := ArchivoIni.ReadString('Dato', 'Codigo','');
//  edNombreProveedor.Text  := ArchivoIni.ReadString('Dato', 'Nombre','');
  dbcSucursal.KeyValue    := ArchivoIni.ReadInteger('Dato', 'Sucursal',SucursalPorDefecto);

  CDSDepositos.Open;
  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSDepositos.Open;

  CDSCtroCosto.Close;
  CDSCtroCosto.Open;

  CDSFc_A.Close;
  CDSFc_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_A.Open;

  CDSFc_B.Close;
  CDSFc_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_B.Open;

  CDSFo_A.Close;
  CDSFo_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_A.Open;

  CDSFo_B.Close;
  CDSFo_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_B.Open;

  CDSNc_A.Close;
  CDSNc_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNc_A.Open;

  CDSNc_B.Close;
  CDSNc_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNc_B.Open;

  CDSNd_A.Close;
  CDSNd_A.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNd_A.Open;

  CDSNd_B.Close;
  CDSNd_B.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSNd_B.Open;

  CDSFc_C.Close;
  CDSFc_C.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFc_C.Open;

  CDSFo_C.Close;
  CDSFo_C.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFo_C.Open;

  dbcDeposito.KeyValue    := ArchivoIni.ReadInteger('Dato', 'Deposito',DepositoPorDefecto);

  dbcFacturaA.KeyValue    := ArchivoIni.ReadInteger('Dato', 'ComprobanteFCA',-1);
  dbcFacturaB.KeyValue    := ArchivoIni.ReadInteger('Dato', 'ComprobanteFCB',-1);
  dbcFacturaC.KeyValue    := ArchivoIni.ReadInteger('Dato', 'ComprobanteFCC',-1);
  dbcF_ContadoA.KeyValue  := ArchivoIni.ReadInteger('Dato', 'ComprobanteFOA',-1);
  dbcF_ContadoB.KeyValue  := ArchivoIni.ReadInteger('Dato', 'ComprobanteFOB',-1);
  dbcF_ContadoC.KeyValue  := ArchivoIni.ReadInteger('Dato', 'ComprobanteFOC',-1);
  dbcNc_A.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNCA',-1);
  dbcNc_B.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNCB',-1);
  dbcNd_A.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNDA',-1);
  dbcNd_B.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNDB',-1);
  ceCodigo.Text           := ArchivoIni.ReadString('Dato', 'CodArticulo','');
  edDetalle.Text          := ArchivoIni.ReadString('Dato', 'DetArticulo','');
  ceCodigo105.Text        := ArchivoIni.ReadString('Dato', 'CodArticulo105','');
  edDetalle2.Text         := ArchivoIni.ReadString('Dato', 'DetArticulo2','');
  ceCodigoCero.Text       := ArchivoIni.ReadString('Dato', 'CodArticuloEx','');
  edDetalleExento.Text    := ArchivoIni.ReadString('Dato', 'DetArticuloEx','');
  ceCentroCosto.KeyValue  := ArchivoIni.ReadInteger('Dato', 'CentroCosto',-1);
  ceCodigo27.Text         := ArchivoIni.ReadString('Dato', 'CodArticulo27','');
  edDetalle27.Text        := ArchivoIni.ReadString('Dato', 'DetArticulo27','');

  ArchivoIni.Free;
  AutoSize:=False;

  pnContenedor.Visible:=False;

end;

procedure TFormImportacionCompraGral.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportacionCompraGral:=nil;
end;

procedure TFormImportacionCompraGral.ImportarExecute(Sender: TObject);
var a,m,d:Word;
ImporteIva,Tasa,Neto:Extended;
begin
  inherited;

  if (ADODSMovXLS.IsEmpty) then
    Raise Exception.Create('No hay Datos para procesar...');

  if ((dbcDeposito.KeyValue)<=0) then
    Raise Exception.Create('Falta el Deposito...');

  if ((dbcSucursal.KeyValue)<=0) then
    Raise Exception.Create('Falta Sucursal..');

//  if ((dbcComprobante.KeyValue)<=0) then
//    Raise Exception.Create('Falta el Comprobante..');

  if (Trim(ceCodigo.Text)='') then
    Raise Exception.Create('Falta el Articulo al 21%...');

  if (Trim(ceCodigo105.Text)='') then
    Raise Exception.Create('Falta el Articulo al 10.5%...');

  if (Trim(ceCodigoCero.Text)='') then
    Raise Exception.Create('Falta el Articulo de Exento...');

  DMMain_FD.fdcGestion.StartTransaction;

  ADODSMovXLS.First;
  while not ADODSMovXLS.Eof do
    begin
      if Trim(ADODSMovXLS.FieldByName('numero').AsString)<>'' then
        begin
          try
            spAltaCompra.Close;
            spAltaCompra.ParamByName('USUARIO').Value        :=DMMain_FD.UsuarioActivo;
            if (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)='FC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
             spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcFacturaA.KeyValue
            else
              if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
                spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcFacturaB.KeyValue
              else
                if (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)='FC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='C') then
                  spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcFacturaC.KeyValue
                else
                  if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FO') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
                    spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcF_ContadoA.KeyValue
                  else
                    if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FO') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
                      spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcF_ContadoB.KeyValue
                    else
                      if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FO') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='C') then
                        spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcF_ContadoC.KeyValue
                      else
                        if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='NC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
                          spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcNc_A.KeyValue
                        else
                          if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='NC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
                            spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcNc_B.KeyValue
                          else
                            if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='ND') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
                              spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcNd_A.KeyValue
                            else
                              if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='ND') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
                                spAltaCompra.ParamByName('ID_COMPROBANTE').Value :=dbcNd_B.KeyValue;
            spAltaCompra.ParamByName('NRO_CUIT').Value       := trim(ADODSMovXLS.FieldByName('cuit').AsString);
            spAltaCompra.ParamByName('COMP_TOTAL').Value     := StrToFloat(trim(ADODSMovXLS.FieldByName('Total').AsString));
            spAltaCompra.ParamByName('COMP_NUMERO').Value    := AnsiRightStr('00000000'+ADODSMovXLS.FieldByName('numero').AsString,8);
            spAltaCompra.ParamByName('COMP_PREFIO').Value    := AnsiRightStr('00000000'+ADODSMovXLS.FieldByName('prefijo').AsString,4);
            DecodeDate(StrToDate(ADODSMovXLS.FieldByName('fecha').AsString),a,m,d);
            spAltaCompra.ParamByName('COMP_FECHA').Value     := EncodeDate(a,m,d);
            spAltaCompra.ParamByName('CODIGO21').Value       := ceCodigo.Text;
            spAltaCompra.ParamByName('CODIGO105').Value      := ceCodigo105.Text;
            spAltaCompra.ParamByName('CODIGO27').Value       := cecodigo27.Text;
            spAltaCompra.ParamByName('CODIGOEXENTO').Value   := cecodigoCero.Text;
            spAltaCompra.ParamByName('COMP_DEPOSITO').Value  := 1;
            spAltaCompra.ParamByName('IVA21').Value          := StrToFloat(ADODSMovXLS.FieldByName('iva21').Value);
            spAltaCompra.ParamByName('IVA105').Value         := StrToFloat(ADODSMovXLS.FieldByName('iva105').Value);
            spAltaCompra.ParamByName('IVA27').Value          := StrToFloat(ADODSMovXLS.FieldByName('iva27').Value);
            spAltaCompra.ParamByName('IIBB').Value           := StrToFloat(ADODSMovXLS.FieldByName('iibb').Value);
            spAltaCompra.ParamByName('PER_IVA').Value        := StrToFloat(ADODSMovXLS.FieldByName('PerIva').Value);
            spAltaCompra.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            Application.ProcessMessages;
          except
            DMMain_FD.fdcGestion.Rollback;
          end;
        end;
      ADODSMovXLS.Next;
    end;

  ADOConnection.Connected:=False;
  ADODSMovXLS.Active:=False;
end;

procedure TFormImportacionCompraGral.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
 if pnContenedor.Visible=False Then
    pnContenedor.Visible:=True
  else
    if pnContenedor.Visible=True Then
      pnContenedor.Visible:=False;
end;

end.
