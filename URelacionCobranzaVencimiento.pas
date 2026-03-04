unit URelacionCobranzaVencimiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Provider, DBClient, Mask, JvExMask,
  JvToolEdit, JvDBLookup, JvBaseEdits, JvMemoryDataset,DateUtils, Spin,
  frxClass, frxDBSet, DBCtrls, DataExport, DataToXLS, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.FMTBcd, Data.DB, Data.SqlExpr,
  JvComponentBase,VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,StrUtils, System.ImageList;

type
  TFormRelacionCobranzaVencimiento = class(TFormABMBase)
    dbgRecibos: TJvDBGrid;
    CDSRecibos: TClientDataSet;
    DSPRecibos: TDataSetProvider;
    Label1: TLabel;
    Desde: TJvDateEdit;
    Label2: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    DSVendedores: TDataSource;
    CDSVendedor: TClientDataSet;
    CDSVendedorCODIGO: TStringField;
    CDSVendedorNOMBRE: TStringField;
    DSPVendedor: TDataSetProvider;
    Label3: TLabel;
    dbcCobradores: TJvDBLookupCombo;
    CDSRecibosID_RC: TIntegerField;
    CDSRecibosTIPOCPBTE: TStringField;
    CDSRecibosCLASECPBTE: TStringField;
    CDSRecibosNROCPBTE: TStringField;
    CDSRecibosCODIGO: TStringField;
    CDSRecibosLETRARC: TStringField;
    CDSRecibosSUCRC: TStringField;
    CDSRecibosNUMERORC: TStringField;
    CDSRecibosNOMBRE: TStringField;
    CDSRecibosRAZONSOCIAL: TStringField;
    CDSRecibosDIRECCION: TStringField;
    CDSRecibosCPOSTAL: TStringField;
    CDSRecibosLOCALIDAD: TStringField;
    CDSRecibosTIPOIVA: TIntegerField;
    CDSRecibosCUIT: TStringField;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSRecibosANULADO: TStringField;
    CDSRecibosVENDEDOR: TStringField;
    CDSRecibosIMPRESO: TStringField;
    CDSRecibosOBSERVACION1: TStringField;
    CDSRecibosOBSERVACION2: TStringField;
    CDSRecibosSUCURSAL: TIntegerField;
    CDSRecibosZONA: TIntegerField;
    CDSRecibosUSUARIO: TStringField;
    CDSRecibosFECHA_HORA: TSQLTimeStampField;
    CDSRecibosCPBTE_MANUAL: TStringField;
    CDSRecibosNC_ID: TIntegerField;
    CDSRecibosNC_TIPOCPBTE: TStringField;
    CDSRecibosNC_CLASECPBTE: TStringField;
    CDSRecibosNC_NROCOMPROB: TStringField;
    DSRecibos: TDataSource;
    edTotalRc: TJvCalcEdit;
    CDSMovCaja: TClientDataSet;
    DSPMovCaja: TDataSetProvider;
    dbgMovValores: TJvDBGrid;
    DSMovCaja: TDataSource;
    CDSMovCajaID_MOV: TIntegerField;
    CDSMovCajaTIPO: TStringField;
    CDSMovCajaCLASE: TStringField;
    CDSMovCajaID_MODOPAGO: TIntegerField;
    CDSMovCajaMODOPAGO: TStringField;
    CDSMovCajaFECHA: TSQLTimeStampField;
    CDSMovCajaFECHA_COBRO: TSQLTimeStampField;
    CDSMovCajaFECHA_EMISION: TSQLTimeStampField;
    CDSMovCajaNUMERO: TIntegerField;
    CDSMovCajaIMPORTE: TFloatField;
    CDSMovCajaCHE_IMPORTE: TFloatField;
    DSPMovAplicaCCVta: TDataSetProvider;
    CDSMovAplicaCCVta: TClientDataSet;
    CDSMovAplicaCCVtaID_MOV: TIntegerField;
    CDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField;
    CDSMovAplicaCCVtaFECHA: TSQLTimeStampField;
    CDSMovAplicaCCVtaCLIENTE: TStringField;
    CDSMovAplicaCCVtaID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaTIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaCLASECPBTE: TStringField;
    CDSMovAplicaCCVtaNUMEROCPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCVtaDETALLE: TStringField;
    CDSMovAplicaCCVtaCONCILIADO: TStringField;
    CDSMovAplicaCCVtaMUESTRAFECHACPBTE: TSQLTimeStampField;
    dbMovAplicaciones: TJvDBGrid;
    DSMovAplicaCCVta: TDataSource;
    edTotalAplicado: TJvCalcEdit;
    edTotalValores: TJvCalcEdit;
    TMAplicacionesPagos: TJvMemoryData;
    TMAplicacionesPagosID: TIntegerField;
    TMAplicacionesPagosID_RECIBO: TIntegerField;
    TMAplicacionesPagosID_MOV_CTACTE: TIntegerField;
    TMAplicacionesPagosIMPORTE: TFloatField;
    TMAplicacionesPagosMORA: TIntegerField;
    CDSMovCajaSALDO: TFloatField;
    DSAplicacionesPagos: TDataSource;
    dbgDiasMora: TJvDBGrid;
    edDias: TSpinEdit;
    Label4: TLabel;
    edBaseComision: TJvCalcEdit;
    frDBMora: TfrxDBDataset;
    frReporte: TfrxReport;
    frDBMovCaja: TfrxDBDataset;
    frDBAplicaciones: TfrxDBDataset;
    frDBRecibos: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    CDSRecibosMUESTRAVENDEDOR: TStringField;
    Label5: TLabel;
    DBText1: TDBText;
    TMAplicacionesPagosLIQUIDAR: TBooleanField;
    TResumenExcel: TJvMemoryData;
    TResumenExcelFECHA: TDateField;
    TResumenExcelDETALLE: TStringField;
    TResumenExcelDEBE: TFloatField;
    TResumenExcelHABER: TFloatField;
    TResumenExcelCODIGOCOBRADOR: TStringField;
    TResumenExcelDIAS: TIntegerField;
    PasarExcel: TAction;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    ToolButton2: TToolButton;
    chbServicios: TCheckBox;
    CDSMovAplicaCCVtaMUESTRATIPOVTA: TStringField;
    TMAplicacionesPagosTIPOVTA: TStringField;
    CDSMovAplicaCCVtaTIPO_VTA: TStringField;
    edDias2: TSpinEdit;
    Label6: TLabel;
    edPorcentaje2: TJvCalcEdit;
    QMovAplicaCCVta: TFDQuery;
    CDSMovAplicaCCVtaSALDO: TFloatField;
    CDSMovAplicaCCVtaIMPORTE: TFloatField;
    CDSMovAplicaCCVtaMUESTRATOTALFC: TFloatField;
    QRecibos: TFDQuery;
    CDSRecibosTOTAL_NETO: TFloatField;
    CDSRecibosPORCENTAJE_DSCTO: TFloatField;
    CDSRecibosIMPORTE_DSCTO: TFloatField;
    CDSRecibosTOTAL: TFloatField;
    CDSRecibosIMPORTE_RECARGO: TFloatField;
    CDSRecibosSALDO_APLICAR: TFloatField;
    CDSRecibosNUMERO_OPERACION: TStringField;
    CDSRecibosN_OPERACION2: TFloatField;
    CDSRecibosPORCENTAJE: TFloatField;
    QVendedor: TFDQuery;
    QMovCaja: TFDQuery;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSRecibosAfterScroll(DataSet: TDataSet);
    procedure TMAplicacionesPagosBeforePost(DataSet: TDataSet);
    procedure dbgDiasMoraDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbMovAplicacionesDblClick(Sender: TObject);
    procedure TMAplicacionesPagosNewRecord(DataSet: TDataSet);
    procedure PasarExcelExecute(Sender: TObject);
    procedure chbServiciosClick(Sender: TObject);
    procedure dbMovAplicacionesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgRecibosDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Sumar;
  end;

var
  FormRelacionCobranzaVencimiento: TFormRelacionCobranzaVencimiento;

implementation

{$R *.dfm}
uses Librerias, UMuestraCpbteCtaCteVta, URecibo_2,UDMain_FD;

procedure TFormRelacionCobranzaVencimiento.Sumar;
var CDSClone:TClientDataSet;
begin
  edTotalRc.Value:=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSRecibos,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalRc.Value:=edTotalRc.Value+CDSClone.FieldByName('Total').AsFLoat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);

  edTotalAplicado.Value:=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSMovAplicaCCVta,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalAplicado.Value:=edTotalAplicado.Value+CDSClone.FieldByName('Importe').AsFLoat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);

  edTotalValores.Value:=0;
  CDSClone:= TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSMovCaja,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalValores.Value:=edTotalValores.Value+CDSClone.FieldByName('Importe').AsFLoat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);

  if TMAplicacionesPagos.Active=True then
  begin
    edBaseComision.Value:=0;
    TMAplicacionesPagos.First;
    while Not(TMAplicacionesPagos.Eof) do
      begin
        if chbServicios.Checked=False then
          begin
            if TMAplicacionesPagosMORA.Value<edDias.Value then
              edBaseComision.Value := edBaseComision.Value+TMAplicacionesPagosIMPORTE.AsFloat;
          end
        else
          if chbServicios.Checked=True then
           begin
              if (TMAplicacionesPagosMORA.Value<edDias.Value) and (TMAplicacionesPagosTIPOVTA.Value<>'S') then
                edBaseComision.Value := edBaseComision.Value+TMAplicacionesPagosIMPORTE.AsFloat;
            end;
        TMAplicacionesPagos.Next;
      end;
    TMAplicacionesPagos.First;
  end;

end;

procedure TFormRelacionCobranzaVencimiento.TMAplicacionesPagosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CDSMovCaja.State = dsBrowse then
    CDSMovCaja.Edit;
  CDSMovCajaSALDO.AsFloat       := CDSMovCajaSALDO.AsFloat-TMAplicacionesPagosIMPORTE.AsFloat;
  if CDSMovAplicaCCVta.State = dsBrowse then
    CDSMovAplicaCCVta.Edit;
  CDSMovAplicaCCVtaSALDO.AsFloat:= CDSMovAplicaCCVtaSALDO.AsFloat - TMAplicacionesPagosIMPORTE.AsFloat;
  CDSMovAplicaCCVta.Post;
  CDSMovCaja.Post;
end;

procedure TFormRelacionCobranzaVencimiento.TMAplicacionesPagosNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TMAplicacionesPagosLIQUIDAR.Value:=False;
end;

procedure TFormRelacionCobranzaVencimiento.BuscarExecute(Sender: TObject);
begin
  //inherited;
  TMAplicacionesPagos.Close;
  TMAplicacionesPagos.Open;
  TMAplicacionesPagos.EmptyTable;

  CDSRecibos.Close;
  CDSRecibos.Params.ParamByName('vendedor').ASString:= dbcCobradores.KeyValue;
  CDSRecibos.Params.ParamByName('Desde').AsDate := Desde.Date;
  CDSRecibos.Params.ParamByName('hasta').AsDate := hasta.Date;
  CDSRecibos.Open;

  CDSMovCaja.Close;
  CDSMovCaja.Params.ParamByName('id').Value := CDSRecibosID_RC.Value;
  CDSMovCaja.Open;

  CDSMovAplicaCCVta.Close;
  CDSMovAplicaCCVta.Params.ParamByName('id').Value   := CDSRecibosID_RC.Value;
  CDSMovAplicaCCVta.Params.ParamByName('Tipo').Value := 'RC';
  CDSMovAplicaCCVta.Open;

  Sumar;
  dbgRecibos.Width        := dbgRecibos.Width+1;
  dbgRecibos.Width        := dbgRecibos.Width-1;

  dbgMovValores.Width     := dbgMovValores.Width+1;
  dbgMovValores.Width     := dbgMovValores.Width-1;

  dbgDiasMora.Width       := dbgDiasMora.Width+1;
  dbgDiasMora.Width       := dbgDiasMora.Width-1;

  dbMovAplicaciones.Width := dbMovAplicaciones.Width+1;
  dbMovAplicaciones.Width := dbMovAplicaciones.Width-1;




end;

procedure TFormRelacionCobranzaVencimiento.CDSRecibosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovCaja.Close;
  CDSMovCaja.Params.ParamByName('id').Value:=CDSRecibosID_RC.Value;
  CDSMovCaja.Open;

  CDSMovAplicaCCVta.Close;
  CDSMovAplicaCCVta.Params.ParamByName('id').Value   := CDSRecibosID_RC.Value;
  CDSMovAplicaCCVta.Params.ParamByName('Tipo').Value := 'RC';
  CDSMovAplicaCCVta.Open;

  TMAplicacionesPagos.Close;
  TMAplicacionesPagos.Open;
  CDSMovAplicaCCVta.First;
  CDSMovCaja.First;
  while (not (CDSMovAplicaCCVta.Eof)) and (not (CDSMovCaja.Eof)) do
    begin
      while (CDSMovAplicaCCVtaSALDO.AsFloat>0) and (not (CDSMovCaja.Eof)) do
        begin
          TMAplicacionesPagos.Append;
          TMAplicacionesPagosID.Value            := CDSMovCajaID_MOV.Value;
          TMAplicacionesPagosID_RECIBO.Value     := CDSRecibosID_RC.Value;
          TMAplicacionesPagosID_MOV_CTACTE.Value := CDSMovAplicaCCVtaID_MOV.Value;
          TMAplicacionesPagosTIPOVTA.Value       := CDSMovAplicaCCVtaMUESTRATIPOVTA.Value;
          if CDSMovCajaIMPORTE.AsFloat > CDSMovAplicaCCVtaIMPORTE.AsFloat then
            TMAplicacionesPagosIMPORTE.AsFloat     := CDSMovAplicaCCVtaIMPORTE.AsFloat
          else
            TMAplicacionesPagosIMPORTE.AsFloat    := CDSMovCajaSALDO.AsFloat;
          TMAplicacionesPagosMORA.Value           := DaysBetween(CDSMovAplicaCCVtaMUESTRAFECHACPBTE.AsDateTime,CDSMovCajaFECHA_COBRO.AsDateTime);

          if TMAplicacionesPagosLIQUIDAR.Value = True then
            TMAplicacionesPagosMORA.Value:=0;

          // control de facturas de servicio...
          if (TMAplicacionesPagosTIPOVTA.Value='S') and (chbServicios.Checked) then
            TMAplicacionesPagosLIQUIDAR.Value:=False;

          TMAplicacionesPagos.Post;
          if (CDSMovAplicaCCVtaSALDO.AsFloat>0) then
            CDSMovCaja.Next;
        end;
      CDSMovAplicaCCVta.Next;
    end;


  sumar;
end;

procedure TFormRelacionCobranzaVencimiento.chbServiciosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormRelacionCobranzaVencimiento.dbgDiasMoraDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (TMAplicacionesPagosMORA.Value > edDias.Value) Then
    if (gdFocused in State) then
      begin
        dbgDiasMora.canvas.brush.color := clBlack;
      end
    else
      begin
        dbgDiasMora.canvas.brush.color := clRed;
        dbgDiasMora.Canvas.Font.Color:=clWhite;
     end;
    //Esta línea es nueva
  if (TMAplicacionesPagosTIPOVTA.Value ='S') Then
    if (gdFocused in State) then
      begin
        dbgDiasMora.canvas.brush.color := clBlack;
      end
    else
      begin
        dbgDiasMora.canvas.brush.color := clBlue;
        dbgDiasMora.Canvas.Font.Color:=clWhite;
     end;

    dbgDiasMora.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormRelacionCobranzaVencimiento.dbgRecibosDblClick(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormRecibo_2)) THEN
    FormRecibo_2  := TFormRecibo_2.Create(self);
  FormRecibo_2.DatoNew   := CDSRecibosID_RC.AsString;
  FormRecibo_2.TipoCpbte := CDSRecibosTIPOCPBTE.Value;
  FormRecibo_2.Recuperar.Execute;
  FormRecibo_2.Show;

end;

procedure TFormRelacionCobranzaVencimiento.dbMovAplicacionesDblClick(
  Sender: TObject);
begin
 if (CDSMovAplicaCCVtaAPLICA_TIPOCPBTE.AsString='FC') or
    (CDSMovAplicaCCVtaAPLICA_TIPOCPBTE.AsString='NC') or
    (CDSMovAplicaCCVtaAPLICA_TIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormMuestraCpbteCtaCteVta)) THEN
        FormMuestraCpbteCtaCteVta  := TFormMuestraCpbteCtaCteVta.Create(self);
      FormMuestraCpbteCtaCteVta.id   := CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value;
      FormMuestraCpbteCtaCteVta.Tipo := CDSMovAplicaCCVtaAPLICA_TIPOCPBTE.Value;
      FormMuestraCpbteCtaCteVta.ShowModal;
    end;
end;

procedure TFormRelacionCobranzaVencimiento.dbMovAplicacionesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (CDSMovAplicaCCVtaTIPO_VTA.Value ='S') Then
    if (gdFocused in State) then
      dbMovAplicaciones.canvas.brush.color := clBlack
    else
      begin
        dbMovAplicaciones.canvas.brush.color := clBlue;
        dbMovAplicaciones.Canvas.Font.Color:=clWhite;
      end;
    dbMovAplicaciones.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormRelacionCobranzaVencimiento.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormRelacionCobranzaVencimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSRecibos.CLose;
  CDSVendedor.Close;
  Action:=caFree;
end;

procedure TFormRelacionCobranzaVencimiento.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSVendedor.Open;
end;

procedure TFormRelacionCobranzaVencimiento.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRelacionCobranzaVencimiento:=nil;
end;

procedure TFormRelacionCobranzaVencimiento.FormResize(Sender: TObject);
begin
  inherited;
  if FormRelacionCobranzaVencimiento<>nil then
    if FormRelacionCobranzaVencimiento.Width<>1072 then
      FormRelacionCobranzaVencimiento.Width:=1072;

end;

procedure TFormRelacionCobranzaVencimiento.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormRelacionCobranzaVencimiento.ImprimirExecute(Sender: TObject);
begin
  inherited;
  TMAplicacionesPagos.Close;
  TMAplicacionesPagos.Open;
  TMAplicacionesPagos.EmptyTable;
  CDSRecibos.First;

  frReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\RelacionCobroPago.fr3');
  frReporte.Variables['Desde']   :=''''+DateToStr(Desde.Date)+'''';
  frReporte.Variables['Hasta']   :=''''+DateToStr(Hasta.Date)+'''';
  frReporte.Variables['Vendedor']:=''''+dbcCobradores.Text+'''';
  frReporte.Variables['dias']    :=''''+IntToStr(edDias.Value)+'''';
  if chbServicios.Checked then
    frReporte.Variables['ControlServicio']:='''S'''
  else
    frReporte.Variables['ControlServicio']:='''N''';
  frReporte.Variables['Porcentaje2']      :=''''+FormatFloat(',0.00',edPorcentaje2.Value)+'''';
  frReporte.Variables['dias_2']           :=''''+IntToStr(edDias2.Value)+'''';
  // frCtaCte.PrepareReport;
  frReporte.ShowReport;
  //ceCliente.SetFocus;
  //ceCliente.SelectAll;
end;

procedure TFormRelacionCobranzaVencimiento.PasarExcelExecute(Sender: TObject);
begin
  inherited;
  TResumenExcel.Close;
  TResumenExcel.Open;
  CDSRecibos.First;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  while Not(CDSRecibos.Eof) do
    begin
      TResumenExcel.Append;
      TResumenExcelCODIGOCOBRADOR.AsString := CDSRecibosVENDEDOR.AsString;
      TResumenExcelFECHA.AsDateTime        := CDSRecibosFECHA.AsDateTime;
      TResumenExcelDETALLE.Value           := CDSRecibosNROCPBTE.Value;
      TResumenExcelDEBE.AsFloat            := CDSRecibosTOTAL.AsFloat;
      TResumenExcel.Post;
      CDSMovAplicaCCVta.First;
      while not(CDSMovAplicaCCVta.Eof) do
        begin
          TResumenExcel.Append;
          TResumenExcelCODIGOCOBRADOR.Value := '-';
          TResumenExcelFECHA.AsDateTime     := CDSMovAplicaCCVtaMUESTRAFECHACPBTE.AsDateTime;
          TResumenExcelDETALLE.Value        := CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value;
          TResumenExcelHABER.AsFloat        := CDSMovAplicaCCVtaIMPORTE.AsFloat;
          TResumenExcel.Post;
          CDSMovAplicaCCVta.Next;
        end;
      CDSRecibos.Next;  
    end;
  if Not(TResumenExcel.IsEmpty) then
    begin
      if VirtualUI.Active then
        VirtualUI.StdDialogs := False;
      SaveDialog1.DefaultExt := 'xls';
      SaveDialog1.FileName   := 'Vencimientos';
      SaveDialog1.FileName   := SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if Not(AnsiEndsText('xls', SaveDialog1.FileName)) then
               SaveDialog1.FileName:= SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
          end;
    end
  else
    ShowMessage('No hay datos para exportar');

end;

procedure TFormRelacionCobranzaVencimiento.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

procedure TFormRelacionCobranzaVencimiento.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;
 end;

end.
