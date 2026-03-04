unit USaldoProveedorAFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, DBXCommon, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, Provider, DBClient, JvExExtCtrls,
  JvExtComponent, JvRollOut, cxCustomPivotGrid, cxDBPivotGrid, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBLookup, Mask, JvExMask, JvToolEdit,cxExportPivotGridLink,
  IBGenerator, DataExport, DataToXLS, JvDBGridFooter, dxSkinsCore, dxSkinBlue,
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
  JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, AdvOfficeButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  dxBarBuiltInMenu, System.ImageList;

type
  TFormSaldoProveedorAlDia = class(TFormABMBase)
    RxLabel6: TJvLabel;
    Hasta: TJvDateEdit;
    RxLabel8: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel10: TJvLabel;
    dbcGrupo: TJvDBLookupCombo;
    btBorrarTmp: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    jvCpbte: TJvRollOut;
    dbgGrupo: TDBGrid;
    Panel2: TPanel;
    rgFecha: TRadioGroup;
    DSFiltroCab: TDataSource;
    CDSFiltroCab: TClientDataSet;
    DSPFiltroCab: TDataSetProvider;
    DSPFiltroDet: TDataSetProvider;
    CDSFiltroDet: TClientDataSet;
    CDSFiltroCabID: TIntegerField;
    CDSFiltroCabDETALLE: TStringField;
    CDSFiltroDetID: TIntegerField;
    CDSFiltroDetID_CAB: TIntegerField;
    CDSFiltroDetID_CPBTE: TIntegerField;
    CDSFiltroDetSUCURSAL: TIntegerField;
    CDSFiltroDetMUESTRACOMPROBANTE: TStringField;
    CDSFiltroDetMUESTRATIPO: TStringField;
    CDSFiltroDetMUESTRACLASE: TStringField;
    CDSFiltroDetMUESTRASUC: TStringField;
    DSFiltroDet: TDataSource;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    DSSucursal: TDataSource;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSaldos: TClientDataSet;
    DSSaldos: TDataSource;
    ibgId: TIBGenerator;
    DSPSaldos: TDataSetProvider;
    CDSSaldosCODIGO: TStringField;
    CDSSaldosNOMBRE: TStringField;
    CDSSaldosTOTAL: TFloatField;
    CDSSaldosSALDO: TFloatField;
    SaveDialog: TSaveDialog;
    BitBtn1: TBitBtn;
    XLSSaldos: TDataToXLS;
    CDSSaldosNOMBRECOMPLETO: TStringField;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTEULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO30: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO60: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO90: TcxGridDBColumn;
    cxGrid1DBTableView1MUYVENCIDO: TcxGridDBColumn;
    cxGrid1DBTableView1ANTICIPOS: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRECOMPLETO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QSaldos: TFDQuery;
    CDSSaldosIMPORTEULTIMOPAGO: TFloatField;
    CDSSaldosVENCIDO30: TFloatField;
    CDSSaldosVENCIDO60: TFloatField;
    CDSSaldosVENCIDO90: TFloatField;
    CDSSaldosMUYVENCIDO: TFloatField;
    CDSSaldosANTICIPOS: TFloatField;
    QFiltroC: TFDQuery;
    QFiltroD: TFDQuery;
    QArmaDatosFiltrados: TFDQuery;
    spBorrarTemporalesFD: TFDStoredProc;
    spGeneraMovFD: TFDStoredProc;
    spAplicarMovFD: TFDStoredProc;
    chFiltro: TAdvOfficeCheckBox;
    CDSSaldosULTIMOPAGO: TSQLTimeStampField;
    procedure chFiltroClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure btBorrarTmpClick(Sender: TObject);
    procedure btExportarXlSCrossClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcGrupoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSSaldosCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ID_MovTemporales:Integer;
    Mascara,Condiciones:String;
    Aux_0,Aux_1,Aux_2,Aux_3,Aux_4,Aux_5:Extended;
    procedure ArmarCondiciones;
    procedure Suma;
  end;

var
  FormSaldoProveedorAlDia: TFormSaldoProveedorAlDia;

implementation

uses DMBuscadoresForm,UDMain_FD;
{$R *.dfm}


procedure TFormSaldoProveedorAlDia.Suma;
var CDSClone:TClientDataSet;
begin
  Aux_0:=0;
  Aux_1:=0;
  Aux_2:=0;
  Aux_3:=0;
  Aux_4:=0;
  Aux_5:=0;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSSaldos,True);
  CDSClone.First;
  while Not(CDSclone.Eof) do
    begin
      Aux_0:=Aux_0+CDSClone.FieldByName('VENCIDO30').AsFLoat;
      Aux_1:=Aux_1+CDSClone.FieldByName('VENCIDO60').AsFLoat;
      Aux_2:=Aux_2+CDSClone.FieldByName('VENCIDO90').AsFLoat;
      Aux_3:=Aux_3+CDSClone.FieldByName('MUYVENCIDO').AsFLoat;
      Aux_4:=Aux_4+CDSClone.FieldByName('TOTAL').AsFLoat;
      Aux_5:=Aux_5+CDSClone.FieldByName('ANTICIPOS').AsFLoat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormSaldoProveedorAlDia.ArmarCondiciones;
begin
  Condiciones:='';
  if Not(CDSFiltroDet.IsEmpty) then
  begin
    CDSFiltroDet.First;
    while not(CDSFiltroDet.Eof) do
      begin
        if Condiciones='' Then
          condiciones:='(m.id_comprobante='+''+CDSFiltroDetID_CPBTE.AsString+''+') '
        else
          condiciones:=Condiciones+' or (m.id_comprobante='+''+CDSFiltroDetID_CPBTE.AsString+''+') ';
        CDSFiltroDet.Next;
    end;
    Condiciones:=' and ('+condiciones+')';
  end;
end;


procedure TFormSaldoProveedorAlDia.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if PageControl1.ActivePageIndex=0 then
    begin
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName  :='Saldos';

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              XLSSaldos.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
              XLSSaldos.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
    end
  else
    if PageControl1.ActivePageIndex=1 then
      begin
       IF NOT (CDSSaldos.IsEmpty) THEN
         BEGIN
           SaveDialog.FileName:='Movimientos';
           SaveDialog.DefaultExt:='XLS';
           if SaveDialog.Execute Then
             cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid1);

           if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
         END
       ELSE
         ShowMessage('No hay datos visibles');
      end;
end;

procedure TFormSaldoProveedorAlDia.btBorrarTmpClick(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spBorrarTemporalesFD.Close;
    spBorrarTemporalesFD.ParamByName('id').Value:= -1;
    spBorrarTemporalesFD.ExecProc;
    spBorrarTemporalesFD.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo borrar los temporales...');
  end;
end;

procedure TFormSaldoProveedorAlDia.btExportarXlSCrossClick(Sender: TObject);
begin
  inherited;
  IF NOT (CDSSaldos.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='Movimientos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormSaldoProveedorAlDia.BuscarExecute(Sender: TObject);
var  desde1,desde2,desde3:TDateTime;
 d,m,a:word;
 I:Integer;
 //Titulo1,Titulo2,Titulo3:String;

 const
  meses: array[1..12] of string =('Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');

 begin
 // inherited;
  Screen.Cursor:=crHourGlass;
  if CDSSaldos.Active then
    CDSSaldos.Close;
  CDSSaldos.IndexFieldNames:='';
  CDSSaldos.IndexDefs.Clear;  

  sbEstado.SimpleText:='Limpiando tabla Temporal....';
  Application.ProcessMessages;
 // Sleep(1);
  if ( ID_MovTemporales<>-1 )then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spBorrarTemporalesFD.Close;
        spBorrarTemporalesFD.ParamByName('id').Value:=ID_MovTemporales;
        spBorrarTemporalesFD.ExecProc;
        spBorrarTemporalesFD.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Fallo la la limpieza...');
      end;
      spBorrarTemporalesFD.Close;
    end;
  // busco el el ultimo id de movimientos temporales de cc

  ID_MovTemporales:=ibgId.IncrementFD(1);

  sbEstado.SimpleText:='Preparando Tabla de Consulta....';
  Application.ProcessMessages;

  DMMain_FD.fdcGestion.StartTransaction;
  try
    spGeneraMovFD.Close;
    spGeneraMovFD.ParamByName('p_id').Value   :=ID_MovTemporales;
    spGeneraMovFD.ParamByName('p_tipo').Value :='*';
    spGeneraMovFD.ExecProc;
    spGeneraMovFD.Close;

  {  este query es del componentes  QArmaDatosFiltrados,  lo guardo por las dudas
    select  m.* from movccvta_temporal m
      WHERE M.fechavto<=:hasta and (m.haber=0) and tipocpbte in ('FC','ND','AJ','XR') and m.id=:id
   }
    QArmaDatosFiltrados.Close;

    Condiciones:='';
    if chFiltro.Checked then
      ArmarCondiciones;

    sbEstado.SimpleText:='Generando Consulta....';
    //Sleep(1);
    Application.ProcessMessages;
   // esto era de prueba ShowMessage(FormatDateTime('mm/dd/yyyy',Hasta.Date));
    QArmaDatosFiltrados.Close;
    QArmaDatosFiltrados.SQL.Clear;
    if rgFecha.ItemIndex=0 then
      QArmaDatosFiltrados.SQL.Text:='insert into movcccompra_temp_filtrada '+
                             'select m.* from movcccompra_temporal m '+
                             'WHERE M.fechavto<= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date) +''''+' and '+
                             'm.tipocpbte in (''FC'',''ND'',''AJ'',''XP'') and '+
                             'm.debe=0 and  m.id ='+IntToStr(ID_MovTemporales)+
                              Condiciones
    else
      if rgFecha.ItemIndex=1 then
         QArmaDatosFiltrados.SQL.Text:='insert into movcccompra_temp_filtrada '+
                             'select m.* from movcccompra_temporal m '+
                             'WHERE M.fechaCompra<= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date) +''''+' and '+
                             'm.tipocpbte in (''FC'',''ND'',''AJ'',''XP'') and '+
                             'm.debe=0 and  m.id ='+IntToStr(ID_MovTemporales)+
                              Condiciones;
   // QArmaDatosFiltrados.ParamByName('hasta').Value :=Hasta.Date;

    QArmaDatosFiltrados.ExecSQL;
    QArmaDatosFiltrados.Close;

    sbEstado.SimpleText:='Armando tabla de aplicaciones....';
    Application.ProcessMessages;
   // Sleep(1);

    QArmaDatosFiltrados.SQL.Clear;
    QArmaDatosFiltrados.SQL.Text:='insert into MOVAPLICACCCOMP_TMP_FILTR '+
                                  'select m.* from MOVAPLICACCCOMP_TMP m '+
                                  'WHERE M.fecha<= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+' and '+
                                  'tipocpbte in (''NC'',''AJ'',''OP'') and m.id ='+IntToStr(ID_MovTemporales)+
                                  Condiciones;
  //  QArmaDatosFiltrados.ParamByName('hasta').Value :=Hasta.Date;

    QArmaDatosFiltrados.ExecSQL;
    QArmaDatosFiltrados.Close;

    sbEstado.SimpleText:='Armando tabla de Mov a Cta....';
    Application.ProcessMessages;

    QArmaDatosFiltrados.SQL.Clear;
    QArmaDatosFiltrados.SQL.Text:='insert into MOVACTACCCOMPRA_TEMP_FILTRADA   '+
                                  'select m.* from MOVACTACCCOMPRA_TEMPORAL m '+
                                  'WHERE M.fecha <= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+' and '+
                                  'tipocpbte in (''NC'',''AJ'',''OP'') and m.id ='+IntToStr(ID_MovTemporales)+
                                   Condiciones;

//    QArmaDatosFiltrados.SQL.Text:='insert into MOVACTACCCOMPRA_TEMPORAL '+
//                             'select m.* from MOVACTACCCOMPRA_TEMP_FILTRADA m '+
//                             'WHERE M.fecha <= '+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+' and '+
//                             'tipocpbte in (''NC'',''AJ'',''OP'') and m.id ='+IntToStr(ID_MovTemporales)+
//                              Condiciones;

    QArmaDatosFiltrados.ExecSQL;
    QArmaDatosFiltrados.Close;

    sbEstado.SimpleText:='Aplicando mov en la cta.cte....';
    Application.ProcessMessages;

    spAplicarMovFD.close;
    spAplicarMovFD.ParamByName('hasta').Value:=Hasta.Date;
    spAplicarMovFD.ExecProc;
    spAplicarMovFD.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Fallo la consulta');
  end;

  sbEstado.SimpleText:='Abriendo la consulta...';
  Application.ProcessMessages;

  DecodeDate(Hasta.Date,a,m,d);
  desde1:=EncodeDate(a,m,1);
  if m=2 Then
    begin
      desde2:=encodedate(a,1,1);
      desde3:=encodedate(a-1,12,1);
    end
  else
    if m=1 Then
      begin
        desde2:=encodedate(a-1,12,1);
        desde3:=encodedate(a-1,11,1);
      end
    else
      begin
        desde2:=encodedate(a,m-1,1);
        desde3:=encodedate(a,m-2,1);
      end;
    CDSSaldos.Close;
    CDSSaldos.Params.ParamByName('desde1').Value:=desde1;
    CDSSaldos.Params.ParamByName('desde2').Value:=desde2;
    CDSSaldos.Params.ParamByName('desde3').Value:=desde3;
    CDSSaldos.Params.ParamByName('Suc').AsInteger     := StrToInt(dbcSucursal.KeyValue);
    CDSSaldos.Open;

    Screen.Cursor:=crDefault;
    suma;

 
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  //Sleep(1);

end;

procedure TFormSaldoProveedorAlDia.CDSSaldosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSSaldosNOMBRECOMPLETO.Value:=CDSSaldosCODIGO.Value+'-'+CDSSaldosNOMBRE.Value;

end;

procedure TFormSaldoProveedorAlDia.chFiltroClick(Sender: TObject);
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

procedure TFormSaldoProveedorAlDia.dbcGrupoChange(Sender: TObject);
begin
  inherited;
  CDSFiltroDet.Close;
  CDSFiltroDet.Params.ParamByName('id').Value:=dbcGrupo.KeyValue;
  CDSFiltroDet.Open;
end;


procedure TFormSaldoProveedorAlDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 if CDSSaldos.Active then
    CDSSaldos.Close;
  if ID_MovTemporales<>-1 then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spBorrarTemporalesFD.Close;
        spBorrarTemporalesFD.ParamByName('id').Value:=ID_MovTemporales;
        spBorrarTemporalesFD.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se limpiaron las tablas temporales...');
      end;
      spBorrarTemporalesFD.Close;

    end;
  CDSSucursal.Close;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaDeudaProveedores');
  //*************************************************************
  Action := caFree;
end;


procedure TFormSaldoProveedorAlDia.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Open;
  dbcSucursal.LookupSource.DataSet.First;
  ID_MovTemporales:= -1;
  Hasta.Date:=Date;
  PageControl1.ActivePageIndex:=0;
  CDSFiltroCab.Open;
  CDSFiltroCab.First;
end;

procedure TFormSaldoProveedorAlDia.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSaldoProveedorAlDia:=nil;
end;

procedure TFormSaldoProveedorAlDia.FormShow(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=False;
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaDeudaProveedores');
end;



procedure TFormSaldoProveedorAlDia.Label1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

end.
