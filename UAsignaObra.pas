unit UAsignaObra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCSearchEdit, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFormAsignaObras = class(TForm)
    QObras: TFDQuery;
    QObrasCODIGO: TIntegerField;
    QObrasDETALLE: TStringField;
    DSObras: TDataSource;
    dbSearch: TDBAdvSearchEdit;
    pnBase: TPanel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    procedure dbSearchSelect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    FId_Origen : Integer;
    FTipo      : String;
    FId_Obra   : Integer;
  public
    { Public declarations }
  published
    property id_origen:Integer write FId_Origen;
    property Tipo:string       write Ftipo;
    property Id_Obra:Integer   write FId_Obra;
  end;

var
  FormAsignaObras: TFormAsignaObras;

implementation

{$R *.dfm}
uses UDMain_fd;

procedure TFormAsignaObras.btOkClick(Sender: TObject);
var Q:TFDQuery;
SQLText:String;
begin
 // if Trim(dbSearch.Text)='' then
 //   FId_Obra:=-1;

  Q            := TFdquery.Create(Self);
  Q.Connection := DMMain_FD.fdcGestion;

  if FTipo='NC' then SQLText:='update fcvtacab f set f.id_obra=:IdObra where f.id_fc=:id'
  else
    if FTipo='FC' then SQLText:='update fcvtacab f set f.id_obra=:IdObra where f.id_fc=:id'
    else
      if FTipo='FO' then SQLText:='update fcvtacab f set f.id_obra=:IdObra where f.id_fc=:id'
      else
        if FTipo='nc' then SQLText:='update fccompcab f set f.id_obra=:IdObra where f.id_fc=:id'
        else
          if FTipo='fc' then SQLText:='update fccompcab f set f.id_obra=:IdObra where f.id_fc=:id'
          else
            if FTipo='fo' then SQLText:='update fccompcab f set f.id_obra=:IdObra where f.id_fc=:id'
            else
              if FTipo='RC' then SQLText:='update recibos f set f.id_obra=:IdObra where f.id_rc=:id'
              else
                if FTipo='OP' then SQLText:='update ordenpago f set f.id_obra=:IdObra where f.id_op=:id'
                else
                  if FTipo='EC' then SQLText:='update egr_caja f set f.id_obra=:IdObra where f.id_egreso=:id'
                  else
                    if FTipo='IC' then SQLText:='update ing_caja f set f.id_obra=:IdObra where f.id_ingreso=:id';


  Q.SQL.Text :=SQLText;
  Q.ParamByName('IdObra').Value := FId_Obra;
  Q.ParamByName('Id').Value     := FId_Origen;
  Q.ExecSQL;
  Q.Close;
  FreeAndNil(Q);
end;

procedure TFormAsignaObras.dbSearchSelect(Sender: TObject);
begin
  //gCuenta.SetFocus;
  if dbSearch.SearchList.SelectedItem.Captions[1]<>'' Then
    FId_Obra:= StrToInt(dbSearch.SearchList.SelectedItem.Captions[1])
  else
    Fid_obra:=-1;
  btOk.Click;
  //QObras.Locate('codigo',DBAdvSearchEdit1.SearchList.SelectedItem.Captions[0],[]);
end;

procedure TFormAsignaObras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QObras.Close;
end;

procedure TFormAsignaObras.FormCreate(Sender: TObject);
begin
  QObras.Open;
end;

end.
