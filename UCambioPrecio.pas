UNIT UCambioPrecio;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask,   ActnList, Buttons, Grids, Provider,
  Db, DBClient, ImgList, Gauges, ComCtrls, DBGrids, Menus, JvExControls, JvGradient,
  JvExDBGrids, JvDBGrid, JvDBGridFooter, JvLabel, JvDBControls, JvDBLookup, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, JvBaseEdits, Math, DBXCommon,
  System.Actions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, CompBuscador, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvFormPlacement, JvComponentBase, JvAppStorage,
  JvAppIniStorage, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations;

TYPE
  TFormCambioPrecios = CLASS(TForm)
    ActionList1: TActionList;
    Consulta: TAction;
    DSPStock: TDataSetProvider;
    BuscarMarca: TAction;
    BuscarRubro: TAction;
    BuscarSubRubro: TAction;
    Calcular: TAction;
    DSDeposito: TDataSource;
    Cancelar: TAction;
    Confirma: TAction;
    pcGeneral: TPageControl;
    pag1: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    chbMarca: TCheckBox;
    chbRubro: TCheckBox;
    chbSubRubro: TCheckBox;
    edMarca: TEdit;
    edRubro: TEdit;
    edSubRubro: TEdit;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    chbCostoExento: TCheckBox;
    chbMargen: TCheckBox;
    chbFPGravado: TCheckBox;
    chbCostoGravado: TCheckBox;
    chbFPExento: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btClose: TBitBtn;
    pag2: TTabSheet;
    dbgHistorial: TDBGrid;
    DSHistorial: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBGrid1: TDBGrid;
    DSArticukosAfectados: TDataSource;
    BorrarActaulizacion: TAction;
    PopupMenu: TPopupMenu;
    BorrarActaulizacion1: TMenuItem;
    Label12: TLabel;
    CDSStock: TClientDataSet;
    DSStock: TDataSource;
    pnBoot: TPanel;
    chbSombraExento: TCheckBox;
    chbSombraGravado: TCheckBox;
    Label6: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    dbcDeposito: TJvDBLookupCombo;
    rgSumaRemplaza: TRadioGroup;
    gEstado: TGauge;
    CDSBuscaMarca: TClientDataSet;
    DSPBuscaMarca: TDataSetProvider;
    CDSBuscaMarcaMARCA_STK: TStringField;
    CDSBuscaMarcaDESCRIPCION_MARCA: TStringField;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubroCODIGO_RUBRO: TStringField;
    CDSBuscaRubroDETALLE_RUBRO: TStringField;
    CDSBuscaSubRubro: TClientDataSet;
    DSPBuscaSubRubro: TDataSetProvider;
    CDSBuscaSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSBuscaSubRubroDETALLE_SUBRUBRO: TStringField;
    ceMarca: TJvComboEdit;
    ceRubro: TJvComboEdit;
    ceSubRubro: TJvComboEdit;
    CDSStockCODIGO: TStringField;
    CDSStockDETALLE: TStringField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSHistorial: TClientDataSet;
    DSPHistorial: TDataSetProvider;
    CDSHistorialID: TIntegerField;
    CDSHistorialMARCA: TStringField;
    CDSHistorialRUBRO: TStringField;
    CDSHistorialSUBRUBRO: TStringField;
    CDSHistorialMUESTRAMARCA: TStringField;
    CDSHistorialMUESTRARUBRO: TStringField;
    CDSHistorialMUESTRASUBRUBRO: TStringField;
    CDSArticulosAfectados: TClientDataSet;
    DSPArticulosAfectados: TDataSetProvider;
    CDSArticulosAfectadosID: TIntegerField;
    CDSArticulosAfectadosCODIGO_STK: TStringField;
    CDSArticulosAfectadosID_CAMBIO_PRECIO_GENERAL: TIntegerField;
    CDSArticulosAfectadosMOTIVO: TStringField;
    CDSArticulosAfectadosUSUARIO: TStringField;
    CDSArticulosAfectadosID_FC_COMPRA: TIntegerField;
    CDSArticulosAfectadosDETALLE_STK: TStringField;
    edcCostoExento: TJvCalcEdit;
    edcFPExento: TJvCalcEdit;
    edcMargen: TJvCalcEdit;
    edcFPGravado: TJvCalcEdit;
    edcCostoGravado: TJvCalcEdit;
    edcSombraExento: TJvCalcEdit;
    edcSombraGrav: TJvCalcEdit;
    cxGStockDBTableView1: TcxGridDBTableView;
    cxGStockLevel1: TcxGridLevel;
    cxGStock: TcxGrid;
    cxGStockDBTableView1CODIGO: TcxGridDBColumn;
    cxGStockDBTableView1DETALLE: TcxGridDBColumn;
    cxGStockDBTableView1COSTO_EXENTO: TcxGridDBColumn;
    cxGStockDBTableView1COSTO_GRAVADO: TcxGridDBColumn;
    cxGStockDBTableView1FPRECIO_EXENTO: TcxGridDBColumn;
    cxGStockDBTableView1FPRECIO_GRAVADO: TcxGridDBColumn;
    cxGStockDBTableView1SOMBRA_EXENTO: TcxGridDBColumn;
    cxGStockDBTableView1SOMBRA_GRAVADO: TcxGridDBColumn;
    cxGStockDBTableView1NEW_COSTO_EXENTO: TcxGridDBColumn;
    cxGStockDBTableView1NEW_COSTO_GRAVADO: TcxGridDBColumn;
    cxGStockDBTableView1NEW_FPRECIO_EXENTO: TcxGridDBColumn;
    cxGStockDBTableView1NEW_FPRECIO_GRAVADO: TcxGridDBColumn;
    cxGStockDBTableView1NEW_SOMBRA_EXENTO: TcxGridDBColumn;
    cxGStockDBTableView1NEW_SOMBRA_GRAVADO: TcxGridDBColumn;
    cxGStockDBTableView1MARGEN: TcxGridDBColumn;
    ComBuscadorMarcas: TComBuscador;
    ComBuscadorRubros: TComBuscador;
    ComBuscadorSubRubros: TComBuscador;
    QBuscaMarca: TFDQuery;
    QBuscaRubro: TFDQuery;
    QBuscaSubRubro: TFDQuery;
    QMarca: TFDQuery;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QSubRubro: TFDQuery;
    QHistorial: TFDQuery;
    CDSHistorialCOSTO_EXENTO: TFloatField;
    CDSHistorialCOSTO_GRAVADO: TFloatField;
    CDSHistorialFPRECIO_EXENTO: TFloatField;
    CDSHistorialFPRECIO_GRAVADO: TFloatField;
    QDepositos: TFDQuery;
    CDSHistorialMARGEN: TFloatField;
    QStock: TFDQuery;
    CDSStockCOSTO_EXENTO: TFloatField;
    CDSStockCOSTO_GRAVADO: TFloatField;
    CDSStockFPRECIO_EXENTO: TFloatField;
    CDSStockFPRECIO_GRAVADO: TFloatField;
    CDSStockSOMBRA_EXENTO: TFloatField;
    CDSStockSOMBRA_GRAVADO: TFloatField;
    CDSStockNEW_COSTO_EXENTO: TFloatField;
    CDSStockNEW_COSTO_GRAVADO: TFloatField;
    CDSStockNEW_FPRECIO_EXENTO: TFloatField;
    CDSStockNEW_FPRECIO_GRAVADO: TFloatField;
    CDSStockNEW_SOMBRA_EXENTO: TFloatField;
    CDSStockNEW_SOMBRA_GRAVADO: TFloatField;
    CDSStockMARGEN: TFloatField;
    QArticulosAfectados: TFDQuery;
    CDSArticulosAfectadosCOSTO_GRAVADO_OLD: TFloatField;
    CDSArticulosAfectadosCOSTO_EXENTO_OLD: TFloatField;
    CDSArticulosAfectadosCOSTO_OLD: TFloatField;
    CDSArticulosAfectadosF_PRECIO_GRAVADO_OLD: TFloatField;
    CDSArticulosAfectadosF_PRECIO_EXENTO_OLD: TFloatField;
    CDSArticulosAfectadosFPRECIO_OLD: TFloatField;
    CDSArticulosAfectadosCOSTO_GRAVADO_NEW: TFloatField;
    CDSArticulosAfectadosCOSTO_EXENTO_NEW: TFloatField;
    CDSArticulosAfectadosCOSTO_NEW: TFloatField;
    CDSArticulosAfectadosF_PRECIO_GRAVADO_NEW: TFloatField;
    CDSArticulosAfectadosF_PRECIO_EXENTO_NEW: TFloatField;
    CDSArticulosAfectadosFPRECIO_NEW: TFloatField;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    spCambiaPrecioFD: TFDStoredProc;
    spValorGeneradorHistorialFD: TFDStoredProc;
    spGravaValoresFD: TFDStoredProc;
    QBorraHistorialFD: TFDQuery;
    spInformaCambioPreciofd: TFDStoredProc;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    CDSHistorialFECHA: TSQLTimeStampField;
    CDSArticulosAfectadosFECHA: TSQLTimeStampField;
    PROCEDURE ConsultaExecute(Sender: TObject);
    PROCEDURE chbRubroClick(Sender: TObject);
    PROCEDURE chbMarcaClick(Sender: TObject);
    PROCEDURE chbSubRubroClick(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormShow(Sender: TObject);
    PROCEDURE BuscarMarcaExecute(Sender: TObject);
    PROCEDURE BuscarRubroExecute(Sender: TObject);
    PROCEDURE BuscarSubRubroExecute(Sender: TObject);
    PROCEDURE CalcularExecute(Sender: TObject);
    PROCEDURE chbMargenClick(Sender: TObject);
    PROCEDURE chbCostoGravadoClick(Sender: TObject);
    PROCEDURE chbFPExentoClick(Sender: TObject);
    PROCEDURE chbFPGravadoClick(Sender: TObject);
    PROCEDURE chbCostoExentoClick(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE ConfirmaExecute(Sender: TObject);
    PROCEDURE CancelarExecute(Sender: TObject);
    PROCEDURE ceMarcaChange(Sender: TObject);
  //  PROCEDURE wwDSStockStateChange(Sender: TObject);
  //  procedure wwCDSStockAfterInsert(DataSet: TDataSet);
    procedure btCloseClick(Sender: TObject);
    procedure BorrarActaulizacionExecute(Sender: TObject);
    procedure ceMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure ceRubroKeyPress(Sender: TObject; var Key: Char);
    procedure ceSubRubroKeyPress(Sender: TObject; var Key: Char);
    procedure chbSombraExentoClick(Sender: TObject);
    procedure chbSombraGravadoClick(Sender: TObject);
    procedure DSStockStateChange(Sender: TObject);
    procedure dbcDepositoClick(Sender: TObject);
    procedure dbcDepositoChange(Sender: TObject);
    procedure dbgStockTitleClick(Column: TColumn);
    procedure CDSHistorialAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormCambioPrecios: TFormCambioPrecios;

IMPLEMENTATION

uses UDMain_FD;

{$R *.DFM}

PROCEDURE TFormCambioPrecios.ConsultaExecute(Sender: TObject);
BEGIN
  CDSStock.Close;
  if ( chbMarca.Checked ) and ( ceMarca.Text<>'' ) then
    CDSStock.Params.ParamByName('Marca').Value:=ceMarca.Text
  else
    CDSStock.Params.ParamByName('Marca').Value:='****';

  if ( chbRubro.Checked ) and ( ceRubro.Text<>'' ) then
    CDSStock.Params.ParamByName('Rubro').Value:=ceRubro.Text
  else
    CDSStock.Params.ParamByName('Rubro').Value:='***';

  if ( chbSubRubro.Checked ) and ( ceSubRubro.Text<>'' ) then
    CDSStock.Params.ParamByName('SubRub').Value:=ceSubRubro.Text
  else
    CDSStock.Params.ParamByName('SubRub').Value:='*****';

  if ( chbMargen.Checked ) and ( dbcDeposito.Text<>'' ) then
    CDSStock.Params.ParamByName('deposito').Value:=dbcDeposito.KeyValue
  else
    CDSStock.Params.ParamByName('deposito').Value:=-1;

  CDSStock.Open;

  Calcular.Execute;
  gEstado.Progress:=0;
END;

procedure TFormCambioPrecios.dbcDepositoChange(Sender: TObject);
begin
  Consulta.Enabled:=True;
  consulta.Execute;
end;

procedure TFormCambioPrecios.dbcDepositoClick(Sender: TObject);
begin
  Consulta.Execute;
end;

procedure TFormCambioPrecios.dbgStockTitleClick(Column: TColumn);
begin
  CDSStock.IndexFieldNames:=Column.FieldName;
end;

procedure TFormCambioPrecios.DSStockStateChange(Sender: TObject);
begin
  Calcular.Enabled:= Not(DSStock.DataSet.IsEmpty) and Not(DSStock.DataSet.State in [dsInactive]);
  Confirma.Enabled:= Not(DSStock.DataSet.IsEmpty) and Not(DSStock.DataSet.State in [dsInactive]);
  Cancelar.Enabled:= Not(DSStock.DataSet.IsEmpty) and Not(DSStock.DataSet.State in [dsInactive]);
  Consulta.Enabled:= (DSStock.DataSet.IsEmpty) or (DSStock.DataSet.State in [dsInactive]);;

end;

PROCEDURE TFormCambioPrecios.chbRubroClick(Sender: TObject);
BEGIN
  CDSStock.Close;
  ceRubro.Enabled := chbRubro.Checked;
  IF chbRubro.Checked THEN
    ceRubro.Color := clWindow
  ELSE
    ceRubro.Color := clBtnFace;
END;

PROCEDURE TFormCambioPrecios.chbMarcaClick(Sender: TObject);
BEGIN
  CDSStock.Close;
  ceMarca.Enabled := chbMarca.Checked;
  IF chbMarca.Checked THEN
    ceMarca.Color := clWindow
  ELSE
    ceMarca.Color := clBtnFace;
END;

procedure TFormCambioPrecios.chbSombraExentoClick(Sender: TObject);
begin
  cxGStockDBTableView1SOMBRA_EXENTO.Visible    :=chbSombraExento.Checked;
  cxGStockDBTableView1NEW_SOMBRA_EXENTO.Visible:=chbSombraExento.Checked;
//  dbgStock.Columns[12].Visible:=chbSombraExento.Checked;
//  dbgStock.Columns[13].Visible:=chbSombraExento.Checked;
  edcSombraExento.Enabled := chbSombraExento.Checked;
  IF chbSombraExento.Checked THEN
    edcSombraExento.Color := clWindow
  ELSE
    edcSombraExento.Color := clBtnFace;
end;

procedure TFormCambioPrecios.chbSombraGravadoClick(Sender: TObject);
begin
  cxGStockDBTableView1SOMBRA_GRAVADO.Visible    :=chbSombraGravado.Checked;
  cxGStockDBTableView1NEW_SOMBRA_GRAVADO.Visible:=chbSombraGravado.Checked;

 // dbgStock.Columns[10].Visible:=chbSombraGravado.Checked;
 // dbgStock.Columns[11].Visible:=chbSombraGravado.Checked;
  edcSombraGrav.Enabled := chbSombraGravado.Checked;
  IF chbSombraGravado.Checked THEN
    edcSombraGrav.Color := clWindow
  ELSE
    edcSombraGrav.Color := clBtnFace;

end;

PROCEDURE TFormCambioPrecios.chbSubRubroClick(Sender: TObject);
BEGIN
  CDSStock.Close;
  ceSubRubro.Enabled := chbSubRubro.Checked;
  IF chbSubRubro.Checked THEN
    ceSubRubro.Color := clWindow
  ELSE
    ceSubRubro.Color := clBtnFace;
END;

PROCEDURE TFormCambioPrecios.FormCreate(Sender: TObject);
BEGIN
  AutoSize := False;
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_fd.Nombre_PC;
  pcGeneral.ActivePageIndex:=0;
 
 // Cancelar.Enabled := False;
//  Confirma.Enabled := False;
END;

PROCEDURE TFormCambioPrecios.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  CDSStock.Close;
  Action := caFree;
END;

PROCEDURE TFormCambioPrecios.FormShow(Sender: TObject);
BEGIN
  ceMarca.Enabled         := False;
  ceSubRubro.Enabled      := False;
  ceRubro.Enabled         := False;

  edcFPGravado.Enabled    := False;
  edcFPExento.Enabled     := False;
  edcCostoGravado.Enabled := False;
  edcCostoExento.Enabled  := False;

  edcSombraExento.Enabled := False;
  edcSombraGrav.Enabled   := False;

  edcMargen.Enabled       := False;

  CDSHistorial.Open;
  //CDSStock.Open;
END;

PROCEDURE TFormCambioPrecios.BuscarMarcaExecute(Sender: TObject);
BEGIN
  CDSBuscaMarca.Close;
  CDSBuscaMarca.Open;
  ComBuscadorMarcas.Execute;
  if ComBuscadorMarcas.rOk then
    BEGIN
      ceMarca.EditText := ComBuscadorMarcas.id;
      QMarca.Close;
      QMarca.ParamByName('Marca').Value := ceMarca.EditText;
      QMarca.Open;
      edMarca.Text     := QMarcaDESCRIPCION_MARCA.AsString;
    END;
  CDSBuscaMarca.Close;
END;

PROCEDURE TFormCambioPrecios.BuscarRubroExecute(Sender: TObject);
BEGIN
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  ComBuscadorRubros.Execute;
  IF ComBuscadorRubros.rOk THEN
    BEGIN
      ceRubro.EditText    := ComBuscadorRubros.Id;
      QRubro.Close;
      QRubro.ParamByName('Rubro').Value := ceRubro.EditText;
      QRubro.Open;
      edRubro.Text:= QRubroDETALLE_RUBRO.Value;
    END;
  CDSBuscaRubro.Close;
END;

PROCEDURE TFormCambioPrecios.BuscarSubRubroExecute(Sender: TObject);
BEGIN
  CDSBuscaSubRubro.Close;
  CDSBuscaSubRubro.Params.ParamByName('rubro').AsString:=ceRubro.Text;
  CDSBuscaSubRubro.Open;
  ComBuscadorSubRubros.Execute;
  IF ComBuscadorSubRubros.rOk THEN
    BEGIN
      ceSubRubro.EditText := ComBuscadorSubRubros.Id;
      QSubRubro.Close;
      QSubRubro.ParamByName('subrubro').Value := ceSubRubro.EditText ;
      QSubRubro.Open;
      edSubRubro.Text:= QSubRubroDETALLE_SUBRUBRO.Value;
    END;
  CDSBuscaSubRubro.Close;
END;

PROCEDURE TFormCambioPrecios.CalcularExecute(Sender: TObject);
VAR
  CE, CG, FPE, FPG, SE, SG,Margen: extended;
  P:TBookMark;

BEGIN
  CE :=0;  CG :=0;
  FPE:=0;  FPG:=0;
  SE :=0;  SG :=0;


  IF CDSStock.Active = True THEN
    BEGIN
      IF (edcCostoExento.Text <> '') and (chbCostoExento.Checked) THEN
        CE := StrToFloat(edcCostoExento.Text);
      IF (edcCostoGravado.Text <> '') and (chbCostoGravado.Checked) THEN
        CG := StrToFloat(edcCostoGravado.Text);
      IF (edcFPExento.Text <> '') and (chbFPExento.Checked) THEN
        FPE := StrToFloat(edcFPExento.Text);
      IF (edcFPGravado.Text <> '') and (chbFPGravado.Checked) THEN
        FPG := StrToFloat(edcFPGravado.Text);
      IF (edcSombraExento.Text <> '') and (chbSombraExento.Checked) THEN
        SE := StrToFloat(edcSombraExento.Text);
      IF (edcSombraGrav.Text <> '') and (chbSombraGravado.Checked) THEN
        SG := StrToFloat(edcSombraGrav.Text);

      IF (edcMargen.Text <> '') and (chbMargen.Checked) THEN
        Margen := StrToFloat(edcMargen.Text)
      ELSE
        Margen := 0;
      p:=CDSStock.GetBookmark;

      CDSStock.First;
      CDSStock.DisableControls;
      WHILE NOT (CDSStock.eof) DO
        BEGIN
          CDSStock.Edit;
          CDSStockNEW_COSTO_EXENTO.AsFloat   := roundto( CDSStockCOSTO_EXENTO.AsFloat *  (1 + CE * 0.01),-3);
          CDSStockNEW_COSTO_GRAVADO.AsFloat  := roundto( CDSStockCOSTO_GRAVADO.AsFloat * (1 + CG * 0.01),-3);

          CDSStockNEW_FPRECIO_EXENTO.AsFloat := roundto( CDSStockFPRECIO_EXENTO.AsFloat *  (1 + FPE * 0.01),-3);
          CDSStockNEW_FPRECIO_GRAVADO.AsFloat:= roundto( CDSStockFPRECIO_GRAVADO.AsFloat * (1 + FPG * 0.01),-3);

          CDSStockNEW_SOMBRA_EXENTO.AsFloat  := roundto( CDSStockSOMBRA_EXENTO.AsFloat  * (1 + SE * 0.01),-3);
          CDSStockNEW_SOMBRA_GRAVADO.AsFloat := roundto( CDSStockSOMBRA_GRAVADO.AsFloat * (1 + SG * 0.01),-3);

          CDSStock.Next;
        END;
      CDSStock.GotoBookmark(p);
      CDSStock.FreeBookmark(p);
      CDSStock.EnableControls;
    END
  ELSE
    ShowMessage('Se debe ejecutar la consulta, antes de proceder al cálculo!!!');
END;

PROCEDURE TFormCambioPrecios.chbMargenClick(Sender: TObject);
BEGIN

  edcMargen.Enabled            := chbMargen.Checked;
  dbcDeposito.Enabled          := chbMargen.Checked;
//  DBGStock.Columns[14].Visible := chbMargen.Checked;
  cxGStockDBTableView1MARGEN.Visible:=chbMargen.Checked;
  IF chbMargen.Checked THEN
    BEGIN
      CDSStock.Close;
      edcMargen.Color := clWindow;
      CDSDepositos.Open;
   //   Consulta.Execute;
    END
  ELSE
    BEGIN
      CDSStock.Close;
      edcMargen.Color := clBtnFace;
      CDSDepositos.Close;
      Consulta.Execute;
    END;
END;

PROCEDURE TFormCambioPrecios.chbCostoGravadoClick(Sender: TObject);
BEGIN
//  dbgStock.DataSource.DataSet.FieldByName('Costo_Gravado_stk').Visible := chbCostoGravado.Checked;
//  dbgStock.DataSource.DataSet.FieldByName('New_CGravado').Visible   := chbCostoGravado.Checked;
  cxGStockDBTableView1COSTO_GRAVADO.Visible     := chbCostoGravado.Checked;
  cxGStockDBTableView1NEW_COSTO_GRAVADO.Visible := chbCostoGravado.Checked;
  edcCostoGravado.Enabled := chbCostoGravado.Checked;
  IF chbCostoGravado.Checked THEN
    edcCostoGravado.Color := clWindow
  ELSE
    edcCostoGravado.Color := clBtnFace;
END;

PROCEDURE TFormCambioPrecios.chbFPExentoClick(Sender: TObject);
BEGIN
//  DBGStock.DataSource.DataSet.FieldByName('Fijacion_Precio_Exento').Visible := chbFPExento.Checked;
//  DBGStock.DataSource.DataSet.FieldByName('New_FPExento').Visible := chbFPExento.Checked;
  cxGStockDBTableView1FPRECIO_EXENTO.Visible:=chbFPExento.Checked;
  cxGStockDBTableView1NEW_FPRECIO_EXENTO.Visible:=chbFPExento.Checked;
  edcFPExento.Enabled := chbFPExento.Checked;
  IF chbFPExento.Checked THEN
    edcFPExento.Color := clWindow
  ELSE
    edcFPExento.Color := clBtnFace;
END;

PROCEDURE TFormCambioPrecios.chbFPGravadoClick(Sender: TObject);
BEGIN
//  DBGStock.DataSource.DataSet.FieldByName('Fijacion_precio_Gravado').Visible := chbFPGravado.Checked;
//  DBGStock.DataSource.DataSet.FieldByName('New_FPGrav').Visible := chbFPGravado.Checked;
  cxGStockDBTableView1FPRECIO_GRAVADO.Visible    :=chbFPGravado.Checked;
  cxGStockDBTableView1NEW_FPRECIO_GRAVADO.Visible:=chbFPGravado.Checked;
  edcFPGravado.Enabled := chbFPGravado.Checked;
  IF chbFPGravado.Checked THEN
    edcFPGravado.Color := clWindow
  ELSE
    edcFPGravado.Color := clBtnFace;

END;

PROCEDURE TFormCambioPrecios.chbCostoExentoClick(Sender: TObject);
BEGIN
//  DBGStock.DataSource.DataSet.FieldByName('Costo_Exento_stk').Visible := chbCostoExento.Checked;
//  DBGStock.DataSource.DataSet.FieldByName('New_CExento').Visible      := chbCostoExento.Checked;
  cxGStockDBTableView1COSTO_EXENTO.Visible    :=chbCostoExento.Checked;
  cxGStockDBTableView1NEW_COSTO_EXENTO.Visible:=chbCostoExento.Checked;
  edcCostoExento.Enabled := chbCostoExento.Checked;
  IF chbCostoExento.Checked THEN
    edcCostoExento.Color := clWindow
  ELSE
    edcCostoExento.Color := clBtnFace;
END;

PROCEDURE TFormCambioPrecios.FormDestroy(Sender: TObject);
BEGIN
  FormCambioPrecios := NIL;
END;

procedure TFormCambioPrecios.FormResize(Sender: TObject);
begin
  if FormCambioPrecios<>nil then
    if FormCambioPrecios.Width<>836 then
      FormCambioPrecios.Width:=836;

end;

PROCEDURE TFormCambioPrecios.ConfirmaExecute(Sender: TObject);
VAR
Margen: Real;
ID:INTEGER;
BEGIN
  if (chbMargen.Checked=True) and (dbcDeposito.KeyValue = -1) then
    raise Exception.Create('Si modifica el Margen debe especificar el deposito...');

  gEstado.MinValue:=0;
  gEstado.MaxValue:=CDSStock.RecordCount-1;
  gEstado.Progress:=0;
  spValorGeneradorHistorialFD.Close;
  spValorGeneradorHistorialFD.ExecProc;
  id:=spValorGeneradorHistorialFD.paramByName('id').Value;
  spValorGeneradorHistorialFD.Close;
  id:=id+1;
  IF CDSStock.State <> dsBrowse THEN
    CDSStock.Post;
  CDSStock.First;
  DMMain_FD.fdcGestion.StartTransaction;
  try

    WHILE NOT (CDSStock.Eof) DO
      BEGIN
        Application.ProcessMessages;
        Sleep(1);
        gEstado.Progress:=gEstado.Progress+1;
        IF edcMargen.Text <> '' THEN
          Margen := StrToFloat(edcMargen.Text)
        ELSE
          Margen := 0;
        spCambiaPrecioFD.close;
        spCambiaPrecioFD.ParamByName('Codigo').Value       := CDSStockCODIGO.Value;

        spCambiaPrecioFD.ParamByName('CostoGravado').Value := CDSStockNEW_COSTO_GRAVADO.AsFloat;
        spCambiaPrecioFD.ParamByName('CostoExento').Value  := CDSStockNEW_COSTO_EXENTO.AsFloat;
        spCambiaPrecioFD.ParamByName('FPGravado').Value    := CDSStockNEW_FPRECIO_GRAVADO.AsFloat;
        spCambiaPrecioFD.ParamByName('FPExento').Value     := CDSStockNEW_FPRECIO_EXENTO.AsFloat;
        spCambiaPrecioFD.ParamByName('SombraGravado').Value:= CDSStockNEW_SOMBRA_GRAVADO.AsFloat;
        spCambiaPrecioFD.ParamByName('SombraExento').Value := CDSStockNEW_SOMBRA_EXENTO.AsFloat;

        spCambiaPrecioFD.ParamByName('Margen').Value       := Margen;
        spCambiaPrecioFD.ParamByName('Deposito').Value     := dbcDeposito.KeyValue;
        case rgSumaRemplaza.ItemIndex of
          0:spCambiaPrecioFD.ParamByName('SUMA_REMP_MARGEN').Value     :='S';
          1:spCambiaPrecioFD.ParamByName('SUMA_REMP_MARGEN').Value     :='R';
        end;

        spCambiaPrecioFD.ExecProc;
        spCambiaPrecioFD.Close;

        spInformaCambioPrecioFD.Close;
        spInformaCambioPrecioFD.ParamByName('codigo').AsString             := CDSStockCODIGO.Value;

        spInformaCambioPrecioFD.ParamByName('costo_old').AsFloat           := CDSStockCOSTO_GRAVADO.AsFloat+CDSStockCOSTO_EXENTO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('costo_old_gravado').AsFloat   := CDSStockCOSTO_GRAVADO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('costo_old_exento').AsFloat    := CDSStockCOSTO_EXENTO.AsFloat ;

        spInformaCambioPrecioFD.ParamByName('costo_new').AsFloat           := CDSStockNEW_COSTO_GRAVADO.AsFloat+CDSStockNEW_COSTO_EXENTO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('costo_new_gravado').AsFloat   := CDSStockNEW_COSTO_GRAVADO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('costo_new_exento').AsFloat    := CDSStockNEW_COSTO_EXENTO.AsFloat;

        spInformaCambioPrecioFD.ParamByName('fprecio_old').AsFloat         := CDSStockFPRECIO_GRAVADO.AsFloat + CDSStockFPRECIO_EXENTO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('fprecio_old_gravado').AsFloat := CDSStockFPRECIO_GRAVADO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('fprecio_old_exento').AsFloat  := CDSStockFPRECIO_EXENTO.AsFloat;

        spInformaCambioPrecioFD.ParamByName('fprecio_new').AsFloat         := CDSStockNEW_FPRECIO_GRAVADO.AsFloat + CDSStockNEW_FPRECIO_EXENTO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('fprecio_new_gravado').AsFloat := CDSStockNEW_FPRECIO_GRAVADO.AsFloat;
        spInformaCambioPrecioFD.ParamByName('fprecio_new_exento').AsFloat  := CDSStockNEW_FPRECIO_EXENTO.AsFloat;

        spInformaCambioPrecioFD.ParamByName('usuario').AsString            := DMMain_fd.UsuarioActivo;
        spInformaCambioPrecioFD.ParamByName('fecha').AsDateTime            := Now;
        spInformaCambioPrecioFD.ParamByName('motivo').AsString             := 'Cambio de precio General';

        spInformaCambioPrecioFD.ParamByName('id_cambio_precio').AsInteger  := id;

        spInformaCambioPrecioFD.ExecProc;
        CDSStock.Next;
      END;
    spGravaValoresFD.Close;
    spGravaValoresFD.ParamByName('marca').AsString       := ceMarca.Text;
    spGravaValoresFD.ParamByName('rubro').AsString       := ceRubro.Text;
    spGravaValoresFD.ParamByName('subrubro').AsString    := ceSubRubro.Text;
    spGravaValoresFD.ParamByName('costoexento').AsFloat  := edcCostoExento.Value;
    spGravaValoresFD.ParamByName('costogravado').AsFloat := edcCostoGravado.Value;
    spGravaValoresFD.ParamByName('fpexento').AsFloat     := edcFPExento.Value;
    spGravaValoresFD.ParamByName('fpgravado').AsFloat    := edcFPGravado.Value;
    spGravaValoresFD.ParamByName('margen').AsFloat       := edcMargen.Value;
    spGravaValoresFD.ParamByName('fecha').AsDateTime     := now;
    spGravaValoresFD.ExecProc;
    spGravaValoresFD.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transaccion no Finalizada.....');
  end;

  CDSStock.Close;
  spCambiaPrecioFD.close;
  spInformaCambioPrecioFD.Close;
  CDSHistorial.Close;
  CDSHistorial.Open;
END;

PROCEDURE TFormCambioPrecios.CancelarExecute(Sender: TObject);
BEGIN
  CDSStock.Close;
  ceMarca.Enabled         := True;
  ceSubRubro.Enabled      := True;
  ceRubro.Enabled         := True;
  edcFPGravado.Enabled    := False;
  edcFPExento.Enabled     := False;
  edcCostoGravado.Enabled := False;
  edcCostoExento.Enabled  := False;
  edcSombraExento.Enabled := False;
  edcSombraGrav.Enabled   := False;

  edcMargen.Enabled       := False;
  chbMarca.Checked        := True;
  chbRubro.Checked        := True;
  chbSubRubro.Checked     := True;
  chbCostoExento.Checked  := False;
  chbCostoGravado.Checked := False;
  chbFPGravado.Checked    := False;
  chbFPExento.Checked     := False;

  chbSombraExento.Checked := False;
  chbSombraGravado.Checked:= False;

  chbMargen.Checked       := False;

  QHistorial.Close;
  QHistorial.Open;
END;

procedure TFormCambioPrecios.CDSHistorialAfterScroll(DataSet: TDataSet);
begin
  CDSArticulosAfectados.Close;
  CDSArticulosAfectados.Params.ParamByName('id').Value:=CDSHistorialID.Value;
  CDSArticulosAfectados.Open;
end;

PROCEDURE TFormCambioPrecios.ceMarcaChange(Sender: TObject);
BEGIN
  CDSStock.Close;
END;

//PROCEDURE TFormCambioPrecios.wwDSStockStateChange(Sender: TObject);
//BEGIN
//  Cancelar.Enabled := NOT (CDSStock.State = dsInactive);
//  Confirma.Enabled := NOT (CDSStock.State = dsInactive);
//END;
//
//procedure TFormCambioPrecios.wwCDSStockAfterInsert(DataSet: TDataSet);
//begin
//  CDSStock.Cancel;
//end;

procedure TFormCambioPrecios.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambioPrecios.BorrarActaulizacionExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QBorraHistorialFD.Close;
    QBorraHistorialFD.ParamByName('id').Value:=CDSHistorialID.Value;
    QBorraHistorialFD.ExecSQL;
    QBorraHistorialFD.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('no se borro el registro...');
    QBorraHistorialFD.Close;
  end;
  CDSHistorial.Close;
  CDSHistorial.Open;
end;

procedure TFormCambioPrecios.ceMarcaKeyPress(Sender: TObject;
 var Key: Char);
Var Dato:String;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 4 - (Length(ceMarca.Text))) + ceMarca.Text;
      ceMarca.Text := Dato;
      QMarca.Close;
      QMarca.ParamByName('Marca').Value := Dato;
      QMarca.Open;
      IF QMarcaMARCA_STK.AsString<>'' Then
        begin
          ceMarca.Text:= QMarcaMARCA_STK.Value;
          edMarca.Text:= QMarcaDESCRIPCION_MARCA.Value;
          Consulta.Execute;
        end
      else
        begin
          ceMarca.Text:= '';
          edMarca.Text:= '';
        end;
      QMarca.Close;
    end;
end;

procedure TFormCambioPrecios.ceRubroKeyPress(Sender: TObject;
  var Key: Char);
Var Dato:String;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 3 - (Length(ceRubro.Text))) + ceRubro.Text;
      ceRubro.Text := Dato;
      QRubro.Close;
      QRubro.ParamByName('Rubro').Value := Dato;
      QRubro.Open;
      IF QRubroCODIGO_RUBRO.AsString<>'' Then
        begin
          ceRubro.Text:= QRubroCODIGO_RUBRO.Value;
          edRubro.Text:= QRubroDETALLE_RUBRO.Value;
          Consulta.Execute;
        end
      else
        begin
          ceRubro.Text:= '';
          edRubro.Text:= '';
        end;
      QRubro.Close;
    end;
end;

procedure TFormCambioPrecios.ceSubRubroKeyPress(Sender: TObject;
  var Key: Char);
Var Dato:String;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 3 - (Length(ceSubRubro.Text))) + ceSubRubro.Text;
      ceSubRubro.Text := Dato;
      QSubRubro.Close;
      QSubRubro.ParamByName('Rubro').Value := Dato;
      QSubRubro.Open;
      IF QSubRubroCODIGO_SUBRUBRO.AsString<>'' Then
        begin
          ceSubRubro.Text:= QSubRubroCODIGO_SUBRUBRO.Value;
          edSubRubro.Text:= QSubRubroDETALLE_SUBRUBRO.Value;
          Consulta.Execute;
        end
      else
        begin
          ceSubRubro.Text:= '';
          edSubRubro.Text:= '';
        end;
      QSubRubro.Close;
    end;
end;

END.
