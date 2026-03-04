unit URelacionStockProveedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, StdCtrls, ToolWin, ExtCtrls, Grids, Mask,
  DBGrids,  frxDBSet, frxClass,
  frxExportRTF, frxExportXLS, ImgList,Variants, JvComponentBase,  JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvExMask, JvToolEdit, SqlExpr, DBXCommon, System.Actions, JvAppStorage,
  JvAppIniStorage, Data.DB, Vcl.ComCtrls,
  Vcl.ActnList, Vcl.Buttons, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, frCoreClasses;

type
  TFormRelacionStockProveedor = class(TFormABMBase)
    DSPStockProveedores: TDataSetProvider;
    BuscarProvee: TAction;
    TraerStock: TAction;
    BuscarArticulo: TAction;
    pnCabecera: TPanel;
    Label1: TLabel;
    edNombreProveedor: TEdit;
    pnDetalle: TPanel;
    dbgArticulo: TDBGrid;
    DSStockProveedores: TDataSource;
    CDSStockProveedor: TClientDataSet;
    CDSStockProveedorCODIGO_STK: TStringField;
    CDSStockProveedorCODIGO_PROV: TStringField;
    CDSStockProveedorORDEN: TSmallintField;
    CDSStockProveedorMUESTRASTOCK: TStringField;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frDBStockProveedor: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Button1: TButton;
    ActualizaCosto: TAction;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    dtFecha: TDateTimePicker;
    TraeStockCompleto: TAction;
    lbModificado: TLabel;
    ceProveedor: TJvComboEdit;
    CDSStockProveedorULTIMA_ACTUALIZACION: TSQLTimeStampField;
    CDSStockGeneral: TClientDataSet;
    DSPStockGeneral: TDataSetProvider;
    CDSStockGeneralCODIGO_STK: TStringField;
    CDSStockGeneralDETALLE_STK: TStringField;
    QProveedor: TFDQuery;
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    QProveedorRAZON_SOCIAL: TStringField;
    QProveedorN_DE_CUENTA: TStringField;
    QProveedorID_COD_POSTAL: TIntegerField;
    QProveedorCOD_POSTAL: TStringField;
    QProveedorLOCALIDAD: TStringField;
    QProveedorDIRECCION: TStringField;
    QProveedorTELEFONO_1: TStringField;
    QProveedorTELEFONO_2: TStringField;
    QProveedorCONDICION_IVA: TIntegerField;
    QProveedorN_DE_CUIT: TStringField;
    QProveedorACTIVO: TStringField;
    QProveedorRETIENE_IVA: TStringField;
    QProveedorRETIENE_IB: TStringField;
    QProveedorRETIENE_GANANCIAS: TStringField;
    QProveedorIVA_SERVICIOS: TStringField;
    QProveedorPRECIOS_CON_IVA: TStringField;
    QProveedorOBSERVACIONES: TMemoField;
    QProveedorNOMBRE_REPRESENTANTE: TStringField;
    QProveedorDIRECCION_REPRESENTANTE: TStringField;
    QProveedorTELEFONO_REPRESENTANTE: TStringField;
    QProveedorTIPO_PROVEEDOR: TStringField;
    QProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    QProveedorFECHAALTA: TSQLTimeStampField;
    QProveedorSALDO_INICIAL: TFloatField;
    QProveedorID_PERC_IVA: TIntegerField;
    QProveedorID_PERC_IBB: TIntegerField;
    QProveedorID_PERC_IBB_2: TIntegerField;
    QProveedorID_PERC_IBB_3: TIntegerField;
    QProveedorRUBRO: TIntegerField;
    QProveedorID_FACTURAPORDEFECTO: TIntegerField;
    QProveedorID_FACTURACTDODEFECTO: TIntegerField;
    QProveedorEXENTO_GANACIA: TStringField;
    QProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    QProveedorEXENTO_RETENCION_IB: TStringField;
    QProveedorID_TASA_RETENCION_IB: TIntegerField;
    QProveedorNRO_IIBB: TStringField;
    QProveedorCORREO: TStringField;
    QProveedorCONV_MULTI: TStringField;
    QProveedorMONEDA_PRECIOS: TIntegerField;
    QProveedorRUBRO_GASTO: TStringField;
    QProveedorSUB_RUB_GASTOS: TStringField;
    QProveedorCON_OCOMPRA: TStringField;
    QProveedorAUTORIZADO_NOMBRE: TStringField;
    QProveedorAUTORIZADO_TIPODOC: TStringField;
    QProveedorAUTORIZADO_NRODOC: TStringField;
    QProveedorTELEDISCADO: TStringField;
    QProveedorDESPERIVA: TStringField;
    QProveedorDESPERIB: TStringField;
    QProveedorDESPERIB2: TStringField;
    QProveedorMUESTRADETALLERETIIBB: TStringField;
    QProveedorMUESTRATASARETIIBB: TFloatField;
    QProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    QStock: TFDQuery;
    QStockGen: TFDQuery;
    QStockProveedor: TFDQuery;
    CDSStockProveedorPRECIO: TFloatField;
    spActulizaCostoFD: TFDStoredProc;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockDETALLE_STK_ADICIONAL: TStringField;
    QStockCODIGO_BARRAS: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockMARCA_STK: TStringField;
    QStockTASA_IVA: TIntegerField;
    QStockSOBRETASA_IVA: TIntegerField;
    QStockCOSTO_GRAVADO_STK: TFloatField;
    QStockCOSTO_IVA: TFloatField;
    QStockCOSTO_FINAL: TFloatField;
    QStockCOSTO_EXENTO_STK: TFloatField;
    QStockCOSTO_TOTAL_STK: TFloatField;
    QStockREEMPLAZO_STK: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_IVA: TFloatField;
    QStockFIJACION_PRECIO_FINAL: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    QStockFUAP: TSQLTimeStampField;
    QStockUNIDAD: TStringField;
    QStockCONTROLASTOCK: TStringField;
    QStockCODIGO_PROVEEDOR: TStringField;
    QStockCLASE_ARTICULO: TIntegerField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockCON_IMP_INT: TStringField;
    QStockIMPUESTO_INTERNOS: TFloatField;
    QStockGRAVADO_IB: TStringField;
    QStockTASA_IB: TIntegerField;
    QStockACTUALIZACOSTO: TStringField;
    QStockDEPRODUCCION: TStringField;
    QStockPRODUCCIONDIRECTA: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTENIDO_COMPRA: TFloatField;
    QStockCONTROL_SERIE: TStringField;
    QStockUSA_CODIGOBARRA: TStringField;
    QStockUNIDAD_ULTIMAUSADA: TStringField;
    QStockID_TABLAPRECIOS: TIntegerField;
    QStockID_TABLAPRECIOSDETALLE: TIntegerField;
    QStockCODIGO_PRECIO: TIntegerField;
    QStockFECHA_ALTA: TSQLTimeStampField;
    QStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    QStockCOSTO_EXENTO_SOMBRA: TFloatField;
    QStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    QStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    QStockMONEDA: TIntegerField;
    QStockCOSTO_GRAVADO_P: TFloatField;
    QStockCOSTO_EXENTO_P: TFloatField;
    QStockCOSTO_TOTAL_P: TFloatField;
    QStockPOSICION: TStringField;
    QStockPRESENTACION_UNIDAD: TStringField;
    QStockPRESENTACION_CANTIDAD: TFloatField;
    QStockEDITAPRECIO: TStringField;
    QStockEDITADETALLE: TStringField;
    QStockURL: TStringField;
    QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QStockCOMANDA: TStringField;
    QStockPORCENTAJE_SOBRECOSTO: TFloatField;
    QStockRUBRO_GASTO: TStringField;
    QStockRUBRO_CTA_GASTO: TStringField;
    QStockPUBLICAR_WEB: TStringField;
    QStockGTIA_MESES: TIntegerField;
    QStockGARANTIAOFICIAL: TStringField;
    QStockADICIONAL_SOBRECOSTO: TFloatField;
    QStockIMPRIMIR_LSTPRECIOS: TStringField;
    QStockCONTROL_TRAZABILIDAD: TStringField;
    QStockIVA_MODIFICADO: TStringField;
    QStockSIGLAS: TStringField;
    QStockPRESENTACION_2_CANT: TFloatField;
    QStockTASA_MANUFACTURA: TStringField;
    QStockPLU: TStringField;
    QStockACOPIABLE: TStringField;
    QStockCIKO_TIPO: TIntegerField;
    QStockLARGO_1: TFloatField;
    QStockLARGO_2: TFloatField;
    QStockLARGO_3: TFloatField;
    QStockROTURA_1: TFloatField;
    QStockROTURA_2: TFloatField;
    QStockCIMA: TFloatField;
    QStockBASE: TFloatField;
    QStockVOLUMEN: TFloatField;
    QStockPESO: TFloatField;
    QStockDIAMETRO_OLLA: TFloatField;
    QStockALTO_ACC: TFloatField;
    QStockMUESTRARUBRO: TStringField;
    QStockMUESTRASUBRUBRO: TStringField;
    QStockMUESTRAMARCA: TStringField;
    QStockMUESTRATASA: TStringField;
    QStockMUESTRATASAPORCENTAJE: TFloatField;
    QStockMUESTRASOBRETASA: TStringField;
    QStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    QStockMUESTRATASAIB: TFloatField;
    QStockMUESTRATABLAPRECIODETALLE: TStringField;
    QStockMUESTRATABLAPRECIO1: TFloatField;
    QStockMUESTRATABLAPRECIO2: TFloatField;
    QStockProveedorCODIGO_STK: TStringField;
    QStockProveedorCODIGO_PROV: TStringField;
    QStockProveedorPRECIO: TFloatField;
    QStockProveedorULTIMA_ACTUALIZACION: TSQLTimeStampField;
    QStockProveedorORDEN: TSmallintField;
    QStockProveedorMUESTRASTOCK: TStringField;
    Eporcentaje: TEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure TraerStockExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure ComboEdit1ButtonClick(Sender: TObject);
    procedure dbgArticuloKeyPress(Sender: TObject; var Key: Char);
    procedure dbgArticuloEditButtonClick(Sender: TObject);
    procedure dbgArticuloColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgArticuloEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure pnDetalleEnter(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure CDSStokProveedoresBeforeInsert(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgArticuloDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgArticuloDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CDSStockProveedorCODIGO_STKSetText(Sender: TField;
      const Text: String);
    procedure dbgArticuloEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgArticuloStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dbgArticuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CDSStockProveedorNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure dbgArticuloTitleClick(Column: TColumn);
    procedure ActualizaCostoExecute(Sender: TObject);
    procedure DSStockProveedoresStateChange(Sender: TObject);
    procedure TraeStockCompletoExecute(Sender: TObject);
    procedure CDSStockProveedorBeforeEdit(DataSet: TDataSet);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EporcentajeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo:String;
    Fecha :TDate;
    precio:Real;
    OrdenOld,OrdenNew:Integer;
    Imprime:Boolean;
    Modificado:Boolean;
    function AsignarArticulo(dato:String):Boolean;
  end;
 type TGridHack=class(TDBGrid);

var
  FormRelacionStockProveedor: TFormRelacionStockProveedor;

implementation

uses UDMain_FD, UArticulosAModificarPrecio, UBuscadorArticulos,
  UBuscadorProveedor;
{$R *.DFM}

function TFormRelacionStockProveedor.AsignarArticulo(Dato:String):Boolean;
begin
  QStock.Close;
  QStock.ParamByName('Codigo').Value:=Dato;
  QStock.Open;
  if Not(QStock.IsEmpty) Then
    BEGIN
      Result:=True;
      CDSStockProveedorMUESTRASTOCK.Value := QStockDETALLE_STK.Value;
    end
  else
    begin
      Result:=False;
      CDSStockProveedorMUESTRASTOCK.Value:='';
    end;
end;

procedure TFormRelacionStockProveedor.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSStockProveedor.Open;
  lbModificado.Visible:=False;
end;

procedure TFormRelacionStockProveedor.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormRelacionStockProveedor.ceProveedorKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) + ceProveedor.Text;
      ceProveedor.Text := Dato;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value := Dato;
      QProveedor.Open;
      IF NOT (QProveedor.IsEmpty) THEN
        edNombreProveedor.Text := QProveedorNOMBRE.Value;
      TraerStock.Execute;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END;
END;

procedure TFormRelacionStockProveedor.TraerStockExecute(Sender: TObject);
begin
  inherited;
  CDSStockProveedor.Close;
  CDSStockProveedor.Params.ParamByName('codigo').AsString:=Trim(ceProveedor.Text);
  CDSStockProveedor.Open;
end;

procedure TFormRelacionStockProveedor.BuscarArticuloExecute(
  Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
     // FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    CDSStockProveedorCODIGO_STKSetText(CDSStockProveedorCODIGO_STK, FormBuscadorArticulos.Codigo);
//  CDSBuscaStock.Close;
end;

procedure TFormRelacionStockProveedor.ComboEdit1ButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormRelacionStockProveedor.dbgArticuloKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    begin
      Key:=#0;
      if dbgArticulo.SelectedIndex<4 Then
        dbgArticulo.SelectedIndex:=dbgArticulo.SelectedIndex+1
      else
        begin
          dbgArticulo.DataSource.DataSet.Append;
          dbgArticulo.SelectedIndex:=1;
        end;
    end
  else
    if Key=#10 Then
      begin
        key:=#0;
        BuscarArticulo.Execute;
      end;

end;

procedure TFormRelacionStockProveedor.dbgArticuloEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormRelacionStockProveedor.dbgArticuloColEnter(Sender: TObject);
begin
  inherited;
  if dbgArticulo.SelectedIndex=0 Then
    dbgArticulo.SelectedIndex:=1;
  if dbgArticulo.SelectedIndex=2 Then
    dbgArticulo.SelectedIndex:=3;
end;

procedure TFormRelacionStockProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRelacionStockProveedor.dbgArticuloEnter(Sender: TObject);
begin
  inherited;
  dbgArticulo.SelectedIndex:=1;
end;

procedure TFormRelacionStockProveedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRelacionStockProveedor:=nil;
end;

procedure TFormRelacionStockProveedor.FormShow(Sender: TObject);
begin
  inherited;
  ceProveedor.SetFocus;
  Imprime:=True;
  dtFecha.Date:=Date;
end;

procedure TFormRelacionStockProveedor.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceProveedor.Text := FormBuscadorProveedor.Codigo;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value :=FormBuscadorProveedor.Codigo;
      QProveedor.Open;
      IF NOT (QProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := QProveedorNOMBRE.Value;
          TraerStock.Execute;
          Modificado:=False;
          lbModificado.Visible:=False;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
end;

procedure TFormRelacionStockProveedor.pnDetalleEnter(Sender: TObject);
begin
  inherited;
  if edNombreProveedor.Text<>'' Then
    begin
      Buscar.Enabled:=False;
      dbgArticulo.SetFocus;
    end
  else
    begin
      ShowMessage('No hay Proveedor Seleccionado');
      ceProveedor.SetFocus;
    end;
end;

procedure TFormRelacionStockProveedor.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormRelacionStockProveedor.CancelarExecute(Sender: TObject);
begin
  //inherited;
  CDSStockProveedor.Close;
  CDSStockProveedor.Params.ParamByName('codigo').Clear;
  CDSStockProveedor.Open;
  Buscar.Enabled:=True;
  ceProveedor.Text      :='';
  edNombreProveedor.Text:='';
end;

procedure TFormRelacionStockProveedor.CDSStokProveedoresBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if edNombreProveedor.Text='' Then
    begin
      ShowMessage('No hay Proveedor seleccionado...');
      sysUtils.Abort;
    end;
end;

procedure TFormRelacionStockProveedor.ConfirmaExecute(Sender: TObject);
begin
 // inherited;

  DatoNew:=ceProveedor.Text;
  if CDSStockProveedor.State<>dsBrowse Then
    CDSStockProveedor.Post;
  DMMain_FD.fdcGestion.StartTransaction;
  Try
    CDSStockProveedor.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
    CDSStockProveedor.Close;
    CDSStockProveedor.Params.ParamByName('codigo').Clear;
    CDSStockProveedor.Open;
    TraerStock.Execute;
    Buscar.Enabled       := True;
    Imprime              := True;
    Modificado           := False;
    lbModificado.Visible := False;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Operacion no Realizada....');
  end;

end;

procedure TFormRelacionStockProveedor.dbgArticuloDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var coord:TGridCoord;
begin
  inherited;
  if (y>15) and (dbgArticulo.DataSource.DataSet.RecordCount>0) Then
    begin
      IF Source=dbgArticulo THEN
        accept:=True
      ELSE
        Accept:=False;
      coord:= dbgArticulo.MouseCoord(x,y);
      if coord.x>0 Then
       TGridHack(dbgArticulo).MouseDown(mbLeft,[],x,y);
    end;
end;

procedure TFormRelacionStockProveedor.dbgArticuloDragDrop(Sender,
  Source: TObject; X, Y: Integer);
VAR Orden:Integer;
begin
  inherited;
  if (y>15) and (dbgArticulo.DataSource.DataSet.RecordCount>0) Then
  begin
    dbgArticulo.DataSource.DataSet.DisableControls;
    OrdenNew:=dbgArticulo.DataSource.DataSet.FieldByName('Orden').Value;

    dbgArticulo.DataSource.DataSet.Locate('orden',OrdenOld,[]);
    dbgArticulo.DataSource.DataSet.Delete;
    Orden:=1;
    dbgArticulo.DataSource.DataSet.First;
    while not(dbgArticulo.DataSource.DataSet.Eof) DO
      begin
        dbgArticulo.DataSource.DataSet.Edit;
        dbgArticulo.DataSource.DataSet.FieldByName('Orden').Value:=Orden;
        Inc(Orden);
        dbgArticulo.DataSource.DataSet.Next;
      end;

    dbgArticulo.DataSource.DataSet.Last;
    while not(dbgArticulo.DataSource.DataSet.Bof) DO
      begin
        if dbgArticulo.DataSource.DataSet.FieldByName('Orden').Value>=OrdenNew Then
          Begin
            dbgArticulo.DataSource.DataSet.Edit;
            dbgArticulo.DataSource.DataSet.FieldByName('Orden').Value:=dbgArticulo.DataSource.DataSet.FieldByName('Orden').Value+1;
          end;
        dbgArticulo.DataSource.DataSet.Prior;
      end;
    dbgArticulo.DataSource.DataSet.Insert;
    CDSStockProveedorCODIGO_STKSetText(CDSStockProveedorCODIGO_STK,Codigo);
    CDSStockProveedorORDEN.Value     :=OrdenNew;
    CDSStockProveedorPRECIO.AsFloat  :=precio;
    CDSStockProveedorULTIMA_ACTUALIZACION.AsDateTime:=Fecha;

    dbgArticulo.DataSource.DataSet.EnableControls;
  end;
end;

procedure TFormRelacionStockProveedor.CDSStockProveedorCODIGO_STKSetText(
  Sender: TField; const Text: String);
VAR Flag:String;
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Flag:='';
      if CDSStockProveedor.State=dsBrowse Then
        CDSStockProveedor.Edit;
      Sender.AsString:=copy('00000000',1,8-Length(Text))+Text;
      Flag:=VarToStr(CDSStockProveedor.Lookup('Codigo_stk;Codigo_prov',VarArrayOf([Sender.AsString,CDSStockProveedorCODIGO_PROV.Value]),'MuestraStock'));
      if CDSStockProveedor.State=dsBrowse Then
        CDSStockProveedor.Edit;
      if (Flag='') Then
        begin
          if Not(AsignarArticulo(Sender.AsString)) Then
            begin
              Sender.AsString:='';
              ShowMessage('Dato no Valido');
            end;
         end
       else
         begin
           ShowMessage('Ya está ingresado');
           Sender.AsString:='';
           CDSStockProveedor.DELETE;
//           SysUtils.Abort;
         end;
    end;
end;

procedure TFormRelacionStockProveedor.dbgArticuloEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
  inherited;
  if dbgArticulo.DataSource.DataSet.State<>dsBrowse Then
    dbgArticulo.DataSource.DataSet.post;
end;

procedure TFormRelacionStockProveedor.dbgArticuloStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  inherited;
  if dbgArticulo.DataSource.DataSet.FieldByName('codigo_stk').AsString<>'' Then
    begin
      Codigo  :=dbgArticulo.DataSource.DataSet.FieldByName('codigo_stk').Value;
      Precio  :=dbgArticulo.DataSource.DataSet.FieldByName('Precio').Value;
      Fecha   :=dbgArticulo.DataSource.DataSet.FieldByName('Ultima_Actualizacion').Value;
      OrdenOld:=dbgArticulo.DataSource.DataSet.FieldByName('Orden').Value;
    end;
    
  //  dbgArticulo.DataSource.DataSet.Delete;
end;

procedure TFormRelacionStockProveedor.dbgArticuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (y>15) and (dbgArticulo.DataSource.DataSet.RecordCount>0) Then
    begin
      IF (Button=mbLeft) and (Shift=[ssShift,ssLeft]) then
        dbgArticulo.beginDrag(True)
      else
        dbgArticulo.beginDrag(False);
 end;
end;

procedure TFormRelacionStockProveedor.CDSStockProveedorNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSStockProveedorULTIMA_ACTUALIZACION.AsDateTime := Date;
  CDSStockProveedorORDEN.Value                     := CDSStockProveedor.RecordCount+1;
  CDSStockProveedorCODIGO_PROV.Value               := ceProveedor.Text;
  CDSStockProveedorPRECIO.AsFloat                  := 0;
end;

procedure TFormRelacionStockProveedor.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
// if (Key = #13) and
//    (not (ActiveControl is TComboEdit)) then
//     inherited;
end;

procedure TFormRelacionStockProveedor.FormResize(Sender: TObject);
begin
  inherited;
  if FormRelacionStockProveedor<>nil then
    if FormRelacionStockProveedor.Width<>687 then
      FormRelacionStockProveedor.Width:=687;
end;

procedure TFormRelacionStockProveedor.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if imprime=True Then
    begin
      if Not(CDSStockProveedor.IsEmpty) Then
        begin
          frxReport.PrintOptions.Printer:=PrNomListados;
          frxReport.SelectPrinter;
          frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaPreciosProveedor.fr3');
          frxReport.Variables['Codigo']   :=''''+ceProveedor.Text+'''';
          frxReport.Variables['Nombre']   :=''''+edNombreProveedor.Text+'''';

          frxReport.ShowReport;
        end
      else ShowMessage('No Hay datos para Listar......');
    end
  else
    ShowMessage('Se detecto modificaciones o nuevos registro... hasta que no confirme los cambios no se puede imprimir...');
end;

procedure TFormRelacionStockProveedor.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormRelacionStockProveedor.dbgArticuloTitleClick(
  Column: TColumn);
begin
  inherited;
  CDSStockProveedor.IndexFieldNames:=Column.FieldName;
end;

procedure TFormRelacionStockProveedor.ActualizaCostoExecute(
  Sender: TObject);
begin
  inherited;
  if Modificado=False Then
    begin
      if not(Assigned(FormArticulosAModificarPrecio)) Then
        FormArticulosAModificarPrecio:=TFormArticulosAModificarPrecio.Create(Application);
      FormArticulosAModificarPrecio.CDSArticulos.Close;
      FormArticulosAModificarPrecio.CDSArticulos.Params.ParamByName('Fecha').Value:=dtFecha.date;
      FormArticulosAModificarPrecio.CDSArticulos.Open;
      FormArticulosAModificarPrecio.ShowModal;
      if FormArticulosAModificarPrecio.Tag=1 Then
        begin
          spActulizaCostoFD.Close;
          spActulizaCostoFD.ParamByName('fecha').Value:=dtFecha.Date;
          spActulizaCostoFD.ExecProc;
          spActulizaCostoFD.Close;
        end
      else
        ShowMessage('Modificación cancelada ....');
    end
  else
    ShowMessage('Hubo cambios no gravados... apliquelos y despues actualice ....');
end;

procedure TFormRelacionStockProveedor.DSStockProveedoresStateChange(
  Sender: TObject);
begin
  inherited;
  Imprimir.Enabled          :=DSStockProveedores.State=dsBrowse;
  TraeStockCompleto.Enabled :=DSStockProveedores.State=dsBrowse;
  ActualizaCosto.Enabled    :=DSStockProveedores.State=dsBrowse;
end;

procedure TFormRelacionStockProveedor.EporcentajeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
  begin
    if ((Trim(Eporcentaje.text)<>'') and (StrToFloat(Eporcentaje.text)>0))  then
      begin
        Screen.Cursor:=crHourGlass;
        CDSStockProveedor.First;
        CDSStockProveedor.DisableControls;
        while (not CDSStockProveedor.Eof) do
          begin
            CDSStockProveedor.Edit;
            CDSStockProveedorPRECIO.asfloat:=CDSStockProveedorPRECIO.AsFloat *StrToFloat(Eporcentaje.text);
            CDSStockProveedor.next;
          end;
        Screen.Cursor:=crDefault;
        CDSStockProveedor.First;
        CDSStockProveedor.EnableControls;
      end;
  end;
end;

procedure TFormRelacionStockProveedor.TraeStockCompletoExecute(
  Sender: TObject);
begin
  inherited;
  CDSStockGeneral.Close;
  CDSStockGeneral.Open;
  while Not(CDSStockGeneral.Eof) do
    begin
      CDSStockProveedor.Insert;
      CDSStockProveedorCODIGO_STK.Value  := CDSStockGeneralCODIGO_STK.Value;
      CDSStockProveedorMUESTRASTOCK.Value:= CDSStockGeneralDETALLE_STK.Value;
      CDSStockProveedorPRECIO.AsFloat    := 99999.99;
      CDSStockProveedor.Post;
      CDSStockGeneral.Next;
    end;
  CDSStockGeneral.Close;
end;

procedure TFormRelacionStockProveedor.CDSStockProveedorBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  Imprime:=False;
  Modificado:=True;
  lbModificado.Visible:=True;
end;

end.