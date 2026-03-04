unit UTransportes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls, FMTBcd, StdCtrls, Mask,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, SqlExpr, DBCtrls, Buttons, ToolWin, ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, JvAppStorage, JvAppIniStorage, System.Actions, Datasnap.Provider,
  Datasnap.DBClient, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, AdvSmoothButton;

type
  TFormTransportes = class(TFormABMBase)
    CDSTransportes: TClientDataSet;
    DSPTransportes: TDataSetProvider;
    CDSTransportesID: TIntegerField;
    CDSTransportesNOMBRE: TStringField;
    CDSTransportesDIRECCION: TStringField;
    CDSTransportesTELEFONO: TStringField;
    CDSTransportesLOCALIDAD: TStringField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    Label3: TLabel;
    dbeDireccion: TDBEdit;
    Label4: TLabel;
    dbeTelefonos: TDBEdit;
    Label5: TLabel;
    dbeLocalidad: TDBEdit;
    CDSTransportesCONDICION_IVA: TIntegerField;
    CDSTransportesCUIT: TStringField;
    Label6: TLabel;
    dblInscripcion: TDBLookupComboBox;
    Label7: TLabel;
    dbeCuit: TDBEdit;
    DSBuscaInscripcion: TDataSource;
    dbgChoferes: TDBGrid;
    Label8: TLabel;
    CDSChoferes: TClientDataSet;
    DSPChoferes: TDataSetProvider;
    DSChoferes: TDataSource;
    CDSChoferesID: TIntegerField;
    CDSChoferesID_TRANSPORTE: TIntegerField;
    CDSChoferesNOMBRE: TStringField;
    CDSChoferesNUMERO_DOC: TStringField;
    CDSChoferesTIPO_DOC: TStringField;
    QBuscaInscripcion: TFDQuery;
    QBuscaInscripcionCODIGO: TIntegerField;
    QBuscaInscripcionDETALLE: TStringField;
    QBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField;
    QBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    QBuscaTransporte: TFDQuery;
    QBuscaTransporteID: TIntegerField;
    QBuscaTransporteNOMBRE: TStringField;
    QBuscaTransporteDIRECCION: TStringField;
    QBuscaTransporteTELEFONO: TStringField;
    QBuscaTransporteLOCALIDAD: TStringField;
    QBuscaTransporteCONDICION_IVA: TIntegerField;
    QBuscaTransporteCUIT: TStringField;
    QChoferes: TFDQuery;
    QChoferesID: TIntegerField;
    QChoferesID_TRANSPORTE: TIntegerField;
    QChoferesNOMBRE: TStringField;
    QChoferesTIPO_DOC: TStringField;
    QChoferesNUMERO_DOC: TStringField;
    QTransportes: TFDQuery;
    QTransportesID: TIntegerField;
    QTransportesNOMBRE: TStringField;
    QTransportesDIRECCION: TStringField;
    QTransportesTELEFONO: TStringField;
    QTransportesLOCALIDAD: TStringField;
    QTransportesCONDICION_IVA: TIntegerField;
    QTransportesCUIT: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CDSTransportesNewRecord(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSChoferesNewRecord(DataSet: TDataSet);
    procedure dbgChoferesEnter(Sender: TObject);
    procedure dbgChoferesKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSChoferesBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    UltimoId:Integer;
  end;

var
  FormTransportes: TFormTransportes;

implementation
uses UDMain_FD;
{$R *.DFM}

procedure TFormTransportes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:= True;
  SinBde  := 2;
  AddClientDataSet(CDSTransportes,DSPTransportes);
  AddClientDataSet(CDSChoferes,DSPChoferes);
  CDSTransportes.Open;
  CDSChoferes.Open;
  QBuscaInscripcion.Open;
  Tabla:='Transportes';
  Campo:='id';
end;

procedure TFormTransportes.CDSChoferesBeforeInsert(DataSet: TDataSet);
var CDSClone:TClientDataSet;
begin
  inherited;
  if Not(CDSChoferes.IsEmpty) then
    begin
      CDSClone:=TClientDataSet.Create(Self);
      CDSClone.CloneCursor(CDSChoferes,true);
      CDSClone.IndexFieldNames:='ID';
      CDSClone.Last;
      UltimoId:=CDSClone.FieldByName('ID').Value+1;
      FreeAndNil(CDSClone);
    end
  else
   UltimoId:=1;
end;

procedure TFormTransportes.CDSChoferesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSChoferesID_TRANSPORTE.Value:= CDSTransportesID.Value;
  CDSChoferesID.Value           := UltimoId;
  CDSChoferesNOMBRE.Value       := '';
  CDSChoferesTIPO_DOC.Value     := 'DNI';
  CDSChoferesNUMERO_DOC.Value   := '';
end;

procedure TFormTransportes.CDSTransportesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.fields[0].AsString<>'' Then
    CDSTransportesID.Value:= QUltimoCodigo2.fields[0].Value+1
  else
    CDSTransportesID.Value:= 1;
  QUltimoCodigo2.Close;
end;

procedure TFormTransportes.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTransportes.Close;
  CDSTransportes.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSTransportes.Open;

  CDSChoferes.Close;
  CDSChoferes.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSChoferes.Open;

  DatoNew:=''+DatoNew+'';

end;

procedure TFormTransportes.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscaTransporte.Close;
  QBuscaTransporte.open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
      begin
        DatoNew:=IntToStr(comBuscadorBase.id);
        Recuperar.Execute;
      end;
  QBuscaTransporte.Close;
end;

procedure TFormTransportes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QBuscaInscripcion.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormTransportes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTransportes:=Nil;
end;

procedure TFormTransportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TDBGrid) then
  inherited;
end;

procedure TFormTransportes.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormTransportes.AgregarExecute(Sender: TObject);
begin
  CDSTransportes.Close;
  CDSTransportes.Params.ParamByName('id').Clear;
  CDSTransportes.Open;

  CDSChoferes.Close;
  CDSChoferes.Params.ParamByName('id').Clear;
  CDSChoferes.Open;
  inherited;
  dbeNombre.SetFocus;
end;

procedure TFormTransportes.CancelarExecute(Sender: TObject);
begin
  CDSTransportes.Close;
  CDSTransportes.Params.ParamByName('id').Clear;
  CDSTransportes.Open;

  CDSChoferes.Close;
  CDSChoferes.Params.ParamByName('id').Clear;
  CDSChoferes.Open;

  inherited;
end;

procedure TFormTransportes.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTransportesID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormTransportes.dbgChoferesEnter(Sender: TObject);
begin
  inherited;
  if dbgChoferes.SelectedIndex=0 then
    dbgChoferes.SelectedIndex:=1;
end;

procedure TFormTransportes.dbgChoferesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgChoferes.SelectedIndex<3 then
        dbgChoferes.SelectedIndex:=dbgChoferes.SelectedIndex+1
      else
        begin
          dbgChoferes.DataSource.DataSet.Append;
          dbgChoferes.SelectedIndex:=1;
        end;
    end;
end;

procedure TFormTransportes.BorrarExecute(Sender: TObject);
begin
  inherited;
  CDSTransportes.Close;
  CDSTransportes.Params.ParamByName('id').Clear;
  CDSTransportes.Open;
end;

end.