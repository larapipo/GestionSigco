unit UBuscadorPlanillaProduccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvGradient, StdCtrls, ExtCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, SqlExpr, Provider, DB, DBClient,
  ActnList, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBuscadorPlanillaArmadoProduccion = class(TForm)
    pnPrincipal: TPanel;
    pnBot: TPanel;
    rgEsatdo: TRadioGroup;
    dbgPlanillas: TJvDBGrid;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    CDSPlanillas: TClientDataSet;
    DSPPlanillas: TDataSetProvider;
    CDSPlanillasFECHA: TSQLTimeStampField;
    CDSPlanillasNROCPBTE: TStringField;
    CDSPlanillasCODIGO: TStringField;
    CDSPlanillasDETALLE_STK: TStringField;
    CDSPlanillasCODIGOSERIE: TStringField;
    DSPlanillas: TDataSource;
    CDSPlanillasID: TIntegerField;
    ActionList: TActionList;
    Buscar: TAction;
    QPlanillas: TFDQuery;
    procedure dbgPlanillasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BuscarExecute(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgPlanillasDblClick(Sender: TObject);
  private
    { Private declarations }
    FId:integer;
  public
    { Public declarations }
  published
    property id:Integer read FId write FId;  
  end;

var
  FormBuscadorPlanillaArmadoProduccion: TFormBuscadorPlanillaArmadoProduccion;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorPlanillaArmadoProduccion.btCancelarClick(Sender: TObject);
begin
  FId:= -1;
end;

procedure TFormBuscadorPlanillaArmadoProduccion.btOkClick(Sender: TObject);
begin
  FId:=CDSPlanillasID.Value;
end;

procedure TFormBuscadorPlanillaArmadoProduccion.BuscarExecute(Sender: TObject);
begin
  CDSPlanillas.Close;
  if rgEsatdo.ItemIndex=0 Then
    CDSPlanillas.Params.ParamByName('estado').Value:='N'
  else
    if rgEsatdo.ItemIndex=1 Then
      CDSPlanillas.Params.ParamByName('estado').Value:='F';
  CDSPlanillas.Open;    


end;

procedure TFormBuscadorPlanillaArmadoProduccion.dbgPlanillasDblClick(
  Sender: TObject);
begin
  btOkClick(Sender);
end;

procedure TFormBuscadorPlanillaArmadoProduccion.dbgPlanillasTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var campo:string;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgPlanillas.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorPlanillaArmadoProduccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorPlanillaArmadoProduccion.FormCreate(Sender: TObject);
begin
  CDSPlanillas.IndexDefs.Clear;
  CDSPlanillas.IndexName:='';
  AutoSize:=True;
  Buscar.Execute;
end;

procedure TFormBuscadorPlanillaArmadoProduccion.FormDestroy(Sender: TObject);
begin
  FormBuscadorPlanillaArmadoProduccion:=nil;
end;

end.
