UNIT URetenciones;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ExtCtrls, ActnList, StdCtrls, Buttons, Grids, DBGrids,
  Mask, frxDBSet, frxClass,Inifiles,Printers,
  ComCtrls,Librerias, Menus, frxExportText, frxExportRTF,
  frxExportXLS, frxExportPDF, JvExControls, JvGradient, FMTBcd, Provider,
  DBClient, SqlExpr, JvExMask, JvToolEdit, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, frCoreClasses;

TYPE
  TFormRetenciones = CLASS(TForm)
    Panel1: TPanel;
    DSRetenciones: TDataSource;
    dbgRetenciones: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Iniciar: TAction;
    Label1: TLabel;
    Label2: TLabel;
    frRetenciones: TfrxReport;
    frDBDSRetenciones: TfrxDBDataset;
    Imprimir: TAction;
    btSalir: TBitBtn;
    UpDown1: TUpDown;
    ExportarIIBBTxt: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    ExportarTxt1: TMenuItem;
    ExportarIVATxt: TAction;
    ExportarIVATxt1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    QRet_borrrar: TSQLQuery;
    CDSRetenciones: TClientDataSet;
    DSPRetenciones: TDataSetProvider;
    CDSRetencionesID_MOV_RETENCIONES: TIntegerField;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPOCPBTE: TStringField;
    CDSRetencionesCLASECPBTE: TStringField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesID_CPBTE: TIntegerField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesCODIGO_CLIENTE: TStringField;
    CDSRetencionesCUIT_CLIENTE: TStringField;
    CDSRetencionesJURIDICCION: TIntegerField;
    CDSRetencionesNOMBRE_CLIENTE: TStringField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    QRet: TFDQuery;
    CDSRetencionesIMPORTE: TFloatField;
    Label3: TLabel;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    PROCEDURE IniciarExecute(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE ImprimirExecute(Sender: TObject);
    PROCEDURE Panel1DblClick(Sender: TObject);
    PROCEDURE FormKeyPress(Sender: TObject; VAR Key: Char);
    procedure btSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ExportarIIBBTxtExecute(Sender: TObject);
    procedure ExportarIVATxtExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PrListados,PrDefault:Integer;
    PrNomListados,PrListadoDefecto:String;
  END;

VAR
  FormRetenciones: TFormRetenciones;

IMPLEMENTATION

USES UDMain_FD;

{$R *.DFM}

PROCEDURE TFormRetenciones.IniciarExecute(Sender: TObject);
BEGIN
  IF (Desde.Date > 0) AND (Hasta.Date > 0) THEN
    BEGIN
      CDSRetenciones.Close;
      CDSRetenciones.Params.ParamByName('FechaInicial').AsDate := Desde.Date;
      CDSRetenciones.Params.ParamByName('FechaFinal').AsDate   := Hasta.Date;
      CDSRetenciones.Open;
    END
  ELSE
    ShowMessage('No hay fechas Seleccionadas....');

END;

PROCEDURE TFormRetenciones.FormCreate(Sender: TObject);
VAR ArchivoIni:TIniFile;
BEGIN
  AutoSize := True;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  //Impresoras
  PrListados       :=ArchivoIni.ReadInteger('Impresoras', 'Listados', printer.PrinterIndex);
  PrNomListados    :=ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto :=ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');

  ArchivoIni.Free;
  // Tomo la Impresora por defecto.
  prDefault:=printer.PrinterIndex;

END;

PROCEDURE TFormRetenciones.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  CDSRetenciones.Close;
  Action := caFree;
END;

PROCEDURE TFormRetenciones.FormDestroy(Sender: TObject);
BEGIN
  FormRetenciones := NIL;
END;

PROCEDURE TFormRetenciones.ImprimirExecute(Sender: TObject);
BEGIN
  IF NOT (CDSRetenciones.IsEmpty) THEN
    BEGIN
      frRetenciones.PrintOptions.Printer:=PrNomListados;
      frRetenciones.SelectPrinter;
      frRetenciones.LoadFromFile(DMMain_FD.PathReportesLst+'\Retenciones.fr3');
      // frCtaCte.PrepareReport;
      frRetenciones.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para Listar');

END;

PROCEDURE TFormRetenciones.Panel1DblClick(Sender: TObject);
BEGIN
  frRetenciones.DesignReport;
END;

PROCEDURE TFormRetenciones.FormKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF (Key = #13) THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
  // IF Key=#27 THEN
  //    Cancelar.Execute;

END;

procedure TFormRetenciones.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRetenciones.FormShow(Sender: TObject);
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

procedure TFormRetenciones.UpDown1Click(Sender: TObject;
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
  Iniciar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormRetenciones.ExportarIIBBTxtExecute(Sender: TObject);
var
  ArchiTxt: TextFile;
  juri,Cuit,Fecha,NroRet,Tipo,Letra,NroCpbte,Importe: String;
  i:byte;
begin
  CDSRetenciones.First;
  if SaveDialog1.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetenciones.Eof) do
        begin
          if CDSRetencionesID_RETENCION.Value=2 Then   //Ingresos Brutos
            begin
              if CDSRetencionesJURIDICCION.AsString<>'' Then
                juri:=CDSRetencionesJURIDICCION.AsString
              else
                juri:='902';
              Cuit  := CDSRetencionesCUIT_CLIENTE.AsString;
              NroRet:= CDSRetencionesNRO_RETENCION.AsString;
              for i:=1 to length(NroRet) Do
                begin
                  if Not(NroRet[i] in ['0'..'9']) Then
                    delete(NroRet,i,1);
                end;
              For I:=0 to length(NroRet) do
                if Not(NroRet[i] in ['0'..'9']) Then delete(NroRet,i,1);
              NroRet:=Copy('000000000000000000000000000',1,20-length(NroRet))+NroRet;
              Fecha:= FormatDateTime('dd/mm/yyyy',CDSRetencionesFECHA_RETENCION.AsDateTime);

              if CDSRetencionesTIPOCPBTE.Value='FC' Then
                Tipo:='F'
              else
                if CDSRetencionesTIPOCPBTE.Value='FO' Then
                  Tipo:='F'
                else
                  if CDSRetencionesTIPOCPBTE.Value='RC' Then
                    Tipo:='R'
                  else
                    if CDSRetencionesTIPOCPBTE.Value='NC' Then
                      Tipo:='C'
                    else
                      if CDSRetencionesTIPOCPBTE.Value='ND' Then Tipo:='D';
              case CDSRetencionesNROCPBTE.AsString[1] of
                'A':Letra:='A';
                'B':Letra:='B';
                else Letra:='C';
              end;
              NroCpbte:=Copy('0000000000000000000',1,20-(length(CDSRetencionesNROCPBTE.AsString)-1))+Copy(CDSRetencionesNROCPBTE.AsString,2,13);
              if System.SysUtils.FormatSettings.DecimalSeparator=',' Then
                Importe:=FormatFloat('000000000,00',CDSRetencionesIMPORTE.AsFloat)
              else
                Importe:=FormatFloat('000000000.00',CDSRetencionesIMPORTE.AsFloat);
              delete(importe,10,1);
              Insert(',',importe,10);

              WriteLn(ArchiTxt,
                              juri,
                              Cuit,                                           //Cuit
                              Fecha ,                                         //Fecha dd/mm/aaaa
                              NroRet,                                        //Nro.Comprobante
                              tipo,
                              letra,
                              nrocpbte,
                              Importe);  //Importe con 2 digitos

            end;
          CDSRetenciones.Next;
        end;
      CloseFile(ArchiTxt);
      ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSRetenciones.First;
end;

procedure TFormRetenciones.ExportarIVATxtExecute(Sender: TObject);
var
  ArchiTxt: TextFile;
  juri,Cuit,Fecha,NroRet,Importe: String;
  i:byte;
begin
  CDSRetenciones.First;
  if SaveDialog1.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetenciones.Eof) do
        begin
          if CDSRetencionesID_RETENCION.Value=1 Then   //Iva
            begin
              if CDSRetencionesJURIDICCION.AsString<>'' Then
                juri:=CDSRetencionesJURIDICCION.AsString
              else
                juri:='230'; // codigo de retencion por defecto Loccion y Pestcion de Srvicios
              Cuit  := CDSRetencionesCUIT_CLIENTE.AsString;
              Fecha := FormatDateTime('dd/mm/yyyy',CDSRetencionesFECHA_RETENCION.AsDateTime);
              NroRet:= CDSRetencionesNRO_RETENCION.AsString;
              For I:=0 to length(NroRet) do
                if Not(NroRet[i] in ['0'..'9']) Then delete(NroRet,i,1);

              NroRet:=Copy('000000000000000000000000000',1,16-length(NroRet))+NroRet;
              if System.SysUtils.FormatSettings.DecimalSeparator=',' Then
                Importe:=FormatFloat('0000000000000,00',CDSRetencionesIMPORTE.AsFloat)
              else
                Importe:=FormatFloat('0000000000000.00',CDSRetencionesIMPORTE.AsFloat);
              delete(importe,14,1);
              Insert(',',importe,14);

              WriteLn(ArchiTxt,
                              juri,
                              Cuit,                                           //Cuit
                              Fecha ,                                         //Fecha dd/mm/aaaa
                              NroRet,                                        //Nro.Comprobante
                              Importe);  //Importe con 2 digitos

            end;
          CDSRetenciones.Next;
        end;
      CloseFile(ArchiTxt);
      ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
  CDSRetenciones.First;
end;

END.