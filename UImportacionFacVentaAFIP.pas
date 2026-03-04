unit UImportacionFacVentaAFIP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,StrUtils,DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  AdvUtil, Vcl.Mask, JvExMask, JvToolEdit, AdvPanel, ToolPanels, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid,IniFiles, JvDBLookup, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, AdvOfficeButtons, AdvSmoothProgressBar,
  AdvProgr, AdvCombo,System.Math,System.Types, JvBaseEdits;

type
  TFormImportarFcVentaAFIP = class(TFormABMBase)
    pnCabecera: TPanel;
    sgFacturas: TAdvStringGrid;
    pnPie: TPanel;
    ImportarFacturas: TBitBtn;
    btCargarExcel: TBitBtn;
    tpConfiguracion: TAdvToolPanelTab;
    pnConfiguracion: TAdvToolPanel;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    cbFecha: TComboBox;
    cbTipoCpbte: TComboBox;
    cbPuntoVta: TComboBox;
    cbNroDesde: TComboBox;
    cbCAE: TComboBox;
    cbTipoDoc: TComboBox;
    cbNroDoc: TComboBox;
    cbNetoNoGravado: TComboBox;
    cbExento: TComboBox;
    cbIVA: TComboBox;
    cbTotal: TComboBox;
    cbNetoGravado: TComboBox;
    ceCodigo: TJvComboEdit;
    ceCodigo105: TJvComboEdit;
    edDetalle105: TEdit;
    edDetalle: TEdit;
    ceCodigoCero: TJvComboEdit;
    edDetalleCero: TEdit;
    btGuardaConfig: TButton;
    OpenDialog: TOpenDialog;
    BuscarArticulos: TAction;
    ImportarFactura: TAction;
    QClienteCuit: TFDQuery;
    QClienteCuitCODIGO: TStringField;
    RxLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    QSucursal: TFDQuery;
    DSSucursal: TDataSource;
    QComprobante: TFDQuery;
    QRelacionCpbte: TFDQuery;
    VerificaRelacion: TAction;
    dbgRelaciones: TDBGrid;
    DSRelacion: TDataSource;
    QRelacionCpbteID: TIntegerField;
    QRelacionCpbteID_COMPROBANTE: TIntegerField;
    QRelacionCpbteSUCURSAL: TIntegerField;
    CDSRelacionCpbte: TClientDataSet;
    DSPRelacionCpbte: TDataSetProvider;
    CDSRelacionCpbteID: TIntegerField;
    CDSRelacionCpbteID_COMPROBANTE: TIntegerField;
    CDSRelacionCpbteSUCURSAL: TIntegerField;
    CDSRelacionCpbteMUESTRACOMPROB: TStringField;
    QId: TFDQuery;
    QIdMAX: TIntegerField;
    Label17: TLabel;
    QRelacionCpbteCODIGO_AFIP: TIntegerField;
    CDSRelacionCpbteCODIGO_AFIP: TIntegerField;
    QRelacionCpbteCOMPROBANTE_AFIP: TStringField;
    CDSRelacionCpbteCOMPROBANTE_AFIP: TStringField;
    CheckBox1: TAdvOfficeCheckBox;
    Label18: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    BuscarCliente: TAction;
    pgBar: TAdvProgress;
    spGenerarFc: TFDStoredProc;
    QGenerarFC: TFDQuery;
    Button1: TButton;
    Novedades: TAction;
    ToolButton1: TToolButton;
    Label5: TLabel;
    cbDenominacion: TComboBox;
    edLote: TEdit;
    JvLabel1: TJvLabel;
    QBorrarLote: TFDQuery;
    BorrarLote: TAction;
    SpeedButton1: TSpeedButton;
    LeerFacturas: TAction;
    QVerificaNro: TFDQuery;
    pcModelos: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    sgFacturasPortal: TAdvStringGrid;
    pnPiePortal: TPanel;
    btExcelPortal: TBitBtn;
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
    Label54: TLabel;
    Label55: TLabel;
    ceArt_21: TJvComboEdit;
    ceArt_105: TJvComboEdit;
    edArt_105: TEdit;
    edArt_21: TEdit;
    ceArt_0: TJvComboEdit;
    edArt_0: TEdit;
    btParamPortal: TButton;
    DBGrid1: TDBGrid;
    ceArt_27: TJvComboEdit;
    edArt_27: TEdit;
    cbFecha_: TAdvComboBox;
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
    pnCabPortal: TPanel;
    JvLabel3: TJvLabel;
    Label53: TLabel;
    cbSucursalPortal: TJvDBLookupCombo;
    cheBox_Portal: TAdvOfficeCheckBox;
    pnMedio: TPanel;
    QFacturas: TFDQuery;
    btLeerFacturas: TBitBtn;
    edHasta: TJvDateEdit;
    edDesde: TJvDateEdit;
    Label30: TLabel;
    Label56: TLabel;
    UpDown1: TUpDown;
    pnFacturas: TAdvToolPanel;
    dbgFacturas: TDBGrid;
    DSFacturas: TDataSource;
    QFacturasID_FC: TIntegerField;
    QFacturasCODIGO_AFIP: TStringField;
    QFacturasTIPOCPBTE: TStringField;
    QFacturasCLASECPBTE: TStringField;
    QFacturasLETRAFAC: TStringField;
    QFacturasNROCPBTE: TStringField;
    QFacturasTOTAL: TFloatField;
    btVerificar: TBitBtn;
    Verificar: TAction;
    QFacturasNETOGRAV2: TFloatField;
    QFacturasNETOEXEN2: TFloatField;
    QFacturasIVA: TFloatField;
    QFacturasPERCEPCION_IVA: TFloatField;
    QFacturasPERCEPCIONIB: TFloatField;
    edTotal: TEdit;
    Label57: TLabel;
    edNeto: TEdit;
    Label58: TLabel;
    edIva: TEdit;
    Label59: TLabel;
    QFacturasSELECTED: TBooleanField;
    pnPieFacturas: TPanel;
    edcTotal: TJvCalcEdit;
    edcIva: TJvCalcEdit;
    edcGravado: TJvCalcEdit;
    JvDBStatusLabel1: TJvDBStatusLabel;
    lbRec: TLabel;
    BuscarArticulosPortal: TAction;
    procedure btCargarExcelClick(Sender: TObject);
    procedure btGuardaConfigClick(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImportarFacturaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VerificaRelacionExecute(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure CDSRelacionCpbteNewRecord(DataSet: TDataSet);
    procedure CDSRelacionCpbteAfterPost(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure NovedadesExecute(Sender: TObject);
    procedure sgFacturasGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure sgFacturasGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure BorrarLoteExecute(Sender: TObject);
    procedure btExcelPortalClick(Sender: TObject);
    procedure cheBox_PortalClick(Sender: TObject);

    procedure sgFacturasPortalDblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure LeerFacturasExecute(Sender: TObject);
    procedure btParamPortalClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure VerificarExecute(Sender: TObject);
    procedure dbgFacturasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BuscarArticulosPortalExecute(Sender: TObject);
    procedure sgFacturasPortalGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarFcVentaAFIP: TFormImportarFcVentaAFIP;
  lista      :TStringList;

implementation

{$R *.dfm}

uses UBuscadorArticulos, UDMain_FD, UFactura_2, DMVenta, UBuscadorClientes,
  UListCpbteNoImportados;

procedure TFormImportarFcVentaAFIP.LeerFacturasExecute(Sender: TObject);
begin
  inherited;
  QFacturas.Close;
  QFacturas.ParamByName('desde').AsDate:= edDesde.Date;
  QFacturas.ParamByName('hasta').AsDate:= edHasta.Date;
  QFacturas.Open;
  QFacturas.First;
  QFacturas.DisableControls;
  edcTotal.Value  :=0;
  edcIva.Value    :=0;
  edcGravado.Value:=0;
  while Not(QFacturas.Eof) do
    begin
      if QFacturasTIPOCPBTE.Value<>'NC' then
        begin
          edcTotal.Value  := edcTotal.Value  + QFacturasTOTAL.Value;
          edcIva.Value    := edcIva.Value    + QFacturasIVA.Value;
          edcGravado.Value:= edcGravado.Value+ QFacturasNETOGRAV2.Value;
        end
      else
        begin
          edcTotal.Value  := edcTotal.Value  - QFacturasTOTAL.Value;
          edcIva.Value    := edcIva.Value    - QFacturasIVA.Value;
          edcGravado.Value:= edcGravado.Value- QFacturasNETOGRAV2.Value;
        end;
      QFacturas.Next;
    end;
  QFacturas.First;
  QFacturas.EnableControls;

end;

procedure TFormImportarFcVentaAFIP.BorrarLoteExecute(Sender: TObject);
begin
  inherited;
  QBorrarLote.Close;
  QBorrarLote.ParamByName('LOTE').Value:=Trim(edLote.Text);
  QBorrarLote.ExecSQL;
  QBorrarLote.Close;
end;

procedure TFormImportarFcVentaAFIP.btCargarExcelClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  cbFecha.Items.Clear;
  cbTipoCpbte.Items.Clear;
  cbPuntoVta.Items.Clear;
  cbNroDesde.Items.Clear;
  cbCAE.Items.Clear;
  cbTipoDoc.Items.Clear;
  cbNroDoc.Items.Clear;
  cbNetoGravado.Items.Clear;
  cbNetoNoGravado.Items.Clear;
  cbExento.Items.Clear;
  cbIVA.Items.Clear;
  cbTotal.Items.Clear;
  if OpenDialog.Execute then
    if OpenDialog.FileName<>'' then
      begin
        sgFacturas.FixedRows:=1;
        sgFacturas.LoadFromXLS(OpenDialog.FileName);
        sgFacturas.Options :=sgFacturas.Options+[goColSizing];
        sgFacturas.RemoveRows(0,1);
        for I := 0 to sgFacturas.ColCount-1 do
          begin
           // edSuma.Value:= StrToFloat(dbgMercadoPago.Cells[i,id_Monto])+edSuma.Value;
            cbFecha.Items.Add(sgFacturas.Cells[i,0]);
            cbTipoCpbte.Items.Add(sgFacturas.Cells[i,0]);
            cbPuntoVta.Items.Add(sgFacturas.Cells[i,0]);
            cbNroDesde.Items.Add(sgFacturas.Cells[i,0]);
            cbCAE.Items.Add(sgFacturas.Cells[i,0]);
            cbTipoDoc.Items.Add(sgFacturas.Cells[i,0]);
            cbNroDoc.Items.Add(sgFacturas.Cells[i,0]);
            cbNetoGravado.Items.Add(sgFacturas.Cells[i,0]);
            cbDenominacion.Items.Add(sgFacturas.Cells[i,0]);
            cbNetoNoGravado.Items.Add(sgFacturas.Cells[i,0]);
            cbExento.Items.Add(sgFacturas.Cells[i,0]);
            cbIVA.Items.Add(sgFacturas.Cells[i,0]);
            cbTotal.Items.Add(sgFacturas.Cells[i,0]);
          end;

        ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcVentaAFIP.ini');
        cbFecha.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Fecha', -1);
        cbTipoCpbte.ItemIndex     := ArchivoINI.ReadInteger('Campos', 'Tipo',  -1);
        cbPuntoVta.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'PuntoVta', -1);
        cbNroDesde.ItemIndex      := ArchivoINI.ReadInteger('Campos', 'NroDesde', -1);
        cbCAE.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'CAE', -1);
        cbTipoDoc.ItemIndex       := ArchivoINI.ReadInteger('Campos', 'TipoDoc', -1);
        cbNroDoc.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'NroDoc', -1);
        cbNetoGravado.ItemIndex   := ArchivoINI.ReadInteger('Campos', 'NetoGravado', -1);
        cbNetoNoGravado.ItemIndex := ArchivoINI.ReadInteger('Campos', 'NetoNoGrav', -1);
        cbExento.ItemIndex        := ArchivoINI.ReadInteger('Campos', 'Exento', -1);
        cbIVA.ItemIndex           := ArchivoINI.ReadInteger('Campos', 'IVA', -1);
        cbTotal.ItemIndex         := ArchivoINI.ReadInteger('Campos', 'Total', -1);
        cbDenominacion.ItemIndex  := ArchivoINI.ReadInteger('Campos', 'Denominacion', -1);

        ArchivoIni.Free;
       end;

end;

procedure TFormImportarFcVentaAFIP.btExcelPortalClick(Sender: TObject);
var
  I: Integer;
  Col,Row:Integer;
begin
  inherited;
  if OpenDialog.Execute then
    if Trim(OpenDialog.FileName)<>'' then
      begin
        sgFacturasPortal.FixedRows:=1;
        sgFacturasPortal.LoadFromCSV(OpenDialog.FileName);
        sgFacturasPortal.Options:=sgFacturasPortal.Options+[goColSizing];
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
        ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcVentaAFIP_Portal.ini');
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
    var Valor :Extended;
    for row := 1 to sgFacturasPortal.RowCount -1 do
      for col := 0 to sgFacturasPortal.ColCount-1 do
        begin
          if (col in [9..31]) or (col=7) then
            begin
              valor:= StrToFloatDef(StringReplace(sgFacturasPortal.Cells[col, row], ',', '.', [rfReplaceAll]), 0);
              sgFacturasPortal.Cells[col, row] := FormatFloat('0.00', valor);
             //  sgFacturas.CellAlignments[col,row]:=taRightJustify;
            end;
        end;
   sgFacturasPortal.AutoSize:=True;
   edNeto.Text   := FormatFloat(',0.00',sgFacturasPortal.ColumnSum(31,1,-1));
   edIva.Text    := FormatFloat(',0.00',sgFacturasPortal.ColumnSum(26,1,-1) + sgFacturasPortal.ColumnSum(28,1,-1));
   edTotal.Text  := FormatFloat(',0.00',sgFacturasPortal.ColumnSum( 9,1,-1));
   lbRec.Caption := IntToStr(sgFacturasPortal.RowCount-1);
   //sgFacturasPortal.QSort;
end;

procedure TFormImportarFcVentaAFIP.BuscarArticulosExecute(Sender: TObject);
var Detalle:String;
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
         end;
      // CDSStock.Close;

    end;

end;

procedure TFormImportarFcVentaAFIP.BuscarArticulosPortalExecute(
  Sender: TObject);
var Detalle:String;
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
       detalle :=DMMain_FD.GetDetalleArticulo(FormBuscadorArticulos.Codigo);

       if (Detalle<>'') then
         begin
           if (Sender as TJvComboEdit).Name='ceArt_21' then
             begin
               edArt_21.Text:=Detalle;
               ceArt_21.Text :=FormBuscadorArticulos.Codigo;
             end
           else
             if (Sender as TJvComboEdit).Name='ceArt_105' then
               begin
                 edArt_105.Text  :=Detalle;
                 ceArt_105.Text :=FormBuscadorArticulos.Codigo;
               end
             else
               if (Sender as TJvComboEdit).Name='ceArt_0' then
                 begin
                   edArt_0.Text  :=Detalle;
                   ceArt_0.Text  :=FormBuscadorArticulos.Codigo;
                 end
               else
                 if (Sender as TJvComboEdit).Name='ceArt_27' then
                   begin
                     edArt_27.Text  :=Detalle;
                     ceArt_27.Text  :=FormBuscadorArticulos.Codigo;
                   end;

         end
       else
         begin
           if (Sender as TJvComboEdit).Name='ceArt_21' then
             begin
               edArt_21.Text:='';
               ceArt_21.Text :='';
             end
           else
             if (Sender as TJvComboEdit).Name='ceArt_105' then
               begin
                 edArt_105.Text  :='';
                 ceArt_105.Text :='';
               end
             else
               if (Sender as TJvComboEdit).Name='ceArt_0' then
                 begin
                   edArt_0.Text  :='';
                   ceArt_0.Text  :='';
                 end
               else
                 if (Sender as TJvComboEdit).Name='ceArt_27' then
                   begin
                     edArt_27.Text  :='';
                     ceArt_27.Text  :='';
                   end;

         end;
      // CDSStock.Close;

    end;

end;

procedure TFormImportarFcVentaAFIP.BuscarClienteExecute(Sender: TObject);
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
       edNombreCliente.Text := FormBuscadorClientes.Nombre;
       ceCliente.SetFocus;
       ceCliente.SelectAll;
    END;
end;

procedure TFormImportarFcVentaAFIP.btGuardaConfigClick(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcVentaAFIP.ini');
  ArchivoINI.WriteInteger('Campos', 'Fecha', cbFecha.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'Tipo',  cbTipoCpbte.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'PuntoVta', cbPuntoVta.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'NroDesde', cbNroDesde.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'CAE', cbCAE.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'TipoDoc', cbTipoDoc.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'NroDoc', cbNroDoc.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'NetoGravado', cbNetoGravado.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'NetoNoGrav', cbNetoNoGravado.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'Exento', cbExento.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'IVA', cbIVA.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'Total', cbTotal.ItemIndex);
  ArchivoINI.WriteInteger('Campos', 'Denominacion', cbDenominacion.ItemIndex);

  ArchivoINI.WriteString('Art_0',  'Codigo', ceCodigoCero.Text);
  ArchivoINI.WriteString('Art_105','Codigo', ceCodigo105.Text);
  ArchivoINI.WriteString('Art_21', 'Codigo', ceCodigo.Text);

  ArchivoINI.WriteString('Art_0',  'detalle', edDetalleCero.Text);
  ArchivoINI.WriteString('Art_105','detalle', edDetalle105.Text);
  ArchivoINI.WriteString('Art_21', 'detalle', edDetalle.Text);

  ArchivoINI.WriteString('Cliente', 'Codigo', ceCliente.Text);
  ArchivoINI.WriteString('Cliente', 'Nombre', edNombreCliente.Text);

  ArchivoIni.Free;

  //CDSRelacionCpbte.ApplyUpdates(0);
end;

procedure TFormImportarFcVentaAFIP.btParamPortalClick(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcVentaAFIP_Portal.ini');
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


procedure TFormImportarFcVentaAFIP.CDSRelacionCpbteAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSRelacionCpbte.ApplyUpdates(0);

end;

procedure TFormImportarFcVentaAFIP.CDSRelacionCpbteNewRecord(DataSet: TDataSet);
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

procedure TFormImportarFcVentaAFIP.cheBox_PortalClick(Sender: TObject);
begin
  inherited;
  sgFacturasPortal.FilterDropDownAuto:=cheBox_Portal.Checked;
  if cheBox_Portal.Checked=False then
    sgFacturasPortal.RemoveAllFilters;
end;

procedure TFormImportarFcVentaAFIP.CheckBox1Click(Sender: TObject);
begin
  inherited;
  sgFacturas.FilterDropDownAuto:=CheckBox1.Checked;
end;

procedure TFormImportarFcVentaAFIP.dbcSucursalClick(Sender: TObject);
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

procedure TFormImportarFcVentaAFIP.dbgFacturasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (QFacturasSELECTED.Value=True) then
    dbgFacturas.Canvas.Brush.Color:=clAqua;

  if (gdFocused in State) then
    begin
      dbgFacturas.canvas.brush.color := ClBlack;
      dbgFacturas.canvas.Font.color  := clWhite;
    end;
    //Esta línea es nueva
  dbgFacturas.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormImportarFcVentaAFIP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QSucursal.Open;
  CDSRelacionCpbte.Close;
  QComprobante.Close;
  Action:=caFree;
end;

procedure TFormImportarFcVentaAFIP.FormCreate(Sender: TObject);
var a:string;
begin
  inherited;
  AutoSize:= False;
  lista   := TStringList.Create;
  a       := ExtractFilePath(ParamStr(0));
  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcVentaAFIP.ini');
  ceCodigoCero.Text         := ArchivoINI.ReadString('Art_0',  'Codigo', '');
  ceCodigo105.Text          := ArchivoINI.ReadString('Art_105','Codigo', '');
  ceCodigo.Text             := ArchivoINI.ReadString('Art_21', 'Codigo', '');

  edDetalleCero.Text        := ArchivoINI.ReadString('Art_0',  'detalle', '');
  edDetalle105.Text         := ArchivoINI.ReadString('Art_105','detalle', '');
  edDetalle.Text            := ArchivoINI.ReadString('Art_21', 'detalle', '');

  ceCliente.Text            := ArchivoINI.ReadString('Cliente', 'Codigo', '');
  edNombreCliente.Text      := ArchivoINI.ReadString('Cliente', 'Nombre', '');

  ArchivoIni.Free;


 // ************* Arvhivo INI de Portal IVA *********************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcVentaAFIP_Portal.ini');
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

  cbSucursalPortal.KeyValue      := -1;

  QSucursal.Open;

  var d,m,y:word;
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  edDesde.Date:=EncodeDate(y,m,1);
  edHasta.Date:=EncodeDate(y,m,DaysInMonth(edDesde.Date));

end;

procedure TFormImportarFcVentaAFIP.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarFcVentaAFIP:=nil;
end;

procedure TFormImportarFcVentaAFIP.ImportarFacturaExecute(Sender: TObject);
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
            if (CDSRelacionCpbte.Locate('SUCURSAL;COMPROBANTE_AFIP',VarArrayOf([IntToStr(dbcSucursal.KeyValue),(sgFacturas.Cells[cbTipoCpbte.ItemIndex,r])]),[])) Then
              spGenerarFc.ParamByName('ID_COMPROBANTE').AsInteger := CDSRelacionCpbteID_COMPROBANTE.Value;
            spGenerarFc.ParamByName('NRO_CUIT').AsString       := Copy(sgFacturas.Cells[cbNroDoc.ItemIndex,r],1,2)+'-'+Copy(sgFacturas.Cells[cbNroDoc.ItemIndex,r],3,8)+'-'+Copy(sgFacturas.Cells[cbNroDoc.ItemIndex,r],11,1);
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
            spGenerarFc.ParamByName('CLIENTE').AsString        := ceCliente.Text;
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

procedure TFormImportarFcVentaAFIP.NovedadesExecute(Sender: TObject);
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



procedure TFormImportarFcVentaAFIP.sgFacturasGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  case acol of
    10..14:HAlign:=taRightJustify;
  end;
end;

procedure TFormImportarFcVentaAFIP.sgFacturasGetFormat(Sender: TObject;
  ACol: Integer; var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
  if ACol=0 then
    AStyle := ssDate;
  case ACol of
    10..15: AStyle := ssFinancial;
  end;
end;

procedure TFormImportarFcVentaAFIP.sgFacturasPortalDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
var Nro:String;
Tp:String;
begin
  inherited;

  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'1') Then Nro:='A'
  else
  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'2') Then Nro:='A'
  else
  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'11') Then Tp:='C'
  else
  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'12') Then Tp:='C'
  else
  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'13') Then Tp:='C'
  else
  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'3') Then Tp:='A';

  Nro := Nro +
         AnsiRightStr('0000'+sgFacturasPortal.Cells[ 2,ARow],4)+
         AnsiRightStr('00000000'+sgFacturasPortal.Cells[ 3,Arow],8);

  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'1') Then Tp:='FC'
  else
  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'11') Then Tp:='FC'
  else
  if AnsiContainsStr(sgFacturasPortal.Cells[1,ARow],'3') Then Tp:='NC';



  QVerificaNro.Close;
  QVerificaNro.ParamByName('Nro').Value   := Nro;
  QVerificaNro.ParamByName('Tipo').Value  := Tp;
  QVerificaNro.Open;
  if QVerificaNro.Fields[0].AsString<>'' Then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew  :=QVerificaNro.Fields[0].AsString;
      FormCpbte_2.TipoCpbte:=QVerificaNro.Fields[1].AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end;
  QVerificaNro.Close;

end;


procedure TFormImportarFcVentaAFIP.sgFacturasPortalGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  inherited;
  if (ACol=9) or (Acol>=11) then
    HAlign:= taRightJustify;
end;

procedure TFormImportarFcVentaAFIP.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(edDesde.Date,y,m,d);
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
  edDesde.Date:=EncodeDate(y,m,1);
  edHasta.Date:=EncodeDate(y,m,DaysInMonth(edDesde.Date));
  LeerFacturas.Execute;
end;

procedure TFormImportarFcVentaAFIP.VerificaRelacionExecute(Sender: TObject);
VAR r,c:integer;
begin
  inherited;

  if (sgFacturas.RowCount>1 ) then
    begin
      r:=1;
      while (r<sgFacturas.RowCount-1) do
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

procedure TFormImportarFcVentaAFIP.VerificarExecute(Sender: TObject);
var
  r     : Integer;
  Letra : String;
  Prefijo, Numero:string;
  Cadena : String;
  Tipo   : String;
  TotalNeto    :Extended;
  TotalIVA21   :Extended;
  TotalIVA105  :Extended;
  TotalIva     :Extended;
  Total     :Extended;
begin
  inherited;
  sgFacturasPortal.Row:=0;
  For r := 1 to sgFacturasPortal.RowCount-1 do
    begin
      if (sgFacturasPortal.Cells[1,r]='1') Then
        begin
          Letra:='A';
          Tipo :='FC';
        end
      else
        if (sgFacturasPortal.Cells[1,r]='6') Then
          begin
            Letra:='B';
            Tipo:= 'FC';
          end
        else
          if (sgFacturasPortal.Cells[1,r]='3') Then
            begin
              Letra:='A';
              Tipo:= 'NC';
            end
        else
          if (sgFacturasPortal.Cells[1,r]='8') Then
            begin
              Letra:='B';
              Tipo:= 'NC';
            end
          else
            if (sgFacturasPortal.Cells[1,r]='2') Then
              begin
                Letra:='A';
                Tipo:= 'ND';
              end
          else
            if (sgFacturasPortal.Cells[1,r]='7') Then
              begin
                Letra:='B';
                Tipo:= 'ND';
              end;

      Prefijo:= AnsiRightStr('0000'+sgFacturasPortal.Cells[2,r],4);
      Numero := AnsiRightStr('000000000'+sgFacturasPortal.Cells[3,r],8);
      Cadena := Letra+Prefijo+Numero;
      If (QFacturas.Locate('TIPOCPBTE;NROCPBTE',VarArrayOf([Tipo,Cadena]),[])) or
         (QFacturas.Locate('TIPOCPBTE;NROCPBTE',VarArrayOf(['TK',Cadena]),[])) or
         (QFacturas.Locate('TIPOCPBTE;NROCPBTE',VarArrayOf(['FO',Cadena]),[])) Then
        begin
         // if QFacturasNETOGRAV2.AsString=sgFacturasPortal.Cells[1,r] Then
          sgFacturasPortal.RowColor[r]:=clLime;
          TotalNeto := StrToFloat(ReplaceText(sgFacturasPortal.Cells[31,r],',','.'));

          if (sgFacturasPortal.Cells[26,r]<>'') then
            TotalIVA105:=StrToFloat(ReplaceText(sgFacturasPortal.Cells[26,r],',','.'));

          if (sgFacturasPortal.Cells[28,r]<>'') then
            TotalIVA21:=StrToFloat(ReplaceText(sgFacturasPortal.Cells[28,r],',','.'));

          TotalIVA  :=  TotalIva105 + TotalIva21;

          Total     :=  StrToFloat(ReplaceText(sgFacturasPortal.Cells[ 9,r],',','.'));

          if Tipo='NC' then
            begin
              TotalNeto := StrToFloat(ReplaceText(sgFacturasPortal.Cells[31,r],',','.'))*-1;
              TotalIVA  := TotalIVA * -1;
              Total     := StrToFloat(ReplaceText(sgFacturasPortal.Cells[ 9,r],',','.'))*-1;
            end;

          if (CompareValue(QFacturasNETOGRAV2.AsFloat,TotalNeto,0.02) = EqualsValue)  Then
            sgFacturasPortal.Colors[31,r]:=clAqua;

          if (CompareValue(QFacturasIVA.AsFloat,TotalIVA,0.09) = EqualsValue)  Then
            sgFacturasPortal.Colors[32,r]:=clAqua;

          if (CompareValue(QFacturasTOTAL.AsFloat,Total,0.02) = EqualsValue)  Then
            sgFacturasPortal.Colors[9,r]:=clAqua;
           QFacturas.Edit;
           QFacturasSELECTED.Value:=True;
           QFacturas.Post;

        end
      else
        sgFacturasPortal.RowFontColor[r]:=clRed;
     // sgFacturasPortal.ColumnSum(9,-1,-1);
    end;
end;

end.
