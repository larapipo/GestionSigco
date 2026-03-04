unit UABMVencimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, ExtCtrls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, DBCtrls, JvExMask, JvToolEdit, JvDBControls, Mask,
  ImgList, ActnList, ComCtrls, JvLabel, JvExControls,
  JvGradient, Buttons, ToolWin, IBGenerator, Spin,DateUtils, JvAppStorage,
  JvAppIniStorage, System.Actions, Datasnap.Provider, Datasnap.DBClient,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  AdvSmoothButton;

type
  TFormABMVencimientos = class(TFormABMBase)
    CDSVencimientos: TClientDataSet;
    DSPVencimientos: TDataSetProvider;
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeFecha: TJvDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbeComprobante: TDBEdit;
    dbePrestador: TDBEdit;
    dbeImporte: TDBEdit;
    ibgDetalle: TIBGenerator;
    CDSVencimientosID: TIntegerField;
    CDSVencimientosFECHA_INCIO: TSQLTimeStampField;
    CDSVencimientosFECHA_FINALIZACION: TSQLTimeStampField;
    CDSVencimientosASUNTO: TStringField;
    CDSVencimientosASUNTO_2: TStringField;
    CDSVencimientosASUNTO_3: TStringField;
    CDSVencimientosAVISAR: TStringField;
    CDSVencimientosFRECUENCIA: TStringField;
    CDSVencimientosID_CPBTE: TIntegerField;
    CDSVencimientosTIPO_CPBTE: TStringField;
    CDSVencimientosCLASE_CPBTE: TStringField;
    CDSVencimientosNROCPBTE: TStringField;
    CDSVencimientosESTADO: TIntegerField;
    CDSVencimientosCOLOR: TIntegerField;
    CDSVencimientosAVISA_INICIO: TSQLTimeStampField;
    CDSVencimientosAVISA_TERMINA: TSQLTimeStampField;
    CDSVencimientosFINALIZADO: TStringField;
    DBCheckBox1: TDBCheckBox;
    JvDBDateEdit1: TJvDBDateEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Bevel1: TBevel;
    CDSVencimientosTIPO: TIntegerField;
    CDSVencimientosFECHA_CUMPLIDO: TSQLTimeStampField;
    CDSVencimientosOPCION: TIntegerField;
    spGenerarEgreso: TSpeedButton;
    ToolButton1: TToolButton;
    Panel2: TPanel;
    Label8: TLabel;
    dbgDetalle: TJvDBGrid;
    DSPDetalle: TDataSetProvider;
    CDSDetalle: TClientDataSet;
    ibgDetalleVenc: TIBGenerator;
    CDSDetalleID: TIntegerField;
    CDSDetalleID_CAB: TIntegerField;
    CDSDetalleGASTO_RUBRO: TStringField;
    CDSDetalleGASTO_CTA: TStringField;
    CDSDetalleMUESTRARUBRO: TStringField;
    CDSDetalleMUESTRACTA: TStringField;
    DSDetalle: TDataSource;
    BuscarCta: TAction;
    BuscarRubro: TAction;
    ReplicarMov: TAction;
    CDSVencimientosCUOTA_NRO: TSmallintField;
    Label3: TLabel;
    edCuota: TDBEdit;
    CDSVencimientosLOTE: TIntegerField;
    Bevel2: TBevel;
    dbgMovAsociados: TJvDBGrid;
    DSVenAsociados: TDataSource;
    Label6: TLabel;
    DBText1: TDBText;
    CDSVencimientosMUESTRAESTADO: TStringField;
    dbeInicioVto: TJvDBDateEdit;
    Label9: TLabel;
    ComBuscadorRubro: TComBuscador;
    ComBuscadorCta: TComBuscador;
    SpeedButton1: TSpeedButton;
    ToolButton2: TToolButton;
    RevisionCuotas: TAction;
    QBuscaRubro: TFDQuery;
    QBuscaRubroCODIGO: TStringField;
    QBuscaRubroDETALLE: TStringField;
    QBuscaCuentas: TFDQuery;
    QBuscaCuentasCODIGO: TStringField;
    QBuscaCuentasDETALLE: TStringField;
    QCta: TFDQuery;
    QRubro: TFDQuery;
    QCtaCODIGO: TStringField;
    QCtaCODIGO_RUBRO: TStringField;
    QCtaDETALLE: TStringField;
    QCtaEXCLUYE: TStringField;
    QRubroCODIGO: TStringField;
    QRubroDETALLE: TStringField;
    QVencimientos: TFDQuery;
    QVencimientosID: TIntegerField;
    QVencimientosFECHA_INCIO: TSQLTimeStampField;
    QVencimientosFECHA_FINALIZACION: TSQLTimeStampField;
    QVencimientosASUNTO: TStringField;
    QVencimientosASUNTO_2: TStringField;
    QVencimientosASUNTO_3: TStringField;
    QVencimientosAVISAR: TStringField;
    QVencimientosFRECUENCIA: TStringField;
    QVencimientosIMPORTE: TFloatField;
    QVencimientosID_CPBTE: TIntegerField;
    QVencimientosTIPO_CPBTE: TStringField;
    QVencimientosCLASE_CPBTE: TStringField;
    QVencimientosNROCPBTE: TStringField;
    QVencimientosESTADO: TIntegerField;
    QVencimientosCOLOR: TIntegerField;
    QVencimientosAVISA_INICIO: TSQLTimeStampField;
    QVencimientosAVISA_TERMINA: TSQLTimeStampField;
    QVencimientosFINALIZADO: TStringField;
    QVencimientosTIPO: TIntegerField;
    QVencimientosFECHA_CUMPLIDO: TSQLTimeStampField;
    QVencimientosPARENT_ID: TIntegerField;
    QVencimientosOPCION: TIntegerField;
    QVencimientosCUOTA_NRO: TSmallintField;
    QVencimientosLOTE: TIntegerField;
    QDetalle: TFDQuery;
    QDetalleID: TIntegerField;
    QDetalleID_CAB: TIntegerField;
    QDetalleGASTO_RUBRO: TStringField;
    QDetalleGASTO_CTA: TStringField;
    QDetalleIMPORTE: TFloatField;
    QDetalleMUESTRARUBRO: TStringField;
    QDetalleMUESTRACTA: TStringField;
    QBorrarVencimientos: TFDQuery;
    QVenAsociados: TFDQuery;
    QVenAsociadosID: TIntegerField;
    QVenAsociadosFECHA_INCIO: TSQLTimeStampField;
    QVenAsociadosFECHA_FINALIZACION: TSQLTimeStampField;
    QVenAsociadosASUNTO: TStringField;
    QVenAsociadosASUNTO_2: TStringField;
    QVenAsociadosASUNTO_3: TStringField;
    QVenAsociadosAVISAR: TStringField;
    QVenAsociadosFRECUENCIA: TStringField;
    QVenAsociadosIMPORTE: TFloatField;
    QVenAsociadosID_CPBTE: TIntegerField;
    QVenAsociadosTIPO_CPBTE: TStringField;
    QVenAsociadosCLASE_CPBTE: TStringField;
    QVenAsociadosNROCPBTE: TStringField;
    QVenAsociadosESTADO: TIntegerField;
    QVenAsociadosCOLOR: TIntegerField;
    QVenAsociadosAVISA_INICIO: TSQLTimeStampField;
    QVenAsociadosAVISA_TERMINA: TSQLTimeStampField;
    QVenAsociadosFINALIZADO: TStringField;
    QVenAsociadosTIPO: TIntegerField;
    QVenAsociadosFECHA_CUMPLIDO: TSQLTimeStampField;
    QVenAsociadosPARENT_ID: TIntegerField;
    QVenAsociadosOPCION: TIntegerField;
    QVenAsociadosCUOTA_NRO: TSmallintField;
    QVenAsociadosLOTE: TIntegerField;
    CDSVencimientosIMPORTE: TFloatField;
    CDSDetalleIMPORTE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure CDSVencimientosNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure spGenerarEgresoClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CDSVencimientosFECHA_INCIOSetText(Sender: TField;
      const Text: string);
    procedure CDSDetalleNewRecord(DataSet: TDataSet);
    procedure CDSDetalleGASTO_CTASetText(Sender: TField; const Text: string);
    procedure CDSDetalleGASTO_RUBROSetText(Sender: TField; const Text: string);
    procedure BuscarCtaExecute(Sender: TObject);
    procedure BuscarRubroExecute(Sender: TObject);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure CDSDetalleAfterPost(DataSet: TDataSet);
    procedure CDSDetalleBeforePost(DataSet: TDataSet);
    procedure BorrarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ReplicarMovExecute(Sender: TObject);
    procedure CDSVenAsociadosFINALIZADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgMovAsociadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMovAsociadosDblClick(Sender: TObject);
    procedure CDSVencimientosCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dbeInicioVtoExit(Sender: TObject);
    procedure CDSVencimientosAVISA_INICIOSetText(Sender: TField;
      const Text: string);
    procedure dbeFechaExit(Sender: TObject);
    procedure RevisionCuotasExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Comprobante_Nuevo:Boolean;
   FUNCTION AsignarCta(Dato1, Dato2: STRING): Boolean;
   FUNCTION AsignarRubro(Dato: STRING): Boolean;

  end;

var
  FormABMVencimientos: TFormABMVencimientos;

implementation

uses  UEgresoCaja, UGeneradorCuotasVtos, UBuscadorTipoCpbte,
  UBuscadorVencimientos, URevisionVencimientos,UDMain_FD;

{$R *.dfm}

FUNCTION TFormABMVencimientos.AsignarCta(Dato1, Dato2: STRING): Boolean;
BEGIN
  QCta.Close;
  QCta.ParamByName('rubro').Value  := dato1;
  QCta.ParamByName('codigo').Value := Dato2;
  QCta.Open;
  IF NOT (QCta.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSDetalleMUESTRACTA.Value:=QCtaDETALLE.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSDetalleMUESTRACTA.Value:='';
    END;
  QCta.Close;
END;

FUNCTION TFormABMVencimientos.AsignarRubro(Dato: STRING): Boolean;
BEGIN
  QRubro.Close;
  QRubro.ParamByName('codigo').AsString := dato;
  QRubro.Open;
  IF NOT (QRubro.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSDetalleMUESTRARUBRO.Value:=QRubroDETALLE.Value;
      CDSDetalleGASTO_CTA.Clear;
      CDSDetalleMUESTRACTA.Clear;
    END
  ELSE
    BEGIN
      Result := False;
      CDSDetalleMUESTRARUBRO.Value:='';
    END;
  QRubro.Close;
END;


procedure TFormABMVencimientos.RevisionCuotasExecute(Sender: TObject);
begin
  inherited;
  if (Assigned(FormRevisionVencimientos)) then
    FreeAndNil(FormRevisionVencimientos);

  if Not(Assigned(FormRevisionVencimientos)) then
    FormRevisionVencimientos:= TFormRevisionVencimientos.Create(FormABMVencimientos);
  FormRevisionVencimientos.Lote := CDSVencimientosLOTE.Value;
  FormRevisionVencimientos.SHowModal;
  Recuperar.Execute;
end;

procedure TFormABMVencimientos.AgregarExecute(Sender: TObject);
begin
  CDSVencimientos.Close;
  CDSVencimientos.Params.ParamByName('id').Clear;
  CDSVencimientos.Open;

  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').Clear;
  CDSDetalle.Open;

  QVenAsociados.Close;
  QVenAsociados.ParamByName('id').Clear;
  QVenAsociados.Open;

  inherited;
  Comprobante_Nuevo:=True;
  dbeFecha.SetFocus;

end;

procedure TFormABMVencimientos.BorrarExecute(Sender: TObject);
var Lote:integer;
begin
  if (CDSVencimientosID_CPBTE.AsString<>'') and (CDSVencimientosID_CPBTE.Value>0) then
    Raise Exception.Create('Movimiento asociado a una egreso de caja.... no sepuede borrar...');
  Lote:= CDSVencimientosLOTE.Value;
  inherited;
  if QVenAsociados.RecordCount>0 Then
    begin
      if MessageDlg('Hay mas Movimientos Asociados, los borra??...',mtConfirmation,mbYesNo,0,mbNo)=mryes then
        begin
          QBorrarVencimientos.Close;
          QBorrarVencimientos.ParamByName('id').Value:=Lote;
          QBorrarVencimientos.ExecSQL();
          QBorrarVencimientos.Close;
        end;
    end;

  QVenAsociados.Close;
  QVenAsociados.ParamByName('id').Clear;
  QVenAsociados.Open;
end;

procedure TFormABMVencimientos.BuscarCtaExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      QBuscaCuentas.Close;
      QBuscaCuentas.Params.ParamByName('rubro').AsString := CDSDetalleGASTO_RUBRO.AsString;
      QBuscaCuentas.Open;
      ComBuscadorCta.Execute;
      IF ComBuscadorCta.rOk THEN
        CDSDetalleGASTO_CTASetText(CDSDetalleGASTO_CTA, ComBuscadorCta.Id);
      QBuscaCuentas.Close;
    end;
end;

procedure TFormABMVencimientos.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorVencimientos)) then
    FormBuscadorVencimientos:=TFormBuscadorVencimientos.Create(self);
  FormBuscadorVencimientos.ShowModal;
  if FormBuscadorVencimientos.Id>-1 then
      begin
        DatoNew:=IntToStr(FormBuscadorVencimientos.Id);
        Recuperar.Execute;
      end;
  //CDSBUscador.Close;
end;

procedure TFormABMVencimientos.BuscarRubroExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      QBuscaRubro.Close;
      QBuscaRubro.Open;
      ComBuscadorRubro.Execute;
      IF ComBuscadorRubro.rOk THEN
        CDSDetalleGASTO_RUBROSetText(CDSDetalleGASTO_RUBRO, ComBuscadorRubro.Id);
      QBuscaRubro.Close;
    end;
end;

procedure TFormABMVencimientos.CancelarExecute(Sender: TObject);
begin
  CDSVencimientos.Close;
  CDSVencimientos.Params.ParamByName('id').Clear;
  CDSVencimientos.Open;

  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').Clear;
  CDSDetalle.Open;

  QVenAsociados.Close;
  QVenAsociados.ParamByName('id').Clear;
  QVenAsociados.Open;

  inherited;
  btNuevo.SetFocus;
end;

procedure TFormABMVencimientos.CDSDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSVencimientosIMPORTE.AsFloat:=0;
  CDSDetalle.DisableControls;
  CDSDetalle.First;
  while Not(CDSDetalle.Eof) do
    begin
      CDSVencimientosIMPORTE.AsFloat:=CDSVencimientosIMPORTE.AsFloat+CDSDetalleIMPORTE.ASFloat;
      CDSDetalle.Next;
    end;
  CDSDetalle.EnableControls;
end;

procedure TFormABMVencimientos.CDSDetalleBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CDSDetalle.State in [dsInsert,dsEdit] Then
    if (CDSDetalleMUESTRARUBRO.AsString='') Or
       (CDSDetalleMUESTRACTA.AsString='') Or
       (CDSDetalleIMPORTE.AsFloat<=0) Then
      begin
        SysUtils.Abort;
        CDSDetalle.Cancel;
      end;
end;

procedure TFormABMVencimientos.CDSDetalleGASTO_CTASetText(Sender: TField;
  const Text: string);
begin
  inherited;
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSDetalle.State=dsBrowse Then CDSDetalle.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarCta(CDSDetalleGASTO_RUBRO.AsString,Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
    end;
end;

procedure TFormABMVencimientos.CDSDetalleGASTO_RUBROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
   if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSDetalle.State=dsBrowse Then
        CDSDetalle.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarRubro(Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
   end;
end;

procedure TFormABMVencimientos.CDSDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDetalleID.AsInteger    := ibgDetalleVenc.IncrementFD(1);
  CDSDetalleID_CAB.Value    := CDSVencimientosID.Value;
  CDSDetalleIMPORTE.AsFloat := 0;
end;

procedure TFormABMVencimientos.CDSVenAsociadosFINALIZADOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='S' then Text:='*' else Text:='';

end;

procedure TFormABMVencimientos.CDSVencimientosAVISA_INICIOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
end;

procedure TFormABMVencimientos.CDSVencimientosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSVencimientosFINALIZADO.Value='S' then
    CDSVencimientosMUESTRAESTADO.Value:='C U M P L I D O'
  else
    CDSVencimientosMUESTRAESTADO.Value:='..........';

end;

procedure TFormABMVencimientos.CDSVencimientosFECHA_INCIOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSVencimientosFECHA_FINALIZACION.AsDateTime:=Sender.AsDateTime;
  CDSVencimientosAVISA_INICIO.AsDateTime      :=Date-5;
  CDSVencimientosAVISA_TERMINA.AsDateTime     :=Sender.AsDateTime;
end;

procedure TFormABMVencimientos.CDSVencimientosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSVencimientosID.Value                        := ibgDetalle.IncrementFD(1);
  CDSVencimientosFECHA_INCIO.AsDateTime          := Date;
  CDSVencimientosFECHA_FINALIZACION.AsDateTime   := Date;

  CDSVencimientosAVISA_INICIO.AsDateTime         := CDSVencimientosFECHA_INCIO.AsDateTime-5;
  CDSVencimientosAVISA_TERMINA.AsDateTime        := CDSVencimientosFECHA_INCIO.AsDateTime;

  CDSVencimientosIMPORTE.AsFloat :=0;
  CDSVencimientosTIPO.Value      :=0;
  CDSVencimientosOPCION.Value    :=0;
  CDSVencimientosCUOTA_NRO.Value :=1;

  CDSVencimientosLOTE.Value      :=CDSVencimientosID.Value;

  CDSVencimientosFRECUENCIA.Value:='D';
  CDSVencimientosFINALIZADO.Value:='N';
  CDSVencimientosESTADO.Value    :=-1;
end;

procedure TFormABMVencimientos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSVencimientosID.AsString;
  if CDSDetalle.State<>dsBrowse then
    CDSDetalle.Post;
  if CDSDetalle.RecordCount<=0 then
  Raise Exception.Create('No hay Movimientos de Gastos Cargados.....');

 // CDSVencimientosCOLOR.Value:=ColorBox1.ItemIndex;
  inherited;
  Recuperar.Execute;
  if (Comprobante_Nuevo) then
    if MessageDlg('Generar Cuotas ....',mtConfirmation,mbYesNo,0,mbNo) = mrYes then
      begin
        ReplicarMov.Execute;
        Recuperar.Execute;
      end;
  btNuevo.SetFocus;
end;

procedure TFormABMVencimientos.FormActivate(Sender: TObject);
begin
  inherited;
  if (FormABMVencimientos<>nil) and (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      DatoNew:=CDSVencimientosID.AsString;
      Recuperar.Execute;
    end;
end;

procedure TFormABMVencimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormABMVencimientos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  SinBDE   := 2; // Firedac
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AddClientDataSet(CDSVencimientos,DSPVencimientos);
  AddClientDataSet(CDSDetalle,DSPDetalle);

  CDSVencimientos.Open;
  CDSDetalle.Open;
  Tabla:='Vencimientos';
  Campo:='id';

end;

procedure TFormABMVencimientos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormABMVencimientos:=nil;
end;

procedure TFormABMVencimientos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is TJvDBGrid))
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    if btCancelar.Enabled Then
      Cancelar.Execute;
end;

procedure TFormABMVencimientos.FormResize(Sender: TObject);
begin
  inherited;
  if FormABMVencimientos<>nil then
    if FormABMVencimientos.Width<>867 then
      FormABMVencimientos.Width:=867;
end;

procedure TFormABMVencimientos.FormShow(Sender: TObject);
begin
 
  inherited;
  btNuevo.SetFocus;
end;


procedure TFormABMVencimientos.dbeFechaExit(Sender: TObject);
begin
  inherited;
  CDSVencimientosAVISA_INICIOSetText(CDSVencimientosAVISA_INICIO,DateToStr(CDSVencimientosFECHA_INCIO.AsDateTime-5));
end;

procedure TFormABMVencimientos.dbeInicioVtoExit(Sender: TObject);
begin
  inherited;
  if CDSVencimientosAVISA_INICIO.AsString='' then
    CDSVencimientosAVISA_INICIO.AsDateTime:=Date;
end;

procedure TFormABMVencimientos.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF dbgDetalle.SelectedIndex = 1 THEN
    dbgDetalle.SelectedIndex := 2;

  IF dbgDetalle.SelectedIndex = 3 THEN
    dbgDetalle.SelectedIndex := 4;

end;

procedure TFormABMVencimientos.dbgDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  if dbgDetalle.SelectedIndex=0 then
    BuscarRubro.Execute
  else
    if dbgDetalle.SelectedIndex=2 then
      BuscarCta.Execute;



end;

procedure TFormABMVencimientos.dbgDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (dbgDetalle.SelectedIndex = 4) THEN
        dbgDetalle.SelectedIndex := 2
      else
        if (dbgDetalle.SelectedIndex = 2) THEN
          dbgDetalle.SelectedIndex := 0;
      key := 0;
    END;
end;

procedure TFormABMVencimientos.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 4) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgDetalle.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgDetalle.SelectedField = CDSDetalleGASTO_RUBRO THEN
           BuscarRubro.Execute
        else
        IF dbgDetalle.SelectedField = CDSDetalleGASTO_CTA THEN
           BuscarCta.Execute
      END
    else
      if (key = #27) then
        dbgDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormABMVencimientos.dbgMovAsociadosDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) and (Not(QVenAsociados.IsEmpty)) then
    begin
      DatoNew:=QVenAsociadosID.ASString;
      Recuperar.Execute;
    end;
end;

procedure TFormABMVencimientos.dbgMovAsociadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (Column.Index in [6]) and (State = []) then
    begin
      if (dbgMovAsociados.Columns[Datacol].Field.AsString)='S' then
        begin
          dbgMovAsociados.Canvas.Brush.Color := clMoneyGreen;
          dbgMovAsociados.DefaultDrawColumnCell(rect,DataCol,Column,State);
        end;
    end;
end;

procedure TFormABMVencimientos.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled      := True;
  dbgDetalle.ReadOnly      := DSBase.DataSet.State=dsBrowse;
  dbgMovAsociados.ReadOnly := True;
  Modificar.Enabled     := Not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.State=dsBrowse);
  Borrar.Enabled        := Not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.State=dsBrowse);
  dbeFecha.Enabled      := Not(DSBase.DataSet.State=dsBrowse);
  dbePrestador.Enabled  := Not(DSBase.DataSet.State=dsBrowse);
//  edCuota.Enabled       := Not(DSBase.DataSet.State=dsBrowse);
  dbeComprobante.Enabled:= Not(DSBase.DataSet.State=dsBrowse);

  spGenerarEgreso.Enabled := Borrar.Enabled;
  RevisionCuotas.Enabled  := Not(DSBase.DataSet.IsEmpty) and
                             ((CDSVencimientosID_CPBTE.AsString='') or (CDSVencimientosID_CPBTE.Value<=0));
end;

procedure TFormABMVencimientos.Label8Click(Sender: TObject);
begin
  inherited;
  if CDSVencimientosID_CPBTE.Value>1 then
    begin
      if Not(Assigned(FormEgresoCaja)) then
        FormEgresoCaja:=TFormEgresoCaja.Create(Self);
      FormEgresoCaja.DatoNew  :=CDSVencimientosID_CPBTE.AsString;
      FormEgresoCaja.TipoCpbte:='EC';

      FormEgresoCaja.Recuperar.Execute;
      FormEgresoCaja.Show;
    end;
end;

procedure TFormABMVencimientos.Label8MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if CDSVencimientosID_CPBTE.Value>0 then
    Label8.Cursor:=crHandPoint
  else
    Label8.Cursor:=crDefault;

end;

procedure TFormABMVencimientos.ModificarExecute(Sender: TObject);
begin
 if (CDSVencimientosID_CPBTE.AsString<>'') and (CDSVencimientosID_CPBTE.Value>0) then
    Raise Exception.Create('Movimiento asociado a una egreso de caja.... no sepuede Modificar...');
  inherited;
  Comprobante_Nuevo:=False;
end;

procedure TFormABMVencimientos.RecuperarExecute(Sender: TObject);
begin
//  inherited;
  CDSVencimientos.Close;
  CDSVencimientos.Params.ParamByName('id').AsInteger:= StrToInt(DatoNew);
  CDSVencimientos.Open;

  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').AsInteger     := StrToInt(DatoNew);
  CDSDetalle.Open;

  QVenAsociados.Close;
  QVenAsociados.ParamByName('id').AsInteger         := CDSVencimientosLOTE.Value;
  QVenAsociados.Open;

  if RevisionCuotas.Enabled then
    RevisionCuotas.Enabled  := CDSDetalle.RecordCount>0;
 // ColorBox1.ItemIndex:=CDSVencimientosCOLOR.Value;

end;

procedure TFormABMVencimientos.ReplicarMovExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCuotasVencimientos)) then
      FormCuotasVencimientos:=TFormCuotasVencimientos.Create(Self);
  FormCuotasVencimientos.id  := CDSVencimientosID.Value;
  FormCuotasVencimientos.Vto1:= CDSVencimientosFECHA_INCIO.AsDateTime;
  FormCuotasVencimientos.ShowModal;
end;

procedure TFormABMVencimientos.spGenerarEgresoClick(Sender: TObject);
begin
  inherited;
  if CDSVencimientosFINALIZADO.Value='N' then
    begin
      if Not(Assigned(FormEgresoCaja)) then
        FormEgresoCaja:=TFormEgresoCaja.Create(Self);
      FormEgresoCaja.ID_Vencimiento:=CDSVencimientosID.Value;
      FormEgresoCaja.Show;
      FormEgresoCaja.Agregar.execute;
      begin
        if Not(Assigned(FormBuscadorTipoCpbte)) then
          FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
        FormBuscadorTipoCpbte.TipoCpbte1:='EC';
        FormBuscadorTipoCpbte.TipoCpbte2:='';
        FormBuscadorTipoCpbte.TipoCpbte3:='';
        FormBuscadorTipoCpbte.CV        :='C';
        FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
        FormBuscadorTipoCpbte.ShowModal;
        if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
          begin
            FormEgresoCaja.CDSEgresoCajaSUCURSALVENTASetText(FormEgresoCaja.CDSEgresoCajaSUCURSALVENTA,IntToStr(FormBuscadorTipoCpbte.Sucursal));  
            FormEgresoCaja.CDSEgresoCajaID_TIPOCOMPROBANTESetText(FormEgresoCaja.CDSEgresoCajaID_TIPOCOMPROBANTE,IntToStr(FormBuscadorTipoCpbte.Id_Cpbte));
          end;
      end;

      FormEgresoCaja.CDSEgresoCajaDETALLE.Value:=CDSVencimientosASUNTO.Value;
      CDSDetalle.First;
      while Not(CDSDetalle.Eof) do
        begin
          FormEgresoCaja.CDSEgresoCajaDetalles.Append;
          FormEgresoCaja.CDSEgresoCajaDetallesRUBROGASTOSetText(FormEgresoCaja.CDSEgresoCajaDetallesRUBROGASTO,CDSDetalleGASTO_RUBRO.AsString);
          FormEgresoCaja.CDSEgresoCajaDetallesCODIGOGASTOSetText(FormEgresoCaja.CDSEgresoCajaDetallesCODIGOGASTO,CDSDetalleGASTO_CTA.AsString);
          FormEgresoCaja.CDSEgresoCajaDetallesIMPORTESetText(FormEgresoCaja.CDSEgresoCajaDetallesIMPORTE,FormatFloat('0.00',CDSDetalleIMPORTE.AsFloat));
          CDSDetalle.Next;
        end;
      if FormEgresoCaja.CDSEgresoCajaDetalles.State<>dsBrowse then
        FormEgresoCaja.CDSEgresoCajaDetalles.Post;

      FormEgresoCaja.FrameMovValoresEgresos1.dbgMovimientos.SetFocus;
    end
      else
      ShowMessage('Compromiso cumplido.....');
  //Recuperar.Execute;
end;

end.
