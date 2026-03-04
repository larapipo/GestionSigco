unit UListadoCpbteVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,StrUtils,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, JvExMask,
  JvToolEdit,DateUtils, JvDBLookup, DataExport, DataToXLS, frxClass, frxDBSet,
  JvBaseEdits, JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK,
  Data.FMTBcd, Data.DB, Data.SqlExpr, JvComponentBase, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DataToAscii, System.ImageList, frCoreClasses;

type
  TFormListadoCpbteVta = class(TFormABMBase)
    CDSDetalle: TClientDataSet;
    DSPDetalle: TDataSetProvider;
    CDSDetalleTIPOCPBTE: TStringField;
    CDSDetalleCLASECPBTE: TStringField;
    CDSDetalleCODIGO: TStringField;
    CDSDetalleNOMBRE: TStringField;
    dbgDetalle: TJvDBGrid;
    Panel2: TPanel;
    DSDetalle: TDataSource;
    Label1: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label2: TLabel;
    UpDown1: TUpDown;
    cbTipoCpbte: TJvDBLookupCombo;
    Label3: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel2: TJvLabel;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSTipoCpbte: TDataSource;
    btExcel: TBitBtn;
    ToolButton1: TToolButton;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    CDSDetalleSUCURAL: TIntegerField;
    CDSDetalleTIPO_VTA: TStringField;
    CDSDetalleNROCPBTE: TStringField;
    Label4: TLabel;
    CDSDetalleID: TIntegerField;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frFacturas: TfrxDBDataset;
    Neto: TJvCalcEdit;
    Iva: TJvCalcEdit;
    Total: TJvCalcEdit;
    Total2: TJvCalcEdit;
    Iva2: TJvCalcEdit;
    Neto2: TJvCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    QTipoCpbte: TFDQuery;
    QDetalle: TFDQuery;
    QTipoCpbteID_TIPO: TIntegerField;
    QTipoCpbteDETALLE: TStringField;
    QTipoCpbteSIGLA: TStringField;
    QTipoCpbteDESGLOZA_IVA: TStringField;
    QTipoCpbteAFECTA_CC: TStringField;
    QTipoCpbteAFECTA_LIBRO_IVA: TStringField;
    QTipoCpbteTIPO_DE_OPERACION: TStringField;
    CDSDetalleNETO: TFloatField;
    CDSDetalleIVA: TFloatField;
    CDSDetalleTOTAL: TFloatField;
    CDSDetalleCODIGO_AFIP: TStringField;
    DataToXLSAFIP: TDataToXLS;
    CDSDetalleFECHAAMERICANA: TStringField;
    ExportarAFIP: TAction;
    BitBtn2: TBitBtn;
    CDSDetallePUNTOVTA: TStringField;
    CDSDetalleNUMERO: TStringField;
    CDSDetalleIIBB: TFloatField;
    CDSDetalleEN_LIBRO_IVA: TStringField;
    CDSDetalleCPTE_FISCAL: TStringField;
    CDSDetalleCBTE_ELECTRONICO: TStringField;
    CDSDetalleSUCCPBTE: TStringField;
    CDSDetalleNUMECPBTE: TStringField;
    CDSDetalleLETRA: TStringField;
    rgModoIva: TRadioGroup;
    cheElectronicas: TCheckBox;
    cheFiscales: TCheckBox;
    JvDBStatusLabel1: TJvDBStatusLabel;
    DataToAscii1: TDataToAscii;
    CDSDetalleIDENTIFICADORtIPO: TIntegerField;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    CDSDetalleCUITEMPRESA: TStringField;
    ExportarTXT: TAction;
    btTxt: TBitBtn;
    CDSDetalleVACIO: TStringField;
    CDSDetalleFECHAADM: TStringField;
    QDetalle_AFIP: TFDQuery;
    DSPDetalle_AFIP: TDataSetProvider;
    CDSDetalle_AFIP: TClientDataSet;
    CDSDetalle_AFIPFECHA: TStringField;
    CDSDetalle_AFIPSUCCPBTE: TStringField;
    CDSDetalle_AFIPCPTE_FISCAL: TStringField;
    CDSDetalle_AFIPCBTE_ELECTRONICO: TStringField;
    CDSDetalle_AFIPEN_LIBRO_IVA: TStringField;
    CDSDetalle_AFIPNETO: TFloatField;
    CDSDetalle_AFIPIVA: TFloatField;
    CDSDetalle_AFIPTOTAL: TFloatField;
    CDSDetalle_AFIPIDENTIFICADORTIPO: TStringField;
    CDSDetalle_AFIPCUITEMPRESA: TStringField;
    CDSDetalle_AFIPVACIO: TStringField;
    CDSDetalle_AFIPNETO_STR: TStringField;
    CDSDetalle_AFIPTOTAL_STR: TStringField;
    CDSDetalle_AFIPIVA_STR: TStringField;
    CDSDetalle_AFIPCONTROLADOR_NRO: TStringField;
    CDSDetalleFECHAVTA: TSQLTimeStampField;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSDetalleCalcFields(DataSet: TDataSet);
    procedure ExportarAFIPExecute(Sender: TObject);
    procedure rgModoIvaClick(Sender: TObject);
    procedure cheFiscalesClick(Sender: TObject);
    procedure cheElectronicasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExportarTXTExecute(Sender: TObject);
    procedure CDSDetalle_AFIPCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AplicarFiltros;
  end;

var
  FormListadoCpbteVta: TFormListadoCpbteVta;

implementation

uses UFactura_2, UFacturaCtdo_2, UTiketVta,UDMain_FD;
{$R *.dfm}

procedure TFormListadoCpbteVta.AplicarFiltros;
begin
  CDSDetalle.Filtered:=False;
  CDSDetalle.Filter:='';
  if not(CDSDetalle.IsEmpty) then
    begin
      case rgModoIva.ItemIndex of
        0: CDSDetalle.Filter:='';
        1: CDSDetalle.Filter:='EN_LIBRO_IVA=''S''';
        2: CDSDetalle.Filter:='EN_LIBRO_IVA=''N''';
      end;
      if rgModoIva.ItemIndex=1 then
        BEGIN
          if (cheElectronicas.Checked) then
            CDSDetalle.Filter:=CDSDetalle.Filter+' and (CBTE_ELECTRONICO<>''S'')';
          if (cheFiscales.Checked) then
            CDSDetalle.Filter:=CDSDetalle.Filter+' and (CPTE_FISCAL<>''S'')';
        END;
      CDSDetalle.Filtered:=True;
    end;

  Neto.Value  :=0;
  Iva.Value   :=0;
  Total.Value :=0;

  Neto2.Value :=0;
  Iva2.Value  :=0;
  Total2.Value:=0;


  if not(CDSDetalle.IsEmpty) then
    begin
      CDSDetalle.First;
      CDSDetalle.DisableControls;
      while Not(CDSDetalle.eof) do
        begin
          if CDSDetalleTIPO_VTA.Value<>'S' then
            begin
              Neto.Value  :=Neto.Value+CDSDetalleNETO.AsFloat;
              Iva.Value   :=Iva.Value+CDSDetalleIVA.AsFloat;
              Total.Value :=Total.Value+CDSDetalleTOTAL.AsFloat
            end
          else
            begin
              Neto2.Value :=Neto2.Value+CDSDetalleNETO.AsFloat;
              Iva2.Value  :=Iva2.Value+CDSDetalleIVA.AsFloat;
              Total2.Value:=Total2.Value+CDSDetalleTOTAL.AsFloat
            end;
          CDSDetalle.Next;
        end;
      CDSDetalle.First;
      CDSDetalle.EnableControls;
    end;

  CDSDetalle_AFIP.Close;
  CDSDetalle_AFIP.IndexName:='';
  CDSDetalle_AFIP.IndexDefs.Clear;
  CDSDetalle_AFIP.Params.ParamByName('desde').Value :=desde.Date;
  CDSDetalle_AFIP.Params.ParamByName('hasta').Value :=hasta.Date;
  CDSDetalle_AFIP.Params.ParamByName('tipo').Value  := cbTipoCpbte.KeyValue;
  CDSDetalle_AFIP.Params.ParamByName('clase').Value :='**';
  CDSDetalle_AFIP.Params.ParamByName('codigo').Value :='******';
  CDSDetalle_AFIP.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;
  case rgModoIva.ItemIndex of
    0:  CDSDetalle_AFIP.Params.ParamByName('en_iva').Value  :='*';
    1:  CDSDetalle_AFIP.Params.ParamByName('en_iva').Value  :='S';
    2:  CDSDetalle_AFIP.Params.ParamByName('en_iva').Value  :='N';
  end;
  if cheFiscales.Checked Then
    CDSDetalle_AFIP.Params.ParamByName('fiscal').Value  :='N'
  else
    CDSDetalle_AFIP.Params.ParamByName('fiscal').Value  :='*';

  if cheElectronicas.Checked Then
    CDSDetalle_AFIP.Params.ParamByName('electro').Value :='N'
  else
    CDSDetalle_AFIP.Params.ParamByName('electro').Value :='*';
  CDSDetalle_AFIP.Open;

end;

procedure TFormListadoCpbteVta.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName  :='ComprobantesVta';

      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin

            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLS.SaveToFile(SaveDialog.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoCpbteVta.BuscarExecute(Sender: TObject);
//var Neto,Iva,Total,Neto2,Iva2,Total2:Extended;
begin
  inherited;
  CDSDetalle.Close;
  CDSDetalle.IndexName:='';
  CDSDetalle.IndexDefs.Clear;
  CDSDetalle.Params.ParamByName('desde').Value :=desde.Date;
  CDSDetalle.Params.ParamByName('hasta').Value :=hasta.Date;
  CDSDetalle.Params.ParamByName('tipo').Value  := cbTipoCpbte.KeyValue;
  CDSDetalle.Params.ParamByName('clase').Value :='**';
  CDSDetalle.Params.ParamByName('codigo').Value :='******';
  CDSDetalle.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;
  CDSDetalle.Open;

  CDSDetalle_AFIP.Close;
  CDSDetalle_AFIP.IndexName:='';
  CDSDetalle_AFIP.IndexDefs.Clear;
  CDSDetalle_AFIP.Params.ParamByName('desde').Value :=desde.Date;
  CDSDetalle_AFIP.Params.ParamByName('hasta').Value :=hasta.Date;
  CDSDetalle_AFIP.Params.ParamByName('tipo').Value  := cbTipoCpbte.KeyValue;
  CDSDetalle_AFIP.Params.ParamByName('clase').Value :='**';
  CDSDetalle_AFIP.Params.ParamByName('codigo').Value :='******';
  CDSDetalle_AFIP.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;
  case rgModoIva.ItemIndex of
    0:  CDSDetalle_AFIP.Params.ParamByName('en_iva').Value  :='*';
    1:  CDSDetalle_AFIP.Params.ParamByName('en_iva').Value  :='S';
    2:  CDSDetalle_AFIP.Params.ParamByName('en_iva').Value  :='N';
  end;
  if cheFiscales.Checked Then
    CDSDetalle_AFIP.Params.ParamByName('fiscal').Value  :='N'
  else
    CDSDetalle_AFIP.Params.ParamByName('fiscal').Value  :='*';

  if cheElectronicas.Checked Then
    CDSDetalle_AFIP.Params.ParamByName('electro').Value :='N'
  else
    CDSDetalle_AFIP.Params.ParamByName('electro').Value :='*';
  CDSDetalle_AFIP.Open;


  Neto.Value  :=0;
  Iva.Value   :=0;
  Total.Value :=0;

  Neto2.Value :=0;
  Iva2.Value  :=0;
  Total2.Value:=0;

  AplicarFiltros;

end;

procedure TFormListadoCpbteVta.CDSDetalleCalcFields(DataSet: TDataSet);
var Aux:string;
begin
  inherited;
  CDSDetalleFECHAAMERICANA.AsString := FormatDateTime('yyyymmdd',CDSDetalleFECHAVTA.AsDateTime);
  CDSDetalleFECHAADM.AsString       := FormatDateTime('yyyyddmm',CDSDetalleFECHAVTA.AsDateTime);

  CDSDetallePUNTOVTA.AsString       := Copy(CDSDetalleNROCPBTE.AsString,2,4);
  CDSDetalleNUMERO.AsString         := Copy(CDSDetalleNROCPBTE.AsString,6,8);

  CDSDetalleIDENTIFICADORtIPO.Value:=2;
  if CDSDetalleCPTE_FISCAL.Value='S' then
    CDSDetalleIDENTIFICADORtIPO.Value:=1;

  Aux := AnsiReplaceText(CDSEmpresaCUIT.AsString,'-','');
  CDSDetalleCUITEMPRESA.Value:=Trim(Aux);
  CDSDetalleVACIO.Value:='';
end;

procedure TFormListadoCpbteVta.CDSDetalle_AFIPCalcFields(DataSet: TDataSet);
var aux:string;
begin
  inherited;
  CDSDetalle_AFIPIDENTIFICADORTIPO.Value:='2';
  if CDSDetalle_AFIPCPTE_FISCAL.Value='S' then
    CDSDetalle_AFIPIDENTIFICADORTIPO.Value:='1';

  Aux := AnsiReplaceText(CDSEmpresaCUIT.AsString,'-','');
  CDSDetalle_AFIPCUITEMPRESA.Value := Trim(Aux);
  CDSDetalle_AFIPVACIO.Value       := '';
  CDSDetalle_AFIPNETO_STR.Value    := FormatFloat('0.00',CDSDetalle_AFIPNETO.AsFloat);
  CDSDetalle_AFIPTOTAL_STR.Value   := FormatFloat('0.00',CDSDetalle_AFIPTOTAL.AsFloat);
  CDSDetalle_AFIPIVA_STR.Value     := FormatFloat('0.00',CDSDetalle_AFIPTOTAL.AsFloat-CDSDetalle_AFIPNETO.AsFloat);

end;

procedure TFormListadoCpbteVta.cheElectronicasClick(Sender: TObject);
begin
  inherited;
  AplicarFiltros;
end;

procedure TFormListadoCpbteVta.cheFiscalesClick(Sender: TObject);
begin
  inherited;
  AplicarFiltros;
end;

procedure TFormListadoCpbteVta.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
 if ((CDSDetalleTIPOCPBTE.Value='FC') or (CDSDetalleTIPOCPBTE.Value='NC')) then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=CDSDetalleID.AsString;
      FormCpbte_2.TipoCpbte:=CDSDetalleTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSDetalleTIPOCPBTE.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  :=CDSDetalleID.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSDetalleTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (CDSDetalleTIPOCPBTE.Value='TK') then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta:=TFormTicketVta.Create(Self);
          FormTicketVta.DatoNew  :=CDSDetalleID.AsString;
          FormTicketVta.TipoCpbte:=CDSDetalleTIPOCPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
      end

end;

procedure TFormListadoCpbteVta.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (CDSDetalleTIPO_VTA.Value)='S' Then
    if (gdFocused in State) then
      begin
        dbgDetalle.canvas.Font.color := clWhite;
      end
    else
      begin
        dbgDetalle.canvas.Font.color := clBlue;
     end;
    //Esta línea es nueva

    dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormListadoCpbteVta.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormListadoCpbteVta.ExportarAFIPExecute(Sender: TObject);
Var Nombre:String;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName  :='Comprobantes_'+FormatDateTime('yyyymmdd', Desde.Date)+'_'+FormatDateTime('yyyymmdd',Hasta.Date);

      SaveDialog.FileName  :=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
               SaveDialog.FileName := SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLSAFIP.SaveToFile(SaveDialog.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
 end;

procedure TFormListadoCpbteVta.ExportarTXTExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='TXT';
      SaveDialog.FileName  :='ComprobVta_TXT';

      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin

            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToAscii1.SaveToFile(SaveDialog.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoCpbteVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoCpbteVta.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  autoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  CDSSucursal.Open;
  dbcSucursal.KeyValue := SucursalPorDefecto;
  dbcSucursal.Enabled  := DMMain_FD.ModificaSucursal;
  QTipoCpbte.Open;
end;

procedure TFormListadoCpbteVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCpbteVta:=nil;
end;

procedure TFormListadoCpbteVta.FormShow(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Close;
  CDSEmpresa.Open;
end;

procedure TFormListadoCpbteVta.ImprimirExecute(Sender: TObject);
begin
  inherited;
 if Not(CDSDetalle.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer := PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoFacturas_tipo.fr3');
      frxReport.Variables['Sucursal'] := ''''+dbcSucursal.Text+'''';
      frxReport.Variables['desde']    := ''''+DateToStr(desde.Date)+'''';
      frxReport.Variables['hasta']    := ''''+DateToStr(hasta.Date)+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoCpbteVta.rgModoIvaClick(Sender: TObject);
begin
  inherited;
  AplicarFiltros;
end;

procedure TFormListadoCpbteVta.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoCpbteVta.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

end.
