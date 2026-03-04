unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, JvLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TFormABMBase1 = class(TFormABMBase)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pnCab: TPanel;
    Label1: TLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    UpDown1: TUpDown;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    QListCheqes: TFDQuery;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABMBase1: TFormABMBase1;

implementation

{$R *.dfm}

procedure TFormABMBase1.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSAjustes.Close;
  CDSAjustes.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSAjustes.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSAjustes.Params.ParamByName('deposito').Value:= dbcDeposito.KeyValue;
  if ( chbPorArticulo.Checked ) then
    CDSAjustes.Params.ParamByName('codigo').Value:=ceCodigo.Text
  else
    CDSAjustes.Params.ParamByName('codigo').Value:='********';
  CDSAjustes.Open;

  CDSRtoAjustes.Close;
  CDSRtoAjustes.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSRtoAjustes.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSRtoAjustes.Open;

  Sumar.Execute;

  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir
end;

procedure TFormABMBase1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
end;

end.
