unit UHistorialMovCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, JvDBLookup,
  Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, AdvSprd, AdvPageControl, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,VirtualUI_SDK,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCustomPivotGrid, cxDBPivotGrid,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu, System.ImageList;

type
  TFormHistorialMovCaja = class(TFormABMBase)
    pnCabecera: TPanel;
    DSPCtaCaja: TDataSetProvider;
    CDSCtaCaja: TClientDataSet;
    CDSCtaCajaID_CUENTA: TIntegerField;
    CDSCtaCajaID_TIPO_CTA: TIntegerField;
    CDSCtaCajaNOMBRE: TStringField;
    CDSCtaCajaNRO_CUENTA: TStringField;
    CDSCtaCajaID_BANCO: TIntegerField;
    CDSCtaCajaCUIT: TStringField;
    CDSCtaCajaRAZONSOCIAL: TStringField;
    DSCtaCaja: TDataSource;
    Label2: TLabel;
    dbcCtaCaja: TJvDBLookupCombo;
    DSPCajaSAldos: TDataSetProvider;
    CDSCajaSaldosInicial: TClientDataSet;
    CDSCajaSaldosInicialID_CAJA_CAB: TIntegerField;
    CDSCajaSaldosInicialID_TPAGO: TIntegerField;
    CDSCajaSaldosInicialID_FPAGO: TIntegerField;
    CDSCajaSaldosInicialDESCRIPCION: TStringField;
    CDSCajaSaldosInicialESTADO_CAJA: TSmallintField;
    CDSCajaSaldosFinales: TClientDataSet;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    DSPCajaDesde: TDataSetProvider;
    CDSCajaDesde: TClientDataSet;
    DSCajaDesde: TDataSource;
    CDSCajaDesdeID_CAJA: TIntegerField;
    CDSCajaDesdeID_CUENTA_CAJA: TIntegerField;
    CDSCajaDesdeFECHA_INCIO: TSQLTimeStampField;
    CDSCajaDesdeFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaDesdeESTADO: TIntegerField;
    CDSCajaDesdeOBS: TMemoField;
    CDSCajaDesdeNUMEROCAJA: TIntegerField;
    dbcDesde: TJvDBLookupCombo;
    dbcHasta: TJvDBLookupCombo;
    DSPCajaHasta: TDataSetProvider;
    CDSCajaHasta: TClientDataSet;
    DSCajaHasta: TDataSource;
    CDSCajaHastaID_CAJA: TIntegerField;
    CDSCajaHastaID_CUENTA_CAJA: TIntegerField;
    CDSCajaHastaFECHA_INCIO: TSQLTimeStampField;
    CDSCajaHastaFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaHastaESTADO: TIntegerField;
    CDSCajaHastaOBS: TMemoField;
    CDSCajaHastaNUMEROCAJA: TIntegerField;
    Label1: TLabel;
    Label3: TLabel;
    DSPMovCaja: TDataSetProvider;
    CDSMovCaja: TClientDataSet;
    CDSMovCajaIDCAJA: TIntegerField;
    CDSMovCajaNOMBRECTACAJA: TStringField;
    CDSMovCajaNROCAJA: TIntegerField;
    CDSMovCajaFECHAINICIO: TSQLTimeStampField;
    CDSMovCajaFECHACIERRE: TSQLTimeStampField;
    CDSMovCajaID_MOVIMIENTO: TIntegerField;
    CDSMovCajaFECHA: TSQLTimeStampField;
    CDSMovCajaTIPO_COMPROB: TStringField;
    CDSMovCajaCLASE_COMPRO: TStringField;
    CDSMovCajaNROCOMPROB: TStringField;
    CDSMovCajaID_TPAGO: TIntegerField;
    CDSMovCajaID_FPAGO: TIntegerField;
    CDSMovCajaMUESTRAFPAGO: TStringField;
    CDSMovCajaDESCRIPCION: TStringField;
    CDSMovCajaNOMBRE: TStringField;
    CDSMovCajaSIGNO: TStringField;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasESTADO: TIntegerField;
    CDSCajasOBS: TMemoField;
    CDSCajasNUMEROCAJA: TIntegerField;
    dbgCabeceras: TDBGrid;
    dbgPies: TDBGrid;
    dbgMovimientos: TDBGrid;
    DSCajas: TDataSource;
    DSCajaSaldosInicial: TDataSource;
    DSCajaSaldosFinales: TDataSource;
    DSMovCaja: TDataSource;
    dbgCajas: TDBGrid;
    btVer: TBitBtn;
    AdvSpreadGrid: TAdvSpreadGrid;
    CDSCajaSaldosFinalesID_CAJA_CAB: TIntegerField;
    CDSCajaSaldosFinalesID_TPAGO: TIntegerField;
    CDSCajaSaldosFinalesID_FPAGO: TIntegerField;
    CDSCajaSaldosFinalesDESCRIPCION: TStringField;
    CDSCajaSaldosFinalesESTADO_CAJA: TSmallintField;
    CDSMovCajaID_CTA_CAJA: TIntegerField;
    AdvPageControl1: TAdvPageControl;
    pagListado: TAdvTabSheet;
    pagExcel: TAdvTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_COMPRO: TcxGridDBColumn;
    cxGrid1DBTableView1NROCOMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAFPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    pagDetalles: TAdvTabSheet;
    btExportarXLS: TBitBtn;
    SaveDialog: TSaveDialog;
    chExcel: TCheckBox;
    ToolButton1: TToolButton;
    pagGrupo: TAdvTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1NOMBRECTACAJA: TcxDBPivotGridField;
    cxDBPivotGrid1NROCAJA: TcxDBPivotGridField;
    cxDBPivotGrid1FECHAINICIO: TcxDBPivotGridField;
    cxDBPivotGrid1FECHACIERRE: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1TIPO_COMPROB: TcxDBPivotGridField;
    cxDBPivotGrid1CLASE_COMPRO: TcxDBPivotGridField;
    cxDBPivotGrid1NROCOMPROB: TcxDBPivotGridField;
    cxDBPivotGrid1DEBE: TcxDBPivotGridField;
    cxDBPivotGrid1HABER: TcxDBPivotGridField;
    cxDBPivotGrid1MUESTRAFPAGO: TcxDBPivotGridField;
    cxDBPivotGrid1COTIZACION: TcxDBPivotGridField;
    cxDBPivotGrid1DESCRIPCION: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid1SIGNO: TcxDBPivotGridField;
    QCajaDesde: TFDQuery;
    CDSCajaDesdeSALDO_INCIAL: TFloatField;
    QCajaHasta: TFDQuery;
    CDSCajaHastaSALDO_INCIAL: TFloatField;
    QCtaCaja: TFDQuery;
    QCajas: TFDQuery;
    CDSCajasSALDO_INCIAL: TFloatField;
    QCajaSaldos: TFDQuery;
    CDSCajaSaldosInicialIMPORTE: TFloatField;
    CDSCajaSaldosFinalesIMPORTE: TFloatField;
    QMovCaja: TFDQuery;
    CDSMovCajaDEBE: TFloatField;
    CDSMovCajaHABER: TFloatField;
    CDSMovCajaCOTIZACION: TFloatField;
    CDSMovCajaUNIDADES: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure dbcCtaCajaChange(Sender: TObject);
    procedure dbcHastaChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure btVerClick(Sender: TObject);
    procedure CDSCajasAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btExportarXLSClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistorialMovCaja: TFormHistorialMovCaja;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormHistorialMovCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormHistorialMovCaja.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSCtaCaja.Close;
  CDSCtaCaja.Open;
  AdvPageControl1.ActivePageIndex:=0;
end;

procedure TFormHistorialMovCaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormHistorialMovCaja:=nil;
end;

procedure TFormHistorialMovCaja.FormResize(Sender: TObject);
begin
  inherited;
  if FormHistorialMovCaja<>nil then
    if FormHistorialMovCaja.Width<>1004 then
      FormHistorialMovCaja.Width:=1004;

end;

procedure TFormHistorialMovCaja.btVerClick(Sender: TObject);
var contador:Integer;
begin
  inherited;
  CDSCajas.First;
  CDSCajas.DisableControls;
  Contador:=1;
  AdvSpreadGrid.ClearNormalCells;
  AdvSpreadGrid.RowCount := 1;//7 + CDSCajaSaldosInicial.RecordCount +8;
  AdvSpreadGrid.ColCount := 10;
  while not(CDSCajas.Eof) do
    begin
      AdvSpreadGrid.RowCount := AdvSpreadGrid.RowCount + ( 4 + CDSCajaSaldosInicial.RecordCount + CDSMovCaja.RecordCount  +  CDSCajaSaldosFinales.RecordCount + 3);

      AdvSpreadGrid.Cells [1,Contador]       := 'Caja Nro:'+CDSCajasNUMEROCAJA.AsString;
      AdvSpreadGrid.Cells [1,Contador+1]     := 'F.Incio';
      AdvSpreadGrid.Dates [2,Contador+1]     := CDSCajasFECHA_INCIO.AsDateTime;
      AdvSpreadGrid.Cells [3,Contador+1]     := 'F.Cierre';
      AdvSpreadGrid.Dates [4,Contador+1]     := CDSCajasFECHA_CIERRE.AsDateTime;
      AdvSpreadGrid.Alignments[2,Contador+1] :=taCenter;
      AdvSpreadGrid.Alignments[4,Contador+1] :=taCenter;

      AdvSpreadGrid.FontStyles[1,Contador]   :=[fsBold];
      AdvSpreadGrid.FontStyles[2,Contador+1] :=[fsBold];
      AdvSpreadGrid.FontStyles[3,Contador+1] :=[fsBold];
      AdvSpreadGrid.FontStyles[4,Contador+1] :=[fsBold];

      AdvSpreadGrid.FontStyles [1,Contador]   := [fsBold];
      AdvSpreadGrid.FontStyles [1,Contador+1] := [fsBold];
      AdvSpreadGrid.FontColors [2,Contador+1] := clBlue;
      AdvSpreadGrid.FontStyles [3,Contador+1] := [fsBold];
      AdvSpreadGrid.FontColors [4,Contador+1] := clBlue;

      Contador := Contador+2;
      CDSCajaSaldosInicial.First;
      CDSCajaSaldosInicial.DisableControls;
      while not(CDSCajaSaldosInicial.Eof) do
        begin
          AdvSpreadGrid.Cells [2,Contador]      := CDSCajaSaldosInicialDESCRIPCION.AsString;
          AdvSpreadGrid.Floats[3,Contador]      := CDSCajaSaldosInicialIMPORTE.AsFloat;
          AdvSpreadGrid.Alignments[3,Contador]  := taRightJustify;
          AdvSpreadGrid.FontStyles [2,Contador] := [fsBold];

          Contador := Contador+1;
          CDSCajaSaldosInicial.Next;
        end;
      Contador := Contador+1;
      CDSCajaSaldosInicial.EnableControls;

      CDSMovCaja.First;
      CDSMovCaja.DisableControls;
      if Not(CDSMovCaja.IsEmpty) then
        begin
          while Not(CDSMovCaja.Eof) do
            begin
              AdvSpreadGrid.Dates [1,Contador] := CDSMovCajaFECHA.AsDateTime;
              AdvSpreadGrid.Cells [2,Contador] := CDSMovCajaTIPO_COMPROB.AsString;
              AdvSpreadGrid.Cells [3,Contador] := CDSMovCajaCLASE_COMPRO.AsString;
              AdvSpreadGrid.Cells [4,Contador] := CDSMovCajaNROCOMPROB.AsString;
              AdvSpreadGrid.Cells [5,Contador] := CDSMovCajaDESCRIPCION.AsString;
              AdvSpreadGrid.Cells [6,Contador] := CDSMovCajaNOMBRE.AsString;
              AdvSpreadGrid.Floats[7,Contador] := CDSMovCajaDEBE.AsFloat;
              AdvSpreadGrid.Floats[8,Contador] := CDSMovCajaHABER.AsFloat;
              AdvSpreadGrid.Cells [9,Contador] := CDSMovCajaMUESTRAFPAGO.AsString;

              AdvSpreadGrid.Alignments[7,Contador]:=taRightJustify;
              AdvSpreadGrid.Alignments[8,Contador]:=taRightJustify;
              CDSMovCaja.Next;
              Inc(Contador);
            end;
        end;
      CDSMovCaja.EnableControls;

      Contador := Contador+1;
      CDSCajaSaldosFinales.First;
      CDSCajaSaldosFinales.DisableControls;
      while not(CDSCajaSaldosFinales.Eof) do
        begin
          AdvSpreadGrid.Cells  [2,Contador]     := CDSCajaSaldosFinalesDESCRIPCION.AsString;
          AdvSpreadGrid.Floats [3,Contador]     := CDSCajaSaldosFinalesIMPORTE.AsFloat;
          AdvSpreadGrid.Alignments[3,Contador]  := taRightJustify;
          AdvSpreadGrid.FontStyles [2,Contador] := [fsBold];
          Contador := Contador+1;
          CDSCajaSaldosFinales.Next;
        end;
      CDSCajaSaldosFinales.EnableControls;
      AdvSpreadGrid.MergeCells(1,Contador,9,1);
      AdvSpreadGrid.Cells [1,Contador]:='----------------------------------------------------------';

      Contador := Contador+3;

      CDSCajas.Next;
    end;
  AdvSpreadGrid.Recalc;
  AdvSpreadGrid.AutoSizeColumns(True,1);

  CDSCajas.First;
  CDSCajas.EnableControls;

end;

procedure TFormHistorialMovCaja.btExportarXLSClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSMovCaja.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='MovCaja';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              AdvSpreadGrid.SaveToXLS(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
              AdvSpreadGrid.SaveToXLS(SaveDialog.FileName);
            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
    END;
end;

procedure TFormHistorialMovCaja.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCajas.Close;
  CDSCajas.Params.ParamByName('idctacaja').Value:= dbcCtaCaja.KeyValue;
  CDSCajas.Params.ParamByName('desde').Value    := dbcDesde.KeyValue;
  CDSCajas.Params.ParamByName('hasta').Value    := dbcHasta.KeyValue;
  CDSCajas.Open;

  CDSCajaSaldosInicial.Close;
  CDSCajaSaldosInicial.Params.ParamByName('idcab').Value:=CDSCajasID_CAJA.Value;
  CDSCajaSaldosInicial.Open;

  CDSCajaSaldosFinales.Close;
  CDSCajaSaldosFinales.Params.ParamByName('idcab').Value:=CDSCajasID_CAJA.Value;
  CDSCajaSaldosFinales.Open;

  CDSMovCaja.Close;
  CDSMovCaja.Params.ParamByName('idcta').Value  := dbcCtaCaja.KeyValue;
  CDSMovCaja.Params.ParamByName('desde').Value  := CDSCajasID_CAJA.Value;//dbcDesde.KeyValue;
  CDSMovCaja.Params.ParamByName('hasta').Value  := CDSCajasID_CAJA.Value;//dbcHasta.KeyValue;
  CDSMovCaja.Open;

  AdvSpreadGrid.ClearNormalCells;
  if chExcel.Checked then
    btVer.Click;

  //AdvSpreadGrid.RowCount := 2000;//CDSOPago.RecordCount+11;
  //AdvSpreadGrid.ColCount := 10;

end;

procedure TFormHistorialMovCaja.dbcHastaChange(Sender: TObject);
begin
  inherited;
  if (StrToInt(dbcHasta.KeyValue)<StrToInt(dbcDesde.KeyValue)) then
    begin
      dbcHasta.ClearValue;
      ShowMessage('debe ser mayor o igual al desde');
    end;

end;

procedure TFormHistorialMovCaja.CDSCajasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSMovCaja.Close;
  CDSMovCaja.Params.ParamByName('idcta').Value  := dbcCtaCaja.KeyValue;
  CDSMovCaja.Params.ParamByName('desde').Value  := CDSCajasID_CAJA.Value;//dbcDesde.KeyValue;
  CDSMovCaja.Params.ParamByName('hasta').Value  := CDSCajasID_CAJA.Value;//dbcHasta.KeyValue;
  CDSMovCaja.Open;

  CDSCajaSaldosInicial.Close;
  CDSCajaSaldosInicial.Params.ParamByName('idcab').Value:=CDSCajasID_CAJA.Value;
  CDSCajaSaldosInicial.Open;

  CDSCajaSaldosFinales.Close;
  CDSCajaSaldosFinales.Params.ParamByName('idcab').Value:=CDSCajasID_CAJA.Value;
  CDSCajaSaldosFinales.Open;
end;

procedure TFormHistorialMovCaja.dbcCtaCajaChange(Sender: TObject);
begin
  inherited;
  CDSCajaDesde.Close;
  CDSCajaDesde.Params.ParamByName('cta_caja').Value:=dbcCtaCaja.KeyValue;
  CDSCajaDesde.Open;
  CDSCajaHasta.Close;
  CDSCajaHasta.Params.ParamByName('cta_caja').Value:=dbcCtaCaja.KeyValue;
  CDSCajaHasta.Open;
  dbcDesde.ClearValue;
  dbcHasta.ClearValue;
end;

end.
