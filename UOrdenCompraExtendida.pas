unit UOrdenCompraExtendida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, frxExportTXT, frxClass, frxExportText, frxExportPDF,
  frxDBSet, frxExportRTF, DBTables, RXCtrls, DBCtrls, StdCtrls, Grids, DBGrids,
  ExtCtrls, ComCtrls, JvExStdCtrls, JvDBCombobox, rxToolEdit, RXDBCtrl, Mask,
  JvComponentBase, JvFormMagnet, rxPlacemnt, ImgList, wwDialog, wwidlg, DB,
  ActnList, JvExControls, JvGradient, Buttons, ToolWin,Librerias;

type
  TFormOrdenCompraExt = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    lbModo: TLabel;
    lbEstado: TLabel;
    lbTopOC: TLabel;
    lbTotalOC: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    lbTotalGral: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lbNueva: TLabel;
    Label29: TLabel;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeCondCompra: TDBEdit;
    RxDBECodigo: TRxDBComboEdit;
    RxDBESucursal: TRxDBComboEdit;
    RxDBECondCompra: TRxDBComboEdit;
    RxDBEDeposito: TRxDBComboEdit;
    dbeDeposito: TDBEdit;
    RxCTipoCpbte: TRxDBComboEdit;
    dbeMuestraRealizo: TDBEdit;
    RxDBRealizo: TRxDBComboEdit;
    dbeFechaCompra: TDBDateEdit;
    dbeFechaVencimiento: TDBDateEdit;
    JvDBComboBox1: TJvDBComboBox;
    pnCosto: TPanel;
    dbtDetalle: TDBText;
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Bevel48: TBevel;
    dbtTotal: TDBText;
    Label23: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    DBGrillaDetalle: TDBGrid;
    dbeMuestraAutorizo: TDBEdit;
    RxDBAutorizo: TRxDBComboEdit;
    pcPieOrdenCompra: TPageControl;
    pagVtos: TTabSheet;
    Label25: TLabel;
    dbgVtos: TDBGrid;
    Panel2: TPanel;
    dbcImpresa: TDBCheckBox;
    DBDateEdit1: TDBDateEdit;
    PagObs: TTabSheet;
    dbObservaciones: TDBMemo;
    pagNotas: TTabSheet;
    Label17: TLabel;
    dbcTransporte: TDBLookupComboBox;
    dbmNotas: TDBMemo;
    dbeFechaAutorizacion: TDBDateEdit;
    PagImpuestos: TTabSheet;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText1: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText3: TDBText;
    dbtTotalFinal: TDBText;
    Label2: TLabel;
    Bevel2: TBevel;
    RxLabel4: TRxLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    Bevel5: TBevel;
    Label5: TLabel;
    Bevel7: TBevel;
    DBText8: TDBText;
    Label7: TLabel;
    Bevel8: TBevel;
    DBText9: TDBText;
    dbeDscto: TDBEdit;
    dbgIva: TDBGrid;
    spMarcarImpreso: TStoredProc;
    frxRTFExport1: TfrxRTFExport;
    frDBDImpuestos: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frDBDetalle: TfrxDBDataset;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxDBEmpresa: TfrxDBDataset;
    frOrdenCompra: TfrxReport;
    frxTXTExport1: TfrxTXTExport;
    frDBCabecera: TfrxDBDataset;
    wwBuscadorProveedor: TwwLookupDialog;
    wwBuscadorCondCompra: TwwLookupDialog;
    wwBuscadorSucursal: TwwLookupDialog;
    wwBuscadorComprobantes: TwwLookupDialog;
    wwBuscadorEmpleado: TwwLookupDialog;
    wwBuscadorDeposito: TwwLookupDialog;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTopeOC:Real;
    FTotalOC:Real;
    FTotalGral:Real;
    FTotalNueva:Real;
    FDesde,FHasta:TDateTime;

  public
    { Public declarations }
    PROCEDURE UltimoComprobante;
    procedure SetTopeOC(Dato:Real);
    Procedure SetTotalOC(dato:Real);
    Procedure SetTotalGral(dato:Real);
    Procedure SetTotalNuevas(dato:Real);
    procedure SetDesdeHasta(Dato:TDateTime);


  end;

var
  FormOrdenCompraExt: TFormOrdenCompraExt;

implementation


{$R *.dfm}
uses DMOrdenCompraExtendida, DMMainForm;


PROCEDURE  TFormOrdenCompraExt.SetTopeOC(Dato: Real);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTopeOC:=Dato;
  lbTopOC.Caption:=FormatFloat('###,###,###,##0.00',Dato);
end;

procedure TFormOrdenCompraExt.SetTotalOC(Dato:real);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTotalOC:=Dato;
  lbTotalOC.Caption:=FormatFloat('###,###,###,##0.00',Dato);
end;

procedure TFormOrdenCompraExt.SetTotalGral(Dato:real);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTotalGral:=Dato;
  lbTotalGral.Caption:=FormatFloat('###,###,###,##0.00',Dato);
end;

procedure TFormOrdenCompraExt.SetTotalNuevas(Dato:real);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTotalNueva:=Dato;
  lbNueva.Caption:=FormatFloat('###,###,###,##0.00',Dato);
end;

procedure TFormOrdenCompraExt.setDesdeHasta(Dato:TDateTime);
var d,m,y:word;
begin
  DecodeDate(Dato,y,m,d);
  FDesde:=EncodeDate(y,m,1);
  FHasta:=EncodeDate(y,m,DaysInMonth(y,m));
 end;


PROCEDURE TFormOrdenCompraExt.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosOrdenCompraExtendida, DMMain DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSOCCabLETRA.AsString <> '') AND (CDSOCCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSOCCabLetra.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSOCCabSucursal.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSOCCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSOCCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSOCCabSucSetText(CDSOCCabSUC,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSOCCabNumeroSetText(CDSOCCabNumero,IntToStr(Numero));
            END;
         // Si discrimina IVA o no lo manejo desde la condicion del Proveedor
         // wwCDSOrdenCompraCabDESGLOZAIVA.Value        := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
          CDSOCCabTIPOCPBTE.Value          := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSOCCabCLASECPBTE.Value         := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSOCCabNROCPBTE.AsString := CDSOCCabLetra.AsString + CDSOCCabSuc.AsString +
        CDSOCCabNumero.AsString;
      FormOrdenCompraExt.dbgIva.Enabled := CDSOCCabDESGLOZAIVA.Value = 'S';
    END;
END;





procedure TFormOrdenCompraExt.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := True;
  pcDetalleFactura.ActivePageIndex := 0;
  pcPieOrdenCompra.ActivePageIndex :=0;
  IF NOT (Assigned(DatosOrdenCompraExtendida)) THEN
    DatosOrdenCompraExtendida := TDatosOrdenCompraExtendida.Create(Application);
  dsBase.DataSet:=DatosOrdenCompraExtendida.CDSOCCab;
  if wwBuscadorComprobantes.LookupTable=nil Then
    wwBuscadorComprobantes.LookupTable:=DatosOrdenCompraExtendida.QBuscaComprob;
  WITH DatosOrdenCompraExtendida DO
    BEGIN
      AddClientDataSet(CDSOCCab, DSPOCCab);
      AddClientDataSet(CDSOCDet, DSPOCDet);
      AddClientDataSet(CDSOCVtos, DSPOCVtos);
      AddClientDataSet(CDSOCImpuesto, DSPOCImpuesto);

      DatosOrdenCompraExtendida.CDSOCCab.Params.ParamByName('TipoCpbte').Clear;
      DatosOrdenCompraExtendida.CDSOCCab.Params.ParamByName('id').Clear;

      DatosOrdenCompraExtendida.CDSOCDet.Params.ParamByName('id').Clear;

      DatosOrdenCompraExtendida.CDSOCVtos.Params.ParamByName('id').Clear;

      DatosOrdenCompraExtendida.CDSOCImpuesto.Params.ParamByName('id').Clear;

      CDSOCCab.Open;
      CDSOCDet.Open;
      CDSOCVtos.Open;
      CDSOCImpuesto.Open;
      QTransportes.Open;

      CDSOCCab.EmptyDataSet;
      CDSOCDet.EmptyDataSet;
      CDSOCImpuesto.EmptyDataSet;
    //  AplicarMascarasNumericas;
    END;
  Tabla:='OrdenCompraCab';
  Campo:='Id_Oc';
  DMMain.QOpciones.Close;
  DMMain.QOpciones.ParamByName('opcion').Value:='TOPEOC';
  DMMain.QOpciones.Open;

  SetTopeOC(DMMain.QOpciones.Fields[0].Value);

  DMMain.QOpciones.Close;
  SetTotalOC(0);
  SetTotalGral(0);
  SetTotalNuevas(0);


end;

end.
