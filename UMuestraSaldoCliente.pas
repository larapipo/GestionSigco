unit UMuestraSaldoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, JvExControls, JvGradient, ExtCtrls, StdCtrls, Mask,
  DBCtrls, Buttons, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls,DateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormSaldoUnCLiente = class(TForm)
    pnPrincipal: TPanel;
    pnPie: TPanel;
    pnCabecera: TPanel;
    pnBotones: TPanel;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    DSSaldos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btOk: TBitBtn;
    lbAviso: TLabel;
    DBEdit1: TJvDBCalcEdit;
    DBEdit2: TJvDBCalcEdit;
    DBEdit3: TJvDBCalcEdit;
    DBEdit4: TJvDBCalcEdit;
    DBEdit5: TJvDBCalcEdit;
    DBEdit6: TJvDBCalcEdit;
    DBEdit7: TJvDBCalcEdit;
    QSaldos: TFDQuery;
    QSaldosCODIGO: TStringField;
    QSaldosNOMBRE: TStringField;
    QSaldosULTIMOPAGO: TSQLTimeStampField;
    QSaldosIMPORTEULTIMOPAGO: TFloatField;
    QSaldosVENCIDO30: TFloatField;
    QSaldosVENCIDO60: TFloatField;
    QSaldosVENCIDO90: TFloatField;
    QSaldosMUYVENCIDO: TFloatField;
    QSaldosANTICIPOS: TFloatField;
    QSaldosTOTAL: TFloatField;
    QSaldosSALDO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
    FDias:Integer;
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
    property Dias  :Integer read FDias write FDias;

  end;

var
  FormSaldoUnCLiente: TFormSaldoUnCLiente;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormSaldoUnCLiente.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormSaldoUnCLiente.FormDestroy(Sender: TObject);
begin
  FormSaldoUnCLiente:=nil;
end;

procedure TFormSaldoUnCLiente.FormShow(Sender: TObject);
var
 DateTem,desde1,desde2,desde3,desde4:TDateTime;
 d,m,a:word;
begin
  DateTem:=IncDay(Date,FDias*-1);
 // DecodeDate(IncDay(date,FDias * -1),a,m,d);

//  desde1:=EncodeDate(a,m,1);
//  desde1:=EncodeDate(a,m,DaysInMonth(desde1));
  Desde1:=DateTem;
  desde2:=IncMonth(desde1,-1);
  desde3:=IncMonth(desde2,-1);
  desde4:=IncMonth(Desde3,-1);

  QSaldos.Close;
  QSaldos.Params.ParamByName('desde1').Value    := desde1;
  QSaldos.Params.ParamByName('desde2').Value    := desde2;
  QSaldos.Params.ParamByName('desde3').Value    := desde3;
  QSaldos.Params.ParamByName('desde4').Value    := desde4;
  QSaldos.Params.ParamByName('Codigo').AsString := FCodigo;
  QSaldos.Open;

  Label1.Caption:='Deuda a ' + IntToStr(FDias) + ' Días';
  Label2.Caption:='Deuda a ' + IntToStr(FDias+30) + ' Días';
  Label3.Caption:='Deuda a ' + IntToStr(FDias+60) + ' Días';
  Label4.Caption:='Deuda mas de' + IntToStr(FDias+60) + ' Días';

end;

end.
