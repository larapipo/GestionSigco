unit UComprobContabilizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, CheckLst, DB, DBClient, Provider,
  SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvDBLookup, System.ImageList;

type
  TFormCpbteContabilizar = class(TFormABMBase)
    DSPCpbte: TDataSetProvider;
    CDSCpbte: TClientDataSet;
    CDSCpbteDETALLE: TStringField;
    CDSCpbteTIPO_COMPROB: TStringField;
    CDSCpbteCLASE_COMPROB: TStringField;
    CDSCpbteDENOMINACION: TStringField;
    CDSCpbteLETRA: TStringField;
    CDSCpbteID_COMPROBANTE: TIntegerField;
    DSSucursales: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    lwComprobantes: TListView;
    CDSCpbteSUCURSAL: TIntegerField;
    CDSCpbteCOMPRA_VENTA: TStringField;
    CDSCpbteAFECTA_IVA: TStringField;
    CDSCpbteMUESTRAIVA: TStringField;
    QIdCCpbteClearFD: TFDQuery;
    QIdCpbteFD: TFDQuery;
    QExisteFD: TFDQuery;
    QExisteFDID: TIntegerField;
    QCpbte: TFDQuery;
    QSucursales: TFDQuery;
    QSucursalesCODIGO: TIntegerField;
    QSucursalesDETALLE: TStringField;
    dbSucursal: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure lwComprobantesCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure lwComprobantesColumnClick(Sender: TObject; Column: TListColumn);
    procedure CDSCpbteCalcFields(DataSet: TDataSet);
    procedure dbSucursalClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    fIds:TStringList;
    { Private declarations }
  public
    { Public declarations }
    ColumnToSort : Integer;
    property Ids:TStringList  read fIds write fIds;
  end;

var
  FormCpbteContabilizar: TFormCpbteContabilizar;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCpbteContabilizar.CDSCpbteCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (CDSCpbteAFECTA_IVA.Value='S') then
    CDSCpbteMUESTRAIVA.Value:='En Libro IVA'
  else
    CDSCpbteMUESTRAIVA.Value:='---';

end;

procedure TFormCpbteContabilizar.dbSucursalClick(Sender: TObject);
var I:Integer;
Numero:String;
Lista:TListItem;
begin
  CDSCpbte.Close;
  CDSCpbte.Params.ParamByName('SUC').Value:=dbSucursal.KeyValue;
  CDSCpbte.Open;
  lwComprobantes.Clear;
  CDSCpbte.First;
  while Not(CDSCpbte.Eof) do
    begin
      QExisteFD.Close;
      QExisteFD.ParamByName('id').Value:=CDSCpbteID_COMPROBANTE.Value;
      QExisteFD.Open;
      Lista:=lwComprobantes.Items.Add;
      Lista.Checked:=Not(QExisteFD.IsEmpty);
      Lista.SubItems.Add(CDSCpbte.FieldByName('detalle').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('tipo_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('Clase_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('denominacion').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('id_comprobante').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('compra_venta').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('muestraiva').AsString);

      QExisteFD.Close;

      CDSCpbte.Next;
    end;
end;

procedure TFormCpbteContabilizar.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormCpbteContabilizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
lista:TListItem;
begin
  QIdCCpbteClearFD.Close;
  QIdCCpbteClearFD.ExecSQL;
  QIdCCpbteClearFD.Close;

  for I := 0 to lwComprobantes.Items.Count - 1 do
    begin
      lista:=lwComprobantes.Items[i];
      if lista.Checked then
        begin
          QIdCpbteFD.Close;
          QIdCpbteFD.ParamByName('id').Value:= Lista.SubItems.Strings[4];
          QIdCpbteFD.ExecSQL;
          QIdCpbteFD.Close;
        end;
    end;

  Action:=cafree;
end;

procedure TFormCpbteContabilizar.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize :=False;
  QSucursales.Close;
  QSucursales.Open;
  fIds:= TStringList.Create;
end;

procedure TFormCpbteContabilizar.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCpbteContabilizar:=nil;
end;



procedure TFormCpbteContabilizar.FormResize(Sender: TObject);
begin
  inherited;
  if FormCpbteContabilizar<>nil then
    if FormCpbteContabilizar.Width<>953 then
      FormCpbteContabilizar.Width:=953;
end;

procedure TFormCpbteContabilizar.FormShow(Sender: TObject);
var I:Integer;
Numero:String;
Lista:TListItem;
begin
  CDSCpbte.Close;
  CDSCpbte.Params.ParamByName('SUC').Value:=dbSucursal.KeyValue;
  CDSCpbte.Open;
  lwComprobantes.Clear;
  CDSCpbte.First;
  while Not(CDSCpbte.Eof) do
    begin
      QExisteFD.Close;
      QExisteFD.ParamByName('id').Value:=CDSCpbteID_COMPROBANTE.Value;
      QExisteFD.Open;
      Lista:=lwComprobantes.Items.Add;
      Lista.Checked:=Not(QExisteFD.IsEmpty);
      Lista.SubItems.Add(CDSCpbte.FieldByName('detalle').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('tipo_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('Clase_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('denominacion').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('id_comprobante').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('compra_venta').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('muestraiva').AsString);

      QExisteFD.Close;

      CDSCpbte.Next;
    end;


end;


procedure TFormCpbteContabilizar.lwComprobantesColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  inherited;
   ColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TFormCpbteContabilizar.lwComprobantesCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  i: Integer;
begin
  if ColumnToSort = 0 then
    Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
   i := ColumnToSort - 1;
   Compare := CompareText(Item1.SubItems[i],Item2.SubItems[i]);
  end;
end;

procedure TFormCpbteContabilizar.SpeedButton1Click(Sender: TObject);
var i:Integer;
begin
// for I := 0 to chklstCpbte.Count - 1 do
//    chklstCpbte.Checked[i]:=True;

 for I := 0 to lwComprobantes.Items.Count - 1 do
    lwComprobantes.Items[i].Checked:=True;

end;

procedure TFormCpbteContabilizar.SpeedButton2Click(Sender: TObject);
VAR i:Integer;
begin
//  for I := 0 to chklstCpbte.Count - 1 do
//    chklstCpbte.Checked[i]:=False;
  for I := 0 to lwComprobantes.Items.Count - 1 do
    lwComprobantes.Items[i].Checked:=False;
end;

end.
