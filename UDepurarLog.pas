unit UDepurarLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls;

type
  TFormDepurarLog = class(TForm)
    QDel: TFDQuery;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edFecha: TJvDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDepurarLog: TFormDepurarLog;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormDepurarLog.Button1Click(Sender: TObject);
begin
//  Screen.Cursor:=crHourGlasss;
  QDel.Close;
  QDel.ParamByName('fecha').AsDate:=edFecha.Date;
  QDel.ExecSQL;
  QDel.Close;
  Screen.Cursor:=crDefault;
  Close;

end;

procedure TFormDepurarLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormDepurarLog.FormDestroy(Sender: TObject);
begin
  FormDepurarLog:=nil;
end;

end.
