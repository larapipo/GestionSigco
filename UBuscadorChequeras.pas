unit UBuscadorChequeras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db,   Grids, DBGrids, StdCtrls, ActnList,
  Buttons,IniFiles,Variants, FMTBcd, Provider, DBClient, SqlExpr, JvExControls,
  JvDBLookup, JvExDBGrids, JvDBGrid, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client ;

type
  TFormBuscadorChequeras = class(TForm)
    pnPrincipal: TPanel;
    DSCtas: TDataSource;
    DSChequera: TDataSource;
    chbTerminada: TCheckBox;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Buscar: TAction;
    Label1: TLabel;
    cbCtas: TJvDBLookupCombo;
    CDSChequeras: TClientDataSet;
    DSPChequeras: TDataSetProvider;
    CDSChequerasID_CHEQUERA: TIntegerField;
    CDSChequerasID_CUENTA: TIntegerField;
    CDSChequerasNRO_CUENTA: TStringField;
    CDSChequerasNUMERO_INCIAL: TIntegerField;
    CDSChequerasNUMERO_FINAL: TIntegerField;
    CDSChequerasULTIMO_NUMERO: TIntegerField;
    CDSChequerasDIFERIDO: TSmallintField;
    CDSChequerasNOMBRE: TStringField;
    CDSChequerasID_BANCO: TIntegerField;
    CDSChequerasMONEDA: TIntegerField;
    CDSChequerasCANT_CHE_EMITIDOS: TIntegerField;
    CDSChequerasCHEQUERA_TERMINADA: TStringField;
    dbgChequeras: TJvDBGrid;
    QCtas: TFDQuery;
    QCtasID_CUENTA: TIntegerField;
    QCtasID_TIPO_CTA: TIntegerField;
    QCtasNOMBRE: TStringField;
    QCtasNRO_CUENTA: TStringField;
    QCtasID_BANCO: TIntegerField;
    QCtasCUIT: TStringField;
    QCtasRAZONSOCIAL: TStringField;
    QCheq: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgChequerasKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbgChequerasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    BuscadorIni   :TIniFile;
    FIdChequera   :Integer;
    FChequera     :string;
  published
    property IdChequera:Integer read FIdChequera write fIdChequera;
    property Chequera:String read FChequera write fChequera;

  end;

var
  FormBuscadorChequeras: TFormBuscadorChequeras;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormBuscadorChequeras.FormCreate(Sender: TObject);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorcheuqera.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorchequera.ini');
  //*************************************************************
  cbCtas.KeyValue      := BuscadorIni.ReadInteger('cta', 'cta', -1);
  chbTerminada.Checked := (BuscadorIni.ReadString('terminada', 'treminada','N'))='S';
  BuscadorIni.Free;
  AutoSize:=True;
  QCtas.Open;
  
end;

procedure TFormBuscadorChequeras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorChequera.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorChequera.ini');
 //*************************************************************
  if VarIsNUll(cbCtas.KeyValue) Then
    BuscadorIni.WriteInteger('cta', 'cta', -1)
  else
    BuscadorIni.WriteInteger('cta', 'cta', cbCtas.KeyValue);
  if chbTerminada.Checked Then
    BuscadorIni.WriteString('termianda', 'terminada','S')
  else
    BuscadorIni.WriteString('termianda', 'terminada','N');

  QCtas.Close;
  CDSChequeras.Close;
  Action:=caFree;

end;

procedure TFormBuscadorChequeras.FormDestroy(Sender: TObject);
begin
  FormBuscadorChequeras:=nil;
end;

procedure TFormBuscadorChequeras.AceptarExecute(Sender: TObject);
begin
  FIdChequera := CDSChequerasID_CHEQUERA.Value;
  FChequera   := CDSChequerasNOMBRE.AsString;
  Close;
end;

procedure TFormBuscadorChequeras.CancelarExecute(Sender: TObject);
begin
  FIdChequera:=-1;
  FChequera  :='';
  Close;
end;

procedure TFormBuscadorChequeras.BuscarExecute(Sender: TObject);
begin
  CDSChequeras.IndexName:='';
  CDSChequeras.IndexDefs.Clear;
  CDSChequeras.Close;
  if chbTerminada.Checked Then
    CDSChequeras.Params.ParamByName('Terminada').Value:='S'
  else
    CDSChequeras.Params.ParamByName('Terminada').Value:='N';

  if VarIsNull(cbCtas.KeyValue) Then
    CDSChequeras.Params.ParamByName('id_cuenta').Value:=-1
  else
    CDSChequeras.Params.ParamByName('id_cuenta').Value:=cbCtas.KeyValue;
  CDSChequeras.Open;
  dbgChequeras.SetFocus;
end;

procedure TFormBuscadorChequeras.dbgChequerasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 Then Aceptar.Execute
  else
  if key=#27 Then Cancelar.Execute;

end;

procedure TFormBuscadorChequeras.dbgChequerasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
Var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgChequeras.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorChequeras.FormShow(Sender: TObject);
begin
  Buscar.Execute;
  //dbgChequeras.SetFocus;
end;

end.

