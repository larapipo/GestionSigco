unit UVistasGrillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FMTBcd, DBClient, Provider, DB, SqlExpr, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormVistaGrillas = class(TForm)
    pnBase: TPanel;
    edDetalle: TEdit;
    dbgVistas: TJvDBGrid;
    spConfirma: TSpeedButton;
    DSVistas: TDataSource;
    DSPVistas: TDataSetProvider;
    CDSVistas: TClientDataSet;
    CDSVistasID: TIntegerField;
    CDSVistasVISTA: TBlobField;
    CDSVistasDESCRIPCION: TStringField;
    CDSVistasDEFECTO: TStringField;
    CDSVistasORIGEN: TStringField;
    btCerrar: TBitBtn;
    Label1: TLabel;
    btBorrar: TBitBtn;
    DSPLstVistas: TDataSetProvider;
    DSLstVistas: TDataSource;
    CDSLstVistas: TClientDataSet;
    IntegerField2: TIntegerField;
    BlobField2: TBlobField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    QLstVistas: TFDQuery;
    QVistas: TFDQuery;
    QUltimo: TFDQuery;
    function dbgVistasCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure spConfirmaClick(Sender: TObject);
    procedure btBorrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FTipo:String;
    FDato:TMemoryStream;
    { Private declarations }
  public
    { Public declarations }
  published
    property Tipo:String read FTipo write FTipo;
    property Dato:TMemoryStream read FDato write FDato;
  end;

var
  FormVistaGrillas: TFormVistaGrillas;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormVistaGrillas.btBorrarClick(Sender: TObject);
begin
  CDSLstVistas.Delete;
  CDSLstVistas.ApplyUpdates(0);

  CDSLstVistas.Close;
  CDSLstVistas.Params.ParamByName('origen').Value:=FTipo;
  CDSLstVistas.Open;

end;

procedure TFormVistaGrillas.btCerrarClick(Sender: TObject);
begin
  Close;
end;

function TFormVistaGrillas.dbgVistasCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
  var StringForTrue, StringForFalse: string): Boolean;
begin
  result   := Field = CDSVistasDEFECTO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;



procedure TFormVistaGrillas.edDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    begin
      key:=VK_OEM_CLEAR;
      spConfirmaClick(Sender);
    end;
end;

procedure TFormVistaGrillas.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSVistas.Close;
  CDSVistas.Open;

  CDSLstVistas.Close;
  CDSLstVistas.Params.ParamByName('origen').Value:=FTipo;
  CDSLstVistas.Open;
end;

procedure TFormVistaGrillas.FormDestroy(Sender: TObject);
begin
  FormVistaGrillas:=nil;
end;

procedure TFormVistaGrillas.FormShow(Sender: TObject);
begin
//  CDSVistas.Open;
  CDSLstVistas.Close;
  CDSLstVistas.Params.ParamByName('origen').Value:=FTipo;
  CDSLstVistas.Open;
  edDetalle.SetFocus;
  edDetalle.SelectAll;
end;


procedure TFormVistaGrillas.spConfirmaClick(Sender: TObject);
begin
  if Trim(edDetalle.Text)<>'' then
    begin
      CDSVistas.Append;
      QUltimo.Close;
      QUltimo.Open;
      if QUltimo.Fields[0].ASString='' then
        CDSVistasID.Value:=1
      else
        CDSVistasID.Value:=1+QUltimo.Fields[0].Value;
      QUltimo.Close;
      CDSVistasDEFECTO.Value    := 'N';
      CDSVistasVISTA.LoadFromStream(FDato);
      CDSVistasORIGEN.Value     := FTipo;
      CDSVistasDESCRIPCION.Value:= edDetalle.Text;
      CDSVistas.Post;
      CDSVistas.ApplyUpdates(0);
    end;

  CDSLstVistas.Close;
  CDSLstVistas.Params.ParamByName('origen').Value:=FTipo;
  CDSLstVistas.Open;

  Close;

end;

end.
