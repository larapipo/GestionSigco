unit UCambioCodigoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Provider, DBClient, DBXCommon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambioCodigoStock = class(TForm)
    Panel1: TPanel;
    edCodigoOld: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edCodigoNew: TEdit;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    pnCodigos: TPanel;
    dbgStock: TJvDBGrid;
    spDetalle: TSpeedButton;
    DSCodigos: TDataSource;
    lbDetalle: TLabel;
    QConsultaStock: TFDQuery;
    QConsultaStockCODIGO_STK: TStringField;
    QCodigos: TFDQuery;
    QCodigosCODIGO_STK: TStringField;
    QCodigosDETALLE_STK: TStringField;
    spCambioCodigo: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodigoNewKeyPress(Sender: TObject; var Key: Char);
    procedure edCodigoNewExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure spDetalleClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
    FDetalle:String;
    FModificado:Boolean;
  public
    { Public declarations }
    codigoAlfa:string;
  published
    property CodigoNew:String read FCodigo write FCodigo;
    property CodigoOld:String read FCodigo write FCodigo;
    property Detalle:String read FDetalle write FDetalle;
    property Modificado:Boolean read FModificado;

  end;

var
  FormCambioCodigoStock: TFormCambioCodigoStock;

implementation

{$R *.dfm}
uses UDMain_FD;


procedure TFormCambioCodigoStock.btOkClick(Sender: TObject);
var cambiar:Boolean;
begin
  edCodigoNew.Text:=copy('00000000',1,8-length(trim(edCodigoNew.Text)))+trim(edCodigoNew.Text);
  begin
    QConsultaStock.close;
    QConsultaStock.Params.ParamByName('codigo').AsString:= edCodigoNew.Text;
    QConsultaStock.Open;
    Cambiar:=QConsultaStock.IsEmpty;
  end;
  QConsultaStock.close;
  FModificado:=False;
  if cambiar then
    begin
      Screen.Cursor:=crHourGlass;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spCambioCodigo.Close;
        spCambioCodigo.ParamByName('codigonew').AsString:=edCodigoNew.Text;
        spCambioCodigo.ParamByName('codigoold').AsString:=edCodigoOld.Text;
        spCambioCodigo.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spCambioCodigo.Close;
        CodigoNew :=edCodigoNew.Text;
        FModificado:=True;
      except
        FModificado:=False;
        CodigoNew :=edCodigoOld.Text;
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se cambio el codigo...');
      end;
    end
  else
    raise Exception.Create('Codigo en uso , no se puede usar');
  Screen.Cursor:=crDefault;
end;

procedure TFormCambioCodigoStock.edCodigoNewExit(Sender: TObject);
begin
  if codigoAlfa='N' then
    edCodigoNew.Text:=copy('00000000',1,8-length(trim(edCodigoNew.Text)))+trim(edCodigoNew.Text);
end;

procedure TFormCambioCodigoStock.edCodigoNewKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13  then
    begin
      if codigoAlfa='N' then
        edCodigoNew.Text:=copy('00000000',1,8-length(trim(edCodigoNew.Text)))+trim(edCodigoNew.Text);
    end;
end;

procedure TFormCambioCodigoStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambioCodigoStock.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
  // Veo si se cargan codigo Alfanumericos y si son secuenciales
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='ALFA';
  DMMain_FD.QOpciones.Open;
  CodigoAlfa:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1]);
  DMMain_FD.QOpciones.CLose;

end;

procedure TFormCambioCodigoStock.FormDestroy(Sender: TObject);
begin
  FormCambioCodigoStock:=nil;
end;

procedure TFormCambioCodigoStock.FormResize(Sender: TObject);
begin
  if FormCambioCodigoStock<>nil then
    if FormCambioCodigoStock.Width>738 then
      FormCambioCodigoStock.Width:=738;
end;

procedure TFormCambioCodigoStock.FormShow(Sender: TObject);
begin
  edCodigoOld.Text:=CodigoOld;
  edCodigoNew.Text:=CodigoOld;
  lbDetalle.Caption:=FDetalle;
end;

procedure TFormCambioCodigoStock.spDetalleClick(Sender: TObject);
begin
  if pnCodigos.Visible=False then
    begin
      pnCodigos.Visible:=True;
      QCodigos.Close;
      QCodigos.Open;
      QCodigos.Locate('Codigo_stk',FCodigo,[]);
      spDetalle.Caption:='<<';
    end
  else
    begin
      pnCodigos.Visible:=False;
      QCodigos.Close;
      spDetalle.Caption:='>>';
    end;

end;

end.
