unit UOdenTarjetasC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Generics.Collections, Vcl.ComCtrls;

type
  TFormOrdenTC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QTarjetas: TFDQuery;
    QTarjetasID_TC: TIntegerField;
    QTarjetasDESCRIPCION: TStringField;
    QTarjetasORDEN: TIntegerField;
    DSTarjetas: TDataSource;
    lwLista: TListView;
    QGrabar: TFDQuery;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lwListaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lwListaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    codigo   : String;
    Lista    : TListItem;
    procedure GuardarOrden;
    { Public declarations }
  end;

var
  FormOrdenTC : TFormOrdenTC;

implementation

uses UDMain_FD;
{$R *.dfm}


procedure TFormOrdenTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  GuardarOrden;
end;

procedure TFormOrdenTC.FormResize(Sender: TObject);
begin
  if Width<>330 then
   Width:=330;
end;

procedure TFormOrdenTC.FormShow(Sender: TObject);
begin
  QTarjetas.Close;
  QTarjetas.Open;
  QTarjetas.First;
  while Not(QTarjetas.Eof) do
    begin
      Lista:=lwLista.Items.Add;
      Lista.SubItems.Add(QTarjetasDESCRIPCION.ASString);
      Lista.SubItems.Add(QTarjetasID_TC.ASString);
      QTarjetas.Next;
    end;
  //QTarjetas.IndexFieldNames:='ORDEN';
end;


procedure TFormOrdenTC.GuardarOrden;
var
  Seleccionados: TStringList;
  i: Integer;
  Orden:Integer;
begin
  Orden:=1;
  for i := 0 to lwLista.Items.Count - 1 do
    begin
      QGrabar.Close;
      QGrabar.ParamByName('orden').Value :=Orden;
      QGrabar.ParamByName('id').Value    :=lwLista.Items[i].SubItems[1];
      QGrabar.ExecSQL;
      QGrabar.Close;
      Orden:=Orden+1;
    end;
end;

procedure TFormOrdenTC.lwListaDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  DragItem, DropItem, CurrentItem, NextItem: TListItem;
begin
  if Sender = Source then
    with TListView(Sender) do
    begin
      DropItem    := GetItemAt(X, Y);
      CurrentItem := Selected;
      while CurrentItem <> nil do
      begin
        NextItem := GetNextItem(CurrentItem, SdAll, [IsSelected]);
        if DropItem = nil then DragItem := Items.Add
        else
          DragItem := Items.Insert(DropItem.Index);
        DragItem.Assign(CurrentItem);
        CurrentItem.Free;
        CurrentItem := NextItem;
      end;
    end;
end;

procedure TFormOrdenTC.lwListaDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Sender = lwLista;
end;

end.
