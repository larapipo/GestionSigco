unit UStockTree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvExControls, JvDBLookupTreeView, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, JvBaseDlg,
  JvProgressDialog, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormArmadoAdicionalPlantillaPedidos = class(TFormABMBase)
    QRubros: TFDQuery;
    DSRubros: TDataSource;
    QSubRubros: TFDQuery;
    DSSubRubros: TDataSource;
    QStock: TFDQuery;
    DSStock: TDataSource;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QSubRubrosCODIGO_RUBRO: TStringField;
    QSubRubrosCODIGO_SUBRUBRO: TStringField;
    QSubRubrosDETALLE_SUBRUBRO: TStringField;
    QRubrosCODIGO_RUBRO: TStringField;
    QRubrosDETALLE_RUBRO: TStringField;
    Consultar: TAction;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO_RUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView2CODIGO_RUBRO: TcxGridDBColumn;
    cxGrid1DBTableView2CODIGO_SUBRUBRO: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid1DBTableView3CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView3DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView3RUBRO_STK: TcxGridDBColumn;
    cxGrid1DBTableView3SUBRUBRO_STK: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QStockSELECTED: TStringField;
    cxGrid1DBTableView3SELECTED: TcxGridDBColumn;
    procedure ConsultarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView3DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxGrid1DBTableView2DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArmadoAdicionalPlantillaPedidos: TFormArmadoAdicionalPlantillaPedidos;

implementation
uses UDMain_FD;

{$R *.dfm}

procedure TFormArmadoAdicionalPlantillaPedidos.BuscarExecute(Sender: TObject);
begin
//  inherited;
 QRubros.Open;
 QSubRubros.Close;
 QSubRubros.ParamByName('rubro').Value:='***';
 QSubRubros.Open;
 QStock.Close;
 QStock.ParamByName('subrubro').Value:='*****';
 QStock.Open;

end;

procedure TFormArmadoAdicionalPlantillaPedidos.ConsultarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
  Detalle:String;
BEGIN
 { Nodo1 := NIL;
  tvListado.Items.Clear;
  QRubros.Close;
  QSubRubros.Close;

  QRubros.Open;
  QRubros.First;
  QRubros.DisableControls;
  pdProgress.Min:=0;
  pdProgress.Max:=QRubros.RecordCount-1;
  pdProgress.Position:=0;
  pdProgress.Show;
  WHILE NOT (QRubros.Eof) DO
    BEGIN
      pdProgress.Position:=pdProgress.Position+1;
      Application.ProcessMessages;
      Nodo1 := tvListado.Items.Add(NIL, QRubrosCODIGO_RUBRO.AsString + '-' +  QRubrosDETALLE_RUBRO.Value);
      tvListado.Selected := Nodo1;
      N := tvListado.Selected.AbsoluteIndex;

      QSubRubros.Close;
      QSubRubros.ParamByName('rubro').Value := QRubrosCODIGO_RUBRO.Value;
      QSubRubros.Open;
      QSubRubros.First;
      QSubRubros.DisableControls;
      WHILE NOT (QSubRubros.Eof) DO
        BEGIN
          Nodo1 := tvListado.Items.AddChild(tvListado.Items[N], QSubRubrosCODIGO_SUBRUBRO.AsString + '-' + QSubRubrosDETALLE_SUBRUBRO.Value);
          tvListado.Selected := Nodo1;
          Detalle:= QRubrosDETALLE_RUBRO.AsString;
          N := tvListado.Selected.AbsoluteIndex;
          QStock.Close;
          QStock.ParamByName('Subrubro').Value := QSubRubrosCODIGO_SUBRUBRO.Value;
          QStock.Open;
          QStock.First;
          QStock.DisableControls;
          while not(QStock.Eof) do
            begin
              Nodo1 := tvListado.Items.AddChild(tvListado.Items[N], QStockCODIGO_STK.AsString + '-' + QStockDETALLE_STK.Value);
              tvListado.Selected := Nodo1;
              Detalle:= QRubrosDETALLE_RUBRO.AsString;
              QStock.Next;
            end;
          QSubRubros.Next;
        END;
      QSubRubros.EnableControls;
      QRubros.Next;
    END;
  QRubros.EnableControls;
  }
end;

procedure TFormArmadoAdicionalPlantillaPedidos.cxGrid1DBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  ADataController.CollapseDetails;
end;

procedure TFormArmadoAdicionalPlantillaPedidos.cxGrid1DBTableView2DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
 ADataController.CollapseDetails;
end;

procedure TFormArmadoAdicionalPlantillaPedidos.cxGrid1DBTableView3DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
 ADataController.CollapseDetails;
end;

procedure TFormArmadoAdicionalPlantillaPedidos.DSBaseStateChange(
  Sender: TObject);
begin
 // inherited;

end;

procedure TFormArmadoAdicionalPlantillaPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormArmadoAdicionalPlantillaPedidos.FormCreate(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  AutoSize           :=False;
end;

procedure TFormArmadoAdicionalPlantillaPedidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormArmadoAdicionalPlantillaPedidos:=nil;
end;

end.
