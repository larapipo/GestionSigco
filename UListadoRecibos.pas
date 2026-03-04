unit UListadoRecibos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, ComCtrls, StdCtrls, Mask,
  Db,   ActnList,Variants,
  Buttons, ToolWin, ExtCtrls,Librerias, DBCtrls,
  frxClass,  frxDBSet, ImgList, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask,
  JvToolEdit, SqlExpr, Provider, DBClient, JvBaseEdits, JvDBLookup, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  frxExportPDF, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxPSCore, dxPScxCommon, DataExport, DataToXLS,cxGridExportLink,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, dxSkinsdxRibbonPainter,
  JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog, System.ImageList,
  frCoreClasses, dxPScxExtComCtrlsLnk;

type
  TFormListadoRecibos = class(TFormABMBase)
    UpDown1: TUpDown;
    DSCajaMov: TDataSource;
    DSRetenciones: TDataSource;
    DSRecibos: TDataSource;
    DSSucursal: TDataSource;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frConsulta: TfrxReport;
    frDBValores: TfrxDBDataset;
    frDBRetenciones: TfrxDBDataset;
    frDBRecibo: TfrxDBDataset;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    CDSRecibos: TClientDataSet;
    DSPRecibos: TDataSetProvider;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSRecibosID_RC: TIntegerField;
    CDSRecibosTIPOCPBTE: TStringField;
    CDSRecibosCLASECPBTE: TStringField;
    CDSRecibosNROCPBTE: TStringField;
    CDSRecibosNOMBRE: TStringField;
    CDSRetenciones: TClientDataSet;
    DSPRetenciones: TDataSetProvider;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    CDSCajaMov: TClientDataSet;
    DSPCajaMov: TDataSetProvider;
    CDSCajaMovID_TPAGO: TIntegerField;
    CDSCajaMovDETALLE: TStringField;
    JvLabel1: TJvLabel;
    dbcComprobantes: TJvDBLookupCombo;
    DSComprobantes: TDataSource;
    CDSRecibosVENDEDOR: TStringField;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFMTBCDField;
    CDSClientesSALDOINICIAL: TFMTBCDField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    DSPValores: TDataSetProvider;
    CDSValores: TClientDataSet;
    CDSValoresID_CAJA_MOV: TIntegerField;
    CDSValoresFECHA: TSQLTimeStampField;
    CDSValoresNUMERO: TStringField;
    CDSValoresTIPO_COMPROB: TStringField;
    CDSValoresCLASE_COMPROB: TStringField;
    CDSValoresDETALLE: TStringField;
    CDSValoresIMPORTE: TFMTBCDField;
    CDSValoresID_TPAGO: TIntegerField;
    CDSValoresTIPO: TStringField;
    DSValores: TDataSource;
    frDBTipoValores: TfrxDBDataset;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    JvLabel2: TJvLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    edTotalRc: TJvCalcEdit;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    chTodosLosClientes: TCheckBox;
    TabSheet2: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_RC: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_NETO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE_DSCTO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn;
    frxPDFExport1: TfrxPDFExport;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    CDSRecibosDENOMINACION: TStringField;
    cxGrid1DBTableView1DENOMINACION: TcxGridDBColumn;
    ToolButton2: TToolButton;
    BitBtn1: TBitBtn;
    DataToXLS: TDataToXLS;
    SaveDialog1: TSaveDialog;
    QValores: TFDQuery;
    QSucursal: TFDQuery;
    QCajaMov: TFDQuery;
    QRetenciones: TFDQuery;
    QRecibos: TFDQuery;
    QComprobante: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QComprobanteID_COMPROBANTE: TIntegerField;
    QComprobanteTIPO_COMPROB: TStringField;
    QComprobanteCLASE_COMPROB: TStringField;
    QComprobanteDENOMINACION: TStringField;
    QComprobanteSUCURSAL: TIntegerField;
    QComprobanteLETRA: TStringField;
    pnCabecera: TPanel;
    CDSRetencionesIMPORTE: TFloatField;
    CDSCajaMovDEBE: TFloatField;
    dbcSucursal: TJvDBLookupCombo;
    CDSRecibosIMPORTE_DSCTO: TFloatField;
    CDSRecibosTOTAL_NETO: TFloatField;
    CDSRecibosTOTAL: TFloatField;
    CDSRecibosSALDO: TFloatField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSRecibosAfterScroll(DataSet: TDataSet);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure chTodosLosClientesClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Sumar;
  end;

var
  FormListadoRecibos: TFormListadoRecibos;

implementation

uses  UBuscadorClientes, URecibo_2,UDMain_FD;

{$R *.DFM}

procedure TFormListadoRecibos.Sumar;
Var CDSClone:TClientDataSet;
begin
  edTotalRc.Value:=0;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSRecibos,True);
  CDSClone.First;
  while not(CDSClone.Eof) do
    begin
      edTotalRc.Value:=edTotalRc.Value+CDSClone.FieldByName('Total').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;


procedure TFormListadoRecibos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoRecibos.FormShow(Sender: TObject);
var d,m,y:word;
begin
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

procedure TFormListadoRecibos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if PageControl1.ActivePageIndex=0 then
    begin
     if Not(CDSRecibos.IsEmpty) then
       begin
         SaveDialog1.FileName:='Recibos';
         SaveDialog1.DefaultExt:='xls';

         if VirtualUI.Active then
           SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

         if SaveDialog1.Execute Then
           if SaveDialog1.FileName<>'' Then
            begin
              if VirtualUI.Active then
                DataToXLS.SaveToFile(SaveDialog1.FileName)
              else
                DataToXLS.SaveToFile(SaveDialog1.FileName);

              if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
            end;

        end;
    end
  else
    if PageControl1.ActivePageIndex=1 then
      begin
        if Not(CDSRecibos.IsEmpty) then
          begin
            SaveDialog1.FileName:='Recibos';
            SaveDialog1.DefaultExt:='xls';

            if VirtualUI.Active then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if SaveDialog1.Execute Then
              if SaveDialog1.FileName<>'' Then
                begin
                  cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1,True,true,false,'xls');
                  if VirtualUI.Active then
                    begin
                      VirtualUI.StdDialogs:=False;
                      VirtualUI.DownloadFile(SaveDialog1.FileName);
                    end;

                end;
          end;
      end;

end;

procedure TFormListadoRecibos.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  if (dbcSucursal.KeyValue)<>null Then
    if IntToStr(dbcSucursal.KeyValue)<>'' Then
      begin
        CDSRecibos.CLose;
        CDSRecibos.AfterScroll:=nil;
        CDSRecibos.Params.ParamByName('desde').Value:=Desde.Date;
        CDSRecibos.Params.ParamByName('hasta').Value:=Hasta.Date;
        CDSRecibos.Params.ParamByName('suc').Value  :=dbcSucursal.KeyValue;
        CDSRecibos.Params.ParamByName('codigo').Value :='******';
        if chTodosLosClientes.Checked=False then
          CDSRecibos.Params.ParamByName('codigo').Value :=ceCliente.Text;

        if (dbcComprobantes.LookupSource.DataSet.FieldByName('clase_comprob').AsString<>'') and (dbcComprobantes.KeyValue<>'**') then
          begin
            CDSRecibos.Params.ParamByName('clase').Value  :=dbcComprobantes.LookupSource.DataSet.FieldByName('clase_comprob').AsString;
            CDSRecibos.Params.ParamByName('letra').Value  :=dbcComprobantes.LookupSource.DataSet.FieldByName('letra').AsString;
          end
        else
          begin
            CDSRecibos.Params.ParamByName('clase').Value  :='**';
            CDSRecibos.Params.ParamByName('letra').Value  :='*';
          end;

        CDSRecibos.Open;
        CDSRecibos.First;
        CDSRecibos.AfterScroll:=CDSRecibosAfterScroll;

        CDSCajaMov.Close;
        CDSCajaMov.Params.ParamByName('id').Value  :=CDSRecibosID_RC.Value;
        CDSCajaMov.Params.ParamByName('tipo').Value:=CDSRecibosTIPOCPBTE.Value;
        CDSCajaMov.OPen;

        CDSRetenciones.Close;
        CDSRetenciones.Params.ParamByName('id').Value:=CDSRecibosID_RC.Value;
        CDSRetenciones.Open;

        Sumar;
      end;
   Screen.Cursor:=crDefault;
   cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormListadoRecibos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
 frConsulta.DesignReport;
end;

procedure TFormListadoRecibos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoRecibos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRecibos:=nil;
end;

procedure TFormListadoRecibos.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoRecibos<>nil then
    if FormListadoRecibos.Width<>900 then
      FormListadoRecibos.Width:=900;
end;

procedure TFormListadoRecibos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  QSucursal.Open;
  QComprobante.Close;
  QComprobante.ParamByName('Suc').Value:=dbcSucursal.KeyValue;
  QComprobante.Open;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormListadoRecibos.ImprimirExecute(Sender: TObject);
begin
  inherited;

  if Not(CDSRecibos.IsEmpty) Then
    begin
      if PageControl1.ActivePageIndex=0 then
        begin

          if PrListados<0 Then PrListados:=0;

          frConsulta.PrintOptions.Printer:=PrNomListados;
          frConsulta.SelectPrinter;
          frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRecibosEmitidos.fr3');
          frConsulta.Variables['desde']   :=''''+Desde.Text+'''';
          frConsulta.Variables['hasta']   :=''''+Hasta.Text+'''';
          frConsulta.Variables['sucursal']:=''''+dbcSucursal.Text+'''';


          frConsulta.ShowReport;
        end
      else
        begin
          dxComponentPrinter1.Preview(True);
        end;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormListadoRecibos.CDSRecibosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSCajaMov.Close;
  CDSCajaMov.Params.ParamByName('id').Value  :=CDSRecibosID_RC.Value;
  CDSCajaMov.Params.ParamByName('tipo').Value:=CDSRecibosTIPOCPBTE.Value;
  CDSCajaMov.OPen;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Value:=CDSRecibosID_RC.Value;
  CDSRetenciones.Open;

  CDSValores.Close;
  CDSValores.Params.ParamByName('id_comprob').Value:=CDSRecibosID_RC.Value;
  CDSValores.Params.ParamByName('tipocpbte').Value :=CDSRecibosTIPOCPBTE.Value;
  CDSValores.Params.ParamByName('clasecpbte').Value:=CDSRecibosCLASECPBTE.Value;
  CDSValores.Open;
end;

procedure TFormListadoRecibos.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
         // Buscar.Execute;
        END;
    end;
end;

procedure TFormListadoRecibos.ceClienteKeyPress(Sender: TObject; var Key: Char);
var  Dato: STRING;
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
   //   Buscar.Execute;
    END;
end;

procedure TFormListadoRecibos.chTodosLosClientesClick(Sender: TObject);
begin
  inherited;
  if ( chTodosLosClientes.Checked=True ) then
    begin
      ceCliente.Color  :=clBtnFace;
      ceCliente.Enabled:=False;
    end
  else
    begin
      ceCliente.Color  :=clWindow;
      ceCliente.Enabled:=True;
    end;
end;

procedure TFormListadoRecibos.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  QComprobante.Close;
  QComprobante.ParamByName('Suc').Value:=dbcSucursal.KeyValue;
  QComprobante.Open;
  dbcComprobantes.KeyValue:=QComprobanteID_COMPROBANTE.Value;
  Buscar.Execute;


end;

procedure TFormListadoRecibos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
  FormRecibo_2.DatoNew  :=CDSRecibosID_RC.AsString;
  FormRecibo_2.TipoCpbte:=CDSRecibosTIPOCPBTE.AsString;
  FormRecibo_2.Recuperar.Execute;
  FormRecibo_2.Show;
end;

end.