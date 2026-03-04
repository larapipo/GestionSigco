unit ULectorLibroIvaDigital;

interface
 // no la borro por ahora
 // esta unidad esta en deshuso
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.ExtDlgs, AdvUtil, AdvObj, BaseGrid, AdvGrid;

type
  TFormLectorLibroIvaDigital = class(TFormABMBase)
    OpenTextFileDialog1: TOpenTextFileDialog;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    AdvStringGrid1: TAdvStringGrid;
    GravarTXT: TAction;
    SaveDialog1: TSaveDialog;
    btGravarTXT: TBitBtn;
    ToolButton1: TToolButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GravarTXTExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchiTxt:TextFile;
    i:integer;
  end;

var
  FormLectorLibroIvaDigital: TFormLectorLibroIvaDigital;

implementation

{$R *.dfm}


const titulo: array[0..21] of string= (  'fecha',  'tipocomprob',         'puntoVta',
                                      'nrocpbte','nrocpbtehasta','cod_Identificador',
                                          'Cuit',  'razonsocial',         'Importe' ,
                                      'excluido','Perc_NoCategorizados',    'importeexento',
                       'mp_Percep_Nacionales',   'ImportePercepIIBB', 'Imp_Percep_Municipales',         'excluido',
                               'CodigoMoneda',          'TipoCambio',     'cantlicuotasIva', 'CodigiOperacion', 'OtroTributos','FechaVto');



procedure TFormLectorLibroIvaDigital.Button1Click(Sender: TObject);
var s:string;
Col,Row,i:Integer;
begin
  inherited;
   if AdvStringGrid1.RowCount<=2 then
     raise Exception.Create('No Hay datos Para Procesar.....');
   Row:=1;
   AdvStringGrid1.ColumnHeaders.Clear;

   for I := 0 to 21 do
     begin
       AdvStringGrid1.ColumnHeaders.Add(Titulo[i]);
     end;

   while Not Eof(ArchiTxt) do
    begin
      Col:=0;
      ReadLn(ArchiTxt,s);
      while s<>'' do
        begin
          //'fecha'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,8);
          delete(s,1,8);
          Col:=Col+1;
          //'tipocomprob'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,3);
          delete(s,1,3);
          Col:=Col+1;
          //'puntoVta'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,5);
          delete(s,1,5);
          Col:=Col+1;
          //'nrocpbte'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,20);
          delete(s,1,20);
          Col:=Col+1;
          //'nrocpbtehasta'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,20);
          delete(s,1,20);
          Col:=Col+1;
          //'cod_Identificador',
          AdvStringGrid1.Cells[col,row]:=copy(s,1,2);
          delete(s,1,2);
          Col:=Col+1;
         //'Cuit'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,20);
          delete(s,1,20);
          Col:=Col+1;
          //'razonsocial'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,30);
          delete(s,1,30);
          Col:=Col+1;
          //'Importe'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'excluido'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'Perc_NoCategorizados'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'importeexento'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'mp_Percep_Nacionales'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'ImportePercepIIBB'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'Imp_Percep_Municipales'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'excluido'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'CodigoMoneda'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,3);
          delete(s,1,3);
          Col:=Col+1;
          //'TipoCambio'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,10);
          delete(s,1,10);
          Col:=Col+1;
          //'cantlicuotasIva'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,1);
          delete(s,1,1);
          Col:=Col+1;
          //'CodigiOperacion'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,1);
          delete(s,1,1);
          Col:=Col+1;
          //'OtroTributos'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,15);
          delete(s,1,15);
          Col:=Col+1;
          //'FechaVto'
          AdvStringGrid1.Cells[col,row]:=copy(s,1,8);
          delete(s,1,8);
          Col:=Col+1;

          s:='';

        end;
      Row:=Row+1;
    end;
  AdvStringGrid1.AutoSizeColumns(True,4);
  CloseFile(ArchiTxt);
end;

procedure TFormLectorLibroIvaDigital.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormLectorLibroIvaDigital.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormLectorLibroIvaDigital.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLectorLibroIvaDigital:=nil;
end;

procedure TFormLectorLibroIvaDigital.GravarTXTExecute(Sender: TObject);
begin
  inherited;
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      begin
        AdvStringGrid1.SaveToCSV(SaveDialog1.FileName,True);
      end;
end;

procedure TFormLectorLibroIvaDigital.SpeedButton1Click(Sender: TObject);
var arch: TStringList;
begin
  inherited;
  if OpenTextFileDialog1.Execute() Then
    Edit1.Text:=OpenTextFileDialog1.FileName;
  AssignFile(ArchiTxt, Edit1.Text);
  Reset(ArchiTxt);
  arch := TStringList.Create;
  arch.LoadFromFile(Edit1.Text);
  i          := arch.Count;//

  AdvStringGrid1.RowCount:=i+1;
end;

end.
