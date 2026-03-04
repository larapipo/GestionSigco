unit UListadoRecepGtias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, ExtCtrls, DBCtrls, DBClient, Provider,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Buttons, ToolWin, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, Data.DB,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormListadoRecepGtias = class(TFormABMBase)
    QRtoGtia: TSQLQuery;
    DSPRtoGtia: TDataSetProvider;
    CDSRtoGtia: TClientDataSet;
    CDSRtoGtiaID: TIntegerField;
    CDSRtoGtiaNROCPBTE: TStringField;
    CDSRtoGtiaCODIGO: TStringField;
    CDSRtoGtiaNOMBRE: TStringField;
    CDSRtoGtiaDIRECCION: TStringField;
    CDSRtoGtiaTELEFONO: TStringField;
    CDSRtoGtiaTRANSPORTISTA: TStringField;
    CDSRtoGtiaFECHA_ENTRADA: TSQLTimeStampField;
    CDSRtoGtiaFECHA_SALIDA: TSQLTimeStampField;
    CDSRtoGtiaCODIGOARTICULO: TStringField;
    CDSRtoGtiaDETALLE: TStringField;
    CDSRtoGtiaSERIE: TStringField;
    CDSRtoGtiaCON_FLETE: TStringField;
    CDSRtoGtiaTIPO_OP: TStringField;
    CDSRtoGtiaDEVOLUCION: TStringField;
    CDSRtoGtiaNOTAS: TStringField;
    CDSRtoGtiaESTADO: TIntegerField;
    CDSRtoGtiaANULADA: TStringField;
    CDSRtoGtiaUSUARIO: TStringField;
    CDSRtoGtiaFECHA_HORA: TSQLTimeStampField;
    CDSRtoGtiaMOTIVO_RECHAZO: TStringField;
    dbgRecepciones: TJvDBGrid;
    DSRtoGtia: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    rgEstados: TRadioGroup;
    VerComprobante: TAction;
    CDSRtoGtiaID_SERVICIO_TECNICO: TIntegerField;
    DBEdit1: TDBText;
    DBEdit2: TDBText;
    procedure BuscarExecute(Sender: TObject);
    procedure dbgRecepcionesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoRecepGtias: TFormListadoRecepGtias;

implementation

uses UDMain_FD, URecepcionGarantias;
{$R *.dfm}

procedure TFormListadoRecepGtias.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSRtoGtia.IndexName:='';
  CDSRtoGtia.IndexDefs.Clear;
  CDSRtoGtia.Close;
  case rgEstados.ItemIndex of
    0:CDSRtoGtia.Params.ParamByName('dato').Value:=-1;
    1:CDSRtoGtia.Params.ParamByName('dato').Value:=0;
    2:CDSRtoGtia.Params.ParamByName('dato').Value:=1;
    3:CDSRtoGtia.Params.ParamByName('dato').Value:=2;
    4:CDSRtoGtia.Params.ParamByName('dato').Value:=3;
    5:CDSRtoGtia.Params.ParamByName('dato').Value:=4;
  end;
  CDSRtoGtia.Open;

end;

procedure TFormListadoRecepGtias.dbgRecepcionesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgRecepciones.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoRecepGtias.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListadoRecepGtias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoRecepGtias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRecepGtias:=nil;
end;

procedure TFormListadoRecepGtias.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormRecepGarantia)) THEN
    FormRecepGarantia  := TFormRecepGarantia.Create(self);
  FormRecepGarantia.DatoNew := CDSRtoGtiaID.AsString;
  FormRecepGarantia.Recuperar.Execute;
  FormRecepGarantia.Show;
end;

end.
