unit UTablaChequesTercero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ExtCtrls, DBCtrls, StdCtrls, Buttons, DBXCommon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit;

type
  TFormTablaCheques3 = class(TForm)
    dbgMovimientos: TJvDBGrid;
    DSCheque3: TDataSource;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QCheque3: TFDQuery;
    QCheque3ID_CHEQUE_TER: TIntegerField;
    QCheque3ID_CAJA: TIntegerField;
    QCheque3ID_MOV_CAJA: TIntegerField;
    QCheque3ID_FPAGO: TIntegerField;
    QCheque3ID_BANCO: TIntegerField;
    QCheque3NUMERO: TIntegerField;
    QCheque3FECHA_EMISION: TSQLTimeStampField;
    QCheque3FECHA_COBRO: TSQLTimeStampField;
    QCheque3FECHA_ENTRADA: TSQLTimeStampField;
    QCheque3FECHA_SALIDA: TSQLTimeStampField;
    QCheque3ORIGEN: TStringField;
    QCheque3DESTINO: TStringField;
    QCheque3UNIDADES: TFloatField;
    QCheque3IMPORTE: TFloatField;
    QCheque3DISPONIBLE: TStringField;
    QCheque3FIRMANTE: TStringField;
    QCheque3COTIZACION: TFloatField;
    QCheque3ID_MOV_CAJA_EGRESOS: TIntegerField;
    QCheque3ID_CUENTA_CAJA: TIntegerField;
    QCheque3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    QCheque3MONEDA: TIntegerField;
    QCheque3SALDO_UNIDADES: TFloatField;
    QCheque3SALDO_IMPORTE: TFloatField;
    QCheque3CUIT: TStringField;
    QCheque3SUCURSAL_BCO: TStringField;
    QCheque3NRO_CTA: TStringField;
    edNroCheque: TJvDBFindEdit;
    edOrigen: TJvDBFindEdit;
    edDestino: TJvDBFindEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgMovimientosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTablaCheques3: TFormTablaCheques3;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormTablaCheques3.BitBtn1Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QCheque3.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;

    ShowMessage('Cambios Aplicados.....');
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Camnios Ignorados.....');
  end;
  QCheque3.Close;
  QCheque3.Open;
end;

procedure TFormTablaCheques3.BitBtn2Click(Sender: TObject);
var i:integer;
begin
  QCheque3.Close;
  QCheque3.Open;
  for i  := 0 to QCheque3.FieldCount - 1 do
    begin
      if (QCheque3.Fields[i].DataType=ftFloat) or
         (QCheque3.Fields[i].DataType=ftBCD) or
         (QCheque3.Fields[i].DataType=ftFMTBcd)
       then
         begin
           TNumericField(QCheque3.Fields[i]).DisplayFormat:=',0.00';
           TNumericField(QCheque3.Fields[i]).EditFormat   :=',0.00';
         end;

    end;

end;

procedure TFormTablaCheques3.dbgMovimientosTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var Campo:String;
begin
  inherited;
    Campo := Field.FieldName;
    if QCheque3.IndexFieldNames = Campo then
      QCheque3.IndexFieldNames := Campo + ':DN'
    Else
      QCheque3.IndexFieldNames := Campo;
end;

procedure TFormTablaCheques3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormTablaCheques3.FormCreate(Sender: TObject);
begin

//  CDSCheque3.Close;
//  CDSCheque3.Open;
end;

procedure TFormTablaCheques3.FormDestroy(Sender: TObject);
begin
  FormTablaCheques3:=nil;
end;

end.
