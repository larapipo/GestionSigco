unit UGeneradorDebitosTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Provider, DBClient, DBCtrls,
  JvDBLookup, Mask, JvExMask, JvToolEdit,IniFiles,StrUtils, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormClientesDebTC = class(TFormABMBase)
    SaveDialog1: TSaveDialog;
    pcTarjetas: TPageControl;
    pagTCredito_Clientes: TTabSheet;
    pagConfiguracion: TTabSheet;
    edClienteVisa: TEdit;
    Label1: TLabel;
    CDSClientesTC: TClientDataSet;
    DSPClientesTC: TDataSetProvider;
    DSClientesTC: TDataSource;
    dbgClientes: TJvDBGrid;
    CDSClientesTCCODIGO: TStringField;
    CDSClientesTCNOMBRE: TStringField;
    CDSClientesTCDIRECCION_COMERCIAL: TStringField;
    CDSClientesTCSALDO: TFloatField;
    CDSClientesTCDESCRIPCIONTC: TStringField;
    CDSClientesTCID_TC: TIntegerField;
    Label2: TLabel;
    DSPTCredito: TDataSetProvider;
    CDSTCredito: TClientDataSet;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    DSTCredito: TDataSource;
    dbcTCredito: TJvDBLookupCombo;
    btTcVisa: TButton;
    CDSClientesTCNUMERO_TC: TStringField;
    CDSClientesTCNUMERO_SEG: TStringField;
    edFecha: TJvDateEdit;
    Label3: TLabel;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    JvDBStatusLabel1: TJvDBStatusLabel;
    btExportarDebitos: TButton;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    edNroTarjetaNaranja: TEdit;
    QTCreditos: TFDQuery;
    QClientesTC: TFDQuery;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btTcVisaClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgClientesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure btExportarDebitosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
 
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    procedure ExportarTXT_TC_Visa;
    procedure ExportarTXT_TD_Visa;
    procedure ExportarTXT_Reducido;

  end;

var
  FormClientesDebTC: TFormClientesDebTC;

implementation

{$R *.dfm}
uses UDMain_FD;



procedure TFormClientesDebTC.btTcVisaClick(Sender: TObject);
begin
  inherited;
  ExportarTXT_TC_Visa;
end;

procedure TFormClientesDebTC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSClientesTC.Close;
  CDSClientesTC.IndexDefs.Clear;
  CDSClientesTC.IndexName:='';
  CDSClientesTC.Params.ParamByName('idTc').Value:=dbcTCredito.KeyValue;
  CDSClientesTC.Open;
end;

procedure TFormClientesDebTC.BitBtn1Click(Sender: TObject);
var Archivo:TextFile;
Cabecera,Pie,
Cadena,Aux,Aux2,Aux3,
Fecha,Vencimiento,Importe:String;
Total:Real;
Str_10:String;
i:integer;
begin
  inherited;
  if (CDSClientesTC.IsEmpty) or (CDSClientesTC.Active=False) then
    raise Exception.Create('No Hay datos para exportar...');

  Str_10:='          ';
  //progress.Max:=CDSClientesTC.RecordCount-1;
  SaveDialog1.FileName:='daf-'+Trim(edNroTarjetaNaranja.Text);
  SaveDialog1.DefaultExt:='txt';
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      begin
        //encabezado***********
        Cabecera:='C'+  //tipo de reg
                  Trim(edNroTarjetaNaranja.Text)+  // nro de comercio
                  DupeString(' ',97) +  // cadena vacia
                  FormatDateTime('yyyymmdd',date);
        CDSClientesTC.First;
        AssignFile(Archivo,SaveDialog1.FileName);
        Rewrite(Archivo);
        Writeln(Archivo,Cabecera);

        //*****************************************************
        //while not(CDSCuotas.Eof) do
        for i := 0 to dbgClientes.SelectedRows.Count - 1 do

          begin
            dbgClientes.GotoSelection(i);
            Cadena:='';

            Cadena:='';

            Aux3 := CDSClientesTCNUMERO_TC.AsString;
            Aux3 := StringReplace(Aux3, ' ', '', [rfReplaceAll]);
            Aux3 := StringReplace(Aux3, '-', '', [rfReplaceAll]);

            Aux3 := Copy(Aux3,1,16);

            Aux3 := Copy('                 ',1,16-length(Aux3))+Aux3;

            Cadena:='D'+Aux3;
            Aux:=FormatFloat('0000000000.00',CDSClientesTCSALDO.AsFloat);
            delete(Aux,Pos('.',Aux),1);
            delete(Aux,Pos(',',Aux),1);

            Cadena:=cadena+Aux;

            //if CDSCuotasNRO_CUOTA.Value=1 then
//              Cadena:=Cadena+FormatDateTime('yyyymmdd',CDSCuotasF_REPROGRAMADA.AsDateTime)
//            else
//              Cadena:=Cadena+'0000000';

            // fuerzo a cadena 0000000
            Cadena:=Cadena+'0000000';

            Aux:= CDSClientesTCNUMERO_TC.AsString+
                  Copy('                                    ',1,31-Length(CDSClientesTCNUMERO_TC.AsString));

            Cadena:=cadena+Aux;
            Cadena:=Cadena+FormatDateTime('yyyymmdd',edFecha.Date);

            Aux:=Copy('00',1,2-length(IntToStr(1)))+IntToStr(1);
            Cadena:=Cadena+Aux;

            Aux:=CDSClientesTCNUMERO_TC.AsString;

            Cadena:= Cadena+Aux;
            Cadena:= Cadena+Copy(FormatDateTime('yyyymmdd',edFecha.Date),1,4);
            Aux   := DupeString(' ',26); // cadena vacia;
            Cadena:= Cadena+Aux;
            //progress.Position:=progress.Position+1;

            Total:=Total+CDSClientesTCSALDO.Value;
            Writeln(Archivo,cadena);
           // CDSCuotas.Next;
          end;

        Pie := 'P';
        Aux := Copy('0000000',1,6-Length(IntToStr(dbgClientes.SelectedRows.Count)))+IntToStr(dbgClientes.SelectedRows.Count);
        Pie := Pie+Aux;
        Aux := DupeString(' ',88); // cadena vacia;
        Pie := Pie+Aux;

        Aux:=FormatFloat('0.00',Total);
        Delete(Aux,pos('.',Aux),1);
        Aux:=Copy('00000000000000000000',1,12-Length(Aux))+Aux;
        Pie:=Pie+Aux+DupeString(' ',8);

        Writeln(Archivo,pie);
        CloseFile(Archivo);
        //progress.Position:=0;
        Application.ProcessMessages;
        Sleep(1);
      end;

end;

procedure TFormClientesDebTC.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ExportarTXT_Reducido;
end;

procedure TFormClientesDebTC.btExportarDebitosClick(Sender: TObject);
begin
  inherited;
  ExportarTXT_TD_Visa;
end;

procedure TFormClientesDebTC.dbgClientesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgClientes.DataSource.DataSet as TClientDataSet do
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

procedure TFormClientesDebTC.ExportarTXT_Reducido;
var Archivo:TextFile;
Cabecera,Pie,
Cadena,Aux,Aux2,Aux3,
Fecha,Vencimiento,Importe:String;
Total:Real;
Nuevo,Str_10:String;
i:integer;
begin
  inherited;
  Str_10:='          ';
  //progress.Max:=CDSCuotas.RecordCount-1;
  SaveDialog1.FileName:='TARJETA'+FormatDateTime('yyyymmdd',date);
  SaveDialog1.DefaultExt:='txt';
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      begin
        //encabezado***********
        AssignFile(Archivo,SaveDialog1.FileName);
        Rewrite(Archivo);
        Writeln(Archivo,Cabecera);

        //*****************************************************
        //while not(CDSCuotas.Eof) do
        for i := 0 to dbgClientes.SelectedRows.Count - 1 do

          begin
            dbgClientes.GotoSelection(i);
            Cadena:='';

            Cadena:='';

            Aux3 := CDSClientesTCNUMERO_TC.AsString;
            Aux3 := StringReplace(Aux3, ' ', '', [rfReplaceAll]);
            Aux3 := StringReplace(Aux3, '-', '', [rfReplaceAll]);

            Aux3 := Copy(Aux3,1,16);

            Aux3 := Copy('                 ',1,16-length(Aux3))+Aux3;

            Cadena:=Aux3+','+CDSClientesTCCODIGO.AsString+','+FormatFloat('0.00',CDSClientesTCSALDO.AsFloat);
            Writeln(Archivo,cadena);
           // CDSCuotas.Next;
          end;

        CloseFile(Archivo);
        Application.ProcessMessages;
        Sleep(1);
      end;

end;

procedure TFormClientesDebTC.ExportarTXT_TC_Visa;
var Archivo:TextFile;
Cabecera,Pie,
Cadena,Aux,Aux2,Aux3,
Fecha,Vencimiento,Importe:String;
Total:Real;
Nuevo,Str_10:String;
i:integer;
begin
  inherited;
  Str_10:='          ';
  //progress.Max:=CDSCuotas.RecordCount-1;
  SaveDialog1.FileName:='DEBLIQC'+FormatDateTime('yyyymmdd',date);
  SaveDialog1.DefaultExt:='txt';
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      begin
        //encabezado***********
        Cabecera:='0DEBLIQC '+
                  Trim(edClienteVisa.Text)+
                  '900000    '+
                  FormatDateTime('yyyymmdd',date)+
                  FormatDateTime('hhmm',now)+
                  '0'+
                  '  '+
                  Str_10+ Str_10+Str_10+Str_10+Str_10+'     '+
                  '*';
      //  CDSCuotas.First;
        AssignFile(Archivo,SaveDialog1.FileName);
        Rewrite(Archivo);
        Writeln(Archivo,Cabecera);

        //*****************************************************
        //while not(CDSCuotas.Eof) do
        for i := 0 to dbgClientes.SelectedRows.Count - 1 do

          begin
            dbgClientes.GotoSelection(i);
            Cadena:='';

            Cadena:='';

            Aux3 := CDSClientesTCNUMERO_TC.AsString;
            Aux3 := StringReplace(Aux3, ' ', '', [rfReplaceAll]);
            Aux3 := StringReplace(Aux3, '-', '', [rfReplaceAll]);

            Aux3 := Copy(Aux3,1,16);

            Aux3 := Copy('                 ',1,16-length(Aux3))+Aux3;

            Cadena:='1'+Aux3+'   ';
            Aux:=Copy('00000000',1,8-length(IntToStr(1)))+IntToStr(1);
            Cadena:=Cadena+Aux;
            Cadena:=Cadena+FormatDateTime('yyyymmdd',edFecha.Date)+'0005';
            Aux:=FormatFloat('0000000000000.00',CDSClientesTCSALDO.AsFloat);
            delete(Aux,Pos('.',Aux),1);
            Cadena:=cadena+Aux;
            Aux:='000000000'+CDSClientesTCCODIGO.AsString;
            Cadena:=Cadena+Aux;
            Cadena:=Cadena+Nuevo;
            Aux:='                             '+'*';
            Cadena:=Cadena+Aux;
//            progress.Position:=progress.Position+1;

            Total:=Total+CDSClientesTCSALDO.Value;
            Writeln(Archivo,cadena);
           // CDSCuotas.Next;
          end;

        Pie:='9DEBLIQC '+
              Trim(edClienteVisa.Text)+
              '900000    '+
              FormatDateTime('yyyymmdd',date)+
              FormatDateTime('hhmm',now);
              Aux:=Copy('0000000',1,7-Length(IntToStr(dbgClientes.SelectedRows.Count)))+IntToStr(dbgClientes.SelectedRows.Count);
              Pie:=Pie+Aux;
              Aux:=FormatFloat('0.00',Total);
              Delete(Aux,pos('.',Aux),1);
              Aux:=Copy('00000000000000000000',1,15-Length(Aux))+Aux;
              Pie:=Pie+Aux+
                   Str_10+ Str_10+Str_10+'      '+'*';


        Writeln(Archivo,pie);
        CloseFile(Archivo);
//        progress.Position:=0;
        Application.ProcessMessages;
        Sleep(1);
      end;
 end;

procedure TFormClientesDebTC.ExportarTXT_TD_Visa;
var Archivo:TextFile;
Cabecera,Pie,
Cadena,Aux,Aux2,Aux3,
Fecha,Vencimiento,Importe:String;
Total:Real;
Nuevo,Str_10:String;
Largo,i:Integer;
begin
  inherited;
  if (CDSClientesTC.IsEmpty) or (CDSClientesTC.Active=False) then
    raise Exception.Create('No Hay datos para exportar...');
  Str_10:='          ';
  //progress.Max:=CDSCuotas.RecordCount-1;
  SaveDialog1.FileName:='DEBLIQD'+FormatDateTime('yyyymmdd',date);
  SaveDialog1.DefaultExt:='txt';
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      begin
        //encabezado***********
        Cabecera:='0DEBLIQD '+
                  Trim(edClienteVisa.Text)+
                  '900000    '+
                  FormatDateTime('yyyymmdd',date)+
                  FormatDateTime('hhmm',now)+
                  '0'+
                  '  '+
                  Str_10+ Str_10+Str_10+Str_10+Str_10+'     '+
                  '*';
//        CDSCuotas.First;
        AssignFile(Archivo,SaveDialog1.FileName);
        Rewrite(Archivo);
        Writeln(Archivo,Cabecera);

        //*****************************************************
        //while not(CDSCuotas.Eof) do
        for i := 0 to dbgClientes.SelectedRows.Count - 1 do

          begin
            dbgClientes.GotoSelection(i);
            Cadena:='';

            Cadena:='';

            Aux3 := CDSClientesTCNUMERO_TC.AsString;
            Aux3 := StringReplace(Aux3, ' ', '', [rfReplaceAll]);
            Aux3 := StringReplace(Aux3, '-', '', [rfReplaceAll]);

            Aux3 := Copy(Aux3,1,16);

            Aux3 := Copy('                 ',1,16-length(Aux3))+Aux3;
            Nuevo:=' ';

            Cadena:='1'+Aux3+'   ';
            Aux:=Copy('00000000',1,8-length(IntToStr(1)))+IntToStr(1);
            Cadena:=Cadena+Aux;
            Cadena:=Cadena+FormatDateTime('yyyymmdd', edFecha.Date)+'0005';
            Aux:=FormatFloat('0000000000000.00',CDSClientesTCSALDO.AsFloat);
            delete(Aux,Pos('.',Aux),1);
            Cadena:=cadena+Aux;
            Aux:='000000000'+CDSClientesTCCODIGO.AsString;
            Cadena:=Cadena+Aux;
            Cadena:=Cadena+Nuevo;
            Aux:='                            '+'*';
            Cadena:=Cadena+Aux;
          //  progress.Position:=progress.Position+1;

            Total:=Total+CDSClientesTCSALDO.Value;
            Writeln(Archivo,cadena);
           // CDSCuotas.Next;
          end;

        Pie:='9DEBLIQD '+
              Trim(edClienteVisa.Text)+
              '900000    '+
              FormatDateTime('yyyymmdd',date)+
              FormatDateTime('hhmm',now);
              Aux:=Copy('0000000',1,7-Length(IntToStr(dbgClientes.SelectedRows.Count)))+IntToStr(dbgClientes.SelectedRows.Count);
              Pie:=Pie+Aux;
              Aux:=FormatFloat('0.00',Total);
              Delete(Aux,pos('.',Aux),1);
              Aux:=Copy('00000000000000000000',1,15-Length(Aux))+Aux;
              Pie:=Pie+Aux+
                   Str_10+ Str_10+Str_10+'      '+'*';


        Writeln(Archivo,pie);
        CloseFile(Archivo);
       // progress.Position:=0;
        Application.ProcessMessages;
        Sleep(1);
      end;
//    if MessageDlg('Marcar Tarjetas Debitadas?....',mtConfirmation,mbYesNo,0)=mrYes Then
//      MarcarDB('D');


end;




 procedure TFormClientesDebTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'FcPlantilla.ini');
  ArchivoINI.WriteString('Establecimiento', 'visa', edClienteVisa.Text);
  ArchivoINI.WriteString('Establecimiento', 'TarjetaNaranja', edNroTarjetaNaranja.Text);
//  ArchivoINI.WriteString('Establecimiento', 'American', edNumeroAmerican.Text);
//  ArchivoINI.WriteString('Establecimiento', 'Mastercard', edNumeroMastercard.Text);
//  ArchivoINI.WriteString('Establecimiento', 'Fava', edNumeroFava.Text);
//  ArchivoINI.WriteString('Establecimiento', 'NuevaCard', edNumeroNuevaCard.Text);
//  ArchivoINI.WriteString('Establecimiento', 'Nevada', edNumeroroComercioNevada.Text);
//  ArchivoINI.WriteString('Establecimiento', 'Shopping', edNumeroTShopping.Text);
  ArchivoIni.Free;
  //*************************************************************

  CDSTCredito.Close;
  CDSClientesTC.Close;
  Action:=caFree;
end;

procedure TFormClientesDebTC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=true;
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'FcPlantilla.ini');
  edClienteVisa.Text         := ArchivoIni.ReadString('Establecimiento', 'visa', '');
  edNroTarjetaNaranja.Text   := ArchivoINI.ReadString('Establecimiento', 'TarjetaNaranja', '');
//  edNumeroAmerican.Text      := ArchivoINI.ReadString('Establecimiento', 'American', '');
//  edNumeroMastercard.Text    := ArchivoINI.ReadString('Establecimiento', 'Mastercard', '');
//  edNumeroFava.Text          := ArchivoINI.ReadString('Establecimiento', 'Fava', '');
//  edNumeroNuevaCard.Text     := ArchivoINI.ReadString('Establecimiento', 'NuevaCard', '');
//  edNumeroroComercioNevada.Text  := ArchivoINI.ReadString('Establecimiento', 'Nevada', '');
//  edNumeroTShopping.Text     := ArchivoINI.ReadString('Establecimiento', 'Shopping', '');
  ArchivoIni.Free;
  //*************************************************************
  CDSTCredito.Open;
end;

procedure TFormClientesDebTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormClientesDebTC:=nil;
end;

procedure TFormClientesDebTC.spSelectClick(Sender: TObject);
begin
  inherited;
  dbgClientes.SelectAll;
end;

procedure TFormClientesDebTC.spunselectClick(Sender: TObject);
begin
  inherited;
  dbgClientes.UnselectAll;
end;

end.
