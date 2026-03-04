unit UListadoPedidosPrevision;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxCustomPivotGrid, cxDBPivotGrid, cxCalc, AdvUtil,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, AdvSprd, Vcl.Menus,StrUtils, Vcl.DBCtrls,
  Datasnap.Provider, Datasnap.DBClient, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxPScxGridLnk, dxPScxGridLayoutViewLnk, JvDBLookup,
  cxCurrencyEdit, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, System.ImageList;

type
  TFormListadoPedidosPrevision = class(TFormABMBase)
    QPedidosPrevision: TFDQuery;
    DSPedidosPrevision: TDataSource;
    QPedidosPrevisionIDCAB: TIntegerField;
    QPedidosPrevisionCLIENTE: TStringField;
    QPedidosPrevisionNOMBRE: TStringField;
    QPedidosPrevisionID: TIntegerField;
    QPedidosPrevisionCODIGO: TStringField;
    QPedidosPrevisionDETALLE_STK: TStringField;
    QPedidosPrevisionCANTIDAD_UNID_PED: TFloatField;
    QPedidosPrevisionCANTIDAD_UNID_ENTR: TFloatField;
    QPedidosPrevisionCANTIDAD_ENTREGADA: TFloatField;
    QPedidosPrevisionFECHA: TSQLTimeStampField;
    QPedidosPrevisionFECHA_ENTREGA: TSQLTimeStampField;
    QPedidosPrevisionID_FACTURA: TIntegerField;
    QPedidosPrevisionTIPO_FACTURA: TStringField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1CLIENTE: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_UNID_PED: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_UNID_ENTR: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD_ENTREGADA: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA_ENTREGA: TcxDBPivotGridField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    spgPedidos: TAdvSpreadGrid;
    QClientesPrevision: TFDQuery;
    QClientesPrevisionCLIENTE: TStringField;
    QClientesPrevisionNOMBRE: TStringField;
    QPrevisionPorCliente: TFDQuery;
    QEntregasPorCliente: TFDQuery;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField5: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    SQLTimeStampField3: TSQLTimeStampField;
    SQLTimeStampField4: TSQLTimeStampField;
    IntegerField6: TIntegerField;
    StringField10: TStringField;
    QEntregasPorClienteTIPO: TStringField;
    QEntregasPorClienteMES: TIntegerField;
    QEntregasPorClienteANIO: TIntegerField;
    QEntregasPorClienteDIA: TIntegerField;
    QEntregasPorClienteSEMANA: TIntegerField;
    QFechasDesdeHasta: TFDQuery;
    QPrevisionPorClienteIDCAB: TIntegerField;
    QPrevisionPorClienteCLIENTE: TStringField;
    QPrevisionPorClienteNOMBRE: TStringField;
    QPrevisionPorClienteID: TIntegerField;
    QPrevisionPorClienteCODIGO: TStringField;
    QPrevisionPorClienteDETALLE_STK: TStringField;
    QPrevisionPorClienteCANTIDAD_UNID_PED: TFloatField;
    QPrevisionPorClienteCANTIDAD_UNID_ENTR: TFloatField;
    QPrevisionPorClienteCANTIDAD_ENTREGADA: TFloatField;
    QPrevisionPorClienteFECHA: TSQLTimeStampField;
    QPrevisionPorClienteFECHA_ENTREGA: TSQLTimeStampField;
    QPrevisionPorClienteID_FACTURA: TIntegerField;
    QPrevisionPorClienteTIPO_FACTURA: TStringField;
    QPrevisionPorClienteTIPO: TStringField;
    QPrevisionPorClienteMES: TIntegerField;
    QPrevisionPorClienteANIO: TIntegerField;
    QPrevisionPorClienteDIA: TIntegerField;
    QPrevisionPorClienteSEMANA: TIntegerField;
    QPrevisionRenglones: TFDQuery;
    QPrevisionRenglonesCOUNT: TIntegerField;
    QPrevisionPorClienteSUBRUBRO: TStringField;
    Panel2: TPanel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    QPedidosPrevisionSUBRUBRO: TStringField;
    QPedidosPrevisionTIPO: TStringField;
    QPedidosPrevisionMES: TIntegerField;
    QPedidosPrevisionANIO: TIntegerField;
    QPedidosPrevisionDIA: TIntegerField;
    QPedidosPrevisionSEMANA: TIntegerField;
    cxDBPivotGrid1SUBRUBRO: TcxDBPivotGridField;
    PopupMenu1: TPopupMenu;
    Campos1: TMenuItem;
    Filtros1: TMenuItem;
    CamposDatos1: TMenuItem;
    QPedidosPrevisionMESNOMBRE: TStringField;
    cxDBPivotGrid1MESNOMBRE: TcxDBPivotGridField;
    QPedidosPrevisionDIASTR: TStringField;
    cxDBPivotGrid1DIASTR: TcxDBPivotGridField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ToolButton1: TToolButton;
    QBuscadorPrevision: TFDQuery;
    TabSheet3: TTabSheet;
    QPedidosPrevisionUnitario: TFDQuery;
    DSPedidosPrevisionUnitario: TDataSource;
    cxDBPivotGrid2: TcxDBPivotGrid;
    cxDBPivotGridCLIENTE: TcxDBPivotGridField;
    cxDBPivotGridNOMBRE: TcxDBPivotGridField;
    cxDBPivotGridCODIGO: TcxDBPivotGridField;
    cxDBPivotGridDETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGridCANTIDAD_UNID_PED: TcxDBPivotGridField;
    cxDBPivotGridCANTIDAD_UNID_ENTR: TcxDBPivotGridField;
    cxDBPivotGridCANTIDAD_ENTREGADA: TcxDBPivotGridField;
    cxDBPivotGridFECHA: TcxDBPivotGridField;
    cxDBPivotGridFECHA_ENTREGA: TcxDBPivotGridField;
    cxDBPivotGridSUBRUBRO: TcxDBPivotGridField;
    cxDBPivotGridDIASSTR: TcxDBPivotGridField;
    pnCabecera: TPanel;
    Label1: TLabel;
    QPedidosPrevisionUnitarioIDCAB: TIntegerField;
    QPedidosPrevisionUnitarioCLIENTE: TStringField;
    QPedidosPrevisionUnitarioNOMBRE: TStringField;
    QPedidosPrevisionUnitarioID: TIntegerField;
    QPedidosPrevisionUnitarioSUBRUBRO: TStringField;
    QPedidosPrevisionUnitarioCODIGO: TStringField;
    QPedidosPrevisionUnitarioDETALLE_STK: TStringField;
    QPedidosPrevisionUnitarioCANTIDAD_UNID_PED: TFloatField;
    QPedidosPrevisionUnitarioCANTIDAD_UNID_ENTR: TFloatField;
    QPedidosPrevisionUnitarioCANTIDAD_ENTREGADA: TFloatField;
    QPedidosPrevisionUnitarioFECHA: TSQLTimeStampField;
    QPedidosPrevisionUnitarioFECHA_ENTREGA: TSQLTimeStampField;
    QPedidosPrevisionUnitarioID_FACTURA: TIntegerField;
    QPedidosPrevisionUnitarioTIPO_FACTURA: TStringField;
    QPedidosPrevisionUnitarioTIPO: TStringField;
    QPedidosPrevisionUnitarioMES: TIntegerField;
    QPedidosPrevisionUnitarioANIO: TIntegerField;
    QPedidosPrevisionUnitarioDIA: TIntegerField;
    QPedidosPrevisionUnitarioSEMANA: TIntegerField;
    QPedidosPrevisionUnitarioSALDO: TFloatField;
    DBText1: TDBText;
    QPedidosPrevisionUnitarioMESNOMBRE: TStringField;
    QPedidosPrevisionUnitarioDIASSTR: TStringField;
    Panel3: TPanel;
    Label2: TLabel;
    CDSBuscadorPrevision: TClientDataSet;
    DSPBuscadorPrevision: TDataSetProvider;
    CDSBuscadorPrevisionCLIENTE: TStringField;
    CDSBuscadorPrevisionNOMBRE: TStringField;
    CDSBuscadorPrevisionFECHA: TSQLTimeStampField;
    CDSBuscadorPrevisionID: TIntegerField;
    CDSBuscadorPrevisionESTADO_PREVISION: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    dxComponentPrinter1Link2: TcxPivotGridReportLink;
    BitBtn1: TBitBtn;
    N1: TMenuItem;
    ActualizaFechaEntrega: TAction;
    spActualizaFecha: TFDStoredProc;
    CDSBuscadorPrevisionFECHA_ENVIO: TSQLTimeStampField;
    QPedidosPrevisionSALDO: TFloatField;
    lbPrevision: TLabel;
    Label3: TLabel;
    QFijos: TFDQuery;
    DSFijos: TDataSource;
    CDSFijos: TClientDataSet;
    DSPFijos: TDataSetProvider;
    TabSheet4: TTabSheet;
    cxDBPivotGrid3: TcxDBPivotGrid;
    CDSFijosID: TIntegerField;
    CDSFijosFECHA: TSQLTimeStampField;
    CDSFijosCLIENTE: TStringField;
    CDSFijosMUESTRANOMBRE: TStringField;
    CDSFijosFACTURADO: TStringField;
    CDSFijosPEDIDO_PREVISION: TStringField;
    CDSFijosID_FACTURA: TIntegerField;
    CDSFijosTIPO_FACTURA: TStringField;
    CDSFijosPEDIDO_ESTABLE: TStringField;
    CDSFijosDIASEMANA: TStringField;
    CDSFijosCODIGO: TStringField;
    CDSFijosDETALLE_STK: TStringField;
    CDSFijosCANTIDAD_PEDIDA: TFloatField;
    CDSFijosCANTIDAD_UNID_PED: TFloatField;
    cxDBPivotGrid3FECHA: TcxDBPivotGridField;
    cxDBPivotGrid3CLIENTE: TcxDBPivotGridField;
    cxDBPivotGrid3MUESTRANOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid3DIASEMANA: TcxDBPivotGridField;
    cxDBPivotGrid3CODIGO: TcxDBPivotGridField;
    cxDBPivotGrid3DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid3CANTIDAD_PEDIDA: TcxDBPivotGridField;
    cxDBPivotGrid3CANTIDAD_UNID_PED: TcxDBPivotGridField;
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure spgPedidosGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Campos1Click(Sender: TObject);
    procedure Filtros1Click(Sender: TObject);
    procedure CamposDatos1Click(Sender: TObject);
    procedure QPedidosPrevisionCalcFields(DataSet: TDataSet);
    procedure QPedidosPrevisionDIAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QPedidosPrevisionMESGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cxDBPivotGrid1DIAGetDisplayText(Sender: TcxPivotGridField;
      ACell: TcxPivotGridDataCellViewInfo; var AText: string);
    procedure QPedidosPrevisionUnitarioCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure ActualizaFechaEntregaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoPedidosPrevision: TFormListadoPedidosPrevision;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormListadoPedidosPrevision.ActualizaFechaEntregaExecute(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Verificar dechas de Entrega...?',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
    begin
      spActualizaFecha.Close;
      spActualizaFecha.ExecProc;
      spActualizaFecha.Close;
    end;
end;

procedure TFormListadoPedidosPrevision.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=0 then dxComponentPrinter1Link1.Preview(True);
  if PageControl1.ActivePageIndex=1 then dxComponentPrinter1Link2.Preview(True);

end;

procedure TFormListadoPedidosPrevision.BuscarExecute(Sender: TObject);
var i:Integer;
Id_pre:Integer;

begin
// inherited;
  if PageControl1.ActivePageIndex=1 then
    begin
      CDSBuscadorPrevision.Close;
      CDSBuscadorPrevision.Open;
      ComBuscadorBase.Execute;
      if ComBuscadorBase.rOk then
        begin
          Id_pre:=ComBuscadorBase.Id;
          lbPrevision.Caption:=DateToStr(ComBuscadorBase.Data.FieldByName('Fecha').AsDateTime)+' Nro '+IntToStr(Id_pre);
          QPedidosPrevisionUnitario.Close;
          QPedidosPrevisionUnitario.ParamByName('id_pre').Value:=Id_pre;
          QPedidosPrevisionUnitario.Open;

          QPedidosPrevisionUnitario.IndexFieldNames:='DIASSTR';

          QPedidosPrevisionUnitario.Filtered := False;
          QPedidosPrevisionUnitario.Filter   := 'CANTIDAD_ENTREGADA <> 0 ';
          QPedidosPrevisionUnitario.Filtered := True;
           // Expandir cxDBPivotGrid
          for i:=0 to cxDBPivotGrid2.FieldCount-1 do
            cxDBPivotGrid2.Fields[i].ExpandAll;
          PageControl1.ActivePageIndex:=1;
          CDSBuscadorPrevision.Close;
         end;
    end
  else
    if PageControl1.ActivePageIndex=0 then
      BEGIN
        QPedidosPrevision.Close;
        QPedidosPrevision.ParamByName('CODCLIENTE').Value:= '******';
        QPedidosPrevision.Open;

        QPedidosPrevision.IndexFieldNames:='DIASTR';

        QPedidosPrevision.Filtered := False;
        QPedidosPrevision.Filter   := 'CANTIDAD_ENTREGADA <> 0 ';
        QPedidosPrevision.Filtered := True;
       // Expandir cxDBPivotGrid
        for i:=0 to cxDBPivotGrid1.FieldCount-1 do
          cxDBPivotGrid1.Fields[i].ExpandAll;
      END;

  CDSFijos.Close;
  CDSFijos.Open;
end;

procedure TFormListadoPedidosPrevision.Button1Click(Sender: TObject);
var Row,Col:Integer;
CantClientes:Integer;
begin
  inherited;
  spgPedidos.ClearAll;
  Row := 1;
  Col := 0;

  QPrevisionRenglones.Close;
  QPrevisionRenglones.ParamByName('CODCLIENTE').Value:='******';
  QPrevisionRenglones.Open;

  QClientesPrevision.Close;
  QClientesPrevision.ParamByName('CODCLIENTE').Value :='******';
  QClientesPrevision.Open;
  QClientesPrevision.First;

  CantClientes       := QClientesPrevision.RecordCount;
  spgPedidos.RowCount:= QPrevisionRenglonesCOUNT.Value+CantClientes*3;

  while not(QClientesPrevision.Eof) do
    begin
      spgPedidos.FontColors[Col+2,Row] := clBlue;
      spgPedidos.FontStyles[Col+2,Row] := [fsBold];
      spgPedidos.MergeCells(Col+2,Row,2,1);
      spgPedidos.Cells[Col+2,Row]      := QClientesPrevisionNOMBRE.AsString;

      Inc(Row);

      QPrevisionPorCliente.Close;
      QPrevisionPorCliente.ParamByName('CLIENTE').AsString    := QClientesPrevisionCLIENTE.Value;
      QPrevisionPorCliente.ParamByName('CODCLIENTE').AsString := '******';
      QPrevisionPorCliente.Open;

      spgPedidos.Cells[Col+1,row]      :='Detalle';
      spgPedidos.Alignments[Col+1,row] := taCenter;
      spgPedidos.FontStyles[Col+1,Row] := [fsBold];
      spgPedidos.FontColors[Col+1,Row] := clBlue;

      spgPedidos.Cells[Col+2,row]      :='Pedido';
      spgPedidos.Alignments[Col+2,row] := taCenter;
      spgPedidos.FontStyles[Col+2,Row] := [fsBold];
      spgPedidos.FontColors[Col+2,Row] := clBlue;

      Inc(Row);
      spgPedidos.ColWidths[col]    := 150;
      spgPedidos.ColWidths[col+1]  := 60;
      spgPedidos.ColWidths[col+2]  := 300;
      spgPedidos.ColWidths[col+3]  := 100;
//      spgPedidos.ColumnType(Col+2).ctNumeric;

      while not(QPrevisionPorCliente.Eof) do
        begin
          spgPedidos.FontStyles[Col+1,Row] := [fsBold];

          spgPedidos.Cells[Col,row]      := QPrevisionPorClienteSUBRUBRO.AsString;
          spgPedidos.Cells[Col+1,row]    := QPrevisionPorClienteCODIGO.AsString;
          spgPedidos.Cells[Col+2,row]    := QPrevisionPorClienteDETALLE_STK.AsString;
          spgPedidos.Cells[Col+3,row]    := FormatFloat(',0.00;-,0.00;-', QPrevisionPorClienteCANTIDAD_UNID_PED.AsFloat);
//          spgPedidos.Cells[Col+2,row].

          QPrevisionPorCliente.Next;
          Inc(row);
        end;
      Inc(row);
      QClientesPrevision.Next;
    end;
end;

procedure TFormListadoPedidosPrevision.Campos1Click(Sender: TObject);
begin
  inherited;
  Campos1.Checked:=not(Campos1.Checked);
  cxDBPivotGrid1.OptionsView.ColumnFields:=Campos1.Checked;
  {
  cxDBPivotGrid1.OptionsView.FilterFields := False;
  cxDBPivotGrid1.OptionsView.DataFields   := False;
  cxDBPivotGrid1.OptionsView.ColumnFields := False;
   }
end;

procedure TFormListadoPedidosPrevision.CamposDatos1Click(Sender: TObject);
begin
  inherited;
  CamposDatos1.Checked:=not(CamposDatos1.Checked);
  cxDBPivotGrid1.OptionsView.DataFields:=CamposDatos1.Checked;

end;

procedure TFormListadoPedidosPrevision.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
    begin
//      spgPedidos.Group(0);
      spgPedidos.InsertCols(0,1);
      // setting width of node column to fixed width of 20
      spgPedidos.ColWidths[0] := 20;
      // do grouping on column 1
      spgPedidos.GroupColumn := 1;
      // apply grouped sorting on (new) column 1
      //spgPedidos.SortSettings.Column := 1;
      //spgPedidos.QSortGroup;
    end;
end;

procedure TFormListadoPedidosPrevision.cxDBPivotGrid1DIAGetDisplayText(
  Sender: TcxPivotGridField; ACell: TcxPivotGridDataCellViewInfo;
  var AText: string);
begin
  inherited;
  if Sender.Caption='-1' then
    AText:='Pedido';
end;

procedure TFormListadoPedidosPrevision.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
end;


procedure TFormListadoPedidosPrevision.Filtros1Click(Sender: TObject);
begin
  inherited;
  Filtros1.Checked:=not(Filtros1.Checked);
  cxDBPivotGrid1.OptionsView.FilterFields:=Filtros1.Checked;
end;

procedure TFormListadoPedidosPrevision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoPedidosPrevision.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  PageControl1.ActivePageIndex:=0;

  cxDBPivotGrid1.OptionsView.FilterFields := False;
  cxDBPivotGrid1.OptionsView.DataFields   := True;
  cxDBPivotGrid1.OptionsView.ColumnFields := True;
 
end;

procedure TFormListadoPedidosPrevision.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoPedidosPrevision:=nil;
end;

procedure TFormListadoPedidosPrevision.QPedidosPrevisionCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  case QEntregasPorClienteMES.Value of
    -1:QPedidosPrevisionMESNOMBRE.Value:='*Pedido*';
    1 :QPedidosPrevisionMESNOMBRE.Value:='Enero';
    2 :QPedidosPrevisionMESNOMBRE.Value:='Febrero';
    3 :QPedidosPrevisionMESNOMBRE.Value:='Marzo';
    4 :QPedidosPrevisionMESNOMBRE.Value:='Abril';
    5 :QPedidosPrevisionMESNOMBRE.Value:='Mayo';
    6 :QPedidosPrevisionMESNOMBRE.Value:='Junio';
    7 :QPedidosPrevisionMESNOMBRE.Value:='Julio';
    8 :QPedidosPrevisionMESNOMBRE.Value:='Agosto';
    9 :QPedidosPrevisionMESNOMBRE.Value:='Septiembre';
    10:QPedidosPrevisionMESNOMBRE.Value:='Octubre';
    11:QPedidosPrevisionMESNOMBRE.Value:='Noviembre';
    12:QPedidosPrevisionMESNOMBRE.Value:='Diciembre';
  end;

  QPedidosPrevisionDIASTR.Value:=AnsiRightStr('0'+QPedidosPrevisionDIA.AsString,2);
  if QPedidosPrevisionDIA.Value<0 then
  QPedidosPrevisionDIASTR.Value:='**';


end;

procedure TFormListadoPedidosPrevision.QPedidosPrevisionDIAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Text='-1' tHEN Text:='Pedido';
end;

procedure TFormListadoPedidosPrevision.QPedidosPrevisionMESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Text='-1' tHEN Text:='Pedido';
end;

procedure TFormListadoPedidosPrevision.QPedidosPrevisionUnitarioCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  QPedidosPrevisionUnitarioDIASSTR.Value:=AnsiRightStr('0'+QPedidosPrevisionUnitarioDIA.AsString,2);
  if QPedidosPrevisionUnitarioDIA.Value<0 then
  QPedidosPrevisionUnitarioDIASSTR.Value:='Pedido';
end;

procedure TFormListadoPedidosPrevision.spgPedidosGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
  if ACol<3 then
    HAlign := taLeftJustify
  else
    HAlign := taRightJustify;
end;

end.
