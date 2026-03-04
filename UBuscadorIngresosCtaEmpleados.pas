unit UBuscadorIngresosCtaEmpleados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Buttons, Grids, Db, DBClient, Provider, Mask,
  ExtCtrls, FMTBcd, SqlExpr, DBGrids, JvExDBGrids, JvDBGrid, JvExMask,
  JvToolEdit, CompBuscador, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorIngresosEmpleados = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edNombreCliente: TEdit;
    DSMovCC: TDataSource;
    DSPMovCC: TDataSetProvider;
    ActionList1: TActionList;
    BuscaEmpleado: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CDSMovCC: TClientDataSet;
    CDSMovCCID: TIntegerField;
    CDSMovCCIDADELANTO: TIntegerField;
    CDSMovCCCODIGO: TStringField;
    CDSMovCCFECHA: TSQLTimeStampField;
    CDSMovCCCLASECOMP: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    dbgMov: TJvDBGrid;
    ceCliente: TJvComboEdit;
    CDSBuscaPersonal: TClientDataSet;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    DSPBuscaPersonal: TDataSetProvider;
    ComBuscadorEmpleados: TComBuscador;
    QMovCC: TFDQuery;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    QPersonal: TFDQuery;
    QPersonalCARGO: TIntegerField;
    QPersonalCATEGORIA: TIntegerField;
    QPersonalCTACONTABLE: TIntegerField;
    QPersonalDOMICILIO: TStringField;
    QPersonalESTADO_CIVIL: TStringField;
    QPersonalFECHA_INGRESO: TSQLTimeStampField;
    QPersonalFECHA_NACIMIENTO: TSQLTimeStampField;
    QPersonalCODIGO: TStringField;
    QPersonalLOCALIDAD: TIntegerField;
    QPersonalNOMBRE: TStringField;
    QPersonalTELEFONO_1: TStringField;
    QPersonalTELEFONO_2: TStringField;
    QPersonalMUESTRACARGO: TStringField;
    QPersonalMUESTRACATEGORIA: TStringField;
    QPersonalMUESTRALOCALIDAD: TStringField;
    QPersonalMUESTRACPOSTAL: TStringField;
    procedure BuscaEmpleadoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure dbgMovDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    id:Integer;
    { Public declarations }
  end;

var
  FormBuscadorIngresosEmpleados: TFormBuscadorIngresosEmpleados;

implementation

Uses UDMain_FD;
{$R *.DFM}

procedure TFormBuscadorIngresosEmpleados.BuscaEmpleadoExecute(Sender: TObject);
begin
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.Open;
  comBuscadorEmpleados.Execute;
  IF comBuscadorEmpleados.ROk THEN
    BEGIN
      ceCliente.Text := comBuscadorEmpleados.id;
      QPersonal.Close;
      QPersonal.ParamByName('Codigo').Value := comBuscadorEmpleados.id;
      QPersonal.Open;
      IF NOT (QPersonal.eof) THEN
        BEGIN
          edNombreCliente.Text := QPersonalNOMBRE.Value;
          CDSMovCC.Close;
          CDSMovCC.Params.ParamByName('codigo').Value:=comBuscadorEmpleados.id;
          CDSMovCC.OPen;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
  CDSBuscaPersonal.Close;
end;

procedure TFormBuscadorIngresosEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  id:=CDSMovCCID.Value;
end;

procedure TFormBuscadorIngresosEmpleados.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorIngresosEmpleados.FormDestroy(Sender: TObject);
begin
  FormBuscadorIngresosEmpleados:=nil;
end;

procedure TFormBuscadorIngresosEmpleados.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QPersonal.Close;
      QPersonal.ParamByName('Codigo').Value := Dato;
      QPersonal.Open;
      IF NOT(QPersonal.eof) THEN
        begin
          edNombreCliente.Text := QPersonalNOMBRE.Value;
          CDSMovCC.Close;
          CDSMovCC.Params.ParamByName('codigo').Value:=dato;
          CDSMovCC.OPen;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;
END;


procedure TFormBuscadorIngresosEmpleados.dbgMovDblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
