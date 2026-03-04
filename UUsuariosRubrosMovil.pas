unit UUsuariosRubrosMovil;

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
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Datasnap.DBClient,StrUtils,
  Datasnap.Provider, IBGenerator, Vcl.Menus;

type
  TFormRubrosListaMovil = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tvUsuariosLista: TTreeView;
    dbgRubros: TJvDBGrid;
    QRubros: TFDQuery;
    QRubrosCODIGO_RUBRO: TStringField;
    QRubrosDETALLE_RUBRO: TStringField;
    QRubrosCONTROL_RUBRO: TStringField;
    QRubrosFUERA_PROMO: TStringField;
    DSRubros: TDataSource;
    QListasGralUsuarios: TFDQuery;
    QListasGralUsuariosID: TIntegerField;
    QListasGralUsuariosID_USUARIO: TIntegerField;
    QListasGralUsuariosRUBRO: TStringField;
    DSPListaGralUsuarios: TDataSetProvider;
    CDSListaGralUsuarios: TClientDataSet;
    CDSListaGralUsuariosID: TIntegerField;
    CDSListaGralUsuariosID_USUARIO: TIntegerField;
    CDSListaGralUsuariosRUBRO: TStringField;
    QListaUsuario: TFDQuery;
    QListaUsuarioID: TIntegerField;
    QListaUsuarioID_USUARIO: TIntegerField;
    QListaUsuarioRUBRO: TStringField;
    QListaUsuarioMUESTRARUBRO: TStringField;
    DSPListaUsusario: TDataSetProvider;
    CDSListaUsuario: TClientDataSet;
    CDSListaUsuarioID: TIntegerField;
    CDSListaUsuarioID_USUARIO: TIntegerField;
    CDSListaUsuarioRUBRO: TStringField;
    CDSListaUsuarioMUESTRARUBRO: TStringField;
    DSListaUsuarios: TDataSource;
    QUsuario: TFDQuery;
    DSPUsuarios: TDataSetProvider;
    CDSUsuarios: TClientDataSet;
    DSUsuarios: TDataSource;
    QUsuarioNOMBRE: TStringField;
    QUsuarioID: TIntegerField;
    CDSUsuariosNOMBRE: TStringField;
    CDSUsuariosID: TIntegerField;
    ibgListaUser: TIBGenerator;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    procedure dbgRubrosEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgRubrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarExecute(Sender: TObject);
    procedure tvUsuariosListaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvUsuariosListaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvUsuariosListaGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvUsuariosListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Borrar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSListaGralUsuariosAfterPost(DataSet: TDataSet);
    procedure CDSListaGralUsuariosAfterDelete(DataSet: TDataSet);
    procedure CDSUsuariosAfterDelete(DataSet: TDataSet);
    procedure CDSUsuariosAfterPost(DataSet: TDataSet);
    procedure CDSListaUsuarioAfterPost(DataSet: TDataSet);
    procedure CDSListaUsuarioAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista:TStringList;
  end;

var
  FormRubrosListaMovil: TFormRubrosListaMovil;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormRubrosListaMovil.Borrar1Click(Sender: TObject);
var i,N:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode := tvUsuariosLista.Selected;//(X,Y); // Get target node
  if TargetNode.Level>0 then
    begin
      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));
      if pos('[',Nro)>0 then
        Nro      := AnsiRightStr( Nro, pos('[',Nro)-1 );  // Copy(Temp,1,pos(')',Temp)-1);
      Dato1:=Nro;

      i:=tvUsuariosLista.Selected.AbsoluteIndex;
      while tvUsuariosLista.Items[i].Level>0 do
        i:=i-1;
      TargetNode := tvUsuariosLista.Items[i];

      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

      CDSListaGralUsuarios.Close;
      CDSListaGralUsuarios.Open;

      Dato2:=Nro;//CDSCtasCajaNOMBRE.AsString;
      if CDSListaGralUsuarios.Locate('RUBRO;ID_usuario',VarArrayOf([Dato1,Dato2]),[]) Then
        begin
          CDSListaGralUsuarios.Delete;
          CDSListaGralUsuarios.ApplyUpdates(0);
          tvUsuariosLista.Selected.Delete;
          CDSListaGralUsuarios.Close;
          CDSListaGralUsuarios.Open;

         // Confirma.Execute;
        end;
  end;
end;

procedure TFormRubrosListaMovil.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin

  Nodo1 := NIL;
  CDSUsuarios.IndexFieldNames:='ID';
  CDSUsuarios.First;
  Lista.Clear;
  Screen.Cursor:=crHourGlass;
  tvUsuariosLista.AutoExpand:=False;
  tvUsuariosLista.Items.Clear;
  tvUsuariosLista.AutoExpand:=False;
  WHILE NOT (CDSUsuarios.Eof) DO
    BEGIN
      Lista.Add(CDSUsuariosNOMBRE.Value);
      Application.ProcessMessages;
      Nodo1 := tvUsuariosLista.Items.Add(NIL, CDSUsuariosNOMBRE.AsString+' ['+CDSUsuariosID.AsString+'] ');
      Nodo1.ImageIndex:=11;
      tvUsuariosLista.Selected := Nodo1;
      N := tvUsuariosLista.Selected.AbsoluteIndex;

      CDSListaUsuario.Close;
      CDSListaUsuario.Params.ParamByName('id').Value:=CDSUsuariosID.Value;
      CDSListaUsuario.Open;
      CDSListaUsuario.First;
      WHILE NOT (CDSListaUsuario.Eof) DO
        BEGIN
          Nodo1 := tvUsuariosLista.Items.AddChild( tvUsuariosLista.Items[N],CDSListaUsuarioMUESTRARUBRO.AsString+' ['+CDSListaUsuarioRUBRO.AsString+']' );
          Nodo1.ImageIndex:=12;
          tvUsuariosLista.Selected := Nodo1;
          CDSListaUsuario.Next;
        END;
      CDSUsuarios.Next;
    END;
  tvUsuariosLista.AutoExpand:=False;

  Screen.Cursor:=crDefault;
end;

procedure TFormRubrosListaMovil.CDSListaGralUsuariosAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSListaUsuario.State<>dsBrowse then
      CDSListaUsuario.Post;
    CDSListaUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormRubrosListaMovil.CDSListaGralUsuariosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSListaUsuario.State<>dsBrowse then
      CDSListaUsuario.Post;
    CDSListaUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormRubrosListaMovil.CDSListaUsuarioAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSListaUsuario.State<>dsBrowse then
      CDSListaUsuario.Post;
    CDSListaUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormRubrosListaMovil.CDSListaUsuarioAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSListaUsuario.State<>dsBrowse then
     CDSListaUsuario.Post;
    CDSListaUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormRubrosListaMovil.CDSUsuariosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSListaUsuario.State<>dsBrowse then
      CDSListaUsuario.Post;
    CDSListaUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormRubrosListaMovil.CDSUsuariosAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSListaUsuario.State<>dsBrowse then
     CDSListaUsuario.Post;
    CDSListaUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormRubrosListaMovil.dbgRubrosEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
   dbgRubros.DragMode:=dmManual;
end;

procedure TFormRubrosListaMovil.dbgRubrosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift=[ssAlt] then
    dbgRubros.DragMode:=dmAutomatic
  else
    dbgRubros.DragMode:=dmManual;
end;

procedure TFormRubrosListaMovil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormRubrosListaMovil.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize       := False;
  CDSListaUsuario.Open;
  QRubros.Open;
  CDSUsuarios.Open;
  Lista          := TStringList.Create;
end;

procedure TFormRubrosListaMovil.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRubrosListaMovil:=nil;
end;

procedure TFormRubrosListaMovil.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormRubrosListaMovil.tvUsuariosListaDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var i,N,id,reg:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  if dbgRubros.SelectedRows.Count>1 then
  for reg := 0 to dbgRubros.SelectedRows.Count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgRubros.DataSource.DataSet.GotoBookmark(Pointer(dbgRubros.SelectedRows.Items[reg]));
      {$ELSE}
        dbgRubros.DataSource.DataSet.GotoBookmark((dbgRubros.SelectedRows.Items[reg]));
      {$ENDIF}

      TargetNode := tvUsuariosLista.GetNodeAt(X,Y); // Get target node
      if TargetNode.Level=0 then
        begin
          i  := TargetNode.Index;
          Nro:= TargetNode.Text;
          Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
          Nro:=Trim(AnsiReplaceStr(Nro,']',''));

         // dbgListaPrecio.DataSource.DataSet.GotoBookmark(Pointer(dbgListaPrecio.SelectedRows.Items[id]));
          Dato1:=(Source as TJvDBGrid).DataSource.DataSet.FieldByName('CODIGO_RUBRO').AsString;//CDSCtasCajaID_CUENTA.AsString;
          Dato2:=Nro;//  (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsString; // Codigo de Deposito;
          Nodo1:=nil;
          CDSListaGralUsuarios.Close;
          CDSListaGralUsuarios.Open;
          if CDSListaGralUsuarios.Locate('rubro;id_usuario',VarArrayOf([Dato1,Dato2]),[])=False Then
            begin
              CDSListaUsuario.Append;
              CDSListaUsuarioID.Value         := ibgListaUser.IncrementFD(1);
              CDSListaUsuarioID_USUARIO.Value := StrToInt(Dato2);// ToInt(Lista[i]);
              CDSListaUsuarioRUBRO.Value      := Dato1;// (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsInteger;
              CDSListaUsuario.Post;
              n:=i;
              while tvUsuariosLista.Items[N].Level>0 do
                N:=n-1;
              Nodo1 := tvUsuariosLista.Items.AddChild(TargetNode,(Source as TJvDBGrid).DataSource.DataSet.FieldByName('DETALLE_RUBRO').AsString+' ['+Dato1+']' );
              Nodo1.ImageIndex:=12;
            end;
        end;
    end
  else
    begin
      TargetNode := tvUsuariosLista.GetNodeAt(X,Y); // Get target node
      if TargetNode.Level=0 then
        begin
          i  := TargetNode.Index;
          Nro:= TargetNode.Text;
          Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
          Nro:=Trim(AnsiReplaceStr(Nro,']',''));

         // dbgListaPrecio.DataSource.DataSet.GotoBookmark(Pointer(dbgListaPrecio.SelectedRows.Items[id]));
          Dato1:=(Source as TJvDBGrid).DataSource.DataSet.FieldByName('CODIGO_RUBRO').AsString;//CDSCtasCajaID_CUENTA.AsString;
          Dato2:=Nro;//  (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsString; // Codigo de Deposito;
          Nodo1:=nil;
          CDSListaGralUsuarios.Close;
          CDSListaGralUsuarios.Open;
          if CDSListaGralUsuarios.Locate('rubro;id_usuario',VarArrayOf([Dato1,Dato2]),[])=False Then
            begin
              CDSListaUsuario.Append;
              CDSListaUsuarioID.Value         := ibgListaUser.IncrementFD(1);
              CDSListaUsuarioID_USUARIO.Value := StrToInt(Dato2);// ToInt(Lista[i]);
              CDSListaUsuarioRUBRO.Value      := Dato1;// (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsInteger;
              CDSListaUsuario.Post;
              n:=i;
              while tvUsuariosLista.Items[N].Level>0 do
                N:=n-1;
              Nodo1 := tvUsuariosLista.Items.AddChild(TargetNode,(Source as TJvDBGrid).DataSource.DataSet.FieldByName('DETALLE_RUBRO').AsString+' ['+Dato1+']' );
              Nodo1.ImageIndex:=11;
            end;
        end;
    end;
  dbgRubros.Refresh;
  dbgRubros.DragMode:=dmManual;
  CDSListaGralUsuarios.Close;
end;

procedure TFormRubrosListaMovil.tvUsuariosListaDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
  if (Source is TDBGrid ) then
    Accept:=True;

  Nodo:=tvUsuariosLista.Selected;
//  if Nodo.Level>0 then
//    Accept:=False;

  if (y < 14) then {On the upper edge - should scroll up }
    SendMessage(tvUsuariosLista.Handle, WM_VSCROLL, SB_LINEUP, 0)
  else
    if (tvUsuariosLista.Height - y < 14) then { On the lower edge - should scroll down }
      SendMessage(tvUsuariosLista.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
  //lbNivel.Caption:='Level:'+IntToStr(Nodo.Level)+'..Y:'+IntToStr(y);

end;

procedure TFormRubrosListaMovil.tvUsuariosListaGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormRubrosListaMovil.tvUsuariosListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    begin
      key:=VK_OEM_CLEAR;
      Borrar1.Click;
    end;
end;

end.
