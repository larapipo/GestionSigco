unit UPanelImportacionVtas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, Grids, DBGrids, ComCtrls,
  StdCtrls, Mask, JvExMask, JvToolEdit, JvExControls, JvDBLookup, DBCtrls,
  JvLabel, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls,IniFiles,DateUtils,
  Gauges,Math, Menus, JvExDBGrids, JvDBGrid, JvExExtCtrls, JvExtComponent,
  JvPanel, JvBaseEdits, DBXCommon, System.Actions, JvAppStorage, JvAppIniStorage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxGrid, FireDAC.UI.Intf, FireDAC.Comp.ScriptCommands, FireDAC.Comp.Script,
  FireDAC.Stan.Util, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  FireDAC.Stan.StorageXML, System.ImageList;

type
  TFormPanelImportacionVta = class(TFormABMBase)
    Panel2: TPanel;
    pnDatosAProcesar: TPanel;
    edPathOrigen: TEdit;
    JvLabel1: TJvLabel;
    ImageList2: TImageList;
    spConectar: TSpeedButton;
    imDesconectado: TImage;
    imConectado: TImage;
    lbEstado: TLabel;
    Conectar: TAction;
    Leer: TAction;
    Progress: TGauge;
    pnDatosImporatdos: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    chbNoAfectaStok: TCheckBox;
    Label7: TLabel;
    dbcCaja: TJvDBLookupCombo;
    Importar: TAction;
    PopupMenu1: TPopupMenu;
    BorrarItem1: TMenuItem;
    cxGridCabeceraDBTableView1: TcxGridDBTableView;
    cxGridCabeceraLevel1: TcxGridLevel;
    cxGridCabecera: TcxGrid;
    cxGridCabeceraDBTableView1CODIGO: TcxGridDBColumn;
    cxGridCabeceraDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGridCabeceraDBTableView1NOMBRE: TcxGridDBColumn;
    cxGridCabeceraDBTableView1FECHAVTA: TcxGridDBColumn;
    cxGridCabeceraDBTableView1TOTAL_CALCULADO: TcxGridDBColumn;
    QInactiveTrigger: TFDQuery;
    QActiveTriger: TFDQuery;
    cxGridDetalleDBTableView1: TcxGridDBTableView;
    cxGridDetalleLevel1: TcxGridLevel;
    cxGridDetalle: TcxGrid;
    cxGridDetalleDBTableView1RENGLON: TcxGridDBColumn;
    cxGridDetalleDBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGridDetalleDBTableView1DETALLE: TcxGridDBColumn;
    cxGridDetalleDBTableView1CANTIDAD: TcxGridDBColumn;
    cxGridDetalleDBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGridDetalleDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDetalleDBTableView1AFECTA_STOCK: TcxGridDBColumn;
    dbgCabecera: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    dbgImpuestos: TJvDBGrid;
    pcDatosImportados: TPageControl;
    pgAImportar: TTabSheet;
    pgImportados: TTabSheet;
    cxGridCabeceraDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid3DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid3DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1ID: TcxGridDBColumn;
    BorrarImportados: TAction;
    btBorrarImp: TButton;
    pgFcImportadas: TTabSheet;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1ID_FC: TcxGridDBColumn;
    cxGrid4DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid4DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid4DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid4DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGrid4DBTableView1TOTAL_REC: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    BorrarUna: TAction;
    BorrarTodas: TAction;
    BorrarUna1: TMenuItem;
    BorrarImportados1: TMenuItem;
    btBuscarFc: TButton;
    IngresarArticulo: TAction;
    pgConfiguracion: TTabSheet;
    Label2: TLabel;
    Label6: TLabel;
    cbRubro: TJvDBLookupCombo;
    Label8: TLabel;
    cbSubRubro: TJvDBLookupCombo;
    cxGridCabeceraDBTableView1CLASECPBTE: TcxGridDBColumn;
    chbAltaArticulos: TCheckBox;
    Label9: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    Label10: TLabel;
    ceCodigo: TJvComboEdit;
    edDetalle: TEdit;
    Label11: TLabel;
    ceCodigo105: TJvComboEdit;
    edDetalle2: TEdit;
    Label12: TLabel;
    ceCodigoCero: TJvComboEdit;
    edDetalleCero: TEdit;
    BuscarArticulos: TAction;
    chbAltaCliente: TCheckBox;
    JvLabel4: TJvLabel;
    dbcSucOrigen: TDBLookupComboBox;
    QInactiveTrigerNC: TFDQuery;
    QActiveTrigerNC: TFDQuery;
    srInactivar: TFDScript;
    ToolButton1: TToolButton;
    btImportar: TButton;
    ToolButton2: TToolButton;
    btNovedades: TButton;
    btValores: TButton;
    pcOrigenDatos: TPageControl;
    pagExterno: TTabSheet;
    pagInterno: TTabSheet;
    Label13: TLabel;
    edDirecorio: TJvDirectoryEdit;
    JvLabel2: TJvLabel;
    dbcDeposito: TJvDBLookupCombo;
    pnDatosImportarExt: TPanel;
    btLeerImportar: TBitBtn;
    edFecha: TJvDateEdit;
    chFiltroFecha: TCheckBox;
    Panel3: TPanel;
    RxLabel4: TJvLabel;
    cbComprobantes: TJvDBLookupCombo;
    chbPorDia: TCheckBox;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    JvDBStatusLabel3: TJvDBStatusLabel;
    Label1: TLabel;
    JvDBStatusLabel4: TJvDBStatusLabel;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    IngresarCliente: TAction;
    Panel4: TPanel;
    Splitter1: TSplitter;
    dbcSucursalDestino: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConectarExecute(Sender: TObject);
    procedure LeerExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure chbPorDiaClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImportarExecute(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure edPathOrigenChange(Sender: TObject);
    procedure btCerraClick(Sender: TObject);
    procedure btValoresClick(Sender: TObject);
    procedure dbcSucursalDestinoClick(Sender: TObject);
    procedure BorrarImportadosExecute(Sender: TObject);
    procedure BorrarUnaExecute(Sender: TObject);
    procedure BorrarTodasExecute(Sender: TObject);
    procedure btBuscarFcClick(Sender: TObject);
    procedure cxGrid4DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure IngresarArticuloExecute(Sender: TObject);
    procedure cbSubRubroEnter(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure cxGrid3DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure pcOrigenDatosChange(Sender: TObject);
    procedure chFiltroFechaClick(Sender: TObject);
    procedure edFechaChange(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure IngresarClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cancelar   :Boolean;
    GeneralIni,ImportarIni:TIniFile;
    TipoBase   :Integer;
    Path       :String;
    lista      :TStringList;
    Archivo    :TextFile;
    OrigenDato :Integer;
    Procedure VerificaCliente(Dato:String);
    procedure BorrarFichero(fichero: String);
    procedure CargarEncabezado;
    Procedure CargarDetalle;
    Procedure CargarImpuestos;
  end;

var
  FormPanelImportacionVta: TFormPanelImportacionVta;

implementation

uses DMImportacion,DMImportacion_Input, UDMain_FD, UListCpbteNoImportados,ShellAPI,
     UValoresImportacionVtas, UFacturaCtdo_2, UTiketVta, UFactura_2,
     UBuscadorArticulos, UBuscadorClientes;
{$R *.dfm}


procedure TFormPanelImportacionVta.BorrarFichero(fichero: String);
var
  FileInfo: TShFileOpStruct;
begin
  FileInfo.Wnd    := Handle;
  FileInfo.wFunc  := FO_DELETE;
  FileInfo.pFrom  := pwidechar(widestring(fichero)); // si quisieramos borrar varios ficheros podriamos poner asi: 'C:\*.bmp'
  FileInfo.pTo    := nil;
  FileInfo.fFlags := FOF_NOCONFIRMATION;

  ShFileOperation(FileInfo);
end;

procedure TFormPanelImportacionVta.VerificaCliente(Dato:String);
begin
  DatosImportacionInput.QBuscaCliente.Close;
  DatosImportacionInput.QBuscaCliente.ParamByName('CODIGO').AsString:=Dato;
  DatosImportacionInput.QBuscaCliente.open;
  if ((DatosImportacionInput.QBuscaCliente.IsEmpty) or (DatosImportacionInput.QBuscaClienteCODIGO.AsString='')) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        DatosImportacionInput.spIngresarClienteFD.Close;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('CODIGO').Value        :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('Codigo').AsString;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('NOMBRE').Value        :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('Nombre').AsString;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('RAZON_SOCIAL').Value  :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('RAZONSOCIAL').AsString;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('DIRECCION').Value     :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('DIRECCION').AsString;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('TIPO_IVA').Value      :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('TIPOIVA').AsInteger;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('CUIT').Value          :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('CUIT').AsString;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('C_POSTAL').Value      :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('CPOSTAL').AsString;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('LOCALIDAD').Value     :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('LOCALIDAD').AsString;
        DatosImportacionInput.spIngresarClienteFD.ParamByName('SUCURSAL').AsInteger  :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('SUCURSAL').AsiNTEGER;

        DatosImportacionInput.spIngresarClienteFD.ParamByName('TELEFONO').Value      :='';
        DatosImportacionInput.spIngresarClienteFD.ParamByName('OBSERVACIONES').Value :='';
        DatosImportacionInput.spIngresarClienteFD.ParamByName('VENDEDOR').Value      :='';
        DatosImportacionInput.spIngresarClienteFD.ParamByName('MAIL').Value          :='';

        DatosImportacionInput.spIngresarClienteFD.ExecProc;

      //  DatosImportacionInput.QPrimerConVta.Close;
//        DatosImportacionInput.QPrimerConVta.Open;
//        DatosImportacionInput.spIngresarConVentaFD.Close;
//        DatosImportacionInput.spIngresarConVentaFD.ParamByName('CODIGO').Value      :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('CODIGO').AsString;
//        DatosImportacionInput.spIngresarConVentaFD.ParamByName('CONDICION').Value   :=DatosImportacionInput.QPrimerConVta.Fields[0].AsInteger;
//        DatosImportacionInput.spIngresarConVentaFD.ExecProc;
//
//        DatosImportacionInput.QPrimerConVta.Close;
//
//        DatosImportacionInput.spLdrFD.Close;
//        DatosImportacionInput.spLdrFD.ParamByName('CODIGO').Value      :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('CODIGO').AsString;
//        DatosImportacionInput.spLdrFD.ParamByName('NOMBRE').Value      :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('NOMBRE').AsString;
//        DatosImportacionInput.spLdrFD.ParamByName('DIRECCION').Value   :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('DIRECCION').AsString;
//        DatosImportacionInput.spLdrFD.ParamByName('CPOSTAL').Value     :=DatosImportacionInput.CDSFcVtaCabXML.FieldByName('CPOSTAL').AsString;
//        DatosImportacionInput.spLdrFD.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        DatosImportacionInput.spIngresarClienteFD.Close;

      except
        DMMain_FD.fdcGestion.Rollback;
        DatosImportacionInput.spIngresarClienteFD.Close;
        ShowMessage('No se Pudo Ingresar el Cliente, Transacción no finalizada....!');
      end;
    end;
  DatosImportacionInput.QBuscaCliente.Close;
end;



procedure TFormPanelImportacionVta.BorrarImportadosExecute(Sender: TObject);
begin
  inherited;
  if pcDatosImportados.ActivePageIndex=1 then
    begin
      if Not(DatosImportacionInput.MemoryData.IsEmpty) then
        begin
          Screen.Cursor:=crHourGlass;
          DatosImportacionInput.MemoryData.First;
          DatosImportacionInput.MemoryData.DisableControls;
          while Not(DatosImportacionInput.MemoryData.Eof) do
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              Try
                DatosImportacionInput.QBorrarFc.Close;
                DatosImportacionInput.QBorrarFc.ParamByName('id').Value:=DatosImportacionInput.MemoryDataID.Value;
                DatosImportacionInput.QBorrarFc.ExecSQL();
                DMMain_FD.fdcGestion.Commit;
              except
                DMMain_FD.fdcGestion.Rollback;
                DatosImportacionInput.QFacturasImportadas.EnableControls;
                ShowMessage('Transacción no finalizada....!');
                exit;
              end;
              DatosImportacionInput.MemoryData.Next;
            end;
          DatosImportacionInput.MemoryData.Close;
          DatosImportacionInput.MemoryData.Open;
         //DatosImportacionInput.MemoryData.EmptyDataSet;
          DatosImportacionInput.MemoryData.EnableControls;
        end;
    end
  else
  if pcDatosImportados.ActivePageIndex=2 then
    begin
      if Not(DatosImportacionInput.QFacturasImportadas.IsEmpty) then
        begin
          Screen.Cursor:=crHourGlass;
          DatosImportacionInput.QFacturasImportadas.First;
          DatosImportacionInput.QFacturasImportadas.DisableControls;
          while Not(DatosImportacionInput.QFacturasImportadas.Eof) do
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              Try
                DatosImportacionInput.QBorrarFc.Close;
                DatosImportacionInput.QBorrarFc.ParamByName('id').Value:=DatosImportacionInput.QFacturasImportadasID_FC.Value;
                DatosImportacionInput.QBorrarFc.ExecSQL();
                DMMain_FD.fdcGestion.Commit;
              except
                DMMain_FD.fdcGestion.Rollback;
                DatosImportacionInput.QFacturasImportadas.EnableControls;
                ShowMessage('Transacción no finalizada....!');
                exit;
              end;
              DatosImportacionInput.QFacturasImportadas.Next;
            end;
          DatosImportacionInput.QFacturasImportadas.Close;
          DatosImportacionInput.QFacturasImportadas.Open;
          DatosImportacionInput.QFacturasImportadas.EmptyDataSet;
          DatosImportacionInput.QFacturasImportadas.EnableControls;
        end;
    end;


  Screen.Cursor:=crDefault;
end;

procedure TFormPanelImportacionVta.BorrarTodasExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosImportacionInput.QFacturasImportadas.IsEmpty) then
    begin
      Screen.Cursor:=crHourGlass;
      DatosImportacionInput.QFacturasImportadas.First;
      while Not(DatosImportacionInput.QFacturasImportadas.Eof) do
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            DatosImportacionInput.QBorrarFC.Close;
            DatosImportacionInput.QBorrarFC.ParamByName('id').Value:=DatosImportacionInput.QFacturasImportadasID_FC.Value;
            DatosImportacionInput.QBorrarFC.ExecSQL();
            DMMain_FD.fdcGestion.Commit;
            DatosImportacionInput.QBorrarFC.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no finalizada....!');
            DatosImportacionInput.QBorrarFC.Close;
            exit;
          end;
          DatosImportacionInput.QFacturasImportadas.Next;
        end;
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFormPanelImportacionVta.BorrarUnaExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  Try
    DatosImportacionInput.QBorrarFC.Close;
    DatosImportacionInput.QBorrarFC.ParamByName('id').Value:=DatosImportacionInput.QFacturasImportadasID_FC.Value;
    DatosImportacionInput.QBorrarFC.ExecSQL();
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transacción no finalizada....!');
  end;
end;

procedure TFormPanelImportacionVta.btBuscarFcClick(Sender: TObject);
begin
  inherited;
  DatosImportacionInput.QFacturasImportadas.Close;
  DatosImportacionInput.QFacturasImportadas.ParamByName('desde').AsDate  := Desde.Date;
  DatosImportacionInput.QFacturasImportadas.ParamByName('hasta').AsDate  := Hasta.Date;
  DatosImportacionInput.QFacturasImportadas.ParamByName('suc').AsInteger := dbcSucursalDestino.KeyValue;
  DatosImportacionInput.QFacturasImportadas.Open;
end;

procedure TFormPanelImportacionVta.btCerraClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormPanelImportacionVta.btNovedadesClick(Sender: TObject);
begin
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

procedure TFormPanelImportacionVta.btValoresClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormValoresIngresarImporVtas)) Then
    FormValoresIngresarImporVtas:=TFormValoresIngresarImporVtas.Create(Self);
  FormValoresIngresarImporVtas.Show;  
end;

procedure TFormPanelImportacionVta.BuscarArticulosExecute(Sender: TObject);
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
       DatosImportacionInput.QTraeCodigoFD.Close;
       DatosImportacionInput.QTraeCodigoFD.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       DatosImportacionInput.QTraeCodigoFD.Open;
       if not(DatosImportacionInput.QTraeCodigoFD.IsEmpty) then
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text := DatosImportacionInput.QTraeCodigoFDDETALLE_STK.AsString;
               ceCodigo.Text  := DatosImportacionInput.QTraeCodigoFDCODIGO_STK.AsString;
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  := DatosImportacionInput.QTraeCodigoFDDETALLE_STK.AsString;
                 ceCodigo105.Text := DatosImportacionInput.QTraeCodigoFDCODIGO_STK.AsString;
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigoCero' then
                 begin
                   edDetalleCero.Text := DatosImportacionInput.QTraeCodigoFDDETALLE_STK.AsString;
                   ceCodigoCero.Text  := DatosImportacionInput.QTraeCodigoFDCODIGO_STK.AsString;
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
                   edDetalleCero.Text :='';
                   ceCodigoCero.Text  :='';
                 end
         end;
       DatosImportacionInput.QTraeCodigoFD.Close;

    end;
end;

procedure TFormPanelImportacionVta.BuscarExecute(Sender: TObject);
var Max,Min:integer;
begin
 // inherited;
  if pcOrigenDatos.ActivePageIndex=0 then
    begin
      if DatosImportacion.FDConnection.Connected=True then
        begin
          Screen.Cursor:=crHourGlass;
          sbEstado.SimpleText:='Inciando Consulta...';
          Application.ProcessMessages;
          DatosImportacion.QFcVtaDet.Close;
          DatosImportacion.QFcVtaDet.Params.ParamByName('id_desde').Value:=-1;
          DatosImportacion.QFcVtaDet.Params.ParamByName('id_hasta').Value:=-1;
          DatosImportacion.QFcVtaDet.Open;

          DatosImportacion.QFcVtaCab.Close;
          DatosImportacion.QFcVtaCab.Params.ParamByName('desde').Value   := desde.Date;
          DatosImportacion.QFcVtaCab.Params.ParamByName('hasta').Value   := hasta.Date;
          DatosImportacion.QFcVtaCab.Params.ParamByName('Sucursal').Value:= dbcSucOrigen.KeyValue;
          DatosImportacion.QFcVtaCab.Params.ParamByName('idcpbte').Value := cbComprobantes.KeyValue;
          DatosImportacion.QFcVtaCab.Open;

          DatosImportacion.QMax.Close;
          DatosImportacion.QMax.Params.ParamByName('desde').Value   := desde.Date;
          DatosImportacion.QMax.Params.ParamByName('hasta').Value   := hasta.Date;
          DatosImportacion.QMax.Params.ParamByName('Sucursal').Value:= dbcSucOrigen.KeyValue;
          DatosImportacion.QMax.Params.ParamByName('idcpbte').Value := cbComprobantes.KeyValue;
          DatosImportacion.QMax.Open;

          DatosImportacion.QMin.Close;
          DatosImportacion.QMin.Params.ParamByName('desde').Value   := desde.Date;
          DatosImportacion.QMin.Params.ParamByName('hasta').Value   := hasta.Date;
          DatosImportacion.QMin.Params.ParamByName('Sucursal').Value:= dbcSucOrigen.KeyValue;
          DatosImportacion.QMin.Params.ParamByName('idcpbte').Value := cbComprobantes.KeyValue;
          DatosImportacion.QMin.Open;


          if Not(DatosImportacion.QFcVtaCab.IsEmpty) then
            begin

              Min := DatosImportacion.QMin.FieldbyName('MIN').Value;
              Max:= DatosImportacion.QMax.FieldbyName('MAX').Value;

              DatosImportacion.QFcVtaDet.Close;
              DatosImportacion.QFcVtaDet.Params.ParamByName('id_desde').Value:=Min;
              DatosImportacion.QFcVtaDet.Params.ParamByName('id_hasta').Value:=Max;
              DatosImportacion.QFcVtaDet.Open;

              DatosImportacion.QFcVtaImp.Close;
              DatosImportacion.QFcVtaImp.Params.ParamByName('id_desde').Value:=Min;
              DatosImportacion.QFcVtaImp.Params.ParamByName('id_hasta').Value:=Max;
              DatosImportacion.QFcVtaImp.Open;
              // Caja_Mov - Moviemitnos de caja

              DatosImportacion.QCajaMov.Close;
              DatosImportacion.QCajaMov.Params.ParamByName('id_desde').Value:=Min;
              DatosImportacion.QCajaMov.Params.ParamByName('id_hasta').Value:=Max;
            //  DatosImportacion.CDSCajaMov.Params.ParamByName('Tipo').Value:=cbComprobantes.LookupSource.DataSet.FieldByName('TIPO_COMPROB').Value;
              DatosImportacion.QCajaMov.Open;

              DatosImportacion.QCajaMov.First;
              Min:= DatosImportacion.QCajaMov.FieldbyName('id_Mov_Caja').Value;
              DatosImportacion.QCajaMov.Last;
              Max:= DatosImportacion.QCajaMov.FieldbyName('id_Mov_Caja').Value;
             // Caja_Mov - Tarjetas
              DatosImportacion.QMovTCredito.Close;
              DatosImportacion.QMovTCredito.Params.ParamByName('Min_id').Value:=Min;
              DatosImportacion.QMovTCredito.Params.ParamByName('Max_id').Value:=Max;
              DatosImportacion.QMovTCredito.Open;
            // Caja_Mov - Efectivo
              DatosImportacion.QMovEfectivo.Close;
              DatosImportacion.QMovEfectivo.Params.ParamByName('Min_id').Value:=Min;
              DatosImportacion.QMovEfectivo.Params.ParamByName('Max_id').Value:=Max;
              DatosImportacion.QMovEfectivo.Open;
            // Caja_Mov - Cheques de Tercero
              DatosImportacion.QChe3.Close;
              DatosImportacion.QChe3.Params.ParamByName('Min_id').Value:=Min;
              DatosImportacion.QChe3.Params.ParamByName('Max_id').Value:=Max;
              DatosImportacion.QChe3.Open;

              DatosImportacion.QFcVtaCab.First;

              sbEstado.SimpleText:='';
              Application.ProcessMessages;

              Screen.Cursor:=crDefault;
            end
          else
            begin
              ShowMessage('No hay Movimientos Disponible....');
              Screen.Cursor:=crDefault;
              sbEstado.SimpleText:='';
              Application.ProcessMessages;
            end;

        end
      else
        begin
          ShowMessage('No hay Conección Disponible....');
          Screen.Cursor:=crDefault;
          sbEstado.SimpleText:='';
          Application.ProcessMessages;
        end;
      if Not(DatosImportacion.QFcVtaCab.IsEmpty) then
        btLeerImportar.Click;
    end;

end;

procedure TFormPanelImportacionVta.CancelarExecute(Sender: TObject);
begin
  //inherited;
  Cancelar:=True;
end;

procedure TFormPanelImportacionVta.CargarDetalle;
VAR Aux,Nombre:String;
i:integer;
begin
  if DatosImportacionInput.CDSFcVtaDetXML.RecordCount>1 then
    begin
      while not(DatosImportacionInput.CDSFcVtaDetXML.Eof) do
        begin
          // **********  Verifico Articulos *****************************
          if (chbAltaArticulos.Checked) then
            begin
              Aux:='';
              DatosImportacionInput.QTraeCodigoFD.Close;
              DatosImportacionInput.QTraeCodigoFD.ParamByName('codigo').Value := DatosImportacionInput.CDSFcVtaDetXML.FieldByName('CODIGOARTICULO').AsString;
              DatosImportacionInput.QTraeCodigoFD.Open;
              if DatosImportacionInput.QTraeCodigoFD.Fields[0].AsString<>'' then
                Aux := DatosImportacionInput.QTraeCodigoFD.Fields[0].AsString;
              DatosImportacionInput.QTraeCodigoFD.Close;
              if Trim(Aux)='' then
                IngresarArticulo.Execute;
            end;
          // ************************************************************

          DatosImportacionInput.QFcVtaDet.Append;
          For i:=0 to DatosImportacionInput.CDSFcVtaDetXML.FieldCount-1 do
            begin
              if DatosImportacionInput.QFcVtaDet.FindField(DatosImportacionInput.CDSFcVtaDetXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre :=DatosImportacionInput.CDSFcVtaDetXML.Fields[i].FieldName;
                  DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := DatosImportacionInput.CDSFcVtaDetXML.FieldByName(Nombre).Value;
                  if (Nombre='CODIGOARTICULO') then
                    begin
                      Aux:='';
                      DatosImportacionInput.QTraeCodigoFD.Close;
                      DatosImportacionInput.QTraeCodigoFD.ParamByName('codigo').Value := DatosImportacionInput.CDSFcVtaDetXML.FieldByName('CODIGOARTICULO').AsString;
                      DatosImportacionInput.QTraeCodigoFD.Open;
                      if DatosImportacionInput.QTraeCodigoFD.Fields[0].AsString<>'' then
                        Aux := DatosImportacionInput.QTraeCodigoFD.Fields[0].AsString;
                      DatosImportacionInput.QTraeCodigoFD.Close;
                      if Trim(Aux)='' then
                        begin
                          CASE DatosImportacionInput.CDSFcVtaDetXML.FieldByName('IVA_TASA').ASInteger of
                             0: DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value:=ceCodigoCero.Text;
                            21: DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value:=ceCodigo.Text;
                            10: DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value:=ceCodigo105.Text;
                          END;
                        end
                      else
                        DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := Aux;
                    end;
                  if (Nombre='AFECTA_STOCK') and (chbNoAfectaStok.Checked) then
                    DatosImportacionInput.QFcVtaDetAFECTA_STOCK.Value:='N';

                  if (Nombre='DEPOSITO') AND (dbcDeposito.KeyValue>-1) then
                    DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value:=dbcDeposito.KeyValue;

                  if (Nombre='ID') then
                    DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := DatosImportacionInput.IBGFcVtaDet.IncrementFD(1);

                  if (Nombre='ID_CABFAC') then
                    DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := DatosImportacionInput.QFcVtaCab.FieldByName('ID_FC').Value;
                end;
            end;

          if (Trunc(DatosImportacionInput.QFcVtaDetIVA_UNITARIO.AsFloat * 1000)=0) then
            DatosImportacionInput.QFcVtaDetIVA_UNITARIO.AsFloat  := RoundTo ( DatosImportacionInput.QFcVtaDetUNITARIO_GRAVADO.AsFloat * ( DatosImportacionInput.QFcVtaDetIVA_TASA.AsFloat * 0.01),DMMain_FD.DecRedondeo);

          if (Trunc(DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat * 1000)=0) then
            DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat := RoundTo ( DatosImportacionInput.QFcVtaDetCANTIDAD.AsFloat * DatosImportacionInput.QFcVtaDetUNITARIO_GRAVADO.AsFloat * ( 1- DatosImportacionInput.QFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

          if (Trunc(DatosImportacionInput.QFcVtaDetTOTAL_EXENTO.AsFloat * 1000)=0) then
            DatosImportacionInput.QFcVtaDetTOTAL_EXENTO.AsFloat  := RoundTo ( DatosImportacionInput.QFcVtaDetCANTIDAD.AsFloat * DatosImportacionInput.QFcVtaDetUNITARIO_EXENTO.AsFloat * ( 1- DatosImportacionInput.QFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

          if (Trunc(DatosImportacionInput.QFcVtaDetTOTAL.AsFloat * 1000)=0) then
            DatosImportacionInput.QFcVtaDetTOTAL.AsFloat         := DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat +
                                                                    DatosImportacionInput.QFcVtaDetTOTAL_EXENTO.AsFloat;

          if (Trunc(DatosImportacionInput.QFcVtaDetIVA_TOTAL.AsFloat * 1000)=0) then
            DatosImportacionInput.QFcVtaDetIVA_TOTAL.AsFloat := RoundTo ( DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat * DatosImportacionInput.QFcVtaDetIVA_TASA.AsFloat * 0.01,-2 );

          if chbNoAfectaStok.Checked then
            DatosImportacionInput.QFcVtaDetAFECTA_STOCK.Value:='N';

          DatosImportacionInput.QFcVtaDet.Post;
          DatosImportacionInput.CDSFcVtaDetXML.Next;
        end;
    end
  else
    if DatosImportacionInput.CDSFcVtaDetXML.RecordCount=1 then
      begin
        // **********  Verifico Articulos *****************************
        if (chbAltaArticulos.Checked) then
          begin
            Aux:='';
            DatosImportacionInput.QTraeCodigoFD.Close;
            DatosImportacionInput.QTraeCodigoFD.ParamByName('codigo').Value := DatosImportacionInput.CDSFcVtaDetXML.FieldByName('CODIGOARTICULO').AsString;
            DatosImportacionInput.QTraeCodigoFD.Open;
            if DatosImportacionInput.QTraeCodigoFD.Fields[0].AsString<>'' then
              Aux := DatosImportacionInput.QTraeCodigoFD.Fields[0].AsString;
            DatosImportacionInput.QTraeCodigoFD.Close;
            if Trim(Aux)='' then
              IngresarArticulo.Execute;
          end;
          // ************************************************************
         DatosImportacionInput.QFcVtaDet.Append;
         For i:=0 to DatosImportacionInput.CDSFcVtaDetXML.FieldCount-1 do
           begin
             if DatosImportacionInput.QFcVtaDet.FindField(DatosImportacionInput.CDSFcVtaDetXML.Fields[i].FieldName)<>nil Then
               begin
                 Nombre :=DatosImportacionInput.CDSFcVtaDetXML.Fields[i].FieldName;
                 DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := DatosImportacionInput.CDSFcVtaDetXML.FieldByName(Nombre).Value;
                 if ((Nombre='CODIGOARTICULO') and Not(chbAltaArticulos.Checked)) then
                   begin
                     CASE DatosImportacionInput.CDSFcVtaDetXML.FieldByName('IVA_TASA').ASInteger of
                        0: DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value:=ceCodigoCero.Text;
                       21: DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value:=ceCodigo.Text;
                       10: DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value:=ceCodigo105.Text;
                     END;
                   end;
                 if (Nombre='DEPOSITO') AND (dbcDeposito.KeyValue>-1) then
                   DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := dbcDeposito.KeyValue;

                 if (Nombre='ID') then
                   DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := DatosImportacionInput.IBGFcVtaDet.IncrementFD(1);

                 if (Nombre='ID_CABFAC') then
                   DatosImportacionInput.QFcVtaDet.FieldByName(Nombre).Value := DatosImportacionInput.QFcVtaCab.FieldByName('ID_FC').Value;

                 
               end;
           end;

         if (Trunc(DatosImportacionInput.QFcVtaDetIVA_UNITARIO.AsFloat * 1000)=0) then
           DatosImportacionInput.QFcVtaDetIVA_UNITARIO.AsFloat  := RoundTo ( DatosImportacionInput.QFcVtaDetUNITARIO_GRAVADO.AsFloat * ( DatosImportacionInput.QFcVtaDetIVA_TASA.AsFloat * 0.01),DMMain_FD.DecRedondeo);

         if (Trunc(DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat * 1000)=0) then
           DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat := RoundTo ( DatosImportacionInput.QFcVtaDetCANTIDAD.AsFloat * DatosImportacionInput.QFcVtaDetUNITARIO_GRAVADO.AsFloat * ( 1- DatosImportacionInput.QFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

         if (Trunc(DatosImportacionInput.QFcVtaDetTOTAL_EXENTO.AsFloat * 1000)=0) then
           DatosImportacionInput.QFcVtaDetTOTAL_EXENTO.AsFloat  := RoundTo ( DatosImportacionInput.QFcVtaDetCANTIDAD.AsFloat * DatosImportacionInput.QFcVtaDetUNITARIO_EXENTO.AsFloat * ( 1- DatosImportacionInput.QFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

         if (Trunc(DatosImportacionInput.QFcVtaDetTOTAL.AsFloat * 1000)=0) then
           DatosImportacionInput.QFcVtaDetTOTAL.AsFloat         := DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat +
                                                                   DatosImportacionInput.QFcVtaDetTOTAL_EXENTO.AsFloat;

         if (Trunc(DatosImportacionInput.QFcVtaDetIVA_TOTAL.AsFloat * 1000)=0) then
           DatosImportacionInput.QFcVtaDetIVA_TOTAL.AsFloat := RoundTo ( DatosImportacionInput.QFcVtaDetTOTAL_GRAVADO.AsFloat * DatosImportacionInput.QFcVtaDetIVA_TASA.AsFloat * 0.01,-2 );

         if chbNoAfectaStok.Checked then
           DatosImportacionInput.QFcVtaDetAFECTA_STOCK.Value:='N';

         DatosImportacionInput.QFcVtaDet.Post;
      end;

end;

procedure TFormPanelImportacionVta.CargarEncabezado;
var Nombre:String;
i:Integer;
begin
  DatosImportacionInput.QFcVtaCab.Insert;
  For i:=0 to DatosImportacionInput.CDSFcVtaCabXML.FieldCount-1 do
    begin
      if DatosImportacionInput.QFcVtaCab.FindField(DatosImportacionInput.CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
        begin
          DatosImportacionInput.QFcVtaCabSUCURSAL.Value:=dbcSucursalDestino.KeyValue;
          Nombre :=DatosImportacionInput.CDSFcVtaCabXML.Fields[i].FieldName;
          if Nombre<>'SUCURSAL' Then
            DatosImportacionInput.QFcVtaCab.FieldByName(Nombre).Value:=DatosImportacionInput.CDSFcVtaCabXML.FieldByName(Nombre).Value;
          if Nombre='CODIGO' Then
            begin
              if (DatosImportacionInput.CDSFcVtaCabXML.FieldByName('TIPOIVA').AsInteger=3) and (Not(chbAltaCliente.Checked)) Then
                DatosImportacionInput.QFcVtaCab.FieldByName(Nombre).Value:=ceCliente.Text;
            end;
          if (Nombre='DEPOSITO') AND (dbcDeposito.KeyValue>-1) then
            DatosImportacionInput.QFcVtaCab.FieldByName(Nombre).Value:=dbcDeposito.KeyValue;
         // if (Nombre='FECHAVTA') or (Nombre='FECHAVTO') or (Nombre='FECHA_FISCAL') then
         //   DatosImportacionInput.QFcVtaCab.FieldByName(Nombre).AsSQLTimeStamp:=DatosImportacionInput.CDSFcVtaCabXML.FieldByName(Nombre).AsSQLTimeStamp;

          if (Nombre='ID_FC') then
            DatosImportacionInput.QFcVtaCab.FieldByName(Nombre).Value:=DatosImportacionInput.IBGFcVtaCab.IncrementFD(1);
        end;
    end;
  //****  Marco Todas como no anuladas
 // DatosImportacionInput.QFcVtaCabANULADO.Value             := 'N';
 // DatosImportacionInput.QFcVtaCabCAE_VENCIMIENTO.Clear;
  DatosImportacionInput.QFcVtaCabCAJA_POR_DEFECTO.Value   := dbcCaja.KeyValue;
  DatosImportacionInput.QFcVtaCabCPTE_MANUAL.Value        := 'S';
  DatosImportacionInput.QFcVtaCabIMPRESO.Value            := 'S';

  DatosImportacionInput.QFcVtaCab.Post;
end;

procedure TFormPanelImportacionVta.CargarImpuestos;
var I:Integer;
Nombre:String;
begin
  while not(DatosImportacionInput.CDSFcVtaImpXML.Eof) do
    begin
      DatosImportacionInput.QFcVtaImp.Insert;
      For i:=0 to DatosImportacionInput.CDSFcVtaImpXML.FieldCount-1 do
        begin
          if DatosImportacionInput.QFcVtaImp.FindField(DatosImportacionInput.CDSFcVtaImpXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre := DatosImportacionInput.CDSFcVtaImpXML.Fields[i].FieldName;
              DatosImportacionInput.QFcVtaImp.FieldByName(Nombre).Value:=DatosImportacionInput.CDSFcVtaImpXML.FieldByName(Nombre).Value;
              if (Nombre='ID_IMPUESTO') then
                DatosImportacionInput.QFcVtaImp.FieldByName(Nombre).Value := DatosImportacionInput.IBGImpuestos.IncrementFD(1);
              if (Nombre='ID_FCVTACAB') then
                DatosImportacionInput.QFcVtaImp.FieldByName(Nombre).Value := DatosImportacionInput.QFcVtaCab.FieldByName('id_fc').Value;
            end;
        end;
      DatosImportacionInput.QFcVtaImp.Post;
      DatosImportacionInput.CDSFcVtaImpXML.Next;
    end;
end;

procedure TFormPanelImportacionVta.cbRubroChange(Sender: TObject);
begin
  inherited;
  cbSubRubro.ClearValue;
end;

procedure TFormPanelImportacionVta.cbSubRubroEnter(Sender: TObject);
begin
  inherited;
  DatosImportacionInput.QSubRubro.Close;
  DatosImportacionInput.QSubRubro.ParamByName('rubro').Value:=cbRubro.KeyValue;
  DatosImportacionInput.QSubRubro.Open
end;

procedure TFormPanelImportacionVta.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
       ceCliente.Text  := FormBuscadorClientes.Codigo;
       DatosImportacionInput.QBuscaCliente.Close;
       DatosImportacionInput.QBuscaCliente.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
       DatosImportacionInput.QBuscaCliente.Open;
       IF NOT (DatosImportacionInput.QBuscaCliente.eof) THEN
         BEGIN
           edNombreCliente.Text := DatosImportacionInput.QBuscaClienteNOMBRE.AsString;
           ceCliente.SetFocus;
           ceCliente.SelectAll;
         END;
    END;
end;

procedure TFormPanelImportacionVta.chbPorDiaClick(Sender: TObject);
begin
  inherited;
  if chbPorDia.Checked then
    begin
      Desde.Date:=Date;
      Hasta.Date:=Date;
    end;
end;

procedure TFormPanelImportacionVta.chFiltroFechaClick(Sender: TObject);
begin
  inherited;
  DatosImportacionInput.CDSFcVtaCabXML.Filtered:=False;
  DatosImportacionInput.CDSFcVtaCabXML.Filter:='FECHAVTA='+''''+DateToStr(edFecha.Date)+'''';
  DatosImportacionInput.CDSFcVtaCabXML.Filtered:=chFiltroFecha.Checked;
end;

procedure TFormPanelImportacionVta.ConectarExecute(Sender: TObject);
begin
  inherited;
  if DatosImportacion.FDConnection.Connected=True then
    DatosImportacion.FDConnection.Connected:=False;
  begin
    path             := ExtractFilePath(ParamStr(0));
    GeneralIni       := TIniFile.Create(path + 'General.Ini');
    DatosSinBDEPath  := GeneralIni.ReadString('Datos', 'DatosSinBDEPath','');
    TipoBase         := GeneralIni.ReadInteger('Datos', 'BaseDatos',0);  // 0 interbase -- 1 firebird
    GeneralIni.Free;
    TipoBase       := 1;//rgTipoBase.ItemIndex;
    if edPathOrigen.Text='' then
      edPathOrigen.Text := DatosSinBDEPath;
    DatosImportacion.FDConnection.Connected:=False;

    if TipoBase=0 then
      begin
        DatosImportacion.FDConnection.Params.Values['Database']  := edPathOrigen.Text;
        DatosImportacion.FDConnection.Params.Values['User_Name'] := 'sysdba';
        DatosImportacion.FDConnection.Params.Values['Password']  := 'regulador';
        DatosImportacion.FDConnection.Params.Values['DriverID']  := 'IB';
        DatosImportacion.FDConnection.Params.Values['SQLDialect']:= '1';
      end
    else
      if TipoBase=1 then
        begin
          DatosImportacion.FDConnection.Params.Values['Database']  := edPathOrigen.Text;
          DatosImportacion.FDConnection.Params.Values['User_Name'] := 'sysdba';
          DatosImportacion.FDConnection.Params.Values['Password']  := 'regulador';
          DatosImportacion.FDConnection.Params.Values['DriverID']  := 'FB';
          DatosImportacion.FDConnection.Params.Values['SQLDialect']:= '3';
        end;
     try
       if Trim(edPathOrigen.Text)<>'' then
         DatosImportacion.FDConnection.Connected:=True;
     except
       on e: Exception do
         begin
           Application.MessageBox(pchar (e.ClassName + ';' + e.Message),'error',MB_ICONSTOP);
           ShowMessage('Verificar el Alias de la Base de Datos de Origen .....');
           DatosImportacion.FDConnection.Connected:=False;
         end;
     end;
  end;
  imConectado.Visible    := DatosImportacion.FDConnection.Connected;
  imDesconectado.Visible := Not(DatosImportacion.FDConnection.Connected);
  if DatosImportacion.FDConnection.Connected then
    begin
      lbEstado.Font.Color :=clBlue;
      lbEstado.Caption    :='Conectado';
      Conectar.ImageIndex :=10;

      DatosImportacion.QBuscaSucursal.Close;
      DatosImportacion.QBuscaSucursal.Open;
      DatosImportacion.QBuscaSucursal.First;

      dbcSucOrigen.KeyValue := DatosImportacion.QBuscaSucursalCODIGO.Value;
      DatosImportacion.QComprobante.Close;
      DatosImportacion.QComprobante.ParamByName('suc').Value:=dbcSucOrigen.KeyValue;
      DatosImportacion.QComprobante.Open;

      DatosImportacion.QBuscaSucursal.Close;
      DatosImportacion.QBuscaSucursal.Open;

    end
  else
    begin
      lbEstado.Font.Color := clRed;
      Conectar.ImageIndex := 11;
      lbEstado.Caption    := 'Desconectado';
    end;
end;

procedure TFormPanelImportacionVta.cxGrid3DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if DatosImportacionInput.MemoryDataTIPOCPBTE.Value='FO' then
    begin
          IF NOT (Assigned(FormCpbteCtdo_2)) THEN
            FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew   := DatosImportacionInput.MemoryDataID.AsString;
          FormCpbteCtdo_2.TipoCpbte := DatosImportacionInput.MemoryDataTIPOCPBTE.AsString;
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
    end
  else
    if DatosImportacionInput.MemoryDataTIPOCPBTE.Value='TK' then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta   := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := DatosImportacionInput.MemoryDataID.AsString;
        FormTicketVta.TipoCpbte := DatosImportacionInput.MemoryDataTIPOCPBTE.AsString;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if DatosImportacionInput.MemoryDataTIPOCPBTE.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := DatosImportacionInput.MemoryDataID.AsString;
          FormCpbte_2.TipoCpbte := DatosImportacionInput.MemoryDataTIPOCPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end;
end;

procedure TFormPanelImportacionVta.cxGrid4DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if DatosImportacionInput.QFacturasImportadasTIPOCPBTE.Value='FO' then
    begin
          IF NOT (Assigned(FormCpbteCtdo_2)) THEN
            FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew   := DatosImportacionInput.QFacturasImportadasID_FC.AsString;
          FormCpbteCtdo_2.TipoCpbte := DatosImportacionInput.QFacturasImportadasTIPOCPBTE.AsString;
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
    end
  else
    if DatosImportacionInput.QFacturasImportadasTIPOCPBTE.Value='TK' then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta   := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := DatosImportacionInput.QFacturasImportadasID_FC.AsString;
        FormTicketVta.TipoCpbte := DatosImportacionInput.QFacturasImportadasTIPOCPBTE.AsString;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if DatosImportacionInput.QFacturasImportadasTIPOCPBTE.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := DatosImportacionInput.QFacturasImportadasID_FC.AsString;
          FormCpbte_2.TipoCpbte := DatosImportacionInput.QFacturasImportadasTIPOCPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end;
end;

procedure TFormPanelImportacionVta.dbcSucursalDestinoClick(Sender: TObject);
begin
  inherited;

  if DatosImportacion.FDConnection.Connected then
    DatosImportacion.FDConnection.Connected:=False;

  lbEstado.Font.Color    := clRed;
  Conectar.ImageIndex    := 10;
  lbEstado.Caption       := 'Desconectado';


  if DatosImportacion.FDConnection.Connected then
    begin
      DatosImportacion.QBuscaSucursal.Close;
      DatosImportacion.QBuscaSucursal.Open;
      DatosImportacion.QBuscaSucursal.First;

      dbcSucOrigen.KeyValue := DatosImportacion.QBuscaSucursalCODIGO.Value;
      DatosImportacion.QComprobante.Close;
      DatosImportacion.QComprobante.ParamByName('suc').Value:=dbcSucOrigen.KeyValue;
      DatosImportacion.QComprobante.Open;
    end;


  imConectado.Visible    := DatosImportacion.FDConnection.Connected;
  imDesconectado.Visible := Not(DatosImportacion.FDConnection.Connected);

  edPathOrigen.Text      := dbcSucursalDestino.ListSource.DataSet.FieldByName('host').AsString;

end;

procedure TFormPanelImportacionVta.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormPanelImportacionVta.edFechaChange(Sender: TObject);
begin
  inherited;
  DatosImportacionInput.CDSFcVtaCabXML.Filtered:=False;
  DatosImportacionInput.CDSFcVtaCabXML.Filter:='FECHAVTA='+''''+DateToStr(edFecha.Date)+'''';
  DatosImportacionInput.CDSFcVtaCabXML.Filtered:=chFiltroFecha.Checked;

end;

procedure TFormPanelImportacionVta.edPathOrigenChange(Sender: TObject);
begin
  inherited;
  DatosImportacion.FDConnection.Close;
  imConectado.Visible    := False;
  imDesconectado.Visible := True;
 // spConectar.Enabled     := Not(DatosImportacion.FDConnection.Connected);
end;

procedure TFormPanelImportacionVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  ListBox.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
//  ImportarIni := TIniFile.Create(path + 'PanelImportacion.Ini');
//  ImportarIni.WriteString('Datos', 'DatosImportar',edPathOrigen.Text);
//  ImportarIni.Free;
  ArchivoIni                 := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PanelImportarVtas.ini');
  ArchivoIni.WriteString('Path', 'Path', edPathOrigen.Text);
  ArchivoIni.WriteString('Path', 'directorio',  edDirecorio.Text  );


  ArchivoIni.WriteInteger('Base', 'Tipo', 1);
  if Not(VarIsNull(dbcSucursalDestino.KeyValue)) then
    ArchivoIni.WriteInteger('Dato', 'SucursalDestino',dbcSucursalDestino.KeyValue)
  else
    ArchivoIni.WriteInteger('Dato', 'SucursalOrigen',-1);

  if Not(VarIsNull(dbcDeposito.KeyValue)) then
    ArchivoIni.WriteInteger('Dato', 'Deposito',dbcDeposito.KeyValue)
  else
    ArchivoIni.WriteInteger('Dato', 'Deposito',-1);

  if Not(VarIsNull(dbcCaja.KeyValue)) then
    ArchivoIni.WriteInteger('Dato', 'caja',dbcCaja.KeyValue)
  else
    ArchivoIni.WriteInteger('Dato', 'caja',-1);

  ArchivoIni.WriteString('Archivo', 'Rubro', cbRubro.KeyValue);
  ArchivoIni.WriteString('Archivo', 'SubRubro', cbSubRubro.KeyValue);

  ArchivoIni.WriteString('Dato', 'codigo', ceCliente.Text);
  ArchivoIni.WriteString('Dato', 'Nombre', edNombreCliente.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo',ceCodigo.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo',edDetalle.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo105',ceCodigo105.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo2',edDetalle2.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo0',ceCodigoCero.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo0',edDetalleCero.Text);
  ArchivoIni.WriteBool('Dato', 'DarAltaArticulo',chbAltaArticulos.Checked);
  ArchivoIni.WriteBool('Dato', 'DarAltaCliente',chbAltaCliente.Checked);
  ArchivoIni.WriteInteger('Path', 'Origen',pcOrigenDatos.ActivePageIndex);

  ArchivoIni.Free;

  QActiveTriger.Close;
  QActiveTriger.ExecSQL;
  QActiveTriger.Close;

  QActiveTrigerNC.Close;
  QActiveTrigerNC.ExecSQL;
  QActiveTrigerNC.Close;
  inherited;

  FreeAndNil(DatosImportacion);
  FreeAndNil(DatosImportacionInput);
  Action:=caFree;

end;

procedure TFormPanelImportacionVta.FormCreate(Sender: TObject);
var S:String;
begin
  inherited;
  IF NOT (Assigned(DatosImportacion)) THEN
    DatosImportacion := TDatosImportacion.Create(Self);
  IF NOT (Assigned(DatosImportacionInput)) THEN
    DatosImportacionInput := TDatosImportacionInput.Create(Self);

  AutoSize:=False;

  DatosImportacionInput.QCtaCaja.Close;
  DatosImportacionInput.QCtaCaja.Open;
  DatosImportacionInput.QDepositos.Close;
  DatosImportacionInput.QDepositos.Open;
  DatosImportacionInput.QDepositos.Open;
  DatosImportacionInput.QBuscaSucursal.Open;
  DatosImportacionInput.QRubro.Open;
  DatosImportacionInput.QSubRubro.Open;

  ArchivoIni                    := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PanelImportarVtas.ini');
  edPathOrigen.Text             := ArchivoIni.ReadString('Path', 'Path', '...');
  edDirecorio.Text              := ArchivoIni.ReadString('Path', 'directorio', '...');

  TipoBase                      := ArchivoIni.ReadInteger('Base', 'Tipo', 1);
  dbcSucursalDestino.KeyValue   := ArchivoIni.ReadInteger('Dato', 'SucursalDestino',SucursalPorDefecto);
  dbcDeposito.KeyValue          := ArchivoIni.ReadInteger('Dato', 'Deposito',-1);

  ceCliente.Text                := ArchivoIni.ReadString('Dato', 'codigo', '');
  edNombreCliente.Text          := ArchivoIni.ReadString('Dato', 'Nombre', '');
  ceCodigo.Text                 := ArchivoIni.ReadString('Dato', 'CodArticulo','');
  edDetalle.Text                := ArchivoIni.ReadString('Dato', 'DetArticulo','');
  ceCodigo105.Text              := ArchivoIni.ReadString('Dato', 'CodArticulo105','');
  edDetalle2.Text               := ArchivoIni.ReadString('Dato', 'DetArticulo2','');
  ceCodigoCero.Text             := ArchivoIni.ReadString('Dato', 'CodArticulo0','');
  edDetalleCero.Text            := ArchivoIni.ReadString('Dato', 'DetArticulo0','');
  chbAltaArticulos.Checked      := ArchivoIni.ReadBool('Dato', 'DarAltaArticulo',False);
  chbAltaCliente.Checked        := ArchivoIni.ReadBool('Dato', 'DarAltaCliente',False);

  dbcCaja.KeyValue              := ArchivoIni.ReadInteger('Dato', 'caja',CajaPorDefecto);
  cbRubro.KeyValue              := ArchivoIni.ReadString('Archivo', 'Rubro', '***');
  pcOrigenDatos.ActivePageIndex := ArchivoIni.ReadInteger('Path', 'Origen',0);

  OrigenDato:=pcOrigenDatos.ActivePageIndex;
  DatosImportacionInput.QSubRubro.Close;
  DatosImportacionInput.QSubRubro.ParamByName('rubro').Value:=cbRubro.KeyValue;
  DatosImportacionInput.QSubRubro.Open;

  cbSubRubro.KeyValue           := ArchivoIni.ReadString('Archivo', 'SubRubro', '*****');

  ArchivoIni.Free;

  chbPorDia.OnClick(Sender);

  Conectar.ImageIndex               := 11;
  imConectado.Visible               := DatosImportacion.FDConnection.Connected;
  imDesconectado.Visible            := Not(DatosImportacion.FDConnection.Connected);

end;

procedure TFormPanelImportacionVta.FormDestroy(Sender: TObject);
begin
  inherited;
   // path := ExtractFilePath(ParamStr(0));
//  ImportarIni := TIniFile.Create(path + 'PanelImportacion.Ini');
//  ImportarIni.WriteString('Datos', 'DatosImportar',edPathOrigen.Text);
//  ImportarIni.Free;

  FormPanelImportacionVta:=nil;
end;

procedure TFormPanelImportacionVta.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;

  path             := ExtractFilePath(ParamStr(0));
  GeneralIni       := TIniFile.Create(path + 'General.Ini');
 // TipoBase         := GeneralIni.ReadInteger('Datos', 'BaseDatos',0);  // 0 interbase -- 1 firebird
  GeneralIni.Free;

  pcOrigenDatos.ActivePageIndex := OrigenDato;

  pnDatosImportarExt.Enabled:=pcOrigenDatos.ActivePageIndex=0;
  Buscar.Enabled            :=pcOrigenDatos.ActivePageIndex=0;
  // Buscar.Execute;
end;

procedure TFormPanelImportacionVta.ImportarExecute(Sender: TObject);
var
Nombre    :String;
I,Estado  :Integer;
Importado : Boolean;
Aux       :String;
CodigoArt :String;
oErr      : EFDException;
begin
  inherited;
  Cancelar:=False;
  if Not(DatosImportacionInput.CDSFcVtaCabXML.IsEmpty) then
    begin
      DatosImportacionInput.MemoryData.Close;
      DatosImportacionInput.MemoryData.Open;
      DatosImportacionInput.MemoryData.EmptyTable;
      pcDatosImportados.ActivePageIndex:=0;

      QInactiveTrigger.Close;
      QInactiveTrigger.ExecSQL;
      QInactiveTrigger.Close;

      QInactiveTrigerNC.Close;
      QInactiveTrigerNC.ExecSQL;
      QInactiveTrigerNC.Close;

      lista:=TStringList.Create;
      if VarIsNull(dbcCaja.KeyValue) Then
        RAISE Exception.Create('No hay caja seleccionada');

      DatosImportacionInput.QFcVtaCab.Close;
      DatosImportacionInput.QFcVtaCab.ParamByName('id').Clear;
      DatosImportacionInput.QFcVtaCab.OPeN;

      DatosImportacionInput.QFcVtaDet.Close;
      DatosImportacionInput.QFcVtaDet.ParamByName('id').Clear;
      DatosImportacionInput.QFcVtaDet.OPeN;

      DatosImportacionInput.QFcVtaImp.Close;
      DatosImportacionInput.QFcVtaImp.ParamByName('id').Clear;
      DatosImportacionInput.QFcVtaImp.OPeN;

      DatosImportacionInput.CDSFcVtaCabXML.First;
      Progress.MaxValue:=DatosImportacionInput.CDSFcVtaCabXML.RecordCount;

      while not(DatosImportacionInput.CDSFcVtaCabXML.Eof) and (Cancelar=False) do
        begin
          DMMain_FD.QBuscaFcFD.Close;
          DMMain_FD.QBuscaFcFD.ParamByName('letra').Value    := DatosImportacionInput.CDSFcVtaCabXML.FieldByName('letrafac').Value;
          DMMain_FD.QBuscaFcFD.ParamByName('numfac').Value   := DatosImportacionInput.CDSFcVtaCabXML.FieldByName('numeroFac').Value;
          DMMain_FD.QBuscaFcFD.ParamByName('sucfac').Value   := DatosImportacionInput.CDSFcVtaCabXML.FieldByName('sucFac').Value;
          DMMain_FD.QBuscaFcFD.ParamByName('sucursal').Value := dbcSucursalDestino.KeyValue;// DatosImportacionInput.CDSFcVtaCabXML.FieldByName('sucursal').Value;
          DMMain_FD.QBuscaFcFD.ParamByName('tipo').Value     := DatosImportacionInput.CDSFcVtaCabXML.FieldByName('tipocpbte').Value;
          DMMain_FD.QBuscaFcFD.ParamByName('clase').Value    := DatosImportacionInput.CDSFcVtaCabXML.FieldByName('clasecpbte').Value;
          DMMain_FD.QBuscaFcFD.Open;

          Progress.Progress := Progress.Progress+1;
          Application.ProcessMessages;

          if DMMain_FD.QBuscaFcFD.Fields[0].AsString='' then
            begin
              // **** Verifica el Cliente ***************************************
              if (DatosImportacionInput.CDSFcVtaCabXML.FieldByName('TIPOIVA').AsInteger=1) then
                VerificaCliente(Trim(DatosImportacionInput.CDSFcVtaCabXML.FieldByName('Codigo').AsString));
              if (chbAltaCliente.Checked) and (DatosImportacionInput.CDSFcVtaCabXML.FieldByName('TIPOIVA').AsInteger<>1) then
                VerificaCliente(Trim(DatosImportacionInput.CDSFcVtaCabXML.FieldByName('Codigo').AsString));
              //****************************************************************
              // **** Ecabezado *****************
              CargarEncabezado;
              //****** Paso al Detalle ******************************************
              DatosImportacionInput.CDSFcVtaDetXML.First;
              Cargardetalle;
              //****** Paso al Pie de Impuesto***********************************
              DatosImportacionInput.CDSFcVtaImpXML.First;
              CargarImpuestos;
              //****************************************************************

              if DatosImportacionInput.QFcVtaCab.State<>dsbrowse Then DatosImportacionInput.QFcVtaCab.Post;
              if DatosImportacionInput.QFcVtaDet.State<>dsbrowse Then DatosImportacionInput.QFcVtaDet.Post;
              if DatosImportacionInput.QFcVtaImp.State<>dsbrowse Then DatosImportacionInput.QFcVtaImp.Post;


              DMMain_FD.fdcGestion.StartTransaction;
              Try
                // Si es de contado ingreso el mov de caja
                Estado:=0;
                Estado:=DatosImportacionInput.QFcVtaCab.ApplyUpdates(-1);
                if Estado>0 then
                  begin
                    DatosImportacionInput.QFcVtaCab.FilterChanges := [rtModified, rtInserted, rtDeleted, rtHasErrors];
                    try
                      oErr := DatosImportacionInput.QFcVtaCab.RowError;
                      if oErr <> nil then
                        ShowMessage(oErr.Message);

                    finally
                      DatosImportacionInput.QFcVtaCab.FilterChanges := [rtUnmodified, rtModified, rtInserted];
                    end;
                  end;


                if estado=0 then
                  Estado:=DatosImportacionInput.QFcVtaDet.ApplyUpdates(-1);
                if Estado>0 then
                  begin
                    DatosImportacionInput.QFcVtaDet.FilterChanges := [rtModified, rtInserted, rtDeleted, rtHasErrors];
                    try
                      oErr := DatosImportacionInput.QFcVtaDet.RowError;
                      if oErr <> nil then
                        ShowMessage(oErr.Message);

                    finally
                      DatosImportacionInput.QFcVtaDet.FilterChanges := [rtUnmodified, rtModified, rtInserted];
                    end;
                  end;

                if estado=0 then
                  Estado:=DatosImportacionInput.QFcVtaImp.ApplyUpdates(-1);

                if ((DatosImportacionInput.QFcVtaCabTIPOCPBTE.Value='FO') or (DatosImportacionInput.QFcVtaCabTIPOCPBTE.Value='TK') or
                   ((DatosImportacionInput.QFcVtaCabTIPOCPBTE.Value='NC') and (DatosImportacionInput.QFcVtaCabNC_CONTADO.Value='S'))) and (Estado=0) Then
                  begin
                    with DatosImportacionInput do
                      begin
                        CDSCajaMovXML.First;
                        while not(CDSCajaMovXML.Eof) do
                          begin
                            if (CDSCajaMovXML.FieldByName('ID_TPago').Value = 1 ) then //efectivo
                              begin
                                spAgregaMovEfectivoFD.Close;
                                spAgregaMovEfectivoFD.Params.ParamByName('id_cpbte').AsInteger       := QFcVtaCabID_FC.Value;
                                spAgregaMovEfectivoFD.Params.ParamByName('Tipo_Comprob').AsString    := QFcVtaCabTIPOCPBTE.AsString;
                                spAgregaMovEfectivoFD.Params.ParamByName('clase_comprob').AsString   := QFcVtaCabCLASECPBTE.AsString;
                                spAgregaMovEfectivoFD.Params.ParamByName('NroCpbte').AsString        := QFcVtaCabNROCPBTE.AsString;
                                spAgregaMovEfectivoFD.Params.ParamByName('id_cuenta_caja').AsInteger := dbcCaja.KeyValue;
                                spAgregaMovEfectivoFD.Params.ParamByName('Fecha_movimiento').AsDate  := QFcVtaCabFECHAVTA.AsDateTime;
                                if (QFcVtaCabTIPOCPBTE.AsString='NC') then
                                  begin
                                    spAgregaMovEfectivoFD.Params.ParamByName('haber').AsFloat         := CDSCajaMovXML.FieldByName('haber').AsFloat;
                                    spAgregaMovEfectivoFD.Params.ParamByName('debe').AsFloat          := 0;
                                    spAgregaMovEfectivoFD.Params.ParamByName('tipooperacion').Value   := 'E';
                                  end
                                else
                                  begin
                                    spAgregaMovEfectivoFD.Params.ParamByName('debe').AsFloat          := CDSCajaMovXML.FieldByName('debe').AsFloat;
                                    spAgregaMovEfectivoFD.Params.ParamByName('haber').AsFloat         := 0;
                                    spAgregaMovEfectivoFD.Params.ParamByName('tipooperacion').Value   := 'I';
                                  end;
                                spAgregaMovEfectivoFD.ExecProc;
                                spAgregaMovEfectivoFD.Close;
                              end
                            else
                              if (CDSCajaMovXML.FieldByName('ID_TPago').Value = 4 ) then //T.de Credito
                                begin
                                  spAgregaMovTCFD.Close;
                                  spAgregaMovTCFD.Params.ParamByName('id_cpbte').AsInteger       := QFcVtaCabID_FC.Value;
                                  spAgregaMovTCFD.Params.ParamByName('Tipo_Comprob').AsString    := QFcVtaCabTIPOCPBTE.AsString;
                                  spAgregaMovTCFD.Params.ParamByName('clase_comprob').AsString   := QFcVtaCabCLASECPBTE.AsString;
                                  spAgregaMovTCFD.Params.ParamByName('NroCpbte').AsString        := QFcVtaCabNROCPBTE.AsString;
                                  spAgregaMovTCFD.Params.ParamByName('id_cuenta_caja').AsInteger := dbcCaja.KeyValue;
                                  spAgregaMovTCFD.Params.ParamByName('Fecha_movimiento').AsDate  := QFcVtaCabFECHAVTA.AsDateTime;
                                  spAgregaMovTCFD.Params.ParamByName('debe').AsFloat             := CDSCajaMovXML.FieldByName('debe').AsFloat;
                                  spAgregaMovTCFD.Params.ParamByName('haber').AsFloat            := 0;
                                  spAgregaMovTCFD.Params.ParamByName('tipooperacion').AsString   := 'I';

                                 // spAgregaMovTCFD.Params.ParamByName('FPago').AsInteger       := CDSCajaMovXML.FieldByName('ID_FPAGO').Value;
                                  spAgregaMovTCFD.Params.ParamByName('IDTC').AsInteger        := CDSTCMovXML.FieldByName('ID_TC').Value;
                                  spAgregaMovTCFD.Params.ParamByName('Titular').AsString      := CDSTCMovXML.FieldByName('TITULAR').AsString;
                                  spAgregaMovTCFD.Params.ParamByName('Cuotas').Value          := CDSTCMovXML.FieldByName('CAN_CUOTAS').Value;
                                  spAgregaMovTCFD.Params.ParamByName('Documento').AsString    := '';
                                  spAgregaMovTCFD.Params.ParamByName('Unidades').AsFloat      := CDSTCMovXML.FieldByName('UNIDADES').Value;
                                  spAgregaMovTCFD.Params.ParamByName('Cotizacion').AsFloat    := 1;
                                  spAgregaMovTCFD.Params.ParamByName('Moneda').Value          := 1;
                                  spAgregaMovTCFD.Params.ParamByName('UnidadesNeto').AsFloat  := CDSTCMovXML.FieldByName('UNIDADES_NETO').Value;
                                  spAgregaMovTCFD.Params.ParamByName('ImporteNeto').AsFloat   := CDSTCMovXML.FieldByName('IMPORTE_NETO').Value;
                                  spAgregaMovTCFD.Params.ParamByName('Coeficiente').AsFloat   := CDSTCMovXML.FieldByName('COEFICIENTE').Value;
                                  spAgregaMovTCFD.Params.ParamByName('ValorCuota').AsFloat    := CDSTCMovXML.FieldByName('VALORCUOTA').Value;
                                  spAgregaMovTCFD.Params.ParamByName('ImporteRecargo').AsFloat:= CDSTCMovXML.FieldByName('IMPORTE_RECARGO').Value;
                                //  spAgregaMovTCFD.Params.ParamByName('IDCTABANCO').AsInteger  := CDSTCMovXML.FieldByName('ID_CUENTA_BANCO').AsInteger;
                                  spAgregaMovTCFD.Params.ParamByName('NroCupon').AsInteger    := CDSTCMovXML.FieldByName('Nro_Cupon').AsInteger;

                                  spAgregaMovTCFD.Params.ParamByName('Lote').AsString         := CDSTCMovXML.FieldByName('LOTE').AsString;
                                  spAgregaMovTCFD.Params.ParamByName('Terminal').AsString     := CDSTCMovXML.FieldByName('TERMINAL').AsString;

                                  spAgregaMovTCFD.ExecProc;
                                  spAgregaMovTCFD.Close;
                                end
                              else
                                if (CDSCajaMovXML.FieldByName('ID_TPago').Value = 3 ) then //Cheques de Tercero
                                  begin
                                    spAgregaChe3FD.Close;
                                    spAgregaChe3FD.Params.ParamByName('id_cpbte').AsInteger       := QFcVtaCabID_FC.Value;
                                    spAgregaChe3FD.Params.ParamByName('Tipo_Comprob').AsString    := QFcVtaCabTIPOCPBTE.AsString;
                                    spAgregaChe3FD.Params.ParamByName('clase_comprob').AsString   := QFcVtaCabCLASECPBTE.AsString;
                                    spAgregaChe3FD.Params.ParamByName('NroCpbte').AsString        := QFcVtaCabNROCPBTE.AsString;
                                    spAgregaChe3FD.Params.ParamByName('id_cuenta_caja').AsInteger := dbcCaja.KeyValue;
                                    spAgregaChe3FD.Params.ParamByName('Fecha_Emision').AsDate     := CDSChe3XML.FieldByName('FECHA_EMISION').AsDateTime;
                                    spAgregaChe3FD.Params.ParamByName('Fecha_Cobro').AsDate       := CDSChe3XML.FieldByName('FECHA_COBRO').AsDateTime;
                                    spAgregaChe3FD.Params.ParamByName('Fecha_Entrada').AsDate     := CDSChe3XML.FieldByName('FECHA_ENTRADA').AsDateTime;


                                    spAgregaChe3FD.Params.ParamByName('Origen').AsString          := CDSChe3XML.FieldByName('Origen').AsString;
                                    spAgregaChe3FD.Params.ParamByName('Unidades').AsFloat         := CDSChe3XML.FieldByName('Unidades').AsFloat;
                                    spAgregaChe3FD.Params.ParamByName('Importe').AsFloat          := CDSChe3XML.FieldByName('Importe').AsFloat;
                                    spAgregaChe3FD.Params.ParamByName('tipooperacion').AsString   := 'I';
                                    spAgregaChe3FD.Params.ParamByName('FPago').AsInteger          := CDSCajaMovXML.FieldByName('ID_FPAGO').AsInteger;
                                    spAgregaChe3FD.Params.ParamByName('ID_Banco').AsInteger       := CDSChe3XML.FieldByName('ID_Banco').AsInteger;
                                    spAgregaChe3FD.Params.ParamByName('Numero').AsInteger         := CDSChe3XML.FieldByName('Numero').AsInteger;

                                    spAgregaChe3FD.Params.ParamByName('Cotizacion').AsFloat  := 1;
                                    spAgregaChe3FD.Params.ParamByName('Moneda').Value        := 1;

                                    spAgregaChe3FD.Params.ParamByName('CUIT').AsString       := CDSChe3XML.FieldByName('cuit').AsString;
                                    spAgregaChe3FD.Params.ParamByName('sucursal').AsString   := CDSChe3XML.FieldByName('sucursal_bco').AsString;
                                    spAgregaChe3FD.Params.ParamByName('firmante').AsString   := CDSChe3XML.FieldByName('firmante').AsString;
                                    spAgregaChe3FD.ExecProc;
                                    spAgregaChe3FD.Close;
                                  end;
                            CDSCajaMovXML.Next;
                          end;

                      end;

                  end;

                if DatosImportacionInput.CDSFcVtaCabXML.FieldByName('Anulado').Value='S' Then
                  begin
                    DatosImportacionInput.QFcVtaCab.edit;
                    DatosImportacionInput.QFcVtaCab.FieldByName('Anulado').Value:='S';
                    DatosImportacionInput.QFcVtaCab.Post;
                    DatosImportacionInput.QFcVtaCab.ApplyUpdates(0);
                  end;

                if Estado=0 then
                  begin
                    DMMain_FD.fdcGestion.Commit;
                    Importado :=True;
                  end
                else
                  begin
                    DMMain_FD.fdcGestion.Rollback;
                    Importado :=False;
                  end;

              except
                DMMain_FD.fdcGestion.Rollback;
                Importado :=False;
                ShowMessage('Transacción no finalizada....!');
              end;

              if (Importado) and (estado=0) then
                begin
                  DatosImportacionInput.MemoryData.Append;
                  DatosImportacionInput.MemoryDataNROCPBTE.Value  :=DatosImportacionInput.QFcVtaCabNROCPBTE.ASString;
                  DatosImportacionInput.MemoryDataNOMBRE.Value    :=DatosImportacionInput.QFcVtaCabNOMBRE.ASString;
                  if DatosImportacionInput.QFcVtaCabTIPOCPBTE.Value='NC' then
                    DatosImportacionInput.MemoryDataTOTAL.AsFloat   :=DatosImportacionInput.QFcVtaCabTOTAL.ASFloat*-1
                  else
                    DatosImportacionInput.MemoryDataTOTAL.AsFloat   :=DatosImportacionInput.QFcVtaCabTOTAL.ASFloat;
                  DatosImportacionInput.MemoryDataID.Value        :=DatosImportacionInput.QFcVtaCabID_FC.ASInteger;
                  DatosImportacionInput.MemoryDataTIPOCPBTE.Value :=DatosImportacionInput.QFcVtaCabTIPOCPBTE.ASString;
                  DatosImportacionInput.MemoryData.Post;
                end;
              DatosImportacionInput.QFcVtaCab.Close;
              DatosImportacionInput.QFcVtaCab.ParamByName('id').Clear;
              DatosImportacionInput.QFcVtaCab.OPeN;

              DatosImportacionInput.QFcVtaDet.Close;
              DatosImportacionInput.QFcVtaDet.ParamByName('id').Clear;
              DatosImportacionInput.QFcVtaDet.OPeN;

              DatosImportacionInput.QFcVtaImp.Close;
              DatosImportacionInput.QFcVtaImp.ParamByName('id').Clear;
              DatosImportacionInput.QFcVtaImp.OPeN;

              if (Not(Importado)) then
                begin
                  lista.Add(DatosImportacionInput.CDSFcVtaCabXML.FieldByName('letrafac').AsString+'-'+
                            DatosImportacionInput.CDSFcVtaCabXML.FieldByName('sucfac').AsString+'-'+
                            DatosImportacionInput.CDSFcVtaCabXML.FieldByName('numerofac').AsString+'   '+
                            DatosImportacionInput.CDSFcVtaCabXML.FieldByName('Nombre').AsString);
                end;

            end
          else
            begin
              lista.Add(DatosImportacionInput.CDSFcVtaCabXML.FieldByName('letrafac').AsString+'-'+
                        DatosImportacionInput.CDSFcVtaCabXML.FieldByName('sucfac').AsString+'-'+
                        DatosImportacionInput.CDSFcVtaCabXML.FieldByName('numerofac').AsString+'   '+
                        DatosImportacionInput.CDSFcVtaCabXML.FieldByName('Nombre').AsString);
            end;
          DatosImportacionInput.CDSFcVtaCabXML.Next;
        end;

      DatosImportacionInput.CDSFcVtaCabXML.Close;
      DatosImportacionInput.CDSFcVtaImpXML.Close;
      DatosImportacionInput.CDSFcVtaDetXML.Close;

      DatosImportacionInput.QFcVtaCab.Close;
      DatosImportacionInput.QFcVtaDet.Close;
      DatosImportacionInput.QFcVtaImp.Close;

      Progress.Progress:=0;
    end;
  if Not(DatosImportacionInput.MemoryData.isEmpty) then
    DatosImportacionInput.MemoryData.First;


  QActiveTriger.Close;
  QActiveTriger.ExecSQL;
  QActiveTriger.Close;

  QActiveTrigerNC.Close;
  QActiveTrigerNC.ExecSQL;
  QActiveTrigerNC.Close;

  //ShowMessage('Operación Finalizada...');
end;

procedure TFormPanelImportacionVta.IngresarArticuloExecute(Sender: TObject);
var CodigoArt,Detalle:String;
begin
  inherited;
  sbEstado.SimpleText:='Ingresando Articulo..... ';
  Detalle  := trim(UpperCase(copy(DatosImportacionInput.CDSFcVtaDetXML.FieldByName('DETALLE').AsString,1,45)));
  // ESTO BUSCA POR CODIGO ALTERNATIVO
//  QTraeCodigo.Close;
//  QTraeCodigo.ParamByName('codigo').AsString:=Trim(CDSFcVtaDetXML.FieldByName('CODIGOARTICULO').AsString);
//  QTraeCodigo.Open;
//  if QTraeCodigoCODIGO_STK.AsString<>'' then
//    begin
//      CodigoArt := QTraeCodigoCODIGO_STK.AsString;
//      Detalle   := QTraeCodigoDETALLE_STK.AsString;
//    end
//  else
    begin
//      QUltimoCodigo2.Close;
//      QUltimoCodigo2.Open;
//      if QUltimoCodigo2.Fields[0].AsString<>'' Then
//        CodigoArt:=IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)
//      else
//        CodigoArt:='0';
//      QUltimoCodigo2.Close;
//      CodigoArt := copy('00000000',1,8-length(CodigoArt)) + CodigoArt;


      DatosImportacionInput.spABMStock.Close;
      DatosImportacionInput.spABMStock.ParamByName('CODIGO').Value                := Trim(DatosImportacionInput.CDSFcVtaDetXML.FieldByName('CODIGOARTICULO').AsString);
      DatosImportacionInput.spABMStock.ParamByName('CODIGO_alternativo').Value    := '';//Trim(DatosImportacionInput.CDSFcVtaDetXML.FieldByName('CODIGOARTICULO').AsString);
      DatosImportacionInput.spABMStock.ParamByName('Detalle').AsString            := Detalle;
      DatosImportacionInput.spABMStock.ParamByName('Detalle_Adicional').AsString  := Detalle;
      DatosImportacionInput.spABMStock.ParamByName('costo_gravado').Value         := DatosImportacionInput.CDSFcVtaDetXML.FieldByName('UNITARIO_TOTAL').AsFloat;

      DatosImportacionInput.spABMStock.ParamByName('Marca').AsString              := '';
      DatosImportacionInput.spABMStock.ParamByName('Rubro').AsString              := cbRubro.KeyValue;

      DatosImportacionInput.spABMStock.ParamByName('subRubro').AsString           := cbSubRubro.KeyValue;
      DatosImportacionInput.spABMStock.ParamByName('modo_gravamen').AsString      := DatosImportacionInput.CDSFcVtaDetXML.FieldByName('MODO_GRAVAMEN').AsString;

      DatosImportacionInput.spABMStock.ParamByName('costo_exento').Value          := 0;
      DatosImportacionInput.spABMStock.ParamByName('tasa_iva').AsInteger          := DatosImportacionInput.CDSFcVtaDetXML.FieldByName('TIPOIVA_TASA').AsInteger;

      DatosImportacionInput.spABMStock.ParamByName('sobretasa_iva').AsInteger     := DatosImportacionInput.CDSFcVtaDetXML.FieldByName('TIPOIVA_TASA').AsInteger;
      DatosImportacionInput.spABMStock.ParamByName('moneda').AsInteger            := 1;

      DatosImportacionInput.spABMStock.ExecProc;
      DatosImportacionInput.spABMStock.Close;
    end;

  sbEstado.SimpleText:='';
end;

procedure TFormPanelImportacionVta.IngresarClienteExecute(Sender: TObject);
begin
  inherited;
  VerificaCliente(DatosImportacionInput.CDSFcVtaCabXML.FieldByName('CODIGO').Value);
end;

procedure TFormPanelImportacionVta.LeerExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  if DatosImportacionInput.CDSFcVtaCabXML.State=dsBrowse Then
    DatosImportacionInput.CDSFcVtaCabXML.EmptyDataSet;
  if DatosImportacionInput.CDSFcVtaDetXML.State=dsBrowse then
    DatosImportacionInput.CDSFcVtaDetXML.EmptyDataSet;
  if DatosImportacionInput.CDSFcVtaImpXML.State=dsBrowse Then
    DatosImportacionInput.CDSFcVtaImpXML.EmptyDataSet;
  if DatosImportacionInput.CDSCajaMovXML.State=dsbrowse then
    DatosImportacionInput.CDSCajaMovXML.EmptyDataSet;
  if DatosImportacionInput.CDSTCMovXML.State=dsBrowse then
    DatosImportacionInput.CDSTCMovXML.EmptyDataSet;
  if DatosImportacionInput.CDSMovEfectivoXML.State=dsBrowse then
    DatosImportacionInput.CDSMovEfectivoXML.EmptyDataSet;
  if DatosImportacionInput.CDSChe3XML.State=dsBrowse then
    DatosImportacionInput.CDSChe3XML.EmptyDataSet;

  if pcOrigenDatos.ActivePageIndex=0 then
    begin
      if DatosImportacionInput.CDSFcVtaCabXML.isEmpty then
        begin
          Screen.Cursor :=crHourGlass;
          if DatosImportacion.QFcVtaCab.IsEmpty Then Buscar.Execute;
          if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
            CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
          BorrarFichero(ExtractFilePath(ParamStr(0))+'Archivos Temporales\*.*');
          if Not(DatosImportacion.QFcVtaCab.IsEmpty)  Then
            begin
              DatosImportacion.QFcVtaCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaCab.XML',sfXML);
              DatosImportacion.QFcVtaDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaDet.XML',sfXML);
              DatosImportacion.QFcVtaImp.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaImp.XML',sfXML);
              DatosImportacion.QCajaMov.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\CajaMov.XML',sfXML);
              DatosImportacion.QMovTCredito.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\MovTc.XML',sfXML);
              DatosImportacion.QMovEfectivo.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\MovEfectivo.XML',sfXML);
              DatosImportacion.QChe3.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Cheques3.XML',sfXML);
              sbEstado.SimpleText:='Datos exportados....';
            end
          else
            begin
              ShowMessage('No Hay datos para exportar....');
              sbEstado.SimpleText:='';
            end;

          Screen.Cursor:=crDefault;

          DatosImportacionInput.CDSFcVtaCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaCab.XML');

          DatosImportacionInput.CDSFcVtaDetXML.MasterSource   :=DatosImportacionInput.DSFcVtaCabXML;
          DatosImportacionInput.CDSFcVtaDetXML.MasterFields   :='id_fc';
          DatosImportacionInput.CDSFcVtaDetXML.IndexFieldNames:='id_cabfac';
          DatosImportacionInput.CDSFcVtaDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaDet.xml');

          DatosImportacionInput.CDSFcVtaImpXML.MasterSource   :=DatosImportacionInput.DSFcVtaCabXML;
          DatosImportacionInput.CDSFcVtaImpXML.MasterFields   :='id_fc';
          DatosImportacionInput.CDSFcVtaImpXML.IndexFieldNames:='ID_FCVTACAB';
          DatosImportacionInput.CDSFcVtaImpXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaImp.xml');
          DatosImportacionInput.CDSFcVtaCabXML.IndexFieldNames:='nrocpbte';


          DatosImportacionInput.CDSCajaMovXML.MasterSource   :=DatosImportacionInput.DSFcVtaCabXML;
          DatosImportacionInput.CDSCajaMovXML.MasterFields   :='id_fc';
          DatosImportacionInput.CDSCajaMovXML.IndexFieldNames:='id_comprobante';
          DatosImportacionInput.CDSCajaMovXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\CajaMov.xml');


          DatosImportacionInput.CDSTCMovXML.MasterSource   :=DatosImportacionInput.DSCajaMovXML;
          DatosImportacionInput.CDSTCMovXML.MasterFields   :='id_mov_caja';
          DatosImportacionInput.CDSTCMovXML.IndexFieldNames:='id_mov_caja';
          DatosImportacionInput.CDSTCMovXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\MovTc.xml');

          DatosImportacionInput.CDSMovEfectivoXML.MasterSource   :=DatosImportacionInput.DSCajaMovXML;
          DatosImportacionInput.CDSMovEfectivoXML.MasterFields   :='id_mov_caja';
          DatosImportacionInput.CDSMovEfectivoXML.IndexFieldNames:='id_mov_caja';
          DatosImportacionInput.CDSMovEfectivoXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\MovEfectivo.XML');

          DatosImportacionInput.CDSChe3XML.MasterSource   :=DatosImportacionInput.DSCajaMovXML;
          DatosImportacionInput.CDSChe3XML.MasterFields   :='id_mov_caja';
          DatosImportacionInput.CDSChe3XML.IndexFieldNames:='id_mov_caja';
          DatosImportacionInput.CDSChe3XML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Cheques3.XML');
          sbEstado.SimpleText:='Datos Listos para Importar....';
        end;
    end
  else
    if pcOrigenDatos.ActivePageIndex=1 then
    begin
      if DatosImportacionInput.CDSFcVtaCabXML.isEmpty then
        begin
          Screen.Cursor := crHourGlass;
          Screen.Cursor := crDefault;

          DatosImportacionInput.CDSFcVtaCabXML.LoadFromFile(edDirecorio.Text+'\FcVtaCab.XML');

          DatosImportacionInput.CDSFcVtaDetXML.MasterSource   :=DatosImportacionInput.DSFcVtaCabXML;
          DatosImportacionInput.CDSFcVtaDetXML.MasterFields   :='id_fc';
          DatosImportacionInput.CDSFcVtaDetXML.IndexFieldNames:='id_cabfac';
          DatosImportacionInput.CDSFcVtaDetXML.LoadFromFile(edDirecorio.Text+'\FcVtaDet.xml');

          DatosImportacionInput.CDSFcVtaImpXML.MasterSource   :=DatosImportacionInput.DSFcVtaCabXML;
          DatosImportacionInput.CDSFcVtaImpXML.MasterFields   :='id_fc';
          DatosImportacionInput.CDSFcVtaImpXML.IndexFieldNames:='ID_FCVTACAB';
          DatosImportacionInput.CDSFcVtaImpXML.LoadFromFile(edDirecorio.Text+'\FcVtaImp.xml');
          DatosImportacionInput.CDSFcVtaCabXML.IndexFieldNames:='nrocpbte';

          if FileExists(edDirecorio.Text+'\CajaMov.xml') then
            begin
              DatosImportacionInput.CDSCajaMovXML.MasterSource   :=DatosImportacionInput.DSFcVtaCabXML;
              DatosImportacionInput.CDSCajaMovXML.MasterFields   :='id_fc';
              DatosImportacionInput.CDSCajaMovXML.IndexFieldNames:='id_comprobante';
              DatosImportacionInput.CDSCajaMovXML.LoadFromFile(edDirecorio.Text+'\CajaMov.xml');
            end;

          if FileExists(edDirecorio.Text+'\MovTc.xml') then
            begin
              DatosImportacionInput.CDSTCMovXML.MasterSource   :=DatosImportacionInput.DSCajaMovXML;
              DatosImportacionInput.CDSTCMovXML.MasterFields   :='id_mov_caja';
              DatosImportacionInput.CDSTCMovXML.IndexFieldNames:='id_mov_caja';
              DatosImportacionInput.CDSTCMovXML.LoadFromFile(edDirecorio.Text+'\MovTc.xml');
            end;
          if FileExists(edDirecorio.Text+'\MovEfectivo.xml') then
            begin
              DatosImportacionInput.CDSMovEfectivoXML.MasterSource   :=DatosImportacionInput.DSCajaMovXML;
              DatosImportacionInput.CDSMovEfectivoXML.MasterFields   :='id_mov_caja';
              DatosImportacionInput.CDSMovEfectivoXML.IndexFieldNames:='id_mov_caja';
              DatosImportacionInput.CDSMovEfectivoXML.LoadFromFile(edDirecorio.Text+'\MovEfectivo.XML');
            end;
          if FileExists(edDirecorio.Text+'\Cheques3.xml') then
            begin
              DatosImportacionInput.CDSChe3XML.MasterSource   :=DatosImportacionInput.DSCajaMovXML;
              DatosImportacionInput.CDSChe3XML.MasterFields   :='id_mov_caja';
              DatosImportacionInput.CDSChe3XML.IndexFieldNames:='id_mov_caja';
              DatosImportacionInput.CDSChe3XML.LoadFromFile(edDirecorio.Text+'\Cheques3.XML');
            end;
          sbEstado.SimpleText:='Datos Listos para Importar....';
        end;
    end
end;

procedure TFormPanelImportacionVta.pcOrigenDatosChange(Sender: TObject);
begin
  inherited;
  pnDatosImportarExt.Enabled:=pcOrigenDatos.ActivePageIndex=0;
  Buscar.Enabled            :=pcOrigenDatos.ActivePageIndex=0;
end;

procedure TFormPanelImportacionVta.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
    begin
      DecodeDate(Desde.Date,y,m,d);
      if Button=btnext Then
        if m=12 Then
          begin
            m:=1;y:=y+1;
          end
        else
          m:=m+1
      else
        if Button=btPrev Then
          if m=1 Then
            begin
              m:=12;y:=y-1;
            end
          else
            m:=m-1;
      Desde.Date:=EncodeDate(y,m,1);
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;  
//  BUSCAR.Execute;
end;

end.
