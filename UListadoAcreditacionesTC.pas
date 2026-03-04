unit UListadoAcreditacionesTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, ExtCtrls,
  Mask, ComCtrls, ImgList, DB,   ActnList, JvExControls, JvGradient, Buttons, ToolWin,
  Provider, DBClient,Librerias, frxExportPDF, frxClass, frxExportRTF,
  frxExportText, frxExportCSV, frxExportHTML, frxDBSet, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr,
  System.Actions, JvAppStorage, JvAppIniStorage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, AdvGroupBox,
  AdvOfficeButtons, frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormListadoAcreditacionesTC = class(TFormABMBase)
    ud1: TUpDown;
    dbgDebitos: TJvDBGrid;
    dbgIva: TDBGrid;
    dbgPercepcionIB: TDBGrid;
    dbg1: TDBGrid;
    CDSLiquidaciones: TClientDataSet;
    DSLiquidaciones: TDataSource;
    DSPLiquidaciones: TDataSetProvider;
    DSMovIva: TDataSource;
    DSMovIIBB: TDataSource;
    DSRetenciones: TDataSource;
    frDBIva: TfrxDBDataset;
    frDBIIBB: TfrxDBDataset;
    frDBRetenciones: TfrxDBDataset;
    frResumen: TfrxReport;
    frDSLiquidaciones: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    btImprimir: TBitBtn;
    btn1: TToolButton;
    Imprimir: TAction;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel9: TJvLabel;
    CDSLiquidacionesFECHA: TSQLTimeStampField;
    CDSLiquidacionesFECHA_FISCAL: TSQLTimeStampField;
    CDSLiquidacionesPERIODO_LIQUIDADO: TStringField;
    CDSLiquidacionesNRO_LIQUIDACION: TStringField;
    CDSLiquidacionesNUMEROCPBTE: TStringField;
    CDSLiquidacionesNOMBRE_CTABCO: TStringField;
    QLiquidaciones: TFDQuery;
    CDSLiquidacionesARANCEL: TFloatField;
    CDSLiquidacionesCOSTO_FINANCIERO: TFloatField;
    CDSLiquidacionesGANANCIAS: TFloatField;
    CDSLiquidacionesIIBB: TFloatField;
    CDSLiquidacionesIVA: TFloatField;
    CDSLiquidacionesPRESENTACION_ADICIONAL: TFloatField;
    CDSLiquidacionesTOTAL_PRESENTACION: TFloatField;
    CDSLiquidacionesTOTAL_ACREDITADO: TFloatField;
    QTotalIva: TFDQuery;
    QRetenciones: TFDQuery;
    QTotalIIB: TFDQuery;
    CDSLiquidacionesID: TIntegerField;
    pnCabecera: TPanel;
    JvLabel1: TJvLabel;
    QTotalIvaFECHA: TSQLTimeStampField;
    QTotalIvaFECHA_FISCAL: TSQLTimeStampField;
    QTotalIvaPERIODO_LIQUIDADO: TStringField;
    QTotalIvaNUMEROCPBTE: TStringField;
    QTotalIvaNETO: TFloatField;
    QTotalIvaCODIGO_GRAVAMEN: TIntegerField;
    QTotalIvaDETALLE: TStringField;
    QTotalIvaTASA: TFloatField;
    QTotalIvaIMPORTE: TFloatField;
    QTotalIIBFECHA: TSQLTimeStampField;
    QTotalIIBFECHA_FISCAL: TSQLTimeStampField;
    QTotalIIBPERIODO_LIQUIDADO: TStringField;
    QTotalIIBNUMEROCPBTE: TStringField;
    QTotalIIBNETO: TFloatField;
    QTotalIIBCODIGO_PERCEPCION: TIntegerField;
    QTotalIIBDETALLE: TStringField;
    QTotalIIBTASA: TFloatField;
    QTotalIIBIMPORTE: TFloatField;
    QRetencionesFECHA: TSQLTimeStampField;
    QRetencionesFECHA_FISCAL: TSQLTimeStampField;
    QRetencionesPERIODO_LIQUIDADO: TStringField;
    QRetencionesNUMEROCPBTE: TStringField;
    QRetencionesFECHA_RETENCION: TSQLTimeStampField;
    QRetencionesNRO_RETENCION: TStringField;
    QRetencionesID_RETENCION: TIntegerField;
    QRetencionesDETALLE: TStringField;
    QRetencionesIMPORTE: TFloatField;
    rgModo: TAdvOfficeRadioGroup;
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure rgModoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgDebitosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgDebitosDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoAcreditacionesTC: TFormListadoAcreditacionesTC;

implementation

uses UDMain_FD, ULiquidacionTC;

{$R *.dfm}

procedure TFormListadoAcreditacionesTC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSLiquidaciones.IndexDefs.Clear;
  CDSLiquidaciones.Close;
  CDSLiquidaciones.CommandText:='';
  if rgModo.ItemIndex=0 then
    begin
      CDSLiquidaciones.CommandText:='select cab.id,cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.nro_liquidacion,cab.numerocpbte,cab.nombre_ctabco,'+
                                    'cab.arancel,cab.costo_financiero,cab.ganancias,cab.iibb,cab.iva,cab.presentacion_adicional,cab.total_presentacion,cab.total_acreditado from liquidacion_tc_cab cab '+
                                    'where cab.fecha between :desde and :hasta order by cab.nro_liquidacion';

      QTotalIva.Close;
      QTotalIva.SQL.Text:='';
      QTotalIva.SQL.Text:='select cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iva.neto,'+
                        'iva.codigo_gravamen,iva.detalle,iva.tasa, sum(iva.importe) as importe  from liquidacion_tc_iva iva '+
                        'left join liquidacion_tc_cab cab on cab.id=iva.id_liq '+
                        'where cab.fecha between :desde and :hasta '+
                        'group by cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iva.neto,'+
                        'iva.codigo_gravamen,iva.detalle,iva.tasa order by cab.fecha';
      QTotalIva.ParamByName('Desde').AsDate := Desde.Date;
      QTotalIva.ParamByName('Hasta').AsDate := Hasta.Date;
      QTotalIva.Open;

      QTotalIIB.Close;
      QTotalIIB.SQL.Text:='';
      QTotalIIB.SQL.Text:='select cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iibb.neto,'+
                         'iibb.codigo_percepcion,iibb.detalle,iibb.tasa, sum(iibb.importe) as importe  from liquidacion_tc_iibb iibb '+
                         'left join liquidacion_tc_cab cab on cab.id=iibb.id_liq '+
                         'where cab.fecha between :desde and :hasta '+
                         'group by cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iibb.neto,'+
                         'iibb.codigo_percepcion,iibb.detalle,iibb.tasa order by cab.fecha';
      QTotalIIB.ParamByName('Desde').AsDate := Desde.Date;
      QTotalIIB.ParamByName('Hasta').AsDate := Hasta.Date;
      QTotalIIB.Open;

      QRetenciones.Close;
      QRetenciones.SQL.Text:='';
      QRetenciones.SQL.Text:='select cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,'+
                           'm.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle,sum(m.importe) as Importe from mov_retenciones m '+
                           'left join liquidacion_tc_cab cab on cab.id=m.id_cpbte and m.tipocpbte=''LQ'' '+
                           'where cab.fecha between :desde and :hasta '+
                           'group by cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,m.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle '+
                           'order by cab.fecha';
      QRetenciones.ParamByName('Desde').AsDate := Desde.Date;
      QRetenciones.ParamByName('Hasta').AsDate := Hasta.Date;
      QRetenciones.Open;

    end
  else
    if rgModo.ItemIndex=1 then
      begin
        CDSLiquidaciones.CommandText:='select cab.id,cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.nro_liquidacion,cab.numerocpbte,cab.nombre_ctabco,'+
                                      'cab.arancel,cab.costo_financiero,cab.ganancias,cab.iibb,cab.iva,cab.presentacion_adicional,cab.total_presentacion,cab.total_acreditado from liquidacion_tc_cab cab '+
                                      'where cab.fecha_fiscal between :desde and :hasta order by cab.nro_liquidacion';

        QTotalIva.Close;
        QTotalIva.SQL.Text:='';
        QTotalIva.SQL.Text:='select cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iva.neto,'+
                          'iva.codigo_gravamen,iva.detalle,iva.tasa, sum(iva.importe) as importe  from liquidacion_tc_iva iva '+
                          'left join liquidacion_tc_cab cab on cab.id=iva.id_liq '+
                          'where cab.fecha_fiscal between :desde and :hasta '+
                          'group by cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iva.neto,'+
                          'iva.codigo_gravamen,iva.detalle,iva.tasa order by cab.fecha_fiscal';
        QTotalIva.ParamByName('Desde').AsDate := Desde.Date;
        QTotalIva.ParamByName('Hasta').AsDate := Hasta.Date;
        QTotalIva.Open;

        QTotalIIB.Close;
        QTotalIIB.SQL.Text:='';
        QTotalIIB.SQL.Text:='select cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iibb.neto,'+
                           'iibb.codigo_percepcion,iibb.detalle,iibb.tasa, sum(iibb.importe) as importe  from liquidacion_tc_iibb iibb '+
                           'left join liquidacion_tc_cab cab on cab.id=iibb.id_liq '+
                           'where cab.fecha_fiscal between :desde and :hasta '+
                           'group by cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,iibb.neto,'+
                           'iibb.codigo_percepcion,iibb.detalle,iibb.tasa order by cab.fecha_fiscal';
        QTotalIIB.ParamByName('Desde').AsDate := Desde.Date;
        QTotalIIB.ParamByName('Hasta').AsDate := Hasta.Date;
        QTotalIIB.Open;

        QRetenciones.Close;
        QRetenciones.SQL.Text:='';
        QRetenciones.SQL.Text:='select cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,'+
                             'm.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle,sum(m.importe) as Importe from mov_retenciones m '+
                             'left join liquidacion_tc_cab cab on cab.id=m.id_cpbte and m.tipocpbte=''LQ'' '+
                             'where cab.fecha_fiscal between :desde and :hasta '+
                             'group by cab.fecha,cab.fecha_fiscal, cab.periodo_liquidado,cab.numerocpbte,m.fecha_retencion,m.nro_retencion, m.id_retencion,m.detalle '+
                             'order by cab.fecha_fiscal';
        QRetenciones.ParamByName('Desde').AsDate := Desde.Date;
        QRetenciones.ParamByName('Hasta').AsDate := Hasta.Date;
        QRetenciones.Open;

      end;

  CDSLiquidaciones.Params.ParamByName('desde').AsDate :=Desde.Date;
  CDSLiquidaciones.Params.ParamByName('hasta').AsDate :=hasta.Date;
  CDSLiquidaciones.Open;
end;

procedure TFormListadoAcreditacionesTC.dbgDebitosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormLiquidacionTC)) then
    FormLiquidacionTC:=TFormLiquidacionTC.Create(Self);
  FormLiquidacionTC.DatoNew:= CDSLiquidacionesID.AsString;
  FormLiquidacionTC.Recuperar.Execute;
  FormLiquidacionTC.Show;


end;

procedure TFormListadoAcreditacionesTC.dbgDebitosTitleBtnClick(Sender: TObject;
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

procedure TFormListadoAcreditacionesTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoAcreditacionesTC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormListadoAcreditacionesTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoAcreditacionesTC:=nil;
end;

procedure TFormListadoAcreditacionesTC.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoAcreditacionesTC<>nil then
    if FormListadoAcreditacionesTC.Width<>970 then
      FormListadoAcreditacionesTC.Width:=970;


end;

procedure TFormListadoAcreditacionesTC.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormListadoAcreditacionesTC.ImprimirExecute(Sender: TObject);
begin
  inherited;
   frResumen.PrintOptions.Printer:=PrNomListados;
  frResumen.SelectPrinter;
  frResumen.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoLiquidacionesTC.fr3');
  frResumen.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frResumen.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';
  frResumen.PrintOptions.Copies := 1;
  // frCtaCte.PrepareReport;
  frResumen.ShowReport;
end;

procedure TFormListadoAcreditacionesTC.rgModoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoAcreditacionesTC.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frResumen.DesignReport;
end;

procedure TFormListadoAcreditacionesTC.ud1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
 // if ceCtaBco.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;
end;


end.