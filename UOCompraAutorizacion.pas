unit UOCompraAutorizacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls,Buttons,
  StdCtrls, ToolWin, ExtCtrls, DBClient, Provider, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, Vcl.Grids, Vcl.DBGrids, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormOCompraAutorizar = class(TFormABMBase)
    DSCompra: TDataSource;
    DSPOCompra: TDataSetProvider;
    CDSOCompra: TClientDataSet;
    CDSOCompraID_OC: TIntegerField;
    CDSOCompraTIPOCPBTE: TStringField;
    CDSOCompraCLASECPBTE: TStringField;
    CDSOCompraNROCPBTE: TStringField;
    CDSOCompraCODIGO: TStringField;
    CDSOCompraNOMBRE: TStringField;
    CDSOCompraRAZONSOCIAL: TStringField;
    CDSOCompraFECHA: TSQLTimeStampField;
    dbgOCompra: TJvDBGrid;
    QOCompr: TFDQuery;
    CDSOCompraTOTAL: TFloatField;
    procedure dbgOCompraDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgOCompraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgOCompraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOCompraAutorizar: TFormOCompraAutorizar;

implementation

uses UOrdenCompra,UDMain_FD;

{$R *.DFM}

procedure TFormOCompraAutorizar.dbgOCompraDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormOrdenCompra)) Then
    FormOrdenCompra:=TFormOrdenCompra.Create(Application);
  FormOrdenCompra.Modo:='A';
  FormOrdenCompra.lbModo.Caption:='En Modo Autorización';
  FormOrdenCompra.DatoNew   :=CDSOCompraID_OC.AsString;
  FormOrdenCompra.TipoCpbte :='OC';
  FormOrdenCompra.Show;
  FormOrdenCompra.BringToFront;
  FormOrdenCompra.Recuperar.Execute;
 end;

procedure TFormOCompraAutorizar.FormCreate(Sender: TObject);
begin
  inherited;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.Close;
  CDSOCompra.open;
  AutoSize:=False;
end;

procedure TFormOCompraAutorizar.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOCompra.Close;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.IndexName:='';
  CDSOCompra.Open;
  dbgOCompra.Width:=dbgOCompra.Width+1;
  dbgOCompra.Width:=dbgOCompra.Width-1;
end;

procedure TFormOCompraAutorizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSOCompra.Close;
  Action:=caFree;
end;

procedure TFormOCompraAutorizar.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOCompraAutorizar:=nil;
end;

procedure TFormOCompraAutorizar.FormResize(Sender: TObject);
begin
  inherited;
  if FormOCompraAutorizar<>nil Then
    if FormOCompraAutorizar.Width<>678 Then
      FormOCompraAutorizar.Width:=678;
end;

procedure TFormOCompraAutorizar.FormActivate(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormOCompraAutorizar.dbgOCompraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgOCompra.DataSource.DataSet as TClientDataSet do
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


procedure TFormOCompraAutorizar.dbgOCompraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (x>dbgOCompra.Left+5) and (x<dbgOCompra.Left+dbgOCompra.Width-5) and (y>dbgOCompra.Top) and (y<dbgOCompra.Top+16) Then
    sbEstado.SimpleText:=' Haciendo clik sobre el titulo se ordenan por ese Nombre'
  else
    sbEstado.SimpleText:='';

end;

end.
