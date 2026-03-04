unit UImpresionCUponesAbonos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,IniFiles, WideStrings, DB, SqlExpr, ExtCtrls, FMTBcd, Provider,
  DBClient, Buttons, frxClass, frxDBSet, frxExportPDF, StdCtrls, Mask, JvExMask,
  JvToolEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid, IBGenerator, ActnList,
  frxBarcode, JvExControls, JvDBLookup, Spin, frxDesgn, JvBaseEdits,DateUtils,
  System.Actions, frxExportBaseDialog, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormImpresionCuponesAbonos = class(TForm)
    pnBase: TPanel;
    DSGrupos: TDataSource;
    QGrupos: TFDQuery;
    QGruposCLIENTE: TStringField;
    QGruposMUESTRANOMBRE: TStringField;
    QGruposID_CUPON_GRUPO: TIntegerField;
    QGruposMUESTRAGRUPO: TStringField;
    QGruposPRECIO1: TFloatField;
    QGruposPRECIO2: TFloatField;
    QGruposVTO_1: TSmallintField;
    QGruposVTO_2: TSmallintField;
    QGruposCODIGOARTICULO: TStringField;
    QGruposID_FACTURAPORDEFECTO: TIntegerField;
    QGruposSUCURSAL: TIntegerField;
    QGruposCORREOELECTRONICO: TStringField;
    DSPGrupos: TDataSetProvider;
    CDSGrupos: TClientDataSet;
    CDSGruposCLIENTE: TStringField;
    CDSGruposMUESTRANOMBRE: TStringField;
    CDSGruposID_CUPON_GRUPO: TIntegerField;
    CDSGruposMUESTRAGRUPO: TStringField;
    CDSGruposCODIGOARTICULO: TStringField;
    CDSGruposID_FACTURAPORDEFECTO: TIntegerField;
    CDSGruposSUCURSAL: TIntegerField;
    CDSGruposCORREOELECTRONICO: TStringField;
    CDSGruposPRECIO1: TFloatField;
    CDSGruposPRECIO2: TFloatField;
    CDSGruposVTO_1: TSmallintField;
    CDSGruposVTO_2: TSmallintField;
    dbgGrupos: TJvDBGrid;
    Label2: TLabel;
    edFechaEmision: TJvDateEdit;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    frCupon: TfrxDBDataset;
    QGruposAbonados: TFDQuery;
    QGruposAbonadosID: TIntegerField;
    QGruposAbonadosDETALLE: TStringField;
    QGruposAbonadosCODIGOARTICULO: TStringField;
    QGruposAbonadosPRECIO1: TFloatField;
    QGruposAbonadosPRECIO2: TFloatField;
    DSPGrupoAbonados: TDataSetProvider;
    CDSGrupoAbonados: TClientDataSet;
    CDSGrupoAbonadosID: TIntegerField;
    CDSGrupoAbonadosDETALLE: TStringField;
    CDSGrupoAbonadosCODIGOARTICULO: TStringField;
    CDSGrupoAbonadosPRECIO1: TFloatField;
    CDSGrupoAbonadosPRECIO2: TFloatField;
    DSGruposAbonos: TDataSource;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    GeneraCupon: TAction;
    QUltimoNumero: TFDQuery;
    DSCupones: TDataSource;
    QCupones: TFDQuery;
    DSPCupones: TDataSetProvider;
    CDSCupones: TClientDataSet;
    frxBarCodeObject1: TfrxBarCodeObject;
    Button2: TBitBtn;
    dbcGrupos: TJvDBLookupCombo;
    Label1: TLabel;
    edMeses: TSpinEdit;
    Label3: TLabel;
    dbgCupones: TJvDBGrid;
    CDSCuponesID: TIntegerField;
    CDSCuponesNUMERO: TStringField;
    CDSCuponesFECHA_GENERACION: TSQLTimeStampField;
    CDSCuponesFECHA: TSQLTimeStampField;
    CDSCuponesCLIENTE: TStringField;
    CDSCuponesPERIODO: TStringField;
    CDSCuponesFECHA_VTO1: TSQLTimeStampField;
    CDSCuponesFECHA_VTO2: TSQLTimeStampField;
    CDSCuponesIMPORTE_1: TFloatField;
    CDSCuponesIMPORTE_2: TFloatField;
    CDSCuponesCODIGOARTICULO: TStringField;
    CDSCuponesFACTURA_ID: TIntegerField;
    CDSCuponesFACTURA_FECHA: TSQLTimeStampField;
    CDSCuponesFACTURA_TIPO: TStringField;
    CDSCuponesFACTURA_CLASE: TStringField;
    CDSCuponesFACTURA_NROCPBTE: TStringField;
    CDSCuponesPAGADO: TStringField;
    CDSCuponesID_FACTURAPORDEFECTO: TIntegerField;
    CDSCuponesMUESTRACLIENTE: TStringField;
    CDSCuponesCORREOELECTRONICO: TStringField;
    BitBtn1: TBitBtn;
    Imprmir: TAction;
    frxDesigner1: TfrxDesigner;
    BitBtn2: TBitBtn;
    TraerAbonados: TAction;
    chkCBReducido: TCheckBox;
    edNumeroInical: TJvCalcEdit;
    Label4: TLabel;
    btGenerar: TBitBtn;
    CDSCuponesCODIGOBARRA1: TStringField;
    QGruposMUESTRALETRA: TStringField;
    CDSGruposMUESTRALETRA: TStringField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesSUCURSAL: TIntegerField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    chbLetra: TCheckBox;
    QCondiciones: TFDQuery;
    DSPCondiciones: TDataSetProvider;
    CDSCondiciones: TClientDataSet;
    CDSCondicionesID: TIntegerField;
    CDSCondicionesCODIGO: TStringField;
    CDSCondicionesDETALLE: TStringField;
    CDSCondicionesDESDE: TSQLTimeStampField;
    CDSCondicionesHASTA: TSQLTimeStampField;
    CDSCondicionesPRECIO: TFloatField;
    CDSCondicionesESTADO: TStringField;
    CDSCuponesBONIFICADO: TStringField;
    CDSCondicionesPRECIO_2: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure GeneraCuponExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ImprmirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnBaseDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TraerAbonadosExecute(Sender: TObject);
    procedure dbgGruposTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Archivo:TIniFile;
    datos:String;
  end;

var
  FormImpresionCuponesAbonos: TFormImpresionCuponesAbonos;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormImpresionCuponesAbonos.BitBtn2Click(Sender: TObject);
begin
  CDSCupones.Close;
  CDSCupones.Open;
  CDSCupones.EmptyDataSet;
end;

procedure TFormImpresionCuponesAbonos.dbgGruposTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgGrupos.DataSource.DataSet as TClientDataSet do
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

procedure TFormImpresionCuponesAbonos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormImpresionCuponesAbonos.FormCreate(Sender: TObject);
var s:String;
begin
  AutoSize:=True;
//  S:=ExtractFilePath(ParamStr(0));
 // SQLConnection1.Connected:=False;
//  Archivo:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.ini');
  //*************************************************************
  // Opciones del Ini GENERAL
  //*************************************************************
//  Datos                := Archivo.ReadString('Datos', 'Datos', '');
//  Archivo.Free;
//  begin
//    SQLConnection1.Params.Clear;
//    SQLConnection1.DriverName:='INTRBASE';
//    SQLConnection1.Params.Add('Database='+Datos);
//    SQLConnection1.Params.Add('RoleName=RoleName');
//    SQLConnection1.Params.Add('User_Name=sysdba');
//    SQLConnection1.Params.Add('Password=regulador');
//    SQLConnection1.Params.Add('ServerCharSet=');
//    SQLConnection1.Params.Add('SQLDialect=1');
//    SQLConnection1.Params.Add('ErrorResourceFile=');
//    SQLConnection1.Params.Add('LocaleCode=0000');
//    SQLConnection1.Params.Add('BlobSize=-1');
//    SQLConnection1.Params.Add('CommitRetain=False');
//    SQLConnection1.Params.Add('WaitOnLocks=True');
//    SQLConnection1.Params.Add('Interbase TransIsolation=ReadCommited');
//    SQLConnection1.Params.Add('Trim Char=False');
//    try
//      SQLConnection1.Connected:=True;
//    except
//      on e: Exception do
//        begin
//          Application.MessageBox(pchar (e.ClassName + ';' + e.Message),'error',MB_ICONSTOP);
//          ShowMessage('Verificar el Alias de la Base de Datos.....');
//          SQLConnection1.Connected:=False;
//          Application.Terminate;
//        end;
//     end;
//    end;
  CDSGrupoAbonados.Close;
  CDSGrupoAbonados.Open;
end;

procedure TFormImpresionCuponesAbonos.FormDestroy(Sender: TObject);
begin
  FormImpresionCuponesAbonos:=nil;
end;

procedure TFormImpresionCuponesAbonos.FormShow(Sender: TObject);
begin
   edFechaEmision.Date:=Date;
   QUltimoNumero.Close;
   QUltimoNumero.Open;
   if QUltimoNumero.Fields[0].AsString='' then
     edNumeroInical.Value:=1
   else
     edNumeroInical.Value:=QUltimoNumero.Fields[0].AsInteger;
   QUltimoNumero.Close;
end;

procedure TFormImpresionCuponesAbonos.GeneraCuponExecute(Sender: TObject);
var
  Ano,Mes,Dia:Word;
  I: Integer;
  aux1,aux2,Letra:String;
  Fe1,Fe2:String;
  NextId:Integer;
  FechaAux:TDate;
  Numero:Integer;
  WekNumber: Word;
begin
   inherited;
   if Not(CDSCupones.IsEmpty) then
     begin
       CDSCupones.Close;
       CDSCupones.Open;
     end;
   if CDSGrupos.IsEmpty then
     Raise Exception.Create('No se puede Generar cupones sin tener Grupos seleccionados...');


   Numero:=edNumeroInical.AsInteger;
//   QUltimoNumero.Close;
   CDSCupones.Close;
   CDSCupones.OPen;
   CDSGrupos.First;
   NextId:=0;
   FechaAux:=edFechaEmision.Date;
   while Not(CDSGrupos.Eof) do
    begin
      Inc(NextId);
      Application.ProcessMessages;
      if dbgGrupos.SelectedRows.CurrentRowSelected then
        begin
          FechaAux:=edFechaEmision.Date;
          for I := 1 to edMeses.Value do
            begin
              CDSCupones.Append;
              CDSCuponesID.Value:=NextId;
              CDSCuponesFECHA_GENERACION.AsDateTime := edFechaEmision.Date;
              if i>1 then
                FechaAux:=IncMonth(FechaAux,1);
              DecodeDate(FechaAux,ano,mes,dia);
              CDSCuponesPAGADO.Value           := 'N';
              CDSCuponesNUMERO.Value           := Copy('00000000',1,8-length(IntToStr(Numero)))+IntToStr(numero);
              CDSCuponesFECHA.AsDateTime       := FechaAux;
              CDSCuponesCLIENTE.Value          := dbgGrupos.DataSource.DataSet.FieldByName('Cliente').Value;
              CDSCuponesPERIODO.Value          := copy('00',1,2-length(IntToStr(mes)))+IntToStr(mes) + IntToStr(ano) ;
//              CDSCuponesPERIODO.Value          := FormatDateTime('mmmm',FechaAux);
              CDSCuponesFECHA_VTO1.AsDateTime  := CDSCuponesFECHA.AsDateTime+dbgGrupos.DataSource.DataSet.FieldByName('vto_1').Value;
              WekNumber:=DayOfTheWeek(CDSCuponesFECHA_VTO1.AsDateTime);
              if WekNumber=6 then
                CDSCuponesFECHA_VTO1.AsDateTime:=IncDay(CDSCuponesFECHA_VTO1.AsDateTime,2)
              else
                if WekNumber=7 then
                  CDSCuponesFECHA_VTO1.AsDateTime:=IncDay(CDSCuponesFECHA_VTO1.AsDateTime,1);


              CDSCuponesFECHA_VTO2.AsDateTime  := CDSCuponesFECHA.AsDateTime+dbgGrupos.DataSource.DataSet.FieldByName('vto_2').Value;
              WekNumber:=DayOfTheWeek(CDSCuponesFECHA_VTO2.AsDateTime);
              if WekNumber=6 then
                CDSCuponesFECHA_VTO2.AsDateTime:=IncDay(CDSCuponesFECHA_VTO2.AsDateTime,2)
              else
                if WekNumber=7 then
                  CDSCuponesFECHA_VTO2.AsDateTime:=IncDay(CDSCuponesFECHA_VTO2.AsDateTime,1);

              CDSCuponesIMPORTE_1.AsFloat      := dbgGrupos.DataSource.DataSet.FieldByName('Precio1').Value;
              CDSCuponesIMPORTE_2.AsFloat      := dbgGrupos.DataSource.DataSet.FieldByName('Precio2').Value;
              CDSCuponesCODIGOARTICULO.Value   := dbgGrupos.DataSource.DataSet.FieldByName('CodigoArticulo').Value;
              CDSCuponesMUESTRACLIENTE.Value   := dbgGrupos.DataSource.DataSet.FieldByName('MuestraNombre').AsString;
              CDSCuponesCORREOELECTRONICO.Value:= LowerCase(dbgGrupos.DataSource.DataSet.FieldByName('correoelectronico').AsString);
              CDSCuponesBONIFICADO.AsString    :='N';
              CDSCondiciones.Close;
              CDSCondiciones.Params.ParamByName('codigo').Value  := CDSCuponesCLIENTE.ASString;
              CDSCondiciones.Params.ParamByName('fecha').AsDate  := CDSCuponesFECHA.AsDateTime;
              CDSCondiciones.Open;
              if (Not(CDSCondiciones.IsEmpty)) then
                begin
                  CDSCondiciones.First;
                  CDSCuponesIMPORTE_1.AsFloat     := CDSCondicionesPRECIO.AsFloat;
                  CDSCuponesIMPORTE_2.AsFloat     := CDSCondicionesPRECIO_2.AsFloat;
                  CDSCuponesBONIFICADO.AsString   :='S';
                end;
              CDSCondiciones.Close;


              Letra:=CDSGruposMUESTRALETRA.Value;
              if dbgGrupos.DataSource.DataSet.FieldByName('Id_FacturaPorDefecto').AsString<>'' then
                CDSCuponesID_FACTURAPORDEFECTO.Value:=dbgGrupos.DataSource.DataSet.FieldByName('Id_FacturaPorDefecto').Value
              else
                begin
                  QClientes.Close;
                  QClientes.ParamByName('Codigo').Value:=CDSGruposCLIENTE.Value;
                  QClientes.Open;

                  CDSInscripcion.Close;
                  CDSInscripcion.Params.ParamByName('Codigo').AsInteger := QClientesCONDICION_IVA.AsInteger;
                  CDSInscripcion.Open;
                  if (CDSInscripcionDISCRIMINAIVA.Value='S') then Letra:='A'
                  else
                  Letra:='B';
                  QClientes.Close;
                  CDSInscripcion.Close;
                end;


              if dbgGrupos.DataSource.DataSet.FieldByName('Id_FacturaPorDefecto').AsString<>'' then
                CDSCuponesID_FACTURAPORDEFECTO.Value:=dbgGrupos.DataSource.DataSet.FieldByName('Id_FacturaPorDefecto').Value;
              aux1:=FormatFloat('0.00',CDSCuponesIMPORTE_1.AsFloat);
              aux2:=FormatFloat('0.00',CDSCuponesIMPORTE_2.AsFloat);



              Delete(Aux1,Pos('.',Aux1),1);
              Delete(Aux2,Pos('.',Aux2),1);
              Aux1:=copy('000000000000',1,12-length(aux1))+Aux1;
              Aux2:=copy('000000000000',1,12-length(aux2))+Aux2;
              fe1:=FormatDateTime('ddmmyyyy',CDSCuponesFECHA_VTO1.AsDateTime);
              fe2:=FormatDateTime('ddmmyyyy',CDSCuponesFECHA_VTO2.AsDateTime);

              CDSCuponesFACTURA_ID.Value         :=-1;
              CDSCuponesFACTURA_FECHA.Clear;
              CDSCuponesFACTURA_TIPO.Clear;
              CDSCuponesFACTURA_CLASE.Clear;
              CDSCuponesFACTURA_NROCPBTE.Clear;

              if chkCBReducido.Checked=False Then
                CDSCuponesCODIGOBARRA1.Value     := CDSCuponesCLIENTE.AsString+Fe1
              else
                CDSCuponesCODIGOBARRA1.Value     := CDSCuponesNUMERO.Value+CDSCuponesCLIENTE.AsString;

              if chbLetra.Checked then
                CDSCuponesCODIGOBARRA1.Value     := CDSCuponesCODIGOBARRA1.Value+Letra;

              CDSCupones.Post;

              Numero:=Numero+1;
            end;
        end;
      CDSGrupos.Next;
    end;//
end;


procedure TFormImpresionCuponesAbonos.ImprmirExecute(Sender: TObject);
var reporte:String;
begin
  CDSGrupos.First;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\CuponAbono.fr3');
  frxReport.ShowReport;
end;

procedure TFormImpresionCuponesAbonos.pnBaseDblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TFormImpresionCuponesAbonos.SpeedButton1Click(Sender: TObject);
begin
   dbgGrupos.UnselectAll;
end;

procedure TFormImpresionCuponesAbonos.SpeedButton2Click(Sender: TObject);
begin
  dbgGrupos.SelectAll;
end;

procedure TFormImpresionCuponesAbonos.TraerAbonadosExecute(Sender: TObject);
begin
  CDSGrupos.IndexDefs.Clear;
  CDSGrupos.Close;
  CDSGrupos.Params.ParamByName('grupo').Value:=dbcGrupos.KeyValue;
  CDSGrupos.Open;
end;

end.
