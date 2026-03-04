unit UComposicionVta_Cobros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid,DateUtils, Mask, JvExMask, JvToolEdit,cxExportPivotGridLink, Menus,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, System.ImageList, AdvOfficeButtons;

type
  TFormComposicionVtas_Cobros = class(TFormABMBase)
    DSVtas: TDataSource;
    cxDBPivotGrid: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    PopupMenu1: TPopupMenu;
    ExportaraExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Label3: TLabel;
    QVtas: TFDQuery;
    Panel2: TPanel;
    Label1: TLabel;
    desde: TJvDateEdit;
    Label2: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Label4: TLabel;
    CDSVtas: TClientDataSet;
    CDSVtasID_CPBTE: TIntegerField;
    CDSVtasTIPOCPBTE: TStringField;
    CDSVtasCLASECPBTE: TStringField;
    CDSVtasNUMEROCPBTE: TStringField;
    CDSVtasCODIGO: TStringField;
    CDSVtasNOMBRE: TStringField;
    CDSVtasTOTAL: TFMTBCDField;
    CDSVtasANIO: TSmallintField;
    CDSVtasMES: TSmallintField;
    CDSVtasCODSUCURSAL: TIntegerField;
    CDSVtasMUESTRASUCURSAL: TStringField;
    CDSVtasTOTAL_CALCULADO: TFloatField;
    DataSetProvider1: TDataSetProvider;
    chbSincronizarFechas: TAdvOfficeCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSVtasCalcFields(DataSet: TDataSet);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComposicionVtas_Cobros: TFormComposicionVtas_Cobros;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormComposicionVtas_Cobros.BuscarExecute(Sender: TObject);
Var i:integer;
begin
//  inherited;
  CDSVtas.Close;
  CDSVtas.Params.ParamByName('desde').Value := desde.Date;
  CDSVtas.Params.ParamByName('hasta').Value := hasta.Date;
  CDSVtas.Open;
  for i := 0 to cxDBPivotGrid.FieldCount - 1 do
    cxDBPivotGrid.Fields[i].ExpandAll;

end;

procedure TFormComposicionVtas_Cobros.CDSVtasCalcFields(DataSet: TDataSet);
begin
  inherited;
 // CDSVtasTOTAL_CALCULADO.AsFloat:=CDSVtasTOTAL.AsFloat;

 // if (CDSVtasTIPOCPBTE.Value='RC') or (CDSVtasTIPOCPBTE.Value='NC') then
 //   CDSVtasTOTAL_CALCULADO.Value:=CDSVtasTOTAL_CALCULADO.Value*-1;

end;

procedure TFormComposicionVtas_Cobros.DSBaseStateChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFormComposicionVtas_Cobros.ExportaraExcel1Click(Sender: TObject);
begin
  inherited;
  SaveDialog1.FileName   := 'Existencias';
  SaveDialog1.DefaultExt := 'XLS';
  if SaveDialog1.Execute Then
    cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid)
end;

procedure TFormComposicionVtas_Cobros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //*************************************************************
  cxDBPivotGrid.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaCob');
  //*************************************************************
  inherited;
  Action:=caFree;
end;

procedure TFormComposicionVtas_Cobros.FormCreate(Sender: TObject);
VAR M,D,A:Word;
begin
  Autosize:=False;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date));
  cxDBPivotGrid.OptionsView.FilterFields:=False;
end;

procedure TFormComposicionVtas_Cobros.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComposicionVtas_Cobros:=nil;
end;

procedure TFormComposicionVtas_Cobros.FormShow(Sender: TObject);
begin
  inherited;
 //*************************************************************
  cxDBPivotGrid.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaCob');
  //*************************************************************
end;

procedure TFormComposicionVtas_Cobros.Label3Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid.OptionsView.FilterFields:=Not(cxDBPivotGrid.OptionsView.FilterFields);
end;

procedure TFormComposicionVtas_Cobros.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if chbSincronizarFechas.Checked then
    begin
      if Button=btnext Then
        begin
          Desde.Date := IncDay(Desde.Date,(1));
          Hasta.Date := Desde.Date;
        end
      else
        if Button=btPrev Then
          begin
            Desde.Date := IncDay(Desde.Date,(-1));
            Hasta.Date := Desde.Date;
          end;
     end
   else
     if Not(chbSincronizarFechas.Checked) then
       begin
         if Button=btnext Then
           begin
             Desde.Date := IncMonth(Desde.Date,1);
             Hasta.Date := IncMonth(Hasta.Date,1);
           end
         else
           if Button=btPrev Then
             begin
               Desde.Date := IncMonth(Desde.Date,-1);
               Hasta.Date := IncMonth(Hasta.Date,-1);
             end;
     end;
    Buscar.Execute;

end;

end.
