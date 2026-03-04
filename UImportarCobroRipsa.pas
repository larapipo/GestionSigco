unit UImportarCobroRipsa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList,  ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Datasnap.Provider, Datasnap.DBClient, JvDBLookup, JvAppStorage,
  JvAppIniStorage, System.Actions,IniFiles,System.StrUtils, IBGenerator , DBXCommon,
  Vcl.OleCtrls, SHDocVw, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCobrosRipsa = class(TFormABMBase)
    lvRipsa: TListView;
    edPath: TEdit;
    spRefCodigo: TSpeedButton;
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    RxLabel2: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel6: TJvLabel;
    dbcComprobante: TJvDBLookupCombo;
    JvLabel1: TJvLabel;
    dbcCtas: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    DSComprobante: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    DSPSucursal: TDataSetProvider;
    DSPComprobante: TDataSetProvider;
    DSPCajas: TDataSetProvider;
    CDSCajas: TClientDataSet;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    DSCajas: TDataSource;
    BitBtn1: TBitBtn;
    spIngresarAjuste_old: TSQLStoredProc;
    IBId_Ajuste: TIBGenerator;
    JvLabel2: TJvLabel;
    dbcAjustes: TJvDBLookupCombo;
    DSAjustes: TDataSource;
    CDSAjustes: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    rgRefCOdigo: TRadioGroup;
    JvLabel3: TJvLabel;
    chbDebitos: TCheckBox;
    edPorcentaje: TJvCalcEdit;
    JvLabel4: TJvLabel;
    QCajas: TFDQuery;
    QBuscaCliente: TFDQuery;
    QClienteXCodigo: TFDQuery;
    QCodigoClienteRipsa: TFDQuery;
    QCodigoClienteRipsaCODIGO: TStringField;
    QCodigoClienteRipsaNOMBRE: TStringField;
    QBuscaClienteCODIGO: TStringField;
    QBuscaClienteID_TARJETACREDITO: TIntegerField;
    QClienteXCodigoCODIGO: TStringField;
    QClienteXCodigoNOMBRE: TStringField;
    QComproba: TFDQuery;
    spIngresarAjusteFD: TFDStoredProc;
    procedure spRefCodigoClick(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure lvRipsaDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchiTxt:TextFile;
  end;

var
  FormCobrosRipsa: TFormCobrosRipsa;
{
RED INFORMATICA DE PAGOS S.A.
BELGRANO 2875 - MAR DEL PLATA

COBRANZA DIA 07/10/2016
ALARMAS BELL'S

FECHA DE COBRO     ALUMNO                        IMPORTE      RETRIBUCION      NETO

-------------------------------------------------------------------------------------------------
07/10/2016                            000478            430,00         7,80           422,19
07/10/2016                            000897            490,00         8,89           481,10
07/10/2016                            000266            350,00         7,26           342,74
07/10/2016                            000333            320,00         7,26           312,74
07/10/2016                            000119            310,00         7,26           302,74
07/10/2016                            000120            360,00         7,26           352,74
07/10/2016                            000625            490,00         8,89           481,10
07/10/2016                            000475            370,00         7,26           362,74
07/10/2016                            000262            380,00         7,26           372,74
07/10/2016                            000732            620,00        11,25           608,74
07/10/2016                            000786            980,00        17,78           962,21
07/10/2016                            000041            320,00         7,26           312,74
07/10/2016                            000344            370,00         7,26           362,74
07/10/2016                            000709            320,00         7,26           312,74
07/10/2016                            000907            380,00         7,26           372,74
07/10/2016                            000600            370,00         7,26           362,74
07/10/2016                            000970            480,00         8,71           471,28
-------------------------------------------------------------------------------------------------
TOTAL  :                                               7340,00       143,20          7196,79
}

implementation

uses UDMain_FD, URecibo_2, DMRecibos, UCtaCteVta;
{$R *.dfm}

procedure TFormCobrosRipsa.BitBtn1Click(Sender: TObject);
var i,Id_AjusteDestino:Integer;
Lista:TListItem;
Importe:String;
begin
  inherited;

  if Not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(self);
  FormRecibo_2.Show;
  FormRecibo_2.CajaPorDefecto:=dbcCtas.KeyValue;
  for I := 0 to lvRipsa.Items.Count-1 do

    begin
      Lista:=lvRipsa.Items.Item[i];
      if Lista.SubItems.Strings[5]<>'' then
        begin
          FormRecibo_2.Agregar.Execute;
          DatosRecibos.CDSReciboFECHA.AsDateTime:= StrToDate( Lista.Caption);
          DatosRecibos.CDSReciboCODIGOSetText(DatosRecibos.CDSReciboCODIGO,(Trim(Lista.SubItems.Strings[4])));
          DatosRecibos.CDSReciboOBSERVACION1.AsString:='Cobranza Por Lote Ripsa';
          Importe:=Lista.SubItems.Strings[1];
          Importe:=Trim(AnsiReplaceStr(Importe,',','.'));
          DatosRecibos.CDSReciboTOTAL_NETOSetText(DatosRecibos.CDSReciboTOTAL_NETO,Importe);
          FormRecibo_2.AplicaAuto.Execute;

          if ((FormRecibo_2.GenerarDebito) and (chbDebitos.Checked)) then
            begin
              Id_AjusteDestino:=IBId_Ajuste.IncrementFD(1);
              //************************************************
              DMMain_FD.fdcGestion.StartTransaction;
              try
                spIngresarAjusteFD.Close;
                spIngresarAjusteFD.ParamByName('id_ajuste').Value     := Id_AjusteDestino;
                spIngresarAjusteFD.ParamByName('id_comprob').Value    := dbcAjustes.KeyValue;
                spIngresarAjusteFD.ParamByName('cliente').Value       := Trim(Lista.SubItems.Strings[4]);
                spIngresarAjusteFD.ParamByName('haber').Value         := 0;
                spIngresarAjusteFD.ParamByName('debe').Value          := DatosRecibos.CDSReciboTOTAL.AsFloat * (edPorcentaje.Value * 0.01); // Calculo el 4%

                spIngresarAjusteFD.ParamByName('detalle').Value       := 'Interes Pago';
                spIngresarAjusteFD.ParamByName('fecha_op').Value      := Date;
                spIngresarAjusteFD.ParamByName('sucursal').Value      := dbcSucursal.KeyValue;
                spIngresarAjusteFD.ParamByName('usuario').Value       := DMMain_FD.UsuarioActivo;
                spIngresarAjusteFD.ParamByName('observaciones').Value := 'Recargo Pago Fuera de Termino RIPSA';
                spIngresarAjusteFD.ParamByName('FECHA_VTO').Value     := Date;

                spIngresarAjusteFD.ExecProc;
                DMMain_FD.fdcGestion.Commit;

              except
                DMMain_FD.fdcGestion.Rollback;
                 ShowMessage('No se Ingresaron los Ajustes en las Ctas ....');
              end;
            end;

//          FormRecibo_2.pcDetalle.ActivePageIndex:=1;
//          FormRecibo_2.pcDetalleChange(sender);

//          FormRecibo_2.FrameMovValoresIngreso1.ceCaja.Text       :=IntToStr(dbcCtas.KeyValue);
//          FormRecibo_2.FrameMovValoresIngreso1.edMuestraCaja.Text:=dbcCtas.Text;
//          FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMov.Insert;
//          FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,IntToStr(1));
//          FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TCSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TC,IntToStr(IDTarjeta));
//          FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETO,Importe);
//          FormRecibo_2.FrameMovValoresIngreso1.BitBtn6.Click;


          FormRecibo_2.Confirma.Execute;
        end ;
    end;
   //   else
   //     begin
   //       Lista:=FormNovedadesFacturacion.lwNovedades.Items.Add;

   //       Lista.Caption:=ADODSTarjetasXLS.Fields[0].AsString;
   //       Lista.SubItems.Add(ADODSTarjetasXLS.Fields[1].AsString);
   //       Lista.SubItems.Add(ADODSTarjetasXLS.Fields[2].AsString);
   //       Lista.SubItems.Add(ADODSTarjetasXLS.Fields[3].AsString);
   //       Lista.SubItems.Add(ADODSTarjetasXLS.Fields[4].AsString+' - Fallo de Proceso');
   //     end;
   //    ADODSTarjetasXLS.Next;
  //  end;
  FormRecibo_2.Close;
end;

procedure TFormCobrosRipsa.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

procedure TFormCobrosRipsa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Importar_Ripsa.ini');
  //*************************************************************
  ArchivoIni.WriteInteger('ArchivoXML', 'Sucursal', dbcSucursal.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'Comprobante', dbcComprobante.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'Ajustes', dbcAjustes.KeyValue );
  ArchivoIni.WriteInteger('ArchivoXML', 'Caja', dbcCtas.KeyValue);
  ArchivoIni.WriteInteger('ArchivoXML', 'CodigoRef', rgRefCOdigo.ItemIndex);
  ArchivoIni.WriteBool('ArchivoXML', 'Debitos', chbDebitos.Checked);
  ArchivoIni.WriteFloat('ArchivoXML', 'porcentaje', edPorcentaje.Value);

  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormCobrosRipsa.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Importar_Ripsa.ini');

  CDSCajas.Open;

  //*************************************************************
  dbcSucursal.KeyValue      := ArchivoIni.ReadInteger('ArchivoXML', 'Sucursal', -1);
  dbcComprobante.KeyValue   := ArchivoIni.ReadInteger('ArchivoXML', 'Comprobante', -1);
  dbcAjustes.KeyValue       := ArchivoIni.ReadInteger('ArchivoXML', 'Ajustes', -1);
  dbcCtas.KeyValue          := ArchivoIni.ReadInteger('ArchivoXML', 'Caja', -1);
  rgRefCOdigo.ItemIndex     := ArchivoIni.ReadInteger('ArchivoXML', 'CodigoRef', 0);
  chbDebitos.Checked        := ArchivoIni.ReadBool('ArchivoXML', 'Debitos', False);
  edPorcentaje.Value        := ArchivoIni.ReadFloat('ArchivoXML', 'porcentaje', 4.0);

  ArchivoIni.Free;

  CDSSucursal.Open;

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  CDSAjustes.Close;
  CDSAjustes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSAjustes.Open;
  AutoSize :=False;
//  if Not(Assigned(FormNovedadesFacturacion)) then
//    FormNovedadesFacturacion:=TFormNovedadesFacturacion.Create(Self);
//  FormNovedadesFacturacion.lwNovedades.Clear;
//  CDSLotes.Close;
//  CDSLotes.Open;
end;

procedure TFormCobrosRipsa.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCobrosRipsa:=nil;
end;

procedure TFormCobrosRipsa.FormResize(Sender: TObject);
begin
  inherited;
  if FormCobrosRipsa<>nil then
    if FormCobrosRipsa.Width<>968 then
      FormCobrosRipsa.Width:=968;
end;

procedure TFormCobrosRipsa.lvRipsaDblClick(Sender: TObject);
var Item: TListItem;
Enter:Char;
begin
  inherited;
  Enter:=#13;
  item:=lvRipsa.Selected;
  if (Item.SubItems.Strings[4]<>'') then
    begin
      if Not(Assigned(FormCtaCteVta)) then
        FormCtaCteVta:=TFormCtaCteVta.Create(Self);
      FormCtaCteVta.ceCliente.Text:=Item.SubItems.Strings[4];
      FormCtaCteVta.ceClienteKeyPress(Sender,Enter);
    end;
end;

procedure TFormCobrosRipsa.spRefCodigoClick(Sender: TObject);
var Inicio:TDateTime;
    arch: TStringList;
Lista:TListItem;
Dato,campo:String;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        Screen.Cursor:=crHourGlass;
        sbEstado.SimpleText:='Cargando Archivo....';
        Application.ProcessMessages;
        Inicio:=Now;
        edPath.Text:=OpenDialog.FileName;

        arch := TStringList.Create;
        arch.LoadFromFile(edPath.Text);
    //   Lista.SubItems.Clear;
    //   Lista.Caption:='';
        AssignFile(ArchiTxt, OpenDialog.FileName);
        Reset(ArchiTxt);

        while Not Eof(ArchiTxt) do
          begin
            ReadLn(ArchiTxt,Dato);
            Lista:=lvRipsa.Items.Add;
            Lista.Caption:=(Trim(copy(Dato,1,10))); // Fecha
            if rgRefCOdigo.ItemIndex=0 then // por codigo de tarjeta ripsa
              begin
                Lista.SubItems.Add(Trim(copy(Dato,39,6))); // Codigo
                Lista.SubItems.Add(Trim(copy(Dato,55,8))); // Importe
                Lista.SubItems.Add(Trim(copy(Dato,70,8))); // Comision
                Lista.SubItems.Add(Trim(copy(Dato,85,8))); // Neto
                if (Trim(copy(Dato,39,6))<>'') then
                  begin
                    QCodigoClienteRipsa.Close;
                    QCodigoClienteRipsa.ParamByName('codigo').Value:=(Trim(copy(Dato,39,6)));
                    QCodigoClienteRipsa.Open;
                    if QCodigoClienteRipsaCODIGO.AsString<>'' then
                      begin
                        Lista.SubItems.Add(QCodigoClienteRipsaCODIGO.AsString);
                        Lista.SubItems.Add(QCodigoClienteRipsaNOMBRE.AsString);
                      end
                    else
                      begin
                        Lista.SubItems.Add('');
                        Lista.SubItems.Add('');
                      end;
                  end
                else
                  begin
                    Lista.SubItems.Add('');
                    Lista.SubItems.Add('');
                  end;
              end
            else
              if rgRefCOdigo.ItemIndex=1 then // por el codigo de cliente desde el archivo Ripsa
                begin
                  Lista.SubItems.Add(Trim(copy(Dato,39,6))); // Codigo
                  Lista.SubItems.Add(Trim(copy(Dato,55,8))); // Importe
                  Lista.SubItems.Add(Trim(copy(Dato,70,8))); // Comision
                  Lista.SubItems.Add(Trim(copy(Dato,85,8))); // Neto
                  if (Trim(copy(Dato,19,6))<>'') then
                    begin
                      QClienteXCodigo.Close;
                      QClienteXCodigo.ParamByName('codigo').Value:=Copy('000000',1,6-Length(Trim(copy(Dato,19,6))))+Trim(copy(Dato,19,6));
                      QClienteXCodigo.Open;
                      if QClienteXCodigoCODIGO.AsString<>'' then
                        begin
                          Lista.SubItems.Add(QClienteXCodigoCODIGO.AsString);
                          Lista.SubItems.Add(QClienteXCodigoNOMBRE.AsString);
                        end
                      else
                        begin
                          Lista.SubItems.Add('');
                          Lista.SubItems.Add('');
                        end;
                    end
                  else
                    begin
                      Lista.SubItems.Add('');
                      Lista.SubItems.Add('');
                    end;
                end
              else
                if rgRefCOdigo.ItemIndex=2 then // por el codigo Barra propio Ripsa
                  begin
                    Lista.SubItems.Add(Trim(copy(Dato,19,6))); // Codigo
                    Lista.SubItems.Add(Trim(copy(Dato,37,8))); // Importe
                    Lista.SubItems.Add(Trim(copy(Dato,46,8))); // Comision
                    Lista.SubItems.Add(Trim(copy(Dato,62,8))); // Neto
                    if (Trim(copy(Dato,19,6))<>'') then
                      begin
                        QClienteXCodigo.Close;
                        QClienteXCodigo.ParamByName('codigo').Value:=Copy('000000',1,6-Length(Trim(copy(Dato,19,6))))+Trim(copy(Dato,19,6));
                        QClienteXCodigo.Open;
                        if QClienteXCodigoCODIGO.AsString<>'' then
                          begin
                            Lista.SubItems.Add(QClienteXCodigoCODIGO.AsString);
                            Lista.SubItems.Add(QClienteXCodigoNOMBRE.AsString);
                          end
                        else
                          begin
                            Lista.SubItems.Add('');
                            Lista.SubItems.Add('');
                          end;
                      end
                    else
                      begin
                        Lista.SubItems.Add('');
                        Lista.SubItems.Add('');
                      end;
                  end;


//            Lista.SubItems.Add(CDSCpbte.FieldByName('tipo_comprob').AsString);
//            Lista.SubItems.Add(CDSCpbte.FieldByName('Clase_comprob').AsString);
//            Lista.SubItems.Add(CDSCpbte.FieldByName('denominacion').AsString);
//            Lista.SubItems.Add(CDSCpbte.FieldByName('id_comprobante').AsString);
//            Lista.SubItems.Add(CDSCpbte.FieldByName('compra_venta').AsString);
//            Lista.SubItems.Add(CDSCpbte.FieldByName('muestraiva').AsString);
          end;
      //  MemoText.Lines.LoadFromFile(OpenDialog.FileName);
     //   lbReg.Caption:=IntToStr(MemoText.Lines.Count-1);
        Screen.Cursor:=crDefault;
      end
    else
      ShowMessage('No hay archivo Seleccionado');
  if Not(Assigned(arch)) then arch.Free;
  sbEstado.SimpleText:='..';
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
end;

end.
