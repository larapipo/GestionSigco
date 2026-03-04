unit UDepositosBancarios;

interface
{ En el Tipo de Opercion en el campo Che_efec se pone E=Efectivo
  C=Cheques, segun corresponda habilito o no la cartera de cheques}
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient,  Provider, Db, ActnList, ImgList,Math,
  StdCtrls, Buttons, ToolWin, ComCtrls, ExtCtrls, Mask,
  frxDBSet, frxClass,MiLib, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,DBXCommon, JvExMask,
  JvToolEdit, frxExportPDF, JvDBLookup, Menus, JvAppStorage, JvAppIniStorage,
  System.Actions, IBGenerator, UMovValoresEgresos, Vcl.DBCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormDepositosBancarios = class(TFormABMBase)
    DSPDepCab: TDataSetProvider;
    ibgId_cab: TIBGenerator;
    BuscadorCta: TAction;
    pnCabecera: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    dbeMuestraCtaBco: TDBEdit;
    Label3: TLabel;
    dbeNumero: TDBEdit;
    Label4: TLabel;
    dbeObs: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    pnDetalle: TPanel;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    dbeMuestraNumeroCta: TDBEdit;
    Label5: TLabel;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frDBDepCabecera: TfrxDBDataset;
    frDBEfectivo: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBCheques: TfrxDBDataset;
    frDBMovCaja: TfrxDBDataset;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    frxDBEmpresa: TfrxDBDataset;
    ModificaFecha: TAction;
    btModificaFecha: TBitBtn;
    dbtID_EFECTIVO1: TDBText;
    QDepCab: TFDQuery;
    QDepCabID: TIntegerField;
    QDepCabID_CTA_CAJA: TIntegerField;
    QDepCabFECHA: TSQLTimeStampField;
    QDepCabNUMERO: TStringField;
    QDepCabIMPORTE: TFloatField;
    QDepCabEFEC_CHEQ: TStringField;
    QDepCabOBS: TStringField;
    QDepCabMUESTRACTACAJA: TStringField;
    QDepCabMUESTRANROCTA: TStringField;
    CDSDepCab: TClientDataSet;
    CDSDepCabID: TIntegerField;
    CDSDepCabID_CTA_CAJA: TIntegerField;
    CDSDepCabFECHA: TSQLTimeStampField;
    CDSDepCabNUMERO: TStringField;
    CDSDepCabIMPORTE: TFloatField;
    CDSDepCabEFEC_CHEQ: TStringField;
    CDSDepCabOBS: TStringField;
    CDSDepCabMUESTRACTACAJA: TStringField;
    CDSDepCabMUESTRANROCTA: TStringField;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoMUESTRABANCO: TStringField;
    spModificaFecha: TFDStoredProc;
    dbDFecha: TJvDBDateEdit;
    RxDBCtaBco: TJvDBComboEdit;
    CDSBuscadorCta: TClientDataSet;
    DSPBuscadorCta: TDataSetProvider;
    QBusCta: TFDQuery;
    CDSBuscadorCtaID_CUENTA: TIntegerField;
    CDSBuscadorCtaID_TIPO_CTA: TIntegerField;
    CDSBuscadorCtaNOMBRE: TStringField;
    CDSBuscadorCtaNRO_CUENTA: TStringField;
    CDSBuscadorCtaID_BANCO: TIntegerField;
    CDSBuscadorCtaCUIT: TStringField;
    CDSBuscadorCtaRAZONSOCIAL: TStringField;
    frxPDFExport1: TfrxPDFExport;
    QDepCabSUCURSAL: TIntegerField;
    CDSDepCabSUCURSAL: TIntegerField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    Label6: TLabel;
    DSSucursales: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    ForzarBorrado: TAction;
    PopupMenu1: TPopupMenu;
    ForzarBorrado1: TMenuItem;
    ComBuscadorCta: TComBuscador;
    DBEdit1: TDBEdit;
    AplicarSuma: TAction;
    N1: TMenuItem;
    AplicarSuma1: TMenuItem;
    ToolButton2: TToolButton;
    procedure BuscadorCtaExecute(Sender: TObject);
    procedure CDSDepCabNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSDepCabID_CTA_CAJASetText(Sender: TField;
      const Text: String);
    procedure CDSDepCabNUMEROSetText(Sender: TField; const Text: String);
    procedure CancelarExecute(Sender: TObject);
    procedure pnDetalleEnter(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure RxDBCtaBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ModificaFechaExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSChe3NewRecord(DataSet: TDataSet);
    procedure ForzarBorradoExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure AplicarSumaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function AsignarCtaBco(dato:Integer):Boolean;
    { Public declarations }
  end;

var
  FormDepositosBancarios: TFormDepositosBancarios;

implementation

uses UCarteraCheques, UBuscadorBoletaDeposito, UFecha,
  DMStoreProcedureForm,DMBuscadoresForm, UDMain_FD;
{$R *.DFM}

procedure TFormDepositosBancarios.AplicarSumaExecute(Sender: TObject);
begin
  inherited;
  CDSDepCab.Edit;
  CDSDepCabIMPORTE.Value:=(FrameMovValoresEgresos1.SumaValores);
  CDSDepCab.Post;
  CDSDepCab.ApplyUpdates(0);
  Recuperar.Execute;
end;

function TFormDepositosBancarios.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').Value:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      CDSDepCabID_CTA_CAJA.Value    := Dato;
      CDSDepCabMUESTRACTACAJA.Value := QCtaBcoNOMBRE.Value;
      CDSDepCabMUESTRANROCTA.Value  := QCtaBcoNRO_CUENTA.Value;
    end
  else
    begin
      Result:=False;
      CDSDepCabID_CTA_CAJA.Clear;
      CDSDepCabMUESTRACTACAJA.Value := '';
      CDSDepCabMUESTRANROCTA.Value  := '';
    end
end;

procedure TFormDepositosBancarios.BuscadorCtaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCta.Close;
  CDSBuscadorCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk Then
    CDSDepCabID_CTA_CAJASetText(CDSDepCabID_CTA_CAJA,comBuscadorCta.id);
  CDSBuscadorCta.Close;

end;

procedure TFormDepositosBancarios.CDSDepCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDepCabID.Value         := ibgId_cab.IncrementFD(1);
  CDSDepCabEFEC_CHEQ.Value  := 'E';
  CDSDepCabFECHA.AsDateTime := Date;
  CDSDepCabSUCURSAL.Value   := SucursalPorDefecto;
  FrameMovValoresEgresos1.tsEfectivo.TabVisible:=True;
  FrameMovValoresEgresos1.tsChe3.TabVisible    :=False;

end;

procedure TFormDepositosBancarios.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Self);
  FrameMovValoresEgresos1.tsTransf.TabVisible   := False;
  FrameMovValoresEgresos1.tsDebito.TabVisible   := False;
  FrameMovValoresEgresos1.tsTarjeta.TabVisible  := False;
  FrameMovValoresEgresos1.tsCheques.TabVisible  := False;

  FrameMovValoresEgresos1.tsEfectivo.TabVisible := True;
  FrameMovValoresEgresos1.tsChe3.TabVisible     := True;



  AddClientDataSet(CDSDepCab,DSPDepCab);
  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresEgresos1.CDSChe3, FrameMovValoresEgresos1.DSPChe3);


//  AddClientDataSet(CDSDepCab,DSPDepCab);
//  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
//  AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
//  AddClientDataSet(FrameMovValoresEgresos1.CDSChe3, FrameMovValoresEgresos1.DSPChe3);
//
//  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);


  CDSSucursal.Open;
  CDSDepCab.Open;

  FrameMovValoresEgresos1.CDSChe3.Open;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.QCajaCab.Open;
  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

  CDSDepCab.EmptyDataset;
  FrameMovValoresEgresos1.CDSChe3.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovEfectivo.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  Tabla:='Dep_Banco_Cab';
  Campo:='id';
end;

procedure TFormDepositosBancarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if FormCarteraCheques<>nil then
    FreeAndNil(FormCarteraCheques);
  CDSSucursal.Close;
  Action:=caFree;
end;

procedure TFormDepositosBancarios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDepositosBancarios:=nil;
end;

procedure TFormDepositosBancarios.CDSDepCabID_CTA_CAJASetText(Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarCtaBco(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato no valido');
          RxDBCtaBco.SetFocus;
          Sender.AsString:='';
         end;
     end;
end;

procedure TFormDepositosBancarios.CDSDepCabNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('0000000000000000',1,13-Length(Text))+Text;
end;

procedure TFormDepositosBancarios.CancelarExecute(Sender: TObject);
begin
  FrameMovValoresEgresos1.CDSCheques.Cancel;
  FrameMovValoresEgresos1.CDSMovEfectivo.Cancel;
  FrameMovValoresEgresos1.CDSChe3.Cancel;
  FrameMovValoresEgresos1.CDSCajaMov.Cancel;

  CDSDepCab.Close;
  CDSDepCab.Params.ParamByName('id').Clear;
  CDSDepCab.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.ceCaja.Text:='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  sbEstado.SimpleText:='';

  inherited;
  pnCabecera.Enabled:=True;
  if btNuevo.Visible then
    btNuevo.SetFocus;
end;

procedure TFormDepositosBancarios.pnDetalleEnter(Sender: TObject);
begin
  inherited;
  IF DSBase.State=dsInsert THEN
  IF (dbDFecha.Text<>'') and
     (RxDBCtaBco.Text<>'') and (dbeMuestraCtaBco.Text<>'') and
     (dbeNumero.Text<>'') and (dbeMuestraNumeroCta.Text<>'')  THEN
    begin
      pnCabecera.Enabled:=False;
      pnDetalle.Enabled:=True;
      WITH FrameMovValoresEgresos1 DO
        BEGIN
          if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
             begin
               QCajaCab.Close;
               QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
               QCajaCab.Open;
               IF NOT (QCajaCab.IsEmpty) THEN
                 BEGIN
                   ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                   edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                   Id_Caja            := QCajaCabID_CAJA.Value;
                   id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                   FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                 end;
             end;
          TipoCpbte        := 'DP';
          TipoOperacion    := 'E';
          ClaseCpbte       := 'DP';
          NroCpbte         := CDSDepCabNUMERO.Value;
          FechaOperacion   := CDSDepCabFECHA.AsDateTime;
          IdCpbte          := CDSDepCabID.Value;
          Origen           := 'Dep.en '+CDSDepCabMUESTRACTACAJA.Value;
          CtaBcoDepositado := CDSDepCabID_CTA_CAJA.Value;
        END;
    end
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
      pnCabecera.Enabled:=True;
      dbDFecha.SetFocus;
    end;
end;

procedure TFormDepositosBancarios.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex=0 Then
    begin
      FrameMovValoresEgresos1.tsEfectivo.TabVisible:=True;
      FrameMovValoresEgresos1.tsChe3.TabVisible    :=False;
    end
  else
    if DBRadioGroup1.ItemIndex=1 Then
      begin
        FrameMovValoresEgresos1.tsEfectivo.TabVisible:=False;
        FrameMovValoresEgresos1.tsChe3.TabVisible    :=True;
      end;

end;

procedure TFormDepositosBancarios.AgregarExecute(Sender: TObject);
begin
  CDSDepCab.Close;
  CDSDepCab.Params.ParamByName('id').Clear;
  CDSDepCab.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  inherited;
  sbEstado.SimpleText:='';
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
  pnCabecera.Enabled:=True;
  RxDBCtaBco.SetFocus;
end;

procedure TFormDepositosBancarios.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
//  aux:= DatosOPago.CDSOPagoTOTAL_NETO.AsFloat -( FrameMovValoresEgresos1.SumaValores +
//                                                 DatosOPago.CDSOPagoDESCUENTO.AsFloat +
//                                                 DatosOPago.CDSRetIngBrCabTOTAL.AsFloat +
//                                                 DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat);
//  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(DatosOPago.MascaraGral,aux);

end;

procedure TFormDepositosBancarios.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
//  aux:= DatosOPago.CDSOPagoTOTAL_NETO.AsFloat -( FrameMovValoresEgresos1.SumaValores +
//                                            DatosOPago.CDSOPagoDESCUENTO.AsFloat +
//                                            DatosOPago.CDSRetIngBrCabTOTAL.AsFloat +
//                                            DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat);
//  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(DatosOPago.MascaraGral,aux);

end;

procedure TFormDepositosBancarios.FrameMovValoresEgresos1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovBeforeDelete(DataSet);
end;

procedure TFormDepositosBancarios.FrameMovValoresEgresos1CDSChe3NewRecord(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSChe3NewRecord(DataSet);
end;

procedure TFormDepositosBancarios.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscadorBoletaDepositos)) THEN
    FormBuscadorBoletaDepositos := TFormBuscadorBoletaDepositos.Create(Application);
  FormBuscadorBoletaDepositos.ShowModal;
  if FormBuscadorBoletaDepositos.Id_Rec>0 then
    begin
      DatoNew:=IntToStr( FormBuscadorBoletaDepositos.Id_Rec);
      Recuperar.Execute;
    end;
  end;

procedure TFormDepositosBancarios.BorrarExecute(Sender: TObject);
var Detalle:String;
begin
 // inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
        if (Not(CDSDepCab.IsEmpty)) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              // **** Ingreso en el Log File  **************
              Detalle:= 'Borrado Deposito Bancario: '+
                        CDSDepCabEFEC_CHEQ.Value+'-'+
                        CDSDepCabNUMERO.Value+'-'+
                        ' Banco: '+
                        CDSDepCabMUESTRANROCTA.Value+'-'+
                        ' Importe: '+
                        FormatFloat('0.00',CDSDepCabIMPORTE.AsFloat);

              DMMain_FD.LogFileFD(0,4,Detalle,'DEPOSITO');

              {
              DMStoreProcedure.spGravarLogDBX.Close;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 4;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Borrado Deposito Bancario: '+
                                                                    CDSDepCabEFEC_CHEQ.Value+'-'+
                                                                    CDSDepCabNUMERO.Value+'-'+
                                                                    ' Banco: '+
                                                                    CDSDepCabMUESTRANROCTA.Value+'-'+
                                                                    ' Importe: '+
                                                                    FormatFloat('0.00',CDSDepCabIMPORTE.AsFloat);
               DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='DEPOSITO';
               DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
               DMStoreProcedure.spGravarLogDBX.ExecProc;
               DMStoreProcedure.spGravarLogDBX.Close;
               }
               // ******************************************

              CDSDepCab.Delete;
              CDSDepCab.ApplyUpdates(0);
              DMMain_FD.fdcGestion.Commit;
              CDSDepCab.Close;
              CDSDepCab.Params.ParamByName('id').Clear;
              CDSDepCab.Open;

              FrameMovValoresEgresos1.CDSCajaMov.Close;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Open;

              FrameMovValoresEgresos1.CDSChe3.Close;
              FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSChe3.Open;

              FrameMovValoresEgresos1.CDSMovEfectivo.Close;
              FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovEfectivo.Open;
              FrameMovValoresEgresos1.ceCaja.Text:='';
              FrameMovValoresEgresos1.edMuestraCaja.Text:='';
              btNuevo.SetFocus;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transaccion no finalizada....!');
            end;
          end
        else
          ShowMessage('No hay registro activo');
    end;
end;

procedure TFormDepositosBancarios.ModificaFechaExecute(Sender: TObject);
begin
  inherited;
  if not(CDSDepCab.IsEmpty) and (DMMain_FD.UsuarioAdministrador) then
    begin
      if not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      formFecha.fecha     := CDSDepCabFECHA.AsDateTime;
      FormFecha.Cta       := CDSDepCabID_CTA_CAJA.Value;
      FormFecha.Sucursal  := CDSDepCabSUCURSAL.Value;
      formFecha.ShowModal;
      if formFecha.ModalResult=mrok then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spModificaFecha.Close;
            spModificaFecha.ParamByName('Fecha').Value   := FormFecha.fecha;
            spModificaFecha.ParamByName('id').Value      := CDSDepCabID.Value;
            spModificaFecha.ParamByName('id_banco').Value:= FormFecha.Cta;
            spModificaFecha.ParamByName('sucursal').Value:= FormFecha.Sucursal;
            spModificaFecha.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            spModificaFecha.Close;
          except
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('No se Modifico la fecha....!');
        end;
        FreeAndNil(FormFecha);
      end;
    end
  else
    ShowMessage('No esta autorizado solo administradores, o no hay datos para modifica....!');
  Recuperar.Execute;
end;

procedure TFormDepositosBancarios.ModificarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=False;
end;

procedure TFormDepositosBancarios.RxDBCtaBcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSDepCabID_CTA_CAJA.Clear;
      CDSDepCabMUESTRACTACAJA.Clear;
      CDSDepCabNUMERO.Clear;
    end;

end;

procedure TFormDepositosBancarios.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormDepositosBancarios.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled       := True;
  pnCabecera.Enabled        := DSBase.State=dsInsert;
  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
 // FrameMovValoresEgresos1.tsTCredito.Enabled      := DSBase.State IN [dsInsert,dsEdit];
 // FrameMovValoresEgresos1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresEgresos1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  ModificaFecha.Enabled:= (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  Modificar.Enabled:=False;
  Modificar.Visible:=False;
  Imprimir.Enabled :=(DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
end;

procedure TFormDepositosBancarios.ConfirmaExecute(Sender: TObject);
begin
  if CDSDepCabFECHA.AsString=''  then
    CDSDepCabFECHA.AsDateTime := Date;
  CDSDepCabIMPORTE.AsFloat    := FrameMovValoresEgresos1.SumaValores;
  if IsZero(CDSDepCabIMPORTE.AsFloat) then
    Raise Exception.Create('No puede tener valor 0(Cero)...');

  DatoNew:=IntToStr(CDSDepCabID.Value);
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormDepositosBancarios.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  CDSDepCab.Close;
  CDSDepCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSDepCab.Open;

  DBRadioGroup1Click(sender);

  FrameMovValoresEgresos1.TipoOperacion := 'E';

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := 'DP';
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresEgresos1.id_Cuenta_caja    :=FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresEgresos1.FechaCaja         :=FrameMovValoresEgresos1.CDSCajaMovFECHA_CAJA.AsDateTime;

  FrameMovValoresEgresos1.CalcularValores;

  // VERIFICO SI LA CAJA ESTA CERRADA
  //  QCaja.Close;
  //  QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  //  QCaja.Open;
  // se paso a una funcion en el DMMain_FD
  if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
    begin
      sbEstado.SimpleText:='La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
      btModificar.Enabled:=False;
      btBorrar.Enabled   :=False;
    end
  else
    begin
      btModificar.Enabled:=True;
      btBorrar.Enabled   :=True;
    end;
  DatoNew:=''+DatoNew+'';
end;

procedure TFormDepositosBancarios.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormDepositosBancarios.ForzarBorradoExecute(Sender: TObject);
var id_caja:Integer;
Detalle:string;
begin
  inherited;
  id_caja:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  if (DMMain_FD.UsuarioAdministrador) and (DMMain_FD.CajaCerrada(id_caja))  then
    begin
      if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
        if (Not(CDSDepCab.IsEmpty)) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              id_caja:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
              // Abri-Cerrar Caja
              DMMain_FD.Abrir_Cerrar_Caja(id_caja,0);
              // **** Ingreso en el Log File  **************
              Detalle:=  'Borrado Deposito Bancario: '+
                          CDSDepCabEFEC_CHEQ.Value+'-'+
                          CDSDepCabNUMERO.Value+'-'+
                          ' Banco: '+
                          CDSDepCabMUESTRANROCTA.Value+'-'+
                          ' Importe: '+
                          FormatFloat('0.00',CDSDepCabIMPORTE.AsFloat);

              DMMain_FD.LogFileFD(0,4,Detalle,'DEPOSITO');

              {
              DMStoreProcedure.spGravarLogDBX.Close;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 4;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Borrado Deposito Bancario: '+
                                                                    CDSDepCabEFEC_CHEQ.Value+'-'+
                                                                    CDSDepCabNUMERO.Value+'-'+
                                                                    ' Banco: '+
                                                                    CDSDepCabMUESTRANROCTA.Value+'-'+
                                                                    ' Importe: '+
                                                                    FormatFloat('0.00',CDSDepCabIMPORTE.AsFloat);
               DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='DEPOSITO';
               DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
               DMStoreProcedure.spGravarLogDBX.ExecProc;
               DMStoreProcedure.spGravarLogDBX.Close;
               }
               // ******************************************

              CDSDepCab.Delete;
              CDSDepCab.ApplyUpdates(0);
              DMMain_FD.fdcGestion.Commit;
              CDSDepCab.Close;
              CDSDepCab.Params.ParamByName('id').Clear;
              CDSDepCab.Open;

              FrameMovValoresEgresos1.CDSCajaMov.Close;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Open;

              FrameMovValoresEgresos1.CDSChe3.Close;
              FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSChe3.Open;

              FrameMovValoresEgresos1.CDSMovEfectivo.Close;
              FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovEfectivo.Open;
              FrameMovValoresEgresos1.ceCaja.Text:='';
              FrameMovValoresEgresos1.edMuestraCaja.Text:='';
              // Abri-Cerrar Caja
              DMMain_FD.Abrir_Cerrar_Caja(id_caja,1);
              btNuevo.SetFocus;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transaccion no finalizada....!');
            end;
          end
        else
          ShowMessage('No hay registro activo');
    end
  else
    ShowMessage('No aplica la operacion a realizar');






end;

procedure TFormDepositosBancarios.ImprimirExecute(Sender: TObject);
begin
  inherited;
 
  CDSEmpresa.Close;
  CDSEmpresa.Open;

  frxReport.PrintOptions.Printer:=PrNomCpbte;
  frxReport.SelectPrinter;

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\depositobco.fr3');
  frxReport.PrintOptions.Copies :=1;
  frxReport.Variables['importeletra']:=''''+numero2letras(CDSDepCabIMPORTE.AsFloat)+'''';
  frxReport.Variables['sucursal']:=''''+dbcSucursal.Text+'''';


  frxReport.PrepareReport;
  frxReport.ShowReport;
  CDSEmpresa.Close;
end;

end.