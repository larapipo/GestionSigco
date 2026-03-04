unit UControlAperturaCaja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, Db, ActnList,StdCtrls, Buttons, ToolWin,
  ComCtrls, ExtCtrls, Grids, Mask,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvDBLookup, SqlExpr, JvExStdCtrls, JvCombobox, JvDBCombobox, DBGrids,
  JvExDBGrids, JvDBGrid, JvAppStorage, JvAppIniStorage, System.Actions,
  JvComponentBase, Vcl.ImgList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvExMask, JvToolEdit, Vcl.DBCtrls, System.ImageList,
  FireDAC.Stan.StorageBin;

type
  TFormControlAperturaCaja = class(TFormABMBase)
    DSPCaja: TDataSetProvider;
    CDSCaja: TClientDataSet;
    DSCtaCaja: TDataSource;
    DSCaja: TDataSource;
    CDSCajaID_CAJA: TIntegerField;
    CDSCajaESTADO: TIntegerField;
    CDSCajaNUMEROCAJA: TIntegerField;
    Label1: TLabel;
    cbCuentas: TJvDBLookupCombo;
    CDSCajaFECHA_INCIO: TSQLTimeStampField;
    CDSCajaFECHA_CIERRE: TSQLTimeStampField;
    CDSCtaCaja: TClientDataSet;
    DSPCtaCaja: TDataSetProvider;
    CDSCtaCajaID_CUENTA: TIntegerField;
    CDSCtaCajaID_TIPO_CTA: TIntegerField;
    CDSCtaCajaNOMBRE: TStringField;
    CDSCtaCajaNRO_CUENTA: TStringField;
    CDSCtaCajaID_BANCO: TIntegerField;
    CDSCtaCajaCUIT: TStringField;
    CDSCtaCajaRAZONSOCIAL: TStringField;
    RadioGroup1: TRadioGroup;
    fdmtOpciones: TFDMemTable;
    fdmtOpcionesID: TIntegerField;
    fdmtOpcionesDETALLE: TStringField;
    DSOpciones: TDataSource;
    QCaja: TFDQuery;
    QCtaCaja: TFDQuery;
    QCajaID_CAJA: TIntegerField;
    QCajaFECHA_INCIO: TSQLTimeStampField;
    QCajaFECHA_CIERRE: TSQLTimeStampField;
    QCajaESTADO: TIntegerField;
    QCierraTodas: TFDQuery;
    QCajaID_CUENTA_CAJA: TIntegerField;
    QCajaSALDO_INCIAL: TFloatField;
    QCajaNUMEROCAJA: TIntegerField;
    CDSCajaMUESTRAESTADO: TStringField;
    dbgCajas: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CDSCajaBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDSCajaAfterPost(DataSet: TDataSet);
    procedure CDSCajaBeforePost(DataSet: TDataSet);
    procedure dbgCajasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgCajasColEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlAperturaCaja: TFormControlAperturaCaja;

implementation

Uses UDMain_FD;
{$R *.DFM}

procedure TFormControlAperturaCaja.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSCtaCaja.Open;
  CDSCtaCaja.First;

  fdmTOpciones.Active:=True;

  fdmtOpciones.Append;
  fdmtOpcionesID.Value     :=0;
  fdmtOpcionesDETALLE.Value:='Abierta';
  fdmtOpciones.Post;

  fdmtOpciones.Append;
  fdmtOpcionesID.Value     :=1;
  fdmtOpcionesDETALLE.Value:='Cerrada';
  fdmtOpciones.Post;


  CDSCaja.close;
  CDSCaja.Params.ParamByName('id').Value:=cbCuentas.KeyValue;
  CDSCaja.Open;

end;

procedure TFormControlAperturaCaja.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSCaja.close;
  CDSCaja.Params.ParamByName('id').Value:=cbCuentas.KeyValue;
  CDSCaja.Open;
  dbgCajas.Width:=dbgCajas.Width+1;
  dbgCajas.Width:=dbgCajas.Width-1;

  RadioGroup1Click(Sender);
end;

procedure TFormControlAperturaCaja.CDSCajaAfterPost(DataSet: TDataSet);
begin
 // inherited;
  Confirma.Execute;
end;

procedure TFormControlAperturaCaja.CDSCajaBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
Var ValNew,ValOld:String;
begin
  inherited;
  if CDSCajaESTADO.OldValue=0 then ValOld:='Abierta' else ValOld:='Cerrada';
  if CDSCajaESTADO.NewValue=0 then ValNew:='Abierta' else ValNew:='Cerrada';

  DMMain_FD.LogFileFD(1,2,'Forzado estado Caja Cta.:'+cbCuentas.Text+' Estado Anterior:'+ValOld+'-'+
                          ' Estado Nuevo:'+ValNew+' Nro de Orden: '+CDSCajaID_CAJA.AsString+' - Nro de Caja:'+CDSCajaNUMEROCAJA.AsString+
                          ' Fecha :'+DateToStr(date),
                          'CAJACAB');

end;

procedure TFormControlAperturaCaja.CDSCajaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (CDSCajaESTADO.NewValue=0) and (CDSCajaESTADO.OldValue=1) then
    begin
      QCierraTodas.Close;
      QCierraTodas.ParamByName('id').Value:=cbCuentas.KeyValue;
      QCierraTodas.ExecSQL;
      QCierraTodas.Close;
    end;
end;

procedure TFormControlAperturaCaja.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  CDSCaja.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormControlAperturaCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlAperturaCaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlAperturaCaja:=nil;
end;

procedure TFormControlAperturaCaja.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlAperturaCaja<>nil then
    if FormControlAperturaCaja.Width<>620 then
      FormControlAperturaCaja.Width:=620;
end;

procedure TFormControlAperturaCaja.dbgCajasColEnter(Sender: TObject);
begin
  inherited;
  if dbgCajas.SelectedIndex<=4 then
    dbgCajas.SelectedIndex:=5;
end;

procedure TFormControlAperturaCaja.dbgCajasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (CDSCajaESTADO.Value=0) Then
    if (gdFocused in State) then
      begin
        dbgCajas.canvas.brush.color := clBlue;
      end
    else
      begin
        dbgCajas.canvas.brush.color := clMoneyGreen;
      end;
   dbgCajas.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormControlAperturaCaja.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  CDSCaja.Filtered:=False;
  CDSCaja.Filter:='';
  if RadioGroup1.ItemIndex>0 then
    begin
      if RadioGroup1.ItemIndex=1 then
        CDSCaja.Filter:=' Estado = 0 '
      else
      if RadioGroup1.ItemIndex=2 then
        CDSCaja.Filter:=' Estado = 1 ';

      CDSCaja.Filtered:=True;
    end;
end;



end.