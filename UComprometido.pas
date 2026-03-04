unit UComprometido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, JvComponentBase, ImgList,
  JvExControls, JvGradient, Provider, DBClient, JvExDBGrids, JvDBGrid,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, Mask, JvExMask,
  JvToolEdit, JvBaseEdits, JvAppStorage, JvAppIniStorage, System.Actions,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormStockComprometido = class(TFormABMBase)
    DSComprometido: TDataSource;
    Label2: TLabel;
    dbgComprometido: TJvDBGrid;
    CDSComprometido: TClientDataSet;
    DSPComprometido: TDataSetProvider;
    CDSComprometidoID: TIntegerField;
    CDSComprometidoID_CABRTO: TIntegerField;
    CDSComprometidoNROCPBTE: TStringField;
    CDSComprometidoNROCPBTE_1: TStringField;
    CDSComprometidoNOMBRE: TStringField;
    CDSComprometidoCODIGOARTICULO: TStringField;
    CDSComprometidoDETALLE: TStringField;
    CDSComprometidoTIPOCPBTE: TStringField;
    CDSComprometidoCLASECPBTE: TStringField;
    edImporte: TJvCalcEdit;
    CDSComprometidoUNITARIO_TOTAL: TFloatField;
    QComprometido: TFDQuery;
    CDSComprometidoCANTIDAD: TFloatField;
    CDSComprometidoTOTAL: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgComprometidoDblClick(Sender: TObject);
    procedure dbgComprometidoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    procedure Suma;{ Public declarations }
  end;

var
  FormStockComprometido: TFormStockComprometido;

implementation

uses URemitos,UDMain_FD;

{$R *.DFM}

procedure TFormStockComprometido.Suma;
Var p:TBookmark;
begin
  edImporte.Value:=0;
  p:=CDSComprometido.GetBookmark;
  CDSComprometido.DisableControls;
  CDSComprometido.First;
  while Not(CDSComprometido.Eof) do
    begin
     edImporte.Value:=edImporte.Value+CDSComprometidoTOTAL.AsFloat;
     CDSComprometido.Next;
    end;
  CDSComprometido.GotoBookmark(p);
  CDSComprometido.FreeBookmark(p);
  CDSComprometido.EnableControls;
end;

procedure TFormStockComprometido.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSComprometido.Close;
  CDSComprometido.IndexDefs.Clear;
  CDSComprometido.IndexFieldNames:='';
  CDSComprometido.IndexName:='';
  CDSComprometido.Open;
  Suma;
end;

procedure TFormStockComprometido.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  Buscar.Execute;
end;

procedure TFormStockComprometido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormStockComprometido.FormDestroy(Sender: TObject);
begin
  inherited;
  FormStockComprometido:=nil;
end;

procedure TFormStockComprometido.dbgComprometidoDblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormRemitos)) Then
    FormRemitos:=TFormRemitos.Create(Application);
  formRemitos.DatoNew  :=CDSComprometidoID_CABRTO.AsString;
  FormRemitos.TipoCpbte:=CDSComprometidoTIPOCPBTE.AsString;
  FormRemitos.Recuperar.Execute;
end;

procedure TFormStockComprometido.dbgComprometidoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgComprometido.DataSource.DataSet as TClientDataSet do
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



end.
