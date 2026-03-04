unit ULeerArchivoTCVisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvExControls, JvDBLookup, StdCtrls, JvComponentBase,
  JvFormMagnet, ImgList, DB, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvGradient, Buttons, ToolWin,
  ExtCtrls,IniFiles, Data.FMTBcd, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvFormPlacement, System.Actions, Datasnap.Provider,
  Datasnap.DBClient, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormLeerArchivoTCVisa = class(TFormABMBase)
    btnBuscarArchivo: TSpeedButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    MDatos: TMemo;
    edArchivo: TEdit;
    btPasar: TBitBtn;
    dbcValores: TJvDBLookupCombo;
    mNovedades: TMemo;
    btPasarPagos: TBitBtn;
    BuscarArchivo: TAction;
    OpenDialog: TOpenDialog;
    dlgSave1: TSaveDialog;
    DSTCredito: TDataSource;
    PasarPagos: TAction;
    GravarNovedades: TAction;
    lbRegRecibidos: TLabel;
    lbRegFallidos: TLabel;
    lbRegProcesados: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    chFecha: TCheckBox;
    CDSTCredito: TClientDataSet;
    DSPTCredito: TDataSetProvider;
    ClientDataSet2: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    dbcCtas: TJvDBLookupCombo;
    RxLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel6: TJvLabel;
    dbcComprobante: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    DSPComprobante: TDataSetProvider;
    DSComprobante: TDataSource;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    DSCajas: TDataSource;
    chbAstesano: TCheckBox;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QTCredito: TFDQuery;
    QCajas: TFDQuery;
    QComproba: TFDQuery;
    procedure BuscarArchivoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PasarPagosExecute(Sender: TObject);
    procedure GravarNovedadesExecute(Sender: TObject);
    procedure dbcValoresChange(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista,Lista2:TStringList;
  end;

var
  FormLeerArchivoTCVisa: TFormLeerArchivoTCVisa;

implementation

uses URecibo_2,DMRecibos,UDMain_FD;

{$R *.dfm}

procedure TFormLeerArchivoTCVisa.BuscarArchivoExecute(Sender: TObject);
var Lineas,Letra:Integer;
begin
  inherited;
  MDatos.Clear;
  mNovedades.Clear;
  Lista := TStringList.Create;
  Lista2:= TStringList.Create;

  if OpenDialog.Execute then
    if OpenDialog.FileName<>'' then
      begin
        edArchivo.Text:=OpenDialog.FileName;
        Lista.LoadFromFile(OpenDialog.FileName);
        Lista.Delete(0);
        for Lineas := 0 to Lista.Count - 2 do
          begin
            Lista2.Append(Trim(Lista[Lineas]))
           end;

        for Lineas := 0 to Lista2.Count - 1 do
         begin
           if Not(chbAstesano.Checked) then
             MDatos.Lines.Append(Copy(Lista2[Lineas],65,6)+   //codigo
                                 Copy(Lista2[Lineas],41,15)+  //Importe
                                 Copy(Lista2[Lineas],100,1))  //Verificacion
           else
             MDatos.Lines.Append(Copy(Lista2[Lineas], 89, 6)+   //codigo
                                 Copy(Lista2[Lineas], 63,15)+  //Importe
                                 Copy(Lista2[Lineas], 51, 6)+   //Fecha
                                 Copy(Lista2[Lineas],130, 3)+  //Verificacion
                                 Copy(Lista2[Lineas],133,35));

         end;

      end;
   FreeAndNil(Lista);
   FreeAndNil(Lista2);
   lbRegRecibidos.Caption:='('+IntToStr(MDatos.Lines.Count)+')';
end;

procedure TFormLeerArchivoTCVisa.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

procedure TFormLeerArchivoTCVisa.dbcValoresChange(Sender: TObject);
begin
  inherited;
 // dbcValores.Enabled:=dbcValores.Text='';
end;

procedure TFormLeerArchivoTCVisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoINI           := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ModoPago_Creditos.ini');
  if Not(VarisNull(dbcValores.KeyValue)) then
    ArchivoINI.WriteInteger('tcredito', 'modo', dbcValores.KeyValue)
  else
    ArchivoINI.WriteInteger('tcredito', 'modo', -1);

  if Not(VarisNull(dbcCtas.KeyValue)) then
    ArchivoINI.WriteInteger('tcredito', 'caja', dbcCtas.KeyValue)
  else
    ArchivoINI.WriteInteger('tcredito', 'caja', -1);

  if Not(VarisNull(dbcSucursal.KeyValue)) then
    ArchivoINI.WriteInteger('tcredito', 'sucursal', dbcSucursal.KeyValue)
  else
    ArchivoINI.WriteInteger('tcredito', 'sucursal', -1);

  if Not(VarisNull(dbcComprobante.KeyValue)) then
    ArchivoINI.WriteInteger('tcredito', 'comprobante',dbcComprobante.KeyValue)
  else
    ArchivoINI.WriteInteger('tcredito', 'comprobante',-1);

  ArchivoINI.WriteBool('tcredito', 'TipoTxt', chbAstesano.Checked );
  ArchivoINI.Free;

  CDSTCredito.Close;
  FreeAndNil(Lista);
  FreeAndNil(Lista2);
  Action:=caFree;
end;

procedure TFormLeerArchivoTCVisa.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSTCredito.Close;
  CDSTCredito.Open;


  CDSCajas.Close;
  CDSCajas.Open;

  CDSSucursal.Close;
  CDSSucursal.Open;

  ArchivoINI              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ModoPago_Creditos.ini');
  dbcValores.KeyValue     := ArchivoINI.ReadInteger('tcredito', 'modo', -1);
  dbcCtas.KeyValue        := ArchivoINI.ReadInteger('tcredito', 'caja', -1);
  dbcSucursal.KeyValue    := ArchivoINI.ReadInteger('tcredito', 'sucursal', -1);
  chbAstesano.Checked     := ArchivoINI.ReadBool('tcredito', 'TipoTxt', False);

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  dbcComprobante.KeyValue := ArchivoINI.ReadInteger('tcredito', 'comprobante', -1);
  ArchivoINI.Free;

  MDatos.Clear;
  mNovedades.Clear;
end;

procedure TFormLeerArchivoTCVisa.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLeerArchivoTCVisa:=nil;
end;

procedure TFormLeerArchivoTCVisa.FormResize(Sender: TObject);
begin
  inherited;
  if FormLeerArchivoTCVisa<>nil then
    if FormLeerArchivoTCVisa.Width<>932 then
      FormLeerArchivoTCVisa.Width:=932;
end;

procedure TFormLeerArchivoTCVisa.GravarNovedadesExecute(Sender: TObject);
begin
  inherited;
 if mNovedades.Text<>'' then
    if dlgSave1.Execute then
      if dlgSave1.FileName<>'' then
        mNovedades.Lines.SaveToFile(dlgSave1.FileName);
end;

procedure TFormLeerArchivoTCVisa.PasarPagosExecute(Sender: TObject);
var I,Contador,Lote:Integer;
S:String;
Valido,Aux:String;
begin
  inherited;
  mNovedades.Clear;
  if (dbcValores.KeyValue<=0) then
    Raise  Exception.create('Falta indicar modo de pago');

  if not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
  FormRecibo_2.Show;
  FormRecibo_2.CajaPorDefecto:=dbcCtas.KeyValue;

  Screen.Cursor:=crHourGlass;
  Contador:=0;
  for i := 0 to MDatos.Lines.Count - 1 do
    begin
       s:='';
       S:=MDatos.Lines[i];
       sbEstado.SimpleText:='Reg:'+S;
       Application.ProcessMessages;
       if (s<>'') then
         begin
           Valido := Copy(s,22,3);
           aux    := Copy(s,14,8);

           QClientes.Close;
           QClientes.ParamByName('numero').Value := Copy(s,1,6);
           QClientes.Open;


           if (QClientesCODIGO.AsString<>'') Then
             begin
               Contador:=Contador+1;
               lbRegProcesados.Caption:='('+IntToStr(Contador)+')';
               formRecibo_2.Agregar.Execute;
               DatosRecibos.CDSReciboCODIGOSetText(DatosRecibos.CDSReciboCODIGO,QClientesCODIGO.AsString);
               if chFecha.Checked then
                 DatosRecibos.CDSReciboFECHA.AsDateTime:=Date
               else
                 DatosRecibos.CDSReciboFECHA.AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yy',StrToDate( (Copy(s,1,2)+'/'+ Copy(s,3,2)  +'/'+ Copy(s,5,2) ))));
               DatosRecibos.CDSReciboTOTAL_NETOSetText(DatosRecibos.CDSReciboTOTAL_NETO,(Copy(s,7,13)+'.'+Copy(s,20,2) ));
             //  FormRecibo_2.FrameMovValoresIngreso1.CDSCajacMov.Append;

               FormRecibo_2.pcDetalle.ActivePageIndex:=1;
               FormRecibo_2.pcDetalleChange(sender);
               FormRecibo_2.FrameMovValoresIngreso1.ceCaja.Text       :=IntToStr(dbcCtas.KeyValue);
               FormRecibo_2.FrameMovValoresIngreso1.edMuestraCaja.Text:=dbcCtas.Text;
               FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMov.Insert;
               FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,IntToStr(4));
               FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TCSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TC,IntToStr(dbcValores.KeyValue));
               FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETO,(Copy(s,7,13)+'.'+Copy(s,20,2)));
               FormRecibo_2.FrameMovValoresIngreso1.BitBtn6.Click;


               //FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO.Value:=StrToFloat(Copy(s,22,13)+'.'+Copy(s,35,2));
   //            FormRecibo.CDSRecibosLOTE.Value   :=Lote;
   //            FormRecibo.CDSValores.Post;
               FormRecibo_2.AplicaAuto.Execute;
               FormRecibo_2.Confirma.Execute;
             end
           else
             mNovedades.Lines.Append(s);
             lbRegFallidos.caption:=IntToStr(mNovedades.Lines.Count);
         end;
    end;
  FormRecibo_2.Close;
  lbRegFallidos.Caption:='('+IntToStr(mNovedades.Lines.Count)+')';

  Screen.Cursor:=crDefault;
  sbEstado.SimpleText:='...';
  Application.ProcessMessages;
  MDatos.Clear;

end;
end.
