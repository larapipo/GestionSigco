unit UImportacionPreventa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Provider, DBClient, Mask, JvExMask, JvToolEdit,
  JvExControls, JvDBLookup, JvLabel, StdCtrls, ADODB, SqlExpr, IniFiles,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls, Grids, DBGrids,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, AdvPageControl,
  JvMemoryDataset, System.ImageList;

type
  TFormImportacionPreventas = class(TFormABMBase)
    ADOConnection: TADOConnection;
    ADODSVtasXLS: TADODataSet;
    DSVtasXLS: TDataSource;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    btImportar: TBitBtn;
    RxLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel6: TJvLabel;
    dbcComprobante: TJvDBLookupCombo;
    RxLabel3: TJvLabel;
    dbcDeposito: TJvDBLookupCombo;
    JvLabel1: TJvLabel;
    dbcCtas: TJvDBLookupCombo;
    RxLabel1: TJvLabel;
    dbeFecha: TJvDateEdit;
    DSSucursal: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSComprobante: TDataSource;
    DSDeposito: TDataSource;
    DSCajas: TDataSource;
    dbgVtas: TDBGrid;
    JvDBStatusLabel1: TJvDBStatusLabel;
    lbArchivos: TListBox;
    Button1: TButton;
    LeerDirectorio: TAction;
    BuscaDir: TAction;
    AbrirArchivo: TAction;
    RecuperaArchivo: TAction;
    pcOperaciones: TAdvPageControl;
    tsDatosImportar: TAdvTabSheet;
    tsImportado: TAdvTabSheet;
    dbgFacturado: TDBGrid;
    MemoryData: TJvMemoryData;
    MemoryDataTIPOCPBTE: TStringField;
    MemoryDataNROCPBTE: TStringField;
    MemoryDataNOMBRE: TStringField;
    MemoryDataTOTAL: TFloatField;
    MemoryDataID: TIntegerField;
    DSMemory: TDataSource;
    SpeedButton2: TSpeedButton;
    QCajas: TFDQuery;
    QCajasID_CAJA: TIntegerField;
    QCajasNUMEROCAJA: TIntegerField;
    QCajasFECHA_INCIO: TSQLTimeStampField;
    QCajasFECHA_CIERRE: TSQLTimeStampField;
    QCajasID_CUENTA_CAJA: TIntegerField;
    QCajasNOMBRE: TStringField;
    QStock: TFDQuery;
    QStockPRECIO: TFloatField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    QStockRECARGO: TFloatField;
    QStockDETALLE_STK: TStringField;
    QStockPRESENTACION_CANTIDAD: TFloatField;
    QComprobantes: TFDQuery;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QDepositos: TFDQuery;
    procedure btImportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure LeerDirectorioExecute(Sender: TObject);
    procedure BuscaDirExecute(Sender: TObject);
    procedure AbrirArchivoExecute(Sender: TObject);
    procedure RecuperaArchivoExecute(Sender: TObject);
    procedure dbgFacturadoDblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
   lista:TStringList;
   ArchivoIni:TIniFile;
   ArchivoPedido:String;
   NroPedido:String;
   procedure BorrarExecute(Sender: TObject);
   procedure FacturacionCtdo;
   procedure FacturacionCtaCte;
   procedure Remitar;

    { Public declarations }
  end;

var
  FormImportacionPreventas: TFormImportacionPreventas;

implementation

uses  UFacturaCtdo_2, DMVentaCtdo, UFactura_2, DMVenta,
  UBuscaDirectorio, URemitos, DMRemitos,UDMain_FD;

{$R *.dfm}

procedure TFormImportacionPreventas.BorrarExecute(Sender: TObject);
var cab,det:string;
begin
  Cab:=ArchivoPedido;//sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  DeleteFile(cab);

  lbArchivos.DeleteSelected;
  lbArchivos.Clear;
  LeerDirectorio.Execute;
  if lbArchivos.Count>0 Then
    begin
      lbArchivos.ItemIndex:=0;
    end
  else
    begin
     // CDSDet.EmptyDataSet;
    end;
end;



procedure TFormImportacionPreventas.AbrirArchivoExecute(Sender: TObject);
var
  Campo :TFloatField;
begin
  inherited;
  ADOConnection.Connected:=False;
  ADODSVtasXLS.Active:=False;
  ADOConnection.ConnectionString:='';
  //ADODataSet1.CommandText:='';
  ADOConnection.ConnectionString:=
  'Provider=Microsoft.Jet.OLEDB.4.0; '+
  'User ID=Admin; '+
  'Data Source='+ArchivoPedido+'; '+ //; edPath.Text+'; '+
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
  ADODSVtasXLS.Connection  := ADOConnection;
  ADODSVtasXLS.CommandType := cmdTableDirect;
  ADODSVtasXLS.CommandText :='Pedidos$';
  ADOConnection.Connected  := True;
  ADODSVtasXLS.Active      := True;
end;

procedure TFormImportacionPreventas.btImportarClick(Sender: TObject);
var Codigo:string;
Numero:string;
Facturado,RemitoEcho,Movido_Ok: Boolean;
CarpetaOrigen : PWideChar;
CarpetaDestino: PWideChar;
//x:Byte;
begin
  inherited;
  if ADODSVtasXLS.IsEmpty then
    Raise Exception.Create('No hay datos para Procesar...');
  if ADODSVtasXLS.RecordCount-1>0 then

  if dbcComprobante.LookupSource.DataSet.FieldByName('TIPO_COMPROB').Value='FO' then
    begin
      if (Assigned(FormCpbteCtdo_2)) then
        FreeAndNil(FormCpbteCtdo_2);

      if Not(Assigned(FormCpbteCtdo_2)) then
        FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
      FormCpbteCtdo_2.Show;
      FormCpbteCtdo_2.CajaPorDefecto:=dbcCtas.KeyValue;
    end
  else
  if dbcComprobante.LookupSource.DataSet.FieldByName('TIPO_COMPROB').Value='FC' then
    begin
      if (Assigned(FormCpbte_2)) then
        FreeAndNil(FormCpbte_2);

      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.Show;
      FormCpbte_2.CajaPorDefecto:=dbcCtas.KeyValue;
    end
  else
  if dbcComprobante.LookupSource.DataSet.FieldByName('TIPO_COMPROB').Value='RE' then
    begin
      if (Assigned(FormRemitos)) then
        FreeAndNil(FormRemitos);

      if Not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(Self);
      FormRemitos.Show;
      FormRemitos.CajaPorDefecto:=dbcCtas.KeyValue;
    end;

  MemoryData.Close;
  MemoryData.Open;
  MemoryData.EmptyTable;

  ADODSVtasXLS.First;
  NroPedido:='';

  while not ADODSVtasXLS.Eof do
    begin
      if NroPedido<>ADODSVtasXLS.FieldByName('Código del Pedido').AsString then
        if dbcComprobante.LookupSource.DataSet.FieldByName('TIPO_COMPROB').Value='FO' then
          begin
            NroPedido := ADODSVtasXLS.FieldByName('Código del Pedido').AsString;
            FacturacionCtdo;
            FormCpbteCtdo_2.Confirma.Execute;
            Facturado:= Not(FormCpbteCtdo_2.DSBase.Dataset.IsEmpty);
            if Facturado then
              begin
                MemoryData.Append;
                MemoryDataNROCPBTE.Value  :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('NROCPBTE').ASString;
                MemoryDataNOMBRE.Value    :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('NOMBRE').ASString;
                MemoryDataTOTAL.AsFloat   :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('TOTAL').ASFloat;
                MemoryDataID.Value        :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('ID_FC').ASInteger;
                MemoryDataTIPOCPBTE.Value :=FormCpbteCtdo_2.DSBase.DataSet.FieldByName('TIPOCPBTE').ASString;
                MemoryData.Post;
              end;
          end
        else
          if dbcComprobante.LookupSource.DataSet.FieldByName('TIPO_COMPROB').Value='FC' then
            begin
              NroPedido := ADODSVtasXLS.FieldByName('Código del Pedido').AsString;
              FacturacionCtaCte;
              FormCpbte_2.Confirma.Execute;
              Facturado:= Not(FormCpbte_2.DSBase.Dataset.IsEmpty);
              if Facturado then
                begin
                  MemoryData.Append;
                  MemoryDataNROCPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('NROCPBTE').ASString;
                  MemoryDataNOMBRE.Value    :=FormCpbte_2.DSBase.DataSet.FieldByName('NOMBRE').ASString;
                  MemoryDataTOTAL.AsFloat   :=FormCpbte_2.DSBase.DataSet.FieldByName('TOTAL').ASFloat;
                  MemoryDataID.Value        :=FormCpbte_2.DSBase.DataSet.FieldByName('ID_FC').ASInteger;
                  MemoryDataTIPOCPBTE.Value :=FormCpbte_2.DSBase.DataSet.FieldByName('TIPOCPBTE').ASString;
                  MemoryData.Post;
                end;
            end
          else
            if dbcComprobante.LookupSource.DataSet.FieldByName('TIPO_COMPROB').Value='RE' then
              begin
                NroPedido := ADODSVtasXLS.FieldByName('Código del Pedido').AsString;
                Remitar;
                FormRemitos.Confirma.Execute;
                RemitoEcho:= Not(FormRemitos.DSBase.Dataset.IsEmpty);
                if RemitoEcho then
                  begin
                    MemoryData.Append;
                    MemoryDataNROCPBTE.Value  :=FormRemitos.DSBase.DataSet.FieldByName('NROCPBTE').ASString;
                    MemoryDataNOMBRE.Value    :=FormRemitos.DSBase.DataSet.FieldByName('NOMBRE').ASString;
                    MemoryDataTOTAL.AsFloat   :=FormRemitos.DSBase.DataSet.FieldByName('TOTAL').ASFloat;
                    MemoryDataID.Value        :=FormRemitos.DSBase.DataSet.FieldByName('ID_RTO').ASInteger;
                    MemoryDataTIPOCPBTE.Value :=FormRemitos.DSBase.DataSet.FieldByName('TIPOCPBTE').ASString;
                    MemoryData.Post;
                  end;
             end;


    end;

  if Assigned(FormCpbteCtdo_2) then
    begin
      if  FormCpbteCtdo_2.DSBase.State=dsInsert Then
        FormCpbteCtdo_2.Confirma.Execute;
      FormCpbteCtdo_2.Close;
      FreeAndNil(FormCpbteCtdo_2);
    end
  else
    if Assigned(FormCpbte_2) then
      begin
        if  FormCpbte_2.DSBase.State=dsInsert Then
          FormCpbte_2.Confirma.Execute;
        FormCpbte_2.Close;
        FreeAndNil(FormCpbte_2);
      end
    else
      if Assigned(FormRemitos) then
        begin
          if  FormRemitos.DSBase.State=dsInsert Then
            FormRemitos.Confirma.Execute;
          FormRemitos.Close;
          FreeAndNil(FormRemitos);
      end;

  ADOConnection.Connected := False;
  ADODSVtasXLS.Active     := False;
  sbEstado.SimpleText     := '';
  Application.ProcessMessages;

  if Not(DirectoryExists(IncludeTrailingBackslash( edPath.text)+'Procesados')) then
    CreateDir(IncludeTrailingBackslash( edPath.text)+'Procesados');

  CarpetaOrigen := pChar(IncludeTrailingBackslash( edPath.text) + lbArchivos.Items[lbArchivos.ItemIndex]);
  CarpetaDestino:= pChar(IncludeTrailingBackslash( edPath.text) + 'Procesados\'+lbArchivos.Items[lbArchivos.ItemIndex]);

  if MessageDlg('Da por Confirmada la Operacion...?',mtConfirmation,mbYesNo,0,mbYes)=mrYes Then
    begin
      Movido_Ok:=MoveFile(CarpetaOrigen,CarpetaDestino);
      if Movido_Ok Then
        lbArchivos.DeleteSelected
      else
        begin
          DeleteFile(CarpetaDestino);
          Movido_Ok:=MoveFile(pChar(CarpetaOrigen),pChar(CarpetaDestino));
          if Movido_Ok Then
            lbArchivos.DeleteSelected;
        end;
    end;

end;



procedure TFormImportacionPreventas.BuscaDirExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPath.Text :=FormBuscaDirectorio.Directorio
  else
    edPath.Text :='';
end;

procedure TFormImportacionPreventas.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  QComprobantes.Close;
  QComprobantes.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  QComprobantes.Open;

  QDepositos.Close;
  QDepositos.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  QDepositos.Open;
end;

procedure TFormImportacionPreventas.dbgFacturadoDblClick(Sender: TObject);
begin
  inherited;
  if MemoryDataTIPOCPBTE.Value='FO' then
    begin
      if Not(Assigned(FormCpbteCtdo_2)) then
        FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
      FormCpbteCtdo_2.DatoNew  := MemoryDataID.AsString;
      FormCpbteCtdo_2.TipoCpbte:= MemoryDataTIPOCPBTE.Value;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
    if MemoryDataTIPOCPBTE.Value='FC' then
      begin
        if Not(Assigned(FormCpbte_2)) then
          FormCpbte_2:=TFormCpbte_2.Create(Self);
        FormCpbte_2.DatoNew  := MemoryDataID.AsString;
        FormCpbte_2.TipoCpbte:= MemoryDataTIPOCPBTE.Value;
        FormCpbte_2.Recuperar.Execute;
        FormCpbte_2.Show;
    end
  else
    if MemoryDataTIPOCPBTE.Value='RE' then
      begin
        if Not(Assigned(FormRemitos)) then
          FormRemitos:=TFormRemitos.Create(Self);
        FormRemitos.DatoNew  := MemoryDataID.AsString;
        FormRemitos.TipoCpbte:= MemoryDataTIPOCPBTE.Value;
        FormRemitos.Recuperar.Execute;
        FormRemitos.Show;
    end;

end;

procedure TFormImportacionPreventas.FacturacionCtaCte;
  var Unidades_Pedidas,Pack_Pedido,Unid_pack,TotalPedido:Real;
  Codigo:String;
begin
  FormCpbte_2.CajaPorDefecto := dbcCtas.KeyValue;
  FormCpbte_2.Agregar.Execute;
  FormCpbte_2.CajaPorDefecto :=dbcCtas.KeyValue;
  DatosVentas.CDSVentaCabFECHAVTA.AsDateTime := dbeFecha.Date;
  DatosVentas.CDSVentaCabCODIGOSetText(DatosVentas.CDSVentaCabCODIGO,ADODSVtasXLS.FieldByName('Código del Cliente').AsString);
  DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
  DatosVentas.CDSVentaCabDEPOSITOSetText(DatosVentas.CDSVentaCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
  DatosVentas.CDSVentaCabVENDEDORSetText(DatosVentas.CDSVentaCabVENDEDOR,ADODSVtasXLS.FieldByName('Código del Vendedor').AsString);
  DatosVentas.CDSVentaCabOBSERVACION1.Value:='Pedido Preventa Nro.:'+NroPedido;
  FormCpbte_2.CajaPorDefecto:=dbcCtas.KeyValue;
  //*********************************************************
  while (NroPedido=ADODSVtasXLS.FieldByName('Código del Pedido').AsString) and (Not(ADODSVtasXLS.Eof))  do
    begin
      with DatosVentas DO
        begin
          CDSVentaDet.Append;
          Codigo:=Copy('00000000',1,8-Length(Trim(ADODSVtasXLS.FieldByName('Código del Producto').AsString)))+Trim(ADODSVtasXLS.FieldByName('Código del Producto').AsString);

          QStock.Close;
          QStock.ParamByName('Codigo').Value  := Codigo;
          QStock.ParamByName('deposito').Value:= dbcDeposito.KeyValue;
          QStock.Open;

          Unidades_Pedidas:= StrToFloat(ADODSVtasXLS.FieldByName('Unidades Pedidas').AsString);
          Pack_Pedido     := StrToFloat(ADODSVtasXLS.FieldByName('Packs Pedidos').AsString);
          Unid_pack       := StrToFloat(ADODSVtasXLS.FieldByName('Unidades Por Pack').AsString);
          TotalPedido     := (Unidades_Pedidas/Unid_pack)+Pack_Pedido;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,Codigo);
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FloatToStr(TotalPedido));

          QStock.Close;
        end;
      ADODSVtasXLS.Next;
      Application.ProcessMessages;
    end;
end;

procedure TFormImportacionPreventas.FacturacionCtdo;
  var Unidades_Pedidas,Pack_Pedido,Unid_pack,TotalPedido:Real;
  Codigo:String;
begin
  FormCpbteCtdo_2.CajaPorDefecto := dbcCtas.KeyValue;
  FormCpbteCtdo_2.Agregar.Execute;
  FormCpbteCtdo_2.CajaPorDefecto :=dbcCtas.KeyValue;
  DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime := dbeFecha.Date;
  DatosVentasCtdo.CDSVentaCabCODIGOSetText(DatosVentasCtdo.CDSVentaCabCODIGO,ADODSVtasXLS.FieldByName('Código del Cliente').AsString);
  DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
  DatosVentasCtdo.CDSVentaCabDEPOSITOSetText(DatosVentasCtdo.CDSVentaCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
  DatosVentasCtdo.CDSVentaCabVENDEDORSetText(DatosVentasCtdo.CDSVentaCabVENDEDOR,ADODSVtasXLS.FieldByName('Código del Vendedor').AsString);
  DatosVentasCtdo.CDSVentaCabOBSERVACION1.Value:='Pedido Preventa Nro.:'+NroPedido;
  FormCpbteCtdo_2.CajaPorDefecto:=dbcCtas.KeyValue;
  //*********************************************************
  while (NroPedido=ADODSVtasXLS.FieldByName('Código del Pedido').AsString) and (Not(ADODSVtasXLS.Eof))  do
    begin
      with DatosVentasCtdo DO
        begin
          CDSVentaDet.Append;
          Codigo:=Copy('00000000',1,8-Length(Trim(ADODSVtasXLS.FieldByName('Código del Producto').AsString)))+Trim(ADODSVtasXLS.FieldByName('Código del Producto').AsString);

          QStock.Close;
          QStock.ParamByName('Codigo').Value  := Codigo;
          QStock.ParamByName('deposito').Value:= dbcDeposito.KeyValue;
          QStock.Open;

          Unidades_Pedidas:= StrToFloat(ADODSVtasXLS.FieldByName('Unidades Pedidas').AsString);
          Pack_Pedido     := StrToFloat(ADODSVtasXLS.FieldByName('Packs Pedidos').AsString);
          Unid_pack       := StrToFloat(ADODSVtasXLS.FieldByName('Unidades Por Pack').AsString);
          TotalPedido     := (Unidades_Pedidas/Unid_pack)+Pack_Pedido;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,Codigo);
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FloatToStr(TotalPedido));
          QStock.Close;
        end;
      ADODSVtasXLS.Next;
      Application.ProcessMessages;
    end;
end;


procedure TFormImportacionPreventas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //*************************************************************
   ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImportarPreventa.ini');
   ArchivoIni.WriteInteger('Preventa', 'Sucursal', dbcSucursal.KeyValue);
   ArchivoIni.WriteInteger('Preventa', 'Comprobante', dbcComprobante.KeyValue);
   ArchivoIni.WriteInteger('Preventa', 'Deposito', dbcDeposito.KeyValue);
   ArchivoIni.WriteInteger('Preventa', 'Caja', dbcCtas.KeyValue);
   ArchivoIni.WriteString('Preventa', 'Directorio', edPath.Text);
   ArchivoIni.Free;
  //*************************************************************
  Action:=cafree;
end;

procedure TFormImportacionPreventas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Open;
  QComprobantes.Open;
  QDepositos.Open;
  QCajas.OPen;
  dbeFecha.Date:=Date;
  //*************************************************************
   ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImportarPreventa.ini');
   dbcSucursal.KeyValue    := ArchivoIni.ReadInteger('Preventa', 'Sucursal', -1);

   QComprobantes.Close;
   QComprobantes.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
   QComprobantes.Open;

   QDepositos.Close;
   QDepositos.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
   QDepositos.Open;

   dbcComprobante.KeyValue := ArchivoIni.ReadInteger('Preventa', 'Comprobante', -1);
   dbcDeposito.KeyValue    := ArchivoIni.ReadInteger('Preventa', 'Deposito', -1);
   dbcCtas.KeyValue        := ArchivoIni.ReadInteger('Preventa', 'Caja', -1);
   edPath.Text             := ArchivoIni.ReadString('Preventa', 'Directorio', '');
   ArchivoIni.Free;
  //*************************************************************
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

   LeerDirectorio.Execute;
   pcOperaciones.ActivePageIndex:=0;

end;

procedure TFormImportacionPreventas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportacionPreventas:=nil;
end;

procedure TFormImportacionPreventas.FormResize(Sender: TObject);
begin
  inherited;
  if FormImportacionPreventas<>nil then
    if FormImportacionPreventas.Width<>986 then
      FormImportacionPreventas.Width:=986;

end;

procedure TFormImportacionPreventas.LeerDirectorioExecute(Sender: TObject);
var
  Busqueda   : TSearchRec;
  iResultado : Integer;
begin
  inherited;
//  sDirectorio := IncludeTrailingBackslash( sDirectorio );

  iResultado :=  FindFirst( IncludeTrailingBackslash( edPath.text) + '*.xls', faAnyFile, Busqueda );
  lbArchivos.Clear;
  while iResultado = 0 do
    begin
      // ¿Ha encontrado un archivo y no es un directorio?
      if ( Busqueda.Attr and faArchive = faArchive ) and
         ( Busqueda.Attr and faDirectory <> faDirectory ) then
        lbArchivos.Items.Add(Busqueda.Name);
      iResultado := FindNext( Busqueda );
    end;
  FindClose( Busqueda );

end;

procedure TFormImportacionPreventas.RecuperaArchivoExecute(Sender: TObject);
begin
  inherited;
  ArchivoPedido:= IncludeTrailingBackslash( edPath.text) +lbArchivos.Items[lbArchivos.ItemIndex];
  AbrirArchivo.Execute;// CDSCab.LoadFromFile(Cab);
end;

procedure TFormImportacionPreventas.Remitar;
  var Unidades_Pedidas,Pack_Pedido,Unid_pack,TotalPedido:Real;
  Codigo:String;
begin
  FormRemitos.CajaPorDefecto := dbcCtas.KeyValue;
  FormRemitos.Agregar.Execute;
  FormRemitos.CajaPorDefecto :=dbcCtas.KeyValue;
  DatosRemitos.CDSRtoCabFECHAVTA.AsDateTime := dbeFecha.Date;
  DatosRemitos.CDSRtoCabCODIGOSetText(DatosRemitos.CDSRtoCabCODIGO,ADODSVtasXLS.FieldByName('Código del Cliente').AsString);
  DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTESetText(DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
  DatosRemitos.CDSRtoCabDEPOSITOSetText(DatosRemitos.CDSRtoCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
  DatosRemitos.CDSRtoCabVENDEDORSetText(DatosRemitos.CDSRtoCabVENDEDOR,ADODSVtasXLS.FieldByName('Código del Vendedor').AsString);
  DatosRemitos.CDSRtoCabOBSERVACION1.Value:='Pedido Preventa Nro.:'+NroPedido;
  FormRemitos.CajaPorDefecto:=dbcCtas.KeyValue;
  //*********************************************************
  while (NroPedido=ADODSVtasXLS.FieldByName('Código del Pedido').AsString) and (Not(ADODSVtasXLS.Eof))  do
    begin
      with DatosRemitos DO
        begin
          CDSRtoDet.Append;
          Codigo:=Copy('00000000',1,8-Length(Trim(ADODSVtasXLS.FieldByName('Código del Producto').AsString)))+Trim(ADODSVtasXLS.FieldByName('Código del Producto').AsString);

          QStock.Close;
          QStock.ParamByName('Codigo').Value  := Codigo;
          QStock.ParamByName('deposito').Value:= dbcDeposito.KeyValue;
          QStock.Open;

          Unidades_Pedidas:= StrToFloat(ADODSVtasXLS.FieldByName('Unidades Pedidas').AsString);
          Pack_Pedido     := StrToFloat(ADODSVtasXLS.FieldByName('Packs Pedidos').AsString);
          Unid_pack       := StrToFloat(ADODSVtasXLS.FieldByName('Unidades Por Pack').AsString);
          TotalPedido     := (Unidades_Pedidas/Unid_pack)+Pack_Pedido;
          CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,Codigo);
          CDSRtoDetCantidadSetText(CDSRtoDetCantidad,FloatToStr(TotalPedido));

          QStock.Close;
        end;
      ADODSVtasXLS.Next;
      Application.ProcessMessages;
    end;
end;

procedure TFormImportacionPreventas.SpeedButton2Click(Sender: TObject);
var CarpetaOrigen : String;
    CarpetaDestino: String;
    MovidoOk:Boolean;
begin
  inherited;
  if (lbArchivos.ItemIndex>=0) and (lbArchivos.Items[lbArchivos.ItemIndex]<>'') then
    begin
      CarpetaOrigen := (IncludeTrailingBackslash( edPath.text) + lbArchivos.Items[lbArchivos.ItemIndex]);
      CarpetaDestino:= (IncludeTrailingBackslash( edPath.text) + 'Procesados\'+lbArchivos.Items[lbArchivos.ItemIndex]);

      if MessageDlg('Da por Confirmada las Operaciones...?',mtConfirmation,mbYesNo,0,mbYes)=mrYes Then
        begin
          ADOConnection.Connected := False;
          ADODSVtasXLS.Active     := False;
          MovidoOk:=MoveFile(pChar(CarpetaOrigen),pChar(CarpetaDestino));
          if MovidoOk Then
            lbArchivos.DeleteSelected
          else
            begin
              DeleteFile(CarpetaDestino);
              MovidoOk:=MoveFile(pChar(CarpetaOrigen),pChar(CarpetaDestino));
              if MovidoOk Then
                lbArchivos.DeleteSelected
            end;
        end;
    end;
end;

end.
