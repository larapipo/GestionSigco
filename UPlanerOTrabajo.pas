unit UPlanerOTrabajo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, PlannerMonthView,
  DBPlannerMonthView, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Datasnap.Provider, Datasnap.DBClient, Planner, DBPlanner, Vcl.Grids,
  Vcl.DBGrids, JvDBLookup, CompBuscador, cxPC, dxDockControl, dxDockPanel,
  JvDockControlForm, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, System.ImageList;

type
  TFormPlanerOTrabajo = class(TFormABMBase)
    DBPlannerMonthView1: TDBPlannerMonthView;
    CDSOTrabajo: TClientDataSet;
    CDSOTrabajoID_OT: TIntegerField;
    CDSOTrabajoTIPOCPBTE: TStringField;
    CDSOTrabajoNOMBRE: TStringField;
    CDSOTrabajoPRIORIDAD: TSmallintField;
    CDSOTrabajoESTADO: TIntegerField;
    CDSOTrabajoRESPONSABLE_TURNO: TStringField;
    CDSOTrabajoRESPONSABLE_OT: TStringField;
    CDSOTrabajoMUESTRARESPONSABLETURNO: TStringField;
    CDSOTrabajoMUESTRARESPONSABLEOT: TStringField;
    CDSOTrabajoNROCPBTE: TStringField;
    CDSOTrabajoMUESTRAIDENTIFICACION: TStringField;
    DSPOTrabajo: TDataSetProvider;
    DSOTrabajo: TDataSource;
    DBDaySource1: TDBDaySource;
    DSPBuscaVendedores: TDataSetProvider;
    CDSBuscaVendedores: TClientDataSet;
    CDSBuscaVendedoresCODIGO: TStringField;
    CDSBuscaVendedoresNOMBRE: TStringField;
    DSBuscaVendedores: TDataSource;
    DSBuscaMov: TDataSource;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    PrintDialog1: TPrintDialog;
    chNro: TCheckBox;
    ToolButton2: TToolButton;
    docPanel: TdxDockPanel;
    dxDockSite1: TdxDockSite;
    dbpHoras: TDBPlanner;
    dbcVendedor: TJvDBLookupCombo;
    dbcMotivos: TJvDBLookupCombo;
    dxLayoutDockSite1: TdxLayoutDockSite;
    QOTrabajo: TFDQuery;
    QOTrabajoNROCPBTE: TStringField;
    QOTrabajoID_OT: TIntegerField;
    QOTrabajoTIPOCPBTE: TStringField;
    QOTrabajoNOMBRE: TStringField;
    QOTrabajoDESCRIPCION: TMemoField;
    QOTrabajoPRIORIDAD: TSmallintField;
    QOTrabajoESTADO: TIntegerField;
    QOTrabajoRESPONSABLE_TURNO: TStringField;
    QOTrabajoRESPONSABLE_OT: TStringField;
    QOTrabajoMUESTRARESPONSABLETURNO: TStringField;
    QOTrabajoMUESTRARESPONSABLEOT: TStringField;
    QOTrabajoMUESTRAIDENTIFICACION: TStringField;
    QBuscadorMov: TFDQuery;
    QBuscadorMovID: TIntegerField;
    QBuscadorMovDETALLE: TStringField;
    QBuscadorMovPOR_DEFECTO: TStringField;
    CDSOTrabajoDESCRIPCION: TMemoField;
    QOTrabajoFECHAINICIO: TSQLTimeStampField;
    QOTrabajoFECHAESTIMADA: TSQLTimeStampField;
    QOTrabajoFECHAESTIMADAFIN: TSQLTimeStampField;
    CDSOTrabajoFECHAINICIO: TSQLTimeStampField;
    CDSOTrabajoFECHAESTIMADA: TSQLTimeStampField;
    CDSOTrabajoFECHAESTIMADAFIN: TSQLTimeStampField;
    procedure CDSOTrabajoAfterPost(DataSet: TDataSet);
    procedure DBPlannerMonthView1ItemDblClick(Sender: TObject;
      Item: TPlannerItem);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBPlannerMonthView1ItemSelect(Sender: TObject;
      Item: TPlannerItem);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure CDSOTrabajoBeforePost(DataSet: TDataSet);
    procedure DBPlannerMonthView1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPlannerMonthView1MonthChanged(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure FormShow(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlanerOTrabajo: TFormPlanerOTrabajo;

implementation

{$R *.dfm}
uses UDMain_FD, UOrdenDeTrabajo;

procedure TFormPlanerOTrabajo.btImprimirClick(Sender: TObject);
begin
  inherited;
  if PrintDialog1.Execute then
    begin
      if chNro.Checked then
        begin
          DBPlannerMonthView1.DataBinding.SubjectField:='NROCPBTE';
          DBPlannerMonthView1.DataBinding.NotesField  :='';
          DBPlannerMonthView1.Refresh;

          DBPlannerMonthView1.Print;
          DBPlannerMonthView1.DataBinding.SubjectField:='NOMBRE';
          DBPlannerMonthView1.DataBinding.NotesField  :='DESCRIPCION';
          DBPlannerMonthView1.Refresh;
        end
      else
        DBPlannerMonthView1.Print;
    end;
end;

procedure TFormPlanerOTrabajo.BuscarExecute(Sender: TObject);
var desde,hasta:TDateTime;
d,m,y:Word;
begin
  inherited;
  DBPlannerMonthView1.GetStartDate(d,m,y);
  Desde := EncodeDate(y,m,d);

  DBPlannerMonthView1.GetEndDate(d,m,y);
  hasta := EncodeDate(y,m,d);

  DBPlannerMonthView1.Day:=d;


  CDSOTrabajo.Close;
  CDSOTrabajo.Params.ParamByName('codigo').Value := dbcVendedor.KeyValue;
  CDSOTrabajo.Params.ParamByName('motivo').Value := dbcMotivos.KeyValue;
  CDSOTrabajo.Params.ParamByName('desde').AsDateTime := Desde;
  CDSOTrabajo.Params.ParamByName('hasta').AsDateTime := Hasta;

  CDSOTrabajo.Open;
end;

procedure TFormPlanerOTrabajo.CDSOTrabajoAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSOTrabajo.ApplyUpdates(-1);
end;


procedure TFormPlanerOTrabajo.CDSOTrabajoBeforePost(DataSet: TDataSet);
begin
  inherited;
 // CDSOTrabajoHORA.Value:=
end;

procedure TFormPlanerOTrabajo.DBPlannerMonthView1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  inherited;
  DBDaySource1.Day:= DBPlannerMonthView1.Date;
  dbpHoras.Header.Captions.Strings[1]:= DBPlannerMonthView1.DatesAsText;

  // UpdateHeaders;
end;

procedure TFormPlanerOTrabajo.DBPlannerMonthView1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  inherited;
  CASE Fields.FieldByName('ESTADO').Value of
   1:Item.Color:=clRed;
   2:Item.Color:=clYellow;
   3:Item.Color:=clBlue;
   4:Item.Color:=clGreen;
   5:Item.Color:=clInfoBk;
   6:Item.Color:=clHighlight;
   7:Item.Color:=clNavy;
   8:Item.Color:=clGradientInactiveCaption;
   9:Item.Color:=clGrayText;


  END;

end;

procedure TFormPlanerOTrabajo.DBPlannerMonthView1ItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
  if Not(Assigned(FormOrdenDeTrabajo)) then
    FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(Self);
  FormOrdenDeTrabajo.DatoNew:=CDSOTrabajoID_OT.AsString;
  FormOrdenDeTrabajo.TipoCpbte:=CDSOTrabajoTIPOCPBTE.AsString;
  FormOrdenDeTrabajo.recuperar.Execute;
  FormOrdenDeTrabajo.Show;

end;

procedure TFormPlanerOTrabajo.DBPlannerMonthView1ItemSelect(Sender: TObject;
  Item: TPlannerItem);
begin
  inherited;
   DBDaySource1.Day:= DBPlannerMonthView1.Date;
   dbpHoras.Header.Captions.Strings[1]:= DBPlannerMonthView1.DatesAsText;
end;

procedure TFormPlanerOTrabajo.DBPlannerMonthView1MonthChanged(Sender: TObject;
  origDate, newDate: TDateTime);
begin
  inherited;
  Buscar.Execute;
  DBDaySource1.Day:= newDate;// DBPlannerMonthView1.Date;
  dbpHoras.Header.Captions.Strings[1]:= DateToStr(newDate);
end;

procedure TFormPlanerOTrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPlanerOTrabajo.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize :=False;
  CDSBuscaVendedores.Close;
  CDSBuscaVendedores.Open;
  dbcVendedor.KeyValue:=DMMain_FD.EmpleadoPorDefecto;
  QBuscadorMov.Close;
  QBuscadorMov.Open;
  QBuscadorMov.First;
  dbcMotivos.KeyValue:=QBuscadorMovID.Value;

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
 // Buscar.Execute;
end;

procedure TFormPlanerOTrabajo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlanerOTrabajo:=nil;
end;

procedure TFormPlanerOTrabajo.FormShow(Sender: TObject);
begin
  inherited;
  DBDaySource1.Day:= Date;// DBPlannerMonthView1.Date;
  DBPlannerMonthView1.Date:=Date;
  dbpHoras.Header.Captions.Strings[1]:= DateToStr(Date);
end;

end.
