unit UImportacionDiner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, Grids, DBGrids, Spin, DB, DBClient,
  Provider, ADODB, ComCtrls, SqlExpr, JvComponentBase, JvFormPlacement,
  ImgList, wwDialog, wwidlg, ActnList, JvLabel, JvDBControls, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls,IniFiles, JvDBLookup,Math, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, JvBaseDlg, JvSelectDirectory, JvAppStorage,
  JvAppIniStorage, System.Actions;

type
  TFormImportacionDiner = class(TFormABMBase)
    PageControl1: TPageControl;
    pag2: TTabSheet;
    pag1: TTabSheet;
    DSCabecera: TDataSource;
    DSDetalle: TDataSource;
    Button1: TButton;
    dbgCabecera: TDBGrid;
    JvDBStatusLabel1: TJvDBStatusLabel;
    dbgDetalle: TDBGrid;
    chFiscal: TCheckBox;
    QComprFac: TSQLQuery;
    CDSComprFac: TClientDataSet;
    DSPComprFac: TDataSetProvider;
    CDSComprFacID_COMPROBANTE: TIntegerField;
    CDSComprFacTIPO_COMPROB: TStringField;
    CDSComprFacCLASE_COMPROB: TStringField;
    CDSComprFacDENOMINACION: TStringField;
    CDSComprFacSUCURSAL: TIntegerField;
    CDSComprFacLETRA: TStringField;
    CDSComprFacPREFIJO: TStringField;
    CDSComprFacNUMERARCION_PROPIA: TStringField;
    CDSComprFacNUMERO: TStringField;
    CDSComprFacTOMA_NRO_DE: TIntegerField;
    CDSComprFacAFECTA_IVA: TStringField;
    CDSComprFacAFECTA_CC: TStringField;
    CDSComprFacDESGLOZA_IVA: TStringField;
    CDSComprFacCOMPRA_VENTA: TStringField;
    CDSComprFacCOPIAS: TIntegerField;
    CDSComprFacREPORTE: TStringField;
    CDSComprFacIMPRIME: TStringField;
    CDSComprFacFISCAL: TStringField;
    CDSComprFacNOMBREIMPRESORA: TStringField;
    CDSComprFacPENDIENTEIMPRESION: TStringField;
    CDSComprFacLINEAS_DETALLE: TSmallintField;
    CDSComprFacCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprFacDEFECTO: TStringField;
    CDSComprFacCAJA_DEFECTO: TIntegerField;
    CDSComprFacDIVIDE_IVA: TStringField;
    CDSComprFacFACTURAELECTRONICA: TStringField;
    CDSComprFacEN_USO: TStringField;
    CDSComprFacCODIGO_AFIP: TStringField;
    DSComprFac: TDataSource;
    QSucursal: TSQLQuery;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFMTBCDField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSSucursalGENERA_XML_COMUN: TStringField;
    CDSSucursalHOST: TStringField;
    DSSucursal: TDataSource;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label2: TLabel;
    cbRubro: TJvDBLookupCombo;
    Label3: TLabel;
    cbSubRubro: TJvDBLookupCombo;
    DSRubros: TDataSource;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    DSSubRubro: TDataSource;
    QTraeCodigo: TSQLQuery;
    QTraeCodigoCODIGO_STK: TStringField;
    QTraeCodigoDETALLE_STK: TStringField;
    QTraeCodigoRUBRO_STK: TStringField;
    QTraeCodigoSUBRUBRO_STK: TStringField;
    RxLabel3: TJvLabel;
    dbcDeposito: TJvDBLookupCombo;
    JvLabel2: TJvLabel;
    dbcCtas: TJvDBLookupCombo;
    QCajas: TSQLQuery;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    DSCajas: TDataSource;
    DSCompNC: TDataSource;
    CDSCompNC: TClientDataSet;
    CDSCompNCID_COMPROBANTE: TIntegerField;
    CDSCompNCTIPO_COMPROB: TStringField;
    CDSCompNCCLASE_COMPROB: TStringField;
    CDSCompNCDENOMINACION: TStringField;
    CDSCompNCSUCURSAL: TIntegerField;
    DSPCompNC: TDataSetProvider;
    QCompNC: TSQLQuery;
    QCompNCID_COMPROBANTE: TIntegerField;
    QCompNCTIPO_COMPROB: TStringField;
    QCompNCCLASE_COMPROB: TStringField;
    QCompNCDENOMINACION: TStringField;
    QCompNCSUCURSAL: TIntegerField;
    DSDeposito: TDataSource;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSPDepositos: TDataSetProvider;
    QDepositos: TSQLQuery;
    Facturar: TAction;
    spABMStock: TSQLStoredProc;
    edTotal: TJvCalcEdit;
    RxLabel6: TJvLabel;
    dbcComprobante: TJvDBLookupCombo;
    JvSelectDirectory1: TJvSelectDirectory;
    CDSCabecera: TClientDataSet;
    CDSDetalle: TClientDataSet;
    lbAviso: TLabel;
    edBaseDatos: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    JvLabel1: TJvLabel;
    cbSucursal: TJvDBLookupCombo;
    JvLabel3: TJvLabel;
    dbcNotaCredito: TJvDBLookupCombo;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure cbSubRubroEnter(Sender: TObject);
    procedure CDSCabeceraAfterScroll(DataSet: TDataSet);
    procedure cbSucursalChange(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure chFiscalClick(Sender: TObject);
  private
    { Private declarations }
  public
    id_desde,id_hasta:Integer;
    procedure AgregarCabecera;
    procedure AgregarCabeceraTk;
    procedure Sumar;
    { Public declarations }
  end;

var
  FormImportacionDiner: TFormImportacionDiner;

implementation

{$R *.dfm}
uses DMMainForm_2, DMVentaCtdo, UFacturaCtdo_2, DMTicket, UTiketVta;

procedure TFormImportacionDiner.Sumar;
var
Aux:Extended;
begin
  Aux:=0;
  CDSCabecera.First;
  CDSCabecera.DisableControls;
  while Not(CDSCabecera.Eof) do
    begin
      Aux:=Aux+CDSCabecera.FieldByName('importe').ASFloat;
      CDSCabecera.Next;
    end;
  CDSCabecera.First;
  CDSCabecera.EnableControls;
  edTotal.Value:=Aux;
end;

procedure TFormImportacionDiner.AgregarCabecera;
begin
  with DatosVentasCtdo DO
  begin
    FormCpbteCtdo_2.SucursalPorDefecto:= cbSucursal.KeyValue;
    FormCpbteCtdo_2.DepositoPorDefecto:= dbcDeposito.KeyValue;
    FormCpbteCtdo_2.CajaPorDefecto    := dbcCtas.KeyValue;
    CDSVentaCabFECHAVTA.AsDateTime    := Date;//dbeFecha.Date;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr( cbSucursal.KeyValue));
  //  CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ClientePorDefecto);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(dbcDeposito.KeyValue));
    CDSVentaCabANULADO.Value       :='N';

    CDSVentaCabDSTO.AsFloat        := 0;
    CDSVentaCabIMPRESO.Value       :='N';
    CDSVentaCabCPTE_MANUAL.Value   :='N';
    CDSVentaCabREDUCIDA.Value      :='N';

    CDSVentaCabLISTAPRECIO.Clear;
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_2.UsuarioActivo;
    FormCpbteCtdo_2.DiscriminaIva:='S';
  end;
end;

procedure  TFormImportacionDiner.AgregarCabeceraTk;
begin
  with DatosVentasTicket DO
  begin
    FormTicketVta.SucursalPorDefecto  := cbSucursal.KeyValue;
    FormTicketVta.DepositoPorDefecto  := dbcDeposito.KeyValue;
    FormTicketVta.CajaPorDefecto      := dbcCtas.KeyValue;
    CDSVentaCabFECHAVTA.AsDateTime    := Date;//dbeFecha.Date;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr( cbSucursal.KeyValue));
    if (FormTicketVta.ClientePorDefecto='') then
      Raise Exception.Create('No hay definido un cliente por defetcto.....');
    
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,FormTicketVta.ClientePorDefecto);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(dbcDeposito.KeyValue));
    CDSVentaCabANULADO.Value       :='N';

    CDSVentaCabDSTO.AsFloat        := 0;
    CDSVentaCabIMPRESO.Value       :='N';
    CDSVentaCabCPTE_MANUAL.Value   :='N';
    CDSVentaCabREDUCIDA.Value      :='N';

    //CDSVentaCabLISTAPRECIO.Clear;
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_2.UsuarioActivo;
    FormTicketVta.DiscriminaIva:='S';
  end;

end;



procedure TFormImportacionDiner.Button1Click(Sender: TObject);
begin
  inherited;
//  CDSCabecera.Close;
//  CDSCabecera.Params.ParamByName('id').Value     := edNumero.Value;
//  CDSCabecera.Params.ParamByName('estado').Value := chFiscal.Checked;
//  CDSCabecera.Open;

   CDSCabecera.LoadFromFile(edBaseDatos.Text+'\CDSCab.XML');
   CDSDetalle.LoadFromFile(edBaseDatos.Text+'\CDSDet.XML');

   CDSDetalle.MasterSource   :=DSCabecera;
   CDSDetalle.IndexFieldNames:='id_factura';

   CDSDetalle.MasterFields   :='id_factura';

   chFiscal.OnClick(Sender);
 Sumar;

end;

procedure TFormImportacionDiner.cbRubroChange(Sender: TObject);
begin
  inherited;
  cbSubRubro.ClearValue;
end;

procedure TFormImportacionDiner.cbSubRubroEnter(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=cbRubro.KeyValue;
  CDSSubRubro.Open;
end;

procedure TFormImportacionDiner.cbSucursalChange(Sender: TObject);
begin
  inherited;
  CDSComprFac.Close;
  CDSComprFac.Params.ParamByName('Sucursal').Value:= cbSucursal.KeyValue;
  CDSComprFac.Open;

  CDSCompNC.Close;
  CDSCompNC.Params.ParamByName('Sucursal').Value:= cbSucursal.KeyValue;
  CDSCompNC.Open;

  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('Sucursal').Value:= cbSucursal.KeyValue;
  CDSDepositos.Open;
end;

procedure TFormImportacionDiner.CDSCabeceraAfterScroll(DataSet: TDataSet);
begin
  inherited;
 // CDSDetalle.Close;
//  CDSDetalle.Params.ParamByName('id').Value:= CDSCabecera.FieldByName('id_factura').Value;
//  CDSDetalle.Open;
end;

procedure TFormImportacionDiner.chFiscalClick(Sender: TObject);
begin
  inherited;
  CDSCabecera.Filtered:=False;
  CDSCabecera.Filter  :='';

  if chFiscal.Checked then
    begin
      lbAviso.Caption   :='Comprobantes Fiscales';
      CDSCabecera.Filter:='Fiscal = True ';
    end
  else
    if Not(chFiscal.Checked) then
      begin
        lbAviso.Caption   :='Comprobantes No Fiscales';
        CDSCabecera.Filter:='Fiscal = False';
      end;
  case RadioGroup1.ItemIndex of
    0: CDSCabecera.Filter:=CDSCabecera.Filter+' and importe > 0';
    1: CDSCabecera.Filter:=CDSCabecera.Filter+' and importe < 0';
  end;


  CDSCabecera.Filtered:=True;
  Sumar;


end;

procedure TFormImportacionDiner.FacturarExecute(Sender: TObject);
var Aux,CodigoArt:String;
  p  : TDataSetNotifyEvent;
  pt : pointer;
  Unitario :Extended;
  Descto   :Extended;
begin
  inherited;
   if Not(CDSCabecera.IsEmpty) Then
    begin
      if CDSComprFacTIPO_COMPROB.Value='FO' then
        begin
          if Not(Assigned(FormCpbteCtdo_2)) Then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.WindowState:=wsMinimized;
          FormCpbteCtdo_2.Agregar.Execute;
          p  := DatosVentasCtdo.CDSVentaDet.AfterPost;
          pt := @DatosVentasCtdo.CDSVentaDet.AfterPost;
          DatosVentasCtdo.CDSVentaDet.AfterPost := nil;

        end
      else
        if CDSComprFacTIPO_COMPROB.Value='TK' then
          begin
            if Not(Assigned(FormTicketVta)) Then
              FormTicketVta:=TFormTicketVta.Create(self);
            FormTicketVta.WindowState:=wsMinimized;
            FormTicketVta.Agregar.Execute;
          end;

      if CDSComprFacTIPO_COMPROB.Value='FO' then
        AgregarCabecera
      else
        if CDSComprFacTIPO_COMPROB.Value='TK' then
          AgregarCabeceraTk;

      Descto  :=0;
      CDSCabecera.First;
      while Not(CDSCabecera.eof) do
        begin
          CDSDetalle.First;
          while Not(CDSDetalle.eof) do
            begin
              QTraeCodigo.Close;
              QTraeCodigo.ParamByName('codigo').Value := CDSDetalle.fieldByName('cod_producto').AsString;
              QTraeCodigo.Open;
              if QTraeCodigo.Fields[0].AsString<>'' then
                CodigoArt := QTraeCodigo.Fields[0].AsString
              else
                begin
                  QUltimoCodigo.Close;
                  QUltimoCodigo.Open;
                  if QUltimoCodigo.Fields[0].AsString<>'' Then
                     CodigoArt:=IntToStr(QUltimoCodigo.Fields[0].AsInteger+1)
                  else
                     CodigoArt:='0';
                  QUltimoCodigo.Close;
                  CodigoArt := copy('00000000',1,8-length(CodigoArt)) + CodigoArt;

                  spABMStock.Close;
                  spABMStock.ParamByName('CODIGO').Value                := CodigoArt;
                  spABMStock.ParamByName('CODIGO_alternativo').Value    := CDSDetalle.FieldByName('cod_producto').AsString;
                  spABMStock.ParamByName('Detalle').AsString            := upperCase(CDSDetalle.FieldByName('nombre_plato').value);
                  spABMStock.ParamByName('Detalle_Adicional').AsString  := UpperCase(CDSDetalle.FieldByName('nombre_plato').value);
                  spABMStock.ParamByName('costo_gravado').Value         := CDSDetalle.FieldByName('unitario').Value / 1.21;

                  spABMStock.ParamByName('Marca').AsString    := '';

                  spABMStock.ParamByName('Rubro').AsString    := cbRubro.KeyValue;

                  spABMStock.ParamByName('subRubro').AsString      := cbSubRubro.KeyValue;
                  spABMStock.ParamByName('modo_gravamen').AsString := 'G';

                  spABMStock.ParamByName('costo_exento').Value  := 0;
                  spABMStock.ParamByName('tasa_iva').AsInteger  := 1;

                  spABMStock.ParamByName('sobretasa_iva').AsInteger  := 1;
                  spABMStock.ParamByName('moneda').AsInteger         := 1;

                  spABMStock.ExecProc;
                  spABMStock.Close;

                end;
              if Trunc(CDSDetalle.FieldByName('precio').AsFloat*100)>0 then
                begin
                  if CDSComprFacTIPO_COMPROB.Value='FO' then
                    begin
                      DatosVentasCtdo.CDSVentaDet.Append;
                      DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,CodigoArt);
                      DatosVentasCtdo.CDSVentaDetDetalle.Value          := CDSDetalle.FieldByName('nombre_plato').Value;
                      DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,CDSDetalle.FieldByName('cantidad').AsString);
                      DatosVentasCtdo.CDSVentaDetDEPOSITO.Value         :=dbcDeposito.keyValue;
                      DatosVentasCtdo.CDSVentaDetCLASECPBTE.Value       :=DatosVentasCtdo.CDSVentaCabCLASECPBTE.Value;
                      DatosVentasCtdo.CDSVentaDetTIPOCPBTE.Value        :=DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
                      Unitario:=CDSDetalle.FieldByName('unitario').AsFloat;
                      Unitario:=RoundTo(Unitario,-4);
                      Unitario:=RoundTo(Unitario,-3);
                      Unitario:=RoundTo(Unitario,-2);
                      DatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Unitario));
                      if DatosVentasCtdo.CDSVentaDet.State<>dsBrowse then
                        DatosVentasCtdo.CDSVentaDet.Post;
                    end;
                end;
              CDSDetalle.Next;
            end;
           if CDScabecera.FieldByName('ImpDesc').AsFloat>0 Then
             Descto:=Descto+CDScabecera.FieldByName('ImpDesc').AsFloat;
         //    DatosVentasCtdo.CDSVentaCabDSTOIMPORTESetText(DatosVentasCtdo.CDSVentaCabDSTOIMPORTE,CDScabecera.FieldByName('ImpDesc').AsString);

          CDSCabecera.next;
          Application.ProcessMessages;
        end;
      begin
        DatosVentasCtdo.CDSVentaDet.AfterPost := p;
        if pt <> nil then
          DatosVentasCtdo.CDSVentaDet.AfterPost(DatosVentasCtdo.CDSVentaDet);
      end;
    end;
  DatosVentasCtdo.CDSVentaCabDSTOIMPORTESetText(DatosVentasCtdo.CDSVentaCabDSTOIMPORTE,FormatFloat('0.00',Descto));

  FormCpbteCtdo_2.WindowState:=wsNormal;
  DatosVentasCtdo.CDSVentaDet.Edit;
  DatosVentasCtdo.CDSVentaDet.Post;
 // FormCpbteCtdo_2.RecalculoSuma00.Execute;
  FormCpbteCtdo_2.Show;
end;

procedure TFormImportacionDiner.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni        := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_Diner.ini');
  ArchivoIni.WriteString('Dato', 'Dato', edBaseDatos.Text);
  ArchivoIni.WriteInteger('Dato', 'Sucursal', cbSucursal.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'Comprobantes', dbcComprobante.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'NotaCredito', dbcNotaCredito.KeyValue);
  ArchivoIni.WriteString('Dato', 'Rubro', cbRubro.KeyValue );
  ArchivoIni.WriteString('Dato', 'SubRubro', cbSubRubro.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'deposito',dbcDeposito.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'caja',dbcCtas.KeyValue);

  ArchivoIni.Free;
end;

procedure TFormImportacionDiner.FormCreate(Sender: TObject);
var path:string;
begin
  AutoSize:=True;
  CDSSucursal.Open;
  CDSComprFac.Open;
  CDSCompNC.Open;
  CDSRubro.Open;
  CDSSubRubro.Open;
  CDSDepositos.Open;
  CDSCajas.Open;
  ArchivoIni              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_Diner.ini');
  edBaseDatos.Text        := ArchivoIni.ReadString('Dato', 'Dato', '');
  cbSucursal.KeyValue     := ArchivoIni.ReadInteger('Dato', 'Sucursal', -1);
  dbcComprobante.KeyValue := ArchivoIni.ReadInteger('Dato', 'Comprobantes', -1);
  dbcNotaCredito.KeyValue := ArchivoIni.ReadInteger('Dato', 'NotaCredito', -1);

  cbRubro.KeyValue        := ArchivoIni.ReadString('Dato', 'Rubro', '***');
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=cbRubro.KeyValue;
  CDSSubRubro.Open;

  cbSubRubro.KeyValue     := ArchivoIni.ReadString('Dato', 'SubRubro', '*****');

  dbcDeposito.KeyValue    := ArchivoIni.ReadInteger('Dato', 'deposito', -1);
  dbcCtas.KeyValue        := ArchivoIni.ReadInteger('Dato', 'caja', -1);
  ArchivoIni.Free;

//  ADOConnection.Connected        :=False;
//  path:='Provider=Microsoft.Jet.OLEDB.4.0;'+
//        'Data Source='+edBaseDatos.Text+';'+
//        'Persist Security Info=False;';
//  ADOConnection.ConnectionString:=path;
//  ADOConnection.Connected       :=True;
end;

procedure TFormImportacionDiner.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportacionDiner:=nil;
end;

procedure TFormImportacionDiner.SpeedButton1Click(Sender: TObject);
var path:string;
begin
  if JvSelectDirectory1.Execute then
    if JvSelectDirectory1.Directory<>'' then
      edBaseDatos.Text:=JvSelectDirectory1.Directory;
end;

end.
