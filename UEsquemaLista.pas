unit UEsquemaLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  JvExControls, JvDBLookup, Vcl.ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, JvFormPlacement, JvComponentBase,
  JvAppStorage, JvAppIniStorage, Vcl.ComCtrls, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  AdvCheckTreeView, AdvPageControl, dxSkinWXI,StrUtils;

type
  TFormEsquemaPrecios = class(TForm)
    cxGridRubros_Sub: TcxGrid;
    cxGridRubros_SubDBTableView1: TcxGridDBTableView;
    cxGridRubros_SubDBTableView2: TcxGridDBTableView;
    cxGridRubros_SubDBTableView3: TcxGridDBTableView;
    cxGridRubros_SubLevel1: TcxGridLevel;
    cxGridRubros_SubLevel2: TcxGridLevel;
    cxGridRubros_SubLevel3: TcxGridLevel;
    pnPieRub: TPanel;
    spAll: TSpeedButton;
    spDesAll: TSpeedButton;
    pnTitulo: TPanel;
    DSLstCab: TDataSource;
    QLstCab: TFDQuery;
    QLstCabID: TIntegerField;
    QLstCabNOMBRE: TStringField;
    QLstRubros: TFDQuery;
    QLstRubrosRUBRO: TStringField;
    QLstRubrosDETALLE_RUBRO: TStringField;
    QLstRubrosESTADO: TStringField;
    QLstRubrosID_LST: TIntegerField;
    DSLstRubros: TDataSource;
    QLstSubRubros: TFDQuery;
    QLstSubRubrosRUBRO: TStringField;
    QLstSubRubrosSUBRUBRO: TStringField;
    QLstSubRubrosDETALLE_SUBRUBRO: TStringField;
    QLstSubRubrosESTADO: TStringField;
    QLstSubRubrosID_LST: TIntegerField;
    DSLstSubRubros: TDataSource;
    QLstArticulos: TFDQuery;
    QLstArticulosID_LST: TIntegerField;
    QLstArticulosCODIGO: TStringField;
    QLstArticulosDETALLE_STK: TStringField;
    QLstArticulosRUBRO: TStringField;
    QLstArticulosSUBRUBRO: TStringField;
    QLstArticulosESTADO: TStringField;
    DSLstArticulos: TDataSource;
    cxGridRubros_SubDBTableView1RUBRO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView1ESTADO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView1ID_LST: TcxGridDBColumn;
    cxGridRubros_SubDBTableView2RUBRO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView2SUBRUBRO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView2DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView2ESTADO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView2ID_LST: TcxGridDBColumn;
    cxGridRubros_SubDBTableView3ID_LST: TcxGridDBColumn;
    cxGridRubros_SubDBTableView3CODIGO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView3DETALLE_STK: TcxGridDBColumn;
    cxGridRubros_SubDBTableView3RUBRO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView3SUBRUBRO: TcxGridDBColumn;
    cxGridRubros_SubDBTableView3ESTADO: TcxGridDBColumn;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    StatusBar1: TStatusBar;
    AdvPageControl1: TAdvPageControl;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    twEsquema: TAdvCheckTreeView;
    Panel1: TPanel;
    btArbol: TButton;
    ChAll: TSpeedButton;
    UnChAll: TSpeedButton;
    Edit1: TEdit;
    GuardarTreeView: TButton;
    spLimpiarEsquema: TFDStoredProc;
    pnCab: TPanel;
    spNueva: TSpeedButton;
    spBorrar: TSpeedButton;
    spModificar: TSpeedButton;
    dbcLst: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure spNuevaClick(Sender: TObject);
    procedure spModificarClick(Sender: TObject);
    procedure spBorrarClick(Sender: TObject);
//    procedure btnGuardarClick(Sender: TObject);
//    procedure spAllClick(Sender: TObject);
//    procedure spDesAllClick(Sender: TObject);
    procedure QLstArticulosBeforeInsert(DataSet: TDataSet);
    procedure QLstRubrosAfterPost(DataSet: TDataSet);
    procedure QLstRubrosBeforeInsert(DataSet: TDataSet);
    procedure QLstSubRubrosBeforeInsert(DataSet: TDataSet);
    procedure QLstSubRubrosAfterPost(DataSet: TDataSet);
    procedure dbcLstClick(Sender: TObject);
    procedure QLstArticulosESTADOSetText(Sender: TField; const Text: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGridRubros_SubDBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxGridRubros_SubDBTableView2DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure QLstRubrosESTADOSetText(Sender: TField; const Text: string);
    procedure FormShow(Sender: TObject);
    procedure btArbolClick(Sender: TObject);
    procedure twEsquemaNodeCheckedChanged(Sender: TObject; Node: TTreeNode;
      NewState: Boolean);
    procedure ChAllClick(Sender: TObject);
    procedure UnChAllClick(Sender: TObject);
    procedure GuardarTreeViewClick(Sender: TObject);
  private
    procedure AgregarItem(Cab:Integer; Parent: String; Nodo: TTreeNode);
    procedure AgregarSubItem(cab:Integer;Parent: String; Nodo: TTreeNode);
//    procedure AgregarItem(Parent: Integer; Nodo: TTreeNode);
    { Private declarations }
  public
    procedure GenerarTw;

    { Public declarations }
  end;

var
  FormEsquemaPrecios: TFormEsquemaPrecios;

implementation

{$R *.dfm}

uses UCrearLstPersonalizada,UDMain_FD;


/////////// aca lleno el treeview ///////////////////////////////////
procedure TFormEsquemaPrecios.AgregarSubItem(cab:Integer; Parent:string;Nodo:TTreeNode);
var Nodoh:TTreeNode;
  Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;
  Q.SQL.Text   := 'Select ar.id_lst,ar.codigo,s.detalle_stk,ar.rubro,ar.subrubro,ar.estado from lst_precios_articulos ar '+
                  '  left join stock s on s.codigo_stk=ar.codigo '+
                  'where ar.id_lst='+IntToStr(cab)+' and ar.subrubro='+QuotedStr(parent)+
                  '  order by ar.rubro,ar.subrubro,s.detalle_stk';
  Q.Open;
  Q.First;
  while not(Q.Eof) do
    begin
      Nodoh         := twEsquema.Items.AddChild(Nodo,'['+Q.FieldByName('codigo').AsString+']   '+ VarToStrDef(Q.FieldByName('detalle_stk').Value,'Sin Detalle'));
      If Q.FieldByName('ESTADO').Value='S' Then
        twEsquema.Checked[Nodoh]:=True
      else
        twEsquema.Checked[Nodoh]:=False;

      Q.Next;
    end;
  Q.Close;
  FreeAndNil(Q);
end;


procedure TFormEsquemaPrecios.AgregarItem(cab:Integer;Parent:String;Nodo:TTreeNode);
var Nodoh:TTreeNode;
  Q:TFDQuery;
begin
  q:=TFDQuery.Create(nil);
  q.Connection := DMMain_FD.fdcGestion;
  q.SQL.Text   := 'Select sr.id_lst,sr.subrubro,sr.rubro,srb.detalle_subrubro,sr.estado from lst_precios_subrub sr '+
                  ' left join subrubros srb on srb.codigo_subrubro=sr.subrubro '+
                  'where sr.id_lst='+IntToStr(cab)+' and sr.rubro='+QuotedStr(parent)+
                  ' order by sr.rubro,sr.subrubro asc';
  Q.Open;
  Q.First;
  Q.DisableControls;
  while not(Q.Eof) do
    begin
      Nodoh         := twEsquema.Items.AddChild(Nodo,'['+Q.FieldByName('subrubro').AsString+']   '+Q.FieldByName('DETALLE_SUBRUBRO').Value);
      If Q.FieldByName('ESTADO').Value='S' Then
        twEsquema.Checked[Nodoh]:=True
      else
        twEsquema.Checked[Nodoh]:=False;

     // Nodoh.Expand(True);
      AgregarSubItem(Q.FieldByName('id_lst').AsInteger, Q.FieldByName('subrubro').AsString,nodoh);
      Q.Next;
    end;
  Q.EnableControls;
  Q.Close;
  FreeAndNil(q);
end;

procedure TFormEsquemaPrecios.GenerarTw;
var Nodo:TTreeNode;
begin
  twEsquema.AutoExpand:=False;
  twEsquema.Items.BeginUpdate;
  QLstRubros.First;
  QLstRubros.DisableControls;
  while not( QLstRubros.Eof) do
    begin
      Nodo    := twEsquema.Items.Add(nil,'['+QLstRubrosRUBRO.AsString+']   '+QLstRubrosDETALLE_RUBRO.Value);
      If QLstRubrosESTADO.Value='S' Then
        twEsquema.Checked[Nodo]:=True
      else
        twEsquema.Checked[Nodo]:=False;
     // Nodo.Expand(True);
      AgregarItem(QLstCabID.Value, QLstRubrosRUBRO.AsString,Nodo);
      QLstRubros.next;
    end;
  QLstRubros.EnableControls;
  twEsquema.Items.EndUpdate;
end;
////////////////////////////////////////////////////////////////////////////////



//procedure TFormEsquemaPrecios.btnGuardarClick(Sender: TObject);
//var LastKey:Integer;
//begin
//  Screen.Cursor:= crHourGlass;
//  LastKey      := dbcLst.KeyValue;
//  if (QLstArticulos.Active=True) then
//    begin
//      if QLstRubros.State<>dsBrowse then
//        QLstRubros.Post;
//      if QLstSubRubros.State<>dsBrowse then
//        QLstSubRubros.Post;
//      if QLstArticulos.State<>dsBrowse then
//        QLstArticulos.Post;
//
//      QLstRubros.ApplyUpdates(0);
//      QLstSubRubros.ApplyUpdates(0);
//      QLstArticulos.ApplyUpdates(0);
//
//      QLstCab.Close;
//      QLstCab.Open;
//      QLstCab.First;
//
//      dbcLst.KeyValue := LastKey;
//
//      QLstRubros.Close;
//      QLstRubros.ParamByName('id').Value   := LastKey;
//      QLstRubros.Open;
//
//      QLstSubRubros.Close;
//      QLstSubRubros.ParamByName('id').Value:= LastKey;
//      QLstSubRubros.Open;
//
//      QLstArticulos.Close;
//      QLstArticulos.ParamByName('id').Value:= LastKey;
//      QLstArticulos.Open;
//
//
//      Screen.Cursor        := crDefault;
//    end;
//  Close;
//end;

procedure TFormEsquemaPrecios.GuardarTreeViewClick(Sender: TObject);
var
  i            : Integer;
  Nodo         : TTreeNode;
  Codigo       : String;
  Estado       : String;
  Q            : TFDQuery;
begin
  Screen.Cursor:=crHourGlass;
  spLimpiarEsquema.Close;
  spLimpiarEsquema.ParamByName('id').Value:=dbcLst.KeyValue;
  spLimpiarEsquema.ExecProc;
  spLimpiarEsquema.Close;

//  update lst_precios_rubros r set r.estado='N' where r.id_lst=:id;
//  update lst_precios_subrub sr set sr.estado='N' where sr.id_lst=:id;
//  update lst_precios_articulos a set a.estado='N' where a.id_lst=:id;


  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;

  for i := 0 to twEsquema.Items.Count - 1 do
    begin
      Nodo   := twEsquema.Items[i];
      Codigo := Nodo.Text;
      Estado := IfThen(Nodo.Checked, 'S', 'N');
      if twEsquema.Checked[Nodo] then Estado:='S'
      else
      estado:='N';

      if Estado='S' then
        begin
          codigo:= copy(Codigo,2,pos(']',Codigo)-2);
          if Length(Codigo)=3 then
            begin
              Q.SQL.Text:= 'update lst_precios_rubros r set r.estado=''S'' where  r.rubro='+QuotedStr(codigo)+' and r.id_lst=' + dbcLst.KeyValue;
              q.ExecSQL;
              q.Close;
            end
          else
            if Length(Codigo)=5 then
              begin
                Q.SQL.Text:= 'update lst_precios_subrub sr set sr.estado=''S'' where  sr.subrubro='+QuotedStr(codigo)+' and sr.id_lst=' + dbcLst.KeyValue;
                q.ExecSQL;
                q.Close;
              end
            else
          if Length(Codigo)=8 then
            begin
              Q.SQL.Text:= 'update lst_precios_articulos a set a.estado=''S'' where  a.codigo='+QuotedStr(codigo)+' and a.id_lst=' + dbcLst.KeyValue;
              q.ExecSQL;
              q.Close;
            end;
        end;
    end;
  Q.Close;
  FreeAndNil(q);
  Screen.Cursor:=crDefault;
  Close;
end;

procedure TFormEsquemaPrecios.btArbolClick(Sender: TObject);
begin
  GenerarTw;
  
end;


procedure TFormEsquemaPrecios.cxGridRubros_SubDBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
   ADataController.CollapseDetails;
end;

procedure TFormEsquemaPrecios.cxGridRubros_SubDBTableView2DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
   ADataController.CollapseDetails;
end;

procedure TFormEsquemaPrecios.dbcLstClick(Sender: TObject);
begin
  QLstRubros.Close;
  QLstRubros.ParamByName('id').Value    := dbcLst.KeyValue;
  QLstRubros.Open;

  QLstSubRubros.Close;
  QLstSubRubros.ParamByName('id').Value := dbcLst.KeyValue;
  QLstSubRubros.Open;

  QLstArticulos.Close;
  QLstArticulos.ParamByName('id').Value := dbcLst.KeyValue;
  QLstArticulos.Open;
  GenerarTw;
end;


procedure TFormEsquemaPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormEsquemaPrecios.FormCreate(Sender: TObject);
begin
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QLstCab.Close;
  QLstRubros.Close;
  QLstSubRubros.Close;
  QLstArticulos.Close;

  QLstCab.Open;
  QLstRubros.Open;
  QLstSubRubros.Open;
  QLstArticulos.Open;
 // btArbol.OnClick(sender);
  AdvPageControl1.ActivePageIndex:=1;
end;

procedure TFormEsquemaPrecios.FormDestroy(Sender: TObject);
begin
  FormEsquemaPrecios:=nil;
end;

procedure TFormEsquemaPrecios.FormShow(Sender: TObject);
begin
  dbcLst.KeyValue      :=Tag;

  QLstRubros.Close;
  QLstRubros.ParamByName('id').Value    := dbcLst.KeyValue;
  QLstRubros.Open;

  QLstSubRubros.Close;
  QLstSubRubros.ParamByName('id').Value := dbcLst.KeyValue;
  QLstSubRubros.Open;

  QLstArticulos.Close;
  QLstArticulos.ParamByName('id').Value := dbcLst.KeyValue;
  QLstArticulos.Open;

 // btArbol.OnClick(sender);

end;

procedure TFormEsquemaPrecios.QLstArticulosBeforeInsert(DataSet: TDataSet);
begin
   QLstArticulos.Cancel;
end;

procedure TFormEsquemaPrecios.QLstArticulosESTADOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TFormEsquemaPrecios.QLstRubrosAfterPost(DataSet: TDataSet);
begin
  QLstSubRubros.Filtered := False;
  QLstSubRubros.Filter   := 'RUBRO = ' +''''+QLstRubrosRUBRO.AsString+'''';
  QLstSubRubros.Filtered := True;
  Application.ProcessMessages;
  QLstSubRubros.First;
  while Not(QLstSubRubros.Eof) do
    begin
      QLstSubRubros.Edit;
      if QLstRubrosESTADO.Value='S' then
        QLstSubRubrosESTADO.Value:= 'S'
      else
        if QLstRubrosESTADO.Value='N' then
          QLstSubRubrosESTADO.Value:= 'N';
        QLstSubRubros.Next;
      end;
   Application.ProcessMessages;
   QLstSubRubros.Filtered :=False;
   QLstSubRubros.Filter   :='';
   QLstSubRubros.First;
end;

procedure TFormEsquemaPrecios.QLstRubrosBeforeInsert(DataSet: TDataSet);
begin
  Abort;
  QLstRubros.Cancel;
end;

procedure TFormEsquemaPrecios.QLstRubrosESTADOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TFormEsquemaPrecios.QLstSubRubrosAfterPost(DataSet: TDataSet);
var i:integer;
cod:string;
begin
 //  QLstSubRubros.ApplyUpdates(0);
   QLstArticulos.Filtered := False;
   QLstArticulos.Filter   := 'RUBRO = ' +''''+QLstSubRubrosRUBRO.Value+''''+' and '+'SUBRUBRO = ' +''''+QLstSubRubrosSUBRUBRO.Value+'''';
   QLstArticulos.Filtered := True;
   i:=QLstArticulos.RecordCount;
   Application.ProcessMessages;
   QLstArticulos.DisableControls;
   QLstArticulos.First;
   while Not(QLstArticulos.Eof) do
      begin
        cod:=QLstArticulosCODIGO.AsString;
        QLstArticulos.Edit;
        if QLstSubRubrosESTADO.Value='S' then
          QLstArticulosESTADOSetText(QLstArticulosESTADO,'S')
        else
          if QLstSubRubrosESTADO.Value='N' then
            QLstArticulosESTADOSetText(QLstArticulosESTADO,'N');
        QLstArticulos.Next;
      end;
   Application.ProcessMessages;
   QLstArticulos.Filtered :=False;
   QLstArticulos.Filter   :='';
   QLstArticulos.First;
   QLstArticulos.EnableControls;
end;

procedure TFormEsquemaPrecios.QLstSubRubrosBeforeInsert(DataSet: TDataSet);
begin
  QLstSubRubros.Cancel;
end;

//procedure TFormEsquemaPrecios.spAllClick(Sender: TObject);
//begin
//  QLstRubros.First;
//  QLstRubros.DisableControls;
//  while Not(QLstRubros.Eof) do
//    begin
//      QLstRubros.Edit;
//      QLstRubrosESTADO.Value:='S';
//      QLstRubros.Next;
//    end;
//  QLstRubros.First;
//  QLstRubros.EnableControls;
//end;

procedure TFormEsquemaPrecios.spBorrarClick(Sender: TObject);
var LastKey:Integer;
begin
  if dbcLst.KeyValue>-1 then
    begin
      if MessageDlg('Esta por hacer una operacion de borrado, esta seguro?..',mtConfirmation,mbYesNo,0,mbNo)= mrYes then
        begin
          QLstCab.Delete;
          QLstCab.ApplyUpdates(0);
          QLstCab.Close;
          QLstCab.Open;
          QLstCab.Locate('id',LastKey,[]);
          if QLstRubros.Active=True then
            dbcLst.KeyValue := LastKey
          else
            LastKey:=-1;

          QLstRubros.Close;
          QLstRubros.ParamByName('id').Value   := LastKey;
          QLstRubros.Open;

          QLstSubRubros.Close;
          QLstSubRubros.ParamByName('id').Value:= LastKey;
          QLstSubRubros.Open;
        end;
    end
  else
     ShowMessage('No hay Lista Seleccionada...');
end;

//procedure TFormEsquemaPrecios.spDesAllClick(Sender: TObject);
//begin
// QLstRubros.First;
// QLstRubros.DisableControls;
//  while Not(QLstRubros.Eof) do
//    begin
//      QLstRubros.Edit;
//      QLstRubrosESTADO.Value:='N';
//      QLstRubros.Next;
//    end;
//  QLstRubros.First;
//  QLstRubros.EnableControls;
//end;

procedure TFormEsquemaPrecios.spModificarClick(Sender: TObject);
var LastKey:Integer;
begin
  LastKey  := dbcLst.KeyValue;

  if Not(Assigned(FormCrearLstPersonalizada)) then
    FormCrearLstPersonalizada:=TFormCrearLstPersonalizada.Create(self);
  FormCrearLstPersonalizada.Modo :=1;
  FormCrearLstPersonalizada.Lista:=dbcLst.KeyValue;
  FormCrearLstPersonalizada.ShowModal;

  QLstCab.Close;
  QLstCab.Open;
  QLstCab.Locate('id',LastKey,[]);
  dbcLst.KeyValue := LastKey;

  QLstRubros.Close;
  QLstRubros.ParamByName('id').Value   := LastKey;
  QLstRubros.Open;

  QLstSubRubros.Close;
  QLstSubRubros.ParamByName('id').Value:= LastKey;
  QLstSubRubros.Open;
end;

procedure TFormEsquemaPrecios.spNuevaClick(Sender: TObject);
var LastKey:Integer;
begin
  LastKey  := dbcLst.KeyValue;

  if Not(Assigned(FormCrearLstPersonalizada)) then
    FormCrearLstPersonalizada:=TFormCrearLstPersonalizada.Create(self);
  FormCrearLstPersonalizada.Modo:=0;
  FormCrearLstPersonalizada.ShowModal;

  QLstCab.Close;
  QLstCab.Open;
  QLstCab.Locate('id',LastKey,[]);
  dbcLst.KeyValue := LastKey;

  QLstRubros.Close;
  QLstRubros.ParamByName('id').Value   := LastKey;
  QLstRubros.Open;

  QLstSubRubros.Close;
  QLstSubRubros.ParamByName('id').Value:= LastKey;
  QLstSubRubros.Open;
end;



procedure TFormEsquemaPrecios.twEsquemaNodeCheckedChanged(Sender: TObject;
  Node: TTreeNode; NewState: Boolean);
var
   I: Integer;
   NodoPadre,NodoAbuelo:TTreeNode;
begin
  if Node.HasChildren then
    begin
      for I := 0 to Node.Count - 1 do
        begin
          twEsquema.Checked[Node[I]] := twEsquema.Checked[Node];
          if Node[I].HasChildren then
            twEsquemaNodeCheckedChanged(nil, Node[I], NewState);
        end;
      end
    else
      begin
        if Node.Parent<>nil then
          begin
            NodoPadre:= Node.Parent;
            twEsquema.Checked[NodoPadre]:=True;
            if NodoPadre.Parent<>nil  then
              begin
                NodoAbuelo:=NodoPadre.Parent;
                twEsquema.Checked[NodoAbuelo]:=True;
              end;
          end;
      end;


{
  if Node.HasChildren then
    begin
      for I := 0 to Node.Count - 1 do
        begin
          twEsquema.Checked[Node[I]] := twEsquema.Checked[Node];
          if Node[I].HasChildren then
            twEsquemaNodeCheckedChanged(nil, Node[I], NewState);
        end;

      if Node.Parent<>nil then
        begin
          NodoPadre:= Node.Parent;
          twEsquema.Checked[NodoPadre]:=Not(twEsquema.Checked[NodoPadre]);// True;
          if NodoPadre.Parent<>nil  then
            begin
              NodoAbuelo:=NodoPadre.Parent;
              twEsquema.Checked[NodoAbuelo]:=Not(twEsquema.Checked[NodoAbuelo]);// True;
            end;
        end;
    end
  else
    begin
      if Node.Parent<>nil then
        begin
          NodoPadre:= Node.Parent;
          twEsquema.Checked[NodoPadre]:=Not(twEsquema.Checked[NodoPadre]);// True;
          if NodoPadre.Parent<>nil  then
            begin
              NodoAbuelo:=NodoPadre.Parent;
              twEsquema.Checked[NodoAbuelo]:=Not(twEsquema.Checked[NodoAbuelo]);// True;
            end;
        end;
    end;
    }
end;






procedure TFormEsquemaPrecios.UnChAllClick(Sender: TObject);
 var
  i: Integer;
begin
  for i := 0 to twEsquema.Items.Count - 1 do
  begin
    twEsquema.Checked[twEsquema.Items[i]]:= False;
  end;
end;

procedure TFormEsquemaPrecios.ChAllClick(Sender: TObject);
 var
  i: Integer;
begin
  for i := 0 to twEsquema.Items.Count - 1 do
  begin
    // Establecer todos los nodos como marcados
    twEsquema.Checked[twEsquema.Items[i]]:= True;
  end;
end;


end.
