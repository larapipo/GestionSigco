unit UCobranzaPorLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, JvAppStorage, JvAppIniStorage, Data.DB,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls,DateUtils, Vcl.Mask, JvExMask, JvToolEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid,Math,System.Types, JvDBLookup, Vcl.DBCtrls,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvMemoryDataset,DBXCommon, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormCobranza_x_lote = class(TFormABMBase)
    CDSFacturas: TClientDataSet;
    DSPFacturas: TDataSetProvider;
    DSFacturas: TDataSource;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasRAZONSOCIAL: TStringField;
    CDSFacturasNOMBRE: TStringField;
    CDSFacturasNROCPBTE: TStringField;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    Label1: TLabel;
    desde: TJvDateEdit;
    Label2: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    chbPorDia: TCheckBox;
    CDSFacturasCOBRAR: TBooleanField;
    Label3: TLabel;
    dbcSucursal: TDBLookupComboBox;
    Label4: TLabel;
    dbcComprobante: TJvDBLookupCombo;
    DSComprob: TDataSource;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursales: TDataSource;
    GenerarRecibo: TAction;
    BitBtn1: TBitBtn;
    MemoryData: TJvMemoryData;
    DSMemory: TDataSource;
    MemoryDataID_RC: TIntegerField;
    MemoryDataTIPOCPBTE: TStringField;
    MemoryDataCLASECPBTE: TStringField;
    MemoryDataNROCPBTE: TStringField;
    MemoryDataCODIGO: TStringField;
    MemoryDataTOTAL: TFMTBCDField;
    MemoryDataNOMBRE: TStringField;
    dbgRecibos: TJvDBGrid;
    BitBtn2: TBitBtn;
    JvLabel1: TJvLabel;
    dbcCtas: TJvDBLookupCombo;
    DSCajas: TDataSource;
    CDSFacturasMUESTRAVDOR: TStringField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1SALDO: TcxGridDBColumn;
    cxGrid2DBTableView1COBRAR: TcxGridDBColumn;
    Label5: TLabel;
    edFechaRc: TJvDateEdit;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    Label6: TLabel;
    QBorrarRc: TFDQuery;
    QFacturas: TFDQuery;
    QComprob: TFDQuery;
    QCajas: TFDQuery;
    QCajasID_CAJA: TIntegerField;
    QCajasNUMEROCAJA: TIntegerField;
    QCajasID_CUENTA_CAJA: TIntegerField;
    QCajasNOMBRE: TStringField;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobDIVIDE_IVA: TStringField;
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobEN_USO: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobID_AJUSTECC: TIntegerField;
    QComprobCENTRO_COSTO: TIntegerField;
    QComprobFILTRO_COMPROBANTES: TStringField;
    QComprobDEPOSITO: TIntegerField;
    QComprobULTIMONRO: TIntegerField;
    QComprobEDITAR_NRO: TStringField;
    QFacturasID_FC: TIntegerField;
    QFacturasCODIGO: TStringField;
    QFacturasRAZONSOCIAL: TStringField;
    QFacturasNOMBRE: TStringField;
    QFacturasNROCPBTE: TStringField;
    QFacturasTIPOCPBTE: TStringField;
    QFacturasCLASECPBTE: TStringField;
    QFacturasTOTAL: TFloatField;
    QFacturasVENDEDOR: TStringField;
    QFacturasMUESTRAVDOR: TStringField;
    QFacturasSALDO: TFloatField;
    CDSFacturasTOTAL: TFloatField;
    CDSFacturasSALDO: TFloatField;
    QCajasFECHA_INCIO: TSQLTimeStampField;
    QCajasFECHA_CIERRE: TSQLTimeStampField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSFacturasCalcFields(DataSet: TDataSet);
    procedure CDSFacturasSALDOSetText(Sender: TField; const Text: string);
    procedure CDSFacturasAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure GenerarReciboExecute(Sender: TObject);
    procedure dbgRecibosDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure dbcComprobanteEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCobranza_x_lote: TFormCobranza_x_lote;

implementation

uses DMBuscadoresForm, URecibo_2, DMRecibos, UFactura_2,UDMain_FD;
{$R *.dfm}

procedure TFormCobranza_x_lote.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if Not(MemoryData.IsEmpty) then
    begin
      Screen.Cursor:=crHourGlass;
      MemoryData.First;
      MemoryData.DisableControls;
      while Not(MemoryData.Eof) do
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            QBorrarRc.Close;
            QBorrarRc.ParamByName('id').Value:=MemoryDataID_RC.Value;
            QBorrarRc.ExecSQL();
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no finalizada....!');
            exit;
          end;
          MemoryData.Next;
        end;
      MemoryData.Close;
      MemoryData.Open;
      MemoryData.EmptyTable;
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFormCobranza_x_lote.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFacturas.Close;
  CDSFacturas.Params.ParamByName('desde').AsDateTime:=Desde.Date;
  CDSFacturas.Params.ParamByName('hasta').AsDateTime:=Hasta.Date;
  CDSFacturas.Open;
end;

procedure TFormCobranza_x_lote.CDSFacturasAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CDSFacturas.First;
  CDSFacturas.DisableControls;
  while Not(CDSFacturas.Eof) do
    begin
      CDSFacturas.Edit;
      CDSFacturasCOBRAR.Value:=True;
      CDSFacturas.Next;
    end;
  CDSFacturas.First;
  CDSFacturas.EnableControls;
end;

procedure TFormCobranza_x_lote.CDSFacturasCalcFields(DataSet: TDataSet);
begin
  inherited;
   if VarIsNull(CDSFacturasCOBRAR.Value)  then
      CDSFacturasCOBRAR.Value:=True;
end;

procedure TFormCobranza_x_lote.CDSFacturasSALDOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CompareValue(Sender.AsFloat,CDSFacturasTOTAL.ASFloat,0.01)= GreaterThanValue then
    Sender.ASFLoat:=CDSFacturasTOTAL.ASFloat;
  if (sender.AsFloat<0) then
    Sender.ASFLoat:=CDSFacturasTOTAL.ASFloat;

end;

procedure TFormCobranza_x_lote.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormCpbte_2)) THEN
    FormCpbte_2    := TFormCpbte_2.Create(self);
  FormCpbte_2.DatoNew   := CDSFacturasID_FC.AsString;
  FormCpbte_2.TipoCpbte := CDSFacturasTIPOCPBTE.Value;
  FormCpbte_2.Recuperar.Execute;
  FormCpbte_2.Show;

end;

procedure TFormCobranza_x_lote.dbcComprobanteEnter(Sender: TObject);
begin
  inherited;
  QComprob.Close;
  QComprob.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  QComprob.Open;
end;

procedure TFormCobranza_x_lote.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  dbcComprobante.KeyValue:=-1;
end;

procedure TFormCobranza_x_lote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormCobranza_x_lote.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  CDSSucursal.Close;
  CDSSucursal.Open;
  dbcSucursal.KeyValue:=SucursalPorDefecto;

  QComprob.Close;
  QComprob.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  QComprob.Open;
  QComprob.First;
  dbcComprobante.KeyValue:=QComprobID_COMPROBANTE.Value;

  QCajas.Close;
  QCajas.Open;

  dbcCtas.KeyValue:=CajaPorDefecto;

end;

procedure TFormCobranza_x_lote.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCobranza_x_lote:=nil;
end;

procedure TFormCobranza_x_lote.FormResize(Sender: TObject);
begin
  inherited;
  if FormCobranza_x_lote<>nil then
    if FormCobranza_x_lote.Width<>1170 then
      FormCobranza_x_lote.Width:=1170;

end;

procedure TFormCobranza_x_lote.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));

  Desde.Date    := Date;
  Hasta.Date    := Date;
  edFechaRc.Date:= Date;
  Buscar.Execute;


end;

procedure TFormCobranza_x_lote.GenerarReciboExecute(Sender: TObject);
begin
  inherited;
  if dbcSucursal.KeyValue<=0 then
    raise Exception.Create('No hay Sucursal seleccionada...');
  if dbcComprobante.KeyValue<=0 then
    raise Exception.Create('No hay Comprobante seleccionado...');
  if dbcCtas.KeyValue<=0 then
    raise Exception.Create('No hay Caja seleccionada...');

  MemoryData.Close;
  MemoryData.Open;
  MemoryData.First;
  while Not(MemoryData.Eof) do
    begin
      MemoryData.Delete;
      MemoryData.Next;
    end;
  MemoryData.EmptyTable;
  dbgRecibos.Refresh;
  if Not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
  FormRecibo_2.Show;
  Application.ProcessMessages;
  FormRecibo_2.CajaPorDefecto:=dbcCtas.KeyValue;

  CDSFacturas.First;
  while Not(CDSFacturas.Eof) do
    begin
      if (CDSFacturasSALDO.AsFloat>0.01) and (CDSFacturasCOBRAR.Value=True) then
        begin
          formRecibo_2.Agregar.Execute;
          DatosRecibos.CDSReciboFECHA.AsDateTime:=edFechaRc.Date;
          DatosRecibos.CDSReciboSUCURSALSetText(DatosRecibos.CDSReciboSUCURSAL,IntToStr(dbcSucursal.KeyValue));
          DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
          FormRecibo_2.CajaPorDefecto:=dbcCtas.KeyValue;
          DatosRecibos.CDSReciboCODIGOSetText(DatosRecibos.CDSReciboCODIGO,CDSFacturasCODIGO.ASString);
          DatosRecibos.CDSReciboTOTALSetText(DatosRecibos.CDSReciboTOTAL,CDSFacturasSALDO.AsString);

          if FormRecibo_2.dbgMovCC.DataSource.DataSet.Locate('id_cpbte',CDSFacturasID_FC.AsString,[]) Then
            FormRecibo_2.dbgAplicacionesDragDrop(Sender,FormRecibo_2.dbgMovCC,10,10);

          FormRecibo_2.Confirma.Execute;
          if Not(FormRecibo_2.DSBase.DataSet.IsEmpty) then
            begin
              MemoryData.Append;
              MemoryDataID_RC.Value     :=FormRecibo_2.DSBase.DataSet.FieldByName('ID_RC').Value;
              MemoryDataTIPOCPBTE.Value :=FormRecibo_2.DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
              MemoryDataCLASECPBTE.Value:=FormRecibo_2.DSBase.DataSet.FieldByName('CLASECPBTE').Value;
              MemoryDataNROCPBTE.Value  :=FormRecibo_2.DSBase.DataSet.FieldByName('NROCPBTE').Value;
              MemoryDataCODIGO.Value    :=FormRecibo_2.DSBase.DataSet.FieldByName('CODIGO').Value;
              MemoryDataTOTAL.AsFloat   :=FormRecibo_2.DSBase.DataSet.FieldByName('TOTAL').AsFloat;
              MemoryDataNOMBRE.Value    :=FormRecibo_2.DSBase.DataSet.FieldByName('NOMBRE').Value;
              MemoryData.Post;
              Application.ProcessMessages;
            end;
        end;
     CDSFacturas.Next;
    end;
  FormRecibo_2.Close;
  FreeAndNil(FormRecibo_2);
  Buscar.Execute;

end;

procedure TFormCobranza_x_lote.spSelectClick(Sender: TObject);
begin
  inherited;
  CDSFacturas.First;
  CDSFacturas.DisableControls;
  While Not(CDSFacturas.Eof) do
    begin
      CDSFacturas.Edit;
      CDSFacturasCOBRAR.Value:= True;
      CDSFacturas.Next;
    end;
  CDSFacturas.First;
  CDSFacturas.EnableControls;
end;

procedure TFormCobranza_x_lote.spunselectClick(Sender: TObject);
begin
  inherited;
  CDSFacturas.First;
  CDSFacturas.DisableControls;
  While Not(CDSFacturas.Eof) do
    begin
      CDSFacturas.Edit;
      CDSFacturasCOBRAR.Value:= False;
      CDSFacturas.Next;
    end;
  CDSFacturas.First;
  CDSFacturas.EnableControls;
end;

procedure TFormCobranza_x_lote.dbgRecibosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
  FormRecibo_2.DatoNew   := MemoryDataID_RC.ASString;
  FormRecibo_2.TipoCpbte := MemoryDataTIPOCPBTE.AsString;
  FormRecibo_2.Recuperar.Execute;
  FormRecibo_2.BringToFront;
end;

procedure TFormCobranza_x_lote.UpDown1Click(Sender: TObject;
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
      Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
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
  BUSCAR.Execute;
end;

end.
