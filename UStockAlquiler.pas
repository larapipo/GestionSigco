unit UStockAlquiler;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, System.Actions, Vcl.ActnList, Datasnap.DBClient,
   Datasnap.Provider, Vcl.Menus, cxCheckBox, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, DateUtils,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations;

type
  TFormStockAlquiler = class(TForm)
    DSStockAlquiler: TDataSource;
    dbgStockAlqDet: TcxGridDBTableView;
    dbgStockAlqLevel1: TcxGridLevel;
    dbgStockAlq: TcxGrid;
    dbgStockAlqDetCODIGO_STK: TcxGridDBColumn;
    dbgStockAlqDetDETALLE_STK: TcxGridDBColumn;
    dbgStockAlqDetDISPONIBLE: TcxGridDBColumn;
    dbgStockAlqDetENTREGADO_A: TcxGridDBColumn;
    dbgStockAlqDetFECHAENTREGA: TcxGridDBColumn;
    ActionList1: TActionList;
    Remito: TAction;
    QBuscaRto: TFDQuery;
    DSPStockAlquiler: TDataSetProvider;
    CDSStockAlquiler: TClientDataSet;
    CDSStockAlquilerCODIGO_STK: TStringField;
    CDSStockAlquilerDETALLE_STK: TStringField;
    CDSStockAlquilerDISPONIBLE: TStringField;
    ppmAlquileres: TPopupMenu;
    pEntrega: TMenuItem;
    pDevolver: TMenuItem;
    Entregar: TAction;
    Devolver: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btSalir: TBitBtn;
    btEntrega: TBitBtn;
    btDevolucion: TBitBtn;
    chDisponibles: TCheckBox;
    edBuscar: TJvDBFindEdit;
    QStockAlquiler: TFDQuery;
    QRtosAlq: TFDQuery;
    CDSStockAlquilerid_rto: TIntegerField;
    QRtosAlqCODIGOARTICULO: TStringField;
    QRtosAlqCODIGO: TStringField;
    QRtosAlqNOMBRE: TStringField;
    CDSStockAlquilerFECHA_ENTREGA: TDateField;
    CDSStockAlquilerNOMBRE: TStringField;
    CDSStockAlquilerCODIGO: TStringField;
    QStockAlquilerCODIGO_STK: TStringField;
    QStockAlquilerDETALLE_STK: TStringField;
    QStockAlquilerDISPONIBLE: TStringField;
    QRtosAlqID_CABRTO: TIntegerField;
    CDSStockAlquilerFECHA_DEVOLUCION: TDateTimeField;
    QRtosAlqFECHA_ENTREGA: TSQLTimeStampField;
    QRtosAlqFECHA_DEVOLUCION_ALQ: TSQLTimeStampField;
    dbgStockAlqDetFECHA_DEVOLUCION: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RemitoExecute(Sender: TObject);
    procedure dbgStockAlqDetCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ppmAlquileresPopup(Sender: TObject);
    procedure EntregarExecute(Sender: TObject);
    procedure DevolverExecute(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure chDisponiblesClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSStockAlquilerBeforeOpen(DataSet: TDataSet);
    procedure CDSStockAlquilerAfterClose(DataSet: TDataSet);
    procedure CDSStockAlquilerAfterScroll(DataSet: TDataSet);
    procedure dbgStockAlqDetCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }

  public
  end;

var
  FormStockAlquiler: TFormStockAlquiler;

implementation

uses
  UDMain_FD, URemitos, DMRemitos, UBuscadorClientes;

{$R *.dfm}


procedure TFormStockAlquiler.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormStockAlquiler.CDSStockAlquilerAfterClose(DataSet: TDataSet);
begin
  QRtosAlq.Close;
end;

procedure TFormStockAlquiler.CDSStockAlquilerAfterScroll(DataSet: TDataSet);
begin
  if DataSet.Active then
    btDevolucion.Enabled  :=  CDSStockAlquilerDISPONIBLE.AsString='N'
  else
    btDevolucion.Enabled  :=  False;
end;

procedure TFormStockAlquiler.CDSStockAlquilerBeforeOpen(DataSet: TDataSet);
begin
  QRtosAlq.Open;
end;

procedure TFormStockAlquiler.chDisponiblesClick(Sender: TObject);
begin
  if (Sender as TCheckBox).Checked then
    CDSStockAlquiler.Filter :=  'Disponible=' + QuotedStr('S')
  else
    CDSStockAlquiler.Filter :=  '';
end;

procedure TFormStockAlquiler.RemitoExecute(Sender: TObject);
begin
  if Not Assigned(FormRemitos) then
    FormRemitos         :=  TFormRemitos.Create(self);
  if CDSStockAlquilerDISPONIBLE.AsString = 'N' then
    begin
      FormRemitos.Show;
      FormRemitos.TipoCpbte :=  'RE';
      FormRemitos.DatoNew   :=  CDSStockAlquilerID_RTO.AsString;
      FormRemitos.Recuperar.Execute;
    end
  else
    begin
      Entregar.Execute;
    end;

end;


procedure TFormStockAlquiler.dbgStockAlqDetCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Remito.Execute;
end;


procedure TFormStockAlquiler.dbgStockAlqDetCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var
  Text  :string;
begin
  if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex,dbgStockAlqDetDISPONIBLE.Index)='N' then
    begin
      try
        Text  :=  Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, dbgStockAlqDetFECHA_DEVOLUCION.Index);
      except
        Text  :=  '';
      end;

      if (Text<>'') and (StrToDateTime(Text) < Date) then
        begin
          if AViewInfo.Selected then
            begin
              ACanvas.Brush.Color := clPurple;
              ACanvas.Font.Color  := clWhite;
            end
          else
            begin
              ACanvas.Brush.Color := clRed;
              ACanvas.Font.Color  := clWhite;
            end;
        end
      else
        begin
          ACanvas.Brush.Color := clWhite;
          ACanvas.Font.Color  := clBlack;
        end;
    end;
end;

procedure TFormStockAlquiler.DevolverExecute(Sender: TObject);
begin
  if Not Assigned(FormRemitos) then
    FormRemitos         :=  TFormRemitos.Create(Application);
  FormRemitos.Show;
  FormRemitos.TipoCpbte :=  'RE';
  FormRemitos.DatoNew   :=  CDSStockAlquilerID_RTO.AsString;
  FormRemitos.Recuperar.Execute;
  FormRemitos.DevolverAlq.Execute;
end;

procedure TFormStockAlquiler.EntregarExecute(Sender: TObject);
var
  Cliente, FiltroOrig: string;
  IndGr, CountGr,x,y:Integer;
  CDSSelection: TClientDataSet;
begin

  Cliente:='';
  if CDSStockAlquilerDISPONIBLE.AsString = 'N' then          //Si No está disponible sólo puedo hacerle una reentrega al cliente que lo tiene.
     Cliente  :=  CDSStockAlquilerCODIGO.AsString
  else
    begin
      IF Not(Assigned(FormBuscadorClientes)) THEN
         FormBuscadorClientes:=TFormBuscadorClientes.Create(Self);
       FormBuscadorClientes.Tipo:='''S'''; // Activos
       FormBuscadorClientes.PopupMode:=pmAuto;
       FormBuscadorClientes.ShowModal;
       Cliente :=  FormBuscadorClientes.Codigo;
    end;
  if Cliente<>'' then
    begin
      if Not Assigned(FormRemitos) then
        FormRemitos         :=  TFormRemitos.Create(Self);
      FormRemitos.Show;
      FormRemitos.TipoCpbte :=  'RE';
      FormRemitos.Agregar.Execute;
     // FormRemitos.
      With DatosRemitos do
        begin
          CDSRtoCabCODIGOSetText(CDSRtoCabCODIGO,Cliente);
          CDSRtoCabDEVOLUCION.AsString              :=  'A';
          CDSRtoCabFECHA_ENTREGA.AsDateTime         :=  Date;
          CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime  :=  IncDay(Date);
          CDSRtoDet.Append;
          CDSRtoDetCodigoArticulo.Text  := CDSStockAlquilerCODIGO_STK.AsString;
          CDSRtoDet.Post;
        end;
      FormRemitos.DBGrillaDetalle.SetFocus;
    end;
end;

procedure TFormStockAlquiler.FormActivate(Sender: TObject);
begin
  if FormStockAlquiler<>nil then
    begin
      CDSStockAlquiler.Close;
      CDSStockAlquiler.Open;
    end;
end;

procedure TFormStockAlquiler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSStockAlquiler.Close;
  Action := caFree;
end;

procedure TFormStockAlquiler.FormDestroy(Sender: TObject);
begin
  FormStockAlquiler:=nil;
end;

procedure TFormStockAlquiler.FormHide(Sender: TObject);
begin
  CDSStockAlquiler.Close;
end;

procedure TFormStockAlquiler.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['A'..'Z','a'..'z','0'..'9'] then
    begin
      edBuscar.SetFocus;
      edBuscar.Text := UpperCase(Key);
      edBuscar.SelStart :=  2;
    end;
end;

procedure TFormStockAlquiler.FormShow(Sender: TObject);
begin
  CDSStockAlquiler.Close;
  CDSStockAlquiler.Open;
end;

procedure TFormStockAlquiler.ppmAlquileresPopup(Sender: TObject);
begin
  //ppmAlquileres.Items[0].Enabled  :=  CDSStockAlquilerDISPONIBLE.AsString = 'S';
  ppmAlquileres.Items[1].Enabled  :=  CDSStockAlquilerDISPONIBLE.AsString = 'N';
end;

end.
