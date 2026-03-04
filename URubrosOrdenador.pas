unit URubrosOrdenador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  System.ImageList;

type
  TFormRubroOrdenador = class(TFormABMBase)
    QRubros: TFDQuery;
    QRubrosCODIGO_RUBRO: TStringField;
    QRubrosDETALLE_RUBRO: TStringField;
    QRubrosCONTROL_RUBRO: TStringField;
    QRubrosFUERA_PROMO: TStringField;
    QRubrosORDEN: TIntegerField;
    QRub: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    ArmarLista: TAction;
    lwLista: TListView;
    GuardarOrden: TAction;
    btReset: TBitBtn;
    ReOrdenar: TAction;
    procedure RecuperarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ArmarListaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure lwListaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lwListaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GuardarOrdenExecute(Sender: TObject);
    procedure ReOrdenarExecute(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
    codigo   : String;
    Lista    : TListItem;

  end;

 // TPlainDragControlObject = class(TDragControlObject)
 // protected
//    function GetDragImages:  TDragImageList; override;
//   end;

var
  FormRubroOrdenador: TFormRubroOrdenador;

implementation

uses UDMain_FD;

{$R *.dfm}

//function TPlainDragControlObject.GetDragImages: TDragImageList;
//var
//  images : TDragImageList;
//begin
//  images := TDragImageList.create;
//  // ToDo: add images - how the drag object will look like
//  Result := images; // you can return Nil here if you want just the drag cursor with no image at all
//end;

procedure TFormRubroOrdenador.BuscarExecute(Sender: TObject);
begin
 // inherited;
  Recuperar.Execute;
  QRubros.First;
  while Not(QRubros.Eof) do
    begin
      Lista:=lwLista.Items.Add;
      Lista.SubItems.Add(QRubrosCODIGO_RUBRO.ASString);
      Lista.SubItems.Add(QRubrosDETALLE_RUBRO.ASString);
      QRubros.Next;
    end;
//                   Lista.SubItems.Add(Tipo);
//

end;

procedure TFormRubroOrdenador.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormRubroOrdenador.ArmarListaExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  lwLista.Clear;
  QRubros.First;
  while Not(QRubros.Eof) do
    begin
      Lista:=lwLista.Items.Add;
      Lista.SubItems.Add(QRubrosCODIGO_RUBRO.ASString);
      Lista.SubItems.Add(QRubrosDETALLE_RUBRO.ASString);
      QRubros.Next;
   end;

end;

procedure TFormRubroOrdenador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  GuardarOrden.Execute;
  Action:=caFree;
end;

procedure TFormRubroOrdenador.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Recuperar.Execute;
  ArmarLista.Execute;
end;

procedure TFormRubroOrdenador.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRubroOrdenador:=nil;
end;

procedure TFormRubroOrdenador.GuardarOrdenExecute(Sender: TObject);
var
  Seleccionados: TStringList;
  i: Integer;
  Orden:Integer;
begin
  Orden:=1;
  for i := 0 to lwLista.Items.Count - 1 do
    begin
      QRub.Close;
      QRub.ParamByName('orden').Value :=Orden;
      QRub.ParamByName('codigo').Value:=lwLista.Items[i].SubItems[0];
      QRub.ExecSQL;
      QRub.Close;
      Orden:=Orden+1;
    end;
end;

procedure TFormRubroOrdenador.lwListaDragDrop(Sender, Source: TObject; X,
  Y: Integer);
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

procedure TFormRubroOrdenador.lwListaDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := Sender = lwLista;
end;


procedure TFormRubroOrdenador.RecuperarExecute(Sender: TObject);
begin
  inherited;
  QRubros.Close;
  QRubros.Open;
end;

procedure TFormRubroOrdenador.ReOrdenarExecute(Sender: TObject);
begin
  inherited;
  QRubros.IndexFieldNames:='CODIGO_RUBRO';
  ArmarLista.Execute;
end;

end.
