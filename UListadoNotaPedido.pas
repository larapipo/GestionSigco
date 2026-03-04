unit UListadoNotaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ImgList, DB,
  ActnList, ComCtrls, JvExControls, JvGradient, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Provider, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormListadoNotaPedido = class(TFormABMBase)
    dbgCabecera: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    CDSNPDet: TClientDataSet;
    DSPNPdet: TDataSetProvider;
    CDSNPCab: TClientDataSet;
    DSPNPcab: TDataSetProvider;
    DSNPCab: TDataSource;
    DSNPdet: TDataSource;
    CDSNPDetCODIGO: TStringField;
    CDSNPDetDETALLE: TStringField;
    QNPCab: TFDQuery;
    CDSNPCabID: TIntegerField;
    CDSNPCabFECHA: TSQLTimeStampField;
    CDSNPCabTIPOCPBTE: TStringField;
    CDSNPCabCLASECPBTE: TStringField;
    CDSNPCabNROCPBTE: TStringField;
    CDSNPCabLETRA: TStringField;
    CDSNPCabSUC: TStringField;
    CDSNPCabNUMERO: TStringField;
    CDSNPCabSUCURSAL: TIntegerField;
    CDSNPCabSOLICITANTE: TStringField;
    CDSNPCabPEDIDO: TStringField;
    CDSNPCabDEPOSITO: TIntegerField;
    CDSNPCabNOTATRANS_ID: TIntegerField;
    CDSNPCabNOTATRANS_NRO: TStringField;
    CDSNPCabFECHA_HORA: TSQLTimeStampField;
    CDSNPCabUSUARIO: TStringField;
    CDSNPCabMUESTRASOLICIANTE: TStringField;
    CDSNPCabMUESTRADEPOSITO: TStringField;
    QNPDet: TFDQuery;
    CDSNPDetCANTIDAD: TFloatField;
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSNPCabAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgCabeceraDblClick(Sender: TObject);
    procedure dbgCabeceraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoNotaPedido: TFormListadoNotaPedido;

implementation

uses UNotaPedido,UDMain_FD;

{$R *.dfm}

procedure TFormListadoNotaPedido.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSNPCab.IndexName:='';
  CDSNPCab.IndexDefs.Clear;
  CDSNPCab.Close;
  CDSNPCab.Params.ParamByName('estado').Value:='N';
  CDSNPCab.Open;

  CDSNPDet.Close;
  CDSNPDet.Params.ParamByName('id').Value:=CDSNPCabID.Value;
  CDSNPDet.Open;

end;

procedure TFormListadoNotaPedido.CDSNPCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSNPDet.Close;
  CDSNPDet.Params.ParamByName('id').Value:=CDSNPCabID.Value;
  CDSNPDet.Open;
end;

procedure TFormListadoNotaPedido.dbgCabeceraDblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormNotaPedido)) then
    FormNotaPedido:=TFormNotaPedido.Create(Self);
  FormNotaPedido.Modo:='R';
  FormNotaPedido.lbModo.Caption:='Revision';
  FormNotaPedido.Show;
  FormNotaPedido.DatoNew:=CDSNPCabID.AsString;
  FormNotaPedido.Recuperar.Execute;
end;

procedure TFormListadoNotaPedido.dbgCabeceraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgCabecera.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoNotaPedido.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListadoNotaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoNotaPedido.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormListadoNotaPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoNotaPedido:=nil;
end;

procedure TFormListadoNotaPedido.FormShow(Sender: TObject);
begin
  //inherited;
  Buscar.Execute;
end;

end.
