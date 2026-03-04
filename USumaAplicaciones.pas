unit USumaAplicaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvGradient, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask,   Buttons, ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel,DB, JvExMask, JvToolEdit, JvBaseEdits, DBCtrls, DBClient,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCalc, cxCheckBox, dxSkinBlue,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormSumaAplicaciones = class(TForm)
    pnSuma: TJvPanel;
    pnBtn: TPanel;
    spCancel: TSpeedButton;
    spPegar: TSpeedButton;
    pnTotal: TPanel;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    JvGradient1: TJvGradient;
    ceSuma: TJvCalcEdit;
    DSMov: TDataSource;
    cxGridMovDBTableView1: TcxGridDBTableView;
    cxGridMovLevel1: TcxGridLevel;
    cxGridMov: TcxGrid;
    cxGridMovDBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGridMovDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridMovDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGridMovDBTableView1HABER: TcxGridDBColumn;
    cxGridMovDBTableView1SALDO: TcxGridDBColumn;
    cxGridMovDBTableView1DETALLE: TcxGridDBColumn;
    cxGridMovDBTableView1MUESTRAAPAGAR: TcxGridDBColumn;
    cxGridMovDBTableView1SELECCION: TcxGridDBColumn;
    procedure spPegarClick(Sender: TObject);
    procedure spCancelClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridMovDBTableView1SELECCIONPropertiesChange(Sender: TObject);
    procedure cxGridMovDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SumaAplicado;
  end;

var
  FormSumaAplicaciones: TFormSumaAplicaciones;

implementation

uses DMOPagos,UOPago_2;
{$R *.dfm}


procedure TFormSumaAplicaciones.SumaAplicado;
var i: Integer;
    suma:real;
    p:TBookmark;
CDSClone:TClientDataSet;
begin
  inherited;
  suma:=0;
  ceSuma.Value:=suma;

  if DSMov.DataSet.State<>dsBrowse then DSMov.DataSet.Post;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(DatosOPago.CDSMovCCCompra,True);
  cdsClone.First;
  WHILE NOT (cdsClone.Eof) DO
    BEGIN
      if cdsClone.FieldByName('SELECCION').Value=True then
        suma:=suma+cdsClone.FieldByName('MuestraAPagar').Value;
      cdsClone.Next;
     END;
  FreeandNil(cdsClone);



  {
  p:=DSMov.DataSet.GetBookmark;
  DSMov.DataSet.DisableControls;
  DSMov.DataSet.First;
  WHILE NOT (DSMov.DataSet.Eof) DO
    BEGIN
      if DSMov.DataSet.FieldByName('SELECCION').Value=True then
        suma:=suma+DSMov.DataSet.FieldByName('MuestraAPagar').Value;
      DSMov.DataSet.Next;
     END;
  DSMov.DataSet.GotoBookmark(p);
  DSMov.DataSet.FreeBookmark(p);
  DSMov.DataSet.EnableControls;
  }
  ceSuma.Value:=suma;

end;

procedure TFormSumaAplicaciones.cxGridMovDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var A:Boolean;
begin
     A := AViewInfo.GridRecord.Values[7];
      if A= True then
        begin
          ACanvas.Brush.Color:= clGreen;
          ACanvas.Font.Color := clWhite;
        end
end;


procedure TFormSumaAplicaciones.cxGridMovDBTableView1SELECCIONPropertiesChange(
  Sender: TObject);
begin
  SumaAplicado;
end;


procedure TFormSumaAplicaciones.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormSumaAplicaciones.FormDestroy(Sender: TObject);
begin
  FormSumaAplicaciones:=nil;
end;

procedure TFormSumaAplicaciones.FormShow(Sender: TObject);
var p:TBookmark;
begin
 // dbgSuma.UnSelectAllClick(Sender);

//  p:=DSMov.DataSet.GetBookmark;
  Screen.Cursor:=crHourGlass;
  DatosOPago.CDSMovCCCompra.First;
  DatosOPago.CDSMovCCCompra.DisableControls;
  While Not(DatosOPago.CDSMovCCCompra.Eof) do
    begin
      DatosOPago.CDSMovCCCompra.Edit;
      DatosOPago.CDSMovCCCompra.FieldByName('SELECCION').Value      := False;
      DatosOPago.CDSMovCCCompra.FieldByName('MUESTRAAPAGAR').AsFloat:= DatosOPago.CDSMovCCCompra.FieldByName('SALDO').AsFloat;
      DatosOPago.CDSMovCCCompra.Next;
    end;
  DatosOPago.CDSMovCCCompra.First;
  DatosOPago.CDSMovCCCompra.EnableControls;
  Screen.Cursor:=crDefault;

  ceSuma.Text          :='0.00';
end;

procedure TFormSumaAplicaciones.spCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFormSumaAplicaciones.SpeedButton2Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DatosOPago.CDSMovCCCompra.First;
  DatosOPago.CDSMovCCCompra.DisableControls;
  While Not(DatosOPago.CDSMovCCCompra.Eof) do
    begin
      DatosOPago.CDSMovCCCompra.Edit;
      if DatosOPago.CDSMovCCCompraSELECCION.Value=True then
        DatosOPago.CDSMovCCCompra.FieldByName('SELECCION').Value      := False;
      DatosOPago.CDSMovCCCompra.FieldByName('MUESTRAAPAGAR').AsFloat:= DatosOPago.CDSMovCCCompra.FieldByName('SALDO').AsFloat;
      DatosOPago.CDSMovCCCompra.Next;
    end;
  DatosOPago.CDSMovCCCompra.First;
  DatosOPago.CDSMovCCCompra.EnableControls;

  ceSuma.Text          :='0.00';

 // edDscto.Value       :=0;
  ceSuma.Text          :='0.00';
 // edTotal.Value       :=0;
 // edImporteDscto.Value:=0;
 // FormOPago_2.BuscarPendientes.Execute;
  Screen.Cursor:=crDefault;

end;

procedure TFormSumaAplicaciones.spPegarClick(Sender: TObject);
var i:integer;
begin
  inherited;
  DatosOPago.CDSMovAplicaCCCompra.First;
  WHILE NOT (DatosOPago.CDSMovAplicaCCCompra.Eof) DO
    BEGIN
      DatosOPago.CDSMovAplicaCCCompra.Delete;
      DatosOPago.CDSMovAplicaCCCompra.First;
     END;
  DatosOPago.CDSOPagoTOTAL_NETOSetText(DatosOPago.CDSOPagoTOTAL_NETO,FloatToStr(ceSuma.Value));
//  DatosOPago.CDSOPagoTOTAL.AsFloat                := ceSuma.Value;
  DatosOPago.CDSOPagoDESCUENTO.AsFloat            := 0;
  DatosOPago.CDSOPagoDESCUENTO_PORCENTAJE.AsFloat := 0;
//  DatosOPago.CDSOPagoSALDO_APLICAR.AsFloat        := ceSuma.Value;

  DSMov.DataSet.First;
  DSMov.DataSet.DisableControls;
  while not(DSMov.DataSet.eof) do
    begin
     // dbgSuma.DataSource.DataSet.GotoBookmark(Pointer(dbgSuma.SelectedRows.Items[i]));
      if DSMov.DataSet.FieldByName('SELECCION').Value= True then
        begin
          if (Trunc(DatosOPago.CDSOPagoSALDO_APLICAR.AsFloat*1000)>0) then
            begin
              FormOPago_2.dbgAplicacionesDragDrop( FormOPago_2.dbgAplicaciones, FormOPago_2.dbgMovCC,10,10);
//              if DatosOPago.CDSMovAplicaCCCompraID_MOV.AsString <> '' then
//                begin
//                  if (Trunc(DatosOPago.CDSOPagoSALDO_APLICAR.AsFloat*1000)>0) then
//                    begin
//                      DatosOPago.CDSMovAplicaCCCompra.Edit;
//                      DatosOPago.CDSMovAplicaCCCompraIMPORTESetText(DatosOPago.CDSMovAplicaCCCompraIMPORTE,FloatToStr(DatosOPago.CDSMovCCCompraMUESTRAAPAGAR.AsFloat));
//                      if DatosOPago.CDSMovAplicaCCCompra.State<> dsBrowse then
//                        DatosOPago.CDSMovAplicaCCCompra.Post;
//                    end;
//                end;
            end;
        end;
      DSMov.DataSet.Next;
      //if dbgSuma.SelectedRows.RowSelected = True then
    end;
  DSMov.DataSet.EnableControls;
  FormSumaAplicaciones.Close;
end;

end.