unit UBuscadorCheCompartido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Provider, DBClient, DB, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBuscadoCheCompartido = class(TForm)
    CDSCheComp: TClientDataSet;
    DSPCheComp: TDataSetProvider;
    pnBase: TPanel;
    dbgChe: TJvDBGrid;
    DSCheComp: TDataSource;
    CDSCheCompID: TIntegerField;
    CDSCheCompTIPOCPBTE: TStringField;
    CDSCheCompCLASECPBTE: TStringField;
    CDSCheCompLETRA: TStringField;
    CDSCheCompSUC: TStringField;
    CDSCheCompNUMERO: TStringField;
    CDSCheCompCODIGO: TStringField;
    CDSCheCompNOMBRE: TStringField;
    CDSCheCompRAZONSOCIAL: TStringField;
    CDSCheCompSUCURSALVENTA: TIntegerField;
    CDSCheCompDETALLE: TStringField;
    CDSCheCompNROCPBTE: TStringField;
    CDSCheCompDISPONIBLE: TStringField;
    CDSCheCompMUESTRACAJAMOV_ID: TIntegerField;
    CDSCheCompMUESTRACH_FIRMANTE: TStringField;
    CDSCheCompMUESTRACH_NUMERO: TIntegerField;
    CDSCheCompMUESTRACH_ID_CHE_TECERO: TIntegerField;
    CDSCheCompMUESTRACH_MONEDA: TIntegerField;
    CDSCheCompMUESTRANUMEROCHEQUE: TIntegerField;
    QCheComp: TFDQuery;
    CDSCheCompIMPORTE: TFloatField;
    CDSCheCompSALDO: TFloatField;
    CDSCheCompMUESTRACAJAMOV_HABER: TFloatField;
    CDSCheCompMUESTRACAJAMOV_DEBE: TFloatField;
    CDSCheCompMUESTRACH_IMPORTE: TFloatField;
    CDSCheCompMUESTRACH_COTIZACION: TFloatField;
    CDSCheCompFECHA: TSQLTimeStampField;
    CDSCheCompMUESTRACAJAMOV_FECHACAJA: TSQLTimeStampField;
    CDSCheCompMUESTRACH_FECHACOBRO: TSQLTimeStampField;
    CDSCheCompMUESTRACH_FECHAENTRADA: TSQLTimeStampField;
    CDSCheCompMUESTRACH_FECHAEMISION: TSQLTimeStampField;
    procedure dbgCheDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure dbgCheDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgCheKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FId_che:Integer;
    FId_Che_compartido:Integer;
    FUnitario:Extended;
  public
    { Public declarations }
    Aceptado:Boolean;
  published
    property Id_Che:Integer read FId_che write FId_che;
    property Id_Che_Compartido:Integer read FId_Che_compartido write FId_Che_compartido;
    property Unitario:Extended read FUnitario write FUnitario;
  end;

var
  FormBuscadoCheCompartido: TFormBuscadoCheCompartido;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormBuscadoCheCompartido.dbgCheDblClick(Sender: TObject);
begin
  if CDSCheCompDISPONIBLE.Value='S' then
    begin
      FId_che           := CDSCheCompMUESTRACH_ID_CHE_TECERO.Value;
      FId_Che_compartido:= CDSCheCompID.Value;
      Aceptado:=True;
      close;
    end;
end;

procedure TFormBuscadoCheCompartido.dbgCheDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 IF CDSCheComp.FieldByName('Disponible').Value = 'N' THEN
    dbgChe.Canvas.Font.Style := [fsStrikeout]
  ELSE
    dbgChe.Canvas.Font.Style := [];
  dbgChe.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TFormBuscadoCheCompartido.dbgCheKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=VK_RETURN then
    dbgCheDblClick(Sender)
   else
   if Key=VK_ESCAPE then
     Close;
   
end;

procedure TFormBuscadoCheCompartido.FormCreate(Sender: TObject);
begin
  AutoSize:=True;

end;

procedure TFormBuscadoCheCompartido.FormShow(Sender: TObject);
begin
  Aceptado:=False;
end;

end.
