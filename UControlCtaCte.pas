unit UControlCtaCte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, Db, ActnList, ImgList,
  StdCtrls, Buttons, ToolWin, ExtCtrls, Provider, DBClient, Grids, DBGrids,
  Mask,  DBCtrls, Menus, JvComponentBase,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, JvExDBGrids, JvDBGrid, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormControlCC = class(TFormABMBase)
    DSFacturas: TDataSource;
    DSMovimientos: TDataSource;
    DSPFacturas: TDataSetProvider;
    DSPMovimientos: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    BuscarCliente: TAction;
    CDSFacturas: TClientDataSet;
    CDSMovimientos: TClientDataSet;
    CDSMovimientosID_MOVCCVTA: TIntegerField;
    CDSMovimientosID_CPBTE: TIntegerField;
    CDSMovimientosCLIENTE: TStringField;
    CDSMovimientosTIPOCPBTE: TStringField;
    CDSMovimientosCLASECPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosDETALLE: TStringField;
    DSPAplicaciones: TDataSetProvider;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    dbgFcVta: TDBGrid;
    edNombreCliente: TEdit;
    CDSAplicaciones: TClientDataSet;
    DSAplicaciones: TDataSource;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    dbgFcComp: TDBGrid;
    edNombreProveedor: TEdit;
    BuscarProveedor: TAction;
    CDSProvee: TClientDataSet;
    DSPProvee: TDataSetProvider;
    CDSFcComp: TClientDataSet;
    CDSMovComp: TClientDataSet;
    CDSAplCompra: TClientDataSet;
    DSPFcComp: TDataSetProvider;
    DSPMovComp: TDataSetProvider;
    DSPAplCompra: TDataSetProvider;
    DSFcComp: TDataSource;
    DSMovComp: TDataSource;
    DSAplCompra: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    CDSACtaVta: TClientDataSet;
    DSPACtaVta: TDataSetProvider;
    DBGrid3: TDBGrid;
    DSACtaVta: TDataSource;
    CDSACtaComp: TClientDataSet;
    DSPACtaComp: TDataSetProvider;
    DSACtaComp: TDataSource;
    DBGrid4: TDBGrid;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Delete2: TMenuItem;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    CDSACtaVtaID_MOV: TIntegerField;
    CDSACtaVtaFECHA: TSQLTimeStampField;
    CDSACtaVtaCLIENTE: TStringField;
    CDSACtaVtaID_CPBTE: TIntegerField;
    CDSACtaVtaTIPOCPBTE: TStringField;
    CDSACtaVtaCLASECPBTE: TStringField;
    CDSACtaVtaNUMEROCPBTE: TStringField;
    CDSACtaVtaDETALLE: TStringField;
    CDSACtaCompID_MOV: TIntegerField;
    CDSACtaCompFECHA: TSQLTimeStampField;
    CDSACtaCompPROVEEDOR: TStringField;
    CDSACtaCompID_CPBTE: TIntegerField;
    CDSACtaCompTIPOCPBTE: TStringField;
    CDSACtaCompCLASECPBTE: TStringField;
    CDSACtaCompNUMEROCPBTE: TStringField;
    CDSACtaCompDETALLE: TStringField;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasNROCPBTE: TStringField;
    CDSFacturasLETRAFAC: TStringField;
    CDSFacturasSUCFAC: TStringField;
    CDSFacturasNUMEROFAC: TStringField;
    CDSFacturasNOMBRE: TStringField;
    CDSFacturasRAZONSOCIAL: TStringField;
    CDSFacturasDIRECCION: TStringField;
    CDSFacturasCPOSTAL: TStringField;
    CDSFacturasLOCALIDAD: TStringField;
    CDSMovimientosFECHAVTA: TSQLTimeStampField;
    CDSMovimientosFECHAVTO: TSQLTimeStampField;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCVTA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesCLIENTE: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesDETALLE: TStringField;
    CDSAplicacionesCONCILIADO: TStringField;
    CDSFcCompID_FC: TIntegerField;
    CDSFcCompTIPOCPBTE: TStringField;
    CDSFcCompCLASECPBTE: TStringField;
    CDSFcCompNROCPBTE: TStringField;
    CDSFcCompCODIGO: TStringField;
    CDSFcCompLETRAFAC: TStringField;
    CDSFcCompSUCFAC: TStringField;
    CDSFcCompNUMEROFAC: TStringField;
    CDSFcCompNOMBRE: TStringField;
    CDSFcCompRAZONSOCIAL: TStringField;
    CDSFcCompDIRECCION: TStringField;
    CDSFcCompCPOSTAL: TStringField;
    CDSFcCompLOCALIDAD: TStringField;
    CDSFcCompTIPOIVA: TIntegerField;
    CDSFcCompCUIT: TStringField;
    CDSFcCompFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompFECHAVTO: TSQLTimeStampField;
    CDSFcCompCONDICIONCOMPRA: TIntegerField;
    CDSFcCompANULADO: TStringField;
    CDSFcCompORDENCOMPRA: TStringField;
    CDSFcCompAPLICA: TStringField;
    CDSFcCompOBSERVACION1: TStringField;
    CDSFcCompOBSERVACION2: TStringField;
    CDSFcCompSUCURSALCOMPRA: TIntegerField;
    CDSFcCompZONA: TIntegerField;
    CDSFcCompDEPOSITO: TIntegerField;
    CDSFcCompDESGLOZAIVA: TStringField;
    CDSFcCompCALCULA_SOBRETASA: TStringField;
    CDSFcCompFECHAFISCAL: TSQLTimeStampField;
    CDSFcCompCPBTE_INTERNO: TStringField;
    CDSFcCompINGRESA_A_CTACTE: TStringField;
    CDSFcCompINGRESA_LIBRO_IVA: TStringField;
    CDSFcCompREDUCIDA: TStringField;
    CDSFcCompTIPO_PROVEEDOR: TStringField;
    CDSFcCompJURIDICCION: TIntegerField;
    CDSFcCompFECHA_HORA: TSQLTimeStampField;
    CDSFcCompUSUARIO: TStringField;
    CDSMovCompID_MOVCCCOMPRA: TIntegerField;
    CDSMovCompID_CPBTE: TIntegerField;
    CDSMovCompPROVEEDOR: TStringField;
    CDSMovCompFECHACOMPRA: TSQLTimeStampField;
    CDSMovCompFECHAVTO: TSQLTimeStampField;
    CDSMovCompTIPOCPBTE: TStringField;
    CDSMovCompCLASECPBTE: TStringField;
    CDSMovCompNROCPBTE: TStringField;
    CDSMovCompDETALLE: TStringField;
    CDSAplCompraID_MOV: TIntegerField;
    CDSAplCompraID_MOVCCCOMPRA: TIntegerField;
    CDSAplCompraFECHA: TSQLTimeStampField;
    CDSAplCompraPROVEEDOR: TStringField;
    CDSAplCompraID_CPBTE: TIntegerField;
    CDSAplCompraTIPOCPBTE: TStringField;
    CDSAplCompraCLASECPBTE: TStringField;
    CDSAplCompraNUMEROCPBTE: TStringField;
    CDSAplCompraAPLICA_ID_CPBTE: TIntegerField;
    CDSAplCompraAPLICA_TIPOCPBTE: TStringField;
    CDSAplCompraAPLICA_CLASECPBTE: TStringField;
    CDSAplCompraAPLICA_NROCPBTE: TStringField;
    CDSAplCompraDETALLE: TStringField;
    CDSAplCompraCONCILIADO: TStringField;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSProveeCODIGO: TStringField;
    CDSProveeNOMBRE: TStringField;
    CDSProveeRAZON_SOCIAL: TStringField;
    CDSProveeN_DE_CUENTA: TStringField;
    spReAsignaSaldos: TSQLStoredProc;
    ceCliente: TJvComboEdit;
    ceProveedor: TJvComboEdit;
    dbgMovVta: TJvDBGrid;
    dbgAplicacionesVta: TDBGrid;
    dbgAplicacionesCompra: TDBGrid;
    dbgMovComp: TDBGrid;
    QMovimientos: TFDQuery;
    QMovimientosID_MOVCCVTA: TIntegerField;
    QMovimientosID_CPBTE: TIntegerField;
    QMovimientosCLIENTE: TStringField;
    QMovimientosFECHAVTA: TSQLTimeStampField;
    QMovimientosFECHAVTO: TSQLTimeStampField;
    QMovimientosTIPOCPBTE: TStringField;
    QMovimientosCLASECPBTE: TStringField;
    QMovimientosNROCPBTE: TStringField;
    QMovimientosDEBE: TFloatField;
    QMovimientosHABER: TFloatField;
    QMovimientosSALDO: TFloatField;
    QMovimientosDETALLE: TStringField;
    QMovimientosNRO_CUOTA: TIntegerField;
    QMovimientosID_MONEDA: TIntegerField;
    QMovimientosCOTIZACION: TFloatField;
    CDSMovimientosDEBE: TFloatField;
    CDSMovimientosHABER: TFloatField;
    CDSMovimientosSALDO: TFloatField;
    QFacturas: TFDQuery;
    CDSFacturasTOTAL: TFloatField;
    QACtaComp: TFDQuery;
    QACtaCompID_MOV: TIntegerField;
    QACtaCompFECHA: TSQLTimeStampField;
    QACtaCompPROVEEDOR: TStringField;
    QACtaCompID_CPBTE: TIntegerField;
    QACtaCompTIPOCPBTE: TStringField;
    QACtaCompCLASECPBTE: TStringField;
    QACtaCompNUMEROCPBTE: TStringField;
    QACtaCompIMPORTE: TFloatField;
    QACtaCompDETALLE: TStringField;
    CDSACtaCompIMPORTE: TFloatField;
    QACtaVta: TFDQuery;
    QACtaVtaID_MOV: TIntegerField;
    QACtaVtaFECHA: TSQLTimeStampField;
    QACtaVtaCLIENTE: TStringField;
    QACtaVtaID_CPBTE: TIntegerField;
    QACtaVtaTIPOCPBTE: TStringField;
    QACtaVtaCLASECPBTE: TStringField;
    QACtaVtaNUMEROCPBTE: TStringField;
    QACtaVtaIMPORTE: TFloatField;
    QACtaVtaDETALLE: TStringField;
    CDSACtaVtaIMPORTE: TFloatField;
    QAplCompra: TFDQuery;
    QAplCompraID_MOV: TIntegerField;
    QAplCompraID_MOVCCCOMPRA: TIntegerField;
    QAplCompraFECHA: TSQLTimeStampField;
    QAplCompraPROVEEDOR: TStringField;
    QAplCompraID_CPBTE: TIntegerField;
    QAplCompraTIPOCPBTE: TStringField;
    QAplCompraCLASECPBTE: TStringField;
    QAplCompraNUMEROCPBTE: TStringField;
    QAplCompraIMPORTE: TFloatField;
    QAplCompraAPLICA_ID_CPBTE: TIntegerField;
    QAplCompraAPLICA_TIPOCPBTE: TStringField;
    QAplCompraAPLICA_CLASECPBTE: TStringField;
    QAplCompraAPLICA_NROCPBTE: TStringField;
    QAplCompraDETALLE: TStringField;
    QAplCompraAPLICA_NETO: TFloatField;
    QAplCompraCONCILIADO: TStringField;
    QAplCompraAPLICA_IVA: TFloatField;
    CDSAplCompraIMPORTE: TFloatField;
    CDSAplCompraAPLICA_NETO: TFloatField;
    QMovComp: TFDQuery;
    QMovCompID_MOVCCCOMPRA: TIntegerField;
    QMovCompID_CPBTE: TIntegerField;
    QMovCompPROVEEDOR: TStringField;
    QMovCompFECHACOMPRA: TSQLTimeStampField;
    QMovCompFECHAVTO: TSQLTimeStampField;
    QMovCompTIPOCPBTE: TStringField;
    QMovCompCLASECPBTE: TStringField;
    QMovCompNROCPBTE: TStringField;
    QMovCompDEBE: TFloatField;
    QMovCompHABER: TFloatField;
    QMovCompSALDO: TFloatField;
    QMovCompDETALLE: TStringField;
    QMovCompID_MONEDA: TIntegerField;
    QMovCompCOTIZACION: TFloatField;
    CDSMovCompDEBE: TFloatField;
    CDSMovCompHABER: TFloatField;
    CDSMovCompSALDO: TFloatField;
    QFcComp: TFDQuery;
    CDSFcCompTOTAL: TFloatField;
    CDSFcCompDEBE: TFloatField;
    QAplicaciones: TFDQuery;
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesID_MOVCCVTA: TIntegerField;
    QAplicacionesFECHA: TSQLTimeStampField;
    QAplicacionesCLIENTE: TStringField;
    QAplicacionesID_CPBTE: TIntegerField;
    QAplicacionesTIPOCPBTE: TStringField;
    QAplicacionesCLASECPBTE: TStringField;
    QAplicacionesNUMEROCPBTE: TStringField;
    QAplicacionesIMPORTE: TFloatField;
    QAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    QAplicacionesAPLICA_TIPOCPBTE: TStringField;
    QAplicacionesAPLICA_CLASECPBTE: TStringField;
    QAplicacionesAPLICA_NROCPBTE: TStringField;
    QAplicacionesDETALLE: TStringField;
    QAplicacionesCONCILIADO: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    QOPagos: TFDQuery;
    QSuma: TFDQuery;
    QSumaSUM: TFloatField;
    QSumaComp: TFDQuery;
    QSumaCompSUM: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSAplCompraAfterDelete(DataSet: TDataSet);
    procedure CDSAplicacionesAfterDelete(DataSet: TDataSet);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure ConfirmaExecute(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgMovVtaDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbgMovCompDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlCC: TFormControlCC;

implementation

uses  UDMain_FD,UBuscadorClientes, UBuscadorProveedor;
{$R *.DFM}

procedure TFormControlCC.BuscarExecute(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=0 Then
    begin
      CDSFacturas.Close;
      CDSMovimientos.Close;
      CDSFacturas.Params.ParamByName('codigo').Value  := ceCliente.Text;
      CDSFacturas.Open;
      CDSFacturas.First;
      CDSMovimientos.Params.ParamByName('id').Value   := CDSFacturasID_FC.Value;
      CDSMovimientos.Params.ParamByName('Tipo').Value := CDSFacturasTIPOCPBTE.Value;
      CDSMovimientos.Open;
      CDSAplicaciones.Close;
      CDSAplicaciones.Params.ParamByName('id').Value  := CDSMovimientosID_MOVCCVTA.Value;
      CDSAplicaciones.Open;
      CDSACtaVta.Close;
      CDSACtaVta.Params.ParamByName('Codigo').Value   := ceCliente.Text;
      CDSACtaVta.Open;
    end
  else
    begin
      CDSFcComp.Close;
      CDSMovComp.Close;
      CDSFcComp.Params.ParamByName('codigo').Value   := ceProveedor.Text;
      CDSFcComp.Open;
      CDSFcComp.First;
      CDSMovComp.Params.ParamByName('id').Value      := CDSFcCompID_FC.Value;
      CDSMovComp.Params.ParamByName('Tipo').Value    := CDSFcCompTIPOCPBTE.Value;
      CDSMovComp.Open;
      CDSAplCompra.Close;
      CDSAplCompra.Params.ParamByName('id').Value    := CDSMovCompID_MOVCCCOMPRA.Value;
      CDSAplCompra.Open;
      CDSACtaComp.Close;
      CDSACtaComp.Params.ParamByName('Codigo').Value := ceProveedor.Text;
      CDSACtaComp.Open;

    end;

end;

procedure TFormControlCC.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text  :=FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      edNombreCliente.Text:=CDSClientesNOMBRE.Value;
    END;
end;

procedure TFormControlCC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSFacturas.Close;
  CDSFcComp.Close;
  CDSAplicaciones.Close;
  CDSAplCompra.Close;
  CDSMovimientos.Close;
  CDSMovComp.Close;
  Action:=caFree;
end;

procedure TFormControlCC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlCC:=nil;
end;

procedure TFormControlCC.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlCC<>nil then
    if FormControlCC.Width<>882 then
      FormControlCC.Width:=882;

end;

procedure TFormControlCC.dbgMovVtaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if dbgFcVta.DataSource.DataSet.FieldByName('total').AsFloat = dbgMovVta.DataSource.DataSet.FieldByName('debe').AsFloat Then
    dbgMovVta.Canvas.Brush.Color:=clGreen else
    dbgMovVta.Canvas.Brush.Color:=clRed;
  dbgMovVta.DefaultDataCellDraw(Rect,Field,State);
end;

procedure TFormControlCC.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceProveedor.Text  :=FormBuscadorProveedor.Codigo;
      CDSProvee.Close;
      CDSProvee.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProvee.Open;
      edNombreProveedor.Text:=CDSProveeNOMBRE.Value;
    END;
end;

procedure TFormControlCC.dbgMovCompDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if dbgFcComp.DataSource.DataSet.FieldByName('total').AsFloat = dbgMovComp.DataSource.DataSet.FieldByName('Haber').AsFloat Then
    dbgMovComp.Canvas.Brush.Color:=clGreen else
    dbgMovComp.Canvas.Brush.Color:=clRed;
  dbgMovComp.DefaultDrawDataCell(Rect,Field,State);

end;

procedure TFormControlCC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormControlCC.CDSAplCompraAfterDelete(DataSet: TDataSet);
var puntero:TBookmark;
begin
  Puntero:=CDSFcComp.GetBookmark;
  inherited;
  CDSAplCompra.ApplyUpdates(-1);
  CDSMovComp.EmptyDataSet;
  CDSAplCompra.EmptyDataSet;
  CDSFcComp.EmptyDataSet;
  CDSFcComp.Close;
  CDSMovComp.Close;
  CDSAplCompra.Close;
  Buscar.Execute;
  CDSFcComp.GotoBookmark(puntero);
  CDSFcComp.FreeBookmark(Puntero);
end;

procedure TFormControlCC.CDSAplicacionesAfterDelete(DataSet: TDataSet);
var puntero:TBookmark;
begin
  puntero:=CDSFacturas.GetBookmark;
  inherited;
  CDSAplicaciones.ApplyUpdates(-1);
  CDSMovimientos.EmptyDataSet;
  CDSAplicaciones.EmptyDataSet;
  CDSFacturas.EmptyDataSet;
  CDSFacturas.Close;
  CDSMovimientos.Close;
  CDSAplicaciones.Close;
  Buscar.Execute;
  CDSFacturas.GotoBookmark(Puntero);
  CDSFacturas.FreeBookmark(Puntero);
end;

procedure TFormControlCC.ceClienteKeyPress(Sender: TObject; var Key: Char);
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
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      Buscar.Execute;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormControlCC.ceProveedorKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) +
        ceProveedor.Text;
      ceProveedor.Text := Dato;
      CDSProvee.Close;
      CDSProvee.Params.ParamByName('Codigo').Value := Dato;
      CDSProvee.Open;
      IF NOT (CDSProvee.IsEmpty) THEN
        edNombreProveedor.Text := CDSProveeNOMBRE.Value;
      Buscar.Execute;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END;
END;

procedure TFormControlCC.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
  IF PageControl1.ActivePageIndex=0 Then
    begin
      CDSMovimientos.ApplyUpdates(-1);
      CDSMovimientos.EmptyDataSet;
      CDSACtaVta.ApplyUpdates(0);
      CDSACtaVta.EmptyDataSet;
    end
  else
    IF PageControl1.ActivePageIndex=1 Then
      begin
        CDSMovComp.ApplyUpdates(-1);
        CDSMovComp.EmptyDataSet;
        CDSACtaComp.ApplyUpdates(-1);
        CDSACtaComp.EmptyDataSet;
      end;
  CDSFacturas.Close;
  CDSFcComp.Close;
  Buscar.Execute;
end;

procedure TFormControlCC.Delete1Click(Sender: TObject);
begin
  inherited;
  CDSAplicaciones.Delete;
end;

procedure TFormControlCC.Delete2Click(Sender: TObject);
begin
  inherited;
  CDSAplCompra.Delete;
end;

procedure TFormControlCC.Button1Click(Sender: TObject);
begin
  inherited;
  spReAsignaSaldos.Close;
  spReAsignaSaldos.ParamByName('codigocliente').AsString:=ceCliente.Text;
  spReAsignaSaldos.ExecProc;
end;

end.