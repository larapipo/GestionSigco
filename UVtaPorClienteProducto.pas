unit UVtaPorClienteProducto;

interface

uses
  UABMBase, Db, DBClient, Provider, StdCtrls, ComCtrls,
  ImgList, Controls, Classes, ActnList, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls, Variants, Librerias,SysUtils,
  JvToolEdit, JvExMask, JvBaseEdits, DBGrids, JvExDBGrids, JvDBGrid,JvAppIniStorage,
  VclTee.TeeGDIPlus, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, System.Actions, frxClass, frxDBSet,
  JvAppStorage, Data.FMTBcd, Vcl.Grids, Vcl.Mask, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, frCoreClasses,
  AdvSmoothButton;

type
    TFormVtaClienteProducto = class(TFormABMBase)
    DSPVtaCliente: TDataSetProvider;
    CDSVtaCliente: TClientDataSet;
    DSVtaCliente: TDataSource;
    edNombreCliente: TEdit;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    BuscarCliente: TAction;
    CDSVtaClienteCODIGOARTICULO: TStringField;
    CDSVtaClienteDETALLE: TStringField;
    DBChart1: TDBChart;
    CDSVtaClienteporcentaje: TFloatField;
    TrackBar: TTrackBar;
    Series1: TBarSeries;
    Series2: TLineSeries;
    GroupBox1: TGroupBox;
    PorCantidad: TCheckBox;
    PorImporte: TCheckBox;
    MostrarSeries: TAction;
    UpDown1: TUpDown;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    ceCliente: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    ceSumaTotal: TJvCalcEdit;
    dbgSaldos: TJvDBGrid;
    frxReport: TfrxReport;
    frxDBVtas: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    QSumaGeneral: TFDQuery;
    QSumaGeneralCANT: TFloatField;
    QSumaGeneralSUM: TFloatField;
    QVtaCliente: TFDQuery;
    CDSVtaClienteCANT: TFloatField;
    CDSVtaClienteSUM: TFloatField;
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSVtaClienteCalcFields(DataSet: TDataSet);
    procedure TrackBarChange(Sender: TObject);
    procedure MostrarSeriesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSaldosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVtaClienteProducto: TFormVtaClienteProducto;

implementation

uses  UBuscadorClientes,UDMain_FD;

{$R *.DFM}

procedure TFormVtaClienteProducto.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        begin
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          Desde.SetFocus;
        end
      else
        begin
          edNombreCliente.Text := '';
          ceCliente.Text:='';
          ceCliente.SetFocus;
        end

    END;
end;

procedure TFormVtaClienteProducto.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Self);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    begin
      ceCliente.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;

end;

procedure TFormVtaClienteProducto.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
end;


procedure TFormVtaClienteProducto.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
 end;

procedure TFormVtaClienteProducto.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVtaClienteProducto:=nil;
end;

procedure TFormVtaClienteProducto.BuscarExecute(Sender: TObject);
begin
//  inherited;
  if (edNombreCliente.Text<>'') and (not((copy(Desde.text,1,1)=' ') or (copy(hasta.text,1,1)=' '))) then
    begin
       QSumaGeneral.Close;
       QSumaGeneral.ParamByName('codigo').Value:=ceCliente.Text;
       QSumaGeneral.ParamByName('desde').AsDate:=desde.Date;
       QSumaGeneral.ParamByName('hasta').AsDate:=hasta.Date;
       QSumaGeneral.Open;
       if QSumaGeneral.Fields[1].Value<>null Then
        ceSumaTotal.Value:=QSumaGeneral.Fields[1].Value;
       CDSVtaCliente.Close;
       CDSVtacliente.IndexFieldNames:='';
       CDSVtacliente.IndexDefs.Clear;
       CDSVtaCliente.Params.ParamByName('codigo').Value:=ceCliente.Text;
       CDSVtaCliente.Params.ParamByName('desde').AsDate:=desde.Date;
       CDSVtaCliente.Params.ParamByName('hasta').AsDate:=hasta.Date;
       CDSVtaCliente.Open;
  //     Query1.Close;
  //     Query1.ParamByName('codigo').Value:=ceCliente.Text;
  //     Query1.ParamByName('desde').AsDate:=desde.Date;
  //     Query1.ParamByName('hasta').AsDate:=hasta.Date;
  //     Query1.Open;
       TrackBar.Max:=DBChart1.NumPages;
    end;

end;

procedure TFormVtaClienteProducto.CDSVtaClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVtaClienteporcentaje.AsFloat:=(CDSVtaClienteSUM.AsFloat/QSumaGeneral.Fields[1].AsFloat)*100;
end;

procedure TFormVtaClienteProducto.TrackBarChange(Sender: TObject);
begin
  inherited;
  DBChart1.Page:=TrackBar.Position;
end;

procedure TFormVtaClienteProducto.MostrarSeriesExecute(Sender: TObject);
begin
  inherited;
  Series1.Active:=PorCantidad.Checked;
  Series2.Active:=PorImporte.Checked;
end;

procedure TFormVtaClienteProducto.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormVtaClienteProducto.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  ceCliente.SetFocus;
end;

procedure TFormVtaClienteProducto.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormVtaClienteProducto.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\LstVtaCli_Prod.fr3');
  frxReport.Variables['Desde']:=''''+DateToStr(Desde.Date)+'''';
  frxReport.Variables['Hasta']:=''''+DateToStr(Hasta.Date)+'''';
  frxReport.Variables['Cliente']:=''''+edNombreCliente.Text+'''';


  frxReport.ShowReport;

end;

procedure TFormVtaClienteProducto.dbgSaldosTitleBtnClick(Sender: TObject;
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

procedure TFormVtaClienteProducto.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormVtaClienteProducto.UpDown1Click(Sender: TObject;
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

procedure TFormVtaClienteProducto.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is TJvComboEdit)) Then

  inherited;

end;

end.