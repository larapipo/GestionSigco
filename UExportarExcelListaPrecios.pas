unit UExportarExcelListaPrecios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.CheckLst,
  Vcl.ExtCtrls,VirtualUI_SDK;

type
  TFormExportarExcelLista = class(TForm)
    pnColumnas: TPanel;
    btnSalirColumna: TSpeedButton;
    chklstColumnas: TCheckListBox;
    btExportar: TBitBtn;
    procedure btnSalirColumnaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure chklstColumnasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportarExcelLista: TFormExportarExcelLista;

implementation

{$R *.dfm}

uses UListaPreciosPersonalizada;

procedure TFormExportarExcelLista.btExportarClick(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  FormListaPreciosPersonalizada.SaveDialog1.DefaultExt:='xls';
  FormListaPreciosPersonalizada.SaveDialog1.FileName  :='ListaPrecios';

  if VirtualUI.Active then
    FormListaPreciosPersonalizada.SaveDialog1.FileName:=FormListaPreciosPersonalizada.SaveDialog1.FileName+'.'+FormListaPreciosPersonalizada.SaveDialog1.DefaultExt;

  if Not(FormListaPreciosPersonalizada.QListaPrecios_2.IsEmpty) then
    if FormListaPreciosPersonalizada.SaveDialog1.Execute then
      if FormListaPreciosPersonalizada.SaveDialog1.FileName<>'' then
         begin
           if VirtualUI.Active=False then
             FormListaPreciosPersonalizada.DataToXLS1.SaveToFile(FormListaPreciosPersonalizada.SaveDialog1.FileName)
           else
             FormListaPreciosPersonalizada.DataToXLS1.SaveToFile(FormListaPreciosPersonalizada.SaveDialog1.FileName);

           if VirtualUI.Active then
             VirtualUI.DownloadFile(FormListaPreciosPersonalizada.SaveDialog1.FileName);
         end;
  FormExportarExcelLista.Visible:=False;
end;

procedure TFormExportarExcelLista.btnSalirColumnaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormExportarExcelLista.chklstColumnasClick(Sender: TObject);
begin
  FormListaPreciosPersonalizada.DataToXLS1.Columns[chklstColumnas.ItemIndex].Save:=chklstColumnas.Checked[chklstColumnas.ItemIndex];
end;

procedure TFormExportarExcelLista.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
