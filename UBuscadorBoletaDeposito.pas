unit UBuscadorBoletaDeposito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask,   StdCtrls, Buttons,  Grids,
  DBClient, Provider, Db, ExtCtrls, ActnList,
  ImgList,Librerias, ComCtrls, JvExControls, JvGradient,IniFiles,
  DBGrids, JvExDBGrids, JvDBGrid, JvExStdCtrls, JvEdit, JvDBSearchEdit, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormBuscadorBoletaDepositos = class(TForm)
    Panel1: TPanel;
    DSDepositos: TDataSource;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edMuestraCta: TEdit;
    Label4: TLabel;
    ActionList1: TActionList;
    BuscadorCta: TAction;
    Buscador: TAction;
    Aceptar: TAction;
    Cancelar: TAction;
    ImageList1: TImageList;
    CDSDepositosNUMERO: TStringField;
    CDSDepositosID_CTA_CAJA: TIntegerField;
    CDSDepositosID: TIntegerField;
    UpDown1: TUpDown;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    btSalir: TBitBtn;
    CDSDepositosEFEC_CHEQ: TStringField;
    CDSDepositosMODO: TStringField;
    ceCta: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSDepositosFECHA: TSQLTimeStampField;
    edBuscador: TEdit;
    QDepositos: TFDQuery;
    QCtaBco: TFDQuery;
    QBuscador: TFDQuery;
    CDSDepositosIMPORTE: TFloatField;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    ComBuscadorCta: TComBuscador;
    QBuscadorID_CUENTA: TIntegerField;
    QBuscadorID_TIPO_CTA: TIntegerField;
    QBuscadorNOMBRE: TStringField;
    QBuscadorNRO_CUENTA: TStringField;
    QBuscadorID_BANCO: TIntegerField;
    QBuscadorCUIT: TStringField;
    QBuscadorRAZONSOCIAL: TStringField;
    dbgDepositos: TDBGrid;
    procedure BuscadorCtaExecute(Sender: TObject);
    procedure BuscadorExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure dbgDepositos_oldTitleButtonClick(Sender: TObject;
      AFieldName: String);
  
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSDepositosCalcFields(DataSet: TDataSet);
    procedure dbgDepositosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure edBuscadorChange(Sender: TObject);
  private
    { Private declarations }
    Nro_id:Integer;
  public
    { Public declarations }
    BuscadorIni    :TIniFile;
    function AsignarCtaBco(dato:Integer):Boolean;
  published
    PROPERTY Id_Rec: Integer read Nro_Id write Nro_Id;
  end;

var
  FormBuscadorBoletaDepositos: TFormBuscadorBoletaDepositos;

implementation

uses UDMain_FD;

{$R *.DFM}

function TFormBuscadorBoletaDepositos.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').Value:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      ceCta.Text        :=IntToStr(Dato);
      edMuestraCta.Text := QCtaBcoNOMBRE.Value;
    end
  else
    begin
      Result:=False;
      ceCta.Text        :='';
      edMuestraCta.Text :='';
    end
end;


procedure TFormBuscadorBoletaDepositos.BuscadorCtaExecute(Sender: TObject);
begin
  QBuscador.Close;
  QBuscador.Open;
  comBuscadorCta.Execute;
  if ComBuscadorCta.rok then
    if AsignarCtaBco(comBuscadorCta.id) then
  QBuscador.Close;
end;

procedure TFormBuscadorBoletaDepositos.BuscadorExecute(
  Sender: TObject);
begin
  if (Desde.Text<>'') and (Hasta.Text<>'') and (ceCta.Text<>'') Then
    begin
//      Fe1 := Copy(desde.Text, 4, 2) + '/' + Copy(desde.Text, 1, 2) + '/' + Copy(desde.Text, 7, 4);
//      Fe2 := Copy(hasta.Text, 4, 2) + '/' + Copy(hasta.Text, 1, 2) + '/' + Copy(hasta.Text, 7, 4);
      CDSDepositos.IndexFieldNames:='';
      CDSDepositos.IndexName:='';
      CDSDepositos.IndexDefs.Clear;
      CDSDepositos.Close;
      CDSDepositos.Params.ParamByName('Desde').Value:=Desde.Date;
      CDSDepositos.Params.ParamByName('Hasta').Value:=Hasta.Date;
      CDSDepositos.Params.ParamByName('id_cta_caja').Value:=StrToInt(ceCta.Text);
      CDSDepositos.Open;
    end;
end;

procedure TFormBuscadorBoletaDepositos.FormCreate(Sender: TObject);
VAR M,D,A:Word;
begin
  AutoSize:=True;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M));
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'buscadorDepBco.ini');
  //*************************************************************
  desde.Date          := StrToDate(BuscadorIni.ReadString('Fecha', 'Desde', DateToStr(Desde.Date)));
  Hasta.Date          := StrToDate(BuscadorIni.ReadString('Fecha', 'Hasta', DateToStr(Hasta.Date)));
  ceCta.Text          := BuscadorIni.ReadString('Banco', 'Cuenta', ceCta.Text);
  edMuestraCta.Text   := BuscadorIni.ReadString('Banco', 'NombreCuenta', edMuestraCta.Text);
  Buscador.Execute;
  BuscadorIni.Free;

end;

procedure TFormBuscadorBoletaDepositos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'buscadorDepBco.ini');
  //*************************************************************
  BuscadorIni.WriteString('Fecha', 'Desde', DateToStr(Desde.Date));
  BuscadorIni.WriteString('Fecha', 'Hasta', DateToStr(Hasta.Date));
  BuscadorIni.WriteString('Banco', 'Cuenta', ceCta.Text);
  BuscadorIni.WriteString('Banco', 'NombreCuenta', edMuestraCta.Text);
  BuscadorIni.Free;

  Action:=caFree;
end;

procedure TFormBuscadorBoletaDepositos.FormDestroy(Sender: TObject);
begin
  FormBuscadorBoletaDepositos:=nil;
end;

procedure TFormBuscadorBoletaDepositos.AceptarExecute(Sender: TObject);
begin
  Id_Rec:=CDSDepositosID.Value;
  Close;
end;

procedure TFormBuscadorBoletaDepositos.CancelarExecute(Sender: TObject);
begin
  CDSDepositos.Close;
  Close;
end;

procedure TFormBuscadorBoletaDepositos.CDSDepositosCalcFields(
  DataSet: TDataSet);
begin
  if CDSDepositosEFEC_CHEQ.Value='E' then

  CDSDepositosMODO.Value:='en Efectivo'
  else
  if CDSDepositosEFEC_CHEQ.Value='C' then

  CDSDepositosMODO.Value:='en Cheques';

end;

procedure TFormBuscadorBoletaDepositos.FormShow(Sender: TObject);
begin
  ceCta.SetFocus;
end;

procedure TFormBuscadorBoletaDepositos.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormBuscadorBoletaDepositos.dbgDepositos_oldTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  if AFieldName='Importe' Then
    CDSDepositos.IndexName:='Importe'
  else
    CDSDepositos.IndexFieldNames:=AFieldName;
end;

procedure TFormBuscadorBoletaDepositos.edBuscadorChange(Sender: TObject);
var Aux:String;
begin
  if Trim(EdBuscador.Text)<>'' then
    begin
      Aux:=Copy('00000000000000000',1,13-(Length(Trim(EdBuscador.Text))))+Trim(EdBuscador.Text);
      CDSDepositos.Locate('NUMERO',Trim(Aux),[loPartialKey]);
    end;
end;

procedure TFormBuscadorBoletaDepositos.dbgDepositosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var Campo:String;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    if campo='MODO' then exit;
    
    with dbgDepositos.DataSource.DataSet as TClientDataSet do
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


procedure TFormBuscadorBoletaDepositos.UpDown1Click(Sender: TObject;
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
  Buscador.Execute;
end;

end.