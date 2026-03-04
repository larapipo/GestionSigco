unit UListadoClientesCondVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, JvDBLookup,
  Grids, DBGrids, Provider, DBClient, JvExDBGrids, JvDBGrid, frxClass, frxDBSet,
  frxExportCSV, frxExportText, frxExportRTF, frxExportXLS,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  System.Actions, JvAppStorage, JvAppIniStorage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormListadoClienteConVenta = class(TFormABMBase)
    DSCondVenta: TDataSource;
    DSClientes: TDataSource;
    dbcCond: TJvDBLookupCombo;
    Label1: TLabel;
    JvDBGrid1: TJvDBGrid;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    frClientes: TfrxDBDataset;
    frxReport: TfrxReport;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    ToolButton1: TToolButton;
    QCondVta: TFDQuery;
    QCondVtaCODIGO: TIntegerField;
    QCondVtaDETALLE: TStringField;
    QCondVtaDIAS: TIntegerField;
    QCondVtaDESCUENTO: TFloatField;
    QClientes: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure JvDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoClienteConVenta: TFormListadoClienteConVenta;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListadoClienteConVenta.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('codigopago').Value:=dbcCond.KeyValue;
  CDSClientes.Open;
end;

procedure TFormListadoClienteConVenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action:=caFree;
end;

procedure TFormListadoClienteConVenta.FormCreate(Sender: TObject);
begin
  inherited;
  QCondVta.Open;
  Buscar.Execute;
end;

procedure TFormListadoClienteConVenta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoClienteConVenta:=nil;
end;

procedure TFormListadoClienteConVenta.ImprimirExecute(Sender: TObject);
begin
  inherited;
   if Not(CDSClientes.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_fd.PathReportesLst+'\ListadoClienteCondVta.fr3');
      frxReport.Variables['Cond']   :=''''+dbcCond.Text+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormListadoClienteConVenta.JvDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  CDSClientes.IndexFieldNames:=Field.FieldName;
end;

procedure TFormListadoClienteConVenta.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

end.