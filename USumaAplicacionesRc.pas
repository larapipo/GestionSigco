unit USumaAplicacionesRc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, JvExStdCtrls,
  JvEdit, JvValidateEdit, Buttons, JvExControls, JvGradient, ExtCtrls,Db,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,DBClient,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCheckBox, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TFormSumaAplicacionesRc = class(TForm)
    pnPrincipal: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnBtn: TPanel;
    spCancel: TSpeedButton;
    spPegar: TSpeedButton;
    edDscto: TJvValidateEdit;
    edImporteDscto: TJvValidateEdit;
    edTotal: TJvValidateEdit;
    edSuma: TJvValidateEdit;
    Panel2: TPanel;
    spReset: TSpeedButton;
    cxGMovCtaCteDBTableView1: TcxGridDBTableView;
    cxGMovCtaCteLevel1: TcxGridLevel;
    cxGMovCtaCte: TcxGrid;
    DSMov: TDataSource;
    cxGMovCtaCteDBTableView1FECHAVTA: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1SALDO: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1DETALLE: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1MUESTRAAPAGAR: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1SELECCION: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1Column1: TcxGridDBColumn;
    cxGMovCtaCteDBTableView1Column2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure edDsctoChange(Sender: TObject);
    procedure edImporteDsctoExit(Sender: TObject);
    procedure spResetClick(Sender: TObject);
    procedure spPegarClick(Sender: TObject);
    procedure spCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGMovCtaCteDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGMovCtaCteDBTableView1SELECCIONPropertiesChange(
      Sender: TObject);
    procedure edImporteDsctoChange(Sender: TObject);
    procedure edDsctoExit(Sender: TObject);
    procedure edDsctoKeyPress(Sender: TObject; var Key: Char);
    procedure edImporteDsctoEnter(Sender: TObject);
    procedure edImporteDsctoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SumaAplicado;
  end;

var
  FormSumaAplicacionesRc: TFormSumaAplicacionesRc;

implementation

uses DMRecibos,URecibo_2;

{$R *.dfm}


procedure TFormSumaAplicacionesRc.SumaAplicado;
var i: Integer;
    suma:real;
    p:TBookmark;
CDSClone:TClientDataSet;
begin
  inherited;
  suma:=0;
  edSuma.Value:=suma;

  if DatosRecibos.CDSMovCCVta.State<>dsBrowse then DatosRecibos.CDSMovCCVta.Post;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(DatosRecibos.CDSMovCCVta,True);
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
  edSuma.Value:=suma;
  edImporteDscto.Value := edSuma.Value * ( edDscto.Value * 0.01 );
  edTotal.Value        := edSuma.value-edImporteDscto.Value;
end;


procedure TFormSumaAplicacionesRc.cxGMovCtaCteDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var A:Boolean;
begin
  A := AViewInfo.GridRecord.Values[8];
  if A= True then
    begin
      ACanvas.Brush.Color:= clGreen;
      ACanvas.Font.Color := clWhite;
    end;
end;

procedure TFormSumaAplicacionesRc.cxGMovCtaCteDBTableView1SELECCIONPropertiesChange(
  Sender: TObject);
begin
  SumaAplicado;
end;


procedure TFormSumaAplicacionesRc.edDsctoChange(Sender: TObject);
begin
//  edImporteDscto.Value:=edSuma.Value * (edDscto.Value*0.01);
//  edTotal.Value:=edSuma.Value-edImporteDscto.Value;
end;

procedure TFormSumaAplicacionesRc.edDsctoExit(Sender: TObject);
begin
  edImporteDscto.Value:=edSuma.Value * (edDscto.Value*0.01);
  edTotal.Value:=edSuma.Value-edImporteDscto.Value;
end;

procedure TFormSumaAplicacionesRc.edDsctoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    begin
      edImporteDscto.Value:=edSuma.Value * (edDscto.Value*0.01);
      edTotal.Value:=edSuma.Value-edImporteDscto.Value;
    end;
end;

procedure TFormSumaAplicacionesRc.edImporteDsctoChange(Sender: TObject);
begin
  if edSuma.Value>0 then
    edDscto.Value:=(edImporteDscto.Value/edSuma.Value)*100;
end;

procedure TFormSumaAplicacionesRc.edImporteDsctoClick(Sender: TObject);
begin
 edImporteDscto.SelectAll;
end;

procedure TFormSumaAplicacionesRc.edImporteDsctoEnter(Sender: TObject);
begin
  edImporteDscto.SelectAll;
end;

procedure TFormSumaAplicacionesRc.edImporteDsctoExit(Sender: TObject);
begin
 if edSuma.Value>0 then
    edDscto.Value:=(edImporteDscto.Value/edSuma.Value)*100;
end;

procedure TFormSumaAplicacionesRc.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormSumaAplicacionesRc.FormShow(Sender: TObject);
begin
  edDscto.Value       :=0;
  edSuma.Value        :=0;
  edTotal.Value       :=0;
  edImporteDscto.Value:=0;


  Screen.Cursor:=crHourGlass;
  DatosRecibos.CDSMovCCVta.First;
  DatosRecibos.CDSMovCCVta.DisableControls;
  While Not(DatosRecibos.CDSMovCCVta.Eof) do
    begin
      DatosRecibos.CDSMovCCVta.Edit;
      DatosRecibos.CDSMovCCVta.FieldByName('SELECCION').Value      := False;
      DatosRecibos.CDSMovCCVta.FieldByName('MUESTRAAPAGAR').AsFloat:= DatosRecibos.CDSMovCCVta.FieldByName('SALDO').AsFloat;
      DatosRecibos.CDSMovCCVta.Next;
    end;
  DatosRecibos.CDSMovCCVta.First;
  DatosRecibos.CDSMovCCVta.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormSumaAplicacionesRc.spCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFormSumaAplicacionesRc.spPegarClick(Sender: TObject);
var i:Integer;
begin
  edImporteDscto.Value:=edSuma.Value * (edDscto.Value*0.01);
  edTotal.Value:=edSuma.Value-edImporteDscto.Value;

  DatosRecibos.CDSMovAplicaCCVta.First;
  WHILE NOT (DatosRecibos.CDSMovAplicaCCVta.Eof) DO
    BEGIN
      DatosRecibos.CDSMovAplicaCCVta.Delete;
      DatosRecibos.CDSMovAplicaCCVta.First;
     END;
  DatosRecibos.CDSReciboTOTAL_NETOSetText(DatosRecibos.CDSReciboTOTAL_NETO,FloatToStr(edSuma.Value));
 // DatosRecibos.CDSReciboTOTAL.AsFloat            := edTotal.Value;
  DatosRecibos.CDSReciboIMPORTE_DSCTOSetText(DatosRecibos.CDSReciboIMPORTE_DSCTO,FloatToStr(edImporteDscto.Value));
//  DatosRecibos.CDSReciboPORCENTAJE_DSCTOSetText(DatosRecibos.CDSReciboPORCENTAJE_DSCTO,FloatToStr(edDscto.Value));
  DatosRecibos.CDSReciboSALDO_APLICAR.AsFloat    := edTotal.Value;
  DSMov.DataSet.First;
  DSMov.DataSet.DisableControls;
  while not(DSMov.DataSet.eof) do
    begin
     // dbgSuma.DataSource.DataSet.GotoBookmark(Pointer(dbgSuma.SelectedRows.Items[i]));
      if DSMov.DataSet.FieldByName('SELECCION').Value= True then
        begin
          if (Trunc(DatosRecibos.CDSReciboSALDO_APLICAR.AsFloat*1000)>0) then
            begin
              FormRecibo_2.dbgAplicacionesDragDrop( FormRecibo_2.dbgAplicaciones, FormRecibo_2.dbgMovCC,10,10);
              if DatosRecibos.CDSMovAplicaCCVtaID_MOV.AsString <> '' then
                begin
                  if (Trunc(DatosRecibos.CDSReciboSALDO_APLICAR.AsFloat*1000)>0) then
                    begin
                      DatosRecibos.CDSMovAplicaCCVta.Edit;
                      DatosRecibos.CDSMovAplicaCCVtaIMPORTESetText(DatosRecibos.CDSMovAplicaCCVtaIMPORTE,FloatToStr(DatosRecibos.CDSMovCCVtaMUESTRAAPAGAR.AsFloat));
                      if DatosRecibos.CDSMovAplicaCCVta.State<> dsBrowse then
                        DatosRecibos.CDSMovAplicaCCVta.Post;
                    end;
                end;
            end;
        end;
      DSMov.DataSet.Next;
      //if dbgSuma.SelectedRows.RowSelected = True then
    end;
  DSMov.DataSet.EnableControls;
  FormSumaAplicacionesRc.Close;
end;

procedure TFormSumaAplicacionesRc.spResetClick(Sender: TObject);
begin

  Screen.Cursor:=crHourGlass;
  DatosRecibos.CDSMovCCVta.First;
  DatosRecibos.CDSMovCCVta.DisableControls;
  While Not(DatosRecibos.CDSMovCCVta.eof) do
    begin
      DatosRecibos.CDSMovCCVta.Edit;
      if DatosRecibos.CDSMovCCVtaSELECCION.Value=True then
        DatosRecibos.CDSMovCCVta.FieldByName('SELECCION').Value      := False;
      DatosRecibos.CDSMovCCVta.FieldByName('MUESTRAAPAGAR').AsFloat  := DatosRecibos.CDSMovCCVta.FieldByName('SALDO').AsFloat;
      DatosRecibos.CDSMovCCVta.Next;
    end;
  DatosRecibos.CDSMovCCVta.First;
  DatosRecibos.CDSMovCCVta.EnableControls;


  edDscto.Value       :=0;
  edSuma.Value        :=0;
  edTotal.Value       :=0;
  edImporteDscto.Value:=0;
  FormRecibo_2. BuscarPendientes.Execute;
end;

end.
