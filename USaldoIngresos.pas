unit USaldoIngresos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, Mask, frxClass,
  Provider, frxDBSet, DBClient, Librerias,Variants,
  ImgList, JvComponentBase, JvExControls, JvGradient,
  frxExportRTF, frxExportXLS, frxExportHTML, frxExportPDF,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvExMask,
  JvToolEdit, DBGrids, JvExDBGrids, JvDBGrid, CheckLst, DBCtrls, JvBaseEdits,
  DataExport, DataToXLS, System.Actions, JvAppStorage, JvAppIniStorage,VirtualUI_SDK,
  Data.DB, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormSaldoIngresos = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    frDBIngresos: TfrxDBDataset;
    DSPSaldoIngresos: TDataSetProvider;
    DSRubros: TDataSource;
    DSCuentas: TDataSource;
    DSSaldosIngresos: TDataSource;
    frListaIngresos: TfrxReport;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    frDBEmpresa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    lcRubros: TJvDBLookupCombo;
    lcCuentas: TJvDBLookupCombo;
    CDSSaldoIngresos: TClientDataSet;
    dbgSaldos: TJvDBGrid;
    Label4: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    pnPie: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    QSaldo_copi_old: TSQLQuery;
    CDSSaldoIngresosNROCPBTE: TStringField;
    CDSSaldoIngresosID_INGRESO: TIntegerField;
    CDSSaldoIngresosTIPOCPBTE: TStringField;
    CDSSaldoIngresosCLASECPBTE: TStringField;
    CDSSaldoIngresosRUBROINGRESO: TStringField;
    CDSSaldoIngresosCODIGOINGRESO: TStringField;
    CDSSaldoIngresosDETALLE: TStringField;
    CDSSaldoIngresosMUESTRARUBRO: TStringField;
    CDSSaldoIngresosMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSSaldoIngresosMUESTRACTA: TStringField;
    CDSSaldoIngresosID_CUENTA_CAJA: TIntegerField;
    CDSSaldoIngresosNOMBRE: TStringField;
    Label5: TLabel;
    dbcCaja: TJvDBLookupCombo;
    DSCajas: TDataSource;
    Filtrar: TAction;
    Sumar: TAction;
    edTotal: TJvCalcEdit;
    chlComprob: TCheckListBox;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    btExcel: TBitBtn;
    chDetalle: TCheckBox;
    ToolButton2: TToolButton;
    QCajas: TFDQuery;
    QCajasID_CUENTA: TIntegerField;
    QCajasID_TIPO_CTA: TIntegerField;
    QCajasNOMBRE: TStringField;
    QCajasNRO_CUENTA: TStringField;
    QCajasID_BANCO: TIntegerField;
    QCajasCUIT: TStringField;
    QCajasRAZONSOCIAL: TStringField;
    QCuentas: TFDQuery;
    QCuentasCODIGO: TStringField;
    QCuentasCODIGO_RUBRO: TStringField;
    QCuentasDETALLE: TStringField;
    QCuentasEXCLUYE: TStringField;
    QRubros: TFDQuery;
    QSaldoIngresos: TFDQuery;
    CDSSaldoIngresosIMPORTE: TFloatField;
    QComprobantes: TFDQuery;
    CDSSaldoIngresosFECHAINGRESO: TSQLTimeStampField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure lcRubrosEnter(Sender: TObject);
    procedure lcCuentasEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgSaldosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FiltrarExecute(Sender: TObject);
    procedure SumarExecute(Sender: TObject);
    procedure dbgSaldosDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure chlComprobClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Filtro:String;
    procedure ArmarFiltro;
  end;

var
  FormSaldoIngresos: TFormSaldoIngresos;

implementation

uses DMBuscadoresForm, UIngresoCaja,UDMain_FD;

{$R *.DFM}

procedure TFormSaldoIngresos.ArmarFiltro;
var i:Integer;
dato:String;
begin
  filtro:='';
  for i:= 0 to chlComprob.Items.Count-1 do
    begin
       if chlComprob.Checked[i]=True then
         begin
           Dato:=copy(chlComprob.Items[i],1,pos('#',chlComprob.items[i])-1);
           dato:=IntToStr(StrToInt(trim(dato)));
           if Filtro='' then
             Filtro:='MUESTRAIDCOMPROBANTE='+Dato
           else
             Filtro:=Filtro+' or MUESTRAIDCOMPROBANTE='+Dato;
         end;
    end;
end;


procedure TFormSaldoIngresos.UpDown1Click(Sender: TObject;
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
  Buscar.Execute;
  //  Desde.SetFocus;

end;


procedure TFormSaldoIngresos.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSSaldoIngresos.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName  :='Saldos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

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

procedure TFormSaldoIngresos.BuscarExecute(Sender: TObject);
begin
 // inherited;
  Screen.Cursor:=crHourGlass;
  CDSSaldoIngresos.IndexName:='';
  CDSSaldoIngresos.IndexDefs.Clear;
  if (copy(Desde.Text,1,2)='  ') or (copy(Hasta.Text,1,2)='  ') Then
    ShowMessage('Fechas Incorrectas... verifique...')
  else
    begin
      CDSSaldoIngresos.Close;
      CDSSaldoIngresos.Params.ParamByName('Desde').AsDate :=Desde.Date;
      CDSSaldoIngresos.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      if VarIsNull(dbcSucursal.KeyValue) Then
        CDSSaldoIngresos.Params.ParamByName('suc').AsInteger:=-1
      else
        CDSSaldoIngresos.Params.ParamByName('suc').AsInteger:= dbcSucursal.KeyValue;
      CDSSaldoIngresos.Params.ParamByName('caja').AsInteger := dbcCaja.KeyValue;
      CDSSaldoIngresos.Params.ParamByName('rubro').AsString := lcRubros.KeyValue;
      CDSSaldoIngresos.Params.ParamByName('codigo').AsString:= lcCuentas.KeyValue;
      CDSSaldoIngresos.Open;
      Filtrar.Execute;
      Sumar.Execute;
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFormSaldoIngresos.chlComprobClick(Sender: TObject);
begin
  inherited;
  CDSSaldoIngresos.Filtered:=False;
  ArmarFiltro;
  CDSSaldoIngresos.Filter:=Filtro;
  CDSSaldoIngresos.Filtered:=True;
  Sumar.Execute;
end;

procedure TFormSaldoIngresos.lcRubrosEnter(Sender: TObject);
begin
  inherited;
  lcCuentas.KeyValue:='*';
end;

procedure TFormSaldoIngresos.lcCuentasEnter(Sender: TObject);
begin
  inherited;
  QCuentas.close;
  QCuentas.ParamByName('rubro').Value:=lcRubros.KeyValue;
  QCuentas.Open;
end;

procedure TFormSaldoIngresos.dbgSaldosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormIngresoCaja)) then
    FormIngresoCaja:=TFormIngresoCaja.Create(Self);
  FormIngresoCaja.DatoNew:=CDSSaldoIngresosID_INGRESO.AsString;
  FormIngresoCaja.TipoCpbte:='IC';
  FormIngresoCaja.Recuperar.Execute;
  FormIngresoCaja.Show;
end;

procedure TFormSaldoIngresos.dbgSaldosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgSaldos.DataSource.DataSet as TClientDataSet do
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

procedure TFormSaldoIngresos.FiltrarExecute(Sender: TObject);
begin
  inherited;
  CDSSaldoIngresos.Filtered:=False;
  ArmarFiltro;
  CDSSaldoIngresos.Filter:=Filtro;
  CDSSaldoIngresos.Filtered:=True;
end;

procedure TFormSaldoIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSaldoIngresos.Close;
  QRubros.Close;
  QCuentas.Close;
  CDSSucursal.Close;
  QCajas.Close;
  Action:=caFree;
end;

procedure TFormSaldoIngresos.FormCreate(Sender: TObject);
VAr i:Integer;
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
  QRubros.Open;
  QCuentas.OPen;
  CDSSucursal.OpeN;
  QCajas.Open;
  CDSComprobantes.Close;
  CDSComprobantes.Open;
  CDSComprobantes.First;
  for i:= 0 to CDSComprobantes.RecordCount-1 do
    begin
      chlComprob.Items.Add(CDSComprobantesID_COMPROBANTE.AsString+' # '+
                           CDSComprobantesTIPO_COMPROB.Value + '-'+
                           CDSComprobantesCLASE_COMPROB.Value + '...'+
                           CDSComprobantesDENOMINACION.Value  );
      chlComprob.Checked[i]:=true ;
      CDSComprobantes.Next;

    end;
end;

procedure TFormSaldoIngresos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSaldoIngresos:=nil;
end;

procedure TFormSaldoIngresos.FormResize(Sender: TObject);
begin
  inherited;
  if FormSaldoIngresos<>nil then
    if FormSaldoIngresos.Width<>1016 then
      FormSaldoIngresos.Width:=1016;
end;

procedure TFormSaldoIngresos.ImprimirExecute(Sender: TObject);
begin

  CDSEmpresa.Open;

  frListaIngresos.PrintOptions.Printer:=PrNomListados;
  frListaIngresos.SelectPrinter;

  if chDetalle.Checked Then
    frListaIngresos.LoadFromFile(DMMain_FD.PathReportesLst+ '\LstIngresos.fr3')
  else
    frListaIngresos.LoadFromFile(DMMain_FD.PathReportesLst+ '\LstIngresos_sinDetalle.fr3');
  frListaIngresos.Variables['Desde']:=''''+Desde.Text+'''';
  frListaIngresos.Variables['Hasta']:=''''+Hasta.Text+'''';


  frListaIngresos.ShowReport;
  CDSEmpresa.Close;

end;

procedure TFormSaldoIngresos.FormShow(Sender: TObject);
VAR y,m,d:word;
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
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormSaldoIngresos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListaIngresos.DesignReport;
end;

procedure TFormSaldoIngresos.SumarExecute(Sender: TObject);
var CDSClone:TClientDataSet;
P:TBookmark;
begin
  inherited;
  edTotal.Value:=0;

  edTotal.Value:=0;
  P:=CDSSaldoIngresos.GetBookmark;
  CDSSaldoIngresos.First;
  CDSSaldoIngresos.DisableControls;

  while not(CDSSaldoIngresos.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSSaldoIngresos.FieldByName('Importe').AsFloat;
      CDSSaldoIngresos.Next;
    end;
 CDSSaldoIngresos.GotoBookmark(p);
 CDSSaldoIngresos.FreeBookmark(p);
 CDSSaldoIngresos.EnableControls;

//  CDSClone:=TClientDataSet.Create(self);
//  CDSClone.CloneCursor(CDSSaldoIngresos,True);
//  CDSClone.First;
//  while not(CDSClone.Eof) do
//    begin
//      edTotal.Value:=edTotal.Value+CDSClone.FieldByName('Importe').AsFloat;
//      CDSClone.Next;
//    end;
//  CDSClone.Free;
end;

end.