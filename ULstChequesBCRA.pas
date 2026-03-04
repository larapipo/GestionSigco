unit ULstChequesBCRA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,StrUtils;

type
  TFormLstCheRechazados = class(TForm)
    pnBase: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    lvCheques: TListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCuit:String;
    FmtTabla:TFDMemTable;
  public
    { Public declarations }
    Lista   : TListItem;
    Year,Mes,Dia:String;
    NRO_CHEQUE,
    FECHA_RECHAZO,
    FECHA_LEVANTAMIENTO,
    MONTO,
    PAGO_MULTA,
    MUESTRACAUSA:String;
  published
    property mtTabla:TFDMemTable read FmtTabla write FmtTabla;
  end;

var
  FormLstCheRechazados: TFormLstCheRechazados;

implementation

{$R *.dfm}
uses UDMain_FD;


procedure TFormLstCheRechazados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormLstCheRechazados.FormCreate(Sender: TObject);
begin
  AutoSize:=True;

end;

procedure TFormLstCheRechazados.FormDestroy(Sender: TObject);
begin
  FormLstCheRechazados:=nil;
end;

procedure TFormLstCheRechazados.FormShow(Sender: TObject);
begin
 while Not(FmtTabla.Eof) do
    begin
      NRO_CHEQUE          := FmtTabla.FieldByName('NRO_CHEQUE').AsString;
      FECHA_RECHAZO       := AnsiLeftStr(FmtTabla.FieldByName('FECHA_RECHAZO').AsString,10);
      FECHA_LEVANTAMIENTO := AnsiLeftStr(FmtTabla.FieldByName('FECHA_LEVANTAMIENTO').AsString,10);
      MONTO               := FmtTabla.FieldByName('MONTO').AsString;
      PAGO_MULTA          := FmtTabla.FieldByName('PAGO_MULTA').AsString;
      MUESTRACAUSA        := FmtTabla.FieldByName('muestracausa').AsString;


      Year:=copy(FECHA_RECHAZO,1,4);
      Mes :=copy(FECHA_RECHAZO,6,2);
      Dia :=copy(FECHA_RECHAZO,9,2);
      FECHA_RECHAZO:=dia+'/'+mes+'/'+Year;

      Year:=copy(FECHA_LEVANTAMIENTO,1,4);
      Mes :=copy(FECHA_LEVANTAMIENTO,6,2);
      Dia :=copy(FECHA_LEVANTAMIENTO,9,2);
      FECHA_LEVANTAMIENTO:=dia+'/'+mes+'/'+Year;

      Lista:=lvCheques.Items.Add;
      Lista.Caption:=NRO_CHEQUE;
      Lista.SubItems.Add(FECHA_RECHAZO);
      Lista.SubItems.Add(FECHA_LEVANTAMIENTO);
      Lista.SubItems.Add(MONTO);
      Lista.SubItems.Add(PAGO_MULTA);
      Lista.SubItems.Add(MUESTRACAUSA);

      FmtTabla.Next;

    end;
end;

end.
