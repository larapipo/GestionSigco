unit UCronogramaOT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ComCtrls, ExtCtrls, ActnList,
  StdCtrls, DBCtrls, FMTBcd, SqlExpr, Provider, DBClient,
  System.Actions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFormCronogramaOT = class(TForm)
    pnPrincipal: TPanel;
    mtMes: TMonthCalendar;
    DSOTrabajo: TDataSource;
    ActionList1: TActionList;
    Recuperar: TAction;
    CDSOTrabajo: TClientDataSet;
    DSPOTrabajo: TDataSetProvider;
    CDSOTrabajoCLASECPBTE: TStringField;
    CDSOTrabajoNROCPBTE: TStringField;
    CDSOTrabajoDESCRIPCION: TMemoField;
    CDSOTrabajoFECHAINICIO: TSQLTimeStampField;
    CDSOTrabajoFECHAESTIMADA: TSQLTimeStampField;
    CDSOTrabajoNOMBRE: TStringField;
    CDSOTrabajoID_OT: TIntegerField;
    CDSOTrabajoFECHAFINAL: TSQLTimeStampField;
    CDSOTrabajoCODIGO: TStringField;
    CDSOTrabajoRAZONSOCIAL: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QOTrabajo: TFDQuery;
    CDSOTrabajoTOTAL: TFloatField;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAINICIO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAFINAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure mtMesDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    TFecha:TDateTime;
   // procedure SetFecha;
  public
    { Public declarations }
  published
    PROPERTY Fecha: TDateTime read TFecha write TFecha;
  end;

var
  FormCronogramaOT: TFormCronogramaOT;

implementation

{$R *.DFM}

uses UDMain_FD;


procedure TFormCronogramaOT.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  mtMes.Date:=Date;

end;

procedure TFormCronogramaOT.RecuperarExecute(Sender: TObject);
begin
  CDSOTrabajo.close;
  CDSOTrabajo.Params.ParamByName('fecha').AsDate:=mtMes.Date;
  CDSOTrabajo.Open;
  Fecha:=mtMes.Date;
end;

procedure TFormCronogramaOT.DBGrid1CellClick(Column: TColumn);
begin
  Recuperar.Execute;
end;

procedure TFormCronogramaOT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fecha:=mtMes.Date;
  CDSOTrabajo.Close;
  Action:=caFree;
end;

procedure TFormCronogramaOT.FormDestroy(Sender: TObject);
begin
  FormCronogramaOT:=nil;
end;

procedure TFormCronogramaOT.FormShow(Sender: TObject);
begin
  mtMes.Date:=Fecha;
  Recuperar.Execute;
end;

procedure TFormCronogramaOT.mtMesDblClick(Sender: TObject);
begin
  Fecha:=mtMes.Date;
  Close;
end;

end.
