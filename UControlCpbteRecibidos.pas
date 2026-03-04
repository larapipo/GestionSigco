unit UControlCpbteRecibidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, ComCtrls, Mask, JvExMask, JvToolEdit,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, DBCtrls, JvLabel, DB, JvExControls,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls,DateUtils,Math,
  JvAppStorage, JvAppIniStorage, System.Actions, frxClass, Datasnap.Provider,
  Datasnap.DBClient, frxDBSet, Vcl.Menus, JvDBLookup, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, AdvOfficeButtons, System.ImageList;

type
  TFormCpbteRecibidos = class(TFormABMBase)
    PopupMenu1: TPopupMenu;
    CambiarNroFecha1: TMenuItem;
    frDBDatos: TfrxDBDataset;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    DSComprobantes: TDataSource;
    dbcComprobantes: TJvDBLookupCombo;
    DSCpbteRec: TDataSource;
    CDSCpbteRec: TClientDataSet;
    DSPCpbteRec: TDataSetProvider;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    dbgComprobantes: TJvDBGrid;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel2: TJvLabel;
    UpDown1: TUpDown;
    DSPSucursal: TDataSetProvider;
    Sumar: TAction;
    lbl1: TLabel;
    lblTotal: TLabel;
    frConsulta: TfrxReport;
    frxReport1: TfrxReport;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    dbcSucursal: TJvDBLookupCombo;
    CDSCpbteRecTIPOCPBTE: TStringField;
    CDSCpbteRecCLASECPBTE: TStringField;
    CDSCpbteRecCODIGO: TStringField;
    CDSCpbteRecNOMBRE: TStringField;
    CDSCpbteRecLETRA: TStringField;
    CDSCpbteRecPREFIJO: TStringField;
    CDSCpbteRecNUMERO: TStringField;
    CDSCpbteRecNUMEROCPBTE: TStringField;
    CDSCpbteRecNETO_GRAVADO_C: TFMTBCDField;
    CDSCpbteRecNETO_EXENTO_C: TFMTBCDField;
    CDSCpbteRecIVA_C: TFMTBCDField;
    CDSCpbteRecTOTAL_C: TFMTBCDField;
    CDSCpbteRecID_FACTURA: TIntegerField;
    CDSCpbteRecNOMSUCURSAL: TStringField;
    CDSCpbteRecDETALLECPBTE: TStringField;
    CDSCpbteRecSUCURSAL: TIntegerField;
    CDSCpbteRecID_CPBTE: TIntegerField;
    QComprobantes: TFDQuery;
    QDetalle: TFDQuery;
    QBuscaAplicaiones: TFDQuery;
    QCpbteRec: TFDQuery;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesLETRA: TStringField;
    CDSCpbteRecNETO_GRAVADO: TFloatField;
    CDSCpbteRecNETO_EXENTO: TFloatField;
    CDSCpbteRecIIBB: TFloatField;
    CDSCpbteRecPERCEPIVA: TFloatField;
    CDSCpbteRecIVA: TFloatField;
    CDSCpbteRecTOTAL: TFloatField;
    chbPorDia: TAdvOfficeCheckBox;
    CDSCpbteRecFECHACOMP: TSQLTimeStampField;
    procedure BuscarExecute(Sender: TObject);
    procedure SumarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbcSucursalClick(Sender: TObject);
    procedure dbcComprobantesClick(Sender: TObject);
    procedure dbgComprobantesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgComprobantesDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSCpbteRecCalcFields(DataSet: TDataSet);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCpbteRecibidos: TFormCpbteRecibidos;

implementation

uses UCompra_2, UCompraCtdo_2,UDMain_FD;

{$R *.dfm}

procedure TFormCpbteRecibidos.BuscarExecute(Sender: TObject);
begin
 // CDSCpbteRec.Close;
//  if rxdbcComprobantes.KeyValue<>null Then
//    begin
//      CDSCpbteRec.CommandText:='';
//      CDSCpbteRec.CommandText:='select f.id_fc,f.fechacompra,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.razonsocial,f.nombre,f.cuit,f.anulado,f.letrafac,f.sucfac,f.numerofac,'+
//                                    'f.total,c.denominacion as MuestraComprobante,f.sucursalcompra,sc.detalle as Nombresuc from fcCompcab f '+
//                                    'left join comprobantes c on c.sucursal=f.sucursal and  c.letra=f.letrafac and c.tipo_comprob=f.tipocpbte and c.clase_comprob=f.clasecpbte and c.compra_venta=''V'''+
//                                    'left join sucursal sc on sc.codigo=f.sucursalcompra '+
//                                    'where f.fechacompra>='+''''+FormatDateTime('mm/dd/yyyy',Desde.Date)+''''+' and f.Fechacompra<='+''''+FormatDateTime('mm/dd/yyyy',hasta.Date)+''''+
//                                    ' and f.sucursalcompra='+dbcSucursal.ListSource.Dataset.FieldByName('codigo').AsString+
//                                    ' and f.clasecpbte='+''''+ rxdbcComprobantes.LookupSource.DataSet.fieldbyName('Clase_comprob').AsString+''''+
//                                    ' and f.letraFac='+ ''''+rxdbcComprobantes.LookupSource.DataSet.fieldbyName('letra').AsString+''''+
//                                    ' and f.tipocpbte='+''''+rxdbcComprobantes.LookupSource.DataSet.fieldbyName('tipo_comprob').AsString+''''+
//                                    ' order by f.tipocpbte,f.nrocpbte';
//      CDSCpbteRec.Open;
//    end
//  else
//    begin
//      CDSCpbteRec.CommandText:='';
//      CDSCpbteRec.CommandText:='select f.id_fc,f.fechacompra,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.razonsocial,f.nombre,f.cuit,f.anulado,f.letrafac,f.sucfac,f.numerofac, '+
//                                    'f.total,c.denominacion as MuestraComprobante,f.sucursalcompra,sc.detalle as Nombresuc from fccompcab f '+
//                                    'left join comprobantes c on c.sucursal=f.sucursalcompra and  c.letra=f.letrafac and c.tipo_comprob=f.tipocpbte and c.clase_comprob=f.clasecpbte and c.compra_venta=''V'''+
//                                    'left join sucursal sc on sc.codigo=f.sucursalcompra '+
//                                    'where f.fechacompra>='+''''+FormatDateTime('mm/dd/yyyy',Desde.Date)+''''+' and f.Fechacompra<='+''''+FormatDateTime('mm/dd/yyyy',hasta.Date)+''''+
//                                    ' and f.sucursalcompra='+dbcSucursal.ListSource.Dataset.FieldByName('codigo').AsString+
//                                    ' order by f.tipocpbte,f.nrocpbte';
//      CDSCpbteRec.Open;
//    end;
  CDSCpbteRec.Close;
  CDSCpbteRec.Params.ParamByName('desde').Value :=desde.Date;
  CDSCpbteRec.Params.ParamByName('hasta').Value :=hasta.Date;
  CDSCpbteRec.Params.ParamByName('tipo').Value  := dbcComprobantes.KeyValue;
  CDSCpbteRec.Params.ParamByName('clase').Value :='**';
  CDSCpbteRec.Params.ParamByName('codigo').Value :='******';
  CDSCpbteRec.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;
  CDSCpbteRec.Open;

   Sumar.Execute;

end;

procedure TFormCpbteRecibidos.CDSCpbteRecCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSCpbteRecNETO_GRAVADO_C.AsFloat :=CDSCpbteRecNETO_GRAVADO.AsFloat;
  CDSCpbteRecNETO_EXENTO_C.AsFloat  :=CDSCpbteRecNETO_EXENTO.AsFloat;
  CDSCpbteRecIVA_C.AsFloat          :=CDSCpbteRecIVA.AsFloat;
  CDSCpbteRecTOTAL_C.AsFloat        :=CDSCpbteRecTOTAL.AsFloat;
  if CDSCpbteRecTIPOCPBTE.Value='NC' then
    begin
      CDSCpbteRecNETO_GRAVADO_C.AsFloat :=CDSCpbteRecNETO_GRAVADO.AsFloat*-1;
      CDSCpbteRecNETO_EXENTO_C.AsFloat  :=CDSCpbteRecNETO_EXENTO.AsFloat*-1;
      CDSCpbteRecIVA_C.AsFloat          :=CDSCpbteRecIVA.AsFloat*-1;
      CDSCpbteRecTOTAL_C.AsFloat        :=CDSCpbteRecTOTAL.AsFloat*-1;
    end;
  //    CDSCpbteRecTOTAL_CALCULADO.Value:=CDSCpbteRecTOTAL.AsFloat*-1;
//
//  if CDSCpbteRecANULADO.Value<>'N' then
//    CDSCpbteRecTOTAL_CALCULADO.Value:=0;
end;

procedure TFormCpbteRecibidos.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  if dbcSucursal.Text<>'' Then
    begin
      QComprobantes.Close;
      QComprobantes.ParamByName('Suc').Value:=dbcSucursal.KeyValue;
      QComprobantes.Open;
    end;
end;

procedure TFormCpbteRecibidos.dbgComprobantesDblClick(Sender: TObject);
begin
  inherited;
  if ((CDSCpbteRecTIPOCPBTE.AsString='FC') or
      (CDSCpbteRecTIPOCPBTE.AsString='NC') or
      (CDSCpbteRecTIPOCPBTE.AsString='ND')) then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2   := TFormCompra_2.Create(self);
      FormCompra_2.DatoNew   := CDSCpbteRecID_FACTURA.AsString;
      FormCompra_2.TipoCpbte := CDSCpbteRecTIPOCPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    if CDSCpbteRecTIPOCPBTE.Value='FO' then
      begin
        IF NOT (Assigned(FormCompraCtdo_2)) THEN
          FormCompraCtdo_2   := TFormCompraCtdo_2.Create(self);
        FormCompraCtdo_2.DatoNew   := CDSCpbteRecID_FACTURA.AsString;
        FormCompraCtdo_2.TipoCpbte := CDSCpbteRecTIPOCPBTE.AsString;
        FormCompraCtdo_2.Recuperar.Execute;
        FormCompraCtdo_2.Show;
    end

end;

procedure TFormCpbteRecibidos.dbgComprobantesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgComprobantes.DataSource.DataSet as TClientDataSet do
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

procedure TFormCpbteRecibidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCpbteRecibidos.FormCreate(Sender: TObject);
begin
  inherited;
  CDSSucursal.Close;
  CDSSucursal.Open;
  QComprobantes.Close;
  QComprobantes.Open;
  AutoSize:=False;
end;

procedure TFormCpbteRecibidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCpbteRecibidos:=nil;
end;

procedure TFormCpbteRecibidos.FormResize(Sender: TObject);
begin
  inherited;
  if FormCpbteRecibidos<>nil then
    if FormCpbteRecibidos.Width<>990 Then
      FormCpbteRecibidos.Width:=990;

end;

procedure TFormCpbteRecibidos.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

procedure TFormCpbteRecibidos.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSCpbteRec.IsEmpty) Then
    begin
      if PrListados<0 Then PrListados:=0;
      frConsulta.PrintOptions.Printer:=PrNomListados;
      frConsulta.SelectPrinter;
      frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCpbteRecibidos.fr3');
      frConsulta.Variables['desde']   :=''''+Desde.Text+'''';
      frConsulta.Variables['hasta']   :=''''+Hasta.Text+'''';
      frConsulta.Variables['sucursal']:=''''+dbcSucursal.Text+'''';
      frConsulta.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormCpbteRecibidos.dbcComprobantesClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormCpbteRecibidos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;

procedure TFormCpbteRecibidos.SumarExecute(Sender: TObject);
var p:TBookmark;
aux:Extended;
begin
  inherited;
  aux:=0;
  p:=CDSCpbteRec.GetBookmark;
  CDSCpbteRec.First;
  CDSCpbteRec.DisableControls;
  while Not(CDSCpbteRec.Eof) do
    begin
      aux:=aux+RoundTo(CDSCpbteRecTOTAL_C.AsFloat,-2);
      CDSCpbteRec.Next;
    end;
  CDSCpbteRec.GotoBookmark(p);
  CDSCpbteRec.EnableControls;
  CDSCpbteRec.FreeBookmark(p);
  lblTotal.Caption:=FormatFloat(',0.00',(aux));

end;
procedure TFormCpbteRecibidos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  BUSCAR.Execute;
end;

end.
