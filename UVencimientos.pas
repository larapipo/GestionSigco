unit UVencimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Provider, DBClient, Grids, DBGrids,
  JvFormPlacement, ImgList, ActnList, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  JvNavigationPane, JvPageList, JvExExtCtrls, JvRadioGroup,DateUtils,
  JvTFManager, JvTFGlance, JvTFMonths, JvTFGlanceTextViewer, JvTFDays, JvTFWeeks,
  Spin, DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxStyles, cxEdit, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerDBStorage, cxSchedulercxGridConnection,
  IBGenerator,dbxCommon, frxClass, frxDBSet, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxSchedulerPainter, cxSchedulerRibbonStyleEventEditor,
  cxSchedulerRecurrence, cxSchedulerTreeListBrowser, dxSkinsDefaultPainters,
  cxClasses, JvAppStorage, JvAppIniStorage, System.Actions, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2007Black,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  PlannerMonthView, DBPlannerMonthView, PlannerCal, DBPlanner, TodoList, Planner,
  Vcl.ComCtrls, JvExDBGrids, JvDBGrid, Data.SqlExpr, JvComponentBase,
  CompBuscador, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList,System.StrUtils, frCoreClasses, AdvSmoothButton;

type
  TFormVencimientos = class(TFormABMBase)
    DSPVencimeintos: TDataSetProvider;
    DSVencimientos: TDataSource;
    Inserta: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    VerVencimiento: TAction;
    ibgDetalle: TIBGenerator;
    RadioGroup1: TRadioGroup;
    frxReport1: TfrxReport;
    frMov: TfrxDBDataset;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Mensual: TTabSheet;
    DBPlannerMonthView1: TDBPlannerMonthView;
    TabSheet2: TTabSheet;
    DBMultiMonthSource1: TDBMultiMonthSource;
    DBPlanner1: TDBPlanner;
    DBAdvGrid1: TDBAdvGrid;
    QVencimientos: TFDQuery;
    chConCompras: TCheckBox;
    ToolButton2: TToolButton;
    QVencimientosID: TIntegerField;
    QVencimientosFECHA_INCIO: TSQLTimeStampField;
    QVencimientosFECHA_FINALIZACION: TSQLTimeStampField;
    QVencimientosASUNTO: TStringField;
    QVencimientosASUNTO_2: TStringField;
    QVencimientosFINALIZADO: TStringField;
    QVencimientosIMPORTE: TFloatField;
    QVencimientosID_CPBTE: TIntegerField;
    QVencimientosTIPO_CPBTE: TStringField;
    QVencimientosCLASE_CPBTE: TStringField;
    QVencimientosNROCPBTE: TStringField;
    QVencimientosESTADO: TIntegerField;
    QVencimientos2: TFDQuery;
    QVencimientos2ID: TIntegerField;
    QVencimientos2FECHA_INCIO: TSQLTimeStampField;
    QVencimientos2FECHA_FINALIZACION: TSQLTimeStampField;
    QVencimientos2ASUNTO: TStringField;
    QVencimientos2ASUNTO_2: TStringField;
    QVencimientos2IMPORTE: TFloatField;
    QVencimientos2ID_CPBTE: TIntegerField;
    QVencimientos2TIPO_CPBTE: TStringField;
    QVencimientos2CLASE_CPBTE: TStringField;
    QVencimientos2NROCPBTE: TStringField;
    QVencimientos2FINALIZADO: TStringField;
    CDSVencimientos: TClientDataSet;
    CDSVencimientosID: TIntegerField;
    CDSVencimientosFECHA_INCIO: TSQLTimeStampField;
    CDSVencimientosFECHA_FINALIZACION: TSQLTimeStampField;
    CDSVencimientosASUNTO: TStringField;
    CDSVencimientosASUNTO_2: TStringField;
    CDSVencimientosIMPORTE: TFloatField;
    CDSVencimientosID_CPBTE: TIntegerField;
    CDSVencimientosTIPO_CPBTE: TStringField;
    CDSVencimientosCLASE_CPBTE: TStringField;
    CDSVencimientosNROCPBTE: TStringField;
    CDSVencimientosFINALIZADO: TStringField;
    CDSVencimientosESTADO: TIntegerField;
    QVencimientos2ESTADO: TIntegerField;
    TabSheet3: TTabSheet;
    DBPlanner2: TDBPlanner;
    DBPlannerDia: TDBPlanner;
    DBDaySource: TDBDaySource;
    CDSVencimientosSTARTTIME: TDateTimeField;
    CDSVencimientosENDTIME: TDateTimeField;
    Memo1: TMemo;
    QVencimientosNUMERACION: TIntegerField;
    QVencimientos2NUMERACION: TIntegerField;
    CDSVencimientosNUMERACION: TIntegerField;
    procedure InsertaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure VerVencimientoExecute(Sender: TObject);
    procedure cxSchedulerDBStorage1EventModified(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
//    procedure CDSVencimientosNewRecord(DataSet: TDataSet);
//    procedure cxSchedulerDBStorage1EventDeleted(Sender: TObject;
//      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
//    procedure cxSchedulerDBStorage1EventInserted(Sender: TObject;
//      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure cxScheduler1DblClick(Sender: TObject);
    procedure dbgVencimientosDblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
//    procedure dbgVencimientosDrawColumnCell(Sender: TObject; const Rect: TRect;
//      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSVencimientosFINALIZADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBDaySource1UpdateItem(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure CDSVencimientos_oldAfterPost(DataSet: TDataSet);
    procedure CDSVencimientos_oldBeforeEdit(DataSet: TDataSet);
    procedure CDSVencimientos_oldBeforePost(DataSet: TDataSet);
    procedure DBPlannerMonthView1ItemMoving(Sender: TObject;
      APlannerItem: TPlannerItem; FromStartDate, FromEndDate, ToStartDate,
      ToEndDate: TDateTime; var Allow: Boolean);
    procedure DBPlannerMonthView1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBAdvGrid1DblClick(Sender: TObject);
    procedure DBPlannerMonthView1ItemDblClick(Sender: TObject;
      Item: TPlannerItem);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure CDSVencimientosCalcFields(DataSet: TDataSet);
    procedure DBDaySourceFieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);

  private
    { Private declarations }
  public
    { Public declarations }
    Periodo:Extended;
  end;

var
  FormVencimientos: TFormVencimientos;

implementation

uses UABMVencimientos,UDMain_FD, UCompra_2;
{$R *.dfm}

procedure TFormVencimientos.btImprimirClick(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=2 then
    begin
      if Not(CDSVencimientos.IsEmpty) then
        begin
          frxReport1.PrintOptions.Printer:=PrNomListados;
          frxReport1.SelectPrinter;
          frxReport1.LoadFromFile(DMMain_FD.PathReportesLst+'\LstVencimientos.fr3');
          frxReport1.ShowReport;
        end;
    end
  else
    if PageControl1.ActivePageIndex=0 then
      begin
        DBPlannerMonthView1.PrintOptions.Orientation:=TPrinterOrientation.poLandscape;
        DBPlannerMonthView1.Print;
      end;
end;

procedure TFormVencimientos.BuscarExecute(Sender: TObject);
var y,m,d:Word;
Fecha:TDate;
begin
  inherited;

  CDSVencimientos.Close;
 // CDSVencimientos.Params.ParamByName('Estado').Value:=-1;
  if chConCompras.Checked then
    DSPVencimeintos.DataSet:=QVencimientos2
  //  CDSVencimientos.CommandText:= 'select v.id, v.fecha_incio, v.fecha_finalizacion, v.asunto, v.asunto_2, v.finalizado, v.importe,'+
  //                              '       v.id_cpbte,v.tipo_cpbte,v.clase_cpbte,v.nrocpbte,v.estado from vencimientos v where v.estado = :estado or :estado=-1 '+
  //                              ' union '+
  //                              'select f.id_movcccompra, f.fechacompra, f.fechavto ,p.nombre, '' as asunto_2, '' as finalizado, f.saldo as importe,'+
   //                             '       f.id_cpbte,f.tipocpbte,f.clasecpbte,f.nrocpbte,'' as estado from movcccompra f '+
   //                             '  left join poveedor p on p.codigo=f.proveedor '+
   //                             'where f.tipocpbte in (''FC'',''ND'') and f.saldo>0'

  else
 //   CDSVencimientos.CommandText:='select v.id, v.fecha_incio, v.fecha_finalizacion, v.asunto, v.asunto_2, v.finalizado, v.importe,'+
  //                               'v.id_cpbte,v.tipo_cpbte,v.clase_cpbte,v.nrocpbte,v.estado from vencimientos v where v.estado=:estado or :estado=-1 ';

  DSPVencimeintos.DataSet:=QVencimientos;
  CDSVencimientos.Params.ParamByName('Estado').Value:=-1;
  CDSVencimientos.Open;
  CDSVencimientos.IndexFieldNames:='FECHA_FINALIZACION';
  CDSVencimientos.EnableControls;

  RadioGroup1.OnClick(sender);
  DecodeDate(Date,y,m,d);

//  JvTFDays1.SelAppt.SetStartEnd(Date,date,date,date);

end;

procedure TFormVencimientos.CDSVencimientos_oldAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSVencimientos.ApplyUpdates(-1);
end;

procedure TFormVencimientos.CDSVencimientos_oldBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  Periodo:=CDSVencimientosFECHA_FINALIZACION.AsDateTime-CDSVencimientosFECHA_INCIO.AsDateTime;
end;

procedure TFormVencimientos.CDSVencimientos_oldBeforePost(DataSet: TDataSet);
begin
  inherited;
  CDSVencimientosFECHA_FINALIZACION.AsDateTime:=CDSVencimientosFECHA_INCIO.AsDateTime+Periodo;
end;

procedure TFormVencimientos.CDSVencimientosCalcFields(DataSet: TDataSet);
var d,m,y,h,mi,se,ss,ms:Word;
Desplazamiento:Integer;
begin
  inherited;
  Desplazamiento:=CDSVencimientosNUMERACION.Value-1;
  if Desplazamiento>=20 then Desplazamiento:=20;

  DecodeDateTime(CDSVencimientosFECHA_INCIO.AsDateTime,y,m,d,h,mi,ss,ms);

  CDSVencimientosSTARTTIME.Value:=EncodeDateTime(y,m,d,00+Desplazamiento,00,00,00 );
  DecodeDateTime(CDSVencimientosSTARTTIME.AsDateTime,y,m,d,h,mi,ss,ms);
  if (H>=22)   then h :=22;
  CDSVencimientosENDTIME.Value  :=EncodeDateTime(y,m,d,h+1,00,00,00);

end;

procedure TFormVencimientos.CDSVencimientosFINALIZADOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='S' then Text:='*' else Text:='';
end;


procedure TFormVencimientos.cxScheduler1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormABMVencimientos)) then
    FormABMVencimientos:=TFormABMVencimientos.Create(self);
  FormABMVencimientos.DatoNew:=CDSVencimientosID.AsString;
  FormABMVencimientos.Recuperar.Execute;
  FormABMVencimientos.Show;
end;

//procedure TFormVencimientos.cxSchedulerDBStorage1EventDeleted(Sender: TObject;
//  AEvent: TcxSchedulerEvent; var AHandled: Boolean);
//begin
//  inherited;
//  CDSVencimientos.ApplyUpdates(0);
//end;

//procedure TFormVencimientos.cxSchedulerDBStorage1EventInserted(Sender: TObject;
//  AEvent: TcxSchedulerEvent; var AHandled: Boolean);
//begin
//  inherited;
//  CDSVencimientos.ApplyUpdates(0);
//end;

procedure TFormVencimientos.cxSchedulerDBStorage1EventModified(Sender: TObject;
  AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSVencimientos.ApplyUpdates(0);
    // ******************************************
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se aplico el cambio ....');
  end;
end;

procedure TFormVencimientos.DBAdvGrid1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormABMVencimientos)) then
    FormABMVencimientos:=TFormABMVencimientos.Create(self);
  FormABMVencimientos.DatoNew:=CDSVencimientosID.AsString;
  FormABMVencimientos.Recuperar.Execute;
  FormABMVencimientos.Show;
end;

procedure TFormVencimientos.DBDaySource1UpdateItem(Sender: TObject;
  APlannerItem: TPlannerItem);
begin
  inherited;
  showMessage('actualiza');
end;

procedure TFormVencimientos.DBDaySourceFieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
var Aux:string;
begin
  inherited;
  if (Fields.FieldByName('FINALIZADO').AsString='S') then
    begin
      Item.CaptionBkg:=clGreen;
      Item.BrushStyle:=bsHorizontal;
    end
  ELSE
    Item.CaptionBkg:=clSilver;

  Aux:=copy(Fields.FieldByName('NROCPBTE').AsString,1,1)+'-'+copy(Fields.FieldByName('NROCPBTE').AsString,2,4)+'-'+copy(Fields.FieldByName('NROCPBTE').AsString,6,8);
  Item.Text.Add(Aux+'..'+FormatFloat(',0.00',Fields.FieldByName('IMPORTE').AsFloat));
  Item.Text.Add(Fields.FieldByName('fecha_finalizacion').AsString );

end;

procedure TFormVencimientos.dbgVencimientosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormABMVencimientos)) then
    FormABMVencimientos:=TFormABMVencimientos.Create(self);
  FormABMVencimientos.DatoNew:=CDSVencimientosID.AsString;
  FormABMVencimientos.Recuperar.Execute;
  FormABMVencimientos.Show;
end;

//procedure TFormVencimientos.dbgVencimientosDrawColumnCell(Sender: TObject;
//  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
//begin
//  inherited;
//  if (Column.Index in [4]) and (State = []) then
//    begin
//      if (dbgVencimientos.Columns[Datacol].Field.AsString)='S' then
//        begin
//          dbgVencimientos.Canvas.Brush.Color := clMoneyGreen;
//          dbgVencimientos.DefaultDrawColumnCell(rect,DataCol,Column,State);
//        end;
//    end;
//end;

procedure TFormVencimientos.DBPlannerMonthView1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  inherited;
  DBDaySource.Day            := SelDate;
 // DBPlannerDia.sel

  sbEstado.Panels[1].Text    := DateToStr(SelDate);
end;

procedure TFormVencimientos.DBPlannerMonthView1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
var Aux:string;
begin
  inherited;
  if (Fields.FieldByName('FINALIZADO').AsString='S') then
    begin
      Item.CaptionBkg:=clGreen;
      Item.BrushStyle:=bsHorizontal;
    end
  ELSE
    Item.CaptionBkg:=clSilver;

  Aux:=copy(Fields.FieldByName('NROCPBTE').AsString,1,1)+'-'+copy(Fields.FieldByName('NROCPBTE').AsString,2,4)+'-'+copy(Fields.FieldByName('NROCPBTE').AsString,6,8);
  Item.Text.Add(Aux+'..'+FormatFloat(',0.00',Fields.FieldByName('IMPORTE').AsFloat));
  Item.Text.Add(Fields.FieldByName('fecha_finalizacion').AsString );

end;

procedure TFormVencimientos.DBPlannerMonthView1ItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
  if ( CDSVencimientosID.AsString<>'') and Not(CDSVencimientosTIPO_CPBTE.Value='FC') and Not(CDSVencimientosTIPO_CPBTE.Value='ND') Then
    begin
      if Not(Assigned(FormABMVencimientos)) Then
         FormABMVencimientos:=TFormABMVencimientos.Create(Self);
      FormABMVencimientos.DatoNew:=CDSVencimientosID.AsString;
      FormABMVencimientos.Recuperar.Execute;
      FormABMVencimientos.Show;
    end
  else
    if ( CDSVencimientosID.AsString<>'') and ((CDSVencimientosTIPO_CPBTE.Value='FC') or(CDSVencimientosTIPO_CPBTE.Value='ND')) Then
      begin
        if Not(Assigned(FormCompra_2)) Then
           FormCompra_2:=TFormCompra_2.Create(Self);
        FormCompra_2.DatoNew  :=CDSVencimientosID_CPBTE.AsString;
        FormCompra_2.TipoCpbte:=CDSVencimientosTIPO_CPBTE.AsString;

        FormCompra_2.Recuperar.Execute;
        FormCompra_2.Show;
    end

end;

procedure TFormVencimientos.DBPlannerMonthView1ItemMoving(Sender: TObject;
  APlannerItem: TPlannerItem; FromStartDate, FromEndDate, ToStartDate,
  ToEndDate: TDateTime; var Allow: Boolean);
begin
  inherited;
  Allow:=CDSVencimientosFINALIZADO.AsString='N';
end;


procedure TFormVencimientos.FormActivate(Sender: TObject);
var FechasStr:String;
Fecha:TDateTime;
begin
  inherited;
  FechasStr:=Copy( sbEstado.Panels[1].Text,1,Pos('-',sbEstado.Panels[1].Text)-1);
  if Trim(FechasStr)<>'' then
    begin
      Fecha:= StrToDate(FechasStr);
     // PageControl1.ActivePageIndex := 0;
      DBPlannerMonthView1.Year     := YearOf(Fecha);
      DBPlannerMonthView1.Month    := MonthOf(Fecha);
      DBPlanner1.Mode.Year         := YearOf(Fecha);
      buscar.Execute;
    end;
end;

procedure TFormVencimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormVencimientos.FormCreate(Sender: TObject);
begin
  inherited;
  AUtoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  DBPlannerMonthView1.NameOfMonths.January   :='Enero';
  DBPlannerMonthView1.NameOfMonths.February  :='Febrero';
  DBPlannerMonthView1.NameOfMonths.March     :='Marzo';
  DBPlannerMonthView1.NameOfMonths.April     :='Abril';
  DBPlannerMonthView1.NameOfMonths.May       :='Mayo';
  DBPlannerMonthView1.NameOfMonths.June      :='Junio';
  DBPlannerMonthView1.NameOfMonths.July      :='Julio';
  DBPlannerMonthView1.NameOfMonths.August    :='Agosto';
  DBPlannerMonthView1.NameOfMonths.September :='Septiembre';
  DBPlannerMonthView1.NameOfMonths.October   :='Octubre';
  DBPlannerMonthView1.NameOfMonths.November  :='Noviembre';
  DBPlannerMonthView1.NameOfMonths.December  :='Diciembre';

  DBPlannerMonthView1.NameOfDays.Monday      :='Lunes';
  DBPlannerMonthView1.NameOfDays.Tuesday     :='Martes';
  DBPlannerMonthView1.NameOfDays.Wednesday   :='Miercoles';
  DBPlannerMonthView1.NameOfDays.Thursday    :='Jueves';
  DBPlannerMonthView1.NameOfDays.Friday      :='Viernes';
  DBPlannerMonthView1.NameOfDays.Saturday    :='Sabado';
  DBPlannerMonthView1.NameOfDays.Sunday      :='Domingo';
end;

procedure TFormVencimientos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVencimientos:=nil;
end;

procedure TFormVencimientos.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  DBPlannerMonthView1.Year     := YearOf(Date);
  DBPlannerMonthView1.Month    := MonthOf(Date);
  buscar.Execute;
end;

procedure TFormVencimientos.InsertaExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormABMVencimientos)) then
    FormABMVencimientos:=TFormABMVencimientos.Create(self);
  FormABMVencimientos.Agregar.Execute;
  FormABMVencimientos.dbePrestador.SetFocus;
  FormABMVencimientos.Show;
 // Buscar.Execute;
end;


procedure TFormVencimientos.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  CDSVencimientos.Filtered:=False;
  CDSVencimientos.Filter:='';
  case RadioGroup1.ItemIndex of
    1:CDSVencimientos.Filter:='FINALIZADO = ''N''';
    2:CDSVencimientos.Filter:='FINALIZADO = ''S''';
  end;
  CDSVencimientos.Filtered:= RadioGroup1.ItemIndex>0 ;
  
end;

procedure TFormVencimientos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport1.DesignReport();
end;

procedure TFormVencimientos.VerVencimientoExecute(Sender: TObject);
begin
  inherited;
    if PageControl1.ActivePageIndex=0 then
      begin
        if Not(Assigned(FormABMVencimientos)) then
          FormABMVencimientos:=TFormABMVencimientos.Create(self);
        FormABMVencimientos.Show;
      end;

end;

end.
