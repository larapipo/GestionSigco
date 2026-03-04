unit UDepositosUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, Grids, DBGrids, StdCtrls,
  ImgList, ActnList, ComCtrls,StrUtils,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls, IBGenerator, DBClient,
  Provider, JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  DBXCommon, System.Actions, JvAppStorage,
  JvAppIniStorage, JvExDBGrids, JvDBGrid, Vcl.Menus, JvDBLookup, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, AdvOfficeButtons;

type
  TFormDepositosUsuarios = class(TFormABMBase)
    DSPDepoUsusario: TDataSetProvider;
    CDSDepoUsuario: TClientDataSet;
    ibgDepoUser: TIBGenerator;
    CDSDepoUsuarioID: TIntegerField;
    CDSDepoUsuarioDEPOSITO: TIntegerField;
    CDSDepoUsuarioMUESTRADEPOSITO: TStringField;
    DSDepoUsuarios: TDataSource;
    DSDepositos: TDataSource;
    PasarTodo: TAction;
    BorrarTodo: TAction;
    DSPUsuarios: TDataSetProvider;
    CDSUsuarios: TClientDataSet;
    DSUsuarios: TDataSource;
    CDSUsuariosREAL_NAME: TStringField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepoUsuarioID_USUARIO: TIntegerField;
    CDSUsuariosUSER_ID: TIntegerField;
    pcAsignacion: TPageControl;
    tsAsignacion: TTabSheet;
    tsDetalle: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    tvUsuariosDepo: TTreeView;
    Label2: TLabel;
    lb1: TLabel;
    dbcUsuarios: TJvDBLookupCombo;
    lb2: TLabel;
    dbgListaUsuarios: TDBGrid;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    dbgDepositos: TDBGrid;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    DSPLstDepoUsuario: TDataSetProvider;
    CDSLstDepoUsuario: TClientDataSet;
    CDSLstDepoUsuarioID: TIntegerField;
    CDSLstDepoUsuarioDEPOSITO: TIntegerField;
    CDSLstDepoUsuarioID_USUARIO: TIntegerField;
    dbgLstDepositos: TDBGrid;
    QDepoUsuario: TFDQuery;
    QDepoUsuarioID: TIntegerField;
    QDepoUsuarioDEPOSITO: TIntegerField;
    QDepoUsuarioID_USUARIO: TIntegerField;
    QDepoUsuarioMUESTRADEPOSITO: TStringField;
    QUsuarios: TFDQuery;
    QDepositos: TFDQuery;
    QLstDepoUsuario: TFDQuery;
    QLstDepoUsuarioID: TIntegerField;
    QLstDepoUsuarioDEPOSITO: TIntegerField;
    QLstDepoUsuarioID_USUARIO: TIntegerField;
    chActivos: TAdvOfficeCheckBox;
    procedure dbgListaUsuariosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgListaUsuariosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BorrarTodoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcUsuariosClick(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure PasarTodoExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSDepoUsuarioAfterPost(DataSet: TDataSet);
    procedure CDSDepoUsuarioAfterDelete(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure tvUsuariosDepoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvUsuariosDepoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tvUsuariosDepoCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure Borrar1Click(Sender: TObject);
    procedure tvUsuariosDepoGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvUsuariosDepoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgLstDepositosCellClick(Column: TColumn);
    procedure dbgLstDepositosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure chActivosClick(Sender: TObject);
  private
    { Private declarations }
  public
    Lista:TStringList;
    { Public declarations }
  end;

var
  FormDepositosUsuarios: TFormDepositosUsuarios;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormDepositosUsuarios.Borrar1Click(Sender: TObject);
var i,N:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode := tvUsuariosDepo.Selected;//(X,Y); // Get target node
  if TargetNode.Level>0 then
    begin
      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));
      Dato1:=Nro;    // Deposito

      i:=tvUsuariosDepo.Selected.AbsoluteIndex;
      while tvUsuariosDepo.Items[i].Level>0 do
        i:=i-1;
      TargetNode := tvUsuariosDepo.Items[i];

      Nro:= TargetNode.Text;    //Usuario
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

      Dato2:=Nro;//CDSCtasCajaNOMBRE.AsString;

      CDSLstDepoUsuario.Close;
      CDSLstDepoUsuario.Open;
      if CDSLstDepoUsuario.Locate('deposito;id_usuario',VarArrayOf([Dato1,Dato2]),[])=True Then
        begin
          CDSLstDepoUsuario.Delete;
          CDSLstDepoUsuario.ApplyUpdates(0);
          tvUsuariosDepo.Selected.Delete;
          CDSLstDepoUsuario.Close;
          CDSLstDepoUsuario.Open;
      end;
  end;
end;

procedure TFormDepositosUsuarios.BorrarTodoExecute(Sender: TObject);
begin
  inherited;
  while not(CDSDepoUsuario.eof) Do
  CDSDepoUsuario.Delete;
end;

procedure TFormDepositosUsuarios.BuscarExecute(Sender: TObject);
var
  NodoUsuario, NodoDeposito: TTreeNode;
begin
  Screen.Cursor := crHourGlass;
  Lista.Clear;
  tvUsuariosDepo.Items.BeginUpdate;
  try
    tvUsuariosDepo.Items.Clear;
    CDSUsuarios.DisableControls;
    try
      CDSUsuarios.First;
      while not CDSUsuarios.Eof do
      begin
        // Crear nodo raíz con el nombre del usuario
        Lista.Add(CDSUsuariosUSER_ID.AsString);
        NodoUsuario := tvUsuariosDepo.Items.Add(nil,Format('%s [%s]', [CDSUsuariosREAL_NAME.AsString, CDSUsuariosUSER_ID.AsString]));
        NodoUsuario.ImageIndex := 10;
        // Buscar depósitos asignados a ese usuario
        CDSDepoUsuario.Close;
        CDSDepoUsuario.Params.ParamByName('id').Value := CDSUsuariosUSER_ID.Value;
        CDSDepoUsuario.Open;

        CDSDepoUsuario.First;
        while not CDSDepoUsuario.Eof do
        begin
          NodoDeposito := tvUsuariosDepo.Items.AddChild(NodoUsuario,Format('%s [%s]', [CDSDepoUsuarioMUESTRADEPOSITO.AsString, CDSDepoUsuarioDEPOSITO.AsString]));
          NodoDeposito.ImageIndex := 11;
          CDSDepoUsuario.Next;
        end;
        CDSUsuarios.Next;
      end;
    finally
      CDSUsuarios.EnableControls;
    end;
  finally
    tvUsuariosDepo.Items.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFormDepositosUsuarios.CancelarExecute(Sender: TObject);
begin
  //inherited;
  Recuperar.Execute;
end;

procedure TFormDepositosUsuarios.CDSDepoUsuarioAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDepoUsuario.State<>dsBrowse then
     CDSDepoUsuario.Post;
    CDSDepoUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormDepositosUsuarios.CDSDepoUsuarioAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDepoUsuario.State<>dsBrowse then
     CDSDepoUsuario.Post;
    CDSDepoUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormDepositosUsuarios.chActivosClick(Sender: TObject);
begin
  inherited;
  CDSDepositos.Close;
  if chActivos.Checked then
    CDSDepositos.Params.ParamByName('estado').Value:='S'
  else
    CDSDepositos.Params.ParamByName('estado').Value:='*';
  CDSDepositos.Open;
end;

procedure TFormDepositosUsuarios.ConfirmaExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDepoUsuario.State<>dsBrowse then
     CDSDepoUsuario.Post;
    CDSDepoUsuario.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
  Recuperar.Execute;
end;

procedure TFormDepositosUsuarios.dbcUsuariosClick(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;

procedure TFormDepositosUsuarios.dbgListaUsuariosDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
if Not(dbcUsuarios.KeyValue=-1) and Not(VarIsNull(dbcUsuarios.KeyValue)) Then
    begin
      CDSdepoUsuario.Append;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
         BEGIN
           CDSDepoUsuarioID.Value              := ibgDepoUser.IncrementFD(1);
           CDSdepoUsuarioDEPOSITO.Value        := FieldByName('Id').Value;
           CDSdepoUsuarioMUESTRADEPOSITO.Value := FieldByName('Nombre').Value;
           CDSdepoUsuarioID_USUARIO.Value      := dbcUsuarios.KeyValue;
         END;
       CDSdepoUsuario.Post;
    end
  eLSE
    ShowMessage('No hay Empleado seleccionado ... Verifique!!!')

end;

procedure TFormDepositosUsuarios.dbgListaUsuariosDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF Source = dbgDepositos THEN
    accept := True
  ELSE
    Accept := False;
  if (CDSDepoUsuario.Locate('DEPOSITO',(Source AS TDBGrid).DataSource.DataSet.FieldByName('Id').Value,[])) Then
    Accept:=False;
  if (dbcUsuarios.KeyValue=-1) or (VarIsNull(dbcUsuarios.KeyValue)) Then
    Accept:=False;

end;

procedure TFormDepositosUsuarios.dbgLstDepositosCellClick(Column: TColumn);
begin
  inherited;
  dbgLstDepositos.SelectedRows.CurrentRowSelected;
end;

procedure TFormDepositosUsuarios.dbgLstDepositosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dbgLstDepositos.SelectedRows.CurrentRowSelected:=True;
end;

procedure TFormDepositosUsuarios.DSBaseStateChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFormDepositosUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormDepositosUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize   := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSDepoUsuario.Open;
  CDSDepositos.Close;
  if chActivos.Checked then
    CDSDepositos.Params.ParamByName('estado').Value:='S'
  else
    CDSDepositos.Params.ParamByName('estado').Value:='*';
  CDSDepositos.Open;
  CDSUsuarios.Open;
  Lista      := TStringList.Create;
end;

procedure TFormDepositosUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDepositosUsuarios:=nil;
end;

procedure TFormDepositosUsuarios.FormResize(Sender: TObject);
begin
  inherited;
  if FormDepositosUsuarios<>nil then
    if FormDepositosUsuarios.Width<>847 then
      FormDepositosUsuarios.Width:=847;
end;

procedure TFormDepositosUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormDepositosUsuarios.PasarTodoExecute(Sender: TObject);
begin
  inherited;
  if Not(dbcUsuarios.KeyValue=-1) and Not(VarIsNull(dbcUsuarios.KeyValue)) Then
    begin
      CDSDepositos.First;
      while Not(CDSDepositos.Eof) do
        begin
            if Not(CDSDepoUsuario.Locate('DEPOSITO',CDSDepositosID.value,[])) Then
              begin
                CDSDepoUsuario.Append;
                CDSDepoUsuarioID.Value:=ibgDepoUser.IncrementFD(1);
                CDSDepoUsuarioDEPOSITO.Value         := CDSDepositosID.Value;
                CDSDepoUsuarioMUESTRADEPOSITO.Value  := CDSDepositosNOMBRE.Value;
                CDSDepoUsuarioID_USUARIO.Value       := dbcUsuarios.KeyValue;
                CDSDepoUsuario.Post;
              end;
          CDSDepositos.Next;
        end;
      CDSDepositos.First;
    end
  else
    ShowMessage('No hay Empleado seleccionado ... Verifique!!!')

end;

procedure TFormDepositosUsuarios.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSDepoUsuario.Close;
  CDSDepoUsuario.Params.ParamByName('id').Value:=dbcUsuarios.KeyValue;
  CDSDepoUsuario.Open;
end;

procedure TFormDepositosUsuarios.tvUsuariosDepoCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  inherited;
  if (Node.Level=0) and (Node.HasChildren) then
    begin
      Sender.Canvas.Font.Color:=clBlue;
      Sender.Canvas.Font.Style:=[fsBold];
    end
  else
     begin
       Sender.Canvas.Font.Color:=clBlack;
       Sender.Canvas.Font.Style:=[];
     end;

    if cdsFocused in State then
    begin
      Sender.Canvas.Font.Color:=clWhite;
    end;
end;

procedure TFormDepositosUsuarios.tvUsuariosDepoDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var i,N,Id:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;

  TargetNode := tvUsuariosDepo.GetNodeAt(X,Y); // Get target node
  if TargetNode.Level=0 then
    begin
      i  := TargetNode.Index;
      Nro:= TargetNode.Text;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

      Dato1:=Lista[i];
      Dato2:=(Source as TDBGrid).DataSource.DataSet.FieldByName('id').AsString; // Nro;
      Nodo1:=nil;
      CDSLstDepoUsuario.Close;
      CDSLstDepoUsuario.Open;
      if CDSLstDepoUsuario.Locate('deposito;id_USUARIO',VarArrayOf([Dato2,Dato1]),[])=False Then
        begin
          CDSDepoUsuario.Append;
          CDSDepoUsuarioID.Value         := ibgDepoUser.IncrementFD(1);
          CDSDepoUsuarioID_USUARIO.Value := StrToInt(Dato1);//Usuario;
          CDSDepoUsuarioDEPOSITO.Value   := StrtoInt(Dato2);//Deposito;
          CDSDepoUsuario.Post;
          Confirma.Execute;
          CDSLstDepoUsuario.Close;
          n:=i;
          while tvUsuariosDepo.Items[N].Level>0 do
            N:=n-1;
          Nodo1 := tvUsuariosDepo.Items.AddChild(TargetNode,(Source as TDBGrid).DataSource.DataSet.FieldByName('Nombre').AsString+' ['+Dato2+']' );
          Nodo1.ImageIndex:=11;
        end;
      CDSLstDepoUsuario.Close;
    end;

end;

procedure TFormDepositosUsuarios.tvUsuariosDepoDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
 if (Source is TDBGrid ) then
    Accept:=True;
  Nodo:=tvUsuariosDepo.Selected;

 // if Nodo.Level>0 then
 //   Accept:=False;

  if (y < 14) then {On the upper edge - should scroll up }
    SendMessage(tvUsuariosDepo.Handle, WM_VSCROLL, SB_LINEUP, 0)
  else
    if (tvUsuariosDepo.Height - y < 14) then { On the lower edge - should scroll down }
      SendMessage(tvUsuariosDepo.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
 // lbNivel.Caption:='Level:'+IntToStr(Nodo.Level)+'..Y:'+IntToStr(y);
end;

procedure TFormDepositosUsuarios.tvUsuariosDepoGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormDepositosUsuarios.tvUsuariosDepoKeyDown(Sender: TObject;
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