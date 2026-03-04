unit UBuscadorNotaTransf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, Provider, DBClient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, Buttons, JvExStdCtrls, JvCombobox,
  JvExControls, JvGradient, ExtCtrls, FMTBcd, SqlExpr, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorNotaTransferencia = class(TForm)
    pn1: TPanel;
    pnCabecera: TPanel;
    cbEstado: TJvComboBox;
    pnPie: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    dbgNotas: TJvDBGrid;
    CDSBuscadorNT: TClientDataSet;
    DSPBuscadorNT: TDataSetProvider;
    DSBuscadorNT: TDataSource;
    actlst1: TActionList;
    Buscar: TAction;
    CDSBuscadorNTNUMERO: TStringField;
    CDSBuscadorNTSUBNUMERO: TStringField;
    CDSBuscadorNTID: TIntegerField;
    CDSBuscadorNTDEP_DESTINO: TIntegerField;
    CDSBuscadorNTNOMBRE: TStringField;
    QBuscadorNT: TFDQuery;
    CDSBuscadorNTFECHA: TSQLTimeStampField;
    Label1: TLabel;
    procedure dbgNotasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgNotasDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
   FId:Integer;
  public
    { Public declarations }
  published
    property Id:Integer read FId write Fid;
  end;

var
  FormBuscadorNotaTransferencia: TFormBuscadorNotaTransferencia;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormBuscadorNotaTransferencia.BuscarExecute(Sender: TObject);
begin
  CDSBuscadorNT.IndexDefs.Clear;
  CDSBuscadorNT.IndexFieldNames:='';
  CDSBuscadorNT.Close;
  case cbEstado.ItemIndex of
    0:  CDSBuscadorNT.Params.ParamByName('Estado').Value:='*';
    1:  CDSBuscadorNT.Params.ParamByName('Estado').Value:='N';
    2:  CDSBuscadorNT.Params.ParamByName('Estado').Value:='E';
    3:  CDSBuscadorNT.Params.ParamByName('Estado').Value:='F';
    4:  CDSBuscadorNT.Params.ParamByName('Estado').Value:='A';
  end;
  CDSBuscadorNT.Open;
end;

procedure TFormBuscadorNotaTransferencia.btCancelClick(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormBuscadorNotaTransferencia.btOkClick(Sender: TObject);
begin
  FId:=CDSBuscadorNTID.Value;
end;

procedure TFormBuscadorNotaTransferencia.dbgNotasDblClick(Sender: TObject);
begin
   btOk.Click();
end;

procedure TFormBuscadorNotaTransferencia.dbgNotasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  try
    Campo := Field.FieldName;
    with dbgNotas.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorNotaTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorNotaTransferencia.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormBuscadorNotaTransferencia.FormDestroy(Sender: TObject);
begin
  formBuscadorNotaTransferencia:=nil;
end;

procedure TFormBuscadorNotaTransferencia.FormResize(Sender: TObject);
begin
  if FormBuscadorNotaTransferencia<>nil then
    if FormBuscadorNotaTransferencia.Width<>595 then
      FormBuscadorNotaTransferencia.Width:=595;

end;

procedure TFormBuscadorNotaTransferencia.FormShow(Sender: TObject);
begin
  Buscar.Execute;
end;

end.
