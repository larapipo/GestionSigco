unit UListadoDebitosBco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Librerias,
  JvToolEdit, JvExMask, FMTBcd, frxExportText, frxExportRTF,
  frxExportXLS, frxExportHTML, frxExportPDF, frxClass, frxExportCSV, DataExport,
  DataToXLS, DBClient, Provider, frxDBSet, ExtCtrls, JvExDBGrids, JvDBGrid,
  Grids, DBGrids, JvLabel, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  System.Actions, JvAppStorage, JvAppIniStorage,VirtualUI_SDK, Data.DB,
  Vcl.ComCtrls, Vcl.Mask, Vcl.StdCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, frCoreClasses,
  System.ImageList;

type
  TFormListadoDebitosBco = class(TFormABMBase)
    UpDown1: TUpDown;
    edNombreCta: TEdit;
    edNroCta: TEdit;
    edBanco: TEdit;
    BuscarCuenta: TAction;
    DSDebitosBco: TDataSource;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frDSDebitos: TfrxDBDataset;
    frResumen: TfrxReport;
    DSPEmpresa: TDataSetProvider;
    frDBEmpresa: TfrxDBDataset;
    CDSEmpresa: TClientDataSet;
    chTodas: TCheckBox;
    ToolButton1: TToolButton;
    ExportarXLS: TAction;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    DSRetenciones: TDataSource;
    DSMovIva: TDataSource;
    DSMovIIBB: TDataSource;
    DSMovPerIva: TDataSource;
    dbgIva: TDBGrid;
    dbgPercepcionIB: TDBGrid;
    dbgPercepcionIVA: TDBGrid;
    DBGrid2: TDBGrid;
    frDBRetenciones: TfrxDBDataset;
    frDBIva: TfrxDBDataset;
    frDBIIBB: TfrxDBDataset;
    frDBPerIva: TfrxDBDataset;
    CDSDebitosBco: TClientDataSet;
    DSPDebitosBco: TDataSetProvider;
    CDSDebitosBcoCODIGO_CONCEPTO: TStringField;
    CDSDebitosBcoDETALLE: TStringField;
    CDSDebitosBcoID_CTA_CAJA_BCO: TIntegerField;
    CDSDebitosBcoNRO_CPBTE: TStringField;
    CDSDebitosBcoDETALLECONCEPTO: TStringField;
    CDSDebitosBcoID: TIntegerField;
    dbgDebitos: TJvDBGrid;
    rgModo: TRadioGroup;
    ceCtaBco: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSDebitosBcoFECHA_INGRESO: TSQLTimeStampField;
    CDSDebitosBcoFECHAFISCAL: TSQLTimeStampField;
    DSPBuscadorCta: TDataSetProvider;
    CDSBuscadorCta: TClientDataSet;
    CDSBuscadorCtaID_CUENTA: TIntegerField;
    CDSBuscadorCtaID_TIPO_CTA: TIntegerField;
    CDSBuscadorCtaNOMBRE: TStringField;
    CDSBuscadorCtaNRO_CUENTA: TStringField;
    CDSBuscadorCtaID_BANCO: TIntegerField;
    CDSBuscadorCtaCUIT: TStringField;
    CDSBuscadorCtaRAZONSOCIAL: TStringField;
    CDSTotalIva: TClientDataSet;
    DSPTotalIva: TDataSetProvider;
    CDSTotalIvaID: TIntegerField;
    CDSTotalIvaFECHAFISCAL: TSQLTimeStampField;
    CDSTotalIvaFECHA: TSQLTimeStampField;
    CDSTotalIvaNROCPBTE: TStringField;
    CDSTotalIvaCODIGO_GRAVAMEN: TIntegerField;
    CDSTotalIvaDETALLE: TStringField;
    CDSTotalIIBB: TClientDataSet;
    DSPTotalIIBB: TDataSetProvider;
    CDSTotalIIBBID: TIntegerField;
    CDSTotalIIBBFECHAFISCAL: TSQLTimeStampField;
    CDSTotalIIBBFECHA: TSQLTimeStampField;
    CDSTotalIIBBNROCPBTE: TStringField;
    CDSTotalIIBBCODIGO_PERCEPCION: TIntegerField;
    CDSTotalIIBBDETALLE: TStringField;
    CDSTotalPercIva: TClientDataSet;
    DSPTotalPercIva: TDataSetProvider;
    CDSRetenciones: TClientDataSet;
    DSPRetenciones: TDataSetProvider;
    CDSRetencionesID: TIntegerField;
    CDSRetencionesFECHAFISCAL: TSQLTimeStampField;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSTotalPercIvaID: TIntegerField;
    CDSTotalPercIvaFECHAFISCAL: TSQLTimeStampField;
    CDSTotalPercIvaFECHA: TSQLTimeStampField;
    CDSTotalPercIvaNROCPBTE: TStringField;
    CDSTotalPercIvaCODIGO_PERCEPCION: TIntegerField;
    CDSTotalPercIvaDETALLE: TStringField;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    ComBuscadorCta: TComBuscador;
    QRetenciones: TFDQuery;
    CDSRetencionesIMPORTE: TFloatField;
    QTotalIva: TFDQuery;
    CDSTotalIvaTASA: TFloatField;
    CDSTotalIvaIMPORTE: TFloatField;
    CDSTotalIvaNETO: TFloatField;
    QTotalIIBB: TFDQuery;
    CDSTotalIIBBTASA: TFloatField;
    CDSTotalIIBBIMPORTE: TFloatField;
    QTotalPercIva: TFDQuery;
    CDSTotalPercIvaTASA: TFloatField;
    CDSTotalPercIvaIMPORTE: TFloatField;
    QDebitosBco: TFDQuery;
    CDSDebitosBcoDEBE: TFloatField;
    CDSDebitosBcoHABER: TFloatField;
    QBuscCta: TFDQuery;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarCuentaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure ceCtaBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCtaBcoKeyPress(Sender: TObject; var Key: Char);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure chTodasClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
//    procedure DBGrid1TitleClick(Column: TColumn);
    procedure dbgDebitosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure rgModoClick(Sender: TObject);
    procedure dbgDebitosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarCtaBco(dato:Integer):Boolean;
  end;

var
  FormListadoDebitosBco: TFormListadoDebitosBco;

implementation

{$R *.DFM}

uses  UDMain_FD, UGastosBancarios;

function TFormListadoDebitosBco.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').Value:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      ceCtaBco.Text      := inttostr(Dato);
      edNombreCta.Text   := QCtaBcoNOMBRE.Value;
      edBanco.Text       := QCtaBcoMUESTRABANCO.Value;
      edNroCta.Text      := QCtaBcoNRO_CUENTA.Value;
    end
  else
    begin
      Result:=False;
      ceCtaBco.Text      :='';
      edNombreCta.Text   := '';
      edBanco.Text       := '';
      edNroCta.Text      := '';
    end
end;


procedure TFormListadoDebitosBco.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
 // if ceCtaBco.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormListadoDebitosBco.BuscarCuentaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCta.Close;
  CDSBuscadorCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk Then
    AsignarCtaBco(comBuscadorCta.Id);
  CDSBuscadorCta.Close;
  Buscar.Execute;

end;

procedure TFormListadoDebitosBco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSEmpresa.Close;
  Action:=caFree;
end;

procedure TFormListadoDebitosBco.FormCreate(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;
  CDSDebitosBco.IndexDefs.Clear;
  chTodas.Checked:=True;
  ceCtaBco.Clear;
  edNombreCta.Clear;
  edNroCta.Clear;
  edBanco.Clear;
  ceCtaBco.Enabled:=False;
  ceCtaBco.Color:=clBtnFace;
  AutoSize:=True;
end;

procedure TFormListadoDebitosBco.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoDebitosBco:=nil;
end;

procedure TFormListadoDebitosBco.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormListadoDebitosBco.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSDebitosBco.IndexDefs.Clear;
  CDSDebitosBco.Close;
  CDSDebitosBco.CommandText:='';
  if rgModo.ItemIndex=0 then
    begin
      CDSDebitosBco.CommandText:='select gc.id,gd.fecha_ingreso,gd.codigo_concepto,cb.detalle as DetalleConcepto,'+
                                 'gd.detalle,gd.debe,gd.haber,gd.id_cta_caja_bco,gd.nro_cpbte,gc.fechafiscal from gastos_bco_det gd '+
                                 'left join gastos_bco_cab gc on gc.id=gd.id_gasto_cab '+
                                 'left join conceptos_bancarios cb on cb.codigo=gd.codigo_concepto '+
                                 'where ( gc.fecha between :desde and :hasta ) '+
                                 'and ( gc.id_cta_caja=:id or :id = -1 ) '+
                                 'order by gd.codigo_concepto';
      CDSTotalIva.Close;
      CDSTotalIva.CommandText:='';
      CDSTotalIva.CommandText:= 'select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte, iva.codigo_gravamen,iva.detalle,iva.tasa, sum(iva.importe) as importe,sum(iva.neto) as Neto  from GASTOS_BCO_IVA iva '+
                                'left join gastos_bco_cab cab on cab.id=iva.id_gasto_cab '+
                                'where cab.fecha between :desde and :hasta '+
                                'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,iva.codigo_gravamen,iva.detalle,iva.tasa order by cab.fecha';
      CDSTotalIva.Params.ParamByName('Desde').AsDate := Desde.Date;
      CDSTotalIva.Params.ParamByName('Hasta').AsDate := Hasta.Date;
      CDSTotalIva.Open;

      CDSTotalIIBB.Close;
      CDSTotalIIBB.CommandText:='select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte, iibb.codigo_percepcion,iibb.detalle,iibb.tasa, sum(iibb.importe) as Importe  from gastos_bco_percepcionib iibb '+
                                'left join gastos_bco_cab cab on cab.id=iibb.id_gasto_cab '+
                                'where cab.fecha between :desde and :hasta '+
                                'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,iibb.codigo_percepcion,iibb.detalle,iibb.tasa order by cab.fecha';
      CDSTotalIIBB.Params.ParamByName('Desde').AsDate := Desde.Date;
      CDSTotalIIBB.Params.ParamByName('Hasta').AsDate := Hasta.Date;
      CDSTotalIIBB.Open;

      CDSTotalPercIva.Close;
      CDSTotalPercIva.CommandText:='select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,per.codigo_percepcion,per.detalle,per.tasa, sum(per.importe) as importe  from gastos_bco_percepcioniva per '+
                                   'left join gastos_bco_cab cab on cab.id=per.id_gastos_cab '+
                                   'where cab.fecha between :desde and :hasta '+
                                   'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,per.codigo_percepcion,per.detalle,per.tasa order by cab.fecha';
      CDSTotalPercIva.Params.ParamByName('Desde').AsDate := Desde.Date;
      CDSTotalPercIva.Params.ParamByName('Hasta').AsDate := Hasta.Date;
      CDSTotalPercIva.Open;

      CDSRetenciones.Close;
      CDSRetenciones.CommandText:='select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,m.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle,sum(m.importe) as Importe from mov_retenciones m '+
                                  'left join gastos_bco_cab cab on cab.id=m.id_cpbte and m.tipocpbte= ''GX'' '+
                                  'where cab.fecha between :desde and :hasta '+
                                  'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,m.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle order by cab.fecha';
      CDSRetenciones.Params.ParamByName('Desde').AsDate := Desde.Date;
      CDSRetenciones.Params.ParamByName('Hasta').AsDate := Hasta.Date;
      CDSRetenciones.Open;

    end
  else
    if rgModo.ItemIndex=1 then
      begin
        CDSDebitosBco.CommandText:='select gc.id,gd.fecha_ingreso,gd.codigo_concepto,cb.detalle as DetalleConcepto,'+
                                   'gd.detalle,gd.debe,gd.haber,gd.id_cta_caja_bco,gd.nro_cpbte,gc.fechafiscal from gastos_bco_det gd '+
                                   'left join gastos_bco_cab gc on gc.id=gd.id_gasto_cab '+
                                   'left join conceptos_bancarios cb on cb.codigo=gd.codigo_concepto '+
                                   'where ( gc.fechafiscal between :desde and :hasta ) '+
                                   'and ( gc.id_cta_caja=:id or :id = -1 ) '+
                                   'order by gd.codigo_concepto';

        CDSTotalIva.Close;
        CDSTotalIva.CommandText:='select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,iva.codigo_gravamen,iva.detalle,iva.tasa, sum(iva.importe) as importe, sum(iva.neto) as neto  from GASTOS_BCO_IVA iva '+
                                 'left join gastos_bco_cab cab on cab.id=iva.id_gasto_cab '+
                                 'where cab.fechafiscal between :desde and :hasta '+
                                 'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,iva.codigo_gravamen,iva.detalle,iva.tasa order by cab.fechafiscal ';
        CDSTotalIva.Params.ParamByName('Desde').AsDate := Desde.Date;
        CDSTotalIva.Params.ParamByName('Hasta').AsDate := Hasta.Date;
        CDSTotalIva.Open;

        CDSTotalIIBB.Close;
        CDSTotalIIBB.CommandText:='select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,iibb.codigo_percepcion,iibb.detalle,iibb.tasa, sum(iibb.importe) as Importe  from gastos_bco_percepcionib iibb '+
                                  'left join gastos_bco_cab cab on cab.id=iibb.id_gasto_cab '+
                                  'where cab.fechafiscal between :desde and :hasta '+
                                  'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,iibb.codigo_percepcion,iibb.detalle,iibb.tasa order by cab.fechafiscal';
        CDSTotalIIBB.Params.ParamByName('Desde').AsDate := Desde.Date;
        CDSTotalIIBB.Params.ParamByName('Hasta').AsDate := Hasta.Date;
        CDSTotalIIBB.Open;

        CDSTotalPercIva.Close;
        CDSTotalPercIva.CommandText:='select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,per.codigo_percepcion,per.detalle,per.tasa, sum(per.importe) as importe  from gastos_bco_percepcioniva per '+
                                     'left join gastos_bco_cab cab on cab.id=per.id_gastos_cab '+
                                     'where cab.fechafiscal between :desde and :hasta '+
                                     'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,per.codigo_percepcion,per.detalle,per.tasa order by cab.fechafiscal';
        CDSTotalPercIva.Params.ParamByName('Desde').AsDate := Desde.Date;
        CDSTotalPercIva.Params.ParamByName('Hasta').AsDate := Hasta.Date;
        CDSTotalPercIva.Open;

        CDSRetenciones.Close;
        CDSRetenciones.CommandText:='select cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,m.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle,sum(m.importe) as Importe from mov_retenciones m '+
                                    'left join gastos_bco_cab cab on cab.id=m.id_cpbte and m.tipocpbte= ''GX'' '+
                                    'where cab.fechafiscal between :desde and :hasta '+
                                    'group by cab.id,cab.fechafiscal,cab.fecha,cab.nrocpbte,m.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle order by cab.fecha';
        CDSRetenciones.Params.ParamByName('Desde').AsDate := Desde.Date;
        CDSRetenciones.Params.ParamByName('Hasta').AsDate := Hasta.Date;
        CDSRetenciones.Open;

      end;


  CDSDebitosBco.Params.ParamByName('desde').AsDate :=Desde.Date;
  CDSDebitosBco.Params.ParamByName('hasta').AsDate :=hasta.Date;
  if chTodas.Checked=False then
    CDSDebitosBco.Params.ParamByName('id').AsInteger   :=StrToInt(ceCtaBco.Text)
  else
    CDSDebitosBco.Params.ParamByName('id').AsInteger   :=-1;

  CDSDebitosBco.Open;

  //QMov_Iva.Close;
  //QMov_Iva.ParamByName('id').Value :=CDSDebitosBcoID.Value;
  //QMov_Iva.Open;

  //QMov_IIBB.Close;
 // QMov_IIBB.ParamByName('id').Value:=CDSDebitosBcoID.Value;
  //QMov_IIBB.Open;

  //QMov_PerIVA.Close;
  //QMov_PerIVA.ParamByName('id').Value:=CDSDebitosBcoID.Value;
  //QMov_PerIVA.Open;

  //QRetenciones.Close;
  //Retenciones.ParamByName('id').Value:=CDSDebitosBcoID.Value;
  //QRetenciones.Open;


end;

procedure TFormListadoDebitosBco.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frResumen.PrintOptions.Printer:=PrNomListados;
  frResumen.SelectPrinter;
  frResumen.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoDebitosBco.fr3');
  if chTodas.Checked then
    frResumen.Variables['Banco']:= '''Todas las Cuentas'''
  else
    frResumen.Variables['Banco']:= ''''+edNombreCta.Text+'''';
  frResumen.Variables['NroCta']:= ''''+edNroCta.Text+'''';
  frResumen.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frResumen.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';
  frResumen.PrintOptions.Copies := 1;
  frResumen.ShowReport;

end;

procedure TFormListadoDebitosBco.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frResumen.DesignReport;
end;

procedure TFormListadoDebitosBco.rgModoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoDebitosBco.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frResumen.DesignReport;
end;

procedure TFormListadoDebitosBco.ceCtaBcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 inherited;
    if (key=vk_delete) or (Key=VK_back) Then
    begin
      ceCtaBco.Text:='';
      edNombreCta.Text:='';
    end;
end;

procedure TFormListadoDebitosBco.ceCtaBcoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    begin
     key:=#0;
      if Not(AsignarCtaBco(StrToInt(ceCtaBco.Text))) Then
        begin
          QDebitosBco.Close;
          ceCtaBco.Text:='';
          ceCtaBco.SetFocus;
        end
      else
          Buscar.Execute;
     end;

end;

procedure TFormListadoDebitosBco.chTodasClick(Sender: TObject);
begin
  inherited;
  if chTodas.Checked then
    begin
      ceCtaBco.Clear;
      edNombreCta.Clear;
      edNroCta.Clear;
      edBanco.Clear;
      ceCtaBco.Enabled:=False;
      ceCtaBco.Color:=clBtnFace;
    end;
  if Not(chTodas.Checked) then
    begin
      ceCtaBco.Clear;
      edNombreCta.Clear;
      edNroCta.Clear;
      edBanco.Clear;
      ceCtaBco.Enabled:=True;
      ceCtaBco.Color:=clWhite;
    end;

end;

procedure TFormListadoDebitosBco.dbgDebitosDblClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormMovEgr_IngBancos)) then
     FormMovEgr_IngBancos:=TFormMovEgr_IngBancos.Create(Self);
   FormMovEgr_IngBancos.DatoNew:=CDSDebitosBcoID.AsString;
   FormMovEgr_IngBancos.Recuperar.Execute;
   FormMovEgr_IngBancos.Show;


   
end;

procedure TFormListadoDebitosBco.dbgDebitosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgDebitos.DataSource.DataSet as TClientDataSet do
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


procedure TFormListadoDebitosBco.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSDebitosBco.IsEmpty) then
    begin
      SaveDialog1.FileName  :='Debitos';
      SaveDialog1.DefaultExt:='xls';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            DataToXLS.SaveToFile(SaveDialog1.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

    end;
end;

end.