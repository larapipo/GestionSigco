unit UListadoCpbteCompPorTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvExControls, JvDBLookup, StdCtrls, Grids,
  DBGrids, ComCtrls, Mask,ImgList, DB, ActnList, JvGradient, Buttons, ToolWin, ExtCtrls,Librerias,
  frxClass, frxDBSet, frxExportText, frxExportCSV, frxExportImage,
  frxExportXLS, frxExportHTML, frxExportPDF, JvComponentBase, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr,
  JvBaseEdits, Provider, DBClient, JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,DateUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, AdvOfficeButtons, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormListadoCpbteCompPorTipo = class(TFormABMBase)
    lb1: TLabel;
    ud1: TUpDown;
    dbg1: TDBGrid;
    dbg2: TDBGrid;
    edNombreCliente: TEdit;
    dbcSucursal: TJvDBLookupCombo;
    cbTipoCpbte: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    DSTipoCpbte: TDataSource;
    DSFacCab: TDataSource;
    DSFacDet: TDataSource;
    BuscarProveedor: TAction;
    frDBFcImpuestos: TfrxDBDataset;
    frDBFcDet: TfrxDBDataset;
    frDBFcCab: TfrxDBDataset;
    frCpbte: TfrxReport;
    bt1: TBitBtn;
    frDBFcPerIva: TfrxDBDataset;
    frDBFcIIBB: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    ceCliente: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    edTotal: TJvCalcEdit;
    CDSFacCab: TClientDataSet;
    DSPFacCab: TDataSetProvider;
    CDSFacCabID_FC: TIntegerField;
    CDSFacCabTIPOCPBTE: TStringField;
    CDSFacCabCLASECPBTE: TStringField;
    CDSFacCabNROCPBTE: TStringField;
    CDSFacCabCODIGO: TStringField;
    CDSFacCabLETRAFAC: TStringField;
    CDSFacCabSUCFAC: TStringField;
    CDSFacCabNUMEROFAC: TStringField;
    CDSFacCabNOMBRE: TStringField;
    CDSFacCabRAZONSOCIAL: TStringField;
    CDSFacCabDIRECCION: TStringField;
    CDSFacCabCPOSTAL: TStringField;
    CDSFacCabLOCALIDAD: TStringField;
    CDSFacCabTIPOIVA: TIntegerField;
    CDSFacCabCUIT: TStringField;
    CDSFacCabCONDICIONCOMPRA: TIntegerField;
    CDSFacCabANULADO: TStringField;
    CDSFacCabORDENCOMPRA: TStringField;
    CDSFacCabAPLICA: TStringField;
    CDSFacCabOBSERVACION1: TStringField;
    CDSFacCabOBSERVACION2: TStringField;
    CDSFacCabSUCURSALCOMPRA: TIntegerField;
    CDSFacCabZONA: TIntegerField;
    CDSFacCabDEPOSITO: TIntegerField;
    CDSFacCabDESGLOZAIVA: TStringField;
    CDSFacCabCALCULA_SOBRETASA: TStringField;
    CDSFacCabCPBTE_INTERNO: TStringField;
    CDSFacCabINGRESA_A_CTACTE: TStringField;
    CDSFacCabINGRESA_LIBRO_IVA: TStringField;
    CDSFacCabREDUCIDA: TStringField;
    CDSFacCabTIPO_PROVEEDOR: TStringField;
    CDSFacCabJURIDICCION: TIntegerField;
    CDSFacCabUSUARIO: TStringField;
    CDSFacCabMONEDA_CPBTE: TIntegerField;
    CDSFacCabMUESTRASUCURSAL: TStringField;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSFacDet: TClientDataSet;
    DSPFacDet: TDataSetProvider;
    CDSFacDetID: TIntegerField;
    CDSFacDetID_CABFAC: TIntegerField;
    CDSFacDetTIPOCPBTE: TStringField;
    CDSFacDetCLASECPBTE: TStringField;
    CDSFacDetNROCPBTE: TStringField;
    CDSFacDetCODIGOPROVEEDOR: TStringField;
    CDSFacDetRENGLON: TFMTBCDField;
    CDSFacDetCODIGOARTICULO: TStringField;
    CDSFacDetDETALLE: TStringField;
    CDSFacDetUNIDAD: TStringField;
    CDSFacDetCANTIDAD: TFMTBCDField;
    CDSFacDetDESGLOZAIVA: TStringField;
    CDSFacDetMODO_GRAVAMEN: TStringField;
    CDSFacDetIVA_TASA: TFMTBCDField;
    CDSFacDetTIPOIVA_TASA: TIntegerField;
    CDSFacDetIVA_SOBRETASA: TFMTBCDField;
    CDSFacDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFacDetDESCUENTO: TFMTBCDField;
    CDSFacDetTOTAL: TFMTBCDField;
    CDSFacDetDEPOSITO: TIntegerField;
    CDSFacDetMARGEN: TFMTBCDField;
    CDSFacDetAFECTA_STOCK: TStringField;
    CDSFacDetCALCULA_SOBRETASA: TStringField;
    CDSFacDetCOSTO_IMP_INTERNO: TFMTBCDField;
    CDSFacDetUNIDADES_IMP_INTERNOS: TFMTBCDField;
    CDSFacDetUNITARIO_IMP_INTERNO: TFMTBCDField;
    CDSFacDetCON_NRO_SERIE: TStringField;
    CDSFacDetID_RECEPCION_CAB: TIntegerField;
    CDSFacDetID_RECEPCION_DET: TIntegerField;
    CDSFacDetNRORECEPCION: TStringField;
    CDSFacDetGRAVADO_IB: TStringField;
    CDSFacDetID_MONEDA: TIntegerField;
    CDSFacDetCOTIZACION: TFMTBCDField;
    CDSFacDetMUESTRAMONEDA: TStringField;
    CDSFacDetUNIDADES_TOTAL: TFloatField;
    CDSFacDetUNIDADES_EXENTO: TFloatField;
    CDSFacDetUNIDADES_GRAVADO: TFloatField;
    CDSFacDetUNITARIO_TOTAL: TFloatField;
    CDSFacDetUNITARIO_EXENTO: TFloatField;
    CDSFacDetUNITARIO_GRAVADO: TFloatField;
    CDSFacDetCOSTO_TOTAL: TFloatField;
    CDSFacDetCOSTO_EXENTO: TFloatField;
    CDSFacDetCOSTO_GRAVADO: TFloatField;
    CDSFcImpuesto: TClientDataSet;
    DSPFcImpuestos: TDataSetProvider;
    CDSFcImpuestoID_IMPUESTO: TIntegerField;
    CDSFcImpuestoCODIGO_GRAVAMEN: TIntegerField;
    CDSFcImpuestoDETALLE: TStringField;
    CDSFcImpuestoID_FCCOMPCAB: TIntegerField;
    CDSFcImpuestoNETO: TFMTBCDField;
    CDSFcImpuestoTASA: TFMTBCDField;
    CDSFcImpuestoIMPORTE: TFMTBCDField;
    CDSPercepcionIB: TClientDataSet;
    DSPPercepcionIB: TDataSetProvider;
    CDSPercepcionIBID_PERCEPCION: TIntegerField;
    CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIBDETALLE: TStringField;
    CDSPercepcionIBID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIBNETO: TFMTBCDField;
    CDSPercepcionIBTASA: TFMTBCDField;
    CDSPercepcionIBIMPORTE: TFMTBCDField;
    CDSPercepcionIBJURIDICION: TIntegerField;
    CDSPercepcionIva: TClientDataSet;
    DSPPercepcionIva: TDataSetProvider;
    CDSPercepcionIvaID_PERCEPCION: TIntegerField;
    CDSPercepcionIvaCODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIvaDETALLE: TStringField;
    CDSPercepcionIvaID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIvaNETO: TFMTBCDField;
    CDSPercepcionIvaTASA: TFMTBCDField;
    CDSPercepcionIvaIMPORTE: TFMTBCDField;
    CDSPercepcionIvaCODIGOREGIMEN: TIntegerField;
    QFacCab: TFDQuery;
    CDSFacCabNETOGRAV1: TFloatField;
    CDSFacCabDSTOIMPORTE: TFloatField;
    CDSFacCabNETOGRAV2: TFloatField;
    CDSFacCabNETOEXEN1: TFloatField;
    CDSFacCabNETOEXEN2: TFloatField;
    CDSFacCabIMPORTEEXCLUIDO2: TFloatField;
    CDSFacCabIMPORTEEXCLUIDO1: TFloatField;
    CDSFacCabTOTAL: TFloatField;
    CDSFacCabDSTO: TFloatField;
    CDSFacCabNETOMONOTRIBUTO1: TFloatField;
    CDSFacCabNETOMONOTRIBUTO2: TFloatField;
    CDSFacCabRETENCION_IVA: TFloatField;
    CDSFacCabDEBE: TFloatField;
    CDSFacCabTOTAL_UNIDADES: TFloatField;
    CDSFacCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QProveedor: TFDQuery;
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    QProveedorRAZON_SOCIAL: TStringField;
    QProveedorCOD_POSTAL: TStringField;
    QProveedorLOCALIDAD: TStringField;
    QProveedorDIRECCION: TStringField;
    QProveedorTELEFONO_1: TStringField;
    QTipoCpbte: TFDQuery;
    QTipoCpbteID_TIPO: TIntegerField;
    QTipoCpbteDETALLE: TStringField;
    QTipoCpbteSIGLA: TStringField;
    QTipoCpbteDESGLOZA_IVA: TStringField;
    QTipoCpbteAFECTA_CC: TStringField;
    QTipoCpbteAFECTA_LIBRO_IVA: TStringField;
    QTipoCpbteTIPO_DE_OPERACION: TStringField;
    pnCabecera: TPanel;
    chbTodosLosProv: TAdvOfficeCheckBox;
    CDSFacCabFECHACOMPRA: TSQLTimeStampField;
    CDSFacCabFECHAVTO: TSQLTimeStampField;
    CDSFacCabFECHAFISCAL: TSQLTimeStampField;
    CDSFacCabFECHA_HORA: TSQLTimeStampField;
    CDSFacDetFECHACOMPRA: TSQLTimeStampField;
    UpDown1: TUpDown;
    Splitter1: TSplitter;
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chbTodosLosProvClick(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure CDSFacCabAfterScroll(DataSet: TDataSet);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure sumar;

  end;

var
  FormListadoCpbteCompPorTipo: TFormListadoCpbteCompPorTipo;

implementation

uses UBuscadorProveedor, UCompraCtdo_2, UCompra_2,
     DMBuscadoresForm,UDMain_FD;

{$R *.dfm}

procedure TFormListadoCpbteCompPorTipo.sumar;
var CDSClone:TClientDataSet;
begin
  if CDSFacCab.Active then
    begin
      CDSClone:=TClientDataSet.Create(Self);
      CDSClone.CloneCursor(CDSFacCab,True);
      edTotal.Value:=0;
      CDSClone.First;
      while not(CDSClone.Eof) do
        begin
          edTotal.Value:=edTotal.Value+CDSClone.FieldByName('Total').AsFloat;
          CDSClone.Next;
        end;
      FreeAndNil(CDSClone);
    end;
end;


procedure TFormListadoCpbteCompPorTipo.bt1Click(Sender: TObject);
begin
  inherited;
  frCpbte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCpbtePorTipoCompra.fr3');
  frCpbte.Variables['Desde']:=''''+DateToStr(Desde.Date)+'''';
  frCpbte.Variables['Hasta']:=''''+DateToStr(hasta.Date)+'''';
  frCpbte.Variables['Provee']:=''''+edNombreCliente.Text+'''';
  frCpbte.ShowReport;
end;

procedure TFormListadoCpbteCompPorTipo.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFacCab.Close;
  CDSFacCab.Params.ParamByName('tipo').Value     := cbTipoCpbte.KeyValue;
  CDSFacCab.Params.ParamByName('desde').Value    := Desde.Date;
  CDSFacCab.Params.ParamByName('hasta').Value    := Hasta.Date;
  CDSFacCab.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;

  if (chbTodosLosProv.Checked=True) then
    CDSFacCab.Params.ParamByName('codigo').Value:='******'
  else
    CDSFacCab.Params.ParamByName('codigo').Value:=ceCliente.Text;

  CDSFacCab.Open;

  CDSFacDet.Close;
  CDSFacDet.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSFacDet.Open;

  CDSFcImpuesto.Close;
  CDSFcImpuesto.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSFcImpuesto.Open;

  CDSPercepcionIB.Close;
  CDSPercepcionIB.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSPercepcionIB.Open;

  CDSPercepcionIva.Close;
  CDSPercepcionIva.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSPercepcionIva.Open;

  Sumar;

end;

procedure TFormListadoCpbteCompPorTipo.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''S'''; // Activos
   FormBuscadorProveedor.PopupMode:=pmAuto;
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorProveedor.Codigo;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value :=FormBuscadorProveedor.Codigo;
      QProveedor.Open;
      IF NOT (QProveedor.eof) THEN
        BEGIN
          edNombreCliente.Text := QProveedorNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
          Buscar.Execute;
        END;
    end;

end;

procedure TFormListadoCpbteCompPorTipo.CDSFacCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSFacDet.Close;
  CDSFacDet.Params.ParamByName('id').Value      :=CDSFacCabID_FC.Value;
  CDSFacDet.Open;

  CDSFcImpuesto.Close;
  CDSFcImpuesto.Params.ParamByName('id').Value  :=CDSFacCabID_FC.Value;
  CDSFcImpuesto.Open;

  CDSPercepcionIB.Close;
  CDSPercepcionIB.Params.ParamByName('id').Value :=CDSFacCabID_FC.Value;
  CDSPercepcionIB.Open;

  CDSPercepcionIva.Close;
  CDSPercepcionIva.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSPercepcionIva.Open;
end;

procedure TFormListadoCpbteCompPorTipo.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value := Dato;
      QProveedor.Open;
      IF NOT (QProveedor.eof) THEN
        edNombreCliente.Text := QProveedorNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;
end;

procedure TFormListadoCpbteCompPorTipo.chbTodosLosProvClick(Sender: TObject);
begin
  inherited;
 if ( chbTodosLosProv.Checked=True ) then
    begin
      ceCliente.Color  :=clBtnFace;
      ceCliente.Enabled:=False;
    end
  else
    begin
      ceCliente.Color  :=clWindow;
      ceCliente.Enabled:=True;
    end;
end;

procedure TFormListadoCpbteCompPorTipo.dbg1DblClick(Sender: TObject);
begin
  inherited;
  if CDSFacCab.IsEmpty then
    raise Exception.Create('No hya datos para consultar');
  if CDSFacCabTIPOCPBTE.Value='FO' then
    begin
      if Not(Assigned(FormCompraCtdo_2)) Then
        FormCompraCtdo_2:=TFormCompraCtdo_2.Create(self);
      FormCompraCtdo_2.DatoNew   :=CDSFacCabID_FC.AsString;
      FormCompraCtdo_2.TipoCpbte :=CDSFacCabTIPOCPBTE.Value;
      FormCompraCtdo_2.Recuperar.Execute;
      FormCompraCtdo_2.Show;
    end
  else
    if (CDSFacCabTIPOCPBTE.Value='FC') or
       (CDSFacCabTIPOCPBTE.Value='NC') or
       (CDSFacCabTIPOCPBTE.Value='ND')  then
      begin
        if Not(Assigned(FormCompra_2)) Then
          FormCompra_2:=TFormCompra_2.Create(self);
        FormCompra_2.DatoNew   :=CDSFacCabID_FC.AsString;
        FormCompra_2.TipoCpbte :=CDSFacCabTIPOCPBTE.Value;
        FormCompra_2.Recuperar.Execute;
        FormCompra_2.Show;
    end


end;

procedure TFormListadoCpbteCompPorTipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoCpbteCompPorTipo.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormListadoCpbteCompPorTipo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCpbteCompPorTipo:=nil;
end;

procedure TFormListadoCpbteCompPorTipo.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoCpbteCompPorTipo<>nil then
    if FormListadoCpbteCompPorTipo.Width<>736 then
       FormListadoCpbteCompPorTipo.Width:=736;
end;

procedure TFormListadoCpbteCompPorTipo.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  QTipoCpbte.OPen;
  CDSSucursal.Open;
end;


procedure TFormListadoCpbteCompPorTipo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCpbte.DesignReport;
end;

procedure TFormListadoCpbteCompPorTipo.ud1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
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
  Buscar.Execute;
 end;


procedure TFormListadoCpbteCompPorTipo.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);

var d,m,y:word;
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
  Buscar.Execute;
  //  Desde.SetFocus;
end;

end.