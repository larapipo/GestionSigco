unit UGrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart;

type
  TFormGrafico = class(TForm)
    pnBase: TPanel;
    chGeneral: TChart;
    Series1: TBarSeries;
    pnPie: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    FLista:TStringList;
    FTitulo:String;
  public
    { Public declarations }
  published
    property Lista :TStringList read FLista write Flista;
    property Titulo:String read FTitulo write FTitulo;

  end;

var
  FormGrafico: TFormGrafico;
  const Meses: array [1..12] of string = ('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');

implementation

{$R *.dfm}

procedure TFormGrafico.BitBtn1Click(Sender: TObject);
begin
  chGeneral.PrintLandscape;
end;

procedure TFormGrafico.BitBtn2Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
    chGeneral.SaveToBitmapFile(SaveDialog1.FileName+'.bmp');
end;

procedure TFormGrafico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormGrafico.FormCreate(Sender: TObject);
begin
  pnBase.Align:=alClient;
end;

procedure TFormGrafico.FormDestroy(Sender: TObject);
begin
  FormGrafico:=nil;
end;

procedure TFormGrafico.FormShow(Sender: TObject);
var i:integer;
dato:String;
begin
  Series1.Clear;
  chGeneral.Title.Caption:='';
  chGeneral.Title.Caption:=FTitulo;
  for i:=0 to FLista.Count-1 do
    begin
      dato:=(FLista.Strings[i]);
       while Pos(',',Dato)>0 do
         Delete(Dato,Pos(',',Dato),1);
         if tag=1 Then  Series1.AddXY(i,StrToFloat(dato),Meses[i+1])
         else
         if tag=2 Then  Series1.AddXY(i,StrToFloat(dato),IntToStr(i+1));

    end;

  //chGeneral.Series[0].XValues[i].ValueSource:=FLista.Text;
end;

end.
