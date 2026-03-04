unit UCompCarnesMedias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, System.Actions, Vcl.ActnList;

type
  TFormMediasResesCompra = class(TForm)
    pnCabecera: TPanel;
    pnBase: TPanel;
    pnPie: TPanel;
    sgMedias: TAdvStringGrid;
    QMediasDet: TFDQuery;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    QMediasDetID: TIntegerField;
    QMediasDetID_DET: TIntegerField;
    QMediasDetMEDIA: TIntegerField;
    edNroTropa: TEdit;
    Label1: TLabel;
    Label7: TLabel;
    QMediasCab: TFDQuery;
    QMediasCabID: TIntegerField;
    QMediasCabID_DET: TIntegerField;
    QMediasCabID_CAB: TIntegerField;
    QMediasCabCLASIFICACION: TStringField;
    QMediasCabNRO_TROPA: TStringField;
    QMediasCabT_KILOS: TIntegerField;
    QMediasCabT_MEDIAS: TIntegerField;
    pnTotal: TPanel;
    edKilos: TEdit;
    Label2: TLabel;
    ActionList1: TActionList;
    Guardar: TAction;
    cbClases: TComboBox;
    Label3: TLabel;
    edUnidades: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sgMediasCellValidate(Sender: TObject; ACol, ARow: Integer;
      var Value: string; var Valid: Boolean);
    procedure GuardarExecute(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure sgMediasCellChanging(Sender: TObject; OldRow, OldCol, NewRow,
      NewCol: Integer; var Allow: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FID_Det     : Integer;
    FID_Cab     : Integer;
    FMatriz     : TStringList;
    FNumeroTropa: Integer;
    FTotalKg    : Integer;
    FClase      : String;
    FTotalReses : Integer;
    { Public declarations }
  published
    property Id_Det      :Integer     read FID_Det write FID_Det;
    property Id_Cab      :Integer     read FID_Cab write FID_Cab;
    property Matriz      :TStringList read FMatriz write FMatriz;
    property NumeroTropa :Integer     read FNumeroTropa write FNumeroTropa;
    property TotalKg     :integer     read FTotalKg write FTotalKg;
    property Clase       :String      read FClase write FClase;
    property TotalReses  :Integer     read FTotalReses write FTotalReses;

  end;

var
  FormMediasResesCompra: TFormMediasResesCompra;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormMediasResesCompra.sgMediasCellChanging(Sender: TObject; OldRow,
  OldCol, NewRow, NewCol: Integer; var Allow: Boolean);
var
  r,c,cantidad,kilos: Integer;
begin
  cantidad:=0;
  kilos   :=0;
  if (oldcol<>newcol) or (oldrow<>newrow) then
    begin
      For r:= 0 to sgMedias.RowCount-1 do
        for c := 0 to sgMedias.RowCount - 1 do
           begin
             if sgMedias.Cells[c,r]<>'' then
               begin
                 cantidad:=cantidad+1;
                 kilos:=kilos+StrToInt(sgMedias.Cells[c,r]);
               end;
           end;
    end;
   edKilos.Text    := IntToStr(kilos);
   edUnidades.Text := IntToStr(cantidad);
end;

procedure TFormMediasResesCompra.sgMediasCellValidate(Sender: TObject;
  ACol, ARow: Integer; var Value: string; var Valid: Boolean);
var Numero:Integer;
begin
  if length(value)>3 then
    begin
      sgMedias.InvalidEntryText:='Valor Fuera de Rango';
      Valid:=False;
    end
  else
    if TryStrToInt(Value,Numero) then
      if not((numero>70) and (Numero <900)) then
        begin
          sgMedias.InvalidEntryText:='Cantidad Fuera de Rango';
          Valid:=False;
        end;

end;

procedure TFormMediasResesCompra.btOkClick(Sender: TObject);
var
  r: Integer;
  c: Integer;
  Cantidad:Integer;
begin
  For r:= 0 to sgMedias.RowCount-1 do
    for c := 0 to sgMedias.RowCount - 1 do
      begin
        if sgMedias.Cells[c,r]<>'' then
          begin
            cantidad:=cantidad+1;
            Matriz.Add(sgMedias.Cells[c,r] );
          end;
      end;

  FClase       := cbClases.Text;
  FNumeroTropa := StrToInt(edNroTropa.Text);
  FTotalKg     := StrToInt(edKilos.Text);
  FTotalReses  := Cantidad;// StrToInt(edUnidades.Text);
end;

procedure TFormMediasResesCompra.FormCreate(Sender: TObject);
begin
  Matriz:=TStringList.Create;
  Matriz.Clear;

  AutoSize:=False;
end;

procedure TFormMediasResesCompra.FormDestroy(Sender: TObject);
begin
  FormMediasResesCompra:=nil;
end;

procedure TFormMediasResesCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TDBMemo)) and
    (not (ActiveControl is TAdvStringGrid))
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;

end;

procedure TFormMediasResesCompra.FormShow(Sender: TObject);
begin
  FormMediasResesCompra.Width :=614;
  FormMediasResesCompra.Height:=567;
end;

procedure TFormMediasResesCompra.GuardarExecute(Sender: TObject);
var
  Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=DMMain_FD.fdcGestion;
  Query.SQL.Text:='';
end;

end.
