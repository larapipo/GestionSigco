unit UFiltroRubros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, ComCtrls, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormFiltroRubros = class(TForm)
    pcRuros: TPageControl;
    tsRubros: TTabSheet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    lwRubro: TListView;
    QRubros: TFDQuery;
    DSPRubros: TDataSetProvider;
    CDSRubros: TClientDataSet;
    QExiste: TFDQuery;
    QRubroPedido: TFDQuery;
    QClearRubroPedido: TFDQuery;
    CDSRubrosCODIGO_RUBRO: TStringField;
    CDSRubrosDETALLE_RUBRO: TStringField;
    tsMarcas: TTabSheet;
    lwMarcas: TListView;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    QMarcas: TFDQuery;
    DSPMarcas: TDataSetProvider;
    CDSMarcas: TClientDataSet;
    CDSMarcasMARCA_STK: TStringField;
    CDSMarcasDESCRIPCION_MARCA: TStringField;
    QClearMarcas: TFDQuery;
    QMarcasPedido: TFDQuery;
    QExisteMarca: TFDQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    fIds:TStringList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroRubros: TFormFiltroRubros;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormFiltroRubros.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
lista:TListItem;
begin
  QClearRubroPedido.Close;
  QClearRubroPedido.ExecSQL;
  QClearRubroPedido.Close;

  for I := 0 to lwRubro.Items.Count - 1 do
    begin
      lista:=lwRubro.Items[i];
      if lista.Checked then
        begin
          QRubroPedido.Close;
          QRubroPedido.ParamByName('rubro').Value:= Lista.SubItems.Strings[0];
          QRubroPedido.ExecSQL;
          QRubroPedido.Close;
        end;
    end;

  QClearMarcas.Close;
  QClearMarcas.ExecSQL;
  QClearMarcas.Close;

  for I := 0 to lwMarcas.Items.Count - 1 do
    begin
      lista:=lwMarcas.Items[i];
      if lista.Checked then
        begin
          QMarcasPedido.Close;
          QMarcasPedido.ParamByName('marca').Value:= Lista.SubItems.Strings[0];
          QMarcasPedido.ExecSQL;
          QMarcasPedido.Close;
        end;
    end;


  Action:=caFree;

end;

procedure TFormFiltroRubros.FormCreate(Sender: TObject);
begin
  AutoSize  :=True;
  fIds:= TStringList.Create;
end;

procedure TFormFiltroRubros.FormDestroy(Sender: TObject);
begin
 FormFiltroRubros:=nil;
end;

procedure TFormFiltroRubros.FormShow(Sender: TObject);
var I:Integer;
Lista:TListItem;
begin
  lwRubro.Clear;
  CDSRubros.Close;
  CDSRubros.Open;
 // chklstCpbteVta.Clear;
  while Not(CDSRubros.Eof) do
    begin
      QExiste.Close;
      QExiste.ParamByName('rubro').Value:=CDSRubrosCODIGO_RUBRO.Value;
      QExiste.Open;
      Lista:=lwRubro.Items.Add;
      Lista.Checked:=Not(QExiste.IsEmpty);
      Lista.SubItems.Add(CDSRubros.FieldByName('codigo_rubro').AsString);
      Lista.SubItems.Add(CDSRubros.FieldByName('detalle_rubro').AsString);
      QExiste.Close;
      CDSRubros.Next;
    end;

  lwMarcas.Clear;
  CDSMarcas.Close;
  CDSMarcas.Open;
 // chklstCpbteVta.Clear;
  while Not(CDSMarcas.Eof) do
    begin
      QExisteMarca.Close;
      QExisteMarca.ParamByName('marca').Value:=CDSMarcasMARCA_STK.Value;
      QExisteMarca.Open;
      Lista:=lwMarcas.Items.Add;
      Lista.Checked:=Not(QExisteMarca.IsEmpty);
      Lista.SubItems.Add(CDSMarcas.FieldByName('marca_stk').AsString);
      Lista.SubItems.Add(CDSMarcas.FieldByName('descripcion_marca').AsString);
      QExisteMarca.Close;
      CDSMarcas.Next;
    end;



 end;

procedure TFormFiltroRubros.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
  for I := 0 to lwRubro.Items.Count - 1 do
    lwRubro.Items[i].Checked:=True;
end;

procedure TFormFiltroRubros.SpeedButton2Click(Sender: TObject);
VAR i:Integer;
begin
  for I := 0 to lwRubro.Items.Count - 1 do
    lwRubro.Items[i].Checked:=False;
end;

procedure TFormFiltroRubros.SpeedButton3Click(Sender: TObject);
var i:integer;
begin
  for I := 0 to lwMarcas.Items.Count - 1 do
    lwMarcas.Items[i].Checked:=True;
end;

procedure TFormFiltroRubros.SpeedButton4Click(Sender: TObject);
VAR i:Integer;
begin
  for I := 0 to lwMarcas.Items.Count - 1 do
    lwMarcas.Items[i].Checked:=False;
end;

end.
