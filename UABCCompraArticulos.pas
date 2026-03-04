unit UABCCompraArticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB, SqlExpr,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Provider, DBClient,DateUtils, Mask, JvExMask, JvToolEdit,
  DataExport, DataToXLS, frxClass, frxDBSet, frxExportPDF, JvBaseEdits,
  JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, Vcl.ActnList,StrUtils,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons, frxExportBaseDialog, System.ImageList;

type
  TFormABCCompraArticulos = class(TFormABMBase)
    dbgCompras: TJvDBGrid;
    DSCompras: TDataSource;
    dbgProvee: TJvDBGrid;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    DSProvee: TDataSource;
    ToolButton1: TToolButton;
    btExportarXLS: TBitBtn;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frxPDFExport1: TfrxPDFExport;
    frCompras: TfrxDBDataset;
    frxReport: TfrxReport;
    DataToXLS: TDataToXLS;
    SaveDialog1: TSaveDialog;
    JvLabel1: TJvLabel;
    edTotal: TJvCalcEdit;
    QProvee: TFDQuery;
    QCompras: TFDQuery;
    QProveeARTICULO: TStringField;
    QProveeCODIGO: TStringField;
    QProveeNOMBRE: TStringField;
    QProveeUNITARIO: TFloatField;
    QComprasCODIGOARTICULO: TStringField;
    QComprasDETALLE: TStringField;
    QComprasCANTIDAD: TFloatField;
    QComprasTOTAL: TFloatField;
    pnCabecera: TPanel;
    pnProvee: TPanel;
    chControlaStock: TAdvOfficeCheckBox;
    rgFecha: TAdvOfficeRadioGroup;
    JvLabel2: TJvLabel;
    procedure dbgComprasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSCompras_oldAfterScroll(DataSet: TDataSet);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btExportarXLSClick(Sender: TObject);
    procedure dbgComprasDblClick(Sender: TObject);
    procedure QComprasAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABCCompraArticulos: TFormABCCompraArticulos;

implementation
 uses UDMain_FD, UStock_2;
{$R *.dfm}


procedure TFormABCCompraArticulos.btExportarXLSClick(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if Not(QCompras.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='ABCArticulos';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                 SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;

          end;
    end;
end;

procedure TFormABCCompraArticulos.BuscarExecute(Sender: TObject);
begin
//  inherited;

  QCompras.IndexDefs.Clear;
  QCompras.IndexName:='';
  QCompras.IndexFieldNames:='';
  Screen.Cursor:=crHourGlass;
  sbEstado.SimpleText:='Iniciando querys....';
  QCompras.Close;
  QCompras.ParamByName('desde').Value:=Desde.Date;
  QCompras.ParamByName('hasta').Value:=Hasta.Date;
  if chControlaStock.Checked then
    QCompras.ParamByName('Control').Value:='S'
  else
    QCompras.ParamByName('Control').Value:='*';

  case rgFecha.ItemIndex of
    0:QCompras.ParamByName('Fiscal').Value:='F';
    1:QCompras.ParamByName('Fiscal').Value:='C';
  end;
  QCompras.Open;
  edTotal.Value:=0;
  QCompras.First;
  QCompras.DisableControls;
  while not(QCompras.Eof) do
    begin
      edTotal.Value:=edTotal.Value+QComprasTOTAL.AsFloat;
      QCompras.Next;
    end;
  QCompras.First;
  QCompras.EnableControls;

  Screen.Cursor:=crDefault;
  sbEstado.SimpleText:='';

  dbgCompras.Width := dbgCompras.Width+1;
  dbgCompras.Width := dbgCompras.Width-1;

  dbgProvee.Width := dbgProvee.Width+1;
  dbgProvee.Width := dbgProvee.Width-1;

end;

procedure TFormABCCompraArticulos.CDSCompras_oldAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QProvee.Close;
  QProvee.ParamByName('desde').AsDate:=Desde.Date;
  QProvee.ParamByName('hasta').AsDate:=Hasta.Date;
  QProvee.ParamByName('codigo').Value:=QComprasCODIGOARTICULO.Value;
  QProvee.Open;

end;

procedure TFormABCCompraArticulos.dbgComprasDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=QComprasCODIGOARTICULO.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;

end;

procedure TFormABCCompraArticulos.dbgComprasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  if QCompras.IndexFieldNames=Field.FieldName then
    QCompras.IndexFieldNames:=Field.FieldName + ':D'
  else
    QCompras.IndexFieldNames:=Field.FieldName ;
end;

procedure TFormABCCompraArticulos.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormABCCompraArticulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormABCCompraArticulos.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Desde.Date := EncodeDate(y,m,1);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
end;


procedure TFormABCCompraArticulos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormABCCompraArticulos:=nil;
end;

procedure TFormABCCompraArticulos.FormResize(Sender: TObject);
begin
  inherited;
  if FormABCCompraArticulos<>nil then
    if FormABCCompraArticulos.Width<>1086 then
      FormABCCompraArticulos.Width:=1086;

end;

procedure TFormABCCompraArticulos.ImprimirExecute(Sender: TObject);
begin
  if Not(QCompras.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoABCComprasArt.fr3');
      frxReport.Variables['Desde']   :=''''+DateToStr(Desde.Date)+'''';
      frxReport.Variables['Hasta']   :=''''+DateToStr(Hasta.Date)+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormABCCompraArticulos.QComprasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QProvee.Close;
  QProvee.ParamByName('desde').AsDate:=Desde.Date;
  QProvee.ParamByName('hasta').AsDate:=Hasta.Date;
  QProvee.ParamByName('codigo').Value:=QComprasCODIGOARTICULO.Value;
  QProvee.Open;
end;

procedure TFormABCCompraArticulos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormABCCompraArticulos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

end.

