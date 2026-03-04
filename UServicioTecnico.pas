unit UServicioTecnico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Mask, DBCtrls, Provider, DBClient, JvExMask, JvToolEdit, Data.FMTBcd, Data.DB,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormServicioTecnico = class(TFormABMBase)
    CDSServicio: TClientDataSet;
    DSPServicio: TDataSetProvider;
    CDSServicioID: TIntegerField;
    CDSServicioNOMBRE: TStringField;
    CDSServicioDIRECCION: TStringField;
    CDSServicioID_LOCALIDAD: TIntegerField;
    CDSServicioTELEFONO: TStringField;
    CDSServicioCONTACTO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    RxDBIdPostal: TJvDBComboEdit;
    dbtLocalidad: TDBText;
    CDSServicioMUESTRALOCALIDAD: TStringField;
    DBText1: TDBText;
    CDSServicioMUESTRATELEDISCADO: TStringField;
    BuscarLocalidad: TAction;
    DSPBuscaCPostal: TDataSetProvider;
    CDSBuscaCPostal: TClientDataSet;
    CDSBuscaCPostalDETALLE_POSTAL: TStringField;
    CDSBuscaCPostalCODIGO_POSTAL: TStringField;
    CDSBuscaCPostalID_POSTAL: TIntegerField;
    CDSBuscaCPostalTELEDISCADO: TStringField;
    CDSBuscaCPostalPROVINCIA: TIntegerField;
    DSPPostal: TDataSetProvider;
    CDSPostal: TClientDataSet;
    CDSPostalID_POSTAL: TIntegerField;
    CDSPostalCODIGO_POSTAL: TStringField;
    CDSPostalDETALLE_POSTAL: TStringField;
    CDSPostalTELEDISCADO: TStringField;
    CDSPostalPROVINCIA: TIntegerField;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorNOMBRE: TStringField;
    ComBuscadorLocalidades: TComBuscador;
    QBuscador: TFDQuery;
    QServicio: TFDQuery;
    QServicioID: TIntegerField;
    QServicioNOMBRE: TStringField;
    QServicioDIRECCION: TStringField;
    QServicioID_LOCALIDAD: TIntegerField;
    QServicioTELEFONO: TStringField;
    QServicioCONTACTO: TStringField;
    QServicioMUESTRALOCALIDAD: TStringField;
    QServicioMUESTRATELEDISCADO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CDSServicioNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarLocalidadExecute(Sender: TObject);
    procedure CDSServicioID_LOCALIDADSetText(Sender: TField;
      const Text: string);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     FUNCTION AsignaLocalida(Dato: Integer): Boolean;

  end;

var
  FormServicioTecnico: TFormServicioTecnico;

implementation

uses UDMain_FD;
{$R *.dfm}

FUNCTION TFormServicioTecnico.AsignaLocalida(Dato: Integer): Boolean;
BEGIN
  CDSPostal.Close;
  CDSPostal.Params.ParamByName('id').Value := Dato;
  CDSPostal.Open;
  IF NOT (CDSPostal.IsEmpty) THEN
    BEGIN
      result := True;
      CDSServicioMUESTRALOCALIDAD.Value   := CDSPostalDETALLE_POSTAL.Value;
      CDSServicioMUESTRATELEDISCADO.Value := CDSPostalTELEDISCADO.Value;
      CDSServicioID_LOCALIDAD.Value       := Dato;
    END
  ELSE
    begin
      result := False;
      CDSServicioMUESTRALOCALIDAD.Clear;
      CDSServicioMUESTRATELEDISCADO.Clear;
    end;
  CDSPostal.Close;
END;

procedure TFormServicioTecnico.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormServicioTecnico.BuscarLocalidadExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCPostal.Close;
  CDSBuscaCPostal.Open;
  comBuscadorLocalidades.Execute;
  if comBuscadorLocalidades.rOk Then
    CDSServicioID_LOCALIDADSetText(CDSServicioID_LOCALIDAD, IntToStr(comBuscadorLocalidades.Id));
  CDSBuscaCPostal.Close;
end;

procedure TFormServicioTecnico.CDSServicioID_LOCALIDADSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text[1]<>#13)  Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignaLocalida(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo No Válido');
        END;
     end;
end;

procedure TFormServicioTecnico.CDSServicioNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSServicioID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSServicioID.Value:=1;
  QUltimoCodigo2.Close;
    

end;

procedure TFormServicioTecnico.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSServicioID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormServicioTecnico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormServicioTecnico.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBDE  :=2;
  AddClientDataSet(CDSServicio,DSPServicio);
  CDSServicio.Open;
  Tabla:='Servicio_tecnico';
  Campo:='id';
end;

procedure TFormServicioTecnico.FormDestroy(Sender: TObject);
begin
  inherited;
  FormServicioTecnico:=nil;
end;

procedure TFormServicioTecnico.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSServicio.Close;
  CDSServicio.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSServicio.Open;
end;

end.
