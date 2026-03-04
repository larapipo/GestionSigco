unit UListadoSaldosEmpleados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Menus, frxClass, frxDBSet, JvComponentBase,
  ImgList, JvExControls, JvGradient, frxExportCSV,
  frxExportXLS, frxExportHTML, frxExportPDF, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, Provider, DBClient, JvExDBGrids, JvDBGrid,
  Mask, JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormSaldosEmpleados = class(TFormABMBase)
    DSSaldosEmpleados: TDataSource;
    PopupMenu1: TPopupMenu;
    Pagar: TAction;
    btImprimir: TBitBtn;
    frCtaCte: TfrxReport;
    frxDBMov: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxCSVExport1: TfrxCSVExport;
    QSaldosEmp: TSQLQuery;
    CDSSaldosEmpleados: TClientDataSet;
    DSPSaldosEmpleados: TDataSetProvider;
    CDSSaldosEmpleadosCODIGO: TStringField;
    CDSSaldosEmpleadosNOMBRE: TStringField;
    CDSSaldosEmpleadosSALDO: TFloatField;
    CDSComprob: TClientDataSet;
    DSPComprob: TDataSetProvider;
    QComp: TSQLQuery;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobDENOMINACION: TStringField;
    CDSComprobSUCURSAL: TIntegerField;
    CDSComprobLETRA: TStringField;
    CDSComprobPREFIJO: TStringField;
    dbgSaldos: TJvDBGrid;
    Hasta: TJvDateEdit;
    Label1: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PagarExecute(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NewItem:TMenuItem;
  end;

var
  FormSaldosEmpleados: TFormSaldosEmpleados;

implementation

uses UAdelantosSueldos, UDMain_FD;

{$R *.DFM}

procedure TFormSaldosEmpleados.btImprimirClick(Sender: TObject);
begin
  inherited;

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

  frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoSaldosEmpleados.fr3');

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

 
  // frCtaCte.PrepareReport;
  frCtaCte.ShowReport;
end;

procedure TFormSaldosEmpleados.BuscarExecute(Sender: TObject);
begin
 // inherited;
   CDSSaldosEmpleados.Close;
   CDSSaldosEmpleados.Params.ParamByName('hasta').AsDate:=Hasta.Date;

   CDSSaldosEmpleados.Open;

end;

procedure TFormSaldosEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormSaldosEmpleados.FormCreate(Sender: TObject);
var i:integer;
begin
  inherited;
  Hasta.Date:=Date;
  CDSSaldosEmpleados.Close;
  CDSSaldosEmpleados.Open;

  CDSComprob.Close;
  CDSComprob.OPen;
  CDSComprob.First;
  for i := 1 to CDSComprob.RecordCount-1 do
    begin
      NewItem:=TMenuItem.Create(self);
      NewItem.Caption:=CDSComprobID_COMPROBANTE.AsString+'-'+CDSComprobCLASE_COMPROB.AsString+'-'+CDSComprobDENOMINACION.AsString;
      NewItem.OnClick:=PagarExecute;
      PopupMenu1.Items.Add(NewItem);
      CDSComprob.Next;
    end;

end;

procedure TFormSaldosEmpleados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSaldosEmpleados:=nil;
end;

procedure TFormSaldosEmpleados.PagarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAdelantosSueldo)) Then
    FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Application);
  FormAdelantosSueldo.Show;
  FormAdelantosSueldo.Agregar.Execute;

end;

procedure TFormSaldosEmpleados.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCtaCte.DesignReport;
end;

end.