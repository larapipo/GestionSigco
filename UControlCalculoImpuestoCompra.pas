unit UControlCalculoImpuestoCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, Grids, StdCtrls, Mask, ActnList, ImgList,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, JvBaseEdits,DateUtils, JvAppStorage,
  JvAppIniStorage, System.Actions, Vcl.ComCtrls, JvComponentBase, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ExtCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormControlImpuestoCompra = class(TFormABMBase)
    DSPControl: TDataSetProvider;
    VerComprobante: TAction;
    QControl: TSQLQuery;
    CDSControl: TClientDataSet;
    CDSControlID_FC: TIntegerField;
    CDSControlTIPOCPBTE: TStringField;
    CDSControlCLASECPBTE: TStringField;
    CDSControlNROCPBTE: TStringField;
    CDSControlIMPUESTOCALCULADO: TFloatField;
    CDSControlTOTAL2: TFloatField;
    CDSControlCONTROLTOTAL: TFloatField;
    CDSControlCONTROLIMPUESTO: TFloatField;
    CDSControlNETOEXEN2: TFMTBCDField;
    CDSControlNETOGRAV2: TFMTBCDField;
    CDSControlTOTAL: TFMTBCDField;
    CDSControlNETO: TFMTBCDField;
    CDSControlTASA: TFMTBCDField;
    CDSControlIMPORTE: TFMTBCDField;
    CDSControlFECHACOMPRA: TSQLTimeStampField;
    CDSControlNETO_IB: TFMTBCDField;
    CDSControlTASA_IB: TFMTBCDField;
    CDSControlIMPORTE_IB: TFMTBCDField;
    CDSControlNETO_PER: TFMTBCDField;
    CDSControlTASA_PER: TFMTBCDField;
    CDSControlIMPORTE_PER: TFMTBCDField;
    CDSControlNETOMONOTRIBUTO2: TFMTBCDField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    Total1: TJvCalcEdit;
    Total2: TJvCalcEdit;
    UpDown1: TUpDown;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlImpuestoCompra: TFormControlImpuestoCompra;

implementation

uses UDMain_FD, UMuestraCpbteCtaCteCompra;

{$R *.DFM}

procedure TFormControlImpuestoCompra.BuscarExecute(Sender: TObject);
Var Aux1,Aux2:Real;
begin
  inherited;
  CDSControl.Close;
  CDSControl.Params.ParamByName('desde').Value:=desde.Date;
  CDSControl.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSControl.Open;
  CDSControl.DisableControls;
  CDSControl.First;
  while not(CDSControl.Eof) DO
  begin
    if CDSControlTIPOCPBTE.Value<>'NC' Then
      begin
        Aux1:=Aux1+CDSControlTOTAL.AsFloat;
        Aux2:=Aux2+CDSControlTOTAL2.AsFloat;
      end
    else
      begin
        Aux1:=Aux1-CDSControlTOTAL.AsFloat;
        Aux2:=Aux2-CDSControlTOTAL2.AsFloat;
      end;
    CDSControl.Next;
  end;
  CDSControl.First;
  CDSControl.EnableControls;
  Total1.Value:=Aux1;
  Total2.Value:=Aux2;
  pnPrincipal.Enabled:=True;
end;
procedure TFormControlImpuestoCompra.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlImpuestoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlImpuestoCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlImpuestoCompra:=nil;
end;

procedure TFormControlImpuestoCompra.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;


procedure TFormControlImpuestoCompra.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.date));
  buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormControlImpuestoCompra.VerComprobanteExecute(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormMuestraCpbteCtaCteCompra)) Then
    FormMuestraCpbteCtaCteCompra:=TFormMuestraCpbteCtaCteCompra.Create(Application);
  FormMuestraCpbteCtaCteCompra.id   := CDSControlID_FC.Value;
  FormMuestraCpbteCtaCteCompra.Tipo := CDSControlTIPOCPBTE.Value;
  FormMuestraCpbteCtaCteCompra.ShowModal;
end;

end.