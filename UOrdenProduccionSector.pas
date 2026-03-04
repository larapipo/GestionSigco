unit UOrdenProduccionSector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormSectoresProduccion = class(TFormABMBase)
    Label1: TLabel;
    edId: TDBEdit;
    edDetalle: TDBEdit;
    Label2: TLabel;
    DSPSectores: TDataSetProvider;
    CDSSectores: TClientDataSet;
    CDSSectoresID: TIntegerField;
    CDSSectoresDETALLE: TStringField;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorDETALLE: TStringField;
    CDSBuscadorID: TIntegerField;
    QSectores: TFDQuery;
    QSectoresID: TIntegerField;
    QSectoresDETALLE: TStringField;
    QBuscador: TFDQuery;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSSectoresNewRecord(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSectoresProduccion: TFormSectoresProduccion;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormSectoresProduccion.AgregarExecute(Sender: TObject);
begin
  inherited;
  edDetalle.SetFocus;
end;

procedure TFormSectoresProduccion.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew := IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormSectoresProduccion.CDSSectoresNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSSectoresID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSSectoresID.Value:=1;
  QUltimoCodigo2.Close;
end;

procedure TFormSectoresProduccion.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSSectoresID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormSectoresProduccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormSectoresProduccion.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSSectores,DSPSectores);
  CDSSectores.Open;
  Tabla:='ORDENPRODUCCION_SECTOR';
  Campo:='ID';
end;

procedure TFormSectoresProduccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSectoresProduccion:=nil;
end;

procedure TFormSectoresProduccion.RecuperarExecute(Sender: TObject);
begin
  CDSSectores.Close;
  CDSSectores.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSSectores.Open;
end;

end.
