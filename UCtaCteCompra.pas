UNIT UCtaCteCompra;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBClient, Provider,
  ExtCtrls, ActnList, StdCtrls, Mask, StrUtils,
  ShellApi, Buttons, frxClass,
  frxDBSet, Menus, IniFiles,Printers, Librerias,
  ComCtrls, frxExportHTML, frxExportRTF,FileCtrl, DataExport,
  DataToXLS, JvExControls, JvGradient, frxExportCSV, JvDBLookup,
  frxExportPDF, JvComponentBase, JvFormPlacement, JvExMask, JvToolEdit, FMTBcd,
  SqlExpr,Math, JvMaskEdit, JvDBFindEdit, System.Actions,VirtualUI_sdk,
  JvBaseEdits, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, JvAppStorage, JvAppIniStorage, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog,
  AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, frCoreClasses;

TYPE
  TFormCtaCteCompra = CLASS(TForm)
    pnPrincipal: TPanel;
    DSMovCC: TDataSource;
    DSPMovCC: TDataSetProvider;
    ActionList1: TActionList;
    BuscarProveedor: TAction;
    TraerCtaCte: TAction;
    frCtaCte: TfrxReport;
    btImprimir: TBitBtn;
    btVerCC: TBitBtn;
    Imprimir: TAction;
    frDBDSCtaCte: TfrxDBDataset;
    btExcel: TBitBtn;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    PopupMenu1: TPopupMenu;
    VerComprobante: TAction;
    VerComprobante1: TMenuItem;
    DSPEmpresa: TDataSetProvider;
    BitBtn2: TBitBtn;
    FiltrarDebitos: TAction;
    FiltraCreditos: TAction;
    TodosMovimientos: TAction;
    VerlosDebitos1: TMenuItem;
    VerlosCreditos1: TMenuItem;
    TodoslosMovimientos1: TMenuItem;
    SpeedButton2: TSpeedButton;
    EnviarCorreo: TAction;
    SaveDialog: TSaveDialog;
    frxDBProveedor: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    CDSEmpresa: TClientDataSet;
    N1: TMenuItem;
    DSFiltroDet: TDataSource;
    DSFiltroCab: TDataSource;
    Comprobantes: TAction;
    Comprobantes1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    dbcGrupo: TJvDBLookupCombo;
    chbUsaFiltro: TCheckBox;
    JvFormStorage: TJvFormStorage;
    CDSMovCC: TClientDataSet;
    CDSMovCCSaldoCC: TFloatField;
    CDSMovCCID_MOVCCCOMP: TIntegerField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCCLIENTE: TStringField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCID_COMPROBANTE: TIntegerField;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSAplicaciones: TClientDataSet;
    DSPAplicaciones: TDataSetProvider;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCCOMPRA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesPROVEEDOR: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesDETALLE: TStringField;
    chVistaOP: TCheckBox;
    btHistorial: TBitBtn;
    chVistaFc: TCheckBox;
    CDSMovCCPUNTOVTA: TStringField;
    dbfPtoVta: TJvDBFindEdit;
    Label5: TLabel;
    pcCtaCte: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgMovimientos: TDBGrid;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    cxGMovAuxDBTableView1: TcxGridDBTableView;
    cxGMovAuxLevel1: TcxGridLevel;
    cxGMovAux: TcxGrid;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSMovID: TIntegerField;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovCODIGO_PROV: TStringField;
    CDSMovID_TIPO: TIntegerField;
    CDSMovDEBE: TFMTBCDField;
    CDSMovHABER: TFMTBCDField;
    CDSMovID_OP: TIntegerField;
    CDSMovMUESTRATIPO: TStringField;
    CDSMovMUESTRAPROVEEDOR: TStringField;
    DSMov: TDataSource;
    CDSMovTIPOCPBTE: TStringField;
    CDSMovCLASECPBTE: TStringField;
    CDSMovNROCPBTE: TStringField;
    cxGMovAuxDBTableView1FECHA: TcxGridDBColumn;
    cxGMovAuxDBTableView1DEBE: TcxGridDBColumn;
    cxGMovAuxDBTableView1HABER: TcxGridDBColumn;
    cxGMovAuxDBTableView1MUESTRATIPO: TcxGridDBColumn;
    cxGMovAuxDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGMovAuxDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGMovAuxDBTableView1NROCPBTE: TcxGridDBColumn;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    DataToXLS: TDataToXLS;
    QSaldoInicial: TFDQuery;
    QSaldoInicialDEBE: TFloatField;
    QSaldoInicialHABER: TFloatField;
    QMovCC: TFDQuery;
    QPrimerMov: TFDQuery;
    QPrimerMovMIN: TSQLTimeStampField;
    QMov: TFDQuery;
    QFiltroC: TFDQuery;
    QFiltroD: TFDQuery;
    QFiltroCID: TIntegerField;
    QFiltroCDETALLE: TStringField;
    QFiltroCGRUPO: TSmallintField;
    QFiltroDID: TIntegerField;
    QFiltroDID_CAB: TIntegerField;
    QFiltroDID_CPBTE: TIntegerField;
    QFiltroDMUESTRACOMPROBANTE: TStringField;
    QFiltroDMUESTRATIPO: TStringField;
    QFiltroDMUESTRACLASE: TStringField;
    QFiltroDMUESTRASUC: TStringField;
    QApli: TFDQuery;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    SpeedButton1: TSpeedButton;
    AplicacionesCC: TAction;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    CDSProveedorSALDO_INICIAL: TFloatField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSAplicacionesAPLICA_NETO: TFloatField;
    QObra: TFDQuery;
    CDSMovCCID_OBRA: TIntegerField;
    CDSMovCCMUESTRAOBRA: TStringField;
    dbcObra: TJvDBLookupCombo;
    DSObra: TDataSource;
    CDSObra: TClientDataSet;
    DSPObra: TDataSetProvider;
    Label6: TLabel;
    MovObra: TTabSheet;
    pnCabecera: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    lbSaldoInicial: TLabel;
    edNombreProveedor: TEdit;
    UpDown1: TUpDown;
    ceProveedor: TJvComboEdit;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAOBRA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PROCEDURE BuscarProveedorExecute(Sender: TObject);
    PROCEDURE TraerCtaCteExecute(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE ceProveedorKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE ImprimirExecute(Sender: TObject);
    PROCEDURE pnPrincipalDblClick(Sender: TObject);
    PROCEDURE FormShow(Sender: TObject);
    PROCEDURE btExcelClick(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FiltrarDebitosExecute(Sender: TObject);
    procedure FiltraCreditosExecute(Sender: TObject);
    procedure TodosMovimientosExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure dbgMovimientosCellClick(Column: TColumn);
    procedure dbgMovimientosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure CerrarClick(Sender: TObject);
    procedure dbcGrupoChange(Sender: TObject);
    procedure chbUsaFiltroClick(Sender: TObject);
    procedure dbcObraChange(Sender: TObject);
    procedure btHistorialClick(Sender: TObject);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure AplicacionesCCExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgMovObras_oldGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure dbgMovObras_oldGetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
  private
    { Private declarations }
  public
    ArchivoIni:TIniFile;
    PrListados,PrDefault,RangoFechas:Integer;
    PrNomListados,PrListadoDefecto,PrNomDefault:String;
    Mascara:String;
    Condiciones:String;
    // Variables de Correo ******
    DirCorreo,NombreCuenta,CopiaCorreo,
    AsuntoCorreo,NombreServidor,
    Clave,Autotenticacion,Remitente:String;
    Puerto:Integer;
    //***************************
    Color:TColor;
    procedure ArmarCondiciones;
    PROCEDURE TraeCC(Dato: STRING; VAR SaldoInicial:Extended);
    procedure Sumar;
    { Public declarations }
  END;

VAR
  FormCtaCteCompra: TFormCtaCteCompra;

IMPLEMENTATION

USES UMuestraCpbteCtaCteCompra, UMuestraOPago,
  UAjustesCCProveedores, UBuscadorProveedor, UCorreo, UAnulacionOPago,
  UOPago_2, DMBuscadoresForm, UDetalleOperacionesProvee,
  UCompra_2,UDMain_FD, UAplicacionesCCCompra_2;

{$R *.DFM}

procedure TFormCtaCteCompra.Sumar;
begin
  edDebe.Value  := 0;
  edHaber.Value := 0;
  CDSMovCC.DisableControls;
  CDSMovCC.First;
  while Not(CDSMovCC.Eof) do
    begin
      edDebe.Value  := edDebe.Value + CDSMovCC.FieldByName('DEBE').AsFloat;
      edHaber.Value := edHaber.Value + CDSMovCC.FieldByName('HABER').AsFloat;
      CDSMovCC.Next;
    end;
  CDSMovCC.EnableControls;

end;

procedure TFormCtaCteCompra.AplicacionesCCExecute(Sender: TObject);
begin
 if Not(Assigned(FormAplicacionesCCCompra_2)) then
    FormAplicacionesCCCompra_2:=TFormAplicacionesCCCompra_2.Create(self);
  FormAplicacionesCCCompra_2.edCodigo.Text := ceProveedor.Text;//entas.CDSVentaCabCODIGO.AsString;;
  FormAplicacionesCCCompra_2.VerCCte.Execute;
  FormAplicacionesCCCompra_2.Show;
end;

procedure TFormCtaCteCompra.ArmarCondiciones;
VAR I:Integer;
Dato:String;
begin
  Condiciones:='';
  if chbUsaFiltro.Checked=True Then
    begin
      QFiltroD.First;
      while Not(QFiltroD.Eof) do
        begin
          if Condiciones='' Then
            condiciones:=' where (m.id_comprobante='+''+QFiltroDID_CPBTE.AsString+''+') '
          else
            condiciones:=Condiciones+' or (m.id_comprobante='+''+QFiltroDID_CPBTE.AsString+''+') ';
          QFiltroD.Next;
        end;
    end;
  // nuevo para el manejo de obras
  if condiciones<>'' then
    condiciones:=condiciones+' and (m.id_obra = :id_obra or :id_obra = -1)'
  else
    condiciones:='where (m.id_obra = :id_obra) or ( :id_obra = -1) ';

end;



PROCEDURE TFormCtaCteCompra.TraeCC(dato: STRING;VAR SaldoInicial:Extended);
BEGIN

  ArmarCondiciones;
  //dbgMovObras.PageMode:=True;

  CDSProveedor.Close;
  CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
  CDSProveedor.Open;
  IF NOT (CDSProveedor.IsEmpty) THEN
    BEGIN

      QSaldoInicial.Close;
      QSaldoInicial.ParamByName('Codigo').Value:= Dato;
      QSaldoInicial.ParamByName('Desde').Value := Desde.Date;
      QSaldoInicial.SQL.Text:= 'select sum(m.debe)as debe, sum(m.haber) as haber from SALDO_INICIAL_CTACTE_COMP (:codigo,:desde ) m '+Condiciones;
      QSaldoInicial.ParamByName('id_obra').Value := dbcObra.KeyValue;

      QSaldoInicial.Open;

      SaldoInicial:=0;

      QSaldoInicial.First;
      SaldoInicial  := SaldoInicial + QSaldoInicialHaber.AsFloat - QSaldoInicialDebe.AsFloat;

      QSaldoInicial.Close;

      lbSaldoInicial.Caption := FormatFloat(Mascara,SaldoInicial);
      edNombreProveedor.Text := CDSProveedorNOMBRE.AsString;

      CDSMovCC.Close;
      CDSMovCC.CommandText:= 'select m.* , o.detalle as MuestraObra from MOV_CTACTE_COMP (:codigo,:desde,:hasta ) m'+
                             ' left join obras o on o.codigo = m.id_obra '+ Condiciones +
                             ' order by m.fechaCompra,m.tipocpbte,m.nrocpbte ';


      CDSMovCC.Params.ParamByName('Codigo').Value  := Dato;
      CDSMovCC.Params.ParamByName('Desde').Value   := Desde.Date;
      CDSMovCC.Params.ParamByName('Hasta').Value   := Hasta.Date;
      CDSMovCC.Params.ParamByName('id_obra').Value := dbcObra.KeyValue;
      CDSMovCC.Open;

      Sumar;
    END;
  CDSMov.Close;
  CDSMov.Params.ParamByName('codigo').Value:=Dato;
  CDSMov.Open;
END;


PROCEDURE TFormCtaCteCompra.BuscarProveedorExecute(Sender: TObject);
BEGIN
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceProveedor.Text := FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := CDSProveedorNOMBRE.AsString;
//          CorreoDestino          := CDSProveedorCORREO.Value;
          TraerCtaCte.Execute;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
//  QProveedores.Close;
END;

PROCEDURE TFormCtaCteCompra.TraerCtaCteExecute(Sender: TObject);
VAR
  Debe, Haber,Saldo: extended;

BEGIN
  if (Hasta.Date>=Desde.Date) Then
    begin
      TraeCC(ceProveedor.Text,Saldo);
      Debe  := 0;
      Haber := Saldo;
//  r:=0;
//  AdvStringGrid1.ClearAll;
//  AdvStringGrid1.ColCount  := 9;
//  AdvStringGrid1.RowCount  := 2;
//  AdvStringGrid1.FixedRows := 1;
//  AdvStringGrid1.ColumnHeaders.:='';
//  AdvStringGrid1.Cells[1,r]:='Obra';
//  AdvStringGrid1.Cells[2,r]:='Tipo';
//  AdvStringGrid1.Cells[3,r]:='Clase';
//  AdvStringGrid1.Cells[4,r]:='Fecha';
//  AdvStringGrid1.Cells[5,r]:='Detalle';
//  AdvStringGrid1.Cells[6,r]:='Debe';
//  AdvStringGrid1.Cells[7,r]:='Haber';
//  AdvStringGrid1.Cells[8,r]:='Saldo';

//  r:=1;

//  AdvStringGrid1.BeginUpdate;
//  AdvStringGrid1.RowCount:=CDSMovCC.RecordCount;
      CDSMovCC.First;
      CDSMovCC.DisableControls;
      WHILE NOT (CDSMovCC.Eof) DO
        BEGIN
          Debe  := RoundTo(CDSMovCCDEBE.AsFloat,-2)  + Debe;
          Haber := RoundTo(CDSMovCCHABER.AsFloat,-2) + Haber;
          CDSMovCC.Edit;
          CDSMovCCSaldoCC.Value := Haber - Debe;
          CDSMovCC.Next;

//          AdvStringGrid1.Cells[0,r]:=CDSMovCCMUESTRAOBRA.Value;
//          AdvStringGrid1.Cells[1,r]:=CDSMovCCTIPOCPBTE.Value;
//          AdvStringGrid1.Cells[2,r]:=CDSMovCCCLASECPBTE.Value;
//          AdvStringGrid1.Cells[3,r]:=DateToStr(CDSMovCCFECHACOMPRA.AsDateTime);
//          AdvStringGrid1.Cells[4,r]:=CDSMovCCDETALLE.Value;
//          AdvStringGrid1.Cells[5,r]:=FormatFloat(',0.00;,0.00;-',CDSMovCCDEBE.Value);
//          AdvStringGrid1.Cells[6,r]:=FormatFloat(',0.00;,0.00;-',CDSMovCCHABER.Value);
//          AdvStringGrid1.Cells[7,r]:=FormatFloat(',0.00;,0.00;-',CDSMovCCSALDO.Value);
//          inc(r);
         END;
      CDSMovCC.EnableControls;
    end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');

//  AdvStringGrid1.EndUpdate;

//  AdvStringGrid1.InsertCols(0,1);
//  advstringgrid1.colwidths[0] := 20;

//  AdvStringGrid1.GroupColumn:=1;

  dbgMovimientos.Width := dbgMovimientos.Width + 1;
  dbgMovimientos.Width := dbgMovimientos.Width - 1;


 // if dbgMovObras.PageMode=True then
//    begin
//      dbgMovObras.PageMode:=False;
//      dbgMovObras.UnGroup;
//      dbgMovObras.GroupColumn:=1;
//      dbgMovObras.ContractAll;
//      dbgMovObras.ColumnSum(6);
//      dbgMovObras.ColumnSum(7);
//      dbgMovObras.ColumnSum(8);
//    end;

end;

procedure TFormCtaCteCompra.FormActivate(Sender: TObject);
begin
//  if (Trim(ceProveedor.Text)<>'') and (Trim(edNombreProveedor.Text)<>'') then
//    TraerCtaCte.Execute;
end;

PROCEDURE TFormCtaCteCompra.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEgIN
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_CtaCteCompra.Ini');
  ArchivoIni.WriteBool('Modo', 'OPago', chVistaOP.Checked);
  ArchivoIni.WriteBool('Modo', 'Factura', chVistaFc.Checked);
  ArchivoIni.Free;

  CDSMovCC.Close;
  CDSEmpresa.Close;
  Action := TCloseAction.caFree;

END;

PROCEDURE TFormCtaCteCompra.ceProveedorKeyPress(Sender: TObject;
  VAR Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) +
        ceProveedor.Text;
      ceProveedor.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        begin
          edNombreProveedor.Text := CDSProveedorNOMBRE.AsString;
       //   CorreoDestino          := CDSProveedorCORREO.Value;
        end;
      TraerCtaCte.Execute;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END
  else
    if key=#10 Then
      begin
        Key:=#0;
        BuscarProveedor.Execute;
      end;
END;

procedure TFormCtaCteCompra.CerrarClick(Sender: TObject);
var Cadena:String;
i:Integer;
begin
  cadena:='';
  if DMMain_FD.UsuarioActivo='' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_FiltroCpbteCompra.ini')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_FiltroCpbteCompra.ini');
  ArchivoIni.WriteInteger('Opciones', 'Opciones', dbcGrupo.KeyValue);
  ArchivoIni.Free;
 // pnCpbte.Visible:=False;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteCompra.chbUsaFiltroClick(Sender: TObject);
begin
 if chbUsaFiltro.Checked Then
    begin
      dbcGrupo.Enabled:=True;
      dbcGrupo.Color:=clWindow;
    end
  else
    begin
      dbcGrupo.KeyValue:=-1;
      dbcGrupo.Enabled:=False;
      dbcGrupo.Color:=clBtnFace;

    end;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteCompra.dbgMovObras_oldGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
//  if dbgMovObras.IsNode(arow) then
//    begin
//      ABrush.Color := clBlack;
//      AFont.Color  := clwhite;
//      AFont.Style  := [fsbold];
//    end;
end;

procedure TFormCtaCteCompra.dbgMovObras_oldGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
//  case ACol of
//    6..8:FloatFormat:='%.2n'
//  end;
end;

PROCEDURE TFormCtaCteCompra.FormCreate(Sender: TObject);
VAR ArchivoIni,GeneralIni:TIniFile;
ClaveAux,Cadena:String;
d,m,y:word;
I:Integer;
BEGIN
  Color    := clInfoBk;
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcCtaCte.ActivePageIndex:=0;
  CDSMovCC.Open;
  CDSEmpresa.Open;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='APLICACIONES';
  DMMain_FD.QOpciones.Open;
  Mascara:=DMMain_FD.QOpciones.fields[0].AsString;
  TFMTBCDField(CDSMovCCDEBE).EditFormat             :=Mascara+';-'+Mascara+';'+'-';
  TFMTBCDField(CDSMovCCHABER).EditFormat            :=Mascara+';-'+Mascara+';'+'-';
  TFMTBCDField(CDSMovCCSaldoCC).EditFormat          :=Mascara+';-'+Mascara+';'+'-';
  TFMTBCDField(CDSMovCCSaldo).EditFormat            :=Mascara+';-'+Mascara+';'+'-';

  TFMTBCDField(CDSMovCCDEBE).DisplayFormat          :=Mascara+';-'+Mascara+';'+'-';
  TFMTBCDField(CDSMovCCHABER).DisplayFormat         :=Mascara+';-'+Mascara+';'+'-';
  TFMTBCDField(CDSMovCCSaldoCC).DisplayFormat       :=Mascara+';-'+Mascara+';'+'-';
  TFMTBCDField(CDSMovCCSaldo).DisplayFormat         :=Mascara+';-'+Mascara+';'+'-';


  DMMain_FD.QOpciones.Close;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+''+DMMain_FD.NombreIni);
  GeneralIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.Ini');

  //Impresoras
  PrNomListados   :=GeneralIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto:=GeneralIni.ReadString('Impresoras', 'ListadoDefecto','N');
  // Rango de Fechas
  RangoFechas  :=ArchivoIni.ReadInteger('RangoFechas', 'CtaCteComp', 30);

 // Opciones de Correo ***********
  DirCorreo      := ArchivoIni.ReadString('Correo', 'DirCorreo', '');
  NombreCuenta   := ArchivoIni.ReadString('Correo', 'NombreCuenat', '');
  AsuntoCorreo   := ArchivoIni.ReadString('Correo', 'AsuntoCorreo', '');
  NombreServidor := ArchivoIni.ReadString('Correo', 'NombreServido', '');
  Clave          := ArchivoIni.ReadString('Correo', 'Clave', '');
  Autotenticacion:= ArchivoIni.ReadString('Correo', 'Autenticacion', 'S');
  Remitente      := ArchivoIni.ReadString('Correo', 'Remitente', '');
  Puerto         := ArchivoIni.ReadInteger('Correo', 'puerto', 25);

  // Desencripto la clave
//  claveAux:='';
//  if clave<>'' Then
//  for I :=2 to length(Clave) do
 //   begin
 //     ClaveAux:=ClaveAux+Chr(255-Ord(clave[i]));
 //   end;
 // Clave:=ClaveAux;

  ArchivoIni.Free;
  GeneralIni.Free;
  // Tomo la Impresora por defecto.
  prNomDefault:=Printer.Printers.Strings[Printer.PrinterIndex];
  // si en algun de los casos uso la impresora por defecto
  // igualo el nro de impresora a la imp. que le corresponde
  if (PrListadoDefecto='S') or (PrListadoDefecto='s') Then
    PrNomListados:=PrNomDefault;

  PrListados:=Printer.Printers.IndexOf(PrNomListados);
  PrDefault :=Printer.Printers.IndexOf(PrNomDefault);

  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

  // IncMonth: Incrementa la canitdad de meses lo multiplico x -1 para que decremnte
  QFiltroC.Open;
  QFiltroD.Open;
  if DMMain_FD.UsuarioActivo='' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_FiltroCpbteCompra.ini')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_FiltroCpbteCompra.ini');
  Cadena:= ArchivoIni.ReadString('Opciones', 'Opciones','');
  ArchivoIni.Free;

  CDSObra.Close;
  CDSObra.Params.ParamByName('estado').AsString:='*';
  CDSObra.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_CtaCteCompra.Ini');
  chVistaOP.Checked := ArchivoIni.ReadBool('Modo', 'OPago', False);
  chVistaFc.Checked := ArchivoIni.ReadBool('Modo', 'Factura', False);
  ArchivoIni.Free;


END;

PROCEDURE TFormCtaCteCompra.ImprimirExecute(Sender: TObject);
BEGIN

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

  frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\CtaCteCompra.fr3');
  frCtaCte.Variables['SaldoAnterior']:=''''+lbSaldoInicial.Caption+'''';
  // frCtaCte.PrepareReport;
  frCtaCte.ShowReport;
  ceProveedor.SetFocus;
  ceProveedor.SelectAll;
END;

procedure TFormCtaCteCompra.dbcObraChange(Sender: TObject);
begin
  QFiltroD.Close;

  if dbcGrupo.KeyValue<>-1 then
    QFiltroD.ParamByName('id').Value:=QFiltroCID.Value
  else
    QFiltroD.ParamByName('id').Value:=-1;
  QFiltroD.Open;
  TraerCtaCte.Execute;
end;

PROCEDURE TFormCtaCteCompra.pnPrincipalDblClick(Sender: TObject);
BEGIN
  frCtaCte.DesignReport;
END;

PROCEDURE TFormCtaCteCompra.FormShow(Sender: TObject);
BEGIN
  ceProveedor.setFocus;
END;

procedure TFormCtaCteCompra.hastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  hasta.Date:=ADate;
  TraerCtaCte.Execute;
end;

PROCEDURE TFormCtaCteCompra.btExcelClick(Sender: TObject);
BEGIN
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSMovCC.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName  :=Trim(edNombreProveedor.Text);
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if Not(AnsiEndsText('.xls',SaveDialog.FileName)) then
               SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);
            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
  ceProveedor.SetFocus;
  ceProveedor.SelectAll;
END;

procedure TFormCtaCteCompra.VerComprobanteExecute(Sender: TObject);
begin
  IF (CDSMovCCTIPOCPBTE.AsString='FC') or
     (CDSMovCCTIPOCPBTE.AsString='NC') or
     (CDSMovCCTIPOCPBTE.AsString='ND') Then
    begin
      if chVistaFc.Checked=True then
        begin
          IF NOT (Assigned(FormMuestraCpbteCtaCteCompra)) THEN
            FormMuestraCpbteCtaCteCompra    := TFormMuestraCpbteCtaCteCompra.Create(self);
          FormMuestraCpbteCtaCteCompra.id   := CDSMovCCID_CPBTE.AsInteger;
          FormMuestraCpbteCtaCteCompra.Tipo := CDSMovCCTIPOCPBTE.AsString;
          FormMuestraCpbteCtaCteCompra.ShowModal;
//          FormMuestraCpbteCtaCteCompra.BringToFront;
        end
      else
        begin
          IF NOT (Assigned(FormCompra_2)) THEN
            FormCompra_2        := TFormCompra_2.Create(Self);
          FormCompra_2.DatoNew  := CDSMovCCID_CPBTE.AsString;
          FormCompra_2.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
          //FormCompra_2.BringToFront;
        end;
    end
  else
    IF (CDSMovCCTIPOCPBTE.AsString='OP') Then
      begin
        if chVistaOP.Checked=False then
          begin
            IF NOT (Assigned(FormOPago_2)) THEN
              FormOPago_2:= TFormOPago_2.Create(self);
            FormOPago_2.DatoNew    := CDSMovCCID_CPBTE.AsString;
            FormOPago_2.TipoCpbte  := CDSMovCCTIPOCPBTE.AsString;
            FormOPago_2.Recuperar.Execute;
            FormOPago_2.Show;
            FormOPago_2.BringToFront;
          end
        else
          begin
            IF NOT (Assigned(FormMuestraOPago)) THEN
              FormMuestraOPago:= TFormMuestraOPago.Create(Application);
            FormMuestraOPago.Id   := CDSMovCCID_CPBTE.AsInteger;
            FormMuestraOPago.Tipo := CDSMovCCTIPOCPBTE.AsString;
            FormMuestraOPago.ShowModal;
//            FormMuestraOPago.BringToFront;
          end;
      end
    else
      IF (CDSMovCCTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjusteCCProveedores)) THEN
            FormAjusteCCProveedores:= TFormAjusteCCProveedores.Create(Application);
          FormAjusteCCProveedores.DatoNew  := CDSMovCCID_CPBTE.AsString;
          FormAjusteCCProveedores.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
          FormAjusteCCProveedores.Recuperar.Execute;
          FormAjusteCCProveedores.Show;
          FormAjusteCCProveedores.BringToFront;
        END
      else
        IF (CDSMovCCTIPOCPBTE.AsString='XP') Then
          begin
            IF NOT (Assigned(FormAnulacionOPago)) THEN
              FormAnulacionOPago:= TFormAnulacionOPago.Create(Application);
            FormAnulacionOPago.DatoNew  := CDSMovCCID_CPBTE.AsString;
            FormAnulacionOPago.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
            FormAnulacionOPago.Recuperar.Execute;
            FormAnulacionOPago.Show;
            FormAnulacionOPago.BringToFront;
         END;
end;

procedure TFormCtaCteCompra.FormDestroy(Sender: TObject);
begin
  FormCtaCteCompra:=nil;
end;

procedure TFormCtaCteCompra.FormResize(Sender: TObject);
begin
  if FormCtaCteCompra<>nil then
    if FormCtaCteCompra.Width<>839 then
      FormCtaCteCompra.Width:=839;
end;

procedure TFormCtaCteCompra.btHistorialClick(Sender: TObject);
begin
  if Not(Assigned(FormDetalleOperacionesProvee)) Then
     FormDetalleOperacionesProvee:=TFormDetalleOperacionesProvee.Create(self);
  FormDetalleOperacionesProvee.codigo:= ceProveedor.text;
  FormDetalleOperacionesProvee.Grupo := dbcGrupo.KeyValue;
  FormDetalleOperacionesProvee.Show;
end;

procedure TFormCtaCteCompra.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCtaCteCompra.FiltrarDebitosExecute(Sender: TObject);
begin
  CDSMovCC.Filtered:=False;
  CDSMovCC.Filter:='(debe>0)';
  CDSMovCC.Filtered:=True;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteCompra.FiltraCreditosExecute(Sender: TObject);
begin
  CDSMovCC.Filtered:=False;
  CDSMovCC.Filter:='(Haber>0)';
  CDSMovCC.Filtered:=True;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteCompra.TodosMovimientosExecute(Sender: TObject);
begin
  CDSMovCC.Filtered:=False;
  CDSMovCC.Filter:='';
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteCompra.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,1)
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,-1);
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteCompra.EnviarCorreoExecute(Sender: TObject);
begin
  if CDSMovCC.IsEmpty Then
    Raise Exception.Create(' No hay datos para mandar...');
  if not sysutils.DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

  frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\CtaCteCompra.fr3');
  frCtaCte.Variables['Mascara']:=''''+Mascara+'''';

  frCtaCte.PrepareReport;

  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.FileName      := ExtractFilePath(ParamStr(0))+'Archivos Temporales\Resumen_'+edNombreProveedor.Text+'.pdf';
  frxPDFExport1.EmbeddedFonts := True;

  frCtaCte.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;


  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);

  CopiaCorreo:='';
  

  FormCorreo.CorreoDestino       :=DMBuscadores.GetCorreoProveedor(ceProveedor.Text);
  FormCorreo.CorreoOrigen        :=DirCorreo;
  FormCorreo.Remitente           :=Remitente;
  FormCorreo.CCopia              :=CopiaCorreo;// '';
  FormCorreo.edDireccion.Text    :=FormCorreo.CorreoDestino;
  FormCorreo.Destinatario        :=edNombreProveedor.Text;
  FormCorreo.Puerto              :=Puerto;
  FormCorreo.NombreServidorCorreo:=NombreServidor;
  FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
  FormCorreo.Clave               :=Clave;
  FormCorreo.Autenticacion       :=Autotenticacion;
  FormCorreo.Asunto              :='Resumen Cta.Cte - al '+ FormatDateTime('dd-mm-yy',hasta.Date);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Resumen_'+edNombreProveedor.Text+'.pdf');
  FormCorreo.Show;

 
end;

procedure TFormCtaCteCompra.dbcGrupoChange(Sender: TObject);
begin
  QFiltroD.Close;
  QFiltroD.ParamByName('id').Value:=QFiltroCID.Value;
  QFiltroD.Open;
end;

procedure TFormCtaCteCompra.dbgMovimientosCellClick(Column: TColumn);
var
Lista:TStringList;
Aux:Real;
AuxStr:String;
begin
  dbgMovimientos.ShowHint:=False;
  dbgMovimientos.Hint    := '';
  //if Button = mbLeft Then
    begin
      Lista:= TStringList.create;
      Lista.Clear;
      if ((CDSMovCCSaldo.AsFloat<=0) or (CDSMovCCSaldo.AsFloat<CDSMovCCHABER.AsFloat)) and (CDSMovCCHABER.AsFloat>0) Then
        begin
     //     TGridHack(wwDBGCC).MouseMove([],x,y);
          CDSAplicaciones.Close;
          CDSAplicaciones.Params.ParamByName('id').Value:=CDSMovCCID_MOVCCCOMP.Value;
          CDSAplicaciones.Open;
          CDSAplicaciones.First;
          aux:=0;
          while Not(CDSAplicaciones.Eof) Do
            begin
              AuxStr:=FormatFloat(Mascara,CDSAplicacionesIMPORTE.AsFloat);
              AuxStr:=Copy('                ',1,16-length(AuxStr))+AuxStr;
              aux:=Aux+CDSAplicacionesIMPORTE.AsFloat;
              Lista.Add(' - '+CDSAplicacionesFECHA.AsString+' ......... '+
                        CDSAplicacionesNUMEROCPBTE.AsString+' ...... '+
                        AuxStr);
              CDSAplicaciones.Next;
            end;
          if aux>0 Then
            begin
              Lista.Add('---- >>> ');
              Lista.Add('---------------------- Total >>>> '+FormatFloat(Mascara,Aux));
            end;
          CDSAplicaciones.Close;
          dbgMovimientos.Hint    := Lista.Text;

          if Lista.Text<>'' Then
            dbgMovimientos.ShowHint:=True
          else
            dbgMovimientos.ShowHint:=False;
        end;
      FreeAndNil(Lista)
   end;
end;


procedure TFormCtaCteCompra.dbgMovimientosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (CDSMovCCSaldo.AsFloat>0) and (CDSMovCCHABER.AsFloat>0) then
    dbgMovimientos.Canvas.Font.Style := [fsbold]
  else
    dbgMovimientos.Canvas.Font.Style := [];

  dbgMovimientos.Canvas.Brush.Color:= Color;

  if gdSelected	in state Then
    begin
      dbgMovimientos.Canvas.brush.Color :=clBlue;
      dbgMovimientos.Canvas.Font.Color  :=clWhite;
    end;

  dbgMovimientos.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (color=clInfoBk) and (Column.Index=7) Then
    color:=clWindow
  else
    if (color=clWindow) and (Column.Index=7) Then
    color:=clInfoBk;
end;

procedure TFormCtaCteCompra.desdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  desde.Date:=ADate;
  TraerCtaCte.Execute;
end;

END.
