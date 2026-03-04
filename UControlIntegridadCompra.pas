unit UControlIntegridadCompra;

interface

uses
  Windows, Forms,Graphics,SYsUtils, UABMBase, FMTBcd, SqlExpr, DB, Menus,
  DBClient, Provider, Spin, StdCtrls, JvBaseEdits, Grids, DBGrids, JvExDBGrids,
  JvComponentBase, JvFormPlacement, ImgList, Controls,
  Classes, ActnList, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, DBCtrls, JvAppStorage, JvAppIniStorage, System.Actions, JvDBGrid,
  Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls, Vcl.ComCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, JvMaskEdit, JvDBFindEdit;

type
  TFormControlIntegridadCompra = class(TFormABMBase)
    pcDatos: TPageControl;
    pag1: TTabSheet;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    edNombreProvee: TEdit;
    btBuscarFc: TBitBtn;
    pag2: TTabSheet;
    Label4: TLabel;
    Bevel3: TBevel;
    Label5: TLabel;
    Bevel4: TBevel;
    Label8: TLabel;
    Bevel7: TBevel;
    btBuscarRc: TBitBtn;
    chTodoMovRec: TCheckBox;
    Pag3: TTabSheet;
    Label6: TLabel;
    Bevel5: TBevel;
    Label7: TLabel;
    Bevel6: TBevel;
    Label9: TLabel;
    Bevel8: TBevel;
    btBuscarNC: TBitBtn;
    chTodoMovNC: TCheckBox;
    Pag4: TTabSheet;
    btAjustesDebe: TBitBtn;
    Pag5: TTabSheet;
    btAjusteHaber: TBitBtn;
    pag6: TTabSheet;
    Button1: TButton;
    seLimite: TSpinEdit;
    DSIntegridadFc: TDataSource;
    DSIntegridadNC: TDataSource;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    DSIntegridadOp: TDataSource;
    DSIntegridadAjustesDebe: TDataSource;
    DSIntegridadAjustesHaber: TDataSource;
    DSControlCtaCte: TDataSource;
    pmBorradoApl: TPopupMenu;
    BorraApliDeRecibo1: TMenuItem;
    BuscarProvee: TAction;
    ReHaceMovCC: TAction;
    popMenuFc: TPopupMenu;
    ReHacerMovimientoCCte1: TMenuItem;
    BorraApliDeCpbte: TAction;
    ceProvee: TJvComboEdit;
    CDSIntegridadFC: TClientDataSet;
    DSPIntegridadFc: TDataSetProvider;
    CDSIntegridadFCID_FC: TIntegerField;
    CDSIntegridadFCCODIGO: TStringField;
    CDSIntegridadFCNOMBRE: TStringField;
    CDSIntegridadFCTIPOCPBTE: TStringField;
    CDSIntegridadFCCLASECPBTE: TStringField;
    CDSIntegridadFCNROCPBTE: TStringField;
    CDSIntegridadFCANULADO: TStringField;
    CDSIntegridadFCIDMOVCTACTE: TIntegerField;
    CDSIntegridadFCDETALLE: TStringField;
    CDSIntegridadNC: TClientDataSet;
    DSPIntegridadNC: TDataSetProvider;
    CDSIntegridadNCID_FC: TIntegerField;
    CDSIntegridadNCCODIGO: TStringField;
    CDSIntegridadNCNOMBRE: TStringField;
    CDSIntegridadNCTIPOCPBTE: TStringField;
    CDSIntegridadNCCLASECPBTE: TStringField;
    CDSIntegridadNCNROCPBTE: TStringField;
    CDSIntegridadNCANULADO: TStringField;
    CDSIntegridadNCIDMOVCTACTE: TIntegerField;
    CDSIntegridadNCDETALLE: TStringField;
    CDSIntegridadAjustesDebe: TClientDataSet;
    DSPIntegridadAjustesDebe: TDataSetProvider;
    CDSIntegridadAjustesDebeID: TIntegerField;
    CDSIntegridadAjustesDebeCODIGO: TStringField;
    CDSIntegridadAjustesDebeTIPOCPBTE: TStringField;
    CDSIntegridadAjustesDebeCLASECPBTE: TStringField;
    CDSIntegridadAjustesDebeNROCPBTE: TStringField;
    CDSIntegridadAjustesDebeIDMOVCTACTE: TIntegerField;
    CDSIntegridadAjustesDebeDETALLE: TStringField;
    CDSIntegridadAjustesHaber: TClientDataSet;
    DSPIntegridadAjustesHaber: TDataSetProvider;
    CDSIntegridadAjustesHaberCODIGO: TStringField;
    CDSIntegridadAjustesHaberTIPOCPBTE: TStringField;
    CDSIntegridadAjustesHaberCLASECPBTE: TStringField;
    CDSIntegridadAjustesHaberNROCPBTE: TStringField;
    CDSIntegridadAjustesHaberIDMOVCTACTE: TIntegerField;
    CDSIntegridadAjustesHaberDETALLE: TStringField;
    CDSControlCtaCte: TClientDataSet;
    DSPControlCtaCte: TDataSetProvider;
    CDSControlCtaCteCODIGO: TStringField;
    CDSControlCtaCteNOMBRE: TStringField;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    spReHaceMovIBX: TSQLStoredProc;
    CDSIntegridadOp: TClientDataSet;
    DSPIntegridadOp: TDataSetProvider;
    CDSIntegridadOpID_OP: TIntegerField;
    CDSIntegridadOpCODIGO: TStringField;
    CDSIntegridadOpNOMBRE: TStringField;
    CDSIntegridadOpTIPOCPBTE: TStringField;
    CDSIntegridadOpCLASECPBTE: TStringField;
    CDSIntegridadOpNROCPBTE: TStringField;
    CDSIntegridadOpANULADO: TStringField;
    CDSIntegridadOpIDMOVCTACTE: TIntegerField;
    CDSIntegridadOpDETALLE: TStringField;
    dbgFacturas: TJvDBGrid;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    edAplicado: TJvCalcEdit;
    edFactura: TJvCalcEdit;
    edNCredito: TJvCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    edTotal: TJvCalcEdit;
    Label12: TLabel;
    dbgOpago: TJvDBGrid;
    dbgNotasCredito: TJvDBGrid;
    dbgAjusteDebe: TJvDBGrid;
    dbgAjusteHaber: TJvDBGrid;
    dbgControlCC: TJvDBGrid;
    edTotalRec: TJvCalcEdit;
    edTotalDebeRec: TJvCalcEdit;
    edTotalAplRec: TJvCalcEdit;
    edTotalNC: TJvCalcEdit;
    edTotalNcDebe: TJvCalcEdit;
    edTotalNCAplica: TJvCalcEdit;
    dbsFacturas: TJvDBStatusLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    Button2: TButton;
    CDSIntegridadFCINGRESA_A_CTACTE: TStringField;
    DBText1: TDBText;
    Label13: TLabel;
    QIntegridadAjustesDebe: TFDQuery;
    CDSIntegridadAjustesDebeDEBE: TFloatField;
    CDSIntegridadAjustesDebeHABER: TFloatField;
    CDSIntegridadAjustesDebeSALDO: TFloatField;
    CDSIntegridadAjustesDebeIMPORTEAPLICADO: TFloatField;
    CDSIntegridadAjustesDebeTOTAL: TFloatField;
    QIntegridadFc: TFDQuery;
    CDSIntegridadFCTOTAL: TFloatField;
    CDSIntegridadFCDEBE: TFloatField;
    CDSIntegridadFCHABER: TFloatField;
    CDSIntegridadFCSALDO: TFloatField;
    CDSIntegridadFCIMPORTEAPLICADO: TFloatField;
    QIntegridadNC: TFDQuery;
    CDSIntegridadNCDEBE: TFloatField;
    CDSIntegridadNCHABER: TFloatField;
    CDSIntegridadNCSUMAAPLICACIONES: TFloatField;
    CDSIntegridadNCDIFERENCIACONAPLICACIONES: TFloatField;
    CDSIntegridadNCTOTAL: TFloatField;
    QIntegridadAjustesHaber: TFDQuery;
    CDSIntegridadAjustesHaberTOTAL: TFloatField;
    CDSIntegridadAjustesHaberDEBE: TFloatField;
    CDSIntegridadAjustesHaberHABER: TFloatField;
    CDSIntegridadAjustesHaberSUMAAPLICAIONES: TFloatField;
    CDSIntegridadAjustesHaberDIFERENCIACONAPLICACIONES: TFloatField;
    QPasa_A_CC: TFDQuery;
    QIntegridadOp: TFDQuery;
    CDSIntegridadOpTOTAL: TFloatField;
    CDSIntegridadOpDEBE: TFloatField;
    CDSIntegridadOpHABER: TFloatField;
    CDSIntegridadOpSUMAAPLICAIONES: TFloatField;
    CDSIntegridadOpDIFERENCIACONAPLICACIONES: TFloatField;
    QBorrarAplicacionDelCpbteFD: TFDQuery;
    QControlCtaCte: TFDQuery;
    CDSControlCtaCteSALDOCTACTE: TFloatField;
    CDSControlCtaCteSALDOAPLICACIONES: TFloatField;
    CDSControlCtaCteAPLICACIONESPENDI: TFloatField;
    CDSControlCtaCteDIFERENCIA: TFloatField;
    spReHaceMovFD: TFDStoredProc;
    chFiltroCero: TCheckBox;
    JvDBFindEdit1: TJvDBFindEdit;
    CDSIntegridadAjustesHaberID: TIntegerField;
    procedure BuscarProveeExecute(Sender: TObject);
    procedure btBuscarFcClick(Sender: TObject);
    procedure btBuscarRcClick(Sender: TObject);
    procedure btBuscarNCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ceProveeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgOpagoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btAjustesDebeClick(Sender: TObject);
    procedure btAjusteHaberClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ReHaceMovCCExecute(Sender: TObject);
    procedure dbgControlCCDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BorraApliDeCpbteExecute(Sender: TObject);
    procedure dbgNotasCreditoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgFacturasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgFacturasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgOpagoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgFacturasDblClick(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure dbgControlCCTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgControlCCDblClick(Sender: TObject);
    procedure dbgOpagoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure chFiltroCeroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SumarFac;
    procedure SumarOp;
    procedure SumarNc;

  end;

var
  FormControlIntegridadCompra: TFormControlIntegridadCompra;

implementation

uses UDMain_FD, UBuscadorProveedor, UCompra_2, UOPago_2, UMuestraOPago,
  UAplicacionesCCCompra_2;

{$R *.DFM}

procedure TFormControlIntegridadCompra.SumarFac;
VAR CDSClone:TClientDataSet;
begin
  edTotal.Value   := 0;
  edFactura.Value := 0;
  edNCredito.Value:= 0;
  edDebe.Value    := 0;
  edHaber.Value   := 0;
  edSaldo.Value   := 0;
  edAplicado.Value:= 0;

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSIntegridadFC,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      if ((CDSClone.FieldByName('TIPOCPBTE').Value='FC') or
         (CDSClone.FieldByName('TIPOCPBTE').Value='ND')) and
         (CDSClone.FieldByName('ANULADO').Value='N') then
        edFactura.Value :=edFactura.Value+CDSClone.FieldByName('TOTAL').AsFloat;
      if (CDSClone.FieldByName('TIPOCPBTE').Value='NC') and
         (CDSClone.FieldByName('ANULADO').Value='N') then
        edNCredito.Value :=edNCredito.Value+CDSClone.FieldByName('TOTAL').AsFloat;
      edTotal.Value:=edFactura.Value+edNCredito.Value;
      edDebe.Value    :=edDebe.Value+CDSClone.FieldByName('Debe').AsFloat;
      edHaber.Value   :=edHaber.Value+CDSClone.FieldByName('Haber').AsFloat;
      edSaldo.Value   :=edSaldo.Value+CDSClone.FieldByName('Saldo').AsFloat;
      edAplicado.Value:=edAplicado.Value+CDSClone.FieldByName('ImporteAplicado').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormControlIntegridadCompra.SumarOp;
VAR CDSClone:TClientDataSet;
begin
  edTotalRec.Value     := 0;
  edTotalAplRec.Value  := 0;
  edTotalDebeRec.Value:= 0;

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSIntegridadOp,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalRec.Value      := edTotalRec.Value+CDSClone.FieldByName('TOTAL').AsFloat;
      edTotalAplRec.Value   := edTotalAplRec.Value+CDSClone.FieldByName('SUMAAPLICAIONES').AsFloat;
      edTotalDebeRec.Value := edTotalDebeRec.Value+CDSClone.FieldByName('DEBE').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormControlIntegridadCompra.SumarNc;
VAR CDSClone:TClientDataSet;
begin
  edTotalNC.Value        := 0;
  edTotalNcDebe.Value     := 0;
  edTotalNCAplica.Value   := 0;

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSIntegridadNC,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      if (CDSClone.FieldByName('TIPOCPBTE').Value='NC') Then
        edTotalNC.Value :=edTotalNC.Value+CDSClone.FieldByName('TOTAL').AsFloat;
      edTotalNcDebe.Value  :=edTotalNCDebe.Value+CDSClone.FieldByName('Debe').AsFloat;
      edTotalNCAplica.Value:=edTotalNCAplica.Value+CDSClone.FieldByName('SumaAplicaciones').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;


procedure TFormControlIntegridadCompra.BuscarProveeExecute(
  Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceProvee.Text  :=FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      edNombreProvee.Text:=CDSProveedorNOMBRE.Value;
    END;


end;

procedure TFormControlIntegridadCompra.btBuscarFcClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadFc.Close;
  CDSIntegridadFC.IndexFieldNames:='';
  CDSIntegridadFC.IndexDefs.Clear;
  if ceProvee.Text<>'' Then
    CDSIntegridadFc.Params.ParamByName('codigo').Value:=ceProvee.Text
  else
    CDSIntegridadFc.Params.ParamByName('codigo').Value:='';
  CDSIntegridadFc.Open;


  SumarFac;
  dbgFacturas.Width:=dbgFacturas.Width+1;
  dbgFacturas.Width:=dbgFacturas.Width-1;
end;

procedure TFormControlIntegridadCompra.btBuscarRcClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadOp.Close;
  CDSIntegridadOp.IndexFieldNames:='';
  CDSIntegridadOp.IndexDefs.Clear;
  if ceProvee.Text<>'' Then
    CDSIntegridadOp.Params.ParamByName('codigo').Value:=ceProvee.Text
  else
    CDSIntegridadOp.Params.ParamByName('codigo').Value:='******';
  CDSIntegridadOp.Open;

  SumarOp;

end;

procedure TFormControlIntegridadCompra.btBuscarNCClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadNC.Close;
  if ceProvee.Text<>'' Then
    CDSIntegridadNC.Params.ParamByName('codigo').Value:=ceProvee.Text
  else
    CDSIntegridadNC.Params.ParamByName('codigo').Value:='******';
  CDSIntegridadNC.Open;
  SumarNc;
end;

procedure TFormControlIntegridadCompra.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=fALSE;
  pcDatos.ActivePageIndex:=0;
end;

procedure TFormControlIntegridadCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlIntegridadCompra.FormDestroy(Sender: TObject);
begin
  inherited;
 FormControlIntegridadCompra:=nil;
end;

procedure TFormControlIntegridadCompra.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlIntegridadCompra<>NIL then
    if FormControlIntegridadCompra.Width<>877 then
      FormControlIntegridadCompra.Width:=877;
end;

procedure TFormControlIntegridadCompra.dbgFacturasDblClick(Sender: TObject);
begin
  inherited;
 IF (CDSIntegridadFCTIPOCPBTE.AsString='FC') or
     (CDSIntegridadFCTIPOCPBTE.AsString='NC') or
     (CDSIntegridadFCTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2    := TFormCompra_2.Create(Application);
      FormCompra_2.DatoNew   := CDSIntegridadFCID_FC.AsString;
      FormCompra_2.TipoCpbte := CDSIntegridadFCTIPOCPBTE.Value;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    IF (CDSIntegridadFCTIPOCPBTE.AsString='OP') Then
      begin
           IF NOT (Assigned(FormOPago_2)) THEN
             FormOPago_2:= TFormOPago_2.Create(self);
           FormOPago_2.DatoNew    := CDSIntegridadFCID_FC.AsString;
           FormOPago_2.TipoCpbte  := CDSIntegridadFCTIPOCPBTE.Value;
           FormOPago_2.Recuperar.Execute;
           FormOPago_2.Show;
         end;

    
//    else
//      IF (CDSMovCCTIPOCPBTE.AsString='AJ') Then
//        begin
//          IF NOT (Assigned(FormAjusteCCProveedores)) THEN
//            FormAjusteCCProveedores:= TFormAjusteCCProveedores.Create(Application);
//          FormAjusteCCProveedores.DatoNew  := CDSMovCCID_CPBTE.AsString;
//          FormAjusteCCProveedores.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
//          FormAjusteCCProveedores.Recuperar.Execute;
//        END
//      else
//        IF (CDSMovCCTIPOCPBTE.AsString='XP') Then
//          begin
//            IF NOT (Assigned(FormAnulacionOPago)) THEN
//              FormAnulacionOPago:= TFormAnulacionOPago.Create(Application);
//            FormAnulacionOPago.DatoNew  := CDSMovCCID_CPBTE.AsString;
//            FormAnulacionOPago.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
//            FormAnulacionOPago.Recuperar.Execute;
//         END;
//

end;

procedure TFormControlIntegridadCompra.dbgFacturasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2,Tot3,Tot4:String;
begin
  inherited;
  if gdSelected in State then
    begin
      dbgFacturas.Canvas.Font.Color:=clWhite;
      dbgFacturas.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if (CDSIntegridadFcANULADO.Value)='S' Then
         dbgFacturas.canvas.Font.color := clRed
       else
         begin
           dbgFacturas.canvas.Font.color := clBlack;
           if Trunc(CDSIntegridadFcTOTAL.AsFloat * 1000)<>Trunc(CDSIntegridadFcHABER.AsFloat*1000) Then
             dbgFacturas.canvas.Font.color := clGreen;
         end;
      Tot1:=FormatFloat('0.00',CDSIntegridadFcTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadFcDEBE.AsFloat+CDSIntegridadFcHABER.AsFloat);
      Tot3:=FormatFloat('0.00',CDSIntegridadFcHABER.AsFloat);
      Tot4:=FormatFloat('0.00',CDSIntegridadFcIMPORTEAPLICADO.AsFloat);
      if (Tot1<>Tot2) or (tot3<>tot4)  Then
          dbgFacturas.Canvas.Font.Style:=[fsBold]
        else
          dbgFacturas.Canvas.Font.Style:=[];

    end;
  dbgFacturas.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;


procedure TFormControlIntegridadCompra.dbgFacturasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgFacturas.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlIntegridadCompra.ceProveeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var  Dato: STRING;
BEGIN
  IF Key = Vk_return THEN
    BEGIN

      Dato := Copy('000000', 1, 6 - (Length(ceProvee.Text))) + ceProvee.Text;
      ceProvee.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.eof) THEN
        edNombreProvee.Text := CDSProveedorNOMBRE.Value;
      Buscar.Execute;
      ceProvee.SetFocus;
      ceProvee.SelectAll;
    END;

end;


procedure TFormControlIntegridadCompra.chFiltroCeroClick(Sender: TObject);
begin
  inherited;
  if chFiltroCero.Checked then
    CDSIntegridadFC.Filter:='SALDO >0 '
  else
    CDSIntegridadFC.Filter:='';
  CDSIntegridadFC.Filtered:=chFiltroCero.Checked;

end;

procedure TFormControlIntegridadCompra.dbgOpagoDblClick(Sender: TObject);
begin
  inherited;
  IF (CDSIntegridadOpTIPOCPBTE.AsString='OP') Then
    begin
      IF NOT (Assigned(FormOPago_2)) THEN
        FormOPago_2:= TFormOPago_2.Create(self);
      FormOPago_2.DatoNew    := CDSIntegridadOpID_OP.AsString;
      FormOPago_2.TipoCpbte  := CDSIntegridadOpTIPOCPBTE.Value;
      FormOPago_2.Recuperar.Execute;
      FormOPago_2.Show;
    end;


end;

procedure TFormControlIntegridadCompra.dbgOpagoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2:String;
begin
  inherited;
  if gdSelected in State  Then
    begin
      dbgOpago.Canvas.Font.Color:=clWhite;
      dbgOpago.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if (CDSIntegridadOpANULADO.Value)='S' Then
        dbgOpago.canvas.Font.color := clRed
      else
        dbgOpago.canvas.Font.color := clBlack;

      Tot1:=FormatFloat('0.00',CDSIntegridadOpTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadOpHABER.AsFloat+CDSIntegridadOpDEBE.AsFloat);
      if Tot1<>Tot2 Then
        dbgOPago.Canvas.Font.Style:=[fsBold]
      else
        dbgOPago.Canvas.Font.Style:=[];

      Tot1:=FormatFloat('0.00',CDSIntegridadOpDIFERENCIACONAPLICACIONES.AsFloat);
      if Tot1<>'0.00' Then
        dbgOPago.canvas.Font.color := clBlue
      else
        dbgOPago.canvas.Font.color := clBlack;
    end;
  dbgOPago.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlIntegridadCompra.dbgOpagoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgOpago.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlIntegridadCompra.DBText1Click(Sender: TObject);
begin
  inherited;
  QPasa_A_CC.Close;
  QPasa_A_CC.ParamByName('id').Value:=CDSIntegridadFCID_FC.Value;
  QPasa_A_CC.ExecSQL();
  QPasa_A_CC.Close;
  btBuscarFc.Click;

end;

procedure TFormControlIntegridadCompra.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormControlIntegridadCompra.btAjustesDebeClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadAjustesDebe .Close;
  if ceProvee.Text<>'' Then
    CDSIntegridadAjustesDebe.Params.ParamByName('codigo').Value:=ceProvee.Text
  else
    CDSIntegridadAjustesDebe.Params.ParamByName('codigo').Value:='******';
  CDSIntegridadAjustesDebe.Open;
end;

procedure TFormControlIntegridadCompra.btAjusteHaberClick(Sender: TObject);
begin
  inherited;
  CDSIntegridadAjustesHaber.Close;
  if ceProvee.Text<>'' Then
    CDSIntegridadAjustesHaber.Params.ParamByName('codigo').Value:=ceProvee.Text
  else
    CDSIntegridadAjustesHaber.Params.ParamByName('codigo').Value:='******';
  CDSIntegridadAjustesHaber.Open;
end;

procedure TFormControlIntegridadCompra.Button1Click(Sender: TObject);
begin
  inherited;
  CDSControlCtaCte.Close;
  CDSControlCtaCte.IndexFieldNames:='';
  CDSControlCtaCte.IndexDefs.Clear;
  CDSControlCtaCte.Params.ParamByName('limite').Value:=seLimite.Value;
  CDSControlCtaCte.Open;
end;

procedure TFormControlIntegridadCompra.ReHaceMovCCExecute(Sender: TObject);
begin
  inherited;
  // Facturas
  if pcDatos.ActivePage=Pag1 Then
    begin
      spReHaceMovFD.Close;
      spReHaceMovFD.ParamByName('CPBTE_ID').Value   :=CDSIntegridadFcID_FC.Value;
      spReHaceMovFD.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadFCTIPOCPBTE.Value;
      spReHaceMovFD.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadFCCLASECPBTE.Value;
      spReHaceMovFD.ExecProc;
      spReHaceMovFD.Close;
    end
  else
    // Orden de pago
    if pcDatos.ActivePage=Pag2 Then
      begin
        spReHaceMovFD.Close;
        spReHaceMovFD.ParamByName('CPBTE_ID').Value   :=CDSIntegridadOpID_OP.Value;
        spReHaceMovFD.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadOpTIPOCPBTE.Value;
        spReHaceMovFD.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadOpCLASECPBTE.Value;
        spReHaceMovFD.ExecProc;
        spReHaceMovFD.Close;
      end
    else
    // Nota de Creito
    if pcDatos.ActivePage=Pag3 Then
      begin
        spReHaceMovFD.Close;
        spReHaceMovFD.ParamByName('CPBTE_ID').Value   :=CDSIntegridadNCID_FC.Value;
        spReHaceMovFD.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadNCTIPOCPBTE.Value;
        spReHaceMovFD.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadNCCLASECPBTE.Value;
        spReHaceMovFD.ExecProc;
        spReHaceMovFD.Close;
      end
     else
      // Ajustes Debe
      if pcDatos.ActivePage=Pag4 Then
        begin
          spReHaceMovFD.Close;
          spReHaceMovFD.ParamByName('CPBTE_ID').Value   :=CDSIntegridadAjustesDebeID.Value;
          spReHaceMovFD.ParamByName('CPBTE_TIPO').Value :=CDSIntegridadAjustesDebeTIPOCPBTE.Value;
          spReHaceMovFD.ParamByName('CPBTE_CLASE').Value:=CDSIntegridadAjustesDebeCLASECPBTE.Value;
          spReHaceMovFD.ExecProc;
          spReHaceMovFD.Close;
        end;

end;

procedure TFormControlIntegridadCompra.dbgControlCCDblClick(Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  if Not(Assigned(FormAplicacionesCCCompra_2)) then
    FormAplicacionesCCCompra_2:=TFormAplicacionesCCCompra_2.Create(Self);
  FormAplicacionesCCCompra_2.edCodigo.Text:=CDSControlCtaCteCODIGO.Value;
  FormAplicacionesCCCompra_2.edCodigoKeyPress(Sender,Enter);
  FormAplicacionesCCCompra_2.Show;
end;

procedure TFormControlIntegridadCompra.dbgControlCCDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2:String;
begin
  inherited;
  if gdSelected in State Then
    begin
      dbgControlCC.Canvas.Font.Color:=clWhite;
      dbgControlCC.Canvas.Brush.Color:=clNavy;
    end
  else
    begin

      Tot1:=FormatFloat('0.00',CDSControlCtaCteSALDOCTACTE.AsFloat);
      Tot2:=FormatFloat('0.00',CDSControlCtaCteSALDOAPLICACIONES.AsFloat-CDSControlCtaCteAPLICACIONESPENDI.AsFloat);

      if Tot1<>Tot2 Then
        begin
          dbgControlCC.canvas.Font.color := clRed;
          dbgControlCC.Canvas.Brush.Color:= clWindow;
       end;

    end;
  dbgControlCC.DefaultDrawColumnCell(Rect,-1,Column,State);
end;

procedure TFormControlIntegridadCompra.dbgControlCCTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgControlCC.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlIntegridadCompra.BorraApliDeCpbteExecute(
  Sender: TObject);
begin
  inherited;
  QBorrarAplicacionDelCpbteFD.Close;
  if pcDatos.ActivePage=Pag2 Then
    begin
      QBorrarAplicacionDelCpbteFD.ParamByName('id').value   :=CDSIntegridadOpID_OP.Value;
      QBorrarAplicacionDelCpbteFD.ParamByName('Tipo').value :=CDSIntegridadOpTIPOCPBTE.Value;
      QBorrarAplicacionDelCpbteFD.ParamByName('Clase').value:=CDSIntegridadOpCLASECPBTE.Value;
    end
  else
    if pcDatos.ActivePage=Pag3 Then
      begin
        QBorrarAplicacionDelCpbteFD.ParamByName('id').value   :=CDSIntegridadNCID_FC.Value;
        QBorrarAplicacionDelCpbteFD.ParamByName('Tipo').value :=CDSIntegridadNcTIPOCPBTE.Value;
        QBorrarAplicacionDelCpbteFD.ParamByName('Clase').value:=CDSIntegridadNcCLASECPBTE.Value;
      end
    else
      if pcDatos.ActivePage=Pag5 Then
        begin
          QBorrarAplicacionDelCpbteFD.ParamByName('id').value   :=CDSIntegridadAjustesHaberID.Value;
          QBorrarAplicacionDelCpbteFD.ParamByName('Tipo').value :=CDSIntegridadAjustesHaberTIPOCPBTE.Value;
          QBorrarAplicacionDelCpbteFD.ParamByName('Clase').value:=CDSIntegridadAjustesHaberCLASECPBTE.Value;
        end;

  QBorrarAplicacionDelCpbteFD.ExecSQL;
  QBorrarAplicacionDelCpbteFD.Close;
end;

procedure TFormControlIntegridadCompra.dbgNotasCreditoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
var Tot1,Tot2:String;
begin
  inherited;
  if gdSelected in State  Then
    begin
      dbgNotasCredito.Canvas.Font.Color:=clWhite;
      dbgNotasCredito.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if (CDSIntegridadNCANULADO.Value)='S' Then
        dbgNotasCredito.canvas.Font.color := clRed
      else
        dbgNotasCredito.canvas.Font.color := clBlack;

      Tot1:=FormatFloat('0.00',CDSIntegridadNcTOTAL.AsFloat);
      Tot2:=FormatFloat('0.00',CDSIntegridadNcDEBE.AsFloat+CDSIntegridadNcHABER.AsFloat);
      if Tot1<>Tot2 Then
        dbgNotasCredito.Canvas.Font.Style:=[fsBold]
      else
        dbgNotasCredito.Canvas.Font.Style:=[];

      Tot1:=FormatFloat('0.00',CDSIntegridadNcDIFERENCIACONAPLICACIONES.Asfloat);
      if Tot1<>'0.00' Then
        dbgNotasCredito.canvas.Font.color := clBlue
      else
        dbgNotasCredito.canvas.Font.color := clBlack;
    end;
  dbgNotasCredito.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;


end.
