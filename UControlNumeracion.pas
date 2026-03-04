unit UControlNumeracion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, frxDBSet, frxClass,
  DBCtrls, Provider, DBClient, FMTBcd, SqlExpr, ComCtrls, JvExControls, JvLabel,
  JvDBControls, Mask, JvExMask, JvToolEdit,DateUtils, DataExport, DataToXLS, DBXCommon,
  JvDBLookup, JvExDBGrids, JvDBGrid,VirtualUI_SDK, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, JvFormPlacement, JvComponentBase, JvAppStorage, JvAppIniStorage,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations,System.StrUtils, frCoreClasses;

type
  TFormControlNumeracion = class(TForm)
    DSFactura: TDataSource;
    Panel1: TPanel;
    edDesde: TEdit;
    edHasta: TEdit;
    mFaltantes: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btOk: TBitBtn;
    frNovedades: TfrxReport;
    frdbFacturas: TfrxDBDataset;
    btSalir: TBitBtn;
    DSSucursal: TDataSource;
    DSComprobantes: TDataSource;
    dblSucursal: TDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    pnLetraPrefijo: TPanel;
    Label1: TLabel;
    edLetra: TEdit;
    Label2: TLabel;
    edPrefijo: TEdit;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSFacturas: TClientDataSet;
    DSPFacturas: TDataSetProvider;
    CDSFacturasLETRAFAC: TStringField;
    CDSFacturasSUCFAC: TStringField;
    CDSFacturasFECHAVTA: TSQLTimeStampField;
    CDSFacturasANULADO: TStringField;
    CDSFacturasSUCURSAL: TIntegerField;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasNOMBRE: TStringField;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasNUMEROFAC: TStringField;
    stEstado: TStatusBar;
    DBText1: TDBText;
    JvDBStatusLabel1: TJvDBStatusLabel;
    Label7: TLabel;
    desde: TJvDateEdit;
    Label10: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    CheckBox1: TCheckBox;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    CDSFacturasNRO_CUIT: TStringField;
    CDSFacturasCOND_IVA: TStringField;
    CDSFacturasCAE: TStringField;
    CDSFacturasCAE_VTO: TSQLTimeStampField;
    DBText2: TDBText;
    DBText3: TDBText;
    dbLComprobantes: TJvDBLookupCombo;
    chbPorDia: TCheckBox;
    QFacturas: TFDQuery;
    CDSFacturasTOTAL: TFloatField;
    CDSFacturasNETO: TFloatField;
    CDSFacturasIVA1: TFloatField;
    CDSFacturasIVA2: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1LETRAFAC: TcxGridDBColumn;
    cxGrid1DBTableView1SUCFAC: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1ANULADO: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FC: TcxGridDBColumn;
    cxGrid1DBTableView1NUMEROFAC: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_CUIT: TcxGridDBColumn;
    cxGrid1DBTableView1COND_IVA: TcxGridDBColumn;
    cxGrid1DBTableView1CAE: TcxGridDBColumn;
    cxGrid1DBTableView1CAE_VTO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NETO: TcxGridDBColumn;
    cxGrid1DBTableView1IVA1: TcxGridDBColumn;
    cxGrid1DBTableView1IVA2: TcxGridDBColumn;
    QComprobantes: TFDQuery;
    QPrimerCpbte: TFDQuery;
    QPrimerCpbteMIN: TStringField;
    QCambiarNro: TFDQuery;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    QBorrarAplTemp: TFDQuery;
    QDesactivaTrigerDel: TFDQuery;
    QBKAplicaciones: TFDQuery;
    QActivaTrigerDel: TFDQuery;
    QRsAplicaciones: TFDQuery;
    QControlSaldoMov: TFDQuery;
    spBorraAplicaciones: TFDStoredProc;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesLETRA: TStringField;
    QComprobantesPREFIJO: TStringField;
    QComprobantesNUMERO: TStringField;
    QComprobantesNUMERARCION_PROPIA: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesDENOMINACION: TStringField;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edPrefijoExit(Sender: TObject);
    procedure edDesdeExit(Sender: TObject);
    procedure edHastaExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btSalirClick(Sender: TObject);
    procedure dblSucursalClick(Sender: TObject);
    procedure dbLComprobantesCloseUp(Sender: TObject);
    procedure CDSFacturasAfterPost(DataSet: TDataSet);
    procedure CDSFacturasNUMEROFACSetText(Sender: TField; const Text: string);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlNumeracion: TFormControlNumeracion;

implementation

USES UDMain_FD,DMBuscadoresForm, UFactura_2, UFacturaCtdo_2, UTiketVta;

{$R *.DFM}


procedure TFormControlNumeracion.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pnLetraPrefijo.BevelInner:=bvNone;
  pnLetraPrefijo.BevelOuter:=bvNone;
  pnLetraPrefijo.Enabled   :=False;
  CDSSucursal.Open;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));

  //QComprobantes.Open;
end;

procedure TFormControlNumeracion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSFacturas.close;
  Action:=cafree;
end;

procedure TFormControlNumeracion.FormDestroy(Sender: TObject);
begin
  FormControlNumeracion:=nil;
end;

procedure TFormControlNumeracion.edPrefijoExit(Sender: TObject);
begin
  edPrefijo.Text:=copy('0000',1,4-length(edPrefijo.Text))+edPrefijo.text;
  if Length(edPrefijo.Text)>4 Then edPrefijo.Clear;
end;

procedure TFormControlNumeracion.edDesdeExit(Sender: TObject);
begin
  edDesde.Text:=copy('00000000',1,8-length(edDesde.Text))+edDesde.text;
  if Length(edDesde.Text)>8 Then edDesde.Clear;
end;

procedure TFormControlNumeracion.edHastaExit(Sender: TObject);
begin
  edHasta.Text:=copy('00000000',1,8-length(edHasta.Text))+edHasta.text;
  if Length(edHasta.Text)>8 Then edHasta.Clear;
end;

procedure TFormControlNumeracion.BitBtn1Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSFacturas.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='NumerosCpbte';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormControlNumeracion.btOkClick(Sender: TObject);
var Contador:integer;
begin
  mFaltantes.Clear;
  CDSFacturas.Close;
  CDSFacturas.IndexDefs.Clear;
  CDSFacturas.IndexName:='';
  CDSFacturas.Params.ParamByName('id').AsInteger    := dbLComprobantes.KeyValue;
  CDSFacturas.Params.ParamByName('desde').AsString  := AnsiRightStr('00000000'+edDesde.Text,8);
  CDSFacturas.Params.ParamByName('hasta').AsString  := AnsiRightStr('00000000'+edHasta.Text,8);
  CDSFacturas.Open;
  if (Not(CDSFacturas.IsEmpty)) and (CDSFacturas.RecordCount>0) Then
    begin
      CDSFacturas.First;
      CDSFacturas.DisableControls;
      CONTADOR:=CDSFacturasNUMEROFAC.AsInteger;
      while not(CDSFacturas.Eof) do
      BEGIN

        if (contador>CDSFacturasNUMEROFAC.AsInteger)  then
          while (Contador>CDSFacturasNUMEROFAC.AsInteger) and (Not(CDSFacturas.Eof)) do
            begin
              mFaltantes.Lines.Add(copy('00000000',1,8-length(IntToStr(Contador)))+IntToStr(Contador));
              CDSFacturas.Next;
            end
        else
          if (contador<CDSFacturasNUMEROFAC.AsInteger) then
            while (Contador<CDSFacturasNUMEROFAC.AsInteger) do
              begin
                mFaltantes.Lines.Add(copy('00000000',1,8-length(IntToStr(Contador)))+IntToStr(Contador));
                Contador:=CDSFacturasNUMEROFAC.AsInteger;
               // Inc(contador);
              end;

        if Contador=CDSFacturasNUMEROFAC.AsInteger Then
          begin
            CDSFacturas.Next;
            Inc(Contador);
          end;

      END;
      CDSFacturas.EnableControls;
    end
  else
    showMessage('No hay datos a mostrar...');
end;

procedure TFormControlNumeracion.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF (Key = #13) and
    (NOT (ActiveControl IS TMemo)) AND
    (NOT (ActiveControl IS TDBGrid))
    THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
end;

procedure TFormControlNumeracion.FormResize(Sender: TObject);
begin
  if Width<>1050 then  Width:=1050;

end;

procedure TFormControlNumeracion.UpDown1Click(Sender: TObject;
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
    CheckBox1Click(Sender);
  //Buscar.Execute;
end;

procedure TFormControlNumeracion.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormControlNumeracion.CDSFacturasAfterPost(DataSet: TDataSet);
begin
  stEstado.SimpleText:='Verificando aplicaciones y borrando...';
  Application.ProcessMessages;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    // Borro el temporal de Aplicaciones
    QBorrarAplTemp.Close;
    QBorrarAplTemp.ExecSQL;
    QBorrarAplTemp.Close;
    // copio las aplicaciones del comprobante a la Temporal
    QBKAplicaciones.Close;
    QBKAplicaciones.ParamByName('TIPO').Value:=CDSFacturasTIPOCPBTE.Value;
    QBKAplicaciones.ParamByName('ID').Value  :=CDSFacturasID_FC.Value;
    QBKAplicaciones.ExecSQL;
    QBKAplicaciones.Close;
    // desactivo Triger de Borrado
    QDesactivaTrigerDel.Close;
    QDesactivaTrigerDel.ExecSQL;
    // borro las Aplicaciones Actuales
    spBorraAplicaciones.Close;
    spBorraAplicaciones.ParamByName('TIPO').Value:=CDSFacturasTIPOCPBTE.Value;
    spBorraAplicaciones.ParamByName('ID').Value  :=CDSFacturasID_FC.Value;
    spBorraAplicaciones.ExecProc;
    spBorraAplicaciones.Close;
    // activo Triger de Borrado
    QActivaTrigerDel.Close;
    QActivaTrigerDel.ExecSQL;
    // Actualizo el Nro
    stEstado.SimpleText:='Modificando Numero...';
    Application.ProcessMessages;

    QCambiarNro.Close;
    QCambiarNro.ParamByName('id').Value    := CDSFacturasID_FC.Value;
    QCambiarNro.ParamByName('numero').Value:= CDSFacturasNUMEROFAC.Value;
    QCambiarNro.ExecSQL();
    QCambiarNro.Close;

    // restauro las aplicaciones Originales
    QRsAplicaciones.Close;
    QRsAplicaciones.ExecSQL;
    QRsAplicaciones.Close;
    // Borro el temporal de Aplicaciones
    QBorrarAplTemp.Close;
    QBorrarAplTemp.ExecSQL;
    QBorrarAplTemp.Close;
    // Verifico saldo Mov CC
    QControlSaldoMov.Close;
    QControlSaldoMov.ParamByName('TIPO').Value:=CDSFacturasTIPOCPBTE.Value;
    QControlSaldoMov.ParamByName('ID').Value  :=CDSFacturasID_FC.Value;
    QControlSaldoMov.ExecSQL;
    QControlSaldoMov.Close;

    DMMain_FD.fdcGestion.Commit;

    Application.ProcessMessages;
  Except
    spBorraAplicaciones.Close;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Pudo cambiar el Nro de factura....!');
  end;


  stEstado.SimpleText:='';
  Application.ProcessMessages;
  //  CDSFacturas.ApplyUpdates(0);
end;

procedure TFormControlNumeracion.CDSFacturasNUMEROFACSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000000',1,8-Length(Text))+Text;
end;

procedure TFormControlNumeracion.CheckBox1Click(Sender: TObject);
var Contador:integer;
begin
  CDSFacturas.Filtered:=False;
  CDSFacturas.Filter:='FECHAVTA >= '+''''+DateToStr(desde.Date)+''''+ ' and FECHAVTA <= '+''''+DateToStr( hasta.Date)+'''';
  CDSFacturas.Filtered:=CheckBox1.Checked;
  mFaltantes.Clear;
  if CheckBox1.Checked then
    if (Not(CDSFacturas.IsEmpty)) and (CDSFacturas.RecordCount>1) Then
    begin
      CDSFacturas.First;
      CDSFacturas.DisableControls;
      CONTADOR:=CDSFacturasNUMEROFAC.AsInteger;
      while not(CDSFacturas.Eof) do
      BEGIN

        if (contador>CDSFacturasNUMEROFAC.AsInteger)  then
          while (Contador>CDSFacturasNUMEROFAC.AsInteger) do
            begin
              mFaltantes.Lines.Add(copy('00000000',1,8-length(IntToStr(Contador)))+IntToStr(Contador));
              CDSFacturas.Next;
            end
        else
          if (contador<CDSFacturasNUMEROFAC.AsInteger) then
            while (Contador<CDSFacturasNUMEROFAC.AsInteger) do
              begin
                mFaltantes.Lines.Add(copy('00000000',1,8-length(IntToStr(Contador)))+IntToStr(Contador));
                Contador:=CDSFacturasNUMEROFAC.AsInteger;
               // Inc(contador);
              end;

        if Contador=CDSFacturasNUMEROFAC.AsInteger Then
          begin
            CDSFacturas.Next;
            Inc(Contador);
          end;

      END;
      CDSFacturas.EnableControls;
    end

end;

procedure TFormControlNumeracion.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 if ((CDSFacturasTIPOCPBTE.Value='FC') or (CDSFacturasTIPOCPBTE.Value='NC')) then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=CDSFacturasID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSFacturasTIPOCPBTE.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  :=CDSFacturasID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (CDSFacturasTIPOCPBTE.Value='TK') then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta:=TFormTicketVta.Create(Self);
          FormTicketVta.DatoNew  :=CDSFacturasID_FC.AsString;
          FormTicketVta.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
      end

end;

procedure TFormControlNumeracion.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var A:Boolean;
    colIndex: integer;
    enDegas: boolean;
begin
  // Para Dibujar renglon en cxGrid
  colIndex := cxGrid1DBTableView1ANULADO.Index;
  enDegas := AviewInfo.GridRecord.Values[colIndex]='S';

  if enDegas THEN
    ACanvas.Font.Style := [fsBold,fsStrikeout]
   else
     ACanvas.Font.Style := [];
end;

// Buscar Comprobantes desde la grilla /////////////////
//procedure TFormControlNumeracion.dbgFacturasDblClick(Sender: TObject);
//begin
//  if ((CDSFacturasTIPOCPBTE.Value='FC') or (CDSFacturasTIPOCPBTE.Value='NC')) then
//    begin
//      if Not(Assigned(FormCpbte_2)) then
//        FormCpbte_2:=TFormCpbte_2.Create(Self);
//      FormCpbte_2.DatoNew  :=CDSFacturasID_FC.AsString;
//      FormCpbte_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
//      FormCpbte_2.Recuperar.Execute;
//      FormCpbte_2.Show;
//    end
//  else
//    if (CDSFacturasTIPOCPBTE.Value='FO') then
//      begin
//        if Not(Assigned(FormCpbteCtdo_2)) then
//          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
//        FormCpbteCtdo_2.DatoNew  :=CDSFacturasID_FC.AsString;
//        FormCpbteCtdo_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
//        FormCpbteCtdo_2.Recuperar.Execute;
//        FormCpbteCtdo_2.Show;
//      end
//    else
//      if (CDSFacturasTIPOCPBTE.Value='TK') then
//        begin
//          if Not(Assigned(FormTicketVta)) then
//            FormTicketVta:=TFormTicketVta.Create(Self);
//          FormTicketVta.DatoNew  :=CDSFacturasID_FC.AsString;
//          FormTicketVta.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
//          FormTicketVta.Recuperar.Execute;
//          FormTicketVta.Show;
//      end
//
//end;



procedure TFormControlNumeracion.dblSucursalClick(Sender: TObject);
begin
  QComprobantes.Close;
  QComprobantes.ParamByName('suc').Value:=dblSucursal.KeyValue;
  QComprobantes.Open;
end;

procedure TFormControlNumeracion.dbLComprobantesCloseUp(Sender: TObject);
begin
  edLetra.Text   := dbLComprobantes.LookupSource.DataSet.Fields[3].AsString;
  edPrefijo.Text := dbLComprobantes.LookupSource.DataSet.Fields[4].AsString;
  if edPrefijo.Text='' Then edPrefijo.Text:='0000';
  edHasta.Text  :=dbLComprobantes.LookupSource.DataSet.Fields[5].AsString;
  QPrimerCpbte.Close;
  QPrimerCpbte.ParamByName('letra').Value     :=dbLComprobantes.LookupSource.DataSet.Fields[3].AsString;
  QPrimerCpbte.ParamByName('prefijo').Value   :=dbLComprobantes.LookupSource.DataSet.Fields[4].AsString;
  QPrimerCpbte.ParamByName('tipo').Value      :=dbLComprobantes.LookupSource.DataSet.Fields[1].AsString;
  QPrimerCpbte.ParamByName('clase').Value     :=dbLComprobantes.LookupSource.DataSet.Fields[2].AsString;
  QPrimerCpbte.ParamByName('sucursal').Value  :=dbLComprobantes.LookupSource.DataSet.FieldByName('Sucursal').AsInteger;
  QPrimerCpbte.Open;
  if QPrimerCpbte.fields[0].AsString<>'' then
    edDesde.Text  :=QPrimerCpbte.fields[0].AsString
  else
    edDesde.Text  :='00000001';
  QPrimerCpbte.Close;

 // ShowMessage('Cierre');
end;

end.
