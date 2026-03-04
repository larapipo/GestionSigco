unit UImportacionFacVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, StdCtrls, Mask, JvExMask,
  JvToolEdit, JvExControls, JvDBLookup, JvLabel, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls, Provider,
  DBClient, ADODB,IniFiles, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,Math,
  JvDBGridExport, JvMemoryDataset, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, JvExDBGrids, JvDBGrid, System.ImageList, AdvUtil, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFormImportacionFacturasVtaGral = class(TFormABMBase)
    RxLabel2: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel3: TJvLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    BuscarArchivo: TSpeedButton;
    JvLabel2: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel10: TJvLabel;
    Label4: TLabel;
    spAyudaFormato: TSpeedButton;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    dbcFacturaA: TJvDBLookupCombo;
    dbcDeposito: TJvDBLookupCombo;
    ceCodigo: TJvComboEdit;
    ceCodigo105: TJvComboEdit;
    edDetalle2: TEdit;
    edDetalle: TEdit;
    edPath: TEdit;
    dbcFacturaB: TJvDBLookupCombo;
    dbcF_ContadoA: TJvDBLookupCombo;
    dbcF_ContadoB: TJvDBLookupCombo;
    dbcNc_A: TJvDBLookupCombo;
    dbcNd_A: TJvDBLookupCombo;
    dbcNd_B: TJvDBLookupCombo;
    dbcNc_B: TJvDBLookupCombo;
    dbcF_ContadoC: TJvDBLookupCombo;
    dbcFacturaC: TJvDBLookupCombo;
    ceCodigoCero: TJvComboEdit;
    edDetalleExento: TEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    ceCodigo27: TJvComboEdit;
    edDetalle27: TEdit;
    pnAviso: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    DSFc_B: TDataSource;
    DSNd_B: TDataSource;
    CDSNd_B: TClientDataSet;
    CDSNd_BID_COMPROBANTE: TIntegerField;
    CDSNd_BTIPO_COMPROB: TStringField;
    CDSNd_BCLASE_COMPROB: TStringField;
    CDSNd_BDENOMINACION: TStringField;
    CDSNd_BSUCURSAL: TIntegerField;
    CDSNd_BLETRA: TStringField;
    DSFo_C: TDataSource;
    CDSFo_C: TClientDataSet;
    CDSFo_CID_COMPROBANTE: TIntegerField;
    CDSFo_CTIPO_COMPROB: TStringField;
    CDSFo_CCLASE_COMPROB: TStringField;
    CDSFo_CDENOMINACION: TStringField;
    CDSFo_CSUCURSAL: TIntegerField;
    CDSFo_CLETRA: TStringField;
    DSFc_C: TDataSource;
    CDSFc_C: TClientDataSet;
    CDSFc_CID_COMPROBANTE: TIntegerField;
    CDSFc_CTIPO_COMPROB: TStringField;
    CDSFc_CCLASE_COMPROB: TStringField;
    CDSFc_CDENOMINACION: TStringField;
    CDSFc_CSUCURSAL: TIntegerField;
    CDSFc_CLETRA: TStringField;
    DSNd_A: TDataSource;
    CDSNd_A: TClientDataSet;
    CDSNd_AID_COMPROBANTE: TIntegerField;
    CDSNd_ATIPO_COMPROB: TStringField;
    CDSNd_ACLASE_COMPROB: TStringField;
    CDSNd_ADENOMINACION: TStringField;
    CDSNd_ASUCURSAL: TIntegerField;
    CDSNd_ALETRA: TStringField;
    DSNc_B: TDataSource;
    CDSNc_B: TClientDataSet;
    CDSNc_BID_COMPROBANTE: TIntegerField;
    CDSNc_BTIPO_COMPROB: TStringField;
    CDSNc_BCLASE_COMPROB: TStringField;
    CDSNc_BDENOMINACION: TStringField;
    CDSNc_BSUCURSAL: TIntegerField;
    CDSNc_BLETRA: TStringField;
    DSNc_A: TDataSource;
    CDSNc_A: TClientDataSet;
    CDSNc_AID_COMPROBANTE: TIntegerField;
    CDSNc_ATIPO_COMPROB: TStringField;
    CDSNc_ACLASE_COMPROB: TStringField;
    CDSNc_ADENOMINACION: TStringField;
    CDSNc_ASUCURSAL: TIntegerField;
    CDSNc_ALETRA: TStringField;
    DSFo_B: TDataSource;
    CDSFo_B: TClientDataSet;
    CDSFo_BID_COMPROBANTE: TIntegerField;
    CDSFo_BTIPO_COMPROB: TStringField;
    CDSFo_BCLASE_COMPROB: TStringField;
    CDSFo_BDENOMINACION: TStringField;
    CDSFo_BSUCURSAL: TIntegerField;
    CDSFo_BLETRA: TStringField;
    DSFo_A: TDataSource;
    CDSFo_A: TClientDataSet;
    CDSFo_AID_COMPROBANTE: TIntegerField;
    CDSFo_ATIPO_COMPROB: TStringField;
    CDSFo_ACLASE_COMPROB: TStringField;
    CDSFo_ADENOMINACION: TStringField;
    CDSFo_ASUCURSAL: TIntegerField;
    CDSFo_ALETRA: TStringField;
    CDSFc_B: TClientDataSet;
    CDSFc_BID_COMPROBANTE: TIntegerField;
    CDSFc_BTIPO_COMPROB: TStringField;
    CDSFc_BCLASE_COMPROB: TStringField;
    CDSFc_BDENOMINACION: TStringField;
    CDSFc_BSUCURSAL: TIntegerField;
    CDSFc_BLETRA: TStringField;
    DSFc_A: TDataSource;
    CDSFc_A: TClientDataSet;
    CDSFc_AID_COMPROBANTE: TIntegerField;
    CDSFc_ATIPO_COMPROB: TStringField;
    CDSFc_ACLASE_COMPROB: TStringField;
    CDSFc_ADENOMINACION: TStringField;
    CDSFc_ASUCURSAL: TIntegerField;
    CDSFc_ALETRA: TStringField;
    DSPComprobante: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    DSDeposito: TDataSource;
    DSPSucursal: TDataSetProvider;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    Importar: TAction;
    ADOConnection: TADOConnection;
    ADODSMovXLS: TADODataSet;
    DSMovXLS: TDataSource;
    BuscarArticulo: TAction;
    OpenDialog: TOpenDialog;
    chExcel2013Plus: TCheckBox;
    btNovedades: TButton;
    ToolButton1: TToolButton;
    CDSTkA: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    DSTkA: TDataSource;
    JvLabel1: TJvLabel;
    dbc_TkA: TJvDBLookupCombo;
    CDSTkB: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    DSTkB: TDataSource;
    JvLabel11: TJvLabel;
    dbc_TkB: TJvDBLookupCombo;
    Label8: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    Label9: TLabel;
    QVerificaCpbte: TFDQuery;
    QBuscaClienteCuit: TFDQuery;
    QComproba: TFDQuery;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QBuscaClienteCuitCODIGO: TStringField;
    spIngresarCliente: TFDStoredProc;
    QVerificaCpbteID_FC: TIntegerField;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    SaveDialog1: TSaveDialog;
    MemoryData: TJvMemoryData;
    MemoryDataTIPOCPBTE: TStringField;
    MemoryDataNROCPBTE: TStringField;
    MemoryDataNOMBRE: TStringField;
    MemoryDataTOTAL: TFloatField;
    MemoryDataID: TIntegerField;
    pcImportacion: TPageControl;
    pgImpotar: TTabSheet;
    pgImportadas: TTabSheet;
    DSMemory: TDataSource;
    dbgImportados: TDBGrid;
    BitBtn2: TBitBtn;
    QBorrarFc: TFDQuery;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    btCancelarImpo: TBitBtn;
    QBuscaClienteNombre: TFDQuery;
    QBuscaClienteNombreCODIGO: TStringField;
    dbgMovimientos: TDBAdvGrid;
    pnAvisoBase: TJvPanel;
    mtMovXLS: TFDMemTable;
    procedure ImportarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure BuscarArchivoClick(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure vBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btCancelarImpoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    HayNovedades,Cancelado:Boolean;
    Lista:TListItem;
    procedure IngresarTk(Codigo:String;Fecha:TDate);
    procedure IngresarFC(Codigo:String;Fecha:TDate);
    procedure IngresarFO(Codigo:String;Fecha:TDate);

  end;

var
  FormImportacionFacturasVtaGral: TFormImportacionFacturasVtaGral;

implementation

uses UFactura_2, DMVenta, UFacturaCtdo_2, DMVentaCtdo, UDMain_FD,
     UBuscadorArticulos, UNovedadesFacturacion, UTiketVta, DMTicket,
     UBuscadorClientes;

{$R *.dfm}



procedure TFormImportacionFacturasVtaGral.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if Not(MemoryData.IsEmpty) then
    begin
      Screen.Cursor:=crHourGlass;
      MemoryData.First;
      MemoryData.DisableControls;
      while Not(MemoryData.Eof) do
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            QBorrarFc.Close;
            QBorrarFc.ParamByName('id').Value:=MemoryDataID.Value;
            QBorrarFc.ExecSQL();
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no finalizada....!');
            exit;
          end;
          MemoryData.Next;
        end;
      MemoryData.Close;
      MemoryData.Open;
      MemoryData.EmptyTable;
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFormImportacionFacturasVtaGral.btCancelarImpoClick(Sender: TObject);
begin
  inherited;
  Cancelado:=True;
end;

procedure TFormImportacionFacturasVtaGral.btNovedadesClick(Sender: TObject);
begin
  inherited;
  FormNovedadesFacturacion.Visible:= Not(FormNovedadesFacturacion.Visible);
end;

procedure TFormImportacionFacturasVtaGral.BuscarArchivoClick(Sender: TObject);
var i:integer;
var r,c:integer;
begin
  inherited;
  if OpenDialog.Execute Then
    begin
      if  OpenDialog.FileName<>'' Then
        begin
          edPath.Text:=OpenDialog.FileName;
          ADOConnection.Connected:=False;
          ADODSMovXLS.Active:=False;
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
          ADODSMovXLS.Connection := ADOConnection;
          ADODSMovXLS.CommandType:= cmdTableDirect;


          if chExcel2013Plus.Checked then
            begin
              ADOConnection.ConnectionString :=
             'Provider=Microsoft.ACE.OLEDB.12.0;'+
             'Persist Security Info=False;'+
             'Data Source='+edPath.Text+';'+
             'Extended Properties=Excel 12.0';
            end;

          ADODSMovXLS.Connection  := ADOConnection;
          ADODSMovXLS.CommandType := cmdTableDirect;
          ADODSMovXLS.CommandText := DMMain_FD.NombreHojaExcel(edPath.Text);// 'Hoja1$';
      //  ADOConnection.Connected := True;

          ADODSMovXLS.Active      := True;
          dbgMovimientos.LoadFromCSV(edPath.Text);
        end;
      end;
  mtMovXLS.Close;
  mtMovXLS.FieldDefs.Clear;
  for c:= 0 to dbgMovimientos.ColCount - 1 do
    begin
      dbgMovimientos.Cells[c,0];
      mtMovXLS.FieldDefs.Add(dbgMovimientos.Cells[c,0],ftString,50,False);
    end;
  mtMovXLS.Open;
  for r:= 1 to dbgMovimientos.RowCount - 1 do
  begin
    mtMovXLS.Append;
    for c:= 0 to dbgMovimientos.ColCount - 1 do
      begin
        mtMovXLS.Fields[c].Value:=dbgMovimientos.Cells[c,r];
      end;
    mtMovXLS.Post;
  end;

  Importar.Enabled      :=True;
  btCancelarImpo.Enabled:=False;

end;

procedure TFormImportacionFacturasVtaGral.BuscarArticuloExecute(
  Sender: TObject);
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

procedure TFormImportacionFacturasVtaGral.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Self);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
       ceCliente.Text  := FormBuscadorClientes.Codigo;
       CDSClientes.Close;
       CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
       CDSClientes.Open;
       IF NOT (CDSClientes.eof) THEN
         BEGIN
           edNombreCliente.Text := CDSClientesNOMBRE.Value;
           ceCliente.SetFocus;
           ceCliente.SelectAll;
         END;
    END;
end;

procedure TFormImportacionFacturasVtaGral.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Dato: STRING;
begin
  inherited;
  if key=vk_delete Then
    begin
      ceCliente.Text:='';
      edNombreCliente.Text:='';
    end
  else
  IF Key = vk_return THEN
    BEGIN
      //key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT(CDSClientes.eof) THEN
        begin
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
        end;
      if FormImportacionFacturasVtaGral<>Nil Then
        begin
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        end;
    END;
end;

procedure TFormImportacionFacturasVtaGral.ceClienteKeyPress(Sender: TObject;
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
      IF NOT(CDSClientes.eof) THEN
        begin
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
        end;
      if FormImportacionFacturasVtaGral<>Nil Then
        begin
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        end;
    END;
end;

procedure TFormImportacionFacturasVtaGral.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  QDepositos.Open;
  QDepositos.Close;
  QDepositos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QDepositos.Open;

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

procedure TFormImportacionFacturasVtaGral.vBGrid1DblClick(Sender: TObject);
begin
  inherited;
  SaveDialog1.FileName:='PLANTILLA.XLS';
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      JvDBGridExcelExport1.ExportGrid;
end;

procedure TFormImportacionFacturasVtaGral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImportacionVentas.ini');
  //*************************************************************
//  ceProveedor.Text        := ArchivoIni.ReadString('Dato', 'Codigo','');
//  edNombreProveedor.Text  := ArchivoIni.ReadString('Dato', 'Nombre','');
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

  ArchivoIni.WriteInteger('Dato', 'ComprobanteTKA',dbc_TkA.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteTKB',dbc_TkB.KeyValue);

  ArchivoIni.WriteString('Dato', 'CodArticulo',ceCodigo.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo',edDetalle.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo105',ceCodigo105.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo2',edDetalle2.Text);
  ArchivoIni.WriteString('Dato', 'CodArticuloEx',ceCodigoCero.Text);
  ArchivoIni.WriteString('Dato', 'DetArticuloEx',edDetalleExento.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo27',ceCodigo27.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo27',edDetalle27.Text);

  ArchivoIni.WriteString('Cliente', 'Codigo',ceCliente.Text);
  ArchivoIni.WriteString('Cliente', 'Nombre',edNombreCliente.Text);

  ArchivoIni.Free;

  if Assigned(FormCpbte_2) then
    FreeAndNil(FormCpbte_2);
  if Assigned(FormCpbteCtdo_2) then
    FreeAndNil(FormCpbteCtdo_2);
  if Assigned(FormTicketVta) then
    FreeAndNil(FormTicketVta);

  inherited;
  Action:=caFree;

end;

procedure TFormImportacionFacturasVtaGral.FormCreate(Sender: TObject);
begin
  inherited;
  CDSSucursal.Open;
  dbcSucursal.KeyValue:=SucursalPorDefecto;

  QDepositos.Open;
  QDepositos.Close;
  QDepositos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QDepositos.Open;

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

  CDSTkA.Close;
  CDSTkA.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSTkA.Open;

  CDSTkB.Close;
  CDSTkB.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSTkB.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImportacionVentas.ini');
  //*************************************************************
//  ceProveedor.Text        := ArchivoIni.ReadString('Dato', 'Codigo','');
//  edNombreProveedor.Text  := ArchivoIni.ReadString('Dato', 'Nombre','');
  dbcSucursal.KeyValue    := ArchivoIni.ReadInteger('Dato', 'Sucursal',SucursalPorDefecto);

  QDepositos.Open;
  QDepositos.Close;
  QDepositos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QDepositos.Open;


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

  CDSTkA.Close;
  CDSTkA.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSTkA.Open;

  CDSTkB.Close;
  CDSTkB.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSTkB.Open;

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
  dbc_TkA.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteTKA',-1);
  dbc_TkB.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteTKB',-1);

  ceCodigo.Text           := ArchivoIni.ReadString('Dato', 'CodArticulo','');
  edDetalle.Text          := ArchivoIni.ReadString('Dato', 'DetArticulo','');
  ceCodigo105.Text        := ArchivoIni.ReadString('Dato', 'CodArticulo105','');
  edDetalle2.Text         := ArchivoIni.ReadString('Dato', 'DetArticulo2','');
  ceCodigoCero.Text       := ArchivoIni.ReadString('Dato', 'CodArticuloEx','');
  edDetalleExento.Text    := ArchivoIni.ReadString('Dato', 'DetArticuloEx','');
  ceCodigo27.Text         := ArchivoIni.ReadString('Dato', 'CodArticulo27','');
  edDetalle27.Text        := ArchivoIni.ReadString('Dato', 'DetArticulo27','');

  ceCliente.Text          := ArchivoIni.ReadString('Cliente', 'Codigo','');
  edNombreCliente.Text    := ArchivoIni.ReadString('Cliente', 'Nombre','');
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;


  ArchivoIni.Free;

  pnAvisoBase.Visible:=False;

 if Not(Assigned(FormNovedadesFacturacion)) then
    FormNovedadesFacturacion:=TFormNovedadesFacturacion.Create(Self);
  FormNovedadesFacturacion.lwNovedades.Clear;

  pcImportacion.ActivePageIndex:=0;
end;

procedure TFormImportacionFacturasVtaGral.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportacionFacturasVtaGral:=nil;
end;

procedure TFormImportacionFacturasVtaGral.ImportarExecute(Sender: TObject);
var a,m,d:Word;
ImporteIva21,ImporteIva105,ImporteIva27,ImporteIvaTotal,Tasa,Neto,
Neto21,Neto105,Neto27,
NetoTotal,Total:Extended;
Codigo,Tipo,CodBuscado:String;
Existe:Boolean;
begin
  inherited;
// if Not(Assigned(FormProceso)) Then
//    FormProceso:=TFormProceso.Create(Application);
//  FormProceso.Mensaje:='Ingresando Datos....';
//  FormProceso.Show;
//  FormProceso.Close;
  Cancelado:=False;
  MemoryData.Close;
  MemoryData.Open;
  MemoryData.EmptyTable;
  Importar.Enabled      :=False;
  btCancelarImpo.Enabled:=True;
  HayNovedades:=False;

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

  if (Assigned(FormCpbte_2)) then
    FreeAndNil(FormCpbte_2);

  if (Assigned(FormCpbteCtdo_2)) then
    FreeAndNil(FormCpbteCtdo_2);

  if (Assigned(FormTicketVta)) then
    FreeAndNil(FormTicketVta);

  if Not(Assigned(FormCpbte_2)) then
    FormCpbte_2 := TFormCpbte_2.Create(Self);
  FormCpbte_2.FormStyle   :=fsNormal;
  FormCpbte_2.Visible     :=False;

  if Not(Assigned(FormCpbteCtdo_2)) then
    FormCpbteCtdo_2 := TFormCpbteCtdo_2.Create(Self);
  FormCpbteCtdo_2.FormStyle   :=fsNormal;
  FormCpbteCtdo_2.Visible     :=False;

 if Not(Assigned(FormTicketVta)) then
    FormTicketVta := TFormTicketVta.Create(Self);
  FormTicketVta.FormStyle   :=fsNormal;
  FormTicketVta.Visible     :=False;

  ADODSMovXLS.First;
  while (not ADODSMovXLS.Eof) and (Cancelado=False) do
    begin
     if (Trim(ADODSMovXLS.FieldByName('Tp').AsString)<>'') then
       begin
         A:=StrToInt(Copy(ADODSMovXLS.FieldByName('fecha').AsString,7,4));
         M:=StrToInt(Copy(ADODSMovXLS.FieldByName('fecha').AsString,4,2));
         D:=StrToInt(Copy(ADODSMovXLS.FieldByName('fecha').AsString,1,2));
         if trim(ADODSMovXLS.FieldByName('Nombre').AsString)<>'' then
           begin
             CodBuscado:='';
             if (Not(Length(Trim(ADODSMovXLS.FieldByName('cuit').AsString))<13)) and
               (Trim(ADODSMovXLS.FieldByName('cuit').AsString[1])=' ') and
               (Trim(ADODSMovXLS.FieldByName('cuit').AsString[1])='0')  then
                begin
                  QBuscaClienteCuit.Close;
                  QBuscaClienteCuit.ParamByName('cuit').AsString:=Trim(ADODSMovXLS.FieldByName('cuit').AsString);
                  QBuscaClienteCuit.Open;
                  Codbuscado:=QBuscaClienteCuitCODIGO.AsString;
                end;
             if CodBuscado='' then
                begin
                  QBuscaClienteNombre.Close;
                  QBuscaClienteNombre.ParamByName('Nombre').AsString:=Trim(UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString));
                  QBuscaClienteNombre.Open;
                  Codbuscado:=QBuscaClienteNombreCODIGO.AsString;
                end;
             if (CodBuscado='') then
               begin
                 spIngresarCliente.Close;
                 spIngresarCliente.ParamByName('codigo').Value      :='';
                 spIngresarCliente.ParamByName('nombre').Value      := Trim(UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString));
                 spIngresarCliente.ParamByName('razon_social').Value:= Trim(UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString));
                 spIngresarCliente.ParamByName('cuit').Value        := Trim(ADODSMovXLS.FieldByName('cuit').AsString);
                 spIngresarCliente.ParamByName('TIPO_iva').Value    := ADODSMovXLS.FieldByName('condicioniva').AsInteger;
                 spIngresarCliente.ExecProc;
                 spIngresarCliente.Close;
                 Codigo:=spIngresarCliente.ParamByName('codigo_ALTA').Value
               end
             else
               Codigo:=CodBuscado;
           end
         else
           Codigo:=ceCliente.Text;

         with DMMain_FD do
           begin
             Tipo:= Uppercase(ADODSMovXLS.FieldByName('Tp').AsString);
             if ((tipo='FC') or (Tipo='FO') or (Tipo='TK') ) then
               begin
                 if ((tipo='FC') or (Tipo='FO')) then
                   Existe:=BuscarCpbteVta(UpperCase(ADODSMovXLS.FieldByName('letra').AsString),
                                          ADODSMovXLS.FieldByName('numero').AsString,
                                          ADODSMovXLS.FieldByName('prefijo').AsString,
                                          dbcSucursal.KeyValue,'FC','FO')
                 else
                   if (tipo='TK') then
                     Existe:=BuscarCpbteVta(UpperCase(ADODSMovXLS.FieldByName('letra').AsString),
                                            ADODSMovXLS.FieldByName('numero').AsString,
                                            ADODSMovXLS.FieldByName('prefijo').AsString,
                                            dbcSucursal.KeyValue,'TK','TK');
               end
             else
               if (tipo='NC') then
                 Existe:=BuscarCpbteVta(UpperCase(ADODSMovXLS.FieldByName('letra').AsString),
                                        ADODSMovXLS.FieldByName('numero').AsString,
                                        ADODSMovXLS.FieldByName('prefijo').AsString,
                                        dbcSucursal.KeyValue,'NC','NC')
               else
                 if (tipo='ND') then
                   Existe:=BuscarCpbteVta(UpperCase(ADODSMovXLS.FieldByName('letra').AsString),
                                          ADODSMovXLS.FieldByName('numero').AsString,
                                          ADODSMovXLS.FieldByName('prefijo').AsString,
                                          dbcSucursal.KeyValue,'ND','ND');
           end;

         if (ADODSMovXLS.FindField('total')<>Nil) and (ADODSMovXLS.FieldByName('total').AsString<>'') and
            (Trunc(Abs(ADODSMovXLS.FieldByName('total').Value))=0) Then
           existe:=True;


         if Existe=False then
           begin
             if (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)<>'FO') and (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)<>'TK') then
              IngresarFC(Codigo,EncodeDate(A,M,D))
             else
               if (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)='FO') then
                 IngresarFO(Codigo,EncodeDate(A,M,D))
               ELSE
                 if (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)='TK') then
                   IngresarTk(Codigo,EncodeDate(A,M,D));
           end;
        Application.ProcessMessages;

       end;
     ADODSMovXLS.Next;
   end;
  if FormCpbte_2.DSBase.State<>dsBrowse then
    FormCpbte_2.Confirma.Execute;
  if FormCpbteCtdo_2.DSBase.State<>dsBrowse then
    FormCpbteCtdo_2.Confirma.Execute;
  if FormTicketVta.DSBase.State<>dsBrowse then
    FormTicketVta.Confirma.Execute;

  ADODSMovXLS.Active     :=False;
  ADOConnection.Connected:=False;
  FormCpbte_2.Close;
  FormCpbteCtdo_2.Close;
  FormTicketVta.Close;

  if HayNovedades then
    ShowMessage('Hay Novedades de la Importacion...');

  Importar.Enabled      :=True;
  btCancelarImpo.Enabled:=False;


end;

procedure TFormImportacionFacturasVtaGral.IngresarFC(Codigo: String;Fecha:TDate);
var
  a,m,d:Word;
  ImporteIva21,ImporteIva105,ImporteIva27,ImporteIvaTotal,Tasa,Neto,
  Neto21,Neto105,Neto27,
  NetoTotal,Total:Extended;

begin

  FormCpbte_2.Agregar.Execute;
  DatosVentas.CDSVentaCabPERCIBE_IB.Value :='N';
  DatosVentas.CDSVentaCabCODIGOSetText(DatosVentas.CDSVentaCabCodigo,Codigo);
  DatosVentas.CDSVentaCabSUCURSALSetText(DatosVentas.CDSVentaCabSUCURSAL,IntToStr(dbcSucursal.KeyValue));
  DatosVentas.CDSVentaCabNOMBRE.Value     := UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString);
  DatosVentas.CDSVentaCabRAZONSOCIAL.Value:= UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString);

  DatosVentas.CDSVentaCabDepositoSetText(DatosVentas.CDSVentaCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
  DatosVentas.CDSVentaCabFECHAVTASetText(DatosVentas.CDSVentaCabFECHAVTA,FormatDateTime('dd/mm/yyyy',fecha));

  DatosVentas.CDSVentaCabCPTE_MANUAL.Value:='S';

  if (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)='FC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
    DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcFacturaA.KeyValue))
  else
    if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
      DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcFacturaB.KeyValue))
    else
      if (Uppercase(ADODSMovXLS.FieldByName('Tp').AsString)='FC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='C') then
        DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcFacturaC.KeyValue))
      else
        if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='NC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
          DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcNc_A.KeyValue))
        else
          if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='NC') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
            DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcNc_B.KeyValue))
          else
            if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='ND') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
              DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcNd_A.KeyValue))
            else
              if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='ND') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
                DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcNd_B.KeyValue));

  DatosVentas.CDSVentaCabCPTE_MANUAL.Value:='S';
  DatosVentas.CDSVentaCabPERCIBE_IB.Value :='N';

  if (ADODSMovXLS.FindField('IIBB')<>Nil) and
     (ADODSMovXLS.FieldByName('IIBB').AsString<>'') and
     (Abs(ADODSMovXLS.FieldByName('IIBB').Value)>0) Then
    DatosVentas.CDSVentaCabPERCIBE_IB.Value :='S';

  DatosVentas.CDSVentaCabSucFacSetText(DatosVentas.CDSVentaCabSUCFAC,ADODSMovXLS.FieldByName('prefijo').AsString);
  DatosVentas.CDSVentaCabNumeroFacSetText(DatosVentas.CDSVentaCabNUMEROFAC,ADODSMovXLS.FieldByName('numero').AsString);

  if (ADODSMovXLS.FieldByName('Tp').AsString<>'')  Then
    begin
      if (ADODSMovXLS.FindField('iva105')<>Nil) Then
      if (ADODSMovXLS.FieldByName('iva105').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva105').Value)>0) Then
       begin
         Neto       :=Abs(ADODSMovXLS.FieldByName('iva105').Value);
         Neto       :=Abs(Neto/0.105);
         if ADODSMovXLS.FieldByName('Letra').Value='B' then
           Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva105').Value);
          DatosVentas.CDSVentaDet.Append;
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,Trim(ceCodigo105.Text));
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
          DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
          DatosVentas.CDSVentaDet.Post;
        end;

      if (ADODSMovXLS.FindField('iva21')<>Nil) Then
      if (ADODSMovXLS.FieldByName('iva21').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva21').Value)>0) Then
        begin

          Neto       :=Abs(ADODSMovXLS.FieldByName('iva21').Value);
          Neto       :=Abs(Neto/0.21);
          if ADODSMovXLS.FieldByName('Letra').Value='B' then
            Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva21').Value);
          DatosVentas.CDSVentaDet.Append;
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,Trim(ceCodigo.Text));
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
          DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
          DatosVentas.CDSVentaDet.Post;
        end;

      if (ADODSMovXLS.FindField('exento')<>Nil) Then
      if (ADODSMovXLS.FieldByName('exento').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('exento').Value)>0) Then
        begin
          Neto       :=Abs(ADODSMovXLS.FieldByName('exento').Value);
          DatosVentas.CDSVentaDet.Append;
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,Trim(ceCodigoCero.Text));
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
          DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
          DatosVentas.CDSVentaDet.Post;
        end;

      if (ADODSMovXLS.FindField('iva27')<>Nil) Then
      if (ADODSMovXLS.FieldByName('iva27').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva27').Value)>0) Then
        begin
          Neto       :=Abs(ADODSMovXLS.FieldByName('iva27').Value);
          Neto       :=Abs(Neto/0.27);
          if ADODSMovXLS.FieldByName('Letra').Value='B' then
            Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva27').Value);
          DatosVentas.CDSVentaDet.Append;
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,Trim(ceCodigo27.Text));
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
          DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
          DatosVentas.CDSVentaDet.Post;
        end;
      if (ADODSMovXLS.FindField('IIBB')<>Nil) Then
      if (ADODSMovXLS.FieldByName('IIBB').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('IIBB').Value)>0) Then
        begin
          DatosVentas.CDSVentaCabPERCIBE_IB.Value:='S';
          DatosVentas.CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := DatosVentas.CDSVentaCabNETOGRAV2.AsFloat;
          DatosVentas.CDSVentaCabPERCEPCION_IB_TASA.AsFloat          := RoundTo((Abs(ADODSMovXLS.FieldByName('IIBB').Value)/DatosVentas.CDSVentaCabNETOGRAV2.AsFloat)*100,-2);
          DatosVentas.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat       := Abs(ADODSMovXLS.FieldByName('IIBB').Value);
         // DatosVentas.SumarDetalle;
          DatosVentas.CalcularTotales;
        end;

      FormCpbte_2.Confirma.Execute;
      if Not(FormCpbte_2.DSBase.DataSet.IsEmpty) then
        begin
          MemoryData.Append;
          MemoryDataNROCPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('NROCPBTE').ASString;
          MemoryDataNOMBRE.Value    :=FormCpbte_2.DSBase.DataSet.FieldByName('NOMBRE').ASString;
          MemoryDataTOTAL.AsFloat   :=FormCpbte_2.DSBase.DataSet.FieldByName('TOTAL').ASFloat;
          MemoryDataID.Value        :=FormCpbte_2.DSBase.DataSet.FieldByName('ID_FC').ASInteger;
          MemoryDataTIPOCPBTE.Value :=FormCpbte_2.DSBase.DataSet.FieldByName('TIPOCPBTE').ASString;
          MemoryData.Post;
        end;

    end
  else
    begin
      sbEstado.SimpleText:='Agregando Novedades....';
      Application.ProcessMessages;
      HayNovedades       :=True;
      Lista:=FormNovedadesFacturacion.lwNovedades.Items.Add;
      Lista.Caption  := ADODSMovXLS.FieldByName('numero').AsString;
      Lista.SubItems.Add(UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString));
      Lista.SubItems.Add(ADODSMovXLS.FieldByName('Total').AsString);
    end;

end;

procedure TFormImportacionFacturasVtaGral.IngresarFO(Codigo: String;
  Fecha: TDate);
var neto:Extended;
begin
  FormCpbteCtdo_2.Agregar.Execute;
  DatosVentasCtdo.CDSVentaCabCODIGOSetText(DatosVentasCtdo.CDSVentaCabCodigo,Codigo);
  DatosVentasCtdo.CDSVentaCabSUCURSALSetText(DatosVentasCtdo.CDSVentaCabSUCURSAL,IntToStr(dbcSucursal.KeyValue));
  DatosVentasCtdo.CDSVentaCabNOMBRE.Value     := UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString);
  DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value:= UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString);

  DatosVentasCtdo.CDSVentaCabDepositoSetText(DatosVentasCtdo.CDSVentaCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
  DatosVentasCtdo.CDSVentaCabFECHAVTASetText(DatosVentasCtdo.CDSVentaCabFECHAVTA,DateToStr(Fecha));

  DatosVentasCtdo.CDSVentaCabCPTE_MANUAL.Value:='S';
  DatosVentasCtdo.CDSVentaCabPERCIBE_IB.Value :='N';

  if (ADODSMovXLS.FindField('IIBB')<>Nil) and
     (ADODSMovXLS.FieldByName('IIBB').AsString<>'') and
      (Abs(ADODSMovXLS.FieldByName('IIBB').Value)>0) Then
    DatosVentasCtdo.CDSVentaCabPERCIBE_IB.Value :='S';

  if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FO') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
    DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcF_ContadoA.KeyValue))
   else
     if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FO') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
       DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcF_ContadoB.KeyValue))
      else
       if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='FO') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='C') then
        DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcF_ContadoC.KeyValue));

  DatosVentasCtdo.CDSVentaCabSucFacSetText(DatosVentasCtdo.CDSVentaCabSUCFAC,ADODSMovXLS.FieldByName('prefijo').AsString);
  DatosVentasCtdo.CDSVentaCabNumeroFacSetText(DatosVentasCtdo.CDSVentaCabNUMEROFAC,ADODSMovXLS.FieldByName('numero').AsString);
  if (ADODSMovXLS.FindField('iva21')<>Nil) Then
  if (ADODSMovXLS.FieldByName('iva21').AsString<>'') and (abs(ADODSMovXLS.FieldByName('iva21').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('iva21').Value);
      Neto       :=Abs(Neto/0.21);
      if ADODSMovXLS.FieldByName('Letra').Value='B' then
        Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva21').Value);

      DatosVentasCtdo.CDSVentaDet.Append;
      DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,Trim(ceCodigo.Text));
      DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
      DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasCtdo.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('iva105')<>Nil) Then
  if (ADODSMovXLS.FieldByName('iva105').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva105').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('iva105').Value);
      Neto       :=Abs(Neto/0.105);
      if ADODSMovXLS.FieldByName('Letra').Value='B' then
        Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva105').Value);
      DatosVentasCtdo.CDSVentaDet.Append;
      DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,Trim(ceCodigo105.Text));
      DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
      DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasCtdo.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('exento')<>Nil) Then
  if (ADODSMovXLS.FieldByName('exento').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('exento').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('exento').Value);
      DatosVentasCtdo.CDSVentaDet.Append;
      DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,Trim(ceCodigoCero.Text));
      DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
      DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasCtdo.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('iva27')<>Nil) Then
  if (ADODSMovXLS.FieldByName('iva27').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva27').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('iva27').Value);
      Neto       :=Abs(Neto/0.27);
      if ADODSMovXLS.FieldByName('Letra').Value='B' then
        Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva27').Value);
      DatosVentasCtdo.CDSVentaDet.Append;
      DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,Trim(ceCodigo27.Text));
      DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
      DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasCtdo.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('IIBB')<>Nil) Then
    if (ADODSMovXLS.FieldByName('IIBB').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('IIBB').Value)>0) Then
      begin
        DatosVentasCtdo.CDSVentaCabPERCIBE_IB.Value:='S';
        DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := DatosVentasCtdo.CDSVentaCabNETOGRAV2.AsFloat;
        DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_TASA.AsFloat          := RoundTo((Abs(ADODSMovXLS.FieldByName('IIBB').Value)/DatosVentasCtdo.CDSVentaCabNETOGRAV2.AsFloat)*100,-2);
        DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat       := Abs(ADODSMovXLS.FieldByName('IIBB').Value);
        DatosVentasCtdo.SumarDetalle;
        DatosVentasCtdo.CalcularTotales;
      end;

  FormCpbteCtdo_2.Confirma.Execute;
  if Not(FormCpbteCtdo_2.DSBase.DataSet.IsEmpty) then
    begin
      MemoryData.Append;
      MemoryDataNROCPBTE.Value  :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('NROCPBTE').ASString;
      MemoryDataNOMBRE.Value    :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('NOMBRE').ASString;
      MemoryDataTOTAL.AsFloat   :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('TOTAL').ASFloat;
      MemoryDataID.Value        :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('ID_FC').ASInteger;
      MemoryDataTIPOCPBTE.Value :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('TIPOCPBTE').ASString;
      MemoryData.Post;
    end;
end;

procedure TFormImportacionFacturasVtaGral.IngresarTk(Codigo: String;Fecha:TDate);
var neto:Extended;
begin
  FormTicketVta.Agregar.Execute;
  DatosVentasTicket.CDSVentaCabCODIGOSetText(DatosVentasTicket.CDSVentaCabCodigo,Codigo);
  DatosVentasTicket.CDSVentaCabSUCURSALSetText(DatosVentasTicket.CDSVentaCabSUCURSAL,IntToStr(dbcSucursal.KeyValue));
  DatosVentasTicket.CDSVentaCabNOMBRE.Value     := UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString);
  DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value:= UpperCase(ADODSMovXLS.FieldByName('Nombre').AsString);

  DatosVentasTicket.CDSVentaCabDepositoSetText(DatosVentasTicket.CDSVentaCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
  DatosVentasTicket.CDSVentaCabFECHAVTASetText(DatosVentasTicket.CDSVentaCabFECHAVTA,DateToStr(Fecha));

  DatosVentasTicket.CDSVentaCabCPTE_MANUAL.Value:='S';
  DatosVentasTicket.CDSVentaCabPERCIBE_IB.Value :='N';

 if (ADODSMovXLS.FindField('IIBB')<>Nil) and
     (ADODSMovXLS.FieldByName('IIBB').AsString<>'') and
      (Abs(ADODSMovXLS.FieldByName('IIBB').Value)>0) Then
    DatosVentasTicket.CDSVentaCabPERCIBE_IB.Value :='S';

  if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='TK') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='A') then
    DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbc_TkA.KeyValue))
   else
     if (UpperCase(ADODSMovXLS.FieldByName('Tp').AsString)='TK') and (UpperCase(ADODSMovXLS.FieldByName('letra').AsString)='B') then
       DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbc_TkB.KeyValue));

  DatosVentasTicket.CDSVentaCabSucFacSetText(DatosVentasTicket.CDSVentaCabSUCFAC,ADODSMovXLS.FieldByName('prefijo').AsString);
  DatosVentasTicket.CDSVentaCabNumeroFacSetText(DatosVentasTicket.CDSVentaCabNUMEROFAC,ADODSMovXLS.FieldByName('numero').AsString);
  if (ADODSMovXLS.FindField('iva21')<>Nil) Then
  if (ADODSMovXLS.FieldByName('iva21').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva21').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('iva21').Value);
      Neto       :=Abs(Neto/0.21);
      if UpperCase(ADODSMovXLS.FieldByName('Letra').Value)='B' then
        Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva21').Value);
      DatosVentasTicket.CDSVentaDet.Append;
      DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,Trim(ceCodigo.Text));
      DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,'1');
      DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasTicket.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('iva105')<>Nil) Then
  if (ADODSMovXLS.FieldByName('iva105').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva105').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('iva105').Value);
      Neto       :=Abs(Neto/0.105);
       if UpperCase(ADODSMovXLS.FieldByName('Letra').Value)='B' then
        Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva105').Value);
      DatosVentasTicket.CDSVentaDet.Append;
      DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,Trim(ceCodigo105.Text));
      DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,'1');
      DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasTicket.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('exento')<>Nil) Then
  if (ADODSMovXLS.FieldByName('exento').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('exento').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('exento').Value);
      DatosVentasTicket.CDSVentaDet.Append;
      DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,Trim(ceCodigoCero.Text));
      DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,'1');
      DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasTicket.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('iva27')<>Nil) Then
  if (ADODSMovXLS.FieldByName('iva27').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('iva27').Value)>0) Then
    begin
      Neto       :=Abs(ADODSMovXLS.FieldByName('iva27').Value);
      Neto       :=Abs(Neto/0.27);
       if UpperCase(ADODSMovXLS.FieldByName('Letra').Value)='B' then
        Neto:=Neto+Abs(ADODSMovXLS.FieldByName('iva27').Value);
      DatosVentasTicket.CDSVentaDet.Append;
      DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,Trim(ceCodigo27.Text));
      DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,'1');
      DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto));
      DatosVentasTicket.CDSVentaDet.Post;
    end;
  if (ADODSMovXLS.FindField('IIBB')<>Nil) Then
    if (ADODSMovXLS.FieldByName('IIBB').AsString<>'') and (Abs(ADODSMovXLS.FieldByName('IIBB').Value)>0) Then
      begin
        DatosVentasTicket.CDSVentaCabPERCIBE_IB.Value:='S';
        DatosVentasTicket.CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := DatosVentasTicket.CDSVentaCabNETOGRAV2.AsFloat;
        DatosVentasTicket.CDSVentaCabPERCEPCION_IB_TASA.AsFloat          := RoundTo((Abs(ADODSMovXLS.FieldByName('IIBB').Value)/DatosVentas.CDSVentaCabNETOGRAV2.AsFloat)*100,-2);
        DatosVentasTicket.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat       := Abs(ADODSMovXLS.FieldByName('IIBB').Value);
      end;

  FormTicketVta.Confirma.Execute;

  if Not(FormTicketVta.DSBase.DataSet.IsEmpty) then
  begin
    MemoryData.Append;
    MemoryDataNROCPBTE.Value  :=FormTicketVta.DSBase.DataSet.FieldByName('NROCPBTE').ASString;
    MemoryDataNOMBRE.Value    :=FormTicketVta.DSBase.DataSet.FieldByName('NOMBRE').ASString;
    MemoryDataTOTAL.AsFloat   :=FormTicketVta.DSBase.DataSet.FieldByName('TOTAL').ASFloat;
    MemoryDataID.Value        :=FormTicketVta.DSBase.DataSet.FieldByName('ID_FC').ASInteger;
    MemoryDataTIPOCPBTE.Value :=FormTicketVta.DSBase.DataSet.FieldByName('TIPOCPBTE').ASString;
    MemoryData.Post;
  end;

end;



procedure TFormImportacionFacturasVtaGral.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
 if pnAvisoBase.Visible=False Then
    pnAvisoBase.Visible:=True
  else
    if pnAvisoBase.Visible=True Then
      pnAvisoBase.Visible:=False;
end;

end.
