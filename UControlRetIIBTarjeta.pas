unit UControlRetIIBTarjeta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, JvExMask,
  JvToolEdit,DateUtils, JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportPDF,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, frxExportBaseDialog,
  System.ImageList;

type
  TFormControlIIBBLiq = class(TFormABMBase)
    QMov: TSQLQuery;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    DSMov: TDataSource;
    JvDBGrid1: TJvDBGrid;
    CDSMovNRO_LIQUIDACION: TStringField;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovFECHA_FISCAL: TSQLTimeStampField;
    CDSMovARANCEL: TFMTBCDField;
    CDSMovCOSTO_FINANCIERO: TFMTBCDField;
    CDSMovIIBB: TFMTBCDField;
    CDSMovID_PERCEPCION: TIntegerField;
    CDSMovDETALLE: TStringField;
    CDSMovIMPORTE: TFMTBCDField;
    CDSMovCONTROLIMPORTE: TFloatField;
    Panel2: TPanel;
    rgModo: TRadioGroup;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    ud1: TUpDown;
    spRevision: TSQLStoredProc;
    Button1: TButton;
    QRevision: TSQLQuery;
    frxPDFExport1: TfrxPDFExport;
    procedure BuscarExecute(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlIIBBLiq: TFormControlIIBBLiq;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormControlIIBBLiq.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSMov.Close;
  if rgModo.ItemIndex=0 then
    cdsMov.CommandText:= 'select l.nro_liquidacion,l.fecha,l.fecha_fiscal,l.arancel,l.costo_financiero, '+
                         'l.iibb,liib.id_percepcion,liib.detalle,liib.importe,(l.iibb-liib.importe) as ControlImporte from liquidacion_tc_cab l '+
                         'left join liquidacion_tc_iibb liib on liib.id_liq=l.id '+
                         'where l.iibb>0 '+
                         'AND l.fecha between :desde and :hasta'
  ELSE
    if rgModo.ItemIndex=1 then
      cdsMov.CommandText:= 'select l.nro_liquidacion,l.fecha,l.fecha_fiscal,l.arancel,l.costo_financiero, '+
                           'l.iibb,liib.id_percepcion,liib.detalle,liib.importe,(l.iibb-liib.importe) as ControlImporte from liquidacion_tc_cab l '+
                           'left join liquidacion_tc_iibb liib on liib.id_liq=l.id '+
                           'where l.iibb>0 '+
                           'AND l.fecha_fiscal between :desde and :hasta';

  CDSMov.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSMov.Params.ParamByName('Hasta').AsDate:=Hasta.Date;

  CDSMov.Open;


end;

procedure TFormControlIIBBLiq.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(CDSMov.IsEmpty) then
    begin
      QRevision.Close;
      QRevision.ParamByName('Desde').AsDate := Desde.Date;
      QRevision.ParamByName('Hasta').AsDate := Hasta.Date;
      case rgModo.ItemIndex of
        0:QRevision.ParamByName('Fiscal').AsInteger:=0;
        1:QRevision.ParamByName('Fiscal').AsInteger:=1;
      end;

      QRevision.open;

      if (QRevision.Fields[0].AsInteger>0) Then
        ShowMessage('insertados '+IntToStr(QRevision.Fields[0].AsInteger)+' Registros...')
      else
        ShowMessage('Sin Variantes...');

      QRevision.Close;

      Buscar.Execute;

    end;
end;

procedure TFormControlIIBBLiq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlIIBBLiq.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormControlIIBBLiq.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlIIBBLiq:=nil;
end;

procedure TFormControlIIBBLiq.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlIIBBLiq<>nil then
    if FormControlIIBBLiq.Width<>1078 then
      FormControlIIBBLiq.Width:=1078;
end;

procedure TFormControlIIBBLiq.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.date))
end;

procedure TFormControlIIBBLiq.ud1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;


end;

end.
