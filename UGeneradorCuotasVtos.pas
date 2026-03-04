unit UGeneradorCuotasVtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, JvExMask, JvToolEdit, StdCtrls, Spin, ExtCtrls, Buttons,
  JvExControls, JvGradient,DBXCommon, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, DBClient, Provider,DateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCuotasVencimientos = class(TForm)
    Panel1: TPanel;
    spCuotas: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    edFecha: TJvDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    seIntervalo: TSpinEdit;
    Panel2: TPanel;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    Panel3: TPanel;
    Label5: TLabel;
    JvDBGrid1: TJvDBGrid;
    DSVencimientos: TDataSource;
    Label6: TLabel;
    seDias: TSpinEdit;
    RadioGroup1: TRadioGroup;
    QVencimientos: TFDQuery;
    QVencimientosID: TIntegerField;
    QVencimientosFECHA_INCIO: TSQLTimeStampField;
    QVencimientosFECHA_FINALIZACION: TSQLTimeStampField;
    QVencimientosASUNTO: TStringField;
    QVencimientosASUNTO_2: TStringField;
    QVencimientosASUNTO_3: TStringField;
    QVencimientosAVISAR: TStringField;
    QVencimientosFRECUENCIA: TStringField;
    QVencimientosIMPORTE: TFloatField;
    QVencimientosID_CPBTE: TIntegerField;
    QVencimientosTIPO_CPBTE: TStringField;
    QVencimientosCLASE_CPBTE: TStringField;
    QVencimientosNROCPBTE: TStringField;
    QVencimientosESTADO: TIntegerField;
    QVencimientosCOLOR: TIntegerField;
    QVencimientosAVISA_INICIO: TSQLTimeStampField;
    QVencimientosAVISA_TERMINA: TSQLTimeStampField;
    QVencimientosFINALIZADO: TStringField;
    QVencimientosTIPO: TIntegerField;
    QVencimientosFECHA_CUMPLIDO: TSQLTimeStampField;
    QVencimientosPARENT_ID: TIntegerField;
    QVencimientosOPCION: TIntegerField;
    QVencimientosCUOTA_NRO: TSmallintField;
    QVencimientosLOTE: TIntegerField;
    spReplicarMov: TFDQuery;
    IntegerField1: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SQLTimeStampField3: TSQLTimeStampField;
    SQLTimeStampField4: TSQLTimeStampField;
    StringField9: TStringField;
    IntegerField5: TIntegerField;
    SQLTimeStampField5: TSQLTimeStampField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField8: TIntegerField;
    pnBase: TPanel;
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    fId:Integer;
    FVto1:TDateTime;
    { Private declarations }
  public
    { Public declarations }
  published
    property id:integer write fId;
    property Vto1:TDateTime write fVto1;

  end;

var
  FormCuotasVencimientos: TFormCuotasVencimientos;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCuotasVencimientos.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCuotasVencimientos.btOkClick(Sender: TObject);
var i:Integer;
FechaAux:TDateTime;
A,M,D:Word;
begin
  FechaAux :=edFecha.Date;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    FechaAux:=edFecha.Date;
    for i := 1 to spCuotas.VAlue do
      begin
        spReplicarMov.Close;
        spReplicarMov.ParamByName('id').AsInteger      := FId;
        spReplicarMov.ParamByName('Cuota').AsInteger   := I+1;
          case RadioGroup1.ItemIndex of
            0: begin
                 spReplicarMov.ParamByName('Fecha').AsDate  := edFecha.Date + ((i-1) * seIntervalo.Value);
                 DecodeDate(FechaAux,a,m,d);
               end;
            1: begin
                 FechaAux:=IncMonth(FechaAux,1);
                 DecodeDate(FechaAux,a,m,d);
                 FechaAux:=EncodeDate(a,m,seDias.Value);
                 if DayOfTheWeek(FechaAux)=DaySaturday then
                   FechaAux:=FechaAux+2
                 else
                   if DayOfTheWeek(FechaAux)=DaySunday then
                     FechaAux:=FechaAux+1
               end;
          end;
        ReplaceTime(FechaAux, StrToTime('00:00:00'));
        spReplicarMov.ParamByName('Fecha').AsDate   := FechaAux;
        spReplicarMov.ExecSQL;
        spReplicarMov.Close;
        FechaAux:=EncodeDate(a,m,seDias.Value);
      end;
    DMMain_FD.fdcGestion.Commit;
    QVencimientos.close;
    QVencimientos.ParamByName('id').Value:=FId;
    QVencimientos.Open;
    ShowMessage('Movimientos Generados...!');
    Close;
  except
    DMMain_FD.fdcGestion.Commit;
    ShowMessage('No se Ingresaron las Movimientos ...!');
  end;
end;

procedure TFormCuotasVencimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCuotasVencimientos.FormCreate(Sender: TObject);
begin
  AutoSize    :=False;
  edFecha.Date:=FVto1+seIntervalo.Value;
end;

procedure TFormCuotasVencimientos.FormDestroy(Sender: TObject);
begin
  FormCuotasVencimientos:=nil;
end;

procedure TFormCuotasVencimientos.FormResize(Sender: TObject);
begin
  if FormCuotasVencimientos<>nil then
    if FormCuotasVencimientos.Width<>610 then
      FormCuotasVencimientos.Width:=610;

end;

procedure TFormCuotasVencimientos.FormShow(Sender: TObject);
begin
  edFecha.Date:=FVto1+seIntervalo.Value;
end;

procedure TFormCuotasVencimientos.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:begin
        seDias.Enabled     :=False;
        seDias.Color       :=clBtnFace;
        seIntervalo.Enabled:=True;
        seIntervalo.Color :=clWhite;

      end;
    1:begin
        seDias.Enabled     :=True;
        seDias.Color       :=clWhite;
        seIntervalo.Enabled:=False;
        seIntervalo.Color :=clBtnFace;

      end;
  end;
end;

end.
