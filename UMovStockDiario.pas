unit UMovStockDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ExtCtrls, StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormMovStockDiario = class(TForm)
    Panel1: TPanel;
    dbgIngresos: TJvDBGrid;
    DSMovStock_I: TDataSource;
    CDSMovStock_I: TClientDataSet;
    CDSMovStock_IID: TIntegerField;
    CDSMovStock_IFECHA: TSQLTimeStampField;
    CDSMovStock_ITIPOOPERACION: TStringField;
    CDSMovStock_ITIPOCPBTE: TStringField;
    CDSMovStock_ICLASECPBTE: TStringField;
    CDSMovStock_INROCPBTE: TStringField;
    CDSMovStock_IDETALLE: TStringField;
    CDSMovStock_IUNIDAD: TStringField;
    CDSMovStock_IID_COMPROB: TIntegerField;
    DSPMovStock: TDataSetProvider;
    CDSMovStock_E: TClientDataSet;
    DSMovStock_E: TDataSource;
    CDSMovStock_EID: TIntegerField;
    CDSMovStock_EFECHA: TSQLTimeStampField;
    CDSMovStock_ETIPOOPERACION: TStringField;
    CDSMovStock_ETIPOCPBTE: TStringField;
    CDSMovStock_ECLASECPBTE: TStringField;
    CDSMovStock_ENROCPBTE: TStringField;
    CDSMovStock_EDETALLE: TStringField;
    CDSMovStock_EUNIDAD: TStringField;
    CDSMovStock_EID_COMPROB: TIntegerField;
    JvDBGrid1: TJvDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    QMovStock: TFDQuery;
    CDSMovStock_ICOSTO: TFloatField;
    CDSMovStock_IENTRA: TFloatField;
    CDSMovStock_ISALE: TFloatField;
    CDSMovStock_ECOSTO: TFloatField;
    CDSMovStock_EENTRA: TFloatField;
    CDSMovStock_ESALE: TFloatField;
    CDSMovStock_EUNIDADES: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgIngresosDblClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    FFecha   :TDateTime;
    FCodigo  :String;
    FDeposito:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property Fecha   : TDateTime read FFecha write FFecha;
    property Codigo  : String read FCodigo write FCodigo;
    property Deposito: Integer read FDeposito write FDeposito;
  end;

var
  FormMovStockDiario: TFormMovStockDiario;

implementation

uses UFactura_2, UFacturaCtdo_2, UTiketVta, UCompra_2, UCompraCtdo_2,
  UAjusteMercaderia, UTransferencia, DMStock, URMAEnvio, URMARecepcion,
  UPlanillaArmado,UDMain_FD;

{$R *.dfm}

procedure TFormMovStockDiario.dbgIngresosDblClick(Sender: TObject);
var TipoCpbte:string;
TipoOp,IdCpbte:String;
begin
  inherited;
  TipoCpbte := CDSMovStock_ITIPOCPBTE.Value;
  TipoOp    := CDSMovStock_ITIPOOPERACION.Value;
  IdCpbte   := CDSMovStock_IID_COMPROB.AsString;

  if (TipoOp='V') and (TipoCpbte='FC') then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew  :=IdCpbte;
      FormCpbte_2.TipoCpbte:=TipoCpbte;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (TipoOp='V') and (TipoCpbte='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew  :=IdCpbte;
        FormCpbteCtdo_2.TipoCpbte:=TipoCpbte;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
    if (TipoOp='V') and (TipoCpbte='TK') then
      begin
        if Not(Assigned(FormTicketVta)) then
          FormTicketVta:=TFormTicketVta.Create(self);
        FormTicketVta.DatoNew  :=IdCpbte;
        FormTicketVta.TipoCpbte:=TipoCpbte;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if (TipoOp='C') and (TipoCpbte='FC') then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(self);
          FormCompra_2.DatoNew  :=IdCpbte;
          FormCompra_2.TipoCpbte:=TipoCpbte;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
        if (TipoOp='C') and (TipoCpbte='FO') then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(self);
            FormCompraCtdo_2.DatoNew  :=IdCpbte;
            FormCompraCtdo_2.TipoCpbte:=TipoCpbte;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end
        else
          if (TipoOp='J') then
            begin
              if Not(Assigned(FormAjustesStock)) then
                FormAjustesStock:=TFormAjustesStock.Create(self);
              FormAjustesStock.DatoNew  :=IdCpbte;
              FormAjustesStock.TipoCpbte:=TipoCpbte;
              FormAjustesStock.Recuperar.Execute;
              FormAjustesStock.Show;
            end
          else
            if (TipoOp='X') then
              begin
                if Not(Assigned(FormTransferencias)) then
                  FormTransferencias:=TFormTransferencias.Create(self);
                FormTransferencias.DatoNew  :=IdCpbte;
                FormTransferencias.TipoCpbte:=TipoCpbte;
                FormTransferencias.Recuperar.Execute;
                FormTransferencias.Show;
              end
            else
              if (TipoOp='M') and (Trunc(DatosStock.CDSMovStockSALE.AsFloat*100)>0) then
                begin
                  if Not(Assigned(FormRMAEnvios)) then
                    FormRMAEnvios:=TFormRMAEnvios.Create(self);
                  FormRMAEnvios.DatoNew  :=IdCpbte;
                  FormRMAEnvios.TipoCpbte:=TipoCpbte;
                  FormRMAEnvios.Recuperar.Execute;
                  FormRMAEnvios.Show;
                end
              else
                if (TipoOp='A') and (Trunc(DatosStock.CDSMovStockENTRA.AsFloat*100)>0) then
                  begin
                    if Not(Assigned(FormRMARecepcion)) then
                      FormRMARecepcion:=TFormRMARecepcion.Create(self);
                    FormRMARecepcion.DatoNew  :=IdCpbte;
                    FormRMARecepcion.TipoCpbte:=TipoCpbte;
                    FormRMARecepcion.Recuperar.Execute;
                    FormRMARecepcion.Show;
                  end
                else
                  if (TipoOp='L') then
                    begin
                      if Not(Assigned(FormPlanillaArmado)) then
                        FormPlanillaArmado:=TFormPlanillaArmado.Create(self);
                      FormPlanillaArmado.DatoNew  :=IdCpbte;
                      FormPlanillaArmado.TipoCpbte:=TipoCpbte;
                      FormPlanillaArmado.Recuperar.Execute;
                      FormPlanillaArmado.Show;
                    end;

end;

procedure TFormMovStockDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMovStockDiario.FormCreate(Sender: TObject);
begin
  CDSMovStock_I.Close;
  CDSMovStock_I.Params.ParamByName('Desde').AsDate           := FFecha;
  CDSMovStock_I.Params.ParamByName('Hasta').AsDate           := FFecha;
  CDSMovStock_I.Params.ParamByName('Codigo').AsString        := FCodigo;
  CDSMovStock_I.Params.ParamByName('Deposito').AsInteger     := FDeposito;
  CDSMovStock_I.Params.ParamByName('TipoMovimiento').AsString:= '';
  CDSMovStock_I.Params.ParamByName('Modo').AsString          := 'V';
  CDSMovStock_I.Open;

  CDSMovStock_E.Close;
  CDSMovStock_E.Params.ParamByName('Desde').AsDate           := FFecha;
  CDSMovStock_E.Params.ParamByName('Hasta').AsDate           := FFecha;
  CDSMovStock_E.Params.ParamByName('Codigo').AsString        := FCodigo;
  CDSMovStock_E.Params.ParamByName('Deposito').AsInteger     := FDeposito;
  CDSMovStock_E.Params.ParamByName('TipoMovimiento').AsString:= '';
  CDSMovStock_E.Params.ParamByName('Modo').AsString          := 'V';
  CDSMovStock_E.Open;
  AutoSize:=True;
end;

procedure TFormMovStockDiario.FormDestroy(Sender: TObject);
begin
  FormMovStockDiario:=nil;
end;

procedure TFormMovStockDiario.FormShow(Sender: TObject);
begin
  CDSMovStock_I.Close;
  CDSMovStock_I.Params.ParamByName('Desde').AsDate           := FFecha;
  CDSMovStock_I.Params.ParamByName('Hasta').AsDate           := FFecha;
  CDSMovStock_I.Params.ParamByName('Codigo').AsString        := FCodigo;
  CDSMovStock_I.Params.ParamByName('Deposito').AsInteger     := FDeposito;
  CDSMovStock_I.Params.ParamByName('TipoMovimiento').AsString:= '';
  CDSMovStock_I.Params.ParamByName('Modo').AsString          := 'V';
  CDSMovStock_I.Open;

  CDSMovStock_E.Close;
  CDSMovStock_E.Params.ParamByName('Desde').AsDate           := FFecha;
  CDSMovStock_E.Params.ParamByName('Hasta').AsDate           := FFecha;
  CDSMovStock_E.Params.ParamByName('Codigo').AsString        := FCodigo;
  CDSMovStock_E.Params.ParamByName('Deposito').AsInteger     := FDeposito;
  CDSMovStock_E.Params.ParamByName('TipoMovimiento').AsString:= '';
  CDSMovStock_E.Params.ParamByName('Modo').AsString          := 'V';
  CDSMovStock_E.Open;

end;

procedure TFormMovStockDiario.JvDBGrid1DblClick(Sender: TObject);
var TipoCpbte:string;
TipoOp,IdCpbte:String;
begin
  inherited;
  TipoCpbte := CDSMovStock_ETIPOCPBTE.Value;
  TipoOp    := CDSMovStock_ETIPOOPERACION.Value;
  IdCpbte   := CDSMovStock_EID_COMPROB.AsString;

  if (TipoOp='V') and (TipoCpbte='FC') then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew  :=IdCpbte;
      FormCpbte_2.TipoCpbte:=TipoCpbte;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (TipoOp='V') and (TipoCpbte='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew  :=IdCpbte;
        FormCpbteCtdo_2.TipoCpbte:=TipoCpbte;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
    if (TipoOp='V') and (TipoCpbte='TK') then
      begin
        if Not(Assigned(FormTicketVta)) then
          FormTicketVta:=TFormTicketVta.Create(self);
        FormTicketVta.DatoNew  :=IdCpbte;
        FormTicketVta.TipoCpbte:=TipoCpbte;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if (TipoOp='C') and (TipoCpbte='FC') then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(self);
          FormCompra_2.DatoNew  :=IdCpbte;
          FormCompra_2.TipoCpbte:=TipoCpbte;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
        if (TipoOp='C') and (TipoCpbte='FO') then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(self);
            FormCompraCtdo_2.DatoNew  :=IdCpbte;
            FormCompraCtdo_2.TipoCpbte:=TipoCpbte;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end
        else
          if (TipoOp='J') then
            begin
              if Not(Assigned(FormAjustesStock)) then
                FormAjustesStock:=TFormAjustesStock.Create(self);
              FormAjustesStock.DatoNew  :=IdCpbte;
              FormAjustesStock.TipoCpbte:=TipoCpbte;
              FormAjustesStock.Recuperar.Execute;
              FormAjustesStock.Show;
            end
          else
            if (TipoOp='X') then
              begin
                if Not(Assigned(FormTransferencias)) then
                  FormTransferencias:=TFormTransferencias.Create(self);
                FormTransferencias.DatoNew  :=IdCpbte;
                FormTransferencias.TipoCpbte:=TipoCpbte;
                FormTransferencias.Recuperar.Execute;
                FormTransferencias.Show;
              end
            else
              if (TipoOp='M') and (Trunc(DatosStock.CDSMovStockSALE.AsFloat*100)>0) then
                begin
                  if Not(Assigned(FormRMAEnvios)) then
                    FormRMAEnvios:=TFormRMAEnvios.Create(self);
                  FormRMAEnvios.DatoNew  :=IdCpbte;
                  FormRMAEnvios.TipoCpbte:=TipoCpbte;
                  FormRMAEnvios.Recuperar.Execute;
                  FormRMAEnvios.Show;
                end
              else
                if (TipoOp='A') and (Trunc(DatosStock.CDSMovStockENTRA.AsFloat*100)>0) then
                  begin
                    if Not(Assigned(FormRMARecepcion)) then
                      FormRMARecepcion:=TFormRMARecepcion.Create(self);
                    FormRMARecepcion.DatoNew  :=IdCpbte;
                    FormRMARecepcion.TipoCpbte:=TipoCpbte;
                    FormRMARecepcion.Recuperar.Execute;
                    FormRMARecepcion.Show;
                  end
                else
                  if (TipoOp='L') then
                    begin
                      if Not(Assigned(FormPlanillaArmado)) then
                        FormPlanillaArmado:=TFormPlanillaArmado.Create(self);
                      FormPlanillaArmado.DatoNew  :=IdCpbte;
                      FormPlanillaArmado.TipoCpbte:=TipoCpbte;
                      FormPlanillaArmado.Recuperar.Execute;
                      FormPlanillaArmado.Show;
                    end;

end;

end.
