unit UBuscadorAcopiosActivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Buttons, JvExControls, JvGradient, ExtCtrls, JvExStdCtrls,
  JvCombobox, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, AdvUtil, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, AdvScrollControl, DBAdvSearchList, Vcl.Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit;

type
  TFormBuscadorAcopiosActivos = class(TForm)
    pn1: TPanel;
    pnCabecera: TPanel;
    pnPie: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    DSBuscador: TDataSource;
    CDSBuscadorCLIENTE: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    CDSBuscadorDIRECCION: TStringField;
    cbEstado: TJvComboBox;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    QBuscador: TFDQuery;
    Label1: TLabel;
    dbgClientes: TDBGrid;
    dbfNombre: TJvDBFindEdit;
    Label2: TLabel;
    CDSBuscadorCUMPLIDO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure cbEstadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgRtosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure dbgClientesDblClick(Sender: TObject);
    procedure dbgClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgClientesTitleClick(Column: TColumn);
  private
    { Private declarations }
    FEstado,FCodigo:String;
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
    property Estado:String read FEstado write FEstado;

  end;

var
  FormBuscadorAcopiosActivos: TFormBuscadorAcopiosActivos;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormBuscadorAcopiosActivos.btCancelClick(Sender: TObject);
begin
  FCodigo:='';
end;

procedure TFormBuscadorAcopiosActivos.btOkClick(Sender: TObject);
begin
  if not CDSBuscador.IsEmpty then
    FCodigo   :=  CDSBuscadorCLIENTE.AsString
  else
    FCodigo   :=  '';
end;

procedure TFormBuscadorAcopiosActivos.cbEstadoClick(Sender: TObject);
begin
  CDSBuscador.IndexDefs.Clear;
  CDSBuscador.IndexFieldNames:='';
  CDSBuscador.Close;
  case cbEstado.ItemIndex of
    0:  CDSBuscador.Params.ParamByName('estado').Value:='*';
    1:  CDSBuscador.Params.ParamByName('estado').Value:='N';
    2:  CDSBuscador.Params.ParamByName('estado').Value:='S';
  end;
  CDSBuscador.Open;
end;

procedure TFormBuscadorAcopiosActivos.dbgClientesDblClick(Sender: TObject);
begin
   btOk.Click();
end;



procedure TFormBuscadorAcopiosActivos.dbgClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btOk.Click();
end;

procedure TFormBuscadorAcopiosActivos.dbgClientesTitleClick(Column: TColumn);
var Campo:String;
begin
  try
    Campo := Column.FieldName;
    with dbgClientes.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorAcopiosActivos.dbgRtosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btOk.Click();

end;

procedure TFormBuscadorAcopiosActivos.FormCreate(Sender: TObject);
begin
//  AutoSize:=True;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSBuscador.IndexDefs.Clear;
  CDSBuscador.IndexFieldNames:='';
  CDSBuscador.Close;
  CDSBuscador.Params.ParamByName('estado').AsString:=FEstado;
  CDSBuscador.Open;
end;

procedure TFormBuscadorAcopiosActivos.FormDestroy(Sender: TObject);
begin
  FormBuscadorAcopiosActivos:=nil;
end;


procedure TFormBuscadorAcopiosActivos.FormResize(Sender: TObject);
begin
  if FormBuscadorAcopiosActivos<>nil then
    if FormBuscadorAcopiosActivos.Width<>841 then
      FormBuscadorAcopiosActivos.Width:=841
end;

procedure TFormBuscadorAcopiosActivos.FormShow(Sender: TObject);
begin
  CDSBuscador.IndexDefs.Clear;
  CDSBuscador.IndexFieldNames:='';
  CDSBuscador.Close;
  CDSBuscador.Params.ParamByName('estado').AsString:=FEstado;
  CDSBuscador.Open;

end;

end.
