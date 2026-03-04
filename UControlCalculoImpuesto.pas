unit UControlCalculoImpuesto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient,  Grids,
  StdCtrls, Mask, Db, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBGrids,Librerias,
  JvComponentBase, JvExControls, JvGradient, JvDBLookup,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  JvBaseEdits, JvExDBGrids, JvDBGrid, Menus, DBCtrls, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormControlImpuestos = class(TFormABMBase)
    DSPFcCab: TDataSetProvider;
    DSPFcDetalle: TDataSetProvider;
    DSFcDetalle: TDataSource;
    DSPFcImpuesto: TDataSetProvider;
    DSFcImpuesto: TDataSource;
    UpDown1: TUpDown;
    DSSucrusal: TDataSource;
    Label1: TLabel;
    BuscarCpbte: TAction;
    cbSuc: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    QFcCab: TFDQuery;
    CDSFcCab: TClientDataSet;
    CDSFcCabID_FC: TIntegerField;
    CDSFcCabTIPOCPBTE: TStringField;
    CDSFcCabCLASECPBTE: TStringField;
    CDSFcCabNROCPBTE: TStringField;
    CDSFcCabTotalCalculado: TFloatField;
    CDSFcCabDiferenciaNeto: TCurrencyField;
    CDSFcCabDif_enc_det: TFloatField;
    CDSFcCabSUCURSAL: TIntegerField;
    QFcDetalle: TFDQuery;
    CDSFcDetalle: TClientDataSet;
    CDSFcDetalleID: TIntegerField;
    CDSFcDetalleTIPOCPBTE: TStringField;
    CDSFcDetalleCLASECPBTE: TStringField;
    CDSFcDetalleNROCPBTE: TStringField;
    CDSFcDetalleCODIGOARTICULO: TStringField;
    CDSFcDetalleDETALLE: TStringField;
    CDSFcDetalleDESGLOZAIVA: TStringField;
    CDSFcDetalleMODO_GRAVAMEN: TStringField;
    CDSFcDetalleUNITARIO_TOTAL: TFloatField;
    CDSFcDetalleUNITARIO_GRAVADO: TFloatField;
    CDSFcDetalleUNITARIO_EXENTO: TFloatField;
    QFcImpuesto: TFDQuery;
    CDSFcImpuesto: TClientDataSet;
    CDSFcImpuestoID_IMPUESTO: TIntegerField;
    CDSFcImpuestoID_FCVTACAB: TIntegerField;
    CDSFcImpuestoCODIGO_GRAVAMEN: TIntegerField;
    CDSFcImpuestoDETALLE: TStringField;
    CDSFcImpuestoImpuestoCalculado: TFloatField;
    CDSFcImpuestoNETO: TFloatField;
    CDSFcImpuestoTASA: TFloatField;
    CDSFcImpuestoIMPORTE: TFloatField;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSFcCabNETOEXEN2: TFloatField;
    CDSFcCabNETOGRAV2: TFloatField;
    CDSFcCabDSTOIMPORTE: TFloatField;
    CDSFcCabTOTAL: TFloatField;
    CDSFcCabFECHAVTA: TSQLTimeStampField;
    CDSFcDetalleCANTIDAD: TFloatField;
    CDSFcDetalleIVA_TASA: TFloatField;
    CDSFcDetalleIVA_SOBRETASA: TFloatField;
    CDSFcDetalleDESCUENTO: TFloatField;
    CDSFcDetalleTOTAL: TFloatField;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel7: TJvLabel;
    edTotaDetalle: TJvCalcEdit;
    edTotalGravado: TJvCalcEdit;
    edTotalExento: TJvCalcEdit;
    dbgCabeceras: TJvDBGrid;
    dbgFcDetalle: TJvDBGrid;
    dbgImpuesto: TJvDBGrid;
    ceCliente: TJvComboEdit;
    Label2: TLabel;
    edNombreCliente: TEdit;
    BuscarCliente: TAction;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
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
    QClientesCONDICION_IVA: TIntegerField;
    QClientesSUCURSAL: TIntegerField;
    QClientesACTIVO: TStringField;
    chbClientes: TCheckBox;
    CDSFcCabCODIGO: TStringField;
    CDSFcCabRAZONSOCIAL: TStringField;
    chbDif: TCheckBox;
    btVerifica: TButton;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    dbgDiferenciaNeto: TJvDBGrid;
    dbgDifDetalle: TJvDBGrid;
    btRevision: TButton;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    QCerrarCaja: TFDQuery;
    QReAbrirCaja: TFDQuery;
    QCajaActualAbierta: TFDQuery;
    QCajaActualAbiertaID_CAJA: TIntegerField;
    QBuscaAplicaiones: TFDQuery;
    DSPBuscaAplicaciones: TDataSetProvider;
    CDSBuscaAplicaciones: TClientDataSet;
    QBuscaAplicaionesID_MOV: TIntegerField;
    QBuscaAplicaionesID_MOVCCVTA: TIntegerField;
    QBuscaAplicaionesFECHA: TSQLTimeStampField;
    QBuscaAplicaionesCLIENTE: TStringField;
    QBuscaAplicaionesID_CPBTE: TIntegerField;
    QBuscaAplicaionesTIPOCPBTE: TStringField;
    QBuscaAplicaionesCLASECPBTE: TStringField;
    QBuscaAplicaionesNUMEROCPBTE: TStringField;
    QBuscaAplicaionesIMPORTE: TFloatField;
    QBuscaAplicaionesAPLICA_ID_CPBTE: TIntegerField;
    QBuscaAplicaionesAPLICA_TIPOCPBTE: TStringField;
    QBuscaAplicaionesAPLICA_CLASECPBTE: TStringField;
    QBuscaAplicaionesAPLICA_NROCPBTE: TStringField;
    QBuscaAplicaionesDETALLE: TStringField;
    QBuscaAplicaionesCONCILIADO: TStringField;
    CDSBuscaAplicacionesID_MOV: TIntegerField;
    CDSBuscaAplicacionesID_MOVCCVTA: TIntegerField;
    CDSBuscaAplicacionesFECHA: TSQLTimeStampField;
    CDSBuscaAplicacionesCLIENTE: TStringField;
    CDSBuscaAplicacionesID_CPBTE: TIntegerField;
    CDSBuscaAplicacionesTIPOCPBTE: TStringField;
    CDSBuscaAplicacionesCLASECPBTE: TStringField;
    CDSBuscaAplicacionesNUMEROCPBTE: TStringField;
    CDSBuscaAplicacionesIMPORTE: TFloatField;
    CDSBuscaAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSBuscaAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSBuscaAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSBuscaAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSBuscaAplicacionesDETALLE: TStringField;
    CDSBuscaAplicacionesCONCILIADO: TStringField;
    QActualizarMovCC: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FMTBCDField1: TFloatField;
    IntegerField4: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    QAplicaciones: TFDQuery;
    DSPAplicaciones: TDataSetProvider;
    CDSAplicaciones: TClientDataSet;
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesID_MOVCCVTA: TIntegerField;
    QAplicacionesFECHA: TSQLTimeStampField;
    QAplicacionesCLIENTE: TStringField;
    QAplicacionesID_CPBTE: TIntegerField;
    QAplicacionesTIPOCPBTE: TStringField;
    QAplicacionesCLASECPBTE: TStringField;
    QAplicacionesNUMEROCPBTE: TStringField;
    QAplicacionesIMPORTE: TFloatField;
    QAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    QAplicacionesAPLICA_TIPOCPBTE: TStringField;
    QAplicacionesAPLICA_CLASECPBTE: TStringField;
    QAplicacionesAPLICA_NROCPBTE: TStringField;
    QAplicacionesDETALLE: TStringField;
    QAplicacionesCONCILIADO: TStringField;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCVTA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesCLIENTE: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesDETALLE: TStringField;
    CDSAplicacionesCONCILIADO: TStringField;
    QActualizarMovACta: TFDQuery;
    cbCpbte: TComboBox;
    Label3: TLabel;
    CDSAplicacionDeNC: TClientDataSet;
    DSPAplicacionDeNC: TDataSetProvider;
    QAplicacionDeNC: TFDQuery;
    QBorraAplicacionNC: TFDQuery;
    CDSAplicacionDeNCID_MOV: TIntegerField;
    CDSAplicacionDeNCID_MOVCCVTA: TIntegerField;
    CDSAplicacionDeNCFECHA: TSQLTimeStampField;
    CDSAplicacionDeNCCLIENTE: TStringField;
    CDSAplicacionDeNCID_CPBTE: TIntegerField;
    CDSAplicacionDeNCTIPOCPBTE: TStringField;
    CDSAplicacionDeNCCLASECPBTE: TStringField;
    CDSAplicacionDeNCNUMEROCPBTE: TStringField;
    CDSAplicacionDeNCIMPORTE: TFloatField;
    CDSAplicacionDeNCAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionDeNCAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionDeNCAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionDeNCAPLICA_NROCPBTE: TStringField;
    CDSAplicacionDeNCDETALLE: TStringField;
    CDSAplicacionDeNCCONCILIADO: TStringField;
    ch2decimales: TCheckBox;
    Label4: TLabel;
    QTipoComp: TFDQuery;
    CDSTipoComp: TClientDataSet;
    DSPTipoComp: TDataSetProvider;
    JvDBLookupCombo1: TJvDBLookupCombo;
    DSTipoComp: TDataSource;
    CDSTipoCompCLASE_COMPROB: TStringField;
    QActulizacionTotal: TFDQuery;
    ActualizaTotal: TAction;
    PopupMenu1: TPopupMenu;
    ActualizaTotal1: TMenuItem;
    edImpuestos: TJvCalcEdit;
    CDSFcCabIMPUESTOS: TFloatField;
    chCambio: TCheckBox;
    QFcImpuestoID_IMPUESTO: TIntegerField;
    QFcImpuestoID_FCVTACAB: TIntegerField;
    QFcImpuestoCODIGO_GRAVAMEN: TIntegerField;
    QFcImpuestoDETALLE: TStringField;
    QFcImpuestoNETO: TFloatField;
    QFcImpuestoTASA: TFloatField;
    QFcImpuestoIMPORTE: TFloatField;
    SpeedButton1: TSpeedButton;
    QFcCabID_FC: TIntegerField;
    QFcCabTIPOCPBTE: TStringField;
    QFcCabCODIGO: TStringField;
    QFcCabRAZONSOCIAL: TStringField;
    QFcCabSUCURSAL: TIntegerField;
    QFcCabCLASECPBTE: TStringField;
    QFcCabNROCPBTE: TStringField;
    QFcCabNETOEXEN2: TFloatField;
    QFcCabNETOGRAV2: TFloatField;
    QFcCabDSTOIMPORTE: TFloatField;
    QFcCabTOTAL: TFloatField;
    QFcCabFECHAVTA: TSQLTimeStampField;
    QFcCabIMPUESTOS: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgFcCabTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure CDSFcCabCalcFields(DataSet: TDataSet);
    procedure CDSFcCabAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSFcImpuestoCalcFields(DataSet: TDataSet);
    procedure dbgFcDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure CDSFcImpuestoAfterScroll(DataSet: TDataSet);
    procedure dbgDifDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure cbSucClick(Sender: TObject);
    procedure dbgImpuestoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BuscarCpbteExecute(Sender: TObject);
    procedure dbgCabecerasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure chbClientesClick(Sender: TObject);
    procedure chbDifClick(Sender: TObject);
    procedure btVerificaClick(Sender: TObject);
    procedure btRevisionClick(Sender: TObject);
    procedure cbCpbteChange(Sender: TObject);
    procedure ActualizaTotalExecute(Sender: TObject);
    procedure CDSFcImpuestoAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalDetalle:Real;
    TotalDetalleGravado:Real;
    TotalDetalleExento :Real;
    TotalIva:Real;
    TotalNetoIva:Real;
  end;

var
  FormControlImpuestos: TFormControlImpuestos;

implementation

uses UDMain_FD, UFactura_2, UFacturaCtdo_2,DMBuscadoresForm,Variants,
  UBuscadorClientes, UTiketVta;

{$R *.DFM}

procedure TFormControlImpuestos.BuscarExecute(Sender: TObject);
begin
  inherited;
  screen.cursor:=crHourGlass;

  CDSFcDetalle.Close;
  CDSFcDetalle.Params.ParamByName('id').Clear;
  CDSFcDetalle.Open;

  CDSFcImpuesto.Close;
  CDSFcImpuesto.Params.ParamByName('id').Clear;
  CDSFcImpuesto.Open;

  CDSFcCab.Close;
  CDSFcCab.IndexName:='';
  CDSFcCab.IndexDefs.Clear;
  CDSFcCab.Params.ParamByName('desde').Value:=desde.Date;
  CDSFcCab.Params.ParamByName('hasta').Value:=hasta.Date;
  if VarisNull(cbSuc.KeyValue) Then
    CDSFcCab.Params.ParamByName('suc').Value:=-1
  else
    CDSFcCab.Params.ParamByName('suc').Value:=cbSuc.KeyValue;
  CDSFcCab.Open;
  if Not(CDSFcCab.IsEmpty) then
    begin
      CDSFcCab.IndexFieldNames:='FECHAVTA';
      CDSFcCab.First;
    end;
  pnPrincipal.Enabled:=True;
  screen.cursor:=crDefault;

 // CDSFcCab.First;
//  CDSFcCab.DisableControls;

end;

procedure TFormControlImpuestos.btVerificaClick(Sender: TObject);
begin
  inherited;
  CDSFcCab.First;
  if CDSFcCab.RecordCount>1 then
    begin
      while (Not(CDSFcCab.Eof)) and (CDSFcCab.RecNo<CDSFcCab.RecordCount-1) do
        CDSFcCab.Next;
    end;
  CDSFcCab.First;

end;

procedure TFormControlImpuestos.btRevisionClick(Sender: TObject);
var Contador,Tope,i:Integer;
Id_caja_Actual:Integer;
Suma:Extended;
Nombre:String;
begin
  inherited;


  FormControlImpuestos.CDSFcCab.First;
  Tope:=(FormControlImpuestos.CDSFcCab.RecordCount);

  Contador:=0;
  sbEstado.SimpleText:='Procesando Reg:'+IntToStr(Contador)+'/'+IntToStr(Tope);
  Application.ProcessMessages;

  FormControlImpuestos.CDSFcCab.EnableControls;
  while ( Not( FormControlImpuestos.CDSFcCab.Eof)) and (Contador<Tope) do
    begin
      Contador:=Contador+1;
      sbEstado.SimpleText:='Procesando Reg:'+IntToStr(Contador)+'/'+IntToStr(Tope);
      Application.ProcessMessages;
      if ((CDSFcCabTIPOCPBTE.Value='FC') or (CDSFcCabTIPOCPBTE.Value='NC')) Then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2        := TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew   :=  CDSFcCabID_FC.AsString;
          FormCpbte_2.Condicion := ' and tipocpbte='+''''+ CDSFcCabTIPOCPBTE.Value+'''';
          FormCpbte_2.TipoCpbte := CDSFcCabTIPOCPBTE.Value;
          FormCpbte_2.Show;
          FormCpbte_2.Recuperar.Execute;

          if (CDSFcCabTIPOCPBTE.Value='FC') then
            begin
              CDSBuscaAplicaciones.Close;
              CDSBuscaAplicaciones.Params.ParamByName('id').Value  :=CDSFcCabID_FC.Value;
              CDSBuscaAplicaciones.Params.ParamByName('Tipo').Value:=CDSFcCabTIPOCPBTE.Value;
              CDSBuscaAplicaCiones.Open;

              if Not(CDSBuscaAplicaciones.IsEmpty) Then
                begin
                  FormCpbte_2.RecalculoSuma00.Execute;
                  FormCpbte_2.Confirma.Execute;
                  CDSBuscaAplicaciones.First;

                  CDSAplicaciones.Open;
                  Suma:=0;
                  while Not(CDSBuscaAplicaciones.Eof) do
                    begin
                      Suma:=Suma + CDSBuscaAplicacionesIMPORTE.AsFloat;
                      CDSAplicaciones.Insert;
                      For i:=0 to CDSBuscaAplicaciones.FieldCount-1 do
                        begin
                          if CDSAplicaciones.FindField(CDSBuscaAplicaciones.Fields[i].FieldName)<>nil Then
                            begin
                              Nombre:=CDSBuscaAplicaciones.Fields[i].FieldName;
                              CDSAplicaciones.FieldByName(Nombre).Value:=CDSBuscaAplicaciones.FieldByName(Nombre).Value;
                            end;
                        end;
                      CDSAplicaciones.Post;
                      CDSAplicaciones.ApplyUpdates(0);

                      QActualizarMovACta.Close;
                      QActualizarMovACta.ParamByName('id_cpbte').Value  :=CDSBuscaAplicacionesID_CPBTE.Value;
                      QActualizarMovACta.ParamByName('TipoCpbte').Value :=CDSBuscaAplicacionesTIPOCPBTE.Value;
                      QActualizarMovACta.ParamByName('ClaseCpbte').Value:=CDSBuscaAplicacionesCLASECPBTE.Value;
                      QActualizarMovACta.ParamByName('importe').Value   :=CDSBuscaAplicacionesIMPORTE.AsFloat;
                      QActualizarMovACta.ExecSQL;
                      QActualizarMovACta.CLose;

                      CDSBuscaAplicaciones.Next;
                    end;
                end
              else
                begin
                  FormCpbte_2.RecalculoSuma00.Execute;
                  FormCpbte_2.Confirma.Execute;
                end;

              if Suma>0 then
                begin
                  QActualizarMovCC.Close;
                  QActualizarMovCC.ParamByName('id').Value     := CDSBuscaAplicacionesID_MOVCCVTA.Value;
                  QActualizarMovCC.ParamByName('total').AsFloat:= Suma;
                  QActualizarMovCC.ExecSQL;
                  QActualizarMovCC.Close;
                end;
            end
          else

            if CDSFcCabTIPOCPBTE.Value='NC' then
              begin
                CDSAplicacionDeNC.Close;
                CDSAplicacionDeNC.Params.ParamByName('id').Value   :=CDSFcCabID_FC.Value;
                CDSAplicacionDeNC.Params.ParamByName('Tipo').Value :=CDSFcCabTIPOCPBTE.Value;
                CDSAplicacionDeNC.Params.ParamByName('clase').Value:=CDSFcCabCLASECPBTE.Value;
                CDSAplicacionDeNC.Open;

                if Not(CDSAplicacionDeNC.IsEmpty) Then
                  begin
                    QBorraAplicacionNC.Close;
                    QBorraAplicacionNC.ParamByName('id').Value   :=CDSFcCabID_FC.Value;
                    QBorraAplicacionNC.ParamByName('Tipo').Value :=CDSFcCabTIPOCPBTE.Value;
                    QBorraAplicacionNC.ParamByName('clase').Value:=CDSFcCabCLASECPBTE.Value;
                    QBorraAplicacionNC.ExecSQL;
                    QBorraAplicacionNC.Close;

                    FormCpbte_2.RecalculoSuma00.Execute;
                    FormCpbte_2.Confirma.Execute;

                    CDSAplicacionDeNC.First;


                    CDSAplicaciones.Open;
                    Suma:=0;
                    while Not(CDSAplicacionDeNC.Eof) do
                      begin
                        Suma:= CDSAplicacionDeNCIMPORTE.AsFloat;
                        CDSAplicaciones.Insert;
                        For i:=0 to CDSAplicacionDeNC.FieldCount-1 do
                          begin
                            if CDSAplicaciones.FindField(CDSBuscaAplicaciones.Fields[i].FieldName)<>nil Then
                              begin
                                Nombre:=CDSAplicacionDeNC.Fields[i].FieldName;
                                CDSAplicaciones.FieldByName(Nombre).Value:=CDSAplicacionDeNC.FieldByName(Nombre).Value;
                              end;
                          end;
                        CDSAplicaciones.Post;
                        CDSAplicaciones.ApplyUpdates(0);

                        QActualizarMovACta.Close;
                        QActualizarMovACta.ParamByName('id_cpbte').Value  :=CDSAplicacionDeNCID_CPBTE.Value;
                        QActualizarMovACta.ParamByName('TipoCpbte').Value :=CDSAplicacionDeNCTIPOCPBTE.Value;
                        QActualizarMovACta.ParamByName('ClaseCpbte').Value:=CDSAplicacionDeNCCLASECPBTE.Value;
                        QActualizarMovACta.ParamByName('importe').Value   :=CDSAplicacionDeNCIMPORTE.AsFloat;
                        QActualizarMovACta.ExecSQL;
                        QActualizarMovACta.CLose;

                        QActualizarMovCC.Close;
                        QActualizarMovCC.ParamByName('id').Value     := CDSAplicacionDeNCID_MOVCCVTA.Value;
                        QActualizarMovCC.ParamByName('total').AsFloat:= Suma;
                        QActualizarMovCC.ExecSQL;
                        QActualizarMovCC.Close;

                        CDSAplicacionDeNC.Next;
                      end;

                  end
                else
                  begin
                    FormCpbte_2.RecalculoSuma00.Execute;
                    FormCpbte_2.Confirma.Execute;
                  end;
              end;


          FreeAndNil(FormCpbte_2);
          //FormCpbte_2.Close;
        end
      else
        if CDSFcCabTIPOCPBTE.Value='FO' Then
          begin
            IF NOT (Assigned(FormCpbteCtdo_2)) THEN
              FormCpbteCtdo_2        := TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew  := CDSFcCabID_FC.AsString;
            FormCpbteCtdo_2.Condicion:= ' and tipocpbte='+'''' + CDSFcCabTIPOCPBTE.Value+'''';
            FormCpbteCtdo_2.TipoCpbte:= CDSFcCabTIPOCPBTE.Value;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
            QCaja.Close;
            QCaja.ParamByName('id').Value:=FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
            QCaja.Open;

            if QCajaESTADO.Value=1 Then
              begin
                QCajaActualAbierta.Close;
                QCajaActualAbierta.ParamByName('id_cta_caja').Value:=FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
                QCajaActualAbierta.Open;

                Id_caja_Actual := QCajaActualAbiertaID_CAJA.AsInteger;

                QCajaActualAbierta.Close;

                if (Id_caja_Actual>0) then
                  begin
                    QCerrarCaja.Close;
                    QCerrarCaja.ParamByName('id_caja').Value:=Id_caja_Actual;
                    QCerrarCaja.ExecSQL;
                    QCerrarCaja.Close;
                    DMMain_FD.LogFileFD(1,2,'Cierre de Caja id:'+IntToStr(Id_caja_Actual)+' desde Calculo Fcturas','CONTROL');
                  end;

                QReAbrirCaja.Close;
                QReAbrirCaja.ParamByName('id_caja').Value:=FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
                QReAbrirCaja.ExecSQL;
                QReAbrirCaja.Close;
                DMMain_FD.LogFileFD(1,2,'Apertura de Caja id:'+IntToStr(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value)+' desde Calculo Fcturas','CONTROL');

  //              if ch2decimales.Checked then
                  begin
                    formCpbteCtdo_2.RecalculoSuma00.Execute;
                    FormCpbteCtdo_2.Confirma.Execute;
                  end;

//                FormCpbteCtdo_2.ReCalcularTodo.Execute;

                QCerrarCaja.Close;
                QCerrarCaja.ParamByName('id_caja').Value     :=FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
                QCerrarCaja.ExecSQL;
                QCerrarCaja.Close;
                DMMain_FD.LogFileFD(1,2,'Cierre de Caja id:'+IntToStr(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value)+' desde Calculo Fcturas','CONTROL');

                if (Id_caja_Actual>0) then
                  begin
                    QReAbrirCaja.Close;
                    QReAbrirCaja.ParamByName('id_caja').Value:=Id_caja_Actual;
                    QReAbrirCaja.ExecSQL;
                    QReAbrirCaja.Close;
                  end;
              end
            else
              begin
                formCpbteCtdo_2.RecalculoSuma00.Execute;
                FormCpbteCtdo_2.Confirma.Execute;
              end;
            FreeAndNil(FormCpbteCtdo_2);
          end
        else
          if CDSFcCabTIPOCPBTE.Value='TK' Then
            begin
              IF NOT (Assigned(FormTicketVta)) THEN
                FormTicketVta        := TFormTicketVta.Create(Self);
              FormTicketVta.DatoNew  := CDSFcCabID_FC.AsString;
              FormTicketVta.Condicion:= ' and tipocpbte='+'''' + CDSFcCabTIPOCPBTE.Value+'''';
              FormTicketVta.TipoCpbte:= CDSFcCabTIPOCPBTE.Value;
              FormTicketVta.Show;
              FormTicketVta.Recuperar.Execute;

              QCaja.Close;
              QCaja.ParamByName('id').Value:=FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
              QCaja.Open;

              if QCajaESTADO.Value=1 Then
                begin
                  QCajaActualAbierta.Close;
                  QCajaActualAbierta.ParamByName('id_cta_caja').Value:=FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
                  QCajaActualAbierta.Open;

                  Id_caja_Actual := QCajaActualAbiertaID_CAJA.AsInteger;

                  QCajaActualAbierta.Close;

                  if id_caja_actual>0 then
                    begin
                      QCerrarCaja.Close;
                      QCerrarCaja.ParamByName('id_caja').Value:=Id_caja_Actual;
                      QCerrarCaja.ExecSQL;
                      QCerrarCaja.Close;
                      DMMain_FD.LogFileFD(1,2,'Cierre de Caja id:'+IntToStr(Id_caja_Actual)+' desde Calculo Fcturas','CONTROL');
                    end;

                  QReAbrirCaja.Close;
                  QReAbrirCaja.ParamByName('id_caja').Value:=FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
                  QReAbrirCaja.ExecSQL;
                  QReAbrirCaja.Close;
                  DMMain_FD.LogFileFD(1,2,'Apertura de Caja id:'+IntToStr(FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value)+' desde Calculo Fcturas','CONTROL');

                  FormTicketVta.ReCalcular.Execute;
                  FormTicketVta.Confirma.Execute;

                  QCerrarCaja.Close;
                  QCerrarCaja.ParamByName('id_caja').Value     :=FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
                  QCerrarCaja.ExecSQL;
                  QCerrarCaja.Close;
                  DMMain_FD.LogFileFD(1,2,'Cierre de Caja id:'+IntToStr(FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value)+' desde Calculo Fcturas','CONTROL');

                  if id_caja_actual>0 then
                    begin
                      QReAbrirCaja.Close;
                      QReAbrirCaja.ParamByName('id_caja').Value:=Id_caja_Actual;
                      QReAbrirCaja.ExecSQL;
                      QReAbrirCaja.Close;
                    end;
                end
              else
                begin
                  FormTicketVta.ReCalcular.Execute;
                  FormTicketVta.Confirma.Execute;
                end;
              FreeAndNil(FormTicketVta);
            end;
      FormControlImpuestos.CDSFcCab.Next;
    end;

end;

procedure TFormControlImpuestos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSFcCab.Close;
  CDSFcDetalle.Close;
  CDSFcImpuesto.Close;
  Action:=caFree;
end;

procedure TFormControlImpuestos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlImpuestos:=nil;
end;

procedure TFormControlImpuestos.dbgFcCabTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  inherited;
  CDSFcCab.IndexFieldNames:=AFieldName;
  CDSFcCab.Last;
end;

procedure TFormControlImpuestos.CDSFcCabCalcFields(DataSet: TDataSet);
var Impuestos:Real;
begin
  inherited;
  CDSFcCabTotalCalculado.Value:=(CDSFcCabNETOEXEN2.AsFloat+CDSFcCabNETOGRAV2.AsFloat)+CDSFcCabIMPUESTOS.AsFloat;
  //Impuestos:=0;
//  CDSFcImpuesto.First;
//  while not(CDSFcImpuesto.Eof) do
//    begin
//      Impuestos:=Impuestos+CDSFcImpuestoIMPORTE.AsFloat;
//      CDSFcImpuesto.Next;
//    end;
//  CDSFcCabTotalCalculado.Value:=CDSFcCabTotalCalculado.Value+Impuestos;

end;

procedure TFormControlImpuestos.CDSFcCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  TotalDetalle:=0;
  TotalIva    :=0;
  TotalNetoIva:=0;
  TotalDetalleGravado :=0;
  TotalDetalleExento  :=0;
  CDSFcDetalle.Close;
  CDSFcDetalle.Params.ParamByName('id').Value:=CDSFcCabID_FC.Value;
  CDSFcDetalle.Open;

  CDSFcDetalle.DisableControls;
  CDSFcDetalle.First;
  while Not(CDSFcDetalle.Eof) do
    begin
      TotalDetalle        :=TotalDetalle + CDSFcDetalleTOTAL.AsFloat;
      TotalDetalleGravado :=TotalDetalleGravado + (CDSFcDetalleUNITARIO_GRAVADO.Value * CDSFcDetalleCANTIDAD.AsFloat);
      TotalDetalleExento  :=TotalDetalleExento  + (CDSFcDetalleUNITARIO_EXENTO.AsFloat * CDSFcDetalleCANTIDAD.AsFloat);
      CDSFcDetalle.Next;
    end;
  CDSFcDetalle.EnableControls;

  CDSFcImpuesto.Close;
  CDSFcImpuesto.Params.ParamByName('id').Value:=CDSFcCabID_FC.Value;
  CDSFcImpuesto.Open;

  CDSFcImpuesto.DisableControls;
  while Not(CDSFcImpuesto.Eof) do
    begin
      TotalIva     :=TotalIva+CDSFcImpuestoIMPORTE.AsFloat;
      TotalNetoIva :=TotalNetoIva+CDSFcImpuestoNETO.AsFloat;
      CDSFcImpuesto.Next;
    end;
  CDSFcImpuesto.EnableControls;

  edTotaDetalle.Text :=FloatToStr(TotalDetalle);
  edTotalGravado.Text:=FloatToStr(TotalDetalleGravado);
  edTotalExento.Text :=FloatToStr(TotalDetalleExento);

  //  edImpuesto.Text   :=FloatToStr(TotalIva);
end;

procedure TFormControlImpuestos.FormCreate(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
end;

procedure TFormControlImpuestos.dbgCabecerasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgCabeceras.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlImpuestos.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormControlImpuestos.CDSFcImpuestoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSFcImpuestoImpuestoCalculado.Value := CDSFcImpuestoNETO.AsFloat * CDSFcImpuestoTASA.AsFloat * 0.01;
  
end;

procedure TFormControlImpuestos.chbClientesClick(Sender: TObject);
begin
  inherited;
  CDSFcCab.Filtered:=False;
  CDSFcCab.Filter:='CODIGO = '+''''+ceCliente.Text+'''';
  CDSFcCab.Filtered:=chbClientes.Checked;
end;

procedure TFormControlImpuestos.chbDifClick(Sender: TObject);
begin
  inherited;
  CDSFcCab.Filtered:=False;
  CDSFcCab.Filter:='DiferenciaNeto >= -0.01 and DiferenciaNeto <= 0.01 ';
  CDSFcCab.Filtered:=chbDif.Checked;
end;

procedure TFormControlImpuestos.dbgFcDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (gdFocused in State) then
    begin
       dbgFcDetalle.canvas.brush.color := clNavy;
    end
  else
    begin
      if (CDSFcDetalleMODO_GRAVAMEN.Value='G') and (CDSFcDetalleIVA_TASA.AsFloat<=0) Then
        dbgFcDetalle.Canvas.brush.Color := clRed
      else
        if (CDSFcDetalleMODO_GRAVAMEN.Value='E') and (CDSFcDetalleUNITARIO_GRAVADO.Value>0) Then
          dbgFcDetalle.Canvas.brush.Color := clRed
        else
          dbgFcDetalle.Canvas.Brush.Color := clWindow;
    end;
  dbgFcDetalle.DefaultDrawColumnCell(Rect, datacol,column, State);

end;

procedure TFormControlImpuestos.CDSFcImpuestoAfterOpen(DataSet: TDataSet);
var Impuestos:Real;
begin
  inherited;
  Impuestos:=0;
  if Not(CDSFcImpuesto.IsEmpty) then
    begin
      CDSFcImpuesto.First;
      while not(CDSFcImpuesto.Eof) do
        begin
          Impuestos:=Impuestos+CDSFcImpuestoIMPORTE.AsFloat;
          CDSFcImpuesto.Next;
        end;
      CDSFcCab.Edit;
      CDSFcCabTotalCalculado.Value:=CDSFcCabTotalCalculado.Value+Impuestos;
      CDSFcCab.Post;
    end;
  edImpuestos.Value:=Impuestos;
end;

procedure TFormControlImpuestos.CDSFcImpuestoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSFcCab.Edit;
  CDSFcCabDiferenciaNeto.Value:= Moneda3D(' ','0.00',CDSFcCabNETOGRAV2.AsFloat) - Moneda3D('+','0.00',TotalNetoIva);
  CDSFcCabDif_enc_det.Value   := CDSFcCabTotalCalculado.Value - TotalDetalle;
  CDSFcCab.Post;
//  edDifNeto.Value:=wwCDSFcCabDiferenciaNeto.Value;
end;

procedure TFormControlImpuestos.dbgDifDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (CDSFcCabDiferenciaNeto.Value<>0) Then
    dbgFcDetalle.Canvas.brush.Color := clRed
  else
    dbgFcDetalle.Canvas.Brush.Color := clWindow;
  dbgFcDetalle.DefaultDrawColumnCell(Rect, datacol,column, State);

end;

procedure TFormControlImpuestos.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  CDSSucursal.Open;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;

  CDSTipoComp.Close;
  CDSTipoComp.Params.ParamByName('sucursal').Value:=cbSuc.KeyValue;
  CDSTipoComp.Params.ParamByName('Tipo').Value    :=cbCpbte.Text;
  CDSTipoComp.Open;

end;

procedure TFormControlImpuestos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if ((CDSFcImpuesto.state<>dsBrowse) or (CDSFcCab.state<>dsBrowse)) Then
    begin
      if (CDSFcCab.state<>dsBrowse) Then
        begin
          CDSFcCab.Post;
          CDSFcCab.ApplyUpdates(-1);
        end;
      if (CDSFcImpuesto.state<>dsBrowse) Then
        begin
          CDSFCImpuesto.post;
          CDSFcImpuesto.ApplyUpdates(-1);
        end;
    end;

end;

procedure TFormControlImpuestos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormControlImpuestos.cbCpbteChange(Sender: TObject);
begin
  inherited;
  CDSTipoComp.Close;
  CDSTipoComp.Params.ParamByName('sucursal').Value:=cbSuc.KeyValue;
  CDSTipoComp.Params.ParamByName('Tipo').Value    :=cbCpbte.Text;
  CDSTipoComp.Open;
  CDSFcCab.Filtered:=False;
  if Not(VarIsNull(JvDBLookupCombo1.KeyValue)) and (cbCpbte.Text<>'**')  then
    begin
      CDSFcCab.Filter  :='TIPOCPBTE = '+''''+cbCpbte.Text+''''+' and CLASECPBTE = '+''''+JvDBLookupCombo1.KeyValue+'''';
      if (cbCpbte.ItemIndex>0)  then
          CDSFcCab.Filtered:=True;
    end;
end;

procedure TFormControlImpuestos.cbSucClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlImpuestos.dbgImpuestoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
begin
  inherited;
  if CDSFcImpuestoNETO.AsFloat<>TotalDetalleGravado Then
    if (gdSelected in state) Then
      begin
        dbgImpuesto.Canvas.Font.Color:=clWhite;
        dbgImpuesto.Canvas.Brush.Color:=clNavy;
      end
    else
      begin
        dbgImpuesto.canvas.Font.color := clRed;
        dbgImpuesto.Canvas.Brush.Color:= clWindow;

     end;
  dbgImpuesto.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormControlImpuestos.ActualizaTotalExecute(Sender: TObject);
begin
  inherited;
  QActulizacionTotal.Close;
  QActulizacionTotal.ParamByName('Total').AsFloat:=CDSFcCabTotalCalculado.AsFloat;
  QActulizacionTotal.ParamByName('id').AsInteger:=CDSFcCabID_FC.AsInteger;
  QActulizacionTotal.ExecSQL;
  QActulizacionTotal.Close;

end;

procedure TFormControlImpuestos.BuscarClienteExecute(Sender: TObject);
var aux:Real;
BEGIN
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      if QClientes.IsEmpty then
        begin
          QClientes.Close;
          ceCliente.Text := '';
        end
      else
        begin
          ceCliente.Text := QClientesNOMBRE.Value;
        end;

     ceCliente.SetFocus;
     ceCliente.SelectAll;
    END;

end;

procedure TFormControlImpuestos.BuscarCpbteExecute(Sender: TObject);
begin
  inherited;
  if (CDSFcCabTIPOCPBTE.Value='FC') or (CDSFcCabTIPOCPBTE.Value='NC') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2        := TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=  CDSFcCabID_FC.AsString;
      FormCpbte_2.Condicion:= ' and tipocpbte='+''''+ CDSFcCabTIPOCPBTE.Value+'''';
      FormCpbte_2.TipoCpbte:= CDSFcCabTIPOCPBTE.Value;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if CDSFcCabTIPOCPBTE.Value='FO' Then
      begin
        IF NOT (Assigned(FormCpbteCtdo_2)) THEN
          FormCpbteCtdo_2        := TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  := CDSFcCabID_FC.AsString;
        FormCpbteCtdo_2.Condicion:= ' and tipocpbte='+'''' + CDSFcCabTIPOCPBTE.Value+'''';
        FormCpbteCtdo_2.TipoCpbte:= CDSFcCabTIPOCPBTE.Value;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if CDSFcCabTIPOCPBTE.Value='TK' Then
        begin
          IF NOT (Assigned(FormTicketVta)) THEN
            FormTicketVta        := TFormTicketVta.Create(Self);
          FormTicketVta.DatoNew  := CDSFcCabID_FC.AsString;
          FormTicketVta.Condicion:= ' and tipocpbte='+'''' + CDSFcCabTIPOCPBTE.Value+'''';
          FormTicketVta.TipoCpbte:= CDSFcCabTIPOCPBTE.Value;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end;


end;

end.