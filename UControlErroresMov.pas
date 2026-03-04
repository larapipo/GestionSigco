unit UControlErroresMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Grids, DBGrids, ImgList, DB,
  ActnList, ComCtrls, JvExControls, JvGradient,
  Buttons, StdCtrls, ToolWin, ExtCtrls, JvComponentBase, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvExDBGrids, JvDBGrid, Datasnap.Provider, Datasnap.DBClient, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, cxDBData, cxGridTableView, cxClasses, cxGridCustomTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormControlErroresMovimientos = class(TFormABMBase)
    DSCheMovcaja: TDataSource;
    QBorraCajaMov: TFDQuery;
    QCheMovCaj: TFDQuery;
    CDSCheMovCaja: TClientDataSet;
    DSPCheMovCaja: TDataSetProvider;
    CDSCheMovCajaID_MOV_CAJA: TIntegerField;
    CDSCheMovCajaFECHA_OPERACION: TSQLTimeStampField;
    CDSCheMovCajaID_COMPROBANTE: TIntegerField;
    CDSCheMovCajaTIPO_COMPROB: TStringField;
    CDSCheMovCajaNRO_COMPROBANTE: TStringField;
    CDSCheMovCajaDEBE: TFloatField;
    CDSCheMovCajaHABER: TFloatField;
    CDSCheMovCajaID_CHEQUE_TER: TIntegerField;
    CDSCheMovCajaFIRMANTE: TStringField;
    CDSCheMovCajaIMPORTE: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    lb1: TLabel;
    lb2: TLabel;
    dbgCajaMovimientos: TDBGrid;
    btn1: TButton;
    ed1: TEdit;
    btn2: TButton;
    TabSheet2: TTabSheet;
    QCheIngresados: TFDQuery;
    CDSCheIngresados: TClientDataSet;
    DSPCheIngresados: TDataSetProvider;
    DSCheIngresados: TDataSource;
    CDSCheIngresadosID_MOV_CAJA: TIntegerField;
    CDSCheIngresadosID_CAJA: TIntegerField;
    CDSCheIngresadosID_COMPROBANTE: TIntegerField;
    CDSCheIngresadosTIPO_COMPROB: TStringField;
    CDSCheIngresadosCLASE_COMPROB: TStringField;
    CDSCheIngresadosNRO_COMPROBANTE: TStringField;
    CDSCheIngresadosID_FPAGO: TIntegerField;
    CDSCheIngresadosDEBE: TFloatField;
    CDSCheIngresadosHABER: TFloatField;
    CDSCheIngresadosID_CHEQUE_TER: TIntegerField;
    CDSCheIngresadosFECHA_EMISION: TSQLTimeStampField;
    CDSCheIngresadosFECHA_COBRO: TSQLTimeStampField;
    CDSCheIngresadosORIGEN: TStringField;
    CDSCheIngresadosNUMERO: TIntegerField;
    CDSCheIngresadosIMPORTE: TFloatField;
    CDSCheIngresadosID_MOV_CAJA_PADRE: TIntegerField;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet3: TTabSheet;
    QMov_to_Che: TFDQuery;
    DSPMov_To_Che: TDataSetProvider;
    CDSMov_To_Che: TClientDataSet;
    DSMov_To_Che: TDataSource;
    CDSMov_To_CheID_MOV: TIntegerField;
    CDSMov_To_CheTIPOCPBTE: TStringField;
    CDSMov_To_CheCLASECPBTE: TStringField;
    CDSMov_To_CheID_CPBTE: TIntegerField;
    CDSMov_To_CheDEBE: TFloatField;
    CDSMov_To_CheHABER: TFloatField;
    CDSMov_To_CheID_CHE: TIntegerField;
    CDSMov_To_CheORIGEN: TStringField;
    CDSMov_To_CheNUMERO: TIntegerField;
    CDSMov_To_CheIMPORTE: TFloatField;
    dbgMov_to_Che: TJvDBGrid;
    BitBtn2: TBitBtn;
    TabSheet4: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    QChe_To_Mov: TFDQuery;
    DSPChe_To_Mov: TDataSetProvider;
    CDSChe_To_Mov: TClientDataSet;
    DSChe_To_Mov: TDataSource;
    CDSChe_To_MovID_CHEQUE_TER: TIntegerField;
    CDSChe_To_MovNUMERO: TIntegerField;
    CDSChe_To_MovFECHA_ENTRADA: TSQLTimeStampField;
    CDSChe_To_MovFECHA_EMISION: TSQLTimeStampField;
    CDSChe_To_MovORIGEN: TStringField;
    CDSChe_To_MovFIRMANTE: TStringField;
    CDSChe_To_MovIMPORTE: TFloatField;
    CDSChe_To_MovIDMOVCAJA: TIntegerField;
    BitBtn3: TBitBtn;
    QChe_To_MovID_CHEQUE_TER: TIntegerField;
    QChe_To_MovNUMERO: TIntegerField;
    QChe_To_MovFECHA_ENTRADA: TSQLTimeStampField;
    QChe_To_MovFECHA_EMISION: TSQLTimeStampField;
    QChe_To_MovORIGEN: TStringField;
    QChe_To_MovFIRMANTE: TStringField;
    QChe_To_MovIMPORTE: TFloatField;
    QChe_To_MovIDMOVCAJA: TIntegerField;
    btGuardarCambiosMov: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CHEQUE_TER: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGrid1DBTableView1ORIGEN: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MOV_CAJA_PADRE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    pnCabecera: TPanel;
    QCgeMovCajaOut: TFDQuery;
    DSPCheMovCajaOut: TDataSetProvider;
    CDSCheMovCajaOut: TClientDataSet;
    IntegerField1: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FMTBCDField1: TFloatField;
    FMTBCDField2: TFloatField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    FMTBCDField3: TFloatField;
    DSCheMovCajaOut: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgCajaMovimientosCellClick(Column: TColumn);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgMovDblClick(Sender: TObject);
    procedure dbgMov_to_CheTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgCajaMovimientosDblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btGuardarCambiosMovClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlErroresMovimientos: TFormControlErroresMovimientos;

implementation

uses UDMain_FD, URecibo_2, UFacturaCtdo_2, UIngresoCaja;
{$R *.dfm}

procedure TFormControlErroresMovimientos.BitBtn2Click(Sender: TObject);
begin
  inherited;
  CDSMov_To_Che.Close;
  CDSMov_To_Che.IndexFieldNames:='';
  CDSMov_To_Che.IndexDefs.Clear;
  CDSMov_To_Che.Open;
end;

procedure TFormControlErroresMovimientos.BitBtn3Click(Sender: TObject);
begin
  inherited;
  CDSChe_To_Mov.Close;
  CDSChe_To_Mov.Open;

end;

procedure TFormControlErroresMovimientos.btGuardarCambiosMovClick(Sender: TObject);
begin
  inherited;
  if CDSChe_To_Mov.ChangeCount>0 then
    if MessageDlg('Seguro de Borrar los registros???',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
      CDSChe_To_Mov.ApplyUpdates(0);
end;

procedure TFormControlErroresMovimientos.btn1Click(Sender: TObject);
begin
  inherited;
  CDSCheMovCaja.Close;
  CDSCheMovCaja.Open;
  CDSCheMovCajaOut.Close;
  CDSCheMovCajaOut.Open;

end;

procedure TFormControlErroresMovimientos.btn2Click(Sender: TObject);
begin
  inherited;
  if ed1.Text<>'' then
    begin
      QBorraCajaMov.Close;
      QBorraCajaMov.ParamByName('id').Value :=StrToInt(ed1.Text);
      QBorraCajaMov.ExecSQL;
      QBorraCajaMov.Close;
    end;
end;

procedure TFormControlErroresMovimientos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCheIngresados.Close;
  CDSCheIngresados.IndexFieldNames:='';
  CDSCheIngresados.IndexDefs.Clear;
  CDSCheIngresados.Open;
end;

procedure TFormControlErroresMovimientos.dbgCajaMovimientosCellClick(Column: TColumn);
begin
  inherited;
  ed1.Text:=CDSCheMovCajaID_MOV_CAJA.AsString;
end;

procedure TFormControlErroresMovimientos.dbgCajaMovimientosDblClick(
  Sender: TObject);
begin
  inherited;
 if (CDSCheMovCajaTIPO_COMPROB.Value='RC') then
    begin
      if Not(Assigned(FormRecibo_2)) then
        FormRecibo_2:=TFormRecibo_2.Create(self);
      FormRecibo_2.TipoCpbte:=CDSCheMovCajaTIPO_COMPROB.AsString;
      FormRecibo_2.DatoNew  :=CDSCheMovCajaID_COMPROBANTE.AsString;
      FormRecibo_2.Recuperar.Execute;
    end
  else
    if (CDSCheMovCajaTIPO_COMPROB.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew  :=CDSCheMovCajaID_COMPROBANTE.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSCheMovCajaTIPO_COMPROB.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
      end
    else
      if (CDSCheMovCajaTIPO_COMPROB.Value='IC') then
        begin
          if Not(Assigned(FormIngresoCaja)) then
            FormIngresoCaja:=TFormIngresoCaja.Create(self);
          FormIngresoCaja.DatoNew  :=CDSCheMovCajaID_COMPROBANTE.AsString;
          FormIngresoCaja.TipoCpbte:=CDSCheMovCajaTIPO_COMPROB.AsString;
          FormIngresoCaja.Recuperar.Execute;
        end;

end;

procedure TFormControlErroresMovimientos.dbgMov_to_CheTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgMov_to_Che.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlErroresMovimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlErroresMovimientos.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:=0;
  AutoSize:=True;
end;

procedure TFormControlErroresMovimientos.FormDestroy(Sender: TObject);
begin
  inherited;
 FormControlErroresMovimientos:=nil;
end;

procedure TFormControlErroresMovimientos.dbgMovDblClick(Sender: TObject);
begin
  inherited;
  if (CDSCheIngresadosTIPO_COMPROB.Value='RC') then
    begin
      if Not(Assigned(FormRecibo_2)) then
        FormRecibo_2:=TFormRecibo_2.Create(self);
      FormRecibo_2.TipoCpbte:=CDSCheIngresadosTIPO_COMPROB.AsString;
      FormRecibo_2.DatoNew  :=CDSCheIngresadosID_COMPROBANTE.AsString;
      FormRecibo_2.Recuperar.Execute;
    end
  else
    if (CDSCheIngresadosTIPO_COMPROB.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew  :=CDSCheIngresadosID_COMPROBANTE.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSCheIngresadosTIPO_COMPROB.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
      end
    else
      if (CDSCheIngresadosTIPO_COMPROB.Value='IC') then
        begin
          if Not(Assigned(FormIngresoCaja)) then
            FormIngresoCaja:=TFormIngresoCaja.Create(self);
          FormIngresoCaja.DatoNew  :=CDSCheIngresadosID_COMPROBANTE.AsString;
          FormIngresoCaja.TipoCpbte:=CDSCheIngresadosTIPO_COMPROB.AsString;
          FormIngresoCaja.Recuperar.Execute;
        end;

end;

end.
