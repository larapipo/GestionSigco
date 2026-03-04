unit UListadoChePorOrdenPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls,
  Mask, JvExMask, JvToolEdit, JvExControls, JvDBLookup, ComCtrls, DB, DBClient,
  ActnList, JvLabel, JvDBControls, JvGradient, Buttons,
  ToolWin, ExtCtrls,Librerias, JvBaseEdits, DBCtrls, frxExportPDF, frxExportXLS,
  frxExportCSV, frxExportRTF, frxClass, frxExportText, frxDBSet, System.Actions,
  JvAppStorage, JvAppIniStorage, Datasnap.Provider, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,VirtualUI_SDK, DataExport,
  DataToXLS, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, AdvGroupBox, AdvOfficeButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormListadoChePor_OPago = class(TFormABMBase)
    DSPCheEmitidos: TDataSetProvider;
    CDSCheEmitidos: TClientDataSet;
    DSCheEmitidos: TDataSource;
    DSBancos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    dbcCuentas: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSCheEmitidosID_CHEQUE_PRO: TIntegerField;
    CDSCheEmitidosNUMERO: TIntegerField;
    CDSCheEmitidosFECHA_EMISION: TSQLTimeStampField;
    CDSCheEmitidosFECHA_COBRO: TSQLTimeStampField;
    CDSCheEmitidosFECHA_DEBITO: TSQLTimeStampField;
    CDSCheEmitidosORDEN_DE: TStringField;
    CDSCheEmitidosID_OP: TIntegerField;
    CDSCheEmitidosFECHA: TSQLTimeStampField;
    CDSCheEmitidosSUCURSAL: TIntegerField;
    CDSCheEmitidosNROCPBTE: TStringField;
    CDSCheEmitidosCODIGO: TStringField;
    CDSCheEmitidosNOMBRE: TStringField;
    CDSCheEmitidosMUESTRABANCO: TStringField;
    CDSCheEmitidosMUESTRANOMBRECTACAJA: TStringField;
    DSCtaCaja: TDataSource;
    dbcCtaCaja: TJvDBLookupCombo;
    Label4: TLabel;
    DSOPago: TDataSource;
    pnOp: TPanel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frChe: TfrxReport;
    frDBDCheEmitidos: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    RxLabel3: TJvLabel;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    CDSCheEmitidosMUESTRASUCURSAL: TStringField;
    BitBtn1: TBitBtn;
    ToolButton2: TToolButton;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    QOPago: TFDQuery;
    QBancos: TFDQuery;
    QCheEmitidos: TFDQuery;
    QCtaCaja: TFDQuery;
    CDSCheEmitidosIMPORTE: TFloatField;
    QBancosID_CUENTA: TIntegerField;
    QBancosID_TIPO_CTA: TIntegerField;
    QBancosNOMBRE: TStringField;
    QBancosNRO_CUENTA: TStringField;
    QBancosID_BANCO: TIntegerField;
    QBancosCUIT: TStringField;
    QBancosRAZONSOCIAL: TStringField;
    QCtaCajaID_CUENTA: TIntegerField;
    QCtaCajaID_TIPO_CTA: TIntegerField;
    QCtaCajaNOMBRE: TStringField;
    QCtaCajaNRO_CUENTA: TStringField;
    QCtaCajaID_BANCO: TIntegerField;
    QCtaCajaCUIT: TStringField;
    QCtaCajaRAZONSOCIAL: TStringField;
    QOPagoID_OP: TIntegerField;
    QOPagoTIPOCPBTE: TStringField;
    QOPagoCLASECPBTE: TStringField;
    QOPagoNROCPBTE: TStringField;
    QOPagoCODIGO: TStringField;
    QOPagoLETRAOP: TStringField;
    QOPagoSUCOP: TStringField;
    QOPagoNUMEROOP: TStringField;
    QOPagoNOMBRE: TStringField;
    QOPagoRAZONSOCIAL: TStringField;
    QOPagoDIRECCION: TStringField;
    QOPagoCPOSTAL: TStringField;
    QOPagoLOCALIDAD: TStringField;
    QOPagoTIPOIVA: TIntegerField;
    QOPagoCUIT: TStringField;
    QOPagoNRO_IIBB: TStringField;
    QOPagoFECHA: TSQLTimeStampField;
    QOPagoANULADO: TStringField;
    QOPagoN_OPERACION2: TFloatField;
    QOPagoTOTAL: TFloatField;
    QOPagoSALDO_APLICAR: TFloatField;
    QOPagoOBSERVACION1: TStringField;
    QOPagoOBSERVACION2: TStringField;
    QOPagoSUCURSAL: TIntegerField;
    QOPagoDESCUENTO: TFloatField;
    QOPagoDESGLOZAIVA: TStringField;
    QOPagoNC_ID_FC: TIntegerField;
    QOPagoNC_LETRAFAC: TStringField;
    QOPagoNC_SUCFAC: TStringField;
    QOPagoNC_NUMEROFAC: TStringField;
    QOPagoTASA_PERCEPCIONIVA: TFloatField;
    QOPagoTASA_PERCEPCIONIB: TFloatField;
    QOPagoUSUARIO: TStringField;
    QOPagoTOTAL_NETO_GRAVADO: TFloatField;
    QOPagoTOTAL_PAGOS_DEL_MES: TFloatField;
    QOPagoTOTAL_RETENIDO_MES: TFloatField;
    QOPagoTASA_RETENCION_GANACIA: TFloatField;
    QOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFloatField;
    QOPagoRETIENE_GANACIAS: TStringField;
    QOPagoRETENCION_GANACIA_GENERADO: TStringField;
    QOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField;
    QOPagoCONCEPTO_RETENCION_GANACIA: TStringField;
    QOPagoIMPUESTO_MINIMO_GANANCIA: TFloatField;
    QOPagoRETIENE_IIBB: TStringField;
    QOPagoTASA_RETENCION_IIBB: TFloatField;
    QOPagoMINIMO_IMPONIBLE_RET_IIBB: TFloatField;
    QOPagoFECHA_HORA: TSQLTimeStampField;
    QOPagoDESCUENTO_PORCENTAJE: TFloatField;
    QOPagoTOTAL_NETO: TFloatField;
    QOPagoNUMERO_OPERACION: TStringField;
    QOPagoPERMITIR_MODIF_TOTAL: TStringField;
    QOPagoRET_GAN_X_ESCALA: TStringField;
    QOPagoID_ESCALA_RET: TIntegerField;
    QOPagoGANC_ESCALA_DESDE: TFloatField;
    QOPagoGANC_ESCALA_HASTA: TFloatField;
    QOPagoGANC_ESCALA_VARIAC: TFloatField;
    QOPagoGANC_ESCALA_FIJO: TFloatField;
    QOPagoGANC_ESCALA_EXCED: TFloatField;
    QOPagoRETIENE_IVA: TStringField;
    QOPagoIVA_ACUMULADO: TFloatField;
    QOPagoTASA_RET_IVA: TCurrencyField;
    QOPagoENTREGADO: TStringField;
    pnCabecera: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_CHEQUE_PRO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_DEBITO: TcxGridDBColumn;
    cxGrid1DBTableView1ORDEN_DE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_OP: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRANOMBRECTACAJA: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    rgFecha: TAdvOfficeRadioGroup;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSCheEmitidosAfterScroll(DataSet: TDataSet);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgChequesDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormListadoChePor_OPago: TFormListadoChePor_OPago;

implementation

uses UDMain_FD, DMBuscadoresForm, UOPago_2;
{$R *.dfm}



procedure TFormListadoChePor_OPago.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSCheEmitidos.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='ChequesEmitidosOP';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
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
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoChePor_OPago.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCheEmitidos.Close;
  if rgFecha.ItemIndex=0 then
    CDSCheEmitidos.CommandText:=
      'select ch.id_cheque_pro,ch.numero,ch.fecha_emision,ch.fecha_cobro,ch.fecha_debito,'+
      'ch.orden_de, ch.importe,'+
      'op.id_op,op.fecha,op.sucursal,op.nrocpbte,op.codigo,op.nombre,s.detalle as MuestraSucursal,'+
      'b.nombre as MuestraBanco,'+
      'cta.nombre as MuestraNombreCtaCaja '+
      'from cheque_propio ch '+
      'left join caja_mov cm on cm.id_mov_caja=ch.id_mov_caja and cm.tipo_comprob=''OP'' '+
      'left join ordenpago op on op.id_op=cm.id_comprobante '+
      'left join bancos b on b.id_banco=ch.id_banco '+
      'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja '+
      'left join sucursal s on s.codigo = op.sucursal '+
      'where (ch.fecha_emision between :desde and :hasta) and '+
      '       cm.tipo_comprob=''OP'' and '+
      '      ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
      '      ( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) and '+
      '      ( op.sucursal = :suc or :suc = -1)'
   else
     if rgFecha.ItemIndex=1 then
       CDSCheEmitidos.CommandText:=
         'select ch.id_cheque_pro,ch.numero,ch.fecha_emision,ch.fecha_cobro,ch.fecha_debito,'+
         'ch.orden_de, ch.importe,'+
         'op.id_op,op.fecha,op.sucursal,op.nrocpbte,op.codigo,op.nombre,s.detalle as MuestraSucursal,'+
         'b.nombre as MuestraBanco,'+
         'cta.nombre as MuestraNombreCtaCaja '+
         'from cheque_propio ch '+
         'left join caja_mov cm on cm.id_mov_caja=ch.id_mov_caja and cm.tipo_comprob=''OP'' '+
         'left join ordenpago op on op.id_op=cm.id_comprobante '+
         'left join bancos b on b.id_banco=ch.id_banco '+
         'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja '+
         'left join sucursal s on s.codigo = op.sucursal '+
         'where (ch.fecha_cobro between :desde and :hasta) and '+
         '       cm.tipo_comprob=''OP'' and '+
         '      ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
         '      ( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) and '+
         '      ( op.sucursal = :suc or :suc = -1)';

  CDSCheEmitidos.Params.ParamByName('idCta').AsInteger      := dbcCuentas.KeyValue;
  CDSCheEmitidos.Params.ParamByName('idCta_caja').AsInteger := dbcCtaCaja.KeyValue;
  CDSCheEmitidos.Params.ParamByName('Suc').AsInteger := dbcSucursal.KeyValue;
  CDSCheEmitidos.Params.ParamByName('desde').AsDate:= Desde.Date;
  CDSCheEmitidos.Params.ParamByName('hasta').AsDate:= Hasta.Date;
  CDSCheEmitidos.open;

end;

procedure TFormListadoChePor_OPago.CDSCheEmitidosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QOPago.Close;
  QOPago.ParamByName('id').Value:=CDSCheEmitidosID_OP.Value;
  QOPago.Open;
end;

procedure TFormListadoChePor_OPago.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(CDSCheEmitidos.IsEmpty) then
    begin
      if Not(Assigned(FormOPago_2)) then
        FormOPago_2:=TFormOPago_2.Create(Self);
      FormOPago_2.DatoNew   := CDSCheEmitidosID_OP.AsString;
      FormOPago_2.TipoCpbte := 'OP';
      FormOPago_2.Recuperar.Execute;
    end;
end;

procedure TFormListadoChePor_OPago.dbgChequesDblClick(Sender: TObject);
begin
  inherited;
  if Not(CDSCheEmitidos.IsEmpty) then
    begin
      if Not(Assigned(FormOPago_2)) then
        FormOPago_2:=TFormOPago_2.Create(Self);
      FormOPago_2.DatoNew   := CDSCheEmitidosID_OP.AsString;
      FormOPago_2.TipoCpbte := 'OP';
      FormOPago_2.Recuperar.Execute;
    end;
end;


procedure TFormListadoChePor_OPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QBancos.Close;
  QCtaCaja.Close;
  CDSSucursal.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormListadoChePor_OPago.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QBancos.Open;
  QCtaCaja.Open;
  CDSSucursal.Open;
end;

procedure TFormListadoChePor_OPago.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoChePor_OPago:=Nil;
end;

procedure TFormListadoChePor_OPago.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormListadoChePor_OPago.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frChe.PrintOptions.Printer:=PrNomListados;
  frChe.SelectPrinter;
  frChe.LoadFromFile(DMMain_FD.PathReportesLst+'\ChequesEmitidos_PorOPago.fr3');
  frChe.ShowReport;
  dbcCuentas.SetFocus;
end;

procedure TFormListadoChePor_OPago.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frChe.DesignReport;
end;

procedure TFormListadoChePor_OPago.UpDown1Click(Sender: TObject;
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
  //if dbcCtas.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.
