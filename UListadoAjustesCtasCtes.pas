unit UListadoAjustesCtasCtes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,UABMBase, Data.FMTBcd,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvLabel,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,DMBuscadoresForm,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid,System.DateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,VirtualUI_SDK,cxGridExportLink, Vcl.Menus, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList;

type
  TFormListadoAjustesCC = class(TFormABMBase)
    pcAjustes: TPageControl;
    pgVentas: TTabSheet;
    pgCompras: TTabSheet;
    pnCabecera: TPanel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    CDSProvee: TClientDataSet;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    DSPProvee: TDataSetProvider;
    DSClientes: TDataSource;
    DSProvee: TDataSource;
    DSPListaMotClientes: TDataSetProvider;
    DSPListaMotProveedores: TDataSetProvider;
    CDSListaMotClientes: TClientDataSet;
    CDSListaMotProvee: TClientDataSet;
    CDSListaMotClientesID: TIntegerField;
    CDSListaMotClientesDETALLE: TStringField;
    CDSClientesID: TIntegerField;
    CDSClientesTIPOCPBTE: TStringField;
    CDSClientesCLASECPBTE: TStringField;
    CDSClientesLETRA: TStringField;
    CDSClientesSUC: TStringField;
    CDSClientesNUMERO: TStringField;
    CDSClientesNROCPBTE: TStringField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesCODIGO: TStringField;
    CDSClientesDETALLE: TStringField;
    CDSClientesOBSERVACIONES: TStringField;
    CDSClientesUSUARIO: TStringField;
    CDSClientesID_FACTURA_CONSOLIDADA: TIntegerField;
    CDSClientesID_FC_CUOTAS: TIntegerField;
    CDSClientesLOTE: TIntegerField;
    CDSClientesMOTIVO_AJUSTE: TIntegerField;
    CDSClientesMUESTRANOMBRE: TStringField;
    CDSClientesMUESTRAMOTIVO: TStringField;
    CDSProveeID: TIntegerField;
    CDSProveeTIPOCPBTE: TStringField;
    CDSProveeCLASECPBTE: TStringField;
    CDSProveeLETRA: TStringField;
    CDSProveeSUC: TStringField;
    CDSProveeNUMERO: TStringField;
    CDSProveeNROCPBTE: TStringField;
    CDSProveeSUCURSAL: TIntegerField;
    CDSProveeCODIGO: TStringField;
    CDSProveeDETALLE: TStringField;
    CDSProveeOBSERVACIONES: TStringField;
    CDSProveeUSUARIO: TStringField;
    CDSProveeLOTE: TIntegerField;
    CDSProveeMOTIVO_AJUSTE: TIntegerField;
    CDSProveeMUESTRANOMBRE: TStringField;
    CDSProveeMUESTRAMOTIVO: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1LETRA: TcxGridDBColumn;
    cxGrid1DBTableView1SUC: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_HORA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FACTURA_CONSOLIDADA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FC_CUOTAS: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRANOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAMOTIVO: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1FECHAVTO: TcxGridDBColumn;
    cxGridDBTableView1LETRA: TcxGridDBColumn;
    cxGridDBTableView1SUC: TcxGridDBColumn;
    cxGridDBTableView1NUMERO: TcxGridDBColumn;
    cxGridDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGridDBTableView1SUCURSAL: TcxGridDBColumn;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1DETALLE: TcxGridDBColumn;
    cxGridDBTableView1DEBE: TcxGridDBColumn;
    cxGridDBTableView1HABER: TcxGridDBColumn;
    cxGridDBTableView1SALDO: TcxGridDBColumn;
    cxGridDBTableView1USUARIO: TcxGridDBColumn;
    cxGridDBTableView1FECHA_HORA: TcxGridDBColumn;
    cxGridDBTableView1LOTE: TcxGridDBColumn;
    cxGridDBTableView1MOTIVO_AJUSTE: TcxGridDBColumn;
    cxGridDBTableView1MUESTRANOMBRE: TcxGridDBColumn;
    cxGridDBTableView1MUESTRAMOTIVO: TcxGridDBColumn;
    QAjustesClientes: TFDQuery;
    QAjustesProvee: TFDQuery;
    QAjustesClientesID: TIntegerField;
    QAjustesClientesTIPOCPBTE: TStringField;
    QAjustesClientesCLASECPBTE: TStringField;
    QAjustesClientesLETRA: TStringField;
    QAjustesClientesSUC: TStringField;
    QAjustesClientesNUMERO: TStringField;
    QAjustesClientesNROCPBTE: TStringField;
    QAjustesClientesSUCURSAL: TIntegerField;
    QAjustesClientesCODIGO: TStringField;
    QAjustesClientesDETALLE: TStringField;
    QAjustesClientesDEBE: TFloatField;
    QAjustesClientesHABER: TFloatField;
    QAjustesClientesSALDO: TFloatField;
    QAjustesClientesOBSERVACIONES: TStringField;
    QAjustesClientesUSUARIO: TStringField;
    QAjustesClientesID_FACTURA_CONSOLIDADA: TIntegerField;
    QAjustesClientesID_FC_CUOTAS: TIntegerField;
    QAjustesClientesLOTE: TIntegerField;
    QAjustesClientesMOTIVO_AJUSTE: TIntegerField;
    QAjustesClientesMUESTRANOMBRE: TStringField;
    CDSClientesDEBE: TFloatField;
    CDSClientesHABER: TFloatField;
    CDSClientesSALDO: TFloatField;
    QAjustesProveeID: TIntegerField;
    QAjustesProveeTIPOCPBTE: TStringField;
    QAjustesProveeCLASECPBTE: TStringField;
    QAjustesProveeLETRA: TStringField;
    QAjustesProveeSUC: TStringField;
    QAjustesProveeNUMERO: TStringField;
    QAjustesProveeNROCPBTE: TStringField;
    QAjustesProveeSUCURSAL: TIntegerField;
    QAjustesProveeCODIGO: TStringField;
    QAjustesProveeDETALLE: TStringField;
    QAjustesProveeDEBE: TFloatField;
    QAjustesProveeHABER: TFloatField;
    QAjustesProveeSALDO: TFloatField;
    QAjustesProveeOBSERVACIONES: TStringField;
    QAjustesProveeUSUARIO: TStringField;
    QAjustesProveeLOTE: TIntegerField;
    QAjustesProveeMOTIVO_AJUSTE: TIntegerField;
    QAjustesProveeMUESTRANOMBRE: TStringField;
    CDSProveeDEBE: TFloatField;
    CDSProveeHABER: TFloatField;
    CDSProveeSALDO: TFloatField;
    ExportarCliente: TAction;
    SaveDialog: TSaveDialog;
    ExportarProveedores: TAction;
    PopupMenu1: TPopupMenu;
    ExportarAjustesdeClientes1: TMenuItem;
    PopupMenu2: TPopupMenu;
    ExportarAjustesdeProveedores1: TMenuItem;
    JvLabel1: TJvLabel;
    QAjustesClientesFECHA: TSQLTimeStampField;
    QAjustesClientesFECHAVTO: TSQLTimeStampField;
    QAjustesClientesFECHA_HORA: TSQLTimeStampField;
    CDSClientesFECHA: TSQLTimeStampField;
    CDSClientesFECHAVTO: TSQLTimeStampField;
    CDSClientesFECHA_HORA: TSQLTimeStampField;
    QAjustesProveeFECHA: TSQLTimeStampField;
    QAjustesProveeFECHAVTO: TSQLTimeStampField;
    QAjustesProveeFECHA_HORA: TSQLTimeStampField;
    CDSProveeFECHA: TSQLTimeStampField;
    CDSProveeFECHAVTO: TSQLTimeStampField;
    CDSProveeFECHA_HORA: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSClientesAfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure CDSProveeAfterPost(DataSet: TDataSet);
    procedure ExportarClienteExecute(Sender: TObject);
    procedure ExportarProveedoresExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoAjustesCC: TFormListadoAjustesCC;

implementation

{$R *.dfm}

uses UAjustesCCClientes_2, UAjustesCCProveedores,UDMain_FD;

procedure TFormListadoAjustesCC.BuscarExecute(Sender: TObject);
var d,m,y:word;
begin
  inherited;
 
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('desde').Value:=Desde.Date;
  CDSClientes.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSClientes.Open;

  CDSProvee.Close;
  CDSProvee.Params.ParamByName('desde').Value:=Desde.Date;
  CDSProvee.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSProvee.Open;
end;

procedure TFormListadoAjustesCC.CDSClientesAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSClientes.ApplyUpdates(-1);
end;

procedure TFormListadoAjustesCC.CDSProveeAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSProvee.ApplyUpdates(-1);
end;

procedure TFormListadoAjustesCC.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if pcAjustes.ActivePageIndex=0 then
    begin
      if Not(Assigned(FormAjustesCCVenta_2 )) then
        FormAjustesCCVenta_2 :=TFormAjustesCCVenta_2.Create(self);
      FormAjustesCCVenta_2.DatoNew:=CDSClientesID.AsString;
      FormAjustesCCVenta_2.Recuperar.Execute;
      FormAjustesCCVenta_2.Show;

    end;
end;

procedure TFormListadoAjustesCC.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
 if pcAjustes.ActivePageIndex=1 then
    begin
      if Not(Assigned(FormAjusteCCProveedores)) then
        FormAjusteCCProveedores :=TFormAjusteCCProveedores.Create(self);
      FormAjusteCCProveedores.DatoNew:=CDSProveeID.AsString;
      FormAjusteCCProveedores.Recuperar.Execute;
      FormAjusteCCProveedores.Show;

    end;
end;

procedure TFormListadoAjustesCC.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListadoAjustesCC.ExportarClienteExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSClientes.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='AjustesVtas';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxGrid1)
            else
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoAjustesCC.ExportarProveedoresExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSProvee.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='AjustesCompras';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxGrid2)
            else
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid2);
            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoAjustesCC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoAjustesCC.FormCreate(Sender: TObject);
begin
//  inherited;
  AutoSize:=True;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcAjustes.ActivePageIndex:=0;
  CDSListaMotClientes.Close;
  CDSListaMotClientes.Open;
  CDSListaMotProvee.Close;
  CDSListaMotProvee.Open;

end;

procedure TFormListadoAjustesCC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoAjustesCC:=nil;
end;

procedure TFormListadoAjustesCC.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := EncodeDate(y,m,1);

end;

procedure TFormListadoAjustesCC.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
  //  Desde.SetFocus;
end;

end.
