UNIT UPlanCuentaDeGastos;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ImgList, StdCtrls, Buttons,
  ToolWin, ExtCtrls,  frxDBSet, frxClass, JvComponentBase, 
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, Provider, DBClient, JvBaseDlg, JvProgressDialog, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB, Vcl.ComCtrls,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, frCoreClasses;

TYPE
  TFormPlanCuentaGastos = CLASS(TFormABMBase)
    tvListado: TTreeView;
    btListar: TBitBtn;
    Consultar: TAction;
    Imprimir: TAction;
    frxReporte: TfrxReport;
    frDBListado: TfrxDBDataset;
    btImprimir: TBitBtn;
    spCambiaCodigo: TSQLStoredProc;
    Expandir: TAction;
    pdProgress: TJvProgressDialog;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    SelecionaItem: TAction;
    lbIndex: TLabel;
    SpeedButton2: TSpeedButton;
    QListaCuenta: TFDQuery;
    QCuenta: TFDQuery;
    QRubros: TFDQuery;
    QCambiarNombreRubro: TFDQuery;
    QListaCuentaCODIGO: TStringField;
    QListaCuentaCODIGO_RUBRO: TStringField;
    QListaCuentaDETALLE: TStringField;
    QListaCuentaMUESTRARUBRO: TStringField;
    QCuentaCODIGO: TStringField;
    QCuentaCODIGO_RUBRO: TStringField;
    QCuentaDETALLE: TStringField;
    QRubrosCODIGO: TStringField;
    QRubrosDETALLE: TStringField;
    QCambiarNombreSub: TFDQuery;
    SpeedButton3: TSpeedButton;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE DSBaseStateChange(Sender: TObject);
    PROCEDURE ConsultarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure tvListadoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvListadoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvListadoCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SelecionaItemExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure MoveNodo(TargetNodo,SourceNodo:TTreeNode);
  public
    { Public declarations }
  END;

VAR
  FormPlanCuentaGastos: TFormPlanCuentaGastos;

IMPLEMENTATION

{$R *.DFM}

USES UDMain_FD;

procedure TFormPlanCuentaGastos.MoveNodo(TargetNodo,SourceNodo:TTreeNode);
var
  nodeTmp : TTreeNode;
  i : Integer;
codigo1,codigo2:String;
begin
  with tvListado do
  begin
    nodeTmp := Items.AddChild(TargetNodo,SourceNodo.Text);
    codigo1:=Copy(SourceNodo.Text,1,pos('-',SourceNodo.Text)-1);
    codigo2:=Copy(TargetNodo.Text,1,pos('-',TargetNodo.Text)-1);
    spCambiaCodigo.Close;
    spCambiaCodigo.Params.Items[0].AsString:=codigo2;
    spCambiaCodigo.Params.Items[1].AsString:=codigo1;
    spCambiaCodigo.ExecProc;
    spCambiaCodigo.Close;

    for i := 0 to SourceNodo.Count -1 do
    begin
      MoveNodo(nodeTmp,SourceNodo.Item[i]);
    end;
  end;
end;

PROCEDURE TFormPlanCuentaGastos.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  autosize:=False;
//  Consultar.Execute;
END;

PROCEDURE TFormPlanCuentaGastos.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  INHERITED;
  QCuenta.Close;
  QRubros.Close;
END;

PROCEDURE TFormPlanCuentaGastos.FormDestroy(Sender: TObject);
BEGIN
  INHERITED;
  FormPlanCuentaGastos := NIL;
END;

PROCEDURE TFormPlanCuentaGastos.DSBaseStateChange(Sender: TObject);
BEGIN
  // inherited;

END;

PROCEDURE TFormPlanCuentaGastos.ConsultarExecute(Sender: TObject);
VAR
  Nodo1: TTreeNode;
  N, M: Integer;
BEGIN
  Nodo1 := NIL;
  tvListado.Items.Clear;

  QCuenta.Close;
  QRubros.Close;
  QRubros.Open;
  QRubros.First;
  pdProgress.Min:=0;
  pdProgress.Max:=QRubros.RecordCount-1;
  pdProgress.Position:=0;
  pdProgress.Show;
  WHILE NOT (QRubros.Eof) DO
    BEGIN
      pdProgress.Position:=pdProgress.Position+1;
      Application.ProcessMessages;
      Nodo1              := tvListado.Items.Add(NIL, QRubrosCODIGO.AsString + '-' + QRubrosDETALLE.Value);
      tvListado.Selected := Nodo1;
      N                  := tvListado.Selected.AbsoluteIndex;
      QCuenta.Close;
      QCuenta.ParamByName('id').Value := QRubrosCODIGO.Value;
      QCuenta.Open;
      WHILE NOT (QCuenta.Eof) DO
        BEGIN
          Nodo1              := tvListado.Items.AddChild(tvListado.Items[N], QCuentaCODIGO.AsString + '-' + QCuentaDETALLE.Value);
          tvListado.Selected := Nodo1;
          M                  := tvListado.Selected.AbsoluteIndex;
          QCuenta.Next;
        END;
      QRubros.Next;
    END;
  pdProgress.Hide;
END;

procedure TFormPlanCuentaGastos.ImprimirExecute(Sender: TObject);
begin
  inherited;
  QListaCuenta.Close;
  QListaCuenta.Open;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaCuentaGastos.fr3');
  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
  QListaCuenta.Close;
end;

procedure TFormPlanCuentaGastos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
   frxReporte.DesignReport;
end;

procedure TFormPlanCuentaGastos.SelecionaItemExecute(Sender: TObject);
var Nodo:TTreeNode;
codigo,Detalle:String;
I:integer;
begin
  inherited;
  Nodo    := tvListado.Items[tvListado.Selected.AbsoluteIndex];
  codigo  := Copy(Nodo.Text,1,pos('-',Nodo.Text)-1);
  Detalle := Copy(Nodo.Text,pos('-',Nodo.Text)+1,100);
  Detalle := Copy(Detalle,pos('-',Detalle)+1,100);
  Detalle := Trim(Detalle);
  Edit1.Text := Codigo;
  Edit2.Text := Detalle;
  lbIndex.Caption:=inttostr(tvListado.Selected.AbsoluteIndex);
end;

procedure TFormPlanCuentaGastos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  tvListado.FullExpand;
end;

procedure TFormPlanCuentaGastos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if  tvListado.Selected.Level=0 then
     begin
       QCambiarNombreRubro.Close;
       QCambiarNombreRubro.ParamByName('Codigo').Value     := Edit1.Text;
       QCambiarNombreRubro.ParamByName('descripcion').Value:= Edit2.Text;
       QCambiarNombreRubro.ExecSQL;
       QCambiarNombreRubro.Close;
     end
   else
     if  tvListado.Selected.Level=1 then
       begin
         QCambiarNombreSub.Close;
         QCambiarNombreSub.ParamByName('Codigo').Value     := Edit1.Text;
         QCambiarNombreSub.ParamByName('descripcion').Value:= Edit2.Text;
         QCambiarNombreSub.ExecSQL;
         QCambiarNombreSub.Close;
       end;

   tvListado.Items[StrToInt(lbIndex.Caption)];
   tvListado.Selected.Text:=Edit1.text+'-'+Edit2.Text;
end;

procedure TFormPlanCuentaGastos.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  tvListado.FullCollapse;
end;

procedure TFormPlanCuentaGastos.tvListadoCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  if Node.Level=0 then
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
    Sender.Canvas.Font.Color:=clWhite;

end;

procedure TFormPlanCuentaGastos.tvListadoDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  TargetNode, SourceNode : TTreeNode;
begin
  with tvListado do
  begin
    TargetNode := GetNodeAt(X,Y); // Get target node
    SourceNode := Selected;
   if (SourceNode.Level=1) and (TargetNode.Level=0) then
     begin
       if (TargetNode = nil) then
         begin
           EndDrag(False);
           Exit;
         end;
       MoveNodo(TargetNode,SourceNode);
       SourceNode.Free;
     end;
  end;
end;


procedure TFormPlanCuentaGastos.tvListadoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
  if (Sender = tvListado) then
    Accept:=True;
  Nodo:=tvListado.Selected;
  if Nodo.Level=0 then
    Accept:=False;
  if (y < 14) then {On the upper edge - should scroll up }
    SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEUP, 0)
  else
    if (tvListado.Height - y < 14) then { On the lower edge - should scroll down }
      SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEDOWN, 0);

end;

END.
