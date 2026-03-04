unit UAbonosGrilla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList, DB,  
  ActnList, ComCtrls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Provider, DBClient, JvDBLookup, JvExButtons,
  JvBitBtn, DataExport, DataToXLS, frxExportXML, frxClass, frxDBSet, frxExportRTF,
  frxExportPDF, frxExportXLS, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, DBXCommon,System.Actions, JvAppStorage, JvAppIniStorage,
  VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormAbonosGrilla = class(TFormABMBase)
    DSGrupos: TDataSource;
    Label1: TLabel;
    CDSGrupos: TClientDataSet;
    DSPGrupos: TDataSetProvider;
    CDSGruposCLIENTE: TStringField;
    CDSGruposMUESTRANOMBRE: TStringField;
    CDSGruposID_CUPON_GRUPO: TIntegerField;
    CDSGruposMUESTRAGRUPO: TStringField;
    DSGruposAbonos: TDataSource;
    dbcGrupos: TJvDBLookupCombo;
    btAsignar: TJvBitBtn;
    btDeAsignar: TJvBitBtn;
    Asignar: TAction;
    DesAsignar: TAction;
    chbAsigandos: TCheckBox;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    ExportarXls: TAction;
    Imprimir: TAction;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frGrupos: TfrxDBDataset;
    spunselect: TSpeedButton;
    spSelect: TSpeedButton;
    SelectAll: TAction;
    Unselect: TAction;
    dbgGrupos: TDBGrid;
    QGrupos: TFDQuery;
    QGruposCLIENTE: TStringField;
    QGruposMUESTRANOMBRE: TStringField;
    QGruposID_CUPON_GRUPO: TIntegerField;
    QGruposMUESTRAGRUPO: TStringField;
    QGruposPRECIO1: TFloatField;
    QGruposPRECIO2: TFloatField;
    CDSGruposPRECIO1: TFloatField;
    CDSGruposPRECIO2: TFloatField;
    QIngresaNuevos: TFDQuery;
    QGrupoAbonos: TFDQuery;
    QBorraInexistentes: TFDQuery;
    QGrupoAbonosID: TIntegerField;
    QGrupoAbonosDETALLE: TStringField;
    QGrupoAbonosPRECIO1: TFloatField;
    QGrupoAbonosPRECIO2: TFloatField;
    QGrupoAbonosCODIGOARTICULO: TStringField;
    QGrupoAbonosVTO_1: TSmallintField;
    QGrupoAbonosVTO_2: TSmallintField;
    QGrupoAbonosCODIGOARTICULO_DEBITOS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AsignarExecute(Sender: TObject);
    procedure DesAsignarExecute(Sender: TObject);
    procedure chbAsigandosClick(Sender: TObject);
    procedure dbgGruposTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ExportarXlsExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure SelectAllExecute(Sender: TObject);
    procedure UnselectExecute(Sender: TObject);
    procedure dbgGruposColEnter(Sender: TObject);
    procedure dbggColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbonosGrilla: TFormAbonosGrilla;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormAbonosGrilla.AsignarExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  if dbcGrupos.KeyValue<=0 then
    raise Exception.Create('No Hay Seleccion de Grupos');

  p:=CDSGrupos.GetBookmark;
  CDSGrupos.First;
  CDSGrupos.DisableControls;
  while Not(CDSGrupos.Eof) do
    begin
      if dbgGrupos.SelectedRows.CurrentRowSelected then
        begin
          CDSGrupos.Edit;
          CDSGruposID_CUPON_GRUPO.Value:=dbcGrupos.KeyValue;
          CDSGruposMUESTRAGRUPO.Value  :=dbcGrupos.LookupSource.DataSet.FieldByName('detalle').Value;
          CDSGruposPRECIO1.AsFloat     :=dbcGrupos.LookupSource.DataSet.FieldByName('precio1').AsFloat;
          CDSGruposPRECIO2.AsFloat     :=dbcGrupos.LookupSource.DataSet.FieldByName('precio2').AsFloat;
          CDSGrupos.Post;
        end;
      CDSGrupos.Next;
    end;
  CDSGrupos.GotoBookmark(p);
  CDSGrupos.EnableControls;
  CDSGrupos.FreeBookmark(P);
end;

procedure TFormAbonosGrilla.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSGrupos.Close;
  if chbAsigandos.Checked then
    CDSGrupos.Params.ParamByName('Estado').Value:=0
  else
    CDSGrupos.Params.ParamByName('Estado').Value:=-1;
  CDSGrupos.Open;
end;

procedure TFormAbonosGrilla.chbAsigandosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormAbonosGrilla.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSGrupos.State<>dsBrowse then
      CDSGrupos.Post;
    CDSGrupos.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo realizar los cambios....');
  end;
  Buscar.Execute;
end;

procedure TFormAbonosGrilla.dbgGruposColEnter(Sender: TObject);
begin
  inherited;
  if dbgGrupos.SelectedIndex>2 then
    dbgGrupos.SelectedIndex:=2;
end;

procedure TFormAbonosGrilla.dbgGruposTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  CDSGrupos.IndexFieldNames:=Field.FieldName;
end;

procedure TFormAbonosGrilla.dbggColEnter(Sender: TObject);
begin
  inherited;
  if dbgGrupos.SelectedIndex>2 then
    dbgGrupos.SelectedIndex:=2;
end;

procedure TFormAbonosGrilla.DesAsignarExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSGrupos.GetBookmark;
  CDSGrupos.First;
  CDSGrupos.DisableControls;
  while Not(CDSGrupos.Eof) do
    begin
      if dbgGrupos.SelectedRows.CurrentRowSelected then
        begin
          CDSGrupos.Edit;
          CDSGruposID_CUPON_GRUPO.Value:=0;
          CDSGruposMUESTRAGRUPO.Value  :='';
          CDSGruposPRECIO1.Clear;
          CDSGruposPRECIO2.Clear;
          CDSGrupos.Post;
        end;
      CDSGrupos.Next;
    end;
  CDSGrupos.GotoBookmark(p);
  CDSGrupos.EnableControls;
  CDSGrupos.FreeBookmark(P);
end;

procedure TFormAbonosGrilla.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormAbonosGrilla.ExportarXlsExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSGrupos.IsEmpty) then
    begin
      SaveDialog1.FileName  :='Abonos';
      SaveDialog1.DefaultExt:='xls';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            DataToXLS.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

    end;
end;

procedure TFormAbonosGrilla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action:=caFree;
end;

procedure TFormAbonosGrilla.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  QIngresaNuevos.Close;
  QIngresaNuevos.ExecSQL;
  QBorraInexistentes.Close;
  QBorraInexistentes.ExecSQL;
  QIngresaNuevos.Close;
  QBorraInexistentes.Close;
  QGrupoAbonos.Open;

  Buscar.Execute;
end;

procedure TFormAbonosGrilla.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAbonosGrilla:=nil;
end;

procedure TFormAbonosGrilla.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSGrupos.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoGruposAbonos.fr3');
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormAbonosGrilla.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormAbonosGrilla.SelectAllExecute(Sender: TObject);
begin
  inherited;
  CDSGrupos.First;
  while not(CDSGrupos.Eof) do
    begin
      dbgGrupos.SelectedRows.CurrentRowSelected:=True;
      CDSGrupos.Next;
    end;
  CDSGrupos.First;
end;

procedure TFormAbonosGrilla.UnselectExecute(Sender: TObject);
begin
  inherited;
  CDSGrupos.First;
  while not(CDSGrupos.Eof) do
    begin
      dbgGrupos.SelectedRows.CurrentRowSelected:=False;
      CDSGrupos.Next;
    end;
  CDSGrupos.First;
end;

end.