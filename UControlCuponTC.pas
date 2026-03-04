unit UControlCuponTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, imgList,   ActnList, ComCtrls, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask, Grids,
  DBGrids, JvExDBGrids, JvDBGrid,Librerias, JvComponentBase, JvFormPlacement,
  DBXCommon, Data.FMTBcd, JvExMask, JvToolEdit, JvLabel, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, System.Actions, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormControlCuponTC = class(TFormABMBase)
    DSPCupones: TDataSetProvider;
    CDSCupones: TClientDataSet;
    DSCupones: TDataSource;
    JvGradient1: TJvGradient;
    ud1: TUpDown;
    dbgCupones: TJvDBGrid;
    CDSCuponesMUESTRATARJETA: TStringField;
    QCupones: TFDQuery;
    QCuponesID_MOV_TC: TIntegerField;
    QCuponesID_CAJA: TIntegerField;
    QCuponesID_MOV_CAJA: TIntegerField;
    QCuponesID_FPAGO: TIntegerField;
    QCuponesID_TC: TIntegerField;
    QCuponesFECHA: TSQLTimeStampField;
    QCuponesTITULAR: TStringField;
    QCuponesCAN_CUOTAS: TIntegerField;
    QCuponesN_DOCU: TStringField;
    QCuponesUNIDADES: TFloatField;
    QCuponesCOTIZACION: TFloatField;
    QCuponesIMPORTE: TFloatField;
    QCuponesOTROS: TStringField;
    QCuponesMONEDA: TIntegerField;
    QCuponesID_CUENTA_CAJA: TIntegerField;
    QCuponesUNIDADES_NETO: TFloatField;
    QCuponesIMPORTE_NETO: TFloatField;
    QCuponesCOEFICIENTE: TFloatField;
    QCuponesVALORCUOTA: TFloatField;
    QCuponesIMPORTE_RECARGO: TFloatField;
    QCuponesID_CUENTA_BANCO: TIntegerField;
    QCuponesNRO_CUPON: TIntegerField;
    QCuponesFECHA_ACREDITACION: TSQLTimeStampField;
    QCuponesACREDITADA: TStringField;
    QCuponesLOTE: TStringField;
    QCuponesTERMINAL: TStringField;
    CDSCuponesID_MOV_TC: TIntegerField;
    CDSCuponesID_CAJA: TIntegerField;
    CDSCuponesID_MOV_CAJA: TIntegerField;
    CDSCuponesID_FPAGO: TIntegerField;
    CDSCuponesID_TC: TIntegerField;
    CDSCuponesFECHA: TSQLTimeStampField;
    CDSCuponesTITULAR: TStringField;
    CDSCuponesCAN_CUOTAS: TIntegerField;
    CDSCuponesN_DOCU: TStringField;
    CDSCuponesUNIDADES: TFloatField;
    CDSCuponesCOTIZACION: TFloatField;
    CDSCuponesIMPORTE: TFloatField;
    CDSCuponesOTROS: TStringField;
    CDSCuponesMONEDA: TIntegerField;
    CDSCuponesID_CUENTA_CAJA: TIntegerField;
    CDSCuponesUNIDADES_NETO: TFloatField;
    CDSCuponesIMPORTE_NETO: TFloatField;
    CDSCuponesCOEFICIENTE: TFloatField;
    CDSCuponesVALORCUOTA: TFloatField;
    CDSCuponesIMPORTE_RECARGO: TFloatField;
    CDSCuponesID_CUENTA_BANCO: TIntegerField;
    CDSCuponesNRO_CUPON: TIntegerField;
    CDSCuponesFECHA_ACREDITACION: TSQLTimeStampField;
    CDSCuponesACREDITADA: TStringField;
    CDSCuponesLOTE: TStringField;
    CDSCuponesTERMINAL: TStringField;
    QTC: TFDQuery;
    CDSTc: TClientDataSet;
    DSPTc: TDataSetProvider;
    CDSTcID_TC: TIntegerField;
    CDSTcDESCRIPCION: TStringField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgCuponesColEnter(Sender: TObject);
    procedure dbgCuponesEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSCuponesLOTESetText(Sender: TField; const Text: string);
    procedure CDSCuponesTERMINALSetText(Sender: TField; const Text: string);
    procedure dbgCuponesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlCuponTC: TFormControlCuponTC;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormControlCuponTC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCupones.Close;
  CDSCupones.Params.ParamByName('desde').Value:= Desde.date;
  CDSCupones.Params.ParamByName('hasta').Value:= Hasta.date;
  CDSCupones.Open;
end;

procedure TFormControlCuponTC.CDSCuponesLOTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('0000000000',1,Sender.Size-Length(Text))+Text;
end;

procedure TFormControlCuponTC.CDSCuponesTERMINALSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('0000000000',1,Sender.Size-Length(Text))+Text;

end;

procedure TFormControlCuponTC.ConfirmaExecute(Sender: TObject);
begin
// inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSCupones.State<>dsBrowse then
      CDSCupones.Post;
    CDSCupones.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Gravo la Operacion');
  end;
  Buscar.Execute;
end;

procedure TFormControlCuponTC.dbgCuponesColEnter(Sender: TObject);
begin
  inherited;
  if dbgCupones.SelectedIndex<1 then
    dbgCupones.SelectedIndex:=1
  else
    if DMMain_FD.UsuarioActivo<>'master' then
      if dbgCupones.SelectedIndex>4 then
        dbgCupones.SelectedIndex:=4;

end;

procedure TFormControlCuponTC.dbgCuponesEnter(Sender: TObject);
begin
  inherited;
  dbgCupones.SelectedIndex:=1
end;

procedure TFormControlCuponTC.dbgCuponesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgCupones.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

procedure TFormControlCuponTC.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormControlCuponTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlCuponTC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormControlCuponTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlCuponTC:=nil;
end;

procedure TFormControlCuponTC.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  Buscar.Execute;
end;

procedure TFormControlCuponTC.ud1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.
