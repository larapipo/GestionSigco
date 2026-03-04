unit UOCompraImpresion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls,Buttons,
  StdCtrls, ToolWin, ExtCtrls, DBClient, Provider, ImgList, JvExControls,
  JvGradient, JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, Vcl.Grids, Vcl.DBGrids, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormOCompraImpresion = class(TFormABMBase)
    dbgOCompra: TDBGrid;
    DSCompra: TDataSource;
    DSPOCompra: TDataSetProvider;
    CDSOCompra: TClientDataSet;
    QOCompra: TFDQuery;
    CDSOCompraID_OC: TIntegerField;
    CDSOCompraTIPOCPBTE: TStringField;
    CDSOCompraCLASECPBTE: TStringField;
    CDSOCompraNROCPBTE: TStringField;
    CDSOCompraCODIGO: TStringField;
    CDSOCompraNOMBRE: TStringField;
    CDSOCompraRAZONSOCIAL: TStringField;
    CDSOCompraFECHA: TSQLTimeStampField;
    CDSOCompraTOTAL: TFloatField;
    procedure dbgOCompraDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgOCompraTitleClick(Column: TColumn);
    procedure dbgOCompraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOCompraImpresion: TFormOCompraImpresion;

implementation

uses UOrdenCompra;

{$R *.DFM}

procedure TFormOCompraImpresion.dbgOCompraDblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormOrdenCompra)) Then
    FormOrdenCompra:=TFormOrdenCompra.Create(Application);
  FormOrdenCompra.Modo:='I';
  FormOrdenCompra.lbModo.Caption:='Impresión de Autorizadas';
  FormOrdenCompra.DatoNew   :=CDSOCompraID_OC.AsString;
  FormOrdenCompra.TipoCpbte :='OC';
  FormOrdenCompra.Show;
  FormOrdenCompra.BringToFront;
  FormOrdenCompra.Recuperar.Execute;
  formordenCompra.Imprimir.Execute;

end;

procedure TFormOCompraImpresion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSOCompra.Close;
  Action:=caFree;
end;

procedure TFormOCompraImpresion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOCompraImpresion:=nil;
end;

procedure TFormOCompraImpresion.FormCreate(Sender: TObject);
begin
  inherited;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.Close;
  CDSOCompra.Open;
  AutoSize:=True;
end;

procedure TFormOCompraImpresion.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOCompra.Close;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.IndexName:='';
  CDSOCompra.Open;
  dbgOCompra.Width:=dbgOCompra.Width+1;
  dbgOCompra.Width:=dbgOCompra.Width-1;
end;

procedure TFormOCompraImpresion.FormActivate(Sender: TObject);
begin
  inherited;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.Close;
  CDSOCompra.OPen;
end;

procedure TFormOCompraImpresion.dbgOCompraTitleClick(Column: TColumn);
var campo:string;
begin
  inherited;
 try
    Campo := Column.FieldName;
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

procedure TFormOCompraImpresion.dbgOCompraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (x>dbgOCompra.Left+5) and (x<dbgOCompra.Left+dbgOCompra.Width-5) and (y>dbgOCompra.Top) and (y<dbgOCompra.Top+16) Then
    sbEstado.SimpleText:=' Haciendo clik sobre el titulo se ordenan por ese Nombre'
  else
    sbEstado.SimpleText:='';

end;

end.
