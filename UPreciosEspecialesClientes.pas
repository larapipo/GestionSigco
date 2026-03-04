unit UPreciosEspecialesClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, Provider, DBClient, IBGenerator,
  DBCtrls, StdCtrls, Mask, Math,VirtualUI_SDK,StrUtils,
  Db, ActnList, Buttons, ToolWin,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, JvExMask, JvToolEdit, SqlExpr, DBGrids, JvExDBGrids, JvDBGrid,
  JvAppStorage, JvAppIniStorage, System.Actions,
  JvComponentBase, Vcl.ComCtrls, Vcl.ExtCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataExport, DataToXLS,
  System.ImageList;

type
  TFormPreciosEspecialesClientes = class(TFormABMBase)
    dbeNombre: TDBEdit;
    IBGPrecio_Cab: TIBGenerator;
    IBGPrecio_Det: TIBGenerator;
    CDSPrecioCab: TClientDataSet;
    CDSPrecioDet: TClientDataSet;
    DSPPrecioCab: TDataSetProvider;
    DSPPrecioDet: TDataSetProvider;
    BuscaClientes: TAction;
    CDSPrecioCabID: TIntegerField;
    CDSPrecioCabCODIGOCLIENTE: TStringField;
    CDSPrecioDetID: TIntegerField;
    CDSPrecioDetID_CABECERA: TIntegerField;
    CDSPrecioDetCODIGOARTICULO: TStringField;
    CDSPrecioDetDESCRIPCION: TStringField;
    CDSPrecioDetCODIGOCLIENTE: TStringField;
    DSPrecioDet: TDataSource;
    CDSPrecioCabNOMBRE: TStringField;
    DSPClientes: TDataSetProvider;
    BuscarArticulo: TAction;
    DSPStock: TDataSetProvider;
    RxCCodigo: TJvDBComboEdit;
    RxDBComboEdit1: TJvDBComboEdit;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockCOMANDA: TStringField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    QPrecioCab: TFDQuery;
    QPrecioCabID: TIntegerField;
    QPrecioCabCODIGOCLIENTE: TStringField;
    QPrecioCabNOMBRE: TStringField;
    QPrecioDet: TFDQuery;
    QPrecioDetID: TIntegerField;
    QPrecioDetID_CABECERA: TIntegerField;
    QPrecioDetCODIGOARTICULO: TStringField;
    QPrecioDetDESCRIPCION: TStringField;
    QPrecioDetPRECIOVENTA: TFloatField;
    QPrecioDetPRECIOPACTADO: TFloatField;
    QPrecioDetFECHA: TSQLTimeStampField;
    QPrecioDetCODIGOCLIENTE: TStringField;
    CDSPrecioDetPRECIOVENTA: TFloatField;
    CDSPrecioDetPRECIOPACTADO: TFloatField;
    CDSPrecioDetFECHA: TSQLTimeStampField;
    RxLabel2: TJvLabel;
    Label1: TLabel;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    DBGrillaDetalle: TJvDBGrid;
    QPrecioCabMUESTRADIRECCION: TStringField;
    CDSPrecioCabMUESTRADIRECCION: TStringField;
    edDireccion: TDBEdit;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    QPrecioDetDESCUENTO: TFloatField;
    CDSPrecioDetDESCUENTO: TFloatField;
    Label2: TLabel;
    DataToXLS1: TDataToXLS;
    ToolButton1: TToolButton;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    QPrecioDetTASA: TFloatField;
    CDSPrecioDetTASA: TFloatField;
    QPrecioCabACTIVO: TStringField;
    CDSPrecioCabACTIVO: TStringField;
    dbcActiva: TDBCheckBox;
    QDepositoStk: TFDQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkSUCURSAL: TIntegerField;
    QDepositoStkINICIAL: TFloatField;
    QDepositoStkMINIMO: TFloatField;
    QDepositoStkMEDIO: TFloatField;
    QDepositoStkFISICO: TFloatField;
    QDepositoStkRECARGO: TFloatField;
    QDepositoStkFUAPRECIOS: TSQLTimeStampField;
    QDepositoStkSECTOR: TStringField;
    QDepositoStkUBICACION: TStringField;
    QDepositoStkFULTAJUSTE: TSQLTimeStampField;
    QDepositoStkUNIDADES: TFloatField;
    QDepositoStkAVISO_MINIMOSTOCK: TStringField;
    QBuscaPrecios: TFDQuery;
    QBuscaPreciosID: TIntegerField;
    QBuscaPreciosCODIGOCLIENTE: TStringField;
    QBuscaPreciosNOMBRE: TStringField;
    QBuscaPreciosACTIVO: TStringField;
    QControlPrecios: TFDQuery;
    QControlPreciosID: TIntegerField;
    CDSPrecioDetPRECIO_NETO: TFloatField;
    procedure BuscaClientesExecute(Sender: TObject);
    procedure CDSPrecioCabCODIGOCLIENTESetText(Sender: TField;
      const Text: String);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSPrecioDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure CDSPrecioCabNewRecord(DataSet: TDataSet);
    procedure CDSPrecioDetNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure RxCCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RxDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ModificarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSPrecioDetDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSPrecioDetPRECIOPACTADOSetText(Sender: TField;
      const Text: string);
    procedure DSBaseStateChange(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure CDSPrecioDetCalcFields(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    Function VerificaCargado(Dato:String):Boolean;
  end;

var
  FormPreciosEspecialesClientes: TFormPreciosEspecialesClientes;

implementation

uses UDMain_FD, UBuscadorArticulos, UBuscadorClientes, DMBuscadoresForm,
  UMuestraListaCodBarra;

{$R *.DFM}

FUNCTION TFormPreciosEspecialesClientes.AsignarCliente(Dato: STRING): Boolean;
BEGIN
   CDSClientes.Close;
   CDSClientes.Params.ParamByName('Codigo').Value:=Dato;
   CDSClientes.Open;
   IF NOT (CDSClientes.Eof) THEN
      BEGIN
        CDSPrecioCabNOMBRE.AsString          := CDSClientesNombre.AsString;
        CDSPrecioCabMUESTRADIRECCION.AsString:= CDSClientesDIRECCION_COMERCIAL.Value;
        result:=True;
      END
    ELSE
      BEGIN
        CDSPrecioCabNOMBRE.AsString          := '';
        CDSPrecioCabMUESTRADIRECCION.AsString:= '';

        Result:=False;
     END;
END;


procedure TFormPreciosEspecialesClientes.btExcelClick(Sender: TObject);
begin
  inherited;
   if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSPrecioDet.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:=dbeNombre.Text;
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLS1.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

FUNCTION TFormPreciosEspecialesClientes.ASignarArticulo(Dato: STRING): Boolean;
VAR
  Recargo: Variant;
BEGIN
  IF CDSPrecioDet.State = dsBrowse THEN
    CDSPrecioDet.Edit;
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value:=Dato;
  CDSStock.Open;
  IF NOT (CDSStock.IsEmpty) THEN
    BEGIN
      QDepositoStk.Close;
      QDepositoStk.ParamByName('Codigo_Deposito').Value:= DepositoPorDefecto;
      QDepositoStk.ParamByName('Codigo').Value         := Dato;
      QDepositoStk.Open;
      Recargo := QDepositoStkRecargo.AsFloat;
      CDSPrecioDetPRECIOVENTA.AsFloat   := CDSStockFIJACION_PRECIO_FINAL.AsFloat;
      CDSPrecioDetPRECIOPACTADO.AsFloat := 0;//CDSPrecioDetPRECIOVENTA.AsFloat;
      CDSPrecioDetDESCRIPCION.Value     := CDSStockDETALLE_STK.Value;
      Result:=True;
     END
   ELSE
     begin
      CDSPrecioDetPRECIOVENTA.AsFloat   := 0;
      CDSPrecioDetPRECIOPACTADO.AsFloat := 0;
      CDSPrecioDetDESCRIPCION.Value     := '';
      Result:=False;
     end;
END;

FUNCTION TFormPreciosEspecialesClientes.VerificaCargado(Dato: STRING): Boolean;
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSPrecioDet,True);
  Result:= CDSClone.Locate('CODIGOARTICULO',Dato,[]);
  FreeAndNil(CDSClone);
//
end;



procedure TFormPreciosEspecialesClientes.BuscaClientesExecute(
  Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
      CDSPrecioCabCODIGOCLIENTESetText(CDSPrecioCabCODIGOCLIENTE, FormBuscadorClientes.Codigo);

end;

procedure TFormPreciosEspecialesClientes.CDSPrecioCabCODIGOCLIENTESetText(
  Sender: TField; const Text: String);
VAR Aux:String;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      QControlPrecios.Close;
      QControlPrecios.ParamByName('codigo').Value:=Aux;
      QControlPrecios.Open;
      if QControlPrecios.IsEmpty Then
        IF NOT (AsignarCliente(Aux)) THEN
          BEGIN
            ShowMessage('Codigo Cliente No válido');
            Sender.AsString:= '';
            RxCCodigo.SetFocus;
          END
        else
          DBGrillaDetalle.SetFocus
      else
        begin
          ShowMessage('Codigo ya ingresado');
            Sender.AsString:= '';
            RxCCodigo.SetFocus;
        end;
    end;
end;

procedure TFormPreciosEspecialesClientes.BuscarArticuloExecute(
  Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.Param3:=3;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
       if VerificaCargado(FormBuscadorArticulos.Codigo)=False then
         begin
           //    DatosVentas.wwCDSVentaDetCodigoArticuloSetText(DatosVentas.wwCDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);
           IF CDSPrecioDet.State = dsBrowse THEN
             CDSPrecioDet.Edit;
           CDSPrecioDetCODIGOARTICULOSetText(CDSPrecioDetCODIGOARTICULO, FormBuscadorArticulos.Codigo);
         end
       else
         ShowMessage('Codigo cargado...');

     END;
//  CDSBuscaStock.Close;




//  CDSBuscaStock.Close;
//  CDSBuscaStock.Params.ParamByName('Clase').Value := 3;
//  CDSBuscaStock.Params.ParamByName('Clase2').Value := 1;
//  CDSBuscaStock.Open;
//  IF wwLookupStock.Execute THEN
//    if wwLookupStock.LookupTable.FieldByName('Codigo_Stk').AsString<>'' Then
//      BEGIN
//        IF CDSPrecioDet.State = dsBrowse THEN
//          CDSPrecioDet.Edit;
//        CDSPrecioDetCODIGOARTICULOSetText(CDSPrecioDetCODIGOARTICULO, wwLookupStock.LookupTable.FieldByName('Codigo_Stk').AsString);
//      END;
//  CDSBuscaStock.Close;

end;

procedure TFormPreciosEspecialesClientes.CDSPrecioDetCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if CDSPrecioDetTASA.AsFloat>0 then
    CDSPrecioDetPRECIO_NETO.AsFloat:=CDSPrecioDetPRECIOPACTADO.AsFloat/(1+CDSPrecioDetTASA.AsFloat*0.01)
  else
    CDSPrecioDetPRECIO_NETO.AsFloat:=CDSPrecioDetPRECIOPACTADO.AsFloat;

end;

procedure TFormPreciosEspecialesClientes.CDSPrecioDetCODIGOARTICULOSetText(
  Sender: TField; const Text: String);
VAR
  S: STRING;
  Enter:Char;
BEGIN
 Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSPrecioDet,False);
      S:= Sender.AsString;
      IF AsignarArticulo(s) = False THEN
        BEGIN
         // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1      := 1;
          FormBuscadorArticulos.Param2      := 3;
          FormBuscadorArticulos.Esquema     := -1;
          FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
          FormBuscadorArticulos.Dato        := S;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSPrecioDet.State = dsBrowse THEN
                CDSPrecioDet.Edit;
              CDSPrecioDetCODIGOARTICULOSetText(CDSPrecioDetCODIGOARTICULO,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        FormPreciosEspecialesClientes.DBGrillaDetalle.OnKeyPress(FormPreciosEspecialesClientes.DBGrillaDetalle,Enter);
  END;

END;

procedure TFormPreciosEspecialesClientes.CDSPrecioDetDESCUENTOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Not(IsZero(Sender.AsFloat)) then
    CDSPrecioDetPRECIOPACTADO.AsFloat:=0;
end;

procedure TFormPreciosEspecialesClientes.FormCreate(Sender: TObject);
VAR Mascara:String;
begin
  inherited;
  SinBDE:=2;
  AutoSize :=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  AddClientDataSet(CDSPrecioCab,DSPPrecioCab);
  AddClientDataSet(CDSPrecioDet,DSPPrecioDet);
  CDSPrecioCab.Open;
  CDSPrecioDet.Open;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='STOCK';
  DMMain_FD.QOpciones.Open;
  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSPrecioDetPRECIOVENTA).EditFormat   :=Mascara;
  TFloatField(CDSPrecioDetPRECIOPACTADO).EditFormat :=Mascara;

  TFloatField(CDSPrecioDetPRECIOVENTA).DisplayFormat  :=Mascara;
  TFloatField(CDSPrecioDetPRECIOPACTADO).DisplayFormat:=Mascara;
  Tabla:='PrecioEspecialCab';
  Campo:='id';

end;

procedure TFormPreciosEspecialesClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSPrecioCab.Cancel;
  if CDSPrecioDet.State<>dsBrowse then CDSPrecioDet.Cancel;

  Action:=caFree;
end;

procedure TFormPreciosEspecialesClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPreciosEspecialesClientes:=nil;
end;

procedure TFormPreciosEspecialesClientes.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 4) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex +1
      else
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF DBGrillaDetalle.SelectedField = CDSPrecioDetCODIGOARTICULO THEN
          BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel;


end;

procedure TFormPreciosEspecialesClientes.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  if FormPreciosEspecialesClientes<>nil then
    begin
      pnPrincipal.Enabled      := True;
      DBGrillaDetalle.ReadOnly := DSBase.State = dsBrowse;
      RxCCodigo.Enabled        := DSBase.State <> dsBrowse;
      btExcel.Enabled          := (DSBase.State = dsBrowse) and (Not(dsBase.DataSet.IsEmpty));
    end;
end;

procedure TFormPreciosEspecialesClientes.CDSPrecioCabNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSPrecioCabID.Value     := IBGPrecio_Cab.IncrementFD(1);
  CDSPrecioCabACTIVO.Value := 'S';
end;

procedure TFormPreciosEspecialesClientes.CDSPrecioDetNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSPrecioDetID.Value:=IBGPrecio_Det.IncrementFD(1);
  CDSPrecioDetID_CABECERA.Value     := CDSPrecioCabID.Value;
  CDSPrecioDetFECHA.AsDateTime      := Date;
  CDSPrecioDetCODIGOCLIENTE.Value   := CDSPrecioCabCODIGOCLIENTE.Value;
  CDSPrecioDetDESCUENTO.AsFloat     := 0;
  CDSPrecioDetPRECIOPACTADO.AsFloat := 0;
end;

procedure TFormPreciosEspecialesClientes.CDSPrecioDetPRECIOPACTADOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Not(IsZero(Sender.AsFloat)) then
    CDSPrecioDetDESCUENTO.AsFloat:=0;
end;

procedure TFormPreciosEspecialesClientes.AgregarExecute(Sender: TObject);
begin
  CDSPrecioCab.Close;
  CDSPrecioCab.Params.ParamByName('id').Clear;
  CDSPrecioCab.Open;
  CDSPrecioDet.Close;
  CDSPrecioDet.Params.ParamByName('id').Clear;
  CDSPrecioDet.Open;

  inherited;
  RxCCodigo.SetFocus;
end;

procedure TFormPreciosEspecialesClientes.DBGrillaDetalleColEnter(
  Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex in [1,2]  THEN
    DBGrillaDetalle.SelectedIndex := 3;

end;

procedure TFormPreciosEspecialesClientes.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // inherited;

end;

procedure TFormPreciosEspecialesClientes.FormResize(Sender: TObject);
begin
  inherited;
  if FormPreciosEspecialesClientes<>nil then
    if FormPreciosEspecialesClientes.Width<>805 then
      FormPreciosEspecialesClientes.Width:=805;
end;

procedure TFormPreciosEspecialesClientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscaPrecios.Close;
  QBuscaPrecios.open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    BEGIN
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    END;
  QBuscaPrecios.Close;
end;


procedure TFormPreciosEspecialesClientes.RxCCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    begin
      Key:=#0;
      //if CDSPrecioCabCODIGOCLIENTE.AsString<>'' Then
      CDSPrecioCabCODIGOCLIENTESetText(CDSPrecioCabCODIGOCLIENTE,RxCCodigo.Text);
    end;
end;

procedure TFormPreciosEspecialesClientes.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPrecioCab.Close;
  CDSPrecioDet.Close;
  CDSPrecioCab.Params.ParamByName('id').Value:=DatoNew;
  CDSPrecioCab.Open;

  CDSPrecioDet.Params.ParamByName('id').Value:=CDSPrecioCabID.Value;
  CDSPrecioDet.Open;
  DatoNew:=''+DatoNew+'';
end;

procedure TFormPreciosEspecialesClientes.CancelarExecute(Sender: TObject);
begin
  inherited;
  CDSPrecioCab.Close;
  CDSPrecioCab.Params.ParamByName('id').Clear;
  CDSPrecioCab.Open;

  CDSPrecioDet.Close;
  CDSPrecioDet.Params.ParamByName('id').Clear;
  CDSPrecioDet.Open;

end;

procedure TFormPreciosEspecialesClientes.ConfirmaExecute(Sender: TObject);
begin
  CDSPrecioDet.First;
  if CDSPrecioDet.RecordCount>0 then
    begin
      while CDSPrecioDet.Eof do
        begin
          CDSPrecioDet.Edit;
          CDSPrecioDetCODIGOCLIENTE.Value:=CDSPrecioCabCODIGOCLIENTE.AsString;
          CDSPrecioDet.Next;
        end;
    end
  else
     begin
       CDSPrecioDet.Edit;
       CDSPrecioDetCODIGOCLIENTE.Value:=CDSPrecioCabCODIGOCLIENTE.AsString;
       CDSPrecioDet.Post;
     end;


  DatoNew:=CDSPrecioCabID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormPreciosEspecialesClientes.RxDBComboEdit1KeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#13 Then
    begin
      Key:=#0;
      DBGrillaDetalle.SelectedIndex:=1;
    end;
end;

procedure TFormPreciosEspecialesClientes.ModificarExecute(Sender: TObject);
begin
  inherited;
  DBGrillaDetalle.SetFocus;
end;

procedure TFormPreciosEspecialesClientes.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

end.
