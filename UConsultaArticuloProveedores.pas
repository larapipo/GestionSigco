unit UConsultaArticuloProveedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, ComCtrls,
  Buttons, ToolWin, ExtCtrls, JvComponentBase, ImgList,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, Provider, DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormConsultaArticuloProveedores = class(TFormABMBase)
    edDato: TEdit;
    dbgConsulta: TDBGrid;
    DSArticulos: TDataSource;
    SpeedButton1: TSpeedButton;
    Consultar: TAction;
    QArticulos: TFDQuery;
    CDSArticulos: TClientDataSet;
    DSPArticulos: TDataSetProvider;
    CDSArticulosCODIGO: TStringField;
    CDSArticulosCODIGO_PROVEEDOR: TStringField;
    CDSArticulosDETALLE: TStringField;
    CDSArticulosPRECIO: TFloatField;
    CDSArticulosCODIGO_PROVEE: TStringField;
    CDSArticulosNOMBRE: TStringField;
    CDSArticulosFECHA: TSQLTimeStampField;
    pnCab: TPanel;
    procedure ConsultarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDatoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaArticuloProveedores: TFormConsultaArticuloProveedores;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormConsultaArticuloProveedores.ConsultarExecute(
  Sender: TObject);
begin
  inherited;
  CDSArticulos.Close;
  CDSArticulos.Params.ParamByName('Dato').Value:=edDato.Text;
  CDSArticulos.Open;
  edDato.SetFocus;
  edDato.SelectAll;
end;

procedure TFormConsultaArticuloProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormConsultaArticuloProveedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConsultaArticuloProveedores:=nil;
end;

procedure TFormConsultaArticuloProveedores.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormConsultaArticuloProveedores.edDatoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=vk_return Then
   begin
     Consultar.Execute;
     edDato.SetFocus;
     edDato.SelectAll;
   end;
end;

procedure TFormConsultaArticuloProveedores.FormShow(Sender: TObject);
begin
  inherited;
  edDato.SetFocus;
  edDato.SelectAll;
end;

procedure TFormConsultaArticuloProveedores.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // inherited;

end;

procedure TFormConsultaArticuloProveedores.FormResize(Sender: TObject);
begin
  inherited;
  if FormConsultaArticuloProveedores<>nil then
    if FormConsultaArticuloProveedores.Width<>977 then
      FormConsultaArticuloProveedores.Width:=977;
end;

end.
