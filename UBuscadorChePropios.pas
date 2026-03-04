unit UBuscadorChePropios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids,StdCtrls, Db,   ExtCtrls, Buttons,
  ActnList, ComCtrls, Mask, Librerias, DBClient, Provider, FMTBcd, SqlExpr,
  JvExMask, JvToolEdit, JvExControls, JvDBLookup, JvExDBGrids, JvDBGrid,
  System.Actions,IniFiles, JvMaskEdit, JvDBFindEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorChePropios = class(TForm)
    Panel1: TPanel;
    DSBancos: TDataSource;
    Label1: TLabel;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    DSCheques: TDataSource;
    ActionList1: TActionList;
    Buscar: TAction;
    Aceptar: TAction;
    Cancelar: TAction;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    btBuscar: TBitBtn;
    DSPCheques: TDataSetProvider;
    CDSCheques: TClientDataSet;
    CDSChequesID_CHEQUE_PRO: TIntegerField;
    CDSChequesID_CHEQUERA: TIntegerField;
    CDSChequesMUESTRACHEQUERA: TStringField;
    CDSChequesID_CUENTA_BANCO: TIntegerField;
    CDSChequesMUESTRACUENTACAJABCO: TStringField;
    CDSChequesID_BANCO: TIntegerField;
    CDSChequesORDEN_DE: TStringField;
    CDSChequesNUMERO: TIntegerField;
    cbBanco: TJvDBLookupCombo;
    hasta: TJvDateEdit;
    desde: TJvDateEdit;
    CDSChequesFECHA_EMISION: TSQLTimeStampField;
    CDSChequesFECHA_COBRO: TSQLTimeStampField;
    dbgCheques: TJvDBGrid;
    edFNro: TJvDBFindEdit;
    Label4: TLabel;
    QCheques: TFDQuery;
    QChequesFECHA_EMISION: TSQLTimeStampField;
    QChequesFECHA_COBRO: TSQLTimeStampField;
    QChequesID_CHEQUE_PRO: TIntegerField;
    QChequesID_CHEQUERA: TIntegerField;
    QChequesMUESTRACHEQUERA: TStringField;
    QChequesID_CUENTA_BANCO: TIntegerField;
    QChequesMUESTRACUENTACAJABCO: TStringField;
    QChequesID_BANCO: TIntegerField;
    QChequesORDEN_DE: TStringField;
    QChequesNUMERO: TIntegerField;
    QChequesUNIDADES: TFloatField;
    QChequesIMPORTE: TFloatField;
    CDSChequesUNIDADES: TFloatField;
    CDSChequesIMPORTE: TFloatField;
    QBancos: TFDQuery;
    QBancosID_CUENTA: TIntegerField;
    QBancosID_TIPO_CTA: TIntegerField;
    QBancosNOMBRE: TStringField;
    QBancosNRO_CUENTA: TStringField;
    QBancosID_BANCO: TIntegerField;
    QBancosCUIT: TStringField;
    QBancosRAZONSOCIAL: TStringField;
    QChequesDEBITADO: TStringField;
    QChequesFECHA_DEBITO: TSQLTimeStampField;
    CDSChequesDEBITADO: TStringField;
    CDSChequesFECHA_DEBITO: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbgChequesTitleClick(Column: TColumn);
    procedure dbgChequesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormShow(Sender: TObject);
  private
    FIdCheque:Integer;
    FEstado  :String;
    FDebitado:String;

    { Private declarations }
  public
    { Public declarations }
   BuscadorIni   :TIniFile;
  published
    property IdCheque:Integer Read FIdCheque write FIdCheque;
    property Estado:String  Read FEstado Write FEstado;
    property Debitado:String  Read FDebitado Write FDebitado;

  end;

var
  FormBuscadorChePropios: TFormBuscadorChePropios;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormBuscadorChePropios.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  AutoSize:=True;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

 if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorChePropio.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorChePropio.ini');
 //*************************************************************
  cbBanco.KeyValue:= BuscadorIni.ReadInteger('banco', 'Dato',-1);
  desde.Date      := BuscadorIni.ReadDate('banco', 'desde', desde.Date);
  hasta.Date      := BuscadorIni.ReadDate('banco', 'hasta', hasta.Date);
  BuscadorIni.Free;

  QBancos.Open;

end;

procedure TFormBuscadorChePropios.BuscarExecute(Sender: TObject);
begin
  if cbBanco.Value<>'' Then
    begin
       CDSCheques.Close;
       CDSCheques.IndexName :='';
       CDSCheques.IndexDefs.Clear;
       CDSCheques.IndexFieldNames:='';
       CDSCheques.Params.ParamByName('id').Value    :=cbBanco.KeyValue;
       CDSCheques.Params.ParamByName('desde').Value :=Desde.Date;
       CDSCheques.Params.ParamByName('hasta').Value :=hasta.Date;
       CDSCheques.Params.ParamByName('Estado').Value:= Estado;
       CDSCheques.Open;
    end;
end;

procedure TFormBuscadorChePropios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorChePropio.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorChePropio.ini');
 //*************************************************************
  BuscadorIni.WriteInteger('banco', 'Dato', cbBanco.KeyValue);
  BuscadorIni.WriteDate('banco', 'desde', desde.Date);
  BuscadorIni.WriteDate('banco', 'hasta', hasta.Date);
  BuscadorIni.Free;


  Action:=caFree;
end;

procedure TFormBuscadorChePropios.FormDestroy(Sender: TObject);
begin
  FormBuscadorChePropios:=nil;
end;

procedure TFormBuscadorChePropios.AceptarExecute(Sender: TObject);
begin
  FIdCheque:=CDSChequesID_CHEQUE_PRO.Value;
  FDebitado:=CDSChequesDEBITADO.AsString;
  Close;
end;

procedure TFormBuscadorChePropios.CancelarExecute(Sender: TObject);
begin
  FIdCheque:=-1;
  Close;
end;

procedure TFormBuscadorChePropios.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  if (key=vk_UP) and ((Shift=[ssShift]) OR (Shift=[ssCtrl])) Then
//    edDato.SetFocus;
//  if (key=vk_Down) AND edDato.Focused Then
//    dbgResultado.SetFocus;
  if (Key=vk_return) and (dbgCheques.Focused) Then Aceptar.Execute;
  if (Key=vk_escape) Then Cancelar.Execute;

end;

procedure TFormBuscadorChePropios.FormShow(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormBuscadorChePropios.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
end;

procedure TFormBuscadorChePropios.dbgChequesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgCheques.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorChePropios.dbgChequesTitleClick(Column: TColumn);
var I:Integer;
begin
  CDSCheques.IndexFieldNames:=Column.FieldName;
  for i:=0 to  dbgCheques.Columns.Count-1 DO
    dbgCheques.Columns[I].Color:=clWindow;
  dbgCheques.Columns[Column.Index].Color:=clInfoBk;

end;

end.
