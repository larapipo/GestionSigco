unit UImportadorFacCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, StdCtrls, Mask, JvExMask,
  SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls, Math,
  Buttons, ToolWin, ExtCtrls, JvDBLookup, Grids, DBGrids, ADODB,IniFiles,
  System.Actions, JvAppStorage,
  JvAppIniStorage, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, JvDBGridFooter, JvToolEdit, JvGradient;

type
  TFormImportarFacturaCompra = class(TFormABMBase)
    Label1: TLabel;
    ceProveedor: TJvComboEdit;
    edNombreProveedor: TEdit;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorSALDO_INICIAL: TFloatField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    BuscarProveedor: TAction;
    RxLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel6: TJvLabel;
    dbcComprobante: TJvDBLookupCombo;
    RxLabel3: TJvLabel;
    dbcDeposito: TJvDBLookupCombo;
    QComproba: TFDQuery;
    QComprobaID_COMPROBANTE: TIntegerField;
    QComprobaTIPO_COMPROB: TStringField;
    QComprobaCLASE_COMPROB: TStringField;
    QComprobaDENOMINACION: TStringField;
    QComprobaSUCURSAL: TIntegerField;
    QDepositos: TFDQuery;
    DSPSucursal: TDataSetProvider;
    DSPComprobante: TDataSetProvider;
    DSPDepositos: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSSucursal: TDataSource;
    DSComprobante: TDataSource;
    DSDeposito: TDataSource;
    ADOConnection: TADOConnection;
    ADODSMovXLS: TADODataSet;
    DSMovXLS: TDataSource;
    OpenDialog: TOpenDialog;
    edPath: TEdit;
    BuscarArchivo: TSpeedButton;
    BuscarArticulo: TAction;
    BitBtn1: TBitBtn;
    rgFiltro: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    ceCodigo: TJvComboEdit;
    edDetalle: TEdit;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    Label4: TLabel;
    ceCodigo105: TJvComboEdit;
    edDetalle2: TEdit;
    Label5: TLabel;
    QAplicCCosto: TFDQuery;
    QCtroCosto: TFDQuery;
    DSPCtroCosto: TDataSetProvider;
    CDSCtroCosto: TClientDataSet;
    CDSCtroCostoID: TIntegerField;
    CDSCtroCostoDESCRIPCION: TStringField;
    CDSCtroCostoPOR_DEFECTO: TStringField;
    JvLabel1: TJvLabel;
    ceCentroCosto: TJvDBLookupCombo;
    DSCtroCosto: TDataSource;
    JvDBGridFooter1: TJvDBGridFooter;
    dbgClientesXLS: TDBGrid;
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarArchivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rgFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure JvDBGridFooter1Calculate(Sender: TJvDBGridFooter;
      const FieldName: string; var CalcValue: Variant);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    ArchivoIni   :TIniFile;
    Aux_0:Extended;
    procedure Suma;
    { Public declarations }
  end;

var
  FormImportarFacturaCompra: TFormImportarFacturaCompra;

implementation

uses UBuscadorProveedor, UCompra_2, DMCompra, UBuscadorArticulos, UDMain_FD;

{$R *.dfm}


procedure TFormImportarFacturaCompra.Suma;
var CDSClone:TClientDataSet;
begin
  Aux_0:=0;
  ADODSMovXLS.First;
  ADODSMovXLS.DisableControls;
  while Not(ADODSMovXLS.Eof) do
    begin
      Aux_0:=Aux_0+ADODSMovXLS.FieldByName('Monto').AsFLoat;
      ADODSMovXLS.Next;
    end;
  ADODSMovXLS.EnableControls;
  ADODSMovXLS.First;

end;



procedure TFormImportarFacturaCompra.BitBtn1Click(Sender: TObject);
var a,m,d:Word;
ImporteIva,Tasa,Neto:Extended;
x,Anulada:Boolean;

begin
  inherited;
// if Not(Assigned(FormProceso)) Then
//    FormProceso:=TFormProceso.Create(Application);
//  FormProceso.Mensaje:='Ingresando Datos....';
//  FormProceso.Show;
//  FormProceso.Close;
  if (ADODSMovXLS.IsEmpty) then
    Raise Exception.Create('No hay Datos para procesar...');

  if ((dbcDeposito.KeyValue)<=0) then
    Raise Exception.Create('Falta el Deposito...');

  if ((dbcSucursal.KeyValue)<=0) then
    Raise Exception.Create('Falta Sucursal..');

  if ((dbcComprobante.KeyValue)<=0) then
    Raise Exception.Create('Falta el Comprobante..');

  if (Trim(ceProveedor.Text)='') then
    Raise Exception.Create('Falta el Proveedor...');

  if (Trim(ceCodigo.Text)='') then
    Raise Exception.Create('Falta el Articulo...');

  if Not(Assigned(FormCompra_2)) then
    FormCompra_2 := TFormCompra_2.Create(Self);
  FormCompra_2.FormStyle   :=fsNormal;
  //FormCompra_2.WindowState :=wsMinimized;
  FormCompra_2.Visible     :=False;
  ADODSMovXLS.IndexFieldNames:='letra;identificacion;tipo_impuesto';
  ADODSMovXLS.First;
  Anulada:=False;
  while not ADODSMovXLS.Eof do
    begin

      if (ADODSMovXLS.FieldByName('tipo_impuesto').Value=0) then
        Anulada:= Not((Abs(ADODSMovXLS.FieldByName('monto').Value)>0));

      if (ADODSMovXLS.FieldByName('tipo_impuesto').Value=0) Then
        begin
          if FormCompra_2.DSBase.State=dsInsert then
            begin
              FormCompra_2.Confirma.Execute;
              if ceCentroCosto.KeyValue>0 then
                begin
                  DatosCompra.CDSCompraDet.First;
                  while Not(DatosCompra.CDSCompraDet.eof) do
                    begin
                      QAplicCCosto.Close;
                      QAplicCCosto.ParamByName('id_cpbte').Value  := DatosCompra.CDSCompraCabID_FC.Value;
                      QAplicCCosto.ParamByName('Tipo').Value      := DatosCompra.CDSCompraCabTIPOCPBTE.Value;
                      QAplicCCosto.ParamByName('Total').AsFloat   := RoundTo(DatosCompra.CDSCompraCabNETOGRAV2.AsFloat +
                                                                            DatosCompra.CDSCompraCabNETOEXEN2.AsFloat +
                                                                            DatosCompra.CDSCompraCabNETOMONOTRIBUTO2.AsFloat+
                                                                            DatosCompra.CDSCompraCabIMPORTEEXCLUIDO2.AsFloat,-2);
                      QAplicCCosto.ParamByName('Imputado').AsFloat  :=RoundTo(DatosCompra.CDSCompraDetTOTAL.AsFloat,-2);
                      QAplicCCosto.ParamByName('porcentaje').AsFloat:=(RoundTo(DatosCompra.CDSCompraDetTOTAL.AsFloat,-2) /
                                                                      RoundTo(DatosCompra.CDSCompraCabNETOGRAV2.AsFloat +
                                                                              DatosCompra.CDSCompraCabNETOEXEN2.AsFloat +
                                                                              DatosCompra.CDSCompraCabNETOMONOTRIBUTO2.AsFloat+
                                                                              DatosCompra.CDSCompraCabIMPORTEEXCLUIDO2.AsFloat,-2))*100;
                      QAplicCCosto.ParamByName('concepto').Value  := DatosCompra.CDSCompraDetCODIGOARTICULO.Value;
                      QAplicCCosto.ParamByName('detalle').Value   := DatosCompra.CDSCompraDetDETALLE.Value;


                      QAplicCCosto.ParamByName('CtroCosto').Value :=ceCentroCosto.KeyValue;
                      QAplicCCosto.ExecSQL;
                      QAplicCCosto.Close;
                      DatosCompra.CDSCompraDet.Next;
                    end;
                end;
            end;

          if Anulada=False then
            begin
              FormCompra_2.Agregar.Execute;

              A:=StrToInt(Copy(ADODSMovXLS.FieldByName('fec').AsString,1,4));
              M:=StrToInt(Copy(ADODSMovXLS.FieldByName('fec').AsString,6,2));
              D:=StrToInt(Copy(ADODSMovXLS.FieldByName('fec').AsString,9,2));

              DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime:=EncodeDate(a,m,d);//  dbeFecha.Date;
              DatosCompra.CDSCompraCabFECHAFISCAL.AsDateTime:=EncodeDate(a,m,d);//  dbeFecha.Date;
              DatosCompra.CDSCompraCabCodigoSetText(DatosCompra.CDSCompraCabCodigo,ceProveedor.Text);
              DatosCompra.CDSCompraCabSUCURSALCOMPRASetText(DatosCompra.CDSCompraCabSUCURSALCOMPRA,IntToStr(dbcSucursal.KeyValue));
              DatosCompra.CDSCompraCabDepositoSetText(DatosCompra.CDSCompraCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
              DatosCompra.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
              DatosCompra.CDSCompraCabSucFacSetText(DatosCompra.CDSCompraCabSUCFAC,ADODSMovXLS.FieldByName('Caja_dgi').AsString);
              DatosCompra.CDSCompraCabNumeroFacSetText(DatosCompra.CDSCompraCabNUMEROFAC,ADODSMovXLS.FieldByName('Inicial').AsString);
            end;
        end
      else
        if (ADODSMovXLS.FieldByName('tipo_impuesto').Value=1) and (Anulada=False) and (FormCompra_2.DSBase.State=dsInsert) Then
          begin
            Neto       := 0;
            ImporteIva := StrToFloat(ADODSMovXLS.FieldByName('Monto').AsString);
            Tasa       := 0.21;
            Neto:=Abs(ImporteIva/Tasa);
            DatosCompra.CDSCompraDet.Append;
            DatosCompra.CDSCompraDetCodigoArticuloSetText(DatosCompra.CDSCompraDetCodigoArticulo,Trim(ceCodigo.Text));
            DatosCompra.CDSCompraDetCantidadSetText(DatosCompra.CDSCompraDetCantidad,'1');
            DatosCompra.CDSCompraDetUNIDADES_TOTALSetText(DatosCompra.CDSCompraDetUNIDADES_TOTAL,FloatToStr(Neto));
            DatosCompra.CDSCompraDet.Post;
            if DatosCompra.CDSImpuestos.Locate('codigo_gravamen','1',[]) Then
              DatosCompra.CDSImpuestosIMPORTESetText(DatosCompra.CDSImpuestosIMPORTE,ADODSMovXLS.FieldByName('Monto').AsString);

          end
        else
          if (ADODSMovXLS.FieldByName('tipo_impuesto').Value=2) and (Anulada=False) and (FormCompra_2.DSBase.State=dsInsert) Then
            begin
              Neto       := 0;
              ImporteIva := StrToFloat(ADODSMovXLS.FieldByName('Monto').AsString);
              Tasa       := 0.105;
              Neto:=Abs(ImporteIva/Tasa);
              DatosCompra.CDSCompraDet.Append;
              DatosCompra.CDSCompraDetCodigoArticuloSetText(DatosCompra.CDSCompraDetCodigoArticulo,Trim(ceCodigo105.Text));
              DatosCompra.CDSCompraDetCantidadSetText(DatosCompra.CDSCompraDetCantidad,'1');
              DatosCompra.CDSCompraDetUNIDADES_TOTALSetText(DatosCompra.CDSCompraDetUNIDADES_TOTAL,FloatToStr(Neto));
              DatosCompra.CDSCompraDet.Post;
              if DatosCompra.CDSImpuestos.Locate('codigo_gravamen','4',[]) Then
                DatosCompra.CDSImpuestosIMPORTESetText(DatosCompra.CDSImpuestosIMPORTE,ADODSMovXLS.FieldByName('Monto').AsString);
            end
          else
            if (ADODSMovXLS.FieldByName('tipo_impuesto').Value=27) and (Anulada=False) and (FormCompra_2.DSBase.State=dsInsert) Then
              begin
                Neto :=Abs(StrToFloat(ADODSMovXLS.FieldByName('Monto').AsString));
                DatosCompra.CDSPercepcionIB.Edit;
                DatosCompra.CDSImpuestosIMPORTESetText(DatosCompra.CDSPercepcionIBIMPORTE,FloatToStr(Neto));
                if DatosCompra.CDSPercepcionIB.State<>dsbrowse then
                  DatosCompra.CDSPercepcionIB.Post;
              end;
      ADODSMovXLS.Next;

     // FormCompra_2.Confirma.Execute;
    end;
  if FormCompra_2.DSBase.State<>dsBrowse then
    FormCompra_2.Confirma.Execute;

  ADOConnection.Connected:=False;
  ADODSMovXLS.Active:=False;
  FormCompra_2.Close;

end;

procedure TFormImportarFacturaCompra.BuscarArchivoClick(Sender: TObject);
begin
  inherited;
 //if pnAviso.Visible=True Then
 //   pnAviso.Visible:=False;

  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
         edPath.Text:=OpenDialog.FileName;
        ADOConnection.Connected:=False;
        ADODSMovXLS.Active:=False;
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
        ADODSMovXLS.Connection:=ADOConnection;
        ADODSMovXLS.CommandType:=cmdTableDirect;
        ADODSMovXLS.CommandText:='Hoja1$';
        ADOConnection.Connected:=true;
        ADODSMovXLS.Active:=True;

      end;
    if Not(ADODSMovXLS.IsEmpty) then
      begin
        ADODSMovXLS.IndexFieldNames:='letra;identificacion;tipo_impuesto';
        rgFiltroClick(Sender);
        suma;
      end;
end;

procedure TFormImportarFacturaCompra.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       CDSStock.Close;
       CDSStock.Params.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       CDSStock.Open;
       if not(CDSStock.IsEmpty) then
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:=CDSStockDETALLE_STK.Value;
               ceCodigo.Text :=CDSStockCODIGO_STK.Value;
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :=CDSStockDETALLE_STK.Value;
                 ceCodigo105.Text :=CDSStockCODIGO_STK.Value;
               end
         end
       else
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:='';
               ceCodigo.Text :='';
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :='';
                 ceCodigo105.Text :='';
               end
         end;
       CDSStock.Close;

    end;

end;

procedure TFormImportarFacturaCompra.BuscarProveedorExecute(Sender: TObject);
begin
 IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
//  QProveedores.Close;
//  QProveedores.Open;
//  IF wwBuscadorProveedores.Execute THEN
    BEGIN
      ceProveedor.Text := FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
          //CorreoDestino          := CDSProveedorCORREO.Value;
          //TraerCtaCte.Execute;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
//  QProveedores.Close;
end;

procedure TFormImportarFacturaCompra.ceProveedorKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) +
        ceProveedor.Text;
      ceProveedor.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        begin
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
         // CorreoDestino          := CDSProveedorCORREO.Value;
        end;
     // TraerCtaCte.Execute;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END
  else
    if key=#10 Then
      begin
        Key:=#0;
        BuscarProveedor.Execute;
      end;
end;

procedure TFormImportarFacturaCompra.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprobantes.Open;

end;

procedure TFormImportarFacturaCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImpFacCompra.ini')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_ImpFacCompra.ini');
  //*************************************************************
  ArchivoIni.WriteString('Dato', 'Codigo',ceProveedor.Text);
  ArchivoIni.WriteString('Dato', 'Nombre',edNombreProveedor.Text);
  ArchivoIni.WriteInteger('Dato', 'Deposito',dbcDeposito.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'Sucursal',dbcSucursal.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'Comprobante',dbcComprobante.KeyValue);
  ArchivoIni.WriteString('Dato', 'CodArticulo',ceCodigo.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo',edDetalle.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo105',ceCodigo105.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo2',edDetalle2.Text);
  ArchivoIni.WriteInteger('Dato', 'CentroCosto',ceCentroCosto.KeyValue);


  ArchivoIni.Free;

  Action:=cafree;
end;

procedure TFormImportarFacturaCompra.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Open;
  dbcSucursal.KeyValue:=SucursalPorDefecto;

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  CDSDepositos.Open;
  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSDepositos.Open;

  dbcDeposito.KeyValue:=DepositoPorDefecto;

  CDSCtroCosto.Close;
  CDSCtroCosto.Open;

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_ImpFacCompra.ini')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_ImpFacCompra.ini');
  //*************************************************************
  ceProveedor.Text        := ArchivoIni.ReadString('Dato', 'Codigo','');
  edNombreProveedor.Text  := ArchivoIni.ReadString('Dato', 'Nombre','');
  dbcDeposito.KeyValue    := ArchivoIni.ReadInteger('Dato', 'Deposito',DepositoPorDefecto);
  dbcSucursal.KeyValue    := ArchivoIni.ReadInteger('Dato', 'Sucursal',SucursalPorDefecto);
  dbcComprobante.KeyValue := ArchivoIni.ReadInteger('Dato', 'Comprobante',-1);
  ceCodigo.Text           := ArchivoIni.ReadString('Dato', 'CodArticulo','');
  edDetalle.Text          := ArchivoIni.ReadString('Dato', 'DetArticulo','');
  ceCodigo105.Text        := ArchivoIni.ReadString('Dato', 'CodArticulo105','');
  edDetalle2.Text         := ArchivoIni.ReadString('Dato', 'DetArticulo2','');
  ceCentroCosto.KeyValue  := ArchivoIni.ReadInteger('Dato', 'CentroCosto',-1);

  ArchivoIni.Free;
end;

procedure TFormImportarFacturaCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarFacturaCompra:=nil;
end;

procedure TFormImportarFacturaCompra.FormResize(Sender: TObject);
begin
  inherited;
  if FormImportarFacturaCompra<>nil then
    if FormImportarFacturaCompra.Width<>948 then
      FormImportarFacturaCompra.Width:=948;

end;

procedure TFormImportarFacturaCompra.JvDBGridFooter1Calculate(
  Sender: TJvDBGridFooter; const FieldName: string; var CalcValue: Variant);
begin
  inherited;
  if(AnsiSameText(FieldName, 'Monto')) then
     begin
       CalcValue := Aux_0;
       JvDBGridFooter1.Columns.Items[1].DisplayMask :=  FloatToStrF(CalcValue, ffNumber, 15,2);
    end;

end;

procedure TFormImportarFacturaCompra.rgFiltroClick(Sender: TObject);
begin
  inherited;

//  ADODSMovXLS.Close;

  ADODSMovXLS.Filtered:=False;
  case rgFiltro.ItemIndex of
    0:ADODSMovXLS.Filter :='MONTO >=0 ';
    1:ADODSMovXLS.Filter :='MONTO <=0 ';
  end;
  if Not(ADODSMovXLS.IsEmpty) then
    ADODSMovXLS.Filtered:=True;

  CDSComprobantes.Filtered:=False;

  dbcComprobante.KeyValue:=-1;
  case rgFiltro.ItemIndex of
    0:CDSComprobantes.Filter :='TIPO_COMPROB = ''FC'' ';
    1:CDSComprobantes.Filter :='TIPO_COMPROB = ''NC'' ';
  end;
  CDSComprobantes.Filtered:=True;

end;

end.
