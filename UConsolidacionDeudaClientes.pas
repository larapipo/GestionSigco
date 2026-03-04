unit UConsolidacionDeudaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvDBGridFooter, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvComponentBase, JvDBGridExport, ExtCtrls, DB, DBClient, FMTBcd, SqlExpr,
  StdCtrls, Mask, JvExMask, JvToolEdit, JvExControls, JvGradient, Provider,
  JvDBLookup, JvBaseEdits, Buttons, IBGenerator, DBXCommon, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormConsolidacionDeudaCliente = class(TForm)
    Panel1: TPanel;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    dbgMovimientos: TJvDBGrid;
    DSClientes: TDataSource;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesSUCURSAL: TIntegerField;
    QClientesACTIVO: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    Panel3: TPanel;
    Label2: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    Label3: TLabel;
    dbcComprobantes: TJvDBLookupCombo;
    DSPComprobantes: TDataSetProvider;
    DSComprobantes: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesPREFIJO: TStringField;
    CDSComprobantesNUMERARCION_PROPIA: TStringField;
    CDSComprobantesNUMERO: TStringField;
    CDSComprobantesTOMA_NRO_DE: TIntegerField;
    CDSComprobantesAFECTA_IVA: TStringField;
    CDSComprobantesAFECTA_CC: TStringField;
    CDSComprobantesDESGLOZA_IVA: TStringField;
    QComprobantes: TFDQuery;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesLETRA: TStringField;
    QComprobantesPREFIJO: TStringField;
    QComprobantesNUMERARCION_PROPIA: TStringField;
    QComprobantesNUMERO: TStringField;
    QComprobantesTOMA_NRO_DE: TIntegerField;
    QComprobantesAFECTA_IVA: TStringField;
    QComprobantesAFECTA_CC: TStringField;
    QComprobantesDESGLOZA_IVA: TStringField;
    QComprobantesCOMPRA_VENTA: TStringField;
    QComprobantesCOPIAS: TIntegerField;
    QComprobantesREPORTE: TStringField;
    QComprobantesIMPRIME: TStringField;
    QComprobantesFISCAL: TStringField;
    QComprobantesNOMBREIMPRESORA: TStringField;
    QComprobantesPENDIENTEIMPRESION: TStringField;
    QComprobantesLINEAS_DETALLE: TSmallintField;
    QComprobantesCALCULA_IVA_ARTICULOS: TStringField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    edTotal: TJvCalcEdit;
    btConsolidar: TBitBtn;
    sbEstado: TStatusBar;
    DSPClientes: TDataSetProvider;
    Label4: TLabel;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    IBId_Ajuste: TIBGenerator;
    QInsertarRegistro: TFDQuery;
    spIngresarAjuste: TFDStoredProc;
    lbRegistros: TLabel;
    PopupMenu1: TPopupMenu;
    ExportarExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure btConsolidarClick(Sender: TObject);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure dbgMovimientosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FData:TClientDataSet;
  public
    { Public declarations }
  published
    property Data:TClientDataSet read FData Write FData;
  end;

var
  FormConsolidacionDeudaCliente: TFormConsolidacionDeudaCliente;

implementation

{$R *.dfm}
USES UDMain_FD, UBuscadorClientes, UAjustesCCClientes_2,
     UAplicacionesCCVta_2;

procedure TFormConsolidacionDeudaCliente.btConsolidarClick(Sender: TObject);
var i,Id_AjusteDestino,Lote:Integer;
    acumulado:extended;
    Ajustado :Boolean;
begin
  i        := 0;
  Lote     := 0;
  Ajustado := False;

  if (Trim(ceCliente.text)='') and (Trim(edNombreCliente.Text)='') then
    Raise Exception.Create('No hay Cliente destinatario asignado.....');

  if (dbcSucursal.KeyValue<=0) then
    Raise Exception.Create('No hay Sucursal Asignado.....');

  if (dbcComprobantes.KeyValue<=0) then
    Raise Exception.Create('No hay Comprobante.....');

  DSClientes.DataSet.First;
  Acumulado        := 0;
  // capturo un id para usarlo para el ajuste final
  Lote             := DMMain_FD.GetLoteAjustes;
  Id_AjusteDestino := IBId_Ajuste.IncrementFD(1);
  //************************************************
  DMMain_FD.fdcGestion.StartTransaction;
  try
    for i:=0 to dbgMovimientos.SelectedRows.Count-1 do
      begin
        {$IF CompilerVersion < 24}
          dbgMovimientos.DataSource.DataSet.GotoBookmark(Pointer(dbgMovimientos.SelectedRows.Items[i]));
        {$ELSE}
          dbgMovimientos.DataSource.DataSet.GotoBookmark((dbgMovimientos.SelectedRows.Items[i]));
        {$ENDIF}
        sbEstado.SimpleText:='Reg:'+IntToStr(i)+'/'+IntToStr(DSClientes.DataSet.RecordCount-1);
        Application.ProcessMessages;
        spIngresarAjuste.Close;
        spIngresarAjuste.ParamByName('ID_AJUSTE').Value     := -1;
        spIngresarAjuste.ParamByName('ID_COMPROB').AsInteger:= dbcComprobantes.KeyValue;
        spIngresarAjuste.ParamByName('CLIENTE').Value       := DSClientes.DataSet.FieldByName('CODIGO').AsString;
        if DSClientes.DataSet.FieldByName('SALDO').AsFloat > 0 then
          begin
            spIngresarAjuste.ParamByName('HABER').AsFloat        := Abs(DSClientes.DataSet.FieldByName('SALDO').AsFloat);
            spIngresarAjuste.ParamByName('DEBE').AsFloat         := 0;
          end
        else
          if DSClientes.DataSet.FieldByName('SALDO').AsFloat<  0 then
            begin
              spIngresarAjuste.ParamByName('HABER').AsFloat      := 0;
              spIngresarAjuste.ParamByName('DEBE').AsFloat       := Abs(DSClientes.DataSet.FieldByName('SALDO').AsFloat);
            end;

        spIngresarAjuste.ParamByName('DETALLE').Value       := Copy('Pasa a Cta:'+ceCliente.Text,1,20);
        spIngresarAjuste.ParamByName('FECHA_OP').Value      := Date;
        spIngresarAjuste.ParamByName('sucursal').AsInteger  := dbcSucursal.KeyValue;
        spIngresarAjuste.ParamByName('usuario').Value       := DMMain_FD.UsuarioActivo;
        spIngresarAjuste.ParamByName('observaciones').Value := 'Consolida Deuda en Cta:'+ceCliente.Text+' '+edNombreCliente.Text;
        spIngresarAjuste.ParamByName('FECHA_VTO').Value     := Date;
        spIngresarAjuste.ParamByName('LOTE').Value          := Lote;


        spIngresarAjuste.ExecProc;

        QInsertarRegistro.Close;
        QInsertarRegistro.ParamByName('ctadestino').Value      := Trim(ceCliente.Text);
        QInsertarRegistro.ParamByName('ctaorigen').Value       := DSClientes.DataSet.FieldByName('CODIGO').AsString;
        QInsertarRegistro.ParamByName('importe').Value         := DSClientes.DataSet.FieldByName('SALDO').AsFloat;
        QInsertarRegistro.ParamByName('idajustedestino').Value := Id_AjusteDestino;
        QInsertarRegistro.ExecSQL();

        Acumulado:=Acumulado+DSClientes.DataSet.FieldByName('SALDO').AsFloat;

        DMMain_FD.APlicar_Consolidacion(DSClientes.DataSet.FieldByName('CODIGO').AsString,spIngresarAjuste.ParamByName('ID_AJUSTE_REALIZADO').Value);

        spIngresarAjuste.Close;
        QInsertarRegistro.Close;
      end;

    if dbgMovimientos.SelectedRows.Count>0 then
      begin
        spIngresarAjuste.Close;
        spIngresarAjuste.ParamByName('id_ajuste').Value     := Id_AjusteDestino;
        spIngresarAjuste.ParamByName('id_comprob').Value    := dbcComprobantes.KeyValue;
        spIngresarAjuste.ParamByName('cliente').Value       := Trim(ceCliente.Text);
        if Acumulado>0 then
          begin
            spIngresarAjuste.ParamByName('haber').Value        := 0;
            spIngresarAjuste.ParamByName('debe').Value         := Abs(Acumulado);
          end
        else
        if Acumulado<0 then
          begin
            spIngresarAjuste.ParamByName('Debe').Value          := 0;
            spIngresarAjuste.ParamByName('haber').Value         := Abs(Acumulado);
          end;

        spIngresarAjuste.ParamByName('detalle').Value       := 'Cons.Deuda';
        spIngresarAjuste.ParamByName('fecha_op').Value      := Date;
        spIngresarAjuste.ParamByName('sucursal').Value      := dbcSucursal.KeyValue;
        spIngresarAjuste.ParamByName('usuario').Value       := DMMain_FD.UsuarioActivo;
        spIngresarAjuste.ParamByName('observaciones').Value := 'Consolidacion de Deuda';
        spIngresarAjuste.ParamByName('FECHA_VTO').Value     := Date;
        spIngresarAjuste.ParamByName('LOTE').Value          := Lote;
        spIngresarAjuste.ExecProc;
        spIngresarAjuste.Close;
      end;


    DMMain_FD.fdcGestion.Commit;
    Ajustado:=True;
  except
    Ajustado:=False;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Ingresaron los Ajustes en las Ctas ....');
  end;
  Close;
end;

procedure TFormConsolidacionDeudaCliente.ceClienteButtonClick(Sender: TObject);
begin
 IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        edNombreCliente.Text := QClientesNOMBRE.Value;

          ceCliente.SetFocus;
          ceCliente.SelectAll;


    END;
end;

procedure TFormConsolidacionDeudaCliente.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
 BEGIN
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
      IF NOT (QClientes.IsEmpty) THEN
        edNombreCliente.Text := QClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormConsolidacionDeudaCliente.dbcSucursalChange(Sender: TObject);
begin
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

procedure TFormConsolidacionDeudaCliente.dbgMovimientosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var campo:String;
begin
  try
    Campo := Field.FieldName;
    with dbgMovimientos.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormConsolidacionDeudaCliente.ExportarExcel1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
    
    begin
      JvDBGridExcelExport1.FileName         := SaveDialog1.FileName;
      jvDBGridExcelExport1.UseFieldGetText  := true;
      jvDBGridExcelExport1.Grid             := dbgMovimientos;
   //     JvProgressBar1.Position := 0;
     //   JvProgressBar1.Min      := 0;
       // JvProgressBar1.Max      := dbgDetalle.DataSource.DataSet.RecordCount-1;
        jvDBGridExcelExport1.ExportGrid;
    end;
end;

procedure TFormConsolidacionDeudaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormConsolidacionDeudaCliente.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSSucursal.Close;
  CDSSucursal.Open;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:=CDSSucursalCODIGO.Value;
  CDSComprobantes.Open;
end;

procedure TFormConsolidacionDeudaCliente.FormDestroy(Sender: TObject);
begin
  FormConsolidacionDeudaCliente:=Nil;
end;

procedure TFormConsolidacionDeudaCliente.FormResize(Sender: TObject);
begin
  if FormConsolidacionDeudaCliente<>nil then
    if FormConsolidacionDeudaCliente.Width<>644 then
     FormConsolidacionDeudaCliente.Width:=644;

end;

procedure TFormConsolidacionDeudaCliente.FormShow(Sender: TObject);
begin
  DSClientes.DataSet:=FData;
  DSClientes.DataSet.First;
  edTotal.Value:=0;
  DSClientes.DataSet.DisableControls;
  while Not(DSClientes.DataSet.Eof) do
    begin
      edTotal.Value:=edTotal.Value+DSClientes.DataSet.FieldByName('Saldo').AsFloat;
      DSClientes.DataSet.Next;
    end;
  DSClientes.DataSet.First;
  DSClientes.DataSet.EnableControls;
  lbRegistros.Caption:='Reg:'+IntToStr(DSClientes.DataSet.RecordCount);
end;

procedure TFormConsolidacionDeudaCliente.spSelectClick(Sender: TObject);
begin
 dbgMovimientos.SelectAll;
end;

procedure TFormConsolidacionDeudaCliente.spunselectClick(Sender: TObject);
begin
  dbgMovimientos.UnselectAll;
end;

end.
