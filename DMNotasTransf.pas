unit DMNotasTransf;

interface

uses
  SysUtils, Classes, Provider, DB, DBClient, IBGenerator,Dialogs,Variants,Controls,
  FMTBcd, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosNotaTransferencia = class(TDataModule)
    CDSNCab: TClientDataSet;
    CDSNDet: TClientDataSet;
    DSNDet: TDataSource;
    DSPNCab: TDataSetProvider;
    DSPNDet: TDataSetProvider;
    CDSNCabID: TIntegerField;
    CDSNCabNUMERO: TStringField;
    CDSNCabSUBNUMERO: TStringField;
    CDSNCabSOLICITANTE: TStringField;
    CDSNCabDEP_DESTINO: TIntegerField;
    CDSNCabDEP_ORIGEN: TIntegerField;
    CDSNCabESTADO: TStringField;
    CDSNCabNPEDIDO_ID: TIntegerField;
    CDSNCabNPEDIDO_TIPO: TStringField;
    CDSNCabNPEDIDO_CLASE: TStringField;
    CDSNCabNPEDIDO_NROCPBTE: TStringField;
    CDSNCabOBS1: TStringField;
    CDSNCabOBS2: TStringField;
    CDSNCabUSUARIO: TStringField;
    CDSNCabMUESTRADESTINO: TStringField;
    CDSNCabMUESTRAORIGEN: TStringField;
    CDSNCabMUESTRASOLICITANTE: TStringField;
    CDSNDetID: TIntegerField;
    CDSNDetID_TRANCAB: TIntegerField;
    CDSNDetCODIGO: TStringField;
    CDSNDetDETALLE: TStringField;
    CDSNDetUNIDAD: TStringField;
    CDSNDetDEPOSITO_ORIGEN: TIntegerField;
    CDSNDetDEPOSITO_DESTINO: TIntegerField;
    CDSNDetNUMERO: TStringField;
    CDSNDetAFECTA_STOCK: TStringField;
    CDSNDetESTADO: TStringField;
    CDSNCabID_TRANSFERENCIA: TIntegerField;
    CDSNCabNRO_TRANSFERENCIA: TStringField;
    CDSNDetLOTE: TIntegerField;
    CDSNDetEAN: TStringField;
    CDSNDetPOSICION: TStringField;
    CDSNDetLOTECERRADO: TStringField;
    CDSNDetID_TRANSFERNCIA: TIntegerField;
    CDSNDetNRO_TRANSFERENCIA: TStringField;
    ibgCab: TIBGenerator;
    IbgDet: TIBGenerator;
    CDSNCabXML: TClientDataSet;
    CDSNDetXML: TClientDataSet;
    QNTCab: TFDQuery;
    QNTCabID: TIntegerField;
    QNTCabFECHA: TSQLTimeStampField;
    QNTCabNUMERO: TStringField;
    QNTCabSUBNUMERO: TStringField;
    QNTCabSOLICITANTE: TStringField;
    QNTCabDEP_DESTINO: TIntegerField;
    QNTCabDEP_ORIGEN: TIntegerField;
    QNTCabESTADO: TStringField;
    QNTCabNPEDIDO_ID: TIntegerField;
    QNTCabNPEDIDO_TIPO: TStringField;
    QNTCabNPEDIDO_CLASE: TStringField;
    QNTCabNPEDIDO_NROCPBTE: TStringField;
    QNTCabOBS1: TStringField;
    QNTCabOBS2: TStringField;
    QNTCabUSUARIO: TStringField;
    QNTCabFECHA_HORA: TSQLTimeStampField;
    QNTCabID_TRANSFERENCIA: TIntegerField;
    QNTCabNRO_TRANSFERENCIA: TStringField;
    QNTCabMUESTRADESTINO: TStringField;
    QNTCabMUESTRAORIGEN: TStringField;
    QNTCabMUESTRASOLICITANTE: TStringField;
    CDSNCabFECHA: TSQLTimeStampField;
    CDSNCabFECHA_HORA: TSQLTimeStampField;
    QNTDet: TFDQuery;
    QNTDetID: TIntegerField;
    QNTDetID_TRANCAB: TIntegerField;
    QNTDetFECHA: TSQLTimeStampField;
    QNTDetCODIGO: TStringField;
    QNTDetDETALLE: TStringField;
    QNTDetUNIDAD: TStringField;
    QNTDetDEPOSITO_ORIGEN: TIntegerField;
    QNTDetDEPOSITO_DESTINO: TIntegerField;
    QNTDetNUMERO: TStringField;
    QNTDetAFECTA_STOCK: TStringField;
    QNTDetCANTIDAD_PEDIDA: TFloatField;
    QNTDetCANTIDAD_ENTREGADA: TFloatField;
    QNTDetCANTIDAD_FALTANTE: TFloatField;
    QNTDetESTADO: TStringField;
    QNTDetLOTE: TIntegerField;
    QNTDetEAN: TStringField;
    QNTDetPOSICION: TStringField;
    QNTDetLOTECERRADO: TStringField;
    QNTDetID_TRANSFERNCIA: TIntegerField;
    QNTDetNRO_TRANSFERENCIA: TStringField;
    CDSNDetFECHA: TSQLTimeStampField;
    CDSNDetCANTIDAD_PEDIDA: TFloatField;
    CDSNDetCANTIDAD_ENTREGADA: TFloatField;
    CDSNDetCANTIDAD_FALTANTE: TFloatField;
    QDeposito: TFDQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QCBarra: TFDQuery;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockDETALLE_STK_ADICIONAL: TStringField;
    QStockCODIGO_BARRAS: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockMARCA_STK: TStringField;
    QStockTASA_IVA: TIntegerField;
    QStockSOBRETASA_IVA: TIntegerField;
    QStockCOSTO_EXENTO_STK: TFloatField;
    QStockCOSTO_GRAVADO_STK: TFloatField;
    QStockCOSTO_TOTAL_STK: TFloatField;
    QStockREEMPLAZO_STK: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    QStockFUAP: TSQLTimeStampField;
    QStockUNIDAD: TStringField;
    QStockCONTROLASTOCK: TStringField;
    QStockCODIGO_PROVEEDOR: TStringField;
    QStockCLASE_ARTICULO: TIntegerField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockCON_IMP_INT: TStringField;
    QStockIMPUESTO_INTERNOS: TFloatField;
    QStockGRAVADO_IB: TStringField;
    QStockTASA_IB: TIntegerField;
    QStockACTUALIZACOSTO: TStringField;
    QStockDEPRODUCCION: TStringField;
    QStockPRODUCCIONDIRECTA: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTENIDO_COMPRA: TFloatField;
    QStockCONTROL_SERIE: TStringField;
    QStockUSA_CODIGOBARRA: TStringField;
    QStockUNIDAD_ULTIMAUSADA: TStringField;
    QStockID_TABLAPRECIOS: TIntegerField;
    QStockID_TABLAPRECIOSDETALLE: TIntegerField;
    QStockCODIGO_PRECIO: TIntegerField;
    QStockFECHA_ALTA: TSQLTimeStampField;
    QStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    QStockCOSTO_EXENTO_SOMBRA: TFloatField;
    QStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    QStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    QStockMONEDA: TIntegerField;
    QStockCOSTO_GRAVADO_P: TFloatField;
    QStockCOSTO_EXENTO_P: TFloatField;
    QStockCOSTO_TOTAL_P: TFloatField;
    QStockPOSICION: TStringField;
    QStockPRESENTACION_UNIDAD: TStringField;
    QStockPRESENTACION_CANTIDAD: TFloatField;
    QStockEDITAPRECIO: TStringField;
    QStockEDITADETALLE: TStringField;
    QStockURL: TStringField;
    QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QStockCOMANDA: TStringField;
    QBuscaCodigoBarra: TFDQuery;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSNCabNewRecord(DataSet: TDataSet);
    procedure CDSNDetNewRecord(DataSet: TDataSet);
    procedure CDSNDetCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSNCabDEP_ORIGENSetText(Sender: TField; const Text: string);
    procedure CDSNDetCANTIDAD_ENTREGADASetText(Sender: TField;
      const Text: string);
    procedure CDSNDetLOTESetText(Sender: TField; const Text: string);
    procedure CDSNDetAfterPost(DataSet: TDataSet);
    procedure CDSNDetBeforeDelete(DataSet: TDataSet);
    procedure CDSNDetBeforeEdit(DataSet: TDataSet);
    procedure CDSNDetBeforePost(DataSet: TDataSet);
    procedure CDSNCabAfterInsert(DataSet: TDataSet);
    procedure CDSNDetAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function HayFaltantes:Boolean;
    function hayParafacturar:Boolean;
    function FaltaLote:Boolean;
    FUNCTION SumarEntregados: Boolean;
    procedure ArmarLotes;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;

  end;

var
  DatosNotaTransferencia: TDatosNotaTransferencia;


implementation

uses UNotaTransfStock, UABMLineaNotaVta, UDMain_FD;

{$R *.dfm}


function TDatosNotaTransferencia.HayFaltantes:Boolean;
var P:TBookmark;
Aux:Real;
begin
  Aux:=0;
  p:=CDSNDet.GetBookmark;
  CDSNDet.DisableControls;
  CDSNDet.First;
  while not(CDSNDet.Eof) do
    begin
      Aux:=Aux+CDSNDetCANTIDAD_FALTANTE.AsFloat;
      CDSNDet.Next;
    end;
  CDSNDet.GotoBookmark(p);
  CDSNDet.FreeBookmark(p);
  CDSNDet.EnableControls;
  if Aux>0  then
    Result:=true
  else
    Result:=False;
end;



function TDatosNotaTransferencia.hayParafacturar:Boolean;
var P:TBookmark;
Aux:Real;
begin
  Aux:=0;
  p:=CDSNDet.GetBookmark;
  CDSNDet.DisableControls;
  CDSNDet.First;
  while not(CDSNDet.Eof) do
    begin
      Aux:=Aux+CDSNDetCANTIDAD_ENTREGADA.AsFloat;
      CDSNDet.Next;
    end;
  CDSNDet.GotoBookmark(p);
  CDSNDet.FreeBookmark(p);
  CDSNDet.EnableControls;
  if Aux>0  then
    Result:=true
  else
    Result:=False;
end;




function TDatosNotaTransferencia.FaltaLote:Boolean;
var P:TBookmark;
Aux:Real;
begin
  Aux:=0;
  Result:=False;
  p:=CDSNDet.GetBookmark;
  CDSNDet.DisableControls;
  CDSNDet.First;
  while (not(CDSNDet.Eof)) do
    begin
      if ((CDSNDetLOTE.AsString='') or (CDSNDetLOTE.Value<0)) and (CDSNDetCANTIDAD_ENTREGADA.AsFloat>0) then
        begin result:=True;CDSNDet.Last;end;
      CDSNDet.Next;
    end;
  CDSNDet.GotoBookmark(p);
  CDSNDet.FreeBookmark(p);
  CDSNDet.EnableControls;
end;




FUNCTION TDatosNotaTransferencia.SumarEntregados: Boolean;
var P:TBookmark;
Aux,Aux2:Real;
begin
  FormNota_TransfStock.Entregado:=False;
  FormNota_TransfStock.Cumplido :=False;

  Aux:=0;
  p:=CDSNDet.GetBookmark;
  CDSNDet.DisableControls;
  CDSNDet.First;
  while not(CDSNDet.Eof) do
    begin
      Aux :=Aux+CDSNDetCANTIDAD_ENTREGADA.AsFloat;
      Aux2:=Aux2+CDSNDetCANTIDAD_PEDIDA.AsFloat;
      CDSNDet.Next;
    end;
  CDSNDet.GotoBookmark(p);
  CDSNDet.FreeBookmark(p);
  CDSNDet.EnableControls;
  if Aux>0  then
    FormNota_TransfStock.Entregado:=True;
  if Int(Aux*100) = Int(Aux2*100) then
    FormNota_TransfStock.Cumplido:=True;
 end;


procedure TDatosNotaTransferencia.ArmarLotes;
var P:TBookmark;
Pos:Integer;
begin
  FormNota_TransfStock.ListaLote.Clear;
  FormNota_TransfStock.ListaLote.Sort;
  FormNota_TransfStock.ListaLote.Sorted:=True;
  FormNota_TransfStock.cbLotes.Items.Clear;
  FormNota_TransfStock.ListaLote.Add('-');
  p:=CDSNDet.GetBookmark;
  CDSNDet.DisableControls;
  CDSNDet.First;
  while not(CDSNDet.Eof) do
    begin
      if (Trim(CDSNDetLOTE.AsString)<>'') and
         (FormNota_TransfStock.ListaLote.Find(Trim(CDSNDetLOTE.AsString),Pos)=False) then
        FormNota_TransfStock.ListaLote.Add( Trim(CDSNDetLOTE.AsString));
      CDSNDet.Next;
    end;
  FormNota_TransfStock.cbLotes.Items:=FormNota_TransfStock.ListaLote;
  CDSNDet.GotoBookmark(p);
  CDSNDet.FreeBookmark(p);
  CDSNDet.EnableControls;
end;



FUNCTION  TDatosNotaTransferencia.ASignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSNDet.State = dsBrowse THEN
    CDSNDet.Edit;
  BEGIN
    QStock.Close;
    QStock.Params.ParamByName('Codigo').Value:=Dato;
    QStock.Open;
    IF NOT (QStock.IsEmpty) THEN
      BEGIN
        CDSNDetPOSICION.Value          := QStockPOSICION.Value;
        CDSNDetDETALLE.Value           := QStockDETALLE_STK.Value;
        CDSNDetUNIDAD.Value            := QStockUNIDAD.Value;
         // traigo los porcentajes de Iva
        //CDSNDetCOSTO.Value       :=QStockFIJACION_PRECIO_TOTAL.Value;
        CDSNDetAFECTA_STOCK.Value:=QStockCONTROLASTOCK.Value;

       // CDSNDetCOSTO.Value       :=QStockFIJACION_PRECIO_TOTAL.Value;


        QCBarra.Close;
        QCBarra.ParamByName('codigo').Value:=Dato;
        QCBarra.Open;
        CDSNDetEAN.Value:=QCBarra.Fields[0].AsString;
        QCBarra.Close;
        Result:=True;
      END
    ELSE
       Result:=False;
    END;
END;


FUNCTION TDatosNotaTransferencia.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  QDeposito.Close;
  QDeposito.ParamByName('Id').Value:=Dato;
  QDeposito.Open;
  IF NOT (QDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSNCabMUESTRAORIGEN.Value:=QDepositoNombre.Value;
    END
  ELSE
    Result:=False;
  QDeposito.Close;
  FormNota_TransfStock.ReAsignaDepositos.Execute;
END;


procedure TDatosNotaTransferencia.CDSNCabAfterInsert(DataSet: TDataSet);
begin
if (CDSNCab.State in [dsEdit])  then
    begin
//      if not (Assigned(FormLogin)) then
//        FormLogin := TFormLogin.Create(Self);
//      FormLogin.ShowModal;
      if (FormNota_TransfStock.Autorizado=False) then
        begin
          CDSNDet.Cancel;
          SysUtils.Abort;
        end
      else
        begin
          if not(Assigned(FormABMLineaNotavta)) then
            FormABMLineaNotavta:=TFormABMLineaNotavta.Create(FormNota_TransfStock);
          FormABMLineaNotavta.Modo:='A';
          FormABMLineaNotavta.ShowModal;
          if (FormABMLineaNotavta.ModalResult=mrOk) and (FormABMLineaNotavta.Codigo<>'') then
            begin
              CDSNDet.Edit;
              CDSNDetCODIGOSetText(CDSNDetCODIGO,FormABMLineaNotavta.Codigo);
              CDSNDetCANTIDAD_PEDIDA.AsFloat   := FormABMLineaNotavta.Cantidad;
              CDSNDetCANTIDAD_ENTREGADA.AsFloat:= DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat;
              CDSNDetCANTIDAD_FALTANTE.AsFloat := DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat-
                                                  DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat;
              DatosNotaTransferencia.CDSNDet.Post;
            end
          else
            begin
              CDSNDet.Cancel;
              SysUtils.Abort;
            end;

        end;
    end;

end;

procedure TDatosNotaTransferencia.CDSNCabDEP_ORIGENSetText(Sender: TField;
  const Text: string);
begin
IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido');
          FormNota_TransfStock.RxCDepositoOrigen.SetFocus;
        END;
    END;
end;

procedure TDatosNotaTransferencia.CDSNCabNewRecord(DataSet: TDataSet);
begin
  CDSNCabID.Value              := ibgCab.IncrementFD(1);
  CDSNCabFECHA.AsDateTime      := Date;
  CDSNCabFECHA_HORA.AsDateTime := now;
  CDSNCabUSUARIO.Value         := DMMain_FD.UsuarioActivo;
  CDSNCabDEP_ORIGEN.Value      := FormNota_TransfStock.DepositoPorDefecto;

  FormNota_TransfStock.QUltimoCodigo2.Close;
  FormNota_TransfStock.QUltimoCodigo2.Open;
  if FormNota_TransfStock.QUltimoCodigo2.Fields[0].AsString='' then
    CDSNCabNUMERO.Value:='00000001'
  else
    CDSNCabNUMERO.Value:=Copy('00000000',1,8-length(IntToStr(FormNota_TransfStock.QUltimoCodigo2.Fields[0].AsInteger+1)))+
                              intToStr(FormNota_TransfStock.QUltimoCodigo2.fields[0].AsInteger+1);
  FormNota_TransfStock.QUltimoCodigo2.Close;
  CDSNCabSUBNUMERO.Value:='00';
  CDSNCabESTADO.Value   :='N';
end;

procedure TDatosNotaTransferencia.CDSNDetAfterInsert(DataSet: TDataSet);
begin
if (CDSNCab.State in [dsEdit])  then
    begin
//      if not (Assigned(FormLogin)) then
//        FormLogin := TFormLogin.Create(Self);
//      FormLogin.ShowModal;
      if (FormNota_TransfStock.Autorizado=False) then
        begin
          CDSNDet.Cancel;
          SysUtils.Abort;
        end
      else
        begin
          if not(Assigned(FormABMLineaNotavta)) then
            FormABMLineaNotavta:=TFormABMLineaNotavta.Create(FormNota_TransfStock);
          FormABMLineaNotavta.Modo:='A';
//          DMMain_FD.QListaPrecioPorDefecto.CLose;
//          DMMain_FD.QListaPrecioPorDefecto.Open;
//          if Not(DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString='') Then
            FormABMLineaNotavta.Lista:=DMMain_FD.ListaPorDefecto(-1);//.Fields[0].Value
//          else
//            begin
//            DMMain_FD.QPrimeraListaPrecios.CLose;
//              DMMain_FD.QPrimeraListaPrecios.Open;
//              if Not(DMMain_FD.QPrimeraListaPrecios.Fields[0].AsString='') Then
//                FormABMLineaNotavta.Lista:=DMMain_FD.QPrimeraListaPrecios.Fields[0].Value;
//              DMMain_FD.QPrimeraListaPrecios.CLose;
//            end;
//          DMMain_FD.QListaPrecioPorDefecto.CLose;
          FormABMLineaNotavta.ShowModal;
          if (FormABMLineaNotavta.ModalResult=mrOk) and (FormABMLineaNotavta.Codigo<>'') then
            begin
              DatosNotaTransferencia.CDSNDet.Edit;
              DatosNotaTransferencia.CDSNDetCODIGOSetText(DatosNotaTransferencia.CDSNDetCODIGO,FormABMLineaNotavta.Codigo);
              DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat    := FormABMLineaNotavta.Cantidad;
              DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat := DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat;
              DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.AsFloat  := DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat-
                                                                          DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat;
          //    DatosNotaTransferencia.CDSNDetUNITARIO_TOTALSetText(DatosNotaVenta.CDSNVDetUNITARIO_TOTAL,FormatFloat('0.00',FormABMLineaNotavta.Precio));
              DatosNotaTransferencia.CDSNDet.Post;
            end
          else
            begin
              CDSNDet.Cancel;
              SysUtils.Abort;
            end;

        end;
    end;
end;

procedure TDatosNotaTransferencia.CDSNDetAfterPost(DataSet: TDataSet);
begin
  ArmarLotes;
end;

procedure TDatosNotaTransferencia.CDSNDetBeforeDelete(DataSet: TDataSet);
begin
 if CDSNDetLOTECERRADO.Value='N' then
    begin
//      if not (Assigned(FormLogin)) then
//        FormLogin := TFormLogin.Create(Self);
//      FormLogin.ShowModal;
      if (FormNota_TransfStock.Autorizado=False) then
        begin
          CDSNDet.Cancel;
          SysUtils.Abort;
        end;
    end
  else
    begin
      ShowMessage('Lote Cerrdado, no se permite esta operación');
      CDSNDet.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TDatosNotaTransferencia.CDSNDetBeforeEdit(DataSet: TDataSet);
begin
  CDSNDet.IndexName:='';
  if (CDSNDetLOTECERRADO.Value='S') and
     (CDSNDetLOTE.OldValue<>CDSNDetLOTE.NewValue) and
     ((VarToStr(CDSNDetLOTE.OldValue)<>'') and  (VarToStr(CDSNDetLOTE.NewValue)<>''))
      then
    begin
      //ShowMessage('Lote Cerrado...');
      CDSNDet.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TDatosNotaTransferencia.CDSNDetBeforePost(DataSet: TDataSet);
begin
 if CDSNDetCODIGO.AsString='' then
    CDSNDet.Cancel;
end;

procedure TDatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADASetText(
  Sender: TField; const Text: string);
begin
if CDSNDetLOTECERRADO.Value='N' then
    begin
      Sender.AsString:=Text;
      if Sender.AsFloat > CDSNDetCANTIDAD_PEDIDA.AsFloat Then
        begin
          ShowMessage('La canitdad entregada no puede ser mayor que lo pedido');
          Sender.AsString:='0';
        end
      else
        begin
          CDSNDetCANTIDAD_FALTANTE.AsFloat := CDSNDetCANTIDAD_PEDIDA.AsFloat-Sender.AsFloat;
        end;
    end
  else
    ShowMessage('Lote Cerrado, no se puede hacer esta Operación');

end;

procedure TDatosNotaTransferencia.CDSNDetCODIGOSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if not(AsignarArticulo(Sender.AsString)) then
        begin
          ShowMessage('no se dio de alta el item..');
          Sender.Clear;
        end;

    end;
  
end;

procedure TDatosNotaTransferencia.CDSNDetLOTESetText(Sender: TField;
  const Text: string);
var Dato:string;
CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSNDet,true);
  if (Text<>'') and (CDSNDetLOTECERRADO.Value='N') then
    begin
      Sender.AsString:=Text;
      Dato:='N';
      Dato:=VarToStr(CDSClone.Lookup('LOTE;LOTECERRADO',VarArrayOf([Text,'S']),'LOTECERRADO'));
//      if CDSNVDet.Locate('LOTE',Text,[]) then // CDSNVDetLOTECERRADO.Value;
//        Dato:=CDSNVDetLOTECERRADO.Value;
      if Dato='S' then
        begin
          ShowMessage('Este Lote ya fue cerrado, use otro Nro. de Lote....');
          CDSNDet.Edit;
          Sender.Clear;
        end;
    end;
  FreeAndNil(CDSClone);  
end;

procedure TDatosNotaTransferencia.CDSNDetNewRecord(DataSet: TDataSet);
begin
  CDSNDetID.Value               := IbgDet.IncrementFD(1);
  CDSNDetID_TRANCAB.Value       := CDSNCabID.Value;
  CDSNDetFECHA.Value            := CDSNCabFECHA.Value;
  CDSNDetDEPOSITO_ORIGEN.Value  := CDSNCabDEP_ORIGEN.Value;
  CDSNDetDEPOSITO_DESTINO.Value := CDSNCabDEP_DESTINO.Value;
  CDSNDetLOTECERRADO.Value      := 'N';
  CDSNDetESTADO.Value           := CDSNCabESTADO.Value;
  CDSNDetLOTE.Value             := 1;


end;

procedure TDatosNotaTransferencia.DataModuleDestroy(Sender: TObject);
begin
 DatosNotaTransferencia:=NIL;
end;

end.
