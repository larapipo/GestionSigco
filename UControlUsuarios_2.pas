unit UControlUsuarios_2;

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
  Datasnap.Provider, Datasnap.DBClient, AdvCustomControl, AdvTreeViewBase,
  AdvTreeViewData, AdvCustomTreeView, AdvTreeView, AdvCheckedTreeView;

type TActLst = class
       AccNombre  :String;
       Categoria  :string;
     end;
type
  TFormControlUsuarios_2 = class(TFormABMBase)
    Panel2: TPanel;
    tvPermisosCopia: TAdvCheckedTreeView;
    Panel3: TPanel;
    tvPermisos: TAdvCheckedTreeView;
    Panel4: TPanel;
    Panel5: TPanel;
    QPermisos: TFDQuery;
    QSetPermisos: TFDQuery;
    QGetId: TFDQuery;
    DataSource1: TDataSource;
    CDSPermisos: TClientDataSet;
    DSPPermisos: TDataSetProvider;
    spRestaurar: TFDStoredProc;
    spCopiarPermisos: TFDStoredProc;
    Panel6: TPanel;
    Panel7: TPanel;
    CargarPermisos: TAction;
    QPermisosBk: TFDQuery;
    CDSPermisosBk: TClientDataSet;
    DSPPermisosBk: TDataSetProvider;
    mtAcciones: TFDMemTable;
    mtAccionesACCION: TStringField;
    mtAccionesCATEGORIA: TStringField;
    CDSPermisosBkPROF_ID: TIntegerField;
    CDSPermisosBkPROF_DESCRIPTION: TStringField;
    CDSPermisosBkCOMP_ID: TIntegerField;
    CDSPermisosBkCOMP_NAME: TStringField;
    CDSPermisosBkSEC_LEVEL: TStringField;
    CDSPermisosBkCATEGORIA: TStringField;
    CDSPermisosPROF_ID: TIntegerField;
    CDSPermisosPROF_DESCRIPTION: TStringField;
    CDSPermisosCOMP_ID: TIntegerField;
    CDSPermisosCOMP_NAME: TStringField;
    CDSPermisosSEC_LEVEL: TStringField;
    CDSPermisosCATEGORIA: TStringField;
    lbPerfil: TLabel;
    HacerCopia: TAction;
    BitBtn1: TBitBtn;
    Splitter1: TSplitter;
    procedure BuscarExecute(Sender: TObject);
    procedure CargarPermisosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HacerCopiaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    TFAct:TActionList;
  public
    LstAcciones: TStringList;
    ActLst     : TActLst;
  property Fact:TActionList read TFAct write TFAct;
    { Public declarations }
  end;

var
  FormControlUsuarios_2: TFormControlUsuarios_2;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormControlUsuarios_2.BuscarExecute(Sender: TObject);
var
  Nodo,SubNodo,EleNodo: TAdvTreeViewNode;
  Profile_Nombre,NomCategoria :String;
  i:Integer;
  Accion   : TAction;
begin
  //inherited;
  tvPermisosCopia.ClearNodes;
  tvPermisos.ClearNodes;

  if LstAcciones<>nil then
    FreeAndNil(LstAcciones);
  mtAcciones.Open;
  mtAcciones.EmptyDataSet;
  for i := 0 to Fact.ActionCount-1 do
    begin
      Accion                    := TAction(Fact.Actions[i]);
      mtAcciones.Append;
      mtAccionesACCION.Value    := Accion.Name;
      mtAccionesCATEGORIA.Value := Accion.Category;
      mtAcciones.Post;
    end;
  mtAcciones.IndexFieldNames:='ACCION';

  CDSPermisosBk.Close;
  CDSPermisosBk.Open;
  CDSPermisosBk.First;
  while not(CDSPermisosBk.Eof) do
    begin
      CDSPermisosBk.Edit;
      if mtAcciones.Locate('ACCION',CDSPermisosBkCOMP_NAME.AsString,[]) then
        CDSPermisosBkCATEGORIA.Value:=mtAccionesCATEGORIA.Value // (LstAcciones.Objects[I] as TActLst).Categoria
      else
       CDSPermisosBkCATEGORIA.Value:='Sin Categoria';
     CDSPermisosBk.Next;
    end;
  CDSPermisosBk.First;
  CDSPermisosBk.IndexFieldNames:='PROF_DESCRIPTION;CATEGORIA;COMP_NAME';
  CDSPermisosBk.First;


  CDSPermisos.Close;
  CDSPermisos.Open;
  CDSPermisos.First;
  while not(CDSPermisos.Eof) do
    begin
      CDSPermisos.Edit;
      if mtAcciones.Locate('ACCION',CDSPermisosCOMP_NAME.AsString,[]) then
        CDSPermisosCATEGORIA.Value:=mtAccionesCATEGORIA.Value // (LstAcciones.Objects[I] as TActLst).Categoria
      else
       CDSPermisosCATEGORIA.Value:='Sin Categoria';
     CDSPermisos.Next;
    end;
  CDSPermisos.First;
  CDSPermisos.IndexFieldNames:='PROF_DESCRIPTION;CATEGORIA;COMP_NAME';
  CDSPermisos.First;

  tvPermisosCopia.ClearNodes;
  tvPermisos.ClearNodes;

  Profile_Nombre :=CDSPermisosBkPROF_DESCRIPTION.Value;

  while not(CDSPermisosBk.Eof) do
    begin
      Nodo           := tvPermisosCopia.AddNode;
      Nodo.Text[0]   := CDSPermisosBkPROF_DESCRIPTION.AsString;
      Nodo.Extended  := True;
      Profile_Nombre := CDSPermisosBkPROF_DESCRIPTION.Value;
      while (Profile_Nombre=Trim(CDSPermisosBkPROF_DESCRIPTION.AsString)) and (not(CDSPermisosBk.Eof)) do
        begin
          NomCategoria   := CDSPermisosBkCATEGORIA.Value;
          while (NomCategoria=Trim(CDSPermisosBkCATEGORIA.AsString)) and (not(CDSPermisosBk.Eof)) do
            begin
              subNodo           := tvPermisosCopia.AddNode(Nodo);
              subNodo.Text[0]   := CDSPermisosBkCATEGORIA.AsString;
              subNodo.Extended  := True;
              while (NomCategoria=Trim(CDSPermisosBkCATEGORIA.Value)) and (not(CDSPermisosBk.Eof)) do
                begin
                  EleNodo               := tvPermisosCopia.AddNode(subNodo);
                  EleNodo.Text[0]       := CDSPermisosBkCOMP_NAME.AsString;
                  EleNodo.CheckTypes[0] := tvntCheckBox;
                  EleNodo.Checked[0]    := CDSPermisosBkSEC_LEVEL.Value='0';
                  CDSPermisosBk.Next;
                end;
            end;
          NomCategoria      := Trim(CDSPermisosBkCATEGORIA.Value);
        end;
      Profile_Nombre := Trim(CDSPermisosBkPROF_DESCRIPTION.Value);
     end;


  Profile_Nombre :=CDSPermisosPROF_DESCRIPTION.Value;

  while not(CDSPermisos.Eof) do
    begin
      Nodo           := tvPermisos.AddNode;
      Nodo.Text[0]   := CDSPermisosPROF_DESCRIPTION.AsString;
      Nodo.Extended  := True;
      Profile_Nombre := CDSPermisosPROF_DESCRIPTION.Value;
      while (Profile_Nombre=Trim(CDSPermisosPROF_DESCRIPTION.AsString)) and (not(CDSPermisos.Eof)) do
        begin
          NomCategoria   := CDSPermisosCATEGORIA.Value;
          while (NomCategoria=Trim(CDSPermisosCATEGORIA.AsString)) and (not(CDSPermisos.Eof)) do
            begin
              subNodo           := tvPermisos.AddNode(Nodo);
              subNodo.Text[0]   := CDSPermisosCATEGORIA.AsString;
              subNodo.Extended  := True;
              while (NomCategoria=Trim(CDSPermisosCATEGORIA.Value)) and (not(CDSPermisos.Eof)) do
                begin
                  EleNodo               := tvPermisos.AddNode(subNodo);
                  EleNodo.Text[0]       := CDSPermisosCOMP_NAME.AsString;
                  EleNodo.CheckTypes[0] := tvntCheckBox;
                  EleNodo.Checked[0]    := CDSPermisosSEC_LEVEL.Value='0';
                  CDSPermisos.Next;
                end;
            end;
          NomCategoria      := Trim(CDSPermisosCATEGORIA.Value);
        end;
      Profile_Nombre := Trim(CDSPermisosPROF_DESCRIPTION.Value);
    end;

end;

procedure TFormControlUsuarios_2.CargarPermisosExecute(Sender: TObject);
begin
 inherited;
  if MessageDlg('Restaurar Perfil desde Copia',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
    begin
      try
        DMMain_FD.fdcGestion.StartTransaction;
        spRestaurar.Close;
        spRestaurar.ParamByName('PERFIL').Value:=Trim(lbPerfil.Caption);
        spRestaurar.ExecProc;
        spRestaurar.Close;
        DMMain_FD.fdcGestion.Commit;
        Buscar.Execute;
      except
        DMMain_FD.fdcGestion.Rollback;
        spRestaurar.Close;
        ShowMessage('No se udo Hacer la Restauracion....');
      end;
    end;

end;

procedure TFormControlUsuarios_2.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlUsuarios_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlUsuarios_2.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name;
  tvPermisosCopia.ClearNodes;
  tvPermisos.ClearNodes;
end;

procedure TFormControlUsuarios_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlUsuarios_2:=nil;
end;

procedure TFormControlUsuarios_2.HacerCopiaExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Hace Copia de los Permisos Actuales de Perfil ....',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
    begin
      try
        DMMain_FD.fdcGestion.StartTransaction;
        spCopiarPermisos.Close;
        spCopiarPermisos.ExecProc;
        spCopiarPermisos.Close;
        DMMain_FD.fdcGestion.Commit;
        Buscar.Execute;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se udo Hacer la Restauracion....');
      end;
    end;
end;

end.
