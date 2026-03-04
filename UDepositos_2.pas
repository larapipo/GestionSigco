unit UDepositos_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBCtrls, StdCtrls, Mask, Db, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient, 
  Provider, JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormDepositos_2 = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbeNombre: TDBEdit;
    dbeCodigo: TDBEdit;
    DSPDeposito: TDataSetProvider;
    DSucursal: TDataSource;
    DBCheckBox1: TDBCheckBox;
    CDSDeposito: TClientDataSet;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSDepositoCENTRALIZA_STOCK: TStringField;
    CDSDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoID: TIntegerField;
    CDSBuscaDepositoNOMBRE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    cbSucursal: TJvDBLookupCombo;
    QDeposito: TFDQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QDepositoCENTRALIZA_WEB: TStringField;
    CDSDepositoCENTRALIZA_WEB: TStringField;
    dbchWeb: TDBCheckBox;
    QDepositoACTIVO: TStringField;
    CDSDepositoACTIVO: TStringField;
    DBCheckBox2: TDBCheckBox;
    CDSBuscaDepositoACTIVO: TStringField;
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSDepositoNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDepositos_2: TFormDepositos_2;

implementation

uses UDMain_FD,DMBuscadoresForm;

{$R *.DFM}

procedure TFormDepositos_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormDepositos_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  CDSDeposito.Cancel;
end;

procedure TFormDepositos_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSDepositoID.AsString;
  if CDSDeposito.State<>dsBrowse Then
    CDSDeposito.Post;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormDepositos_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
    BEGIN
      DatoNew:=intToStr(ComBuscadorBase.id);
      Recuperar.Execute;
    END;
  CDSBuscaDeposito.Close;
end;

procedure TFormDepositos_2.FormCreate(Sender: TObject);
begin
  inherited;
  AddClientDataSet(CDSDeposito, DSPDeposito);
  CDSBuscaSucursal.open;
  CDSDeposito.Open;
  Tabla:='Depositos';
  Campo:='Id';
  SinBDE:=2;
end;

procedure TFormDepositos_2.CDSDepositoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
     CDSDepositoID.Value:=1
  else
    CDSDepositoID.Value:=QUltimoCodigo2.Fields[0].Value+1;
  QUltimoCodigo2.Close;
  CDSDepositoSUCURSAL.Value         := -1;
  CDSDepositoCENTRALIZA_STOCK.Value := 'S';
  CDSDepositoCENTRALIZA_WEB.Value   := 'N';
  CDSDepositoACTIVO.Value           := 'S';

end;

procedure TFormDepositos_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSDeposito.Close;
  CDSBuscaDeposito.Close;
  CDSBuscaSucursal.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormDepositos_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDepositos_2:=nil;
end;

procedure TFormDepositos_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('id').Value := DatoNew;
  CDSDeposito.Open;
end;

end.