unit UControlComisionesPorArticulo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,Variants,   ActnList, Buttons, ToolWin, ExtCtrls,
  DBClient, Provider,Librerias, DBGrids,  frxDBSet, frxClass, ImgList,
  JvExControls, JvGradient, JvExDBGrids, JvDBGrid, Menus, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvBaseEdits,
  JvToolEdit, JvExMask, IBGenerator, JvBaseDlg, JvProgressDialog, DataExport,
  DataToXLS, DBXCommon,IniFiles, JvAppStorage, JvAppIniStorage, System.Actions,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid,VirtualUI_SDK, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  cxCurrencyEdit, frCoreClasses;

type
  TFormControlComisionesPorArticulo = class(TFormABMBase)
    Label1: TLabel;
    edNombreVendedor: TEdit;
    UpDown1: TUpDown;
    DSPMovCtaCteVendedor: TDataSetProvider;
    CDSMovCtaCteVendedorFD: TClientDataSet;
    DSFacVta: TDataSource;
    DSPFacVta: TDataSetProvider;
    BuscadorVendedores: TAction;
    Label2: TLabel;
    Label3: TLabel;
    CDSFacVta: TClientDataSet;
    CDSFacVtaID_FC: TIntegerField;
    CDSFacVtaTIPOCPBTE: TStringField;
    CDSFacVtaCLASECPBTE: TStringField;
    CDSFacVtaNROCPBTE: TStringField;
    CDSFacVtaCODIGO: TStringField;
    CDSFacVtaNOMBRE: TStringField;
    CDSFacVtaLIQUIDADA: TStringField;
    CDSFacVtaCODIGOARTICULO: TStringField;
    CDSFacVtaDETALLE: TStringField;
    CDSFacVtAIMPORTECOMISION: TFloatField;
    chMostrar: TCheckBox;
    spbChekTos: TSpeedButton;
    spbUnchek: TSpeedButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frxReporte: TfrxReport;
    frdbFactVta: TfrxDBDataset;
    CDSFacVtaMUESTRASALDOCALCULADO: TFloatField;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DSFacVtaAnt: TDataSource;
    CDSFacVtaAnt: TClientDataSet;
    DSPFacVtaAnt: TDataSetProvider;
    dbgPendientes: TJvDBGrid;
    chbLiquidarTodos: TCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
    ud1: TUpDown;
    BuscarPendientes: TAction;
    CDSFacVtaAntID_FC: TIntegerField;
    CDSFacVtaAntTIPOCPBTE: TStringField;
    CDSFacVtaAntCLASECPBTE: TStringField;
    CDSFacVtaAntNROCPBTE: TStringField;
    CDSFacVtaAntCODIGO: TStringField;
    CDSFacVtaAntNOMBRE: TStringField;
    CDSFacVtaAntLIQUIDADA: TStringField;
    CDSFacVtaAntCODIGOARTICULO: TStringField;
    CDSFacVtaAntDETALLE: TStringField;
    lbl3: TLabel;
    pm1: TPopupMenu;
    MarcarLiquidada: TAction;
    MarcarcomoLiquidada1: TMenuItem;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalVENDEDOR: TStringField;
    ceVendedor: TJvComboEdit;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    FechaLiquidacion: TJvDateEdit;
    Desde2: TJvDateEdit;
    Hasta2: TJvDateEdit;
    edTotal: TJvCalcEdit;
    edTotalComisionAPagar: TJvCalcEdit;
    edTotalComision: TJvCalcEdit;
    edContado: TJvCalcEdit;
    edCC: TJvCalcEdit;
    edNC: TJvCalcEdit;
    edND: TJvCalcEdit;
    CDSFacVtaFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSFacVtaTOTAL: TFloatField;
    CDSFacVtaAntFECHAVTA: TSQLTimeStampField;
    CDSFacVtaAntFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSFacVtaAntTOTAL: TFloatField;
    DSPBuscadorVend: TDataSetProvider;
    CDSBuscadorPersonal: TClientDataSet;
    CDSBuscadorPersonalCODIGO: TStringField;
    CDSBuscadorPersonalNOMBRE: TStringField;
    CDSMovCtaCteVendedorFDID: TIntegerField;
    CDSMovCtaCteVendedorFDIDADELANTO: TIntegerField;
    CDSMovCtaCteVendedorFDCODIGO: TStringField;
    CDSMovCtaCteVendedorFDFECHA: TSQLTimeStampField;
    CDSMovCtaCteVendedorFDCLASECOMP: TStringField;
    CDSMovCtaCteVendedorFDNROCPBTE: TStringField;
    CDSMovCtaCteVendedorFDDETALLE: TStringField;
    ibId: TIBGenerator;
    ToolButton1: TToolButton;
    JvProgressDialog1: TJvProgressDialog;
    pbRegistros: TProgressBar;
    lbReg: TLabel;
    chbSimular: TCheckBox;
    Label12: TLabel;
    CDSFacVtaFECHAVTA: TSQLTimeStampField;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    BitBtn1: TBitBtn;
    CDSFacVtaTOTAL_CALCULADO: TFloatField;
    CDSFacVtaCOSTOTOTAL: TFloatField;
    CDSFacVtaDIFVTA: TFloatField;
    chbPorUtilidad: TCheckBox;
    Label13: TLabel;
    ceCobrador: TJvComboEdit;
    edNombreCobrador: TEdit;
    BuscadorCobrador: TAction;
    DSPBuscaCob: TDataSetProvider;
    CDSBuscaCob: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    CDSFacVtaTOTAL_FINAL: TFloatField;
    CDSFacVtaiva_total_rec: TFMTBCDField;
    chOrden: TCheckBox;
    edTolerancia: TJvCalcEdit;
    Label14: TLabel;
    pnCabecera: TPanel;
    pcComisiones: TPageControl;
    pagLiquidacion: TTabSheet;
    pagOpciones: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label15: TLabel;
    edComisionTk: TJvCalcEdit;
    Label16: TLabel;
    edComisionFO: TJvCalcEdit;
    edComisionFC: TJvCalcEdit;
    Edit4: TEdit;
    edComisionNC: TJvCalcEdit;
    ND: TEdit;
    edComisionND: TJvCalcEdit;
    dbgZonas: TDBGrid;
    DSPZona: TDataSetProvider;
    DSZona: TDataSource;
    CDSZona: TClientDataSet;
    CDSZonaID_ZONA: TIntegerField;
    CDSZonaDETALLE: TStringField;
    chbOpciones: TCheckBox;
    CDSFacVtaZONA: TIntegerField;
    CDSFacVtaCOMISIONCALCULADA: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTECOMISION: TcxGridDBColumn;
    cxGrid1DBTableView1LIQUIDADA: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASALDOCALCULADO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDADCALCULADA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1COSTOTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1DIFVTA: TcxGridDBColumn;
    cxGrid1DBTableView1ZONA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorCobrador: TComBuscador;
    CDSFacVtaCANTIDADCALCULADA: TFloatField;
    QFacVta: TFDQuery;
    CDSFacVtaCANTIDAD: TFloatField;
    CDSFacVtaMUESTRASALDO: TFloatField;
    CDSFacVtaCOMISION: TFloatField;
    CDSFacVtaIVA_TOTAL: TFloatField;
    QFacVtaAnt: TFDQuery;
    CDSFacVtaAntCANTIDAD: TFloatField;
    CDSFacVtaAntMUESTRASALDO: TFloatField;
    CDSFacVtaAntCOMISION: TFloatField;
    CDSFacVtaAntIVA_TOTAL: TFloatField;
    QZona: TFDQuery;
    CDSZonaCOMISION: TFloatField;
    QBuscaVendedor: TFDQuery;
    QBuscaCob: TFDQuery;
    QUltimoLote: TFDQuery;
    QLoteLiquidacionFD: TFDQuery;
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
    QLiquidarFacFD: TFDQuery;
    TabSheet1: TTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    QHistorial: TFDQuery;
    CDSHistorial: TClientDataSet;
    DSPHistorial: TDataSetProvider;
    DSHistorial: TDataSource;
    CDSHistorialID: TIntegerField;
    CDSHistorialLOTE: TIntegerField;
    CDSHistorialID_FACTURA: TIntegerField;
    CDSHistorialFECHAVTA: TSQLTimeStampField;
    CDSHistorialTIPOCPBTE: TStringField;
    CDSHistorialCLASECPBTE: TStringField;
    CDSHistorialCODIGO: TStringField;
    CDSHistorialNOMBRE: TStringField;
    CDSHistorialNROCPBTE: TStringField;
    CDSHistorialTOTAL: TFloatField;
    CDSHistorialVENDEDOR: TStringField;
    CDSHistorialNOMBRE_1: TStringField;
    CDSHistorialID_MOV_CTACTE: TIntegerField;
    cxGrid2DBTableView1LOTE: TcxGridDBColumn;
    cxGrid2DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRE_1: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    CDSPersonalCOMISION: TFloatField;
    procedure BuscadorVendedoresExecute(Sender: TObject);
    procedure ceVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSFacVta_AfterInsert(DataSet: TDataSet);
    procedure CDSFacVta_AfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgFacVtaDblClick(Sender: TObject);
    procedure CDSFacVta_COMISIONSetText(Sender: TField; const Text: String);
    procedure CDSFacVta_IMPORTECOMISIONSetText(Sender: TField;
      const Text: String);
    procedure FormShow(Sender: TObject);
    procedure CDSFacVtaCOMISIONSetText(Sender: TField; const Text: String);
    procedure CDSFacVtaIMPORTECOMISIONSetText(Sender: TField;
      const Text: String);
    procedure CDSFacVtaAfterInsert(DataSet: TDataSet);
    procedure CDSFacVtaAfterPost(DataSet: TDataSet);
    procedure CDSFacVtaCalcFields(DataSet: TDataSet);
    procedure chMostrarClick(Sender: TObject);
    procedure spbChekTosClick(Sender: TObject);
    procedure spbUnchekClick(Sender: TObject);
    procedure CDSFacVtaLIQUIDADASetText(Sender: TField;
      const Text: String);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure chbLiquidarTodosClick(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarPendientesExecute(Sender: TObject);
    procedure dbgPendientesDblClick(Sender: TObject);
    procedure MarcarLiquidadaExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ceCobradorKeyPress(Sender: TObject; var Key: Char);
    procedure BuscadorCobradorExecute(Sender: TObject);
    procedure ceCobradorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgZonasEnter(Sender: TObject);
    procedure dbgZonasColEnter(Sender: TObject);
    procedure CDSZonaBeforeInsert(DataSet: TDataSet);
    procedure CDSZonaAfterPost(DataSet: TDataSet);
    procedure CDSZonaBeforeDelete(DataSet: TDataSet);
    procedure chbOpcionesClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    EventoSuma:Boolean;
    procedure Sumar;
  end;

var
  FormControlComisionesPorArticulo: TFormControlComisionesPorArticulo;

implementation

uses UFactura_2, UFacturaCtdo_2, UTiketVta,UDMain_FD;

{$R *.DFM}

procedure TFormControlComisionesPorArticulo.Sumar;
VAR AuxTotal,AuxTotalComision,AuxTotalComisionGral,AuxporUtilidad,
    AuxTotalFacCC, AuxTotalFacCtdo,AuxTotalNC,AuxTotalND:Real;
    p: TBookmark;
begin
  AuxTotal            :=0;
  AuxTotalComision    :=0;
  AuxTotalComisionGral:=0;
  AuxTotalFacCC       :=0;
  AuxTotalFacCtdo     :=0;
  AuxTotalNC          :=0;
  AuxTotalND          :=0;

  p:=CDSFacVta.GetBookmark;
  CDSFacVta.First;
  CDSFacVta.DisableControls;
  sbEstado.SimpleText:='Sumando.....';
  while Not(CDSFacVta.Eof) do
    begin
      if CDSFacVtaTIPOCPBTE.Value<>'NC' Then
        AuxTotal:=AuxTotal+CDSFacVtaTOTAL.Value
      else
        AuxTotal:=AuxTotal-CDSFacVtaTOTAL.Value;
      // Suma Notas de Credito
      if CDSFacVtaTIPOCPBTE.Value='NC' Then
        AuxTotalNC:=AuxTotalNC+CDSFacVtaTOTAL.Value;
      // Suma Notas de Debitosd
      if CDSFacVtaTIPOCPBTE.Value='ND' Then
        AuxTotalND:=AuxTotalND+CDSFacVtaTOTAL.Value;
      // Suma Facturas Contado
      if CDSFacVtaTIPOCPBTE.Value='FO' Then
        AuxTotalFacCtdo:=AuxTotalFacCtdo+CDSFacVtaTOTAL.Value;
      // Suma Facturas CC
      if CDSFacVtaTIPOCPBTE.Value='FC' Then
        AuxTotalFacCC:=AuxTotalFacCC+CDSFacVtaTOTAL.Value;

      AuxTotalComisionGral:=AuxTotalComisionGral+CDSFacVtAIMPORTECOMISION.Value;
      if CDSFacVtaLIQUIDADA.Value='S' Then
        AuxTotalComision:=AuxTotalComision+CDSFacVtAIMPORTECOMISION.Value;
       CDSFacVta.Next;
    end;
  sbEstado.SimpleText:='';

  CDSFacVta.EnableControls;
  CDSFacVta.GotoBookmark(p);
  CDSFacVta.FreeBookmark(p);
  edTotal.Value               := AuxTotal;
  edTotalComisionAPagar.Value := AuxTotalComision;
  edTotalComision.Value       := AuxTotalComisionGral;
  edContado.value             := AuxTotalFacCtdo;
  edCC.Value                  := AuxTotalFacCC;
  edNC.Value                  := AuxTotalNC;
  edND.Value                  := AuxTotalND;
end;


procedure TFormControlComisionesPorArticulo.ud1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde2.Date,y,m,d);
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

  Desde2.Date:=EncodeDate(y,m,1);
  Hasta2.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  BuscarPendientes.Execute;
  //  Desde.SetFocus;
end;

procedure TFormControlComisionesPorArticulo.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSFacVta.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='ArticulosPorVendedor';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles')
end;

procedure TFormControlComisionesPorArticulo.BitBtn2Click(Sender: TObject);
begin
  inherited;
  CDSHistorial.Close;
  CDSHistorial.Open;
end;

procedure TFormControlComisionesPorArticulo.BuscadorCobradorExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscaCob.Close;
  CDSBuscaCob.Open;
  ComBuscadorCobrador.Execute;
  if comBuscadorCobrador.rOk then
    BEGIN
      ceCobrador.Text := comBuscadorCobrador.Id;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := comBuscadorCobrador.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        BEGIN
          edNombreCobrador.Text := CDSPersonalNOMBRE.Value;
          Buscar.Execute;
          ceCobrador.SetFocus;
          ceCobrador.SelectAll;
        END;
    END;
  CDSPersonal.Close;
  CDSBuscaCob.Close;
end;

procedure TFormControlComisionesPorArticulo.BuscadorVendedoresExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscadorPersonal.Close;
  CDSBuscadorPersonal.Open;
  ComBuscadorVendedor.Execute;
    BEGIN
      ceVendedor.Text := ComBuscadorVendedor.Id;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := ComBuscadorVendedor.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        BEGIN
          edNombreVendedor.Text := CDSPersonalNOMBRE.Value;
          Buscar.Execute;
          ceVendedor.SetFocus;
          ceVendedor.SelectAll;
        END;
    END;
  CDSPersonal.Close;
  CDSBuscadorPersonal.Close;
end;

procedure TFormControlComisionesPorArticulo.ceCobradorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) or (key=VK_BACK) then
    begin
      ceCobrador.Text      := '';
      edNombreCobrador.Text:= '';
    end;
  
end;

procedure TFormControlComisionesPorArticulo.ceCobradorKeyPress(Sender: TObject;
  var Key: Char);
var dato:string;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCobrador.Text))) + ceCobrador.Text;
      ceCobrador.Text := Dato;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := Dato;
      CDSPersonal.Open;
      IF (NOT (CDSPersonal.IsEmpty)) and (CDSPersonalVENDEDOR.Value='S')  THEN
        edNombreCobrador.Text := CDSPersonalNOMBRE.Value
      else
        begin
          edNombreCobrador.Text := '';
          ceCobrador.Text       := '';
        end;
      CDSPersonal.Close;
      Buscar.Execute;
      ceCobrador.SetFocus;
      ceCobrador.SelectAll;
    END;
end;


procedure TFormControlComisionesPorArticulo.ceVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (Key=VK_DELETE) or (key=VK_BACK) then
    begin
      ceVendedor.Text      := '';
      edNombreVendedor.Text:= '';
    end;
end;

procedure TFormControlComisionesPorArticulo.ceVendedorKeyPress(
  Sender: TObject; var Key: Char);
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
      IF (NOT (CDSPersonal.IsEmpty)) and (CDSPersonalVENDEDOR.Value='S')  THEN
        edNombreVendedor.Text := CDSPersonalNOMBRE.Value
      else
        begin
          edNombreVendedor.Text := '';
          cevendedor.Text       := '';
        end;
      CDSPersonal.Close;
      Buscar.Execute;
      ceVendedor.SetFocus;
      ceVendedor.SelectAll;
    END;
end;

procedure TFormControlComisionesPorArticulo.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde2.Date:=IncMonth(Desde.Date,-1);
  Hasta2.Date:=IncMonth(Hasta.Date,-1);


  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormControlComisionesPorArticulo.ConfirmaExecute(
  Sender: TObject);
VAR Id_Movimiento:Integer;
    Acumulador   :Extended;
    Lote         :Integer;
begin
  Acumulador    := 0;
  QUltimoLote.Close;
  QUltimoLote.Open;
  if QUltimoLote.Fields[0].AsString<>'' then
    Lote:=QUltimoLote.Fields[0].AsInteger+1
  else
    Lote:=1;
  QUltimoLote.Close;

  Id_Movimiento := ibId.IncrementFD(1);

  if CDSFacVta.State <> dsBrowse Then CDSFacVta.Post;
  CDSFacVta.First;
  pbRegistros.Min:=0;
  if CDSFacVta.RecordCount>0 then
    pbRegistros.Max:=CDSFacVta.RecordCount-1;
  pbRegistros.Position:=0;
  lbReg.Caption:='0/'+IntToStr(pbRegistros.Max);
  if edTotalComisionAPagar.Value>0 then
    BEGIN
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        while Not(CDSFacVta.Eof) DO
          begin
            pbRegistros.Position := pbRegistros.Position+1;
            lbReg.Caption        := IntToStr(pbRegistros.Position)+'/'+IntToStr(pbRegistros.Max);
            Application.ProcessMessages;
            if (CDSFacVtaLIQUIDADA.Value='S') Then
              begin
                Acumulador  := Acumulador + CDSFacVtaIMPORTECOMISION.Value;

                QLiquidarFacFD.Close;
                QLiquidarFacFD.ParamByName('id').Value    := CDSFacVtaID_FC.Value;
                QLiquidarFacFD.ParamByName('Fecha').Value := FechaLiquidacion.Date;
                QLiquidarFacFD.ExecSQL;

                QLoteLiquidacionFD.Close;
                QLoteLiquidacionFD.ParamByName('Lote').Value       := Lote;
                QLoteLiquidacionFD.ParamByName('id_factura').Value := CDSFacVtaID_FC.Value;
                QLoteLiquidacionFD.ParamByName('id_mov').Value     := Id_Movimiento;
                QLoteLiquidacionFD.ParamByName('comision').AsFloat := CDSFacVtaIMPORTECOMISION.AsFloat;

                QLoteLiquidacionFD.ExecSQL;

              end;
            CDSFacVta.Next;
          end;

        CDSFacVta.EnableControls;
        CDSFacVta.Close;
        if Acumulador<>0 Then
          begin
            CDSMovCtaCteVendedorFD.Open;
            CDSMovCtaCteVendedorFD.Insert;
            CDSMovCtaCteVendedorFDID.AsInteger     := Id_Movimiento;
            CDSMovCtaCteVendedorFDCODIGO.Value     := ceVendedor.Text;
            CDSMovCtaCteVendedorFDFECHA.AsDateTime := FechaLiquidacion.Date;
            CDSMovCtaCteVendedorFDCLASECOMP.Value  := 'IP';
            CDSMovCtaCteVendedorFDDETALLE.Value    := 'Liquidacion del '+desde.Text+' al '+hasta.text;
            CDSMovCtaCteVendedorFDDEBE.AsFloat     := Acumulador;
            CDSMovCtaCteVendedorFDHABER.AsFloat    := 0;
            CDSMovCtaCteVendedorFD.Post;
            CDSMovCtaCteVendedorFD.ApplyUpdates(0);
            CDSMovCtaCteVendedorFD.Close;
          end;
        if chbSimular.Checked=True Then
          begin
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Simulación Termianda....!');
          end
        else
          begin
            DMMain_FD.fdcGestion.Commit;
            DMMain_FD.LogFileFD(1,2,'Liquidacion Generada x Articulos del '+DateToStr(Desde.Date)+ ' a '+DateToStr(Hasta.Date)+'Vendedor:'+edNombreVendedor.Text+
                                ' Importe de Comision a pagar: '+FormatFloat(',0.00',edTotalComisionAPagar.Value)+ ' Total Comision: '+FormatFloat(',0.00',edTotalComision.Value)
                                ,'FACVTACO');

            ShowMessage('Liquidacion terminada...!');
          end;
      except
        Screen.Cursor:=crDefault;
        pbRegistros.Position:=0;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('NO se ingreso registro en la Cta Cte. del Empleado....!');
      End;
      CDSFacVta.Open;
    END;
end;

procedure TFormControlComisionesPorArticulo.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if (CDSFacVtaTIPOCPBTE.AsString='FC') or
     (CDSFacVtaTIPOCPBTE.AsString='NC') or
     (CDSFacVtaTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew   := CDSFacVtaID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
   if (CDSFacVtaTIPOCPBTE.AsString='FO') Then
    begin
      IF NOT (Assigned(FormCpbteCtdo_2)) THEN
        FormCpbteCtdo_2    := TFormCpbteCtdo_2.Create(Self);
      FormCpbteCtdo_2.DatoNew   := CDSFacVtaID_FC.AsString;
      FormCpbteCtdo_2.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
   if (CDSFacVtaTIPOCPBTE.AsString='TK') Then
    begin
      IF NOT (Assigned(FormTicketVta)) THEN
        FormTicketVta    := TFormTicketVta.Create(Self);
      FormTicketVta.DatoNew   := CDSFacVtaID_FC.AsString;
      FormTicketVta.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
      FormTicketVta.Recuperar.Execute;
      FormTicketVta.Show;
    end

end;

procedure TFormControlComisionesPorArticulo.BuscarExecute(Sender: TObject);
begin
 // inherited;
  if ((ceVendedor.Text<>'')) Then
    begin
      CDSFacVta.Close;
      CDSFacVta.IndexDefs.Clear;
      CDSFacVta.IndexFieldNames:='';
      CDSFacVta.Params.ParamByName('codigo').Value:=Trim(ceVendedor.Text);
      CDSFacVta.Params.ParamByName('Desde').AsDate:=Desde.Date;
      CDSFacVta.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
      if Trim(ceCobrador.Text)<>'' then
        CDSFacVta.Params.ParamByName('cobrador').Value:=Trim(ceCobrador.Text)
      else
        CDSFacVta.Params.ParamByName('cobrador').Value:='******';
      CDSFacVta.Open;
      sumar;
      BuscarPendientes.Execute;
    end;
end;

procedure TFormControlComisionesPorArticulo.BuscarPendientesExecute(
  Sender: TObject);
begin
  inherited;
  if ceVendedor.Text<>'' Then
    begin
      CDSFacVtaAnt.Close;
      CDSFacVtaAnt.Params.ParamByName('codigo').Value:=ceVendedor.Text;
      CDSFacVtaAnt.Params.ParamByName('Desde').AsDate:=Desde2.Date;
      CDSFacVtaAnt.Params.ParamByName('Hasta').AsDate:=Hasta2.Date;
      CDSFacVtaAnt.Open;

    end;
end;

procedure TFormControlComisionesPorArticulo.CDSFacVta_AfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  CDSFacVta.Cancel;
end;

procedure TFormControlComisionesPorArticulo.CDSFacVta_AfterPost(
  DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormControlComisionesPorArticulo.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LstComisionArt.ini');
  edTolerancia.Value:=  ArchivoIni.ReadFloat('Opciones', 'Tolerancia', 0);

  edComisionTk.Value:=  ArchivoIni.ReadFloat('Opciones', 'ComisionTK',0);
  edComisionFO.Value :=  ArchivoIni.ReadFloat('Opciones', 'ComisionFO',0);
  edComisionFC.Value :=  ArchivoIni.ReadFloat('Opciones', 'ComisionFC',0);
  edComisionNC.Value :=  ArchivoIni.ReadFloat('Opciones', 'ComisionNC',0);
  edComisionND.Value :=  ArchivoIni.ReadFloat('Opciones', 'ComisionND',0);

  ArchivoIni.Free;

  AutoSize:=False;
  CDSZona.Open;
  pcComisiones.ActivePageIndex:=0;
end;

procedure TFormControlComisionesPorArticulo.FormDestroy(Sender: TObject);
begin
  inherited;
 FormControlComisionesPorArticulo:=nil;
end;

procedure TFormControlComisionesPorArticulo.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlComisionesPorArticulo<>nil then
    if FormControlComisionesPorArticulo.Width<>1075 then
      FormControlComisionesPorArticulo.Width:=1075;


end;

procedure TFormControlComisionesPorArticulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LstComisionArt.ini');
  ArchivoIni.WriteFloat('Opciones', 'Tolerancia',edTolerancia.Value);
  ArchivoIni.WriteFloat('Opciones', 'ComisionTK',edComisionTk.Value);
  ArchivoIni.WriteFloat('Opciones', 'ComisionFO',edComisionFO.Value);
  ArchivoIni.WriteFloat('Opciones', 'ComisionFC',edComisionFC.Value);
  ArchivoIni.WriteFloat('Opciones', 'ComisionNC',edComisionNC.Value);
  ArchivoIni.WriteFloat('Opciones', 'ComisionND',edComisionND.Value);

  ArchivoIni.Free;

  inherited;
  Action:=caFree;
end;

procedure TFormControlComisionesPorArticulo.dbgFacVtaDblClick(
  Sender: TObject);
begin
  inherited;
  if (CDSFacVtaTIPOCPBTE.AsString='FC') or
     (CDSFacVtaTIPOCPBTE.AsString='NC') or
     (CDSFacVtaTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew   := CDSFacVtaID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
   if (CDSFacVtaTIPOCPBTE.AsString='FO') Then
    begin
      IF NOT (Assigned(FormCpbteCtdo_2)) THEN
        FormCpbteCtdo_2    := TFormCpbteCtdo_2.Create(Self);
      FormCpbteCtdo_2.DatoNew   := CDSFacVtaID_FC.AsString;
      FormCpbteCtdo_2.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
   if (CDSFacVtaTIPOCPBTE.AsString='TK') Then
    begin
      IF NOT (Assigned(FormTicketVta)) THEN
        FormTicketVta    := TFormTicketVta.Create(Self);
      FormTicketVta.DatoNew   := CDSFacVtaID_FC.AsString;
      FormTicketVta.TipoCpbte := CDSFacVtaTIPOCPBTE.AsString;
      FormTicketVta.Recuperar.Execute;
      FormTicketVta.Show;
    end

end;

procedure TFormControlComisionesPorArticulo.CDSFacVta_COMISIONSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSFacVtaIMPORTECOMISION.Value:=(Sender.AsFloat*CDSFacVtaTOTAL.Value)*0.01;
  //CDSFacVta.Post;

end;

procedure TFormControlComisionesPorArticulo.CDSFacVta_IMPORTECOMISIONSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSFacVtaCOMISION.AsFloat := (Sender.AsFloat/CDSFacVtaTOTAL.AsFloat)*100;
//  CDSFacVta.Post;

end;

procedure TFormControlComisionesPorArticulo.CDSZonaAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSZona.ApplyUpdates(-1);
end;

procedure TFormControlComisionesPorArticulo.CDSZonaBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  CDSZona.Cancel;
end;

procedure TFormControlComisionesPorArticulo.CDSZonaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  CDSZona.Cancel;
end;

procedure TFormControlComisionesPorArticulo.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));

  Desde.SetFocus;
  Desde2.Date:=IncMonth(Desde.Date,-1);
  Hasta2.Date:=IncMonth(Hasta.Date,-1);
  Fechaliquidacion.Date:=Date;
end;

procedure TFormControlComisionesPorArticulo.CDSFacVtaCOMISIONSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSFacVtaIMPORTECOMISION.Value:=(Sender.AsFloat*CDSFacVtaTOTAL.Value)*0.01;
 // CDSFacVta.Post;
end;

procedure TFormControlComisionesPorArticulo.CDSFacVtaIMPORTECOMISIONSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSFacVtaCOMISION.AsFloat:=(Sender.AsFloat/CDSFacVtaTOTAL.AsFloat)*100;
//  CDSFacVta.Post; 
end;

procedure TFormControlComisionesPorArticulo.CDSFacVtaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  CDSFacVta.Cancel;
end;

procedure TFormControlComisionesPorArticulo.CDSFacVtaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormControlComisionesPorArticulo.CDSFacVtaCalcFields(
  DataSet: TDataSet);
Var AuxPorUtilidad:Real;
begin
  inherited;
  CDSFacVtaCOMISIONCALCULADA.AsFloat:=CDSFacVtaCOMISION.AsFloat;
  // modificado para Dipadent calculo de comsion por tipo y zona
  if chbOpciones.Checked then
    begin
//      CDSFacVta.Edit;
      if CDSFacVtaTIPOCPBTE.Value='TK' then
        CDSFacVtaCOMISIONCALCULADA.AsFloat:=edComisionTk.Value
      else
        if (CDSFacVtaTIPOCPBTE.Value='FC') or (CDSFacVtaTIPOCPBTE.Value='FO') or
           (CDSFacVtaTIPOCPBTE.Value='ND') or (CDSFacVtaTIPOCPBTE.Value='NC') then
           begin
             if (CDSFacVtaTIPOCPBTE.Value='FO') Then
               CDSFacVtaCOMISIONCALCULADA.AsFloat:=edComisionFO.Value;
             if (CDSFacVtaTIPOCPBTE.Value='FC') Then
               CDSFacVtaCOMISIONCALCULADA.AsFloat:=edComisionFC.Value;
             if (CDSFacVtaTIPOCPBTE.Value='NC') Then
                CDSFacVtaCOMISIONCALCULADA.AsFloat:=edComisionNC.Value;
             if (CDSFacVtaTIPOCPBTE.Value='ND') Then
               CDSFacVtaCOMISIONCALCULADA.AsFloat:=edComisionND.Value;
           end;
      if CDSZona.Locate('ID_ZONA',CDSFacVtaZONA.Value,[]) then
        if CDSZonaCOMISION.AsFloat>0 then
          CDSFacVtaCOMISIONCALCULADA.AsFloat:=CDSZonaCOMISION.AsFloat;
  //    CDSFacVta.Post;
  end;
  CDSFacVtaCANTIDADCALCULADA.AsFloat     := CDSFacVtaCANTIDAD.AsFloat;

  CDSFacVtaTOTAL_CALCULADO.AsFloat       := CDSFacVtaTOTAL.AsFloat;
  CDSFacVtAIMPORTECOMISION.Value         := CDSFacVtaTOTAL.AsFloat * CDSFacVtaCOMISIONCALCULADA.AsFloat * 0.01;
  CDSFacVtaMUESTRASALDOCALCULADO.AsFloat := CDSFacVtaMUESTRASALDO.AsFloat;
  CDSFacVtaiva_total_rec.AsFloat         := CDSFacVtaIVA_TOTAL.AsFloat;
  if (CDSFacVtaTIPOCPBTE.Value='NC') Then
    begin
      CDSFacVtAIMPORTECOMISION.Value     := CDSFacVtAIMPORTECOMISION.Value*-1;
      CDSFacVtaTOTAL_CALCULADO.AsFloat   := CDSFacVtaTOTAL_CALCULADO.AsFloat*-1;
      CDSFacVtaiva_total_rec.AsFloat     := CDSFacVtaIVA_TOTAL.AsFloat*-1;
      CDSFacVtaCANTIDADCALCULADA.AsFloat := CDSFacVtaCANTIDAD.AsFloat*-1;

    end;
  if (CDSFacVtaTIPOCPBTE.Value='FO') Then
    CDSFacVtaMUESTRASALDOCALCULADO.Value:=0;

  if chbPorUtilidad.Checked then
    begin
      AuxporUtilidad:=0;
      if CDSFacVtAIMPORTECOMISION.Value>=CDSFacVtaDIFVTA.AsFloat then
        CDSFacVtAIMPORTECOMISION.Value:= CDSFacVtaDIFVTA.Value;
      if CDSFacVtaDIFVTA.AsFloat>CDSFacVtaCOSTOTOTAL.AsFloat then
        CDSFacVtAIMPORTECOMISION.Value:= CDSFacVtaDIFVTA.Value;

    end;


end;

procedure TFormControlComisionesPorArticulo.dbgPendientesDblClick(
  Sender: TObject);
begin
  inherited;
  MarcarLiquidada.Execute;
end;

procedure TFormControlComisionesPorArticulo.dbgZonasColEnter(Sender: TObject);
begin
  inherited;
  if dbgZonas.SelectedIndex< 2 then dbgZonas.SelectedIndex:=2;
  
end;

procedure TFormControlComisionesPorArticulo.dbgZonasEnter(Sender: TObject);
begin
  inherited;
  dbgZonas.SelectedIndex:=2;
end;

procedure TFormControlComisionesPorArticulo.chbLiquidarTodosClick(
  Sender: TObject);
begin
  inherited;
  spbUnchekClick(Sender);
end;

procedure TFormControlComisionesPorArticulo.chbOpcionesClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlComisionesPorArticulo.chMostrarClick(
  Sender: TObject);
begin
  inherited;
  if chMostrar.Checked=FALSE Then
    begin
      CDSFacVta.Filtered:=false;
      CDSFacVta.Filter:='(MUESTRASALDOCALCULADO <= 0) or (MUESTRASALDOCALCULADO IS NULL) ' ;
      CDSFacVta.Filtered:=tRUE;
    end
  else
    begin
      CDSFacVta.Filtered:=false;
    end;
end;

procedure TFormControlComisionesPorArticulo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormControlComisionesPorArticulo.spbChekTosClick(
  Sender: TObject);
begin
  inherited;
  CDSFacVta.AfterPost:=nil;
  CDSFacVta.IndexFieldNames:='TIPOCPBTE;CLASECPBTE;NROCPBTE';
  CDSFacVta.First;
  CDSFacVta.DisableControls;
  while not(CDSFacVta.Eof) DO
    begin
      CDSFacVta.Edit;
      if chbLiquidarTodos.Checked=True then
        begin
         if (StrToFloat(FormatFloat('0.00',CDSFacVtaMUESTRASALDOCALCULADO.Value))<=edTolerancia.Value) OR
           (VarIsNull(CDSFacVtaMUESTRASALDOCALCULADO.Value)) Then
            CDSFacVtaLIQUIDADA.Value:='S';
        end
      else
        CDSFacVtaLIQUIDADA.Value:='S';
      CDSFacVta.Next;
    end;
   CDSFacVta.EnableControls;
   CDSFacVta.IndexFieldNames:='MUESTRASALDOCALCULADO;TIPOCPBTE;CLASECPBTE;NROCPBTE';
  Sumar;
  CDSFacVta.AfterPost:= CDSFacVtaAfterPost;
end;

procedure TFormControlComisionesPorArticulo.spbUnchekClick(
  Sender: TObject);
begin
  inherited;
  CDSFacVta.AfterPost:=nil;
  Screen.Cursor:=crHourGlass;
  CDSFacVta.First;
  CDSFacVta.DisableControls;
  while not(CDSFacVta.Eof) DO
    begin
      CDSFacVta.Edit;
      CDSFacVtaLIQUIDADA.Value:='N';
      CDSFacVta.Next;
    end;
  CDSFacVta.EnableControls;
  Screen.Cursor:=crDefault;

  Sumar;
  CDSFacVta.AfterPost:= CDSFacVtaAfterPost;
end;

procedure TFormControlComisionesPorArticulo.CDSFacVtaLIQUIDADASetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if chbLiquidarTodos.Checked=True then
    begin
      if (StrToFloat(FormatFloat('0.00',CDSFacVtaMUESTRASALDOCALCULADO.Value))=0) OR
        (VarIsNull(CDSFacVtaMUESTRASALDOCALCULADO.Value))
      //and (dbgFacVta.DataSource.DataSet.FieldByName('TIPOCPBTE').VAlue<>'FO')
         Then
           Sender.AsString:=Text
      else
        begin
          ShowMessage('Factura con saldo Pendiente, no se puede liquidar.....!');
          Sender.AsString:='N';
        end;
    end
  else
    begin
      if CDSFacVtaLIQUIDADA.Value='S' then
        CDSFacVtaLIQUIDADA.Value:='N'
      else
        CDSFacVtaLIQUIDADA.Value:='S';
    end;
  Sumar;
end;

procedure TFormControlComisionesPorArticulo.ImprimirExecute(
  Sender: TObject);
begin
  inherited;

  if chOrden.Checked then
    begin
      CDSFacVta.IndexFieldNames:='LIQUIDADA;NROCPBTE';
    end;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\LiquidacionVendedoresArt.fr3');
  frxReporte.Variables['vendedor']:=''''+ednombrevendedor.text+'''';
  frxReporte.Variables['periodo']:=''''+desde.Text+''''+''' - '''+''''+Hasta.Text+'''';

  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
  ceVendedor.SetFocus;
  ceVendedor.SelectAll;

end;

procedure TFormControlComisionesPorArticulo.MarcarLiquidadaExecute(
  Sender: TObject);
begin
  inherited;
  QLiquidarFacFD.Close;
  QLiquidarFacFD.ParamByName('id').Value    := CDSFacVtaAntID_FC.Value;
  QLiquidarFacFD.ParamByName('Fecha').Value := FechaLiquidacion.Date;
  QLiquidarFacFD.ExecSQL;
  BuscarPendientes.Execute;
end;

procedure TFormControlComisionesPorArticulo.Panel1DblClick(
  Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

end.
