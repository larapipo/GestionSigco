unit UVtaArticulosExentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask,  JvDBGrid, FMTBcd, frxClass, frxDBSet, DB,
  DBClient, Provider, ComCtrls, Grids, DBGrids, JvExDBGrids, JvToolEdit,
  JvExMask, JvBaseEdits, JvLabel, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, JvDBControls, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls, Librerias, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, frCoreClasses;

type
  TFormArticulosExentosVendidos = class(TFormABMBase)
    DSMovimientos: TDataSource;
    pnPie: TPanel;
    DSPMovimientos: TDataSetProvider;
    CDSMovimientos: TClientDataSet;
    ImageList2: TImageList;
    frMov: TfrxReport;
    ToolButton1: TToolButton;
    BitBtn4: TBitBtn;
    Imprimir: TAction;
    frDBDMov: TfrxDBDataset;
    UpDown1: TUpDown;
    ceTotal: TJvCalcEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    QMovimientos: TSQLQuery;
    CDSMovimientosFECHAVTA: TSQLTimeStampField;
    CDSMovimientosCLASECPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosCODIGOARTICULO: TStringField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosCANTIDAD: TFMTBCDField;
    CDSMovimientosTOTAL: TFMTBCDField;
    CDSMovimientosANULADO: TStringField;
    dbgMov: TJvDBGrid;
    CDSMovimientosUNITARIO_TOTAL: TFloatField;
    CDSMovimientosUNITARIO_EXENTO: TFloatField;
    CDSMovimientosTIPOCPBTE: TStringField;
    CDSMovimientosC_CANTIDAD: TFMTBCDField;
    CDSMovimientosC_TOTAL: TFMTBCDField;
    CDSMovimientosC_UNITARIO_TOTAL: TFloatField;
    CDSMovimientosC_UNITARIO_EXENTO: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSMovimientosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticulosExentosVendidos: TFormArticulosExentosVendidos;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormArticulosExentosVendidos.BuscarExecute(Sender: TObject);
VAR Aux:Real;
begin
  inherited;
  Aux:=0;
  CDSMovimientos.Close;
  CDSMovimientos.Params.ParamByName('desde').AsDate := Desde.Date;
  CDSMovimientos.Params.ParamByName('hasta').AsDate := Hasta.Date;
  CDSMovimientos.Open;
  CDSMovimientos.First;
  CDSMovimientos.DisableControls;
  while not(CDSMovimientos.Eof) DO
    begin
      Aux:=Aux+(CDSMovimientosC_UNITARIO_EXENTO.AsFloat*CDSMovimientosCANTIDAD.ASFloat);
      CDSMovimientos.Next;
    end;
  ceTotal.Value:=Aux;
  CDSMovimientos.EnableControls;
end;

procedure TFormArticulosExentosVendidos.ImprimirExecute(Sender: TObject);
BEGIn
 
  FrMov.LoadFromFile(DMMain_FD.PathReportesLst+'\VtasExentas.fr3');
  FrMov.Variables['Desde']:=''''+Desde.Text+'''';
  FrMov.Variables['Hasta']:=''''+hasta.Text+'''';

 // frCtaCte.PrepareReport;
  frMov.ShowReport;
end;

procedure TFormArticulosExentosVendidos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frMov.DesignReport;
end;

procedure TFormArticulosExentosVendidos.CDSMovimientosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovimientosC_CANTIDAD.ASFloat       :=CDSMovimientosCANTIDAD.AsFloat;
  CDSMovimientosC_TOTAL.ASFloat          :=CDSMovimientosCANTIDAD.AsFloat * CDSMovimientosUNITARIO_EXENTO.AsFloat;
  CDSMovimientosC_UNITARIO_TOTAL.ASFloat :=CDSMovimientosUNITARIO_TOTAL.AsFloat;
  CDSMovimientosC_UNITARIO_EXENTO.ASFloat:=CDSMovimientosUNITARIO_EXENTO.AsFloat;
  if CDSMovimientosTIPOCPBTE.Value='NC' then
    begin
      CDSMovimientosC_CANTIDAD.ASFloat       :=CDSMovimientosCANTIDAD.AsFloat*-1;
      CDSMovimientosC_TOTAL.ASFloat          :=CDSMovimientosCANTIDAD.AsFloat * CDSMovimientosUNITARIO_EXENTO.AsFloat * -1;
      CDSMovimientosC_UNITARIO_TOTAL.ASFloat :=CDSMovimientosUNITARIO_TOTAL.AsFloat * -1;
      CDSMovimientosC_UNITARIO_EXENTO.ASFloat:=CDSMovimientosUNITARIO_EXENTO.AsFloat*-1;
    end;

end;

procedure TFormArticulosExentosVendidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action:=cafree;
end;

procedure TFormArticulosExentosVendidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormArticulosExentosVendidos:=nil;
end;

procedure TFormArticulosExentosVendidos.UpDown1Click(Sender: TObject;
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
end;

procedure TFormArticulosExentosVendidos.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));

  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  Desde.SetFocus;

end;

end.