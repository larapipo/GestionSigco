unit USeccionCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.DB, Datasnap.Provider, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  AdvCustomControl, AdvTreeViewBase, AdvTreeViewData, AdvCustomTreeView,
  AdvTreeView, AdvCheckedTreeView, Vcl.ComCtrls, AdvCheckTreeView, AdvGrid,
  AsgLinks, System.Actions, Vcl.ActnList,System.StrUtils;

type
  TFormSeccionCategorias = class(TForm)
    Panel1: TPanel;
    btAceptar: TBitBtn;
    BitBtn2: TBitBtn;
    CDSSeccion: TClientDataSet;
    DSPSeccion: TDataSetProvider;
    DSSeccion: TDataSource;
    QSeccion: TFDQuery;
    QSeccionID: TIntegerField;
    QMaxID: TFDQuery;
    CDSSeccionID: TIntegerField;
    QSeccionDETALLE: TStringField;
    CDSSeccionDETALLE: TStringField;
    QSeccionPARENT: TIntegerField;
    CDSSeccionPARENT: TIntegerField;
    ActionList1: TActionList;
    GenerarTw: TAction;
    LeerSelecionados: TAction;
    mSeleccionados: TMemo;
    Button1: TButton;
    tvSecciones: TAdvCheckTreeView;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSSeccionAfterPost(DataSet: TDataSet);
    procedure CDSSeccionNewRecord(DataSet: TDataSet);
    procedure CDSSeccionAfterDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure GenerarTwExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LeerSelecionadosExecute(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure tvSeccionesNodeCheckedChanged(Sender: TObject; Node: TTreeNode;
      NewState: Boolean);

  private
    FItem:String;
    procedure AgregarItem(Parent: Integer; Nodo: TTreeNode);

    { Private declarations }
  public
    { Public declarations }
  published
    property Item:string  read FItem write FItem;
  end;

var
  FormSeccionCategorias: TFormSeccionCategorias;

implementation

USES UDMain_FD;
{$R *.dfm}

/////////// aca lleno el treeview ///////////////////////////////////
procedure TFormSeccionCategorias.AgregarItem(Parent:Integer;Nodo:TTreeNode);
var Nodoh:TTreeNode;
  q:TFDQuery;
begin
  q:=TFDQuery.Create(nil);
  q.Connection := DMMain_FD.fdcGestion;
  q.SQL.Text   := 'select * from PLU_SECCION where parent='+IntToStr(parent)+' order by id asc';
  Q.Open;
  q.First;
  while not(Q.Eof) do
    begin
       Nodoh := tvSecciones.Items.AddChild(Nodo,'['+Q.FieldByName('ID').AsString+']   '+   Q.FieldByName('DETALLE').AsString);
       if Pos(Q.FieldByName('ID').AsString,FItem)>0 then
         tvSecciones.Checked[Nodoh]:=True;
       AgregarItem(Q.FieldByName('ID').Value,nodoh);
       Q.Next;
    end;
  Q.Close;
  FreeAndNil(q);
end;

procedure TFormSeccionCategorias.GenerarTwExecute(Sender: TObject);
var Nodo:TTreeNode;
begin
  CDSSeccion.Close;
  CDSSeccion.Open;
  CDSSeccion.First;
  while not(CDSSeccion.Eof) do
    begin
      Nodo:= tvSecciones.Items.Add(nil,'['+CDSSeccionID.AsString+']   '+CDSSeccionDETALLE.Value);
//      if AnsiMatchText(CDSSeccionID.AsString,FItem) then
      if Pos(CDSSeccionID.AsString,FItem)>0 then
        tvSecciones.Checked[Nodo]:=True;
      Nodo.Expand(True);

      AgregarItem(CDSSeccionID.Value,Nodo);
      CDSSeccion.Next;
    end;
end;

////////////////////////////////////////////////////////////////////////////////

procedure TFormSeccionCategorias.btAceptarClick(Sender: TObject);
var Nodo:TTreeNode;
X1,i:Integer;
begin
  FItem:='';
  for i := 0 to tvSecciones.Items.Count - 1 do
    begin
      Nodo:=tvSecciones.Items[i];
      if tvSecciones.Checked[Nodo] Then
        begin
          x1:=Pos(']',Nodo.Text)-2;
          if FItem='' then
            FItem:=Copy(Nodo.Text,2,x1)
          else FItem:=FItem+','+Copy(Nodo.Text,2,x1);
        end;
    end;
//ShowMessage(fitem);
end;

procedure TFormSeccionCategorias.CDSSeccionAfterDelete(DataSet: TDataSet);
begin
  CDSSeccion.ApplyUpdates(0);
end;

procedure TFormSeccionCategorias.CDSSeccionAfterPost(DataSet: TDataSet);
begin
  CDSSeccion.ApplyUpdates(0);
end;


procedure TFormSeccionCategorias.CDSSeccionNewRecord(DataSet: TDataSet);
begin
  QMaxID.Close;
  QMaxID.Open;
  if QMaxID.Fields[0].AsString='' then
    CDSSeccionID.Value:=1
  else
    CDSSeccionID.Value:= QMaxID.Fields[0].AsInteger + 1;
  QMaxID.Close;
end;


procedure TFormSeccionCategorias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSSeccion.Close;
  Action:=caFree;
end;

procedure TFormSeccionCategorias.FormCreate(Sender: TObject);
begin
  AutoSize:=fALSE;
  CDSSeccion.Close;
  CDSSeccion.Open;
end;

procedure TFormSeccionCategorias.FormDestroy(Sender: TObject);
begin
 FormSeccionCategorias:=nil;
end;

procedure TFormSeccionCategorias.FormResize(Sender: TObject);
begin
  if FormSeccionCategorias<>nil then
    if FormSeccionCategorias.Width<469 then
      FormSeccionCategorias.Width:=469
    else
  if FormSeccionCategorias.Width>750 then
    FormSeccionCategorias.Width:=750;
end;


procedure TFormSeccionCategorias.FormShow(Sender: TObject);
begin
  GenerarTw.Execute;
end;


procedure TFormSeccionCategorias.LeerSelecionadosExecute(Sender: TObject);
var
  i: Integer;
  Seleccionados: TStringList;
  Nodo:TTreeNode;
begin
  mSeleccionados.Clear;
  mSeleccionados.Lines.Clear;
  Seleccionados := TStringList.Create;
  for i := 0 to tvSecciones.Items.Count - 1 do

    begin
      Nodo:=tvSecciones.Items[i];
      if tvSecciones.Checked[Nodo] Then
        begin
          Seleccionados.Add(Nodo.Text );
          mSeleccionados.Lines.Add(Nodo.text);
        end;
    end;
  Seleccionados.Free;
end;


procedure TFormSeccionCategorias.tvSeccionesNodeCheckedChanged(Sender: TObject;
  Node: TTreeNode; NewState: Boolean);
var
   I: Integer;
   NodoPadre,NodoAbuelo:TTreeNode;
begin
    if Node.HasChildren then
      begin
        for I := 0 to Node.Count - 1 do
          begin
            tvsecciones.Checked[Node[I]] := tvSecciones.Checked[Node];
            if Node[I].HasChildren then
              tvSeccionesNodeCheckedChanged(nil, Node[I], NewState);
          end;
      end
    else
      begin
        if Node.Parent<>nil then
          begin
            NodoPadre:= Node.Parent;
            tvSecciones.Checked[NodoPadre]:=True;
            if NodoPadre.Parent<>nil  then
              begin
                NodoAbuelo:=NodoPadre.Parent;
                tvSecciones.Checked[NodoAbuelo]:=True;
              end;
          end;
      end;


end;



end.
