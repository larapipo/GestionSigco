unit UComprobantesUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls,Buttons, StdCtrls, ToolWin,System.Variants,
  ExtCtrls, DBClient, Provider, IBGenerator,   Grids, DBGrids,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvDBLookup, Menus,StrUtils, System.Actions,
  JvAppStorage, JvAppIniStorage, Data.DB, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormComprobantesUsuarios = class(TFormABMBase)
    ibgCompUser: TIBGenerator;
    DSUsuarios: TDataSource;
    DSComprobantes: TDataSource;
    PasaTodo: TAction;
    BorraTodo: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    dbgCompUsuarios: TDBGrid;
    dbgComprobantes: TDBGrid;
    dbcUsuarios: TJvDBLookupCombo;
    Panel3: TPanel;
    tvUsuariosComp: TTreeView;
    Label4: TLabel;
    tvComprobantes: TTreeView;
    DSSucursal: TDataSource;
    DSComprobantes_2: TDataSource;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    lbNivel: TLabel;
    QCompUsuario: TFDQuery;
    QCompUsuarioID: TIntegerField;
    QCompUsuarioID_COMPROBANTE: TIntegerField;
    QCompUsuarioID_USUARIO: TIntegerField;
    QCompUsuarioMUESTRACOMPROBANTE: TStringField;
    QCompUsuarioMUESTRATIPO: TStringField;
    QCompUsuarioMUESTRACLASE: TStringField;
    QComprobantesUsuarios: TFDQuery;
    QComprobantes: TFDQuery;
    QUsuarios: TFDQuery;
    QUsuariosREAL_NAME: TStringField;
    QUsuariosUSER_ID: TIntegerField;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesMUESTRASUCURSAL: TStringField;
    QComprobantesUsuariosID: TIntegerField;
    QComprobantesUsuariosID_COMPROBANTE: TIntegerField;
    QComprobantesUsuariosID_USUARIO: TIntegerField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QComprobantes_2: TFDQuery;
    QComprobantes_2ID_COMPROBANTE: TIntegerField;
    QComprobantes_2TIPO_COMPROB: TStringField;
    QComprobantes_2CLASE_COMPROB: TStringField;
    QComprobantes_2DENOMINACION: TStringField;
    QComprobantes_2SUCURSAL: TIntegerField;
    QComprobantes_2MUESTRASUCURSAL: TStringField;
    Label5: TLabel;
    QCompUsuarioMUESTRASUCURSAL: TStringField;
    QCompUsuarioMUESTRASUC: TIntegerField;
    procedure dbgCompUsuariosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgCompUsuariosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure dbcUsuariosClick(Sender: TObject);
    procedure PasaTodoExecute(Sender: TObject);
    procedure BorraTodoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure tvUsuariosCompCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvUsuariosCompGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvComprobantesCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvComprobantesGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure Borrar1Click(Sender: TObject);
    procedure tvUsuariosCompDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvUsuariosCompDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvUsuariosCompKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CDSCompUsuario_oldNewRecord(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista:TStringList;
  end;

var
  FormComprobantesUsuarios: TFormComprobantesUsuarios;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormComprobantesUsuarios.dbgCompUsuariosDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  if Not(dbcUsuarios.KeyValue=-1) and Not(VarIsNull(dbcUsuarios.KeyValue)) Then
    begin
      QCompUsuario.Insert;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
         BEGIN
           QCompUsuarioID.Value                 := ibgCompUser.IncrementFD(1);
           QCompUsuarioID_COMPROBANTE.Value     := FieldByName('Id_comprobante').Value;
           QCompUsuarioMUESTRACOMPROBANTE.Value := FieldByName('Denominacion').Value;
           QCompUsuarioMUESTRATIPO.Value        := FieldByName('Tipo_comprob').Value;
           QCompUsuarioMUESTRACLASE.Value       := FieldByName('Clase_comprob').Value;
           QCompUsuarioMUESTRASUC.Value         := FieldByName('Sucursal').Value;
           QCompUsuarioMUESTRASUCURSAL.Value    := FieldByName('MuestraSucursal').Value;

           QCompUsuarioID_USUARIO.Value         := dbcUsuarios.KeyValue;
         END;
       QCompUsuario.Post;
       QCompUsuario.ApplyUpdates(0);
    end
  eLSE
    ShowMessage('No hay Empleado seleccionado ... Verifique!!!')

end;

procedure TFormComprobantesUsuarios.dbgCompUsuariosDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF Source = dbgComprobantes THEN
    accept := True
  ELSE
    Accept := False;
  if (QCompUsuario.Locate('id_comprobante',(Source AS TDBGrid).DataSource.DataSet.FieldByName('Id_comprobante').Value,[])) Then
    Accept:=False;
  if (dbcUsuarios.KeyValue=-1) or (VarIsNull(dbcUsuarios.KeyValue)) Then
    Accept:=False;

end;

procedure TFormComprobantesUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormComprobantesUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
 // AddClientDataSet(CDSCompUsuario,DSPCompUsusario);
  AutoSize  :=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QCompUsuario.Open;
  QComprobantes.Open;
  QUsuarios.Open;
  QSucursal.Open;
  PageControl1.ActivePageIndex:=0;
  Lista   :=TStringList.Create;
end;

procedure TFormComprobantesUsuarios.RecuperarExecute(Sender: TObject);
begin
  inherited;
  QCompUsuario.Close;
  QCompUsuario.ParamByName('id').Value:=dbcUsuarios.KeyValue;
  QCompUsuario.Open;
end;

procedure TFormComprobantesUsuarios.tvComprobantesCustomDrawItem(
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

procedure TFormComprobantesUsuarios.tvComprobantesGetSelectedIndex(
  Sender: TObject; Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormComprobantesUsuarios.tvUsuariosCompCustomDrawItem(
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

procedure TFormComprobantesUsuarios.tvUsuariosCompDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  TargetNode, SourceNode,Nodo1 : TTreeNode;
  nodeTmp : TTreeNode;
  i,Sel,Long,N : Integer;
  Tipo,Clase,Detalle,Id,IdUsuario,Temp,Sucursal:String;
  ListaNodos:TStringList;
begin
  ListaNodos    := TStringList.Create;
  Screen.Cursor := crHourGlass;

  for Sel := tvComprobantes.Items.Count - 1 downto 0 do
    begin
      if (tvComprobantes.Items[sel].Selected)then
        begin
          with tvUsuariosComp do
            begin
              TargetNode := GetNodeAt(X,Y); // Get target node
              SourceNode := tvComprobantes.Items[sel];
              i  := TargetNode.Index;
              if (TargetNode.Level)=0 then
                begin
                  Temp    :=Trim(SourceNode.Text);
                  Detalle :=Copy(Temp,1,pos('[',Temp)-1);
                  Temp    :=Trim(Copy(Temp,pos('[',Temp)+1,length(Temp)));
                  Tipo :=Copy(Detalle,1,2);
                  Clase:=Copy(Detalle,4,2);
                  Delete(temp,length(Temp),1);
                  if pos('[',Temp)>0 then
                    Id      := AnsiRightStr( Temp, pos('[',Temp)-2 )
                  else
                    Id:=Temp  ;  // Copy(Temp,1,pos(')',Temp)-1);

                  Long:= pos(']',TargetNode.Text)- pos('[',TargetNode.Text);
                  Long:=Long-1;

                  IdUsuario:= Copy(TargetNode.Text,pos( '[' ,TargetNode.Text)+1,Long);
 
                  QComprobantesUsuarios.Close;
                  QComprobantesUsuarios.Open;
                  if Not(QComprobantesUsuarios.Locate('ID_COMPROBANTE;ID_USUARIO',VarArrayOf([id,idUsuario]),[])) Then
                    begin
                      QCompUsuario.Append;
                      QCompUsuarioID.Value                := ibgCompUser.IncrementFD(1);
                      QCompUsuarioID_COMPROBANTE.Value    := StrToInt(id);
                      QCompUsuarioID_USUARIO.Value        := StrToInt(IdUsuario);
                      QCompUsuarioMUESTRACOMPROBANTE.Value:= Detalle;
                      QCompUsuarioMUESTRATIPO.Value       := Tipo;
                      QCompUsuarioMUESTRACLASE.Value      := Clase;
                      Sucursal                            := QCompUsuarioMUESTRASUCURSAL.ASString;
                      QCompUsuario.Post;
//                      if QCompUsuario.ApplyUpdates(0)=0 then
                        begin
                          ListaNodos.Add(IntToStr(Sel));
                          n:=i;
                          while tvUsuariosComp.Items[N].Level>0 do
                            N:=n-1;
                          Nodo1 := tvUsuariosComp.Items.AddChild(TargetNode,Sucursal+ ' >> '+ Detalle+' ['+id+']' );
                          Nodo1.ImageIndex:=-1;
                        end;
                    end;
                end;

            end;
        end;
    end;
  try
    if (QCompUsuario.Active) then
      QCompUsuario.ApplyUpdates(-1);
  finally

  end;
  FreeAndNil(ListaNodos);
  Screen.Cursor:=crDefault;
end;

procedure TFormComprobantesUsuarios.tvUsuariosCompDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
  if (Source is TTreeView ) then
    Accept:=True;
  if tvUsuariosComp.Selected<>nil then
    begin
      if (y < 14) then {On the upper edge - should scroll up }
        SendMessage(tvUsuariosComp.Handle, WM_VSCROLL, SB_LINEUP, 0)
      else
        if (tvUsuariosComp.Height - y < 14) then { On the lower edge - should scroll down }
          SendMessage(tvUsuariosComp.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
      Nodo:=tvUsuariosComp.Selected;
      lbNivel.Caption:='Level:'+IntToStr(Nodo.Level)+'..Y:'+IntToStr(y);
    end;
end;

procedure TFormComprobantesUsuarios.tvUsuariosCompGetSelectedIndex(
  Sender: TObject; Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex:=Node.ImageIndex;
end;

procedure TFormComprobantesUsuarios.tvUsuariosCompKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    begin
      key:=VK_OEM_CLEAR;
      Borrar1.Click;
    end;
  
end;

procedure TFormComprobantesUsuarios.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
 QCompUsuario.ApplyUpdates(0);
 Recuperar.Execute;

end;
{
procedure TFormComprobantesUsuarios.BuscarExecute(Sender: TObject);
var
  NodoUsuario, NodoComp, NodoSuc: TTreeNode;
begin
  Screen.Cursor := crHourGlass;
  tvUsuariosComp.Items.BeginUpdate;
  tvComprobantes.Items.BeginUpdate;
  try
    tvUsuariosComp.Items.Clear;

    QUsuarios.DisableControls;
    try
      QUsuarios.First;
      while not QUsuarios.Eof do
      begin
        // Nodo raíz = Usuario
        NodoUsuario := tvUsuariosComp.Items.Add(nil,
          Format('%s [%d]',
            [QUsuariosREAL_NAME.AsString,
             QUsuariosUSER_ID.AsInteger]));
        NodoUsuario.ImageIndex := 10;

        // Comprobantes de ese usuario
        QCompUsuario.ParamByName('id').AsInteger := QUsuariosUSER_ID.AsInteger;
        QCompUsuario.Open;
        try
          while not QCompUsuario.Eof do
          begin
            NodoComp := tvUsuariosComp.Items.AddChild(NodoUsuario,
              Format('%s >> %s [%d]',
                [QCompUsuarioMUESTRASUCURSAL.AsString,
                 QCompUsuarioMUESTRACOMPROBANTE.AsString,
                 QCompUsuarioID_COMPROBANTE.AsInteger]));
            NodoComp.ImageIndex := -1;
            QCompUsuario.Next;
          end;
        finally
          QCompUsuario.Close;
        end;

        QUsuarios.Next;
      end;
    finally
      QUsuarios.EnableControls;
    end;

    tvComprobantes.Items.Clear;

    QSucursal.DisableControls;
    try
      QSucursal.First;
      while not QSucursal.Eof do
      begin
        // Nodo raíz = Sucursal
        NodoSuc := tvComprobantes.Items.Add(nil,
          Format('%s [%d]',
            [QSucursalDETALLE.AsString,
             QSucursalCODIGO.AsInteger]));
        NodoSuc.ImageIndex := 11;

        // Comprobantes de esa sucursal
        QComprobantes_2.ParamByName('sucursal').AsInteger :=
          QSucursalCODIGO.AsInteger;
        QComprobantes_2.Open;
        try
          while not QComprobantes_2.Eof do
          begin
            NodoComp := tvComprobantes.Items.AddChild(NodoSuc,
              Format('%s-%s-%s [%d]',
                [QComprobantes_2TIPO_COMPROB.AsString,
                 QComprobantes_2CLASE_COMPROB.AsString,
                 QComprobantes_2DENOMINACION.AsString,
                 QComprobantes_2ID_COMPROBANTE.AsInteger]));
            NodoComp.ImageIndex := 12;
            QComprobantes_2.Next;
          end;
        finally
          QComprobantes_2.Close;
        end;

        QSucursal.Next;
      end;
    finally
      QSucursal.EnableControls;
    end;

  finally
    tvComprobantes.Items.EndUpdate;
    tvUsuariosComp.Items.EndUpdate;
    Screen.Cursor := crDefault;
  end;
end;
}

procedure TFormComprobantesUsuarios.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin
  Nodo1 := NIL;
  QUsuarios.First;
  Lista.Clear;
  Screen.Cursor:=crHourGlass;
  tvUsuariosComp.Items.Clear;
  tvUsuariosComp.AutoExpand:=False;
  tvUsuariosComp.Items.BeginUpdate;
  WHILE NOT (QUsuarios.Eof) DO
    BEGIN
      Lista.Add(QUsuariosREAL_NAME.Value);
     // Application.ProcessMessages;
      Nodo1 := tvUsuariosComp.Items.Add(NIL, QUsuariosREAL_NAME.AsString+' ['+QUsuariosUSER_ID.AsString+']');
      Nodo1.ImageIndex:=10;
      tvUsuariosComp.Selected := Nodo1;
      N := tvUsuariosComp.Selected.AbsoluteIndex;
      QCompUsuario.Close;
      QCompUsuario.ParamByName('id').Value:=QUsuariosUSER_ID.Value;
      QCompUsuario.Open;
      QCompUsuario.First;
      QCompUsuario.DisableControls;
      WHILE NOT (QCompUsuario.Eof) DO
        BEGIN
          Nodo1 := tvUsuariosComp.Items.AddChild( tvUsuariosComp.Items[N], QCompUsuarioMUESTRASUCURSAL.AsString+ ' >> '+ QCompUsuarioMUESTRACOMPROBANTE.AsString+' ['+QCompUsuarioID_COMPROBANTE.AsString+']' );
          Nodo1.ImageIndex:=-1;
          tvUsuariosComp.Selected := Nodo1;
          QCompUsuario.Next;
        END;
      QCompUsuario.EnableControls;
      QUsuarios.Next;
    END;
  tvUsuariosComp.AutoExpand:=False;
  tvUsuariosComp.FullCollapse;
  tvUsuariosComp.Items.EndUpdate;


//**** Comprobantes *****

  tvComprobantes.Items.Clear;
  tvComprobantes.AutoExpand:=False;
  tvComprobantes.Items.BeginUpdate;
  QSucursal.First;
  WHILE NOT (QSucursal.Eof) DO
    BEGIN
      Application.ProcessMessages;
      Nodo1 := tvComprobantes.Items.Add(NIL, QSucursalDETALLE.AsString+' ['+QSucursalCODIGO.AsString+']');
      Nodo1.ImageIndex:=11;
      tvComprobantes.Selected := Nodo1;
      N := tvComprobantes.Selected.AbsoluteIndex;
      QComprobantes_2.Close;
      QComprobantes_2.Params.ParamByName('sucursal').Value:= QSucursalCODIGO.Value;
      QComprobantes_2.Open;
      QComprobantes_2.First;
      QComprobantes_2.DisableControls;
      WHILE NOT (QComprobantes_2.Eof) DO
        BEGIN
          Nodo1 := tvComprobantes.Items.AddChild( tvComprobantes.Items[N],QComprobantes_2TIPO_COMPROB.AsString+'-'+
                                                                          QComprobantes_2CLASE_COMPROB.AsString+'-'+
                                                                          QComprobantes_2DENOMINACION.ASString+
                                                                          ' ['+QComprobantes_2ID_COMPROBANTE.AsString+']' );
          Nodo1.ImageIndex:=12;
          tvComprobantes.Selected := Nodo1;
          QComprobantes_2.Next;
        END;
      QComprobantes_2.EnableControls;

      QSucursal.Next;
    END;
  tvComprobantes.AutoExpand:=False;
  tvComprobantes.Items.EndUpdate;
  tvComprobantes.FullCollapse;
  Screen.Cursor:=crDefault;

end;


procedure TFormComprobantesUsuarios.CancelarExecute(Sender: TObject);
begin
  //inherited;
  Recuperar.Execute;
//  CDSCompUsuario.Close;

end;

procedure TFormComprobantesUsuarios.CDSCompUsuario_oldNewRecord(DataSet: TDataSet);
begin
  inherited;
 // CDSCompUsuarioMUESTRASUCURSAL.Value:=
end;

procedure TFormComprobantesUsuarios.dbcUsuariosClick(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;

procedure TFormComprobantesUsuarios.PasaTodoExecute(Sender: TObject);
begin
  inherited;
  if Not(dbcUsuarios.KeyValue=-1) and Not(VarIsNull(dbcUsuarios.KeyValue)) Then
    begin
      QComprobantes.First;
      while Not(QComprobantes.Eof) do
        begin
            if Not(QCompUsuario.Locate('id_comprobante',QComprobantesID_COMPROBANTE.value,[])) Then
              begin
                QCompUsuario.Insert;
                QCompUsuarioID.Value                 := ibgCompUser.IncrementFD(1);
                QCompUsuarioID_COMPROBANTE.Value     := QComprobantesID_COMPROBANTE.Value;
                QCompUsuarioMUESTRACOMPROBANTE.Value := QComprobantesDENOMINACION.Value;
                QCompUsuarioMUESTRATIPO.Value        := QComprobantesTIPO_COMPROB.Value;
                QCompUsuarioMUESTRACLASE.Value       := QComprobantesCLASE_COMPROB.Value;
                QCompUsuarioMUESTRASUC.Value         := QComprobantesSUCURSAL.Value;
                QCompUsuarioID_USUARIO.Value         := dbcUsuarios.KeyValue;
                QCompUsuario.Post;
              end;
          QComprobantes.Next;
        end;
      QComprobantes.First;
    end
  else
    ShowMessage('No hay Empleado seleccionado ... Verifique!!!')

end;

procedure TFormComprobantesUsuarios.Borrar1Click(Sender: TObject);
var i,N:Integer;
Nro,dato1,Dato2:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode := tvUsuariosComp.Selected;//(X,Y); // Get target node
  if TargetNode.Level>0 then
    begin
      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));
      if pos('[',Nro)>0 then
        Nro      := AnsiRightStr( Nro, pos('[',Nro)-1 );  // Copy(Temp,1,pos(')',Temp)-1);
      Dato1:=Nro;

      i:=tvUsuariosComp.Selected.AbsoluteIndex;
      while tvUsuariosComp.Items[i].Level>0 do
        i:=i-1;
      TargetNode := tvUsuariosComp.Items[i];

      Nro:= TargetNode.Text;
      i  := TargetNode.Index;
      Nro:=copy(Nro,Pos('[',Nro)+1,length(Nro));
      Nro:=Trim(AnsiReplaceStr(Nro,']',''));

//      Delete(Nro,length(Nro),1);


      QComprobantesUsuarios.Close;
      QComprobantesUsuarios.Open;

      Dato2:=Nro;//CDSCtasCajaNOMBRE.AsString;
      if QComprobantesUsuarios.Locate('ID_COMPROBANTE;ID_USUARIO',VarArrayOf([Dato1,Dato2]),[]) Then
        begin
          QComprobantesUsuarios.Delete;
          QComprobantesUsuarios.ApplyUpdates(0);
          tvUsuariosComp.Selected.Delete;
          QComprobantesUsuarios.Close;
          QComprobantesUsuarios.Open;

         // Confirma.Execute;
        end;
  end;
end;

procedure TFormComprobantesUsuarios.BorraTodoExecute(Sender: TObject);
begin
  inherited;
  while not(QCompUsuario.eof) Do
    QCompUsuario.Delete;
end;

procedure TFormComprobantesUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComprobantesUsuarios:=nil;
end;

procedure TFormComprobantesUsuarios.FormResize(Sender: TObject);
begin
  inherited;
  if Width<>850 then Width:=850;

end;

procedure TFormComprobantesUsuarios.FormShow(Sender: TObject);
begin
 // inherited;
  Buscar.Execute;
end;

end.