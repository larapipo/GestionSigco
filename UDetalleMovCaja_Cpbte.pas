unit UDetalleMovCaja_Cpbte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, StdCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus;

type
  TFormDetalleValores = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    BitBtn1: TBitBtn;
    DSMov: TDataSource;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSMovDETALLE: TStringField;
    CDSMovTARJETA: TStringField;
    CDSMovID_MOV_CAJA: TIntegerField;
    CDSMovID_TPAGO: TIntegerField;
    CDSMovID_FPAGO: TIntegerField;
    QMov: TFDQuery;
    CDSMovID_CAJA: TIntegerField;
    CDSMovDEBE: TFloatField;
    CDSMovHABER: TFloatField;
    CDSMovNRO_CAJA: TIntegerField;
    CDSMovID_CTA_CAJA: TIntegerField;
    Caja: TStringField;
    spReemplazaTC_efec: TFDStoredProc;
    PopupMenu1: TPopupMenu;
    Reemplazarporefectivo1: TMenuItem;
    QId_MovTC: TFDQuery;
    QActualizaCajaMov: TFDQuery;
    QActualizaMov_Efec: TFDQuery;
    N1: TMenuItem;
    AplicarCambioValorEfectivo1: TMenuItem;
    CDSMovCPBTE_NRO: TStringField;
    CDSMovCPBTE_TIPO: TStringField;
    CDSMovCPBTE_ID: TIntegerField;
    spRehacerMovCaja: TFDStoredProc;
    N2: TMenuItem;
    RehacerMovimiento1: TMenuItem;
    QId_MovTCID_MOV_TC: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Reemplazarporefectivo1Click(Sender: TObject);
    procedure AplicarCambioValorEfectivo1Click(Sender: TObject);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure RehacerMovimiento1Click(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FTipoCpbte:String;
    FClaseCpbte:String;

    FTipo:String;
  public
    { Public declarations }
  published
    property Id:integer write Fid;
    property TipoCpbte:String write FTipoCpbte;
    property ClaseCpbte:string write FClaseCpbte;
    property Tipo:string write FTipo;

  end;

var
  FormDetalleValores: TFormDetalleValores;

implementation

{$R *.dfm}
uses UDMAin_FD, UCaja;

procedure TFormDetalleValores.AplicarCambioValorEfectivo1Click(Sender: TObject);
begin
  if CDSMovID_TPAGO.Value=1 then
    begin
      QActualizaCajaMov.Close;
      QActualizaCajaMov.ParamByName('UNIDADES').Value    := CDSMovHABER.AsFloat;
      QActualizaCajaMov.ParamByName('HABER').Value       := CDSMovHABER.AsFloat;
      QActualizaCajaMov.ParamByName('ID_MOV_CAJA').Value := CDSMovID_MOV_CAJA.AsFloat;
      QActualizaCajaMov.ExecSQL;
      QActualizaCajaMov.Close;

      QActualizaMov_Efec.Close;
      QActualizaMov_Efec.ParamByName('UNIDADES').Value    := CDSMovHABER.AsFloat;
      QActualizaMov_Efec.ParamByName('IMPORTE').Value     := CDSMovHABER.AsFloat;
      QActualizaMov_Efec.ParamByName('ID_MOV_CAJA').Value := CDSMovID_MOV_CAJA.AsFloat;
      QActualizaMov_Efec.ExecSQL;
      QActualizaMov_Efec.Close;

    end;
end;

procedure TFormDetalleValores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormDetalleValores.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  
end;

procedure TFormDetalleValores.FormDestroy(Sender: TObject);
begin
  FormDetalleValores:=nil;
end;

procedure TFormDetalleValores.FormShow(Sender: TObject);
begin
  CDSMov.Close;
  CDSMov.Params.ParamByName('id_comprobante').Value :=FId;
  CDSMov.Params.ParamByName('tipo_comprob').Value   :=FTipoCpbte;
  CDSMov.Params.ParamByName('tipooperacion').Value  :=FTipo;
  CDSMov.Open;
end;

procedure TFormDetalleValores.JvDBGrid1ColEnter(Sender: TObject);
begin
  if JvDBGrid1.SelectedIndex<>3 then
    JvDBGrid1.SelectedIndex:=3;

end;

procedure TFormDetalleValores.JvDBGrid1DblClick(Sender: TObject);
begin
if Not(Assigned(FormCaja)) then
    FormCaja:=TFormCaja.Create(Application); // para que no me cierre la factura .. cuando cierro la pantalla
  FormCaja.Recuperar(CDSMovID_CAJA.AsInteger);
  FormCaja.Show;
end;

procedure TFormDetalleValores.Reemplazarporefectivo1Click(Sender: TObject);
var TextoLog:string;
begin
 if CDSMovID_TPAGO.Value=4 then
    begin
      QId_MovTC.Close;
      QId_MovTC.ParamByName('ID_MOV_CAJA').Value:=CDSMovID_MOV_CAJA.Value;
      QId_MovTC.Open;

      if  Application.MessageBox ('Va hacer un reemplazo de la tarjeta por efectivo.. ¿Desea continuar?', 'Confirmar', mb_YesNo Or mb_IconWarning Or mb_DefButton2) = mrYes Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spReemplazaTC_efec.Close;
            spReemplazaTC_efec.Params.ParamByName('id_mov_tarjeta').AsInteger    :=QId_MovTC.Fields[0].ASInteger;
            spReemplazaTC_efec.ExecProc;
            DMMain_FD.fdcGestion.Commit;


            TextoLog:= 'Reemplazo de Tarjeta x efectivo '+CDSMovDETALLE.ASString+' - '+
                       CDSMovTARJETA.AsString+ 'Importe: '+FormatFloat(',0.00',CDSMovHABER.AsFloat)+
                       ' Nro.Caja:'+CDSMovNRO_CAJA.AsString+' Nro.:'+CDSMovCPBTE_NRO.AsString+' ('+CDSMovCPBTE_ID.AsString+')';
            DMMain_FD.LogFileFD(0,4,TextoLog,'VALORESNC');

            spReemplazaTC_efec.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se marco la TC...');
          end;
        end;
    end;
end;

procedure TFormDetalleValores.RehacerMovimiento1Click(Sender: TObject);
var TextoLog:string;
begin
  if  Application.MessageBox ('Va hacer un reemplazo de la tarjeta por efectivo.. ¿Desea continuar?', 'Confirmar', mb_YesNo Or mb_IconWarning Or mb_DefButton2) = mrYes Then
    begin
       DMMain_FD.fdcGestion.StartTransaction;
      try
        spRehacerMovCaja.Close;
        spRehacerMovCaja.Params.ParamByName('NC_ID').AsInteger    := FId;
        spRehacerMovCaja.Params.ParamByName('NC_TIPO').AsString   := FTipoCpbte;
        spRehacerMovCaja.Params.ParamByName('NC_CLASE').AsString  := FClaseCpbte;
        spRehacerMovCaja.ExecProc;
        DMMain_FD.fdcGestion.Commit;


        TextoLog:= 'Rehacer Mov de Caja '+CDSMovDETALLE.ASString+' - '+
                   'Importe: '+FormatFloat(',0.00',CDSMovHABER.AsFloat)+
                   ' Nro.Caja:'+CDSMovNRO_CAJA.AsString+' Nro.:'+CDSMovCPBTE_NRO.AsString+' ('+CDSMovCPBTE_ID.AsString+')';
        DMMain_FD.LogFileFD(0,4,TextoLog,'VALORESNC');

      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se hizo el movimiento...');
      end;
    end;
 spRehacerMovCaja.Close;
end;

end.
