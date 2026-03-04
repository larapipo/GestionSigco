unit UOProduccionProceso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, ToolWin, ExtCtrls, JvComponentBase, JvFormPlacement, ImgList,
  JvLabel, JvDBControls, JvExControls, JvGradient, FMTBcd, Provider, DBClient,
  SqlExpr, Data.DB, Vcl.Grids, Vcl.DBGrids, JvAppStorage, JvAppIniStorage,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  Vcl.Buttons, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormOProduccionProcesando = class(TFormABMBase)
    DSOProduc: TDataSource;
    dbgMovimientos: TDBGrid;
    QOProd: TSQLQuery;
    CDSOProduc: TClientDataSet;
    DSPOproduc: TDataSetProvider;
    CDSOProducID: TIntegerField;
    CDSOProducFECHA_INICIADA: TSQLTimeStampField;
    CDSOProducFECHA_FINALIZADA: TSQLTimeStampField;
    CDSOProducPRODUCTOR: TStringField;
    CDSOProducTIPOCPBTE: TStringField;
    CDSOProducCLASECPBTE: TStringField;
    CDSOProducDEPOSITO_ORIGEN: TIntegerField;
    CDSOProducDEPOSITO_DESTINO: TIntegerField;
    CDSOProducLETRAOP: TStringField;
    CDSOProducSUCOP: TStringField;
    CDSOProducNUMEROOP: TStringField;
    CDSOProducNROCPBTE: TStringField;
    CDSOProducSUCURSAL: TIntegerField;
    CDSOProducNOMBRE_DEPOSITO_ORIGEN: TStringField;
    CDSOProducNOMBRE_DEPOSITO_DESTINO: TStringField;
    CDSOProducOBS1: TStringField;
    CDSOProducUSUARIO: TStringField;
    CDSOProducESTADO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOProduccionProcesando: TFormOProduccionProcesando;

implementation

uses UOrdenProduccion,UDMain_FD;
{$R *.DFM}

procedure TFormOProduccionProcesando.FormCreate(Sender: TObject);
begin
  inherited;
  CDSOProduc.Open;
  AutoSize:=True;
  DBStatusLabel1.Visible:=False;
end;

procedure TFormOProduccionProcesando.dbgMovimientosDblClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormOrdenProduccion)) Then
     FormOrdenProduccion:=TFormOrdenProduccion.Create(Application);
   FormOrdenProduccion.DatoNew:=dbgMovimientos.DataSource.DataSet.fieldbyName('id').AsString;
   FormOrdenProduccion.Recuperar.Execute;
   FormOrdenProduccion.Show;
end;

procedure TFormOProduccionProcesando.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSOProduc.Close;
  Action:=caFree;
end;

procedure TFormOProduccionProcesando.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOProduccionProcesando:=nil;
end;

procedure TFormOProduccionProcesando.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOProduc.Close;
  CDSOProduc.Open;
  dbgMovimientos.Width:=dbgMovimientos.Width+1;
  dbgMovimientos.Width:=dbgMovimientos.Width-1;

end;

procedure TFormOProduccionProcesando.dbgMovimientosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (x>=dbgMovimientos.Left) and (x<=dbgMovimientos.Left+dbgMovimientos.Width) Then
    if (y>=dbgMovimientos.Top) and (y<=dbgMovimientos.Top+dbgMovimientos.Height) Then
      sbEstado.SimpleText:='Doble clik sobre el registro, accede a la Orden de P.'
    else
      sbEstado.SimpleText:='';

end;

procedure TFormOProduccionProcesando.pnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormOProduccionProcesando.FormShow(Sender: TObject);
begin
  inherited;
  CDSOProduc.Close;
  CDSOProduc.Open;

end;

end.
