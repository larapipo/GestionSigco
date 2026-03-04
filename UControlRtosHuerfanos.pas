unit UControlRtosHuerfanos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, Vcl.Samples.Spin,
  Vcl.Mask, JvExMask, JvToolEdit,System.DateUtils;

type
  TFormControlRtosHuerfanos = class(TFormABMBase)
    DSPRtos: TDataSetProvider;
    CDSRtos: TClientDataSet;
    DSRtos: TDataSource;
    CDSRtosID_RTO: TIntegerField;
    CDSRtosTIPOCPBTE: TStringField;
    CDSRtosCLASECPBTE: TStringField;
    CDSRtosNROCPBTE: TStringField;
    CDSRtosCODIGO: TStringField;
    CDSRtosNOMBRE: TStringField;
    CDSRtosRAZONSOCIAL: TStringField;
    CDSRtosNROFACT: TStringField;
    CDSRtosIDFACTURA: TIntegerField;
    dbgRto: TJvDBGrid;
    QRtos: TFDQuery;
    CDSRtosFECHAVTA: TSQLTimeStampField;
    CDSRtosFECHAVTO: TSQLTimeStampField;
    Label1: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    Label2: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label3: TLabel;
    UpDown1: TUpDown;
    CDSRtosPRESUPUESTO_ID: TIntegerField;
    CDSRtosPRESUPUESTO_NROCPBTE: TStringField;
    procedure dbgRtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgRtoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgRtoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlRtosHuerfanos: TFormControlRtosHuerfanos;

implementation

uses UDMain_FD, URemitos;
{$R *.dfm}

procedure TFormControlRtosHuerfanos.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  CDSRtos.Close;
  CDsRtos.IndexDefs.Clear;
  CDSRtos.IndexFieldNames:='';
  CDSRtos.Params.ParamByName('desde').AsDate:=desde.Date;
  CDSRtos.Params.ParamByName('hasta').AsDate:=hasta.Date;
  CDSRtos.Open;
  Screen.Cursor:=crDefault;

end;

procedure TFormControlRtosHuerfanos.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  CDSRtos.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormControlRtosHuerfanos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSRtos.Close;
  Action:=caFree;

end;

procedure TFormControlRtosHuerfanos.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Desde.Date := EncodeDate(y,m,1);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(desde.Date));

  //Buscar.Execute;
end;

procedure TFormControlRtosHuerfanos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlRtosHuerfanos:=nil;
end;

procedure TFormControlRtosHuerfanos.FormResize(Sender: TObject);
begin
  inherited;
 // if FormControlRtosHuerfanos<>nil then
 //   if FormControlRtosHuerfanos.Width<>777 then
 //     FormControlRtosHuerfanos.Width:=777;
end;

procedure TFormControlRtosHuerfanos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(desde.Date));
  Buscar.Execute;
end;

procedure TFormControlRtosHuerfanos.dbgRtoDblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormRemitos)) then
    FormRemitos := TFormRemitos.Create(Self);
  FormRemitos.DatoNew   := CDSRtosID_RTO.AsString;
  FormRemitos.TipoCpbte := CDSRtosTIPOCPBTE.AsString;
  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;
end;

procedure TFormControlRtosHuerfanos.dbgRtoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) or (key=VK_BACK) then
    begin
      CDSRtos.Edit;
      CDSRtosIDFACTURA.Clear;
      CDSRtosNROFACT.Clear;
    end;
end;

procedure TFormControlRtosHuerfanos.dbgRtoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgRto.DataSource.DataSet as TClientDataSet do
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

end.
