unit URubrosFueraPromo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, ComCtrls, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList,  ActnList, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, DBClient,
  Provider, JvBaseDlg, JvProgressDialog, JvExComCtrls, JvComCtrls,
  JvCheckTreeView, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormRubrosFueraPromocion = class(TFormABMBase)
    btConsulta: TBitBtn;
    pdProgress: TJvProgressDialog;
    QSubRubro: TFDQuery;
    QSubRubroCODIGO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    QSubRubroDETALLE: TStringField;
    QSubRubroFUERA_PROMO: TStringField;
    QRubros: TFDQuery;
    QRubrosCODIGO: TStringField;
    QRubrosDETALLE: TStringField;
    QRubrosFUERA_PROMO: TStringField;
    QCambiarRubro: TFDQuery;
    QCambiarSubUnit: TFDQuery;
    QCambiarSubAll: TFDQuery;
    tvListado: TJvCheckTreeView;
    Panel2: TPanel;
    procedure btConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvListadoClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Abortar:Boolean;
  end;

var
  FormRubrosFueraPromocion: TFormRubrosFueraPromocion;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormRubrosFueraPromocion.btConsultaClick(Sender: TObject);
VAR
  Nodo1: TTreeNode;
  N, M: Integer;
BEGIN
  Nodo1 := NIL;
  tvListado.Visible:=False;
  tvListado.Items.Clear;
  Abortar         :=False;
  Confirma.Enabled:=False;
  Salir.Enabled   :=False;
  Cancelar.Enabled:=True;
  QSubRubro.Close;
  QRubros.Close;
  QRubros.Open;
  QRubros.First;
  pdProgress.Min      := 0;
  pdProgress.Max      := QRubros.RecordCount-1;
  pdProgress.Position := 0;
  pdProgress.Show;
  QRubros.DisableControls;
  WHILE (NOT (QRubros.Eof)) and (Abortar=False) DO
    BEGIN
      pdProgress.Position:=pdProgress.Position+1;
      Nodo1 := tvListado.Items.Add(NIL, QRubrosCODIGO.AsString + '-' + QRubrosDETALLE.Value);
      if QRubrosFUERA_PROMO.Value='S' then
        Nodo1.StateIndex:=2
      else
        Nodo1.StateIndex:=1;
      tvListado.Selected := Nodo1;
      N := tvListado.Selected.AbsoluteIndex;
      QSubRubro.Close;
      QSubRubro.ParamByName('id').Value := QRubrosCODIGO.Value;
      QSubRubro.Open;
      QSubRubro.DisableControls;
      WHILE (NOT (QSubRubro.Eof)) and (Abortar=False) DO
        BEGIN
          Nodo1 := tvListado.Items.AddChild(tvListado.Items[N],QSubRubroCODIGO.AsString + '-' + QSubRubroDETALLE.Value);
          if QSubRubroFUERA_PROMO.Value='S' then
            Nodo1.StateIndex:=2
          else
            Nodo1.StateIndex :=1;
          tvListado.Selected := Nodo1;
          M := tvListado.Selected.AbsoluteIndex;
          QSubRubro.Next;
        END;
      QSubRubro.EnableControls;
      QRubros.Next;
    END;
  QRubros.EnableControls;
  pdProgress.Hide;
  tvListado.FullExpand;
  Confirma.Enabled := True;
  Salir.Enabled    := True;
  Cancelar.Enabled := False;
  tvListado.Visible:= True;

end;

procedure TFormRubrosFueraPromocion.CancelarExecute(Sender: TObject);
begin
//  inherited;
  Abortar:=True;
  Confirma.Enabled:=True;
  Salir.Enabled   :=True;
  Cancelar.Enabled:=False;
end;

procedure TFormRubrosFueraPromocion.ConfirmaExecute(Sender: TObject);
var  Nodo: TTreeNode;
i:Integer;
codigo,Estado:String;
begin
  Screen.Cursor:=crHourGlass;
  for I := 0 to tvListado.Items.Count - 1 do
    begin
      Nodo   := tvListado.Items[i];
      codigo := Copy(Nodo.Text,1,pos('-',Nodo.Text)-1);
      Estado:='N';
      if (Nodo.StateIndex>=2) Then
        Estado:='S';
      if nodo.Level=0 then
        begin
          QCambiarRubro.Close;
          QCambiarRubro.ParamByName('Codigo').Value  := codigo;
          QCambiarRubro.ParamByName('estado').Value  := Estado;
          QCambiarRubro.ExecSQL;
          QCambiarRubro.Close;
        end
      else
        if nodo.Level=1 then
          begin
            QCambiarSubUnit.Close;
            QCambiarSubUnit.ParamByName('Codigo').Value  := codigo;
            QCambiarSubUnit.ParamByName('estado').Value  := Estado;
            QCambiarSubUnit.ExecSQL;
            QCambiarSubUnit.Close;
          end;
    end;
  Screen.Cursor:=crDefault;

end;

procedure TFormRubrosFueraPromocion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  inherited;

end;

procedure TFormRubrosFueraPromocion.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormRubrosFueraPromocion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRubrosFueraPromocion:=nil;
end;

procedure TFormRubrosFueraPromocion.FormResize(Sender: TObject);
begin
  inherited;
  if FormRubrosFueraPromocion<>nil then
    if FormRubrosFueraPromocion.Width<>658 then
      FormRubrosFueraPromocion.Width:=658;
end;

procedure TFormRubrosFueraPromocion.FormShow(Sender: TObject);
begin
  inherited;
  tvListado.AutoExpand:=True
end;

procedure TFormRubrosFueraPromocion.tvListadoClick(Sender: TObject);
var Codigo,Estado:String;
  Nodo:TTreeNode;
begin
  inherited;
  Nodo:=tvListado.Selected;
  Estado:='N';
  if (Nodo.StateIndex>1) Then
    Estado:='S';

  codigo := Copy(Nodo.Text,1,pos('-',Nodo.Text)-1);

  if  tvListado.Selected.Level=0 then
     begin
       QCambiarRubro.Close;
       QCambiarRubro.ParamByName('Codigo').Value  := codigo;
       QCambiarRubro.ParamByName('estado').Value  := Estado;
       QCambiarRubro.ExecSQL;
       QCambiarRubro.Close;
       QCambiarSubAll.Close;
       QCambiarSubAll.ParamByName('Codigo').Value  := codigo;
       QCambiarSubAll.ParamByName('estado').Value  := Estado;
       QCambiarSubAll.ExecSQL;
       QCambiarSubAll.Close;
     end
   else
     if  tvListado.Selected.Level=1 then
       begin
         QCambiarSubUnit.Close;
         QCambiarSubUnit.ParamByName('Codigo').Value     := codigo;
         QCambiarSubUnit.ParamByName('estado').Value:= Estado;
         QCambiarSubUnit.ExecSQL;
         QCambiarSubUnit.Close;
       end
end;

end.
