unit UBuscadorCambiosArticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ExtCtrls, Provider, DBClient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorCambios = class(TForm)
    pnBase: TPanel;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorFECHA: TSQLTimeStampField;
    CDSBuscadorNUMERO: TIntegerField;
    CDSBuscadorID_LISTA: TIntegerField;
    CDSBuscadorID_AJUSTE: TIntegerField;
    CDSBuscadorID_FACTURA: TIntegerField;
    CDSBuscadorCLIENTE: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    CDSBuscadorCONDICION_IVA: TIntegerField;
    CDSBuscadorDEPOSITO: TIntegerField;
    CDSBuscadorSUCURSAL: TIntegerField;
    CDSBuscadorDESGLOZA_IVA: TStringField;
    CDSBuscadorOBSERVACION1: TStringField;
    CDSBuscadorOBSERVACION2: TStringField;
    CDSBuscadorUSUARIO: TStringField;
    CDSBuscadorFECHA_HORA: TSQLTimeStampField;
    CDSBuscadorMUESTRASUCURSAL: TStringField;
    CDSBuscadorMUESTRADEPOSITO: TStringField;
    CDSBuscadorMUESTRATIPOFACTURA: TStringField;
    CDSBuscadorMUESTRACLASECPBT: TStringField;
    CDSBuscadorMUESTRANROFAC: TStringField;
    CDSBuscadorMUESTRATIPOAJUSTE: TStringField;
    CDSBuscadorMUESTRACLASEAJUSTE: TStringField;
    CDSBuscadorMUESTRANROAJUSTE: TStringField;
    DSBuscador: TDataSource;
    dbgBuscador: TJvDBGrid;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    FDQuery1: TFDQuery;
    CDSBuscadorIMPORTE: TFloatField;
    procedure dbgBuscadorTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgBuscadorDblClick(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
  published
    property id:integer read FId write FId;
  end;

var
  FormBuscadorCambios: TFormBuscadorCambios;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormBuscadorCambios.btCancelarClick(Sender: TObject);
begin
 FId:=-1;
end;

procedure TFormBuscadorCambios.btOkClick(Sender: TObject);
begin
  FId:=CDSBuscadorID.Value;
end;

procedure TFormBuscadorCambios.dbgBuscadorDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorCambios.dbgBuscadorTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgBuscador.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

procedure TFormBuscadorCambios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorCambios.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSBuscador.Close;
  CDSBuscador.Open;
end;

procedure TFormBuscadorCambios.FormDestroy(Sender: TObject);
begin
   FormBuscadorCambios:=nil;
end;

end.
