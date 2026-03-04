unit UAdminTransporte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvDBLookup, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, cxDBData, cxCalc, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,DateUtils,
  frxClass, frxDBSet, IBGenerator, JvColorBox, JvColorButton, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, frCoreClasses;

type
  TFormAdminTransporte = class(TFormABMBase)
    CDSAnexos: TClientDataSet;
    DSPAnexos: TDataSetProvider;
    CDSTrans: TClientDataSet;
    DSPTransp: TDataSetProvider;
    CDSTransID: TIntegerField;
    CDSTransTIPO_UNIDAD: TIntegerField;
    CDSTransDESCRIPCION: TStringField;
    CDSTransDOMINIO: TStringField;
    CDSTransMARCA: TStringField;
    CDSTransMODELO: TStringField;
    CDSTransID_CTROCOSTO: TIntegerField;
    CDSTransMUESTRACTROCOSTO: TStringField;
    DSPBuscaCtro: TDataSetProvider;
    CDSBuscaCtro: TClientDataSet;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    DSCtroCosto: TDataSource;
    CDSAnexosID: TIntegerField;
    CDSAnexosID_TRANSPORTE: TIntegerField;
    CDSAnexosARCHIVO: TStringField;
    OpenDialog1: TOpenDialog;
    DSAnexos: TDataSource;
    DSPBuscadorTrans: TDataSetProvider;
    CDSBuscadorTrans: TClientDataSet;
    CDSBuscadorTransID: TIntegerField;
    CDSBuscadorTransTIPO_UNIDAD: TIntegerField;
    CDSBuscadorTransDESCRIPCION: TStringField;
    CDSBuscadorTransDOMINIO: TStringField;
    CDSBuscadorTransMARCA: TStringField;
    CDSBuscadorTransMODELO: TStringField;
    DSPGastos: TDataSetProvider;
    CDSGastos: TClientDataSet;
    CDSGastosTIPO: TStringField;
    CDSGastosCTROCOSTO: TIntegerField;
    CDSGastosDETALLE: TStringField;
    CDSGastosTIPOCPBTE: TStringField;
    CDSGastosCLASECPBTE: TStringField;
    CDSGastosFECHA: TSQLTimeStampField;
    CDSGastosNROCPBTE: TStringField;
    CDSGastosCODIGO: TStringField;
    CDSGastosNOMBRE: TStringField;
    CDSGastosRUBRO: TStringField;
    CDSGastosSUBRUBRO: TStringField;
    CDSGastosRUBRO_DET: TStringField;
    CDSGastosSUBRUB_DET: TStringField;
    CDSGastosIDCPBTE: TIntegerField;
    CDSGastosTIPODETALLE: TStringField;
    DSGastos: TDataSource;
    pcMovimientos: TPageControl;
    tsDocumentos: TTabSheet;
    Label9: TLabel;
    dbgAnexos: TJvDBGrid;
    dbnContratos: TDBNavigator;
    tsGastos: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1TIPODETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1RUBRO_DET: TcxGridDBColumn;
    cxGrid1DBTableView1SUBRUB_DET: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDOCALCULADO: TcxGridDBColumn;
    cxGrid1DBTableView1PORCENTAJE: TcxGridDBColumn;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1TableView1Column1: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    pnCabecera: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    dbeDominio: TDBEdit;
    dbeMarca: TDBEdit;
    dbeModelo: TDBEdit;
    dbeKm: TJvDBCalcEdit;
    dbcCentroCosto: TJvDBLookupCombo;
    Label8: TLabel;
    TraerGastos: TAction;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    chbPorDia: TCheckBox;
    frListado: TfrxReport;
    frDBMov: TfrxDBDataset;
    tsVencimientos: TTabSheet;
    dbgVencimientos: TJvDBGrid;
    DSPVencimientos: TDataSetProvider;
    CDSVencimientos: TClientDataSet;
    CDSVencimientosID: TIntegerField;
    CDSVencimientosID_TRANSPORTE: TIntegerField;
    CDSVencimientosESTADO: TStringField;
    DSVencimientos: TDataSource;
    CDSVencimientosMOTIVO: TStringField;
    ibgVenc: TIBGenerator;
    CDSTransCOLOR: TIntegerField;
    cbColor: TJvColorButton;
    Label10: TLabel;
    CDSTransCAPACIDAD: TFloatField;
    Label11: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    QTransp: TFDQuery;
    QTranspID: TIntegerField;
    QTranspTIPO_UNIDAD: TIntegerField;
    QTranspDESCRIPCION: TStringField;
    QTranspDOMINIO: TStringField;
    QTranspMARCA: TStringField;
    QTranspMODELO: TStringField;
    QTranspKILOMETRAJE: TFloatField;
    QTranspID_CTROCOSTO: TIntegerField;
    QTranspCOLOR: TIntegerField;
    QTranspCAPACIDAD: TFloatField;
    QTranspMUESTRACTROCOSTO: TStringField;
    CDSTransKILOMETRAJE: TFloatField;
    QVencimientos: TFDQuery;
    QVencimientosID: TIntegerField;
    QVencimientosID_TRANSPORTE: TIntegerField;
    QVencimientosMOTIVO: TStringField;
    QVencimientosESTADO: TStringField;
    QAnexos: TFDQuery;
    QAnexosID: TIntegerField;
    QAnexosID_TRANSPORTE: TIntegerField;
    QAnexosARCHIVO: TStringField;
    QBuscadorTrans: TFDQuery;
    QBuscaCtro: TFDQuery;
    QGastos: TFDQuery;
    CDSGastosIMPORTE_CPBTE: TFloatField;
    CDSGastosTOTAL: TFloatField;
    CDSGastosPORCENTAJE: TFloatField;
    CDSGastosNETO_CPBTE: TFloatField;
    CDSGastosDEBE: TFloatField;
    CDSGastosHABER: TFloatField;
    CDSGastosSALDOCALCULADO: TFloatField;
    QVencimientosFECHAVTO: TSQLTimeStampField;
    CDSVencimientosFECHAVTO: TSQLTimeStampField;
    QUltimoCodigo2MAX: TIntegerField;
    procedure CDSTransNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CDSAnexosNewRecord(DataSet: TDataSet);
    procedure CDSAnexosBeforeInsert(DataSet: TDataSet);
    procedure dbgAnexosEditButtonClick(Sender: TObject);
    procedure dbgAnexosDblClick(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TraerGastosExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure btImprimirClick(Sender: TObject);
    procedure CDSVencimientosNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    function dbgVencimientosCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgVencimientosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgVencimientosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
    procedure CDSTransReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSVencimientosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSAnexosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
    NextID:Integer;
  end;

var
  FormAdminTransporte: TFormAdminTransporte;

implementation

uses UCompra_2, UEgresoCaja,UDMain_FD;

{$R *.dfm}

procedure TFormAdminTransporte.btImprimirClick(Sender: TObject);
begin
  inherited;
  if Not(CDSGastos.IsEmpty) Then
    begin
      frListado.PrintOptions.Printer:=PrNomListados;
      frListado.SelectPrinter;
      frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\LstGastoCtroCosto.fr3');
      frListado.Variables['desde']   :=''''+Desde.Text+'''';
      frListado.Variables['hasta']   :=''''+Hasta.Text+'''';
      frListado.Variables['CtaCtro']:=''''+dbcCentroCosto.Text+'''';
      frListado.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormAdminTransporte.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorTrans.Close;
  CDSBuscadorTrans.open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
      begin
        DatoNew:= IntToStr(comBuscadorBase.Id);
        Recuperar.Execute;
      end;
  CDSBuscadorTrans.Close;
end;

procedure TFormAdminTransporte.CDSAnexosBeforeInsert(DataSet: TDataSet);
VAR CDSClone:TClientDataSet;
begin
  inherited;
 if Not(CDSAnexos.IsEmpty) then
    begin
      CDSClone:=TClientDataSet.Create(Self);
      CDSClone.CloneCursor(CDSAnexos,true);
      CDSClone.IndexFieldNames:='ID';
      CDSClone.Last;
      NextID:=CDSClone.FieldByName('ID').Value+1;
      FreeAndNil(CDSClone);
    end
  else
   NextID:=1;
end;

procedure TFormAdminTransporte.CDSAnexosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAnexosID_TRANSPORTE.Value:= CDSTransID.Value;
  CDSAnexosID.Value           := NextID;
end;

procedure TFormAdminTransporte.CDSAnexosReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);

end;

procedure TFormAdminTransporte.CDSTransNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2MAX.AsString<>'' then
    CDSTransID.Value:=QUltimoCodigo2MAX.Value+1
  else
    CDSTransID.Value:=1;
  QUltimoCodigo2.Close;
  CDSTransTIPO_UNIDAD.Value   :=  1;
  CDSTransKILOMETRAJE.AsFloat :=  0;
  CDSTransID_CTROCOSTO.Value  := -1;
  CDSTransCAPACIDAD.AsFloat   :=  0;
end;

procedure TFormAdminTransporte.CDSTransReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TFormAdminTransporte.CDSVencimientosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSVencimientosID.Value           :=ibgVenc.IncrementFD(1);
  CDSVencimientosID_TRANSPORTE.Value:=CDSTransID.Value;
  CDSVencimientosESTADO.Value       :='N';
  CDSVencimientosFECHAVTO.AsDateTime:=Date;
end;

procedure TFormAdminTransporte.CDSVencimientosReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TFormAdminTransporte.ConfirmaExecute(Sender: TObject);
begin
  CDSTransCOLOR.Value := cbColor.Color;
  DatoNew             := CDSTransID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormAdminTransporte.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if CDSGastosTIPOCPBTE.Value='FC' then
    begin
      if Not(Assigned(FormCOmpra_2)) then
        FormCompra_2:=TFormCOmpra_2.Create(Self);
      FormCompra_2.DatoNew:=CDSGastosIDCPBTE.AsString;
      FormCompra_2.TipoCpbte:='FC';
      FormCompra_2.Recuperar.Execute;
      formCompra_2.Show;
       FormCompra_2.BringToFront;
    end
  else
    if CDSGastosTIPOCPBTE.Value='EC' then
      begin
        if Not(Assigned(FormEgresoCaja)) then
          FormEgresoCaja:=TFormEgresoCaja.Create(Self);
        FormEgresoCaja.DatoNew:=CDSGastosIDCPBTE.AsString;
        FormEgresoCaja.TipoCpbte:='EC';
        FormEgresoCaja.Recuperar.Execute;
        FormEgresoCaja.Show;
        FormEgresoCaja.BringToFront;
      end;

end;

procedure TFormAdminTransporte.dbgAnexosDblClick(Sender: TObject);
begin
  inherited;
  if CDSAnexosARCHIVO.AsString<>'' then
    begin
      DMMain_fd.EjecutaFic(CDSAnexosARCHIVO.AsString);
    end;
end;

procedure TFormAdminTransporte.dbgAnexosEditButtonClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    begin
      if CDSAnexos.State=dsBrowse then
        CDSAnexos.Edit;
      if OpenDialog1.Execute then
        if OpenDialog1.FileName<>'' then
          begin
            CDSAnexosARCHIVO.Value:=OpenDialog1.FileName;
            CDSAnexos.Post;
          end
        else
          CDSAnexos.Cancel;
    end;
end;

function TFormAdminTransporte.dbgVencimientosCheckIfBooleanField(
  Grid: TJvDBGrid; Field: TField; var StringForTrue,
  StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = CDSVencimientosESTADO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormAdminTransporte.dbgVencimientosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgVencimientos.SelectedIndex < 1) THEN
        dbgVencimientos.SelectedIndex := dbgVencimientos.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgVencimientos.DataSource.DataSet.Eof THEN
            dbgVencimientos.DataSource.DataSet.Append;
          dbgVencimientos.SelectedIndex := 0;
        END;
    END

end;

procedure TFormAdminTransporte.dbgVencimientosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgVencimientos.DataSource.DataSet as TClientDataSet do
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

procedure TFormAdminTransporte.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled       := True;
  dbgAnexos.ReadOnly        := DSBase.State = dsBrowse;
  dbgVencimientos.ReadOnly  := DSBase.State = dsBrowse;
  dbnContratos.Enabled      := Not(DSBase.State = dsBrowse);
  pnCabecera.Enabled        := Not(DSBase.State = dsBrowse);
end;

procedure TFormAdminTransporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSAnexos.Close;
  CDSTrans.Close;
  CDSVencimientos.Close;
  Action:=caFree;
end;

procedure TFormAdminTransporte.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  AddClientDataSet(CDSTrans,DSPTransp);
  AddClientDataSet(CDSAnexos,DSPAnexos);
  AddClientDataSet(CDSVencimientos,DSPVencimientos);

  CDSTrans.Open;
  CDSAnexos.Open;
  CDSVencimientos.Open;
  CDSBuscaCtro.Open;
  AutoSize:=False;
  pcMovimientos.ActivePageIndex:=0;
  Tabla := 'transp_propio';
  Campo := 'ID';
end;

procedure TFormAdminTransporte.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAdminTransporte:=nil;
end;

procedure TFormAdminTransporte.FormResize(Sender: TObject);
begin
  inherited;
  if Width<>940  then Width:=940;

end;

procedure TFormAdminTransporte.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
//  if m=1 Then
//    begin
//      m:=12;y:=y-1;
//    end
//  else
//    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  TraerGastos.Execute;
end;

procedure TFormAdminTransporte.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTrans.Close;
  CDSTrans.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  CDSTrans.Open;

  CDSAnexos.Close;
  CDSAnexos.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  CDSAnexos.Open;

  CDSVencimientos.Close;
  CDSVencimientos.IndexFieldNames :='';
  CDSVencimientos.IndexDefs.Clear;
  CDSVencimientos.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  CDSVencimientos.Open;

  cbColor.Color:=CDSTransCOLOR.Value;

  TraerGastos.Execute;
end;

procedure TFormAdminTransporte.TraerGastosExecute(Sender: TObject);
begin
  inherited;
  CDSGastos.Close;
  CDSGastos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSGastos.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSGastos.Params.ParamByName('ct').Value   :=dbcCentroCosto.KeyValue;
  CDSGastos.Params.ParamByName('Ingresos').Value:=1;
  CDSGastos.Params.ParamByName('Vtas').Value    :=1;
  CDSGastos.Params.ParamByName('Personal').Value:=1;
  CDSGastos.Open;
end;

procedure TFormAdminTransporte.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  TraerGastos.Execute;
  //  Desde.SetFocus;

end;

end.
