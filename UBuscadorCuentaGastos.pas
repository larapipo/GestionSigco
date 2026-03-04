unit UBuscadorCuentaGastos;

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
  dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.StdCtrls, Vcl.Buttons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvSearchEdit, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DBAdvSearchEdit, System.Actions, Vcl.ActnList, AdvCombo,
  AdvDBComboBox;

type
  TFormBuscadorCuentaGastos = class(TForm)
    pnPrincipal: TPanel;
    pnCabecera: TPanel;
    Label1: TLabel;
    gCuentaDet: TcxGridDBTableView;
    gCuentaLevel1: TcxGridLevel;
    gCuenta: TcxGrid;
    pnPie: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    QRubros: TFDQuery;
    DSPRubros: TDataSetProvider;
    CDSRubros: TClientDataSet;
    DSRubros: TDataSource;
    QCuentas: TFDQuery;
    DSPCuentas: TDataSetProvider;
    CDSCuentas: TClientDataSet;
    DSCuentas: TDataSource;
    CDSCuentasCODIGO: TStringField;
    CDSCuentasCODIGO_RUBRO: TStringField;
    CDSCuentasDETALLE: TStringField;
    CDSCuentasEXCLUYE: TStringField;
    gCuentaDetCODIGO: TcxGridDBColumn;
    gCuentaDetCODIGO_RUBRO: TcxGridDBColumn;
    gCuentaDetDETALLE: TcxGridDBColumn;
    gCuentaDetEXCLUYE: TcxGridDBColumn;
    CDSCuentasMUESTRARUBRO: TStringField;
    gCuentaDetMUESTRARUBRO: TcxGridDBColumn;
    sBuscar: TDBAdvSearchEdit;
    ActionList1: TActionList;
    Confirma: TAction;
    Cancelar: TAction;
    CDSRubrosCODIGO: TStringField;
    CDSRubrosDETALLE: TStringField;
    cbRubro: TJvDBComboBox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cbRubroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sBuscarEnter(Sender: TObject);
    procedure sBuscarSelect(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure gCuentaDetDblClick(Sender: TObject);
    procedure gCuentaDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gCuentaDetKeyPress(Sender: TObject; var Key: Char);
    procedure cbRubroDropDown(Sender: TObject);
    procedure gCuentaDetEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure sBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FRubro:         string;
    FCuenta:      string;
    FDetalleRubro:  string;
    FDetalleCuenta: string;
  public
    { Public declarations }

  published
    property  Rubro:          string read FRubro write FRubro;
    property  Cuenta:         string read FCuenta write FCuenta;
    property  DetalleCuenta:  string read FDetalleCuenta write FDetalleCuenta;
    property  DetalleRubro:   string read FDetalleRubro write FDetalleRubro;
  end;

var
  FormBuscadorCuentaGastos: TFormBuscadorCuentaGastos;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormBuscadorCuentaGastos.CancelarExecute(Sender: TObject);
begin
  FRubro            := '';
  FCuenta           := '';
  FDetalleRubro     := '';
  FDetalleCuenta    := '';
  ModalResult       := mrCancel;
  Close;
end;

procedure TFormBuscadorCuentaGastos.cbRubroChange(Sender: TObject);
begin
  CDSCuentas.Close;
  if cbRubro.Text = '' then
    CDSCuentas.ParamByName('rubro').Clear
  else
    CDSCuentas.ParamByName('rubro').Value   :=  CDSRubrosCODIGO.AsString;
  CDSCuentas.Open;
end;

procedure TFormBuscadorCuentaGastos.cbRubroDropDown(Sender: TObject);
begin
  CDSRubros.Open;
end;

procedure TFormBuscadorCuentaGastos.cbRubroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DELETE,
    VK_ESCAPE,
    VK_BACK:    begin
                  cbRubro.ClearSelection;
                  CDSRubros.Close;
                  CDSCuentas.Close;
                  CDSCuentas.ParamByName('rubro').Clear;
                  CDSCuentas.Open;
                end;
    VK_RETURN:  gCuenta.SetFocus;
  end;
end;

procedure TFormBuscadorCuentaGastos.ConfirmaExecute(Sender: TObject);
begin
  if (CDSCuentas.Active) and (not CDSCuentas.IsEmpty) then
    begin
      FRubro          :=  CDSCuentasCODIGO_RUBRO.AsString;
      FCuenta         :=  CDSCuentasCODIGO.AsString;
      FDetalleRubro   :=  CDSCuentasMUESTRARUBRO.AsString;
      FDetalleCuenta  :=  CDSCuentasDETALLE.AsString;
      ModalResult     :=  mrOk;
    end
  else
    Cancelar.Execute;
end;

procedure TFormBuscadorCuentaGastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSRubros.Close;
  CDSCuentas.Close;
  Action  :=  caFree;
end;

procedure TFormBuscadorCuentaGastos.FormCreate(Sender: TObject);
begin
  CDSCuentas.Close;
  CDSCuentas.ParamByName('rubro').Clear;
  CDSCuentas.Open;
end;

procedure TFormBuscadorCuentaGastos.FormDestroy(Sender: TObject);
begin
  FormBuscadorCuentaGastos  :=  nil;
end;

procedure TFormBuscadorCuentaGastos.FormShow(Sender: TObject);
begin
  sBuscar.SetFocus;
  sBuscar.SelectAll;
end;

procedure TFormBuscadorCuentaGastos.gCuentaDetDblClick(Sender: TObject);
begin
  Confirma.Execute;
end;

procedure TFormBuscadorCuentaGastos.gCuentaDetEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  if key=#13 then
     Confirma.Execute;
end;

procedure TFormBuscadorCuentaGastos.gCuentaDetKeyDown(Sender: TObject;
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
            if Not(CDSCuentas.Bof) then
              CDSCuentas.Prior
            else
              sBuscar.SetFocus;
          end;
  end;

end;

procedure TFormBuscadorCuentaGastos.gCuentaDetKeyPress(Sender: TObject;
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

procedure TFormBuscadorCuentaGastos.sBuscarEnter(Sender: TObject);
begin
  sBuscar.SelectAll;
end;

procedure TFormBuscadorCuentaGastos.sBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
   Confirma.Execute;
end;

procedure TFormBuscadorCuentaGastos.sBuscarSelect(Sender: TObject);
begin
  gCuenta.SetFocus;
  CDSCuentas.Locate('codigo',sBuscar.SearchList.SelectedItem.Captions[0],[]);

end;

end.
