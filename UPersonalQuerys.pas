unit UPersonalQuerys;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, atMetaSQL, atDatabase, atCustomDatabase,
  atVisualQuery, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, atFireDACDatabase, AdvUtil,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid;

type
  TFormPersonalQuerys = class(TFormABMBase)
    atVisualQuery1: TatVisualQuery;
    atMetaSQL1: TatMetaSQL;
    atFireDACDatabase: TatFireDACDatabase;
    Panel2: TPanel;
    DBAdvGrid1: TDBAdvGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPersonalQuerys: TFormPersonalQuerys;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormPersonalQuerys.FormCreate(Sender: TObject);
begin
  inherited;
  //atMetaSQL1:=atVisualQuery1.MetaSqlDef.MetaSql.SQL;//:='Select * from clientes';
end;

end.
