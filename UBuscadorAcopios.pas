unit UBuscadorAcopios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Buttons, JvExStdCtrls, JvCombobox, JvExControls,
  JvGradient, ExtCtrls, ActnList, System.Actions, Vcl.Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  AdvSearchList, AdvSearchEdit, DBAdvSearchEdit;

type
  TFormBuscadorAcopios = class(TForm)
    pn1: TPanel;
    pnCabecera: TPanel;
    cbEstado: TJvComboBox;
    pnPie: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    dbgRtos: TJvDBGrid;
    ActionList1: TActionList;
    Buscar: TAction;
    DSBuscador: TDataSource;
    fedNumero: TJvDBFindEdit;
    Label1: TLabel;
    fedNombre: TJvDBFindEdit;
    Label2: TLabel;
    Label3: TLabel;
    QBuscador_: TFDQuery;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorNROCPBTE: TStringField;
    CDSBuscadorFECHA: TSQLTimeStampField;
    CDSBuscadorCLIENTE: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    CDSBuscadorCUMPLIDO: TStringField;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDIRECCION: TStringField;
    CDSBuscadorCPOSTAL: TStringField;
    CDSBuscadorLOCALIDAD: TStringField;
    CDSBuscadorID_FACTURA: TIntegerField;
    CDSBuscadorOBS1: TStringField;
    CDSBuscadorOBS2: TStringField;
    seAcopio: TDBAdvSearchEdit;
    procedure BuscarExecute(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure dbgRtosDblClick(Sender: TObject);
    procedure dbgRtosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fedNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure seAcopioSelect(Sender: TObject);
    procedure seAcopioEnter(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FCodigo:String;
  public
    { Public declarations }
  published

    property Id:Integer read FId write Fid;
    property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormBuscadorAcopios: TFormBuscadorAcopios;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormBuscadorAcopios.btCancelClick(Sender: TObject);
begin
  FId:=-1;
  FCodigo:='';
end;

procedure TFormBuscadorAcopios.btOkClick(Sender: TObject);
begin
  FId    :=CDSBuscadorID.AsInteger;
  FCodigo:=CDSBuscadorCLIENTE.AsString;
end;

procedure TFormBuscadorAcopios.BuscarExecute(Sender: TObject);
begin
  CDSBuscador.IndexDefs.Clear;
  CDSBuscador.IndexFieldNames:='';
  CDSBuscador.Close;
  case cbEstado.ItemIndex of
    0:  CDSBuscador.Params.ParamByName('cumplido').Value:='*';
    1:  CDSBuscador.Params.ParamByName('cumplido').Value:='N';
    2:  CDSBuscador.Params.ParamByName('cumplido').Value:='S';
   // 3:  CDSBuscador.Params.ParamByName('cumplido').Value:='P';
  end;
  CDSBuscador.Open;
end;

procedure TFormBuscadorAcopios.seAcopioEnter(Sender: TObject);
begin
  seAcopio.SelectAll;
  seAcopio.SelStart  :=  1;
end;

procedure TFormBuscadorAcopios.seAcopioSelect(Sender: TObject);
begin
  (Sender as TDBAdvSearchEdit).ListSource.DataSet.Locate('ID', (Sender as TDBAdvSearchEdit).SearchList.SelectedItem.Captions[0],[]);
  btOk.Click;
end;

procedure TFormBuscadorAcopios.dbgRtosDblClick(Sender: TObject);
begin
  btOk.Click();
end;

procedure TFormBuscadorAcopios.dbgRtosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  try
    Campo := Field.FieldName;
    with dbgRtos.DataSource.DataSet as TClientDataSet do
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


procedure TFormBuscadorAcopios.fedNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DOWN) and (Not(CDSBuscador.eof)) then
    CDSBuscador.Next
  else
    if (Key=VK_UP) and (Not(CDSBuscador.bof)) then
      CDSBuscador.Prior;
end;

procedure TFormBuscadorAcopios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorAcopios.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormBuscadorAcopios.FormDestroy(Sender: TObject);
begin
  FormBuscadorAcopios:=nil;
end;

procedure TFormBuscadorAcopios.FormResize(Sender: TObject);
begin
  if FormBuscadorAcopios<>nil then
    if FormBuscadorAcopios.Width<>937 then
      FormBuscadorAcopios.Width:=937;
end;

procedure TFormBuscadorAcopios.FormShow(Sender: TObject);
begin
  Buscar.Execute;
 // fedNombre.SetFocus;
  seAcopio.SetFocus;
end;

end.
