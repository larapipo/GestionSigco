unit UUltimaVtaCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  FMTBcd, SqlExpr, Provider, DBClient, JvExMask, JvToolEdit, JvDBControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormUltimaVta = class(TForm)
    DSUltimaVta: TDataSource;
    pnPrincipal: TPanel;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Fecha: TLabel;
    Label1: TLabel;
    CDSUltimaVta: TClientDataSet;
    DSPUltimaVta: TDataSetProvider;
    CDSUltimaVtaNROCPBTE: TStringField;
    CDSUltimaVtaDETALLE: TStringField;
    CDSUltimaVtaOBS1: TStringField;
    CDSUltimaVtaOBS2: TStringField;
    CDSUltimaVtaFECHA: TSQLTimeStampField;
    DBDateEdit1: TJvDBDateEdit;
    QUltimaV: TFDQuery;
    CDSUltimaVtaTOTAL: TFloatField;
    CDSUltimaVtaIMPORTE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnPrincipalResize(Sender: TObject);
  private
    FCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormUltimaVta: TFormUltimaVta;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormUltimaVta.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormUltimaVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormUltimaVta.FormDestroy(Sender: TObject);
begin
  FormUltimaVta:=nil;
end;

procedure TFormUltimaVta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_ESCAPE then Close;
 
end;

procedure TFormUltimaVta.FormShow(Sender: TObject);
begin
  CDSUltimaVta.Close;
  CDSUltimaVta.Params.ParamByName('Codigo').Value:=Codigo;
  CDSUltimaVta.OPen;
end;

procedure TFormUltimaVta.pnPrincipalResize(Sender: TObject);
begin
  if FormUltimaVta<>nil then
    if FormUltimaVta.Width<>485 then
      FormUltimaVta.Width:=485;

end;

procedure TFormUltimaVta.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 Then Close;
end;

end.