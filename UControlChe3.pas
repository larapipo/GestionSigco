unit UControlChe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, ImgList,
  ActnList, ComCtrls, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, JvComponentBase, JvFormPlacement,
  DBXCommon, System.Actions,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, JvAppStorage, JvAppIniStorage, Data.FMTBcd, Data.SqlExpr, JvLabel,
  JvDBControls, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvGroupBox, AdvOfficeButtons, Vcl.Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit, cxCheckBox, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList;

type
  TFormControlChe3 = class(TFormABMBase)
    CDSCheque3: TClientDataSet;
    DSPCheque3: TDataSetProvider;
    CDSCheque3ID_CHEQUE_TER: TIntegerField;
    CDSCheque3ID_CAJA: TIntegerField;
    CDSCheque3ID_MOV_CAJA: TIntegerField;
    CDSCheque3ID_FPAGO: TIntegerField;
    CDSCheque3ID_BANCO: TIntegerField;
    CDSCheque3NUMERO: TIntegerField;
    CDSCheque3ORIGEN: TStringField;
    CDSCheque3DESTINO: TStringField;
    CDSCheque3DISPONIBLE: TStringField;
    CDSCheque3FIRMANTE: TStringField;
    CDSCheque3ID_MOV_CAJA_EGRESOS: TIntegerField;
    CDSCheque3ID_CUENTA_CAJA: TIntegerField;
    CDSCheque3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    CDSCheque3MONEDA: TIntegerField;
    CDSCheque3CUIT: TStringField;
    CDSCheque3SUCURSAL_BCO: TStringField;
    CDSCheque3NRO_CTA: TStringField;
    pncabecera: TPanel;
    CDSCheque3MuesraCaja: TStringField;
    CDSCheque3Muestrabanco: TStringField;
    CDSCheque3FECHA_EMISION: TSQLTimeStampField;
    CDSCheque3FECHA_COBRO: TSQLTimeStampField;
    CDSCheque3FECHA_ENTRADA: TSQLTimeStampField;
    CDSCheque3FECHA_SALIDA: TSQLTimeStampField;
    CDSCajaMovIng: TClientDataSet;
    DSPCajaMovIng: TDataSetProvider;
    DSPCajaMovEg: TDataSetProvider;
    CDSCajaMovEg: TClientDataSet;
    CDSCajaMovIngID_MOV_CAJA: TIntegerField;
    CDSCajaMovIngID_CAJA: TIntegerField;
    CDSCajaMovIngFECHA_CAJA: TSQLTimeStampField;
    CDSCajaMovIngFECHA_OPERACION: TSQLTimeStampField;
    CDSCajaMovIngTIPO_OPERACION: TStringField;
    CDSCajaMovIngTIPO_COMPROB: TStringField;
    CDSCajaMovIngCLASE_COMPROB: TStringField;
    CDSCajaMovIngID_COMPROBANTE: TIntegerField;
    CDSCajaMovIngNRO_COMPROBANTE: TStringField;
    CDSCajaMovIngID_TPAGO: TIntegerField;
    CDSCajaMovIngID_FPAGO: TIntegerField;
    CDSCajaMovIngID_CUENTA_CAJA: TIntegerField;
    DBGrid1: TDBGrid;
    DSCajaMovIng: TDataSource;
    DSCajaMovEg: TDataSource;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    CDSCajaMovEgID_MOV_CAJA: TIntegerField;
    CDSCajaMovEgID_CAJA: TIntegerField;
    CDSCajaMovEgFECHA_CAJA: TSQLTimeStampField;
    CDSCajaMovEgFECHA_OPERACION: TSQLTimeStampField;
    CDSCajaMovEgTIPO_OPERACION: TStringField;
    CDSCajaMovEgTIPO_COMPROB: TStringField;
    CDSCajaMovEgCLASE_COMPROB: TStringField;
    CDSCajaMovEgID_COMPROBANTE: TIntegerField;
    CDSCajaMovEgNRO_COMPROBANTE: TStringField;
    CDSCajaMovEgID_TPAGO: TIntegerField;
    CDSCajaMovEgID_FPAGO: TIntegerField;
    CDSCajaMovEgID_CUENTA_CAJA: TIntegerField;
    CDSCajaMovEgMONEDA: TIntegerField;
    cxGChequesDBTableView1: TcxGridDBTableView;
    cxGChequesLevel1: TcxGridLevel;
    cxGCheques: TcxGrid;
    cxGChequesDBTableView1ID_CHEQUE_TER: TcxGridDBColumn;
    cxGChequesDBTableView1ID_CAJA: TcxGridDBColumn;
    cxGChequesDBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGChequesDBTableView1ID_FPAGO: TcxGridDBColumn;
    cxGChequesDBTableView1ID_BANCO: TcxGridDBColumn;
    cxGChequesDBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGChequesDBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGChequesDBTableView1FECHA_ENTRADA: TcxGridDBColumn;
    cxGChequesDBTableView1FECHA_SALIDA: TcxGridDBColumn;
    cxGChequesDBTableView1NUMERO: TcxGridDBColumn;
    cxGChequesDBTableView1ORIGEN: TcxGridDBColumn;
    cxGChequesDBTableView1DESTINO: TcxGridDBColumn;
    cxGChequesDBTableView1DISPONIBLE: TcxGridDBColumn;
    cxGChequesDBTableView1FIRMANTE: TcxGridDBColumn;
    cxGChequesDBTableView1UNIDADES: TcxGridDBColumn;
    cxGChequesDBTableView1IMPORTE: TcxGridDBColumn;
    cxGChequesDBTableView1SALDO_UNIDADES: TcxGridDBColumn;
    cxGChequesDBTableView1SALDO_IMPORTE: TcxGridDBColumn;
    cxGChequesDBTableView1ID_MOV_CAJA_EGRESOS: TcxGridDBColumn;
    cxGChequesDBTableView1ID_CUENTA_CAJA: TcxGridDBColumn;
    cxGChequesDBTableView1ID_CUENTA_BCO_DEPOSITADO: TcxGridDBColumn;
    cxGChequesDBTableView1MONEDA: TcxGridDBColumn;
    cxGChequesDBTableView1CUIT: TcxGridDBColumn;
    cxGChequesDBTableView1SUCURSAL_BCO: TcxGridDBColumn;
    cxGChequesDBTableView1NRO_CTA: TcxGridDBColumn;
    cxGChequesDBTableView1MuesraCaja: TcxGridDBColumn;
    cxGChequesDBTableView1Muestrabanco: TcxGridDBColumn;
    QCheque3: TFDQuery;
    QCheque3ID_CHEQUE_TER: TIntegerField;
    QCheque3ID_CAJA: TIntegerField;
    QCheque3ID_MOV_CAJA: TIntegerField;
    QCheque3ID_FPAGO: TIntegerField;
    QCheque3ID_BANCO: TIntegerField;
    QCheque3NUMERO: TIntegerField;
    QCheque3FECHA_EMISION: TSQLTimeStampField;
    QCheque3FECHA_COBRO: TSQLTimeStampField;
    QCheque3FECHA_ENTRADA: TSQLTimeStampField;
    QCheque3FECHA_SALIDA: TSQLTimeStampField;
    QCheque3ORIGEN: TStringField;
    QCheque3DESTINO: TStringField;
    QCheque3UNIDADES: TFloatField;
    QCheque3IMPORTE: TFloatField;
    QCheque3DISPONIBLE: TStringField;
    QCheque3FIRMANTE: TStringField;
    QCheque3COTIZACION: TFloatField;
    QCheque3ID_MOV_CAJA_EGRESOS: TIntegerField;
    QCheque3ID_CUENTA_CAJA: TIntegerField;
    QCheque3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    QCheque3MONEDA: TIntegerField;
    QCheque3SALDO_UNIDADES: TFloatField;
    QCheque3SALDO_IMPORTE: TFloatField;
    QCheque3CUIT: TStringField;
    QCheque3SUCURSAL_BCO: TStringField;
    QCheque3NRO_CTA: TStringField;
    CDSCheque3UNIDADES: TFloatField;
    CDSCheque3IMPORTE: TFloatField;
    CDSCheque3COTIZACION: TFloatField;
    CDSCheque3SALDO_UNIDADES: TFloatField;
    CDSCheque3SALDO_IMPORTE: TFloatField;
    QCtaCaja: TFDQuery;
    QBancos: TFDQuery;
    QCtaCajaID_CUENTA: TIntegerField;
    QCtaCajaID_TIPO_CTA: TIntegerField;
    QCtaCajaNOMBRE: TStringField;
    QCtaCajaNRO_CUENTA: TStringField;
    QCtaCajaID_BANCO: TIntegerField;
    QCtaCajaCUIT: TStringField;
    QCtaCajaRAZONSOCIAL: TStringField;
    QBancosID_BANCO: TIntegerField;
    QBancosNOMBRE: TStringField;
    QBancosDIRECCION: TStringField;
    QBancosTELEFONOS: TStringField;
    QBancosSUCURSAL: TStringField;
    QBancosLOCALIDAD: TStringField;
    QBancosNOTAS: TMemoField;
    QBancosID_POSTAL: TIntegerField;
    QCajaMovIng: TFDQuery;
    CDSCajaMovIngHABER: TFloatField;
    CDSCajaMovIngDEBE: TFloatField;
    CDSCajaMovIngUNIDADES: TFloatField;
    CDSCajaMovIngCOTIZACION: TFloatField;
    QCajaMovEg: TFDQuery;
    CDSCajaMovEgHABER: TFloatField;
    CDSCajaMovEgDEBE: TFloatField;
    CDSCajaMovEgUNIDADES: TFloatField;
    CDSCajaMovEgCOTIZACION: TFloatField;
    pnPie: TPanel;
    chFiltro: TAdvOfficeCheckBox;
    rgEstado: TAdvOfficeRadioGroup;
    JvDBFindEdit1: TJvDBFindEdit;
    QCheque3E_CHECK: TStringField;
    QCheque3ID_CTA_CAJA_BCO: TIntegerField;
    CDSCheque3E_CHECK: TStringField;
    CDSCheque3ID_CTA_CAJA_BCO: TIntegerField;
    cxGChequesDBTableView1E_CHECK: TcxGridDBColumn;
    cxGChequesDBTableView1MustraCtaBcoECheq: TcxGridDBColumn;
    QCtaCajaBco: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    CDSCheque3MustraCtaBcoECheq: TStringField;
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSCheque3BeforeDelete(DataSet: TDataSet);
    procedure chFiltroClick(Sender: TObject);
    procedure cxGChequesDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlChe3: TFormControlChe3;

implementation

uses DMStoreProcedureForm,UDMain_FD, UFacturaCtdo_2, URecibo_2, UIngresoCaja;

{$R *.dfm}

procedure TFormControlChe3.BuscarExecute(Sender: TObject);
begin
 // inherited;
//  CDSCheque3.AfterScroll:=nil;
  CDSCheque3.Close;
  CDSCheque3.IndexFieldNames:='';
  CDSCheque3.IndexDefs.Clear;
  case rgEstado.ItemIndex of
    0:CDSCheque3.Params.ParamByName('disponible').Value:='*';
    1:CDSCheque3.Params.ParamByName('disponible').Value:='S';
    2:CDSCheque3.Params.ParamByName('disponible').Value:='N';
  end;
  CDSCheque3.Open;
//  CDSCheque3.AfterScroll:=CDSCheque3AfterScroll;

end;




procedure TFormControlChe3.CDSCheque3BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if DMMain_FD.UsuarioActivo<>'master' then
    CDSCheque3.Cancel;
 end;

procedure TFormControlChe3.chFiltroClick(Sender: TObject);
begin
  inherited;
  cxGChequesDBTableView1.OptionsView.GroupByBox:=chFiltro.Checked;
end;

procedure TFormControlChe3.ConfirmaExecute(Sender: TObject);
var Detalle:String;
begin
 // inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    Detalle:= 'Modificación Cheque de Tercero: '+ CDSCheque3NUMERO.AsString+
              ' Banco: ' + CDSCheque3Muestrabanco.AsString+
              ' Importe:Nuevo/Viejo: '+ FormatFloat('0.00',CDSCheque3IMPORTE.NewValue)+'/'+FormatFloat('0.00',CDSCheque3IMPORTE.OldValue)+
              ' Fechas Emi.:Nueva/Vieja:'+ DateToStr(CDSCheque3FECHA_EMISION.OldValue)+' - '+DateToStr(CDSCheque3FECHA_EMISION.OldValue);
    DMMain_FD.LogFileFD(0,2,Detalle,'CHEQ3');
    if CDSCheque3.State<>dsBrowse then
      CDSCheque3.Post;
    CDSCheque3.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo gravar los cambios');
  end;
 // Buscar.Execute;
 end;


procedure TFormControlChe3.cxGChequesDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  CDSCajaMovIng.Close;
  CDSCajaMovIng.Params.ParamByName('id').Value:=CDSCheque3ID_MOV_CAJA.Value;
  CDSCajaMovIng.Open;

  CDSCajaMovEg.Close;
  CDSCajaMovEg.Params.ParamByName('id').Value :=CDSCheque3ID_MOV_CAJA_EGRESOS.Value;
  CDSCajaMovEg.Open;
end;

procedure TFormControlChe3.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if CDSCajaMovIngTIPO_COMPROB.AsString='RC' Then
    begin
      if Not(Assigned(FormRecibo_2)) then
        FormRecibo_2:=TFormRecibo_2.Create(self);
       FormRecibo_2.DatoNew  := CDSCajaMovIngID_COMPROBANTE.AsString;
       FormRecibo_2.TipoCpbte:= CDSCajaMovIngTIPO_COMPROB.AsString;
       FormRecibo_2.Recuperar.Execute;
       FormRecibo_2.Show;
    end
  else
    if CDSCajaMovIngTIPO_COMPROB.AsString='FO' Then
      Begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
         FormCpbteCtdo_2.DatoNew  := CDSCajaMovIngID_COMPROBANTE.AsString;
         FormCpbteCtdo_2.TipoCpbte:= CDSCajaMovIngTIPO_COMPROB.AsString;
         FormCpbteCtdo_2.Recuperar.Execute;
         FormCpbteCtdo_2.Show;
      end
   else
    if CDSCajaMovIngTIPO_COMPROB.AsString='IC' Then
      Begin
        if Not(Assigned(FormIngresoCaja)) then
          FormIngresoCaja:=TFormIngresoCaja.Create(self);
         FormIngresoCaja.DatoNew  := CDSCajaMovIngID_COMPROBANTE.AsString;
         FormIngresoCaja.TipoCpbte:= CDSCajaMovIngTIPO_COMPROB.AsString;
         FormIngresoCaja.Recuperar.Execute;
         FormIngresoCaja.Show;
      end;

end;

procedure TFormControlChe3.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlChe3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CDSCheque3.Close;
  Action:=caFree;
end;

procedure TFormControlChe3.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  QCtaCajaBco.Close;
  QCtaCajaBco.Open;
  Buscar.Execute;
end;

procedure TFormControlChe3.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlChe3:=nil;
end;

end.
