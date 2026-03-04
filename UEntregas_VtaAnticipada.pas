unit UEntregas_VtaAnticipada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, JvExMask,
  JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormEntregas_VtaAnticipadas = class(TFormABMBase)
    QDetalleRtos: TFDQuery;
    CDSDetalleRtos: TClientDataSet;
    DSPDetalleRtos: TDataSetProvider;
    DSDetalleRtos: TDataSource;
    JvDBGrid1: TJvDBGrid;
    CDSDetalleRtosCODIGOARTICULO: TStringField;
    CDSDetalleRtosDETALLE_STK: TStringField;
    CDSDetalleRtosCANTIDAD: TFloatField;
    CDSDetalleRtosPRECIO: TFloatField;
    Label1: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesSUCURSAL: TIntegerField;
    QClientesACTIVO: TStringField;
    BuscarCliente: TAction;
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntregas_VtaAnticipadas: TFormEntregas_VtaAnticipadas;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorClientes;

procedure TFormEntregas_VtaAnticipadas.BuscarClienteExecute(Sender: TObject);
BEGIN
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.AsString;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
end;

procedure TFormEntregas_VtaAnticipadas.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := QClientesNOMBRE.AsString;
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

end.
