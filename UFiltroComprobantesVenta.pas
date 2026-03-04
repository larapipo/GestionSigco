unit UFiltroComprobantesVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, CheckLst, ExtCtrls, Provider, DBClient,
  Buttons, ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormFiltroCpbtes = class(TForm)
    pnColumnas: TPanel;
    CDSCpbte: TClientDataSet;
    DSPCpbte: TDataSetProvider;
    CDSCpbteDETALLE: TStringField;
    CDSCpbteTIPO_COMPROB: TStringField;
    CDSCpbteCLASE_COMPROB: TStringField;
    CDSCpbteDENOMINACION: TStringField;
    CDSCpbteLETRA: TStringField;
    CDSCpbteID_COMPROBANTE: TIntegerField;
    Button1: TBitBtn;
    pcComprobantes: TPageControl;
    tsVenta: TTabSheet;
    tsCompras: TTabSheet;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DSPCpbteComp: TDataSetProvider;
    CDSCpbteComp: TClientDataSet;
    CDSCpbteCompDETALLE: TStringField;
    CDSCpbteCompTIPO_COMPROB: TStringField;
    CDSCpbteCompCLASE_COMPROB: TStringField;
    CDSCpbteCompDENOMINACION: TStringField;
    CDSCpbteCompLETRA: TStringField;
    CDSCpbteCompID_COMPROBANTE: TIntegerField;
    lwCompras: TListView;
    lwVentas: TListView;
    Label1: TLabel;
    Label2: TLabel;
    pnCabecera: TPanel;
    Label3: TLabel;
    QCpbteComp: TFDQuery;
    QExiste: TFDQuery;
    QIdCpbte: TFDQuery;
    QIdCCpbteClear: TFDQuery;
    QCpbte: TFDQuery;
    QExisteID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    fIds:TStringList;
    { Private declarations }
  public
    { Public declarations }
  published
    property Ids:TStringList  read fIds write fIds;
  end;

var
  FormFiltroCpbtes: TFormFiltroCpbtes;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormFiltroCpbtes.Button1Click(Sender: TObject);
var i:integer;
begin

end;

procedure TFormFiltroCpbtes.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
lista:TListItem;
begin
  QIdCCpbteClear.Close;
  QIdCCpbteClear.ExecSQL;
  QIdCCpbteClear.Close;

  for I := 0 to lwVentas.Items.Count - 1 do
    begin
      lista:=lwVentas.Items[i];
      if lista.Checked then
        begin
          QIdCpbte.Close;
          QIdCpbte.ParamByName('id').Value:= Lista.SubItems.Strings[4];
          QIdCpbte.ExecSQL;
          QIdCpbte.Close;
        end;
    end;

  for I := 0 to lwCompras.Items.Count - 1 do
    begin
      lista:=lwCompras.Items[i];
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

procedure TFormFiltroCpbtes.FormCreate(Sender: TObject);
begin
  AutoSize  :=True;
  fIds:= TStringList.Create;

end;

procedure TFormFiltroCpbtes.FormDestroy(Sender: TObject);
begin
  FormFiltroCpbtes:=nil;
end;

procedure TFormFiltroCpbtes.FormResize(Sender: TObject);
begin
  if FormFiltroCpbtes<>nil then
    if FormFiltroCpbtes.Width<>760 then
      FormFiltroCpbtes.Width:=760;
end;

procedure TFormFiltroCpbtes.FormShow(Sender: TObject);
var I:Integer;
Lista:TListItem;
begin
  lwVentas.Clear;
  CDSCpbte.Close;
  CDSCpbte.Open;
 // chklstCpbteVta.Clear;
  while Not(CDSCpbte.Eof) do
    begin
      QExiste.Close;
      QExiste.ParamByName('id').Value:=CDSCpbteID_COMPROBANTE.Value;
      QExiste.Open;
      Lista:=lwVentas.Items.Add;
      Lista.Checked:=Not(QExiste.IsEmpty);
      Lista.SubItems.Add(CDSCpbte.FieldByName('tipo_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('Clase_comprob').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('denominacion').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('detalle').AsString);
      Lista.SubItems.Add(CDSCpbte.FieldByName('id_comprobante').AsString);
      QExiste.Close;

      CDSCpbte.Next;
    end;

  CDSCpbteComp.Close;
  CDSCpbteComp.Open;
  lwCompras.Clear;
  while Not(CDSCpbteComp.Eof) do
    begin
      QExiste.Close;
      QExiste.ParamByName('id').Value:=CDSCpbteCompID_COMPROBANTE.Value;
      QExiste.Open;
  //    chklstCpbteVta.Checked[I]:= Not(QExiste.IsEmpty);

      Lista:=lwCompras.Items.Add;
      Lista.Checked:=Not(QExiste.IsEmpty);
      Lista.SubItems.Add(CDSCpbteComp.FieldByName('tipo_comprob').AsString);
      Lista.SubItems.Add(CDSCpbteComp.FieldByName('Clase_comprob').AsString);
      Lista.SubItems.Add(CDSCpbteComp.FieldByName('denominacion').AsString);
      Lista.SubItems.Add(CDSCpbteComp.FieldByName('detalle').AsString);
      Lista.SubItems.Add(CDSCpbteComp.FieldByName('id_comprobante').AsString);
      QExiste.Close;

      CDSCpbteComp.Next;
    end;

end;

procedure TFormFiltroCpbtes.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
  for I := 0 to lwVentas.Items.Count - 1 do
    lwVentas.Items[i].Checked:=True;
end;

procedure TFormFiltroCpbtes.SpeedButton2Click(Sender: TObject);
VAR i:Integer;
begin
  for I := 0 to lwVentas.Items.Count - 1 do
    lwVentas.Items[i].Checked:=False;
end;

procedure TFormFiltroCpbtes.SpeedButton5Click(Sender: TObject);
var i:integer;
begin
  for I := 0 to lwCompras.Items.Count - 1 do
    lwCompras.Items[i].Checked:=True;
end;

procedure TFormFiltroCpbtes.SpeedButton6Click(Sender: TObject);
VAR i:Integer;
begin
  for I := 0 to lwCompras.Items.Count - 1 do
    lwCompras.Items[i].Checked:=False;
end;

end.
