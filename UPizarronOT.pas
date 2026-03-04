unit UPizarronOT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExExtCtrls, JvExtComponent, JvPanel, JvExControls,
  JvGradient, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons,
  ActnList, ComCtrls, Menus, Spin,DateUtils, JvDBLookup, System.Actions,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData,
  cxDBData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxLayoutContainer, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridCustomTableView, cxGridDBLayoutView, cxGridCustomView,
  cxGridCustomLayoutView, cxClasses, cxGridLevel, cxGrid, cxGridTableView,
  cxPropertiesStore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  JvExComCtrls, JvComCtrls,Math,IniFiles, dxSkinBasic, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges, dxScrollbarAnnotations;

type
  TFormPizarronOT = class(TForm)
    pnCabecera: TPanel;
    JvGradient1: TJvGradient;
    BitBtn1: TBitBtn;
    QOTrabajo: TSQLQuery;
    DSPOTrabajo: TDataSetProvider;
    CDSOTrabajo: TClientDataSet;
    CDSOTrabajoID_OT: TIntegerField;
    CDSOTrabajoTIPOCPBTE: TStringField;
    CDSOTrabajoCLASECPBTE: TStringField;
    CDSOTrabajoSUCOT: TStringField;
    CDSOTrabajoNUMEROOT: TStringField;
    CDSOTrabajoLETRAOT: TStringField;
    CDSOTrabajoCODIGO: TStringField;
    CDSOTrabajoNOMBRE: TStringField;
    CDSOTrabajoDESCRIPCION: TMemoField;
    ActionList1: TActionList;
    LeerOT: TAction;
    CDSOTrabajoNROCPBTE: TStringField;
    CDSOTrabajoFECHAINICIO: TSQLTimeStampField;
    LimpiarOT: TAction;
    PopupMenu1: TPopupMenu;
    LimpiarOT1: TMenuItem;
    CDSOTrabajoPRIORIDAD: TSmallintField;
    Panel1: TPanel;
    JvGradient2: TJvGradient;
    BitBtn2: TBitBtn;
    CDSOTrabajoREPONSABLE: TStringField;
    CDSOTrabajoASIGNADO: TStringField;
    edAnio: TSpinEdit;
    edMes: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbcVendedor: TJvDBLookupCombo;
    DSPBuscaVendedores: TDataSetProvider;
    CDSBuscaVendedores: TClientDataSet;
    CDSBuscaVendedoresCODIGO: TStringField;
    CDSBuscaVendedoresNOMBRE: TStringField;
    DSBuscaVendedores: TDataSource;
    DSOTrabajo: TDataSource;
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
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxGrid1DBLayoutView1: TcxGridDBLayoutView;
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
    cxGrid1DBLayoutView1DBLayoutViewItem11: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem12: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem13: TcxGridDBLayoutViewItem;
    cxGrid1DBLayoutView1DBLayoutViewItem14: TcxGridDBLayoutViewItem;
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
    cxGrid1DBLayoutView1LayoutItem11: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem12: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem13: TcxGridLayoutItem;
    cxGrid1DBLayoutView1LayoutItem14: TcxGridLayoutItem;
    cxGrid1DBLayoutView1Group1: TdxLayoutGroup;
    cxGrid1DBLayoutView1Group2: TdxLayoutAutoCreatedGroup;
    cxGrid1DBLayoutView1Group3: TdxLayoutGroup;
    cxGrid1DBLayoutView1Group4: TdxLayoutGroup;
    CheckBox1: TCheckBox;
    CDSOTrabajoMUESTRASUCURSAL: TStringField;
    cxGrid1DBLayoutView1LayoutItem15: TcxGridLayoutItem;
    cxGrid1DBLayoutView1Item1: TcxGridDBLayoutViewItem;
    cxStyle13: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet;
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
    GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet;
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
    cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet;
    pnEstados: TJvPanel;
    trAnumacion: TJvTrackBar;
    Label3: TLabel;
    Label4: TLabel;
    trFondo: TJvTrackBar;
    Label5: TLabel;
    trEscala: TJvTrackBar;
    Label6: TLabel;
    trAnguloPaso: TJvTrackBar;
    Label7: TLabel;
    trRadio: TJvTrackBar;
    Label8: TLabel;
    trAmguloRadio: TJvTrackBar;
    Label9: TLabel;
    RgModiVisualizacion: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure LeerOTExecute(Sender: TObject);
    procedure LimpiarOTExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbcVendedorChange(Sender: TObject);
    procedure edMesChange(Sender: TObject);
    procedure edAnioChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure trAnumacionChange(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure RgModiVisualizacionClick(Sender: TObject);
    procedure pnEstadosExit(Sender: TObject);
    procedure CDSOTrabajoAfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBLayoutView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni :TIniFile;
  end;

var
  FormPizarronOT: TFormPizarronOT;

implementation

uses UDMain_FD, UOrdenDeTrabajo;
{$R *.dfm}

procedure TFormPizarronOT.BitBtn1Click(Sender: TObject);
var pnOrdenT:TRichEdit;
begin
  LimpiarOT.Execute;

  CDSOTrabajo.Close;
  CDSOTrabajo.Params.ParamByName('ano').Value:=edAnio.Value;
  CDSOTrabajo.Params.ParamByName('mes').Value:=edMes.Value;
  CDSOTrabajo.Params.ParamByName('responsable').Value:= dbcVendedor.KeyValue;

  CDSOTrabajo.Open;
//  if Not(CDSOTrabajo.IsEmpty) then
//   begin
//      CDSOTrabajo.First;
//      while Not(CDSOTrabajo.Eof) do
//        begin
//          pnOrdenT                    := TRichEdit.Create(Self);
//          pnOrdenT.Parent             := fwOrdenTrabajo;
//          pnOrdenT.Width         :=195;
//          pnOrdenT.Height        :=135;
//          pnOrdenT.BorderWidth   :=1;
//          pnOrdenT.Margins.Left  :=5;
//          pnOrdenT.Margins.Right :=5;
//          pnOrdenT.Margins.Top   :=5;
//          pnOrdenT.Margins.Bottom:=5;
//
//          pnOrdenT.ReadOnly  :=True;
//          pnOrdenT.PlainText :=False;
//          pnOrdenT.ScrollBars:=ssVertical;
//          pnOrdenT.Color     :=clInfoBk;
//          pnOrdenT.Tag       :=CDSOTrabajoID_OT.Value;
//          pnOrdenT.Paragraph.Alignment:= taRightJustify;
//          pnOrdenT.Font.Style         := [fsBold];
//          pnOrdenT.Font.Color         := clBlue;
//          pnOrdenT.Lines.Add('O.de Tr.:'+CDSOTrabajoTIPOCPBTE.Value+'-'+
//                             CDSOTrabajoNROCPBTE.Value);
//          pnOrdenT.Lines.Add('Fecha.:'+(FormatDateTime('dd/mm/yy',CDSOTrabajoFECHAINICIO.AsDateTime)));
//          pnOrdenT.Lines.Add('');
//
//          pnOrdenT.Paragraph.Alignment:= taLeftJustify;
//
//          pnOrdenT.Lines.Add('Responsable:'+ CDSOTrabajoREPONSABLE.AsString);
//          pnOrdenT.Lines.Add('Asignada...:'+ CDSOTrabajoASIGNADO.AsString);
//
//          pnOrdenT.Lines.Add('');
//
//          pnOrdenT.Paragraph.Alignment:= taLeftJustify;
//          pnOrdenT.Font.Style         := [];
//          pnOrdenT.Font.Color         := clBlack;
//
//          pnOrdenT.Lines.Add('Cliente:'+ CDSOTrabajoNOMBRE.Value);
//          pnOrdenT.Lines.Add('');
//
//          pnOrdenT.Lines.Add('Detalle:'+ CDSOTrabajoDESCRIPCION.AsString);
//
//          pnOrdenT.OnDblClick:=LeerOTExecute;
//
//          if (CDSOTrabajoPRIORIDAD.Value>=0) and (CDSOTrabajoPRIORIDAD.Value<=3) Then
//              pnOrdenT.Color:=clMoneyGreen
//            else
//              if (CDSOTrabajoPRIORIDAD.Value>=4) and (CDSOTrabajoPRIORIDAD.Value<=6) Then
//                pnOrdenT.Color:=clInfoBk
//              else
//                if (CDSOTrabajoPRIORIDAD.Value>=7) and (CDSOTrabajoPRIORIDAD.Value<=9) Then
//                  pnOrdenT.Color:=clAqua
//                else
//                  if (CDSOTrabajoPRIORIDAD.Value>=10) Then
//                    pnOrdenT.Color:=clRed;
//
//
//          CDSOTrabajo.Next;
//        end;
//    end;
end;

procedure TFormPizarronOT.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPizarronOT.CDSOTrabajoAfterScroll(DataSet: TDataSet);
begin
//  if (CDSOTrabajoPRIORIDAD.Value>=0) and (CDSOTrabajoPRIORIDAD.Value<=3) Then
//    cxGrid1DBLayoutView1.Styles.Content.Color:=clMoneyGreen
//  else
//    if (CDSOTrabajoPRIORIDAD.Value>=4) and (CDSOTrabajoPRIORIDAD.Value<=6) Then
//      cxGrid1DBLayoutView1.Styles.Content.Color:=clInfoText
//  else
//    if (CDSOTrabajoPRIORIDAD.Value>=7) and (CDSOTrabajoPRIORIDAD.Value<=9) Then
//      cxGrid1DBLayoutView1.Styles.Content.Color:=clInfoText
//  else
//    if (CDSOTrabajoPRIORIDAD.Value>=10) Then
//      cxGrid1DBLayoutView1.Styles.Content.Color:=clRed;


end;

procedure TFormPizarronOT.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) Then
    begin
      edAnio.Value:=1900;
      edMes.Value :=0;
      edAnio.Enabled:=Not(CheckBox1.Checked);
      edMes.Enabled :=Not(CheckBox1.Checked);
      BitBtn1.Click;
    end
  else
    begin
      edAnio.Value:=YearOf(Date);
      edMes.Value :=MonthOf(Date);
      edAnio.Enabled:=Not(CheckBox1.Checked);
      edMes.Enabled :=Not(CheckBox1.Checked);
      BitBtn1.Click;
    end

end;

procedure TFormPizarronOT.cxGrid1DBLayoutView1DblClick(Sender: TObject);
begin
  LeerOT.Execute;
end;

procedure TFormPizarronOT.dbcVendedorChange(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormPizarronOT.edAnioChange(Sender: TObject);
begin
 BitBtn1.Click;
end;

procedure TFormPizarronOT.edMesChange(Sender: TObject);
begin
 BitBtn1.Click;
end;

procedure TFormPizarronOT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni         := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_PizarraOT.ini');
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

procedure TFormPizarronOT.FormCreate(Sender: TObject);
begin
//  fwOrdenTrabajo.Align:=alClient;
  CDSBuscaVendedores.Close;
  CDSBuscaVendedores.Open;

  ArchivoIni         := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_PizarraOT.ini');
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

procedure TFormPizarronOT.FormDestroy(Sender: TObject);
begin
  FormPizarronOT:=nil;
end;

procedure TFormPizarronOT.FormShow(Sender: TObject);
var d,m,a:word;
begin
  DecodeDate(Date,a,m,d);
  edMes.Value := m;
  edAnio.Value:= a;
  BitBtn1.Click;
end;

procedure TFormPizarronOT.Label9Click(Sender: TObject);
begin
  pnEstados.Visible:= Not(pnEstados.Visible);
end;

procedure TFormPizarronOT.LeerOTExecute(Sender: TObject);
begin
  if Not(Assigned(FormOrdenDeTrabajo)) then
    FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(self);
  FormOrdenDeTrabajo.DatoNew  := CDSOTrabajoID_OT.AsString;
  FormOrdenDeTrabajo.TipoCpbte:='OT';
  FormOrdenDeTrabajo.Recuperar.Execute;
  FormOrdenDeTrabajo.Show;
end;

procedure TFormPizarronOT.LimpiarOTExecute(Sender: TObject);
var i:Integer;
begin
  i:=0;
  for I := 0 to ComponentCount-1 do
    begin
      if (i<=ComponentCount-1) then
        begin
          if (Components[i] is TRichEdit) then
            begin
              Components[i].Free;
              LimpiarOT.Execute;
            end;
        end;
    end;
  i:=0;  
end;

procedure TFormPizarronOT.pnEstadosExit(Sender: TObject);
begin
  if pnEstados.Visible then pnEstados.Visible:=False;
  
end;

procedure TFormPizarronOT.RgModiVisualizacionClick(Sender: TObject);
begin
 if RgModiVisualizacion.ItemIndex=0 then
   cxGrid1DBLayoutView1.OptionsView.ViewMode:=lvvmCarousel
 else
   if RgModiVisualizacion.ItemIndex=1 then
     cxGrid1DBLayoutView1.OptionsView.ViewMode:=lvvmMultiRow;

end;

procedure TFormPizarronOT.trAnumacionChange(Sender: TObject);
begin
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.AnimationInterval         :=trAnumacion.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.BackgroundRecordAlphaLevel:=trFondo.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.BackgroundRecordEndScale  :=trEscala.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.PitchAngle                :=trAnguloPaso.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.Radius                    :=trRadio.Position;
  cxGrid1DBLayoutView1.OptionsView.CarouselMode.RollAngle                 :=trAmguloRadio.Position;

end;

end.
