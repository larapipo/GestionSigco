unit UListadoPercIB_FcVta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, StdCtrls, Mask,   Grids, DBGrids,
  Menus, DataExport, DataToAscii, frxClass, frxDBSet, DB, JvComponentBase,
  ImgList,   ActnList,IniFiles,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls,Librerias,
  JvToolEdit, Provider, DBClient,DateUtils,Math,Variants, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, Data.FMTBcd, JvExMask, JvLabel,
  Data.SqlExpr, JvFormPlacement, JvDBControls, DataToXLS, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportPDF, AdvGroupBox, AdvOfficeButtons, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormListadoPercIB_FcVta = class(TFormABMBase)
    dbgRetenciones: TDBGrid;
    UpDown1: TUpDown;
    DSPercepciones: TDataSource;
    frPercepciones: TfrxReport;
    frDBDSPercepciones: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    DataToTxtWeb: TDataToAscii;
    ExportarTxt: TAction;
    SaveDialog: TSaveDialog;
    PopupMenu1: TPopupMenu;
    ExportaraTxt1: TMenuItem;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSPercepciones: TClientDataSet;
    DSPPercepciones: TDataSetProvider;
    CDSPercepcionesID_FC: TIntegerField;
    CDSPercepcionesTIPOCPBTE: TStringField;
    CDSPercepcionesCLASECPBTE: TStringField;
    CDSPercepcionesLETRAFAC: TStringField;
    CDSPercepcionesRAZONSOCIAL: TStringField;
    CDSPercepcionesCUIT: TStringField;
    CDSPercepcionesSUCFAC: TStringField;
    CDSPercepcionesNUMEROFAC: TStringField;
    CDSPercepcionesNROCPBTE: TStringField;
    CDSPercepcionesPERC_IB_CALCULADA: TFloatField;
    CDSPercepcionesTIPO_CPBTE_AFIP: TStringField;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    CDSPercepcionesTIPOOP: TStringField;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    CDSPercepcionesPERCEPCION_STR: TStringField;
    CDSPercepcionesTOTAL_STR: TStringField;
    JvLabel: TJvLabel;
    cbSeparador: TComboBox;
    CDSPercepcionesTOTAL_CALCULADO: TFloatField;
    DataToTxt_2: TDataToAscii;
    ExportarTxt_2: TAction;
    ExportaraTxtSIFERE1: TMenuItem;
    edActividad: TEdit;
    JvLabel1: TJvLabel;
    ExportarTexto_3: TAction;
    Button1: TButton;
    CDSPercepcionesMUESTRASUCURSAL: TStringField;
    DataToXLS: TDataToXLS;
    ExportarXLS: TAction;
    N1: TMenuItem;
    ExportarXLS1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    QPercepciones: TFDQuery;
    CDSPercepcionesNETOGRAV2: TFloatField;
    CDSPercepcionesTOTAL: TFloatField;
    CDSPercepcionesPERCEPCION_IB_IMPORTE: TFloatField;
    CDSPercepcionesPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    pnCabecera: TPanel;
    rgInforma: TAdvOfficeRadioGroup;
    CDSPercepcionesCODIGO_AFIP: TStringField;
    CDSPercepcionesFECHAVTA: TSQLTimeStampField;
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
    pnPie: TPanel;
    edIIBB: TMaskEdit;
    edTotalFC: TMaskEdit;
    ExportarPercepccionesIIBB_V2: TAction;
    N2: TMenuItem;
    ExportarPercepccionesIIBBV21: TMenuItem;
    CDSPercepcionesALICUOTA: TStringField;
    CDSPercepcionesPERCEPCION_IB_TASA: TFloatField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure ExportarTxtExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSPercepcionesCalcFields(DataSet: TDataSet);
    procedure ExportarTxt_2Execute(Sender: TObject);
    procedure dbgRetencionesDblClick(Sender: TObject);
    procedure ExportarTexto_3Execute(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure ExportarPercepccionesIIBB_V2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchioIni:TiniFile
  end;

var
  FormListadoPercIB_FcVta: TFormListadoPercIB_FcVta;

implementation

uses UFactura_2, UFacturaCtdo_2,UDMAin_FD;

{$R *.DFM}

procedure TFormListadoPercIB_FcVta.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

procedure TFormListadoPercIB_FcVta.FormShow(Sender: TObject);
var d,m,y:word;
begin
  CDSEmpresa.Open;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;


procedure TFormListadoPercIB_FcVta.ImprimirExecute(Sender: TObject);
begin
  inherited;
 
  frPercepciones.PrintOptions.Printer:=PrNomListados;
  frPercepciones.SelectPrinter;
  frPercepciones.LoadFromFile(DMMain_FD.PathReportesLst+'\Percep_IB_FcVta.fr3');
  frPercepciones.Variables['desde']   :=''''+Desde.Text+'''';
  frPercepciones.Variables['hasta']   :=''''+Hasta.Text+'''';
 // frPercepciones.PrepareReport;
  frPercepciones.ShowReport;
end;

procedure TFormListadoPercIB_FcVta.BuscarExecute(Sender: TObject);
var IB,Total:Extended;
begin
  inherited;
  CDSPercepciones.close;
  CDSPercepciones.Params.ParamByName('desde').Value:=Desde.Date;
  CDSPercepciones.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSPercepciones.Open;
  IB   :=0;
  Total:=0;

  CDSPercepciones.First;
  CDSPercepciones.DisableControls;
  while not(CDSPercepciones.Eof) do
    begin
      IB:=IB+CDSPercepcionesPERC_IB_CALCULADA.Value;
      Total:=Total+CDSPercepcionesTOTAL.Value;
      CDSPercepciones.Next;
    end;
  edIIBB.Text:=FormatFloat(',0.00;-,0.00;-',IB);
  edTotalFC.Text:=FormatFloat(',0.00;-,0.00;-',Total);
  CDSPercepciones.EnableControls;

end;

procedure TFormListadoPercIB_FcVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstPercepcionesIIBB.ini');
  ArchivoIni.WriteString('Actividad','codigo',edActividad.Text);
  ArchivoIni.WriteInteger('separador','codigo',cbSeparador.ItemIndex);
  ArchivoIni.Free;
  inherited;
  CDSPercepciones.Close;
  CDSEmpresa.Close;
  Action:=caFree;
end;

procedure TFormListadoPercIB_FcVta.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstPercepcionesIIBB.ini');
  edActividad.Text     :=ArchivoIni.ReadString('Actividad','codigo','6');
  cbSeparador.ItemIndex:=ArchivoIni.ReadInteger('separador','codigo',1);
  ArchivoIni.Free;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

end;

procedure TFormListadoPercIB_FcVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoPercIB_FcVta:=nil;
end;

procedure TFormListadoPercIB_FcVta.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frPercepciones.DesignReport;
end;

procedure TFormListadoPercIB_FcVta.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frPercepciones.DesignReport;
end;

procedure TFormListadoPercIB_FcVta.CDSPercepcionesCalcFields(DataSet: TDataSet);
var pos, cant:Integer;
Dato:String;
begin
  inherited;
  if CDSPercepcionesTIPOCPBTE.Value='NC' Then
    CDSPercepcionesPERC_IB_CALCULADA.Value:=CDSPercepcionesPERCEPCION_IB_IMPORTE.AsFloat*-1
  else
    CDSPercepcionesPERC_IB_CALCULADA.Value:=CDSPercepcionesPERCEPCION_IB_IMPORTE.AsFloat;

  if CDSPercepcionesTIPOCPBTE.Value='NC' Then
    CDSPercepcionesTOTAL_CALCULADO.Value:=CDSPercepcionesPERCEPCION_IB_BASEIMPONIBLE.AsFloat*-1
  else
    CDSPercepcionesTOTAL_CALCULADO.Value:=CDSPercepcionesPERCEPCION_IB_BASEIMPONIBLE.AsFloat;


  if (CDSPercepcionesTIPOCPBTE.Value='FC') or (CDSPercepcionesTIPOCPBTE.Value='FO') or (CDSPercepcionesTIPOCPBTE.Value='TK') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='F'
  else
    if (CDSPercepcionesTIPOCPBTE.Value='NC') Then
      CDSPercepcionesTIPO_CPBTE_AFIP.Value:='C'
    else
      if (CDSPercepcionesTIPOCPBTE.Value='ND') Then
        CDSPercepcionesTIPO_CPBTE_AFIP.Value:='D';

  if (CDSPercepcionesTIPOCPBTE.Value='FC') and (CDSPercepcionesCODIGO_AFIP.Value='201') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='E';

  if (CDSPercepcionesTIPOCPBTE.Value='FC') and (CDSPercepcionesCODIGO_AFIP.Value='206') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='E';

  if (CDSPercepcionesTIPOCPBTE.Value='FC') and (CDSPercepcionesCODIGO_AFIP.Value='211') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='E';


  if (CDSPercepcionesTIPOCPBTE.Value='NC') and (CDSPercepcionesCODIGO_AFIP.Value='203') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='H';

  if (CDSPercepcionesTIPOCPBTE.Value='NC') and (CDSPercepcionesCODIGO_AFIP.Value='208') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='H';
   if (CDSPercepcionesTIPOCPBTE.Value='NC') and (CDSPercepcionesCODIGO_AFIP.Value='213') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='H';

  if (CDSPercepcionesTIPOCPBTE.Value='ND') and (CDSPercepcionesCODIGO_AFIP.Value='202') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='I';

  if (CDSPercepcionesTIPOCPBTE.Value='ND') and (CDSPercepcionesCODIGO_AFIP.Value='207') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='I';
  if (CDSPercepcionesTIPOCPBTE.Value='ND') and (CDSPercepcionesCODIGO_AFIP.Value='212') Then
    CDSPercepcionesTIPO_CPBTE_AFIP.Value:='I';

 // lo uso para la generacion del archivo a arba
  CDSPercepcionesTIPOOP.Value:='A';

  if (cbSeparador.Text='.') then
    CDSPercepcionesTOTAL_STR.Value     := FormatFloat('000000000.00',CDSPercepcionesTOTAL_CALCULADO.AsFloat)
  else
    if (cbSeparador.Text=',') then
      CDSPercepcionesTOTAL_STR.Value   := FormatFloat('000000000,00',CDSPercepcionesTOTAL_CALCULADO.AsFloat);

  if (CDSPercepcionesTIPOCPBTE.Value<>'NC') then
    begin
      if (cbSeparador.Text='.') then
        CDSPercepcionesPERCEPCION_STR.Value  := FormatFloat('00000000.00',CDSPercepcionesPERC_IB_CALCULADA.AsFloat)
      else
        if (cbSeparador.Text=',') then
          CDSPercepcionesPERCEPCION_STR.Value:= FormatFloat('00000000,00',CDSPercepcionesPERC_IB_CALCULADA.AsFloat);
      if (cbSeparador.Text='.') then
         CDSPercepcionesTOTAL_STR.Value      := FormatFloat('000000000.00',CDSPercepcionesTOTAL_CALCULADO.AsFloat)
      else
        if (cbSeparador.Text=',') then
          CDSPercepcionesTOTAL_STR.Value     := FormatFloat('000000000,00',CDSPercepcionesTOTAL_CALCULADO.AsFloat);
    end
  else
    begin
      if (cbSeparador.Text='.') then
        CDSPercepcionesPERCEPCION_STR.Value  := FormatFloat('0000000.00',CDSPercepcionesPERC_IB_CALCULADA.AsFloat)
      else
        if (cbSeparador.Text=',') then
          CDSPercepcionesPERCEPCION_STR.Value:= FormatFloat('0000000,00',CDSPercepcionesPERC_IB_CALCULADA.AsFloat);
      if (cbSeparador.Text='.') then
        CDSPercepcionesTOTAL_STR.Value       := FormatFloat('00000000.00',CDSPercepcionesTOTAL_CALCULADO.AsFloat)
      else
        if (cbSeparador.Text=',') then
          CDSPercepcionesTOTAL_STR.Value     := FormatFloat('00000000,00',CDSPercepcionesTOTAL_CALCULADO.AsFloat);
    end;
  CDSPercepcionesALICUOTA.Value  := FormatFloat('00.00',CDSPercepcionesPERCEPCION_IB_TASA.AsFloat)


end;

procedure TFormListadoPercIB_FcVta.dbgRetencionesDblClick(Sender: TObject);
begin
  inherited;
  if ((CDSPercepcionesTIPOCPBTE.Value='FC') or (CDSPercepcionesTIPOCPBTE.Value='NC')) then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=CDSPercepcionesID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSPercepcionesTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSPercepcionesTIPOCPBTE.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  :=CDSPercepcionesID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSPercepcionesTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end;
end;

procedure TFormListadoPercIB_FcVta.ExportarPercepccionesIIBB_V2Execute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  Nombre,Cuit,Fecha,TipoAfip,Letra,SucFac,NroFac,Total,Percep,TipoOp,Alicuota: String;
  i:byte;
  y,m,d:Word;
  ano,mes:String;
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
 DecodeDate(Desde.Date,y,m,d);
 ano:=IntToStr(y);
 mes:=IntToStr(m);
 mes:=Copy('00',1,2-length(mes))+mes;
 cuit:=CDSEmpresaCUIT.Value;
 while Pos('-',cuit)>0 do
   Delete(cuit,Pos('-',cuit),1);
 case rgInforma.ItemIndex of
   0:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'1-7'+'-'+'LOTE1';
   1:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'2-7'+'-'+'LOTE1';
   2:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'0-7'+'-'+'LOTE1';
 end;
  //nombre:='AR'+Cuit+ano+mes+'07'+'LOTE1';
// nombre:='AR'+'-'+Cuit+'-'+ano+mes+'07'+'-'+'LOTE1';
 if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if rgInforma.ItemIndex=2 then
    DataToTxtWeb.Fields[8].Save:=False
  else
    DataToTxtWeb.Fields[8].Save:=True;

  SaveDialog.DefaultExt:='txt';
  SaveDialog.FileName  :=nombre;

  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  CDSPercepciones.First;
  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' then

    begin
      AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSPercepciones.Eof) do
        begin
          Cuit    := CDSPercepcionesCUIT.AsString;
          Fecha   := FormatDateTime('dd/mm/yyyy',CDSPercepcionesFECHAVTA.AsDateTime);
          TipoAfip:= CDSPercepcionesTIPO_CPBTE_AFIP.AsString;
          Letra   := CDSPercepcionesLETRAFAC.AsString;
          SucFac  := CDSPercepcionesSUCFAC.AsString;
          NroFac  := CDSPercepcionesNUMEROFAC.AsString;
          Total   := CDSPercepcionesTOTAL_STR.AsString;
          Percep  := CDSPercepcionesPERCEPCION_STR.AsString;
          Fecha   := FormatDateTime('dd/mm/yyyy',CDSPercepcionesFECHAVTA.AsDateTime);
          Alicuota:= CDSPercepcionesALICUOTA.AsString;
          TipoOp  := CDSPercepcionesTIPOOP.AsString;
          if rgInforma.ItemIndex=2 then
            WriteLn(ArchiTxt,Cuit,Fecha ,TipoAfip,Letra,SucFac,NroFac,
                             Total,Percep,TipoOp)
          else
            WriteLn(ArchiTxt,Cuit,Fecha ,TipoAfip,Letra,SucFac,NroFac,
                             Alicuota ,Total,Percep,Fecha,TipoOp);


          CDSPercepciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
    end;
  CDSPercepciones.First;
end;

procedure TFormListadoPercIB_FcVta.ExportarTexto_3Execute(Sender: TObject);
var
  ArchiTxt: TextFile;
  Nombre,Cuit,Fecha,TipoAfip,Letra,SucFac,NroFac,Total,Percep,TipoOp: String;
  i:byte;
  y,m,d:Word;
  ano,mes:String;
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
 DecodeDate(Desde.Date,y,m,d);
 ano:=IntToStr(y);
 mes:=IntToStr(m);
 mes:=Copy('00',1,2-length(mes))+mes;
 cuit:=CDSEmpresaCUIT.Value;
 while Pos('-',cuit)>0 do
   Delete(cuit,Pos('-',cuit),1);
 case rgInforma.ItemIndex of
   0:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'1-7'+'-'+'LOTE1';
   1:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'2-7'+'-'+'LOTE1';
   2:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'0-7'+'-'+'LOTE1';
 end;
  //nombre:='AR'+Cuit+ano+mes+'07'+'LOTE1';
// nombre:='AR'+'-'+Cuit+'-'+ano+mes+'07'+'-'+'LOTE1';
 if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if rgInforma.ItemIndex=2 then
    DataToTxtWeb.Fields[8].Save:=False
  else
    DataToTxtWeb.Fields[8].Save:=True;

  SaveDialog.DefaultExt:='txt';
  SaveDialog.FileName  :=nombre;

  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  CDSPercepciones.First;
  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' then

    begin
      AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSPercepciones.Eof) do
        begin
          Cuit    := CDSPercepcionesCUIT.AsString;
          Fecha   := FormatDateTime('dd/mm/yyyy',CDSPercepcionesFECHAVTA.AsDateTime);
          TipoAfip:= CDSPercepcionesTIPO_CPBTE_AFIP.AsString;
          Letra   := CDSPercepcionesLETRAFAC.AsString;
          SucFac  := CDSPercepcionesSUCFAC.AsString;
          NroFac  := CDSPercepcionesNUMEROFAC.AsString;
          Total   := CDSPercepcionesTOTAL_STR.AsString;
          Percep  := CDSPercepcionesPERCEPCION_STR.AsString;
          Fecha   := FormatDateTime('dd/mm/yyyy',CDSPercepcionesFECHAVTA.AsDateTime);
          TipoOp:= CDSPercepcionesTIPOOP.AsString;
          if rgInforma.ItemIndex=2 then
            WriteLn(ArchiTxt,Cuit,Fecha ,TipoAfip,Letra,SucFac,NroFac,
                             Total,Percep,TipoOp)
          else
            WriteLn(ArchiTxt,Cuit,Fecha ,TipoAfip,Letra,SucFac,NroFac,
                             Total,Percep,Fecha,TipoOp);


          CDSPercepciones.Next;
        end;
      CloseFile(ArchiTxt);
      if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName)
      else
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
    end;
  CDSPercepciones.First;
end;

procedure TFormListadoPercIB_FcVta.ExportarTxtExecute(Sender: TObject);
var nombre:string;
ano,mes,cuit:string;
d,m,y:Word;
begin
  inherited;
 DecodeDate(Desde.Date,y,m,d);
 ano:=IntToStr(y);
 mes:=IntToStr(m);
 mes:=Copy('00',1,2-length(mes))+mes;
 cuit:=CDSEmpresaCUIT.Value;
 while Pos('-',cuit)>0 do
   Delete(cuit,Pos('-',cuit),1);
 case rgInforma.ItemIndex of
   0:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'1-7'+'-'+'LOTE1';
   1:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'2-7'+'-'+'LOTE1';
   2:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'0-7'+'-'+'LOTE1';
 end;
 //nombre:='AR'+Cuit+ano+mes+'07'+'LOTE1';
// nombre:='AR'+'-'+Cuit+'-'+ano+mes+'07'+'-'+'LOTE1';
 if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if rgInforma.ItemIndex=2 then
    DataToTxtWeb.Fields[8].Save:=False
  else
    DataToTxtWeb.Fields[8].Save:=True;

  SaveDialog.DefaultExt:='txt';
  SaveDialog.FileName:=nombre;


  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      DataToTxtWeb.SaveToFile(SaveDialog.FileName);

end;

procedure TFormListadoPercIB_FcVta.ExportarTxt_2Execute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

 //nombre:='AR'+Cuit+ano+mes+'07'+'LOTE1';
// nombre:='AR'+'-'+Cuit+'-'+ano+mes+'07'+'-'+'LOTE1';
  SaveDialog.DefaultExt:='txt';
  SaveDialog.FileName:='percepciones';
  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      begin
        DataToTxt_2.SaveToFile(SaveDialog.FileName);
        if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName);
      end;
end;

procedure TFormListadoPercIB_FcVta.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog.DefaultExt:='xls';
  SaveDialog.FileName:='percepciones';
  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      begin
        if VirtualUI.Active then
          DataToXLS.SaveToFile(SaveDialog.FileName)
        else
          DataToXLS.SaveToFile(SaveDialog.FileName);

        if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName);
      end;
end;

end.