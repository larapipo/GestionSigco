unit URetencionIva_Efectuadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ComCtrls,
  JvLabel, CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,
  System.DateUtils, DataExport, DataToAscii, Vcl.Menus, VirtualUI_SDK,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet, JvExStdCtrls, JvCombobox, JvDBLookup,StrUtils,
  frxExportPDF, frxExportBaseDialog, System.ImageList;

type
  TFormRetIva_EfectuadasLiq = class(TFormABMBase)
    dbgDetalle: TDBGrid;
    DSRet: TDataSource;
    CDSRet: TClientDataSet;
    DSPRet: TDataSetProvider;
    CDSRetID: TIntegerField;
    CDSRetID_ORIGEN: TIntegerField;
    CDSRetNUMERO_RETENCION: TStringField;
    CDSRetCODIGO_PROVEEDOR: TStringField;
    CDSRetCODIGO_REGIMEN: TIntegerField;
    CDSRetCONCEPTO: TStringField;
    CDSRetOBSERVACIONES: TMemoField;
    CDSRetANULADA: TStringField;
    CDSRetESTADO: TStringField;
    CDSRetRAZON_SOCIAL: TStringField;
    CDSRetN_DE_CUIT: TStringField;
    CDSRetCONDICION_IVA: TIntegerField;
    btImprimir: TBitBtn;
    DataToTxt: TDataToAscii;
    PopupMenu: TPopupMenu;
    ExportarCicore: TAction;
    SaveDialog: TSaveDialog;
    frDBDRetenciones: TfrxDBDataset;
    frConsulta: TfrxReport;
    DescargarArchivoSICORE1: TMenuItem;
    QRegimenes: TFDQuery;
    DSRegimenes: TDataSource;
    QRegimenesCOD_IMPUESTO: TIntegerField;
    QRegimenesCODIGO: TIntegerField;
    QRegimenesDETALLE: TStringField;
    pnCabecera: TPanel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    JvLabel1: TJvLabel;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    UpDown1: TUpDown;
    JvDBLookupCombo1: TJvDBLookupCombo;
    CDSRetCOD_CPBTE_CICORE: TStringField;
    CDSRetTIPO_CPBTE: TStringField;
    CDSRetTIPO_LIQUIDACION: TStringField;
    QRet: TFDQuery;
    CDSRetTASA: TFloatField;
    CDSRetBASE_IMPONIBLE: TFloatField;
    CDSRetMINIMO_NO_IMPONIBLE: TFloatField;
    CDSRetIMPUESTO_RETENIDO: TFloatField;
    ExportarContribuyente: TAction;
    CDSRetDIRECCION: TStringField;
    CDSRetLOCALIDAD: TStringField;
    CDSRetCOD_POSTAL: TStringField;
    Memo1: TMemo;
    frxPDFExport1: TfrxPDFExport;
    ExportarContribuyente1: TMenuItem;
    CDSRetFECHA: TSQLTimeStampField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ExportarCicoreExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSRetAfterPost(DataSet: TDataSet);
    procedure CDSRetCalcFields(DataSet: TDataSet);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure ExportarContribuyenteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRetIva_EfectuadasLiq: TFormRetIva_EfectuadasLiq;

implementation

{$R *.dfm}
uses UDMain_FD, UCompra_2;

procedure TFormRetIva_EfectuadasLiq.btImprimirClick(Sender: TObject);
begin
  inherited;
  if PrListados<0 Then PrListados:=0;
  frConsulta.PrintOptions.Printer:=PrNomListados;
  frConsulta.SelectPrinter;
  frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRetencionesIVA_Efectuada.fr3');
  frConsulta.ShowReport;
end;

procedure TFormRetIva_EfectuadasLiq.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSRet.Close;
  CDSRet.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSRet.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSRet.Open;

end;

procedure TFormRetIva_EfectuadasLiq.CDSRetAfterPost(DataSet: TDataSet);
begin
  inherited;
  //CDSRet.ApplyUpdates(-1);
end;

procedure TFormRetIva_EfectuadasLiq.CDSRetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSRetCOD_CPBTE_CICORE.Value:='00';

  if (CDSRetTIPO_CPBTE.Value='186') and (CDSRetANULADA.Value='N') then
    CDSRetCOD_CPBTE_CICORE.Value:='35'
  else
    if (CDSRetTIPO_CPBTE.Value='186') and (CDSRetANULADA.Value='S') then
      CDSRetCOD_CPBTE_CICORE.Value:='36'
    else
     if (CDSRetTIPO_CPBTE.Value='188') and (CDSRetANULADA.Value='N') then
       CDSRetCOD_CPBTE_CICORE.Value:='37'
     else
       if (CDSRetTIPO_CPBTE.Value='188') and (CDSRetANULADA.Value='S') then
         CDSRetCOD_CPBTE_CICORE.Value:='38'
       else
         if CDSRetTIPO_CPBTE.Value='006' then
           CDSRetCOD_CPBTE_CICORE.Value:='06'
         else
           CDSRetCOD_CPBTE_CICORE.Value:='05';
 end;

procedure TFormRetIva_EfectuadasLiq.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCompra_2)) then
    FormCompra_2:=TFormCompra_2.Create(self);
  FormCompra_2.DatoNew  :=CDSRetID_ORIGEN.AsString;
  FormCompra_2.TipoCpbte:='FC';
  FormCompra_2.Recuperar.Execute;
  FormCompra_2.Show;
end;

procedure TFormRetIva_EfectuadasLiq.ExportarCicoreExecute(Sender: TObject);
var
  ArchiTxt: TextFile;
  CodioCopprobante,Fecha,NroCpbte,ImporteCpbte,CodImpueto,CodRegimen,CodOperacion,
  BaseCalculo,FechaRet,CodigoCondicion,CodSujetoSupendido,ImporteRet,
  PorcentajeExclusion,FechaBoletin,TipoDocRetenido,
  NroDocRetendido,NroCertificado: String;
  i:byte;
begin
  SaveDialog.FileName  :='RetencionesIVA_SICORE_'+FormatDateTime('YYYYMM',desde.date)+'.txt';
  SaveDialog.DefaultExt:='txt';
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  CDSRet.First;
  if SaveDialog.Execute Then
    begin
      //SaveDialog.FileName:=SaveDialog.FileName;
      if Not(AnsiEndsText('txt',SaveDialog.FileName)) then
        SaveDialog.FileName  :='RetencionesIVA_SICORE_'+FormatDateTime('YYYYMM',desde.date)+'.txt';
      AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRet.Eof) do
        begin
          TipoCpbte   := AnsiRightStr(CDSRetCOD_CPBTE_CICORE.AsString,2); // CDSRetTIPO_CPBTE.Value;;
          Fecha       := DateToStr(CDSRetFECHA.AsDateTime);
          NroCpbte    := AnsiRightStr('000000000000'+CDSRetNUMERO_RETENCION.AsString,16);
          ImporteCpbte:= FormatFloat('0000000000000.00',CDSRetIMPUESTO_RETENIDO.AsFloat);
          CodImpueto  := '0767';
          CodRegimen  := Copy('000',1,3-Length(CDSRetCODIGO_REGIMEN.AsString))+CDSRetCODIGO_REGIMEN.AsString;
          if CodRegimen='000' then
            begin
              CodRegimen := JvDBLookupCombo1.LookupSource.DataSet.FieldByName('codigo').AsString;//(ComboBox.Text,Pos(';',ComboBox.Text)+1,20);
              //CodRegimen := Copy(CodRegimen,1,Pos(';',ComboBox.Text));
              //CodRegimen := Trim(CodRegimen);
              CodRegimen := Copy('000',1,3-Length(CodRegimen))+CodRegimen;
            end;
          CodOperacion :='1';
          if CodRegimen='966' then
            CodOperacion:='1';

          BaseCalculo  := FormatFloat('00000000000.00',Abs(CDSRetBASE_IMPONIBLE.AsFloat));
          FechaRet     := DateToStr(CDSRetFECHA.AsDateTime);
          case CDSRetCONDICION_IVA.Value of
            1:CodigoCondicion:='01';
            2:CodigoCondicion:='02';
            3:CodigoCondicion:='03';
            4:CodigoCondicion:='03';
            5:CodigoCondicion:='03';
          end;

          CodSujetoSupendido  := '0';
          ImporteRet          := FormatFloat('00000000000.00',CDSRetIMPUESTO_RETENIDO.AsFloat);
          PorcentajeExclusion := '000.00';
          FechaBoletin        := '          ';
          TipoDocRetenido     := '80';
          NroDocRetendido     := CDSRetN_DE_CUIT.AsString;
          while Pos('-',NroDocRetendido)>0 do
            Delete(NroDocRetendido,Pos('-',NroDocRetendido),1);
          NroDocRetendido:='         '+NroDocRetendido;
          NroCertificado:= StringOfChar('0',14);

          WriteLn(ArchiTxt,  TipoCpbte,  Fecha, NroCpbte,
                             ImporteCpbte, CodImpueto, CodRegimen,
                             CodOperacion, BaseCalculo, FechaRet,
                             CodigoCondicion, CodSujetoSupendido, ImporteRet,
                             PorcentajeExclusion, FechaBoletin, TipoDocRetenido,
                             NroDocRetendido, NroCertificado);
          CDSRet.Next;
        end;
      CloseFile(ArchiTxt);
      if Not( VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
      CDSRet.First;
    end;
  if VirtualUI.Active then
    VirtualUI.DownloadFile(SaveDialog.FileName);

{var
  ArchiTxt: TextFile;
  Cuit,Fecha,TipoCpbte,Importe: String;
begin
  if VirtualUI.Active then
     VirtualUI.StdDialogs:=False;
  SaveDialog.FileName:='Retenciones IIBB'+FormatDateTime('YYYYMMDD',Date);
  SaveDialog.DefaultExt:='txt';
  CDSRet.First;
  if SaveDialog.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
      Rewrite(ArchiTxt);
      while not (CDSRet.Eof) do
        begin
           Cuit:=CDSRetN_DE_CUIT.AsString;
              //Delete(Cuit,3,1);
              //Delete(Cuit,11,1);
              Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetFECHA.AsDateTime);
              Importe:='';
              Importe:=FormatFloat('0000000.00',CDSRetIMPUESTO_RETENIDO.AsFloat);

              WriteLn(ArchiTxt,Cuit,                                     //Cuit
                               Fecha,                                    //Fecha dd/mm/aaaa
                               Copy(CDSRetNUMERO_RETENCION.AsString,2,12),
                               Importe); //Importe con 2 digitos
          CDSRet.Next;
        end;
      CloseFile(ArchiTxt);
      if Not(VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
    end;
  CDSRet.First;
  if VirtualUI.Active then
    begin
      VirtualUI.StdDialogs:=False;
      VirtualUI.DownloadFile( SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
    end;
  }

end;

procedure TFormRetIva_EfectuadasLiq.ExportarContribuyenteExecute(
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

  CDSRet.First;
  if SaveDialog.Execute Then
    begin
      if Not(AnsiEndsText('txt',SaveDialog.FileName)) then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
       AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRet.Eof) do
        begin
          NroDocumento   := CDSRetN_DE_CUIT.AsString; // CDSRetTIPO_CPBTE.Value;;
          while Pos('-',NroDocumento)>0 do
            Delete(NroDocumento,Pos('-',NroDocumento),1);
          RazonSocial    := Copy(CDSRetRAZON_SOCIAL.AsString+'        ',1,20);
          Domicilio      := CDSRetDIRECCION.AsString;
          Localidad      := CDSRetLOCALIDAD.AsString;
          Provincia      := CDSRetRAZON_SOCIAL.AsString;
          CPostal        := '01';
          TipoDoc        := 'CUIT';

          WriteLn(ArchiTxt,  NroDocumento,  RazonSocial, Domicilio,
                             Localidad, Provincia, CPostal,
                             TipoDoc);
          CDSRet.Next;
        end;
      CloseFile(ArchiTxt);
    end;
  if Not( VirtualUI.Active) then
    ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
  if VirtualUI.Active then
    VirtualUI.DownloadFile(SaveDialog.FileName);

   CDSRet.First;
end;

procedure TFormRetIva_EfectuadasLiq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRetIva_EfectuadasLiq.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QRegimenes.Close;
  QRegimenes.Open;
end;

procedure TFormRetIva_EfectuadasLiq.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRetIva_EfectuadasLiq:=nil;
end;

procedure TFormRetIva_EfectuadasLiq.FormShow(Sender: TObject);
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

procedure TFormRetIva_EfectuadasLiq.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;

procedure TFormRetIva_EfectuadasLiq.UpDown1Click(Sender: TObject;
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
  //  Desde.SetFocus
end;

end.
