unit UListadoRetencionesPagos_IB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Mask, Db,   ActnList,
  Buttons, ToolWin, ExtCtrls,  frxDBSet,IniFiles,
  frxClass, Menus, DataExport, DataToAscii,Librerias,FileCtrl, ImgList,
  JvComponentBase, JvExControls, JvGradient, DBCtrls, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, Provider, DBClient,
  JvAppStorage, JvAppIniStorage, System.Actions, DataToXLS ,VirtualUI_sdk,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportPDF, frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormListadoRetencionesOPago_IB = class(TFormABMBase)
    UpDown1: TUpDown;
    dbgDetalle: TDBGrid;
    DataToTxt: TDataToAscii;
    PopupMenu: TPopupMenu;
    ExportarenTxt1: TMenuItem;
    SaveDialog: TSaveDialog;
    DSRetencionesIB: TDataSource;
    frConsulta: TfrxReport;
    Imprimir: TAction;
    ExportarTxt: TAction;
    btImprimir: TBitBtn;
    frxDBRetenciones: TfrxDBDataset;
    lbl2: TLabel;
    dbeTIPOCPBTE_ORIGEN: TDBEdit;
    lbl3: TLabel;
    dbeCLASECPBTE_ORIGEN: TDBEdit;
    lbl4: TLabel;
    dbeNROCPBTE_ORIGEN: TDBEdit;
    VerOrigen: TAction;
    VerOrigen1: TMenuItem;
    lbl1: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSRetIB: TClientDataSet;
    DSPRetIB: TDataSetProvider;
    CDSRetIBID: TIntegerField;
    CDSRetIBCODIGO: TStringField;
    CDSRetIBNOMBRE: TStringField;
    CDSRetIBDIRECCION: TStringField;
    CDSRetIBCODIGOPOSTAL: TStringField;
    CDSRetIBLOCALIDAD: TStringField;
    CDSRetIBCUIT: TStringField;
    CDSRetIBTIPOCPBTE: TStringField;
    CDSRetIBCLASECPBTE: TStringField;
    CDSRetIBLETRA: TStringField;
    CDSRetIBSUC: TStringField;
    CDSRetIBNUMERO: TStringField;
    CDSRetIBSUCURSAL: TIntegerField;
    CDSRetIBID_CPBTE_ORIGEN: TIntegerField;
    CDSRetIBTIPOCPBTE_ORIGEN: TStringField;
    CDSRetIBCLASECPBTE_ORIGEN: TStringField;
    CDSRetIBNROCPBTE_ORIGEN: TStringField;
    CDSRetIBNROCPBTE: TStringField;
    CDSRetIBNOMBRE_AGTE_RET: TStringField;
    CDSRetIBDIRECCION_AGTE_RET: TStringField;
    CDSRetIBCUIT_AGTE_RET: TStringField;
    CDSRetIBCPOSTAL_AGTE_RET: TStringField;
    CDSRetIBLOCALIDAD_AGTE_RET: TStringField;
    CDSRetIBNRO_AGTE_RET: TStringField;
    CDSRetIBANULADO: TStringField;
    CDSRetIBESTADO: TStringField;
    CDSRetIBNRO_IIBB: TStringField;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    ExportarTXTSiap: TAction;
    ExportarTxtWeb: TAction;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    rgInforma: TRadioGroup;
    DataToAsTxtWeb_old: TDataToAscii;
    CDSRetIBTOTAL_STR: TStringField;
    JvLabel: TJvLabel;
    cbSeparador: TComboBox;
    CDSRetIBTIPO_OP: TStringField;
    ExportarTxtWeb1: TMenuItem;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    JvLabel1: TJvLabel;
    edActividad: TEdit;
    DataToAsTxtWeb: TDataToAscii;
    DataToXLSWeb: TDataToXLS;
    ExportToXLS: TAction;
    ExportToXLSWeb1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    QRetIB: TFDQuery;
    CDSRetIBTOTAL: TFloatField;
    CDSRetIBNETO_GRAVADO: TFloatField;
    CDSRetIBTASA_RETENCION: TFloatField;
    CDSRetIBFECHA: TSQLTimeStampField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ExportarTxtExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure VerOrigenExecute(Sender: TObject);
    procedure ExportarTXTSiapExecute(Sender: TObject);
    procedure ExportarTxtWebExecute(Sender: TObject);
    procedure CDSRetIBCalcFields(DataSet: TDataSet);
    procedure ExportToXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    ArchivoIni:TIniFile;
    { Public declarations }
  end;

var
  FormListadoRetencionesOPago_IB: TFormListadoRetencionesOPago_IB;

implementation

uses UOPago_2, UDMain_FD;

{$R *.DFM}

procedure TFormListadoRetencionesOPago_IB.UpDown1Click(Sender: TObject;
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
procedure TFormListadoRetencionesOPago_IB.VerOrigenExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormOPago_2)) then
    FormOPago_2:=TFormOPago_2.Create(self);
   FormOPago_2.DatoNew    := CDSRetIBID_CPBTE_ORIGEN.AsString;
   FormOPago_2.TipoCpbte  := CDSRetIBTIPOCPBTE_ORIGEN.AsString;
   FormOPago_2.Recuperar.Execute;
   FormOPago_2.Show;
end;

procedure TFormListadoRetencionesOPago_IB.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSRetIB.Close;
  CDSRetIB.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSRetIB.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSRetIB.Open;
//  TFloatField(dbgDetalle.Fields[2]).DisplayFormat:='0.00';
//  TFloatField(dbgDetalle.Fields[4]).DisplayFormat:='0.00';
//  TFloatField(dbgDetalle.Fields[5]).DisplayFormat:='0.00';
end;

procedure TFormListadoRetencionesOPago_IB.FormShow(Sender: TObject);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;

procedure TFormListadoRetencionesOPago_IB.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frConsulta.PrintOptions.Printer:=PrNomListados;
  frConsulta.SelectPrinter;
  frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRetencionesOPago_IB.fr3');

 // frConsulta.Variables['Mascara']:=''''+Mascara+'''';
  // frCtaCte.PrepareReport;
  frConsulta.ShowReport;
end;

procedure TFormListadoRetencionesOPago_IB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSEmpresa.Close;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstRetencionesIIBB.ini');
  ArchivoIni.ReadString('Actividad','codigo',edActividad.Text);
  ArchivoIni.ReadInteger('separador','codigo',cbSeparador.ItemIndex);
  ArchivoIni.Free;

  inherited;
  Action:=caFree;
end;

procedure TFormListadoRetencionesOPago_IB.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstRetencionesIIBB.ini');
  edActividad.Text     :=ArchivoIni.ReadString('Actividad','codigo','6');
  cbSeparador.ItemIndex:=ArchivoIni.ReadInteger('separador','codigo',1);
  ArchivoIni.Free;
  CDSEmpresa.Close;
  CDSEmpresa.Open;
end;

procedure TFormListadoRetencionesOPago_IB.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRetencionesOPago_IB:=nil;
end;

procedure TFormListadoRetencionesOPago_IB.CDSRetIBCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSRetIBTIPO_OP.Value:='a';
  if (cbSeparador.Text='.') then
    CDSRetIBTOTAL_STR.Value     := FormatFloat('00000000.00',CDSRetIBTOTAL.AsFloat)
  else
    if (cbSeparador.Text=',') then
      CDSRetIBTOTAL_STR.Value   := FormatFloat('00000000,00',CDSRetIBTOTAL.AsFloat);

end;

procedure TFormListadoRetencionesOPago_IB.ExportarTxtExecute(
  Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  SaveDialog.FileName:='RetencionesIIBB'+FormatDateTime('YYYYMMDD',Date)+'.txt';
  SaveDialog.DefaultExt:='txt';
  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      DataToTxt.SaveToFile(SaveDialog.FileName);

end;

procedure TFormListadoRetencionesOPago_IB.ExportarTXTSiapExecute(Sender: TObject);
var
  ArchiTxt: TextFile;
  Cuit,Fecha,TipoCpbte,Importe: String;
begin
  if VirtualUI.Active then
     VirtualUI.StdDialogs:=False;
  //SaveDialog.
  SaveDialog.FileName:='Retenciones IIBB'+FormatDateTime('YYYYMMDD',Date);
  SaveDialog.DefaultExt:='txt';

  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  CDSRetIB.First;
  if SaveDialog.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetIB.Eof) do
        begin
           Cuit:=CDSRetIBCUIT.AsString;
              //Delete(Cuit,3,1);
              //Delete(Cuit,11,1);
              Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetIBFECHA.AsDateTime);
              Importe:='';
              Importe:=FormatFloat('0000000.00',CDSRetIBTOTAL.AsFloat);

              WriteLn(ArchiTxt,Cuit,                                     //Cuit
                               Fecha,                                    //Fecha dd/mm/aaaa
                               Copy(CDSRetIBNROCPBTE_ORIGEN.AsString,2,12),
                               Importe); //Importe con 2 digitos
          CDSRetIB.Next;
        end;
      CloseFile(ArchiTxt);
      if Not(VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
    end;
  CDSRetIB.First;
  if VirtualUI.Active then
    VirtualUI.DownloadFile( SaveDialog.FileName);
end;

procedure TFormListadoRetencionesOPago_IB.ExportarTxtWebExecute(Sender: TObject);
var nombre:string;
ano,mes,cuit:string;
d,m,y:Word;
  ArchiTxt: TextFile;
  Fecha,TipoCpbte,Importe: String;

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
   0:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'1-6'+'-'+'LOTE1';
   1:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'2-6'+'-'+'LOTE1';
   2:nombre:='AR'+'-'+Cuit+'-'+ano+mes+'0-6'+'-'+'LOTE1';
 end;

 if VirtualUI.Active then
     VirtualUI.StdDialogs:=False;

  SaveDialog.FileName:=Nombre;
  SaveDialog.DefaultExt:='txt';

  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  CDSRetIB.First;
  if SaveDialog.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetIB.Eof) do
        begin
           Cuit:=CDSRetIBCUIT.AsString;
              //Delete(Cuit,3,1);
              //Delete(Cuit,11,1);
           Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetIBFECHA.AsDateTime);

           WriteLn(ArchiTxt,Cuit,                                     //Cuit
                            Fecha,                                    //Fecha dd/mm/aaaa
                            CDSRetIBSUC.AsString,
                            CDSRetIBNUMERO.AsString,
                            CDSRetIBTOTAL_STR.AsString,
                            CDSRetIBTIPO_OP.AsString); //Importe con 2 digitos
          CDSRetIB.Next;
        end;
      CloseFile(ArchiTxt);
      if Not(VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
    end;
  CDSRetIB.First;
  if VirtualUI.Active then
    VirtualUI.DownloadFile(SaveDialog.FileName);
end;

procedure TFormListadoRetencionesOPago_IB.ExportToXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
     VirtualUI.StdDialogs:=False;

  SaveDialog.DefaultExt:='XLS';
  SaveDialog.FileName:='RETENCIONES';

  SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      begin
        if VirtualUI.Active then
          DataToXLSWeb.SaveToFile(SaveDialog.FileName)
        else
          DataToXLSWeb.SaveToFile(SaveDialog.FileName);

        if VirtualUI.Active then
           VirtualUI.DownloadFile(SaveDialog.FileName);
      end;
end;

procedure TFormListadoRetencionesOPago_IB.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;

end.