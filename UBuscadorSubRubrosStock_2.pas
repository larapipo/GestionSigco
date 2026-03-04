unit UBuscadorSubRubrosStock_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSearchList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, Vcl.Buttons, JvExStdCtrls, JvCombobox, JvDBCombobox,
  AdvSearchEdit, DBAdvSearchEdit, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, Vcl.ActnList;

type
  TFormBuscadorSubRubro_RubroStock = class(TForm)
    pnCabecera: TPanel;
    Label1: TLabel;
    sBuscar: TDBAdvSearchEdit;
    cbRubro: TJvDBComboBox;
    pnPie: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    pnPrincipal: TPanel;
    gCuenta: TcxGrid;
    gCuentaDet: TcxGridDBTableView;
    gCuentaLevel1: TcxGridLevel;
    QRubros: TFDQuery;
    DSPRubros: TDataSetProvider;
    CDSRubros: TClientDataSet;
    DSRubros: TDataSource;
    DSSubRub: TDataSource;
    CDSSubRub: TClientDataSet;
    DSPSubRub: TDataSetProvider;
    QSubRub: TFDQuery;
    CDSRubrosCODIGO_RUBRO: TStringField;
    CDSRubrosDETALLE_RUBRO: TStringField;
    CDSSubRubCODIGO_SUBRUBRO: TStringField;
    CDSSubRubDETALLE_SUBRUBRO: TStringField;
    CDSSubRubCODIGO_RUBRO: TStringField;
    CDSSubRubMUESTRARUBRO: TStringField;
    ActionList1: TActionList;
    Confirma: TAction;
    Cancelar: TAction;
    gCuentaDetCODIGO_SUBRUBRO: TcxGridDBColumn;
    gCuentaDetDETALLE_SUBRUBRO: TcxGridDBColumn;
    gCuentaDetCODIGO_RUBRO: TcxGridDBColumn;
    gCuentaDetMUESTRARUBRO: TcxGridDBColumn;
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure cbRubroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gCuentaDetKeyPress(Sender: TObject; var Key: Char);
    procedure gCuentaDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sBuscarSelect(Sender: TObject);
    procedure gCuentaDetDblClick(Sender: TObject);
    procedure gCuentaDetEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure sBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure sBuscarEnter(Sender: TObject);
    procedure sBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FRubro:           string;
    FSubRub:          string;
    FDetalleRubro:    string;
    FDetalleSubRubro: string;
  public
    { Public declarations }
  published
    property  Rubro:          string read FRubro write FRubro;
    property  SubRubro:       string read FSubRub write FSubRub;
    property  DetalleSubRub:  string read FDetalleSubRubro write FDetalleSubRubro;
    property  DetalleRubro:   string read FDetalleRubro write FDetalleRubro;

  end;

var
  FormBuscadorSubRubro_RubroStock: TFormBuscadorSubRubro_RubroStock;

implementation

uses UDMain_FD;

{$R *.dfm}


procedure TFormBuscadorSubRubro_RubroStock.CancelarExecute(Sender: TObject);
begin
  FRubro            := '';
  FSubRub           := '';
  FDetalleRubro     := '';
  FDetalleSubRubro  := '';
  ModalResult       := mrCancel;
  Close;
end;

procedure TFormBuscadorSubRubro_RubroStock.cbRubroChange(Sender: TObject);
begin
  CDSSubRub.Close;
  if cbRubro.Text = '' then
    CDSSubRub.ParamByName('rubro').Clear
  else
    CDSSubRub.ParamByName('rubro').Value   :=  CDSRubrosCODIGO_RUBRO.AsString;
  CDSSubRub.Open;
end;

procedure TFormBuscadorSubRubro_RubroStock.cbRubroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DELETE,
    VK_ESCAPE,
    VK_BACK:    begin
                  cbRubro.ClearSelection;
                  CDSRubros.Close;
                  CDSSubRub.Close;
                  CDSSubRub.ParamByName('rubro').Clear;
                  CDSSubRub.Open;
                end;
    VK_RETURN:  gCuenta.SetFocus;
  end;
end;

procedure TFormBuscadorSubRubro_RubroStock.ConfirmaExecute(Sender: TObject);
begin
  if (CDSSubRub.Active) and (not CDSSubRub.IsEmpty) then
    begin
      FRubro           :=  CDSSubRubCODIGO_RUBRO.AsString;
      FSubRub          :=  CDSSubRubCODIGO_SUBRUBRO.AsString;
      FDetalleRubro    :=  CDSSubRubMUESTRARUBRO.AsString;
      FDetalleSubRubro :=  CDSSubRubDETALLE_SUBRUBRO.AsString;
      ModalResult      :=  mrOk;
    end
  else
    Cancelar.Execute;
end;

procedure TFormBuscadorSubRubro_RubroStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSRubros.Close;
  CDSSubRub.Close;
  Action  :=  caFree;
end;

procedure TFormBuscadorSubRubro_RubroStock.FormCreate(Sender: TObject);
begin
  CDSSubRub.Close;
  CDSSubRub.ParamByName('rubro').Clear;
  CDSSubRub.Open;
end;

procedure TFormBuscadorSubRubro_RubroStock.FormDestroy(Sender: TObject);
begin
  FormBuscadorSubRubro_RubroStock  :=  nil;
end;

procedure TFormBuscadorSubRubro_RubroStock.gCuentaDetDblClick(Sender: TObject);
begin
  Confirma.Execute;
end;

procedure TFormBuscadorSubRubro_RubroStock.gCuentaDetEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  if Key=#13 then
    Confirma.Execute;

end;

procedure TFormBuscadorSubRubro_RubroStock.gCuentaDetKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_RETURN:  Confirma.Execute;
    VK_ESCAPE:  Cancelar.Execute;
    VK_DELETE,VK_BACK :
                begin
                  sBuscar.SetFocus;
                  sBuscar.Text  :=  '';
                end;
    VK_UP:begin
            if Not(CDSSubRub.Bof) then
              CDSSubRub.Prior
            else
              sBuscar.SetFocus;
          end;
  end;
end;

procedure TFormBuscadorSubRubro_RubroStock.gCuentaDetKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key in ['A'..'Z','a'..'z','0'..'9'] then
    begin
      sBuscar.Text      :=  '';
      sBuscar.SetFocus;
      sBuscar.Text      :=  Key;
      sBuscar.SelStart  :=  1;
      Key               :=  #0;
    end;
end;

procedure TFormBuscadorSubRubro_RubroStock.sBuscarEnter(Sender: TObject);
begin
  sBuscar.SelectAll;
end;

procedure TFormBuscadorSubRubro_RubroStock.sBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_UP) and (not(CDSSubRub.Bof)) then
    CDSSubRub.Prior
  else
    if (Key=VK_NEXT) and (not(CDSSubRub.Eof)) then
      CDSSubRub.Next;

end;

procedure TFormBuscadorSubRubro_RubroStock.sBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
   Confirma.Execute;

end;

procedure TFormBuscadorSubRubro_RubroStock.sBuscarSelect(Sender: TObject);
begin
  gCuenta.SetFocus;
  CDSSubRub.Locate('codigo_SubRubro',sBuscar.SearchList.SelectedItem.Captions[0],[]);
end;

end.
