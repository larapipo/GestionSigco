unit UGraficoVentas;

interface

uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, Db,DateUtils, FMTBcd, StdCtrls, JvExControls,
  JvDBLookup, Provider, DBClient, ComCtrls, Mask, JvExMask, JvToolEdit,
  JvLabel, SqlExpr, JvComponentBase, JvFormPlacement, ImgList, ActnList,
  JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, System.Actions, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeDBCrossTab,
  JvAppStorage, JvAppIniStorage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;


type
  TFormGraficoVentas = class(TFormABMBase)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbGrafico: TDBChart;
    CDSVtas: TClientDataSet;
    DSPVtas: TDataSetProvider;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    CDSCompras: TClientDataSet;
    DSPCompras: TDataSetProvider;
    UpDown1: TUpDown;
    RxLabel2: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    CDSVtasSUCURSAL: TIntegerField;
    CDSVtasANIO: TIntegerField;
    CDSVtasMES: TIntegerField;
    Ventas: TBarSeries;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSSucursal: TDataSource;
    cbSucursales: TJvDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    tbPorcentaje: TTrackBar;
    Button3: TButton;
    Label2: TLabel;
    chbOrtogonal: TCheckBox;
    Label3: TLabel;
    tbRotacion: TTrackBar;
    tbElevacion: TTrackBar;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    chNetosSinIva: TCheckBox;
    DBCrossTabSource1: TDBCrossTabSource;
    QVtas_2: TFDQuery;
    QVtas_2SUCURSAL: TIntegerField;
    QVtas_2NOMBRESUCURSAL: TStringField;
    QVtas_2MES: TIntegerField;
    QVtas_2TOTAL_VTAS_CTDO_GRAVADO: TFloatField;
    QVtas_2TOTAL_VTAS_CTDO_EXENTO: TFloatField;
    QVtas_2TOTAL_VTAS_CTDO_IVA: TFloatField;
    QVtas_2TOTAL_VTAS_CTDO: TFloatField;
    QVtas_2TOTAL_VTAS_CC_GRAVDADO: TFloatField;
    QVtas_2TOTAL_VTAS_CC_EXENTO: TFloatField;
    QVtas_2TOTAL_VTAS_CC_IVA: TFloatField;
    QVtas_2TOTAL_VTAS_CC: TFloatField;
    QVtas_2TOTAL_VTAS_NCREDITO_GRAVADO: TFloatField;
    QVtas_2TOTAL_VTAS_NCREDITO_EXENTO: TFloatField;
    QVtas_2TOTAL_VTAS_NCREDITO_IVA: TFloatField;
    QVtas_2TOTAL_VTAS_NCREDITO: TFloatField;
    QVtas_2TOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFloatField;
    QVtas_2TOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFloatField;
    QVtas_2TOTAL_VTAS_CTDO_NCREDITO_IVA: TFloatField;
    QVtas_2TOTAL_VTAS_CTDO_NCREDITO: TFloatField;
    QVtas_2TOTAL_ANULACIONES: TFloatField;
    QVtas_2TOTAL_COBRANZAS: TFloatField;
    QVtas_2TOTAL_EGRESOS: TFloatField;
    QVtas_2TOTAL_COMPRAS_GRAVADO: TFloatField;
    QVtas_2TOTAL_COMPRAS_EXENTO: TFloatField;
    QVtas_2TOTAL_COMPRAS_IVA: TFloatField;
    QVtas_2TOTAL_COMPRAS: TFloatField;
    QVtas_2TOTAL_NC_COMPRAS_GRAVADO: TFloatField;
    QVtas_2TOTAL_NC_COMPRAS_EXENTO: TFloatField;
    QVtas_2TOTAL_NC_COMPRAS_IVA: TFloatField;
    QVtas_2TOTAL_NC_COMPRAS: TFloatField;
    QVtas_2TOTAL_COMPRAS_CTDO_GRAVADO: TFloatField;
    QVtas_2TOTAL_COMPRAS_CTDO_EXENTO: TFloatField;
    QVtas_2TOTAL_COMPRAS_CTDO_IVA: TFloatField;
    QVtas_2TOTAL_COMPRAS_CTDO: TFloatField;
    QVtas_2TOTAL_PERSONAL: TFloatField;
    QVtas_2TOTAL_PAGOS: TFloatField;
    QVtas_2SALDO_CC_VTA: TFloatField;
    QVtas_2SALDO_CC_COMPRA: TFloatField;
    QVtas_2TOTAL_VTAS: TFloatField;
    QVtas_2TOTAL_INGRESOS: TFloatField;
    QVtas_2TOTAL_VTAS_NDEBITO_GRAVADO: TFloatField;
    QVtas_2TOTAL_VTAS_NDEBITO_EXENTO: TFloatField;
    QVtas_2TOTAL_VTAS_NDEBITO_IVA: TFloatField;
    QVtas_2TOTAL_VTAS_NDEBITO: TFloatField;
    QVtas_2TOTAL_GRAL_COMPRAS: TFloatField;
    QVtas_2CTA_GASTO_DETALLE: TStringField;
    QVtas_2TOTAL_EFECTIVO: TFloatField;
    QVtas_2TOTAL_CHEQUES3: TFloatField;
    QVtas_2TOTAL_RTOS: TFloatField;
    QVtas_2SALDO_BANCO: TFloatField;
    QVtas: TFDQuery;
    CDSVtasTOTAL: TFloatField;
    CDSVtasTOTAL_FINAL: TFloatField;
    QCompras: TFDQuery;
    pnPie: TPanel;
    BitBtn1: TBitBtn;
    pnCabecera: TPanel;
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure cbSucursalesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbPorcentajeChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure chbOrtogonalClick(Sender: TObject);
    procedure tbRotacionChange(Sender: TObject);
    procedure tbElevacionChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraficoVentas: TFormGraficoVentas;

implementation

uses UDMain_FD, UFiltroComprobantesVenta;

{$R *.DFM}

procedure TFormGraficoVentas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dbGrafico.Print;
end;

procedure TFormGraficoVentas.BuscarExecute(Sender: TObject);
begin
//  inherited;
 if not((copy(Desde.text,1,1)=' ') or (copy(hasta.text,1,1)=' ')) then
    begin
      CDSVtas.Close;
      CDSVtas.Params.ParamByName('suc').Value:= cbSucursales.KeyValue;
      CDSVtas.Params.ParamByName('desde').AsDate:=desde.Date;
      CDSVtas.Params.ParamByName('hasta').AsDate:=hasta.Date;
      CDSVtas.Open;
      CDSCompras.Close;
      CDSCompras.Params.ParamByName('desde').AsDate:=desde.Date;
      CDSCompras.Params.ParamByName('hasta').AsDate:=hasta.Date;
      CDSCompras.Open;
      if (chNetosSinIva.Checked=True) then
        Ventas.MandatoryValueList.ValueSource:='TOTAL'
      else
        Ventas.MandatoryValueList.ValueSource:='TOTAL_FINAL';
      //TrackBar1.Max:=DecisionGraph1.NumPages;
    end
  else
    ShowMessage('Indicar el período de consulta');
end;

procedure TFormGraficoVentas.Button1Click(Sender: TObject);
begin
  inherited;
  if dbGrafico.Page>0 Then
    dbGrafico.PreviousPage;
end;

procedure TFormGraficoVentas.Button2Click(Sender: TObject);
begin
  inherited;
   dbGrafico.NextPage;
end;

procedure TFormGraficoVentas.Button3Click(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
 // ShowMessage(FormFiltroCpbtes.Ids.Text);

end;

procedure TFormGraficoVentas.cbSucursalesChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormGraficoVentas.chbOrtogonalClick(Sender: TObject);
begin
  inherited;
 dbGrafico.View3DOptions.Orthogonal:=Not(chbOrtogonal.Checked);
  if chbOrtogonal.Checked Then
    begin
      tbRotacion.Position:=dbGrafico.View3DOptions.Rotation;
      tbElevacion.Position:=dbGrafico.View3DOptions.Elevation;
    end;
end;

procedure TFormGraficoVentas.CheckBox1Click(Sender: TObject);
begin
  inherited;
  dbGrafico.Legend.Visible:=CheckBox1.Checked;
end;

procedure TFormGraficoVentas.ConfirmaExecute(Sender: TObject);
begin
 // inherited;

 
end;

procedure TFormGraficoVentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormGraficoVentas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGraficoVentas:=nil;
end;

procedure TFormGraficoVentas.TrackBar1Change(Sender: TObject);
begin
  inherited;
// DBChart1.Page:=TrackBar1.Position;
end;

procedure TFormGraficoVentas.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
 // DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    begin
      Desde.Date:= IncYear(Desde.Date,1);
      Hasta.date:= IncYear(Hasta.Date,1);
    end
  else
    if Button=btPrev Then
    begin
      Desde.Date:= IncYear(Desde.Date,-1);
      Hasta.date:= IncYear(Hasta.Date,-1);
    end;

  Buscar.Execute;
end;

procedure TFormGraficoVentas.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,1,1);
  hasta.Date:=IncYear(Desde.Date,1);
  Hasta.date:=IncDay(Hasta.Date,-1);
  Desde.SetFocus;
end;

procedure TFormGraficoVentas.tbElevacionChange(Sender: TObject);
begin
  inherited;
 dbGrafico.View3DOptions.Elevation:=tBElevacion.Position;
end;

procedure TFormGraficoVentas.tbPorcentajeChange(Sender: TObject);
begin
  inherited;
 dbGrafico.Chart3DPercent:=tbPorcentaje.Position;
end;

procedure TFormGraficoVentas.tbRotacionChange(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.Rotation:=tbRotacion.Position;
end;

procedure TFormGraficoVentas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Close;
  CDSSucursal.Open;
end;

end.