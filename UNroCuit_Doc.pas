unit UNroCuit_Doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls,
  ExtCtrls, Buttons, FMTBcd, DB, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCuit_Doc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edCuit: TMaskEdit;
    QActualizaCuit: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FId:Integer;
    FCuit:String;
    { Private declarations }
  public
    { Public declarations }
  published
    Property id:integer read fid write fid;
    property cuit:string read fcuit write fcuit;
  end;

var
  FormCuit_Doc: TFormCuit_Doc;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormCuit_Doc.BitBtn1Click(Sender: TObject);
begin
  QActualizaCuit.Close;
  QActualizaCuit.ParamByName('id').Value     :=FId;
  QActualizaCuit.ParamByName('nrocuit').Value:=edCuit.Text;
  QActualizaCuit.ExecSQL;
  QActualizaCuit.Close;
end;

procedure TFormCuit_Doc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCuit_Doc.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCuit_Doc.FormDestroy(Sender: TObject);
begin
  FormCuit_Doc:=nil;
end;

procedure TFormCuit_Doc.FormShow(Sender: TObject);
begin
  edCuit.Text:=FCuit;
end;

end.
