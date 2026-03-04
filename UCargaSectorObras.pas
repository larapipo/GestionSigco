unit UCargaSectorObras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCargaSectorObra = class(TForm)
    QObrasSector: TFDQuery;
    QObrasSectorID_SECTOR: TIntegerField;
    QObrasSectorCOD_OBRA: TIntegerField;
    QObrasSectorSECTOR: TStringField;
    DSPObraSector: TDataSetProvider;
    CDSObrasSector: TClientDataSet;
    CDSObrasSectorID_SECTOR: TIntegerField;
    CDSObrasSectorCOD_OBRA: TIntegerField;
    CDSObrasSectorSECTOR: TStringField;
    DSObrasSector: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    edSector: TDBEdit;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    QNextID: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure CDSObrasSectorAfterPost(DataSet: TDataSet);
    procedure CDSObrasSectorNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure CDSObrasSectorReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FIdObra:Integer;
    FIdSector:Integer;
  public
    { Public declarations }
  published
    property idObra  :Integer read FIdObra write FIdObra;
    property idSector:Integer read FIdSector write FIdSector;

  end;

var
  FormCargaSectorObra: TFormCargaSectorObra;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCargaSectorObra.btOkClick(Sender: TObject);
begin
  CDSObrasSector.Post;
  FidSector:=CDSObrasSectorID_SECTOR.Value;
end;

procedure TFormCargaSectorObra.CDSObrasSectorAfterPost(DataSet: TDataSet);
begin
  CDSObrasSector.ApplyUpdates(0);
end;

procedure TFormCargaSectorObra.CDSObrasSectorNewRecord(DataSet: TDataSet);
begin
  CDSObrasSectorCOD_OBRA.Value:=FIdObra;
  QNextID.Close;
  QNextID.ParamByName('obra').Value:=FIdObra;
  QNextID.Open;
  if QNextID.Fields[0].AsString<>'' then
    CDSObrasSectorID_SECTOR.Value:=QNextID.Fields[0].AsInteger
  else
    CDSObrasSectorID_SECTOR.Value:=1;
  QNextID.Close;

end;

procedure TFormCargaSectorObra.CDSObrasSectorReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TFormCargaSectorObra.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSObrasSector.Close;
  CDSObrasSector.Open;

end;

procedure TFormCargaSectorObra.FormDestroy(Sender: TObject);
begin
  FormCargaSectorObra:=nil;
end;

procedure TFormCargaSectorObra.FormShow(Sender: TObject);
begin
  CDSObrasSector.Append;
  edSector.SetFocus;
end;

end.
