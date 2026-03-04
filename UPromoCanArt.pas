unit UPromoCanArt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGrid, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  Datasnap.DBClient, Datasnap.Provider, System.ImageList, dxSkinWXI;

type
  TFormPromo_x_Cant = class(TFormABMBase)
    QArtPromo_: TFDQuery;
    QArtPromo_CODIGO: TStringField;
    QArtPromo_CANT_DESDE: TFloatField;
    QArtPromo_DESCTO: TFloatField;
    QArtPromo_MODO: TStringField;
    QArtPromo_MUESTRADETALLE: TStringField;
    DSArtPromo: TDataSource;
    Panel2: TPanel;
    BuscarArticulos: TAction;
    QArticulos: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    QArtControl: TFDQuery;
    QArtControlCODIGO: TStringField;
    QArtPromo_MUESTRARUBRO: TStringField;
    QArtPromo_MUESTRASUBRUBRO: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRADETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CANT_DESDE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCTO: TcxGridDBColumn;
    cxGrid1DBTableView1MODO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRARUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASUBRUBRO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    spControl: TFDStoredProc;
    JvDBFindEdit1: TJvDBFindEdit;
    DSPArtPromo: TDataSetProvider;
    CDSArtPromo: TClientDataSet;
    CDSArtPromoCODIGO: TStringField;
    CDSArtPromoMUESTRADETALLE: TStringField;
    CDSArtPromoCANT_DESDE: TFloatField;
    CDSArtPromoDESCTO: TFloatField;
    CDSArtPromoMODO: TStringField;
    CDSArtPromoMUESTRARUBRO: TStringField;
    CDSArtPromoMUESTRASUBRUBRO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBFindEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSArtPromoAfterDelete(DataSet: TDataSet);
    procedure CDSArtPromoAfterPost(DataSet: TDataSet);
    procedure CDSArtPromoBeforePost(DataSet: TDataSet);
    procedure CDSArtPromoCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSArtPromoCANT_DESDESetText(Sender: TField; const Text: string);
    procedure CDSArtPromoDESCTOSetText(Sender: TField; const Text: string);
    procedure CDSArtPromoNewRecord(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPromo_x_Cant: TFormPromo_x_Cant;

implementation
uses UDMain_FD,UBuscadorArticulos;

{$R *.dfm}

procedure TFormPromo_x_Cant.BuscarArticulosExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
  if Not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

   FormBuscadorArticulos.ShowModal;
  if(FormBuscadorArticulos.Codigo<>'') Then
     CDSArtPromoCODIGOSetText( CDSArtPromoCODIGO,FormBuscadorArticulos.Codigo);

end;

procedure TFormPromo_x_Cant.BuscarExecute(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(True);// <<<<<<<<  para expandir
end;

procedure TFormPromo_x_Cant.CDSArtPromoAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSArtPromo.ApplyUpdates(0);
end;

procedure TFormPromo_x_Cant.CDSArtPromoAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSArtPromo.ApplyUpdates(0);
end;

procedure TFormPromo_x_Cant.CDSArtPromoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(CDSArtPromoCODIGO.AsString)='') or (Trim(CDSArtPromoMUESTRADETALLE.AsString)='') or
     (Trim(CDSArtPromoCANT_DESDE.AsString)='') or (Trim(CDSArtPromoDESCTO.AsString)='') then
    begin
      CDSArtPromo.Cancel;
      System.SysUtils.Abort;
    end;
end;

procedure TFormPromo_x_Cant.CDSArtPromoCANT_DESDESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if (Sender.Value<=0) and (CDSArtPromoDESCTO.Value>0) then
    CDSArtPromoDESCTOSetText(CDSArtPromoDESCTO,'0');
end;

procedure TFormPromo_x_Cant.CDSArtPromoCODIGOSetText(Sender: TField;
  const Text: string);
var Existe:String;
begin
  inherited;
  if CDSArtPromo.State=dsBrowse  then
    CDSArtPromo.Edit;
  if (Text<>#13) and (Text<>'') then
    begin
      Sender.AsString:=Copy('00000000',1,8-Length(Trim(Text)))+Trim(Text);
      QArticulos.Close;
      QArticulos.ParamByName('codigo').AsString:=Sender.AsString;
      QArticulos.Open();

      QArtControl.Close;
      QArtControl.ParamByName('codigo').AsString:=Sender.AsString;
      QArtControl.Open();

      if (Trim(QArticulosCODIGO_STK.AsString)<>'') and (Trim(QArtControlCODIGO.AsString)='') then
        CDSArtPromoMUESTRADETALLE.Value:=QArticulosDETALLE_STK.Value
      else
        begin
          Sender.Clear;
          CDSArtPromo.Cancel;
          System.SysUtils.Abort;
          ShowMessage('Dato no Valido...');
        end;
    end;
end;

procedure TFormPromo_x_Cant.CDSArtPromoDESCTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if (Sender.Value<=0) and (CDSArtPromoCANT_DESDE.Value>0) then
    CDSArtPromoCANT_DESDESetText(CDSArtPromoCANT_DESDE,'0');
end;

procedure TFormPromo_x_Cant.CDSArtPromoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSArtPromoCANT_DESDE.Value:=0;
  CDSArtPromoDESCTO.Value    :=0;
end;

procedure TFormPromo_x_Cant.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormPromo_x_Cant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormPromo_x_Cant.FormCreate(Sender: TObject);
begin
  inherited;
  CDSArtPromo.Close;
  CDSArtPromo.Open();
  cxGrid1DBTableView1.ViewData.Expand(True);// <<<<<<<<  para expandir
  AutoSize:=False;
end;

procedure TFormPromo_x_Cant.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPromo_x_Cant:=nil;
end;

procedure TFormPromo_x_Cant.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TDBGrid) then
    inherited;

end;

procedure TFormPromo_x_Cant.FormResize(Sender: TObject);
begin
  inherited;
  if FormPromo_x_Cant<>nil then
    if FormPromo_x_Cant.Width<>762 then
      FormPromo_x_Cant.Width:=762;

end;

procedure TFormPromo_x_Cant.FormShow(Sender: TObject);
begin
  inherited;
  spControl.Close;
  spControl.ExecProc;
  spControl.Close;
end;

procedure TFormPromo_x_Cant.JvDBFindEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(True);// <<<<<<<<  para expandir
end;



end.
