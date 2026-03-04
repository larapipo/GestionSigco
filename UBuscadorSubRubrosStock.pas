unit UBuscadorSubRubrosStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   JvExControls, JvGradient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, DBCtrls, ExtCtrls, DBClient, Provider, StdCtrls, Buttons, JvDBLookup,
  FMTBcd, SqlExpr,IniFiles, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBuscadorSubRubroStock = class(TForm)
    Panel1: TPanel;
    dbgSubRubros: TJvDBGrid;
    JvGradient1: TJvGradient;
    DSSubRubro: TDataSource;
    DSRubro: TDataSource;
    DSPRSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    CDSSubRubroCONTROL_SUBRUBRO: TStringField;
    dbcRubro: TJvDBLookupCombo;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    Label1: TLabel;
    DSPRubro: TDataSetProvider;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSRubroCONTROL_RUBRO: TStringField;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    QStock: TFDQuery;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    DSStock: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    LCodigoAlt: TLabel;
    LCodigo: TLabel;
    LDetalle: TLabel;
    rgOrden: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbgSubRubrosDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbcRubroClick(Sender: TObject);
    procedure dbgSubRubrosTitleClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure rgOrdenClick(Sender: TObject);
    procedure CDSRubroAfterOpen(DataSet: TDataSet);
  private
     FCodigo:String;
     FCodigoRubro:String;
     FCodigoStk:String;
     FCodigoAlt:string;
     FDetalle:String;
     FMuestraRubro:String;
     FMuestraSubRubro:String;
    { Private declarations }
  public
    Rubro,SubRubro:String;
    BuscadorINI:TIniFile;
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
    property CodigoRubro:String read FCodigoRubro write FCodigoRubro;
    property CodigoStk:String read FCodigoStk write FCodigoStk;
    property CodigoAlt:string read FCodigoAlt write FCodigoAlt;
    property Detalle:string read FDetalle write FDetalle;
    property MuestraRubro:String read FMuestraRubro write FMuestraRubro;
    property MuestraSubRubro:String read FMuestraSubRubro write FMuestraSubRubro;
  end;

var
  FormBuscadorSubRubroStock: TFormBuscadorSubRubroStock;

implementation

uses
  UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorSubRubroStock.btAceptarClick(Sender: TObject);
begin
  FCodigo         := CDSSubRubroCODIGO_SUBRUBRO.Value;
  FCodigoRubro    := CDSSubRubroCODIGO_RUBRO.AsString;
  FMuestraRubro   := CDSRubroDETALLE_RUBRO.ASString;
  FMuestraSubRubro:= CDSSubRubroDETALLE_SUBRUBRO.AsString;
 // Close;
end;

procedure TFormBuscadorSubRubroStock.btCancelarClick(Sender: TObject);
begin
  FCodigo     :='';
  FCodigoRubro:='';
//  Close;
end;

procedure TFormBuscadorSubRubroStock.CDSRubroAfterOpen(DataSet: TDataSet);
begin
  CDSRubro.IndexFieldNames:='CODIGO_RUBRO';
end;

procedure TFormBuscadorSubRubroStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorRubro.ini');
  //*************************************************************
  BuscadorIni.WriteString('rubro', 'rubro', dbcRubro.KeyValue);
  BuscadorIni.WriteString('rubro', 'subrubro', CDSSubRubroCODIGO_SUBRUBRO.AsString);
  BuscadorIni.Free;

  CDSSubRubro.IndexDefs.Clear;
  CDSSubRubro.IndexName:='';
  CDSSubRubro.close;
  CDSRubro.Close;
  CDSStock.Close;

  Action:=caFree;
end;

procedure TFormBuscadorSubRubroStock.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  AutoSize := True;

  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorRubro.ini');
  //*************************************************************
  Rubro          := BuscadorIni.ReadString('rubro', 'rubro', '');
  SubRubro       := BuscadorIni.ReadString('rubro', 'subrubro', '');
  BuscadorIni.Free;

  dbcRubro.KeyValue:=Rubro;

  CDSRubro.Open;
  CDSSubRubro.IndexDefs.Clear;
  CDSSubRubro.IndexName:='';
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=dbcRubro.KeyValue;
  CDSSubRubro.Open;
  CDSSubRubro.Locate('CODIGO_SUBRUBRO',SubRubro,[]);
end;

procedure TFormBuscadorSubRubroStock.FormDestroy(Sender: TObject);
begin
  FormBuscadorSubRubroStock:=nil;
end;

procedure TFormBuscadorSubRubroStock.FormShow(Sender: TObject);
begin
  LCodigo.Caption       :=  FCodigoStk;
  LCodigoAlt.Caption    :=  FCodigoAlt;
  LDetalle.Caption      :=  FDetalle;
end;

procedure TFormBuscadorSubRubroStock.rgOrdenClick(Sender: TObject);
begin
  case rgOrden.ItemIndex of
    0:CDSRubro.IndexFieldNames:='CODIGO_RUBRO';
    1:CDSRubro.IndexFieldNames:='DETALLE_RUBRO';
  end;
end;

procedure TFormBuscadorSubRubroStock.dbgSubRubrosDblClick(Sender: TObject);
begin
  FCodigo         := CDSSubRubroCODIGO_SUBRUBRO.Value;
  FCodigoRubro    := CDSSubRubroCODIGO_RUBRO.AsString;
  FMuestraRubro   := CDSRubroDETALLE_RUBRO.ASString;
  FMuestraSubRubro:= CDSSubRubroDETALLE_SUBRUBRO.AsString;
  btAceptar.Click;
end;

procedure TFormBuscadorSubRubroStock.dbgSubRubrosTitleClick(Column: TColumn);
var Campo:String;
begin
//  CDSSubRubro.IndexFieldNames:=Column.FieldName;
 try
    Campo := Column.FieldName;
    with dbgSubRubros.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorSubRubroStock.dbcRubroClick(Sender: TObject);
begin
  CDSSubRubro.IndexDefs.Clear;
  CDSSubRubro.IndexName:='';
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=dbcRubro.KeyValue;
  CDSSubRubro.Open;
end;

end.
