unit UControlTxBancarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Mask, JvExMask, JvToolEdit,DateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormControlTxBancarias = class(TFormABMBase)
    pnDatos: TPanel;
    dbgTransferencias: TJvDBGrid;
    DSTransf: TDataSource;
    CDSTransf: TClientDataSet;
    DSPTransf: TDataSetProvider;
    Label2: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label3: TLabel;
    UpDown1: TUpDown;
    CDSTransfID_MOV_CAJA: TIntegerField;
    CDSTransfID_CAJA: TIntegerField;
    CDSTransfNUMERO: TIntegerField;
    CDSTransfID_CUENTA_BANCO: TIntegerField;
    CDSTransfORIGEN: TStringField;
    CDSTransfFECHA: TSQLTimeStampField;
    CDSCtas: TClientDataSet;
    CDSCtasID_CUENTA: TIntegerField;
    CDSCtasID_TIPO_CTA: TIntegerField;
    CDSCtasNOMBRE: TStringField;
    DSPCtas: TDataSetProvider;
    DSCtas: TDataSource;
    CDSTransfMUSETRACTA: TStringField;
    QTransf: TFDQuery;
    QTransfID: TIntegerField;
    QTransfID_MOV_CAJA: TIntegerField;
    QTransfID_CAJA: TIntegerField;
    QTransfID_FPAGO: TIntegerField;
    QTransfNUMERO: TIntegerField;
    QTransfID_CUENTA_CAJA: TIntegerField;
    QTransfID_CUENTA_BANCO: TIntegerField;
    QTransfMONEDA: TIntegerField;
    QTransfUNIDADES: TFloatField;
    QTransfIMPORTE: TFloatField;
    QTransfORIGEN: TStringField;
    QTransfFECHA: TSQLTimeStampField;
    QTransfCOTIZACION: TFloatField;
    QTransfMUESTRACTACAJA: TStringField;
    CDSTransfUNIDADES: TFloatField;
    CDSTransfIMPORTE: TFloatField;
    QCta: TFDQuery;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSTransfBeforeInsert(DataSet: TDataSet);
    procedure CDSTransfAfterPost(DataSet: TDataSet);
    procedure dbgTransferenciasColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlTxBancarias: TFormControlTxBancarias;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormControlTxBancarias.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSTransf.Close;
  CDSTransf.Params.ParamByName('desde').AsDateTime:=Desde.Date;
  CDSTransf.Params.ParamByName('Hasta').AsDateTime:=Hasta.Date;
  CDSTransf.Open;
end;

procedure TFormControlTxBancarias.CDSTransfAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSTransf.ApplyUpdates(0);
end;

procedure TFormControlTxBancarias.CDSTransfBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CDSTransf.Cancel;
end;

procedure TFormControlTxBancarias.dbgTransferenciasColEnter(Sender: TObject);
begin
  inherited;
  if dbgTransferencias.SelectedIndex=0 then
    dbgTransferencias.SelectedIndex:=1 else
  if dbgTransferencias.SelectedIndex=3 then
    dbgTransferencias.SelectedIndex:=2 else
  if dbgTransferencias.SelectedIndex=4 then
    dbgTransferencias.SelectedIndex:=2;

end;

procedure TFormControlTxBancarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlTxBancarias.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;


end;

procedure TFormControlTxBancarias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlTxBancarias:=nil;
end;

procedure TFormControlTxBancarias.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlTxBancarias<>nil then
    if FormControlTxBancarias.Width<>673 then
      FormControlTxBancarias.Width:=673;
end;

procedure TFormControlTxBancarias.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
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
  Buscar.Execute;
end;

end.
