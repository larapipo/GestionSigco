unit UDespachoImpo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, JvToolEdit, JvDBControls, DBCtrls, Mask, JvExMask,
  JvBaseEdits, StdCtrls, DBGrids,
  JvLabel, ComCtrls, DB, SqlExpr, JvComponentBase, JvFormPlacement,
  ImgList,  ActnList, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Provider, DBClient, JvDBLookup, IBGenerator,DateUtils,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, Vcl.Grids,
  System.ImageList;

type
  TFormDespachoImpo = class(TFormABMBase)
    pcdetalle: TPageControl;
    pagImpuestos: TTabSheet;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel9: TJvLabel;
    dbgIva: TDBGrid;
    dbgPercepcionIB: TDBGrid;
    dbgPercepcionIVA: TDBGrid;
    PagRetenciones: TTabSheet;
    Label1: TLabel;
    pnCabecera: TPanel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel8: TJvLabel;
    dbeFecha: TJvDBDateEdit;
    dbeFechaFiscal: TJvDBDateEdit;
    CDSDespacho: TClientDataSet;
    DSPDespacho: TDataSetProvider;
    DSPDetalle: TDataSetProvider;
    CDSDetalle: TClientDataSet;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    edCotizacion: TDBEdit;
    ceMonedaFOB: TJvDBLookupCombo;
    ceMonedaSeg: TJvDBLookupCombo;
    ceMonedaFlete: TJvDBLookupCombo;
    CDSDespachoID: TIntegerField;
    CDSDespachoNRO: TStringField;
    CDSDespachoFLETE_DIVISA: TIntegerField;
    CDSDespachoSEGURO_DIVISA: TIntegerField;
    ceTotalRetenciones: TDBEdit;
    edBaseIva: TDBEdit;
    edFob: TDBEdit;
    edSeguro: TDBEdit;
    edFlete: TDBEdit;
    DSMoneda: TDataSource;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    edValorAduana: TDBEdit;
    PagConceptos: TTabSheet;
    CDSDetalleID: TIntegerField;
    CDSDetalleID_CAB: TIntegerField;
    CDSDetalleCODIGO: TIntegerField;
    CDSDetalleDETALLE: TStringField;
    CDSDetalleMUESTRADETALLE: TStringField;
    DSDetalle: TDataSource;
    dbgDetalle: TDBGrid;
    ibgCab: TIBGenerator;
    ibgDet: TIBGenerator;
    Panel2: TPanel;
    JvLabel8: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel9: TJvLabel;
    DBEdit2: TDBEdit;
    CDSDespachoVENDEDOR: TStringField;
    dbeVendedor: TDBEdit;
    JvLabel10: TJvLabel;
    dbeNumero: TDBEdit;
    pagABMConceptos: TTabSheet;
    QConceptos: TFDQuery;
    QConceptosID: TIntegerField;
    QConceptosDETALLE: TStringField;
    QDespacho: TFDQuery;
    QDetalle: TFDQuery;
    QDespachoID: TIntegerField;
    QDespachoNRO: TStringField;
    QDespachoCOTIZACION: TFloatField;
    QDespachoFOB: TFloatField;
    QDespachoFOB_DIVISA: TIntegerField;
    QDespachoFLETE: TFloatField;
    QDespachoFLETE_DIVISA: TIntegerField;
    QDespachoSEGURO: TFloatField;
    QDespachoSEGURO_DIVISA: TIntegerField;
    QDespachoBASEIVA_GANC: TFloatField;
    QDespachoVALOR_ADUANA_DOLAR: TFloatField;
    QDespachoTOTAL: TFloatField;
    QDespachoTOTAL_PESOS: TFloatField;
    QDespachoVENDEDOR: TStringField;
    QDetalleID: TIntegerField;
    QDetalleID_CAB: TIntegerField;
    QDetalleCODIGO: TIntegerField;
    QDetalleDETALLE: TStringField;
    QDetalleBASE_IMPONIBLE: TFloatField;
    QDetalleTASA: TFloatField;
    QDetalleIMPORTE: TFloatField;
    QDetalleIMPORTE_PESOS: TFloatField;
    QDetalleMUESTRADETALLE: TStringField;
    QMoneda: TFDQuery;
    QMonedaID: TIntegerField;
    QMonedaMONEDA: TStringField;
    QMonedaCOTIZACION: TFloatField;
    QMonedaSIGNO: TStringField;
    QMonedaORDEN: TSmallintField;
    QMonedaCOTIZACION_COMPRA: TFloatField;
    QABMConceptos: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DBGrid1: TDBGrid;
    DSABMConceptos: TDataSource;
    DBNavigator1: TDBNavigator;
    CDSDespachoTOTAL: TFloatField;
    CDSDespachoTOTAL_PESOS: TFloatField;
    CDSDespachoVALOR_ADUANA_DOLAR: TFloatField;
    CDSDespachoFLETE: TFloatField;
    CDSDespachoBASEIVA_GANC: TFloatField;
    CDSDespachoSEGURO: TFloatField;
    CDSDespachoCOTIZACION: TFloatField;
    CDSDespachoFOB: TFloatField;
    CDSDespachoFOB_DIVISA: TIntegerField;
    CDSDetalleBASE_IMPONIBLE: TFloatField;
    CDSDetalleIMPORTE: TFloatField;
    CDSDetalleTASA: TFloatField;
    CDSDetalleIMPORTE_PESOS: TFloatField;
    ComBuscadorConcepto: TComBuscador;
    QBuscadorConceptos: TFDQuery;
    QBuscadorConceptosID: TIntegerField;
    QBuscadorConceptosDETALLE: TStringField;
    BuscaConcepto: TAction;
    QDespachoFECHA: TSQLTimeStampField;
    QDespachoFECHA_FISCAL: TSQLTimeStampField;
    CDSDespachoFECHA: TSQLTimeStampField;
    CDSDespachoFECHA_FISCAL: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure CDSDetalleNewRecord(DataSet: TDataSet);
    procedure CDSDespachoNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSDetalleCODIGOSetText(Sender: TField; const Text: string);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure CDSDetalleTASASetText(Sender: TField; const Text: string);
    procedure CDSDetalleIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSDetalleIMPORTEChange(Sender: TField);
    procedure CDSDetalleAfterPost(DataSet: TDataSet);
    procedure CDSDetalleAfterDelete(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbeFechaExit(Sender: TObject);
    procedure CDSDespachoFECHA_FISCALSetText(Sender: TField;
      const Text: string);
    procedure BuscarExecute(Sender: TObject);
    procedure QABMConceptosAfterPost(DataSet: TDataSet);
    procedure BuscaConceptoExecute(Sender: TObject);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure QABMConceptosAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Sumar;
  end;

var
  FormDespachoImpo: TFormDespachoImpo;

implementation

USES DMStoreProcedureForm, UBuscadorDespachos,UDMain_FD;

{$R *.dfm}

procedure TFormDespachoImpo.Sumar;

begin
  CDSDespachoTOTAL.ASFloat      :=0;
  CDSDespachoTOTAL_PESOS.AsFloat:=0;
  CDSDetalle.First;
  CDSDetalle.DisableControls;
  while  not(CDSDetalle.Eof) do
    begin
      CDSDespachoTOTAL.AsFloat      :=CDSDespachoTOTAL.AsFLoat+CDSDetalleIMPORTE.AsFloat;
      CDSDespachoTOTAL_PESOS.AsFloat:=CDSDespachoTOTAL_PESOS.AsFLoat+CDSDetalleIMPORTE_PESOS.AsFloat;
      CDSDetalle.Next;
    end;
  CDSDetalle.First;
  CDSDetalle.EnableControls;
end;


procedure TFormDespachoImpo.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeFecha.SetFocus;
  dbeFecha.SelectAll;
end;

procedure TFormDespachoImpo.BuscaConceptoExecute(Sender: TObject);
begin
  inherited;
  QBuscadorConceptos.Close;
  QBuscadorConceptos.Open;
  ComBuscadorConcepto.Execute;
  IF ComBuscadorConcepto.rOk THEN
    CDSDetalleCODIGOSetText(CDSDetalleCODIGO,ComBuscadorConcepto.id);
  QBuscadorConceptos.Close;
end;

procedure TFormDespachoImpo.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorDespachos)) then
    FormBuscadorDespachos:=TFormBuscadorDespachos.Create(Self);
  FormBuscadorDespachos.SHowModal;
  if FormBuscadorDespachos.ModalResult = mrOk then
    begin
      DatoNew:= IntToStr(FormBuscadorDespachos.Id);
      Recuperar.Execute;
    end;
   
  
end;

procedure TFormDespachoImpo.CDSDespachoFECHA_FISCALSetText(Sender: TField;
  const Text: string);
var d,m,y:word;
BEGIN
  Sender.AsString := Text;
  if sender.AsString<>'' Then
    if CDSDespacho.State In [dsInsert,dsEdit] Then
      begin
        Sender.AsString := Text;
        DecodeDate(Sender.AsDateTime,y,m,d);
        begin
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := Sender.AsDateTime;
          DMStoreProcedure.QVerificaPeriodoFiscal.Open;
          if (Sender.AsDateTime>Date) or ( y <1900) Then
            begin
              ShowMessage('Fecha fuera de rango');
              CDSDespachoFECHA_FISCAL.Clear;
              dbeFechaFiscal.Clear;
              Sender.Clear;
              // esto se agrega...
              CDSDespachoFECHA_FISCAL.AsDateTime:=Date;

              dbeFechaFiscal.SetFocus;
            end
          else
            if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
              begin
                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
                CDSDespachoFECHA_FISCAL.Clear;
                Sender.Clear;
                dbeFechaFiscal.SetFocus;
              end
            else
              CDSDespachoFECHA_FISCAL.AsDateTime:=Sender.AsDateTime ;
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        end;
      end;
    end;

procedure TFormDespachoImpo.CDSDespachoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDespachoID.Value := ibgCab.IncrementFD(1);
  CDSDespachoFECHA.AsDateTime           :=Date;
  CDSDespachoFECHA_FISCAL.AsDateTime    :=Date;
  CDSDespachoNRO.AsString               :='';
  CDSDespachoFOB.ASFloat                :=0;
  CDSDespachoFLETE.ASFloat              :=0;
  CDSDespachoSEGURO.ASFloat             :=0;
  CDSDespachoTOTAL.ASFloat              :=0;
  CDSDespachoTOTAL_PESOS.ASFloat        :=0;
  CDSDespachoBASEIVA_GANC.ASFloat       :=0;
  CDSDespachoVALOR_ADUANA_DOLAR.ASFloat :=0;
end;

procedure TFormDespachoImpo.CDSDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormDespachoImpo.CDSDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormDespachoImpo.CDSDetalleCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>#13) and (Text<>'') then
    begin
      if CDSDetalle.State=dsBrowse then
        CDSDetalle.Edit;
      Sender.AsString:=Text;
      QConceptos.Close;
      QConceptos.ParamByName('id').Value:=Sender.ASInteger;
      QConceptos.Open;
      if QConceptos.Fields[0].AsString<>'' then
        begin
          if CDSDetalle.State=dsBrowse then
            CDSDetalle.Edit;
          CDSDetalleMUESTRADETALLE.Value:=QConceptos.Fields[1].ASString;
          if CDSDetalleCODIGO.Value<=50 then
            CDSDetalleBASE_IMPONIBLE.ASFloat:=CDSDespachoVALOR_ADUANA_DOLAR.AsFloat
          else
          if (CDSDetalleCODIGO.Value>50) and (CDSDetalleCODIGO.Value<500) then
            CDSDetalleBASE_IMPONIBLE.AsFloat:=CDSDespachoBASEIVA_GANC.ASFloat
          else
          if (CDSDetalleCODIGO.Value>=900) then
            CDSDetalleBASE_IMPONIBLE.AsFloat:=CDSDespachoBASEIVA_GANC.ASFloat;
        end
      else
        begin
          Sender.Clear;
          CDSDetalleMUESTRADETALLE.Clear;
        end;
    end;
end;

procedure TFormDespachoImpo.CDSDetalleIMPORTEChange(Sender: TField);
begin
  inherited;
  CDSDetalleIMPORTE_PESOS.ASFloat:=CDSDetalleIMPORTE.AsFloat*CDSDespachoCOTIZACION.ASFloat;
end;

procedure TFormDespachoImpo.CDSDetalleIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSDetalleTASA.ASFloat>0 then
    CDSDetalleBASE_IMPONIBLE.ASFloat:=Sender.AsFloat/(1+CDSDetalleTASA.ASFloat*0.01)
  else
    CDSDetalleBASE_IMPONIBLE.ASFloat:=0;

end;

procedure TFormDespachoImpo.CDSDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDetalleID_CAB.Value:=CDSDespachoID.Value;
  CDSDetalleID.Value := ibgDet.IncrementFD(1);
  CDSDetalleBASE_IMPONIBLE.ASFloat:=0;
  CDSDetalleTASA.ASFLoat          :=0;
  CDSDetalleIMPORTE.AsFloat       :=0;
  CDSDetalleIMPORTE_PESOS.ASFloat :=0;
end;

procedure TFormDespachoImpo.CDSDetalleTASASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSDetalleIMPORTE.ASFloat:=CDSDetalleBASE_IMPONIBLE.ASFloat*Sender.ASFloat*0.01;
end;

procedure TFormDespachoImpo.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSDespachoID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;

end;

procedure TFormDespachoImpo.dbeFechaExit(Sender: TObject);
begin
  inherited;
 if (dbeFecha.Date>Date) or ( YearOf(dbeFecha.Date)<1900) Then
    begin
      if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
        begin
          dbeFecha.Clear;
          dbeFecha.SetFocus;
        end;
    end;
  if (CDSDespachoFECHA_FISCAL.AsString='') Then
    begin
      if (dbeFecha.Date>0) then
        CDSDespachoFECHA_FISCALSetText(CDSDespachoFECHA_FISCAL,DateToStr(dbeFecha.date));
    end
  else
    if (CompareDate(CDSDespachoFECHA_FISCAL.AsDateTime,CDSDespachoFECHA.AsDateTime)<>0) Then
      if MessageDlg('Actualiza Fecha Fisca...??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
        CDSDespachoFECHA_FISCALSetText(CDSDespachoFECHA_FISCAL,DateToStr(dbeFecha.date));
end;

procedure TFormDespachoImpo.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF dbgDetalle.SelectedIndex = 1 THEN
    dbgDetalle.SelectedIndex := 3;
  IF dbgDetalle.SelectedIndex = 5 THEN
    dbgDetalle.SelectedIndex := 4;

end;

procedure TFormDespachoImpo.dbgDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscaConcepto.Execute;
end;

procedure TFormDespachoImpo.dbgDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (dbgDetalle.SelectedIndex = 3) THEN
        dbgDetalle.SelectedIndex := 1;
      key := 0;
    END;
end;

procedure TFormDespachoImpo.dbgDetalleKeyPress(Sender: TObject; var Key: Char);
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
        begin
          IF dbgDetalle.SelectedField = CDSDetalleCODIGO THEN
            BuscaConcepto.Execute;
        end;
      END
    else
      if (key = #27) then
         dbgDetalle.DataSource.DataSet.Cancel;
end;

procedure TFormDespachoImpo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSDespacho.Close;
  CDSDetalle.Close;
  QMoneda.Close;
  QABMConceptos.Close;
  Action:=caFree;

end;

procedure TFormDespachoImpo.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSDespacho,DSPDespacho);
  AddClientDataSet(CDSDetalle,DSPDetalle);
  Tabla:='Despacho_impo';
  Campo:='id';
  CDSDespacho.Open;
  CDSDetalle.Open;
  QMoneda.Open;
  QABMConceptos.Open;
  pagImpuestos.TabVisible  :=False;
  PagRetenciones.TabVisible:=False;
  pcdetalle.ActivePageIndex:=0;
end;

procedure TFormDespachoImpo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDespachoImpo:=nil;
end;

procedure TFormDespachoImpo.QABMConceptosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  QABMConceptos.ApplyUpdates(0);
end;

procedure TFormDespachoImpo.QABMConceptosAfterPost(DataSet: TDataSet);
begin
  inherited;
  QABMConceptos.ApplyUpdates(0);
end;

procedure TFormDespachoImpo.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSDespacho.Close;
  CDSDespacho.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSDespacho.Open;

  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSDetalle.Open;


end;

end.
