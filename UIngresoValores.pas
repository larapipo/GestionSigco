unit UIngresoValores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExControls, JvGradient, ExtCtrls, JvDBControls, DBCtrls, JvDBLookup, Spin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,System.Math,System.Types;

type
  TFormValores = class(TForm)
    pnBase: TPanel;
    pnEfectivo: TPanel;
    Label1: TLabel;
    pnImporteVta: TPanel;
    Label2: TLabel;
    pnVuelto: TPanel;
    Label3: TLabel;
    edVuelto: TJvCalcEdit;
    btOk: TBitBtn;
    pnTCredito: TPanel;
    btCancelar: TBitBtn;
    edEfectivo: TJvCalcEdit;
    Label8: TLabel;
    edNetoTarjeta: TJvCalcEdit;
    QTCredito: TFDQuery;
    DSTCredito: TDataSource;
    QTCreditoCoef: TFDQuery;
    QTCreditoID_TC: TIntegerField;
    QTCreditoDESCRIPCION: TStringField;
    QTCreditoMONEDA: TIntegerField;
    QTCreditoCODIGOARTICULO: TStringField;
    QTCreditoID_CUENTA_BANCO: TIntegerField;
    QTCreditoDIAS_ACREDITACION: TSmallintField;
    QTCreditoCUIT: TStringField;
    QTCreditoRAZONSOCIAL: TStringField;
    DSTCreditoCoef: TDataSource;
    edVenta: TJvCalcEdit;
    pnTarjetas: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    dbgTarjetas: TDBGrid;
    edTotalTC: TJvCalcEdit;
    edCupon: TDBEdit;
    mtTarjetas: TFDMemTable;
    mtTarjetasID: TIntegerField;
    mtTarjetasID_TARJETA: TIntegerField;
    mtTarjetasMUESTRATARJETA: TStringField;
    mtTarjetasNETO: TFloatField;
    mtTarjetasCUOTAS: TIntegerField;
    mtTarjetasCOEFICIENTE: TFloatField;
    mtTarjetasCUOTAVALOR: TFloatField;
    mtTarjetasRECARGO: TFloatField;
    mtTarjetasIMPORTE: TFloatField;
    mtTarjetasNROCUPON: TIntegerField;
    mtTarjetasCODIGO: TStringField;
    DSTarjetas: TDataSource;
    QTCreditoCoefID: TIntegerField;
    QTCreditoCoefID_TC: TIntegerField;
    QTCreditoCoefCUOTAS: TIntegerField;
    QTCreditoCoefCOEFICIENTE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edNetoTarjetaEnter(Sender: TObject);
    procedure edEfectivoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgTarjetasColEnter(Sender: TObject);
    procedure dbgTarjetasExit(Sender: TObject);
    procedure dbgTarjetasKeyPress(Sender: TObject; var Key: Char);
    procedure edEfectivoExit(Sender: TObject);
    procedure mtTarjetasAfterDelete(DataSet: TDataSet);
    procedure mtTarjetasAfterInsert(DataSet: TDataSet);
    procedure mtTarjetasAfterPost(DataSet: TDataSet);
    procedure mtTarjetasBeforeInsert(DataSet: TDataSet);
    procedure mtTarjetasBeforePost(DataSet: TDataSet);
    procedure mtTarjetasNewRecord(DataSet: TDataSet);
    procedure mtTarjetasID_TARJETAChange(Sender: TField);
    procedure mtTarjetasNETOSetText(Sender: TField; const Text: string);
    procedure mtTarjetasCUOTASChange(Sender: TField);
    procedure edEfectivoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FVenta          : Extended;
    FVuelto         : Extended;
    FEfectivo       : Extended;
    FTCredito       : Extended;
    FTCreditoNeto   : Extended;
    FTCCuotas       : Integer;
    FTCCoeficiente  : Extended;
    FID_TC          : Integer;
    FTCCuotaValor   : Extended;
    FTCRecargo      : Extended;
    FTCCodigo       : String;
    FMovTC          : TFDMemTable;
    procedure Sumar;
  public
    { Public declarations }
  published
    property Venta:Extended read FVenta write FVenta;
    property Vuelto:Extended read FVuelto write FVuelto;
    property Efectivo:Extended read FEfectivo write FEfectivo;
  //  property TCredito:Extended read FTCredito write FTCredito;
    property TCreditoNeto:Extended read FTCreditoNeto write FTCreditoNeto;
//    property TCCuotas:Integer read FTCCuotas write FTCCuotas;
//    property TCCoeficiente:Extended read FTCCoeficiente write FTCCoeficiente;
//    property ID_TC:Integer read FID_TC write FID_TC;
//    property TCCuotaValor:Extended read FTCCuotaValor write FTCCuotaValor;
    property TCRecargoValor:Extended read FTCRecargo write FTCRecargo;
    property TCCodigo:String read FTCCodigo write FTCCodigo;
    property MovTC:TFDMemTable read FMovTC;
  end;

var
  FormValores: TFormValores;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormValores.Sumar;
begin
  FTCRecargo       := 0;
  edTotalTC.Value  := 0;
  mtTarjetas.First;
  while not(mtTarjetas.Eof) do
    begin
      edTotalTC.Value := edTotalTC.Value + mtTarjetasIMPORTE.Value;
      FTCRecargo      := FTCRecargo + mtTarjetasRECARGO.Value;
      mtTarjetas.Next;
    end;
end;

procedure TFormValores.btOkClick(Sender: TObject);
var Control:Boolean;
Valores,Venta,Dif:Integer;
begin
  Control:=False;
  if Not(mtTarjetas.IsEmpty) then
    begin
      mtTarjetas.First;
      while not(mtTarjetas.Eof) do
        begin
          if mtTarjetasMUESTRATARJETA.Value='' then
            Control:=True;
          mtTarjetas.Next;
        end;
    end;

  if (Control=True) then
    raise Exception.Create('Faltan Tarjetas..');

  FVuelto            := edVuelto.Value;
  FTCreditoNeto      := edTotalTC.Value;
  FEfectivo          := edEfectivo.Value;

  if (Trunc(FTCreditoNeto*100)=0) and (Trunc(edVenta.Value*100)>0) and (Trunc(edEfectivo.Value*100)<=0) then
    FEfectivo:=edVenta.Value;

  Valores:= Trunc((FEfectivo+FTCreditoNeto-FVuelto)*100);
  Venta  := Trunc(FVenta*100);
  Dif    := Abs(Venta-VaLores);
  if Not(IsZero(Dif,1)) then
    raise Exception.Create('Los Valores ingresados superan el valor de la venta..');
end;

procedure TFormValores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormValores.Visible := False;
  FVuelto             := edVuelto.Value;
  FTCreditoNeto       := edTotalTC.Value;
  FEfectivo           := edEfectivo.Value;
  FMovTC              := mtTarjetas;
  Action:=caFree;
end;

procedure TFormValores.FormCreate(Sender: TObject);
begin
  AutoSize    :=True;
 // mtTarjetas.Open;
 // btOk.Enabled:=False;
end;

procedure TFormValores.FormDestroy(Sender: TObject);
begin
  FormValores:=nil;
end;

procedure TFormValores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TDBGrid))
    then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end
  else
    if Key = #27 then
      Close;

end;

procedure TFormValores.FormShow(Sender: TObject);
begin
  QTCredito.CLose;
  QTCredito.Open;
  QTcredito.First;
  QTCreditoCoef.Close;
  QTCreditoCoef.ParamByName('id_tc').Value:=QTCreditoID_TC.Value;
  QTCreditoCoef.Open;
  mtTarjetas.Close;
  mtTarjetas.Open;
  edVenta.Value        := FVenta;
  edVuelto.Value       := FVuelto;
  edNetoTarjeta.Value  := 0;
  edEfectivo.Value     := 0;
  FTCredito            := 0;
  FTCreditoNeto        := 0;
  edEfectivo.SetFocus;
  edEfectivo.SelectAll;
end;




procedure TFormValores.mtTarjetasAfterDelete(DataSet: TDataSet);
begin
  Sumar;
  edTotalTC.Value:=0;
  mtTarjetas.First;
  while not(mtTarjetas.Eof)  do
    begin
      edTotalTC.Value:=edTotalTC.Value+mtTarjetasIMPORTE.Value;
      mtTarjetas.Next;
    end;
end;

procedure TFormValores.mtTarjetasAfterInsert(DataSet: TDataSet);
begin
  dbgTarjetas.SelectedIndex:=0;
end;

procedure TFormValores.mtTarjetasAfterPost(DataSet: TDataSet);
begin
  Sumar;
  edTotalTC.Value:=0;
  mtTarjetas.First;
  while not(mtTarjetas.Eof)  do
    begin
      edTotalTC.Value :=edTotalTC.Value + mtTarjetasIMPORTE.Value;
      mtTarjetas.Next;
    end;
end;

procedure TFormValores.mtTarjetasBeforeInsert(DataSet: TDataSet);
begin
  if CompareValue( Trunc((edEfectivo.Value+edTotalTC.Value)*100),Trunc(edVenta.Value *100),1) = EqualsValue then
    begin
      pnVuelto.SetFocus;
      btOk.SetFocus;
      mtTarjetas.Cancel;
      sysutils.Abort;
    end;
end;

procedure TFormValores.mtTarjetasBeforePost(DataSet: TDataSet);
begin
  if Trim(mtTarjetasMUESTRATARJETA.AsString)='' then
    begin
      ShowMessage('Falta Tarjeta....');
      mtTarjetas.Cancel;
      sysutils.Abort;
      dbgTarjetas.SetFocus;
      dbgTarjetas.SelectedIndex:=0;
    end;
end;

procedure TFormValores.mtTarjetasCUOTASChange(Sender: TField);
begin
  if mtTarjetasMUESTRATARJETA.Value<>'' then
    begin
      if QTCreditoCoef.Locate('CUOTAS',mtTarjetasCUOTAS.Value,[]) Then
        mtTarjetasCOEFICIENTE.Value:=QTCreditoCoefCOEFICIENTE.Value;

      if (mtTarjetasNETO.Value>0) and (Not(VarIsNull(mtTarjetasID_TARJETA.Value))) and (mtTarjetasID_TARJETA.Value>0) then
        begin
          mtTarjetasIMPORTE.Value    := mtTarjetasNETO.Value * mtTarjetasCOEFICIENTE.Value;
          mtTarjetasRECARGO.Value    := mtTarjetasIMPORTE.Value-mtTarjetasNETO.Value;
          if mtTarjetasCUOTAS.Value>0 then
            mtTarjetasCUOTAVALOR.Value  :=mtTarjetasNETO.Value/mtTarjetasCUOTAS.Value;

          edVuelto.Value:= edEfectivo.Value - (edVenta.Value - edTotalTC.Value );

          if edVuelto.Value<0 Then edVuelto.Value:=0;
    //   edVuelto.Value:= (edEfectivo.Value +  edNetoTarjeta.Value ) -edVenta.Value;
        end;
    end;
end;

procedure TFormValores.mtTarjetasID_TARJETAChange(Sender: TField);
begin
 if mtTarjetasMUESTRATARJETA.LookupDataSet.FieldByName('CODIGOARTICULO').Value<>'' then
    begin
      mtTarjetasCODIGO.Value:= mtTarjetasMUESTRATARJETA.LookupDataSet.FieldByName('CODIGOARTICULO').Value;
      QTCreditoCoef.Close;
      QTCreditoCoef.Params.ParamByName('id_tc').Value:=mtTarjetasID_TARJETA.Value;
      QTCreditoCoef.Open;
      QTCreditoCoef.First;
    end;
end;

procedure TFormValores.mtTarjetasNETOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString := Text;
  mtTarjetasIMPORTE.Value    := Sender.AsFloat * mtTarjetasCOEFICIENTE.Value;
  mtTarjetasCUOTAVALOR.Value := mtTarjetasIMPORTE.Value/mtTarjetasCUOTAS.Value;
end;

procedure TFormValores.mtTarjetasNewRecord(DataSet: TDataSet);
begin
  mtTarjetasID_TARJETA.Value  := -1;
  mtTarjetasCUOTAS.Value      := 1;
  mtTarjetasRECARGO.Value     := 0;
  mtTarjetasIMPORTE.Value     := edNetoTarjeta.Value-edTotalTC.Value;
  mtTarjetasNETO.Value        := edNetoTarjeta.Value-edTotalTC.Value;
  mtTarjetasCOEFICIENTE.Value := 1;
  mtTarjetasCUOTAVALOR.Value  := edNetoTarjeta.Value-edTotalTC.Value;
  mtTarjetasNROCUPON.Value    := 0;
end;



procedure TFormValores.dbgTarjetasColEnter(Sender: TObject);
begin
  if dbgTarjetas.SelectedIndex>3 then
    dbgTarjetas.SelectedIndex:=0;
  
end;

procedure TFormValores.dbgTarjetasExit(Sender: TObject);
begin
  if dbgTarjetas.DataSource.DataSet.State<>dsBrowse then
    dbgTarjetas.DataSource.DataSet.Post;
end;

procedure TFormValores.dbgTarjetasKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key=#13) and (mtTarjetasMUESTRATARJETA.Value<>'') then
    begin
      Key:=#0;
      if  dbgTarjetas.SelectedIndex<3 then
        dbgTarjetas.SelectedIndex:= dbgTarjetas.SelectedIndex+1
      ELSE
        BEGIN
          dbgTarjetas.DataSource.DataSet.Append;
          dbgTarjetas.SelectedIndex:=0;
        END;

    end;
end;



procedure TFormValores.edEfectivoChange(Sender: TObject);
begin
   if not(mtTarjetas.IsEmpty) then
    begin
      mtTarjetas.EmptyDataSet;
      edNetoTarjeta.Value:=0;
      edTotalTC.Value    :=0;
    end;
  edNetoTarjeta.Value:= 0;
  edNetoTarjeta.Value:= (edVenta.Value - edEfectivo.Value );


  if edNetoTarjeta.Value<0  then
    edNetoTarjeta.Value:=0;

  edVuelto.Value:= edEfectivo.Value - (edVenta.Value - edNetoTarjeta.Value );
  if edvuelto.Value<0  then
    edvuelto.Value:=0;

end;

procedure TFormValores.edEfectivoExit(Sender: TObject);
begin
  edNetoTarjeta.Value:=edVenta.Value-edEfectivo.Value;
  if edNetoTarjeta.Value<0  then
    edNetoTarjeta.Value:=0;
end;

procedure TFormValores.edEfectivoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) then
    begin
      Key:=#0;
      edNetoTarjeta.Value := edVenta.Value-edEfectivo.Value;

      if (edNetoTarjeta.Value<=0) then
        begin
          pnVuelto.SetFocus;
          btOk.SetFocus;
        end
      else
        pnTCredito.SetFocus;

    end;
end;

procedure TFormValores.edNetoTarjetaEnter(Sender: TObject);
begin
  edNetoTarjeta.Value := edVenta.Value - edEfectivo.Value;
  if edNetoTarjeta.Value<=0 Then
    begin
      edNetoTarjeta.Value:=0;
      btOk.SetFocus;
    end;
  edNetoTarjeta.SelectAll;
end;

end.
