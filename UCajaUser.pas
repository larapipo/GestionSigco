unit UCajaUser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Grids, DBCtrls, DBGrids,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,Variants,StrUtils,
  Menus, System.Actions, JvAppStorage, JvAppIniStorage, Datasnap.DBClient,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormAsignaCajaUsuario = class(TFormABMBase)
    DSPCajaUser: TDataSetProvider;
    CDSCajaUser: TClientDataSet;
    DSCajaUser: TDataSource;
    CDSCtasCaja: TClientDataSet;
    DSPCtasCaja: TDataSetProvider;
    CDSCtasCajaID_CUENTA: TIntegerField;
    CDSCtasCajaNOMBRE: TStringField;
    CDSUser: TClientDataSet;
    DSPUser: TDataSetProvider;
    CDSUserUSER_NAME: TStringField;
    CDSUserREAL_NAME: TStringField;
    CDSCajaUserMUESTRAUSER: TStringField;
    CDSCajaUserUSUARIO: TStringField;
    CDSCajaUserCAJA: TSmallintField;
    CDSCajaUserPOR_DEFECTO: TStringField;
    CDSCajaUserMUESTRACAJA: TStringField;
    DSPCajasDelUsuario: TDataSetProvider;
    CDSCajasDelUsuario: TClientDataSet;
    CDSCajasDelUsuarioUSUARIO: TStringField;
    CDSCajasDelUsuarioCAJA: TSmallintField;
    CDSCajasDelUsuarioPOR_DEFECTO: TStringField;
    CDSCajasDelUsuarioNOMBRECAJA: TStringField;
    DSuser: TDataSource;
    DSCtasCaja: TDataSource;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    HacerCajaPorDefecto1: TMenuItem;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    tvUsuariosCaja: TTreeView;
    Label2: TLabel;
    dbgUsuarios: TJvDBGrid;
    lbNivel: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    DBGrid1: TJvDBGrid;
    CDSUserUSER_ID: TIntegerField;
    edtBuscar: TEdit;
    QCtasCaja: TFDQuery;
    QUser: TFDQuery;
    QCajaUser: TFDQuery;
    QCajasDelUsuario: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSCajaUserNewRecord(DataSet: TDataSet);
    function DBGrid1CheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure BuscarExecute(Sender: TObject);
    procedure tvUsuariosCajaCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvUsuariosCajaGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvUsuariosCajaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvUsuariosCajaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Borrar1Click(Sender: TObject);
    procedure HacerCajaPorDefecto1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
  private
    procedure BuscarEnTreeView(const Texto: string);
    { Private declarations }
  public
    { Public declarations }
   Lista:TStringList;
  end;

var

  FormAsignaCajaUsuario: TFormAsignaCajaUsuario;

implementation

{$R *.DFM}

uses UDMain_FD;


procedure TFormAsignaCajaUsuario.FormCreate(Sender: TObject);
var Flap:String;
begin
  inherited;
  AutoSize:=False;
  CDSCtasCaja.Open;
  CDSUser.Open;
  CDSCajaUser.Open;
  CDSCajaUser.First;
  Lista:=TStringList.Create;
end;

procedure TFormAsignaCajaUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAsignaCajaUsuario.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignaCajaUsuario:=nil;
end;

procedure TFormAsignaCajaUsuario.FormResize(Sender: TObject);
begin
  inherited;
  if FormAsignaCajaUsuario<>nil then
    if FormAsignaCajaUsuario.Width<>861 then
      FormAsignaCajaUsuario.Width:=861;
end;

procedure TFormAsignaCajaUsuario.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormAsignaCajaUsuario.HacerCajaPorDefecto1Click(Sender: TObject);
var i,N:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
 TargetNode := tvUsuariosCaja.Selected;//(X,Y); // Get target node
  if TargetNode.Level>0 then
    begin
      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));
      Dato1:=Nro;

      i:=tvUsuariosCaja.Selected.AbsoluteIndex;
      while tvUsuariosCaja.Items[i].Level>0 do
        i:=i-1;
      TargetNode := tvUsuariosCaja.Items[i];

      Nro:= TargetNode.Text;
    //  i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

      Dato2:=Nro;//CDSCtasCajaNOMBRE.AsString;
      i:=i+1;
      while (i<=tvUsuariosCaja.Items.Count-1) and (tvUsuariosCaja.Items[i].Level>0)  do
        begin

          tvUsuariosCaja.Items[i].ImageIndex:=-1;
          i:=i+1;
        end;

      if CDSCajaUser.Locate('CAJA;USUARIO',VarArrayOf([Dato1,Dato2]),[]) Then
        begin
          CDSCajaUser.Edit;
          CDSCajaUserPOR_DEFECTO.Value:='S';
          CDSCajaUser.Post;
          tvUsuariosCaja.Selected.ImageIndex:=10;
          Confirma.Execute;
          tvUsuariosCaja.Repaint;
         // Buscar.Execute;
//      Buscar.Execute;
        end;
    end;


//  TargetNode := tvUsuariosCaja.Selected;//(X,Y); // Get target node
//  if TargetNode.Level>0 then
//    begin
//      i  := TargetNode.Index;
//      n:=i;
//      while tvUsuariosCaja.Items[N].Level>0 do
//        N:=n-1;
//      Nodo1 := tvUsuariosCaja.Items[N];
//      Nro   := Nodo1.Text;
//
//      Nro:=copy(Nro,Pos('(',Nro)+1,length(Nro));
//      Nro:=Trim(AnsiReplaceStr(Nro,')',''));
//      Dato1:=CDSCtasCajaID_CUENTA.AsString;
//      Dato2:=Nro;//CDSCtasCajaNOMBRE.AsString;
//      if CDSCajaUser.Locate('CAJA;USUARIO',VarArrayOf([Dato1,Dato2]),[])=False Then
//        begin
//          CDSCajaUser.Edit;
//          CDSCajaUserPOR_DEFECTO.Value:='S';
//          CDSCajaUser.Post;
//          tvUsuariosCaja.Selected.ImageIndex:=10;
//          Confirma.Execute;
//          Buscar.Execute;
//        end;
//    end;
end;

procedure TFormAsignaCajaUsuario.tvUsuariosCajaCustomDrawItem(
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

procedure TFormAsignaCajaUsuario.tvUsuariosCajaDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var i,N:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode := tvUsuariosCaja.GetNodeAt(X,Y); // Get target node
  if TargetNode.Level=0 then
    begin
      i  := TargetNode.Index;
      Nro:= TargetNode.Text;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));
      Dato1:=Lista[i];//(Source as TJvDBGrid).DataSource.DataSet.FieldByName('Nombre').AsString;//CDSCtasCajaID_CUENTA.AsString;
      Dato2:=(Source as TJvDBGrid).DataSource.DataSet.FieldByName('id_cuenta').AsString; // Nro;
      Nodo1:=nil;
      if CDSCajaUser.Locate('CAJA;USUARIO',VarArrayOf([Dato2,Dato1]),[])=False Then
        begin
          CDSCajaUser.Append;
          CDSCajaUserUSUARIO.Value:=Lista[i];
          CDSCajaUserCAJA.Value   :=(Source as TJvDBGrid).DataSource.DataSet.FieldByName('id_cuenta').AsInteger;
          CDSCajaUser.Post;

          Confirma.Execute;

          n:=i;
          while tvUsuariosCaja.Items[N].Level>0 do
            N:=n-1;
          Nodo1 := tvUsuariosCaja.Items.AddChild(TargetNode,(Source as TJvDBGrid).DataSource.DataSet.FieldByName('Nombre').AsString+' ['+Dato2+']' );
          Nodo1.ImageIndex:=-1;
        end;
    end;

end;

procedure TFormAsignaCajaUsuario.tvUsuariosCajaDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
  if (Source is TJvDBGrid ) then
    Accept:=True;
  if tvUsuariosCaja.Selected<>nil then
    begin
      Nodo:=tvUsuariosCaja.Selected;
      if (y < 15) then {On the upper edge - should scroll up }
        SendMessage(tvUsuariosCaja.Handle, WM_VSCROLL, SB_LINEUP, 0)
      else
        if (tvUsuariosCaja.Height - y < 15) then { On the lower edge - should scroll down }
          SendMessage(tvUsuariosCaja.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
      lbNivel.Caption:='Level:'+IntToStr(Nodo.Level)+'..Y:'+IntToStr(y);
    end;
end;

procedure TFormAsignaCajaUsuario.tvUsuariosCajaGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormAsignaCajaUsuario.Borrar1Click(Sender: TObject);
var i,N:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode := tvUsuariosCaja.Selected;//(X,Y); // Get target node
  if TargetNode.Level>0 then
    begin
      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));
      Dato1:=Nro;

      i:=tvUsuariosCaja.Selected.AbsoluteIndex;
      while tvUsuariosCaja.Items[i].Level>0 do
        i:=i-1;
      TargetNode := tvUsuariosCaja.Items[i];

      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

      Dato2:=Nro;//CDSCtasCajaNOMBRE.AsString;
      if CDSCajaUser.Locate('CAJA;USUARIO',VarArrayOf([Dato1,Dato2]),[]) Then
        begin
          CDSCajaUser.Delete;
          tvUsuariosCaja.Selected.Delete;
          Confirma.Execute;
      end;
  end;
end;

procedure TFormAsignaCajaUsuario.BuscarEnTreeView(const Texto: string);
var
  i: Integer;
  Nodo: TTreeNode;
begin
  if Texto.Trim = '' then
    Exit;

  for i := 0 to tvUsuariosCaja.Items.Count - 1 do
  begin
    Nodo := tvUsuariosCaja.Items[i];
    if Pos(LowerCase(Texto), LowerCase(Nodo.Text)) > 0 then
    begin
      tvUsuariosCaja.Selected := Nodo;
      Nodo.MakeVisible;
      Exit; // sale en la primera coincidencia
    end;
  end;

  // Si no encontró nada
  ShowMessage('No se encontró ninguna coincidencia con "' + Texto + '".');
end;


procedure TFormAsignaCajaUsuario.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin
  Nodo1 := NIL;
  CDSUser.DisableControls;
  CDSUser.First;
  Lista.Clear;
  tvUsuariosCaja.Items.BeginUpdate;
  tvUsuariosCaja.Items.Clear;

  WHILE NOT (CDSUser.Eof) DO
    BEGIN
      Lista.Add(CDSUserUSER_NAME.Value);
      Nodo1 := tvUsuariosCaja.Items.Add(NIL, CDSUserREAL_NAME.AsString+' ['+CDSUserUSER_NAME.AsString+']');
      Nodo1.ImageIndex:=11;
      tvUsuariosCaja.Selected := Nodo1;
      N := tvUsuariosCaja.Selected.AbsoluteIndex;
      CDSCajasDelUsuario.Close;
      CDSCajasDelUsuario.Params.ParamByName('usuario').Value:=CDSUserUSER_NAME.Value;
      CDSCajasDelUsuario.Open;

      CDSCajasDelUsuario.First;
      WHILE NOT (CDSCajasDelUsuario.Eof) DO
        BEGIN
          Nodo1 := tvUsuariosCaja.Items.AddChild(tvUsuariosCaja.Items[N], CDSCajasDelUsuarioNOMBRECAJA.AsString+' ['+CDSCajasDelUsuarioCAJA.AsString+']' );
          Nodo1.ImageIndex:=-1;
          if CDSCajasDelUsuarioPOR_DEFECTO.Value='S' then
            Nodo1.ImageIndex:=10
          else
            Nodo1.ImageIndex:=-1;

          tvUsuariosCaja.Selected := Nodo1;
          CDSCajasDelUsuario.Next;
        END;
      CDSUser.Next;
    END;

  CDSUser.EnableControls;
  tvUsuariosCaja.Items.EndUpdate;
  tvUsuariosCaja.FullCollapse;
end;

{
procedure TFormAsignaCajaUsuario.BuscarExecute(Sender: TObject);
var
  NodoUsuario, NodoCaja: TTreeNode;
begin
  Screen.Cursor := crHourGlass;
  Lista.Clear;
  tvUsuariosCaja.Items.BeginUpdate;
  try
    tvUsuariosCaja.Items.Clear;

    CDSUser.DisableControls;
    try
      CDSUser.First;
      while not CDSUser.Eof do
      begin
        Lista.Add(CDSUserUSER_NAME.Value);
        // Agrega nodo del usuario
        NodoUsuario := tvUsuariosCaja.Items.Add(nil,
          Format('%s [%s]', [CDSUserREAL_NAME.AsString, CDSUserUSER_ID.AsString]));
        NodoUsuario.ImageIndex := 11;

        // Cajas asociadas al usuario
        CDSCajasDelUsuario.Close;
        CDSCajasDelUsuario.Params.ParamByName('usuario').Value := CDSUserUSER_NAME.Value;
        CDSCajasDelUsuario.Open;

        CDSCajasDelUsuario.First;
        while not CDSCajasDelUsuario.Eof do
        begin
          NodoCaja := tvUsuariosCaja.Items.AddChild(NodoUsuario,
            Format('%s [%s]',
              [CDSCajasDelUsuarioNOMBRECAJA.AsString,
               CDSCajasDelUsuarioCAJA.AsString]));

          // Imagen según si es por defecto
          if CDSCajasDelUsuarioPOR_DEFECTO.AsString = 'S' then
            NodoCaja.ImageIndex := 10
          else
            NodoCaja.ImageIndex := -1;

          CDSCajasDelUsuario.Next;
        end;

        CDSUser.Next;
      end;
    finally
      CDSUser.EnableControls;
    end;

  finally
    tvUsuariosCaja.Items.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;
}
procedure TFormAsignaCajaUsuario.CDSCajaUserNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCajaUserCAJA.Value       := -1;
  CDSCajaUserUSUARIO.Value    := '';
  CDSCajaUserPOR_DEFECTO.Value:= 'N';
end;

procedure TFormAsignaCajaUsuario.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
  CDSCajaUser.ApplyUpdates(0);
  CDSCajaUser.Close;
  CDSCajaUser.Open;
end;

function TFormAsignaCajaUsuario.DBGrid1CheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = CDSCajaUserPOR_DEFECTO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormAsignaCajaUsuario.edtBuscarChange(Sender: TObject);
begin
  inherited;
   BuscarEnTreeView(edtBuscar.Text);
end;

end.
