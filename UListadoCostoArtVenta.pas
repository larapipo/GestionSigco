unit UListadoCostoArtVenta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin, Math,
  ExtCtrls, Mask, Grids, DBGrids,Librerias,  frxDBSet,
  frxClass, ImgList, JvComponentBase, JvExControls, JvGradient,
  DataExport, DataToXLS,   JvDBLookup, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, Provider, DBClient,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,cxGridExportLink,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinscxPCPainter, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, Data.DB,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvOfficeButtons, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  frCoreClasses;

type
  TFormListadoCostoArtVendidos = class(TFormABMBase)
    DSDetalle: TDataSource;
    UpDown1: TUpDown;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frListado: TfrxReport;
    frDBMov: TfrxDBDataset;
    BitBtn4: TBitBtn;
    DataToXLS: TDataToXLS;
    SaveDialog1: TSaveDialog;
    ExportarXLS: TAction;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSDetalle: TClientDataSet;
    DSPDetalle: TDataSetProvider;
    CDSDetalleID_COMPROBANTE: TIntegerField;
    CDSDetalleTIPO_CPBTE: TStringField;
    CDSDetalleCLASE_CPBTE: TStringField;
    CDSDetalleNROCPBTE: TStringField;
    CDSDetalleFECHACPBTE: TSQLTimeStampField;
    CDSDetalleCODIGOARTICULO: TStringField;
    CDSDetalleDETALLE: TStringField;
    CDSDetalleCANTIDAD: TFMTBCDField;
    CDSDetalleCOSTO_TOTAL: TFMTBCDField;
    CDSDetallePRECIOVTA_UNITARIO: TFMTBCDField;
    CDSDetalleTOTAL_COSTO_VENTA: TFMTBCDField;
    CDSDetalleTOTAL_VENTA: TFMTBCDField;
    CDSDetallePORCENTAJE: TFMTBCDField;
    CDSDetalleACTUALIZADO: TStringField;
    CDSDetalleRENTABILIDAD: TFMTBCDField;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    DSFiltroCab: TDataSource;
    DSFiltroDet: TDataSource;
    DSZona: TDataSource;
    CDSZona: TClientDataSet;
    CDSZonaID_ZONA: TIntegerField;
    CDSZonaDETALLE: TStringField;
    DSPZona: TDataSetProvider;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    DSPersonal: TDataSource;
    Label4: TLabel;
    CDSDetalleT_COSTO_CIVA: TFMTBCDField;
    CDSDetalleT_VTA_CIVA: TFMTBCDField;
    CDSDetalleRENT_SOBRECOSTO: TFMTBCDField;
    CDSDetalleRENT_SOBREVTA: TFMTBCDField;
    CDSDetalleIVA_TASA: TFMTBCDField;
    CDSDetalleDECLARA_IVA: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgDetalle: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxLabel10: TJvLabel;
    dbcGrupo: TJvDBLookupCombo;
    chFiltro: TCheckBox;
    dbgDetallefiltro: TDBGrid;
    dbcSucursal: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcZona: TJvDBLookupCombo;
    chStock: TCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPO_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIOVTA_UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_COSTO_VENTA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_VENTA: TcxGridDBColumn;
    cxGrid1DBTableView1T_COSTO_CIVA: TcxGridDBColumn;
    cxGrid1DBTableView1T_VTA_CIVA: TcxGridDBColumn;
    cxGrid1DBTableView1RENT_SOBRECOSTO: TcxGridDBColumn;
    cxGrid1DBTableView1RENT_SOBREVTA: TcxGridDBColumn;
    cxGrid1DBTableView1DECLARA_IVA: TcxGridDBColumn;
    CDSDetalleMUESTRAARTICULO: TStringField;
    chRtoObra: TCheckBox;
    Button1: TButton;
    CDSDetalleCOMISION: TFMTBCDField;
    QDetalle: TFDQuery;
    QFiltroCab: TFDQuery;
    QFiltroDet: TFDQuery;
    pnCabecera: TPanel;
    QFiltroCabID: TIntegerField;
    QFiltroCabDETALLE: TStringField;
    QFiltroCabGRUPO: TSmallintField;
    QFiltroDetID: TIntegerField;
    QFiltroDetID_CAB: TIntegerField;
    QFiltroDetID_CPBTE: TIntegerField;
    QFiltroDetMUESTRACOMPROBANTE: TStringField;
    QFiltroDetMUESTRATIPO: TStringField;
    QFiltroDetMUESTRACLASE: TStringField;
    QFiltroDetMUESTRASUC: TStringField;
    chBuscar: TAdvOfficeCheckBox;
    CtroCosto: TTabSheet;
    Label5: TLabel;
    QGastos: TFDQuery;
    DSPGastos: TDataSetProvider;
    CDSGastos: TClientDataSet;
    DSGastos: TDataSource;
    ListadoPorCtrCosto: TAction;
    DBGrid1: TDBGrid;
    CDSGastosTIPO: TStringField;
    CDSGastosCTROCOSTO: TIntegerField;
    CDSGastosNOMBRE: TStringField;
    CDSGastosDEBE: TFloatField;
    CDSGastosHABER: TFloatField;
    CDSDetalleCENTRO_COSTO: TStringField;
    cxGrid1DBTableView1CENTRO_COSTO: TcxGridDBColumn;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbcGrupoChange(Sender: TObject);
    procedure chFiltroClick(Sender: TObject);
    procedure CDSDetalleCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure ListadoPorCtrCostoExecute(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Condiciones:String;
    procedure ArmarCondiciones;
  end;

var
  FormListadoCostoArtVendidos: TFormListadoCostoArtVendidos;

implementation

uses DMBuscadoresForm, UFiltroComprobantesVenta,UDMain_FD;
{$R *.DFM}

procedure TFormListadoCostoArtVendidos.ArmarCondiciones;
begin
  Condiciones:='';
  if Not(QFiltroDet.IsEmpty) then
  begin
    QFiltroDet.First;
    while not(QFiltroDet.Eof) do
      begin
        if Condiciones='' Then
          condiciones:='(id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') '
        else
          condiciones:=Condiciones+' or (id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') ';
        QFiltroDet.Next;
      end;
   // Condiciones:=' and ('+condiciones+')';
  end;
end;


procedure TFormListadoCostoArtVendidos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  if chBuscar.Checked Then
    Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoCostoArtVendidos.BuscarExecute(Sender: TObject);
begin
 // inherited;
  Screen.Cursor:=crHourGlass;
  sbEstado.SimpleText:='Procesando consulta.......';
  Application.ProcessMessages;
  ArmarCondiciones;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSDetalle.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSDetalle.Params.ParamByName('vendedor').Value:= dbcVendedor.KeyValue;
  CDSDetalle.Params.ParamByName('sucursal').Value:= dbcSucursal.KeyValue;
  CDSDetalle.Params.ParamByName('zona').Value    := dbcZona.KeyValue;
  if chStock.Checked then
    CDSDetalle.Params.ParamByName('control').Value    := 'S'
  else
    CDSDetalle.Params.ParamByName('control').Value    := '*';

  if chRtoObra.Checked then
    CDSDetalle.Params.ParamByName('obra').Value    := 'S'
  else
    CDSDetalle.Params.ParamByName('obra').Value    := 'N';

  CDSDetalle.Open;
  if chFiltro.Checked then
    begin
      CDSDetalle.Filtered:=False;
      CDSDetalle.Filter  :=Condiciones;
      CDSDetalle.Filtered:=True;
    end
  else
    begin
      CDSDetalle.Filtered:=False;
      CDSDetalle.Filter  :='';
    end;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
  dbgDetalle.Width:=dbgDetalle.Width-1;
  dbgDetalle.Width:=dbgDetalle.Width+1;
  cxGrid1DBTableView1.ViewData.Expand(True);
  //ListadoPorCtrCosto.Execute;
end;

procedure TFormListadoCostoArtVendidos.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
end;

procedure TFormListadoCostoArtVendidos.CDSDetalleCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSDetalleT_COSTO_CIVA.AsFloat   := RoundTo(CDSDetalleTOTAL_COSTO_VENTA.ASFloat*(1+CDSDetalleIVA_TASA.AsFloat * 0.01),-2);
  CDSDetalleT_VTA_CIVA.AsFloat     := RoundTo(CDSDetalleTOTAL_VENTA.ASFloat*(1+CDSDetalleIVA_TASA.AsFloat * 0.01),-2);

  if CDSDetalleDECLARA_IVA.Value='S' then
    begin
      if Abs(CDSDetalleTOTAL_COSTO_VENTA.ASFloat)>0 then
        CDSDetalleRENT_SOBRECOSTO.AsFloat:= RoundTo((( CDSDetalleTOTAL_VENTA.ASFloat -  CDSDetalleTOTAL_COSTO_VENTA.ASFloat ) / CDSDetalleTOTAL_COSTO_VENTA.ASFloat) * 100,-2);
      if Abs(CDSDetalleTOTAL_VENTA.ASFloat)>0 Then
      CDSDetalleRENT_SOBREVTA.AsFloat  := RoundTo((( CDSDetalleTOTAL_VENTA.ASFloat -  CDSDetalleTOTAL_COSTO_VENTA.ASFloat ) / CDSDetalleTOTAL_VENTA.ASFloat ) * 100,-2);
    end
  else
    if CDSDetalleDECLARA_IVA.Value='N' then
      begin
        if Abs(CDSDetalleTOTAL_COSTO_VENTA.ASFloat)>0 then
          CDSDetalleRENT_SOBRECOSTO.AsFloat:= RoundTo((( CDSDetalleT_VTA_CIVA.AsFloat -  CDSDetalleTOTAL_COSTO_VENTA.ASFloat ) / CDSDetalleTOTAL_COSTO_VENTA.ASFloat) * 100,-2);
        if Abs(CDSDetalleT_VTA_CIVA.AsFloat)>0 then

        CDSDetalleRENT_SOBREVTA.AsFloat  := RoundTo((( CDSDetalleT_VTA_CIVA.AsFloat -  CDSDetalleTOTAL_COSTO_VENTA.ASFloat ) / CDSDetalleT_VTA_CIVA.AsFloat ) * 100,-2);
      end;

  CDSDetalleMUESTRAARTICULO.Value:=CDSDetalleCODIGOARTICULO.Value+'-'+CDSDetalleDETALLE.Value;
//
//    CDSDetalleRENT_SOBRECOSTO.AsFloat:=100;
//
//  if CDSDetalleT_VTA_CIVA.AsFloat >0 then
//    CDSDetalleRENT_SOBREVTA.AsFloat:= RoundTo((( CDSDetalleT_VTA_CIVA.AsFloat -  CDSDetalleT_COSTO_CIVA.AsFloat ) / CDSDetalleT_VTA_CIVA.AsFloat) * 100,-2)
//  else
//    CDSDetalleRENT_SOBREVTA.AsFloat:=100;


end;

procedure TFormListadoCostoArtVendidos.chFiltroClick(Sender: TObject);
begin
  inherited;
  if (chFiltro.Checked=False) then
    begin
      dbcGrupo.Enabled:=False;
      dbgDetallefiltro.Enabled:=False;
      dbcGrupo.Color:=clBtnFace;
      dbgDetallefiltro.Color:=clBtnFace;
      CDSDetalle.Filter:='';
      CDSDetalle.Filtered:=False;
    end
  else
    begin
      dbcGrupo.Enabled:=True;
      dbgDetallefiltro.Enabled:=True;
      dbcGrupo.Color:=clWhite;
      dbgDetallefiltro.Color:=clWhite;
      ArmarCondiciones;
      CDSDetalle.Filtered:=False;
      CDSDetalle.Filter:=Condiciones;
      CDSDetalle.Filtered:=True;
  end;
end;

procedure TFormListadoCostoArtVendidos.dbcGrupoChange(Sender: TObject);
begin
  inherited;
  QFiltroDet.Close;
  QFiltroDet.ParamByName('id').Value:=dbcGrupo.KeyValue;
  QFiltroDet.Open;
end;

procedure TFormListadoCostoArtVendidos.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if CDSDetalleACTUALIZADO.Value='S' then
    dbgDetalle.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalle.Canvas.Font.Style:=[];
 dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);


end;

procedure TFormListadoCostoArtVendidos.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoCostoArtVendidos.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if PageControl1.ActivePageIndex=0 then
    begin
      if Not(CDSDetalle.IsEmpty) then
        begin
          SaveDialog1.FileName:='CostoVta';
          SaveDialog1.DefaultExt:='xls';
          if SaveDialog1.Execute Then
            if SaveDialog1.FileName<>'' Then
              begin
                if VirtualUI.Active then
                  DataToXLS.SaveToFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt)
                else
                  DataToXLS.SaveToFile(SaveDialog1.FileName);

                if VirtualUI.Active then
                  begin
                    VirtualUI.StdDialogs:=False;
                    VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
                  end;
              end;

        end;
    end
  else
    begin
      if Not(CDSDetalle.IsEmpty) then
        begin
          SaveDialog1.FileName:='CostoVta';
          SaveDialog1.DefaultExt:='xls';
          if SaveDialog1.Execute Then
            if SaveDialog1.FileName<>'' Then
              cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1);
          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
            end;
        end;
    end

end;

procedure TFormListadoCostoArtVendidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSucursal.Close;
  CDSZona.Close;
  CDSPersonal.Close;
  QFiltroCab.Close;
  Action:=caFree;
end;

procedure TFormListadoCostoArtVendidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCostoArtVendidos:=nil;
end;

procedure TFormListadoCostoArtVendidos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Open;
  CDSZona.Open;
  CDSPersonal.Open;
  QFiltroCab.Open;
  QFiltroCab.First;
  chFiltro.Checked             := False;
  dbcGrupo.Enabled             := False;
  dbgDetallefiltro.Enabled     := False;
  dbcGrupo.Color               := clBtnFace;
  dbgDetallefiltro.Color       := clBtnFace;
  PageControl1.ActivePageIndex := 0;
  CtroCosto.TabVisible         := False;
end;

procedure TFormListadoCostoArtVendidos.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
 DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;

procedure TFormListadoCostoArtVendidos.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoCostoArtVendidos.ImprimirExecute(Sender: TObject);
begin
  inherited;
   if Not(CDSDetalle.IsEmpty) Then
    begin

      frListado.PrintOptions.Printer:=PrNomListados;
      frListado.SelectPrinter;
      frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCostoVta.fr3');
      frListado.Variables['desde']   :=''''+Desde.Text+'''';
      frListado.Variables['hasta']   :=''''+Hasta.Text+'''';
      frListado.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
      frListado.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';
      frListado.Variables['Zona']:=''''+dbcZona.Text+'''';

      frListado.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormListadoCostoArtVendidos.ListadoPorCtrCostoExecute(
  Sender: TObject);
begin
  inherited;
  CDSGastos.Close;
  CDSGastos.Params.ParamByName('desde').Value    := Desde.Date;
  CDSGastos.Params.ParamByName('hasta').Value    := Hasta.Date;
  CDSGastos.Params.ParamByName('ct').Value       := -1;
  CDSGastos.Params.ParamByName('Ingresos').Value := 0;
  CDSGastos.Params.ParamByName('Vtas').Value     := 0;
  CDSGastos.Params.ParamByName('Personal').Value := 0;
  CDSGastos.Params.ParamByName('Ingresos').Value := 1;
  CDSGastos.Params.ParamByName('Vtas').Value     := 1;
  CDSGastos.Params.ParamByName('Personal').Value := 1;
  CDSGastos.Open;
end;

procedure TFormListadoCostoArtVendidos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListado.DesignReport;
end;

end.