unit UMovTemporalStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, ExtCtrls, ComCtrls, Mask, JvExMask, JvToolEdit, DBXCommon,
  JvExControls, JvGradient, JvDBLookup, Buttons,DateUtils, JvBaseEdits,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMovTemporalesStock = class(TForm)
    pnBase: TPanel;
    pnCabeceraControlMov: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    rgPasoFecha_2: TRadioGroup;
    dbgMov: TJvDBGrid;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    DSMov: TDataSource;
    Label3: TLabel;
    RxDBDeposito: TJvDBLookupCombo;
    DSListaDepositos: TDataSource;
    CDSListaDepositos: TClientDataSet;
    CDSListaDepositosID: TIntegerField;
    CDSListaDepositosNOMBRE: TStringField;
    DSPListaDepositos: TDataSetProvider;
    btVer: TBitBtn;
    BitBtn2: TBitBtn;
    lbCodigo: TLabel;
    lbDetalle: TLabel;
    CDSMovCODIGO_ARTICULO: TStringField;
    CDSMovDEPOSITO: TIntegerField;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovTIPOOPERACION: TStringField;
    CDSMovTIPOCPBTE: TStringField;
    CDSMovCLASECPBTE: TStringField;
    CDSMovNROCPBTE: TStringField;
    CDSMovID_CPBTE: TIntegerField;
    CDSMovDETALLE: TStringField;
    CDSMovID_DETALLE_CPBTE: TIntegerField;
    edSalen: TJvCalcEdit;
    edEntra: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    Label4: TLabel;
    Label5: TLabel;
    CDSMovSALDO: TFloatField;
    CDSMovID_MOV: TIntegerField;
    QMov: TFDQuery;
    CDSMovENTRA: TFloatField;
    CDSMovSALE: TFloatField;
    spRearmarMov: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure btVerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgMovTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FCodigo :String;
    FDetalle:String;
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
    property Detalle:String read FDetalle write FDetalle;
  end;

var
  FormMovTemporalesStock: TFormMovTemporalesStock;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormMovTemporalesStock.btVerClick(Sender: TObject);
var Aux:Real;
begin
  edSalen.Value:=0;
  edEntra.Value:=0;
  edSaldo.Value:=0;
  CDSMov.Close;
  CDSMov.IndexDefs.Clear;
  CDSMov.IndexName:='';
  CDSMov.Params.ParamByName('deposito').Value:=RxDBDeposito.KeyValue;
  CDSMov.Params.ParamByName('desde').Value :=Desde.date;
  CDSMov.Params.ParamByName('hasta').Value :=hasta.date;
  CDSMov.Open;
  CDSMov.First;
  CDSMov.DisableControls;
  Aux:=0;
  while Not(CDSMov.Eof) do
    begin
      edSalen.Value:=edSalen.Value+CDSMovSALE.AsFloat;
      edEntra.Value:=edEntra.Value+CDSMovENTRA.AsFloat;
      CDSMov.Edit;
      CDSMovSALDO.AsFloat:=Aux+CDSMovENTRA.AsFloat-CDSMovSALE.AsFloat;
      Aux:=CDSMovSALDO.AsFloat;
      CDSMov.Next;
    end;
  CDSMov.First;
  CDSMov.EnableControls;
  edSaldo.Value:=edEntra.Value-edSalen.Value;
end;

procedure TFormMovTemporalesStock.BitBtn2Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spRearmarMov.CLose;
    spRearmarMov.ParamByName('I_Codigo').AsString:= Codigo;
    spRearmarMov.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spRearmarMov.CLose;
    ShowMessage('Finalizado el Proceso de Movimientos.....');
    btVer.OnClick(Sender);
  except
    DMMain_FD.fdcGestion.Rollback;
    spRearmarMov.CLose;
    ShowMessage('No se pudo realizar el Proceso .....');
  end;
end;

procedure TFormMovTemporalesStock.dbgMovTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgMov.DataSource.DataSet as TClientDataSet do
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

procedure TFormMovTemporalesStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMovTemporalesStock.FormCreate(Sender: TObject);
begin
  CDSListaDepositos.Close;
  CDSListaDepositos.Open;
  AutoSize:=True;
end;

procedure TFormMovTemporalesStock.FormDestroy(Sender: TObject);
begin
  FormMovTemporalesStock:=nil;
end;

procedure TFormMovTemporalesStock.FormResize(Sender: TObject);
begin
  if FormMovTemporalesStock<>nil then
    if FormMovTemporalesStock.Width<>873 then
      FormMovTemporalesStock.Width:=873;

end;

procedure TFormMovTemporalesStock.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  lbCodigo.Caption :='Codigo: '+FCodigo;
  lbDetalle.Caption:= FDetalle;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date));
  lbCodigo.Caption :='Codigo:'+FCodigo;
  lbDetalle.Caption:=FDetalle;
end;

procedure TFormMovTemporalesStock.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  if rgPasoFecha_2.ItemIndex=0 then
    begin
      if Button=btnext Then
        begin
          Desde.Date := IncDay(Desde.Date,(1));
          Hasta.Date := Desde.Date;
        end
      else
        if Button=btPrev Then
          begin
            Desde.Date := IncDay(Desde.Date,(-1));
            Hasta.Date := Desde.Date;
          end;
     end
   else
     if rgPasoFecha_2.ItemIndex=1 then
       begin
         if Button=btnext Then
           begin
             Desde.Date := IncMonth(Desde.Date,1);
             Hasta.Date := IncMonth(Hasta.Date,1);
           end
         else
           if Button=btPrev Then
             begin
               Desde.Date := IncMonth(Desde.Date,-1);
               Hasta.Date := IncMonth(Hasta.Date,-1);
             end;
     end;
    btVerClick(sender);


end;

end.
