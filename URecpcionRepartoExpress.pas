unit URecpcionRepartoExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,
  JvExMask, JvToolEdit, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomPivotGrid, cxDBPivotGrid, Vcl.Grids, Vcl.DBGrids,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit, AdvUtil,
  AdvObj, BaseGrid, AdvGrid, AdvSprd, tmsAdvGridExcel, JvDBLookup, ccedlink,
  System.ImageList;

type
  TFormRecepRepartoExpress = class(TFormABMBase)
    QRepartoCab: TFDQuery;
    QRepartoDet: TFDQuery;
    QRepartoCabID: TIntegerField;
    QRepartoCabVENDEDOR: TStringField;
    QRepartoCabTOTAL: TFloatField;
    QRepartoCabNOMBRE: TStringField;
    CDSRepartoCab: TClientDataSet;
    DSPRepartoCab: TDataSetProvider;
    CDSRepartoCabID: TIntegerField;
    CDSRepartoCabVENDEDOR: TStringField;
    CDSRepartoCabTOTAL: TFloatField;
    CDSRepartoCabNOMBRE: TStringField;
    DSPRepartoDet: TDataSetProvider;
    CDSRepartoDet: TClientDataSet;
    QRepartoDetID: TIntegerField;
    QRepartoDetID_CAB: TIntegerField;
    QRepartoDetCODIGO_STK: TStringField;
    QRepartoDetCLIENTE: TStringField;
    QRepartoDetCANTIDAD: TFloatField;
    QRepartoDetUNITARIO: TFloatField;
    QRepartoDetTOTAL: TFloatField;
    QRepartoDetDESCRIPCION: TStringField;
    QRepartoDetDESC_CORTA: TStringField;
    DSRepartoDet: TDataSource;
    CDSRepartoDetID: TIntegerField;
    CDSRepartoDetID_CAB: TIntegerField;
    CDSRepartoDetCODIGO_STK: TStringField;
    CDSRepartoDetCLIENTE: TStringField;
    CDSRepartoDetCANTIDAD: TFloatField;
    CDSRepartoDetUNITARIO: TFloatField;
    CDSRepartoDetTOTAL: TFloatField;
    CDSRepartoDetDESCRIPCION: TStringField;
    CDSRepartoDetDESC_CORTA: TStringField;
    QRepartoCabZONA: TIntegerField;
    CDSRepartoCabZONA: TIntegerField;
    QZonas: TFDQuery;
    DSPZonas: TDataSetProvider;
    CDSZonas: TClientDataSet;
    CDSZonasID_ZONA: TIntegerField;
    CDSZonasDETALLE: TStringField;
    CDSZonasCOMISION: TFloatField;
    DSZonas: TDataSource;
    TraerGrillaReparto: TAction;
    PageControl1: TPageControl;
    QRepartoCabID_LISTA: TIntegerField;
    CDSRepartoCabID_LISTA: TIntegerField;
    QListaPrecios: TFDQuery;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    DSListaPrecios: TDataSource;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    QGrillaArt: TFDQuery;
    DSPGrillaArt: TDataSetProvider;
    CDSGrillaArt: TClientDataSet;
    pgVentas: TTabSheet;
    AdvGridExcelIO1: TAdvGridExcelIO;
    QGridClientes: TFDQuery;
    DSPGridClientes: TDataSetProvider;
    CDSGridClientes: TClientDataSet;
    CDSGridClientesCODIGO: TStringField;
    CDSGridClientesNOMBRE: TStringField;
    CDSGrillaArtCOD_ARTICULO: TStringField;
    CDSGrillaArtDESCRIPCION: TStringField;
    CDSGrillaArtDESC_CORTA: TStringField;
    CDSGrillaArtPRECIO_UNITARIO: TFloatField;
    QRepartoDetNOMBRE: TStringField;
    ArmarGrilla: TAction;
    spGridRepartoCal: TAdvSpreadGrid;
    Facturar: TAction;
    QBuscaArticulo: TFDQuery;
    QBuscaArticuloCODIGO: TStringField;
    btFacturar: TBitBtn;
    AdvGridUndoRedo1: TAdvGridUndoRedo;
    QCajas: TFDQuery;
    QCajasID_CAJA: TIntegerField;
    QCajasID_CUENTA_CAJA: TIntegerField;
    QCajasSALDO_INCIAL: TFloatField;
    QCajasESTADO: TIntegerField;
    QCajasOBS: TMemoField;
    QCajasNUMEROCAJA: TIntegerField;
    QCajasMUESTRACTACAJA: TStringField;
    DSCaja: TDataSource;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    Sumar: TAction;
    DSPComprobanteFC: TDataSetProvider;
    CDSComprobanteFC: TClientDataSet;
    QComprobanteFC: TFDQuery;
    DSPSucursales: TDataSetProvider;
    CDSSucursales: TClientDataSet;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    DSSucursal: TDataSource;
    QSucursales: TFDQuery;
    CDSComprobanteFCID_COMPROBANTE: TIntegerField;
    CDSComprobanteFCTIPO_COMPROB: TStringField;
    CDSComprobanteFCCLASE_COMPROB: TStringField;
    CDSComprobanteFCDENOMINACION: TStringField;
    CDSComprobanteFCSUCURSAL: TIntegerField;
    CDSComprobanteFCLETRA: TStringField;
    DSPComprobanteRC: TDataSetProvider;
    CDSComprobanteRC: TClientDataSet;
    QComprobanteRC: TFDQuery;
    CDSComprobanteRCID_COMPROBANTE: TIntegerField;
    CDSComprobanteRCTIPO_COMPROB: TStringField;
    CDSComprobanteRCCLASE_COMPROB: TStringField;
    CDSComprobanteRCDENOMINACION: TStringField;
    CDSComprobanteRCSUCURSAL: TIntegerField;
    CDSComprobanteRCLETRA: TStringField;
    CDSComprobanteRCPREFIJO: TStringField;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    edTotal: TEdit;
    dbcCaja: TDBLookupComboBox;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    pnCabecera: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBComboEdit1: TJvDBComboEdit;
    DBEdit3: TDBEdit;
    dbcListaPrecios: TDBLookupComboBox;
    chFormulas: TCheckBox;
    dbcSucursal: TJvDBLookupCombo;
    BuscarEmpleado: TAction;
    ComBuscadorEmpleado: TComBuscador;
    QBuscaEmpleados: TFDQuery;
    QBuscaEmpleadosNOMBRE: TStringField;
    QBuscaEmpleadosCODIGO: TStringField;
    QEmpleado: TFDQuery;
    QEmpleadoNOMBRE: TStringField;
    edTotalRc: TEdit;
    BitBtn1: TBitBtn;
    Recibos: TAction;
    QCompFactura: TFDQuery;
    QCompFacturaID_COMPROBANTE: TIntegerField;
    CDSGridClientesID_FACTURA: TIntegerField;
    CDSGridClientesID_RECIBO: TIntegerField;
    CDSGridClientesDISCRIMINA_IVA: TStringField;
    CDSGridClientesCONDICION_IVA: TIntegerField;
    Plantilla: TTabSheet;
    dbgPlantilla: TDBGrid;
    QPlantillaReparto: TFDQuery;
    QPlantillaRepartoCODIGO: TStringField;
    QPlantillaRepartoMUESTRASTOCK: TStringField;
    QPlantillaRepartoDESC_CORTA: TStringField;
    QPlantillaRepartoORDEN: TIntegerField;
    DSPPlantillaReparto: TDataSetProvider;
    CDSPlantillaReparto: TClientDataSet;
    DSPlantillaReparto: TDataSource;
    CDSPlantillaRepartoCODIGO: TStringField;
    CDSPlantillaRepartoMUESTRASTOCK: TStringField;
    CDSPlantillaRepartoDESC_CORTA: TStringField;
    CDSPlantillaRepartoORDEN: TIntegerField;
    BuscarArticulos: TAction;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    ToolButton1: TToolButton;
    QRepartoCabFECHA: TSQLTimeStampField;
    CDSRepartoCabFECHA: TSQLTimeStampField;
    QCajasFECHA_INCIO: TSQLTimeStampField;
    QCajasFECHA_CIERRE: TSQLTimeStampField;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CDSRepartoCabNewRecord(DataSet: TDataSet);
    procedure TraerGrillaRepartoExecute(Sender: TObject);
    procedure dbcZonClick(Sender: TObject);
    procedure dbcListaPreciosClick(Sender: TObject);
    procedure ArmarGrillaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure spGridRepartoCalCellChanging(Sender: TObject; OldRow, OldCol,
      NewRow, NewCol: Integer; var Allow: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure spGridRepartoCalDblClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure spAddClienteClick(Sender: TObject);
    procedure chFormulasClick(Sender: TObject);
    procedure SumarExecute(Sender: TObject);
    procedure spGridRepartoCalGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure spGridRepartoCalGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure CancelarExecute(Sender: TObject);
    procedure spGridRepartoCalGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure spGridRepartoCalGetEditorProp(Sender: TObject; ACol,
      ARow: Integer; AEditLink: TEditLink);
    procedure spGridRepartoCalGetDisplText(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure spGridRepartoCalHasComboBox(Sender: TObject; ACol, ARow: Integer;
      var HasComboBox: Boolean);
    procedure spGridRepartoCalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure CDSRepartoCabVENDEDORSetText(Sender: TField; const Text: string);
    procedure spGridRepartoCalAfterRecalc(Sender: TObject);
    procedure RecibosExecute(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure CDSPlantillaRepartoCODIGOSetText(Sender: TField;
      const Text: string);
    procedure dbgPlantillaColEnter(Sender: TObject);
    procedure dbgPlantillaKeyPress(Sender: TObject; var Key: Char);
    procedure CDSPlantillaRepartoAfterPost(DataSet: TDataSet);
    procedure CDSPlantillaRepartoAfterDelete(DataSet: TDataSet);
    procedure CDSPlantillaRepartoBeforePost(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

type TComprob = class
       Id_comp      :Integer;
       Denominacion :string;
     end;


var
  Letra        : array[1..52] of string[2];
  UlCol        : Integer;
  UltRow       : Integer;

  ListaCpbteFC : TStringList;
  ListaCpbteRC : TStringList;
  Lista        : TStringList;
  Comprob      : TComprob;
  Recib        : TComprob;

  FormRecepRepartoExpress: TFormRecepRepartoExpress;

implementation

uses UDMain_FD, DMVenta,UClientes_2, UListCpbteNoImportados,
  UBuscadorClientes, UFactura_2, URecibo_2, DMRecibos, UBuscadorArticulos;
{$R *.dfm}

procedure TFormRecepRepartoExpress.AgregarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=True;
end;

procedure TFormRecepRepartoExpress.ArmarGrillaExecute(Sender: TObject);
var c:Integer;
//Adi:Integer;
r:Integer;
SumaStr:string;
begin
  inherited;
  spGridRepartoCal.ClearAll;
  spGridRepartoCal.ColumnHeaders.Add('Codigo');
  spGridRepartoCal.ColumnHeaders.Add('Nombre');
  spGridRepartoCal.ColumnHeaders.Add('Usar Rec');
  spGridRepartoCal.ColumnHeaders.Add('Usar Fac');

  spGridRepartoCal.ColCount := 4  + ((CDSGrillaArt.RecordCount)*3)  + 2;// (CDSGrillaArt.RecordCount+2)*3;
  spGridRepartoCal.RowCount := CDSGridClientes.RecordCount+1;
  UlCol                     := spGridRepartoCal.ColCount;

//  spGridRepartoCal.Cells[0,0]:='Codigo';
//  spGridRepartoCal.Cells[1,0]:='Nombre';


  CDSGridClientes.First;
  for r := 1 to spGridRepartoCal.RowCount+1 do
    begin
      spGridRepartoCal.Cells[0,r]                    := CDSGridClientesCODIGO.AsString;
      spGridRepartoCal.Cells[1,r]                    := CDSGridClientesNOMBRE.AsString;
      spGridRepartoCal.Cells[2,r]                    := CDSGridClientesID_RECIBO.AsString;
      spGridRepartoCal.Cells[3,r]                    := CDSGridClientesID_FACTURA.AsString;

      spGridRepartoCal.CellProperties[0,r].ReadOnly  :=True;
      spGridRepartoCal.CellProperties[1,r].ReadOnly  :=True;
      CDSGridClientes.Next;
    end;


  CDSGrillaArt.First;
  c:=3;
  while not(CDSGrillaArt.Eof) do
    begin
      SumaStr:='';
//      c:=c+1;
//      spGridRepartoCal.ColumnHeaders.Add(CDSGrillaArtDESC_CORTA.Value);
//      c:=c+1;
//      spGridRepartoCal.ColumnHeaders.Add('Canti.');
//      c:=c+1;
//      spGridRepartoCal.ColumnHeaders.Add('Precio');

      c:=c+1;
      spGridRepartoCal.ColumnHeaders.Add('Canti.');
      c:=c+1;
      spGridRepartoCal.ColumnHeaders.Add('Precio');
      c:=c+1;
      spGridRepartoCal.ColumnHeaders.Add(CDSGrillaArtDESC_CORTA.AsString);

      for r := 1 to spGridRepartoCal.RowCount do
        begin
          spGridRepartoCal.Cells[c,r]                           := '=$'+Letra[c]  + IntToStr(r) + '*' + '$'+Letra[c-1]+ IntToStr(r);
          spGridRepartoCal.CellProperties[c,r].ReadOnly         := True;
          spGridRepartoCal.Cells[c-1,r]                         := FormatFloat(',0.00;-,0.00',CDSGrillaArtPRECIO_UNITARIO.AsFloat);
          spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,r] := FormatFloat(',0.00;-,0.00',0);
//          spGridRepartoCal.Cells[c-2,r]                         := '=$'+Letra[c]  + IntToStr(r) + '*' + '$'+Letra[c+1]+ IntToStr(r);
//          spGridRepartoCal.CellProperties[c-2,r].ReadOnly       := True;
//          spGridRepartoCal.Cells[c,r]                           := FormatFloat(',0.00;-,0.00;-',CDSGrillaArtPRECIO_UNITARIO.Value);
//          spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,r] := FormatFloat(',0.00;-,0.00;-',0);

        end;
      CDSGrillaArt.Next;
    end;

  SumaStr:='';
  for r := 1 to spGridRepartoCal.RowCount do
    begin
      c:=7; //5
      repeat
        SumaStr:= SumaStr + '$'+Letra[c]  + IntToStr(r)+'+';
        c:=c+3;
      until c>spGridRepartoCal.ColCount-2;
  //    spGridRepartoCal.GridDropDown.Columns Columns.(UlCol-2) :=ctNumeric;
      spGridRepartoCal.Cells[UlCol-1,r]                  :='='+SumaStr;
      spGridRepartoCal.CellProperties[UlCol-1,r].ReadOnly:=True;

      SumaStr:='';
    end;
  UltRow :=spGridRepartoCal.RowCount;
  spGridRepartoCal.Cells[UlCol-1,0] := 'Total';
  spGridRepartoCal.Cells[UlCol-2,0] := 'Cobrado';

 // spGridRepartoCal.FloatingFooter.ColumnCalc[UlCol]:=acSUM;
  //  spGridRepartoCal.AddRow;



//  for I := 2 to CDSGrillaArt.RecordCount+1 do
//    begin
//      spGridReparto.Cells[I,0]   := CDSGrillaArtDESC_CORTA.Value;
//      spGridReparto.Cells[I+1,0] := 'P.Unitario';//FormatFloat(',0.00', CDSGrillaArtPRECIO_UNITARIO.Value)
//      spGridReparto.Cells[I+2,0] := 'Canti.';
//      CDSGrillaArt.Next;
//    end;

//  for I := 2 to CDSGrillaArt.RecordCount+1 do
//    begin
//      spGridReparto.Cells[I,0]   := CDSGrillaArtDESC_CORTA.Value;
//      spGridReparto.Cells[I+1,0] := 'P.Unitario';//FormatFloat(',0.00', CDSGrillaArtPRECIO_UNITARIO.Value)
//      spGridReparto.Cells[I+2,0] := 'Canti.';
//      CDSGrillaArt.Next;
//    end;

end;

procedure TFormRecepRepartoExpress.BuscarArticulosExecute(Sender: TObject);
begin
  inherited;
 // if (DSBase.State in [dsInsert,dsEdit]) then
    begin
     // si es por cuenta y orden busco las recepciones
     // if DatosVentas.wwCDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
     //   buscar
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos := TFormBuscadorArticulos.Create(self);
      FormBuscadorArticulos.Param1      := 1;
      FormBuscadorArticulos.Param2      := 3;
      FormBuscadorArticulos.ListaPrecio := dbcListaPrecios.KeyValue;
      FormBuscadorArticulos.Esquema     := -1;
      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSPlantillaRepartoCODIGOSetText(CDSPlantillaRepartoCODIGO,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormRecepRepartoExpress.BuscarEmpleadoExecute(Sender: TObject);
begin
  inherited;
  QBuscaEmpleados.Close;
  QBuscaEmpleados.Open;
  comBuscadorEmpleado.Execute;
    if comBuscadorEmpleado.rOk Then
      CDSRepartoCabVENDEDORSetText(CDSRepartoCabVENDEDOR,comBuscadorEmpleado.id);
  QBuscaEmpleados.Close;

end;

procedure TFormRecepRepartoExpress.CancelarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=False;
  spGridRepartoCal.Clear;
end;

procedure TFormRecepRepartoExpress.CDSPlantillaRepartoAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  CDSPlantillaReparto.ApplyUpdates(0);
end;

procedure TFormRecepRepartoExpress.CDSPlantillaRepartoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSPlantillaReparto.ApplyUpdates(0);
end;

procedure TFormRecepRepartoExpress.CDSPlantillaRepartoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if Trim(CDSPlantillaRepartoCODIGO.AsString)='' then
    CDSPlantillaReparto.Cancel;
end;

procedure TFormRecepRepartoExpress.CDSPlantillaRepartoCODIGOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if CDSPlantillaReparto.State=dsBrowse then
    CDSPlantillaReparto.Edit;

  Sender.AsString:=Copy('00000000',1,8-length(Trim(Text)))+Trim(Text);

  QStock.Close;
  QStock.ParamByName('codigo').AsString:=Sender.AsString;
  QStock.Open;
  if QStockCODIGO_STK.Value<>'' then
    begin
      CDSPlantillaRepartoMUESTRASTOCK.Value:= QStockDETALLE_STK.Value;
      CDSPlantillaRepartoCODIGO.Value      := QStockCODIGO_STK.Value;
    end
  else
    begin
      CDSPlantillaRepartoMUESTRASTOCK.Value:= '';
      CDSPlantillaRepartoCODIGO.Value      := '';
    end;
  QStock.Close;

end;

procedure TFormRecepRepartoExpress.CDSRepartoCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSRepartoCabID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSRepartoCabID.Value:=1;
  QUltimoCodigo2.Close;
  CDSRepartoCabFECHA.AsDateTime:=Date;
  CDSRepartoCabID_LISTA.Value:= DMMain_FD.ListaPorDefecto(SucursalPorDefecto);

end;

procedure TFormRecepRepartoExpress.CDSRepartoCabVENDEDORSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  QEmpleado.Close;
  QEmpleado.ParamByName('Codigo').Value:=Sender.AsString;
  QEmpleado.Open;
  if QEmpleadoNOMBRE.AsString<>'' then
    CDSRepartoCabNOMBRE.Value:=QEmpleadoNOMBRE.Value
  else
    begin
      CDSRepartoCabNOMBRE.Value:='';
      Sender.Clear;
    end;
end;

procedure TFormRecepRepartoExpress.dbcZonClick(Sender: TObject);
begin
  inherited;
  TraerGrillaReparto.Execute;
end;

procedure TFormRecepRepartoExpress.dbgPlantillaColEnter(Sender: TObject);
begin
  inherited;
  if dbgPlantilla.SelectedIndex=1 then
    dbgPlantilla.SelectedIndex:=2;

end;

procedure TFormRecepRepartoExpress.dbgPlantillaKeyPress(Sender: TObject;
  var Key: Char);
var Top:Integer;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 3;
      IF (dbgPlantilla.SelectedIndex < Top) THEN
        dbgPlantilla.SelectedIndex := dbgPlantilla.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgPlantilla.DataSource.DataSet.Eof) and (Not(DSPlantillaReparto.State in [dsBrowse])) THEN
            begin
              dbgPlantilla.DataSource.DataSet.Append;
              dbgPlantilla.SelectedIndex := 0;
            end
          else
            IF (not(dbgPlantilla.DataSource.DataSet.Eof)) and (Not(DSPlantillaReparto.State in [dsBrowse])) and
              (dbgPlantilla.DataSource.DataSet.RecordCount>0) THEN
              begin
                dbgPlantilla.DataSource.DataSet.Append;
                dbgPlantilla.SelectedIndex := 0;
              end;

        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorArticulos)) then
          begin
            IF dbgPlantilla.SelectedField = CDSPlantillaRepartoCODIGO THEN
              BuscarArticulos.Execute;
          end;
      END
    else
      if (key = #27) then
        dbgPlantilla.DataSource.DataSet.Cancel;
end;

procedure TFormRecepRepartoExpress.dbcListaPreciosClick(Sender: TObject);
begin
  inherited;
  TraerGrillaReparto.Execute;
end;

procedure TFormRecepRepartoExpress.dbcSucursalChange(Sender: TObject);
var i :Integer;
indx  :Integer;
begin
  inherited;
  for I := 1 to spGridRepartoCal.RowCount-1 do
    begin
      spGridRepartoCal.Cells[3,I]:='';
      spGridRepartoCal.Cells[2,I]:='';
    end;

  CDSComprobanteFC.Close;
  CDSComprobanteFC.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprobanteFC.Open;

  if ListaCpbteFC<>nil then
    begin
      if ListaCpbteFC<>nil then
        FreeAndNil(ListaCpbteFC);
      ListaCpbteFC:=TStringList.Create;
      CDSComprobanteFC.First;
      while not(CDSComprobanteFC.Eof) do
        begin
          Comprob              := TComprob.Create;
          Comprob.Id_comp      := CDSComprobanteFCID_COMPROBANTE.Value;
          Comprob.Denominacion := CDSComprobanteFCDENOMINACION.AsString;
          ListaCpbteFC.AddObject(CDSComprobanteFCDENOMINACION.AsString,Comprob);
          CDSComprobanteFC.Next;
        end;
    end;

  CDSComprobanteRC.Close;
  CDSComprobanteRC.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprobanteRC.Open;
  if ListaCpbteRC<>nil then
    begin
      if ListaCpbteRC<>nil then
        FreeAndNil(ListaCpbteRC);
      ListaCpbteRC:=TStringList.Create;
      CDSComprobanteRC.First;
      while not(CDSComprobanteRC.Eof) do
        begin
          Comprob              := TComprob.Create;
          Comprob.Id_comp      := CDSComprobanteFCID_COMPROBANTE.Value;
          Comprob.Denominacion := CDSComprobanteFCDENOMINACION.AsString;
          ListaCpbteFC.AddObject(CDSComprobanteFCDENOMINACION.AsString,Comprob);
          CDSComprobanteFC.Next;
        end;
    end;
end;

procedure TFormRecepRepartoExpress.FacturarExecute(Sender: TObject);
var i,c,Puntero,
Id_Comprobante     : Integer;
Importe,Total      : Extended;
MiComprob          : TComprob;
Codigo,
CodigoStk,
DescCorta  :String;
ImporteStr,
Cantidad   :String;
begin
  inherited;
 // MiComprob := TComprob.Create;
  if (VarIsNull(dbcCaja.KeyValue)) or (dbcCaja.KeyValue<=0) or (Trim(dbcCaja.Text)='') then
    raise Exception.Create('No Hay Caja Selecionada......');

  if Trim(spGridRepartoCal.Cells[0,1])='' Then
    raise Exception.Create('No Hay Datos A Procesar.....');

  if not(Assigned(FormCpbte_2)) then
    FormCpbte_2:= TFormCpbte_2.Create(Self);
  FormCpbte_2.FormStyle      := fsNormal;
  FormCpbte_2.Visible        := False;
  FormCpbte_2.DiscriminaIva  := 'S';
  FormCpbte_2.CajaPorDefecto := dbcCaja.KeyValue;

 // ListaCpbteFC.Sort;

  for I := 1 to spGridRepartoCal.RowCount do
    begin
      if (spGridRepartoCal.CalculatedValue[UlCol-1,I])>0 then
        begin
          with DatosVentas DO
            begin
              c:=4;
              if Trim(spGridRepartoCal.Cells[3,I])<>'' then
                begin
                  Puntero        := ListaCpbteFC.IndexOf(spGridRepartoCal.Cells[3,I]);
                  MiComprob      := ListaCpbteFC.Objects[Puntero] as TComprob;
                  Id_Comprobante := MiComprob.Id_comp;
                end
              else
                Id_Comprobante:=-1;

              FormCpbte_2.Agregar.Execute;
              FormCpbte_2.CajaPorDefecto                   := dbcCaja.KeyValue;
              DatosVentas.CDSVentaCabPOR_CTA_Y_ORDEN.Value := 'S';
              DatosVentas.CDSVentaCabSUCURSALSetText(DatosVentas.CDSVentaCabSUCURSAL,IntToStr(dbcSucursal.KeyValue));
              Codigo                                       := spGridRepartoCal.Cells[0,I];

              CDSVentaCabCODIGOSetText(CDSVentaCabCODIGO,Codigo);
              if Id_Comprobante>-1 then
                CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(Id_Comprobante));
              repeat
                DescCorta :=spGridRepartoCal.Cells[c+2,0];
                if spGridRepartoCal.CellValue[c+2,I]>0 then
                  begin
                    QBuscaArticulo.Close;
                    QBuscaArticulo.ParamByName('Dato').Value:=DescCorta;
                    QBuscaArticulo.Open;
                    if QBuscaArticuloCODIGO.Value<>'' then
                      begin
                        CodigoStk := QBuscaArticuloCODIGO.Value;
                        Importe   := spGridRepartoCal.CalculatedValue[c+1,I];
                        Cantidad  := spGridRepartoCal.Cells[c+0,I];
                        Total     := spGridRepartoCal.CalculatedValue[Ulcol,I];
                        CDSVentaDet.Append;
                        CDSVentaDetCodigoArticuloSetText(CDSVentaDetCODIGOARTICULO,CodigoStk);
                        CDSVentaDetCANTIDADSetText(CDSVentaDetCANTIDAD,Cantidad);
                        if CDSVentaCabDESGLOZAIVA.Value='S' then
                          CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Importe/(1+CDSVentaDetIVA_TASA.AsFloat*0.01)))
                        else
                          CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Importe));

                        CDSVentaDet.post;
                      end;
                  end;
                c := c +3
              until c>spGridRepartoCal.ColCount-4;

              lista.Add(CDSVentaCabLETRAFAC.AsString+'-'+
                        CDSVentaCabSUCFAC.AsString+'-'+
                        CDSVentaCabNUMEROFAC.AsString+'   '+
                        CDSVentaCabNOMBRE.AsString+
                        FormatFloat(',0.00',CDSVentaCabTOTAL.AsFloat)+'------------'+
                        'Reparto:'+ FormatFloat(',0.00',Total));


              FormCpbte_2.Confirma.Execute;
            end;
        end;

    end;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Self);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end

 end;

procedure TFormRecepRepartoExpress.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if ListaCpbteFC<>nil then
    FreeAndNil(ListaCpbteFC);
  if ListaCpbteRC<>nil then
    FreeAndNil(ListaCpbteRC);
   Action:=caFree;
end;

procedure TFormRecepRepartoExpress.FormCreate(Sender: TObject);
var i:Byte;
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
  Lista:=TStringList.Create;

  AddClientDataSet(CDSRepartoCab,DSPRepartoCab);
  AddClientDataSet(CDSRepartoDet,DSPRepartoDet);
  CDSZonas.Open;
  CDSRepartoCab.Open;
  CDSRepartoDet.Open;
  CDSListaPrecios.Close;
  CDSListaPrecios.Open;
  CDSSucursales.Close;
  CDSSucursales.Open;
  CDSPlantillaReparto.Open;

  dbcSucursal.KeyValue := SucursalPorDefecto;

  CDSComprobanteFC.Close;
  CDSComprobanteFC.Params.ParamByName('sucursal').Value:=SucursalPorDefecto;
  CDSComprobanteFC.Open;

  CDSComprobanteRC.Close;
  CDSComprobanteRC.Params.ParamByName('sucursal').Value:=SucursalPorDefecto;
  CDSComprobanteRC.Open;


  QCajas.Close;
  QCajas.Open;

  dbcCaja.KeyValue:=CajaPorDefecto;

  ListaCpbteFC:=TStringList.Create;
  ListaCpbteRC:=TStringList.Create;

  ListaCpbteFC.Sorted:=True;
  ListaCpbteRC.Sorted:=True;


  CDSComprobanteFC.First;
  while not(CDSComprobanteFC.Eof) do
    begin
      Comprob              := TComprob.Create;
      Comprob.Id_comp      := CDSComprobanteFCID_COMPROBANTE.Value;
      Comprob.Denominacion := CDSComprobanteFCDENOMINACION.AsString;
      ListaCpbteFC.AddObject(CDSComprobanteFCDENOMINACION.AsString,Comprob);
      CDSComprobanteFC.Next;
    end;

  CDSComprobanteRC.First;
  while not(CDSComprobanteRC.Eof) do
    begin
      Recib              := TComprob.Create;
      Recib.Id_comp      := CDSComprobanteRCID_COMPROBANTE.Value;
      Recib.Denominacion := CDSComprobanteRCDENOMINACION.AsString;
      ListaCpbteRC.AddObject(CDSComprobanteRCDENOMINACION.AsString,Recib);
      CDSComprobanteRC.Next;
    end;


  Tabla:='TABLA_GRILLA_REPARTO';
  Campo:='ID';
  for i := 1 to 26 do //26
    begin
      Letra[i] := Chr(i+64)
    end;
  for i := 1 to 26 do //26
    begin
      Letra[i+26] := Chr(65)+Chr(i+64);
    end;

  PageControl1.ActivePageIndex:=0;
end;

procedure TFormRecepRepartoExpress.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRecepRepartoExpress:=nil;
end;

procedure TFormRecepRepartoExpress.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if not(ActiveControl is TAdvSpreadGrid) then
   inherited;
end;

procedure TFormRecepRepartoExpress.RecibosExecute(Sender: TObject);
var
i,c,Puntero,
Id_Comprobante :Integer;
Importe        :Extended;
Codigo         :string;
MiComprob      :TComprob;
ImporteStr,
Cantidad       :String;
begin
  inherited;
  if (VarIsNull(dbcCaja.KeyValue)) or (dbcCaja.KeyValue<=0) or (Trim(dbcCaja.Text)='') then
    raise Exception.Create('No Hay Caja Selecionada......');

  if Trim(spGridRepartoCal.Cells[0,1])='' Then
    raise Exception.Create('No Hay Datos A Procesar.....');


  if not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
 // FormRecibo_2.FormStyle     := fsNormal;
 // FormRecibo_2.Visible       := False;
  FormRecibo_2.DiscriminaIva := 'S';
  FormRecibo_2.CajaPorDefecto:= dbcCaja.KeyValue;


  for I := 1 to spGridRepartoCal.RowCount do
    begin
      if (spGridRepartoCal.CalculatedValue[UlCol-1,I])>0 then
        begin
          with DatosRecibos DO
            begin
              c:=spGridRepartoCal.ColCount-2;
              FormRecibo_2.Agregar.Execute;
              FormRecibo_2.CajaPorDefecto:= dbcCaja.KeyValue;
              FormRecibo_2.FrameMovValoresIngreso1.ceCaja.Text        := IntToStr(dbcCaja.KeyValue);
              FormRecibo_2.FrameMovValoresIngreso1.edMuestraCaja.Text := dbcCaja.Text;

             if Trim(spGridRepartoCal.Cells[2,I])<>'' then
                begin
                  Puntero        := ListaCpbteRC.IndexOf(spGridRepartoCal.Cells[2,I]);
                  MiComprob      := ListaCpbteRC.Objects[Puntero] as TComprob;
                  Id_Comprobante := MiComprob.Id_comp;
                end
             else
                Id_Comprobante:=-1;

              Codigo      := spGridRepartoCal.Cells[0,I];
              CDSReciboCODIGOSetText(CDSReciboCODIGO,Codigo);
              if Id_Comprobante>-1 then
                CDSReciboID_TIPOCOMPROBANTESetText(CDSReciboID_TIPOCOMPROBANTE,IntToStr(Id_Comprobante));

              ImporteStr  := spGridRepartoCal.Cells[c,I];
              CDSReciboTOTALSetText(CDSReciboTOTAL,ImporteStr);
              FormRecibo_2.Confirma.Execute;
            end;
        end;

    end;
end;

procedure TFormRecepRepartoExpress.ceClienteButtonClick(Sender: TObject);
begin
  inherited;

  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := ceCliente.Text;
      QClientes.Open;
      if QClientesCODIGO.Value<>'' Then
        begin
          ceCliente.Text       := QClientesCODIGO.value;
          edNombreCliente.Text := QClientesNOMBRE.Value;
        end
      else
        begin
          ceCliente.Text       := '';
          edNombreCliente.Text := '';
        end;
      QClientes.Close;
    end;
end;

procedure TFormRecepRepartoExpress.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      if QClientesCODIGO.Value<>'' Then
        begin
          ceCliente.Text       := QClientesCODIGO.value;
          edNombreCliente.Text := QClientesNOMBRE.Value;
        end
      else
        begin
          ceCliente.Text       := '';
          edNombreCliente.Text := '';
        end;
      QClientes.Close;
    end;
end;

procedure TFormRecepRepartoExpress.chFormulasClick(Sender: TObject);
begin
  inherited;
  spGridRepartoCal.ShowFormula:=chFormulas.Checked;
end;

procedure TFormRecepRepartoExpress.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  close;
end;

procedure TFormRecepRepartoExpress.spGridRepartoCalAfterRecalc(Sender: TObject);
begin
  inherited;
  Sumar.Execute;
//  spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,I] := FloatToStr(spGridRepartoCal.CellValue[spGridRepartoCal.ColCount-1,I]);

end;


procedure TFormRecepRepartoExpress.spGridRepartoCalCellChanging(Sender: TObject;
  OldRow, OldCol, NewRow, NewCol: Integer; var Allow: Boolean);
var a,b,c:Extended;
begin
  inherited;
  spGridRepartoCal.Recalc;
  //edTotal.Text:=FloatToStr(spGridRepartoCal.ColumnSum(3,1,spGridRepartoCal.RowCount));
end;

procedure TFormRecepRepartoExpress.spGridRepartoCalDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
  inherited;
  if ACol<=1 then
    begin
      if spGridRepartoCal.Cells[ACol,ARow]<>'' then
        begin
          if not(Assigned(FormClientes_2)) then
            FormClientes_2:=TFormClientes_2.Create(Self);
          FormClientes_2.DatoNew:=spGridRepartoCal.Cells[0,ARow];
          FormClientes_2.Recuperar.Execute;
          FormClientes_2.Show;
        end;
    end;
end;

procedure TFormRecepRepartoExpress.spGridRepartoCalGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  if ACol<=1 then
    HAlign := taLeftJustify
  else
    HAlign := taRightJustify;
end;

procedure TFormRecepRepartoExpress.spGridRepartoCalGetCellColor(Sender: TObject;
  ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
//if (ACol in [4,7,10,13,16,19,22,25,28,31,34,37,40,43]) then
  if (ACol in [6,9,12,15,18,21,24,27,30,33,36,39,42,45]) then
    ABrush.Color:=clMoneyGreen;
  if (ACol>spGridRepartoCal.ColCount-3) Then
      ABrush.Color:=clSkyBlue;

end;

procedure TFormRecepRepartoExpress.spGridRepartoCalGetDisplText(Sender: TObject;
  ACol, ARow: Integer; var Value: string);
var
i,e: integer;
begin
  if (ACol=3) or (ACol=2) then
    begin
      val(value, i, e);
      if e = 0 then
        Value := spGridRepartoCal.ComboBox.Items[StrToInt(Value)];
    end;
end;

procedure TFormRecepRepartoExpress.spGridRepartoCalGetEditorProp(
  Sender: TObject; ACol, ARow: Integer; AEditLink: TEditLink);
begin
  inherited;
  with spGridRepartoCal do
    case acol of
      3:begin
          ClearComboString;
          CDSComprobanteFC.First;
          while not(CDSComprobanteFC.Eof) do
            begin
              Combobox.Items.Add(CDSComprobanteFCDENOMINACION.Value);
              CDSComprobanteFC.Next;
            end;
        end;
      2:begin
          ClearComboString;
          CDSComprobanteRC.First;
          while not(CDSComprobanteRC.Eof) do
            begin
              Combobox.Items.Add(CDSComprobanteRCDENOMINACION.Value);
              CDSComprobanteRC.Next;
            end;
        end;

    end;
end;

procedure TFormRecepRepartoExpress.spGridRepartoCalGetEditorType(
  Sender: TObject; ACol, ARow: Integer; var AEditor: TEditorType);
begin
  inherited;
  if (ACol=3) or (ACol=2) then
    AEditor:= edComboList;

end;

procedure TFormRecepRepartoExpress.spGridRepartoCalHasComboBox(Sender: TObject;
  ACol, ARow: Integer; var HasComboBox: Boolean);
begin
  inherited;
  HasComboBox := ((ACol = 2) or (ACol = 3));
end;

procedure TFormRecepRepartoExpress.spGridRepartoCalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    if (spGridRepartoCal.Col=3) or (spGridRepartoCal.Col=2) then
      begin
         spGridRepartoCal.Cells[spGridRepartoCal.Col,spGridRepartoCal.Row]:='-1';
      end;

end;

procedure TFormRecepRepartoExpress.SumarExecute(Sender: TObject);
var i :Integer;
Aux   :Extended;
AuxRc :Extended;

begin
  inherited;
  Aux:=0;
  AuxRc:=0;
  for i := 1 to spGridRepartoCal.RowCount-1 do
    begin
      if VarToStr(spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-1,I])<>'-' then
        Aux:=Aux + spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-1,I]
      else
        Aux:=Aux;
      if (VarToStr(spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-1,I])<>'-') and
         (spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-1,I]>0) then
        if (VarToStr(spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,I])='-') or (spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-2,I]<=0) then
            spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,I] := FloatToStr(spGridRepartoCal.CellValue[spGridRepartoCal.ColCount-1,I]);
      // esto lo agregue para reescribir el monto si aumenta el precio
      if (VarToStr(spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,I])<>'-') and (spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-2,I]>0) then
        if (spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-2,I]<spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-1,I]) and
            (spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-2,I]<=0) then
          spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,I] := FloatToStr(spGridRepartoCal.CellValue[spGridRepartoCal.ColCount-1,I]);

      if (VarToStr(spGridRepartoCal.Cells[spGridRepartoCal.ColCount-2,I])<>'-') and (spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-2,I]>0) then
        AuxRc:=AuxRc + spGridRepartoCal.CalculatedValue[spGridRepartoCal.ColCount-2,I];

    end;
  edTotal.Text  :=FormatFloat(',0.00',Aux);
  edTotalRc.Text:=FormatFloat(',0.00',AuxRc);

end;

procedure TFormRecepRepartoExpress.spAddClienteClick(Sender: TObject);
var c:integer;
SumaStr:string;
begin
  inherited;
  spGridRepartoCal.AddRow;
  spGridRepartoCal.Cells[0,spGridRepartoCal.RowCount-1]:=ceCliente.Text;
  spGridRepartoCal.Cells[1,spGridRepartoCal.RowCount-1]:=edNombreCliente.Text;
  C:=4;
  repeat
    spGridRepartoCal.Cells[c,spGridRepartoCal.RowCount-1]   := spGridRepartoCal.Cells[c,spGridRepartoCal.RowCount-2];
    spGridRepartoCal.Cells[c-2,spGridRepartoCal.RowCount-1] := '=$'+Letra[c]  + IntToStr(spGridRepartoCal.RowCount-1)+'*'+
                                                                '$'+Letra[c+1]+ IntToStr(spGridRepartoCal.RowCount-1);

    spGridRepartoCal.CellProperties[c-2,spGridRepartoCal.RowCount-1].ReadOnly:=True;
    spGridRepartoCal.CellProperties[c-2,spGridRepartoCal.RowCount-1].ReadOnly:=True;

    c := c +3;
  until c>spGridRepartoCal.ColCount-1;


  SumaStr:='';
  c:=3;
  repeat
    SumaStr:= SumaStr + Letra[c]  + IntToStr(spGridRepartoCal.RowCount-1)+'+';
    c:=c+3;
  until c>spGridRepartoCal.ColCount-1;

  spGridRepartoCal.Cells[UlCol-1,spGridRepartoCal.RowCount-1] := '='+SumaStr;
  spGridRepartoCal.CellProperties[UlCol-1,spGridRepartoCal.RowCount-1].ReadOnly:=True;

  SumaStr             :='';

  ceCliente.Text      :='';
  edNombreCliente.Text:='';
  {

   for r := 1 to spGridRepartoCal.RowCount do
        begin
          spGridRepartoCal.Cells[c-2,r] := '=$'+Letra[c]  + IntToStr(r)+'*'+
                                            '$'+Letra[c+1]+ IntToStr(r);
          spGridRepartoCal.CellProperties[c-2,r].ReadOnly:=True;

          spGridRepartoCal.Cells[c,r]    := FormatFloat(',0.00',CDSGrillaArtPRECIO_UNITARIO.Value);

        end;
      CDSGrillaArt.Next;
    end;
}



end;

procedure TFormRecepRepartoExpress.TraerGrillaRepartoExecute(Sender: TObject);
begin
  inherited;

  CDSRepartoDet.Close;
  CDSRepartoDet.Open;
  CDSRepartoDet.EmptyDataSet;

//  CDSGrilla.Close;
 // CDSGrilla.Params.ParamByName('LISTA').Value := CDSRepartoCabID_LISTA.Value;
//  CDSGrilla.Params.ParamByName('ZONA').Value  := CDSRepartoCabZONA.Value;
//  CDSGrilla.Open;

  CDSGridClientes.Close;
  CDSGridClientes.Params.ParamByName('LISTA').Value := CDSRepartoCabID_LISTA.Value;
  CDSGridClientes.Params.ParamByName('ZONA').Value  := CDSRepartoCabZONA.Value;
  CDSGridClientes.Open;

  CDSGrillaArt.Close;
  CDSGrillaArt.Params.ParamByName('LISTA').Value := CDSRepartoCabID_LISTA.Value;
  CDSGrillaArt.Params.ParamByName('ZONA').Value  := CDSRepartoCabZONA.Value;
  CDSGrillaArt.Open;

  ArmarGrilla.Execute;

end;

end.
