unit UControlComisiones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,  StdCtrls, Mask, ActnList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient, Provider,
  frxClass,Librerias, ImgList, JvComponentBase, JvExControls, JvGradient, frxExportRTF, frxExportXLS, frxExportPDF,
  DataExport, DataToXLS, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvExMask, JvToolEdit, SqlExpr, IBGenerator, JvBaseEdits, DBXCommon,DateUtils,
  JvDBLookup, System.Actions, JvAppStorage, JvAppIniStorage, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, VirtualUI_SDK, frxDBSet, Vcl.Menus,
  CompBuscador, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,cxGridExportLink,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,StrUtils,IniFiles,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormControlComisiones = class(TFormABMBase)
    Label1: TLabel;
    edNombreVendedor: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    BuscaVendedore: TAction;
    DSFacVta: TDataSource;
    DSPFacVta: TDataSetProvider;
    CDSFacVtaFD: TClientDataSet;
    CDSFacVtaFDID_FC: TIntegerField;
    CDSFacVtaFDTIPOCPBTE: TStringField;
    CDSFacVtaFDCLASECPBTE: TStringField;
    CDSFacVtaFDNROCPBTE: TStringField;
    CDSFacVtaFDCODIGO: TStringField;
    CDSFacVtaFDNOMBRE: TStringField;
    CDSFacVtaFDLiquidacion: TFloatField;
    VerComprobante: TAction;
    PopupMenu1: TPopupMenu;
    VerComprobante1: TMenuItem;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frCtaLiquidacion: TfrxReport;
    frDBDSCtaLiquidacion: TfrxDBDataset;
    Imprimir: TAction;
    CDSFacVtaFDLIQUIDADA: TStringField;
    CDSMovCtaCteVendedorFD: TClientDataSet;
    DSPMovCtaCteVendedor: TDataSetProvider;
    CDSMovCtaCteVendedorFDID: TIntegerField;
    CDSMovCtaCteVendedorFDIDADELANTO: TIntegerField;
    CDSMovCtaCteVendedorFDCODIGO: TStringField;
    CDSMovCtaCteVendedorFDCLASECOMP: TStringField;
    CDSMovCtaCteVendedorFDNROCPBTE: TStringField;
    CDSMovCtaCteVendedorFDDETALLE: TStringField;
    UpDown1: TUpDown;
    CDSFacVtaFDSALDOCALCULADO: TFloatField;
    ReAsignaPorcentaje: TAction;
    edTasaComision: TEdit;
    Label4: TLabel;
    chSoloCero: TCheckBox;
    BitBtn1: TBitBtn;
    spbChekTos: TSpeedButton;
    spbUnchek: TSpeedButton;
    pnPie: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    frxPDFExport1: TfrxPDFExport;
    DataToXLS: TDataToXLS;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    cbbTipo: TComboBox;
    lb1: TLabel;
    chLiqTodas: TCheckBox;
    rgEstado: TRadioGroup;
    ceVendedor: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    FechaLiquidacion: TJvDateEdit;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalVENDEDOR: TStringField;
    CDSFacVtaFDTOTAL: TFloatField;
    CDSBuscadorPersonal: TClientDataSet;
    DSPBuscadorPersonal: TDataSetProvider;
    CDSBuscadorPersonalCODIGO: TStringField;
    CDSBuscadorPersonalNOMBRE: TStringField;
    CDSFacVtaFDFECHAVTA: TSQLTimeStampField;
    CDSFacVtaFDFECHA_LIQUIDACION: TSQLTimeStampField;
    ibId: TIBGenerator;
    CDSMovCtaCteVendedorFDFECHA: TSQLTimeStampField;
    edComisionCobrar: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    Label8: TLabel;
    cbCobrador: TJvDBLookupCombo;
    DSCobrador: TDataSource;
    CDSCobrador: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    DSPCobrador: TDataSetProvider;
    CDSFacVtaFDCOBRADOR: TStringField;
    edTotalBase: TJvCalcEdit;
    JvCalcEdit2: TJvCalcEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    rgBaseCalculo: TRadioGroup;
    cxGComsionesDBTableView1: TcxGridDBTableView;
    cxGComsionesLevel1: TcxGridLevel;
    cxGComsiones: TcxGrid;
    cxGComsionesDBTableView1ID_FC: TcxGridDBColumn;
    cxGComsionesDBTableView1FECHAVTA: TcxGridDBColumn;
    cxGComsionesDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGComsionesDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGComsionesDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGComsionesDBTableView1CODIGO: TcxGridDBColumn;
    cxGComsionesDBTableView1NOMBRE: TcxGridDBColumn;
    cxGComsionesDBTableView1TOTAL: TcxGridDBColumn;
    cxGComsionesDBTableView1TOTALFC: TcxGridDBColumn;
    cxGComsionesDBTableView1SALDOCALCULADO: TcxGridDBColumn;
    cxGComsionesDBTableView1COMSIONVENDEDOR: TcxGridDBColumn;
    cxGComsionesDBTableView1Liquidacion: TcxGridDBColumn;
    cxGComsionesDBTableView1LIQUIDADA: TcxGridDBColumn;
    FcNoLiquidar: TAction;
    ComisionaoNo1: TMenuItem;
    dxComponentPrinter1: TdxComponentPrinter;
    btImpABC: TBitBtn;
    BitBtn2: TBitBtn;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Label14: TLabel;
    edTolerancia: TJvCalcEdit;
    QBuscaVend: TFDQuery;
    QFacVta: TFDQuery;
    QFacVtaID_FC: TIntegerField;
    QFacVtaFECHAVTA: TSQLTimeStampField;
    QFacVtaTIPOCPBTE: TStringField;
    QFacVtaCLASECPBTE: TStringField;
    QFacVtaNROCPBTE: TStringField;
    QFacVtaCODIGO: TStringField;
    QFacVtaFECHA_LIQUIDACION: TSQLTimeStampField;
    QFacVtaNOMBRE: TStringField;
    QFacVtaCOMSIONVENDEDOR: TFloatField;
    QFacVtaTOTAL: TFloatField;
    QFacVtaLIQUIDADA: TStringField;
    QFacVtaSALDO: TFloatField;
    QFacVtaTOTALFC: TFloatField;
    QFacVtaCOBRADOR: TStringField;
    CDSFacVtaFDTOTALFC: TFloatField;
    CDSFacVtaFDCOMSIONVENDEDOR: TFloatField;
    CDSFacVtaFDSALDO: TFloatField;
    QMovCtaCteVendedor: TFDQuery;
    QMovCtaCteVendedorID: TIntegerField;
    QMovCtaCteVendedorIDADELANTO: TIntegerField;
    QMovCtaCteVendedorCODIGO: TStringField;
    QMovCtaCteVendedorFECHA: TSQLTimeStampField;
    QMovCtaCteVendedorCLASECOMP: TStringField;
    QMovCtaCteVendedorNROCPBTE: TStringField;
    QMovCtaCteVendedorDETALLE: TStringField;
    QMovCtaCteVendedorDEBE: TFloatField;
    QMovCtaCteVendedorHABER: TFloatField;
    CDSMovCtaCteVendedorFDDEBE: TFloatField;
    CDSMovCtaCteVendedorFDHABER: TFloatField;
    QLoteLiquidacionFD: TFDQuery;
    QUltimoLoteFD: TFDQuery;
    CDSPersonalCOMISION: TFloatField;
    procedure BuscaVendedoreExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSFacVtaFDCalcFields(DataSet: TDataSet);
    procedure CDSFacVtaFDAfterInsert(DataSet: TDataSet);
    procedure CDSFacVtaFDAfterPost(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ceVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSFacVtaCOMSIONVENDEDORSetText(Sender: TField;
      const Text: String);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSFacVtaFDLIQUIDADASetText(Sender: TField;
      const Text: String);
    procedure ReAsignaPorcentajeExecute(Sender: TObject);
    procedure spbChekTosClick(Sender: TObject);
    procedure spbUnchekClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure cbbTipoClick(Sender: TObject);
    procedure cbCobradorClick(Sender: TObject);
    procedure FcNoLiquidarExecute(Sender: TObject);
    procedure btImpABCClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edToleranciaChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
     procedure sumar;
    { Public declarations }
  end;

var
  FormControlComisiones: TFormControlComisiones;

implementation


{$R *.DFM}

uses UFactura_2, UFacturaCtdo_2, DMStoreProcedureForm, UTiketVta, UDMain_FD;

procedure TFormControlComisiones.Sumar;
VAR Aux,AuxCobro:Real;
p: TBookmark;
CDSClone:TClientDataSet;
begin
  edTotalBase.Value:=0;
  Aux:=0;AuxCobro  :=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSFacVtaFD,True);
  CDSClone.First;
  //p:=CDSFacVta.GetBookmark;
 // CDSFacVta.First;
  //CDSFacVta.DisableControls;
  while Not(CDSClone.Eof) do
    begin
      if rgBaseCalculo.ItemIndex=0 then
        begin
          if CDSClone.FieldByName('TIPOCPBTE').value<>'NC' then
            edTotalBase.Value:=edTotalBase.Value + CDSClone.FieldByName('TOTAL').AsFloat
           else
            edTotalBase.Value:=edTotalBase.Value + CDSClone.FieldByName('TOTAL').AsFloat;
//            edTotalBase.Value:=edTotalBase.Value - CDSClone.FieldByName('TOTAL').AsFloat;

        end
      else
        if rgBaseCalculo.ItemIndex=1 then
          begin
            if CDSClone.FieldByName('TIPOCPBTE').value<>'NC' then
              edTotalBase.Value:=edTotalBase.Value + CDSClone.FieldByName('TOTALFC').AsFloat
             else
              edTotalBase.Value:=edTotalBase.Value + CDSClone.FieldByName('TOTALFC').AsFloat;
//              edTotalBase.Value:=edTotalBase.Value-CDSClone.FieldByName('TOTALFC').AsFloat;

          end;

      if CDSClone.FieldByName('LIQUIDADA').Value='S' Then
        AuxCobro:=AuxCobro + CDSClone.FieldByName('LIQUIDACION').Value;//  CDSFacVtaLiquidacion.Value;
      Aux:=Aux + CDSClone.FieldByName('LIQUIDACION').Value;// CDSFacVtaLiquidacion.Value;
      CDSClone.Next;
    end;
  //CDSFacVta.EnableControls;
  //CDSFacVta.GotoBookmark(p);
  //CDSFacVta.FreeBookmark(p);

  FreeAndNil(CDSClone);
  edTotal.Value:=Aux;

  edComisionCobrar.Value:=AuxCobro;
end;

procedure TFormControlComisiones.BuscaVendedoreExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorPersonal.Close;
  CDSBuscadorPersonal.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    BEGIN
      ceVendedor.Text :=ComBuscadorBase.Id;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := ComBuscadorBase.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        BEGIN
          edNombreVendedor.Text := CDSPersonalNOMBRE.Value;
          edTasaComision.Text   :=FormatFloat('0.00',CDSPersonalCOMISION.AsFloat);
          Buscar.Execute;
          ceVendedor.SetFocus;
          ceVendedor.SelectAll;
        END;
    END;
  CDSPersonal.Close;
  CDSBuscadorPersonal.Close;
end;

procedure TFormControlComisiones.cbbTipoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlComisiones.cbCobradorClick(Sender: TObject);
begin
  inherited;
  if Not(CDSFacVtaFD.IsEmpty) then
    begin
      CDSFacVtaFD.Filtered:=False;
      if cbCobrador.KeyValue<>'******' then
        begin
          CDSFacVtaFD.Filtered:=False;
          CDSFacVtaFD.Filter:='cobrador = '+''''+cbCobrador.KeyValue+'''';
          CDSFacVtaFD.Filtered:=True;
        end;
    end;
  sumar;  
end;

procedure TFormControlComisiones.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize          := False;
  ArchivoIni        := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LstComisionArt.ini');
  edTolerancia.Value:= ArchivoIni.ReadFloat('Opciones', 'Tolerancia', 0);
  ArchivoIni.Free;

  CDSCobrador.Open;
end;

procedure TFormControlComisiones.BitBtn2Click(Sender: TObject);
begin
  inherited;
 // cxGrid a Excel
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog.FileName:='Comisiones';
  SaveDialog.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if SaveDialog.Execute Then
   if SaveDialog.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText('xls',SaveDialog.FileName)) then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGComsiones)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGComsiones);


       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog.FileName);
     end;
end;

procedure TFormControlComisiones.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSFacVtaFD.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:=edNombreVendedor.Text;
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
  ceVendedor.SetFocus;
  ceVendedor.SelectAll;
end;

procedure TFormControlComisiones.btImpABCClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Caption:='Comisiones';
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormControlComisiones.BuscarExecute(Sender: TObject);
begin
 // inherited;
  if ceVendedor.Text<>'' Then
    begin
      CDSFacVtaFD.Close;
      case rgEstado.ItemIndex of
        0:CDSFacVtaFD.Params.ParamByName('Liq').Value:='N';
        1:CDSFacVtaFD.Params.ParamByName('Liq').Value:='S';
        2:CDSFacVtaFD.Params.ParamByName('Liq').Value:='*';
      end;
      CDSFacVtaFD.Params.ParamByName('codigo').Value:=ceVendedor.Text;
      CDSFacVtaFD.Params.ParamByName('Desde').AsDate:=Desde.Date;
      CDSFacVtaFD.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
      CDSFacVtaFD.Params.ParamByName('Tipo').AsString:=Trim(cbbTipo.Text);
      CDSFacVtaFD.Open;
      cbCobrador.OnClick(Self);
      //sumar;
    end;
end;

procedure TFormControlComisiones.CDSFacVtaFDCalcFields(DataSet: TDataSet);
begin
  inherited;
  case rgBaseCalculo.ItemIndex of
    0:  CDSFacVtaFDLiquidacion.Value   := CDSFacVtaFDTOTAL.AsFloat * CDSFacVtaFDCOMSIONVENDEDOR.AsFloat * 0.01;
    1:  CDSFacVtaFDLiquidacion.Value   := CDSFacVtaFDTOTALFC.AsFloat * CDSFacVtaFDCOMSIONVENDEDOR.AsFloat * 0.01;
  end;

  CDSFacVtaFDSALDOCALCULADO.Value:= CDSFacVtaFDSALDO.AsFloat;

//  if CDSFacVtaFDTIPOCPBTE.Value='NC' Then
 //   CDSFacVtaFDLiquidacion.Value:=CDSFacVtaFDLiquidacion.Value * -1;
  if (CDSFacVtaFDTIPOCPBTE.Value='FO') Then
    CDSFacVtaFDSALDOCALCULADO.Value:=0;
end;

procedure TFormControlComisiones.CDSFacVtaFDAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CDSFacVtaFD.Cancel;
end;

procedure TFormControlComisiones.CDSFacVtaFDAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormControlComisiones.ConfirmaExecute(Sender: TObject);
VAR Acumulador:Extended;
    Id_Movimiento:Integer;
    Lote         :Integer;
begin
 // inherited;
  Acumulador:=0;
  QUltimoLoteFD.Close;
  QUltimoLoteFD.Open;
  if QUltimoLoteFD.Fields[0].AsString<>'' then
    Lote:=QUltimoLoteFD.Fields[0].AsInteger+1
  else
    Lote:=1;
  QUltimoLoteFD.Close;

  Id_Movimiento := ibId.IncrementFD(1);

  if CDSFacVtaFD.State <> dsBrowse Then
    CDSFacVtaFD.Post;
  CDSFacVtaFD.First;
  CDSFacVtaFD.DisableControls;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    while Not(CDSFacVtaFD.Eof) DO
      begin
        if CDSFacVtaFD.State=dsBrowse then
          CDSFacVtaFD.Edit;
        if CDSFacVtaFDLIQUIDADA.Value='S' Then
          begin
            Acumulador  :=Acumulador+CDSFacVtaFDLiquidacion.Value;
            CDSFacVtaFDFECHA_LIQUIDACION.AsDateTime:=FechaLiquidacion.Date;

            QLoteLiquidacionFD.Close;
            QLoteLiquidacionFD.ParamByName('Lote').Value       := Lote;
            QLoteLiquidacionFD.ParamByName('id_factura').Value := CDSFacVtaFDID_FC.Value;
            QLoteLiquidacionFD.ParamByName('id_mov').Value     := Id_Movimiento;
            QLoteLiquidacionFD.ParamByName('comision').AsFloat := CDSFacVtaFDLiquidacion.AsFloat;

            QLoteLiquidacionFD.ExecSQL;

          end;

        CDSFacVtaFD.Next;
      end;
    CDSFacVtaFD.EnableControls;
    CDSFacVtaFD.ApplyUpdates(0);
    CDSFacVtaFD.Close;

    if Acumulador<>0 Then
      begin
        CDSMovCtaCteVendedorFD.Open;
        CDSMovCtaCteVendedorFD.Insert;
        CDSMovCtaCteVendedorFDID.AsInteger     := Id_Movimiento;
        CDSMovCtaCteVendedorFDCODIGO.Value     := ceVendedor.Text;
        CDSMovCtaCteVendedorFDFECHA.AsDateTime := FechaLiquidacion.Date;
        CDSMovCtaCteVendedorFDCLASECOMP.Value  := 'IP';
        CDSMovCtaCteVendedorFDDETALLE.Value    := 'Liquidacion Por Vtas. al '+hasta.text;
        CDSMovCtaCteVendedorFDDEBE.AsFloat     := Acumulador;
        CDSMovCtaCteVendedorFDHABER.AsFloat    := 0;
        CDSMovCtaCteVendedorFD.Post;
        CDSMovCtaCteVendedorFD.ApplyUpdates(0);
        CDSMovCtaCteVendedorFD.Close;
      end;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('NO se liquido....!');
  End;
  CDSFacVtaFD.Open;
end;

procedure TFormControlComisiones.FcNoLiquidarExecute(Sender: TObject);
begin
  inherited;
  if (CDSFacVtaFDID_FC.AsString<>'') and(CDSFacVtaFDLIQUIDADA.Value<>'S') then
    begin
       DMStoreProcedure.spMarcarComisionaFC.Close;
       DMStoreProcedure.spMarcarComisionaFC.Params.ParamByName('id').Value:=CDSFacVtaFDID_FC.Value;
       DMStoreProcedure.spMarcarComisionaFC.ExecProc;
       DMStoreProcedure.spMarcarComisionaFC.Close;

      Buscar.Execute;
    end;

end;

procedure TFormControlComisiones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LstComisionArt.ini');
  ArchivoIni.WriteFloat('Opciones', 'Tolerancia',edTolerancia.Value);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormControlComisiones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlComisiones:=nil;
end;

procedure TFormControlComisiones.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if (CDSFacVtaFDTIPOCPBTE.AsString='FC') or
     (CDSFacVtaFDTIPOCPBTE.AsString='ND') or
     (CDSFacVtaFDTIPOCPBTE.AsString='NC') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew   := CDSFacVtaFDID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSFacVtaFDTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSFacVtaFDTIPOCPBTE.AsString='FO') Then
      begin
        IF NOT (Assigned(FormCpbteCtdo_2)) THEN
          FormCpbteCtdo_2    := TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew   := CDSFacVtaFDID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte := CDSFacVtaFDTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;

        FormCpbteCtdo_2.Show;
      end
    else
    if (CDSFacVtaFDTIPOCPBTE.AsString='TK') Then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta    := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := CDSFacVtaFDID_FC.AsString;
        FormTicketVta.TipoCpbte := CDSFacVtaFDTIPOCPBTE.AsString;
        FormTicketVta.Recuperar.Execute;

        FormTicketVta.Show;
      end;

end;

procedure TFormControlComisiones.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frCtaLiquidacion.PrintOptions.Printer:=PrNomListados;
  frCtaLiquidacion.SelectPrinter;
  frCtaLiquidacion.LoadFromFile(DMMain_FD.PathReportesLst+'\LiquidacionVendedor.fr3');
  frCtaLiquidacion.Variables['nombre'] := ''''+edNombreVendedor.Text+'''';
  frCtaLiquidacion.Variables['codigo'] := ''''+ceVendedor.Text+'''';
  frCtaLiquidacion.Variables['desde']  := ''''+Desde.Text+'''';
  frCtaLiquidacion.Variables['hasta']  := ''''+hasta.Text+'''';
  frCtaLiquidacion.ShowReport;
  ceVendedor.SetFocus;
  ceVendedor.SelectAll;

end;

procedure TFormControlComisiones.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormControlComisiones.DSBaseStateChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFormControlComisiones.edToleranciaChange(Sender: TObject);
begin
  inherited;
  if not(CDSFacVtaFD.IsEmpty) then
   spbUnchekClick(Sender);

end;

procedure TFormControlComisiones.ceVendedorKeyPress(Sender: TObject;
  var Key: Char);
var dato:string;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceVendedor.Text))) + ceVendedor.Text;
      ceVendedor.Text := Dato;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := Dato;
      CDSPersonal.Open;
      IF (NOT (CDSPersonal.IsEmpty)) and (CDSPersonalVendedor.Value='S') THEN
        BEGIN
          edNombreVendedor.Text := CDSPersonalNOMBRE.Value;
          edTasaComision.Text   := FormatFloat('0.00',CDSPersonalCOMISION.AsFloat);
        END
      else
        BEGIN
          ceVendedor.Text       :='';
          edNombreVendedor.Text := '';
          edTasaComision.Text   :=FormatFloat('0.00',0);
        END;

      Buscar.Execute;
      ceVendedor.SetFocus;
      ceVendedor.SelectAll;
    END;
  CDSPersonal.Close;
end;

procedure TFormControlComisiones.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;

end;

procedure TFormControlComisiones.FormResize(Sender: TObject);
begin
  inherited;
   if FormControlComisiones<>nil then
     if FormControlComisiones.Width<>983 then
       FormControlComisiones.Width:=983;
end;

procedure TFormControlComisiones.CDSFacVtaCOMSIONVENDEDORSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  case rgBaseCalculo.ItemIndex of
    0:  CDSFacVtaFDLiquidacion.Value:=Sender.AsFloat * CDSFacVtaFDTOTAL.Value*0.01;
    1:  CDSFacVtaFDLiquidacion.Value:=Sender.AsFloat * CDSFacVtaFDTOTALFC.AsFloat*0.01;
  end;
  CDSFacVtaFD.Post;
end;

procedure TFormControlComisiones.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(Date,y,M,D);
  Desde.Date:=EncodeDate(y,M,1);
  Hasta.Date:=EncodeDate(y,M,DaysInMonth(Desde.Date));

  ceVendedor.SetFocus;
  FechaLiquidacion.Date:=Date;
end;

procedure TFormControlComisiones.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormControlComisiones.UpDown1Click(Sender: TObject;
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

procedure TFormControlComisiones.CDSFacVtaFDLIQUIDADASetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Not(CDSFacVtaFD.IsEmpty) then
    begin
      if Not(chLiqTodas.Checked=True) then
        begin
//          if (CDSFacVtaSALDOCALCULADO.AsFloat<0) OR(CDSFacVtaSALDOCALCULADO.AsString='') Then
          if (CDSFacVtaFDSALDOCALCULADO.AsFLoat<=edTolerancia.Value) OR (CDSFacVtaFDSALDOCALCULADO.AsString='') Then
            Sender.AsString:=Text
          else
            begin
              ShowMessage('Factura con saldo Pendiente, no se puede liquidar.....!');
              Sender.AsString:='N';
            end;
        end
      else
        Sender.AsString:=Text;
      Sumar;
    end;
end;

procedure TFormControlComisiones.ReAsignaPorcentajeExecute(
  Sender: TObject);
var P:TBookmark;
begin
  inherited;
  p:=CDSFacVtaFD.GetBookmark;
  CDSFacVtaFD.First;
  CDSFacVtaFD.DisableControls;
  while not(CDSFacVtaFD.eof) Do
    begin
      if chSoloCero.Checked Then
        begin
          if CDSFacVtaFDCOMSIONVENDEDOR.AsFloat<=0 Then
            begin
              CDSFacVtaFD.Edit;
              CDSFacVtaCOMSIONVENDEDORSetText(CDSFacVtaFDCOMSIONVENDEDOR,edTasaComision.Text);
            end;
        end
      else
        begin
          CDSFacVtaFD.Edit;
          CDSFacVtaCOMSIONVENDEDORSetText(CDSFacVtaFDCOMSIONVENDEDOR,edTasaComision.Text);
        end;
      CDSFacVtaFD.Next;
    end;
  if CDSFacVtaFD.State in [dsedit,dsinsert] Then
    CDSFacVtaFD.Post;
  CDSFacVtaFD.GotoBookmark(p);
  CDSFacVtaFD.EnableControls;
  CDSFacVtaFD.FreeBookmark(p);
end;

procedure TFormControlComisiones.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCtaLiquidacion.DesignReport;
end;

procedure TFormControlComisiones.spbChekTosClick(Sender: TObject);
begin
  inherited;
  CDSFacVtaFDLIQUIDADA.OnSetText:=nil;
  CDSFacVtaFD.First;
  while not(CDSFacVtaFD.Eof) DO
    begin
      CDSFacVtaFD.Edit;
      ////////////////////////////////
    //   if (StrToFloat(FormatFloat('0.00',CDSFacVtaMUESTRASALDOCALCULADO.Value))<=edTolerancia.Value) OR
    //       (VarIsNull(CDSFacVtaMUESTRASALDOCALCULADO.Value)) Then
    //        CDSFacVtaLIQUIDADA.Value:='S';
     ///

      if (CDSFacVtaFDSALDOCALCULADO.AsFLoat<=edTolerancia.Value) OR (CDSFacVtaFDSALDOCALCULADO.AsString='') Then
        begin
          CDSFacVtaFDLIQUIDADA.Value:='S';
          CDSFacVtaFDFecha_Liquidacion.AsDateTime:=FechaLiquidacion.Date;
        end;
      if (chLiqTodas.Checked) Then
        begin
          CDSFacVtaFDLIQUIDADA.Value:='S';
          CDSFacVtaFDFecha_Liquidacion.AsDateTime:=FechaLiquidacion.Date;
        end;
      CDSFacVtaFD.Next;
    end;
  CDSFacVtaFDLIQUIDADA.OnSetText:=CDSFacVtaFDLIQUIDADASetText;

  Sumar;
end;

procedure TFormControlComisiones.spbUnchekClick(Sender: TObject);
begin
  inherited;
  CDSFacVtaFDLIQUIDADA.OnSetText:=nil;
  CDSFacVtaFD.First;
  while not(CDSFacVtaFD.Eof) DO
    begin
      CDSFacVtaFD.Edit;
      CDSFacVtaFDLIQUIDADA.Value:='N';
      CDSFacVtaFD.Next;
    end;
  CDSFacVtaFDLIQUIDADA.OnSetText:=CDSFacVtaFDLIQUIDADASetText;

  Sumar;
end;

end.