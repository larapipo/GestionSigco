unit UControlTransacciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFormControlTransacciones = class(TFormABMBase)
    QTransacc: TFDQuery;
    DBGrid1: TDBGrid;
    DSTransacc: TDataSource;
    dbeId_ATT: TDBEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    BorrarTx: TAction;
    QTransaccATTACHMENT_ID: TLargeintField;
    QTransaccUSUARIO: TWideStringField;
    QTransaccREMOTE_ADDRESS: TStringField;
    QTransaccREMOTE_PROCESS: TWideStringField;
    QTransaccTRANSACTION_ID: TLargeintField;
    QTransaccESTADO: TSmallintField;
    QTransaccAISLAMIENTO: TSmallintField;
    QTransaccSQL_TEXT: TMemoField;
    QTransaccINICIO_TRANSACCION: TSQLTimeStampField;
    QTransaccMINUTOS_ABIERTA: TIntegerField;
    procedure BorrarTxExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlTransacciones: TFormControlTransacciones;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormControlTransacciones.BorrarTxExecute(Sender: TObject);
var Q:TFDquery;
begin
  inherited;
  Q            := TFDQuery.Create(nil);
  Q.Connection := DMMain_FD.fdcGestion;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    Q.SQL.Text := 'EXECUTE PROCEDURE SP_KILL_ATTACHMENT(:ID)';
    Q.ParamByName('ID').AsInteger := QTransaccATTACHMENT_ID.Value;
    Q.ExecSQL;
    Q.Close;
    DMMain_FD.fdcGestion.commit
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transaccion no Valida');
  end;
  Q.Close;
  FreeAndNil(Q);
end;

procedure TFormControlTransacciones.BuscarExecute(Sender: TObject);
begin
  inherited;
  QTransacc.Close;
  QTransacc.Open;
end;

procedure TFormControlTransacciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;
end;

procedure TFormControlTransacciones.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormControlTransacciones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlTransacciones:=nil;
end;

procedure TFormControlTransacciones.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
