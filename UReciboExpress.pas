unit UReciboExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  JvDBLookup, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, JvBaseEdits,
  Vcl.DBCtrls,System.StrUtils, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridCustomView, cxGrid, Vcl.Menus, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  IniFiles, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit;

type
  TFormReciboExpress = class(TFormABMBase)
    DSPComprob: TDataSetProvider;
    CDSComprob: TClientDataSet;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobDENOMINACION: TStringField;
    CDSComprobSUCURSAL: TIntegerField;
    CDSComprobLETRA: TStringField;
    CDSComprobPREFIJO: TStringField;
    CDSComprobNUMERARCION_PROPIA: TStringField;
    CDSComprobNUMERO: TStringField;
    CDSComprobTOMA_NRO_DE: TIntegerField;
    DSComprob: TDataSource;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursales: TDataSource;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    DSCajas: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    dbcComprobante: TJvDBLookupCombo;
    dbcCtas: TJvDBLookupCombo;
    pnCabecera: TPanel;
    JvLabel1: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    pnDatos: TPanel;
    QComp: TFDQuery;
    QCajas: TFDQuery;
    QClientes_: TFDQuery;
    dbgClientes: TDBGrid;
    DSClientes: TDataSource;
    QClientes_CODIGO: TStringField;
    QClientes_NOMBRE: TStringField;
    QClientes_RAZON_SOCIAL: TStringField;
    QRecibos_: TFDQuery;
    DSRecibos: TDataSource;
    QRecibos_ID_RC: TIntegerField;
    QRecibos_TIPOCPBTE: TStringField;
    QRecibos_CLASECPBTE: TStringField;
    QRecibos_NROCPBTE: TStringField;
    QRecibos_TOTAL: TFloatField;
    dbgRecibos: TDBGrid;
    QRecibos_CODIGO: TStringField;
    edImporte: TJvCalcEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeSuc: TDBEdit;
    btOk: TBitBtn;
    edNumero: TEdit;
    spReciboExpress: TFDStoredProc;
    QBuscaRcRepetido: TFDQuery;
    QBuscaRcRepetidoMAX: TIntegerField;
    edFecha: TJvDateEdit;
    QClientes_DIRECCION_COMERCIAL: TStringField;
    pcMovimientos: TPageControl;
    tsRecibos: TTabSheet;
    tsCtaCte: TTabSheet;
    QMovCC_: TFDQuery;
    QMovCC_TIPOCPBTE: TStringField;
    QMovCC_CLASECPBTE: TStringField;
    QMovCC_DETALLE: TStringField;
    QMovCC_DEBE: TFloatField;
    QMovCC_HABER: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DSMovCC: TDataSource;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    VerCliente1: TMenuItem;
    Imputaciones1: TMenuItem;
    QMovCC_FECHAVTA: TSQLTimeStampField;
    QMovCC_FECHAVTO: TSQLTimeStampField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    QRecibos_FECHA: TSQLTimeStampField;
    QUltimoNro: TFDQuery;
    QUltimoNroMAX: TStringField;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    QModosDeCobro: TFDQuery;
    CDSModosDeCobro: TClientDataSet;
    DSPModosDeCobro: TDataSetProvider;
    CDSModosDeCobroID_TPAGO: TIntegerField;
    CDSModosDeCobroID_FPAGO: TIntegerField;
    CDSModosDeCobroFORMAPAGO: TStringField;
    CDSModosDeCobroCODIGO: TIntegerField;
    CDSModosDeCobroDESCRIPCION: TStringField;
    CDSModosDeCobroNRO_CUENTA: TStringField;
    DSModosDeCobro: TDataSource;
    edSearchModoPago: TDBAdvSearchEdit;
    Label6: TLabel;
    edSearchCliente: TDBAdvSearchEdit;
    CDSMovCC: TClientDataSet;
    DSPMovCC: TDataSetProvider;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSRecibos: TClientDataSet;
    DSPRecibos: TDataSetProvider;
    CDSRecibosCODIGO: TStringField;
    CDSRecibosTIPOCPBTE: TStringField;
    CDSRecibosCLASECPBTE: TStringField;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSRecibosNROCPBTE: TStringField;
    CDSRecibosTOTAL: TFloatField;
    CDSRecibosID_RC: TIntegerField;
    VerCtaCte: TAction;
    QClientes_NRODOCUMENTO: TStringField;
    CDSClientesNRODOCUMENTO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure dbcComprobanteEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgClientesKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure edNumeroExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgRecibosDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFechaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pcMovimientosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VerCliente1Click(Sender: TObject);
    procedure Imputaciones1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure edNumeroEnter(Sender: TObject);
    procedure edSearchClienteSelect(Sender: TObject);
    procedure edSearchClienteKeyPress(Sender: TObject; var Key: Char);
    procedure CDSClientesAfterScroll(DataSet: TDataSet);
    procedure CDSClientesBeforeOpen(DataSet: TDataSet);
    procedure CDSClientesAfterOpen(DataSet: TDataSet);
    procedure edSearchModoPagoKeyPress(Sender: TObject; var Key: Char);
    procedure VerCtaCteExecute(Sender: TObject);
    procedure edImporteEnter(Sender: TObject);
    procedure edImporteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReciboExpress: TFormReciboExpress;

implementation

uses UDMain_FD, URecibo_2, UClientes_2, UAplicacionesCCVta_2;
{$R *.dfm}

procedure TFormReciboExpress.btOkClick(Sender: TObject);
var cod:string;
Num:Integer;
Tipo,Forma,codigo:String;
begin
  inherited;

  if edSearchModoPago.SearchList.SelectedItem<>nil then
    begin
      Tipo   := edSearchModoPago.SearchList.SelectedItem.Captions[2];
      Forma  := edSearchModoPago.SearchList.SelectedItem.Captions[3];
      codigo := edSearchModoPago.SearchList.SelectedItem.Captions[4];
    end
  else
    begin
      Tipo   := '1';
      Forma  := '1';
      codigo := '1';
    end;


  if (Trim(dbgClientes.DataSource.DataSet.FieldByName('NOMBRE').AsString)<>'') then
    begin
      if Trim(edNumero.Text)='' then
        begin
          QUltimoNro.Close;
          QUltimoNro.ParamByName('clase').Value    := dbcComprobante.LookupSource.DataSet.FieldByName('CLASE_COMPROB').Value;
          QUltimoNro.ParamByName('suc').Value      := dbcComprobante.LookupSource.DataSet.FieldByName('PREFIJO').Value;
          QUltimoNro.ParamByName('sucursal').Value := dbcSucursal.KeyValue;// CDSReciboSUCURSAL.Value;
          QUltimoNro.Open;
          if TryStrToInt(QUltimoNroMAX.AsString,Num) then
            Num:= Num+1
          else
            Num:=1;
          edNumero.Text:=AnsiRightStr('00000000'+IntToStr(Num),8);
          QUltimoNro.Close;
        end;

      //  Raise Exception.Create('Falta Nro Cpbte...');

      if (edImporte.Value)<=0 then
        Raise Exception.Create('Falta Importe...');

      edNumero.Text:=AnsiRightStr('000000000'+edNumero.Text,8);
      QBuscaRcRepetido.Close;
      QBuscaRcRepetido.ParamByName('clase').Value    := dbcComprobante.LookupSource.DataSet.FieldByName('CLASE_COMPROB').Value;
      QBuscaRcRepetido.ParamByName('suc').Value      := dbcComprobante.LookupSource.DataSet.FieldByName('PREFIJO').Value;
      QBuscaRcRepetido.ParamByName('num').Value      := edNumero.Text;
      QBuscaRcRepetido.ParamByName('sucursal').Value := dbcSucursal.KeyValue;// CDSReciboSUCURSAL.Value;
      QBuscaRcRepetido.Open;
      if QBuscaRcRepetido.Fields[0].AsString<>'' then
        begin
          Raise Exception.Create('Numero Ya Ingresado...');
          edNumero.Clear;
          edNumero.SetFocus;
        end;
      cod:= CDSClientesCODIGO.Value;
      QBuscaRcRepetido.Close;

      DMMain_FD.fdcGestion.StartTransaction;
      try
        spReciboExpress.Close;
        spReciboExpress.Prepare;
        spReciboExpress.ParamByName('codigo').AsString          := CDSClientesCODIGO.Value;
        spReciboExpress.ParamByName('fecha').AsDate             := edFecha.Date;
        spReciboExpress.ParamByName('id_comprobante').ASInteger := dbcComprobante.KeyValue;
        spReciboExpress.ParamByName('importe').AsFloat          := edImporte.Value;
        spReciboExpress.ParamByName('usuario').AsString         := DMMain_fd.UsuarioActivo;
        spReciboExpress.ParamByName('numero_rc').AsString       := edNumero.Text;
        spReciboExpress.ParamByName('id_caja').AsInteger        := dbcCtas.KeyValue;
        spReciboExpress.ParamByName('idtc').AsInteger           := StrToInt(codigo);
        spReciboExpress.ParamByName('tipo_pago').AsInteger      := StrToInt(tipo);
        spReciboExpress.ParamByName('form_pago').AsInteger      := StrToInt(Forma);


        spReciboExpress.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spReciboExpress.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        spReciboExpress.Close;
        ShowMessage('Fallo de Gravacion .... ');
      end;

      CDSRecibos.Close;
      CDSRecibos.Open;

      CDSClientes.Locate('CODIGO',cod,[]);

      //edFCliente.Clear;
     // edCodigo.Clear;
    end;
  edSearchCliente.SetFocus;

  edNumero.Clear;
  edImporte.Clear;
end;

procedure TFormReciboExpress.CDSClientesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CDSClientes.AfterScroll:=CDSClientesAfterScroll;
end;

procedure TFormReciboExpress.CDSClientesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSRecibos.Close;
  CDSRecibos.Params.ParamByName('codigo').Value:=CDSClientesCODIGO.Value;
  CDSRecibos.Open;
  if pcMovimientos.ActivePageIndex=1 then
    VerCtaCte.Execute;

end;

procedure TFormReciboExpress.CDSClientesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  CDSClientes.AfterScroll:=nil;
end;


procedure TFormReciboExpress.dbcComprobanteEnter(Sender: TObject);
begin
  inherited;
  CDSComprob.Close;
  CDSComprob.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSComprob.Open;
end;

procedure TFormReciboExpress.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  dbcComprobante.KeyValue:=-1;
end;

procedure TFormReciboExpress.dbgClientesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then
     edSearchCliente.SetFocus;
end;

procedure TFormReciboExpress.dbgRecibosDblClick(Sender: TObject);
begin
  inherited;
  if (CDSRecibosID_RC.AsString<>'') Then
    begin
      IF NOT (Assigned(FormRecibo_2)) THEN
        FormRecibo_2:= TFormRecibo_2.Create(self);
      FormRecibo_2.DatoNew    := CDSRecibosID_RC.AsString;
      FormRecibo_2.TipoCpbte  := 'RC';
      FormRecibo_2.Recuperar.Execute;
      FormRecibo_2.Show;
      FormRecibo_2.BringToFront;
    end
end;

procedure TFormReciboExpress.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled :=True;
  pnCabecera.Enabled  :=True;
  pnDatos.Enabled     :=True;

end;

procedure TFormReciboExpress.FormActivate(Sender: TObject);
begin
  inherited;
  CDSRecibos.Close;
  CDSRecibos.Open;
end;

procedure TFormReciboExpress.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ReciboExpress.ini');
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormReciboExpress.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Open;
  dbcSucursal.KeyValue:=SucursalPorDefecto;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ReciboExpress.ini');
  ArchivoIni.Free;



  CDSComprob.Close;
  CDSComprob.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  CDSComprob.Open;
  CDSComprob.First;

  dbcComprobante.KeyValue:=CDSComprobID_COMPROBANTE.Value;

  CDSCajas.Close;
  CDSCajas.Open;

  CDSModosDeCobro.Close;
  CDSModosDeCobro.Open;

  dbcCtas.KeyValue:=CajaPorDefecto;
  CDSClientes.Close;
  CDSClientes.Open;

  CDSRecibos.Close;
  CDSRecibos.Params.ParamByName('codigo').Value:=CDSClientesCODIGO.Value;
  CDSRecibos.Open;

  pcMovimientos.ActivePageIndex:=0;

//  if IniciarFocoenNombre1.Checked then
//    edFCliente.SetFocus
//  else
//    if IniciaFocoEncodigo1.Checked then
//      edCodigo.SetFocus;


end;

procedure TFormReciboExpress.FormDestroy(Sender: TObject);
begin
  inherited;
  FormReciboExpress:=nil;
end;

procedure TFormReciboExpress.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key= VK_DOWN) and (Shift = [ssCtrl]) Then
    begin
      if pcMovimientos.ActivePageIndex=0 Then pcMovimientos.ActivePageIndex:=1 else
      if pcMovimientos.ActivePageIndex=1 Then pcMovimientos.ActivePageIndex:=0 ;
      key := 0;
    end;

end;

procedure TFormReciboExpress.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      if (ActiveControl is TDBGrid) then
        begin
          edSearchCliente.SetFocus;
        end
      else
        if (ActiveControl is TAdvSearchEdit) or
           (ActiveControl is TJvDBFindEdit) or
           (ActiveControl is TDBEdit) or
           (ActiveControl is TEdit) or
           (ActiveControl is TJvDateEdit) or
           (ActiveControl is TJvCalcEdit)
        then
           begin
             perform(wm_nextdlgctl, 0, 0);
             key := #0;
         end;
      key := #0;
    end
  else
    if key=#27 then
      begin
        edImporte.Value:=0;
        edNumero.Clear;
        edSearchCliente.SetFocus;
   //     CDSClientes.First;
      end;
 


end;

procedure TFormReciboExpress.FormResize(Sender: TObject);
begin
  inherited;
  if FormReciboExpress<>nil then
    if FormReciboExpress.Width<>1119 then
      FormReciboExpress.Width:=1119;


end;

procedure TFormReciboExpress.FormShow(Sender: TObject);
begin
  inherited;
  edSearchCliente.SetFocus;
  edSearchModoPago.SelStart:=1;
//  edFCliente.SetFocus;
end;

procedure TFormReciboExpress.Imputaciones1Click(Sender: TObject);
begin
  inherited;
  if CDSClientesCODIGO.AsString<>'' then
    begin
      if Not(Assigned(FormAplicacionesCCVta_2)) then
        FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
      FormAplicacionesCCVta_2.edCodigo.Text := CDSClientesCODIGO.AsString;//entas.CDSVentaCabCODIGO.AsString;;
      FormAplicacionesCCVta_2.VerCCte.Execute;
      FormAplicacionesCCVTa_2.Show;
    end;
end;

procedure TFormReciboExpress.pcMovimientosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  VerCtaCte.Execute;
end;

procedure TFormReciboExpress.VerCliente1Click(Sender: TObject);
begin
  inherited;
  if CDSClientesCODIGO.AsString<>'' then
    begin
      if Not(Assigned(FormClientes_2)) then
        FormClientes_2:=TFormClientes_2.Create(Self);
      FormClientes_2.DatoNew:=CDSClientesCODIGO.AsString;
      FormClientes_2.Recuperar.Execute;
      FormClientes_2.Show;
    end;
end;


procedure TFormReciboExpress.VerCtaCteExecute(Sender: TObject);
begin
  inherited;
  CDSMovCC.Close;
  CDSMovCC.Params.ParamByName('codigo').Value:=CDSClientesCODIGO.Value;
  CDSMovCC.Open;
end;

procedure TFormReciboExpress.edFechaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if pcMovimientos.ActivePageIndex=0 then
    begin
      if (Key=VK_DOWN) and Not(CDSClientes.Eof) then
        CDSClientes.Next
      else
        if (Key=VK_UP) and Not(CDSClientes.Bof) then
          CDSClientes.Prior;
      Key:=0;
    end
  else
    if pcMovimientos.ActivePageIndex=1 then
      begin
        if (Key=VK_DOWN) and Not(CDSMovCC.Eof) then
          CDSMovCC.Next
        else
          if (Key=VK_UP) and Not(CDSMovCC.Bof) then
            CDSMovCC.Prior;
        Key:=0;
      end
end;

procedure TFormReciboExpress.edImporteEnter(Sender: TObject);
begin
  inherited;
  edImporte.Color:=clAqua;
end;

procedure TFormReciboExpress.edImporteExit(Sender: TObject);
begin
  inherited;
  edImporte.Color:=clWindow;
end;

procedure TFormReciboExpress.edNumeroEnter(Sender: TObject);
begin
  inherited;
  edNumero.Text;
  edNumero.Color:=clAqua;
end;

procedure TFormReciboExpress.edNumeroExit(Sender: TObject);
begin
  inherited;
   edNumero.Color:=clWindow;
  if Trim(edNumero.Text)<>'' then
    begin
      edNumero.Text:=AnsiRightStr('000000000'+edNumero.Text,8);
      QBuscaRcRepetido.Close;
      QBuscaRcRepetido.ParamByName('clase').Value    := dbcComprobante.LookupSource.DataSet.FieldByName('CLASE_COMPROB').Value;
      QBuscaRcRepetido.ParamByName('suc').Value      := dbcComprobante.LookupSource.DataSet.FieldByName('PREFIJO').Value;
      QBuscaRcRepetido.ParamByName('num').Value      := edNumero.Text;
      QBuscaRcRepetido.ParamByName('sucursal').Value := dbcSucursal.KeyValue;// CDSReciboSUCURSAL.Value;
      QBuscaRcRepetido.Open;
      if (QBuscaRcRepetido.Fields[0].AsString<>'') and (edNumero.Text<>'00000000') then
        begin
          edNumero.Clear;
          ShowMessage('Numero ya Ingresado....');
          edNumero.SetFocus;
        end;
    end;
end;

procedure TFormReciboExpress.edNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if pcMovimientos.ActivePageIndex=0 then
    begin
      if (Key=VK_DOWN) and Not(CDSClientes.Eof) then
        CDSClientes.Next
      else
        if (Key=VK_UP) and Not(CDSClientes.Bof) then
          CDSClientes.Prior;
      Key:=0;
    end
  else
    if pcMovimientos.ActivePageIndex=1 then
      begin
        if (Key=VK_DOWN) and Not(CDSMovCC.Eof) then
          CDSMovCC.Next
        else
          if (Key=VK_UP) and Not(CDSMovCC.Bof) then
            CDSMovCC.Prior;
        Key:=0;
      end
end;

procedure TFormReciboExpress.edNumeroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Not(Key in [#48..#59,#27,#13,#7,#8]) Then
     Key:=#0;
  if (Key in [#27]) Then
    Exit;

end;

procedure TFormReciboExpress.edSearchClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    edNumero.SetFocus;
end;

procedure TFormReciboExpress.edSearchClienteSelect(Sender: TObject);
begin
  inherited;
  edSearchCliente.SetFocus;
  if edSearchCliente.SearchList<>nil Then
    if edSearchCliente.SearchList.SelectedItem.Captions[0]<>'' then
      CDSClientes.Locate('codigo',edSearchCliente.SearchList.SelectedItem.Captions[0],[]);

end;

procedure TFormReciboExpress.edSearchModoPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 then
    edImporte.SetFocus;
end;

end.
