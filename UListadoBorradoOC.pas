unit UListadoBorradoOC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider, Vcl.Menus;

type
  TFormListadoBorradoOC = class(TFormABMBase)
    QBorradorOC: TFDQuery;
    DSPBorradorOC: TDataSetProvider;
    CDSBorradorOC: TClientDataSet;
    DSBorradoOC: TDataSource;
    dbgOrdenesDeCompra: TDBGrid;
    CDSBorradorOCID_OC: TIntegerField;
    CDSBorradorOCTIPOCPBTE: TStringField;
    CDSBorradorOCCLASECPBTE: TStringField;
    CDSBorradorOCNROCPBTE: TStringField;
    CDSBorradorOCFECHA_RECEPCION: TSQLTimeStampField;
    CDSBorradorOCCODIGO: TStringField;
    CDSBorradorOCNOMBRE: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    PopupMenu1: TPopupMenu;
    BorrarOC: TAction;
    QBorrar: TFDQuery;
    BorrarOC1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgOrdenesDeCompraDblClick(Sender: TObject);
    procedure BorrarOCExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoBorradoOC: TFormListadoBorradoOC;

implementation

{$R *.dfm}

uses UOrdenCompra;

procedure TFormListadoBorradoOC.BorrarOCExecute(Sender: TObject);
begin
  inherited;
  QBorrar.Close;
  QBorrar.ParamByName('id').Value:=CDSBorradorOCID_OC.Value;
  QBorrar.ExecSQL;
  QBorrar.Close;
  CDSBorradorOC.Close;
  CDSBorradorOC.Open;

end;

procedure TFormListadoBorradoOC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBorradorOC.Close;
  CDSBorradorOC.Open;
end;

procedure TFormListadoBorradoOC.dbgOrdenesDeCompraDblClick(Sender: TObject);
begin
  inherited;
  if CDSBorradorOCID_OC.AsString<>'' then
    begin
      if Not(Assigned(FormOrdenCompra)) Then
        FormOrdenCompra:=TFormOrdenCompra.Create(Application);
      FormOrdenCompra.Modo:='R';
      FormOrdenCompra.lbModo.Caption:='En Modo Recepción';
      FormOrdenCompra.DatoNew   :=CDSBorradorOCID_OC.AsString;
      FormOrdenCompra.TipoCpbte :='OC';
      FormOrdenCompra.Show;
      FormOrdenCompra.BringToFront;
      FormOrdenCompra.Recuperar.Execute;
    end;
end;

procedure TFormListadoBorradoOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoBorradoOC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoBorradoOC:=nil;
end;

procedure TFormListadoBorradoOC.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
