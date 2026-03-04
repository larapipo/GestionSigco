unit UProductos;

interface

uses
  Windows, Messages, SysUtils, System.StrUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls,
  IBGenerator, Grids, DBGrids, Menus, JvComponentBase, ImgList,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions,
  Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Vcl.ActnList, Vcl.ComCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, AdvSearchList,
  AdvSearchEdit, DBAdvSearchEdit, AdvDBLookupComboBox, Lucombo, dblucomb;

type
  TFormProductos = class(TFormABMBase)
    DSPProductos: TDataSetProvider;
    BuscadorPropietario: TAction;
    DSPClientes: TDataSetProvider;
    BuscarCategoria: TAction;
    ibgIdProducto: TIBGenerator;
    dbgProductos: TDBGrid;
    DSProductosDelCliente: TDataSource;
    Label2: TLabel;
    pnCabecera: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbeId: TDBEdit;
    dbeDetalle: TDBEdit;
    dbeMuestraCategoria: TDBEdit;
    dbeMuestraPropietario: TDBEdit;
    dbmObs: TDBMemo;
    dbeIdentificador: TDBEdit;
    DSOrdenTrabajo: TDataSource;
    dbgOrdenTrabajo: TDBGrid;
    Label4: TLabel;
    BuscarOT: TAction;
    pmProductos: TPopupMenu;
    VerMovimientos: TAction;
    VerMovimientos1: TMenuItem;
    CDSProductos: TClientDataSet;
    CDSProductosID: TIntegerField;
    CDSProductosID_CATEGORIA: TIntegerField;
    CDSProductosIDENTIFICADOR: TStringField;
    CDSProductosDESCRIPCION: TStringField;
    CDSProductosPROPIETARIO: TStringField;
    CDSProductosOBS: TStringField;
    CDSProductosMUESTRACATEGORIA: TStringField;
    CDSProductosMUESTRAPROPIETARIO: TStringField;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSOrdenTrabajo: TClientDataSet;
    DSPOrdenTrabajo: TDataSetProvider;
    CDSOrdenTrabajoID_OT: TIntegerField;
    CDSOrdenTrabajoNROCPBTE: TStringField;
    CDSOrdenTrabajoFECHAINICIO: TSQLTimeStampField;
    CDSOrdenTrabajoFECHAFINAL: TSQLTimeStampField;
    CDSProductosDelCliente: TClientDataSet;
    DSPProductosDelCliente: TDataSetProvider;
    CDSProductosDelClienteID: TIntegerField;
    CDSProductosDelClienteID_CATEGORIA: TIntegerField;
    CDSProductosDelClienteIDENTIFICADOR: TStringField;
    CDSProductosDelClienteDESCRIPCION: TStringField;
    CDSProductosDelClientePROPIETARIO: TStringField;
    CDSProductosDelClienteOBS: TStringField;
    CDSProductosDelClienteMUESTRACATEGORIA: TStringField;
    rxceCategoria: TJvDBComboEdit;
    rxcePropietario: TJvDBComboEdit;
    ComBuscadorCategoria: TComBuscador;
    dbeMarca: TDBEdit;
    rxceMarca: TJvDBComboEdit;
    Label9: TLabel;
    Label10: TLabel;
    CDSProductosMARCA: TStringField;
    CDSProductosMODELO: TStringField;
    CDSProductosMUESTRAMARCA: TStringField;
    QProductosDelCli: TFDQuery;
    CDSProductosDelClienteMARCA: TStringField;
    CDSProductosDelClienteMODELO: TStringField;
    QOrdenT: TFDQuery;
    QCategoriaProducto: TFDQuery;
    QCategoriaProductoID: TIntegerField;
    QCategoriaProductoDETALLE: TStringField;
    QCategoriaProductoPORDEFECTO: TStringField;
    ComBuscadorMarca: TComBuscador;
    BuscarMarca: TAction;
    QBuscaMarca: TFDQuery;
    QBuscaMarcaMARCA_STK: TStringField;
    QBuscaMarcaDESCRIPCION_MARCA: TStringField;
    dbModelo: TDBEdit;
    DSPBuscaMarcas: TDataSetProvider;
    CDSBuscaMarcas: TClientDataSet;
    CDSBuscaMarcasMARCA_STK: TStringField;
    CDSBuscaMarcasDESCRIPCION_MARCA: TStringField;
    QMarca: TFDQuery;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    QBuscaCategoria: TFDQuery;
    DSPBuscaCategorias: TDataSetProvider;
    CDSBuscaCategorias: TClientDataSet;
    CDSBuscaCategoriasID: TIntegerField;
    CDSBuscaCategoriasDETALLE: TStringField;
    CDSBuscaCategoriasPORDEFECTO: TStringField;
    QBuscadorProductos: TFDQuery;
    DSPBuscadorProductos: TDataSetProvider;
    CDSBuscadorProductos: TClientDataSet;
    CDSBuscadorProductosDESCRIPCION: TStringField;
    CDSBuscadorProductosMUESTRAMARCA: TStringField;
    CDSBuscadorProductosMODELO: TStringField;
    CDSBuscadorProductosID: TIntegerField;
    CDSBuscadorProductosMARCA: TStringField;
    CDSBuscadorProductosPROPIETARIO: TStringField;
    CDSBuscadorProductosNOMBRE: TStringField;
    QBuscarNroSerie: TFDQuery;
    QBuscarNroSerieID: TIntegerField;
    QBuscarNroSerieIDENTIFICADOR: TStringField;
    procedure BuscadorPropietarioExecute(Sender: TObject);
    procedure CDSProductosPROPIETARIOSetText(Sender: TField;
      const Text: String);
    procedure BuscarCategoriaExecute(Sender: TObject);
    procedure CDSProductosID_CATEGORIASetText(Sender: TField;
      const Text: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSProductosNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSProductosIDENTIFICADORSetText(Sender: TField;
      const Text: String);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgProductosDblClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarOTExecute(Sender: TObject);
    procedure VerMovimientosExecute(Sender: TObject);
    procedure CDSProductosMARCASetText(Sender: TField; const Text: string);
    procedure BuscarMarcaExecute(Sender: TObject);
  private
    fIdProducto:Integer;
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarCategoria(Dato: Integer): Boolean;
  published
    property IdProducto:Integer read fIdProducto write fIdProducto;
  end;

var
  FormProductos: TFormProductos;

implementation

uses UOrdenDeTrabajo, UMovPorProductos, UBuscadorClientes, UDMain_FD;
{$R *.DFM}

FUNCTION TFormProductos.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('Codigo').Value:=Dato;
  CDSClientes.Open;
  IF Not(CDSClientes.IsEmpty) THEN
    BEGIN
      CDSProductosMUESTRAPROPIETARIO.Value:=CDSClientesNombre.AsString;
      CDSProductosDelCliente.Close;
      CDSProductosDelCliente.Params.ParamByName('propietario').Value:=Dato;
      CDSProductosDelCliente.OPen;
      result:=True;
    END
  ELSE
    Result:=False;
  CDSClientes.Close;
END;

FUNCTION TFormProductos.AsignarCategoria(Dato: Integer): Boolean;
BEGIN
  QCategoriaProducto.Close;
  QCategoriaProducto.Params.ParamByName('id').Value:=Dato;
  QCategoriaProducto.Open;
  IF Not(QCategoriaProducto.IsEmpty) THEN
    BEGIN
      CDSProductosMUESTRACATEGORIA.Value:=QCategoriaProductoDETALLE.AsString;
      result:=True;
    END
  ELSE
    Result:=False;
  QCategoriaProducto.Close;
END;

//Procedure TFomProductos.VerProductosCliente(Dato: String);
//begin

//end;

procedure TFormProductos.BuscadorPropietarioExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    CDSProductosPROPIETARIOSetText(CDSProductosPROPIETARIO,FormBuscadorClientes.Codigo);

end;

procedure TFormProductos.CDSProductosPROPIETARIOSetText(Sender: TField;
  const Text: String);
VAR Aux:String;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
        END;
    end;
end;

procedure TFormProductos.BuscarCategoriaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCategorias.Close;
  CDSBuscaCategorias.Open;
  comBuscadorCategoria.Execute;
  if comBuscadorCategoria.rOk Then
      begin
          CDSProductosID_CATEGORIASetText(CDSProductosID_CATEGORIA,IntToStr(comBuscadorCategoria.id));
      end;
  CDSBuscaCategorias.Close;

end;

procedure TFormProductos.CDSProductosID_CATEGORIASetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarCategoria(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Codigo No válido');
          Sender.AsString:= '';
        END;
    end;

end;

procedure TFormProductos.CDSProductosMARCASetText(Sender: TField;
  const Text: string);
var
  MAux: string;
begin
  if Trim(Text)<>'' then
    begin
      MAux  :=  RightStr('0000'+Text,4);
      inherited;
      QMarca.Close;
      QMarca.ParamByName('codigo').Value  := MAux;
      QMarca.Open;
      if not QMarca.IsEmpty then
        begin
          Sender.AsString   :=  MAux;
          CDSProductosMUESTRAMARCA.AsString :=  QMarcaDESCRIPCION_MARCA.AsString;
        end;
      QMarca.Close;
    end;
end;

procedure TFormProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //CDSCategorias.Close;
  //CDSMarcas.Close;
  //CDSModelos.Close;
  CDSProductos.Close;
  Action:=caFree;
end;

procedure TFormProductos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormProductos:=nil;
end;

procedure TFormProductos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSProductos,DSPProductos);
  CDSProductos.OPen;
  Tabla:='productos';
  Campo:='id';

end;

procedure TFormProductos.CDSProductosNewRecord(DataSet: TDataSet);
//var
  //CatPorDef : TCategoriaProductos;
begin
 // CatPorDef := DatosOrdenDeTrabajo.CategoriaPorDef;
  CDSProductosID.AsInteger                 :=  ibgIdProducto.IncrementFD(1);
  CDSProductosID_CATEGORIA.AsInteger       :=  -1;
  CDSProductosMUESTRACATEGORIA.AsString    :=  '';
  CDSProductosPROPIETARIO.AsString         :=  '';
  CDSProductosIDENTIFICADOR.AsString       :=  '';
  CDSProductosDESCRIPCION.AsString         :=  '';
end;

procedure TFormProductos.AgregarExecute(Sender: TObject);
begin
  CDSProductos.Close;
  CDSProductos.Params.ParamByName('id').Clear;
  CDSProductos.Open;
  CDSProductosDelCliente.Close;
  CDSProductosDelCliente.Params.ParamByName('Propietario').Clear;
  CDSProductosDelCliente.Open;
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormProductos.BuscarExecute(Sender: TObject);
begin
  inherited;
//  with DatosOrdenDeTrabajo do
//    begin
//      CDSBuscadorProductos.Close;
//      if (CDSProductosPROPIETARIO.IsNull) or (CDSProductosPROPIETARIO.AsString='') then
//        CDSBuscadorProductos.Params.ParamByName('codigo').AsString  := '******'
//      else
//        CDSBuscadorProductos.Params.ParamByName('codigo').AsString  := Trim(CDSProductosPROPIETARIO.AsString);

      CDSBuscadorProductos.Open;
      comBuscadorBase.Execute;
      if comBuscadorBase.rOk Then
          begin
            DatoNew:=IntToStr(comBuscadorBase.Id);
            Recuperar.Execute;
          end;
      CDSBuscadorProductos.Close;

end;

procedure TFormProductos.BuscarMarcaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaMarcas.Close;
  CDSBuscaMarcas.Open;
  comBuscadorMarca.Execute;
  if comBuscadorMarca.rOk Then
      CDSProductosMARCASetText(CDSProductosMARCA,comBuscadorMarca.Id);
  CDSBuscaMarcas.Close;

end;

procedure TFormProductos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSProductos.Close;
  CDSProductos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSProductos.Open;
  CDSProductosDelCliente.Close;
  CDSProductosDelCliente.Params.ParamByName('propietario').Value:=CDSProductosPROPIETARIO.Value;
  CDSProductosDelCliente.OPen;
  CDSOrdenTrabajo.Close;
  CDSOrdenTrabajo.Params.ParamByName('codigo').Value:=CDSProductosID.Value;
  CDSOrdenTrabajo.Open;
  DatoNew:=''+DatoNew+'';
  pnPrincipal.Enabled:=True;
end;

procedure TFormProductos.CancelarExecute(Sender: TObject);
begin
  CDSProductos.Close;
  CDSProductos.Params.ParamByName('id').Clear;
  CDSProductos.Open;
  CDSProductosDelCliente.Close;
  CDSProductosDelCliente.Params.ParamByName('Propietario').Clear;
  CDSProductosDelCliente.Open;
  inherited;
end;

procedure TFormProductos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSProductosID.AsString;
  inherited;
  Recuperar.Execute;
  fIdProducto:=CDSProductosID.AsInteger;

  {if CDSProductosID_CATEGORIA.AsString<>'' Then
    if CDSProductosPROPIETARIO.AsString<>'' Then
      begin
        inherited;
        Recuperar.Execute;
      end
    else ShowMessage('Falta el propietario del producto')
  else ShowMessage('Falta la categoría del producto');    }

end;

procedure TFormProductos.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormProductos.CDSProductosIDENTIFICADORSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  QBuscarNroSerie.Close;
  QBuscarNroSerie.ParamByName('Identificador').Value:=Sender.AsString;
  QBuscarNroSerie.Open;
  if Not(QBuscarNroSerie.IsEmpty) Then
    begin
      if MessageDlg('El Numero de Identificacion ya fue ingresado...'+#13+'Verifique.....'+#13+'Desea ver a quien pertence?...',mtInformation,[mbYes, mbNo], 0)=mrYes Then
        begin
          DatoNew:=QBuscarNroSerieID.AsString;
          Recuperar.Execute;
        end
      else
        begin
       //   Sender.AsString:='';
          dbeIdentificador.SetFocus;
        end;
    end;
  QBuscarNroSerie.Close;
end;

procedure TFormProductos.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  pnCabecera.Enabled:=DSBase.State<>dsBrowse;
end;



procedure TFormProductos.dbgProductosDblClick(Sender: TObject);
begin
  inherited;
  DatoNew:=CDSProductosDelCliente.Fields[0].Value;
  Recuperar.Execute;
end;

procedure TFormProductos.BorrarExecute(Sender: TObject);
begin
  inherited;
  CDSProductos.Close;
  CDSProductos.Params.ParamByName('id').Clear;
  CDSProductos.Open;
  CDSProductosDelCliente.Close;
  CDSProductosDelCliente.Params.ParamByName('Propietario').Clear;
  CDSProductosDelCliente.Open;
end;

procedure TFormProductos.BuscarOTExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormOrdenDeTrabajo)) Then
    FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(Application);
  FormOrdenDeTrabajo.TipoCpbte:='OT';
  FormOrdenDeTrabajo.DatoNew:=CDSOrdenTrabajoID_OT.AsString;
  FormOrdenDeTrabajo.Recuperar.Execute;
end;

procedure TFormProductos.VerMovimientosExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(formMovProductos)) Then
    FormMovProductos:=TFormMovProductos.Create(FormProductos);
  formMovProductos.CDSMov.Close;
  formMovProductos.CDSMov.Params.ParamByName('codigo').Value:=CDSProductosID.Value;
  formMovProductos.CDSMov.Open;
  formMovProductos.ShowModal;
end;

end.
