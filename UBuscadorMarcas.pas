unit UBuscadorMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls,
  Buttons, ExtCtrls, Provider, DBClient,IniFiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorMarca = class(TForm)
    Panel1: TPanel;
    btAceptar: TBitBtn;
    BitBtn2: TBitBtn;
    dbgMarcas: TJvDBGrid;
    CDSMarcas: TClientDataSet;
    DSPMarcas: TDataSetProvider;
    CDSMarcasMARCA_STK: TStringField;
    CDSMarcasDESCRIPCION_MARCA: TStringField;
    DSMarcas: TDataSource;
    QMarcas: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgMarcasTitleClick(Column: TColumn);
    procedure dbgMarcasDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCodigo:String;
    { Private declarations }
  public
    BuscadorINI:TIniFile;
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormBuscadorMarca: TFormBuscadorMarca;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorMarca.btAceptarClick(Sender: TObject);
begin
  FCodigo      := CDSMarcasMARCA_STK.Value;
end;

procedure TFormBuscadorMarca.BitBtn2Click(Sender: TObject);
begin
  FCodigo     :='';
end;

procedure TFormBuscadorMarca.dbgMarcasDblClick(Sender: TObject);
begin
  FCodigo     :=CDSMarcasMARCA_STK.Value;
  btAceptar.Click;
end;

procedure TFormBuscadorMarca.dbgMarcasTitleClick(Column: TColumn);
var Campo:String;
begin
//  CDSSubRubro.IndexFieldNames:=Column.FieldName;
 try
    Campo := Column.FieldName;
    with dbgMarcas.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorMarca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorMarca.ini');
  //*************************************************************
  BuscadorIni.WriteString('Marca', 'Marca', FCodigo);
  BuscadorIni.Free;
  Action:=caFree;
end;

procedure TFormBuscadorMarca.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorMarca.ini');
  FCodigo     := BuscadorIni.ReadString('Marca', 'Marca', '');
  BuscadorIni.Free;

  CDSMarcas.Open;
  CDSMarcas.Locate('Marca_Stk',FCodigo,[]);
end;

procedure TFormBuscadorMarca.FormDestroy(Sender: TObject);
begin
  FormBuscadorMarca:=nil;  
end;

procedure TFormBuscadorMarca.FormShow(Sender: TObject);
begin
  CDSMarcas.IndexDefs.Clear;
end;

end.
