unit UPizarronAcopios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Menus, ActnList, DB, DBClient, Provider, SqlExpr, ExtCtrls,
  StdCtrls, Buttons, JvExControls, JvGradient, UFrameAcopios,ComCtrls,
  JvExForms, JvScrollBox, System.Actions, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxDBData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxGridTableView, cxClasses,
  cxPropertiesStore, dxLayoutContainer, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, cxGridCustomView,
  cxGridCustomLayoutView, cxGridLevel, cxGrid,IniFiles, JvExComCtrls,
  JvComCtrls, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinBlack, dxSkinBlue,
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
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormPizarronAcopios = class(TForm)
    ActionList1: TActionList;
    LeerRto: TAction;
    LimpiarRto: TAction;
    PopupMenu1: TPopupMenu;
    LimpiarRemitos: TMenuItem;
    CDSMercDet: TClientDataSet;
    CDSMercDetID: TIntegerField;
    CDSMercDetID_CAB: TIntegerField;
    CDSMercDetCODIGO: TStringField;
    CDSMercDetDETALLE: TStringField;
    CDSMercDetCANTIDAD: TFMTBCDField;
    CDSMercDetENTREGADO: TFMTBCDField;
    CDSMercDetSALDO: TFMTBCDField;
    CDSMercDetFECHA_ULTIMAENTREGA: TSQLTimeStampField;
    CDSMercDetCUMPLIDO: TStringField;
    CDSMercCab: TClientDataSet;
    DSPMercCab: TDataSetProvider;
    DSPMercDet: TDataSetProvider;
    QMercCab: TSQLQuery;
    QMercDet: TSQLQuery;
    CDSMercCabID: TIntegerField;
    CDSMercCabFECHA: TSQLTimeStampField;
    CDSMercCabCLIENTE: TStringField;
    CDSMercCabNOMBRE: TStringField;
    CDSMercCabDIRECCION: TStringField;
    CDSMercCabCPOSTAL: TStringField;
    CDSMercCabLOCALIDAD: TStringField;
    CDSMercCabNROCPBTE: TStringField;
    CDSMercCabID_FACTURA: TIntegerField;
    CDSMercCabCUMPLIDO: TStringField;
    DSMercaCab: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet;
    cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet;
    pnCabecera: TPanel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBLayoutView1: TcxGridDBLayoutView;
    cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBLayoutView1DBLayoutViewItem1: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem2: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem3: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem4: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem5: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem6: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem7: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem8: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem9: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem10: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1LayoutItem1: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem2: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem3: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem4: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem5: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem6: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem7: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem8: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem9: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem10: TcxGridLayoutItem;
    cxGrid1DBLayoutView1Group1: TdxLayoutGroup;
    cxGrid1DBLayoutView1Group2: TdxLayoutGroup;
    cxGrid1DBLayoutView1Group3: TdxLayoutAutoCreatedGroup;
    cxGrid1DBLayoutView1Group4: TdxLayoutAutoCreatedGroup;
    pnEstados: TJvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    trAnumacion: TJvTrackBar;
    trFondo: TJvTrackBar;
    trEscala: TJvTrackBar;
    trAnguloPaso: TJvTrackBar;
    trRadio: TJvTrackBar;
    trAmguloRadio: TJvTrackBar;
    RgModiVisualizacion: TRadioGroup;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBLayoutView2Group_Root: TdxLayoutGroup;
    cxGrid1DBLayoutView2: TcxGridDBLayoutView;
    DSMercDet: TDataSource;
    cxGrid1DBLayoutView2LayoutItem3: TcxGridLayoutItem;
    cxGrid1DBLayoutView2CODIGO: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView2LayoutItem4: TcxGridLayoutItem;
    cxGrid1DBLayoutView2DETALLE: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView2LayoutItem5: TcxGridLayoutItem;
    cxGrid1DBLayoutView2CANTIDAD: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView2LayoutItem6: TcxGridLayoutItem;
    cxGrid1DBLayoutView2ENTREGADO: TcxGridDBLayoutViewItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LeerRtoExecute(Sender: TObject);
    procedure LimpiarRtoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure trAnumacionChange(Sender: TObject);
    procedure RgModiVisualizacionClick(Sender: TObject);
    procedure cxGrid1DBLayoutView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   pnAcopio:TPanel;
   ArchivoIni :TIniFile;
  end;

var
  FormPizarronAcopios: TFormPizarronAcopios;

implementation

uses UAcopio, UDMain_FD;

{$R *.dfm}

procedure TFormPizarronAcopios.BitBtn1Click(Sender: TObject);
var Lista:TListItem;
begin
// LimpiarRto.Execute;
 CDSMercCab.Close;
 CDSMercCab.Open;

 //CDSMercDet.Close;
// CDSMercDet.Open;

 //if CDSMercCab.IsEmpty then
//    Raise Exception.Create('No hay datos para Mostrar..')
//  else
//    begin
//      CDSMercCab.First;
//      while Not(CDSMercCab.Eof) do
//        begin
//          pnAcopio                 := TPanel.Create(Self);
//          pnAcopio.Name            := 'Panel_'+CDSMercCabID.AsString;
//          pnAcopio.Parent          := fwAcopios;
//          pnAcopio.Width           := 357;
//          pnAcopio.Height          := 257;
//          pnAcopio.ParentColor     := False;
//          pnAcopio.Color           := clMoneyGreen;
//          pnAcopio.ParentBackground:= False;
//          pnAcopio.Tag             := CDSMercCabID.Value;
//          pnAcopio.OnDblClick      := LeerRtoExecute;
//          FrameAcopio              := TFrameAcopios.Create(Self);
//          FrameAcopio.Name         := 'Frame_'+CDSMercCabID.AsString;
//          FrameAcopio.Parent       := pnAcopio;
//          FrameAcopio.Panel1.OnDblClick := LeerRtoExecute;
//          FrameAcopio.Panel2.OnDblClick := LeerRtoExecute;
//          FrameAcopio.LbCliente.Caption := CDSMercCabNOMBRE.ASString;
//          FrameAcopio.LbFact.Caption    := CDSMercCabNROCPBTE.AsString;
//          FrameAcopio.LbFecha.Caption   := CDSMercCabFECHA.AsString;
//          FrameAcopio.Tag:=CDSMercCabID.Value;
//          CDSMercDet.Close;
//          CDSMercDet.Params.ParamByName('id').Value:=CDSMercCabID.Value;
//          CDSMercDet.Open;
//          CDSMercDet.First;
//          while not(CDSMercDet.Eof) do
//            begin
//              Lista           :=FrameAcopio.lvArticulos.Items.Add;
//              Lista.Caption   :=CDSMercDetDETALLE.AsString;
//              Lista.SubItems.Add(CDSMercDetCANTIDAD.AsString);
//              Lista.SubItems.Add(CDSMercDetENTREGADO.AsString);
//              Lista.SubItems.Add(CDSMercDetSALDO.AsString);
//              CDSMercDet.Next;
//            end;
//
//          pnAcopio.AutoSize        :=True;
//
//
//          CDSMercCab.Next;
//        end;
//    end;
end;

procedure TFormPizarronAcopios.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPizarronAcopios.cxGrid1DBLayoutView1DblClick(Sender: TObject);
begin
  LeerRto.Execute;
end;

procedure TFormPizarronAcopios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni         := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_PizarraAcopios.ini');
  ArchivoIni.WriteInteger('Panel', 'Modo', RgModiVisualizacion.ItemIndex);
  ArchivoIni.WriteInteger('Panel', 'Animacion', trAnumacion.Position);
  ArchivoIni.WriteInteger('Panel', 'Fondo', trFondo.Position);
  ArchivoIni.WriteInteger('Panel', 'Escala', trEscala.Position);
  ArchivoIni.WriteInteger('Panel', 'AnguloPaso', trAnguloPaso.Position);
  ArchivoIni.WriteInteger('Panel', 'Radio', trRadio.Position);
  ArchivoIni.WriteInteger('Panel', 'AnguloRadio', trAmguloRadio.Position);
  ArchivoIni.WriteInteger('Panel', 'ModoView', RgModiVisualizacion.ItemIndex);

  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormPizarronAcopios.FormCreate(Sender: TObject);
begin
 //fwAcopios.Align:=alClient;
 //fwAcopios.Align:=alNone;
//  FormPizarronAcopios.AutoSize:=True;
  ArchivoIni         := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_PizarraAcopios.ini');
  trAnumacion.Position  := ArchivoIni.ReadInteger('Panel', 'Modo', 0);
  trAnumacion.Position  := ArchivoIni.ReadInteger('Panel', 'Animacion', trAnumacion.Position);
  trFondo.Position      := ArchivoIni.ReadInteger('Panel', 'Fondo', trFondo.Position);
  trEscala.Position     := ArchivoIni.ReadInteger('Panel', 'Escala', trEscala.Position);
  trAnguloPaso.Position := ArchivoIni.ReadInteger('Panel', 'AnguloPaso', trAnguloPaso.Position);
  trRadio.Position      := ArchivoIni.ReadInteger('Panel', 'Radio', trRadio.Position);
  trAmguloRadio.Position:= ArchivoIni.ReadInteger('Panel', 'AnguloRadio', trAmguloRadio.Position);
  RgModiVisualizacion.ItemIndex:=ArchivoIni.ReadInteger('Panel', 'ModoView', 0);
  ArchivoIni.Free;

  cxGrid1DBLayoutView1.OptionsView.CarouselMode.AnimationInterval:=trAnumacion.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.BackgroundRecordAlphaLevel:=trFondo.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.BackgroundRecordEndScale:=trEscala.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.PitchAngle:=trAnguloPaso.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.Radius:=trRadio.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.RollAngle:=trAmguloRadio.Position;

 if RgModiVisualizacion.ItemIndex=0 then
   cxGrid1DBLayoutView1.OptionsView.ViewMode:=lvvmCarousel
 else
   if RgModiVisualizacion.ItemIndex=1 then
     cxGrid1DBLayoutView1.OptionsView.ViewMode:=lvvmMultiRow;

end;

procedure TFormPizarronAcopios.FormDestroy(Sender: TObject);
begin
  FormPizarronAcopios:=nil;
end;

procedure TFormPizarronAcopios.FormShow(Sender: TObject);
begin
 // BitBtn1.Click;
end;

procedure TFormPizarronAcopios.Label7Click(Sender: TObject);
begin
  pnEstados.Visible:= Not(pnEstados.Visible);
end;

procedure TFormPizarronAcopios.LeerRtoExecute(Sender: TObject);
begin
  if Not(Assigned(FormAcopio)) then
    FormAcopio:=TFormAcopio.Create(self);
  FormAcopio.DatoNew  := CDSMercCabID.AsString;// IntToStr((Sender as TFrame).Tag);
  FormAcopio.Recuperar.Execute;
  FormAcopio.Show;
end;

procedure TFormPizarronAcopios.LimpiarRtoExecute(Sender: TObject);
var i:Integer;
begin
  i:=0;
  for I := 0 to ComponentCount-1 do
    begin
      if (i<=ComponentCount-1) then
        begin
          if (Components[i] is TPanel) then
            begin
              Components[i].Free;
              LimpiarRto.Execute;
            end;
        end;
    end;
  i:=0;
end;

procedure TFormPizarronAcopios.RgModiVisualizacionClick(Sender: TObject);
begin
 if RgModiVisualizacion.ItemIndex=0 then
   cxGrid1DBLayoutView1.OptionsView.ViewMode:=lvvmCarousel
 else
   if RgModiVisualizacion.ItemIndex=1 then
     cxGrid1DBLayoutView1.OptionsView.ViewMode:=lvvmMultiRow;

end;

procedure TFormPizarronAcopios.trAnumacionChange(Sender: TObject);
begin
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.AnimationInterval         :=trAnumacion.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.BackgroundRecordAlphaLevel:=trFondo.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.BackgroundRecordEndScale  :=trEscala.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.PitchAngle                :=trAnguloPaso.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.Radius                    :=trRadio.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.RollAngle                 :=trAmguloRadio.Position;

end;

end.
