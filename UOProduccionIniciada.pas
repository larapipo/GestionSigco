unit UOProduccionIniciada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, JvComponentBase, JvFormPlacement, ImgList,
  JvLabel, JvDBControls, JvExControls, JvGradient, FMTBcd, Provider, DBClient,
  SqlExpr, Vcl.Grids, Vcl.DBGrids, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormOProduccionIniciadas = class(TFormABMBase)
    dbgMovimientos: TDBGrid;
    DSOProduc: TDataSource;
    CDSOProduc: TClientDataSet;
    DSPOproduc: TDataSetProvider;
    QOProdu: TSQLQuery;
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
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure dbgMovimientosMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure pnPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOProduccionIniciadas: TFormOProduccionIniciadas;

implementation

uses UOrdenProduccion,UDMain_FD;

{$R *.DFM}

procedure TFormOProduccionIniciadas.dbgMovimientosDblClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormOrdenProduccion)) Then
     FormOrdenProduccion:=TFormOrdenProduccion.Create(Application);
   FormOrdenProduccion.DatoNew:=dbgMovimientos.DataSource.DataSet.fieldbyName('id').AsString;
   FormOrdenProduccion.Recuperar.Execute;
   FormOrdenProduccion.Show;
end;

procedure TFormOProduccionIniciadas.dbgMovimientosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (x>=dbgMovimientos.Left) and (x<=dbgMovimientos.Left+dbgMovimientos.Width) Then
    if (y>=dbgMovimientos.Top) and (y<=dbgMovimientos.Top+dbgMovimientos.Height) Then
      sbEstado.SimpleText:='Doble clik sobre el registro, accede a la Orden de P.'
    else
      sbEstado.SimpleText:='';

end;

procedure TFormOProduccionIniciadas.pnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='';

end;

procedure TFormOProduccionIniciadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSOProduc.Close;
  Action:=caFree;
end;

procedure TFormOProduccionIniciadas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSOProduc.Open;
end;

procedure TFormOProduccionIniciadas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOProduccionIniciadas:=nil;
end;

procedure TFormOProduccionIniciadas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOProduc.Close;
  CDSOProduc.Open;
  dbgMovimientos.Width:=dbgMovimientos.Width+1;
  dbgMovimientos.Width:=dbgMovimientos.Width-1;

end;

procedure TFormOProduccionIniciadas.FormShow(Sender: TObject);
begin
  inherited;
  CDSOProduc.Close;
  CDSOProduc.Open;

end;

end.
