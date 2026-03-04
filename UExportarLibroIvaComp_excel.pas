unit UExportarLibroIvaComp_excel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.CheckLst,
  Vcl.ExtCtrls,VirtualUI_SDK;


type
  TFormExportarLibroIvaExcel = class(TForm)
    pnColumnas: TPanel;
    btnSalirColumna: TSpeedButton;
    chklstColumnas: TCheckListBox;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSalirColumnaClick(Sender: TObject);
    procedure chklstColumnasClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportarLibroIvaExcel: TFormExportarLibroIvaExcel;

implementation

{$R *.dfm}
uses ULibroIvaCompra_2;

procedure TFormExportarLibroIvaExcel.BitBtn1Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.DefaultExt:='xls';

  SaveDialog1.FileName  :='LibroIvaCompra_'+FormatDateTime('yyyymmdd', FormLibroIvaCompra_2.Desde.Date)+'_'+FormatDateTime('yyyymmdd',FormLibroIvaCompra_2.Hasta.Date);

  if VirtualUI.Active=True then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
       begin
         if VirtualUI.Active=False then
           FormLibroIvaCompra_2.DataToXLS.SaveToFile(SaveDialog1.FileName)
         else
           FormLibroIvaCompra_2.DataToXLS.SaveToFile(SaveDialog1.FileName);//+'.'+SaveDialog1.DefaultExt);

         if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);//+'.'+SaveDialog1.DefaultExt);
       end;

  FormExportarLibroIvaExcel.Visible:=False;
end;

procedure TFormExportarLibroIvaExcel.btnSalirColumnaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormExportarLibroIvaExcel.chklstColumnasClick(Sender: TObject);
begin
  if (TForm(Self.Owner).Name='FormLibroIvaCompra_2') then
    FormLibroIvaCompra_2.DataToXLS.Columns[chklstColumnas.ItemIndex].Save:=chklstColumnas.Checked[chklstColumnas.ItemIndex];
end;

procedure TFormExportarLibroIvaExcel.FormDestroy(Sender: TObject);
begin
  FormExportarLibroIvaExcel:=nil;
end;

end.
