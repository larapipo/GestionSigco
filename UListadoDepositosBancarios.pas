unit UListadoDepositosBancarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, StdCtrls, Mask,   Grids, DBGrids,
  Buttons, ToolWin, ExtCtrls,Librerias,
  frxDBSet, frxClass, frxExportRTF, ImgList, JvComponentBase,
  JvExControls, JvGradient, frxExportCSV, frxExportHTML, frxExportPDF,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  JvDBLookup, Provider, DBClient, JvExDBGrids, JvDBGrid, System.Actions,
  JvAppStorage, JvAppIniStorage, Data.DB, Vcl.ActnList,VirtualUI_SDK,
  CompBuscador, DataExport, DataToXLS, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormListadoDepositoBco = class(TFormABMBase)
    Label1: TLabel;
    UpDown1: TUpDown;
    DSCtaCajaBco: TDataSource;
    DSDepositos: TDataSource;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frListaMov: TfrxReport;
    frDBMov: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    DSDepositosdetalles: TDataSource;
    fxDBDetalle: TfrxDBDataset;
    Sumar: TAction;
    lbEfectivo: TLabel;
    lbCheques: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    lbTotal: TLabel;
    lb4: TLabel;
    dbcCtaBanco: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSCtaCajaBco: TClientDataSet;
    DSPCtaCajaBco: TDataSetProvider;
    CDSCtaCajaBcoID_CUENTA: TIntegerField;
    CDSCtaCajaBcoID_TIPO_CTA: TIntegerField;
    CDSCtaCajaBcoNOMBRE: TStringField;
    CDSCtaCajaBcoNRO_CUENTA: TStringField;
    CDSCtaCajaBcoID_BANCO: TIntegerField;
    CDSCtaCajaBcoCUIT: TStringField;
    CDSCtaCajaBcoRAZONSOCIAL: TStringField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosID_CTA_CAJA: TIntegerField;
    CDSDepositosFECHA: TSQLTimeStampField;
    CDSDepositosNUMERO: TStringField;
    CDSDepositosEFEC_CHEQ: TStringField;
    CDSDepositosNUMEROCAJA: TIntegerField;
    CDSDepositosFECHA_INCIO: TSQLTimeStampField;
    CDSDepositosFECHA_CIERRE: TSQLTimeStampField;
    CDSDepositosTIPODEPOSITO: TStringField;
    CDSDepositosDetalle: TClientDataSet;
    DSPDepositosDetalle: TDataSetProvider;
    CDSDepositosDetalleID_COMPROBANTE: TIntegerField;
    CDSDepositosDetalleFECHA_CAJA: TSQLTimeStampField;
    CDSDepositosDetalleFECHA_OPERACION: TSQLTimeStampField;
    CDSDepositosDetalleTIPO_COMPROB: TStringField;
    CDSDepositosDetalleNRO_COMPROBANTE: TStringField;
    CDSDepositosDetalleFECHA_COBRO: TSQLTimeStampField;
    CDSDepositosDetalleFECHA_EMISION: TSQLTimeStampField;
    CDSDepositosDetalleNUMERO: TIntegerField;
    CDSDepositosDetalleNOMBRE: TStringField;
    CDSDepositosDetalleORIGEN: TStringField;
    CDSDepositosMUESTRACTABANCARIA: TStringField;
    CDSDepositosMUESTRAIDCAJAMOV: TIntegerField;
    CDSDepositosMUESTRANOMCAJA: TStringField;
    DSCtaCaja: TDataSource;
    CDSCtaCaja: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    DSPCtaCaja: TDataSetProvider;
    Label2: TLabel;
    dbcCtaCaja: TJvDBLookupCombo;
    dbgMov: TJvDBGrid;
    dbgCheq: TJvDBGrid;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    btExcel: TBitBtn;
    ToolButton2: TToolButton;
    DataToXLS1: TDataToXLS;
    dlgSave1: TSaveDialog;
    Label3: TLabel;
    QDepositos: TFDQuery;
    QCtaCaja: TFDQuery;
    QCtaCajaBco: TFDQuery;
    QDepositosDetalle: TFDQuery;
    CDSDepositosIMPORTE: TFloatField;
    CDSDepositosDetalleDEBE: TFloatField;
    CDSDepositosDetalleHABER: TFloatField;
    CDSDepositosDetalleIMPORTE: TFloatField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbcCtaBancoClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure SumarExecute(Sender: TObject);
    procedure CDSDepositosCalcFields(DataSet: TDataSet);
    procedure CDSDepositosAfterScroll(DataSet: TDataSet);
    procedure dbgMovTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgCheqTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgMovDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoDepositoBco: TFormListadoDepositoBco;

implementation

uses  UDMain_FD, UDepositosBancarios;

{$R *.DFM}

procedure TFormListadoDepositoBco.UpDown1Click(Sender: TObject;
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
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoDepositoBco.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListaMov.DesignReport;
end;

procedure TFormListadoDepositoBco.SumarExecute(Sender: TObject);
var Efectivo,Cheques:Real;
begin
  inherited;
  Efectivo:=0;
  Cheques :=0;
  CDSDepositos.First;
  CDSDepositos.DisableControls;
  while not(CDSDepositos.Eof) do
    begin
      if CDSDepositosEFEC_CHEQ.Value='E' then
        Efectivo:=Efectivo+CDSDepositosIMPORTE.AsFloat
      else
        if CDSDepositosEFEC_CHEQ.Value='C' then
          Cheques:=Cheques+CDSDepositosIMPORTE.AsFloat;
      CDSDepositos.Next;
    end;
  CDSDepositos.First;
  CDSDepositos.EnableControls;
  lbEfectivo.Caption:=FormatFloat(',0.00',Efectivo);
  lbCheques.Caption:=FormatFloat(',0.00',Cheques);
  lbTotal.Caption:=FormatFloat(',0.00',Cheques+Efectivo);
end;

procedure TFormListadoDepositoBco.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSDepositos.IsEmpty) THEN
    BEGIN
      dlgSave1.FileName:='Depositos';
      dlgSave1.DefaultExt:='XLS';
      if dlgSave1.Execute Then
        if dlgSave1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(dlgSave1.FileName+'.'+dlgSave1.DefaultExt)
            else
              DataToXLS1.SaveToFile(dlgSave1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(dlgSave1.FileName+'.'+dlgSave1.DefaultExt);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoDepositoBco.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('id_ctaBco').AsInteger     := StrToInt(dbcCtaBanco.Value);
  CDSDepositos.Params.ParamByName('id_ctaCajaMov').AsInteger := StrToInt(dbcCtaCaja.Value);
  CDSDepositos.Params.ParamByName('Desde').AsDate     := Desde.Date;
  CDSDepositos.Params.ParamByName('Hasta').AsDate     := Hasta.Date;
  CDSDepositos.Open;

  CDSDepositosDetalle.Close;
  CDSDepositosDetalle.Params.ParamByName('id').AsInteger := CDSDepositosID.Value;
  CDSDepositosDetalle.Open;
  Sumar.Execute;
end;

procedure TFormListadoDepositoBco.CDSDepositosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSDepositosDetalle.Close;
  CDSDepositosDetalle.Params.ParamByName('id').AsInteger := CDSDepositosID.Value;
  CDSDepositosDetalle.Open;
end;

procedure TFormListadoDepositoBco.CDSDepositosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSDepositosEFEC_CHEQ.Value='C' Then
    CDSDepositosTipoDeposito.Value:='Cheques'
  else
    if CDSDepositosEFEC_CHEQ.Value='E' Then
      CDSDepositosTipoDeposito.Value:='Efectivo';
end;

procedure TFormListadoDepositoBco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSCtaCaja.Close;
  CDSCtaCajaBco.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormListadoDepositoBco.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+ DMMain_FD.Nombre_PC;
  CDSCtaCaja.Open;
  CDSCtaCajaBco.Open;
end;

procedure TFormListadoDepositoBco.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoDepositoBco:=nil;
end;

procedure TFormListadoDepositoBco.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
//  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormListadoDepositoBco.ImprimirExecute(Sender: TObject);
begin
  inherited;

  DMMain_FD.QEmpresa.Open;
  frListaMov.PrintOptions.Printer:=PrNomListados;
  frListaMov.SelectPrinter;
  frListaMov.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListadoDepositosBancarios.fr3');
  frListaMov.Variables['Desde']:=''''+Desde.Text+'''';
  frListaMov.Variables['Hasta']:=''''+Hasta.Text+'''';
  frListaMov.Variables['Cuenta']:=''''+dbcCtaBanco.Text+'''';
  frListaMov.Variables['CuentaCaja']:=''''+dbcCtaCaja.Text+'''';


  frListaMov.ShowReport;
  DMMain_FD.QEmpresa.Close;

end;

procedure TFormListadoDepositoBco.dbcCtaBancoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoDepositoBco.dbgCheqTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgCheq.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

procedure TFormListadoDepositoBco.dbgMovDblClick(Sender: TObject);
begin
  inherited;
  if not (Assigned(FormDepositosBancarios)) then
    FormDepositosBancarios := TFormDepositosBancarios.Create(Self);
  FormDepositosBancarios.DatoNew:=IntToStr(CDSDepositosID.Value);
  FormDepositosBancarios.Recuperar.Execute;
  FormDepositosBancarios.Show;

end;

procedure TFormListadoDepositoBco.dbgMovTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgMov.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

end.