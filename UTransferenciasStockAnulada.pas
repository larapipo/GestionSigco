unit UTransferenciasStockAnulada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, Grids, DBGrids, SqlExpr,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, JvExMask, JvToolEdit,Librerias, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormTransfStockAnuladas = class(TFormABMBase)
    DBGrid1: TDBGrid;
    DSPTxStock: TDataSetProvider;
    CDSTxStock: TClientDataSet;
    CDSTxStockID_TRCAB: TIntegerField;
    CDSTxStockFECHA: TSQLTimeStampField;
    CDSTxStockDEPOSITO_ORIGEN: TIntegerField;
    CDSTxStockDEPOSITO_DESTINO: TIntegerField;
    CDSTxStockNOMBRE_DEPOSITO_ORIGEN: TStringField;
    CDSTxStockNOMBRE_DEPOSITO_DESTINO: TStringField;
    CDSTxStockNROCPBTE: TStringField;
    DSTxStock: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    BuscarTx: TAction;
    QTxStock: TFDQuery;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarTxExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransfStockAnuladas: TFormTransfStockAnuladas;

implementation

uses UTransferencia,UDMain_FD;

{$R *.dfm}

procedure TFormTransfStockAnuladas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSTxStock.Close;
  CDSTxStock.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSTxStock.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSTxStock.Open;
end;

procedure TFormTransfStockAnuladas.BuscarTxExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormTransferencias)) Then
    FormTransferencias:=TFormTransferencias.Create(Application);
  FormTransferencias.DatoNew:=CDSTxStockID_TRCAB.AsString;
  FormTransferencias.Recuperar.Execute;
end;

procedure TFormTransfStockAnuladas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormTransfStockAnuladas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=true;
end;

procedure TFormTransfStockAnuladas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTransfStockAnuladas:=nil;
end;

procedure TFormTransfStockAnuladas.FormShow(Sender: TObject);
 var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;

procedure TFormTransfStockAnuladas.UpDown1Click(Sender: TObject;
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

end.
