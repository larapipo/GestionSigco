unit UCtaCteEmpleados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frxDBSet, frxClass, Db, Menus, ActnList, DBClient,  Provider, StdCtrls, Buttons, Mask,
  Grids, ExtCtrls, Librerias,IniFiles,Printers,
  ComCtrls, JvExControls, JvGradient, DBGrids, JvExDBGrids, JvDBGrid,
  JvToolEdit, JvExMask, FMTBcd, SqlExpr, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls,StrUtils, frCoreClasses;

type
  TFormCtaCteEmpleados = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edNombreCliente: TEdit;
    btImprimir: TBitBtn;
    btVerCC: TBitBtn;
    BitBtn2: TBitBtn;
    DSMovCC: TDataSource;
    DSPMovCC: TDataSetProvider;
    ActionList1: TActionList;
    TraerCtaCte: TAction;
    Imprimir: TAction;
    BuscarEmpleado: TAction;
    DSPEmpresa: TDataSetProvider;
    frCtaCte: TfrxReport;
    frDBDSCtaCte: TfrxDBDataset;
    UpDown1: TUpDown;
    dbgCC: TJvDBGrid;
    ceCliente: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSEmpresa: TClientDataSet;
    CDSMovCC: TClientDataSet;
    CDSMovCCSaldo: TFloatField;
    CDSMovCCID: TIntegerField;
    CDSMovCCIDADELANTO: TIntegerField;
    CDSMovCCCODIGO: TStringField;
    CDSMovCCCLASECOMP: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSBuscaPersonal: TClientDataSet;
    DSPBuscaPersonal: TDataSetProvider;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    ComBuscadorEmpleados: TComBuscador;
    SpeedButton1: TSpeedButton;
    QMovCC: TFDQuery;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    QPerson: TFDQuery;
    QSaldoIncial: TFDQuery;
    QSaldoIncialSALDO: TFloatField;
    DBText1: TDBText;
    DSPersonal: TDataSource;
    CDSPersonal: TClientDataSet;
    DSPPersonal: TDataSetProvider;
    CDSPersonalCARGO: TIntegerField;
    CDSPersonalCATEGORIA: TIntegerField;
    CDSPersonalCTACONTABLE: TIntegerField;
    CDSPersonalDOMICILIO: TStringField;
    CDSPersonalESTADO_CIVIL: TStringField;
    CDSPersonalFECHA_INGRESO: TSQLTimeStampField;
    CDSPersonalFECHA_NACIMIENTO: TSQLTimeStampField;
    CDSPersonalCODIGO: TStringField;
    CDSPersonalLOCALIDAD: TIntegerField;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalTELEFONO_1: TStringField;
    CDSPersonalTELEFONO_2: TStringField;
    CDSPersonalMUESTRACARGO: TStringField;
    CDSPersonalMUESTRACATEGORIA: TStringField;
    CDSPersonalMUESTRALOCALIDAD: TStringField;
    CDSPersonalMUESTRACPOSTAL: TStringField;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    CDSMovCCFECHA: TDateField;
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
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    procedure ceClienteButtonClick(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure TraerCtaCteExecute(Sender: TObject);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbgCCDblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RangoFechas,PrListados,PrDefault:Integer;
    PrNomListados:String;
    PROCEDURE TraeCC(Dato: STRING; VAR SaldoInicial:Real);
  end;

var
  FormCtaCteEmpleados: TFormCtaCteEmpleados;

implementation

uses DMBuscadoresForm, UAdelantosSueldos,UDMain_FD,
     UIngresosCtaEmpleados, UAnulacionAdelantosSueldo, UListadoGralCCtePersonal;
{$R *.DFM}

PROCEDURE TFormCtaCteEmpleados.TraeCC(dato: STRING; VAR SaldoInicial:Real);
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value := Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.eof) THEN
    BEGIN
      QSaldoIncial.Close;
      QSaldoIncial.ParamByName('Codigo').Value := Dato;
      QSaldoIncial.ParamByName('Desde').Value  := Desde.Date;
      QSaldoIncial.Open;
      SaldoInicial:=QSaldoIncial.Fields[0].AsFloat;
      QSaldoIncial.Close;

      edNombreCliente.Text := CDSPersonalNOMBRE.Value;

      CDSMovCC.Close;
      CDSMovCC.Params.ParamByName('Codigo').AsString  := Dato;
      CDSMovCC.Params.ParamByName('Desde').AsDate     := Desde.Date;
      CDSMovCC.Params.ParamByName('Hasta').AsDate     := Hasta.Date;
      CDSMovCC.Open;
    END;
  //QPersonal.Close;
END;

procedure TFormCtaCteEmpleados.ceClienteButtonClick(Sender: TObject);
begin
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.IndexDefs.Clear;
  CDSBuscaPersonal.IndexFieldNames:='';
  CDSBuscaPersonal.Open;
  ComBuscadorEmpleados.Execute;
  IF comBuscadorEmpleados.rOk THEN
    BEGIN
      ceCliente.Text :=AnsiRightStr('000000'+IntToStr(comBuscadorEmpleados.Id),6);
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('Codigo').Value :=ceCliente.Text;// comBuscadorEmpleados.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.eof) THEN
        BEGIN
          edNombreCliente.Text:=CDSPersonalNOMBRE.Value;
          TraerCtaCte.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;
  CDSBuscaPersonal.Close;
end;

procedure TFormCtaCteEmpleados.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('Codigo').Value := Dato;
      CDSPersonal.Open;
      IF NOT(CDSPersonal.eof) THEN
        begin
          edNombreCliente.Text := CDSPersonalNOMBRE.Value;
          TraerCtaCte.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END
      else
        begin
          ceCliente.Text:='';
          edNombreCliente.Text :='' ;
        end;
    END;
END;

procedure TFormCtaCteEmpleados.dbgCCDblClick(Sender: TObject);
begin
  if CDSMovCCCLASECOMP.Value='IP' then
    begin
      if Not(Assigned(FormIngresoEmpleados)) then
        FormIngresoEmpleados      := TFormIngresoEmpleados.Create(Self);
      FormIngresoEmpleados.DatoNew:= CDSMovCCID.AsString;
      FormIngresoEmpleados.Recuperar.Execute;
      FormIngresoEmpleados.show;
    end
  else
    if (CDSMovCCDEBE.Value<=0) and (CDSMovCCHABER.Value>0) then
      begin
        if Not(Assigned(FormAdelantosSueldo)) then
          FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Self);
        FormAdelantosSueldo.DatoNew   := CDSMovCCIDADELANTO.AsString;
        FormAdelantosSueldo.TipoCpbte := 'VA';
        FormAdelantosSueldo.Recuperar.Execute;
        FormAdelantosSueldo.Show;
      end
    else
      if (CDSMovCCHABER.Value<=0) and (CDSMovCCDEBE.Value>0) then
        begin
          if Not(Assigned(FormAnulacionAdelantos)) then
            FormAnulacionAdelantos:=TFormAnulacionAdelantos.Create(Self);
          FormAnulacionAdelantos.DatoNew   := CDSMovCCIDADELANTO.AsString;
          FormAnulacionAdelantos.TipoCpbte := 'AV';
          FormAnulacionAdelantos.Recuperar.Execute;
          FormAnulacionAdelantos.Show;
        end


end;

procedure TFormCtaCteEmpleados.TraerCtaCteExecute(Sender: TObject);
VAR
  Debe, Haber,Saldo: Real;
BEGIN
  if (Hasta.Date>=Desde.Date) Then
    begin
      TraeCC(ceCliente.Text,Saldo);
      Debe := Saldo;
      Haber := 0;
      CDSMovCC.DisableControls;
      CDSMovCC.First;
    //  wwCDSMovCCSaldoCC.Value := SaldoInicial;
      WHILE NOT (CDSMovCC.Eof) DO
        BEGIN
          Debe  := CDSMovCCDEBE.AsFloat + Debe;
          Haber := CDSMovCCHABER.AsFloat + Haber;
          CDSMovCC.Edit;
          CDSMovCCSaldo.Value := Debe - Haber;
          CDSMovCC.Next;
        END;
      CDSMovCC.EnableControls;
    end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');
  ceCliente.SetFocus;
END;

procedure TFormCtaCteEmpleados.BuscarEmpleadoExecute(Sender: TObject);
begin
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.Open;
  ComBuscadorEmpleados.Execute;
  IF comBuscadorEmpleados.rOk THEN
    BEGIN
      ceCliente.Text :=comBuscadorEmpleados.Id;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('Codigo').Value := comBuscadorEmpleados.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSPersonalNOMBRE.Value;
          TraerCtaCte.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
  CDSBuscaPersonal.Close;
end;

procedure TFormCtaCteEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCtaCteEmpleados.FormCreate(Sender: TObject);
VAR ArchivoIni:TIniFile;
d,m,y:word;
begin
  AutoSize := False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  //Impresoras
  PrNomListados   :=ArchivoIni.ReadString('Impresoras', 'Listados', '');
  // Rango de Fechas
  RangoFechas  :=ArchivoIni.ReadInteger('RangoFechas', 'CtaCteEmpleado', 30);

  ArchivoIni.Free;

  // Tomo la Impresora por defecto.

  PrListados:=Printer.Printers.IndexOf(PrNomListados);


  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;


  // IncMonth: Incrementa la canitdad de meses lo multiplico x -1 para que decremnte

  CDSMovCC.Open;


end;

procedure TFormCtaCteEmpleados.FormDestroy(Sender: TObject);
begin
  FormCtaCteEmpleados:=nil;
end;

procedure TFormCtaCteEmpleados.FormResize(Sender: TObject);
begin
  if FormCtaCteEmpleados<>nil then
    if FormCtaCteEmpleados.Width<>867 then
      FormCtaCteEmpleados.Width:=867;

end;

procedure TFormCtaCteEmpleados.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCtaCteEmpleados.ImprimirExecute(Sender: TObject);
begin
 
  CDSEmpresa.Open;

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

  frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\CtaCteEmpleado.fr3');
  frCtaCte.Variables['Empleado']:=''''+edNombreCliente.Text+'''';
  frCtaCte.Variables['desde']   :=''''+Desde.Text+'''';
  frCtaCte.Variables['hasta']   :=''''+Hasta.Text+'''';
  // frCtaCte.PrepareReport;
  frCtaCte.ShowReport;
  CDSEmpresa.Close;
  ceCliente.SetFocus;
  ceCliente.SelectAll;

end;

procedure TFormCtaCteEmpleados.Panel1DblClick(Sender: TObject);
begin
  frCtaCte.DesignReport;
end;

procedure TFormCtaCteEmpleados.SpeedButton1Click(Sender: TObject);
begin
  if Not(Assigned(FormListadoCCtaPersonal)) then
    FormListadoCCtaPersonal:=TFormListadoCCtaPersonal.Create(self);
  FormListadoCCtaPersonal.Desde:=Desde.Date;
  FormListadoCCtaPersonal.Hasta:=Hasta.Date;
  FormListadoCCtaPersonal.ShowModal;

end;

procedure TFormCtaCteEmpleados.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  ceCliente.SetFocus;
end;

procedure TFormCtaCteEmpleados.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  if ceCliente.Text<>'' Then
  TraerCtaCte.Execute;
end;

end.
