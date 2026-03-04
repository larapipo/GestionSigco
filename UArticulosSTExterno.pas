unit UArticulosSTExterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, JvFormPlacement, ImgList,  ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, DBCtrls,
  Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador;

type
  TFormArticulos_STExterno = class(TFormABMBase)
    QRtoGtia: TSQLQuery;
    DSPRtoGtia: TDataSetProvider;
    CDSRtoGtia: TClientDataSet;
    JvDBGrid1: TJvDBGrid;
    DSRtoGtia: TDataSource;
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
    CDSRtoGtiaID_NC: TIntegerField;
    CDSRtoGtiaNROCPBTE_NC: TStringField;
    CDSRtoGtiaFECHA_ENTREGADO: TSQLTimeStampField;
    CDSRtoGtiaFECHA_CAMBIOESTADO: TSQLTimeStampField;
    CDSRtoGtiaENTREGADO: TStringField;
    CDSRtoGtiaOBS: TMemoField;
    CDSRtoGtiaEN_ST_EXTERNO: TStringField;
    CDSRtoGtiaID_SERVICIO_TECNICO: TIntegerField;
    CDSRtoGtiaFECHA_ENVIO_ST: TSQLTimeStampField;
    CDSRtoGtiaFECHA_RECECP_ST: TSQLTimeStampField;
    CDSRtoGtiaMUESTRAST: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BuscarRto: TAction;
    Panel2: TPanel;
    JvGradient1: TJvGradient;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarRtoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticulos_STExterno: TFormArticulos_STExterno;

implementation

uses URecepcionGarantias;

{$R *.dfm}

procedure TFormArticulos_STExterno.BuscarExecute(Sender: TObject);
begin
  //inherited;
  CDSRtoGtia.CLose;
  CDSRtoGtia.Open;
end;

procedure TFormArticulos_STExterno.BuscarRtoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRecepGarantia)) then
    FormRecepGarantia:=TFormRecepGarantia.Create(Self);
 FormRecepGarantia.DatoNew:=CDSRtoGtiaID.AsString;
 FormRecepGarantia.Recuperar.Execute;
 FormRecepGarantia.Show;
 FormRecepGarantia.BringToFront;


end;

procedure TFormArticulos_STExterno.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormArticulos_STExterno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormArticulos_STExterno.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormArticulos_STExterno.FormDestroy(Sender: TObject);
begin
  inherited;
  FormArticulos_STExterno:=nil;
end;

procedure TFormArticulos_STExterno.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
