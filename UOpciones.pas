unit UOpciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, Grids, DBGrids, ExtCtrls, ActnList,
  StdCtrls, Buttons,  DBCGrids, DBCtrls, ComCtrls, Mask, FMTBcd, SqlExpr,
  AdvCardList, DBAdvCardList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, AdvCardListStyler, ImgList,
  System.Actions, JvFormPlacement, JvComponentBase, JvAppStorage,
  JvAppIniStorage, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, AdvToggle, cxCheckBox, dxToggleSwitch, dxDBToggleSwitch,
  Vcl.WinXCtrls, AdvSmoothToggleButton, AdvStyleIF, AdvAppStyler;

type
  TFormOpciones = class(TForm)
    DSOpciones: TDataSource;
    DSPOpciones: TDataSetProvider;
    CDSOpciones: TClientDataSet;
    ActionList1: TActionList;
    Aceptar: TAction;
    Salir: TAction;
    CDSOpcionesID: TIntegerField;
    CDSOpcionesOPCION: TStringField;
    CDSOpcionesDESCRIPCION: TStringField;
    CDSOpcionesVALOR: TStringField;
    CDSOpcionesGRUPO: TStringField;
    DSPOpcionSiNo: TDataSetProvider;
    DSOpcionSiNo: TDataSource;
    DSOpcionesMascar: TDataSource;
    DSPOpcionesMascara: TDataSetProvider;
    CDSOpcionesMascara: TClientDataSet;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnPrincipal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbgOpcionesMascara: TDBGrid;
    dbgOpciones: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DSNotas: TDataSource;
    DSPNotas: TDataSetProvider;
    CDSNotas: TClientDataSet;
    edNotasCorreo: TDBRichEdit;
    CDSNotasNOTAS: TMemoField;
    CDSNotasID: TIntegerField;
    CDSOpcionesMascaraID: TIntegerField;
    CDSOpcionesMascaraOPCION: TStringField;
    CDSOpcionesMascaraDESCRIPCION: TStringField;
    CDSOpcionesMascaraVALOR: TStringField;
    CDSOpcionesMascaraGRUPO: TStringField;
    CDSOpcionSiNo: TClientDataSet;
    CDSOpcionSiNoID: TIntegerField;
    CDSOpcionSiNoOPCION: TStringField;
    CDSOpcionSiNoDESCRIPCION: TStringField;
    CDSOpcionSiNoVALOR: TStringField;
    CDSOpcionSiNoGRUPO: TStringField;
    CDSOpcionSiNoVALOR_BOOLEAN: TBooleanField;
    lwOpciones: TListView;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage1: TJvFormStorage;
    TabSheet4: TTabSheet;
    QNtotaCorreo: TFDQuery;
    DSPNotasCorreo: TDataSetProvider;
    CDSNotasCorreo: TClientDataSet;
    DSNotasCorreo: TDataSource;
    QNtotaCorreoID: TIntegerField;
    QNtotaCorreoTEXTO: TMemoField;
    CDSNotasCorreoID: TIntegerField;
    CDSNotasCorreoTEXTO: TMemoField;
    DBRichEdit1: TDBRichEdit;
    TabSheet5: TTabSheet;
    DBRichEdit2: TDBRichEdit;
    QMailing: TFDQuery;
    DSPMailing: TDataSetProvider;
    CDSMailing: TClientDataSet;
    DSMailing: TDataSource;
    QMailingID: TIntegerField;
    QMailingTEXTO: TMemoField;
    CDSMailingID: TIntegerField;
    CDSMailingTEXTO: TMemoField;
    pnPie: TPanel;
    QOpciones: TFDQuery;
    QOpcionesID: TIntegerField;
    QOpcionesOPCION: TStringField;
    QOpcionesDESCRIPCION: TStringField;
    QOpcionesVALOR: TStringField;
    QOpcionesGRUPO: TStringField;
    QNotas: TFDQuery;
    QNotasID: TIntegerField;
    QNotasNOTAS: TMemoField;
    QOpcionesMascar: TFDQuery;
    QOpcionesMascarID: TIntegerField;
    QOpcionesMascarOPCION: TStringField;
    QOpcionesMascarDESCRIPCION: TStringField;
    QOpcionesMascarVALOR: TStringField;
    QOpcionesMascarGRUPO: TStringField;
    QOpcionSiNO: TFDQuery;
    QOpcionSiNOID: TIntegerField;
    QOpcionSiNOOPCION: TStringField;
    QOpcionSiNODESCRIPCION: TStringField;
    QOpcionSiNOVALOR: TStringField;
    QOpcionSiNOGRUPO: TStringField;
    QVerificaOp: TFDQuery;
    QMaxId: TFDQuery;
    QMaxIdMAX: TIntegerField;
    BitBtn1: TBitBtn;
    btCancelar: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet6: TTabSheet;
    AdvAppStyler1: TAdvAppStyler;
    procedure AceptarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgOpcionesMascaraCellClick(Column: TColumn);
    procedure dbgOpcionesMascaraColEnter(Sender: TObject);
    procedure DSOpcionesStateChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure CDSOpcionesVALORSetText(Sender: TField; const Text: String);
    procedure dbgOpcionesCellClick(Column: TColumn);
    procedure dbgOpcionesColEnter(Sender: TObject);
    procedure DSOpcionSiNoStateChange(Sender: TObject);
    procedure DSOpcionesMascarStateChange(Sender: TObject);
    procedure CDSOpcionSiNoAfterOpen(DataSet: TDataSet);
    procedure lwOpcionesColumnClick(Sender: TObject; Column: TListColumn);
    procedure lwOpcionesCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure CDSNotasCorreoNewRecord(DataSet: TDataSet);
    procedure CDSMailingNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
   fIds:TStringList;
  public
    Cadena,Cadena2:String;
    { Public declarations }
    ColumnToSort : Integer;
    property Ids:TStringList  read fIds write fIds;
  end;

var

  FormOpciones: TFormOpciones;

implementation

uses UBuscaDirectorio, UDMain_FD;

{$R *.DFM}

procedure TFormOpciones.AceptarExecute(Sender: TObject);
var cadena:string;
I:Integer;
lista:TListItem;
begin
  CDSOpciones.ApplyUpdates(0);
  CDSOpciones.EmptyDataSet;
  CDSOpciones.Close;
  CDSOpciones.Open;

  CDSOpcionesMascara.ApplyUpdates(0);
  CDSOpcionesMascara.EmptyDataSet;
  CDSOpcionesMascara.Close;
  CDSOpcionesMascara.Open;


  for I := 0 to lwOpciones.Items.Count - 1 do
    begin
      lista:=lwOpciones.Items[i];
//      Cadena:=Lista.SubItems.Strings[1];
      if CDSOpcionSiNo.Locate('id',Lista.SubItems.Strings[1],[]) Then
        begin
          CDSOpcionSiNo.Edit;
          if lista.Checked then
            CDSOpcionSiNoVALOR.Value:='Si'
          else
            CDSOpcionSiNoVALOR.Value:='No';
          CDSOpcionSiNo.Post;
        end;
    end;

  CDSOpcionSiNo.ApplyUpdates(0);
  CDSOpcionSiNo.EmptyDataSet;
  CDSOpcionSiNo.Close;
  CDSOpcionSiNo.Open;

  CDSNotas.ApplyUpdates(0);
  CDSNotas.EmptyDataSet;
  CDSNotas.Close;
  CDSNotas.Open;

  CDSNotasCorreo.ApplyUpdates(0);
  CDSNotasCorreo.EmptyDataSet;
  CDSNotasCorreo.Close;
  CDSNotasCorreo.Open;

  CDSMailing.ApplyUpdates(0);
  CDSMailing.EmptyDataSet;
  CDSMailing.Close;
  CDSMailing.Open;

  Salir.Execute;
end;

procedure TFormOpciones.FormCreate(Sender: TObject);
var QSql:TSQLQuery;
begin
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSOpcionSiNo.Close;
  CDSOpcionesMascara.Close;
  CDSNotas.Close;
  CDSNotasCorreo.Close;
  CDSMailing.Close;

  CDSOpciones.Close;
  if DMMain_FD.UsuarioActivo='master' Then
    begin
      CDSOpciones.CommandText:='';
      CDSOpciones.CommandText:='select * from opciones where grupo<>''I'' and grupo<>''M'' order by grupo,descripcion';
    end
  else
    begin
      CDSOpciones.CommandText:='';
      CDSOpciones.CommandText:='select * from opciones where grupo<>''O'' and grupo<>''I'' and grupo<>''M'' order by grupo,descripcion';
    end;

  CDSOpciones.Open;

 // fIds:= TStringList.Create;

  PageControl1.ActivePageIndex:=0;


  CDSOpcionSiNo.Open;
  CDSOpcionesMascara.Open;
  CDSNotas.OPen;
  CDSNotasCorreo.Open;
  CDSMailing.Open;

  dbgOpciones.Columns[1].PickList.Clear;
  dbgOpciones.Columns[1].ButtonStyle:=DBGrids.cbsNone;

  dbgOpcionesMascara.Columns[1].PickList.Clear;
  dbgOpcionesMascara.Columns[1].ButtonStyle:=DBGrids.cbsNone;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormOpciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormOpciones.FormDestroy(Sender: TObject);
begin
  FormOpciones:=nil;
end;

procedure TFormOpciones.lwOpcionesColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  ColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TFormOpciones.lwOpcionesCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
   if Item.Checked then
     lwOpciones.Canvas.Brush.Color:=clAqua;
end;

procedure TFormOpciones.dbgOpcionesMascaraCellClick(Column: TColumn);
begin
  dbgOpcionesMascara.Columns[1].PickList.Clear;
  dbgOpcionesMascara.Columns[1].ButtonStyle:=DBGrids.cbsNone;
  if CDSOpcionesMascara.Fields[4].AsString='M' Then
    begin
      dbgOpcionesMascara.Columns[1].PickList.Add('0'+SysUtils.FormatSettings.DecimalSeparator+'0');
      dbgOpcionesMascara.Columns[1].PickList.Add('0'+SysUtils.FormatSettings.DecimalSeparator+'00');
      dbgOpcionesMascara.Columns[1].PickList.Add('0'+SysUtils.FormatSettings.DecimalSeparator+'000');
      dbgOpcionesMascara.Columns[1].PickList.Add(SysUtils.FormatSettings.ThousandSeparator+'0'+SysUtils.FormatSettings.DecimalSeparator+'00');
      dbgOpcionesMascara.Columns[1].PickList.Add(SysUtils.FormatSettings.ThousandSeparator+'0'+SysUtils.FormatSettings.DecimalSeparator+'000');
      dbgOpcionesMascara.Columns[1].ButtonStyle:=DBGrids.cbsAuto;
      dbgOpcionesMascara.Columns[1].Alignment  :=taRightJustify;
    end;
end;

procedure TFormOpciones.dbgOpcionesMascaraColEnter(Sender: TObject);
begin
  if dbgOpcionesMascara.SelectedIndex=0 Then
    dbgOpcionesMascara.SelectedIndex:=1;
end;

procedure TFormOpciones.DSOpcionesStateChange(Sender: TObject);
begin
  If DSOpciones.State=dsInsert Then DSOpciones.DataSet.Cancel;
end;

procedure TFormOpciones.btCancelarClick(Sender: TObject);
begin
  CDSOpciones.Cancel;
  CDSOpciones.Close;
  CDSOpciones.Open;

  CDSOpcionesMascara.Cancel;
  CDSOpcionesMascara.Close;
  CDSOpcionesMascara.Open;

  CDSOpcionSiNo.Cancel;
  CDSOpcionSiNo.Close;
  CDSOpcionSiNo.Open;
  close;
end;

procedure TFormOpciones.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormOpciones.CDSMailingNewRecord(DataSet: TDataSet);
begin
  CDSMailingID.Value:=1;
end;

procedure TFormOpciones.CDSNotasCorreoNewRecord(DataSet: TDataSet);
begin
  CDSNotasCorreoID.Value:=1;
end;

procedure TFormOpciones.CDSOpcionesVALORSetText(Sender: TField;
  const Text: String);
var i:integer;
cad1,cad2:String;
begin
  // para que no tenga mas de tres decimales
  Sender.AsString:=Text;
  if CDSOpcionesGRUPO.Value='M' Then
    begin
      i:=Pos(SysUtils.FormatSettings.DecimalSeparator,Text);
      cad1:=Copy(Text,1,i);
      cad2:=Copy(Text,i+1,3);
      if Length(cad2)>3 Then
        Cad2:=copy(cad2,1,3);
      Sender.AsString:=cad1+cad2;
   end;
end;

procedure TFormOpciones.CDSOpcionSiNoAfterOpen(DataSet: TDataSet);
var I:Integer;
Numero:String;
Lista:TListItem;
begin
  lwOpciones.Clear;
  CDSOpcionSiNo.First;
  while Not( CDSOpcionSiNo.Eof) do
    begin
      Lista:=lwOpciones.Items.Add;
      Lista.Checked:=CDSOpcionSiNoVALOR.Value='Si';
      Lista.SubItems.Add(CDSOpcionSiNo.FieldByName('Descripcion').AsString);
      Lista.SubItems.Add(CDSOpcionSiNo.FieldByName('Id').AsString);

      CDSOpcionSiNo.Next;
    end;
//
// CDSOpcionSiNo.First;
// CDSOpcionSiNo.DisableControls;
// while Not(CDSOpcionSiNo.Eof) do
//   begin
//     CDSOpcionSiNo.Edit;
//     CDSOpcionSiNoVALOR_BOOLEAN.Value:=CDSOpcionSiNoVALOR.Value='Si';
//     CDSOpcionSiNo.Next;
//
//   end;
// CDSOpcionSiNo.First;
// CDSOpcionSiNo.EnableControls;
end;



procedure TFormOpciones.dbgOpcionesCellClick(Column: TColumn);
begin
  dbgOpciones.Columns[1].PickList.Clear;
  dbgOpciones.Columns[1].ButtonStyle:=DBGrids.cbsNone;
  if CDSOpciones.Fields[4].AsString='R' Then
    begin
      if Not(Assigned(FormBuscaDirectorio)) Then
        FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
      FormBuscaDirectorio.ShowModal;
      dbgOpciones.DataSource.DataSet.Edit;
      if FormBuscaDirectorio.ModalResult=mrOk Then
        dbgOpciones.DataSource.DataSet.FieldByName('VALOR').AsString:= FormBuscaDirectorio.Directorio;
       dbgOpciones.DataSource.DataSet.Post;
    end
  else
    if CDSOpciones.Fields[4].AsString='J' Then
      begin
        dbgOpciones.Columns[1].PickList.Add('I');
        dbgOpciones.Columns[1].PickList.Add('D');
        dbgOpciones.Columns[1].ButtonStyle:=cbsAuto;
        dbgOpciones.Columns[1].Alignment  :=taRightJustify;
      end
    else
      if CDSOpciones.Fields[4].AsString='#' Then
        begin
          dbgOpciones.Columns[1].PickList.Add('00000000');
          dbgOpciones.Columns[1].PickList.Add('--------');
          dbgOpciones.Columns[1].PickList.Add('........');
          dbgOpciones.Columns[1].PickList.Add('        ');

          dbgOpciones.Columns[1].ButtonStyle:=cbsAuto;
          dbgOpciones.Columns[1].Alignment  :=taRightJustify;
        end;
end;

procedure TFormOpciones.dbgOpcionesColEnter(Sender: TObject);
begin
 if dbgOpciones.SelectedIndex=0 Then
    dbgOpciones.SelectedIndex:=1;
end;

procedure TFormOpciones.DSOpcionSiNoStateChange(Sender: TObject);
begin
//  If DSOpcionSiNo.State=dsInsert Then DSOpcionSiNo.DataSet.Cancel;
end;

procedure TFormOpciones.DSOpcionesMascarStateChange(Sender: TObject);
begin
 If DSOpcionesMascar.State=dsInsert Then DSOpcionesMascar.DataSet.Cancel;
end;


end.
