UNIT UAperturaCaja;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient,  Db, ActnList, ImgList, StdCtrls, Buttons,
  ToolWin, ComCtrls, ExtCtrls, Grids, DBGrids, IBGenerator,
  DBCtrls, Mask, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask,
  JvToolEdit,DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvSmoothButton;

TYPE
  TFormAperturaCaja = CLASS(TFormABMBase)
    DSPCajaCab: TDataSetProvider;
    DSPCajaSaldos: TDataSetProvider;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DSCajaSaldos: TDataSource;
    IBGSaldosCaja: TIBGenerator;
    IBGCajaCab: TIBGenerator;
    BuscarCtaCaja: TAction;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    CDSCajaCab: TClientDataSet;
    CDSCajaCabID_CAJA: TIntegerField;
    CDSCajaCabID_CUENTA_CAJA: TIntegerField;
    CDSCajaCabESTADO: TIntegerField;
    CDSCajaCabOBS: TMemoField;
    CDSCajaCabMUESTRACTACJA: TStringField;
    CDSCajaCabNUMEROCAJA: TIntegerField;
    CDSCajaSaldos: TClientDataSet;
    CCaja: TJvDBComboEdit;
    CDSBuscaCtaCaja: TClientDataSet;
    DSPBuscaCtaCaja: TDataSetProvider;
    CDSBuscaCtaCajaID_CUENTA: TIntegerField;
    CDSBuscaCtaCajaNOMBRE: TStringField;
    CDSBuscaCtaCajaNRO_CUENTA: TStringField;
    CDSSaldos: TClientDataSet;
    DSPSaldos: TDataSetProvider;
    CDSSaldosMONEDA: TIntegerField;
    CDSSaldosFPAGO: TSmallintField;
    CDSSaldosTPAGO: TSmallintField;
    CDSSaldosDETALLE: TStringField;
    CDSCajaSaldosID_CAJA_SALDO: TIntegerField;
    CDSCajaSaldosID_CAJA_CAB: TIntegerField;
    CDSCajaSaldosID_TPAGO: TIntegerField;
    CDSCajaSaldosID_FPAGO: TIntegerField;
    CDSCajaSaldosESTADO_CAJA: TSmallintField;
    CDSCajaSaldosOBSERVACIONES: TStringField;
    CDSCajaSaldosMUESTRATIPOPAGO: TStringField;
    dbeFecha: TJvDBDateEdit;
    chbIncialCero: TCheckBox;
    ComBuscadorCtaCaja: TComBuscador;
    QSaldos: TFDQuery;
    CDSSaldosSALDO: TFloatField;
    CDSSaldosDEBE: TFloatField;
    CDSSaldosHABER: TFloatField;
    CDSSaldosCOTIZACION: TFloatField;
    CDSSaldosDISPONIBILIDAD: TFloatField;
    QBuscaCtasCaja: TFDQuery;
    QCtaCaja: TFDQuery;
    QCtaCajaNOMBRE: TStringField;
    QUltimaCaja: TFDQuery;
    QEstadoCaja: TFDQuery;
    QUltimoNumeroCaja: TFDQuery;
    QUltimoNumeroCajaULTIMONUMEROCAJA: TIntegerField;
    QUltimaCajaULTIMA_CAJA: TIntegerField;
    QCajaCab: TFDQuery;
    QCajaSaldos: TFDQuery;
    QCajaCabID_CAJA: TIntegerField;
    QCajaCabID_CUENTA_CAJA: TIntegerField;
    QCajaCabSALDO_INCIAL: TFloatField;
    QCajaCabESTADO: TIntegerField;
    QCajaCabOBS: TMemoField;
    QCajaCabNUMEROCAJA: TIntegerField;
    QCajaCabMUESTRACTACJA: TStringField;
    CDSCajaCabSALDO_INCIAL: TFloatField;
    QCajaSaldosID_CAJA_SALDO: TIntegerField;
    QCajaSaldosID_CAJA_CAB: TIntegerField;
    QCajaSaldosID_TPAGO: TIntegerField;
    QCajaSaldosID_FPAGO: TIntegerField;
    QCajaSaldosIMPORTE: TFloatField;
    QCajaSaldosESTADO_CAJA: TSmallintField;
    QCajaSaldosOBSERVACIONES: TStringField;
    QCajaSaldosMUESTRATIPOPAGO: TStringField;
    CDSCajaSaldosIMPORTE: TFloatField;
    QCajaCabFECHA_INCIO: TSQLTimeStampField;
    QCajaCabFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaCabFECHA_INCIO: TSQLTimeStampField;
    CDSCajaCabFECHA_CIERRE: TSQLTimeStampField;
    PROCEDURE CDSCajaCabID_CUENTA_CAJASetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE BuscarCtaCajaExecute(Sender: TObject);
    PROCEDURE CancelarExecute(Sender: TObject);
    PROCEDURE ConfirmaExecute(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    procedure CDSCajaCabNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSSaldosAfterOpen(DataSet: TDataSet);
    procedure chbIncialCeroClick(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public

    FUNCTION AsignaCtaCaja(Dato: Integer): Boolean;
    { Public declarations }
  END;

VAR
  FormAperturaCaja: TFormAperturaCaja;

IMPLEMENTATION

USES UDMain_FD;
{$R *.DFM}

procedure TFormAperturaCaja.AgregarExecute(Sender: TObject);
begin
  chbIncialCero.Checked:=False;
  inherited;

end;

FUNCTION TFormAperturaCaja.AsignaCtaCaja(dato: Integer): boolean;
BEGIN
  QCtaCaja.Close;
  QCtaCaja.ParamByName('id').Value := dato;
  QCtaCaja.Open;
  IF NOT (QCtaCaja.IsEmpty) THEN
    BEGIN
      result := True;
      CDSCajaCabMUESTRACTACJA.AsString := QCtaCajaNOMBRE.AsString;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCajaCabMUESTRACTACJA.Value := '';
    END;
  QCtaCaja.Close;
END;

PROCEDURE TFormAperturaCaja.CDSCajaCabID_CUENTA_CAJASetText(Sender: TField; CONST Text: STRING);
BEGIN
  INHERITED;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF AsignaCtaCaja(Sender.AsInteger) THEN
        BEGIN
          QEstadoCaja.Close;
          QEstadoCaja.ParamByName('id').Value := Sender.AsInteger;
          QEstadoCaja.Open;
          IF QEstadoCaja.IsEmpty THEN
            BEGIN
              QUltimoNumeroCaja.Close;
              QUltimoNumeroCaja.ParamByName('id_cta_caja').Value:=sender.AsInteger;
              QUltimoNumeroCaja.Open;
              if QUltimoNumeroCaja.Fields[0].AsString<>'' Then
                CDSCajaCabNUMEROCAJA.Value:=QUltimoNumeroCaja.Fields[0].Value+1
              else
                CDSCajaCabNUMEROCAJA.Value:=1;
              QUltimoNumeroCaja.Close;
              QUltimaCaja.Close;
              QUltimaCaja.ParamByName('id').Value := Sender.AsInteger;
              QUltimaCaja.Open;
              CDSSaldos.Close;
              CDSSaldos.Params.ParamByName('id').Value := QUltimaCajaULTIMA_CAJA.Value;
              CDSSaldos.Open;
            END
          ELSE
            BEGIN
              Sender.AsString := '';
              ShowMessage('Caja inicalizada.... No se pude abrir...');
              Cancelar.Execute;
            END;
        END
      ELSE
        BEGIN
          ShowMessage('Dato no Valido');
          Sender.AsString := '';
        END;
    end;
END;

PROCEDURE TFormAperturaCaja.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBDE:=2;
  AddClientDataSet(CDSCajaCab, DSPCajaCab);
  AddClientDataSet(CDSCajaSaldos, DSPCajaSaldos);
  CDSCajaCab.Open;
  CDSCajaSaldos.Open;
  CCaja.Enabled:=DMMain_FD.ModificaCaja;
END;

PROCEDURE TFormAperturaCaja.BuscarCtaCajaExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscaCtaCaja.Close;
  CDSBuscaCtaCaja.Open;
  comBuscadorCtaCaja.Execute;
  if comBuscadorCtaCaja.rOk Then
      CDSCajaCabID_CUENTA_CAJASetText(CDSCajaCabID_CUENTA_CAJA,IntToStr(comBuscadorCtaCaja.Id));
  CDSBuscaCtaCaja.Close;
END;

PROCEDURE TFormAperturaCaja.CancelarExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSSaldos.Close;
  if TForm(Self.Owner).Name='FormCajaResumen' then salir.Execute;
END;

PROCEDURE TFormAperturaCaja.ConfirmaExecute(Sender: TObject);
BEGIN
  IF (CDSCajaCabID_CUENTA_CAJA.AsString <> '') AND
    (CDSCajaCabFECHA_INCIO.AsString <> '') THEN
    BEGIN
      CDSSaldos.First;
      WHILE NOT (CDSSaldos.Eof) DO
        BEGIN
          CDSCajaSaldos.Insert;
          CDSCajaSaldosID_CAJA_SALDO.Value := IBGSaldosCaja.IncrementFD(1);
          CDSCajaSaldosID_CAJA_CAB.Value   := CDSCajaCabID_CAJA.Value;
          CDSCajaSaldosID_TPAGO.Value      := CDSSaldosTPAGO.Value;
          CDSCajaSaldosID_FPAGO.Value      := CDSSaldosFPAGO.Value;
          CDSCajaSaldosIMPORTE.AsFloat     := CDSSaldosSALDO.Value;
          CDSCajaSaldosESTADO_CAJA.Value   := 0;
          CDSCajaSaldos.Post;
          CDSSaldos.Next;
        END;
      DatoNew:=CDSCajaCabID_CAJA.AsString;
      INHERITED;
      CDSSaldos.Close;
      Recuperar.Execute;
      if DSBase.DataSet.IsEmpty=False then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMMain_FD.LogFileFD(0,2,'Apertura de Caja Cta.:'+ CDSCajaCabID_CUENTA_CAJA.AsString+'-'+CDSCajaCabMUESTRACTACJA.AsString+'-'+
                                 'Fecha Inicio:'+CDSCajaCabFECHA_INCIO.AsString,
                                 'CAJACAB');
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo Registra la Apertura...');
          end;

        end;

    END
  ELSE
    ShowMessage('Faltan ingresar Datos...');
 if TForm(Self.Owner).Name='FormCajaResumen' then salir.Execute;
END;

PROCEDURE TFormAperturaCaja.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  CDSCajaCab.Close;
  CDSCajaSaldos.Close;
  INHERITED;
END;

PROCEDURE TFormAperturaCaja.FormDestroy(Sender: TObject);
BEGIN
  INHERITED;
  FormAperturaCaja := NIL;
END;

procedure TFormAperturaCaja.CDSCajaCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCajaCabFECHA_INCIO.AsDateTime := Date;
  CDSCajaCabID_CAJA.Value          := IBGCajaCab.IncrementFD(1);
  CDSCajaCabESTADO.Value           := 0;
  CDSCajaCabSALDO_INCIAL.AsFloat   := 0;

  if CCaja.Enabled Then
    CCaja.SetFocus;
  if Not(DMMain_FD.ModificaCaja) Then
    CDSCajaCabID_CUENTA_CAJASetText(CDSCajaCabID_CUENTA_CAJA,IntToStr(CajaPorDefecto));
end;

procedure TFormAperturaCaja.CDSSaldosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if chbIncialCero.Checked then
    begin
      CDSSaldos.First;
      while Not(CDSSaldos.Eof) do
        begin
          CDSSaldos.Edit;
          CDSSaldosSALDO.AsFloat := 0;
          CDSSaldosDEBE.AsFloat  := 0;
          CDSSaldosHABER.AsFloat := 0;
          CDSSaldos.Next;
        end;
      CDSSaldos.First;
    end;
end;

procedure TFormAperturaCaja.chbIncialCeroClick(Sender: TObject);
begin
  inherited;
  if chbIncialCero.Checked then
    begin
      CDSSaldos.First;
      while Not(CDSSaldos.Eof) do
        begin
          CDSSaldos.Edit;
          CDSSaldosSALDO.AsFloat := 0;
          CDSSaldosDEBE.AsFloat  := 0;
          CDSSaldosHABER.AsFloat := 0;
          CDSSaldos.Next;
        end;
      CDSSaldos.First;
    end
  else
   begin
     CDSSaldos.Close;
     CDSSaldos.Params.ParamByName('id').Value := QUltimaCajaULTIMA_CAJA.Value;
     CDSSaldos.Open;
   end;
end;

procedure TFormAperturaCaja.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormAperturaCaja.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCajaCab.Close;
  CDSCajaCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCajaCab.Open;
  CDSSaldos.Close;
  CDSSaldos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSSaldos.Open;

end;

END.