unit UBuscadorJuridicciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit;

type
  TFormBuscadorJuridicciones = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    QJuridiccion: TFDQuery;
    QJuridiccionID: TIntegerField;
    QJuridiccionID_JURIDICION: TIntegerField;
    QJuridiccionLOCALIDAD: TStringField;
    QJuridiccionPROVINCIA: TStringField;
    QJuridiccionPOR_DEFECTO: TStringField;
    DSPJuridiccion: TDataSetProvider;
    CDSJuridiccion: TClientDataSet;
    CDSJuridiccionID: TIntegerField;
    CDSJuridiccionID_JURIDICION: TIntegerField;
    CDSJuridiccionLOCALIDAD: TStringField;
    CDSJuridiccionPROVINCIA: TStringField;
    CDSJuridiccionPOR_DEFECTO: TStringField;
    DSJuridiccion: TDataSource;
    JvDBFindEdit1: TJvDBFindEdit;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
  published
    property id:Integer read Fid write fid;
  end;

var
  FormBuscadorJuridicciones: TFormBuscadorJuridicciones;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorJuridicciones.DBGrid1DblClick(Sender: TObject);
begin
  FId:=CDSJuridiccionID.Value;
  ModalResult:=mrOk;
end;

procedure TFormBuscadorJuridicciones.FormResize(Sender: TObject);
begin
  if FormBuscadorJuridicciones<>nil then
    if FormBuscadorJuridicciones.Width<>443 then
      FormBuscadorJuridicciones.Width:=443;
end;

procedure TFormBuscadorJuridicciones.FormShow(Sender: TObject);
begin
  CDSJuridiccion.Close;
  CDSJuridiccion.Open;
end;

end.
