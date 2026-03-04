unit UBuscadorObras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db,   Buttons, Mask, DBCtrls,
  ActnList, FMTBcd, JvExMask, JvToolEdit, JvDBControls, Provider, DBClient,
  SqlExpr, JvExStdCtrls, JvEdit, JvDBSearchEdit, System.Actions, JvMaskEdit,
  JvDBFindEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvGroupBox, AdvOfficeButtons,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorObras = class(TForm)
    pnPrincipal: TPanel;
    dbgResultado: TDBGrid;
    DSBuscadorObras: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    Buscar: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CDSBuscadorObras: TClientDataSet;
    DSPBuscadorObras: TDataSetProvider;
    dbdInicio: TJvDBDateEdit;
    dbdFinal: TJvDBDateEdit;
    CDSBuscadorObrasCODIGO: TIntegerField;
    CDSBuscadorObrasDETALLE: TStringField;
    CDSBuscadorObrasFEHCHAINCIO: TSQLTimeStampField;
    CDSBuscadorObrasFECHAFINAL: TSQLTimeStampField;
    CDSBuscadorObrasESTADO: TStringField;
    CDSBuscadorObrasRESPONSABLE: TStringField;
    CDSBuscadorObrasDIREECION: TStringField;
    JvDBFindEdit1: TJvDBFindEdit;
    QBuscadorOb: TFDQuery;
    sgEstado: TAdvOfficeRadioGroup;
    Label5: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure sgEstadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCodigo:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:Integer read FCodigo write FCodigo;
  end;

var
  FormBuscadorObras: TFormBuscadorObras;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormBuscadorObras.BuscarExecute(Sender: TObject);
begin
  CDSBuscadorObras.Close;
  if sgEstado.ItemIndex=0 Then
    CDSBuscadorObras.Params.ParamByName('Estado').Value:='A'
  else
    CDSBuscadorObras.Params.ParamByName('Estado').Value:='F';
  CDSBuscadorObras.Open;
end;

procedure TFormBuscadorObras.sgEstadoClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormBuscadorObras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree
  
end;

procedure TFormBuscadorObras.FormDestroy(Sender: TObject);
begin
  FormBuscadorObras:=nil;
end;

procedure TFormBuscadorObras.AceptarExecute(Sender: TObject);
begin
 if Not(CDSBuscadorObras.IsEmpty) Then
    begin
      FCodigo:=CDSBuscadorObrasCODIGO.Value;
      Close;
    end
  else
    begin
      FCodigo:=-1;
      Close;
    end;
end;

procedure TFormBuscadorObras.CancelarExecute(Sender: TObject);
begin
  Codigo:=-1;
  Close;
end;

procedure TFormBuscadorObras.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorObras.FormShow(Sender: TObject);
begin
  Buscar.Execute;
end;

end.
