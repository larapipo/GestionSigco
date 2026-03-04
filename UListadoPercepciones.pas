unit UListadoPercepciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, StdCtrls, Mask, Grids, DBGrids,
  Db, ActnList, StrUtils, Buttons, ToolWin, ExtCtrls,librerias,
  JvComponentBase, JvExControls, JvGradient, 
  frxExportText, frxExportRTF, frxExportXLS, frxExportPDF, DataToXLS,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr,
  Provider, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, JvExDBGrids, JvDBGrid, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator, System.Actions,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage, frxClass,
  DataExport, DataToAscii, Vcl.Menus, frxDBSet, Vcl.ImgList, CompBuscador,VirtualUI_SDK,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvDBLookup,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormListaPercepciones = class(TFormABMBase)
    UpDown1: TUpDown;
    DSPercepciones: TDataSource;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frConsulta: TfrxReport;
    frDBDPercepciones: TfrxDBDataset;
    ExportarIB_MensualTxt: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    ExportarPercepcionedeIIBBaArchivoTxt1: TMenuItem;
    ExportaIBMultiTxt: TAction;
    ExportarPercepcionedeIIBBaArchivoTxtMulticonvenio1: TMenuItem;
    ToolButton1: TToolButton;
    DataToAscii1: TDataToAscii;
    frxPDFExport1: TfrxPDFExport;
    DataToXLS1: TDataToXLS;
    btExcel: TBitBtn;
    ExportarXLS: TAction;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSPercepciones: TClientDataSet;
    DSPPercepciones: TDataSetProvider;
    CDSPercepcionesTIPOPERCEPCION: TStringField;
    CDSPercepcionesDETALLE: TStringField;
    CDSPercepcionesNROCPBTE: TStringField;
    CDSPercepcionesID_CPBTE: TIntegerField;
    CDSPercepcionesTIPOCPBTE: TStringField;
    CDSPercepcionesCLASECPBTE: TStringField;
    CDSPercepcionesCUIT: TStringField;
    CDSPercepcionesRAZON_SOCIAL: TStringField;
    CDSPercepcionesJURIDICCION: TStringField;
    ExportarPercepcionesIVA: TAction;
    ExportarPercepcionesIVA1: TMenuItem;
    CDSPercepcionesCODSUC: TIntegerField;
    CDSPercepcionesSUCURSAL: TStringField;
    pcPercepciones: TPageControl;
    tsGeneral: TTabSheet;
    tsTarjetas: TTabSheet;
    DSPPercepTC: TDataSetProvider;
    CDSPercepTC: TClientDataSet;
    DSPercepTC: TDataSource;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    CDSPercepTCTIPOPERCEPCION: TStringField;
    CDSPercepTCDETALLE: TStringField;
    CDSPercepTCNROCPBTE: TStringField;
    CDSPercepTCID_CPBTE: TIntegerField;
    CDSPercepTCTIPOCPBTE: TStringField;
    CDSPercepTCCLASECPBTE: TStringField;
    CDSPercepTCCUIT: TStringField;
    CDSPercepTCRAZON_SOCIAL: TStringField;
    CDSPercepTCJURIDICCION: TStringField;
    CDSPercepTCCODSUC: TIntegerField;
    CDSPercepTCSUCURSAL: TStringField;
    pgDetalles: TTabSheet;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOPERCEPCION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAFISCAL: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1TASA: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1RAZON_SOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn;
    dbgDetalle: TJvDBGrid;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGrid1DBTableView1NETO: TcxGridDBColumn;
    cbSucursales: TJvDBLookupCombo;
    Label2: TLabel;
    DSSucursales: TDataSource;
    QSucursales: TFDQuery;
    QSucursalesCODIGO: TIntegerField;
    QSucursalesDETALLE: TStringField;
    QPercep: TFDQuery;
    CDSPercepcionesNETO: TFloatField;
    CDSPercepcionesTASA: TFloatField;
    CDSPercepcionesIMPORTE: TFloatField;
    QPercepTC: TFDQuery;
    CDSPercepTCIMPORTE: TFloatField;
    CDSPercepTCNETO: TFloatField;
    CDSPercepTCTASA: TFloatField;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    JvLabel1: TLabel;
    CDSPercepTCFECHA: TSQLTimeStampField;
    CDSPercepTCFECHAFISCAL: TSQLTimeStampField;
    CDSPercepcionesFECHA: TSQLTimeStampField;
    CDSPercepcionesFECHAFISCAL: TSQLTimeStampField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ExportarIB_MensualTxtExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ExportaIBMultiTxtExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure ExportarPercepcionesIVAExecute(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListaPercepciones: TFormListaPercepciones;

implementation

{$R *.DFM}
uses UDMain_fd, ULiquidacionTC, UCompra_2, UCompraCtdo_2;

procedure TFormListaPercepciones.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFormListaPercepciones.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  QSucursales.Close;
  QSucursales.Open();

end;

procedure TFormListaPercepciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListaPercepciones.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  pcPercepciones.ActivePageIndex:=0;
end;

procedure TFormListaPercepciones.BuscarExecute(Sender: TObject);
var i:integer;
begin
//  inherited;
  CDSPercepciones.IndexFieldNames:='';
  CDSPercepciones.IndexDefs.Clear;
  CDSPercepciones.Close;
  CDSPercepciones.Params.ParamByName('Desde').AsDate  := Desde.Date;
  CDSPercepciones.Params.ParamByName('hasta').AsDate  := Hasta.Date;
  CDSPercepciones.Params.ParamByName('Suc').AsInteger := cbSucursales.KeyValue;
  CDSPercepciones.Open;
  CDSPercepciones.IndexFieldNames:='CODSUC;TIPOPERCEPCION;FECHA;TIPOCPBTE;NROCPBTE;';

  CDSPercepTC.Close;
  CDSPercepTC.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSPercepTC.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSPercepTC.Open;
  CDSPercepTC.IndexFieldNames:='TIPOPERCEPCION;RAZON_SOCIAL';
  cxDBPivotGrid1Field1.ExpandAll;
  cxDBPivotGrid1Field3.ExpandAll;

 for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  //TFMTBCDField(dbgDetalle.Fields[4]).DisplayFormat:='0.00';
  //TFMTBCDField(dbgDetalle.Fields[5]).DisplayFormat:='0.00';
end;

procedure TFormListaPercepciones.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSPercepciones.IsEmpty) Then
    begin
      if pcPercepciones.ActivePageIndex<>2 then
        begin
          frConsulta.PrintOptions.Printer:=PrNomListados;
          frConsulta.SelectPrinter;
          frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoPercepciones.fr3');
          // frConsulta.Variables['Mascara']:=''''+Mascara+'''';
          frConsulta.ShowReport;
        end
      else
        if pcPercepciones.ActivePageIndex=2 then
           dxComponentPrinter1Link1.Preview(True);

    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormListaPercepciones.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;

procedure TFormListaPercepciones.ExportarIB_MensualTxtExecute(Sender: TObject);
var
  ArchiTxt: TextFile;
  Cuit,Fecha,TipoCpbte,Importe,Letra: String;
  ImporteInt:Integer;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.FileName:='Percepciones IIBB'+FormatDateTime('YYYYMM',Desde.Date);
  SaveDialog1.DefaultExt:='txt';

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  CDSPercepciones.First;
  if SaveDialog1.Execute Then
  if SaveDialog1.FileName<>'' then
    begin
      if Not(AnsiEndsText('txt',SaveDialog1.FileName)) then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSPercepciones.Eof) do
        begin
          if CDSPercepcionesTIPOPERCEPCION.Value='IIBB' Then
            begin
              Cuit   := CDSPercepcionesCUIT.AsString;
              Fecha  := FormatDateTime('dd/mm/yyyy',CDSPercepcionesFECHAFISCAL.AsDateTime);
              Importe:= '';
              if (CDSPercepcionesTIPOCPBTE.Value='FC') or (CDSPercepcionesTIPOCPBTE.Value='FO') or (CDSPercepcionesTIPOCPBTE.Value='GX')
               or (CDSPercepcionesTIPOCPBTE.Value='LQ') Then
                TipoCpbte:='F'
              else
                if CDSPercepcionesTIPOCPBTE.Value='NC' Then
                  TipoCpbte:='C'
                else
                  if CDSPercepcionesTIPOCPBTE.Value='ND' Then
                    TipoCpbte:='D';
              Importe   := FormatFloat('00000000.00',CDSPercepcionesIMPORTE.AsFloat);
              ImporteInt:= Trunc(CDSPercepcionesIMPORTE.AsFloat*100);

              if TipoCpbte='C' then
                begin
                  delete(importe,1,1);
                  Importe:='-'+Importe;
                end;
              Letra:=Copy(CDSPercepcionesNROCPBTE.AsString,1,1);
              if (Not(Letra[1] in ['A','B','C','D'])) Then Letra:='A';
              if ImporteInt>0 then
              WriteLn(ArchiTxt,Cuit,                                     //Cuit
                               Fecha,                                    //Fecha dd/mm/aaaa
                               TipoCpbte,                                //Tipo Cpbte
                               Letra, //Letra Comprobante
                               Copy(CDSPercepcionesNROCPBTE.AsString,2,4),
                               Copy(CDSPercepcionesNROCPBTE.AsString,6,8),
                               Importe); //Importe con 2 digitos
            end;
          CDSPercepciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSPercepciones.First;
end;

procedure TFormListaPercepciones.ExportarPercepcionesIVAExecute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  Cuit,Fecha,TipoCpbte,Importe: String;
  ImporteInt:Integer;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='Percepciones IVA'+FormatDateTime('YYYYMMDD',Date);
  SaveDialog1.DefaultExt:='txt';

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  CDSPercepciones.First;
  if SaveDialog1.Execute Then
  if SaveDialog1.FileName<>'' then
    begin
      if Not(AnsiEndsText('txt',SaveDialog1.FileName)) then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSPercepciones.Eof)  do
        begin
          if (CDSPercepcionesTIPOPERCEPCION.Value='IVA') and (CDSPercepcionesTIPOCPBTE.Value<>'NC') Then
            begin
              Cuit:=CDSPercepcionesCUIT.AsString;
              //Delete(Cuit,3,1);
              //Delete(Cuit,11,1);
              Fecha     := FormatDateTime('dd/mm/yyyy',CDSPercepcionesFECHAFISCAL.AsDateTime);
              Importe   := '';
              Importe   := FormatFloat('0000000000000.00',CDSPercepcionesIMPORTE.AsFloat);
              ImporteInt:= Trunc(CDSPercepcionesIMPORTE.AsFloat*100);
              if ImporteInt>0 then
              WriteLn(ArchiTxt,'493',
                               Cuit,                                     //Cuit
                               Fecha,                                    //Fecha dd/mm/aaaa
                               '0000'+Copy(CDSPercepcionesNROCPBTE.AsString,2,4),
                               Copy(CDSPercepcionesNROCPBTE.AsString,6,8),
                               Importe); //Importe con 2 digitos
            end;
          CDSPercepciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSPercepciones.First;

end;

procedure TFormListaPercepciones.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSPercepciones.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Percepciones';
      SaveDialog1.DefaultExt:='XLS';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' then
          begin
            if Not(AnsiEndsText('xls',SaveDialog1.FileName)) then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListaPercepciones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListaPercepciones:=Nil;
end;

procedure TFormListaPercepciones.FormResize(Sender: TObject);
begin
  inherited;
  if FormListaPercepciones<>nil then
    if FormListaPercepciones.Width<>1045 then
      FormListaPercepciones.Width:=1045;

end;

procedure TFormListaPercepciones.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if CDSPercepcionesTIPOCPBTE.Value='LQ' then
    begin
      if Not(Assigned(FormLiquidacionTC)) then
        FormLiquidacionTC:=TFormLiquidacionTC.Create(self);
      FormLiquidacionTC.DatoNew:=CDSPercepcionesID_CPBTE.AsString;
      FormLiquidacionTC.TipoCpbte:='LQ';
      FormLiquidacionTC.Recuperar.Execute;
      FormLiquidacionTC.Show;
    end
  else
    if CDSPercepcionesTIPOCPBTE.Value='FC' then
      begin
        if Not(Assigned(FormCompra_2)) then
          FormCompra_2:=TFormCompra_2.Create(self);
        FormCompra_2.DatoNew:=CDSPercepcionesID_CPBTE.AsString;
        FormCompra_2.TipoCpbte:='FC';
        FormCompra_2.Recuperar.Execute;

        FormCompra_2.Show;
      end
    else
      if CDSPercepcionesTIPOCPBTE.Value='FO' then
        begin
          if Not(Assigned(FormCompraCtdo_2)) then
            FormCompraCtdo_2:=TFormCompraCtdo_2.Create(self);
          FormCompraCtdo_2.DatoNew:=CDSPercepcionesID_CPBTE.AsString;
          FormCompraCtdo_2.TipoCpbte:='FO';
          FormCompraCtdo_2.Recuperar.Execute;
          FormCompraCtdo_2.Show;
        end


end;

procedure TFormListaPercepciones.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
    if (gdFocused in State) then
      begin
        DBGDetalle.canvas.Font.color := clWhite;
      end
    else
      begin
        DBGDetalle.canvas.Font.color := clBlack;
     end;
  if (CDSPercepcionesTIPOCPBTE.Value='NC') then
    dbgDetalle.Canvas.Font.Color:=clBlue;

    //Esta línea es nueva

    dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormListaPercepciones.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormListaPercepciones.ExportaIBMultiTxtExecute(Sender: TObject);
var
  ArchiTxt: TextFile;
  Importe,Cuit,Fecha,Letra,TipoCpbte,Juridiccion,Suc,Num: String;
  ImporteInt:Integer;
begin
  SaveDialog1.FileName  :='Percepciones IIBB'+FormatDateTime('YYYYMM',Desde.Date);
  SaveDialog1.DefaultExt:='txt';

  CDSPercepciones.First;

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
  if SaveDialog1.FileName<>'' then
    begin
      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSPercepciones.Eof) do
        begin
          if CDSPercepcionesTIPOPERCEPCION.Value='IIBB' Then
            begin
              Juridiccion:= CDSPercepcionesJURIDICCION.AsString;
              Cuit       := CDSPercepcionesCUIT.AsString;
              Fecha      := FormatDateTime('dd/mm/yyyy',CDSPercepcionesFECHAFISCAL.AsDateTime);
              letra      := Copy(CDSPercepcionesNROCPBTE.AsString,1,1);
              Suc        := Copy(CDSPercepcionesNROCPBTE.AsString,2,4);
              num        := Copy(CDSPercepcionesNROCPBTE.AsString,6,8);       //Importe con 2 digitos
              Importe    := '';
              if Letra='0' Then Letra:='A';

              ImporteInt:=Trunc(CDSPercepcionesIMPORTE.AsFloat*100);

              if (CDSPercepcionesTIPOCPBTE.Value='FC') or (CDSPercepcionesTIPOCPBTE.Value='FO') or (CDSPercepcionesTIPOCPBTE.Value='GX')
                or (CDSPercepcionesTIPOCPBTE.Value='LQ') Then
                begin TipoCpbte:='F';Importe:=FormatFloat('00000000.00',CDSPercepcionesIMPORTE.AsFloat); end
              else
                if CDSPercepcionesTIPOCPBTE.Value='NC' Then
                  begin TipoCpbte:='C';Importe:='-'+FormatFloat('0000000.00',CDSPercepcionesIMPORTE.AsFloat);end
                else
                  if CDSPercepcionesTIPOCPBTE.Value='ND' Then
                    begin TipoCpbte:='D';Importe:=FormatFloat('00000000.00',CDSPercepcionesIMPORTE.AsFloat);end;

              if ImporteInt>0 then
              WriteLn(ArchiTxt,juridiccion,
                               Cuit,                                        //Cuit
                               Fecha,                                       //Fecha dd/mm/aaaa
                               Suc,
                               num,
                               TipoCpbte,
                               Letra,                                   //Tipo Cpbte
                               Importe);
            end;
          CDSPercepciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSPercepciones.First;
end;



end.