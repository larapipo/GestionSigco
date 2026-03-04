unit UBorradorInventarioConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, JvDBLookup, Datasnap.Provider, Datasnap.DBClient,
  IniFiles;

type
  TFormBorradorInventarioConsulta = class(TFormABMBase)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbcDeposito: TJvDBLookupCombo;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    CDSBorrador: TClientDataSet;
    CDSBorradorDEPOSITO: TIntegerField;
    CDSBorradorCODIGO: TStringField;
    CDSBorradorCANTIDAD: TFloatField;
    CDSBorradorMUESTRASTOCK: TStringField;
    CDSBorradorMUESTRADEPOSITO: TStringField;
    CDSBorradorCLASE_ARTICULO: TIntegerField;
    QLimpiarTemporal: TFDQuery;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    DSDepositos: TDataSource;
    DSBorrador: TDataSource;
    DSPBorrador: TDataSetProvider;
    DSPDepositos: TDataSetProvider;
    QDeposito: TFDQuery;
    QBorrador: TFDQuery;
    CDSBorradorFECHA: TSQLTimeStampField;
    FDQuery1: TFDQuery;
    JvDBStatusLabel1: TJvDBStatusLabel;
    CDSBorradorDETALLE_RUBRO: TStringField;
    CDSBorradorDETALLE_SUBRUBRO: TStringField;
    CDSBorradorCONTROLASTOCK: TStringField;
    procedure dbcDepositoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBorradorInventarioConsulta: TFormBorradorInventarioConsulta;

implementation

{$R *.dfm}

uses UDMain_FD, UStock_2;

procedure TFormBorradorInventarioConsulta.BorrarExecute(Sender: TObject);
begin
 // inherited;
  if (CDSBorrador.IsEmpty=False) then
    if MessageDlg('Borrar Temporales ?',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
      begin
        QLimpiarTemporal.Close;
        QLimpiarTemporal.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
        QLimpiarTemporal.ExecSQL;
        QLimpiarTemporal.Close;
      end;

end;

procedure TFormBorradorInventarioConsulta.dbcDepositoClick(Sender: TObject);
begin
  inherited;
  CDSBorrador.Close;
  CDSBorrador.Params.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
  CDSBorrador.Open;
end;

procedure TFormBorradorInventarioConsulta.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(formStock_2)) then
    FormStock_2:=TFormStock_2.create(Self);
  FormStock_2.DatoNew:=CDSBorradorCODIGO.AsString;
   formstock_2.Recuperar.Execute;
   FormStock_2.Show;
end;

procedure TFormBorradorInventarioConsulta.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DataCol=7 then
    begin
      if CDSBorradorCONTROLASTOCK.Value='N' then
        DBGrid1.Canvas.Brush.Color:=clRed;
    end;
  if DataCol=6 then
    begin
      if CDSBorradorCLASE_ARTICULO.Value=0 then
        DBGrid1.Canvas.Brush.Color:=clRed;
    end;

  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TFormBorradorInventarioConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   Action:=caFree;
end;

procedure TFormBorradorInventarioConsulta.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSDepositos.Close;
  CDSDepositos.Open;
  ArchivoIni            := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  dbcdeposito.KeyValue  := ArchivoIni.ReadInteger('Deposito', 'Deposito', 0);
  ArchivoIni.Free;

  CDSBorrador.Close;
  CDSBorrador.Params.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
  CDSBorrador.Open;

end;

procedure TFormBorradorInventarioConsulta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormBorradorInventarioConsulta:=nil;
end;

procedure TFormBorradorInventarioConsulta.FormResize(Sender: TObject);
begin
  inherited;
  if FormBorradorInventarioConsulta<>nil then
    if FormBorradorInventarioConsulta.Width<>1150 then
      FormBorradorInventarioConsulta.Width:=1150;
end;

end.
