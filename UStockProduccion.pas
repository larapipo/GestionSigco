unit UStockProduccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, frxDBSet, frxClass, ImgList, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask,
  JvToolEdit, JvAppStorage, JvAppIniStorage, JvBaseEdits, IBGenerator, Grids,
  DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, ActnList,
  ComCtrls, Buttons, ToolWin, DBXCommon,Math, System.Actions,System.StrUtils,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList,IniFiles, Vcl.Menus, frCoreClasses, AdvSmoothButton;

type
  TFormStockProduccion = class(TFormABMBase)
    DSPStock: TDataSetProvider;
    dbeNombre: TDBEdit;
    Bevel1: TBevel;
    dbgCostosFijos: TDBGrid;
    CDSStockDetalle: TClientDataSet;
    CDSCostosFijos: TClientDataSet;
    DSPStockDetalle: TDataSetProvider;
    DSPCostosFijos: TDataSetProvider;
    DSCostosFijos: TDataSource;
    BuscarArticulo: TAction;
    CDSStockDetalleID: TIntegerField;
    CDSStockDetalleID_CAB: TIntegerField;
    CDSStockDetalleCODIGO_STK: TStringField;
    CDSStockDetalleDETALLE: TStringField;
    CDSStockDetalleUNIDAD: TStringField;
    CDSCostosFijosID: TIntegerField;
    CDSCostosFijosID_CAB: TSmallintField;
    CDSCostosFijosCODIGO_CFIJO: TIntegerField;
    CDSCostosFijosDETALLE: TStringField;
    DSPStockCab: TDataSetProvider;
    CDSStockCab: TClientDataSet;
    IBGIdCab: TIBGenerator;
    IBGIdDet: TIBGenerator;
    IBGIdCosto: TIBGenerator;
    CDSStockCabID: TIntegerField;
    CDSStockCabCODIGO: TStringField;
    CDSStockCabDETALLE: TStringField;
    DSStockDetalle: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BuscarCostoFijo: TAction;
    btActualizarCostos: TBitBtn;
    ActualizarCostos: TAction;
    CDSStockDetalleAFECTA_STOCK: TStringField;
    CDSStockCabUNIDAD: TStringField;
    dbeUnidad: TDBEdit;
    CDSStockCabAFECTA_STOCK: TStringField;
    dbeCantidad: TDBEdit;
    AplicarCostoArticulo: TAction;
    spAplicarCostoFicha: TSpeedButton;
    dbgDetalle: TDBGrid;
    Label4: TLabel;
    lbCostoTotal: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frDBCostosFijos: TfrxDBDataset;
    frDBDetalle: TfrxDBDataset;
    frDBCabecera: TfrxDBDataset;
    ActualizaDetalleProduccion: TAction;
    btActualizaAll: TBitBtn;
    RxDBCodigo: TJvDBComboEdit;
    CDSStockDetalleULTIMO_COSTO: TSQLTimeStampField;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    CDSBuscaCostoFijo: TClientDataSet;
    DSPBuscaCostoFijo: TDataSetProvider;
    CDSCostosFijosFECHA_ULTIMOCOSTO: TSQLTimeStampField;
    CDSBuscaCostoFijoID: TIntegerField;
    CDSBuscaCostoFijoDETALLE: TStringField;
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
    CDSStockUNIDAD: TStringField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockCONTROLASTOCK: TStringField;
    edMateriaPrima: TJvCalcEdit;
    edCFijo: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    BuscarArticulo_2: TAction;
    VerFicha: TAction;
    spVerFichaStock: TSpeedButton;
    ComBuscadorCostoFijo: TComBuscador;
    QBuscaStock: TFDQuery;
    QBuscaStockCODIGO_STK: TStringField;
    QBuscaStockDETALLE_STK: TStringField;
    QBuscaStockFUAP: TSQLTimeStampField;
    QBuscador_: TFDQuery;
    btImprimir: TBitBtn;
    edCosto: TDBEdit;
    JvLabel1: TJvLabel;
    pnTotal: TPanel;
    QBuscaCostoFijo: TFDQuery;
    CDSBuscaCostoFijoCOSTO: TFloatField;
    QStockCab: TFDQuery;
    QStockCabID: TIntegerField;
    QStockCabCODIGO: TStringField;
    QStockCabDETALLE: TStringField;
    QStockCabUNIDAD: TStringField;
    QStockCabAFECTA_STOCK: TStringField;
    QStockCabCANTIDAD: TFloatField;
    CDSStockCabCANTIDAD: TFloatField;
    QStockDetalle: TFDQuery;
    QStockDetalleID: TIntegerField;
    QStockDetalleID_CAB: TIntegerField;
    QStockDetalleCODIGO_STK: TStringField;
    QStockDetalleDETALLE: TStringField;
    QStockDetalleCOSTO_STK: TFloatField;
    QStockDetalleCANTIDAD_REAL: TFloatField;
    QStockDetalleCANTIDAD_FISICA: TFloatField;
    QStockDetalleUNIDAD: TStringField;
    QStockDetalleULTIMO_COSTO: TSQLTimeStampField;
    QStockDetalleCOSTO: TFloatField;
    QStockDetalleAFECTA_STOCK: TStringField;
    CDSStockDetalleCOSTO_STK: TFloatField;
    CDSStockDetalleCOSTO: TFloatField;
    CDSStockDetalleCANTIDAD_FISICA: TFloatField;
    CDSStockDetalleCANTIDAD_REAL: TFloatField;
    QCostosFijos: TFDQuery;
    QCostosFijosID: TIntegerField;
    QCostosFijosID_CAB: TSmallintField;
    QCostosFijosCODIGO_CFIJO: TIntegerField;
    QCostosFijosFECHA_ULTIMOCOSTO: TSQLTimeStampField;
    QCostosFijosDETALLE: TStringField;
    QCostosFijosCOSTO: TFloatField;
    QCostosFijosCOEFICIENTE: TFloatField;
    QCostosFijosCOSTOFINAL: TFloatField;
    CDSCostosFijosCOSTO: TFloatField;
    CDSCostosFijosCOEFICIENTE: TFloatField;
    CDSCostosFijosCOSTOFINAL: TFloatField;
    QBuscaRepetido: TFDQuery;
    QBuscaRepetidoCODIGO: TStringField;
    QCFijo: TFDQuery;
    QCFijoID: TIntegerField;
    QCFijoDETALLE: TStringField;
    QCFijoCOSTO: TFloatField;
    QCFijoFECHA: TSQLTimeStampField;
    QCFijoOBS: TMemoField;
    spActualizaCostoFD: TFDStoredProc;
    spActulizaDetalleProduccionFD: TFDStoredProc;
    QStockCabCOSTO: TFloatField;
    CDSStockCabCOSTO: TFloatField;
    QStockDetalleMUESTRACODALTERNATIVO: TStringField;
    CDSStockDetalleMUESTRACODALTERNATIVO: TStringField;
    CDSStockREEMPLAZO_STK: TStringField;
    QStockCabMUESTRACODALTERNATIVO: TStringField;
    CDSStockCabMUESTRACODALTERNATIVO: TStringField;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorCODIGO: TStringField;
    CDSBuscadorDETALLE: TStringField;
    CDSBuscadorID: TIntegerField;
    Bevel2: TBevel;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    chAplicarCostoAutomatico: TCheckBox;
    ComBuscadorStock: TComBuscador;
    CDSBuscadorREEMPLAZO_STK: TStringField;
    CopiarDetalle: TAction;
    PegarDetalle: TAction;
    CDSStockDetalleXML: TClientDataSet;
    PopupMenu1: TPopupMenu;
    CopiarDetalle1: TMenuItem;
    PegarDetalle1: TMenuItem;
    QStockDetallePORCENTAJE_USO: TSingleField;
    CDSStockDetallePORCENTAJE_USO: TSingleField;
    spInformaCambioPrecioFD: TFDStoredProc;
    pcStock: TPageControl;
    pagDetalle: TTabSheet;
    pagInformacionAdicional: TTabSheet;
    Panel2: TPanel;
    dbmDetalleAdicional: TDBMemo;
    QStockCabINFORMACION_ADICIONAL: TMemoField;
    CDSStockCabINFORMACION_ADICIONAL: TMemoField;
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSStockDetalleCODIGO_STKSetText(Sender: TField;
      const Text: String);
    procedure dbgDetalle_oldEditButtonClick(Sender: TObject);
    procedure dbgDetalle_oldKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalle_oldColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSStockDetalleCANTIDAD_REALSetText(Sender: TField;
      const Text: String);
    procedure CDSStockDetalleCANTIDAD_FISICASetText(Sender: TField;
      const Text: String);
    procedure CDSStockCabNewRecord(DataSet: TDataSet);
    procedure CDSStockDetalleNewRecord(DataSet: TDataSet);
    procedure CDSCostosFijosNewRecord(DataSet: TDataSet);
    procedure dbgCostosFijosColEnter(Sender: TObject);
    procedure dbgCostosFijosKeyPress(Sender: TObject; var Key: Char);
    procedure CDSStockCabCODIGOSetText(Sender: TField; const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSStockDetalleAfterPost(DataSet: TDataSet);
    procedure BuscarCostoFijoExecute(Sender: TObject);
    procedure CDSCostosFijosCODIGO_CFIJOSetText(Sender: TField;
      const Text: String);
    procedure dbgCostosFijosEditButtonClick(Sender: TObject);
    procedure CDSCostosFijosCOEFICIENTESetText(Sender: TField;
      const Text: String);
    procedure CDSCostosFijosAfterPost(DataSet: TDataSet);
    procedure CDSCostosFijosCOSTOSetText(Sender: TField;
      const Text: String);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ActualizarCostosExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSStockDetalleCOSTO_STKSetText(Sender: TField;
      const Text: String);
    procedure AplicarCostoArticuloExecute(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure ActualizaDetalleProduccionExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarArticulo_2Execute(Sender: TObject);
    procedure CDSStockDetalleBeforePost(DataSet: TDataSet);
    procedure VerFichaExecute(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure sStingÑNTIDADSetText(Sender: TField; const Text: string);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CDSStockCabCANTIDADSetText(Sender: TField; const Text: string);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure CDSCostosFijosAfterEdit(DataSet: TDataSet);
    procedure CopiarDetalleExecute(Sender: TObject);
    procedure PegarDetalleExecute(Sender: TObject);
    procedure CDSStockDetallePORCENTAJE_USOSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    PrecioOld:Extended;

    FUNCTION AsignarArticulo(Dato: STRING;Op:byte): Boolean;
    FUNCTION AsignarCostoFijo(Dato: Integer): Boolean;
    PROCEDURE Sumar;
  end;

var
  FormStockProduccion: TFormStockProduccion;

implementation

uses DMBuscadoresForm, UMuestraListaCodBarra, UBuscadorArticulos,
     UStock_2,UDMain_FD;

{$R *.DFM}

FUNCTION TFormStockProduccion.ASignarArticulo(Dato: STRING;Op:Byte): Boolean;
BEGIN
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value:=Dato;
  CDSStock.Open;
  IF NOT (CDSStock.IsEmpty) THEN
     BEGIN
       if op=0 Then // si biene del detalle
         begin
           IF CDSStockDetalle.State = dsBrowse THEN
             CDSStockDetalle.Edit;
           CDSStockDetalleCODIGO_STK.Value            := CDSStockCODIGO_STK.Value;
           CDSStockDetalleDETALLE.Value               := CDSStockDETALLE_STK.Value;
           CDSStockDetalleCOSTO_STKSetText(CDSStockDetalleCOSTO_STK,FloatToStr(CDSStockFIJACION_PRECIO_TOTAL.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat));
           CDSStockDetalleUNIDAD.Value                := CDSStockUNIDAD.Value;
           CDSStockDetalleULTIMO_COSTO.AsDateTime     := CDSStockFUAP.AsDateTime;
           CDSStockDetalleAFECTA_STOCK.Value          := CDSStockCONTROLASTOCK.Value;
           CDSStockDetalleMUESTRACODALTERNATIVO.Value := CDSStockREEMPLAZO_STK.Value;

         end
       else
         if op=1 Then //si biene del encabezado
           begin
             CDSStockCabCODIGO.Value                := CDSStockCODIGO_STK.Value;
             CDSStockCabDETALLE.Value               := CDSStockDETALLE_STK.Value;
             CDSStockCabUNIDAD.Value                := CDSStockUNIDAD.Value;
             CDSStockCabAFECTA_STOCK.Value          := CDSStockCONTROLASTOCK.Value;
             CDSStockCabMUESTRACODALTERNATIVO.Value := CDSStockREEMPLAZO_STK.Value;
           end;
       Result:=True;
      END
    ELSE
      Result:=False;
END;

FUNCTION TFormStockProduccion.AsignarCostoFijo(Dato: Integer): Boolean;
BEGIN
  QCFijo.Close;
  QCFijo.ParamByName('id').Value:=Dato;
  QCFijo.Open;
  IF NOT (QCFijo.IsEmpty) THEN
     BEGIN
       if CDSCostosFijos.State = dsBrowse Then
         CDSCostosFijos.Edit;
       CDSCostosFijosDETALLE.Value          := QCFijoDETALLE.Value;
       CDSCostosFijosCOSTO.AsFloat          := QCFijoCOSTO.AsFloat;
       CDSCostosFijosFECHA_ULTIMOCOSTO.AsDateTime:= QCFijoFECHA.AsDateTime;
       Result:=True;
      END
    ELSE
      Result:=False;
  QCFijo.Close;

END;

procedure TFormStockProduccion.Sumar;
Var SumaMateriaPrima,SumaCostosFijo,SumaTotal:Real;
Puntero: TBookmark;
begin
  Puntero:=CDSStockDetalle.GetBookmark;
  CDSStockDetalle.First;
  CDSStockDetalle.DisableControls;
  SumaMateriaPrima:=0;
  while Not(CDSStockDetalle.Eof) do
    begin
      SumaMateriaPrima:= SumaMateriaPrima + CDSStockDetalleCOSTO.AsFloat;
      CDSStockDetalle.Next;
    end;
  CDSStockDetalle.GotoBookmark(Puntero); ;
  CDSStockDetalle.EnableControls;
  CDSStockDetalle.FreeBookmark(Puntero);
  edMateriaPrima.Value:= SumaMateriaPrima / CDSStockCabCANTIDAD.AsFloat;

  edTotal.Value:= edMateriaPrima.Value + edCFijo.Value;

  Puntero:=CDSCostosFijos.GetBookmark;
  CDSCostosFijos.First;
  CDSCostosFijos.DisableControls;
  SumaCostosFijo:=0;
  while Not(CDSCostosFijos.Eof) do
    begin
      SumaCostosFijo := SumaCostosFijo + CDSCostosFijosCOSTOFINAL.AsFloat;
      CDSCostosFijos.Next;
    end;
  CDSCostosFijos.GotoBookmark(Puntero); ;
  CDSCostosFijos.EnableControls;
  CDSCostosFijos.FreeBookmark(Puntero);

  edCFijo.Value        := SumaCostosFijo/CDSStockCabCANTIDAD.AsFloat;

  edTotal.Value        := edMateriaPrima.Value + edCFijo.Value;

  lbCostoTotal.Caption := FormatFloat(',0.00', SumaMateriaPrima+SumaCostosFijo);
end;

procedure TFormStockProduccion.VerFichaExecute(Sender: TObject);
begin
  inherited;
  if (CDSStockCabCODIGO.AsString<>'') and (DSBase.State=dsBrowse) then
    begin
      if Not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=CDSStockCabCODIGO.AsString;
      FormStock_2.Recuperar.Execute;
      FormStock_2.Show;
    end;

end;

procedure TFormStockProduccion.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  QBuscaStock.Close;
  if (Sender is TJvDBComboEdit) Then
    begin
      QBuscaStock.ParamByName('deproduccion').Value := 'N'; { los que son distintos de NO PRODUCCION }
    end
  else
    begin
      QBuscaStock.ParamByName('deproduccion').Value := ''; { todos }
    end;
  QBuscaStock.Open;
  comBuscadorStock.Execute;
  if comBuscadorStock.rOk Then
      BEGIN
         if (Sender is TJvDBComboEdit) Then
           begin
             if CDSStockCab.State=dsBrowse Then
                CDSStockCab.Edit;
             CDSStockCabCODIGOSetText(CDSStockCabCODIGO,comBuscadorStock.Id);
           end
         else
           begin
             IF CDSStockDetalle.State = dsBrowse THEN
               CDSStockDetalle.Edit;
             CDSStockDetalleCODIGO_STKSetText(CDSStockDetalleCODIGO_STK, comBuscadorStock.Id);
           end;
      END;
  QBuscaStock.Close;

end;

procedure TFormStockProduccion.BuscarArticulo_2Execute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.Param3:=2;

      //**************************************************************************
      //****Asigno la Lista Por defecto o la lista asignada **********************
      //**************************************************************************
      FormBuscadorArticulos.ListaPrecio:= DMMain_FD.ListaPorDefecto();
      FormBuscadorArticulos.Esquema    := -1;
      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSStockDetalleCODIGO_STKSetText(CDSStockDetalleCODIGO_STK,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormStockProduccion.CDSStockDetalleCODIGO_STKSetText(Sender: TField;
  const Text: String);
var s:String;
 Enter:char;
begin
   Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      If CDSStockDetalle.State=dsBrowse Then
        CDSStockDetalle.edit;
      DMMain_FD.CDSCodigoBarra.Close;
      DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
      DMMain_FD.CDSCodigoBarra.Open;
      If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
        begin
          // BUsco por el serie ...
          DMBuscadores.QConsultaCodigoSerie.Close;
          DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=UpperCase(Text);
          DMBuscadores.QConsultaCodigoSerie.Open;
          If DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString='' Then
            begin
              Sender.AsString:=Text;
              DMMain_FD.EncontroCodigoBarra:=False;
            end
          else
            begin
             Sender.AsString:=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
             DMMain_FD.EncontroCodigoBarra:=True;
            end;
          DMBuscadores.QConsultaCodigoSerie.Close;
        end
      else
        begin
          if DMMain_FD.CDSCodigoBarra.RecordCount>1 Then
            begin
              if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(application);
              FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(Text);
              FormMuestraListaCodigoBarra.ShowModal;
              Sender.AsString:=FormMuestraListaCodigoBarra.Codigo;
            end
          else
            Sender.AsString:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
          DMMain_FD.EncontroCodigoBarra:=True;
        end;
      DMMain_FD.CDSCodigoBarra.Close;

      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      Sender.AsString:=s;
      IF AsignarArticulo(s,0) = False THEN
        BEGIN
         // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.Esquema     := -1;
          FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto;
         //***********************************************************
          FormBuscadorArticulos.Dato              := Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSStockDetalle.State = dsBrowse THEN
                CDSStockDetalle.Edit;
              CDSStockDetalleCODIGO_STKSetText(CDSStockDetalleCODIGO_STK,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        dbgDetalle.OnKeyPress(dbgDetalle,Enter);
  END;

end;

procedure TFormStockProduccion.dbgDetalle_oldEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormStockProduccion.dbgDetalle_oldKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 4) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgDetalle.DataSource.DataSet.Eof THEN
            dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgDetalle.SelectedField = CDSStockDetalleCODIGO_STK THEN
           BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        dbgDetalle.DataSource.DataSet.Cancel;
end;

procedure TFormStockProduccion.dbgDetalle_oldColEnter(Sender: TObject);
begin
  inherited;
 IF dbgDetalle.SelectedIndex = 1 THEN
    dbgDetalle.SelectedIndex := 3;
  IF dbgDetalle.SelectedIndex = 2 THEN
    dbgDetalle.SelectedIndex := 3;
  IF dbgDetalle.SelectedIndex > 4 THEN
    dbgDetalle.SelectedIndex := 4;
end;

procedure TFormStockProduccion.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=False;
  AddClientDataSet(CDSStockCab,DSPStockCab);
  AddClientDataSet(CDSStockDetalle,DSPStockDetalle);
  AddClientDataSet(CDSCostosFijos,DSPCostosFijos);
  CDSStockCab.Open;
  CDSStockDetalle.Open;
  CDSCostosFijos.Open;
  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Cantidad_real')).DisplayFormat  :=',0.000;-,0.000;-';
  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Cantidad_fisica')).DisplayFormat:=',0.000;-,0.000;-';
  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Costo')).DisplayFormat          :=',0.000;-,0.000;-';
  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Costo_stk')).DisplayFormat      :=',0.000;-,0.000;-';

  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Cantidad_real')).EditFormat  :='0.000';
  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Cantidad_fisica')).EditFormat:='0.000';
  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Costo')).EditFormat          :='0.000';
  TFloatField(dbgDetalle.DataSource.DataSet.FieldByName('Costo_stk')).EditFormat      :='0.000';

  TFloatField(dbgCostosFijos.Fields[2]).DisplayFormat:=',0.000;-,0.000;-';
  TFloatField(dbgCostosFijos.Fields[3]).DisplayFormat:=',0.000;-,0.000;-';
  TFloatField(dbgCostosFijos.Fields[4]).DisplayFormat:=',0.000;-,0.000;-';

  TFloatField(dbgCostosFijos.Fields[2]).EditFormat:=',0.000';
  TFloatField(dbgCostosFijos.Fields[3]).EditFormat:=',0.000';
  TFloatField(dbgCostosFijos.Fields[4]).EditFormat:=',0.000';

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ArticuloProduccion.ini');
  chAplicarCostoAutomatico.Checked  := ArchivoIni.ReadBool('Costo', 'Aplica', False);
  ArchivoIni.Free;
  pcStock.ActivePageIndex:=0;

  Tabla:='Stock_Produccion_cab';
  Campo:='id';

end;

procedure TFormStockProduccion.CDSStockDetalleCANTIDAD_REALSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSStockDetalleCANTIDAD_FISICASetText(CDSStockDetalleCANTIDAD_FISICA,Sender.AsString);
end;

procedure TFormStockProduccion.CDSStockDetalleCANTIDAD_FISICASetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSStockDetalleCOSTO.AsFloat := RoundTo(Sender.AsFloat * CDSStockDetalleCOSTO_STK.AsFloat,-3);
  CDSStockDetalleCANTIDAD_REAL.Value:=CDSStockDetalleCANTIDAD_FISICA.AsFloat * CDSStockDetallePORCENTAJE_USO.AsFloat *0.01;
end;

procedure TFormStockProduccion.CDSStockCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSStockCabID.Value              := IBGIdCab.IncrementFD(1);
  CDSStockCabAFECTA_STOCK.AsString := 'S';
  CDSStockCabCANTIDAD.AsFloat      := 1;
end;

procedure TFormStockProduccion.CDSStockDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSStockDetalleID.Value                := IBGIdDet.IncrementFD(1);
  CDSStockDetalleID_CAB.Value            := CDSStockCabID.Value;
  CDSStockDetalleDETALLE.Value           := '';
  CDSStockDetalleCOSTO_STK.AsFloat       := 0;
  CDSStockDetalleCANTIDAD_REAL.AsFloat   := 0;
  CDSStockDetalleCANTIDAD_FISICA.AsFloat := 0;
  CDSStockDetalleCANTIDAD_FISICA.AsFloat := 0;
  CDSStockDetalleUNIDAD.Value            := '';
  CDSStockDetalleCOSTO.AsFloat           := 0;
  CDSStockDetalleAFECTA_STOCK.AsString   := 'S';
  CDSStockDetalleULTIMO_COSTO.AsDateTime := Date;
  CDSStockDetallePORCENTAJE_USO.AsFloat  := 100;
end;

procedure TFormStockProduccion.CDSStockDetallePORCENTAJE_USOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Sender.AsFloat<0   Then Sender.AsFloat := 0;
  if Sender.AsFloat>100 Then Sender.AsFloat := 100;
  CDSStockDetalleCANTIDAD_FISICA.Value      := CDSStockDetalleCANTIDAD_REAL.Value * CDSStockDetallePORCENTAJE_USO.ASFloat * 0.01;
end;

procedure TFormStockProduccion.CDSCostosFijosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCostosFijosID.Value                     := IBGIdCosto.IncrementFD(1);
  CDSCostosFijosID_CAB.Value                 := CDSStockCabID.Value;
  CDSCostosFijosDETALLE.Value                := '';
  CDSCostosFijosCOSTO.AsFloat                := 0;
  CDSCostosFijosCOEFICIENTE.AsFloat          := 0;
  CDSCostosFijosCOSTOFINAL.AsFloat           := 0;
  CDSCostosFijosFECHA_ULTIMOCOSTO.AsDateTime := Date;
end;

procedure TFormStockProduccion.dbgCostosFijosColEnter(Sender: TObject);
begin
  inherited;
 IF dbgCostosFijos.SelectedIndex = 1 THEN
    dbgCostosFijos.SelectedIndex := 3;
 IF dbgCostosFijos.SelectedIndex > 3 THEN
    dbgCostosFijos.SelectedIndex := 3;

end;

procedure TFormStockProduccion.dbgCostosFijosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgCostosFijos.SelectedIndex < 3) THEN
        dbgCostosFijos.SelectedIndex := dbgCostosFijos.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgCostosFijos.DataSource.DataSet.Eof THEN
            dbgCostosFijos.DataSource.DataSet.Append;
          dbgCostosFijos.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgCostosFijos.SelectedField = CDSCostosFijosCODIGO_CFIJO THEN
           BuscarCostoFijo.Execute;
      END
    else
      if (key = #27) then
        dbgCostosFijos.DataSource.DataSet.Cancel;

end;

procedure TFormStockProduccion.sStingÑNTIDADSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  Sumar;
end;

procedure TFormStockProduccion.CDSStockCabCANTIDADSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  Sumar;
end;

procedure TFormStockProduccion.CDSStockCabCODIGOSetText(Sender: TField;
  const Text: String);
VAR S: STRING;
BEGIN
  if (Text<>'') and (Text[1]<>#13) Then
    begin
      S:=Text;
      S:=Copy('00000000', 1, 8 - Length(S)) + S;
      QBuscaRepetido.Close;
      QBuscaRepetido.ParamByName('codigo').AsString:=S;
      QBuscaRepetido.Open;
      if QBuscaRepetido.IsEmpty then
        begin
          Sender.AsString:=S;
          IF AsignarArticulo(s,1) = False THEN
            BEGIN
              ShowMessage('Codigo de Artículo Inválido...!!!');
              Sender.AsString:= '';
              SysUtils.Abort;
            END;
        end
      else
        begin
          ShowMessage('Artículo ya Ingresado...!!!');
          Sender.AsString:= '';
        end;
    end;
  QBuscaRepetido.Close;
end;

procedure TFormStockProduccion.AgregarExecute(Sender: TObject);
begin
  CDSStockCab.Close;
  CDSStockCab.Params.ParamByName('id').Clear;
  CDSStockCab.Open;
  CDSStockDetalle.Close;
  CDSStockDetalle.Params.ParamByName('id').Clear;
  CDSStockDetalle.Open;
  CDSCostosFijos.Close;
  CDSCostosFijos.Params.ParamByName('id').Clear;
  CDSCostosFijos.Open;
  inherited;
  edMateriaPrima.Value :=0;
  edCFijo.Value        :=0;
  edTotal.Value        :=0;
  RxDBCodigo.SetFocus;
end;

procedure TFormStockProduccion.CDSStockDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormStockProduccion.CDSStockDetalleBeforePost(DataSet: TDataSet);
begin
  inherited;
  IF (CDSStockDetalleCODIGO_STK.AsString = '')  AND
     (CDSStockDetalle.State IN [dsInsert])
    THEN
      BEGIN
        CDSStockDetalle.Cancel;
        SysUtils.Abort;
      END;

end;

procedure TFormStockProduccion.BuscarCostoFijoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCostoFijo.Close;
  CDSBuscaCostoFijo.Open;
  comBuscadorCostoFijo.Execute;
  if comBuscadorCostoFijo.rOk Then
    begin
      if CDSCostosFijos.State = dsbrowse Then
        CDSCostosFijos.edit;
      CDSCostosFijosCODIGO_CFIJOSetText(CDSCostosFijosCODIGO_CFIJO,IntToStr(comBuscadorCostoFijo.Id));
    end;
  CDSBuscaCostoFijo.Close;
end;

procedure TFormStockProduccion.CDSCostosFijosCODIGO_CFIJOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  IF AsignarCostoFijo(Sender.AsInteger) = False THEN
    BEGIN
      ShowMessage('Codigo de Costo Fijo Inválido...!!!');
      Sender.AsString:= '';
      SysUtils.Abort;
      //wwCDSVentaDet.Cancel;
    END;

end;

procedure TFormStockProduccion.dbgCostosFijosEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarCostoFijo.Execute;
end;

procedure TFormStockProduccion.CDSCostosFijosCOEFICIENTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSCostosFijosCOSTOFINAL.AsFloat := Sender.AsFloat * CDSCostosFijosCOSTO.AsFloat;
end;

procedure TFormStockProduccion.CDSCostosFijosAfterEdit(DataSet: TDataSet);
begin
  inherited;
  CDSCostosFijosFECHA_ULTIMOCOSTO.AsDateTime:=Date;
end;

procedure TFormStockProduccion.CDSCostosFijosAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormStockProduccion.CDSCostosFijosCOSTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString                  := Text;
  CDSCostosFijosCOSTOFINAL.AsFloat := Sender.AsFloat * CDSCostosFijosCOEFICIENTE.AsFloat;

end;

procedure TFormStockProduccion.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.CLose;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
      begin
        DatoNew:=IntToStr(comBuscadorBase.Id);
        Recuperar.Execute;
      end;
  CDSbuscador.CLose;
end;

procedure TFormStockProduccion.RecuperarExecute(Sender: TObject);
begin
  inherited;
  if Trim(DatoNew)<>'' then
    begin
      CDSStockCab.Close;
      CDSStockCab.Params.ParamByName('id').AsInteger    :=StrToInt(DatoNew);
      CDSStockCab.Open;

      CDSStockDetalle.Close;
      CDSStockDetalle.Params.ParamByName('id').AsInteger:=StrToInt(DatoNew);
      CDSStockDetalle.Open;

      CDSCostosFijos.Close;
      CDSCostosFijos.Params.ParamByName('id').AsInteger :=StrToInt(DatoNew);
      CDSCostosFijos.Open;

      DatoNew:=''+DatoNew+'';
      // ActualizarCostos.Execute;
      Sumar;
      PrecioOld:= edTotal.Value;
    end;
end;

procedure TFormStockProduccion.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormStockProduccion.CancelarExecute(Sender: TObject);
begin
  if MessageDlg('Anula los Cambios...?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then 
  begin
    CDSStockCab.Cancel;
    CDSStockDetalle.Cancel;
    CDSCostosFijos.Cancel;
    CDSStockCab.Close;
    CDSStockCab.Params.ParamByName('id').Clear;
    CDSStockCab.Open;
    CDSStockDetalle.Close;
    CDSStockDetalle.Params.ParamByName('id').Clear;
    CDSStockDetalle.Open;
    CDSCostosFijos.Close;
    CDSCostosFijos.Params.ParamByName('id').Clear;
    CDSCostosFijos.Open;
    inherited;
    edMateriaPrima.Value :=0;
    edCFijo.Value        :=0;
    edTotal.Value        :=0;
  end;
end;

procedure TFormStockProduccion.ConfirmaExecute(Sender: TObject);
begin
  DatoNew                 :=CDSStockCabID.AsString;
  if CDSStockDetalle.State<>dsBrowse then
    CDSStockDetalle.Post;
  if CDSCostosFijos.State<>dsBrowse then
    CDSCostosFijos.Post;
  if lbCostoTotal.Caption<>'' then
    CDSStockCabCOSTO.ASFloat:=StrToFloat(AnsiReplaceStr(lbCostoTotal.Caption,',',''))
  else
    CDSStockCabCOSTO.ASFloat:=0;

  inherited;
  Recuperar.Execute;
  if chAplicarCostoAutomatico.Checked then
    AplicarCostoArticulo.Execute;
end;

procedure TFormStockProduccion.CopiarDetalleExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if Not(CDSStockDetalle.IsEmpty)  Then
    begin
//      DatosVentas.wwCDSVentaCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaCab.XML');
      CDSStockDetalle.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\DetalleProduccion.XML');
//      DatosVentas.wwCDSImpuestos.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaImp.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');
  ShowMessage('Datos Copiados....');
end;

procedure TFormStockProduccion.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormStockProduccion.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    recuperar.Execute;

end;

procedure TFormStockProduccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ArticuloProduccion.ini');
  ArchivoIni.WriteBool('Costo', 'Aplica', chAplicarCostoAutomatico.Checked);
  ArchivoIni.Free;

  inherited;

  Action:=caFree;
end;

procedure TFormStockProduccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormStockProduccion:=nil;
end;

procedure TFormStockProduccion.ActualizarCostosExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  CDSStockDetalle.First;
 // CDSStockDetalle.DisableControls;
  while Not(CDSStockDetalle.Eof) do
    begin
      if CDSStockDetalle.State in [dsBrowse] then
        CDSStockDetalle.Edit;
      AsignarArticulo(CDSStockDetalleCODIGO_STK.AsString,0);
      CDSStockDetalleCOSTO.AsFloat:= CDSStockDetalleCANTIDAD_FISICA.AsFloat * CDSStockDetalleCOSTO_STK.AsFloat;
      CDSStockDetalle.Next;
    end;
  CDSStockDetalle.First;

  CDSCostosFijos.First;
 // CDSStockDetalle.DisableControls;
  while Not(CDSCostosFijos.Eof) do
    begin
      if CDSCostosFijos.State in [dsBrowse] then
        CDSCostosFijos.Edit;
      AsignarCostoFijo(CDSCostosFijosCODIGO_CFIJO.AsInteger);
      CDSCostosFijosCOSTOFINAL.AsFloat := CDSCostosFijosCOEFICIENTE.AsFloat * CDSCostosFijosCOSTO.AsFloat;
      CDSCostosFijos.Next;
    end;
  CDSCostosFijos.First;

//  CDSStockDetalle.EnableControls;
//  Confirma.Execute;

end;

procedure TFormStockProduccion.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  ActualizarCostos.Enabled     := (DSBase.State=dsBrowse) and (Not(CDSStockCab.IsEmpty));
  AplicarCostoArticulo.Enabled := (DSBase.State=dsBrowse) and (Not(CDSStockCab.IsEmpty));
  pnPrincipal.Enabled          := True;
  dbgCostosFijos.ReadOnly      := DSBase.State=dsBrowse;
  dbgDetalle.ReadOnly          := DSBase.State=dsBrowse;
  RxDBCodigo.Enabled           := DSBase.State=dsInsert;
  Imprimir.Enabled             := ((DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False));
  VerFicha.Enabled             := (DSBase.State=dsBrowse) and (Not(CDSStockCab.IsEmpty));
  dbgCostosFijos.ReadOnly      := (DSBase.State=dsBrowse);
  dbgDetalle.ReadOnly          :=(DSBase.State=dsBrowse);
end;

procedure TFormStockProduccion.BorrarExecute(Sender: TObject);
begin
  inherited;
  edMateriaPrima.Value :=0;
  edCFijo.Value   :=0;
  edTotal.Value   :=0;
end;

procedure TFormStockProduccion.CDSStockDetalleCOSTO_STKSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSStockDetalleCOSTO.AsFloat := Sender.AsFloat * CDSStockDetalleCANTIDAD_FISICA.AsFloat;
end;

procedure TFormStockProduccion.AplicarCostoArticuloExecute(
  Sender: TObject);
var Valor:String;
Q:TFDQuery;
CostoGravadoOld,
CostoExentoOld,
FPrecioGravadoOld,
FPrecioExentoOld    :Extended;
begin
  inherited; //
  Valor:=Trim(edTotal.Text);
  Valor:=AnsiReplaceStr(Trim(edTotal.Text),',','');
  if Not(DSBase.DataSet.IsEmpty) Then
    begin
      Q:=TFdquery.Create(nil);
      Q.Connection:=DMMain_FD.fdcGestion;
      Q.SQL.Text:='select s.costo_gravado_stk,s.costo_exento_stk,'+
                  's.fijacion_precio_gravado,s.fijacion_precio_exento from stock s where s.codigo_stk='+ QuotedStr(CDSStockCabCODIGO.AsString);
      Q.Open;
      CostoGravadoOld   := Q.Fields[0].AsFloat;
      CostoExentoOld    := Q.Fields[1].AsFloat;
      FPrecioGravadoOld := Q.Fields[2].AsFloat;
      FPrecioExentoOld  := Q.Fields[3].AsFloat;
      Q.Close;
      FreeAndNil(Q);

      DMMain_FD.fdcGestion.StartTransaction;
      try
        spActualizaCostoFD.Close;
        spActualizaCostoFD.ParamByName('codigo').Value := CDSStockCabCODIGO.Value;
        spActualizaCostoFD.ParamByName('precio').Value := StrToFloat(Valor);
        spActualizaCostoFD.ParamByName('Fecha').Value  := Date;
        spActualizaCostoFD.ExecProc;
//*****************************************************************************************
        spInformaCambioPrecioFD.Close;
        spInformaCambioPrecioFD.ParamByName('codigo').AsString            := CDSStockCabCODIGO.Value;

        spInformaCambioPrecioFD.ParamByName('costo_old').AsFloat          := CostoGravadoOld+CostoExentoOld;
        spInformaCambioPrecioFD.ParamByName('costo_old_gravado').AsFloat  := CostoGravadoOld;
        spInformaCambioPrecioFD.ParamByName('costo_old_exento').AsFloat   := CostoExentoOld;

        spInformaCambioPrecioFD.ParamByName('costo_new').AsFloat          := edTotal.Value;
        spInformaCambioPrecioFD.ParamByName('costo_new_gravado').AsFloat  := edTotal.Value;
        spInformaCambioPrecioFD.ParamByName('costo_new_exento').AsFloat   := 0;

        spInformaCambioPrecioFD.ParamByName('fprecio_old').AsFloat        := FPrecioGravadoOld+FPrecioExentoOld;
        spInformaCambioPrecioFD.ParamByName('fprecio_old_gravado').AsFloat:= FPrecioGravadoOld;
        spInformaCambioPrecioFD.ParamByName('fprecio_old_exento').AsFloat := FPrecioExentoOld;

        spInformaCambioPrecioFD.ParamByName('fprecio_new').AsFloat        := edTotal.Value;
        spInformaCambioPrecioFD.ParamByName('fprecio_new_gravado').AsFloat:= edTotal.Value;
        spInformaCambioPrecioFD.ParamByName('fprecio_new_exento').AsFloat := 0;

        spInformaCambioPrecioFD.ParamByName('usuario').AsString           := DMMain_FD.UsuarioActivo;
        spInformaCambioPrecioFD.ParamByName('fecha').AsDateTime           := Now;
        spInformaCambioPrecioFD.ParamByName('motivo').AsString            := 'Cambio de precio Ficha Produccion';
        spInformaCambioPrecioFD.ExecProc;
        spInformaCambioPrecioFD.Close;

        DMMain_FD.LogFileFD(0,2,'Cambio Precio Produccion.. Articulo :'+CDSStockCabCODIGO.AsString+'-'+CDSStockCabDETALLE.AsString+
                                ' Anterior : ' + FormatFloat(',0.00',CostoGravadoOld+CostoExentoOld)+
                                ' Nuevo : '+ FormatFloat(',0.00',edTotal.Value),'ARTPRODUCC');

//*****************************************************************************************
        DMMain_FD.fdcGestion.Commit;
        spActualizaCostoFD.Close;
        ShowMessage('Costo Actualizado a : '+edTotal.Text+' ....');
      except
        DMMain_FD.fdcGestion.Rollback;
        spActualizaCostoFD.Close;
        ShowMessage('No se pudo aplicar el costo.....');
      end;
    end;
end;

procedure TFormStockProduccion.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
 IF dbgDetalle.SelectedIndex = 1 THEN
    dbgDetalle.SelectedIndex := 3;
  IF dbgDetalle.SelectedIndex = 2 THEN
    dbgDetalle.SelectedIndex := 3;
  IF dbgDetalle.SelectedIndex > 4 THEN
    dbgDetalle.SelectedIndex := 3;

end;

procedure TFormStockProduccion.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if DSBase.State=dsBrowse then
    begin
      if Not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(self);
      FormStock_2.DatoNew:=CDSStockDetalleCODIGO_STK.Value;
      FormStock_2.Recuperar.Execute;
      FormStock_2.Show;
      FormStock_2.BringToFront;
    end;
end;

procedure TFormStockProduccion.dbgDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormStockProduccion.dbgDetalleKeyPress(Sender: TObject;
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
          IF dbgDetalle.DataSource.DataSet.Eof THEN
            dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgDetalle.SelectedField = CDSStockDetalleCODIGO_STK THEN
           BuscarArticulo_2.Execute;
      END
    else
      if (key = #27) then
        dbgDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormStockProduccion.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not(ActiveControl is TDBGrid) Then
  inherited;

end;

procedure TFormStockProduccion.FormResize(Sender: TObject);
begin
  inherited;
  if FormStockProduccion<>nil then
    if FormStockProduccion.Width<>895 then
      FormStockProduccion.Width:=895;

end;

procedure TFormStockProduccion.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+ '\FichaStockProduccion.fr3');
  frxReport.ShowReport;
end;

procedure TFormStockProduccion.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormStockProduccion.PegarDetalleExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      CDSStockDetalleXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\DetalleProduccion.XML');
      CDSStockDetalleXML.First;
      while not(CDSStockDetalleXML.Eof) do
        begin
          CDSStockDetalle.Append;
          CDSStockDetalleCODIGO_STK.Text              := CDSStockDetalleXML.FieldByName('CODIGO_STK').AsString;
          CDSStockDetalleDETALLE.Value                := CDSStockDetalleXML.FieldByName('Detalle').AsString;
          CDSStockDetalleUNIDAD.Value                 := CDSStockDetalleXML.FieldByName('UNIDAD').AsString;
          CDSStockDetalleAFECTA_STOCK.Value           := CDSStockDetalleXML.FieldByName('AFECTA_STOCK').AsString;
          CDSStockDetalleULTIMO_COSTO.AsDateTime      := CDSStockDetalleXML.FieldByName('ULTIMO_COSTO').AsDateTime;
          CDSStockDetalleCOSTO_STK.Text               := CDSStockDetalleXML.FieldByName('COSTO_STK').AsString;
          CDSStockDetalleCOSTO.Text                   := CDSStockDetalleXML.FieldByName('COSTO').AsString;
          CDSStockDetalleCANTIDAD_FISICA.Text         := CDSStockDetalleXML.FieldByName('CANTIDAD_FISICA').AsString;
          CDSStockDetalleCANTIDAD_REAL.Text           := CDSStockDetalleXML.FieldByName('CANTIDAD_REAL').AsString;
          CDSStockDetalleMUESTRACODALTERNATIVO.Value  := CDSStockDetalleXML.FieldByName('MUESTRACODALTERNATIVO').AsString;

          CDSStockDetalle.Post;
          CDSStockDetalleXML.Next;
        end;
    end;
end;

procedure TFormStockProduccion.ActualizaDetalleProduccionExecute(
  Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
    try
      spActulizaDetalleProduccionFD.Close;
      spActulizaDetalleProduccionFD.ExecProc;
      DMMain_FD.fdcGestion.Commit;
      spActulizaDetalleProduccionFD.Close;
      ShowMessage('Detalles Actualizados ....');
    except
      DMMain_FD.fdcGestion.Rollback;
      spActulizaDetalleProduccionFD.Close;
      ShowMessage('No se pudo realizar la Operación....');
    end;
  Recuperar.Execute;
end;

end.