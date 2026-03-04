unit UListadoRetencionesCobranza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,  frxDBSet, frxClass, Menus, ComCtrls, StdCtrls,
  Mask,   ActnList, Buttons, ToolWin, ExtCtrls,
  ImgList, JvComponentBase, JvExControls, JvGradient,
  DataExport, DataToXLS, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvExMask, JvToolEdit, Provider, DBClient, JvDBLookup,
  JvExDBGrids, JvDBGrid, JvBaseEdits,DateUtils, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, cxCustomPivotGrid, cxDBPivotGrid, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore,
  dxPScxCommon,cxExportPivotGridLink, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, JvAppStorage,
  JvAppIniStorage, System.Actions, dxPScxGridLnk, dxPScxGridLayoutViewLnk,VirtualUI_SDK,
  Vcl.Grids, Vcl.DBGrids,CompBuscador, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvGroupBox, AdvOfficeButtons,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, frxExportBaseDialog, frxExportPDF, System.ImageList,
  dxPScxExtComCtrlsLnk, frCoreClasses;

type
  TFormListadoRetencionesCobranza = class(TFormABMBase)
    UpDown1: TUpDown;
    PopupMenu1: TPopupMenu;
    ExportarTxt1: TMenuItem;
    ExportarIVATxt1: TMenuItem;
    SaveDialog1: TSaveDialog;
    frRetenciones: TfrxReport;
    frDBDSRetenciones: TfrxDBDataset;
    DSRetenciones: TDataSource;
    btImprimir: TBitBtn;
    ExportarIIBBTxtWeb: TAction;
    ExportaIVATxt: TAction;
    ToolButton1: TToolButton;
    ExportarGanancia: TAction;
    edCodigoReg: TEdit;
    Label1: TLabel;
    ExportarRetGan1: TMenuItem;
    DataToXLS1: TDataToXLS;
    ExportarXLS: TAction;
    N1: TMenuItem;
    ExportaraXLS1: TMenuItem;
    edNombreCliente: TEdit;
    BuscadorCliente: TAction;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceCliente: TJvComboEdit;
    CDSRetenciones: TClientDataSet;
    DSPRetenciones: TDataSetProvider;
    CDSRetencionesID_MOV_RETENCIONES: TIntegerField;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPOCPBTE: TStringField;
    CDSRetencionesCLASECPBTE: TStringField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesID_CPBTE: TIntegerField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesCODIGO_CLIENTE: TStringField;
    CDSRetencionesCUIT_CLIENTE: TStringField;
    CDSRetencionesJURIDICCION: TIntegerField;
    CDSRetencionesNOMBRE_CLIENTE: TStringField;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    cbSeparador: TComboBox;
    JvLabel: TJvLabel;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
    ExportarIIBBSifereTxt: TAction;
    N2: TMenuItem;
    ExportarIIBBTxt1: TMenuItem;
    CDSRetencionesSUCURSAL: TIntegerField;
    CDSRetencionesMUESTRASUC: TStringField;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    Label2: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    CDSRetencionesCONTABILIZA: TStringField;
    CDSRetencionesCONTA: TBooleanField;
    DSPRetTC: TDataSetProvider;
    CDSRetTC: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    IntegerField5: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    ExportarIIBB_Mensual: TAction;
    pcRetenciones: TPageControl;
    tsGeneral: TTabSheet;
    tsTCredito: TTabSheet;
    dbgMov: TJvDBGrid;
    DSRetTC: TDataSource;
    CDSRetTCTC_CODIGO: TIntegerField;
    CDSRetTCTC_NOMBRE: TStringField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    DSPRetBco: TDataSetProvider;
    CDSRetBco: TClientDataSet;
    DSRetBco: TDataSource;
    cxDBPivotGrid2: TcxDBPivotGrid;
    cxDBPivotGridField1: TcxDBPivotGridField;
    cxDBPivotGridField2: TcxDBPivotGridField;
    cxDBPivotGridField3: TcxDBPivotGridField;
    cxDBPivotGridField4: TcxDBPivotGridField;
    cxDBPivotGridField5: TcxDBPivotGridField;
    CDSRetBcoID_MOV_RETENCIONES: TIntegerField;
    CDSRetBcoID_RETENCION: TIntegerField;
    CDSRetBcoDETALLE: TStringField;
    CDSRetBcoTIPOCPBTE: TStringField;
    CDSRetBcoCLASECPBTE: TStringField;
    CDSRetBcoNROCPBTE: TStringField;
    CDSRetBcoID_CPBTE: TIntegerField;
    CDSRetBcoNRO_RETENCION: TStringField;
    CDSRetBcoCODIGO_CLIENTE: TStringField;
    CDSRetBcoCUIT_CLIENTE: TStringField;
    CDSRetBcoJURIDICCION: TIntegerField;
    CDSRetBcoNOMBRE_CLIENTE: TStringField;
    CDSRetBcoSUCURSAL: TIntegerField;
    CDSRetBcoCONTABILIZA: TStringField;
    CDSRetBcoTC_CODIGO: TIntegerField;
    CDSRetBcoTC_NOMBRE: TStringField;
    CDSRetBcoBCO_CODIGO: TIntegerField;
    CDSRetBcoBCO_NOMBRE: TStringField;
    CDSRetBcoMUESTRASUC: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dxComponentPrinter2: TdxComponentPrinter;
    dxComponentPrinter2Link1: TcxPivotGridReportLink;
    dxComponentPrinter2Link2: TcxPivotGridReportLink;
    btExcelGastos: TBitBtn;
    BitBtn3: TBitBtn;
    cbFiltroCpbte: TComboBox;
    Label3: TLabel;
    QClientes: TFDQuery;
    QRetBco: TFDQuery;
    QRetTC: TFDQuery;
    QRet: TFDQuery;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesCODIGO: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    CDSRetencionesIMPORTE: TFloatField;
    CDSRetTCIMPORTE: TFloatField;
    CDSRetBcoIMPORTE: TFloatField;
    chcpbteContabilizan: TAdvOfficeCheckBox;
    chbTodosLosClientes: TAdvOfficeCheckBox;
    rgInforma: TAdvOfficeRadioGroup;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    CDSRetTCFECHA: TSQLTimeStampField;
    CDSRetTCFECHA_RETENCION: TSQLTimeStampField;
    CDSRetBcoFECHA: TSQLTimeStampField;
    CDSRetBcoFECHA_RETENCION: TSQLTimeStampField;
    frxPDFExport1: TfrxPDFExport;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure btImprimirClick(Sender: TObject);
    procedure ExportarIIBBTxtWebExecute(Sender: TObject);
    procedure ExportaIVATxtExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ExportarGananciaExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure BuscadorClienteExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure chbTodosLosClientesClick(Sender: TObject);
    procedure ExportarIIBBSifereTxtExecute(Sender: TObject);
    procedure CDSRetencionesCalcFields(DataSet: TDataSet);
    function dbgMovCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure chcpbteContabilizanClick(Sender: TObject);
    procedure ExportarIIBB_MensualExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btExcelGastosClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cbFiltroCpbteClick(Sender: TObject);
    procedure pcRetencionesResize(Sender: TObject);
    procedure dbgMovDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    D,A,M:Word;
  end;

var
  FormListadoRetencionesCobranza: TFormListadoRetencionesCobranza;

implementation

uses  UBuscadorClientes, UDMain_FD, URecibo_2;

{$R *.DFM}
{$R-}

procedure TFormListadoRetencionesCobranza.BuscadorClienteExecute(
  Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
          Buscar.Execute;
        END;
    end;

end;

procedure TFormListadoRetencionesCobranza.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF (Desde.Date > 0) AND (Hasta.Date > 0) THEN
    BEGIN
      CDSRetenciones.Close;
      CDSRetenciones.Params.ParamByName('FechaInicial').AsDate := Desde.Date;
      CDSRetenciones.Params.ParamByName('FechaFinal').AsDate   := Hasta.Date;
      if (chbTodosLosClientes.Checked=True) then
        CDSRetenciones.Params.ParamByName('codigo').Value   := '******'
      else
        CDSRetenciones.Params.ParamByName('codigo').Value    := Trim(ceCliente.Text);
      CDSRetenciones.Params.ParamByName('Sucursal').AsInteger:= dbcSucursal.KeyValue;
      CDSRetenciones.Open;

      CDSRetTC.Close;
      CDSRetTC.Params.ParamByName('FechaInicial').AsDate := Desde.Date;
      CDSRetTC.Params.ParamByName('FechaFinal').AsDate   := Hasta.Date;
      CDSRetTC.Params.ParamByName('codigo').Value   := '******';
      CDSRetTC.Params.ParamByName('Sucursal').AsInteger:= dbcSucursal.KeyValue;
      CDSRetTC.Open;

      CDSRetBco.Close;
      CDSRetBco.Params.ParamByName('FechaInicial').AsDate := Desde.Date;
      CDSRetBco.Params.ParamByName('FechaFinal').AsDate   := Hasta.Date;
      CDSRetBco.Params.ParamByName('codigo').Value   := '******';
      CDSRetBco.Params.ParamByName('Sucursal').AsInteger:= dbcSucursal.KeyValue;
      CDSRetBco.Open;

    END
  ELSE
    ShowMessage('No hay fechas Seleccionadas....');
  cxDBPivotGrid1Field5.ExpandAll;
  cxDBPivotGridField5.ExpandAll;
end;

procedure TFormListadoRetencionesCobranza.cbFiltroCpbteClick(Sender: TObject);
begin
  inherited;
  CDSRetenciones.Filtered:=False;
  CDSRetenciones.Filter:='TipoCpbte = '+''''+cbFiltroCpbte.Text+'''';
  CDSRetenciones.Filtered:=cbFiltroCpbte.Text<>'**';  
  
end;

procedure TFormListadoRetencionesCobranza.CDSRetencionesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSRetencionesCONTA.Value:=CDSRetencionesCONTABILIZA.Value='S';
end;

procedure TFormListadoRetencionesCobranza.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT (QClientes.eof) THEN
        edNombreCliente.Text := QClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;
end;

procedure TFormListadoRetencionesCobranza.chbTodosLosClientesClick(
  Sender: TObject);
begin
  inherited;
  if ( chbTodosLosClientes.Checked=True ) then
    begin
      ceCliente.Color  :=clBtnFace;
      ceCliente.Enabled:=False;
    end
  else
    begin
      ceCliente.Color  :=clWindow;
      ceCliente.Enabled:=True;
    end;
  Buscar.Execute;
end;

procedure TFormListadoRetencionesCobranza.chcpbteContabilizanClick(
  Sender: TObject);
begin
  inherited;
  CDSRetenciones.Filtered:=False;
  CDSRetenciones.Filter:=' CONTABILIZA = ''S'' ';
  CDSRetenciones.Filtered:=chcpbteContabilizan.Checked;

  CDSRetTC.Filtered:=False;
  CDSRetTC.Filter:=' CONTABILIZA = ''S'' ';
  CDSRetTC.Filtered:=chcpbteContabilizan.Checked;

  CDSRetBco.Filtered:=False;
  CDSRetBco.Filter:=' CONTABILIZA = ''S'' ';
  CDSRetBco.Filtered:=chcpbteContabilizan.Checked;

end;

function TFormListadoRetencionesCobranza.dbgMovCheckIfBooleanField(
  Grid: TJvDBGrid; Field: TField; var StringForTrue,
  StringForFalse: string): Boolean;
begin
  inherited;
  result := Field = CDSRetencionesCONTA;
  StringForTrue  := 'True';
  StringForFalse := 'False';
end;

procedure TFormListadoRetencionesCobranza.dbgMovDblClick(Sender: TObject);
begin
  inherited;
  if (CDSRetencionesTIPOCPBTE.AsString='RC') Then
    begin
      IF NOT (Assigned(FormRecibo_2)) THEN
        FormRecibo_2:= TFormRecibo_2.Create(self);
      FormRecibo_2.DatoNew    := CDSRetencionesID_CPBTE.AsString;
      FormRecibo_2.TipoCpbte  := CDSRetencionesTIPOCPBTE.AsString;
      FormRecibo_2.Recuperar.Execute;
      FormRecibo_2.Show;
      FormRecibo_2.BringToFront;
    end
end;

procedure TFormListadoRetencionesCobranza.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFormListadoRetencionesCobranza.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter2.CurrentLink:=dxComponentPrinter2Link1;
  dxComponentPrinter2.Preview(True);
end;

procedure TFormListadoRetencionesCobranza.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter2.CurrentLink:=dxComponentPrinter2Link2;
  dxComponentPrinter2.Preview(True);
end;

procedure TFormListadoRetencionesCobranza.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSRetTC.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='retBco';
      SaveDialog1.DefaultExt:='XLS';
      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      if SaveDialog1.Execute Then
        begin
          SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
          cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid2);
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoRetencionesCobranza.btExcelGastosClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSRetTC.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='retTarjetas';
      SaveDialog1.DefaultExt:='XLS';
      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      if SaveDialog1.Execute Then
        begin
          SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
          cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoRetencionesCobranza.btImprimirClick(Sender: TObject);
begin
  inherited;
  IF NOT (CDSRetenciones.IsEmpty) THEN
    BEGIN

      frRetenciones.PrintOptions.Printer:=PrNomListados;
      frRetenciones.SelectPrinter;
      frRetenciones.LoadFromFile(DMMain_FD.PathReportesLst+'\Retenciones.fr3');
      // frCtaCte.PrepareReport;
      frRetenciones.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para Listar');

end;


procedure TFormListadoRetencionesCobranza.ExportarIIBBSifereTxtExecute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  juri,Cuit,Fecha,NroRet,Tipo,Letra,NroCpbte,Importe: String;
  i:byte;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  DecodeDate(Hasta.Date,A,M,D);
  SaveDialog1.FileName:='Retenciones_SIFERE-'+IntToStr(A)+'-'+IntToStr(M);
  SaveDialog1.DefaultExt:='txt';

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  CDSRetenciones.First;
  if SaveDialog1.Execute Then
    if SaveDialog1.FileName<>'' then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetenciones.Eof) do
        begin
          if CDSRetencionesID_RETENCION.Value=2 Then   //Ingresos Brutos
            begin
              if CDSRetencionesJURIDICCION.AsString<>'' Then
                juri:=CDSRetencionesJURIDICCION.AsString
              else
                juri:='902';
              Cuit  :=CDSRetencionesCUIT_CLIENTE.AsString;
              NroRet:=CDSRetencionesNRO_RETENCION.AsString;
              for i:=1 to length(NroRet) Do
                begin
                  if Not(NroRet[i] in ['0'..'9']) Then
                    delete(NroRet,i,1);
                end;
              For I:=0 to length(NroRet) do
                if Not(NroRet[i] in ['0'..'9']) Then delete(NroRet,i,1);
              NroRet:=Copy('000000000000000000000000000',1,20-length(NroRet))+NroRet;
              Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetencionesFECHA_RETENCION.AsDateTime);

              if (CDSRetencionesTIPOCPBTE.Value='FC') or
                 (CDSRetencionesTIPOCPBTE.Value='LQ') or
                 (CDSRetencionesTIPOCPBTE.Value='GX') Then
                Tipo:='F'
              else
                if CDSRetencionesTIPOCPBTE.Value='FO' Then
                  Tipo:='F'
                else
                  if CDSRetencionesTIPOCPBTE.Value='RC' Then
                    Tipo:='R'
                  else
                    if CDSRetencionesTIPOCPBTE.Value='NC' Then
                      Tipo:='C'
                    else
                      if CDSRetencionesTIPOCPBTE.Value='ND' Then Tipo:='D';
              case CDSRetencionesNROCPBTE.AsString[1] of
                'A':Letra:='A';
                'B':Letra:='B';
                else Letra:='C';
              end;
              NroCpbte:=Copy('0000000000000000000',1,20-(length(CDSRetencionesNROCPBTE.Value)-1))+Copy(CDSRetencionesNROCPBTE.Value,2,13);
              if cbSeparador.Text=',' Then
                Importe:=FormatFloat('000000000,00',CDSRetencionesIMPORTE.AsFloat)
              else
                Importe:=FormatFloat('000000000.00',CDSRetencionesIMPORTE.AsFloat);
              delete(importe,10,1);

              if cbSeparador.Text=',' Then
                Insert(',',importe,10)
              else
                Insert(',',importe,10);

              WriteLn(ArchiTxt,
                              juri,
                              Cuit,                                           //Cuit
                              Fecha ,                                         //Fecha dd/mm/aaaa
                              NroRet,                                        //Nro.Comprobante
                              tipo,
                              letra,
                              nrocpbte,
                              Importe);  //Importe con 2 digitos

            end;
          CDSRetenciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
      if Not(VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSRetenciones.First;
end;

procedure TFormListadoRetencionesCobranza.ExportarIIBBTxtWebExecute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  juri,Cuit,Fecha,NroRet,Tipo,Letra,NroCpbte,Importe,Nombre: String;
  i:byte;
  y,m,d:Word;
  ano,mes:String;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  CDSEmpresa.Close;
  CDSEmpresa.Open;
  DecodeDate(Desde.Date,y,m,d);
  ano:=IntToStr(y);
  mes:=IntToStr(m);
  mes:=Copy('00',1,2-length(mes))+mes;
  cuit:=CDSEmpresaCUIT.Value;
  while Pos('-',cuit)>0 do
   Delete(cuit,Pos('-',cuit),1);

  case rgInforma.ItemIndex of
    0:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'1-6'+'-'+'LOTE1';
    1:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'2-6'+'-'+'LOTE1';
    2:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'0-6'+'-'+'LOTE1';
  end;

//  nombre:='AR'+'-'+Cuit+'-'+ano+mes+'06'+'-'+'LOTE1';
  SaveDialog1.FileName:=Nombre;
  SaveDialog1.DefaultExt:='txt';
  CDSRetenciones.First;

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
  if SaveDialog1.FileName<>'' Then

    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetenciones.Eof) do
        begin
          if CDSRetencionesID_RETENCION.Value=2 Then   //Ingresos Brutos
            begin
              if CDSRetencionesJURIDICCION.AsString<>'' Then
                juri:=CDSRetencionesJURIDICCION.AsString
              else
                juri:='902';
              Cuit  :=CDSRetencionesCUIT_CLIENTE.AsString;
              NroRet:=CDSRetencionesNRO_RETENCION.AsString;
              for i:=1 to length(NroRet) Do
                begin
                  if Not(NroRet[i] in ['0'..'9']) Then
                    delete(NroRet,i,1);
                end;
              For I:=0 to length(NroRet) do
                if Not(NroRet[i] in ['0'..'9']) Then delete(NroRet,i,1);
              NroRet:=Copy('000000000000000000000000000',1,20-length(NroRet))+NroRet;
              Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetencionesFECHA_RETENCION.AsDateTime);

              if (CDSRetencionesTIPOCPBTE.Value='FC') or (CDSRetencionesTIPOCPBTE.Value='LQ') or (CDSRetencionesTIPOCPBTE.Value='GX') Then
                Tipo:='F'
              else
                if CDSRetencionesTIPOCPBTE.Value='FO' Then
                  Tipo:='F'
                else
                  if CDSRetencionesTIPOCPBTE.Value='RC' Then
                    Tipo:='R'
                  else
                    if CDSRetencionesTIPOCPBTE.Value='NC' Then
                      Tipo:='C'
                    else
                      if CDSRetencionesTIPOCPBTE.Value='ND' Then Tipo:='D';
              case CDSRetencionesNROCPBTE.AsString[1] of
                'A':Letra:='A';
                'B':Letra:='B';
                else Letra:='C';
              end;
//              NroCpbte:=Copy('0000000000000000000',1,20-(length(CDSRetencionesNROCPBTE.Value)-1))+Copy(CDSRetencionesNROCPBTE.Value,2,13);
              NroCpbte:=Copy(CDSRetencionesNROCPBTE.Value,2,13);
              if cbSeparador.Text=',' Then
                Importe:=FormatFloat('00000000,00',CDSRetencionesIMPORTE.AsFloat)
              else
                Importe:=FormatFloat('00000000.00',CDSRetencionesIMPORTE.AsFloat);

//              WriteLn(ArchiTxt,
//                              juri,
//                              Cuit,                                           //Cuit
//                              Fecha ,                                         //Fecha dd/mm/aaaa
//                              NroRet,                                        //Nro.Comprobante
//                              tipo,
//                              letra,
//                              nrocpbte,
//                              Importe);  //Importe con 2 digitos

              WriteLn(ArchiTxt,
                              Cuit,                                           //Cuit
                              Fecha ,                                         //Fecha dd/mm/aaaa
                              NroCpbte,                                        //Nro.Comprobante
                              Importe,
                              'A');  //Importe con 2 digitos

            end;
          CDSRetenciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSRetenciones.First;
end;

procedure TFormListadoRetencionesCobranza.ExportarIIBB_MensualExecute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  Cuit,Fecha,Suc,NroRet,Importe,Nombre: String;
  i:byte;
  y,m,d:Word;
  ano,mes:String;
begin
  DecodeDate(Desde.Date,y,m,d);
  ano:=IntToStr(y);
  mes:=IntToStr(m);
  mes:=Copy('00',1,2-length(mes))+mes;
  while Pos('-',cuit)>0 do
   Delete(cuit,Pos('-',cuit),1);

//  nombre:='AR'+'-'+Cuit+'-'+ano+mes+'06'+'-'+'LOTE1';
  SaveDialog1.FileName:=Nombre;

  CDSRetenciones.First;
  if SaveDialog1.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetenciones.Eof) do
        begin
          if CDSRetencionesID_RETENCION.Value=2 Then   //Ingresos Brutos
            begin
              Cuit  :=CDSRetencionesCUIT_CLIENTE.AsString;
              while Pos('-',cuit)>0 do
                Delete(cuit,Pos('-',cuit),1);

              NroRet:=CDSRetencionesNRO_RETENCION.AsString;
              for i:=1 to length(NroRet) Do
                begin
                  if Not(NroRet[i] in ['0'..'9']) Then
                    delete(NroRet,i,1);
                end;
              For I:=0 to length(NroRet) do
                if Not(NroRet[i] in ['0'..'9']) Then delete(NroRet,i,1);
              NroRet:=Copy('000000000000000000000000000',1,20-length(NroRet))+NroRet;

              Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetencionesFECHA_RETENCION.AsDateTime);

              NroRet:=Copy(CDSRetencionesNROCPBTE.Value,2,13);
              if cbSeparador.Text=',' Then
                Importe:=FormatFloat('00000000,00',CDSRetencionesIMPORTE.AsFloat)
              else
                Importe:=FormatFloat('00000000.00',CDSRetencionesIMPORTE.AsFloat);


              WriteLn(ArchiTxt,
                              Cuit,                                           //Cuit
                              Fecha ,                                         //Fecha dd/mm/aaaa
                              NroRet,                                        //Nro.Comprobante
                              Importe,
                              'A');  //Importe con 2 digitos

            end;
          CDSRetenciones.Next;
        end;
      CloseFile(ArchiTxt);
      ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSRetenciones.First;
end;

procedure TFormListadoRetencionesCobranza.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSRetenciones.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Retenciones';
      SaveDialog1.DefaultExt:='XLS';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            SaveDialog1.FileName:=SaveDialog1.FileName;
            DataToXLS1.SaveToFile(SaveDialog1.FileName);
            ShowMessage('Datos Exportados en '+SaveDialog1.FileName);

            if VirtualUI.Active then
               VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormListadoRetencionesCobranza.ExportaIVATxtExecute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  juri,Cuit,Fecha,NroRet,Importe: String;
  i:byte;
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  DecodeDate(Date,A,M,D);
  SaveDialog1.FileName:='Retenciones_IVA-'+IntToStr(A)+'-'+IntToStr(M);
  SaveDialog1.DefaultExt:='txt';

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  CDSRetenciones.First;
  if SaveDialog1.Execute Then
    if SaveDialog1.FileName<>'' Then
    begin

      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetenciones.Eof) do
        begin
          if CDSRetencionesID_RETENCION.Value=1 Then   //Iva
            begin
              if CDSRetencionesJURIDICCION.AsString<>'' Then
                juri:=CDSRetencionesJURIDICCION.AsString
              else
                juri:='230'; // codigo de retencion por defecto Locacion y Prestcion de Srvicios
              Cuit:=CDSRetencionesCUIT_CLIENTE.AsString;
              Fecha := FormatDateTime('dd/mm/yyyy',CDSRetencionesFECHA_RETENCION.AsDateTime);
              NroRet:= CDSRetencionesNRO_RETENCION.AsString;
              For I:=0 to length(NroRet) do
                if Not(NroRet[i] in ['0'..'9']) Then delete(NroRet,i,1);
              NroRet:=Copy('000000000000000000000000000',1,16-length(NroRet))+NroRet;
              if cbSeparador.Text=',' Then
                Importe:=FormatFloat('0000000000000,00',CDSRetencionesIMPORTE.AsFloat)
              else
                Importe:=FormatFloat('0000000000000.00',CDSRetencionesIMPORTE.AsFloat);
              delete(importe,14,1);

              if cbSeparador.Text=',' Then
                Insert(',',importe,14)
              else
                Insert('.',importe,14);



              WriteLn(ArchiTxt,
                              juri,
                              Cuit,                                           //Cuit
                              Fecha ,                                         //Fecha dd/mm/aaaa
                              NroRet,                                        //Nro.Comprobante
                              Importe);  //Importe con 2 digitos

            end;
          CDSRetenciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSRetenciones.First;
end;

procedure TFormListadoRetencionesCobranza.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
  CDSSucursal.Open;
end;

procedure TFormListadoRetencionesCobranza.pcRetencionesResize(Sender: TObject);
begin
  inherited;
  if FormListadoRetencionesCobranza<>nil then
    if FormListadoRetencionesCobranza.Width<>1004 then
      FormListadoRetencionesCobranza.Width:=1004;
end;

procedure TFormListadoRetencionesCobranza.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frRetenciones.DesignReport;
end;

procedure TFormListadoRetencionesCobranza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSSucursal.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormListadoRetencionesCobranza.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  pcRetenciones.ActivePageIndex:=0;
  chbTodosLosClientes.Color:=clWhite;
end;

procedure TFormListadoRetencionesCobranza.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRetencionesCobranza:=nil;
end;

procedure TFormListadoRetencionesCobranza.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoRetencionesCobranza<>nil then
    if FormListadoRetencionesCobranza.Width<>1037 then
      FormListadoRetencionesCobranza.Width:=1037;
end;

procedure TFormListadoRetencionesCobranza.ExportarGananciaExecute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  juri,Cuit,Fecha,NroRet,Tipo,Letra,NroCpbte,Importe: String;
  i:byte;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  DecodeDate(Date,A,M,D);
  SaveDialog1.FileName:='Retenciones_Ganancia-'+IntToStr(A)+'-'+IntToStr(M);
  SaveDialog1.DefaultExt:='txt';

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  CDSRetenciones.First;
  if SaveDialog1.Execute Then
  if SaveDialog1.FileName<>'' Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetenciones.Eof) do
        begin
          if CDSRetencionesID_RETENCION.Value=3 Then   //Retenciones de Ganancia
            begin
              Cuit := CDSRetencionesCUIT_CLIENTE.AsString;
              while Pos('-',cuit)<>0 do
                Delete(cuit,pos('-',cuit),1);
              NroRet:= CDSRetencionesNRO_RETENCION.AsString;
              for i:=1 to length(NroRet) Do
                begin
                  if Not(NroRet[i] in ['0'..'9']) Then
                    delete(NroRet,i,1);
                end;
              if NroRet='' Then NroRet:='1';
              For I:=0 to length(NroRet) do
                if Not(NroRet[i] in ['0'..'9']) Then delete(NroRet,i,1);
              NroRet:=Copy('000000000000000000000000000',1,12-length(NroRet))+NroRet;
              Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetencionesFECHA_RETENCION.AsDateTime);

              if (CDSRetencionesTIPOCPBTE.Value='FC') or (CDSRetencionesTIPOCPBTE.Value='GX') or (CDSRetencionesTIPOCPBTE.Value='LQ') Then
                Tipo:='F'
              else
                if CDSRetencionesTIPOCPBTE.Value='FO' Then
                  Tipo:='F'
                else
                  if CDSRetencionesTIPOCPBTE.Value='RC' Then
                    Tipo:='R'
                  else
                    if CDSRetencionesTIPOCPBTE.Value='NC' Then
                      Tipo:='C'
                    else
                      if CDSRetencionesTIPOCPBTE.Value='ND' Then Tipo:='D';
              case CDSRetencionesNROCPBTE.AsString[1] of
                'A':Letra:='A';
                'B':Letra:='B';
                else Letra:='C';
              end;
              if cbSeparador.Text=',' Then
                Importe:=FormatFloat('000000000000,00',CDSRetencionesIMPORTE.AsFloat)
              else
                Importe:=FormatFloat('000000000000.00',CDSRetencionesIMPORTE.AsFloat);
              delete(importe,13,1);
              if cbSeparador.Text=',' Then
                Insert(',',importe,13)
              else
                Insert('.',importe,13);


              WriteLn(ArchiTxt,
                              Cuit,                                           //Cuit
                              Fecha ,                                         //Fecha dd/mm/aaaa
                              edCodigoReg.Text,
                              Importe,                                        //Nro.Comprobante
                              NroRet);  //Importe con 2 digitos

            end;
          CDSRetenciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSRetenciones.First;
end;



end.