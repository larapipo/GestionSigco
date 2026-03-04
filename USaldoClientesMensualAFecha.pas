unit USaldoClientesMensualAFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,   Provider, DB, DBClient,   StdCtrls, Mask,
  JvExMask, JvToolEdit, SqlExpr,
  frxExportText, frxExportPDF, DataExport, DataToXLS, frxExportRTF, frxClass,
  frxExportXLS, frxDBSet, JvExDBGrids, JvDBGrid, Grids, DBGrids, JvExControls,
  JvDBLookup, JvLabel, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvDBControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinBlack,
  cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink,
  JvExExtCtrls, JvExtComponent, JvRollOut, Menus, DBXCommon,
  dxSkinsDefaultPainters, System.Actions, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage,
  Data.FMTBcd, IBGenerator, frxExportCSV,VirtualUI_SDK, CompBuscador, JvThread,
  Data.DBXInterBase, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.IB, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Comp.UI, AdvGroupBox, AdvOfficeButtons,
  FireDAC.Phys.IBDef, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormSaldoClientesAlDia = class(TFormABMBase)
    DSFiltroCab: TDataSource;
    DSFiltroDet: TDataSource;
    dbcGrupo: TJvDBLookupCombo;
    CDSSaldos: TClientDataSet;
    DSPSaldos: TDataSetProvider;
    DSSaldos: TDataSource;
    frDBSaldos: TfrxDBDataset;
    frSaldos: TfrxReport;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    frxDBEmpresa: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    cbEstado: TComboBox;
    XLSSaldos: TDataToXLS;
    SaveDialog: TSaveDialog;
    ExportarXLS: TAction;
    BitBtn4: TBitBtn;
    dbcVendedor: TJvDBLookupCombo;
    dbcZona: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    frxPDFExport1: TfrxPDFExport;
    ibgId: TIBGenerator;
    Hasta: TJvDateEdit;
    RxLabel10: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel7: TJvLabel;
    CDSSaldosCODIGO: TStringField;
    CDSSaldosNOMBRE: TStringField;
    CDSSaldosTOTAL: TFloatField;
    CDSSaldosSALDO: TFloatField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    DSVendedores: TDataSource;
    DSPVendedor: TDataSetProvider;
    CDSVendedor: TClientDataSet;
    CDSVendedorCODIGO: TStringField;
    CDSVendedorNOMBRE: TStringField;
    DSZonas: TDataSource;
    DSPZona: TDataSetProvider;
    CDSZona: TClientDataSet;
    CDSZonaID_ZONA: TIntegerField;
    CDSZonaDETALLE: TStringField;
    btBorrarTmp: TBitBtn;
    PopupMenu1: TPopupMenu;
    jvCpbte: TJvRollOut;
    dbgGrupo: TDBGrid;
    JvThread: TJvThread;
    JvThreadTemp: TJvThread;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MUYVENCIDO: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO90: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO60: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO30: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ANTICIPOS: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTEULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    DataToXLS1: TDataToXLS;
    QFiltroCab: TFDQuery;
    QFiltroCabID: TIntegerField;
    QFiltroCabDETALLE: TStringField;
    QFiltroCabGRUPO: TSmallintField;
    QFiltroDet: TFDQuery;
    QFiltroDetID: TIntegerField;
    QFiltroDetID_CAB: TIntegerField;
    QFiltroDetID_CPBTE: TIntegerField;
    QFiltroDetSUCURSAL: TIntegerField;
    QFiltroDetMUESTRACOMPROBANTE: TStringField;
    QFiltroDetMUESTRATIPO: TStringField;
    QFiltroDetMUESTRACLASE: TStringField;
    QFiltroDetMUESTRASUC: TStringField;
    QArmaDatosFiltrados: TFDQuery;
    QSaldos: TFDQuery;
    CDSSaldosMUYVENCIDO: TFloatField;
    CDSSaldosVENCIDO90: TFloatField;
    CDSSaldosVENCIDO60: TFloatField;
    CDSSaldosVENCIDO30: TFloatField;
    CDSSaldosANTICIPOS: TFloatField;
    CDSSaldosIMPORTEULTIMOPAGO: TFloatField;
    FDConnThreads: TFDConnection;
    spAplicarMov: TFDStoredProc;
    spGeneraMov: TFDStoredProc;
    spBorrarTemporales: TFDStoredProc;
    chFiltro: TAdvOfficeCheckBox;
    rgFecha: TAdvOfficeRadioGroup;
    CDSSaldosULTIMOPAGO: TSQLTimeStampField;
    dbcCategorias: TJvDBLookupCombo;
    JvLabel1: TJvLabel;
    QCategorias: TFDQuery;
    QCategoriasID: TIntegerField;
    QCategoriasDETALLE: TStringField;
    QCategoriasHABILITADA: TStringField;
    DSCategorias: TDataSource;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbcGrupoChange(Sender: TObject);
    procedure chFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure btBorrarTmpClick(Sender: TObject);
    procedure JvThreadExecute(Sender: TObject; Params: Pointer);
    procedure JvThreadTempExecute(Sender: TObject; Params: Pointer);
    procedure DSBaseStateChange(Sender: TObject);
    procedure JvThreadFinish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mascara,Condiciones:String;
    desde1,desde2,desde3:TDateTime;
    procedure ArmarCondiciones;
    procedure GenerarConsulta;
    procedure Pantalla;
    procedure Pantalla_0;
    procedure Pantalla_1;
    procedure Pantalla_2;
    procedure Pantalla_3;
    procedure Pantalla_4;
    procedure Pantalla_5;
    Procedure Pantalla_Titulos;
    Procedure Pantalla_Final;

    procedure BorrarTemporales;
  end;

var
  FormSaldoClientesAlDia: TFormSaldoClientesAlDia;
  ID_MovTemporales:Integer;

implementation

uses DMBuscadoresForm,UDMain_FD;

{$R *.dfm}

procedure TFormSaldoClientesAlDia.Pantalla_Final;
begin
   btBuscar.Enabled   :=True;
   ExportarXLS.Enabled:=True;
   btSalir.Enabled    :=True;
   Imprimir.Enabled   :=True;
end;

procedure TFormSaldoClientesAlDia.Pantalla_Titulos;
begin
//  CDSSaldosVENCIDO30.DisplayLabel := meses[m];
//  if m=2 Then
//    begin
//      CDSSaldosVENCIDO60.DisplayLabel:=meses[1];
//      CDSSaldosVENCIDO90.DisplayLabel:=meses[12];
//    end
//  else
//    if m=1 Then
//      begin
//        CDSSaldosVENCIDO60.DisplayLabel:=meses[12];
//        CDSSaldosVENCIDO90.DisplayLabel:=meses[11];
//      end
//    else
//      begin
//        CDSSaldosVENCIDO60.DisplayLabel:=meses[m-2];
//        CDSSaldosVENCIDO90.DisplayLabel:=meses[m-1];
//      end;
end;

procedure TFormSaldoClientesAlDia.Pantalla;
begin
  sbEstado.SimpleText:='.. ';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.Pantalla_0;
begin
  sbEstado.SimpleText:='Borrando Temporales...';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.Pantalla_1;
begin
  sbEstado.SimpleText:='Generando Consulta....';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.Pantalla_2;
begin
  sbEstado.SimpleText:='Armando tabla de aplicaciones....';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.Pantalla_3;
begin
  sbEstado.SimpleText:='Armando tabla de Mov a Cta....';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.Pantalla_4;
begin
  sbEstado.SimpleText:='Aplicando movimientos en la cta.cte....';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.Pantalla_5;
begin
  sbEstado.SimpleText:='Abriendo la Consulta de la Cta.Cte....';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.BorrarTemporales;
begin
  FDConnThreads.StartTransaction;
  try
    spBorrarTemporales.Close;
    spBorrarTemporales.ParamByName('id').Value:= -1;
    spBorrarTemporales.ExecProc;
    spBorrarTemporales.Close;
    FDConnThreads.Commit;
  except
    FDConnThreads.Rollback;
    //ShowMessage('No se pudo borrar los temporales...');
  end;
end;

procedure TFormSaldoClientesAlDia.GenerarConsulta;
var DBXtTasas:TDBXTransaction;
d,m,a:word;
I:Integer;
const
  meses: array[1..12] of string =('Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');

begin
  JvThread.Synchronize(Pantalla_0);
  BorrarTemporales;
  FDConnThreads.StartTransaction;
  try
    JvThread.Synchronize(Pantalla_1);
    spGeneraMov.Close;
    spGeneraMov.ParamByName('p_id').Value      :=ID_MovTemporales;
    spGeneraMov.ParamByName('p_sucursal').Value:=StrToInt( dbcSucursal.Value);
    spGeneraMov.ParamByName('p_zona').Value    :=StrToInt( dbcZona.Value);
    spGeneraMov.ParamByName('p_vendedor').Value:=dbcVendedor.Value;
    spGeneraMov.ParamByName('p_cobrador').Value:='******';//dbcVendedor.Value;
    if cbEstado.ItemIndex=0 Then
      spGeneraMov.ParamByName('p_activo').Value  := '*'
    else
      if cbEstado.ItemIndex=1 Then
        spGeneraMov.ParamByName('p_activo').Value  := 'S'
      else
        if cbEstado.ItemIndex=2 Then
          spGeneraMov.ParamByName('p_activo').Value  := 'N'
        else
          if cbEstado.ItemIndex=3 Then
            spGeneraMov.ParamByName('p_activo').Value  := 'G'
          else
            if cbEstado.ItemIndex=4 Then
              spGeneraMov.ParamByName('p_activo').Value  := 'I';
    spGeneraMov.ParamByName('p_categoria').Value := dbcCategorias.KeyValue;// -1;
    spGeneraMov.ParamByName('p_CPOSTAL').Value   := '********';

    spGeneraMov.ExecProc;
    spGeneraMov.Close;

    QArmaDatosFiltrados.Close;

    Condiciones:='';
    if chFiltro.Checked then
      ArmarCondiciones;

    QArmaDatosFiltrados.Close;
    QArmaDatosFiltrados.SQL.Clear;
    if rgFecha.ItemIndex=0 then
      QArmaDatosFiltrados.SQL.Text:='insert into movccvta_temporal_filtrada '+
                             'select m.* from movccvta_temporal m '+
                             'WHERE M.fechavto<= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date) +''''+' and '+
                             'm.tipocpbte in (''FC'',''ND'',''AJ'',''XR'') and '+
                             'm.haber=0 and  m.id ='+IntToStr(ID_MovTemporales)+
                              Condiciones
    else
      if rgFecha.ItemIndex=1 then
         QArmaDatosFiltrados.SQL.Text:='insert into movccvta_temporal_filtrada '+
                             'select m.* from movccvta_temporal m '+
                             'WHERE M.fechavta<= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date) +''''+' and '+
                             'm.tipocpbte in (''FC'',''ND'',''AJ'',''XR'') and '+
                             'm.haber=0 and  m.id ='+IntToStr(ID_MovTemporales)+
                              Condiciones;
    QArmaDatosFiltrados.ExecSQL;
    QArmaDatosFiltrados.Close;

    JvThread.Synchronize(Pantalla_2);
    QArmaDatosFiltrados.SQL.Clear;
    QArmaDatosFiltrados.SQL.Text:='insert into movaplicaccvta_temporal_filtr '+
                             'select m.* from movaplicaccvta_temporal m '+
                             'WHERE M.fecha<= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+' and '+
                             'tipocpbte in (''NC'',''AJ'',''RC'') and m.id ='+IntToStr(ID_MovTemporales)+
                              Condiciones;
    QArmaDatosFiltrados.ExecSQL;
    QArmaDatosFiltrados.Close;

    JvThread.Synchronize(Pantalla_3);

    QArmaDatosFiltrados.SQL.Clear;
    QArmaDatosFiltrados.SQL.Text:='insert into movactaccvta_temporal_filtrada '+
                             'select m.* from movactaccvta_temporal m '+
                             'WHERE M.fecha <= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+' and '+
                             'tipocpbte in (''NC'',''AJ'',''RC'') and m.id ='+IntToStr(ID_MovTemporales)+
                              Condiciones;

    QArmaDatosFiltrados.ExecSQL;
    QArmaDatosFiltrados.Close;

    JvThread.Synchronize(Pantalla_4);

    spAplicarMov.close;
    spAplicarMov.ParamByName('hasta').Value:=Hasta.Date;
    spAplicarMov.ExecProc;
    spAplicarMov.Close;

    FDConnThreads.Commit;
  except
    FDConnThreads.Rollback;
   // ShowMessage('Fallo la consulta');
  end;

  JvThread.Synchronize(Pantalla);

  DecodeDate(Date,a,m,d);
  desde1:=EncodeDate(a,m,1);
  desde2:=IncMonth(Desde1,-1);// encodedate(a,m-1,1);
  desde3:=IncMonth(Desde1,-2); // encodedate(a,m-2,1);

  JvThread.Synchronize(Pantalla_5);

//  CDSSaldos.Close;
//  CDSSaldos.Params.ParamByName('desde1').Value:=desde1;
//  CDSSaldos.Params.ParamByName('desde2').Value:=desde2;
//  CDSSaldos.Params.ParamByName('desde3').Value:=desde3;
//  CDSSaldos.Params.ParamByName('Suc').AsInteger     := StrToInt(dbcSucursal.KeyValue);
//  CDSSaldos.Params.ParamByName('Vendedor').AsString := dbcVendedor.KeyValue;
//  CDSSaldos.Params.ParamByName('zona').AsInteger    := StrToInt(dbcZona.KeyValue);
//  CDSSaldos.Open;

  Mascara:=',0.00;,0.00;-';
//  For i:=0 to CDSSaldos.FieldCount-1 do
//    begin
//      if (CDSSaldos.Fields[i].DataType=ftBCD) or (CDSSaldos.Fields[i].DataType=ftFMTBcd) Then
//        TFMTBCDField(CDSSaldos.fields[i]).DisplayFormat:=Mascara
//      else
//          if (CDSSaldos.Fields[i].DataType=ftFloat) Then
//            TFloatField(CDSSaldos.fields[i]).DisplayFormat:=Mascara;
//    end;

//  CDSSaldosVENCIDO30.DisplayLabel := meses[m];
//
//  if m=2 Then
//    begin
//      CDSSaldosVENCIDO60.DisplayLabel:=meses[1];
//      CDSSaldosVENCIDO90.DisplayLabel:=meses[12];
//    end
//  else
//    if m=1 Then
//      begin
//        CDSSaldosVENCIDO60.DisplayLabel:=meses[12];
//        CDSSaldosVENCIDO90.DisplayLabel:=meses[11];
//      end
//    else
//      begin
//        CDSSaldosVENCIDO60.DisplayLabel:=meses[m-2];
//        CDSSaldosVENCIDO90.DisplayLabel:=meses[m-1];
//      end;

  JvThread.Synchronize(Pantalla_Final);



end;

procedure TFormSaldoClientesAlDia.ArmarCondiciones;
begin
  Condiciones:='';
  if Not(QFiltroDet.IsEmpty) then
  begin
    QFiltroDet.First;
    while not(QFiltroDet.Eof) do
      begin
        if Condiciones='' Then
          condiciones:='(m.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') '
        else
          condiciones:=Condiciones+' or (m.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') ';
        QFiltroDet.Next;
    end;
    Condiciones:=' and ('+condiciones+')';
  end;
end;

procedure TFormSaldoClientesAlDia.btBorrarTmpClick(Sender: TObject);
begin
  inherited;
  JvThreadTemp.FreeOnTerminate:=True;
  JvThreadTemp.Execute(self);
end;

procedure TFormSaldoClientesAlDia.BuscarExecute(Sender: TObject);
 //Titulo1,Titulo2,Titulo3:String;
 begin
// inherited;
//  Screen.Cursor:=crHourGlass;
  if CDSSaldos.Active then
    CDSSaldos.Close;
  CDSSaldos.IndexFieldNames:='';
  CDSSaldos.IndexDefs.Clear;


  ID_MovTemporales := ibgId.IncrementFD(1);

  btBuscar.Enabled    :=False;
  btSalir.Enabled     :=False;
  ExportarXLS.Enabled :=False;
  Imprimir.Enabled    :=False;

  JvThread.FreeOnTerminate:=True;
  JvThread.Execute(self);
end;

procedure TFormSaldoClientesAlDia.chFiltroClick(Sender: TObject);
begin
  inherited;
 if chFiltro.Checked=True then
    begin
      dbcGrupo.Color:=clWhite;
      dbgGrupo.Color:=clWhite;
      dbcGrupo.Enabled:=True;
      dbgGrupo.Enabled:=True;

    end
  else
  if chFiltro.Checked=False then
    begin
      dbcGrupo.Color:=clBtnFace;
      dbgGrupo.Color:=clBtnFace;
      dbcGrupo.Enabled:=False;
      dbgGrupo.Enabled:=False;
    end;
  jvCpbte.Visible:=chFiltro.Checked;
end;

procedure TFormSaldoClientesAlDia.dbcGrupoChange(Sender: TObject);
begin
  inherited;
  QFiltroDet.Close;
  QFiltroDet.Params.ParamByName('id').Value:=dbcGrupo.KeyValue;
  QFiltroDet.Open;
end;


procedure TFormSaldoClientesAlDia.DSBaseStateChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFormSaldoClientesAlDia.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog.FileName  :='SaldosMensual';
  SaveDialog.DefaultExt:='XLS';
  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if Not(CDSSaldos.IsEmpty) then
    if SaveDialog.Execute Then
      if SaveDialog.FileName<>'' Then
        begin
          XLSSaldos.SaveToFile(SaveDialog.FileName);

          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog.FileName);
        end;
end;

procedure TFormSaldoClientesAlDia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   if JvThread.Terminated=False then
    JvThread.Terminate;
  if JvThreadTemp.Terminated=False then
    JvThreadTemp.Terminate;
   if CDSSaldos.Active then
    CDSSaldos.Close;
//  if ID_MovTemporales<>-1 then
//    BorrarTemporales;
  CDSSucursal.Close;
  CDSVendedor.Close;
  CDSZona.Close;
  Action := caFree;
end;

procedure TFormSaldoClientesAlDia.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_fd.Nombre_PC;
  CDSSucursal.Open;
  CDSVendedor.Open;
  CDSZona.Open;

  FDConnThreads.Connected := False;
  FDConnThreads.Params    := DMMain_FD.fdcGestion.Params;
  FDConnThreads.Connected := True;


  cbEstado.ItemIndex := 0;
  dbcSucursal.LookupSource.DataSet.First;
  dbcVendedor.LookupSource.DataSet.First;
  dbcZona.LookupSource.DataSet.First;
  ID_MovTemporales   := -1;
  Hasta.Date         := Date;

  QFiltroCab.Open;
  QFiltroCab.First;
  QCategorias.Close;
  QCategorias.Open;

end;

procedure TFormSaldoClientesAlDia.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSaldoClientesAlDia:=nil;
end;

procedure TFormSaldoClientesAlDia.FormShow(Sender: TObject);
begin
  inherited;
  chFiltro.Checked:=False;
  dbcGrupo.Color  :=clBtnFace;
  dbgGrupo.Color  :=clBtnFace;
  dbcGrupo.Enabled:=False;
  dbgGrupo.Enabled:=False;
end;

procedure TFormSaldoClientesAlDia.ImprimirExecute(Sender: TObject);
begin
//  inherited;
  CDSEmpresa.Close;
  CDSEmpresa.Open;
  frSaldos.PrintOptions.Printer:=PrNomListados;
  frSaldos.SelectPrinter;
  frSaldos.LoadFromFile(DMMain_FD.PathReportesLst+'\SaldosMensuales_aldia.fr3');
 // frSaldos.Variables['Mascara']:=''''+Mascara+'''';
  frSaldos.Variables['Hasta']    :=''''+DateToStr(Hasta.Date)+'''';
  frSaldos.Variables['Mes1']     :=''''+cxGrid1DBTableView1VENCIDO90.Caption+'''';
  frSaldos.Variables['Mes2']     :=''''+cxGrid1DBTableView1VENCIDO60.Caption+'''';
  frSaldos.Variables['Mes3']     :=''''+cxGrid1DBTableView1VENCIDO30.Caption+'''';
  frSaldos.Variables['Titulo']   :='''De Clientes''';
  frSaldos.Variables['SubTitulo']:='''Vendedor: '''+''''+dbcVendedor.Text+''''+'''    Zona: '''+''''+dbcZona.Text+'''';
  frSaldos.Variables['Sucursal'] :=''''+dbcSucursal.Text+'''';
  // frCtaCte.PrepareReport;
  frSaldos.ShowReport;
  CDSEmpresa.Close;
end;

procedure TFormSaldoClientesAlDia.JvThreadExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  GenerarConsulta;
  JvThread.Terminate;
  while JvThread.Terminated=False do
    Sleep(1);
  sbEstado.SimpleText:='Terminado ...';
  Application.ProcessMessages;
end;

procedure TFormSaldoClientesAlDia.JvThreadFinish(Sender: TObject);
begin
  inherited;
  CDSSaldos.Close;
  CDSSaldos.Params.ParamByName('desde1').Value        := desde1;
  CDSSaldos.Params.ParamByName('desde2').Value        := desde2;
  CDSSaldos.Params.ParamByName('desde3').Value        := desde3;
  CDSSaldos.Params.ParamByName('Suc').AsInteger       := StrToInt(dbcSucursal.KeyValue);
  CDSSaldos.Params.ParamByName('Vendedor').AsString   := dbcVendedor.KeyValue;
  CDSSaldos.Params.ParamByName('zona').AsInteger      := StrToInt(dbcZona.KeyValue);
  CDSSaldos.Params.ParamByName('categoria').AsInteger := dbcCategorias.KeyValue;
  CDSSaldos.Open;
end;

procedure TFormSaldoClientesAlDia.JvThreadTempExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  BorrarTemporales;
  JvThread.Terminate;
end;

procedure TFormSaldoClientesAlDia.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frSaldos.DesignReport;
end;

end.