unit ULstPercepcionesIvaVta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  AdvGroupBox, AdvOfficeButtons, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider,DateUtils,IniFiles,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, DataToXLS, DataExport,
  DataToAscii,VirtualUI_SDK,System.StrUtils, frCoreClasses;

type
  TFormLstPercepcionesIvaVta = class(TFormABMBase)
    pnCabecera: TPanel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    UpDown1: TUpDown;
    dbgRetenciones: TDBGrid;
    QPercepciones: TFDQuery;
    DSPPercepciones: TDataSetProvider;
    CDSPercepciones: TClientDataSet;
    DSPercepciones: TDataSource;
    CDSPercepcionesID_FC: TIntegerField;
    CDSPercepcionesTIPOCPBTE: TStringField;
    CDSPercepcionesCLASECPBTE: TStringField;
    CDSPercepcionesLETRAFAC: TStringField;
    CDSPercepcionesRAZONSOCIAL: TStringField;
    CDSPercepcionesCUIT: TStringField;
    CDSPercepcionesFECHAVTA: TSQLTimeStampField;
    CDSPercepcionesSUCFAC: TStringField;
    CDSPercepcionesNUMEROFAC: TStringField;
    CDSPercepcionesNETOGRAV2: TFloatField;
    CDSPercepcionesTOTAL: TFloatField;
    CDSPercepcionesPERCEPCIONDETALLE: TStringField;
    CDSPercepcionesPERCEPCIONETO: TFloatField;
    CDSPercepcionesPERCEPCIONTASA: TFloatField;
    CDSPercepcionesPERCEPCIONIMPORTE: TFloatField;
    CDSPercepcionesNROCPBTE: TStringField;
    CDSPercepcionesMUESTRASUCURSAL: TStringField;
    CDSPercepcionesCODIGO_AFIP: TStringField;
    DSPEmpresa: TDataSetProvider;
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
    frPercepciones: TfrxReport;
    SaveDialog: TSaveDialog;
    frxPDFExport1: TfrxPDFExport;
    frDBDSPercepciones: TfrxDBDataset;
    btImprimir: TBitBtn;
    DataToTxt_2: TDataToAscii;
    DataToXLS: TDataToXLS;
    CDSPercepcionesTOTAL_STR: TStringField;
    CDSPercepcionesPERCEPCION_STR: TStringField;
    CDSPercepcionesTASA_STR: TStringField;
    CDSPercepcionesNETOPERCEP_STR: TStringField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ExportarTXT: TAction;
    Button1: TButton;
    Label1: TLabel;
    CDSPercepcionesCODIGOIMPUESTO: TStringField;
    CDSPercepcionesCODIGOREGIMEN: TStringField;
    CDSPercepcionesCODIGOOPERACION: TStringField;
    CDSPercepcionesCODIGOCONDICION: TStringField;
    CDSPercepcionesTIPODOCUMENTORETENIDO: TStringField;
    ExportarCICORE: TAction;
    JvLabel1: TJvLabel;
    ComboBox: TComboBox;
    CDSPercepcionesTIPOIVA: TIntegerField;
    ExportarContribuyente: TAction;
    CDSPercepcionesDIRECCION: TStringField;
    CDSPercepcionesLOCALIDAD: TStringField;
    CDSPercepcionesPROVINCIA: TStringField;
    Button2: TButton;
    Panel2: TPanel;
    edTotal: TEdit;
    edNC: TEdit;
    edFc: TEdit;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgRetencionesDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSPercepcionesCalcFields(DataSet: TDataSet);
    procedure ExportarTXTExecute(Sender: TObject);
    procedure ExportarCICOREExecute(Sender: TObject);
    procedure ExportarContribuyenteExecute(Sender: TObject);
    procedure dbgRetencionesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLstPercepcionesIvaVta: TFormLstPercepcionesIvaVta;

implementation
uses UDMain_FD, UFactura_2, UFacturaCtdo_2;

{$R *.dfm}

procedure TFormLstPercepcionesIvaVta.btImprimirClick(Sender: TObject);
begin
  inherited;
  frPercepciones.PrintOptions.Printer:=PrNomListados;
  frPercepciones.SelectPrinter;
  frPercepciones.LoadFromFile(DMMain_FD.PathReportesLst+'\Percep_IVA_FcVta.fr3');
  frPercepciones.Variables['desde']   :=''''+Desde.Text+'''';
  frPercepciones.Variables['hasta']   :=''''+Hasta.Text+'''';
 // frPercepciones.PrepareReport;
  frPercepciones.ShowReport;
end;

procedure TFormLstPercepcionesIvaVta.BuscarExecute(Sender: TObject);
var AuxFC,AuxNC:Extended;
begin
  inherited;
  CDSPercepciones.close;
  CDSPercepciones.Params.ParamByName('desde').Value:=Desde.Date;
  CDSPercepciones.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSPercepciones.Open;
  AuxFC:=0;AuxNC:=0;
  CDSPercepciones.First;
  CDSPercepciones.DisableControls;

  while Not(CDSPercepciones.Eof) do
    begin
      if CDSPercepcionesTIPOCPBTE.Value<>'NC' then
        AuxFC:=AuxFC+CDSPercepcionesPERCEPCIONIMPORTE.Value
      else
        AuxNC:=AuxNC+CDSPercepcionesPERCEPCIONIMPORTE.Value;

      CDSPercepciones.Next;
    end;
  CDSPercepciones.First;
  CDSPercepciones.EnableControls;
  edFc.Text:=FormatFloat(',0.00',AuxFC);
  edNC.Text:=FormatFloat(',0.00',AuxNC);
  edTotal.Text:=FormatFloat(',0.00',AuxFC-AuxNC);


end;

procedure TFormLstPercepcionesIvaVta.CDSPercepcionesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSPercepcionesTOTAL_STR.Value       := FormatFloat('000000000.00',CDSPercepcionesTOTAL.AsFloat);
  CDSPercepcionesPERCEPCION_STR.Value  := FormatFloat('000000000.00',CDSPercepcionesPERCEPCIONIMPORTE.AsFloat);
  CDSPercepcionesNETOPERCEP_STR.Value  := FormatFloat('000000000.00',CDSPercepcionesPERCEPCIONETO.AsFloat);
  CDSPercepcionesTASA_STR.Value        := FormatFloat('000000000.00',CDSPercepcionesPERCEPCIONTASA.AsFloat);
  if CDSPercepcionesTIPOCPBTE.Value='NC' Then
    begin
      CDSPercepcionesTOTAL_STR.Value       := FormatFloat('00000000.00',CDSPercepcionesTOTAL.AsFloat*-1);
      CDSPercepcionesPERCEPCION_STR.Value  := FormatFloat('00000000.00',CDSPercepcionesPERCEPCIONIMPORTE.AsFloat*-1);
      CDSPercepcionesNETOPERCEP_STR.Value  := FormatFloat('00000000.00',CDSPercepcionesPERCEPCIONETO.AsFloat*-1);
      CDSPercepcionesTASA_STR.Value        := FormatFloat('00000000.00',CDSPercepcionesPERCEPCIONTASA.AsFloat*-1);

    end;

end;

procedure TFormLstPercepcionesIvaVta.dbgRetencionesDblClick(Sender: TObject);
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

procedure TFormLstPercepcionesIvaVta.dbgRetencionesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if (gdFocused in State) then
      begin
        dbgRetenciones.canvas.Font.color := clWhite;
      end
    else
      begin
        dbgRetenciones.canvas.Font.color := clBlack;
     end;
  if (CDSPercepcionesTIPOCPBTE.Value='NC') then
    dbgRetenciones.Canvas.Font.Color:=clBlue;

    //Esta línea es nueva

    dbgRetenciones.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormLstPercepcionesIvaVta.ExportarCICOREExecute(Sender: TObject);
var
  ArchiTxt: TextFile;
  CodioCopprobante,Fecha,NroCpbte,ImporteCpbte,CodImpueto,CodRegimen,CodOperacion,
  BaseCalculo,FechaRet,CodigoCondicion,CodSujetoSupendido,ImporteRet,
  PorcentajeExclusion,FechaBoletin,TipoDocRetenido,
  NroDocRetendido,NroCertificado: String;
  i:byte;
begin
  SaveDialog.FileName:='PercepcionesIVA_SICORE'+FormatDateTime('MM-YYYY',Hasta.Date)+'.TXT';
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  CDSPercepciones.First;
  if SaveDialog.Execute Then
    begin
      SaveDialog.FileName:=SaveDialog.FileName;
      if Not(AnsiContainsText(SaveDialog.FileName,'.TXT')) then
        if VirtualUI.Active then
          SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSPercepciones.Eof) do
        begin
          TipoCpbte   := AnsiRightStr(CDSPercepcionesCODIGO_AFIP.AsString,2);// '01';
          Fecha       := FormatDateTime('DD/MM/YYYY',CDSPercepcionesFECHAVTA.AsDateTime);
          NroCpbte    := '0'+CDSPercepcionesSUCFAC.Value+'000'+CDSPercepcionesNUMEROFAC.AsString;
          ImporteCpbte:= FormatFloat('0000000000000.00',CDSPercepcionesTOTAL.AsFloat);
     
          CodImpueto  := '0767';
          CodRegimen  := Copy('000',1,3-Length(CDSPercepcionesCODIGOREGIMEN.AsString))+CDSPercepcionesCODIGOREGIMEN.AsString;
          if CodRegimen='000' then
            begin
              CodRegimen := Copy(ComboBox.Text,Pos(';',ComboBox.Text)+1,20);
              CodRegimen := Copy(CodRegimen,1,Pos(';',ComboBox.Text));
              CodRegimen := Trim(CodRegimen);
              CodRegimen := Copy('000',1,3-Length(CodRegimen))+CodRegimen;
            end;
          CodOperacion:='2';
          BaseCalculo :=FormatFloat('00000000000.00',Abs(CDSPercepcionesPERCEPCIONETO.AsFloat));
          FechaRet    :=FormatDateTime('DD/MM/YYYY',CDSPercepcionesFECHAVTA.AsDateTime);
          case CDSPercepcionesTIPOIVA.Value of
            1:CodigoCondicion:='14';
            2:CodigoCondicion:='02';
            3:CodigoCondicion:='03';
            4:CodigoCondicion:='03';
            5:CodigoCondicion:='03';
          end;

          CodSujetoSupendido :='0';
          ImporteRet         :=FormatFloat('00000000000.00',CDSPercepcionesPERCEPCIONIMPORTE.AsFloat);
          PorcentajeExclusion:='000.00';
          if CDSPercepcionesTIPOCPBTE.Value='NC' then
            BaseCalculo :=FormatFloat('00000000000.00',Abs(CDSPercepcionesPERCEPCIONIMPORTE.AsFloat));

          FechaBoletin       :='          ';
          TipoDocRetenido    :='80';
          NroDocRetendido    :=CDSPercepcionesCUIT.AsString;
          while Pos('-',NroDocRetendido)>0 do
            Delete(NroDocRetendido,Pos('-',NroDocRetendido),1);
          NroDocRetendido:='         '+NroDocRetendido;
          NroCertificado:= StringOfChar('0',14);
         // if (CDSRetGanESTADO.Value='P') and (CDSRetGanIMPUESTO_RETENIDO.AsFloat>0) then
          WriteLn(ArchiTxt,  TipoCpbte,
                             Fecha,
                             NroCpbte,
                             ImporteCpbte,
                             CodImpueto,
                             CodRegimen,
                             CodOperacion,
                             BaseCalculo,
                             FechaRet,
                             CodigoCondicion,
                             CodSujetoSupendido,
                             ImporteRet,
                             PorcentajeExclusion,
                             FechaBoletin,
                             TipoDocRetenido,
                             NroDocRetendido,
                             NroCertificado);
          CDSPercepciones.Next;
        end;
      CloseFile(ArchiTxt);
      if Not( VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
      CDSPercepciones.First;
    end;
  if VirtualUI.Active then
    VirtualUI.DownloadFile(SaveDialog.FileName);
end;

procedure TFormLstPercepcionesIvaVta.ExportarContribuyenteExecute(
  Sender: TObject);
var
  ArchiTxt : TextFile;
  NroDocumento,
  RazonSocial,Domicilio,Localidad,Provincia,CPostal,TipoDoc: String;
  i:byte;

begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog.FileName  :='Contribuyente';
  SaveDialog.DefaultExt:='txt';

  CDSPercepciones.First;
  if SaveDialog.Execute Then
    begin
      if Not(AnsiEndsText('txt',SaveDialog.FileName)) then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
       AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSPercepciones.Eof) do
        begin
          NroDocumento   := CDSPercepcionesCUIT.AsString; // CDSRetTIPO_CPBTE.Value;;
          while Pos('-',NroDocumento)>0 do
            Delete(NroDocumento,Pos('-',NroDocumento),1);
          RazonSocial    := Copy(CDSPercepcionesRAZONSOCIAL.AsString+'        ',1,20);
          Domicilio      := CDSPercepcionesDIRECCION.AsString;
          Localidad      := CDSPercepcionesLOCALIDAD.AsString;
          Provincia      := CDSPercepcionesPROVINCIA.AsString;
          CPostal        := '01';
          TipoDoc        := 'CUIT';

          WriteLn(ArchiTxt,  NroDocumento,  RazonSocial, Domicilio,
                             Localidad, Provincia, CPostal,
                             TipoDoc);
          CDSPercepciones.Next;
        end;
      CloseFile(ArchiTxt);
    end;
  if Not( VirtualUI.Active) then
    ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
  if VirtualUI.Active then
    VirtualUI.DownloadFile(SaveDialog.FileName);

   CDSPercepciones.First;

end;

procedure TFormLstPercepcionesIvaVta.ExportarTXTExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

 //nombre:='AR'+Cuit+ano+mes+'07'+'LOTE1';
// nombre:='AR'+'-'+Cuit+'-'+ano+mes+'07'+'-'+'LOTE1';
  SaveDialog.DefaultExt:='txt';
  SaveDialog.FileName:='percepcionesIVA';
  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      begin
        DataToTxt_2.SaveToFile(SaveDialog.FileName);
        if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName);
      end;
end;

procedure TFormLstPercepcionesIvaVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstPercepcionesIVA.ini');
  ArchivoIni.Free;
  inherited;
  CDSPercepciones.Close;
  CDSEmpresa.Close;
  Action:=caFree;
end;

procedure TFormLstPercepcionesIvaVta.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstPercepcionesIIBB.ini');
  ArchivoIni.Free;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

end;

procedure TFormLstPercepcionesIvaVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLstPercepcionesIvaVta:=nil;
end;

procedure TFormLstPercepcionesIvaVta.FormShow(Sender: TObject);
var d,m,y:word;
begin
  CDSEmpresa.Open;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;

procedure TFormLstPercepcionesIvaVta.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frPercepciones.DesignReport();
end;

procedure TFormLstPercepcionesIvaVta.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  inherited;
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
