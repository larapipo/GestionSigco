unit UReArmaResumenBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, JvExControls, JvDBLookup, ExtCtrls, ComCtrls,
  Mask,  Librerias, FMTBcd, DBClient, Provider, SqlExpr, JvExMask,
  JvToolEdit, DBXCommon, AdvSmoothWin8Marquee, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormReArmaResumenBco = class(TForm)
    pnPrincipal: TPanel;
    dbcCta: TJvDBLookupCombo;
    Label1: TLabel;
    Button1: TButton;
    lb1: TLabel;
    lb2: TLabel;
    ud1: TUpDown;
    cbTipos: TComboBox;
    lb3: TLabel;
    DSPBancos: TDataSetProvider;
    CDSBancos: TClientDataSet;
    CDSBancosID_CUENTA: TIntegerField;
    CDSBancosID_TIPO_CTA: TIntegerField;
    CDSBancosNOMBRE: TStringField;
    CDSBancosNRO_CUENTA: TStringField;
    CDSBancosID_BANCO: TIntegerField;
    CDSBancosCUIT: TStringField;
    CDSBancosRAZONSOCIAL: TStringField;
    DSBancos: TDataSource;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    QBan: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReArmaResumenBco: TFormReArmaResumenBco;

implementation

uses UAvisoProceso, DMStoreProcedureForm,UDMain_FD;

{$R *.dfm}

procedure TFormReArmaResumenBco.Button1Click(Sender: TObject);
var tipo:string;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    Screen.Cursor:=crHourGlass;
    Application.ProcessMessages;
 //   smGauge.Animate:=True;
    DMStoreProcedure.spRearmarMovBcoFD.close;
    DMStoreProcedure.spRearmarMovBcoFD.ParamByName('id_cta_bancaria').Value:=dbcCta.KeyValue;
    case cbTipos.ItemIndex of
       0,-1:tipo := '***';
       1:tipo := 'DEP';
       2:tipo := 'TRA';
       3:tipo := 'DEB';
       4:tipo := 'GAS';
       5:tipo := 'CHP';
       6:tipo := 'ACH';
       7:tipo := 'RCH';
       8:tipo := 'LIQ';
       9:tipo := 'TIB';
      10:tipo := 'ANU';

    end;
    DMStoreProcedure.spRearmarMovBcoFD.ParamByName('tipo').AsString  := Tipo;
    DMStoreProcedure.spRearmarMovBcoFD.ParamByName('desde').Value    := desde.Date;
    DMStoreProcedure.spRearmarMovBcoFD.ParamByName('hasta').Value    := hasta.Date;
    DMStoreProcedure.spRearmarMovBcoFD.ExecProc;
    DMStoreProcedure.spRearmarMovBcoFD.close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
     FormProceso.Close;
     ShowMessage('Operación no realizada......!!!!');
  end;
  DMStoreProcedure.spRearmarMovBcoFD.close;
 // smGauge.Animate:=False;
 // smGauge.Visible:=False;
    Screen.Cursor:=crDefault;

  //if (Assigned(FormProceso)) Then
  //  FormProceso.Close;
end;

procedure TFormReArmaResumenBco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSBancos.Close;
  Action:=caFree;
end;

procedure TFormReArmaResumenBco.FormCreate(Sender: TObject);
var y,m,d:Word;
begin
 AutoSize:=True;
 CDSBancos.Close;
 CDSBancos.Open;

  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;


end;

procedure TFormReArmaResumenBco.FormDestroy(Sender: TObject);
begin
  FormReArmaResumenBco:=nil;
end;

procedure TFormReArmaResumenBco.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button=btnext Then
    begin
      Desde.Date := IncMonth(Desde.Date,(1));
      Hasta.Date := IncMonth(Hasta.Date,(1));
    end
  else
    if Button=btPrev Then
      begin
        Desde.Date := IncMonth(Desde.Date,(-1));
        Hasta.Date := IncMonth(Hasta.Date,(-1));
      end;
end;

end.