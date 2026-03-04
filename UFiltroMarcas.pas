unit UFiltroMarcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.ExtCtrls;

type
  TFormFiltrosMarcas = class(TForm)
    chlFiltroMarcas: TCheckListBox;
    pnBase: TPanel;
    procedure chlFiltroMarcasClickCheck(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltrosMarcas: TFormFiltrosMarcas;

implementation

{$R *.dfm}

uses UListaPreciosPersonalizada;

procedure TFormFiltrosMarcas.chlFiltroMarcasClickCheck(Sender: TObject);
var i:Integer;
primero:Boolean;
begin
  if FormFiltrosMarcas.chlFiltroMarcas.ItemIndex=0 then
    begin
      for I := 0 to FormFiltrosMarcas.chlFiltroMarcas.Count - 1 do
        FormFiltrosMarcas.chlFiltroMarcas.Checked[I]:= FormFiltrosMarcas.chlFiltroMarcas.Checked[0];
    end;

  if (FormFiltrosMarcas.chlFiltroMarcas.ItemIndex<>0) and (FormFiltrosMarcas.chlFiltroMarcas.Checked[0]=True) then
    FormFiltrosMarcas.chlFiltroMarcas.Checked[FormFiltrosMarcas.chlFiltroMarcas.ItemIndex]:=True;


   FormListaPreciosPersonalizada.QListaPrecios_2.Filtered:=False;

  if FormFiltrosMarcas.chlFiltroMarcas.Checked[0]=True then
    FormListaPreciosPersonalizada.QListaPrecios_2.Filtered:=False
  else
    begin
      primero:=False;
      FormListaPreciosPersonalizada.QListaPrecios_2.Filtered:=False;
      FormListaPreciosPersonalizada.QListaPrecios_2.Filter:='';
      for I := 1 to FormFiltrosMarcas.chlFiltroMarcas.Count - 1 do
        begin
          if (FormFiltrosMarcas.chlFiltroMarcas.Checked[i]) and (primero=False) then
            begin
              FormListaPreciosPersonalizada.QListaPrecios_2.Filter:='Marca in ('+''''+copy(FormFiltrosMarcas.chlFiltroMarcas.Items[i],1,4)+'''';
              Primero:=True;
            end
          else
            if (FormFiltrosMarcas.chlFiltroMarcas.Checked[i]) Then
            FormListaPreciosPersonalizada.QListaPrecios_2.Filter:=FormListaPreciosPersonalizada.QListaPrecios_2.Filter +','+ ''''+copy(FormFiltrosMarcas.chlFiltroMarcas.Items[i],1,4)+'''';
        end;

      if FormListaPreciosPersonalizada.QListaPrecios_2.Filter<>'' then
        begin
          FormListaPreciosPersonalizada.QListaPrecios_2.Filter  :=FormListaPreciosPersonalizada.QListaPrecios_2.Filter +')';
          FormListaPreciosPersonalizada.QListaPrecios_2.Filtered:=True;
        end
      else
        if FormListaPreciosPersonalizada.QListaPrecios_2.Filter='' then
          begin
            FormListaPreciosPersonalizada.QListaPrecios_2.Filter  :='Marca = ''****'' ';
            FormListaPreciosPersonalizada.QListaPrecios_2.Filtered:=True;
          end

    end;
  FormListaPreciosPersonalizada.dbgPrecios.Width:=FormListaPreciosPersonalizada.dbgPrecios.Width-1;
  FormListaPreciosPersonalizada.dbgPrecios.Width:=FormListaPreciosPersonalizada.dbgPrecios.Width+1;
end;

procedure TFormFiltrosMarcas.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
