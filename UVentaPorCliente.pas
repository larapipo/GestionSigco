unit UVentaPorCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider,   StdCtrls, Mask, FMTBcd,
  JvToolEdit, DataExport, DataToXLS, frxClass, frxDBSet, JvBaseEdits, JvExMask,
  JvExControls, JvDBLookup, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls,
  ActnList, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls,Librerias,
  JvAppStorage, JvAppIniStorage, System.Actions, JvLabel, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, CompBuscador,VirtualUI_SDK,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses, AdvSmoothButton;

type
  TFormVentaPorCliente = class(TFormABMBase)
    edNombreCliente: TEdit;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    BuscaCliente: TAction;
    DSPVtaCliente: TDataSetProvider;
    CDSVtaCliente: TClientDataSet;
    btExportar: TBitBtn;
    DSTipoCpbte: TDataSource;
    frVtaPorCLiente: TfrxReport;
    frDBVtaCliente: TfrxDBDataset;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    UpDown1: TUpDown;
    VerComprobante: TAction;
    dbgVentas: TJvDBGrid;
    DSVenta: TDataSource;
    XLSFact: TDataToXLS;
    SaveDialog: TSaveDialog;
    dbcCpbte: TJvDBLookupCombo;
    ceCliente: TJvComboEdit;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    ceSuma: TJvCalcEdit;
    QVtaCliente: TFDQuery;
    CDSVtaClienteID_FC: TIntegerField;
    CDSVtaClienteFECHAVTA: TSQLTimeStampField;
    CDSVtaClienteTIPOCPBTE: TStringField;
    CDSVtaClienteCLASECPBTE: TStringField;
    CDSVtaClienteLETRAFAC: TStringField;
    CDSVtaClienteSUCFAC: TStringField;
    CDSVtaClienteNUMEROFAC: TStringField;
    CDSVtaClienteTOTAL: TFloatField;
    CDSVtaClienteMUESTRACOMPROBANTE: TStringField;
    CDSVtaClienteTOTAL_RECALCULADO: TFloatField;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    QTipoCpbt: TFDQuery;
    CDSTipoCpbte: TClientDataSet;
    DSPTipoCpbte: TDataSetProvider;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSTipoCpbteID_TIPO: TIntegerField;
    CDSTipoCpbteDETALLE: TStringField;
    CDSTipoCpbteSIGLA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSVtaClienteCalcFields(DataSet: TDataSet);
    procedure dbgVentasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Sumar;
  end;

var
  FormVentaPorCliente: TFormVentaPorCliente;

implementation

uses  UFactura_2, UFacturaCtdo_2,  UBuscadorClientes, UDMain_FD, UTiketVta;

{$R *.DFM}

procedure TFormVentaPorCliente.Sumar;
VAR Aux:Real;
begin
  Aux:=0;
  CDSVtaCliente.First;
  CDSVtaCliente.DisableControls;
  while not(CDSVtaCliente.Eof) Do
    begin
      Aux:=Aux+CDSVtaClienteTOTAL_RECALCULADO.Value;
      CDSVtaCliente.Next;
    end;
  CDSVtaCliente.First;
  CDSVtaCliente.EnableControls;
  ceSuma.Text:=FormatFloat(',0.00',aUX);
end;

procedure TFormVentaPorCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormVentaPorCliente.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormVentaPorCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVentaPorCliente:=nil;
end;

procedure TFormVentaPorCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (not (ActiveControl is TJvComboEdit)) then
    inherited;

end;

procedure TFormVentaPorCliente.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      BUSCAR.Execute;
    END;
end;

procedure TFormVentaPorCliente.dbgVentasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgVentas.DataSource.DataSet as TClientDataSet do
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

procedure TFormVentaPorCliente.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
 IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
    END;

end;

procedure TFormVentaPorCliente.BuscarExecute(Sender: TObject);
begin
 // inherited;
  if (edNombreCliente.Text<>'') and (not((copy(Desde.text,1,1)=' ') or (copy(hasta.text,1,1)=' '))) then
    begin
       CDSVtaCliente.IndexName:='';
       CDSVtaCliente.IndexDefs.Clear;
       CDSVtaCliente.Close;
       ceSuma.Value:=0;
       if dbcCpbte.Value='X' Then//Todos los comprobantes
         begin
           CDSVtaCliente.CommandText:='';
           CDSVtaCliente.Params.Clear;
           CDSVtaCliente.Params.CreateParam(ftDate, 'desde', ptInput);
           CDSVtaCliente.Params.ParamByName('desde').Value:=desde.date;
           CDSVtaCliente.Params.CreateParam(ftDate, 'hasta', ptInput);
           CDSVtaCliente.Params.ParamByName('hasta').Value:=hasta.date;

           CDSVtaCliente.CommandText:='select f.id_fc,f.fechavta,f.tipocpbte,f.clasecpbte,f.letrafac,f.sucfac,f.numerofac,f.total,f.sucursal,f.letrafac,c.denominacion as MuestraComprobante from fcvtacab f '+
                                      'left join comprobantes c on c.tipo_comprob=f.tipocpbte and c.clase_comprob=f.clasecpbte and c.compra_venta=''V'' and c.sucursal=f.sucursal and c.letra=f.letrafac '+
                                      'where f.codigo='+''''+ceCliente.Text+''''+' and f.anulado<>''S'' and f.fechavta>=:desde and f.Fechavta<=:hasta '+
                                      'order by f.tipocpbte,f.fechavta'
         end
       else
         begin
           CDSVtaCliente.CommandText:=''; //el seleccionado
           CDSVtaCliente.Params.Clear;
           CDSVtaCliente.Params.CreateParam(ftDate, 'desde', ptInput);
           CDSVtaCliente.Params.ParamByName('desde').Value:=desde.date;
           CDSVtaCliente.Params.CreateParam(ftDate, 'hasta', ptInput);
           CDSVtaCliente.Params.ParamByName('hasta').Value:=hasta.date;

           CDSVtaCliente.CommandText:='select f.id_fc,f.fechavta,f.tipocpbte,f.clasecpbte,f.letrafac,f.sucfac,f.numerofac,f.total,f.sucursal,f.letrafac,c.denominacion as MuestraComprobante from fcvtacab f '+
                                      'left join comprobantes c on c.tipo_comprob=f.tipocpbte and c.clase_comprob=f.clasecpbte and c.compra_venta=''V'' and c.sucursal=f.sucursal and c.letra=f.letrafac '+
                                      'where f.codigo='+''''+ceCliente.Text+''''+' and f.anulado<>''S'' and f.tipocpbte='+''''+dbcCpbte.Value+''''+' and f.fechavta>=:desde and f.Fechavta<=:hasta '+
                                      'order by f.tipocpbte,f.fechavta'

         end;

       CDSVtaCliente.Open;
       ceSuma.Value:=0;
       Sumar;
    end;

end;

procedure TFormVentaPorCliente.CDSVtaClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSVtaClienteTIPOCPBTE.Value='NC' then
    CDSVtaClienteTOTAL_RECALCULADO.Value:=CDSVtaClienteTOTAL.AsFloat*-1
  else
    CDSVtaClienteTOTAL_RECALCULADO.Value:=CDSVtaClienteTOTAL.AsFloat;

end;

procedure TFormVentaPorCliente.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  CDSTipoCpbte.OPen;
end;

procedure TFormVentaPorCliente.btExportarClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSVtaCliente.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName  :='VtasClientes';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              XLSFact.SaveToFile(SaveDialog.FileName)
            ELSE
              XLSFact.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormVentaPorCliente.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormVentaPorCliente.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frVtaPorCLiente.LoadFromFile(DMMain_FD.PathReportesLst+'\VtaPorCliente.fr3');
  frVtaPorCLiente.PrintOptions.Printer:=PrNomListados;
  frVtaPorCLiente.SelectPrinter;

  frVtaPorCLiente.Variables['Cliente']:=''''+edNombreCliente.Text+'''';
  frVtaPorCLiente.Variables['Desde']:=''''+Desde.Text+'''';
  frVtaPorCLiente.Variables['Hasta']:=''''+hasta.Text+'''';

  frVtaPorCLiente.ShowReport;
 
end;

procedure TFormVentaPorCliente.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
   frVtaPorCLiente.DesignReport;
end;

procedure TFormVentaPorCliente.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  BUSCAR.Execute;
  //  Desde.SetFocus;

end;

procedure TFormVentaPorCliente.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if (CDSVtaClienteTIPOCPBTE.Value='FC') or
     (CDSVtaClienteTIPOCPBTE.Value='NC') OR
     (CDSVtaClienteTIPOCPBTE.Value='ND') Then
    begin
      if Not(Assigned(FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.TipoCpbte:=CDSVtaClienteTIPOCPBTE.Value;
      FormCpbte_2.DatoNew  :=CDSVtaClienteID_FC.AsString;
      FormCpbte_2.Recuperar.Execute;
    end
  else
  if CDSVtaClienteTIPOCPBTE.Value='FO' Then
    begin
      if Not(Assigned(FormCpbteCtdo_2)) Then
        FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
      FormCpbteCtdo_2.TipoCpbte:=CDSVtaClienteTIPOCPBTE.Value;
      FormCpbteCtdo_2.DatoNew:=CDSVtaClienteID_FC.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
    end
  else
  if CDSVtaClienteTIPOCPBTE.Value='TK' Then
    begin
      if Not(Assigned(FormTicketVta)) Then
        FormTicketVta:=TFormTicketVta.Create(Application);
      FormTicketVta.TipoCpbte :=CDSVtaClienteTIPOCPBTE.Value;
      FormTicketVta.DatoNew   :=CDSVtaClienteID_FC.AsString;
      FormTicketVta.Recuperar.Execute;
    end;

end;

end.