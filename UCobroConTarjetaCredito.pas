unit UCobroConTarjetaCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  ADODB, Grids, DBGrids, Provider, DBClient, JvDBLookup, Mask, JvExMask,
  JvToolEdit, JvExDBGrids, JvDBGrid,IniFiles,StrUtils,DBXCommon, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormCobroConTarjetasCredito = class(TFormABMBase)
    edPath: TEdit;
    btn1: TSpeedButton;
    ADOConnection: TADOConnection;
    ADODSTarjetasXLS: TADODataSet;
    DSTarjetasXLS: TDataSource;
    Importar: TAction;
    OpenDialog: TOpenDialog;
    RxLabel1: TJvLabel;
    dbeFecha: TJvDateEdit;
    RxLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel6: TJvLabel;
    dbcComprobante: TJvDBLookupCombo;
    JvLabel1: TJvLabel;
    dbcCtas: TJvDBLookupCombo;
    DSCajas: TDataSource;
    CDSCajas: TClientDataSet;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    DSPCajas: TDataSetProvider;
    QCajas: TFDQuery;
    QComproba: TFDQuery;
    QComprobaID_COMPROBANTE: TIntegerField;
    QComprobaTIPO_COMPROB: TStringField;
    QComprobaCLASE_COMPROB: TStringField;
    QComprobaDENOMINACION: TStringField;
    QComprobaSUCURSAL: TIntegerField;
    DSPComprobante: TDataSetProvider;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    DSComprobante: TDataSource;
    DSSucursal: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    dbgrdStock: TJvDBGrid;
    BitBtn1: TBitBtn;
    Cobrar: TAction;
    QBuscaClien: TFDQuery;
    dbcTarjeta: TJvDBLookupCombo;
    JvLabel2: TJvLabel;
    DSFPagoTC: TDataSource;
    CDSFPagoTC: TClientDataSet;
    DSPFPagoTC: TDataSetProvider;
    QFPagoTC: TFDQuery;
    CDSFPagoTCID_FPAGO: TIntegerField;
    CDSFPagoTCID_TPAGO: TIntegerField;
    CDSFPagoTCDESCRIPCION: TStringField;
    CDSFPagoTCCOTIZACION: TFloatField;
    CDSFPagoTCSIGNO: TStringField;
    CDSFPagoTCMONEDA: TIntegerField;
    rgTipo: TRadioGroup;
    btNovedades: TBitBtn;
    ToolButton1: TToolButton;
    QLotes: TFDQuery;
    DSPLotes: TDataSetProvider;
    CDSLotes: TClientDataSet;
    DSLotes: TDataSource;
    CDSLotesLOTE_COBRO_TC: TStringField;
    dbcLote: TJvDBLookupCombo;
    BitBtn2: TBitBtn;
    QBorrarLote: TFDQuery;
    DSPBuscaCliente: TDataSetProvider;
    CDSBuscaCliente: TClientDataSet;
    CDSBuscaClienteCODIGO: TStringField;
    CDSBuscaClienteID_TARJETACREDITO: TIntegerField;
    spAyudaFormato: TSpeedButton;
    pnAviso: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure ImportarExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CobrarExecute(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure romResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  end;

var
  FormCobroConTarjetasCredito: TFormCobroConTarjetasCredito;

implementation

uses UAvisoProceso, UDMain_FD, URecibo_2, DMRecibos, UNovedadesFacturacion,
     ULogin;

{$R *.dfm}

procedure TFormCobroConTarjetasCredito.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if Trim(dbcLote.Value)='' Then
    raise Exception.Create('No se Indico Lote...');

  if MessageDlg(' Va Hacer una operacion de Borrado.... esta seguro??',mtConfirmation,mbYesNo,1)=mrYes Then
  begin
    if not (Assigned(FormLogin)) then
      FormLogin := TFormLogin.Create(FormCobroConTarjetasCredito);
    FormLogin.ShowModal;
    if (FormLogin.Tag=1) and (Trim(dbcLote.Value)<>'') Then
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        try
          QBorrarLote.Close;
          QBorrarLote.ParamByName('Lote').Value  :=Trim(dbcLote.Value);
          QBorrarLote.ExecSQL;
          // **** Ingreso en el Log File  **************
          DMMain_FD.LogFileFD(0,2,'Borrado de Lote de Recibos Nro.:'+Trim(dbcLote.Value),'LOTETC');

          DMMain_FD.fdcGestion.Commit;
        Except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se Borrarorn los items........!');
        end;
        CDSLotes.Close;
        CDSLotes.Open;
      end;
  end;
end;

procedure TFormCobroConTarjetasCredito.btn1Click(Sender: TObject);
begin
   if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;
        if AnsiEndsText('.xls',edPath.Text) then
          begin
             ADOConnection.Connected:=False;
            ADODSTarjetasXLS.Active:=False;
            ADOConnection.ConnectionString:='';
            //ADODataSet1.CommandText:='';
            ADOConnection.ConnectionString:=
            'Provider=Microsoft.Jet.OLEDB.4.0; '+
            'User ID=Admin; '+
            'Data Source='+edPath.Text+'; '+
            'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
            'Persist Security Info=False; '+
            'Jet OLEDB:System database=""; '+
            'Jet OLEDB:Registry Path=""; '+
            'Jet OLEDB:Database Password=""; '+
            'Jet OLEDB:Engine Type=35; '+
            'Jet OLEDB:Database Locking Mode=0; '+
            'Jet OLEDB:Global Partial Bulk Ops=2; '+
            'Jet OLEDB:Global Bulk Transactions=1; '+
            'Jet OLEDB:New Database Password=""; '+
            'Jet OLEDB:Create System Database=False; '+
            'Jet OLEDB:Encrypt Database=False; '+
            'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
            'Jet OLEDB:Compact Without Replica Repair=False; '+
            'Jet OLEDB:SFP=False ';
          end
        else
          if AnsiEndsText('.xlsx',edPath.Text) then
            begin
              ADOConnection.ConnectionString :=
             'Provider=Microsoft.ACE.OLEDB.12.0;'+
             'Persist Security Info=False;'+
             'Data Source='+edPath.Text+';'+
             'Extended Properties=Excel 12.0';
            end;

        ADODSTarjetasXLS.Connection  := ADOConnection;
        ADODSTarjetasXLS.CommandType := cmdTableDirect;
        ADODSTarjetasXLS.CommandText := DMMain_FD.NombreHojaExcel(edPath.Text);// 'Hoja1$';
      //  ADODSStockXLS.CommandText:='Hoja1$';
      //  ADOConnection.Connected:=true;
        ADODSTarjetasXLS.Active:=True;

      end;


end;

procedure TFormCobroConTarjetasCredito.btNovedadesClick(Sender: TObject);
begin
  inherited;
  FormNovedadesFacturacion.Visible:= Not(FormNovedadesFacturacion.Visible);
end;

procedure TFormCobroConTarjetasCredito.CobrarExecute(Sender: TObject);
var Importe,Codigo,Tipo:String;
IDTarjeta:Integer;
FechaAux:TDateTime;
Lista:TListItem;
begin
  inherited;
  //Lista
  ADODSTarjetasXLS.First;
  if Not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(self);
  FormRecibo_2.Show;
  FormRecibo_2.CajaPorDefecto:=dbcCtas.KeyValue;
  while not(ADODSTarjetasXLS.Eof) do
    begin
      if (Trim(ADODSTarjetasXLS.FieldByName('Nro Tarjeta').AsString)<>'') Then
        begin
          CDSBuscaCliente.Close;
          CDSBuscaCliente.Params.ParamByName('NroTarjeta').Value:=Trim(AnsiReplaceStr(ADODSTarjetasXLS.FieldByName('Nro Tarjeta').Value,'-',''));
          CDSBuscaCliente.Open;
          if CDSBuscaCliente.RecordCount>0 then
            Codigo:=(Trim(CDSBuscaCliente.Fields[0].AsString))
          else
            Codigo:='';
        end
      else
        Codigo:='';
      if (Codigo<>'') then
        begin
          IDTarjeta  := CDSBuscaCliente.Fields[1].Value;
          FormRecibo_2.Agregar.Execute;
          DatosRecibos.CDSReciboFECHA.AsDateTime:=dbeFecha.Date;
          DatosRecibos.CDSReciboCODIGOSetText(DatosRecibos.CDSReciboCODIGO,(Trim(CDSBuscaCliente.Fields[0].AsString)));
          Importe:=ADODSTarjetasXLS.FieldByName('Importe').AsString;
          Trim(AnsiReplaceStr(Importe,',',''));
          DatosRecibos.CDSReciboTOTAL_NETOSetText(DatosRecibos.CDSReciboTOTAL_NETO,Importe);
          FormREcibo_2.AplicaAuto.Execute;
          FormRecibo_2.pcDetalle.ActivePageIndex:=1;
          FormRecibo_2.pcDetalleChange(sender);

          FormRecibo_2.FrameMovValoresIngreso1.ceCaja.Text       :=IntToStr(dbcCtas.KeyValue);
          FormRecibo_2.FrameMovValoresIngreso1.edMuestraCaja.Text:=dbcCtas.Text;
         // FormRecibo_2.FrameMovValoresIngreso1.Id_Caja           :=dbcCtas.KeyValue;
          FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMov.Insert;
          FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,IntToStr(dbcTarjeta.KeyValue));
         // FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCredito.Append;
          FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TCSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TC,IntToStr(IDTarjeta));
          FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETO,Importe);
          FormRecibo_2.FrameMovValoresIngreso1.BitBtn6.Click;
          //FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMov.Post;
          FechaAux:=dbeFecha.Date;
          case rgTipo.ItemIndex of
            0:Tipo:='C';
            1:Tipo:='D';
          end;
          DatosRecibos.CDSReciboLOTE_COBRO_TC.Value:=Tipo+FormatDateTime('yyyymmdd',FechaAux);
          FormRecibo_2.Confirma.Execute;
        end
      else
        begin
          Lista:=FormNovedadesFacturacion.lwNovedades.Items.Add;

          Lista.Caption:=ADODSTarjetasXLS.Fields[0].AsString;
          Lista.SubItems.Add(ADODSTarjetasXLS.Fields[1].AsString);
         // Lista.SubItems.Add(ADODSTarjetasXLS.Fields[2].AsString);
         // Lista.SubItems.Add(ADODSTarjetasXLS.Fields[3].AsString);
          //Lista.SubItems.Add(ADODSTarjetasXLS.Fields[4].AsString+' - Fallo de Proceso');
        end;
      ADODSTarjetasXLS.Next;
    end;
  FormRecibo_2.Close;
  ADODSTarjetasXLS.Close;
  ADOConnection.Connected:=False;
  ShowMessage('Proceso Finalizado...');
  if FormNovedadesFacturacion.lwNovedades.Items.Count>0 then
    FormNovedadesFacturacion.Visible:=True;

  //
end;

procedure TFormCobroConTarjetasCredito.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

procedure TFormCobroConTarjetasCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Importar_CobroTC.ini');
  //*************************************************************
  ArchivoIni.WriteInteger('ArchivoXML', 'Sucursal', dbcSucursal.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'Comprobante', dbcComprobante.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'FPago', dbcTarjeta.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'Caja', dbcCtas.KeyValue);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormCobroConTarjetasCredito.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Importar_CobroTC.ini');
  CDSFPagoTC.Open;
  CDSCajas.Open;

  //*************************************************************
  dbcSucursal.KeyValue      := ArchivoIni.ReadInteger('ArchivoXML', 'Sucursal', -1);
  dbcComprobante.KeyValue   := ArchivoIni.ReadInteger('ArchivoXML', 'Comprobante', -1);
  dbcTarjeta.KeyValue       := ArchivoIni.ReadInteger('ArchivoXML', 'FPago',-1);
  dbcCtas.KeyValue          := ArchivoIni.ReadInteger('ArchivoXML', 'Caja', -1);

  ArchivoIni.Free;


  CDSSucursal.Open;

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  if Not(Assigned(FormNovedadesFacturacion)) then
    FormNovedadesFacturacion:=TFormNovedadesFacturacion.Create(Self);
  FormNovedadesFacturacion.lwNovedades.Clear;

  CDSLotes.Close;
  CDSLotes.Open;

end;

procedure TFormCobroConTarjetasCredito.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCobroConTarjetasCredito:=nil;
end;

procedure TFormCobroConTarjetasCredito.romResize(Sender: TObject);
begin
  inherited;
  if FormCobroConTarjetasCredito<>nil then
    if FormCobroConTarjetasCredito.Width<>956 then
      FormCobroConTarjetasCredito.Width:=956;

end;

procedure TFormCobroConTarjetasCredito.ImportarExecute(Sender: TObject);
var codigo:string;
begin
 inherited;
 if Not(Assigned(FormProceso)) Then
    FormProceso:=TFormProceso.Create(Application);
  FormProceso.Mensaje:='Ingresando Datos....';
  FormProceso.Show;
  FormProceso.Close;
  ADODSTarjetasXLS.First;
  while not ADODSTarjetasXLS.Eof do
    begin

     end;
  ADODSTarjetasXLS.Next;
  ADOConnection.Connected:=False;
  ADODSTarjetasXLS.Active:=False;
end;

procedure TFormCobroConTarjetasCredito.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

end.
