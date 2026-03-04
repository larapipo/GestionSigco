unit UMuestraIngresosPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Buttons, ExtCtrls,
  ComCtrls;

type
  TFormMuestraIngresosPersonal = class(TForm)
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    lvLista: TListView;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    FLista:TStringList;{ Private declarations }
  public
    { Public declarations }
  published
    property Lista:TStringList write FLista;
  end;

var
  FormMuestraIngresosPersonal: TFormMuestraIngresosPersonal;

implementation

uses UIngresosCtaEmpleadoLote;

{$R *.dfm}

procedure TFormMuestraIngresosPersonal.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMuestraIngresosPersonal.BitBtn2Click(Sender: TObject);
begin
   FormIngresoPorLotePersonal.guardarListViewFichero(lvLista);
   if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      FormIngresoPorLotePersonal.ListaNovedades.SaveToFile( SaveDialog1.FileName);
   Close;
end;

procedure TFormMuestraIngresosPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Action:=caFree;
end;

procedure TFormMuestraIngresosPersonal.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraIngresosPersonal.FormDestroy(Sender: TObject);
begin
  FormMuestraIngresosPersonal:=Nil;
end;

procedure TFormMuestraIngresosPersonal.FormShow(Sender: TObject);
begin
  //ListBox1.Items:=FLista;
end;

end.
