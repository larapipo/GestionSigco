unit UComparacionCompraVenta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,
  DBCtrls, ImgList, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, Provider,
  DBClient, JvExMask, JvToolEdit, SqlExpr, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, System.Actions,
  Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, JvAppStorage,
  JvAppIniStorage, Vcl.ActnList, Vcl.Buttons,
  Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormRelacionCompraVenta = class(TFormABMBase)
    DSVentas: TDataSource;
    DSCompras: TDataSource;
    DBChart1: TDBChart;
    TrackBar: TTrackBar;
    rgPor: TRadioGroup;
    UpDown1: TUpDown;
    dbcRubro: TDBLookupComboBox;
    DSRubro: TDataSource;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSVentas: TClientDataSet;
    DSPVentas: TDataSetProvider;
    CDSCompras: TClientDataSet;
    DSPCompras: TDataSetProvider;
    CDSComprasCODIGOARTICULO: TStringField;
    CDSComprasRUBRO_STK: TStringField;
    CDSComprasDETALLE_STK: TStringField;
    CDSVentasCODIGOARTICULO: TStringField;
    CDSVentasRUBRO_STK: TStringField;
    CDSVentasDETALLE_STK: TStringField;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    QVen: TFDQuery;
    QComp: TFDQuery;
    CDSVentasCANTIDAD: TFloatField;
    CDSVentasIMPORTE: TFloatField;
    CDSComprasCANTIDAD: TFloatField;
    CDSComprasIMPORTE: TFloatField;
    Series1: THorizBarSeries;
    Series3: THorizBarSeries;
    Series2: THorizBarSeries;
    Series4: THorizBarSeries;
    Series5: TBarSeries;
    procedure FormCreate(Sender: TObject);
    procedure TrackBarChange(Sender: TObject);
    procedure rgPorClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelacionCompraVenta: TFormRelacionCompraVenta;

implementation

uses UDMain_FD,DMBuscadoresForm;
{$R *.DFM}

procedure TFormRelacionCompraVenta.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  TrackBar.Max:=DBChart1.NumPages;
  Series1.Active:=True;
  Series2.Active:=True;
  Series3.Active:=False;
  Series4.Active:=False;
  CDSRubro.Open;
  Buscar.Execute;
end;

procedure TFormRelacionCompraVenta.TrackBarChange(Sender: TObject);
begin
  inherited;
  DBChart1.Page:=TrackBar.Position;

end;

procedure TFormRelacionCompraVenta.rgPorClick(Sender: TObject);
begin
  inherited;
  if  rgPor.ItemIndex=0 Then
    begin
      Series1.Active:=True;
      Series2.Active:=True;
      Series3.Active:=False;
      Series5.Active:=False;
    end
  else
    if rgPor.ItemIndex=1 then
    begin
      Series1.Active:=False;
      Series2.Active:=False;
      Series3.Active:=True;
      Series5.Active:=True;

    end;

end;

procedure TFormRelacionCompraVenta.UpDown1Click(Sender: TObject;
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

procedure TFormRelacionCompraVenta.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCompras.close;
  CDSVentas.Close;
  CDSCompras.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSCompras.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSCompras.Params.ParamByName('rubro').Value:=dbcRubro.KeyValue;

  CDSVentas.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSVentas.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSVentas.Params.ParamByName('rubro').Value:=dbcRubro.KeyValue;

  CDSCompras.Open;
  CDSVentas.Open;
  TrackBar.Max:=DBChart1.NumPages;


end;

procedure TFormRelacionCompraVenta.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
end;

procedure TFormRelacionCompraVenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRelacionCompraVenta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRelacionCompraVenta:=nil;
end;

end.