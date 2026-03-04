unit ULstComparativoArtPorCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, DB, Mask, JvExMask, JvToolEdit, SqlExpr,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBClient, Provider,Librerias,
  JvMaskEdit, JvDBFindEdit, JvExStdCtrls, JvEdit, JvDBSearchEdit, frxExportRTF,
  frxClass, frxExportPDF, frxDBSet, DataExport, DataToXLS, System.Actions,
  JvAppStorage, JvAppIniStorage,VirtualUI_SDK, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, Vcl.ActnList, CompBuscador,StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxDesgn, frxExportBaseDialog, System.ImageList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxClasses, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  frCoreClasses;

type
  TFormComparaArtPorCompra = class(TFormABMBase)
    ceCodigo: TJvComboEdit;
    edDetalle: TEdit;
    Label1: TLabel;
    BuscarArticulos: TAction;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSMovCODIGOARTICULO: TStringField;
    CDSMovCODIGOPROVEEDOR: TStringField;
    CDSMovDETALLE: TStringField;
    CDSMovNOMBRE: TStringField;
    CDSMovUNITARIO_EXENTO: TFloatField;
    CDSMovUNITARIO_GRAVADO: TFloatField;
    CDSMovUNITARIO_TOTAL: TFloatField;
    CDSMovFECHACOMPRA: TSQLTimeStampField;
    DSMov: TDataSource;
    chbTodosLosArticulos: TCheckBox;
    chbControlaStock: TCheckBox;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    dbsBuscarArticulo: TJvDBSearchEdit;
    SaveDialog: TSaveDialog;
    DataToXLS: TDataToXLS;
    frDBCompras: TfrxDBDataset;
    frCompras: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    btExcel: TBitBtn;
    Imprimir: TAction;
    QStock: TFDQuery;
    QArticulos: TFDQuery;
    QMov: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    QStockCODIGOARTICULO: TStringField;
    QStockDETALLE: TStringField;
    QStockUNITARIO_EXENTO: TFloatField;
    QStockUNITARIO_GRAVADO: TFloatField;
    QStockUNITARIO_TOTAL: TFloatField;
    QStockCODIGOPROVEEDOR: TStringField;
    QStockNOMBRE: TStringField;
    QStockFECHACOMPRA: TSQLTimeStampField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOPROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_EXENTO: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_GRAVADO: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure ConfirmaExecute(Sender: TObject);
    procedure chbTodosLosArticulosClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btExcelClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComparaArtPorCompra: TFormComparaArtPorCompra;

implementation

uses UBuscadorArticulos, UDMain_FD;

{$R *.dfm}

procedure TFormComparaArtPorCompra.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSMov.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName  :='Comparativa';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin

            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
               DataToXLS.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
               DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormComparaArtPorCompra.BuscarArticulosExecute(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
 // FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1      := -1;
  FormBuscadorArticulos.Param2      := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     := -1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
      QArticulos.Close;
      QArticulos.ParamByName('Codigo').Value:=FormBuscadorArticulos.Codigo;
      QArticulos.Open;
      edDetalle.Text:=QArticulosDETALLE_STK.Value;
      ceCodigo.Text :=QArticulosCODIGO_STK.Value;
      QArticulos.Close;
      Buscar.Execute;
    end
  else
    begin
      edDetalle.Text:='';
      ceCodigo.Text :='';
    end;

//  QBuscaArticulos.Close;

end;

procedure TFormComparaArtPorCompra.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSMov.Close;
  CDSMov.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSMov.Params.ParamByName('Hasta').Value:=Hasta.Date;
  if (chbTodosLosArticulos.Checked=False) then
    CDSMov.Params.ParamByName('CodArticulo').Value:=ceCodigo.Text
  else
    CDSMov.Params.ParamByName('CodArticulo').Value:='********';
  if (chbControlaStock.Checked=False) then
    CDSMov.Params.ParamByName('ControlaStk').Value:='*'
  else
    CDSMov.Params.ParamByName('ControlaStk').Value:='S';
  CDSMov.Open;

 cxGrid1DBTableView1.DataController.Groups.FullExpand;



end;

procedure TFormComparaArtPorCompra.ceCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var dato:String;
begin
  inherited;
  IF Key = Vk_return THEN
    BEGIN
      Dato := Copy('00000000', 1, 8 - (Length(ceCodigo.Text))) + ceCodigo.Text;
      ceCodigo.Text := Dato;

      QArticulos.Close;
      QArticulos.ParamByName('Codigo').Value:=Dato;
      QArticulos.Open;
      edDetalle.Text:=QArticulosDETALLE_STK.Value;
      ceCodigo.Text :=QArticulosCODIGO_STK.Value;
      QArticulos.Close;
    END;
end;


procedure TFormComparaArtPorCompra.chbTodosLosArticulosClick(Sender: TObject);
begin
  inherited;
  ceCodigo.Enabled:=Not(chbTodosLosArticulos.Checked);
end;

procedure TFormComparaArtPorCompra.ConfirmaExecute(Sender: TObject);
begin
  inherited;
 // ClientDataSet1.Fields.Add();
end;

procedure TFormComparaArtPorCompra.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormComparaArtPorCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormComparaArtPorCompra.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  ceCodigo.Enabled:=Not(chbTodosLosArticulos.Checked);
  autoSize:=False;
end;
procedure TFormComparaArtPorCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComparaArtPorCompra:=nil;
end;

procedure TFormComparaArtPorCompra.FormResize(Sender: TObject);
begin
  inherited;
  if FormComparaArtPorCompra<>nil then
    if FormComparaArtPorCompra.Width<>1010 then
      FormComparaArtPorCompra.Width:=1010;
end;

procedure TFormComparaArtPorCompra.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSMov.IsEmpty) Then
    begin
      frCompras.PrintOptions.Printer:=PrNomListados;
      frCompras.SelectPrinter;
      frCompras.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoComparaCompras.fr3');
      frCompras.Variables['desde']   :=''''+Desde.Text+'''';
      frCompras.Variables['hasta']   :=''''+Hasta.Text+'''';
      frCompras.Variables['Articulos']:=''''+ceCodigo.Text+' '+edDetalle.Text+'''';
      frCompras.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormComparaArtPorCompra.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCompras.DesignReport;
end;

procedure TFormComparaArtPorCompra.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;


end;

end.
