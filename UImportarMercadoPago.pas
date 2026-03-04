unit UImportarMercadoPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, JvExControls, JvDBLookup, JvLabel, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvDBControls, JvGradient, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ExtCtrls, AdvGridWorkbook, tmsAdvGridExcel, AdvUtil, AdvObj, BaseGrid, AdvGrid, AdvGridColPicker,IniFiles,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits,StrUtils,DateUtils,
  System.ImageList;

type
  TFormImportarMercadoPago = class(TFormABMBase)
    lbl2: TLabel;
    mNovedades: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    lbRegProcesados: TLabel;
    lbRegFallidos: TLabel;
    btPasarPagos: TBitBtn;
    dbcCtaCaja: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    dbcComprobante: TJvDBLookupCombo;
    lbRegRecibidos: TLabel;
    Label3: TLabel;
    btnBuscarArchivo: TSpeedButton;
    lbl4: TLabel;
    edArchivo: TEdit;
    btPasar: TBitBtn;
    chFecha: TCheckBox;
    BuscarArchivo: TAction;
    OpenDialog: TOpenDialog;
    dlgSave1: TSaveDialog;
    dbgMercadoPago: TAdvStringGrid;
    cbFecha: TComboBox;
    cbNick: TComboBox;
    cbMonto: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
    QCajas: TFDQuery;
    QComproba: TFDQuery;
    lbCtaMercadoPago: TLabel;
    dbcMercadoPago: TJvDBLookupCombo;
    QTxBco: TFDQuery;
    DSPTxBco: TDataSetProvider;
    CDSTxBco: TClientDataSet;
    DSTxBco: TDataSource;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    CDSTxBcoID_FPAGO: TIntegerField;
    CDSTxBcoID_TPAGO: TIntegerField;
    CDSTxBcoDESCRIPCION: TStringField;
    CDSTxBcoCOTIZACION: TFloatField;
    CDSTxBcoSIGNO: TStringField;
    CDSTxBcoMONEDA: TIntegerField;
    CDSTxBcoACUMULABLE: TStringField;
    Label7: TLabel;
    dbcFormaPago: TJvDBLookupCombo;
    QCtaMercadoPago: TFDQuery;
    DSPCtaMercadoPago: TDataSetProvider;
    CDSCtaMercadoPago: TClientDataSet;
    DSCtaMercadoPago: TDataSource;
    CDSCtaMercadoPagoID_CUENTA: TIntegerField;
    CDSCtaMercadoPagoNOMBRE: TStringField;
    CDSCtaMercadoPagoNRO_CUENTA: TStringField;
    Label8: TLabel;
    RxLabel2: TLabel;
    RxLabel6: TLabel;
    Label9: TLabel;
    cbNroOp: TComboBox;
    edSuma: TJvCalcEdit;
    procedure BuscarArchivoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btPasarClick(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Id_Fecha,
    Id_Nick,
    Id_Monto,
    Id_NroOP:Integer;
  end;

var
  FormImportarMercadoPago: TFormImportarMercadoPago;

implementation

{$R *.dfm}
uses UDMain_FD, URecibo_2,DMRecibos,DMBuscadoresForm;


procedure TFormImportarMercadoPago.btPasarClick(Sender: TObject);
var I,Contador:Integer;
S:String;
Valido,Aux:String;
begin
  inherited;
  mNovedades.Clear;
  if dbgMercadoPago.RowCount<=0 then
    Raise  Exception.create('No hay Datos Para Processar...');

  if (dbcFormaPago.KeyValue<=0) then
    Raise  Exception.create('Falta indicar Forma de pago...');

  if (dbcSucursal.KeyValue<=0) then
    Raise  Exception.create('Falta Sucursal...');

  if (dbcMercadoPago.KeyValue<=0) then
    Raise  Exception.create('Falta indicar Modo Pago MercadoPago...');

  if (dbcComprobante.KeyValue<=0) then
    Raise  Exception.create('Falta Comprobante....');

  if not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
 // FormRecibo_2.FormStyle     := fsNormal;
 // FormRecibo_2.Visible       := False;
  FormRecibo_2.CajaPorDefecto:= dbcCtaCaja.KeyValue;

  Screen.Cursor:=crHourGlass;
  Contador:=0;
  for i := 1 to dbgMercadoPago.RowCount - 1 do
    begin
       s:= '';
       s:= dbgMercadoPago.Cells[cbNick.ItemIndex,i]+'-'+dbgMercadoPago.Cells[cbMonto.ItemIndex,i]+' '+dbgMercadoPago.Cells[cbNroOp.ItemIndex,i] ;
       sbEstado.SimpleText:='Reg:'+S;
       Application.ProcessMessages;
       if (s<>'') then
         begin

           QClientes.Close;
           QClientes.ParamByName('Nick').Value := dbgMercadoPago.Cells[cbNick.ItemIndex,i];
           QClientes.Open;

           if (QClientesCODIGO.AsString<>'') Then
             begin
               Contador:=Contador+1;
               lbRegProcesados.Caption:='('+IntToStr(Contador)+')';
               FormRecibo_2.Agregar.Execute;
               DatosRecibos.CDSReciboCODIGOSetText(DatosRecibos.CDSReciboCODIGO,QClientesCODIGO.AsString);
               if chFecha.Checked then
                 DatosRecibos.CDSReciboFECHA.AsDateTime := Date
               else
                 DatosRecibos.CDSReciboFECHA.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy',StrToDateTime(dbgMercadoPago.Cells[cbFecha.ItemIndex,i])));// FormatDateTime('dd/mm/yy',StrToDate( (Copy(s,1,2)+'/'+ Copy(s,3,2)  +'/'+ Copy(s,5,2) ))));
               DatosRecibos.CDSReciboTOTAL_NETOSetText(DatosRecibos.CDSReciboTOTAL_NETO,dbgMercadoPago.Cells[cbMonto.ItemIndex,i]);

               FormRecibo_2.pcDetalle.ActivePageIndex:=1;
               FormRecibo_2.pcDetalleChange(sender);
               FormRecibo_2.FrameMovValoresIngreso1.ceCaja.Text       :=IntToStr(dbcCtaCaja.KeyValue);
               FormRecibo_2.FrameMovValoresIngreso1.edMuestraCaja.Text:=dbcCtaCaja.Text;
               FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMov.Insert;
               FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,IntToStr(dbcFormaPago.KeyValue));
               FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoID_CUENTA_BANCOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoID_CUENTA_BANCO,IntToStr(dbcMercadoPago.KeyValue));
               FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoUNIDADESSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoUNIDADES,dbgMercadoPago.Cells[cbMonto.ItemIndex,i]);
               Aux:= AnsiRightStr( dbgMercadoPago.Cells[cbNroOp.ItemIndex,i],6); // Acoto la cantidad caracteres
               FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoNUMERO.Value:= StrToInt(Aux);

               FormRecibo_2.FrameMovValoresIngreso1.BitBtn8.Click;


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

  Screen.Cursor      :=crDefault;
  sbEstado.SimpleText:='...';
  Application.ProcessMessages;


end;

procedure TFormImportarMercadoPago.BuscarArchivoExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
//  advGrid.;

  if OpenDialog.Execute then
    if OpenDialog.FileName<>'' then
      begin
        edArchivo.Text:=OpenDialog.FileName;
        dbgMercadoPago.LoadFromXLS(edArchivo.Text);
        dbgMercadoPago.AutoSizeColumns(True,10);
        edSuma.Value:=0;
        for I := 0 to dbgMercadoPago.ColCount-1 do
         begin
          // edSuma.Value:= StrToFloat(dbgMercadoPago.Cells[i,id_Monto])+edSuma.Value;
           cbFecha.Items.Add(dbgMercadoPago.Cells[i,0]);
           cbNick.Items.Add(dbgMercadoPago.Cells[i,0]);
           cbMonto.Items.add(dbgMercadoPago.Cells[i,0]);
           cbNroOp.Items.add(dbgMercadoPago.Cells[i,0]);
         end;
        lbRegRecibidos.Caption:=IntToStr(dbgMercadoPago.RowCount-1);
        cbFecha.ItemIndex := Id_Fecha;
        cbNick.ItemIndex  := Id_Nick;
        cbMonto.ItemIndex := Id_Monto;
        cbNroOp.ItemIndex := Id_NroOP;
        edSuma.Value:=0;
        for I := 1 to dbgMercadoPago.RowCount-1 do
          edSuma.Value:= StrToFloat(dbgMercadoPago.Cells[cbMonto.ItemIndex,I])+edSuma.Value;
      end;


//   lbRegRecibidos.Caption:='('+IntToStr(MDatos.Lines.Count)+')';
end;

procedure TFormImportarMercadoPago.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

procedure TFormImportarMercadoPago.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoINI              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ModoPago_Creditos.ini');
  if dbgMercadoPago.RowCount>1 then
  begin
    ArchivoINI.WriteInteger('Campos', 'Fecha', cbFecha.ItemIndex);
    ArchivoINI.WriteInteger('Campos', 'Nick',  cbNick.ItemIndex);
    ArchivoINI.WriteInteger('Campos', 'Monto', cbMonto.ItemIndex);
    ArchivoINI.WriteInteger('Campos', 'NroOp', cbNroOp.ItemIndex);
  end;

  ArchivoINI.WriteInteger('opciones', 'sucursal', dbcSucursal.KeyValue);

  ArchivoINI.WriteInteger('opciones', 'comprobante', dbcComprobante.KeyValue);
  ArchivoINI.WriteInteger('opciones', 'caja', dbcCtaCaja.KeyValue);
  ArchivoINI.WriteInteger('opciones', 'FPago', dbcFormaPago.KeyValue);
  ArchivoINI.WriteInteger('opciones', 'CodMercadoPago', dbcMercadoPago.KeyValue );

  Action:=caFree;

  CDSSucursal.Close;
  CDSComprobantes.Close;
  CDSTxBco.Close;
  CDSCajas.Close;

end;

procedure TFormImportarMercadoPago.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Close;
  CDSComprobantes.Close;
  CDSTxBco.Close;
  CDSCtaMercadoPago.Close;
  CDSCajas.Close;


  CDSSucursal.Open;
  CDSComprobantes.Open;
  CDSTxBco.Open;
  CDSCtaMercadoPago.Open;
  CDSCajas.Open;

  ArchivoINI              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ModoPago_Creditos.ini');
  id_Fecha                := ArchivoINI.ReadInteger('Campos', 'Fecha', -1);
  Id_Nick                 := ArchivoINI.ReadInteger('Campos', 'Nick', -1);
  Id_Monto                := ArchivoINI.ReadInteger('Campos', 'Monto', -1);
  Id_NroOP                := ArchivoINI.ReadInteger('Campos', 'NroOp', -1);

  dbcSucursal.KeyValue    := ArchivoINI.ReadInteger('opciones', 'sucursal', -1);

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  dbcComprobante.KeyValue := ArchivoINI.ReadInteger('opciones', 'comprobante', -1);
  dbcCtaCaja.KeyValue     := ArchivoINI.ReadInteger('opciones', 'caja', -1);
  dbcFormaPago.KeyValue   := ArchivoINI.ReadInteger('opciones', 'FPago', -1);
  dbcMercadoPago.KeyValue := ArchivoINI.ReadInteger('opciones', 'CodMercadoPago', -1);

  ArchivoINI.Free;


end;

procedure TFormImportarMercadoPago.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarMercadoPago:=nil;
end;

procedure TFormImportarMercadoPago.FormResize(Sender: TObject);
begin
  inherited;
  if FormImportarMercadoPago<>NIL then
    if FormImportarMercadoPago.Width<>978 then
      FormImportarMercadoPago.Width:=978;
end;

end.
