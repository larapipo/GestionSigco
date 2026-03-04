unit UBuscadorNotaVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExControls, JvGradient,
  ExtCtrls, Provider, DB, DBClient, StdCtrls, JvExStdCtrls, JvCombobox,
  ActnList, Buttons, FMTBcd, SqlExpr,IniFiles, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorNotaVenta = class(TForm)
    CDSBuscadorNV: TClientDataSet;
    DSPBuscadorNV: TDataSetProvider;
    DSBuscadorNV: TDataSource;
    actlst1: TActionList;
    Buscar: TAction;
    CDSBuscadorNVNROCPBTE: TStringField;
    CDSBuscadorNVID: TIntegerField;
    CDSBuscadorNVCODIGO: TStringField;
    CDSBuscadorNVNOMBRE: TStringField;
    pn1: TPanel;
    pnCabecera: TPanel;
    cbEstado: TJvComboBox;
    pnPie: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    dbgNotas: TJvDBGrid;
    CDSBuscadorNVSUBNRO: TStringField;
    CDSBuscadorNVFECHAPEDIDO: TSQLTimeStampField;
    QBuscadorNV: TFDQuery;
    procedure BuscarExecute(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dbgNotasDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbEstadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgNotasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
    BuscadorIni:TIniFile;
  published
    property Id:Integer read FId write Fid;
  end;

var
  FormBuscadorNotaVenta: TFormBuscadorNotaVenta;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormBuscadorNotaVenta.btOkClick(Sender: TObject);
begin
  FId:=CDSBuscadorNVID.Value;
end;

procedure TFormBuscadorNotaVenta.btCancelClick(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormBuscadorNotaVenta.BuscarExecute(Sender: TObject);
begin
  CDSBuscadorNV.IndexDefs.Clear;
  CDSBuscadorNV.IndexFieldNames:='';
  CDSBuscadorNV.Close;
  case cbEstado.ItemIndex of
    0:  CDSBuscadorNV.Params.ParamByName('Estado').Value:='*';
    1:  CDSBuscadorNV.Params.ParamByName('Estado').Value:='N';
    2:  CDSBuscadorNV.Params.ParamByName('Estado').Value:='E';
    3:  CDSBuscadorNV.Params.ParamByName('Estado').Value:='C';
    4:  CDSBuscadorNV.Params.ParamByName('Estado').Value:='A';
  end;
  CDSBuscadorNV.Open;
end;

procedure TFormBuscadorNotaVenta.cbEstadoClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormBuscadorNotaVenta.dbgNotasDblClick(Sender: TObject);
begin
  btOk.Click();
end;

procedure TFormBuscadorNotaVenta.dbgNotasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgNotas.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorNotaVenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorNV.ini');
  BuscadorIni.WriteInteger('estado', 'estado',cbEstado.ItemIndex);
  BuscadorIni.Free;
  Action:=caFree;
end;

procedure TFormBuscadorNotaVenta.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorNV.ini');
  cbEstado.ItemIndex  := BuscadorIni.ReadInteger('estado', 'estado', 0);
  BuscadorIni.Free;
end;

procedure TFormBuscadorNotaVenta.FormDestroy(Sender: TObject);
begin
  FormBuscadorNotaVenta:=nil;
end;

procedure TFormBuscadorNotaVenta.FormShow(Sender: TObject);
begin
  Buscar.Execute;
  dbgNotas.SetFocus;
end;

end.
