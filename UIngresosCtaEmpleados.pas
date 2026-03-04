unit UIngresosCtaEmpleados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, StdCtrls, Buttons, ToolWin, ComCtrls,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvToolEdit, JvExMask, IBGenerator,
  System.Actions, Datasnap.Provider, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls,
  JvAppStorage, JvAppIniStorage, Vcl.ExtCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormIngresoEmpleados = class(TFormABMBase)
    CDSMovCtaCte: TClientDataSet;
    DSPMovCtaCte: TDataSetProvider;
    Label1: TLabel;
    dbeMuestraEmpleado: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbenumero: TDBEdit;
    Label5: TLabel;
    dbeDetalle: TDBEdit;
    Label6: TLabel;
    dbeImporte: TDBEdit;
    BuscarEmpleado: TAction;
    CDSMovCtaCteID: TIntegerField;
    CDSMovCtaCteIDADELANTO: TIntegerField;
    CDSMovCtaCteCODIGO: TStringField;
    CDSMovCtaCteFECHA: TSQLTimeStampField;
    CDSMovCtaCteCLASECOMP: TStringField;
    CDSMovCtaCteNROCPBTE: TStringField;
    CDSMovCtaCteDETALLE: TStringField;
    CDSMovCtaCteMUESTRAEMPLEADO: TStringField;
    QUltimoCodigoMAX: TStringField;
    CDSBuscaEmpleado: TClientDataSet;
    DSPBuscaEmpleado: TDataSetProvider;
    CDSBuscaEmpleadoNOMBRE: TStringField;
    CDSBuscaEmpleadoCODIGO: TStringField;
    rxcCodigo: TJvDBComboEdit;
    dbeFecha: TJvDBDateEdit;
    ibgId: TIBGenerator;
    spDetalleLiq: TSpeedButton;
    ToolButton1: TToolButton;
    DetalleLiq: TAction;
    ComBuscadorEmpleado: TComBuscador;
    QBuscaEm: TFDQuery;
    QMovCtaCte: TFDQuery;
    QMovCtaCteID: TIntegerField;
    QMovCtaCteIDADELANTO: TIntegerField;
    QMovCtaCteCODIGO: TStringField;
    QMovCtaCteFECHA: TSQLTimeStampField;
    QMovCtaCteCLASECOMP: TStringField;
    QMovCtaCteNROCPBTE: TStringField;
    QMovCtaCteDETALLE: TStringField;
    QMovCtaCteDEBE: TFloatField;
    QMovCtaCteHABER: TFloatField;
    QMovCtaCteMUESTRAEMPLEADO: TStringField;
    CDSMovCtaCteDEBE: TFloatField;
    CDSMovCtaCteHABER: TFloatField;
    QEmpleado: TFDQuery;
    QEmpleadoNOMBRE: TStringField;
    procedure CDSMovCtaCteCODIGOSetText(Sender: TField;
      const Text: String);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSMovCtaCteNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSMovCtaCteNROCPBTESetText(Sender: TField; const Text: string);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure DetalleLiqExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function AsignarEmpleado(dato:String):Boolean;

    { Public declarations }
  end;

var
  FormIngresoEmpleados: TFormIngresoEmpleados;

implementation

uses UBuscadorIngresosCtaEmpleados, URegLiquiComisiones,UDMain_FD;

{$R *.DFM}

function TFormIngresoEmpleados.AsignarEmpleado(dato:String):Boolean;
begin
  QEmpleado.Close;
  QEmpleado.ParamByName('Codigo').Value:=Dato;
  QEmpleado.Open;
  if Not(QEmpleado.IsEmpty) Then
    begin
      Result:=True;
      CDSMovCtaCteMUESTRAEMPLEADO.Value:=QEmpleadoNOMBRE.Value;
      end
    else
      begin
        Result:=False;
        CDSMovCtaCteMUESTRAEMPLEADO.Value:='';
      end;
  QEmpleado.Close;
end;

procedure TFormIngresoEmpleados.CDSMovCtaCteCODIGOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;;
      if not(AsignarEmpleado(Sender.AsString)) Then
        begin
          Sender.AsString := '';
          ShowMessage('Codigo No Valido');
          rxcCodigo.SetFocus;
        end;
    end;
end;

procedure TFormIngresoEmpleados.BorrarExecute(Sender: TObject);
var Cadena:String;
begin
  Cadena:='Borrado de Movimiento de Personal '+ CDSMovCtaCteFECHA.AsString +' '+ CDSMovCtaCteMUESTRAEMPLEADO.AsString+
                     ' Importe '+FormatFloat(',0.00',CDSMovCtaCteDEBE.AsFloat)+' Detalle: '+CDSMovCtaCteDETALLE.AsString;
  inherited;
  DMMain_FD.LogFileFD(1,2,Cadena,'PERSONAL');

end;

procedure TFormIngresoEmpleados.BuscarEmpleadoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaEmpleado.Close;
  CDSBuscaEmpleado.Open;
  comBuscadorEmpleado.Execute;
    if comBuscadorEmpleado.rOk Then
      CDSMovCtaCteCODIGOSetText(CDSMovCtaCteCODIGO,comBuscadorEmpleado.Id);
  CDSBuscaEmpleado.Close;
end;

procedure TFormIngresoEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormIngresoEmpleados.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=true;
  AddClientDataSet(CDSMovCtaCte,DSPMovCtaCte);
  CDSMovCtaCte.Open;
  Tabla:='ctactepersonal';
  Campo:='id';
end;

procedure TFormIngresoEmpleados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormIngresoEmpleados:=nil;
end;

procedure TFormIngresoEmpleados.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMovCtaCte.Close;
  CDSMovCtaCte.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  CDSMovCtaCte.Open;
end;

procedure TFormIngresoEmpleados.CDSMovCtaCteNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMovCtaCteID.Value         := ibgId.IncrementFD(1);
  CDSMovCtaCteFECHA.AsDateTime := Date;
  CDSMovCtaCteDEBE.AsFloat     := 0;
  CDSMovCtaCteHABER.AsFloat    := 0;
  CDSMovCtaCteCLASECOMP.Value  := 'IP';
end;

procedure TFormIngresoEmpleados.CDSMovCtaCteNROCPBTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('0000000000000',1,Sender.Size-length(Trim(Text)))+Trim(Text);
end;

procedure TFormIngresoEmpleados.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMovCtaCteID.AsString;
  if Trim(CDSMovCtaCteNROCPBTE.AsString)='' then
    CDSMovCtaCteNROCPBTESetText(CDSMovCtaCteNROCPBTE,CDSMovCtaCteCODIGO.AsString+DatoNew);
  inherited;
  Recuperar.Execute;
end;

procedure TFormIngresoEmpleados.DetalleLiqExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRegLiquidacionComi)) then
    FormRegLiquidacionComi:=TFormRegLiquidacionComi.Create(Self);
  FormRegLiquidacionComi.id:=CDSMovCtaCteID.Value;
  FormRegLiquidacionComi.Codigo:=CDSMovCtaCteCODIGO.Value;
  FormRegLiquidacionComi.Nombre:=CDSMovCtaCteMUESTRAEMPLEADO.Value;

  FormRegLiquidacionComi.show;
end;

procedure TFormIngresoEmpleados.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  DetalleLiq.Enabled:= (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
end;

procedure TFormIngresoEmpleados.AgregarExecute(Sender: TObject);
begin
  inherited;
  if FormIngresoEmpleados.Visible then
    rxcCodigo.SetFocus;
end;

procedure TFormIngresoEmpleados.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorIngresosEmpleados)) Then
    FormBuscadorIngresosEmpleados:=TFormBuscadorIngresosEmpleados.Create(Application);
  FormBuscadorIngresosEmpleados.ShowModal;
  if FormBuscadorIngresosEmpleados.ModalResult=mrOk Then
    begin
      datoNew :=IntToStr(FormBuscadorIngresosEmpleados.id);
      Recuperar.Execute;
    end;
end;

end.