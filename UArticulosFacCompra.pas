unit UArticulosFacCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, Mask, JvExMask, JvToolEdit, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, Provider, DBClient,DateUtils, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBLookup, DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox, Vcl.Samples.Spin, JvMemoryDataset, cxButtonEdit, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxPScxExtComCtrlsLnk, CompBuscador, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormReempArticuloFcCompra = class(TFormABMBase)
    Label6: TLabel;
    DSPFcDet: TDataSetProvider;
    DSFcDte: TDataSource;
    chbporDia: TCheckBox;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel2: TJvLabel;
    Hasta: TJvDateEdit;
    chbIgnorarFechas: TCheckBox;
    DSSubRubro: TDataSource;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    DSPRubro: TDataSetProvider;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSRubro: TDataSource;
    BuscarDetalle: TAction;
    Panel2: TPanel;
    JvGradient1: TJvGradient;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    SpinButton1: TSpinButton;
    DSMArticulos: TDataSource;
    dbcArticulos: TJvDBLookupCombo;
    Panel3: TPanel;
    JvGradient3: TJvGradient;
    CDSFcDet: TClientDataSet;
    Label2: TLabel;
    lbModo: TLabel;
    lbTasaIva: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    MCDSArticulos: TClientDataSet;
    MCDSArticulosCODIGO: TStringField;
    MCDSArticulosNOMBRE: TStringField;
    BuscarArticulos: TAction;
    CDSFcDetID: TIntegerField;
    CDSFcDetID_CABFAC: TIntegerField;
    CDSFcDetTIPOCPBTE: TStringField;
    CDSFcDetCLASECPBTE: TStringField;
    CDSFcDetNROCPBTE: TStringField;
    CDSFcDetCODIGOPROVEEDOR: TStringField;
    CDSFcDetMUESTRANOMBREPROVEEDOR: TStringField;
    CDSFcDetFECHACOMPRA: TSQLTimeStampField;
    CDSFcDetCODIGOARTICULO: TStringField;
    CDSFcDetDETALLE: TStringField;
    CDSFcDetCON_NRO_SERIE: TStringField;
    CDSFcDetGRAVADO_IB: TStringField;
    CDSFcDetTIPOIVA_TASA: TIntegerField;
    CDSFcDetCONTROL_TRAZABILIDAD: TStringField;
    CDSFcDetMODO_GRAVAMEN: TStringField;
    CDSFcDetCODIGONUEVO: TStringField;
    CDSFcDetDETALLENUEVO: TStringField;
    cxGrid1DBTableView1CODIGONUEVO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLENUEVO: TcxGridDBColumn;
    QUpDateFCOLD: TSQLQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    AplicarCodigos: TBitBtn;
    dbcGrupo: TJvDBLookupCombo;
    DSPFiltroDet: TDataSetProvider;
    DSPFiltroCab: TDataSetProvider;
    CDSFiltroCab: TClientDataSet;
    CDSFiltroCabID: TIntegerField;
    CDSFiltroCabDETALLE: TStringField;
    CDSFiltroDet: TClientDataSet;
    CDSFiltroDetID: TIntegerField;
    CDSFiltroDetID_CAB: TIntegerField;
    CDSFiltroDetID_CPBTE: TIntegerField;
    CDSFiltroDetMUESTRACOMPROBANTE: TStringField;
    CDSFiltroDetMUESTRATIPO: TStringField;
    CDSFiltroDetMUESTRACLASE: TStringField;
    CDSFiltroDetMUESTRASUC: TStringField;
    DSFiltroDet: TDataSource;
    DSFiltroCab: TDataSource;
    CDSFcDetID_COMPROBANTE: TIntegerField;
    btDatosCruzados: TBitBtn;
    ToolButton1: TToolButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    QFiltroC: TFDQuery;
    QFiltroD: TFDQuery;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockTASA_IVA: TIntegerField;
    QStockSOBRETASA_IVA: TIntegerField;
    QStockCLASE_ARTICULO: TIntegerField;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    QUpDateFC_FD: TFDQuery;
    QFcDet: TFDQuery;
    QFcDetID: TIntegerField;
    QFcDetID_CABFAC: TIntegerField;
    QFcDetTIPOCPBTE: TStringField;
    QFcDetCLASECPBTE: TStringField;
    QFcDetNROCPBTE: TStringField;
    QFcDetCODIGOPROVEEDOR: TStringField;
    QFcDetFECHACOMPRA: TSQLTimeStampField;
    QFcDetCODIGOARTICULO: TStringField;
    QFcDetDETALLE: TStringField;
    QFcDetCON_NRO_SERIE: TStringField;
    QFcDetGRAVADO_IB: TStringField;
    QFcDetTIPOIVA_TASA: TIntegerField;
    QFcDetCONTROL_TRAZABILIDAD: TStringField;
    QFcDetMODO_GRAVAMEN: TStringField;
    QFcDetID_COMPROBANTE: TIntegerField;
    QFcDetMUESTRANOMBREPROVEEDOR: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ceReemplazoButtonClick(Sender: TObject);
    procedure spActualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chbIgnorarFechasClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure dbcArticulosChange(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure CDSFcDetCODIGONUEVOSetText(Sender: TField; const Text: string);
    procedure AplicarCodigosClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure CDSFcDetAfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CODIGONUEVOPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbcGrupoChange(Sender: TObject);
    procedure btDatosCruzadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     Condiciones:String;
     procedure ArmarCondiciones;

  end;

var
  FormReempArticuloFcCompra: TFormReempArticuloFcCompra;

implementation

uses UDMain_FD, UBuscadorArticulos,UCompra_2,UCompraCtdo_2,
  DMStoreProcedureForm;
{$R *.dfm}


procedure TFormReempArticuloFcCompra.ArmarCondiciones;
VAR I:Integer;
Dato:String;
begin
  Condiciones:='';
  CDSFiltroDet.First;
  while Not(CDSFiltroDet.Eof) do
    begin
      if Condiciones='' Then
        condiciones:=' (id_comprobante='+''+CDSFiltroDetID_CPBTE.AsString+''+') '
      else
        condiciones:=Condiciones+' or (id_comprobante='+''+CDSFiltroDetID_CPBTE.AsString+''+') ';
      CDSFiltroDet.Next;
     end;
   if Condiciones<>'' Then
     Condiciones:=' and ('+condiciones+')';

end;

procedure TFormReempArticuloFcCompra.btDatosCruzadosClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormReempArticuloFcCompra.AplicarCodigosClick(Sender: TObject);
var CDSClone:TClientDataSet;
Codigo:String;
begin
  inherited;
  CDSFcDet.First;
  CDSFcDet.DisableControls;
  while Not(CDSFcDet.Eof) do
    begin
      if (Trim(CDSFcDetCODIGONUEVO.AsString)<>'') and (Trim(CDSFcDetDETALLENUEVO.AsString)<>'') then
        begin
          CDSFcDet.Edit;
          CDSFcDetCODIGOARTICULO.Value  := CDSFcDetCODIGONUEVO.AsString;
          CDSFcDetDETALLE.Value         := CDSFcDetDETALLENUEVO.AsString;
          CDSFcDetCODIGONUEVO.AsString  := '';
          CDSFcDetDETALLENUEVO.AsString := '';
          CDSFcDet.Post;
        end
      else
        CDSFcDet.Next;
    end;
  CDSFcDet.First;
  CDSFcDet.EnableControls;

  CDSClone:=TClientDataSet.Create(Self);
  MCDSArticulos.Close;
  MCDSArticulos.CreateDataSet;
  MCDSArticulos.Open;
  CDSClone.CloneCursor(CDSFcDet,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      Codigo:=CDSClone.FieldByName('CodigoArticulo').AsString;
      if Not(MCDSArticulos.Locate('Codigo',Codigo,[])) Then
        begin
          MCDSArticulos.Append;
          MCDSArticulosCodigo.Value := CDSClone.FieldByName('CODIGOARTICULO').AsString;
          MCDSArticulosNombre.Value := CDSClone.FieldByName('DETALLE').AsString;
          MCDSArticulos.Post;
        end;
      CDSClone.Next;
    end;
  MCDSArticulos.IndexFieldNames:='CODIGO';
  FreeAndNil(CDSCLone);


end;

procedure TFormReempArticuloFcCompra.BuscarArticulosExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       QStock.Close;
       QStock.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       QStock.Open;
       if not(QStock.IsEmpty) and (QStockCLASE_ARTICULO.Value>0) then
         begin
           CDSFcDetCODIGONUEVOSetText(CDSFcDetCODIGONUEVO,QStockCODIGO_STK.AsString);
           //CDSFcDetNU .Text  := QStockDETALLE_STK.Value;
           //CDSFcDetMUESTRADETALLE.Text := QStockDETALLE_STK.Value;
           lbModo.Caption   := QStockMODO_GRAVAMEN.AsString;
           lbTasaIva.Caption:= QStockTASA_IVA.AsString;
         end
       else
         begin
           //CDSFcDetCODIGO.Text         := CDSFcDetCODIGOORIGINAL.Value;
           //CDSFcDetMUESTRADETALLE.Text := CDSFcDetDETALLE.Value;
           lbModo.Caption   := '';
           lbTasaIva.Caption:= '';

         end
    end;
end;

procedure TFormReempArticuloFcCompra.BuscarExecute(Sender: TObject);
var CDSClone:TClientDataSet;
codigo:String;
begin
 // inherited;
  ArmarCondiciones;
  CDSFcDet.Close;
  CDSFcDet.Close;
  CDSFcDet.CommandText:= 'select f.id,f.id_cabfac,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.codigoproveedor,'+
                         '  f.fechacompra,f.codigoarticulo,f.detalle,f.con_nro_serie,f.gravado_ib,f.tipoiva_tasa,f.control_trazabilidad,'+
                         '  f.modo_gravamen,cp.id_comprobante,c.nombre as MuestraNombreProveedor from fccompdet f '+
                         'left join fccompcab c on c.id_fc=f.id_cabfac '+
                         'left join comprobantes cp on cp.clase_comprob=c.clasecpbte and '+
                             'cp.letra=c.letrafac and '+
                             'cp.sucursal=c.sucursalcompra and '+
                             'cp.tipo_comprob=c.tipocpbte and '+
                             'cp.compra_venta=''C'' '+
                         'where ( f.fechacompra between :desde and :hasta ) '+Condiciones+
                         'order by c.nombre,f.nrocpbte ';

//  CDSFcDet.Params.ParamByName('Desde').Value := Desde.Date;
//  CDSFcDet.Params.ParamByName('Hasta').Value := Hasta.Date;
//  CDSMovCC.Open;


  if (chbIgnorarFechas.Checked=False) then
    begin
      CDSFcDet.Params.ParamByName('Desde').Value := Desde.Date;
      CDSFcDet.Params.ParamByName('Hasta').Value := Hasta.Date;
    end
  else
    begin
      CDSFcDet.Params.ParamByName('Desde').Value := StrToDate('01/01/1900');
      CDSFcDet.Params.ParamByName('Hasta').Value := StrToDate('01/01/9000');
    end;
  CDSFcDet.Open;


  CDSClone:=TClientDataSet.Create(Self);

 // MTArticulos.Close;
//  MTArticulos.Open;
//  MTArticulos.EmptyTable;
//  CDSClone.CloneCursor(CDSFcDet,True);
//  CDSClone.First;
//  while Not(CDSClone.Eof) do
//    begin
//      Codigo:=CDSClone.FieldByName('CodigoArticulo').AsString;
//      if Not(MTArticulos.Locate('Codigo',Codigo,[])) Then
//        begin
//          MTArticulos.Append;
//          MTArticulosCodigo.Value:=CDSClone.FieldByName('CODIGOARTICULO').AsString;
//          MTArticulosNombre.Value:=CDSClone.FieldByName('DETALLE').AsString;
//          MTArticulos.Post;
//        end;
//      CDSClone.Next;
//    end;

  MCDSArticulos.Close;
  MCDSArticulos.CreateDataSet;
  MCDSArticulos.Open;
  CDSClone.CloneCursor(CDSFcDet,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      Codigo:=CDSClone.FieldByName('CodigoArticulo').AsString;
      if Not(MCDSArticulos.Locate('Codigo',Codigo,[])) Then
        begin
          MCDSArticulos.Append;
          MCDSArticulosCodigo.Value:=CDSClone.FieldByName('CODIGOARTICULO').AsString;
          MCDSArticulosNombre.Value:=CDSClone.FieldByName('DETALLE').AsString;
          MCDSArticulos.Post;
        end;
      CDSClone.Next;
    end;
  MCDSArticulos.IndexFieldNames:='CODIGO';
  FreeAndNil(CDSCLone);

 end;

procedure TFormReempArticuloFcCompra.CDSFcDetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  lbModo.Caption              := CDSFcDetMODO_GRAVAMEN.AsString;
  lbTasaIva.Caption           := CDSFcDetTIPOIVA_TASA.AsString;

end;

procedure TFormReempArticuloFcCompra.CDSFcDetCODIGONUEVOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if CDSFcDet.State=dsBrowse then CDSFcDet.Edit;

  Sender.AsString:=copy('00000000',1,8-Length(Text))+Text;
   begin
     QStock.Close;
     QStock.ParamByName('codigo').Value:=Sender.AsString;
     QStock.Open;

     if not(QStock.IsEmpty) and (QStockCLASE_ARTICULO.Value>0) then
       begin
         if (QStockMODO_GRAVAMEN.Value=Trim(lbModo.Caption)) and (QStockTASA_IVA.Value = StrToInt(Trim(lbTasaIva.Caption))) then
           begin
             Sender.ASString             := QStockCODIGO_STK.Value;
             CDSFcDetDETALLENUEVO.Text   := QStockDETALLE_STK.Value;
             lbModo.Caption              := QStockMODO_GRAVAMEN.AsString;
             lbTasaIva.Caption           := QStockTASA_IVA.AsString;
           end
         else
           begin
             Sender.ASString             := '';//CDSFcDetCODIGOARTICULO.Value;
             CDSFcDetDETALLENUEVO.Text   := '';//CDSFcDetDETALLE.Value;
             lbModo.Caption              := '';
             lbTasaIva.Caption           := '';
           end;
       end
     else
       begin
         Sender.ASString             := '';//CDSFcDetCODIGOARTICULO.Value;
         CDSFcDetDETALLENUEVO.Text   := '';//CDSFcDetDETALLE.Value;
         lbModo.Caption              := '';
         lbTasaIva.Caption           := '';
       end
    end;
end;

procedure TFormReempArticuloFcCompra.ceReemplazoButtonClick(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       QStock.Close;
       QStock.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       QStock.Open;
       if not(QStock.IsEmpty) and (QStockCLASE_ARTICULO.Value>0) then
         begin
           lbModo.Caption   := QStockMODO_GRAVAMEN.AsString;
           lbTasaIva.Caption:= QStockTASA_IVA.AsString;
         end
       else
         begin
           lbModo.Caption   := '';
           lbTasaIva.Caption:= '';

         end
    end;
end;

procedure TFormReempArticuloFcCompra.chbIgnorarFechasClick(Sender: TObject);
begin
  inherited;
   Buscar.Execute;
end;

procedure TFormReempArticuloFcCompra.ConfirmaExecute(Sender: TObject);
var FueModificado:Boolean;
    Detalle      :String;
begin
//  inherited;

  FueModificado:=False;
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        CDSFcDet.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
        FueModificado:=True;
      except
        FueModificado:=False;
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;
  Screen.Cursor:=crDefault;

  if FueModificado Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        // **** Ingreso en el Log File  **************
        Detalle:= 'Modificación de Codigos de Art. en Fac.Compra x Lote : ' +
                  'Peridod del:'+Desde.Text+' al '+hasta.Text;
        DMMain_FD.LogFileFD(0,2,Detalle,'FACCOMP');
        // ******************************************
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('NO se ingreso registro en el LogFile....!');
      end;
    end;


  Buscar.Execute;
end;

procedure TFormReempArticuloFcCompra.cxGrid1DBTableView1CODIGONUEVOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  BuscarArticulos.Execute
end;

procedure TFormReempArticuloFcCompra.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(CDSFcDet.IsEmpty) and (CDSFcDetID_CABFAC.AsString<>'') then
    begin
      if CDSFcDetTIPOCPBTE.AsString<>'FO' then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Self);
          FormCompra_2.DatoNew  :=CDSFcDetID_CABFAC.AsString;
          FormCompra_2.TipoCpbte:=CDSFcDetTIPOCPBTE.AsString;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
      if CDSFcDetTIPOCPBTE.AsString='FO' then
        begin
          if Not(Assigned(FormCompraCtdo_2)) then
            FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
          FormCompraCtdo_2.DatoNew  :=CDSFcDetID_CABFAC.AsString;
          FormCompraCtdo_2.TipoCpbte:=CDSFcDetTIPOCPBTE.AsString;
          FormCompraCtdo_2.Recuperar.Execute;
          FormCompraCtdo_2.Show;
        end



    end;
end;

procedure TFormReempArticuloFcCompra.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  //if cxGrid1DBTableView1CODIGONUEVO.Columns.s CODIGONUEVO. then

  if Key=#10 then BuscarArticulos.Execute;

end;

procedure TFormReempArticuloFcCompra.dbcArticulosChange(Sender: TObject);
begin
  inherited;
  CDSFcDet.Filtered:=False;
  CDSFcDet.Filter:='CODIGOARTICULO='+dbcArticulos.KeyValue;
  CDSFcDet.Filtered:=dbcArticulos.KeyValue<>'********';
end;

procedure TFormReempArticuloFcCompra.dbcGrupoChange(Sender: TObject);
begin
  inherited;
  CDSFiltroDet.Close;

  if dbcGrupo.KeyValue<>-1 then
    CDSFiltroDet.Params.ParamByName('id').Value:=CDSFiltroCabID.Value
  else
    CDSFiltroDet.Params.ParamByName('id').Value:=-1;
  CDSFiltroDet.Open;
  Buscar.Execute;
end;

procedure TFormReempArticuloFcCompra.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormReempArticuloFcCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormReempArticuloFcCompra.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSFiltroCab.Open;
  CDSFiltroDet.Open;
end;

procedure TFormReempArticuloFcCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormReempArticuloFcCompra:=nil;
end;

procedure TFormReempArticuloFcCompra.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  Desde.SetFocus;
end;

procedure TFormReempArticuloFcCompra.spActualizarClick(Sender: TObject);
var CDSClone:TClientDataSet;
codigo:String;
begin
  inherited;

//  cxGrid1DBTableView1NOMBRE.Options.CellMerging  :=True;
//  cxGrid1DBTableView1NROCPBTE.Options.CellMerging:=True;



  CDSClone:=TClientDataSet.Create(Self);
  MCDSArticulos.Close;
  MCDSArticulos.CreateDataSet;
  MCDSArticulos.Open;
  CDSClone.CloneCursor(CDSFcDet,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      Codigo:=CDSClone.FieldByName('CodigoArticulo').AsString;
      if Not(MCDSArticulos.Locate('Codigo',Codigo,[])) Then
        begin
          MCDSArticulos.Append;
          MCDSArticulosCodigo.Value:=CDSClone.FieldByName('CODIGOARTICULO').AsString;
          MCDSArticulosNombre.Value:=CDSClone.FieldByName('DETALLE').AsString;
          MCDSArticulos.Post;
        end;
      CDSClone.Next;
    end;
  MCDSArticulos.IndexFieldNames:='CODIGO';
  FreeAndNil(CDSCLone);

end;

procedure TFormReempArticuloFcCompra.SpinButton1DownClick(Sender: TObject);
 var d,m,y:word;
begin
  if chbporDia.Checked=False then
   begin
     DecodeDate(Desde.Date,y,m,d);
          if m=1 Then
            begin
              m:=12;y:=y-1;
            end
          else
            m:=m-1;
       Desde.Date:=EncodeDate(y,m,1);
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
   end
 else
   if chbporDia.Checked=True then
     begin
       Desde.Date := IncDay(Desde.Date,(-1));
       Hasta.Date:=desde.Date;
       Buscar.Execute;
   end;
   Buscar.Execute;
end;

procedure TFormReempArticuloFcCompra.SpinButton1UpClick(Sender: TObject);
 var d,m,y:word;
begin
  if chbporDia.Checked=False then
   begin
     DecodeDate(Desde.Date,y,m,d);
        if m=12 Then
          begin
            m:=1;y:=y+1;
          end
        else
          m:=m+1;

      Desde.Date:=EncodeDate(y,m,1);
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
   end
 else
   if chbporDia.Checked=True then
     begin
       Desde.Date := IncDay(Desde.Date,(1));
       Hasta.Date:=desde.Date;
       Buscar.Execute;
   end;

  Buscar.Execute;
end;




end.
