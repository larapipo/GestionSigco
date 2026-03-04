unit UListaPreciosUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, Grids, DBGrids,   StdCtrls,
  JvComponentBase, ImgList,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls, IBGenerator,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvDBLookup, SqlExpr, DBXCommon,
  System.Actions, JvAppStorage, JvAppIniStorage ,System.StrUtils,
  Vcl.Menus, JvExDBGrids, JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormListaPrecioUsuarios = class(TFormABMBase)
    DSPListaUsusario: TDataSetProvider;
    CDSListaUsuario: TClientDataSet;
    DSListaUsuarios: TDataSource;
    DSListas: TDataSource;
    CDSListaUsuarioID_LISTA: TIntegerField;
    CDSListaUsuarioMUESTRALISTA: TStringField;
    PasarTodo: TAction;
    CDSListaUsuarioID: TIntegerField;
    ibgListaUser: TIBGenerator;
    BorrarTodo: TAction;
    DSUsuarios: TDataSource;
    CDSListaUsuarioID_USUARIO: TIntegerField;
    PageControl1: TPageControl;
    pgAsignacion: TTabSheet;
    Panel3: TPanel;
    Label4: TLabel;
    tvUsuariosLista: TTreeView;
    pgListado: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dbgListaUsuarios: TDBGrid;
    dbgListas: TDBGrid;
    dbcUsuarios: TJvDBLookupCombo;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    dbgListaPrecio: TJvDBGrid;
    Label5: TLabel;
    DSPListaGralUsuarios: TDataSetProvider;
    CDSListaGralUsuarios: TClientDataSet;
    CDSListaGralUsuariosID: TIntegerField;
    CDSListaGralUsuariosID_USUARIO: TIntegerField;
    CDSListaGralUsuariosID_LISTA: TIntegerField;
    QListaUsuario: TFDQuery;
    QListaUsuarioID: TIntegerField;
    QListaUsuarioID_USUARIO: TIntegerField;
    QListaUsuarioID_LISTA: TIntegerField;
    QListaUsuarioMUESTRALISTA: TStringField;
    QListas: TFDQuery;
    QListasID: TIntegerField;
    QListasNOMBRE: TStringField;
    QListasRECARGOBASE: TFloatField;
    QListasFECHA: TSQLTimeStampField;
    QListasPORDEFECTO: TStringField;
    QListasF_PAGO: TIntegerField;
    QListasUSO_ADMINISTRADOR: TStringField;
    QListasCLONADA: TStringField;
    QListasID_LISTA_CLONADA: TIntegerField;
    QListasCOEFICIENTE: TFloatField;
    QListasEXCLUSIVO_EFECTIVO: TStringField;
    QUsuarios: TFDQuery;
    QUsuariosREAL_NAME: TStringField;
    QUsuariosUSER_ID: TIntegerField;
    QListasGralUsuarios: TFDQuery;
    QListasGralUsuariosID: TIntegerField;
    QListasGralUsuariosID_USUARIO: TIntegerField;
    QListasGralUsuariosID_LISTA: TIntegerField;
    procedure PasarTodoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure dbcUsuariosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgListaUsuariosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgListaUsuariosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BorrarTodoExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSListaUsuarioAfterPost(DataSet: TDataSet);
    procedure CDSListaUsuarioAfterDelete(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure tvUsuariosListaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvUsuariosListaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvListasGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvUsuariosListaGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvUsuariosListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Borrar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    Lista:TStringList;
    { Public declarations }
  end;

var
  FormListaPrecioUsuarios: TFormListaPrecioUsuarios;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListaPrecioUsuarios.Borrar1Click(Sender: TObject);
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
      if CDSListaGralUsuarios.Locate('ID_LISTA;ID_USUARIO',VarArrayOf([Dato1,Dato2]),[]) Then
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

procedure TFormListaPrecioUsuarios.BorrarTodoExecute(Sender: TObject);
begin
  inherited;
  while not(CDSListaUsuario.eof) Do
  CDSListaUsuario.Delete;
end;

procedure TFormListaPrecioUsuarios.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin
  Nodo1 := NIL;
  QUsuarios.First;
  Lista.Clear;
  Screen.Cursor:=crHourGlass;
  tvUsuariosLista.AutoExpand:=False;
  tvUsuariosLista.Items.Clear;
  tvUsuariosLista.AutoExpand:=False;
  WHILE NOT (QUsuarios.Eof) DO
    BEGIN
      Lista.Add(QUsuariosREAL_NAME.Value);
      Application.ProcessMessages;
      Nodo1 := tvUsuariosLista.Items.Add(NIL, QUsuariosREAL_NAME.AsString+' ['+QUsuariosUSER_ID.AsString+'] ');
      Nodo1.ImageIndex:=10;
      tvUsuariosLista.Selected := Nodo1;
      N := tvUsuariosLista.Selected.AbsoluteIndex;
      CDSListaUsuario.Close;
      CDSListaUsuario.Params.ParamByName('id').Value:=QUsuariosUSER_ID.Value;
      CDSListaUsuario.Open;
      CDSListaUsuario.First;
      WHILE NOT (CDSListaUsuario.Eof) DO
        BEGIN
          Nodo1 := tvUsuariosLista.Items.AddChild( tvUsuariosLista.Items[N],CDSListaUsuarioMUESTRALISTA.AsString+' ['+CDSListaUsuarioID_LISTA.AsString+']' );
          Nodo1.ImageIndex:=11;
          tvUsuariosLista.Selected := Nodo1;
          CDSListaUsuario.Next;
        END;
      QUsuarios.Next;
    END;
   tvUsuariosLista.AutoExpand:=False;


//**** Listass *****

//  tvListas.AutoExpand:=False;
//  tvListas.Items.Clear;
//  tvListas.AutoExpand:=False;
//  CDSLista.First;
//  WHILE NOT (CDSLista.Eof) DO
//    BEGIN
//      Application.ProcessMessages;
//      Nodo1 := tvListas.Items.Add(NIL, CDSListaNOMBRE.AsString+' ('+CDSListaID.AsString+')');
//      Nodo1.ImageIndex:=11;
//      tvListas.Selected := Nodo1;
//      CDSLista.Next;
//    END;
//   tvListas.AutoExpand:=False;
//

  Screen.Cursor:=crDefault;
end;

procedure TFormListaPrecioUsuarios.CancelarExecute(Sender: TObject);
begin
 //inherited;
  Recuperar.Execute;
//  CDSCompUsuario.Close;
end;

procedure TFormListaPrecioUsuarios.CDSListaUsuarioAfterDelete(
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

procedure TFormListaPrecioUsuarios.CDSListaUsuarioAfterPost(DataSet: TDataSet);
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

procedure TFormListaPrecioUsuarios.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSListaUsuario.State<>dsBrowse then
     CDSListaUsuario.Post;
    CDSListaUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
  Recuperar.Execute;
end;

procedure TFormListaPrecioUsuarios.dbcUsuariosClick(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;

procedure TFormListaPrecioUsuarios.dbgListaUsuariosDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
 inherited;
  if Not(dbcUsuarios.KeyValue=-1) and Not(VarIsNull(dbcUsuarios.KeyValue)) Then
    begin
      CDSlistaUsuario.Insert;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
         BEGIN
           CDSListaUsuarioID.Value           := ibgListaUser.IncrementFD(1);
           CDSListaUsuarioID_LISTA.Value     := FieldByName('Id').Value;
           CDSListaUsuarioMUESTRALISTA.Value := FieldByName('Nombre').Value;
           CDSListaUsuarioID_USUARIO.Value   := dbcUsuarios.KeyValue;
         END;
       CDSListaUsuario.Post;
    end
  eLSE
    ShowMessage('No hay Empleado seleccionado ... Verifique!!!')

end;

procedure TFormListaPrecioUsuarios.dbgListaUsuariosDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
 IF Source = dbgListas THEN
    accept := True
  ELSE
    Accept := False;
  if (CDSListaUsuario.Locate('id_Lista',(Source AS TDBGrid).DataSource.DataSet.FieldByName('Id').Value,[])) Then
    Accept:=False;
  if (dbcUsuarios.KeyValue=-1) or (VarIsNull(dbcUsuarios.KeyValue)) Then
    Accept:=False;

end;

procedure TFormListaPrecioUsuarios.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListaPrecioUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action:=caFree;
end;

procedure TFormListaPrecioUsuarios.FormCreate(Sender: TObject);
begin
 // inherited;
  AutoSize:=False;
  CDSListaUsuario.Open;
  QListas.Open;
  QUsuarios.Open;
  Lista:=TStringList.Create;
end;

procedure TFormListaPrecioUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListaPrecioUsuarios:=nil;
end;

procedure TFormListaPrecioUsuarios.FormResize(Sender: TObject);
begin
  inherited;
  if FormListaPrecioUsuarios<>nil then
    if FormListaPrecioUsuarios.Width<>842 then
      FormListaPrecioUsuarios.Width:=842;
end;

procedure TFormListaPrecioUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListaPrecioUsuarios.PasarTodoExecute(Sender: TObject);
begin
  inherited;
  if Not(dbcUsuarios.KeyValue=-1) and Not(VarIsNull(dbcUsuarios.KeyValue)) Then
    begin
      QListas.First;
      while Not(QListas.Eof) do
        begin
            if Not(CDSListaUsuario.Locate('id_lista',QListasID.value,[])) Then
              begin
                CDSListaUsuario.Insert;
                CDSListaUsuarioID.Value:=ibgListaUser.IncrementFD(1);
                CDSListaUsuarioID_LISTA.Value      := QListasID.Value;
                CDSListaUsuarioMUESTRALISTA.Value  := QListasNOMBRE.Value;
                CDSListaUsuarioID_USUARIO.Value    := dbcUsuarios.KeyValue;
                CDSListaUsuario.Post;
              end;
          QListas.Next;
        end;
      QListas.First;
    end
  else
    ShowMessage('No hay Empleado seleccionado ... Verifique!!!')

end;

procedure TFormListaPrecioUsuarios.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSListaUsuario.Close;
  CDSListaUsuario.Params.ParamByName('id').Value:=dbcUsuarios.KeyValue;
  CDSListaUsuario.Open;
end;

procedure TFormListaPrecioUsuarios.tvListasGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormListaPrecioUsuarios.tvUsuariosListaDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var i,N,id:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode := tvUsuariosLista.GetNodeAt(X,Y); // Get target node
  if TargetNode.Level=0 then
    begin
      i  := TargetNode.Index;
      Nro:= TargetNode.Text;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

      Dato1:=(Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsString;//CDSCtasCajaID_CUENTA.AsString;
      Dato2:=Nro;//  (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsString; // Codigo de Deposito;
      Nodo1:=nil;
      CDSListaGralUsuarios.Close;
      CDSListaGralUsuarios.Open;
      if CDSListaGralUsuarios.Locate('id_lista;id_usuario',VarArrayOf([Dato1,Dato2]),[])=False Then
        begin
          CDSListaUsuario.Append;
          CDSListaUsuarioID.Value        := ibgListaUser.IncrementFD(1);
          CDSListaUsuarioID_USUARIO.Value:= StrToInt(Dato2);// ToInt(Lista[i]);
          CDSListaUsuarioID_LISTA.Value  := StrToInt(Dato1);// (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsInteger;
          CDSListaUsuario.Post;
          Confirma.Execute;

           //CDSListaUsuarioID.Value           := ibgListaUser.IncrementFD(1);
           //CDSListaUsuarioID_LISTA.Value     := FieldByName('Id').Value;
           //CDSListaUsuarioMUESTRALISTA.Value := FieldByName('Nombre').Value;
           //CDSListaUsuarioID_USUARIO.Value   := dbcUsuarios.KeyValue;

          n:=i;
          while tvUsuariosLista.Items[N].Level>0 do
            N:=n-1;
          Nodo1 := tvUsuariosLista.Items.AddChild(TargetNode,(Source as TJvDBGrid).DataSource.DataSet.FieldByName('Nombre').AsString+' ['+Dato1+']' );
          Nodo1.ImageIndex:=11;
        end;
    end;

//      Dato1:=(Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsString;//CDSCtasCajaID_CUENTA.AsString;
//      Dato2:=Nro;//  (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsString; // Codigo de Deposito;
//      Nodo1:=nil;
//      CDSListaGralUsuarios.Close;
//      CDSListaGralUsuarios.Open;
//      if CDSListaGralUsuarios.Locate('id_lista;id_usuario',VarArrayOf([Dato1,Dato2]),[])=False Then
//        begin
//          CDSListaUsuario.Append;
//          CDSListaUsuarioID_USUARIO.Value:=StrToInt(Dato2);// ToInt(Lista[i]);
//          CDSListaUsuarioID_LISTA.Value  :=StrToInt(Dato1);// (Source as TJvDBGrid).DataSource.DataSet.FieldByName('id').AsInteger;
//          CDSListaUsuario.Post;
//          Confirma.Execute;
//
//          n:=i;
//          while tvUsuariosLista.Items[N].Level>0 do
//            N:=n-1;
//          Nodo1 := tvUsuariosLista.Items.AddChild(TargetNode,(Source as TJvDBGrid).DataSource.DataSet.FieldByName('Nombre').AsString+' ['+Dato1+']' );
//          Nodo1.ImageIndex:=11;
//        end;
//      dbgListaPrecio.UnselectAll;
//    end;
  CDSListaGralUsuarios.Close;
end;

procedure TFormListaPrecioUsuarios.tvUsuariosListaDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);

VAR Nodo:TTreeNode;
begin
  inherited;
 if (Source is TTreeView ) then
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

procedure TFormListaPrecioUsuarios.tvUsuariosListaGetSelectedIndex(
  Sender: TObject; Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormListaPrecioUsuarios.tvUsuariosListaKeyDown(Sender: TObject;
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