unit UBalanzaSerie;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, VaClasses, VaComm,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvExControls, JvLabel, JvDBControls, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  IniFiles, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, frxDesgn, frxClass, frxFDComponents, frCoreClasses,
  frxExportBaseDialog, frxExportPDF, frDPIAwareControls,
  frxDPIAwareBaseControls, frxPreview, frxDBSet, Datasnap.Provider,
  Datasnap.DBClient, frxBarcode;

type
  TFormLecturaBascula = class(TFormABMBase)
    edPeso: TEdit;
    btLeer: TBitBtn;
    LeerPeso: TAction;
    Timer: TTimer;
    chAutomatico: TCheckBox;
    cbPuerto: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QArticulos: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    DSArticulos: TDataSource;
    edSenasa: TEdit;
    Label2: TLabel;
    JvDBFindEdit1: TJvDBFindEdit;
    edFechaEnvase: TJvDateEdit;
    Label3: TLabel;
    edObs: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edFechaProduccion: TJvDateEdit;
    Label7: TLabel;
    edFechaVencimiento: TJvDateEdit;
    Label8: TLabel;
    edTropa: TEdit;
    Label9: TLabel;
    frxReport1: TfrxReport;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    frxPDFExport1: TfrxPDFExport;
    edEtiqueta: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    frxDBEmpresa: TfrxDBDataset;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
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
    DSEmpresa: TDataSource;
    frxBarCodeObject1: TfrxBarCodeObject;
    edTitulo1: TEdit;
    edTitulo2: TEdit;
    edTitulo3: TEdit;
    edTitulo4: TEdit;
    Imprimir: TAction;
    frxDBArticulo: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure LeerPesoExecute(Sender: TObject);
    procedure chAutomaticoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBFindEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    fError       : Integer;
    fRespuesta   : string;
    Fcomm        : TVaComm;
    ArchivoIni   : TIniFile;
  end;

var
  FormLecturaBascula: TFormLecturaBascula;

implementation

{$R *.dfm}

uses UDMain_FD;



procedure TFormLecturaBascula.chAutomaticoClick(Sender: TObject);
begin
  inherited;
  Timer.Enabled:=chAutomatico.Checked;
end;

procedure TFormLecturaBascula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni                             := TIniFile.Create(DMMain_FD.MainPath+'Bascula.ini');
  ArchivoIni.WriteInteger('puerto', 'numero', cbPuerto.itemIndex);
  ArchivoIni.WriteBool('modo', 'automatico', chAutomatico.Checked);
  ArchivoIni.WriteString('senasa', 'codigo', edSenasa.Text);
  ArchivoIni.WriteString('titulo1', 'texto', edTitulo1.Text);
  ArchivoIni.WriteString('titulo2', 'texto', edTitulo2.Text);
  ArchivoIni.WriteString('titulo3', 'texto', edTitulo3.Text);
  ArchivoIni.WriteString('titulo4', 'texto', edTitulo4.Text);
  ArchivoIni.WriteString('etiqueta', 'etiqueta', edEtiqueta.Text);


  ArchivoIni.Free;

  Fcomm.Free;
  Action:=caFree;
end;

procedure TFormLecturaBascula.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni                   := TIniFile.Create(DMMain_FD.MainPath+'Bascula.ini');
  cbPuerto.ItemIndex           := ArchivoIni.ReadInteger('puerto','numero', 0);
  chAutomatico.Checked         := ArchivoIni.ReadBool('modo', 'automatico', false);
  edSenasa.Text                := ArchivoIni.ReadString('senasa', 'codigo', '');
  edTitulo1.Text               := ArchivoIni.ReadString('titulo1', 'texto', '');
  edTitulo2.Text               := ArchivoIni.ReadString('titulo2', 'texto', '');
  edTitulo3.Text               := ArchivoIni.ReadString('titulo3', 'texto', '');
  edTitulo4.Text               := ArchivoIni.ReadString('titulo4', 'texto', '');

  edEtiqueta.Text             := ArchivoIni.ReadString('etiqueta', 'etiqueta', '');

  ArchivoIni.Free;

  fComm             := tvacomm.Create(self);
  fComm.Baudrate    := br9600;
  fcomm.DirectWrite := true;
  Fcomm.PortNum     := cbPuerto.ItemIndex+1;
  Fcomm.DataBits    := db8;
  Fcomm.Stopbits    := sb1;
  Fcomm.Parity      := paNone;


end;

procedure TFormLecturaBascula.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLecturaBascula:=nil;
end;

procedure TFormLecturaBascula.FormShow(Sender: TObject);
begin
  inherited;
  QArticulos.Close;
  QArticulos.Open;
  CDSEmpresa.Close;
  CDSEmpresa.Open;
end;

procedure TFormLecturaBascula.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReport1.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edEtiqueta.Text);

  frxReport1.Variables['Codigo']           := QArticulosCODIGO_STK.AsString;
  frxReport1.Variables['Detalle']          := QArticulosDETALLE_STK.AsString;
  frxReport1.Variables['FechaEnvase']      := QuotedStr(edFechaEnvase.Text);
  frxReport1.Variables['FechaVencimiento'] := QuotedStr(edFechaVencimiento.Text);
  frxReport1.Variables['FechaProduccion']  := QuotedStr(edFechaProduccion.Text);
  frxReport1.Variables['CodigoSenasa']     := QuotedStr(edSenasa.Text);
  frxReport1.Variables['Tropa']            := QuotedStr(edTropa.Text);
  frxReport1.Variables['Titulo1']          := QuotedStr(edTitulo1.Text);
  frxReport1.Variables['Titulo2']          := QuotedStr(edTitulo2.Text);
  frxReport1.Variables['Titulo3']          := QuotedStr(edTitulo3.Text);
  frxReport1.Variables['Titulo4']          := QuotedStr(edTitulo4.Text);
  frxReport1.Variables['peso']             := QuotedStr(edPeso.Text);

  frxReport1.ShowReport;
end;

procedure TFormLecturaBascula.JvDBFindEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_DOWN then
    QArticulos.Next
  else
    if Key=VK_UP then
      QArticulos.Prior;
end;

procedure TFormLecturaBascula.LeerPesoExecute(Sender: TObject);
var Mensaje: String;
    Result : AnsiString;
    Valor  : Extended;
begin
  inherited;
  Timer.Enabled:=False;
  try
  if Fcomm.Active then
   begin
     Fcomm.Close;
     Sleep(20)
   end;
  if Fcomm.PortNum>0 then
    begin
      Fcomm.Open;
      Mensaje:=#05;
      if Fcomm.Active then
        begin
          if Fcomm.WriteText(mensaje) then
            begin
              Result  :='';
              Sleep(50);
              Result  := Fcomm.ReadText;
              if Trim(Result)<>'' then
                begin
                  Valor  := (StrToFloat(Copy(Result,2,Length(Result)-3))) * 0.1;
                  edPeso.Text:=FormatFloat(',0.0',Valor);
                end;
            end;
       end;
    end;
  Fcomm.Close;
  except

  end;

  Timer.Enabled:=chAutomatico.Checked;

end;

procedure TFormLecturaBascula.sbEstadoDblClick(Sender: TObject);
begin
  inherited;

  frxReport1.DesignReport(True);
end;

procedure TFormLecturaBascula.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;

  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edEtiqueta.Text := OpenDialog.FileName;
        Lon1            := Length(OpenDialog.InitialDir);
        Lon2            := Length(OpenDialog.FileName);
        edEtiqueta.Text  := Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edEtiqueta.Text:='';
end;

end.
