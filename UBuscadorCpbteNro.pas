unit UBuscadorCpbteNro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, StdCtrls, Buttons,
  JvExControls, JvGradient, Grids, DBGrids,  ExtCtrls,
  JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvUtil, AdvObj, BaseGrid, JvExDBGrids, JvDBGrid, JvLabel, JvDBControls;

type
  TFormBuscadorComprobNro = class(TForm)
    pnCabecera: TPanel;
    dbgComprobantes: TJvDBGrid;
    pnPie: TPanel;
    btBuscar: TBitBtn;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    CDSBuscadorComp: TClientDataSet;
    CDSBuscadorCompTIPO_COMPROB: TStringField;
    CDSBuscadorCompCLASE_COMPROB: TStringField;
    CDSBuscadorCompDETALLE: TStringField;
    CDSBuscadorCompDENOMINACION: TStringField;
    CDSBuscadorCompLETRA: TStringField;
    CDSBuscadorCompPREFIJO: TStringField;
    CDSBuscadorCompNUMERO: TStringField;
    CDSBuscadorCompMUESTRASUCURSAL: TStringField;
    CDSBuscadorCompCOMPRA_VENTA: TStringField;
    CDSBuscadorCompID_COMPROBANTE: TIntegerField;
    CDSBuscadorCompSUCURSAL: TIntegerField;
    CDSBuscadorCompNUMERARCION_PROPIA: TStringField;
    CDSBuscadorCompTOMA_NRO_DE: TIntegerField;
    CDSBuscadorCompAFECTA_IVA: TStringField;
    CDSBuscadorCompAFECTA_CC: TStringField;
    CDSBuscadorCompDESGLOZA_IVA: TStringField;
    CDSBuscadorCompCOPIAS: TIntegerField;
    CDSBuscadorCompREPORTE: TStringField;
    CDSBuscadorCompIMPRIME: TStringField;
    CDSBuscadorCompFISCAL: TStringField;
    CDSBuscadorCompNOMBREIMPRESORA: TStringField;
    CDSBuscadorCompPENDIENTEIMPRESION: TStringField;
    CDSBuscadorCompLINEAS_DETALLE: TSmallintField;
    CDSBuscadorCompCALCULA_IVA_ARTICULOS: TStringField;
    CDSBuscadorCompDEFECTO: TStringField;
    DSPBuscadorComp: TDataSetProvider;
    DSBuscador: TDataSource;
    DSSucursal: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QBuscadorCo: TFDQuery;
    chbTodos: TCheckBox;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure btBuscarClick(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure chbTodosClick(Sender: TObject);
    procedure dbgComprobantesTitleBtnClick(Sender: TObject; ACol: LongInt;
      Field: TField);
  private
    { Private declarations }
    PId:Integer;
    PTipo:String;
    PId_Out:Integer;
    PTipoCpbte1:String;
    PTipoCpbte2:String;

  public
    { Public declarations }
  published
    property Id :integer read PId write Pid;
    property Tipo :String read PTipo write PTipo;
    property TipoCpbte1 :String read PTipoCpbte1 write PTipoCpbte1;
    property TipoCpbte2 :String read PTipoCpbte2 write PTipoCpbte2;
    property id_Out :integer read PId_Out write PId_Out;
  end;

var
  FormBuscadorComprobNro: TFormBuscadorComprobNro;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorComprobNro.btBuscarClick(Sender: TObject);
var i:Integer;
begin
  CDSBuscadorComp.IndexDefs.Clear;
  CDSBuscadorComp.IndexFieldNames:='';
  CDSBuscadorComp.Close;
  CDSBuscadorComp.Params.ParamByName('id').Value           := PId;
  CDSBuscadorComp.Params.ParamByName('Tipo').Value         := PTipo;
  CDSBuscadorComp.Params.ParamByName('TipoComprob1').Value := PTipoCpbte1;
  CDSBuscadorComp.Params.ParamByName('TipoComprob2').Value := PTipoCpbte2;
  CDSBuscadorComp.Open;
end;


procedure TFormBuscadorComprobNro.chbTodosClick(Sender: TObject);
begin
  if chbTodos.Checked then
    begin
      CDSBuscadorComp.Close;
      CDSBuscadorComp.Params.ParamByName('id').Value           := PId;
      CDSBuscadorComp.Params.ParamByName('Tipo').Value         := PTipo;
      CDSBuscadorComp.Params.ParamByName('TipoComprob1').Value := 'XX';
      CDSBuscadorComp.Params.ParamByName('TipoComprob2').Value := 'XX';
      CDSBuscadorComp.Open;

    end
  else btBuscar.Click
end;

procedure TFormBuscadorComprobNro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QSucursal.Close;
  Action:=caFree;
end;

procedure TFormBuscadorComprobNro.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QSucursal.Open;

end;

procedure TFormBuscadorComprobNro.FormDestroy(Sender: TObject);
begin
  FormBuscadorComprobNro:=nil;
end;

procedure TFormBuscadorComprobNro.FormShow(Sender: TObject);
begin
  btBuscar.Click;
end;

procedure TFormBuscadorComprobNro.dbcSucursalChange(Sender: TObject);
begin
  CDSBuscadorComp.Filtered:=False;
  if dbcSucursal.KeyValue>-1 then
    begin
      CDSBuscadorComp.Filter:='SUCURSAL = '+IntToStr( dbcSucursal.KeyValue);
    end;
  CDSBuscadorComp.Filtered:= dbcSucursal.KeyValue>-1;

end;

procedure TFormBuscadorComprobNro.dbgComprobantesTitleBtnClick(Sender: TObject;
  ACol: LongInt; Field: TField);
var Campo:String;
begin
  try
    Campo := Field.FieldName;
    with dbgComprobantes.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorComprobNro.btAceptarClick(Sender: TObject);
begin
//  CDSBuscadorComp.Locate('ID_COMPRBANTE',DBAdvGrid1.cell);
//  DBAdvGrid1.PageMode:=False;
  PId_Out:=CDSBuscadorCompID_COMPROBANTE.Value;
end;

end.
