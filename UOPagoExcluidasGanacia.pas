unit UOPagoExcluidasGanacia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DB, DBClient, ComCtrls, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin,
  ExtCtrls, JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormOPagoExcluidasGanancia = class(TFormABMBase)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    lwComprobantes: TListView;
    CDSCpbte: TClientDataSet;
    CDSCpbteDETALLE: TStringField;
    CDSCpbteTIPO_COMPROB: TStringField;
    CDSCpbteCLASE_COMPROB: TStringField;
    CDSCpbteDENOMINACION: TStringField;
    CDSCpbteLETRA: TStringField;
    CDSCpbteID_COMPROBANTE: TIntegerField;
    CDSCpbteSUCURSAL: TIntegerField;
    CDSCpbteCOMPRA_VENTA: TStringField;
    DSPCpbte: TDataSetProvider;
    spChek: TSpeedButton;
    spUnChekc: TSpeedButton;
    QCpbte: TFDQuery;
    QExiste: TFDQuery;
    QIdCpbte: TFDQuery;
    QIdCCpbteClear: TFDQuery;
    procedure spChekClick(Sender: TObject);
    procedure spUnChekcClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    fIds:TStringList;
    { Private declarations }
  public
    { Public declarations }
    ColumnToSort : Integer;
    property Ids:TStringList  read fIds write fIds;
  end;


var
  FormOPagoExcluidasGanancia: TFormOPagoExcluidasGanancia;

implementation

Uses UDMain_FD;

{$R *.dfm}

procedure TFormOPagoExcluidasGanancia.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
lista:TListItem;
begin
  QIdCCpbteClear.Close;
  QIdCCpbteClear.ExecSQL;
  QIdCCpbteClear.Close;

//  for i:= 0 to chklstCpbte.Count-1 do
//    begin
//      if chklstCpbte.Checked[i] then
//        begin
//          fIds.Add(Copy(chklstCpbte.Items[i],1,pos('.',chklstCpbte.Items[i])-1));
//          QIdCpbte.Close;
//          QIdCpbte.ParamByName('id').Value:=Copy(chklstCpbte.Items[i],1,pos('.',chklstCpbte.Items[i])-1);
//          QIdCpbte.ExecSQL;
//          QIdCpbte.Close;
//        end;
//
//    end;

  for I := 0 to lwComprobantes.Items.Count - 1 do
    begin
      lista:=lwComprobantes.Items[i];
      if lista.Checked then
        begin
          QIdCpbte.Close;
          QIdCpbte.ParamByName('id').Value:= Lista.SubItems.Strings[4];
          QIdCpbte.ExecSQL;
          QIdCpbte.Close;
        end;
    end;

  Action:=cafree;
end;

procedure TFormOPagoExcluidasGanancia.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
//  chklstCpbte.Clear;
  fIds:= TStringList.Create;
end;

procedure TFormOPagoExcluidasGanancia.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOPagoExcluidasGanancia:=nil;
end;

procedure TFormOPagoExcluidasGanancia.FormShow(Sender: TObject);
var I:Integer;
Numero:String;
Lista:TListItem;
begin
  CDSCpbte.Close;
  CDSCpbte.Open;
  lwComprobantes.Clear;
  CDSCpbte.First;
  while Not(CDSCpbte.Eof) do
    begin
      QExiste.Close;
      QExiste.ParamByName('id').Value:=CDSCpbteID_COMPROBANTE.Value;
      QExiste.Open;
      Lista:=lwComprobantes.Items.Add;
      Lista.Checked:=Not(QExiste.IsEmpty);
      Lista.SubItems.Add(CDSCpbte.FieldByName('detalle').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('tipo_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('Clase_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('denominacion').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('id_comprobante').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('compra_venta').AsString);
      QExiste.Close;

      CDSCpbte.Next;
    end;


end;


procedure TFormOPagoExcluidasGanancia.spChekClick(Sender: TObject);
var i:Integer;
begin
// for I := 0 to chklstCpbte.Count - 1 do
//    chklstCpbte.Checked[i]:=True;

 for I := 0 to lwComprobantes.Items.Count - 1 do
    lwComprobantes.Items[i].Checked:=True;

end;

procedure TFormOPagoExcluidasGanancia.spUnChekcClick(Sender: TObject);
VAR i:Integer;
begin
//  for I := 0 to chklstCpbte.Count - 1 do
//    chklstCpbte.Checked[i]:=False;
  for I := 0 to lwComprobantes.Items.Count - 1 do
    lwComprobantes.Items[i].Checked:=False;
end;

end.
