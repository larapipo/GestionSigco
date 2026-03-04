unit UListadoOtPuntaje;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Mask,   Grids, DBGrids,Librerias,
  DBClient, Provider,  frxDBSet, frxClass, Variants, ImgList,
  JvExControls, JvGradient, JvComponentBase, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, JvToolEdit, JvExMask, SqlExpr, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormMovimientosPuntaje = class(TFormABMBase)
    DSOt: TDataSource;
    dbgMovimientos: TDBGrid;
    Label1: TLabel;
    edNombreCliente: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    TraerMov: TAction;
    DSPOt: TDataSetProvider;
    CDSOt: TClientDataSet;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    DSPenalizaciones: TDataSource;
    DSPPenalizaciones: TDataSetProvider;
    CDSPenalizaciones: TClientDataSet;
    btImprimir: TBitBtn;
    frMov: TfrxReport;
    frDBPenales: TfrxDBDataset;
    frDBOTr: TfrxDBDataset;
    Imprimir: TAction;
    DSPEmpresa: TDataSetProvider;
    ceCliente: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSOtID_OT: TIntegerField;
    CDSOtTIPOCPBTE: TStringField;
    CDSOtRESPONSABLE_OT: TStringField;
    CDSOtCLASECPBTE: TStringField;
    CDSOtNROCPBTE: TStringField;
    CDSOtMUESTRARESPONSABLE: TStringField;
    CDSOtPENALES: TIntegerField;
    CDSPenalizacionesID: TIntegerField;
    CDSPenalizacionesID_OT: TIntegerField;
    CDSPenalizacionesNRO_OT: TStringField;
    CDSPenalizacionesEMPLEADO: TStringField;
    CDSPenalizacionesMOTIVO: TStringField;
    CDSBuscaEmpleados: TClientDataSet;
    DSPBuscaEmpleados: TDataSetProvider;
    CDSBuscaEmpleadosNOMBRE: TStringField;
    CDSBuscaEmpleadosCODIGO: TStringField;
    QPersonal: TFDQuery;
    QPersonalCODIGO: TStringField;
    QPersonalNOMBRE: TStringField;
    QOt: TFDQuery;
    CDSOtPUNTOS: TFloatField;
    QPenalizaciones: TFDQuery;
    CDSPenalizacionesPUNTOS: TFloatField;
    CDSOtFECHAINICIO: TSQLTimeStampField;
    CDSOtFECHAESTIMADA: TSQLTimeStampField;
    CDSOtFECHAFINAL: TSQLTimeStampField;
    CDSPenalizacionesFECHA: TSQLTimeStampField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure TraerMovExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSOtAfterScroll(DataSet: TDataSet);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure dbgMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMovimientosPuntaje: TFormMovimientosPuntaje;

implementation

{$R *.DFM}
uses DMBuscadoresForm,UDMain_FD;

procedure TFormMovimientosPuntaje.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(1))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-1));
  TraerMov.Execute;

end;

procedure TFormMovimientosPuntaje.TraerMovExecute(Sender: TObject);
BEGIN
  if (Hasta.Date>=Desde.Date) Then
    begin
      CDSOt.Close;
      CDSOt.Params.ParamByName('responsable').Value:=ceCliente.Text;
      CDSOt.Params.ParamByName('desde').Value:=Desde.Date;
      CDSOt.Params.ParamByName('hasta').Value:=Hasta.Date;
      CDSOt.Open;
      CDSOt.First;
    end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');
END;


procedure TFormMovimientosPuntaje.FormCreate(Sender: TObject);
var
d,m,y:word;
begin
  inherited;
  AutoSize := True;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
  Desde.Date := IncMonth(Hasta.Date,(-1* RangoFechasEmpleado));
  CDSOt.Open;
end;

procedure TFormMovimientosPuntaje.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormMovimientosPuntaje.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMovimientosPuntaje:=nil;
end;

procedure TFormMovimientosPuntaje.BuscarExecute(Sender: TObject);
begin
  inherited;
  TraerMov.Execute;
end;

procedure TFormMovimientosPuntaje.CDSOtAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSPenalizaciones.Close;
  CDSPenalizaciones.Params.ParamByName('id').Value:=CDSOtID_OT.Value;
  CDSPenalizaciones.Open;
end;

procedure TFormMovimientosPuntaje.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  CDSBuscaEmpleados.Close;
  CDSBuscaEmpleados.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      ceCliente.Text      :=comBuscadorBase.Id;
      QPersonal.Close;
      QPersonal.ParamByName('codigo').AsString:=comBuscadorBase.Id;
      QPersonal.Open;
      edNombreCliente.Text:=QPersonalNOMBRE.AsString;
      QPersonal.Close;
      TraerMov.Execute;
    end;
  CDSBuscaEmpleados.Close;
end;

procedure TFormMovimientosPuntaje.dbgMovimientosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (VarIsNull(CDSOtPENALES.Value) or (CDSOtPENALES.Value=0)) Then
     dbgMovimientos.Canvas.Font.Style:=[]
  else
     dbgMovimientos.Canvas.Font.Style:=[fsBold];
  dbgMovimientos.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormMovimientosPuntaje.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
begin
  inherited;
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
          TraerMov.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END
      else
        begin
          ceCliente.Text:='';
          edNombreCliente.Text :='' ;
        end;
    END;

end;

procedure TFormMovimientosPuntaje.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not (ActiveControl is TJvComboEdit)) Then
    inherited;

end;

procedure TFormMovimientosPuntaje.ImprimirExecute(Sender: TObject);
begin
  inherited;

  CDSEmpresa.Open;

  frMov.PrintOptions.Printer:=PrNomListados;
  frMov.SelectPrinter;
  frMov.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoOTPorPuntaje.fr3');
  frMov.Variables['Empleado']:=''''+edNombreCliente.Text+'''';
  frMov.Variables['Desde']:=''''+Desde.Text+'''';
  frMov.Variables['Hasta']:=''''+Hasta.Text+'''';

  // frCtaCte.PrepareReport;
  frMov.ShowReport;
  CDSEmpresa.Close;
  ceCliente.SetFocus;
  ceCliente.SelectAll;
end;

procedure TFormMovimientosPuntaje.FormShow(Sender: TObject);
begin
  inherited;
  ceCliente.SetFocus;
end;

procedure TFormMovimientosPuntaje.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frMov.DesignReport;
end;

end.