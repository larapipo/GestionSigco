unit UImportacionFacCompraAFIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,IniFiles, AdvPanel, ToolPanels,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBLookup, Datasnap.DBClient,
  Datasnap.Provider, Vcl.DBGrids, AdvProgr,StrUtils, AdvOfficeButtons,
  JvMaskEdit, JvDBFindEdit, JvExStdCtrls, JvCombobox, AdvCombo, DBAdvGrid,
  AdvSmoothButton;

type
  TFormImportarFcCompraAFIP = class(TFormABMBase)
    pnMedio: TPanel;
    pnPie: TPanel;
    btImpMisComprobantes: TBitBtn;
    btExcelMisCpbtes: TBitBtn;
    OpenDialog: TOpenDialog;
    CargarExcel: TAction;
    Importar: TAction;
    QProveedorCuit: TFDQuery;
    QProveedorCuitCODIGO: TStringField;
    tpConfiguracion: TAdvToolPanelTab;
    pnConfiguracion: TAdvToolPanel;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ceCodigo: TJvComboEdit;
    ceCodigo105: TJvComboEdit;
    edDetalle105: TEdit;
    edDetalle: TEdit;
    ceCodigoCero: TJvComboEdit;
    edDetalleCero: TEdit;
    BuscarArticulos: TAction;
    btParamMisCpbte: TButton;
    QSucursal: TFDQuery;
    DSSucursal: TDataSource;
    QRelacionCpbte: TFDQuery;
    QRelacionCpbteID: TIntegerField;
    QRelacionCpbteID_COMPROBANTE: TIntegerField;
    QRelacionCpbteSUCURSAL: TIntegerField;
    QRelacionCpbteCODIGO_AFIP: TIntegerField;
    QRelacionCpbteCOMPROBANTE_AFIP: TStringField;
    DSPRelacionCpbte: TDataSetProvider;
    CDSRelacionCpbte: TClientDataSet;
    CDSRelacionCpbteID: TIntegerField;
    CDSRelacionCpbteID_COMPROBANTE: TIntegerField;
    CDSRelacionCpbteSUCURSAL: TIntegerField;
    CDSRelacionCpbteMUESTRACOMPROB: TStringField;
    CDSRelacionCpbteCODIGO_AFIP: TIntegerField;
    CDSRelacionCpbteCOMPROBANTE_AFIP: TStringField;
    QId: TFDQuery;
    QIdMAX: TIntegerField;
    Label17: TLabel;
    dbgRelaciones: TDBGrid;
    DSRelacion: TDataSource;
    QComprobante: TFDQuery;
    spGenerarFc: TFDStoredProc;
    Button2: TButton;
    Novedades: TAction;
    ToolButton1: TToolButton;
    Label18: TLabel;
    JvLabel1: TJvLabel;
    BorrarLote: TAction;
    QBorrarLote: TFDQuery;
    pcMovimientos: TPageControl;
    pagMisComprobantes: TTabSheet;
    pagRelaciones: TTabSheet;
    pnCab: TPanel;
    dbgAsiganciones: TDBGrid;
    QRelacionProvee: TFDQuery;
    DSPRelacionProvee: TDataSetProvider;
    CDSRelacionProvee: TClientDataSet;
    DSRelacionProvee: TDataSource;
    QRelacionProveeCODIGO: TStringField;
    QRelacionProveeCONCPETO: TStringField;
    QRelacionProveeMUESTRACONCPETO: TStringField;
    CDSRelacionProveeCODIGO: TStringField;
    CDSRelacionProveeCONCPETO: TStringField;
    CDSRelacionProveeMUESTRACONCPETO: TStringField;
    QRelacionProveeMUESTRAPROVEEDOR: TStringField;
    CDSRelacionProveeMUESTRAPROVEEDOR: TStringField;
    FDQAgregaNuevos: TFDQuery;
    FDQBorraBorrados: TFDQuery;
    QBuscaStock: TFDQuery;
    DSBuscaStock: TDataSource;
    CDSBuscaStock: TClientDataSet;
    DSPBuscaStock: TDataSetProvider;
    CDSBuscaStockCODIGO_STK: TStringField;
    CDSBuscaStockDETALLE_STK: TStringField;
    ComBuscadorStock: TComBuscador;
    BuscarConepto: TAction;
    VerificaRelacion: TAction;
    pnCabecera: TPanel;
    JvLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    chBox_Comprobantes: TAdvOfficeCheckBox;
    sgFacturas: TAdvStringGrid;
    pnPieRelacion: TPanel;
    efindProveedor: TJvDBFindEdit;
    QVerificaNro: TFDQuery;
    QVerificaNroID: TIntegerField;
    QVerificaNroTIPOCPBTE: TStringField;
    TabSheet1: TTabSheet;
    pnCabPortal: TPanel;
    JvLabel3: TJvLabel;
    cbSucursalPortal: TJvDBLookupCombo;
    cheBox_Portal: TAdvOfficeCheckBox;
    pnPiePortal: TPanel;
    btImpPortal: TBitBtn;
    btExcelPortal: TBitBtn;
    pnMedioPortal: TPanel;
    tpConfiguracionPortal: TAdvToolPanelTab;
    pnConfiguracionPortal: TAdvToolPanel;
    AdvPanel2: TAdvPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ceArt_21: TJvComboEdit;
    ceArt_105: TJvComboEdit;
    edArt_105: TEdit;
    edArt_21: TEdit;
    ceArt_0: TJvComboEdit;
    edArt_0: TEdit;
    btParamPortal: TButton;
    DBGrid1: TDBGrid;
    sgFacturasPortal: TAdvStringGrid;
    CargarCSVPortal: TAction;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label30: TLabel;
    Label53: TLabel;
    spGenerarFacturaPortal: TFDStoredProc;
    ImportarPortal: TAction;
    Label54: TLabel;
    Label55: TLabel;
    ceArt_27: TJvComboEdit;
    edArt_27: TEdit;
    VerificaRelacionPortal: TAction;
    QSucursalPortal: TFDQuery;
    DSSucursalPortal: TDataSource;
    cbFecha_: TAdvComboBox;
    cbFecha: TAdvComboBox;
    cbTipoCpbte: TAdvComboBox;
    cbPuntoVta: TAdvComboBox;
    cbNroDesde: TAdvComboBox;
    cbNroHasta: TAdvComboBox;
    cbCAE: TAdvComboBox;
    cbTipoDoc: TAdvComboBox;
    cbNroDoc: TAdvComboBox;
    cbNetoNoGravado: TAdvComboBox;
    cbExento: TAdvComboBox;
    cbIVA: TAdvComboBox;
    cbTotal: TAdvComboBox;
    cbNetoGravado: TAdvComboBox;
    cbDenominacion: TAdvComboBox;
    cbTipoComprobante: TAdvComboBox;
    cbPuntoVenta: TAdvComboBox;
    cbNumeroCpbte: TAdvComboBox;
    cbPercACta: TAdvComboBox;
    cbPercepIIBB: TAdvComboBox;
    cbTipoDocEmisor: TAdvComboBox;
    cbNroDocVendedor: TAdvComboBox;
    cbNetoNoGravado_: TAdvComboBox;
    cbNetoExento: TAdvComboBox;
    cbImporteTotal: TAdvComboBox;
    cbTipoCambio: TAdvComboBox;
    cbDenominacionVendedor: TAdvComboBox;
    cbImpuestoMunic: TAdvComboBox;
    cbPercepcionIVA: TAdvComboBox;
    cbImpInternos: TAdvComboBox;
    cbOtrosTributos: TAdvComboBox;
    cbNeto_Iva_0: TAdvComboBox;
    cbNeto_Iva_2_5: TAdvComboBox;
    cbIva_2_5: TAdvComboBox;
    cbNeto_Iva_5: TAdvComboBox;
    cbNeto_Iva_105: TAdvComboBox;
    cbIva_105: TAdvComboBox;
    cbNeto_Iva_21: TAdvComboBox;
    cbIva_21: TAdvComboBox;
    cbIva_5: TAdvComboBox;
    cbMoneda: TAdvComboBox;
    cbNeto_Iva_27: TAdvComboBox;
    cbIva_27: TAdvComboBox;
    cbNetoTotal: TAdvComboBox;
    pgBar: TAdvProgress;
    ToolButton2: TToolButton;
    edLote: TEdit;
    SpeedButton1: TSpeedButton;
    Label56: TLabel;
    lbReg: TLabel;
    ControlFacturas: TAction;
    pagFacturas: TTabSheet;
    dbgFacturas: TDBAdvGrid;
    Panel2: TPanel;
    QFacturasCompras: TFDQuery;
    QFacturasComprasID_FC: TIntegerField;
    QFacturasComprasTIPOCPBTE: TStringField;
    QFacturasComprasCLASECPBTE: TStringField;
    QFacturasComprasCODIGO: TStringField;
    QFacturasComprasRAZONSOCIAL: TStringField;
    QFacturasComprasCUIT: TStringField;
    QFacturasComprasNROCPBTE: TStringField;
    QFacturasComprasLETRAFAC: TStringField;
    QFacturasComprasSUCFAC: TStringField;
    QFacturasComprasNUMEROFAC: TStringField;
    QFacturasComprasTOTAL: TFloatField;
    QFacturasComprasINGRESA_LIBRO_IVA: TStringField;
    DSFacCompras: TDataSource;
    BitBtn1: TBitBtn;
    QFacturasComprasFECHACOMPRA: TSQLTimeStampField;
    QFacturasComprasFECHAFISCAL: TSQLTimeStampField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    Panel3: TPanel;
    Label57: TLabel;
    pnSeparador: TPanel;
    Panel4: TPanel;
    chOrden: TAdvOfficeCheckBox;
    procedure CargarExcelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImportarExecute(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure btParamMisCpbteClick(Sender: TObject);
    procedure sgFacturasGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure CDSRelacionCpbteAfterPost(DataSet: TDataSet);
    procedure CDSRelacionCpbteNewRecord(DataSet: TDataSet);
    procedure NovedadesExecute(Sender: TObject);
    procedure BorrarLoteExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarConeptoExecute(Sender: TObject);
    procedure CDSRelacionProveeAfterPost(DataSet: TDataSet);
    procedure dbgAsigancionesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgAsigancionesEnter(Sender: TObject);
    procedure dbgAsigancionesColEnter(Sender: TObject);
    procedure pcMovimientosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure pcMovimientosChange(Sender: TObject);
    procedure VerificaRelacionExecute(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure sgFacturasDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure CargarCSVPortalExecute(Sender: TObject);
    procedure sgFacturasPortalGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure btParamPortalClick(Sender: TObject);
    procedure ImportarPortalExecute(Sender: TObject);
    procedure cbSucursalPortalClick(Sender: TObject);
    procedure VerificaRelacionPortalExecute(Sender: TObject);
    procedure sgFacturasPortalDblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure chBox_ComprobantesClick(Sender: TObject);
    procedure cheBox_PortalClick(Sender: TObject);
    procedure ControlFacturasExecute(Sender: TObject);
    procedure chOrdenClick(Sender: TObject);
    procedure sgFacturasGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo21,Codigo105,CodigoExento:string;
    lista      :TStringList;
  end;

var
  FormImportarFcCompraAFIP: TFormImportarFcCompraAFIP;

implementation

uses
  UCompra_2,UDMain_FD, DMCompra, UBuscadorArticulos, UListCpbteNoImportados;

{$R *.dfm}

procedure TFormImportarFcCompraAFIP.cheBox_PortalClick(Sender: TObject);
begin
  inherited;
  sgFacturasPortal.FilterDropDownAuto:=cheBox_Portal.Checked;
end;

procedure TFormImportarFcCompraAFIP.chOrdenClick(Sender: TObject);
begin
  inherited;
  dbgFacturas.PageMode          := Not(chOrden.Checked);
  dbgFacturas.SortSettings.Show := chOrden.Checked;
  if Not(chOrden.Checked) then
    begin
     // dbgFacturas.ResetColumnOrder;
        QFacturasCompras.Refresh;
//      QFacturasCompras.ParamByName('desde').AsDateTime:=desde;
//      QFacturasCompras.ParamByName('hasta').AsDateTime:=hasta;
//      QFacturasCompras.Open;
        ControlFacturas.Execute;
    end;

end;

procedure TFormImportarFcCompraAFIP.ControlFacturasExecute(Sender: TObject);
var  ARow :Integer;
     Nro:String;
     Tp :String;
begin
  inherited;
  // Colorea Renglones... Verde

  sgFacturasPortal.ArrowColor:= clWhite;

  if Not(dbgFacturas.DataSource.DataSet.IsEmpty) then
    begin
      dbgFacturas.DataSource.DataSet.First;
      dbgFacturas.DataSource.DataSet.DisableControls;
      while dbgFacturas.DataSource.DataSet.Eof do
        begin
          dbgFacturas.RowColor[dbgFacturas.Row] :=clWhite;
          dbgFacturas.DataSource.DataSet.Next;
        end;
      dbgFacturas.DataSource.DataSet.First;
      dbgFacturas.DataSource.DataSet.EnableControls;
    end;

  For ARow:=1 to sgFacturasPortal.RowCount-1 do
    begin

      Nro:='';
      if Trim(sgFacturasPortal.Cells[1,ARow])='1' Then
        Nro:='A'
      else
        if Trim(sgFacturasPortal.Cells[1,ARow])='2' Then
          Nro:='A'
        else
          if Trim(sgFacturasPortal.Cells[1,ARow])='11' Then
            Nro:='C'
          else
            if Trim(sgFacturasPortal.Cells[1,ARow])='12' Then
              Nro:='C'
            else
              if Trim(sgFacturasPortal.Cells[1,ARow])='13' Then
                Nro:='C'
              else
                if Trim(sgFacturasPortal.Cells[1,ARow])='3' Then
                  Nro:='A'
                else
                  if Trim(sgFacturasPortal.Cells[1,ARow])='6' Then
                    Nro:='B'
                  else
                    if Trim(sgFacturasPortal.Cells[1,ARow])='81' Then
                      Nro:='A';

      Nro := Nro + AnsiRightStr('0000'+sgFacturasPortal.Cells[ 2,ARow],4)+
             AnsiRightStr('00000000'+sgFacturasPortal.Cells[ 3,Arow],8);

      if sgFacturasPortal.Cells[1,ARow]='1' Then
        Tp:='FC'
      else
        if sgFacturasPortal.Cells[1,ARow]='2' Then
          Tp:='ND'
        else
          if sgFacturasPortal.Cells[1,ARow]='6' Then
            Tp:='FC'
          else
            if sgFacturasPortal.Cells[1,ARow]='11' Then
              Tp:='FC'
            else
              if sgFacturasPortal.Cells[1,ARow]='3' Then
                Tp:='NC'
              else
                if sgFacturasPortal.Cells[1,ARow]='13' Then
                  Tp:='NC'
                else
                  if sgFacturasPortal.Cells[1,ARow]='81' Then
                    Tp:='FC'
                  else
                    if sgFacturasPortal.Cells[1,ARow]='12' Then
                      Tp:='ND';

      if QFacturasCompras.Locate('TIPOCPBTE;NROCPBTE',VarArrayOf([Tp,Nro]),[]) then
        begin
          sgFacturasPortal.RowColor[Arow]       := clMoneyGreen;
          dbgFacturas.RowColor[dbgFacturas.Row] := clMoneyGreen;
        end
      else
        begin
          if Tp='FC' then
            begin
              Tp:='FO';
              if QFacturasCompras.Locate('TIPOCPBTE;NROCPBTE',VarArrayOf([Tp,Nro]),[]) then
                begin
                  sgFacturasPortal.RowColor[Arow]       := clMoneyGreen;
                  dbgFacturas.RowColor[dbgFacturas.Row] := clMoneyGreen;
                 end
             end;
        end;

    end;
end;

procedure TFormImportarFcCompraAFIP.BorrarLoteExecute(Sender: TObject);
begin
  inherited;
  QBorrarLote.Close;
  QBorrarLote.ParamByName('LOTE').Value:=Trim(edLote.Text);
  QBorrarLote.ExecSQL;
  QBorrarLote.Close;
end;

procedure TFormImportarFcCompraAFIP.BuscarConeptoExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorStock.Data.Close;
  ComBuscadorStock.Data.Open;
  ComBuscadorStock.Execute;
  if ComBuscadorStock.rOk then
    begin
      CDSRelacionProvee.Edit;
      CDSRelacionProveeCONCPETO.Value       := ComBuscadorStock.Id;
      CDSRelacionProveeMUESTRACONCPETO.Value:= ComBuscadorStock.Data.FieldByName('DETALLE_STK').Value;
      CDSRelacionProvee.Post;
    end;
  ComBuscadorStock.Data.Close;


end;

procedure TFormImportarFcCompraAFIP.BuscarArticulosExecute(Sender: TObject);
var Detalle:String;
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1      :=-1;
  FormBuscadorArticulos.Param2      :=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       detalle :=DMMain_FD.GetDetalleArticulo(FormBuscadorArticulos.Codigo);
       if (Detalle<>'') then
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:=Detalle;
               ceCodigo.Text :=FormBuscadorArticulos.Codigo;
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle105.Text  :=Detalle;
                 ceCodigo105.Text :=FormBuscadorArticulos.Codigo;
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigoCero' then
                 begin
                   edDetalleCero.Text :=Detalle;
                   ceCodigoCero.Text  :=FormBuscadorArticulos.Codigo;
                 end
               else

           if (Sender as TJvComboEdit).Name='ceArt_0' then
             begin
               edArt_0.Text :=Detalle;
               ceArt_0.Text :=FormBuscadorArticulos.Codigo;
             end
           else
             if (Sender as TJvComboEdit).Name='ceArt_105' then
               begin
                 edArt_105.Text  :=Detalle;
                 ceArt_105.Text :=FormBuscadorArticulos.Codigo;
               end
             else
               if (Sender as TJvComboEdit).Name='ceArt_21' then
                 begin
                   edArt_21.Text  :=Detalle;
                   ceARt_21.Text  :=FormBuscadorArticulos.Codigo;
                 end
               else
                 if (Sender as TJvComboEdit).Name='ceArt_27' then
                   begin
                     edArt_27.Text  :=Detalle;
                     ceArt_27.Text  :=FormBuscadorArticulos.Codigo;
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
                 edDetalle105.Text  :='';
                 ceCodigo105.Text :='';
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigoCero' then
                 begin
                   edDetalleCero.Text :='';
                   ceCodigoCero.Text  :='';
                 end
              else

           if (Sender as TJvComboEdit).Name='ceArt_0' then
             begin
               edArt_0.Text :='';
               ceArt_0.Text :='';
             end
           else
             if (Sender as TJvComboEdit).Name='ceArt_105' then
               begin
                 edArt_105.Text  :='';
                 ceArt_105.Text :='';
               end
             else
               if (Sender as TJvComboEdit).Name='ceArt_21' then
                 begin
                   edArt_21.Text  :='';
                   ceARt_21.Text  :='';
                 end
               else
                 if (Sender as TJvComboEdit).Name='ceArt_27' then
                   begin
                     edArt_27.Text  :='';
                     ceArt_27.Text  :='';
                   end
         end;
      // CDSStock.Close;

    end;

end;

procedure TFormImportarFcCompraAFIP.BuscarExecute(Sender: TObject);
begin
  inherited;
  FDQBorraBorrados.Close;
  FDQBorraBorrados.ExecSQL;
  FDQBorraBorrados.Close;

  FDQAgregaNuevos.Close;
  FDQAgregaNuevos.ExecSQL;
  FDQAgregaNuevos.Close;

end;

procedure TFormImportarFcCompraAFIP.btParamMisCpbteClick(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcComprAFIP.ini');
  if sgFacturas.RowCount>1 then
    begin
      ArchivoINI.WriteInteger('Campos', 'Fecha', cbFecha.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Tipo',  cbTipoCpbte.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'PuntoVta', cbPuntoVta.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NroDesde', cbNroDesde.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NroHasta', cbNroHasta.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'CAE', cbCAE.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'TipoDoc', cbTipoDoc.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NroDoc', cbNroDoc.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NetoNoGrav', cbNetoNoGravado.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Exento', cbExento.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'IVA', cbIVA.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Total', cbTotal.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NetoGravado', cbNetoGravado.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Denominacion', cbDenominacion.ItemIndex);
    end;
  ArchivoINI.WriteString('Art_0',  'Codigo', ceCodigoCero.Text);
  ArchivoINI.WriteString('Art_105','Codigo', ceCodigo105.Text);
  ArchivoINI.WriteString('Art_21', 'Codigo', ceCodigo.Text);

  ArchivoINI.WriteString('Art_0',  'detalle', edDetalleCero.Text);
  ArchivoINI.WriteString('Art_105','detalle', edDetalle105.Text);
  ArchivoINI.WriteString('Art_21', 'detalle', edDetalle.Text);

end;

procedure TFormImportarFcCompraAFIP.btParamPortalClick(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcComprAFIP_Portal.ini');
  if sgFacturasPortal.RowCount>1 then
    begin
      ArchivoINI.WriteInteger('Campos', 'Fecha', cbFecha_.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'TipoComprobante', cbTipoComprobante.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'PuntoVenta', cbPuntoVenta.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NumeroCpbte',cbNumeroCpbte.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'TipoDocEmisor',cbTipoDocEmisor.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NroDocEmisor', cbNroDocVendedor.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'DenominacionEmisor',cbDenominacionVendedor.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'ImporteTotal', cbImporteTotal.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Moneda', cbMoneda.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'TipoCambio', cbTipoCambio.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NetoNoGravado', cbNetoNoGravado_.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NetoExento', cbNetoExento.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'PercACta',cbPercACta.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'PercepIIBB', cbPercepIIBB.ItemIndex);

      ArchivoINI.WriteInteger('Campos', 'ImpuestoMuni', cbImpuestoMunic.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'ImpuestoInternos', cbImpInternos.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'PercepcionIVA', cbPercepcionIVA.ItemIndex);

      ArchivoINI.WriteInteger('Campos', 'OtrosTributos', cbOtrosTributos.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Neto_Iva_0',cbNeto_Iva_0.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Neto_Iva_2_5',cbNeto_Iva_2_5.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Iva_2_5', cbIva_2_5.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Neto_Iva_5',cbNeto_Iva_5.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Iva_5', cbIva_5.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Neto_Iva_105', cbNeto_Iva_105.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Iva_105', cbIva_105.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Neto_Iva_21', cbNeto_Iva_21.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Iva_21', cbIva_21.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Neto_Iva_27',cbNeto_Iva_27.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'Iva_27', cbIva_27.ItemIndex);
      ArchivoINI.WriteInteger('Campos', 'NetoTotal', cbNetoTotal.ItemIndex);
    end;

  ArchivoINI.WriteString('Art_0',  'Codigo', ceArt_0.Text);
  ArchivoINI.WriteString('Art_105','Codigo', ceArt_105.Text);
  ArchivoINI.WriteString('Art_21', 'Codigo', ceARt_21.Text);
  ArchivoINI.WriteString('Art_27', 'Codigo', ceARt_27.Text);

  ArchivoINI.WriteString('Art_0',  'detalle', edArt_0.Text);
  ArchivoINI.WriteString('Art_105','detalle', edArt_105.Text);
  ArchivoINI.WriteString('Art_21', 'detalle', edArt_21.Text);
  ArchivoINI.WriteString('Art_27', 'detalle', edArt_27.Text);

  ArchivoIni.Free;
end;

procedure TFormImportarFcCompraAFIP.CargarExcelExecute(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if OpenDialog.Execute then
    if Trim(OpenDialog.FileName)<>'' then
      begin
        sgFacturas.FixedRows:=1;
        sgFacturas.LoadFromCSV(OpenDialog.FileName);
        sgFacturas.Options:=sgFacturas.Options+[goColSizing];
       // sgFacturasPortal.RemoveRows(0,1);
        for I := 0 to sgFacturas.ColCount-1 do
         begin
            cbFecha.Items.Add(sgFacturas.Cells[i,0]);
            cbTipoCpbte.Items.Add(sgFacturas.Cells[i,0]);
            cbPuntoVta.Items.Add(sgFacturas.Cells[i,0]);
            cbNroDesde.Items.Add(sgFacturas.Cells[i,0]);
            cbNroHasta.Items.Add(sgFacturas.Cells[i,0]);
            cbCAE.Items.Add(sgFacturas.Cells[i,0]);
            cbTipoDoc.Items.Add(sgFacturas.Cells[i,0]);
            cbNroDoc.Items.Add(sgFacturas.Cells[i,0]);
            cbNetoGravado.Items.Add(sgFacturas.Cells[i,0]);
            cbNetoNoGravado.Items.Add(sgFacturas.Cells[i,0]);
            cbDenominacion.Items.Add(sgFacturas.Cells[i,0]);
            cbExento.Items.Add(sgFacturas.Cells[i,0]);
            cbIVA.Items.Add(sgFacturas.Cells[i,0]);
            cbTotal.Items.Add(sgFacturas.Cells[i,0]);
         end;
        ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcComprAFIP.ini');
        cbFecha.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Fecha', -1);
        cbTipoCpbte.ItemIndex     := ArchivoINI.ReadInteger('Campos', 'Tipo',  -1);
        cbPuntoVta.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'PuntoVta', -1);
        cbNroDesde.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'NroDesde', -1);
        cbNroHasta.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'NroHasta', -1);
        cbCAE.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'CAE', -1);
        cbTipoDoc.ItemIndex       := ArchivoINI.ReadInteger('Campos', 'TipoDoc', -1);
        cbNroDoc.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'NroDoc', -1);
        cbNetoNoGravado.ItemIndex := ArchivoINI.ReadInteger('Campos', 'NetoNoGrav', -1);
        cbExento.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'Exento', -1);
        cbIVA.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'IVA', -1);
        cbTotal.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Total', -1);
        cbNetoGravado.ItemIndex   := ArchivoINI.ReadInteger('Campos', 'NetoGravado', -1);
        cbDenominacion.ItemIndex  := ArchivoINI.ReadInteger('Campos', 'Denominacion', -1);

        ArchivoIni.Free;

      end;
    sgFacturasPortal.AutoSize:=True;

end;

procedure TFormImportarFcCompraAFIP.cbSucursalPortalClick(Sender: TObject);
begin
  inherited;
  QComprobante.Close;
  QComprobante.ParamByName('sucursal').Value := cbSucursalPortal.KeyValue;
  QComprobante.Open;
  CDSRelacionCpbte.Close;
  CDSRelacionCpbte.Params.ParamByName('sucursal').Value := cbSucursalPortal.KeyValue;
  CDSRelacionCpbte.Open;
  if sgFacturasPortal.RowCount>1 then
    VerificaRelacionPortal.Execute;
end;

procedure TFormImportarFcCompraAFIP.CargarCSVPortalExecute(Sender: TObject);
var
  I: Integer;
  desde,hasta:TDateTime;
begin
  inherited;
  if OpenDialog.Execute then
    if Trim(OpenDialog.FileName)<>'' then
      begin
        sgFacturasPortal.FixedRows:=1;
        sgFacturasPortal.LoadFromCSV(OpenDialog.FileName);
        sgFacturasPortal.Options:=sgFacturasPortal.Options+[goColSizing];
       // sgFacturas.getCol(0):=ctDate;
       // sgFacturasPortal.RemoveRows(0,1);
        for I := 0 to sgFacturasPortal.ColCount-1 do
          begin
            cbFecha_.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbTipoComprobante.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbPuntoVenta.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNumeroCpbte.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbTipoDocEmisor.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNroDocVendedor.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbDenominacionVendedor.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbImporteTotal.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbMoneda.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbTipoCambio.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNetoNoGravado_.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNetoExento.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbPercACta.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbPercepIIBB.Items.Add(sgFacturasPortal.Cells[i,0]);

            cbImpuestoMunic.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbImpInternos.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbPercepcionIVA.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbOtrosTributos.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNeto_Iva_0.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNeto_Iva_2_5.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbIva_2_5.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNeto_Iva_5.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbIva_5.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNeto_Iva_105.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbIva_105.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNeto_Iva_21.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbIva_21.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNeto_Iva_27.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbIva_27.Items.Add(sgFacturasPortal.Cells[i,0]);
            cbNetoTotal.Items.Add(sgFacturasPortal.Cells[i,0]);
         end;
        ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcComprAFIP_Portal.ini');
        cbFecha_.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Fecha', -1);
        cbTipoComprobante.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'TipoComprobante',  -1);
        cbPuntoVenta.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'PuntoVenta', -1);
        cbNumeroCpbte.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'NumeroCpbte', -1);
        cbTipoDocEmisor.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'TipoDocEmisor', -1);
        cbNroDocVendedor.ItemIndex       := ArchivoINI.ReadInteger('Campos', 'NroDocEmisor', -1);
        cbDenominacionVendedor.ItemIndex := ArchivoINI.ReadInteger('Campos', 'DenominacionEmisor', -1);
        cbImporteTotal.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'ImporteTotal', -1);
        cbMoneda.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Moneda', -1);
        cbTipoCambio.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'TipoCambio', -1);
        cbNetoNoGravado_.ItemIndex       := ArchivoINI.ReadInteger('Campos', 'NetoNoGravado', -1);
        cbNetoExento.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'NetoExento', -1);
        cbPercACta.ItemIndex             := ArchivoINI.ReadInteger('Campos', 'PercACta', -1);
        cbPercepIIBB.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'PercepIIBB', -1);

        cbImpuestoMunic.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'ImpuestoMuni', -1);
        cbImpInternos.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'ImpuestoInternos', -1);
        cbPercepcionIVA.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'PercepcionIVA', -1);
        cbOtrosTributos.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'OtrosTributos', -1);
        cbNeto_Iva_0.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_0',-1);
        cbNeto_Iva_2_5.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_2_5',-1);
        cbIva_2_5.ItemIndex              := ArchivoINI.ReadInteger('Campos', 'Iva_2_5', -1);
        cbNeto_Iva_5.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_5',-1);
        cbIva_5.ItemIndex                := ArchivoINI.ReadInteger('Campos', 'Iva_5', -1);
        cbNeto_Iva_105.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_105', -1);
        cbIva_105.ItemIndex              := ArchivoINI.ReadInteger('Campos', 'Iva_105', -1);
        cbNeto_Iva_21.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_21', -1);
        cbIva_21.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Iva_21', -1);
        cbNeto_Iva_27.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_27',-1);
        cbIva_27.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Iva_27', -1);
        cbNetoTotal.ItemIndex            := ArchivoINI.ReadInteger('Campos', 'NetoTotal', -1);

        ArchivoIni.Free;

      end;
    sgFacturasPortal.SortByColumn(0);
    if sgFacturasPortal.Cells[0,1]='' then
      sgFacturasPortal.RemoveRows(1,1);

    for I := 0 to sgFacturasPortal.ColCount-1 do
      sgFacturasPortal.AutoSizeCol(I,5);

    lbReg.Caption             := 'Nro.Reg: '+IntToStr(sgFacturasPortal.RowCount-2);

    desde := StrToDate(sgFacturasPortal.Cells[0,1]);
    hasta := StrToDate(sgFacturasPortal.Cells[0,sgFacturasPortal.RowCount-2]);
    QFacturasCompras.Close;
    QFacturasCompras.ParamByName('desde').AsDateTime:=desde;
    QFacturasCompras.ParamByName('hasta').AsDateTime:=hasta;
    QFacturasCompras.Open;
    if not QFacturasCompras.IsEmpty then
      begin
        QFacturasCompras.IndexFieldNames:='FECHACOMPRA';

        for I := 0 to dbgFacturas.ColCount-1 do
          dbgFacturas.AutoSizeCol(I,5);
      end;

end;

procedure TFormImportarFcCompraAFIP.CDSRelacionCpbteAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSRelacionCpbte.ApplyUpdates(0);
end;

procedure TFormImportarFcCompraAFIP.CDSRelacionCpbteNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QId.Close;
  QId.Open;

  if QIdMAX.AsString='' then
    CDSRelacionCpbteID.Value              :=1
  else
    CDSRelacionCpbteID.Value              :=QIdMAX.Value+1;
  QId.Close;

  CDSRelacionCpbteID_COMPROBANTE.Value  :=-1;
  CDSRelacionCpbteCOMPROBANTE_AFIP.Value:='';
  CDSRelacionCpbteSUCURSAL.Value        :=-1;
end;

procedure TFormImportarFcCompraAFIP.CDSRelacionProveeAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSRelacionProvee.ApplyUpdates(0);
end;

procedure TFormImportarFcCompraAFIP.chBox_ComprobantesClick(Sender: TObject);
begin
  inherited;
  sgFacturas.FilterDropDownAuto:=chBox_Comprobantes.Checked;
end;

procedure TFormImportarFcCompraAFIP.dbgAsigancionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgAsiganciones.SelectedIndex<>2 Then
    dbgAsiganciones.SelectedIndex:=2;
end;

procedure TFormImportarFcCompraAFIP.dbgAsigancionesEnter(Sender: TObject);
begin
  inherited;
  if dbgAsiganciones.SelectedIndex<>2 Then
    dbgAsiganciones.SelectedIndex:=2;
end;

procedure TFormImportarFcCompraAFIP.dbgAsigancionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key=#10) and (dbgAsiganciones.SelectedIndex=2) then
    BuscarConepto.Execute;

end;

procedure TFormImportarFcCompraAFIP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if pcMovimientos.ActivePageIndex=0 Then tpConfiguracion.HidePanels
  else
  if pcMovimientos.ActivePageIndex=1 Then
  tpConfiguracionPortal.HidePanels;
  inherited;
  QSucursal.Close;
  CDSRelacionCpbte.Close;
  CDSRelacionProvee.Close;
  Action:=caFree;
end;

procedure TFormImportarFcCompraAFIP.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize                  := False;
  lista                     := TStringList.Create;
  pcMovimientos.ActivePageIndex :=0;
  // ************* Arvhivo INI de Mis Comprobantes *********************
  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcComprAFIP.ini');
  cbFecha.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Fecha', -1);
  cbTipoCpbte.ItemIndex     := ArchivoINI.ReadInteger('Campos', 'Tipo',  -1);
  cbPuntoVta.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'PuntoVta', -1);
  cbNroDesde.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'NroDesde', -1);
  cbNroHasta.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'NroHasta', -1);
  cbCAE.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'CAE', -1);
  cbTipoDoc.ItemIndex       := ArchivoINI.ReadInteger('Campos', 'TipoDoc', -1);
  cbNroDoc.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'NroDoc', -1);
  cbNetoNoGravado.ItemIndex := ArchivoINI.ReadInteger('Campos', 'NetoNoGrav', -1);
  cbExento.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'Exento', -1);
  cbIVA.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'IVA', -1);
  cbTotal.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Total', -1);
  cbNetoGravado.ItemIndex   := ArchivoINI.ReadInteger('Campos', 'NetoGravado', -1);

  ceCodigoCero.Text         := ArchivoINI.ReadString('Art_0',  'Codigo', '');
  ceCodigo105.Text          := ArchivoINI.ReadString('Art_105','Codigo', '');
  ceCodigo.Text             := ArchivoINI.ReadString('Art_21', 'Codigo', '');

  edDetalleCero.Text        := ArchivoINI.ReadString('Art_0',  'detalle', '');
  edDetalle105.Text         := ArchivoINI.ReadString('Art_105','detalle', '');
  edDetalle.Text            := ArchivoINI.ReadString('Art_21', 'detalle', '');

  QSucursal.Open;
  dbcSucursal.KeyValue      := -1;
  ArchivoIni.Free;

  // ************* Arvhivo INI de Portal IVA *********************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcComprAFIP_Portal.ini');
  cbFecha_.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Fecha', -1);
  cbTipoComprobante.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'TipoComprobante', -1);
  cbPuntoVenta.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'PuntoVenta', -1);
  cbNumeroCpbte.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'NumeroCpbte',-1);
  cbTipoDocEmisor.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'TipoDocEmisor',-1);
  cbNroDocVendedor.ItemIndex       := ArchivoINI.ReadInteger('Campos', 'NroDocEmisor', -1);
  cbDenominacionVendedor.ItemIndex := ArchivoINI.ReadInteger('Campos', 'DenominacionEmisor',-1);
  cbImporteTotal.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'ImporteTotal', -1);
  cbMoneda.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Moneda', -1);
  cbTipoCambio.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'TipoCambio', -1);
  cbNetoNoGravado_.ItemIndex       := ArchivoINI.ReadInteger('Campos', 'NetoNoGravado', -1);
  cbNetoExento.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'NetoExento', -1);
  cbPercACta.ItemIndex             := ArchivoINI.ReadInteger('Campos', 'PercACta',-1);
  cbPercepIIBB.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'PercepIIBB', -1);

  cbImpuestoMunic.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'ImpuestoMuni', -1);
  cbImpInternos.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'ImpuestoInternos', -1);
  cbPercepcionIVA.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'PercepcionIVA', -1);

  cbOtrosTributos.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'OtrosTributos', -1);
  cbNeto_Iva_0.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_0',-1);
  cbNeto_Iva_2_5.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_2_5',-1);
  cbIva_2_5.ItemIndex              := ArchivoINI.ReadInteger('Campos', 'Iva_2_5', -1);
  cbNeto_Iva_5.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_5',-1);
  cbIva_5.ItemIndex                := ArchivoINI.ReadInteger('Campos', 'Iva_5', -1);
  cbNeto_Iva_105.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_105', -1);
  cbIva_105.ItemIndex              := ArchivoINI.ReadInteger('Campos', 'Iva_105', -1);
  cbNeto_Iva_21.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_21', -1);
  cbIva_21.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Iva_21', -1);
  cbNeto_Iva_27.ItemIndex          := ArchivoINI.ReadInteger('Campos', 'Neto_Iva_27',-1);
  cbIva_27.ItemIndex               := ArchivoINI.ReadInteger('Campos', 'Iva_27', -1);
  cbNetoTotal.ItemIndex            := ArchivoINI.ReadInteger('Campos', 'NetoTotal', -1);

  ceArt_0.Text                     := ArchivoINI.ReadString('Art_0',  'Codigo', '');
  ceArt_105.Text                   := ArchivoINI.ReadString('Art_105','Codigo', '');
  ceARt_21.Text                    := ArchivoINI.ReadString('Art_21', 'Codigo', '');
  ceARt_27.Text                    := ArchivoINI.ReadString('Art_27', 'Codigo', '');

  edArt_0.Text                     := ArchivoINI.ReadString('Art_0',  'detalle', '');
  edArt_105.Text                   := ArchivoINI.ReadString('Art_105','detalle', '');
  edArt_21.Text                    := ArchivoINI.ReadString('Art_21', 'detalle', '');
  edArt_27.Text                    := ArchivoINI.ReadString('Art_27', 'detalle', '');

  ArchivoIni.Free;

  QSucursalPortal.Open;
  cbSucursalPortal.KeyValue      := -1;

  Buscar.Execute;
  CDSRelacionProvee.Close;
  CDSRelacionProvee.Open;
  pcMovimientos.ActivePageIndex:=0;
end;

procedure TFormImportarFcCompraAFIP.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarFcCompraAFIP:=Nil;
end;

procedure TFormImportarFcCompraAFIP.ImportarExecute(Sender: TObject);
var a,m,d:Word;
ImporteIva,Tasa,Neto:Extended;
Anulada:Boolean;
r: Integer;
begin
  inherited;
   if (dbcSucursal.KeyValue>-1) and (sgFacturas.RowCount>1) then
    begin
      pgBar.Min:=0;
      pgBar.Max:=sgFacturas.RowCount-1;
      lista.Clear;

      for r := 1 to sgFacturas.RowCount-1 do
        begin
          pgBar.Position:=r;
          Application.ProcessMessages;
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spGenerarFc.Close;
            spGenerarFc.Prepare;
            spGenerarFc.ParamByName('USUARIO').AsString       := DMMain_FD.UsuarioActivo;
            if (CDSRelacionCpbte.Locate('SUCURSAL;COMPROBANTE_AFIP',VarArrayOf([IntToStr(dbcSucursal.KeyValue),(sgFacturasPortal.Cells[cbTipoComprobante.ItemIndex,r])]),[])) Then
              spGenerarFc.ParamByName('ID_COMPROBANTE').AsInteger := CDSRelacionCpbteID_COMPROBANTE.Value;
            spGenerarFc.ParamByName('NRO_CUIT').AsString       := Copy(sgFacturasPortal.Cells[cbNroDocVendedor.ItemIndex,r],1,2)+'-'+Copy(sgFacturasPortal.Cells[cbNroDocVendedor.ItemIndex,r],3,8)+'-'+Copy(sgFacturasPortal.Cells[cbNroDocVendedor.ItemIndex,r],11,1);
            spGenerarFc.ParamByName('COMP_NETO').AsFloat       := StrToFloat(sgFacturas.Cells[cbNetoGravado.ItemIndex,r]);
            spGenerarFc.ParamByName('COMP_IVA').AsFloat        := StrToFloat(sgFacturas.Cells[cbIVA.ItemIndex,r]);
            spGenerarFc.ParamByName('COMP_TOTAL').AsFloat      := StrToFloat(sgFacturas.Cells[cbTotal.ItemIndex,r]);
            spGenerarFc.ParamByName('COMP_NUMERO').AsString    := AnsiRightStr('00000000'+sgFacturas.Cells[ cbNroDesde.ItemIndex,r],8);
            spGenerarFc.ParamByName('COMP_PREFIO').AsString    := AnsiRightStr('0000'+sgFacturas.Cells[ cbPuntoVta.ItemIndex,r],4);
            spGenerarFc.ParamByName('COMP_FECHA').AsDate       := StrToDate(sgFacturas.Cells[ cbFecha.ItemIndex,r]);
            spGenerarFc.ParamByName('CODIGO21').AsString       := ceCodigo.Text;
            spGenerarFc.ParamByName('CODIGO105').AsString      := ceCodigo105.Text;
            spGenerarFc.ParamByName('CODIGOEXENTO').AsString   := ceCodigoCero.Text;
            spGenerarFc.ParamByName('COMP_DEPOSITO').AsInteger := DMMain_FD.DepositoPorSucursal(dbcSucursal.KeyValue);

            spGenerarFc.ParamByName('TIPO_DOC_RECP').AsString  := sgFacturas.Cells[cbTipoDoc.ItemIndex,r];
            spGenerarFc.ParamByName('DENOMINACION').AsString   := cOPY(sgFacturas.Cells[cbDenominacion.ItemIndex,r],1,35);
            spGenerarFc.ParamByName('LOTE_AFIP').AsString      := FormatDateTime('yyyymm',StrToDate(sgFacturas.Cells[ cbFecha.ItemIndex,r]))+ AnsiRightStr('00'+IntToStr(dbcSucursal.KeyValue),2);

            spGenerarFc.ExecProc;
            if spGenerarFc.ParamByName('GRAVADO').AsString='N' then
              begin
                lista.Add('Factura No Importada....'+
                          AnsiRightStr('0000'+sgFacturas.Cells[ cbPuntoVta.ItemIndex,r],4)+'-'+
                          AnsiRightStr('00000000'+sgFacturas.Cells[ cbNroDesde.ItemIndex,r],8)+'-'+
                          sgFacturas.Cells[ 7,r]);
              end;


            DMMain_FD.fdcGestion.Commit;


            spGenerarFc.Close;
          except
               begin
                lista.Add('Fallo de Gravacion ...'+
                          AnsiRightStr('0000'+sgFacturas.Cells[ cbPuntoVta.ItemIndex,r],4)+'-'+
                          AnsiRightStr('00000000'+sgFacturas.Cells[ cbNroDesde.ItemIndex,r],8)+'-'+
                          sgFacturas.Cells[ 7,r]);
              end;


            DMMain_FD.fdcGestion.Rollback;
            spGenerarFc.Close;

          end;
        end;
    end;
  pgBar.Position:=0;
end;

procedure TFormImportarFcCompraAFIP.ImportarPortalExecute(Sender: TObject);
var a,m,d:Word;
ImporteIva,Tasa,Neto:Extended;
r: Integer;
FechaStr:String;
begin
  inherited;
  if (cbSucursalPortal.KeyValue>-1) and (sgFacturasPortal.RowCount>1) then
    begin
      pgBar.Min:=0;
      pgBar.Max:=sgFacturasPortal.RowCount-1;
      lista.Clear;

      for r := 1 to sgFacturasPortal.RowCount-1 do
        begin
          pgBar.Position:=r;
          Application.ProcessMessages;
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spGenerarFacturaPortal.Close;
            spGenerarFacturaPortal.Prepare;
            spGenerarFacturaPortal.ParamByName('USUARIO').AsString     := DMMain_FD.UsuarioActivo;
            FechaStr :=  AnsiReplaceStr(sgFacturasPortal.Cells[0,r],'-','/');


            spGenerarFacturaPortal.ParamByName('COMP_FECHA').AsDate    := StrToDate(AnsiReplaceStr(sgFacturasPortal.Cells[0,r],'-','/'));
            if (CDSRelacionCpbte.Locate('SUCURSAL;COMPROBANTE_AFIP',VarArrayOf([IntToStr(cbSucursalPortal.KeyValue),(sgFacturasPortal.Cells[cbTipoComprobante.ItemIndex,r])]),[])) Then
              spGenerarFacturaPortal.ParamByName('ID_COMPROBANTE').AsInteger := CDSRelacionCpbteID_COMPROBANTE.Value;

            spGenerarFacturaPortal.ParamByName('COMP_PREFIO').Value        := AnsiRightStr('0000'+ sgFacturasPortal.Cells[2,r],4);
            spGenerarFacturaPortal.ParamByName('COMP_NUMERO').Value        := AnsiRightStr('00000000'+ sgFacturasPortal.Cells[3,r],8);
            spGenerarFacturaPortal.ParamByName('TIPO_DOC_RECP').Value      := sgFacturasPortal.Cells[cbTipoDocEmisor.ItemIndex,r];
            spGenerarFacturaPortal.ParamByName('NRO_CUIT').Value           := Copy(sgFacturasPortal.Cells[cbNroDocVendedor.ItemIndex,r],1,2)+'-'+Copy(sgFacturasPortal.Cells[cbNroDocVendedor.ItemIndex,r],3,8)+'-'+Copy(sgFacturasPortal.Cells[cbNroDocVendedor.ItemIndex,r],11,1);
            spGenerarFacturaPortal.ParamByName('DENOMINACION').Value       := AnsiLeftStr(sgFacturasPortal.Cells[cbDenominacionVendedor.ItemIndex,r],35);
            spGenerarFacturaPortal.ParamByName('COMP_TOTAL').Value         := Abs(StrToFloat(sgFacturasPortal.Cells[cbImporteTotal.ItemIndex,r]));
            spGenerarFacturaPortal.ParamByName('COMP_MONEDA').Value        := sgFacturasPortal.Cells[cbMoneda.ItemIndex,r];
            spGenerarFacturaPortal.ParamByName('COMP_TIPOCAMBIO').Value    := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbTipoCambio.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NO_GRAVADO').Value    := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNetoNoGravado_.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_EXENTO').Value        := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNetoExento.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_PAGOS_ACTA').Value    := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbPercepcionIVA.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_PERCP_IIBB').Value    := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbPercepIIBB.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_IMP_MUNIC').Value     := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbImpuestoMunic.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_PERC_NACIONAL').Value := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbPercACta.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_OTROS_TRIBUTOS').Value:= Abs(StrToFloatDef(sgFacturasPortal.Cells[cbOtrosTributos.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NETOIVA_0').Value     := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNeto_Iva_0.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NETO_IVA_2_5').Value  := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNeto_Iva_2_5.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_IVA_2_5').Value       := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbIva_2_5.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NETO_IVA_5').Value    := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNeto_Iva_5.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_IVA_5').Value         := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbIva_5.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NETO_IVA_105').Value  := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNeto_Iva_105.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_IVA_105').Value       := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbIva_105.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NETO_IVA_21').Value   := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNeto_Iva_21.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_IVA_21').Value        := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbIva_21.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NETO_IVA_27').Value   := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNeto_Iva_27.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_IVA_27').Value        := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbIva_27.ItemIndex,r],0));
            spGenerarFacturaPortal.ParamByName('COMP_NETO').Value          := Abs(StrToFloatDef(sgFacturasPortal.Cells[cbNetoTotal.ItemIndex,r],0));


            spGenerarFacturaPortal.ParamByName('CODIGO21').Value           := ceArt_21.Text;
            spGenerarFacturaPortal.ParamByName('CODIGO105').Value          := ceArt_105.Text;
            spGenerarFacturaPortal.ParamByName('CODIGOEXENTO').Value       := ceArt_0.Text;
            spGenerarFacturaPortal.ParamByName('CODIGO27').Value           := ceArt_27.Text;


         //   ArchivoINI.WriteString('Art_0',  'Codigo', ceArt_0.Text);
         //   ArchivoINI.WriteString('Art_105','Codigo', ceArt_105.Text);
         //   ArchivoINI.WriteString('Art_21', 'Codigo', ceARt_21.Text);
         //   ArchivoINI.WriteString('Art_27', 'Codigo', ceARt_27.Text);




            spGenerarFacturaPortal.ParamByName('COMP_DEPOSITO').Value      := DMMain_FD.DepositoPorSucursal(cbSucursalPortal.KeyValue);
            spGenerarFacturaPortal.ParamByName('LOTE_AFIP').AsString       := FormatDateTime('yyyymm',StrToDate(sgFacturasPortal.Cells[ cbFecha_.ItemIndex,r]))+ AnsiRightStr('00'+IntToStr(cbSucursalPortal.KeyValue),2);

            spGenerarFacturaPortal.ExecProc;
            if spGenerarFacturaPortal.ParamByName('GRAVADO').AsString='N' then
              begin
                lista.Add('Factura No Importada....'+
                          AnsiRightStr('0000'+sgFacturasPortal.Cells[ cbPuntoVenta.ItemIndex,r],4)+'-'+
                          AnsiRightStr('00000000'+sgFacturasPortal.Cells[ cbNumeroCpbte.ItemIndex,r],8)+'-'+
                          sgFacturasPortal.Cells[ 7,r]);
              end;


            DMMain_FD.fdcGestion.Commit;


            spGenerarFacturaPortal.Close;
          except
               begin
                lista.Add('Fallo de Gravacion ...'+
                          AnsiRightStr('0000'+sgFacturasPortal.Cells[ cbPuntoVenta.ItemIndex,r],4)+'-'+
                          AnsiRightStr('00000000'+sgFacturasPortal.Cells[ cbNumeroCpbte.ItemIndex,r],8)+'-'+
                          sgFacturasPortal.Cells[ 7,r]);
              end;


            DMMain_FD.fdcGestion.Rollback;
            spGenerarFacturaPortal.Close;

          end;
        end;
    end;
  spGenerarFacturaPortal.Close;
  pgBar.Position:=0;
end;

procedure TFormImportarFcCompraAFIP.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  QComprobante.Close;
  QComprobante.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  QComprobante.Open;
  CDSRelacionCpbte.Close;
  CDSRelacionCpbte.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  CDSRelacionCpbte.Open;
  if sgFacturas.RowCount>1 then
    VerificaRelacion.Execute;
end;

procedure TFormImportarFcCompraAFIP.NovedadesExecute(Sender: TObject);
begin
  inherited;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.ShowModal;
    end
  else
    ShowMessage('No hay Novedades');
end;

procedure TFormImportarFcCompraAFIP.pcMovimientosChange(Sender: TObject);
begin
  inherited;
  if pcMovimientos.ActivePageIndex=3 then
   dbgAsiganciones.SetFocus;

end;

procedure TFormImportarFcCompraAFIP.pcMovimientosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if pcMovimientos.ActivePageIndex=3 then
   dbgAsiganciones.SetFocus;
end;



procedure TFormImportarFcCompraAFIP.sgFacturasDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
var Nro:String;
Tp:String;
begin
  inherited;
  Nro := RightStr(Trim(sgFacturas.Cells[ 1,Arow]),1)+
         AnsiRightStr('0000'+sgFacturas.Cells[ 2,ARow],4)+
         AnsiRightStr('00000000'+sgFacturas.Cells[ 3,Arow],8);

  if AnsiContainsStr(sgFacturas.Cells[1,ARow],'Factura') Then Tp:='FC'
  else
  if AnsiContainsStr(sgFacturas.Cells[1,ARow],'Nota de Crédito') Then Tp:='NC';

  QVerificaNro.Close;
  QVerificaNro.ParamByName('Nro').Value   := Nro;
  QVerificaNro.ParamByName('Tipo').Value  := Tp;
  QVerificaNro.Open;
  if QVerificaNro.Fields[0].AsString<>'' Then
    begin
      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Application);
      FormCompra_2.DatoNew  :=QVerificaNro.Fields[0].AsString;
      FormCompra_2.TipoCpbte:=QVerificaNro.Fields[1].AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end;
  QVerificaNro.Close;
end;



procedure TFormImportarFcCompraAFIP.sgFacturasGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  inherited;
  case ACol of
    10..15:HAlign:=taRightJustify;
  end;
end;

procedure TFormImportarFcCompraAFIP.sgFacturasGetFormat(Sender: TObject;
  ACol: Integer; var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
  if ACol=0 then
    AStyle := ssAlphabetic;
  case ACol of
    10..15: AStyle := ssFinancial;
  end;
end;


procedure TFormImportarFcCompraAFIP.sgFacturasPortalDblClickCell(
  Sender: TObject; ARow, ACol: Integer);
var Nro:String;
Tp:String;
begin
  inherited;

  if (sgFacturasPortal.Cells[1,ARow]='1') Then Nro:='A'
  else
  if (sgFacturasPortal.Cells[1,ARow]='2') Then Nro:='A'
  else
  if (sgFacturasPortal.Cells[1,ARow]='11') Then Nro:='C'
  else
  if (sgFacturasPortal.Cells[1,ARow]='12') Then Nro:='C'
  else
  if (sgFacturasPortal.Cells[1,ARow]='13') Then Nro:='C'
  else
  if (sgFacturasPortal.Cells[1,ARow]='3') Then Nro:='A'
  else
  if (sgFacturasPortal.Cells[1,ARow]='6') Then Nro:='B'
  else
  if (sgFacturasPortal.Cells[1,ARow]='81') Then Nro:='A';

  Nro := Nro +
         AnsiRightStr('0000'+sgFacturasPortal.Cells[ 2,ARow],4)+
         AnsiRightStr('00000000'+sgFacturasPortal.Cells[ 3,Arow],8);

  if (sgFacturasPortal.Cells[1,ARow]='1') Then Tp:='FC'
  else
  if (sgFacturasPortal.Cells[1,ARow]='6') Then Tp:='FC'
  else
  if (sgFacturasPortal.Cells[1,ARow]='2') Then Tp:='ND'
  else

  if (sgFacturasPortal.Cells[1,ARow]='11') Then Tp:='FC'
  else
  if (sgFacturasPortal.Cells[1,ARow]='3') Then Tp:='NC'
  else
  if (sgFacturasPortal.Cells[1,ARow]='13') Then Tp:='NC'
  else
  if (sgFacturasPortal.Cells[1,ARow]='81') Then Tp:='FC'
  else
  if (sgFacturasPortal.Cells[1,ARow]='12') Then Tp:='ND';;



  QVerificaNro.Close;
  QVerificaNro.ParamByName('Nro').Value   := Nro;
  QVerificaNro.ParamByName('Tipo').Value  := Tp;
  QVerificaNro.Open;
  if QVerificaNro.Fields[0].AsString<>'' Then
    begin
      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Application);
      FormCompra_2.DatoNew  :=QVerificaNro.Fields[0].AsString;
      FormCompra_2.TipoCpbte:=QVerificaNro.Fields[1].AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end;
  QVerificaNro.Close;
end;

procedure TFormImportarFcCompraAFIP.sgFacturasPortalGetAlignment(
  Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment;
  var VAlign: TVAlignment);
begin
  inherited;
  if Acol>=7 then
    HAlign:= taRightJustify;

end;

procedure TFormImportarFcCompraAFIP.VerificaRelacionExecute(Sender: TObject);
VAR r,c:integer;
begin
  inherited;
  if (sgFacturas.RowCount>1 ) then
    begin
      r:=1;
      while (r<sgFacturas.RowCount) do
        begin
          if Not(CDSRelacionCpbte.Locate('SUCURSAL;COMPROBANTE_AFIP',VarArrayOf([IntToStr(dbcSucursal.KeyValue),(sgFacturas.Cells[1,r])]),[])) Then
            begin
           //   QControl.Close;
           //   QControl.ParamByName('sucursal').Value        := dbcSucursal.KeyValue;
           //   QControl.ParamByName('COMPROBANTE_AFIP').Value:= sgFacturas.Cells[1,r];
           //   QControl.Open;
           //   if QControl.RecordCount>0 then
                begin
                  CDSRelacionCpbte.Append;
                  CDSRelacionCpbteCOMPROBANTE_AFIP.Value := Trim(sgFacturas.Cells[1,r]);
                  CDSRelacionCpbteID_COMPROBANTE.Value   := -1;
                  CDSRelacionCpbteSUCURSAL.Value         := dbcSucursal.KeyValue;
                  CDSRelacionCpbte.Post;
                end;
            end;
          r:=r+1;
        end;
    end;
end;

procedure TFormImportarFcCompraAFIP.VerificaRelacionPortalExecute(
  Sender: TObject);
VAR r,c:integer;
begin
  inherited;
  if (sgFacturasPortal.RowCount>1 ) then
    begin
      r:=1;
      while (r<sgFacturasPortal.RowCount) do
        begin
          if Not(CDSRelacionCpbte.Locate('SUCURSAL;COMPROBANTE_AFIP',VarArrayOf([IntToStr(cbSucursalPortal.KeyValue),(sgFacturasPortal.Cells[1,r])]),[])) Then
            begin
           //   QControl.Close;
           //   QControl.ParamByName('sucursal').Value        := dbcSucursal.KeyValue;
           //   QControl.ParamByName('COMPROBANTE_AFIP').Value:= sgFacturas.Cells[1,r];
           //   QControl.Open;
           //   if QControl.RecordCount>0 then
                begin
                  CDSRelacionCpbte.Append;
                  CDSRelacionCpbteCOMPROBANTE_AFIP.Value := Trim(sgFacturasPortal.Cells[1,r]);
                  CDSRelacionCpbteID_COMPROBANTE.Value   := -1;
                  CDSRelacionCpbteSUCURSAL.Value         := cbSucursalPortal.KeyValue;
                  CDSRelacionCpbte.Post;
                end;
            end;
          r:=r+1;
        end;
    end;
end;

end.


