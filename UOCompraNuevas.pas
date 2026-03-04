unit UOCompraNuevas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin, ExtCtrls, DBClient,
  Provider, ImgList, JvExControls, JvGradient, JvComponentBase, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormOCompraNuevas = class(TFormABMBase)
    DSCompra: TDataSource;
    DSPOCompra: TDataSetProvider;
    CDSOCompra: TClientDataSet;
    QOCompra: TSQLQuery;
    CDSOCompraID_OC: TIntegerField;
    CDSOCompraTIPOCPBTE: TStringField;
    CDSOCompraCLASECPBTE: TStringField;
    CDSOCompraNROCPBTE: TStringField;
    CDSOCompraCODIGO: TStringField;
    CDSOCompraNOMBRE: TStringField;
    CDSOCompraRAZONSOCIAL: TStringField;
    CDSOCompraFECHA: TSQLTimeStampField;
    CDSOCompraTOTAL: TFMTBCDField;
    dbgOCompra: TJvDBGrid;
    procedure dbgOCompraDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgOCompraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgOCompraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOCompraNuevas: TFormOCompraNuevas;

implementation

uses UOrdenCompra,UDMain_FD;

{$R *.DFM}

procedure TFormOCompraNuevas.dbgOCompraDblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormOrdenCompra)) Then
    FormOrdenCompra:=TFormOrdenCompra.Create(Application);
  FormOrdenCompra.Modo:='N';
  FormOrdenCompra.lbModo.Caption:='En Modo de Consulta';
  FormOrdenCompra.DatoNew   :=CDSOCompraID_OC.AsString;
  FormOrdenCompra.TipoCpbte :='OC';
  FormOrdenCompra.Recuperar.Execute;
end;

procedure TFormOCompraNuevas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormOCompraNuevas.FormCreate(Sender: TObject);
begin
  inherited;
  CDSOCompra.Close;
  CDSOCompra.Open;
  AutoSize:=True;

end;

procedure TFormOCompraNuevas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOCompraNuevas:=nil;
end;

procedure TFormOCompraNuevas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOCompra.Close;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.IndexName:='';
  CDSOCompra.Open;
  dbgOCompra.Width:=dbgOCompra.Width+1;
  dbgOCompra.Width:=dbgOCompra.Width-1;
end;

procedure TFormOCompraNuevas.FormActivate(Sender: TObject);
begin
  inherited;
  CDSOCompra.Close;
  CDSOCompra.Open;
end;

procedure TFormOCompraNuevas.dbgOCompraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
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

procedure TFormOCompraNuevas.dbgOCompraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (x>dbgOCompra.Left+5) and (x<dbgOCompra.Left+dbgOCompra.Width-5) and (y>dbgOCompra.Top) and (y<dbgOCompra.Top+16) Then
    sbEstado.SimpleText:=' Haciendo clik sobre el titulo se ordenan por ese Nombre'
  else
    sbEstado.SimpleText:='';

end;

end.
