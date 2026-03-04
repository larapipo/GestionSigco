unit URferenciasTCPlataformas;

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
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormRef_TCPlataformas = class(TFormABMBase)
    QReferencias: TFDQuery;
    QReferenciasTARJETA: TStringField;
    QReferenciasTC_GESTION: TIntegerField;
    QTarjetas: TFDQuery;
    QTarjetasID_TC: TIntegerField;
    QTarjetasDESCRIPCION: TStringField;
    QTarjetasVISIBLE: TStringField;
    QReferenciasMUESTRATARJETA: TStringField;
    dbgReferencias: TDBGrid;
    DSReferencias: TDataSource;
    QConceptos: TFDQuery;
    QArticulos_: TFDQuery;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    pnTarjetas: TPanel;
    pnConceptos: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgArticulos: TDBGrid;
    QConceptosCONCEPTO: TStringField;
    QConceptosCODIGO: TStringField;
    QConceptosDETALLE_STK: TStringField;
    DSConceptos: TDataSource;
    procedure QReferenciasAfterPost(DataSet: TDataSet);
    procedure QReferenciasAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgArticulosEditButtonClick(Sender: TObject);
    procedure QConceptosCODIGOSetText(Sender: TField; const Text: string);
    procedure FormShow(Sender: TObject);
    procedure QConceptosAfterPost(DataSet: TDataSet);
    procedure QConceptosAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRef_TCPlataformas: TFormRef_TCPlataformas;

implementation

uses UDMain_fd, UBuscadorArticulos;

{$R *.dfm}

procedure TFormRef_TCPlataformas.dbgArticulosEditButtonClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(self);
  FormBuscadorArticulos.Param1      := 1;
  FormBuscadorArticulos.Param2      := 3;
  FormBuscadorArticulos.Param3      := 3;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.ShowModal;
  if formBuscadorArticulos.Codigo<>'' then
    begin
      if QConceptos.State=dsBrowse  then
        QConceptos.Edit;
      QConceptosCODIGOSetText(QConceptosCODIGO,formBuscadorArticulos.Codigo);
    end;


end;

procedure TFormRef_TCPlataformas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QTarjetas.Close;
  QReferencias.Close;
  QConceptos.Close;
  Action:=caFree;
end;

procedure TFormRef_TCPlataformas.FormCreate(Sender: TObject);
begin
  inherited;
  QTarjetas.Open;
  QReferencias.Open;
end;

procedure TFormRef_TCPlataformas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRef_TCPlataformas:=nil;
end;

procedure TFormRef_TCPlataformas.FormShow(Sender: TObject);
begin
  inherited;
  qconceptos.Close;
  QConceptos.Open;
end;

procedure TFormRef_TCPlataformas.QConceptosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  QConceptos.ApplyUpdates(0);
end;

procedure TFormRef_TCPlataformas.QConceptosAfterPost(DataSet: TDataSet);
begin
  inherited;
  QConceptos.ApplyUpdates(0);
end;

procedure TFormRef_TCPlataformas.QConceptosCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  QConceptosDETALLE_STK.AsString:=DMMain_FD.GetDetalleArticulo(Sender.AsString);
end;

procedure TFormRef_TCPlataformas.QReferenciasAfterDelete(DataSet: TDataSet);
begin
  inherited;
  QReferencias.ApplyUpdates(0);
end;

procedure TFormRef_TCPlataformas.QReferenciasAfterPost(DataSet: TDataSet);
begin
  inherited;
  QReferencias.ApplyUpdates(0);
end;

end.
