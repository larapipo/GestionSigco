unit UFiltroRubGastos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, FMTBcd, DB, SqlExpr, DBClient, Provider, StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormFiltroRubGastos = class(TForm)
    pcCuentas: TPageControl;
    tsRubros: TTabSheet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    lwRubros: TListView;
    DSPRubros: TDataSetProvider;
    CDSRubros: TClientDataSet;
    CDSRubrosCODIGO: TStringField;
    CDSRubrosDETALLE: TStringField;
    Button1: TBitBtn;
    Label1: TLabel;
    QRubros: TFDQuery;
    QExiste: TFDQuery;
    QCodigosRubros: TFDQuery;
    QTablaClear: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    Fids:TStringList;
  public
    { Public declarations }
  published
     property Ids:TStringList read fIds write fIds;
  end;

var
 FormFiltroRubGastos : TFormFiltroRubGastos;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormFiltroRubGastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var lista:TListItem;
i:integer;
begin
  QTablaClear.Close;
  QTablaClear.ExecSQL;
  QTablaClear.Close;


  for I := 0 to lwRubros.Items.Count - 1 do
    begin
      lista:=lwRubros.Items[i];
      if lista.Checked then
        begin
          QCodigosRubros.Close;
          QCodigosRubros.ParamByName('codigo').Value:= Lista.SubItems.Strings[0];
          QCodigosRubros.ExecSQL;
          QCodigosRubros.Close;
        end;
    end;


  Action:=caFree;
end;

procedure TFormFiltroRubGastos.FormCreate(Sender: TObject);
begin
  AutoSize  :=False;
  fIds:= TStringList.Create;
end;

procedure TFormFiltroRubGastos.FormDestroy(Sender: TObject);
begin
  FormFiltroRubGastos:=nil;
end;

procedure TFormFiltroRubGastos.FormResize(Sender: TObject);
begin
  if FormFiltroRubGastos<>nil then
    if FormFiltroRubGastos.Width<>593 then
      FormFiltroRubGastos.Width:=593;
end;

procedure TFormFiltroRubGastos.FormShow(Sender: TObject);
var I:Integer;
Lista:TListItem;
begin
  lwRubros.Clear;
  CDSRubros.Close;
  CDSRubros.Open;
 // chklstCpbteVta.Clear;
  while Not(CDSRubros.Eof) do
    begin
      QExiste.Close;
      QExiste.ParamByName('codigo').Value:=CDSRubrosCODIGO.Value;
      QExiste.Open;
      Lista:=lwRubros.Items.Add;
      Lista.Checked:=Not(QExiste.IsEmpty);
      Lista.SubItems.Add(CDSRubros.FieldByName('Codigo').AsString);
      Lista.SubItems.Add(CDSRubros.FieldByName('Detalle').AsString);
      QExiste.Close;
      CDSRubros.Next;
    end;

end;

procedure TFormFiltroRubGastos.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
  for I := 0 to lwRubros.Items.Count - 1 do
    lwRubros.Items[i].Checked:=True;
end;

procedure TFormFiltroRubGastos.SpeedButton2Click(Sender: TObject);
var i:integer;
begin
  for I := 0 to lwRubros.Items.Count - 1 do
    lwRubros.Items[i].Checked:=False;
end;

end.
