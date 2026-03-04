unit UExportarLibroIvaVta_excel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,VirtualUI_SDK, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.CheckLst, Vcl.ExtCtrls,System.AnsiStrings;

type
  TFormExportarLibroIvaVtaExcel = class(TForm)
    pnColumnas: TPanel;
    btnSalirColumna: TSpeedButton;
    chklstColumnas: TCheckListBox;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure chklstColumnasClick(Sender: TObject);
    procedure btnSalirColumnaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportarLibroIvaVtaExcel: TFormExportarLibroIvaVtaExcel;

implementation

uses ULibroIvaVenta_2;

{$R *.dfm}

procedure TFormExportarLibroIvaVtaExcel.BitBtn1Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.DefaultExt:='xls';

  SaveDialog1.FileName  :='LibroIvaVenta_'+FormatDateTime('yyyymmdd', FormLibroIvaVenta_2.Desde.Date)+'_'+FormatDateTime('yyyymmdd',FormLibroIvaVenta_2.Hasta.Date);

  if VirtualUI.Active=True then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
       begin
         if VirtualUI.Active then
           if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
             SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

         if VirtualUI.Active=False then
           FormLibroIvaVenta_2.DataToXLS.SaveToFile(SaveDialog1.FileName)
         else
           FormLibroIvaVenta_2.DataToXLS.SaveToFile(SaveDialog1.FileName);//+'.'+SaveDialog1.DefaultExt);

         if VirtualUI.Active then
             VirtualUI.DownloadFile(SaveDialog1.FileName);//+'.'+SaveDialog1.DefaultExt);
       end;
  FormExportarLibroIvaVtaExcel.Visible:=False;
end;

procedure TFormExportarLibroIvaVtaExcel.btnSalirColumnaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormExportarLibroIvaVtaExcel.chklstColumnasClick(Sender: TObject);
begin
  if (TForm(Self.Owner).Name='FormLibroIvaVenta_2') then
    FormLibroIvaVenta_2.DataToXLS.Columns[chklstColumnas.ItemIndex].Save:=chklstColumnas.Checked[chklstColumnas.ItemIndex];
end;

end.
