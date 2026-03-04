unit uMainConsultaCuit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, Vcl.Buttons,System.AnsiStrings,
  Vcl.OleServer, FEAFIPLib_TLB,IniFiles, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,UClientModuleBCRA,

  Data.FireDACJSonReflect, Vcl.ComCtrls, JvComponentBase, JvFormPlacement,
  JvAppStorage, JvAppIniStorage, System.ImageList,UFiscalizacion;

type
  TFormConsultaCuit = class(TForm)
    btConsultar: TButton;
    edCuit: TEdit;
    lbNombre: TLabel;
    lbNombrelab: TLabel;
    Label1: TLabel;
    lbTipo: TLabel;
    Label3: TLabel;
    lbEstado: TLabel;
    Label5: TLabel;
    lbDomicilio: TLabel;
    Label7: TLabel;
    lbCondicionIVA: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbPercecpionIIBB: TLabel;
    btAlta: TBitBtn;
    lbLocalidad: TLabel;
    lbProvincia: TLabel;
    btVerCliente: TBitBtn;
    btVerProveedor: TBitBtn;
    btProveedor: TBitBtn;
    lbIdCondicionIVA: TLabel;
    Label6: TLabel;
    lbRetIIBB: TLabel;
    ImageList1: TImageList;
    pnBase: TPanel;
    Label8: TLabel;
    QClientes: TFDQuery;
    QEmpresa: TFDQuery;
    QLocalidad: TFDQuery;
    QEmpresaNOMBRE: TStringField;
    QEmpresaACTIVIDAD: TStringField;
    QEmpresaDIRECCION: TStringField;
    QEmpresaLOCALIDAD: TStringField;
    QEmpresaCORREO: TStringField;
    QEmpresaTELEFONO1: TStringField;
    QEmpresaTELEFONO2: TStringField;
    QEmpresaCUIT: TStringField;
    QEmpresaCONDICIONIVA: TStringField;
    QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    QEmpresaLOGO: TBlobField;
    QEmpresaCPOSTAL: TStringField;
    QEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_ING_BRUTOS: TStringField;
    QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    QEmpresaTASA_PERCEPCION_IB: TFloatField;
    QEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    QEmpresaPROVINCIA: TIntegerField;
    QEmpresaTASA_RET_IIBB: TFloatField;
    QEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    QEmpresaPUNITORIOS: TFloatField;
    QEmpresaNRO_RENSPA: TStringField;
    QEmpresaNRO_RUCA: TIntegerField;
    QEmpresaCUIT_AUTORIZADO: TStringField;
    QEmpresaNOMBRE_AUTORIZADO: TStringField;
    QProvee: TFDQuery;
    chbChe: TCheckBox;
    lvCheques: TListView;
    chOmitir: TCheckBox;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    QEmpresaCBU: TStringField;
    QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    memObservaciones: TMemo;
    procedure btConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btAltaClick(Sender: TObject);
    procedure btVerClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure btVerProveedorClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ClaveElectronica,CertificadoElectronico,URLWSAA,URLWSW,URLWSW_EX,URLBcra:String;
    ModoFcElectronica:Integer;
    CuitEmpresa:Real;
    VerificaCheCuitBCRA:Boolean;
  end;

var
  FormConsultaCuit: TFormConsultaCuit;

implementation

uses
  UClientes_2, UProveedor_2,UDMain_FD;

{$R *.dfm}

procedure TFormConsultaCuit.btAltaClick(Sender: TObject);
VAR CUIT:String;
begin
  if Not (Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(Self);
  FormClientes_2.Agregar.Execute;
  FormClientes_2.DSBase.DataSet.FieldByName('Nombre').Value              :=lbNombre.Caption;
  FormClientes_2.DSBase.DataSet.FieldByName('Nombre_COMPLETO').Value     :=lbNombre.Caption;
  FormClientes_2.DSBase.DataSet.FieldByName('Razon_Social').Value        :=lbNombre.Caption;
  FormClientes_2.DSBase.DataSet.FieldByName('direccion_comercial').Value :=lbDomicilio.Caption;
  FormClientes_2.DSBase.DataSet.FieldByName('localidad').Value           :=lbLocalidad.Caption;

  QLocalidad.Close;
  QLocalidad.ParamByName('dato').Value:=lbLocalidad.Caption;
  QLocalidad.Open;
  if QLocalidad.Fields[0].AsString<>'' Then
    FormClientes_2.DSBase.DataSet.FieldByName('id_cod_postal').Value       :=QLocalidad.Fields[0].AsInteger;
  QLocalidad.Close;


  if AnsiContainsText( UpperCase(lbcondicioniva.caption),'INSCRIPTO' ) Then
    FormClientes_2.DSBase.DataSet.FieldByName('condicion_iva').Value  :=1
  else
    if AnsiContainsText( UpperCase(lbcondicioniva.caption),'INSCRIP' ) Then
      FormClientes_2.DSBase.DataSet.FieldByName('condicion_iva').Value    :=1
    else
      if AnsiContainsText( UpperCase(lbcondicioniva.caption),'MONOTRIBUTO') Then
        FormClientes_2.DSBase.DataSet.FieldByName('condicion_iva').Value :=2
      else
        if AnsiContainsText( UpperCase(lbcondicioniva.caption),'EXENTO') Then
          FormClientes_2.DSBase.DataSet.FieldByName('condicion_iva').Value :=6
        ELSE
          if AnsiContainsText( UpperCase(lbcondicioniva.caption),'CONSUMIDOR') Then
            FormClientes_2.DSBase.DataSet.FieldByName('condicion_iva').Value :=3;

 // FormClientes_2.DSBase.DataSet.FieldByName('condicion_iva').Value := StrToInt(lbIdCondicionIVA.Caption);

  IF  FormClientes_2.DSBase.DataSet.FieldByName('condicion_iva').Value<>3 Then
    BEGIN
      cuit:= Trim(edCuit.Text);
      Insert('-',cuit,3);
      Insert('-',cuit,12);
      FormClientes_2.DSBase.DataSet.FieldByName('nro_de_cuit').Value:=Cuit;
    END
  ELSE
    BEGIN
      FormClientes_2.DSBase.DataSet.FieldByName('nro_de_cuit').Value  := '00-00000000-0';
      FormClientes_2.DSBase.DataSet.FieldByName('TIPODOCUMENTO').Value:= 1;
      FormClientes_2.DSBase.DataSet.FieldByName('NRODOCUMENTO').Value := edCuit.Text;
    END;
  FormClientes_2.Show;
  FormClientes_2.BringToFront;

end;

procedure TFormConsultaCuit.btProveedorClick(Sender: TObject);
VAR CUIT:String;
begin
  if Not (Assigned(FormProveedor_2)) then
    FormProveedor_2:=TFormProveedor_2.Create(Self);
  FormProveedor_2.Agregar.Execute;
  FormProveedor_2.DSBase.DataSet.FieldByName('Nombre').Value              :=lbNombre.Caption;
  FormProveedor_2.DSBase.DataSet.FieldByName('Razon_Social').Value        :=lbNombre.Caption;
  FormProveedor_2.DSBase.DataSet.FieldByName('direccion').Value           :=lbDomicilio.Caption;
  FormProveedor_2.DSBase.DataSet.FieldByName('localidad').Value           :=lbLocalidad.Caption;
  QLocalidad.Close;
  QLocalidad.ParamByName('dato').Value:=lbLocalidad.Caption;
  QLocalidad.Open;
  if QLocalidad.Fields[0].AsString<>'' Then
    FormProveedor_2.DSBase.DataSet.FieldByName('id_cod_postal').Value       :=QLocalidad.Fields[0].AsInteger;
  QLocalidad.Close;

  if (AnsiContainsText(UpperCase(lbcondicioniva.caption),'INSCRIPTO')) Then
    FormProveedor_2.DSBase.DataSet.FieldByName('condicion_iva').Value :=1
  else
    if (AnsiContainsText(UpperCase(lbcondicioniva.caption),'INSCRIP')) Then
      FormProveedor_2.DSBase.DataSet.FieldByName('condicion_iva').Value :=1
    else
      if (AnsiContainsText(UpperCase(lbcondicioniva.caption),'MONOTRIBUTO')) Then
        FormProveedor_2.DSBase.DataSet.FieldByName('condicion_iva').Value :=5
      else
        if (AnsiContainsText(UpperCase(lbcondicioniva.caption),'EXENTO')) Then
          FormProveedor_2.DSBase.DataSet.FieldByName('condicion_iva').Value :=6;

  //FormProveedor_2.DSBase.DataSet.FieldByName('condicion_iva').Value := StrToInt(lbIdCondicionIVA.Caption);

  cuit:= Trim(edCuit.Text);

  Insert('-',cuit,3);
  Insert('-',cuit,12);
  FormProveedor_2.DSBase.DataSet.FieldByName('n_de_cuit').Value:=Cuit;

  FormProveedor_2.Show;
  FormProveedor_2.BringToFront;

end;

procedure TFormConsultaCuit.btVerClienteClick(Sender: TObject);
Var Cuit,Codigo:String;
begin
   cuit:= Trim(edCuit.Text);
   Insert('-',cuit,3);
   Insert('-',cuit,12);
   QClientes.Close;
   QClientes.ParamByName('cuit').Value:=Cuit;
   QClientes.Open;
   Codigo:=Trim(QClientes.Fields[0].AsString);
   QClientes.Close;
   if Codigo<>'' then
     begin
       if Not (Assigned(FormClientes_2)) then
         FormClientes_2:=TFormClientes_2.Create(Self);
       FormClientes_2.DatoNew:=Codigo;
       FormClientes_2.Recuperar.Execute;
       FormClientes_2.Show;
       FormClientes_2.BringToFront;
     end;
end;

procedure TFormConsultaCuit.btVerProveedorClick(Sender: TObject);
Var Cuit,Codigo:String;
begin
   cuit:= Trim(edCuit.Text);
   Insert('-',cuit,3);
   Insert('-',cuit,12);
   QProvee.Close;
   QProvee.ParamByName('cuit').Value:=Cuit;
   QProvee.Open;
   Codigo:=Trim(QProvee.Fields[0].AsString);
   QProvee.Close;
   if Codigo<>'' then
     begin
       if Not (Assigned(FormProveedor_2)) then
         FormProveedor_2:=TFormProveedor_2.Create(Self);
       FormProveedor_2.DatoNew:=Codigo;
       FormProveedor_2.Recuperar.Execute;
       FormProveedor_2.Show;
       FormProveedor_2.BringToFront;
     end;
end;

procedure TFormConsultaCuit.btConsultarClick(Sender: TObject);
var
  cuit:String;
  Year,Mes,Dia:String;
  lwsPadron: IwsPadron;
  lContribuyente: IContribuyente;
  lDomicilio: IDomicilio;
  Perce,ret,NCuit:Extended;
  Lista   : TListItem;
  NRO_CHEQUE,
  FECHA_RECHAZO,
  FECHA_LEVANTAMIENTO,
  MONTO,
  PAGO_MULTA,
  MUESTRACAUSA:String;

begin
  lvCheques.Clear;

  IF NOT (Assigned(CModuleBCRA)) THEN
    CModuleBCRA := TCModuleBCRA.Create(Self);
  NCuit                    := StrToFloat(Trim(AnsiReplaceStr(edCuit.Text,'-','')));
  lwsPadron                := CowsPadron.Create;
  lwsPadron.CUIT           := CuitEmpresa;// 20129063662;
  lwsPadron.ModoProduccion := ModoFcElectronica=1;
  lContribuyente           := CoContribuyente.Create;
  if (chbChe.Checked=False) Then
    if (lwsPadron.login( CertificadoElectronico,ClaveElectronica)) then
      begin
        If lwsPadron.consultar(NCuit , lContribuyente) Then
          begin
            lbNombre.Caption         := lContribuyente.nombre;
            lbTipo.Caption           := lContribuyente.tipoPersona;
            lbEstado.Caption         := lContribuyente.estadoClave;
            lDomicilio               := lContribuyente.domicilioFiscal;
            lbDomicilio.Caption      := lDomicilio.direccion;
            lbLocalidad.Caption      := lDomicilio.localidad;
            lbProvincia.Caption      := lDomicilio.provincia;
            lbIdCondicionIVA.Caption := IntToStr(lContribuyente.condicionIVA);
            lbCondicionIVA.Caption   := lContribuyente.condicionIVADesc;
            DMMain_FD.VerTasaIIBB(Trim(edCuit.Text),Date,Perce,Ret);
            lbPercecpionIIBB.Caption := FormatFloat('0.00',Perce);
            lbRetIIBB.Caption        := FormatFloat('0.00',ret);

            // Control de constancia de inscripción. Si hay observaciones el contribuyente tiene errores de constancia.
            //lbObservaciones.Caption := lContribuyente.observaciones;
             memObservaciones.Lines.Text:=lContribuyente.observaciones;
            cuit:= Trim(AnsiReplaceStr(edCuit.Text,'-',''));
            Insert('-',cuit,3);
            Insert('-',cuit,12);
            QClientes.Close;
            QClientes.ParamByName('cuit').Value:=Cuit;
            QClientes.Open;
            btAlta.Enabled:=Trim(QClientes.Fields[0].AsString)='';
            QClientes.Close;
          end
        Else
          ShowMessage (lwsPadron.ErrorDesc);
      end
    else
      ShowMessage (lwsPadron.ErrorDesc);

  if Not(chOmitir.Checked) and VerificaCheCuitBCRA then
    begin
      CModuleBCRA.RESTClient.BaseURL := URLBcra+':8080/datasnap/rest/TServerMethods/GetChequesBCRA';
      CModuleBCRA.RESTRequest.Params.ParameterByName('cuit').Value := Trim(AnsiReplaceStr(edCuit.Text,'-',''));
      CModuleBCRA.RESTRequest.Execute;
      if (CModuleBCRA.RESTRequest.Response.StatusCode=200) and (CModuleBCRA.mtCheque.RecordCount>0) then
        begin
           CModuleBCRA.mtCheque.First;
          while Not(CModuleBCRA.mtCheque.Eof) do
            begin
              NRO_CHEQUE          := CModuleBCRA.mtCheque.FieldByName('NRO_CHEQUE').AsString;
              FECHA_RECHAZO       := AnsiLeftStr(CModuleBCRA.mtCheque.FieldByName('FECHA_RECHAZO').AsString,10);
              FECHA_LEVANTAMIENTO := AnsiLeftStr(CModuleBCRA.mtCheque.FieldByName('FECHA_LEVANTAMIENTO').AsString,10);
              MONTO               := AnsiLeftStr(CModuleBCRA.mtCheque.FieldByName('MONTO').AsString,12);
              PAGO_MULTA          := CModuleBCRA.mtCheque.FieldByName('PAGO_MULTA').AsString;
              MUESTRACAUSA        := CModuleBCRA.mtCheque.FieldByName('muestracausa').AsString;


              Year := copy(FECHA_RECHAZO,1,4);
              Mes  := copy(FECHA_RECHAZO,6,2);
              Dia  := copy(FECHA_RECHAZO,9,2);
              FECHA_RECHAZO := dia+'/'+mes+'/'+Year;

              Year := copy(FECHA_LEVANTAMIENTO,1,4);
              Mes  := copy(FECHA_LEVANTAMIENTO,6,2);
              Dia  := copy(FECHA_LEVANTAMIENTO,9,2);
              FECHA_LEVANTAMIENTO := dia+'/'+mes+'/'+Year;

              Lista:=lvCheques.Items.Add;
              Lista.Caption:=NRO_CHEQUE;
              Lista.SubItems.Add(FECHA_RECHAZO);
              Lista.SubItems.Add(FECHA_LEVANTAMIENTO);
              Lista.SubItems.Add(MONTO);
              Lista.SubItems.Add(PAGO_MULTA);
              Lista.SubItems.Add(MUESTRACAUSA);

              CModuleBCRA.mtCheque.Next;
            end;
        end
      else
        ShowMessage('Servicio BCRA No disponible');
    end;


end;

procedure TFormConsultaCuit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormConsultaCuit.FormCreate(Sender: TObject);
var ArchivoIni:TIniFile;
begin
  AutoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  // ***** Ubicacione de archivos Factura Electronica ...*****************
  ClaveElectronica      := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  CertificadoElectronico:= ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  URLWSAA               := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSAA','https://wsaahomo.afip.gov.ar/ws/services/LoginCms');
  URLWSW                := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW','https://wswhomo.afip.gov.ar/wsfev1/service.asmx');
  URLWSW_EX             := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW_EX','https://wswhomo.afip.gov.ar/wsfexv1/service.asmx');
  ModoFcElectronica     := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto
  ArchivoIni.Free;

  //*************************************************************
  // Opciones del Ini GENERAL
  //*************************************************************

  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.ini');
  URLBcra                   := ArchivoIni.ReadString('BCRA', 'URL', 'http://192.168.2.200:8080/datos/');
  VerificaCheCuitBCRA       := ArchivoIni.ReadBool('BCRA','VerificaRc',False);
  ArchivoIni.Free;

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;


 end;

procedure TFormConsultaCuit.FormDestroy(Sender: TObject);
begin
  FormConsultaCuit:=nil;
end;

procedure TFormConsultaCuit.FormResize(Sender: TObject);
begin
  if FormConsultaCuit<>nil then
    if (FormConsultaCuit.Width>989) or (FormConsultaCuit.Width<989) then
      FormConsultaCuit.Width:=989;

end;

procedure TFormConsultaCuit.FormShow(Sender: TObject);
var cuit:string;
begin
  cuit:=DMMain_FD.GetCuitEmpresa;
  while Pos('-',Cuit)>0 do
    delete(Cuit,Pos('-',Cuit),1);
  CuitEmpresa:= StrToFLoat(Cuit);
end;

end.
