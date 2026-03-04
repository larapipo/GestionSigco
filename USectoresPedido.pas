unit USectoresPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Datasnap.DBClient, Datasnap.Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Mask,
  Vcl.DBCtrls, cxTextEdit, cxDBEdit;

type
  TFormSectorPedidos = class(TFormABMBase)
    QSector: TFDQuery;
    QSectorID: TIntegerField;
    QSectorDETALLE: TStringField;
    DSPSector: TDataSetProvider;
    CDSSector: TClientDataSet;
    CDSSectorID: TIntegerField;
    CDSSectorDETALLE: TStringField;
    QUltimoCodigo2MAX: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    edID: TDBEdit;
    QBuscador: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    cxDBTextEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure CDSSectorNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSectorPedidos: TFormSectorPedidos;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormSectorPedidos.BorrarExecute(Sender: TObject);
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:=' select count(*) from plantilla_pedido_cab p where p.id_sector='+CDSSectorID.AsString;
  Q.Open;
  if Q.Fields[0].AsInteger<=0 then
    inherited
  else
   ShowMessage('Accion no Permitida... item en uso..');
  Q.Close;
  FreeAndNil(Q);

end;

procedure TFormSectorPedidos.BuscarExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorBase.Data.Close;
  ComBuscadorBase.Data.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=ComBuscadorBase.Id;
      Recuperar.Execute;
    end;
  ComBuscadorBase.Data.Close;
end;

procedure TFormSectorPedidos.CDSSectorNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSSectorID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSSectorID.Value:=1;
  QUltimoCodigo2.Close;

end;

procedure TFormSectorPedidos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSSectorID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormSectorPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormSectorPedidos.FormCreate(Sender: TObject);
begin
  inherited;
  AddClientDataSet(CDSSector,DSPSector);
  CDSSector.Open;
end;

procedure TFormSectorPedidos.FormDestroy(Sender: TObject);
begin
  inherited;
   FormSectorPedidos:=nil;
end;

procedure TFormSectorPedidos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSSector.Close;
  CDSSector.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSSector.Open;
end;

end.
