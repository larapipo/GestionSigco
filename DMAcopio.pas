unit DMAcopio;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider, IBGenerator, Data.FMTBcd, Data.SqlExpr, Vcl.Dialogs, CompBuscador,
  System.StrUtils, System.Variants;

type
  TDatosAcopio = class(TDataModule)
    DSPMercCab: TDataSetProvider;
    CDSMercCab: TClientDataSet;
    CDSMercCabID: TIntegerField;
    CDSMercCabFECHA: TSQLTimeStampField;
    CDSMercCabCLIENTE: TStringField;
    CDSMercCabNOMBRE: TStringField;
    CDSMercCabDIRECCION: TStringField;
    CDSMercCabCPOSTAL: TStringField;
    CDSMercCabLOCALIDAD: TStringField;
    CDSMercCabNROCPBTE: TStringField;
    CDSMercCabID_FACTURA: TIntegerField;
    CDSMercCabCUMPLIDO: TStringField;
    CDSMercCabOBS1: TStringField;
    CDSMercCabOBS2: TStringField;
    DSMercCab: TDataSource;
    DSMercDet: TDataSource;
    CDSMercDet: TClientDataSet;
    DSPMercDet: TDataSetProvider;
    QMercCab: TFDQuery;
    QMercDet: TFDQuery;
    QMercCabID: TIntegerField;
    QMercCabFECHA: TSQLTimeStampField;
    QMercCabCLIENTE: TStringField;
    QMercCabNOMBRE: TStringField;
    QMercCabDIRECCION: TStringField;
    QMercCabCPOSTAL: TStringField;
    QMercCabLOCALIDAD: TStringField;
    QMercCabNROCPBTE: TStringField;
    QMercCabID_FACTURA: TIntegerField;
    QMercCabCUMPLIDO: TStringField;
    QMercCabOBS1: TStringField;
    QMercCabOBS2: TStringField;
    DSRtoDet: TDataSource;
    CDSRtoDet: TClientDataSet;
    DSPRtoDet: TDataSetProvider;
    ibgDet: TIBGenerator;
    ibgCab: TIBGenerator;
    DSPRtoCab: TDataSetProvider;
    CDSRtoCab: TClientDataSet;
    CDSRtoCabID: TIntegerField;
    CDSRtoCabNUMERO: TStringField;
    CDSRtoCabFECHA: TSQLTimeStampField;
    CDSRtoCabCLIENTE: TStringField;
    CDSRtoCabID_FACTURA: TIntegerField;
    CDSRtoCabNOMBRE: TStringField;
    CDSRtoCabDIRECCION: TStringField;
    CDSRtoCabCPOSTAL: TStringField;
    CDSRtoCabLOCALIDAD: TStringField;
    CDSRtoCabNRO_FACTURA: TStringField;
    CDSRtoCabTIPOCPBTE: TStringField;
    CDSRtoCabCLASECPBTE: TStringField;
    CDSRtoCabDEPOSITO: TIntegerField;
    CDSRtoCabMUESTRADEPOSITO: TStringField;
    CDSRtoCabOBS1: TStringField;
    CDSRtoCabOBS2: TStringField;
    CDSRtoCabFECHA_HORA: TSQLTimeStampField;
    CDSRtoCabUSUARIO: TStringField;
    QRtoCab: TFDQuery;
    QRtoDet: TFDQuery;
    QUltimoCod: TFDQuery;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSPDeposito: TDataSetProvider;
    ComBuscadorDeposito: TComBuscador;
    QMercDetID: TIntegerField;
    QMercDetID_CAB: TIntegerField;
    QMercDetCODIGO: TStringField;
    QMercDetDETALLE: TStringField;
    QMercDetCANTIDAD: TFloatField;
    QMercDetENTREGADO: TFloatField;
    QMercDetSALDO: TFloatField;
    QMercDetFECHA_ULTIMAENTREGA: TSQLTimeStampField;
    QMercDetCUMPLIDO: TStringField;
    QMercDetMUESTRASALDOORIGINAL: TFloatField;
    QMercDetMUESTRAPRESENTACION: TFloatField;
    CDSMercDetID: TIntegerField;
    CDSMercDetID_CAB: TIntegerField;
    CDSMercDetCODIGO: TStringField;
    CDSMercDetDETALLE: TStringField;
    CDSMercDetCANTIDAD: TFloatField;
    CDSMercDetENTREGADO: TFloatField;
    CDSMercDetSALDO: TFloatField;
    CDSMercDetFECHA_ULTIMAENTREGA: TSQLTimeStampField;
    CDSMercDetCUMPLIDO: TStringField;
    CDSMercDetMUESTRASALDOORIGINAL: TFloatField;
    CDSMercDetMUESTRAPRESENTACION: TFloatField;
    QRtoDetID: TIntegerField;
    QRtoDetID_CAB: TIntegerField;
    QRtoDetFECHA: TSQLTimeStampField;
    QRtoDetTIPOCPBTE: TStringField;
    QRtoDetCLASECPBTE: TStringField;
    QRtoDetDEPOSITO: TIntegerField;
    QRtoDetCODIGO: TStringField;
    QRtoDetDETALLE: TStringField;
    QRtoDetCANTIDAD: TFloatField;
    QRtoDetID_MERCA_ACOPIO_DET: TIntegerField;
    QRtoDetNROCPBTE: TStringField;
    QRtoDetPRESENTACION_CANT: TFloatField;
    QRtoDetCANTIDAD_UNIDAD: TFloatField;
    CDSRtoDetID: TIntegerField;
    CDSRtoDetID_CAB: TIntegerField;
    CDSRtoDetCODIGO: TStringField;
    CDSRtoDetDETALLE: TStringField;
    CDSRtoDetCANTIDAD: TFloatField;
    CDSRtoDetID_MERCA_ACOPIO_DET: TIntegerField;
    CDSRtoDetPRESENTACION_CANT: TFloatField;
    CDSRtoDetCANTIDAD_UNIDAD: TFloatField;
    CDSRtoDetCANT_ORIGINAL: TFloatField;
    ComBuscadorArt: TComBuscador;
    CDSMercDetSALDOTOTAL: TAggregateField;
    CDSRtoCabID_REMITO: TIntegerField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    CDSRtoDetFECHA: TSQLTimeStampField;
    CDSRtoDetTIPOCPBTE: TStringField;
    CDSRtoDetCLASECPBTE: TStringField;
    CDSRtoDetDEPOSITO: TIntegerField;
    CDSRtoDetNROCPBTE: TStringField;
    CDSRtoCabID_MERCA_ACOPIO_CAB: TIntegerField;
    QAsignaIDMercCab: TFDQuery;
    QAsignaIDMercCabID: TIntegerField;
    CDSRtoCabCUMPLIDO: TStringField;
    CDSRtoCabNRO_REMITO: TStringField;
    QRtoCabID: TIntegerField;
    QRtoCabNUMERO: TStringField;
    QRtoCabTIPOCPBTE: TStringField;
    QRtoCabCLASECPBTE: TStringField;
    QRtoCabDEPOSITO: TIntegerField;
    QRtoCabFECHA: TSQLTimeStampField;
    QRtoCabCLIENTE: TStringField;
    QRtoCabNOMBRE: TStringField;
    QRtoCabDIRECCION: TStringField;
    QRtoCabCPOSTAL: TStringField;
    QRtoCabLOCALIDAD: TStringField;
    QRtoCabID_FACTURA: TIntegerField;
    QRtoCabNRO_FACTURA: TStringField;
    QRtoCabOBS1: TStringField;
    QRtoCabOBS2: TStringField;
    QRtoCabFECHA_HORA: TSQLTimeStampField;
    QRtoCabUSUARIO: TStringField;
    QRtoCabID_MERCA_ACOPIO_CAB: TIntegerField;
    QRtoCabID_REMITO: TIntegerField;
    QRtoCabMUESTRADEPOSITO: TStringField;
    QRtoCabNRO_REMITO: TStringField;
    QRtoCabCUMPLIDO: TStringField;
    procedure CDSRtoCabNewRecord(DataSet: TDataSet);
    procedure CDSRtoCabNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSRtoDetNewRecord(DataSet: TDataSet);
    procedure CDSMercCabBeforeCancel(DataSet: TDataSet);
    procedure CDSMercCabBeforeClose(DataSet: TDataSet);
    procedure CDSRtoCabDEPOSITOSetText(Sender: TField; const Text: string);
    procedure CDSRtoCabBeforeCancel(DataSet: TDataSet);
    procedure CDSRtoDetCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSRtoDetAfterScroll(DataSet: TDataSet);
    procedure CDSRtoDetAfterPost(DataSet: TDataSet);
    procedure CDSMercDetENTREGADOChange(Sender: TField);
    procedure CDSRtoDetBeforePost(DataSet: TDataSet);
    procedure CDSRtoDetBeforeDelete(DataSet: TDataSet);
    procedure CDSRtoDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSMercDetSALDOChange(Sender: TField);
    procedure CDSRtoDetAfterEdit(DataSet: TDataSet);
    procedure CDSMercCabAfterScroll(DataSet: TDataSet);
    procedure CDSRtoCabAfterOpen(DataSet: TDataSet);
    procedure CDSMercDetBeforeEdit(DataSet: TDataSet);
  private
    function  AsignarDeposito(Dato: Integer)  : Boolean;
    function  AsignarArticulo(Dato: string)   : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosAcopio: TDatosAcopio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
uses
  UDMain_FD, UABMBase, URtoEntregaAcopio;

{$R *.dfm}
FUNCTION TDatosAcopio.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSRtoCabMUESTRADEPOSITO.Value := CDSDepositoNOMBRE.Value ;
      END
  ELSE
    begin
      Result := False;
      CDSRtoCabMUESTRADEPOSITO.Value := '';
    end;
  CDSDeposito.Close;
END;

procedure TDatosAcopio.CDSMercCabAfterScroll(DataSet: TDataSet);
begin
  CDSMercDet.Close;
  CDSMercDet.Params.ParamByName('ID').AsInteger :=  CDSMercCabID.AsInteger;
  CDSMercDet.Open;
  if (not CDSRtoCab.IsEmpty) and ( CDSRtoCab.State<>dsBrowse) then
    begin
      CDSRtoCabID_FACTURA.AsInteger           :=  CDSMercCabID_FACTURA.AsInteger;
      CDSRtoCabNRO_FACTURA.AsString             := CDSMercCabNROCPBTE.AsString;
      CDSRtoCabID_MERCA_ACOPIO_CAB.AsInteger  :=  CDSMercCabID.AsInteger;
    end;
  if Assigned(FormRtoEntregaAcopio) then
      FormRtoEntregaAcopio.LFinalizado.Visible  :=  CDSMercCabCUMPLIDO.AsString = 'S';

end;

procedure TDatosAcopio.CDSMercCabBeforeCancel(DataSet: TDataSet);
begin
  CDSMercDet.Cancel;
  CDSRtoCab.Cancel;
end;

procedure TDatosAcopio.CDSMercCabBeforeClose(DataSet: TDataSet);
begin
  if CDSRtoCab.State <>dsBrowse then
    CDSRtoCab.Cancel;
  CDSMercDet.Close;
end;


procedure TDatosAcopio.CDSMercDetBeforeEdit(DataSet: TDataSet);
begin
//  if CDSRtoCab.State<>dsInsert then
//    begin
//      CDSMercDet.Cancel;
//      abort;
//    end;
  if CDSMercCab.State=dsBrowse then
     CDSMercCab.Edit;
end;

procedure TDatosAcopio.CDSMercDetENTREGADOChange(Sender: TField);
begin
  CDSMercDetSALDO.AsFloat :=  CDSMercDetCANTIDAD.AsFloat  - Sender.AsFloat;
end;

procedure TDatosAcopio.CDSMercDetSALDOChange(Sender: TField);
begin
  if (Sender.AsFloat<=0) then
    CDSMercDetCUMPLIDO.AsString:= 'S'
  else
    CDSMercDetCUMPLIDO.AsString  := 'N';
end;

procedure TDatosAcopio.CDSRtoCabAfterOpen(DataSet: TDataSet);
begin
  if (not CDSRtoCab.IsEmpty) and (CDSRtoCabID_MERCA_ACOPIO_CAB.IsNull) and (not CDSRtoCabID_FACTURA.IsNull) then
    begin
      QAsignaIDMercCab.Close;
      QAsignaIDMercCab.Params.ParamByName('IdFact').AsInteger :=  CDSRtoCabID_FACTURA.AsInteger;
      QAsignaIDMercCab.Open;
      if not QAsignaIDMercCab.IsEmpty then
        begin
          CDSRtoCab.Edit;
          CDSRtoCabID_MERCA_ACOPIO_CAB.AsInteger  :=  QAsignaIDMercCabID.AsInteger;
          CDSRtoCab.Post;
        end;
      QAsignaIDMercCab.Close;
    end;
end;

procedure TDatosAcopio.CDSRtoCabBeforeCancel(DataSet: TDataSet);
begin
  CDSRtoDet.Cancel;
end;


procedure TDatosAcopio.CDSRtoCabDEPOSITOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
   if (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END;
     end;
end;

procedure TDatosAcopio.CDSRtoCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRtoCabID.AsInteger                     := ibgCab.IncrementFD(1);
  CDSRtoCabID_MERCA_ACOPIO_CAB.AsInteger    := CDSMercCabID.AsInteger;
  CDSRtoCabFECHA.AsDateTime                 := Date;
  CDSRtoCabCLIENTE.AsString                 := CDSMercCabCLIENTE.AsString;
  CDSRtoCabID_FACTURA.AsInteger             := CDSMercCabID_FACTURA.AsInteger;
  CDSRtoCabNOMBRE.AsString                  := CDSMercCabNOMBRE.AsString;
  CDSRtoCabDIRECCION.AsString               := CDSMercCabDIRECCION.AsString;
  CDSRtoCabCPOSTAL.AsString                 := CDSMercCabCPOSTAL.AsString;
  CDSRtoCabLOCALIDAD.AsString               := CDSMercCabLOCALIDAD.AsString;
  CDSRtoCabNRO_FACTURA.AsString             := CDSMercCabNROCPBTE.AsString;
  CDSRtoCabTIPOCPBTE.AsString               := 'RA';
  CDSRtoCabCLASECPBTE.AsString              := 'RA';
  CDSRtoCabOBS1.AsString                    := CDSMercCabOBS1.AsString;
  CDSRtoCabOBS2.AsString                    := CDSMercCabOBS2.AsString;

  CDSRtoCabUSUARIO.AsString                 := DMMain_fd.UsuarioActivo;
  CDSRtoCabFECHA_HORA.AsDateTime            := Now;
  QUltimoCod.Close;
  QUltimoCod.Open;
  if QUltimoCod.Fields[0].AsString<>'' then
    CDSRtoCabNUMEROSetText(CDSRtoCabNUMERO,IntToStr(QUltimoCod.Fields[0].AsInteger+1))
  else
    CDSRtoCabNUMEROSetText(CDSRtoCabNUMERO,'1');
  QUltimoCod.Close;

end;

procedure TDatosAcopio.CDSRtoCabNUMEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,8-Length(Trim(Text)))+Trim(Text);
end;



procedure TDatosAcopio.CDSRtoDetAfterEdit(DataSet: TDataSet);
begin
  CDSRtoDetCANT_ORIGINAL.AsFloat  :=  CDSRtoDetCANTIDAD.AsFloat;
end;

procedure TDatosAcopio.CDSRtoDetAfterPost(DataSet: TDataSet);
begin
  if CDSRtoDetCODIGO.AsString<>'' then
    begin
      CDSMercDet.Edit;
      CDSMercDetFECHA_ULTIMAENTREGA.AsDateTime:=CDSRtoCabFECHA.AsDateTime;
    //  if CDSMercDetSALDO.AsFloat <=0.01 then CDSMercDetCUMPLIDO.AsString  :=  'S';
      CDSMercDet.Post;
    end;
end;

procedure TDatosAcopio.CDSRtoDetAfterScroll(DataSet: TDataSet);
begin
  if CDSRtoDetCODIGO.AsString<>'' then
    begin
      if (CDSMercDet.State = dsBrowse) Then
        CDSMercDet.Locate('ID',CDSRtoDetID_MERCA_ACOPIO_DET.AsInteger,[]);
    end;
end;

procedure TDatosAcopio.CDSRtoDetBeforeDelete(DataSet: TDataSet);
begin
  if CDSMercDet.Locate('ID',CDSRtoDetID_MERCA_ACOPIO_DET.AsString,[]) Then
    begin
      CDSMercDet.Edit;
      CDSMercDetENTREGADO.AsFloat:= CDSMercDetENTREGADO.AsFloat - CDSRtoDetCANTIDAD.AsFloat;
      CDSMercDet.Post;
    end;
end;

procedure TDatosAcopio.CDSRtoDetBeforePost(DataSet: TDataSet);
begin
  if CDSRtoDetCODIGO.AsString='' then
    CDSRtoDet.Cancel
  else
    CDSRtoDetCANT_ORIGINAL.AsFloat  :=  CDSRtoDetCANTIDAD.AsFloat;
end;

procedure TDatosAcopio.CDSRtoDetCANTIDADSetText(Sender: TField;
  const Text: string);
var Aux: extended;
begin
  if TryStrToFloat(Text,Aux) then
    begin
      if (CDSRtoDetID_MERCA_ACOPIO_DET.AsString<>'') Then
        CDSMercDet.Locate('ID',CDSRtoDetID_MERCA_ACOPIO_DET.AsString,[]);
        begin
          CDSMercDet.Edit;
          CDSMercDetENTREGADO.AsFloat   := CDSMercDetENTREGADO.AsFloat - CDSRtoDetCANT_ORIGINAL.AsFloat;

          if (Trunc(Aux * 100)) > (Trunc(CDSMercDetSALDO.AsFloat * 100))then
            Aux :=  CDSMercDetSALDO.AsFloat;
          if (Aux<0) then  Aux:=0;
          CDSRtoDetCANTIDAD_UNIDAD.AsFloat:=Aux/CDSRtoDetPRESENTACION_CANT.AsFloat;

          CDSMercDetENTREGADO.AsFloat   := CDSMercDetENTREGADO.AsFloat + Aux;
          CDSMercDet.Post;

          Sender.AsFloat   :=  Aux;
        end;
    end;

end;

function  TDatosAcopio.AsignarArticulo(Dato: string):boolean;
begin
  if (CDSMercDet.Locate('CODIGO',Dato,[])) then
    begin
      CDSRtoDetCODIGO.AsString                  :=  CDSMercDetCODIGO.AsString;
      CDSRtoDetDETALLE.AsString                 :=  CDSMercDetDETALLE.AsString;
      CDSRtoDetCANTIDAD.Text                    :=  CDSMercDetSALDO.AsString;
      CDSRtoDetCANT_ORIGINAL.AsFloat            :=  CDSRtoDetCANTIDAD.AsFloat;
      CDSRtoDetID_MERCA_ACOPIO_DET.AsInteger    :=  CDSMercDetID.AsInteger;
      CDSRtoDetPRESENTACION_CANT.AsFloat        :=  CDSMercDetMUESTRAPRESENTACION.AsFloat;
      if (VarIsNull(CDSRtoDetPRESENTACION_CANT.AsFloat)) or (CDSRtoDetPRESENTACION_CANT.AsFloat<0) then
        CDSRtoDetPRESENTACION_CANT.AsFloat      := 1;
      CDSRtoDetCANTIDAD_UNIDAD.AsFloat          := CDSRtoDetCANTIDAD.AsFloat/CDSRtoDetPRESENTACION_CANT.AsFloat;
      Result  :=  True;
    end
  else
    Result    :=  False;
end;

procedure TDatosAcopio.CDSRtoDetCODIGOSetText(Sender: TField;
  const Text: string);
var
  CodTxt,S: String;

begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      CodTxt := AnsiReplaceStr(Text, #13, '');
      CodTxt := AnsiReplaceStr(CodTxt, #10, '');

      Sender.AsString := DMMain_FD.SearchCodigo(Trim(CodTxt),DSRtoDet,false);
      S:= Trim(Sender.AsString);
      IF not AsignarArticulo(s) THEN
        BEGIN
          ComBuscadorArt.Execute;
          if ComBuscadorArt.ID<>'' then
            CDSRtoDetCODIGO.Text  :=  ComBuscadorArt.ID
          else
            CDSRtoDet.Cancel;
        END;

    end;
end;

procedure TDatosAcopio.CDSRtoDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRtoDetID.AsInteger              := ibgDet.IncrementFD(1);
  CDSRtoDetID_CAB.AsInteger          := CDSRtoCabID.AsInteger;
  CDSRtoDetDEPOSITO.AsInteger        := CDSRtoCabDEPOSITO.AsInteger;
  CDSRtoDetCLASECPBTE.AsString       := CDSRtoCabCLASECPBTE.AsString;
  CDSRtoDetTIPOCPBTE.AsString        := CDSRtoCabTIPOCPBTE.AsString;
  CDSRtoDetFECHA.AsDateTime          := CDSRtoCabFECHA.AsDateTime;
  CDSRtoDetNROCPBTE.AsString         := CDSRtoCabNUMERO.AsString;
  CDSRtoDetPRESENTACION_CANT.AsFloat := 1;
  CDSRtoDetCANTIDAD_UNIDAD.AsFloat   := 1;
end;

end.
