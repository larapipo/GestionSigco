unit UUsuariosRubStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.ComCtrls, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvLabel, JvDBControls, JvExControls,
  JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, IBGenerator,
  Datasnap.DBClient, Datasnap.Provider, Vcl.Menus,StrUtils, System.ImageList;

type
  TFormUsuarioRubroLista = class(TFormABMBase)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    tvUsuariosLista: TTreeView;
    dbgRubros: TJvDBGrid;
    QListaUsuario: TFDQuery;
    DSPListaUsusario: TDataSetProvider;
    CDSListaUsuario: TClientDataSet;
    DSListaUsuarios: TDataSource;
    ibgListaUser: TIBGenerator;
    QUsuario: TFDQuery;
    QUsuarioREAL_NAME: TStringField;
    QUsuarioUSER_ID: TIntegerField;
    DSUsuarios: TDataSource;
    QRubros: TFDQuery;
    DSRubros: TDataSource;
    QRubrosCODIGO_RUBRO: TStringField;
    QRubrosDETALLE_RUBRO: TStringField;
    QRubrosCONTROL_RUBRO: TStringField;
    QRubrosFUERA_PROMO: TStringField;
    QListaUsuarioID: TIntegerField;
    QListaUsuarioID_USUARIO: TIntegerField;
    QListaUsuarioRUBRO: TStringField;
    QListaUsuarioMUESTRARUBRO: TStringField;
    CDSListaUsuarioID: TIntegerField;
    CDSListaUsuarioID_USUARIO: TIntegerField;
    CDSListaUsuarioRUBRO: TStringField;
    CDSListaUsuarioMUESTRARUBRO: TStringField;
    QListasGralUsuarios: TFDQuery;
    DSPListaGralUsuarios: TDataSetProvider;
    CDSListaGralUsuarios: TClientDataSet;
    PasarTodo: TAction;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    QListasGralUsuariosID: TIntegerField;
    QListasGralUsuariosID_USUARIO: TIntegerField;
    QListasGralUsuariosRUBRO: TStringField;
    CDSListaGralUsuariosID: TIntegerField;
    CDSListaGralUsuariosID_USUARIO: TIntegerField;
    CDSListaGralUsuariosRUBRO: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    DSPUsuarios: TDataSetProvider;
    CDSUsuarios: TClientDataSet;
    CDSUsuariosREAL_NAME: TStringField;
    CDSUsuariosUSER_ID: TIntegerField;
    procedure tvUsuariosListaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvUsuariosListaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvUsuariosListaGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvUsuariosListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Borrar1Click(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSListaUsuarioAfterDelete(DataSet: TDataSet);
    procedure CDSListaUsuarioAfterPost(DataSet: TDataSet);
    procedure CDSListaGralUsuariosAfterDelete(DataSet: TDataSet);
    procedure CDSListaGralUsuariosAfterPost(DataSet: TDataSet);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgRubros_VCLEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgRubrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgRubrosEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     Lista:TStringList;
  end;

var
  FormUsuarioRubroLista: TFormUsuarioRubroLista;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormUsuarioRubroLista.Borrar1Click(Sender: TObject);
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
      if CDSListaGralUsuarios.Locate('RUBRO;ID_USUARIO',VarArrayOf([Dato1,Dato2]),[]) Then
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

procedure TFormUsuarioRubroLista.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin

  Nodo1 := NIL;
  CDSUsuarios.IndexFieldNames:='USER_ID';
  CDSUsuarios.First;
  Lista.Clear;
  Screen.Cursor:=crHourGlass;
  tvUsuariosLista.AutoExpand:=False;
  tvUsuariosLista.Items.Clear;
  tvUsuariosLista.AutoExpand:=False;
  WHILE NOT (CDSUsuarios.Eof) DO
    BEGIN
      Lista.Add(CDSUsuariosREAL_NAME.Value);
      Application.ProcessMessages;
      Nodo1 := tvUsuariosLista.Items.Add(NIL, CDSUsuariosREAL_NAME.AsString+' ['+CDSUsuariosUSER_ID.AsString+'] ');
      Nodo1.ImageIndex:=10;
      tvUsuariosLista.Selected := Nodo1;
      N := tvUsuariosLista.Selected.AbsoluteIndex;

      CDSListaUsuario.Close;
      CDSListaUsuario.Params.ParamByName('id').Value:=CDSUsuariosUSER_ID.Value;
      CDSListaUsuario.Open;
      CDSListaUsuario.First;
      WHILE NOT (CDSListaUsuario.Eof) DO
        BEGIN
          Nodo1 := tvUsuariosLista.Items.AddChild( tvUsuariosLista.Items[N],CDSListaUsuarioMUESTRARUBRO.AsString+' ['+CDSListaUsuarioRUBRO.AsString+']' );
          Nodo1.ImageIndex:=11;
          tvUsuariosLista.Selected := Nodo1;
          CDSListaUsuario.Next;
        END;
      CDSUsuarios.Next;
    END;
  tvUsuariosLista.AutoExpand:=False;

  Screen.Cursor:=crDefault;
end;

procedure TFormUsuarioRubroLista.CDSListaGralUsuariosAfterDelete(
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

procedure TFormUsuarioRubroLista.CDSListaGralUsuariosAfterPost(
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

procedure TFormUsuarioRubroLista.CDSListaUsuarioAfterDelete(DataSet: TDataSet);
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

procedure TFormUsuarioRubroLista.CDSListaUsuarioAfterPost(DataSet: TDataSet);
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

procedure TFormUsuarioRubroLista.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
end;

procedure TFormUsuarioRubroLista.dbgRubrosEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
  dbgRubros.DragMode:=dmManual;

end;

procedure TFormUsuarioRubroLista.dbgRubrosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Shift=[ssAlt] then
    dbgRubros.DragMode:=dmAutomatic
  else
    dbgRubros.DragMode:=dmManual;


end;

procedure TFormUsuarioRubroLista.dbgRubros_VCLEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
  dbgRubros.Refresh;
end;

procedure TFormUsuarioRubroLista.DSBaseStateChange(Sender: TObject);
begin
  //  inherited;
end;

procedure TFormUsuarioRubroLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormUsuarioRubroLista.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize       := False;
  CDSListaUsuario.Open;
  QRubros.Open;
  CDSUsuarios.Open;
  // Agrgo un usuario para la asignacion de rubro en los puntos de vta solo actua ahi..'
  CDSUsuarios.Append;
  CDSUsuariosUSER_ID.Value   :=-1;
  CDSUsuariosREAL_NAME.Value :='Puntos de Vta';
  CDSUsuarios.Post;
  Lista          := TStringList.Create;
end;

procedure TFormUsuarioRubroLista.FormDestroy(Sender: TObject);
begin
  inherited;
  FormUsuarioRubroLista:=nil;
end;

procedure TFormUsuarioRubroLista.FormResize(Sender: TObject);
begin
  inherited;
  if FormUsuarioRubroLista<>nil then
    if FormUsuarioRubroLista.Width<>863 then
      FormUsuarioRubroLista.Width:=863;

end;

procedure TFormUsuarioRubroLista.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormUsuarioRubroLista.RecuperarExecute(Sender: TObject);
begin
  inherited;
//  CDSListaUsuario.Close;
//  CDSListaUsuario.Params.ParamByName('id').Value:=dbcUsuarios.KeyValue;
//  CDSListaUsuario.Open;
end;

procedure TFormUsuarioRubroLista.tvUsuariosListaDragDrop(Sender,
  Source: TObject; X, Y: Integer);
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
              Nodo1.ImageIndex:=11;
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

procedure TFormUsuarioRubroLista.tvUsuariosListaDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
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

procedure TFormUsuarioRubroLista.tvUsuariosListaGetSelectedIndex(
  Sender: TObject; Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormUsuarioRubroLista.tvUsuariosListaKeyDown(Sender: TObject;
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
