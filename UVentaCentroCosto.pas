unit UVentaCentroCosto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, AdvOfficeButtons, JvDBLookup,
  Datasnap.DBClient, Datasnap.Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxBarBuiltInMenu, cxCustomPivotGrid, cxDBPivotGrid, AdvUtil,
  Vcl.DBGrids, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,System.DateUtils,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCRibbon, VCL.TMSFNCCustomControl, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCStateManager, VCL.TMSFNCResponsiveManager, AdvSmoothButton;

type
  TFormVentasPorCentroCosto = class(TFormABMBase)
    pnCabecera: TPanel;
    Label11: TLabel;
    dbcCtro: TJvDBLookupCombo;
    chbPorDia: TAdvOfficeCheckBox;
    Label1: TLabel;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    UpDown1: TUpDown;
    QCtroCosto: TFDQuery;
    QCtroCostoID: TIntegerField;
    QCtroCostoDESCRIPCION: TStringField;
    QCtroCostoPOR_DEFECTO: TStringField;
    QCtroCostoACTIVO: TStringField;
    DSCtroCosto: TDataSource;
    pcVentas: TPageControl;
    pnPie: TPanel;
    pagVentas: TTabSheet;
    QGastos: TFDQuery;
    DSPGastos: TDataSetProvider;
    CDSGastos: TClientDataSet;
    DSGastos: TDataSource;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    QVentas: TFDQuery;
    AdvStringGrid1: TAdvStringGrid;
    QVentasDETALLE_RUBRO: TStringField;
    QVentasCOSTO_TOTAL: TFloatField;
    QVentasVENTA_TOTAL: TFloatField;
    CDSGastosCTROCOSTO: TIntegerField;
    CDSGastosRUBRO_DET: TStringField;
    CDSGastosDEBE: TFloatField;
    CDSGastosHABER: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure AdvStringGrid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ArmarCuadro;
    { Public declarations }
  end;

var
  FormVentasPorCentroCosto: TFormVentasPorCentroCosto;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormVentasPorCentroCosto.AdvStringGrid1GetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  if (ACol>0) and (ARow>0) then
    HAlign:=taRightJustify;
end;

procedure TFormVentasPorCentroCosto.ArmarCuadro;
begin
end;

procedure TFormVentasPorCentroCosto.BuscarExecute(Sender: TObject);
var Aux1,Aux2:Extended;
r:integer;
begin
  inherited;
  r:=1;
  AdvStringGrid1.ClearAll;
  AdvStringGrid1.Clear;
  AdvStringGrid1.RowCount        := 2;
  AdvStringGrid1.Cells[0,0]      := 'Detalle';
  AdvStringGrid1.Cells[1,0]      := 'Debe';
  AdvStringGrid1.Cells[2,0]      := 'Haber';
  AdvStringGrid1.FontStyles[0,0] := [fsBold];
  AdvStringGrid1.FontStyles[1,0] := [fsBold];
  AdvStringGrid1.FontStyles[2,0] := [fsBold];

  AdvStringGrid1.Alignments[0,0] := taCenter;
  AdvStringGrid1.Alignments[1,0] := taCenter;
  AdvStringGrid1.Alignments[2,0] := taCenter;


  QVentas.Close;
  QVentas.ParamByName('desde').Value      := Desde.Date;
  QVentas.ParamByName('hasta').Value      := Hasta.Date;
  QVentas.ParamByName('ctro_costo').Value := dbcCtro.KeyValue;
  QVentas.Open;

  QVentas.First;
  QVentas.DisableControls;
  Aux1:=0;Aux2:=0;
  while Not(QVentas.Eof) do
    begin
      Aux1:=Aux1+QVentasVenta_TOTAL.Value;
      Aux2:=Aux2+QVentasCosto_TOTAL.Value;
      QVentas.Next;
    end;
  AdvStringGrid1.Cells[0,r]:='Ventas';
  AdvStringGrid1.Cells[1,r]:=FormatFloat(',0.00;-,0.00;-',auX1);

  Inc(r);
  AdvStringGrid1.AddRow;
  AdvStringGrid1.Cells[0,r]:='Costo de Ventas';
  AdvStringGrid1.Cells[2,r]:=FormatFloat(',0.00;-,0.00;-',auX2);
  AdvStringGrid1.ColorRect(0,0,3,0,clMoneyGreen);

  CDSGastos.Close;
  CDSGastos.Params.ParamByName('desde').Value    := Desde.Date;
  CDSGastos.Params.ParamByName('hasta').Value    := Hasta.Date;
  CDSGastos.Params.ParamByName('ct').Value       := dbcCtro.KeyValue;
  CDSGastos.Params.ParamByName('Ingresos').Value := 1;
  CDSGastos.Params.ParamByName('Vtas').Value     := 0;
  CDSGastos.Params.ParamByName('Personal').Value := 1;
  CDSGastos.Open;
  if Not(CDSGastos.IsEmpty) then
    begin
      Inc(r,2);
      AdvStringGrid1.AddRow;
      AdvStringGrid1.AddRow;
    end;
  Aux1:=0;Aux2:=0;
  CDSGastos.First;
  CDSGastos.DisableControls;
  while not(CDSGastos.Eof) do
    begin
      AdvStringGrid1.Cells[0,r]:=CDSGastosRUBRO_DET.AsString;
      AdvStringGrid1.Cells[1,r]:=FormatFloat(',0.00;-,0.00;-',CDSGastosDEBE.AsFloat);
      AdvStringGrid1.Cells[2,r]:=FormatFloat(',0.00;-,0.00;-',CDSGastosHABER.AsFloat);
      Aux1:=Aux1+CDSGastosDEBE.AsFloat;
      Aux2:=Aux2+CDSGastosHABER.AsFloat;
      r:=r+1;
      AdvStringGrid1.AddRow;
      CDSGastos.Next;
    end;
  CDSGastos.First;
  CDSGastos.EnableControls;
  AdvStringGrid1.AddRow;

  AdvStringGrid1.Cells[1,r]:=FormatFloat(',0.00;-,0.00;-',Aux1);
  AdvStringGrid1.Cells[2,r]:=FormatFloat(',0.00;-,0.00;-',Aux2);
  AdvStringGrid1.FontStyles[1,r]:= [fsBold];
  AdvStringGrid1.FontStyles[2,r]:= [fsBold];
end;

procedure TFormVentasPorCentroCosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;
end;

procedure TFormVentasPorCentroCosto.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  QCtroCosto.Open;
end;

procedure TFormVentasPorCentroCosto.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVentasPorCentroCosto:=nil;
end;

procedure TFormVentasPorCentroCosto.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

procedure TFormVentasPorCentroCosto.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  Buscar.Execute;
end;
  //  Desde.SetFocus;

end.
