unit UCtrFechasEventosTareas;

{$D+}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,DateUtils,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker,
  JvExDBGrids, JvDBGrid;

type
  TFormGestionFechasEventos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    QPlaner: TFDQuery;
    QPlanerID_KEY: TStringField;
    QPlanerID_USUARIO: TIntegerField;
    QPlanerNOTES: TMemoField;
    QPlanerSUBJECT: TStringField;
    QPlanerCOLOR: TIntegerField;
    QPlanerIMAGE: TIntegerField;
    QPlanerCAPTION: TIntegerField;
    QPlanerRESOURCE: TIntegerField;
    QPlanerRECURRENCY: TStringField;
    QPlanerID_CPBTE: TIntegerField;
    QPlanerTIPOCPBTE: TStringField;
    QPlanerCLASECPTE: TStringField;
    QPlanerCLIENTE: TStringField;
    QPlanerPROVEEDOR: TStringField;
    QPlanerAREA: TIntegerField;
    QPlanerSTARTIME: TSQLTimeStampField;
    QPlanerENDTIME: TSQLTimeStampField;
    QPlanerMINTIME: TSQLTimeStampField;
    QPlanerMAXTIME: TSQLTimeStampField;
    DSPPlaner: TDataSetProvider;
    CDSPlaner: TClientDataSet;
    CDSPlanerID_KEY: TStringField;
    CDSPlanerID_USUARIO: TIntegerField;
    CDSPlanerNOTES: TMemoField;
    CDSPlanerSUBJECT: TStringField;
    CDSPlanerCOLOR: TIntegerField;
    CDSPlanerIMAGE: TIntegerField;
    CDSPlanerCAPTION: TIntegerField;
    CDSPlanerRESOURCE: TIntegerField;
    CDSPlanerRECURRENCY: TStringField;
    CDSPlanerID_CPBTE: TIntegerField;
    CDSPlanerTIPOCPBTE: TStringField;
    CDSPlanerCLASECPTE: TStringField;
    CDSPlanerCLIENTE: TStringField;
    CDSPlanerPROVEEDOR: TStringField;
    CDSPlanerAREA: TIntegerField;
    CDSPlanerSTARTIME: TSQLTimeStampField;
    CDSPlanerENDTIME: TSQLTimeStampField;
    CDSPlanerMINTIME: TSQLTimeStampField;
    CDSPlanerMAXTIME: TSQLTimeStampField;
    DSPlaner: TDataSource;
    QPlanerESTADO: TIntegerField;
    QPlanerID_REFERENCIAL: TStringField;
    CDSPlanerESTADO: TIntegerField;
    CDSPlanerID_REFERENCIAL: TStringField;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    lbControl: TLabel;
    CDSPlanerDESDE: TDateField;
    CDSPlanerHORAINCIO: TTimeField;
    JvDBGrid1: TJvDBGrid;
    edFecha: TJvDBDateTimePicker;
    edHora: TJvDBDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure CDSPlanerAfterPost(DataSet: TDataSet);
    procedure CDSPlanerAfterDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure CDSPlanerDESDEChange(Sender: TField);
    procedure CDSPlanerBeforeEdit(DataSet: TDataSet);
    procedure CDSPlanerBeforePost(DataSet: TDataSet);
    procedure CDSPlanerCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FId:string;
  public
    { Public declarations }
    A,M,D,Ho,Mi,S,Ms:Word;

  published
    property Id :string read FId write FId;
  end;

var
  FormGestionFechasEventos: TFormGestionFechasEventos;

implementation

{$R *.dfm}

procedure TFormGestionFechasEventos.CDSPlanerAfterDelete(DataSet: TDataSet);
begin
  CDSPlaner.ApplyUpdates(0);
end;

procedure TFormGestionFechasEventos.CDSPlanerAfterPost(DataSet: TDataSet);
begin
  CDSPlaner.ApplyUpdates(0);
end;

procedure TFormGestionFechasEventos.CDSPlanerBeforeEdit(DataSet: TDataSet);
begin
  DecodeDateTime(CDSPlanerSTARTIME.AsDateTime , A,M,D,Ho,Mi,S,Ms);
end;

procedure TFormGestionFechasEventos.CDSPlanerBeforePost(DataSet: TDataSet);
begin
  DecodeDate(CDSPlanerDESDE.AsDateTime, A,M,D);
  DecodeTime(CDSPlanerHORAINCIO.AsDateTime, Ho,Mi,S,Ms);
  CDSPlanerSTARTIME.AsDateTime := EncodeDate(A,M,D) + EncodeTime(Ho,Mi,0,0);
  CDSPlanerENDTIME.AsDateTime  := EncodeDate(A,M,D) + EncodeTime(Ho+1,Mi,0,0);

end;

procedure TFormGestionFechasEventos.CDSPlanerCalcFields(DataSet: TDataSet);
begin
  CDSPlanerDESDE.AsDateTime     := CDSPlanerSTARTIME.AsDateTime;
  CDSPlanerHORAINCIO.AsDateTime := CDSPlanerSTARTIME.AsDateTime;

end;

procedure TFormGestionFechasEventos.CDSPlanerDESDEChange(Sender: TField);
begin
//  EncodeDateTime(A,M,D,Ho,Mi,S,Ms)
end;

procedure TFormGestionFechasEventos.FormDestroy(Sender: TObject);
begin
  FormGestionFechasEventos:=nil;
end;

procedure TFormGestionFechasEventos.FormResize(Sender: TObject);
begin
  if FormGestionFechasEventos<>nil then
    if FormGestionFechasEventos.Width<>690 then
      FormGestionFechasEventos.Width:=690;
end;

procedure TFormGestionFechasEventos.FormShow(Sender: TObject);
begin
  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idkey').Value:=FId;
  CDSPlaner.Open;
end;

end.
