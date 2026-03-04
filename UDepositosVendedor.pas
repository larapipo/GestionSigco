unit UDepositosVendedor;

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
  JvDBLookup, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Menus,StrUtils, IBGenerator;

type
  TFormDepositoVendedor = class(TFormABMBase)
    pcAsignacion: TPageControl;
    tsAsignacion: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    tvUsuariosDepo: TTreeView;
    dbgLstDepositos: TDBGrid;
    tsDetalle: TTabSheet;
    lb1: TLabel;
    lb2: TLabel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    dbcUsuarios: TJvDBLookupCombo;
    dbgListaUsuarios: TDBGrid;
    dbgDepositos: TDBGrid;
    QDepoVendedor: TFDQuery;
    DSPDepoVendedor: TDataSetProvider;
    CDSDepoVendedor: TClientDataSet;
    DSDepoVendedor: TDataSource;
    QVendedores: TFDQuery;
    DSPVendedores: TDataSetProvider;
    CDSVendedores: TClientDataSet;
    DSUsuarios: TDataSource;
    QDepositos: TFDQuery;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    DSDepositos: TDataSource;
    QDepoVendedorID: TIntegerField;
    QDepoVendedorID_DEPOSITO: TIntegerField;
    QDepoVendedorVENDEDOR: TStringField;
    QDepoVendedorMUESTRADEPOSITO: TStringField;
    CDSDepoVendedorID: TIntegerField;
    CDSDepoVendedorID_DEPOSITO: TIntegerField;
    CDSDepoVendedorVENDEDOR: TStringField;
    CDSDepoVendedorMUESTRADEPOSITO: TStringField;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    QLstDepoVendedor: TFDQuery;
    DSPLstDepoVendedor: TDataSetProvider;
    CDSVendedoresNOMBRE: TStringField;
    CDSVendedoresCODIGO: TStringField;
    ibgDepoUser: TIBGenerator;
    QLstDepoVendedorID: TIntegerField;
    QLstDepoVendedorID_DEPOSITO: TIntegerField;
    QLstDepoVendedorVENDEDOR: TStringField;
    CDSLstDepoVendedor: TClientDataSet;
    CDSLstDepoVendedorID_DEPOSITO: TIntegerField;
    CDSLstDepoVendedorVENDEDOR: TStringField;
    CDSLstDepoVendedorID: TIntegerField;
    procedure tvUsuariosDepoCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvUsuariosDepoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvUsuariosDepoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure CDSDepoVendedorAfterDelete(DataSet: TDataSet);
    procedure CDSDepoVendedorAfterPost(DataSet: TDataSet);
    procedure Borrar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure tvUsuariosDepoGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvUsuariosDepoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSLstDepoVendedorAfterDelete(DataSet: TDataSet);
    procedure CDSLstDepoVendedorAfterPost(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
     Lista:TStringList;
    { Public declarations }
  end;

var
  FormDepositoVendedor: TFormDepositoVendedor;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormDepositoVendedor.Borrar1Click(Sender: TObject);
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

      Nro:= TargetNode.Text;    //Vendedor
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

      Dato2:=Nro;//CDSCtasCajaNOMBRE.AsString;

      CDSLstDepoVendedor.Close;
      CDSLstDepoVendedor.Open;
      CDSLstDepoVendedor.First;
      CDSLstDepoVendedor.IndexFieldNames:='ID_DEPOSITO;VENDEDOR';
     // while not(CDSLstDepoVendedor.Eof) do
     //   begin
     //     if (CDSLstDepoVendedorID.Value=StrToInt(Dato1)) and (CDSLstDepoVendedorVENDEDOR.Value=Dato2) Then
          if CDSLstDepoVendedor.Locate('ID_DEPOSITO;VENDEDOR',VarArrayOf([Dato1,Dato2]),[])=True Then
            begin
              CDSLstDepoVendedor.Delete;
              CDSLstDepoVendedor.ApplyUpdates(0);
              tvUsuariosDepo.Selected.Delete;
              CDSLstDepoVendedor.Close;
              CDSLstDepoVendedor.Open;
            end;
//          CDSLstDepoVendedor.Next;
        end;
     CDSLstDepoVendedor.IndexFieldNames:='';
//  end;
end;

procedure TFormDepositoVendedor.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin
  Nodo1 := NIL;
  CDSVendedores.First;
  Lista.Clear;
  Screen.Cursor:=crHourGlass;
  tvUsuariosDepo.Items.Clear;
  tvUsuariosDepo.AutoExpand:=False;
  WHILE NOT (CDSVendedores.Eof) DO
    BEGIN
      Lista.Add(CDSVendedoresCODIGO.AsString);
      Application.ProcessMessages;
      Nodo1 := tvUsuariosDepo.Items.Add(NIL, CDSVendedoresNOMBRE.AsString+' ['+CDSVendedoresCODIGO.AsString+']');
      Nodo1.ImageIndex:=10;
      tvUsuariosDepo.Selected := Nodo1;
      N := tvUsuariosDepo.Selected.AbsoluteIndex;
      CDSDepoVendedor.Close;
      CDSDepoVendedor.Params.ParamByName('id').Value:=CDSVendedoresCODIGO.Value;
      CDSDepoVendedor.Open;
      CDSDepoVendedor.First;
      WHILE NOT (CDSDepoVendedor.Eof) DO
        BEGIN
          Nodo1 := tvUsuariosDepo.Items.AddChild( tvUsuariosDepo.Items[N], CDSDepoVendedorMUESTRADEPOSITO.AsString+' ['+CDSDepoVendedorID_DEPOSITO.AsString+']' );
          Nodo1.ImageIndex:=11;
          tvUsuariosDepo.Selected := Nodo1;
          CDSDepoVendedor.Next;
        END;
      CDSVendedores.Next;
    END;
  Screen.Cursor:=crDefault;
  tvUsuariosDepo.FullCollapse;
end;

procedure TFormDepositoVendedor.CDSDepoVendedorAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDepoVendedor.State<>dsBrowse then
     CDSDepoVendedor.Post;
    CDSDepoVendedor.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormDepositoVendedor.CDSDepoVendedorAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDepoVendedor.State<>dsBrowse then
     CDSDepoVendedor.Post;
    CDSDepoVendedor.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormDepositoVendedor.CDSLstDepoVendedorAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDepoVendedor.State<>dsBrowse then
     CDSDepoVendedor.Post;
    CDSDepoVendedor.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormDepositoVendedor.CDSLstDepoVendedorAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDepoVendedor.State<>dsBrowse then
     CDSDepoVendedor.Post;
    CDSDepoVendedor.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormDepositoVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormDepositoVendedor.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize   := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSDepoVendedor.Open;
  CDSDepositos.Open;
  CDSVendedores.Open;
  Lista      := TStringList.Create;
end;

procedure TFormDepositoVendedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDepositoVendedor:=nil;
end;

procedure TFormDepositoVendedor.FormResize(Sender: TObject);
begin
  inherited;
  if FormDepositoVendedor<>nil then
    if FormDepositoVendedor.Width<>849 then
      FormDepositoVendedor.Width:=849;
end;

procedure TFormDepositoVendedor.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormDepositoVendedor.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSDepoVendedor.Close;
  CDSDepoVendedor.Params.ParamByName('id').Value:=dbcUsuarios.KeyValue;
  CDSDepoVendedor.Open;
end;

procedure TFormDepositoVendedor.tvUsuariosDepoCustomDrawItem(
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

procedure TFormDepositoVendedor.tvUsuariosDepoDragDrop(Sender, Source: TObject;  X, Y: Integer);
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

//      dbgLstDepositos.DataSource.DataSet.GotoBookmark(Pointer(dbgLstDepositos.SelectedRows.Items[id]));
      Dato1:=Lista[i];//(Source as TJvDBGrid).DataSource.DataSet.FieldByName('Nombre').AsString;//CDSCtasCajaID_CUENTA.AsString;
      Dato2:=(Source as TDBGrid).DataSource.DataSet.FieldByName('id').AsString; // Nro;
      Nodo1:=nil;
      CDSLstDepoVendedor.Close;
      CDSLstDepoVendedor.Open;
      if CDSLstDepoVendedor.Locate('id_deposito;vendedor',VarArrayOf([Dato2,Dato1]),[])=False Then
        begin
          CDSDepoVendedor.Append;
          CDSDepoVendedorID.Value          := ibgDepoUser.IncrementFD(1);
          CDSDepoVendedorVENDEDOR.Value    := Dato1;//Usuario;
          CDSDepoVendedorID_DEPOSITO.Value := StrtoInt(Dato2);//Deposito;
          CDSDepoVendedor.Post;
         // Confirma.Execute;
          CDSLstDepoVendedor.Close;
          n:=i;
          while tvUsuariosDepo.Items[N].Level>0 do
            N:=n-1;
          Nodo1 := tvUsuariosDepo.Items.AddChild(TargetNode,(Source as TDBGrid).DataSource.DataSet.FieldByName('Nombre').AsString+' ['+Dato2+']' );
          Nodo1.ImageIndex:=11;
        end;
      CDSLstDepoVendedor.Close;
    end;
end;

procedure TFormDepositoVendedor.tvUsuariosDepoDragOver(Sender, Source: TObject;
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

procedure TFormDepositoVendedor.tvUsuariosDepoGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormDepositoVendedor.tvUsuariosDepoKeyDown(Sender: TObject;
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
