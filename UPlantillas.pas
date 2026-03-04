unit UPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, IBGenerator,
  DBClient, Provider, Mask, DBCtrls, JvDBLookup, Grids, DBGrids, JvExDBGrids,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, JvDBGrid,
  Data.SqlExpr, JvFormPlacement, JvLabel, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormPlantillas = class(TFormABMBase)
    DSPPlantillasCab: TDataSetProvider;
    CDSPlantillasCab: TClientDataSet;
    CDSPlantillasCabID: TIntegerField;
    DSPPlantillaDet: TDataSetProvider;
    CDSPlantillaDet: TClientDataSet;
    CDSPlantillaDetID: TIntegerField;
    CDSPlantillaDetID_CAB: TIntegerField;
    CDSPlantillaDetCODIGO: TStringField;
    CDSPlantillaDetDETALLE: TStringField;
    DSPlantillaDet: TDataSource;
    BuscarArticulo: TAction;
    ibgDet: TIBGenerator;
    pgcPlantilla: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeDetalle: TDBEdit;
    dbgDetalle: TJvDBGrid;
    Panel2: TPanel;
    dbeTotal: TDBEdit;
    DBEdit1: TDBEdit;
    CDSPlantillasCabDETALLE: TStringField;
    DSPPlantillaClientes: TDataSetProvider;
    CDSPlantillaClientes: TClientDataSet;
    CDSPlantillaClientesMUESTRARAZONSOCIAL: TStringField;
    DSPlantillaClientes: TDataSource;
    dbgClientes: TJvDBGrid;
    BuscarCliente: TAction;
    DSPBuscaPlantilla: TDataSetProvider;
    CDSBuscaPlantilla: TClientDataSet;
    CDSBuscaPlantillaID: TIntegerField;
    CDSBuscaPlantillaDETALLE: TStringField;
    dbchConIva: TDBCheckBox;
    CDSPlantillasCabPRECIOS_CONIVA: TStringField;
    QPlantillaClienes: TFDQuery;
    QPlantillasCab: TFDQuery;
    QPlantillaDet: TFDQuery;
    QPlantillaDetID: TIntegerField;
    QPlantillaDetID_CAB: TIntegerField;
    QPlantillaDetCODIGO: TStringField;
    QPlantillaDetDETALLE: TStringField;
    QPlantillaDetCANTIDAD: TFloatField;
    QPlantillaDetPRECIO: TFloatField;
    QPlantillaDetP_TOTAL: TFloatField;
    QPlantillasCabID: TIntegerField;
    QPlantillasCabDETALLE: TStringField;
    QPlantillasCabTOTAL: TFloatField;
    QPlantillasCabPRECIOS_CONIVA: TStringField;
    CDSPlantillasCabTOTAL: TFloatField;
    CDSPlantillaDetCANTIDAD: TFloatField;
    CDSPlantillaDetPRECIO: TFloatField;
    CDSPlantillaDetP_TOTAL: TFloatField;
    QUltimoCodigo2MAX: TIntegerField;
    QBuscaPlantillas: TFDQuery;
    CDSBuscaPlantillaTOTAL: TFloatField;
    QStock: TFDQuery;
    QStockCOSTO_GRAVADO_STK: TFloatField;
    QStockCOSTO_IVA: TFloatField;
    QStockCOSTO_FINAL: TFloatField;
    QStockCOSTO_EXENTO_STK: TFloatField;
    QStockCOSTO_TOTAL_STK: TFloatField;
    QStockREEMPLAZO_STK: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_IVA: TFloatField;
    QStockFIJACION_PRECIO_FINAL: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    QStockFUAP: TSQLTimeStampField;
    QStockUNIDAD: TStringField;
    QStockCONTROLASTOCK: TStringField;
    QStockCODIGO_PROVEEDOR: TStringField;
    QStockCLASE_ARTICULO: TIntegerField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockCON_IMP_INT: TStringField;
    QStockIMPUESTO_INTERNOS: TFloatField;
    QStockGRAVADO_IB: TStringField;
    QStockTASA_IB: TIntegerField;
    QStockACTUALIZACOSTO: TStringField;
    QStockDEPRODUCCION: TStringField;
    QStockPRODUCCIONDIRECTA: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTENIDO_COMPRA: TFloatField;
    QStockCONTROL_SERIE: TStringField;
    QStockUSA_CODIGOBARRA: TStringField;
    QStockUNIDAD_ULTIMAUSADA: TStringField;
    QStockID_TABLAPRECIOS: TIntegerField;
    QStockID_TABLAPRECIOSDETALLE: TIntegerField;
    QStockCODIGO_PRECIO: TIntegerField;
    QStockFECHA_ALTA: TSQLTimeStampField;
    QStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    QStockCOSTO_EXENTO_SOMBRA: TFloatField;
    QStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    QStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    QStockMONEDA: TIntegerField;
    QStockCOSTO_GRAVADO_P: TFloatField;
    QStockCOSTO_EXENTO_P: TFloatField;
    QStockCOSTO_TOTAL_P: TFloatField;
    QStockPOSICION: TStringField;
    QStockPRESENTACION_UNIDAD: TStringField;
    QStockPRESENTACION_CANTIDAD: TFloatField;
    QStockEDITAPRECIO: TStringField;
    QStockEDITADETALLE: TStringField;
    QStockURL: TStringField;
    QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QStockCOMANDA: TStringField;
    QStockPORCENTAJE_SOBRECOSTO: TFloatField;
    QStockRUBRO_GASTO: TStringField;
    QStockRUBRO_CTA_GASTO: TStringField;
    QStockPUBLICAR_WEB: TStringField;
    QStockGTIA_MESES: TIntegerField;
    QStockGARANTIAOFICIAL: TStringField;
    QStockADICIONAL_SOBRECOSTO: TFloatField;
    QStockIMPRIMIR_LSTPRECIOS: TStringField;
    QStockCONTROL_TRAZABILIDAD: TStringField;
    QStockIVA_MODIFICADO: TStringField;
    QStockSIGLAS: TStringField;
    QStockPRESENTACION_2_CANT: TFloatField;
    QBuscaCliente: TFDQuery;
    QBuscaClientePlantilla: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockDETALLE_STK_ADICIONAL: TStringField;
    QStockCODIGO_BARRAS: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QBuscaClientePlantillaID: TIntegerField;
    QBuscaClienteCODIGO: TStringField;
    QBuscaClienteRAZON_SOCIAL: TStringField;
    QPlantillaClienesID_PLANTILLA: TIntegerField;
    QPlantillaClienesCODIGO: TStringField;
    QPlantillaClienesMUESTRARAZONSOCIAL: TStringField;
    CDSPlantillaClientesID_PLANTILLA: TIntegerField;
    CDSPlantillaClientesCODIGO: TStringField;
    QBorrarPlantilla: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSPlantillasCabNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSPlantillaDetCODIGOSetText(Sender: TField; const Text: string);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure CDSPlantillaDetNewRecord(DataSet: TDataSet);
    procedure CDSPlantillaDetCANTIDADSetText(Sender: TField;
      const Text: string);
    procedure CDSPlantillaDetPRECIOSetText(Sender: TField; const Text: string);
    procedure CDSPlantillaDetAfterPost(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSPlantillaClientesCODIGOSetText(Sender: TField; const Text: string);
    procedure dbgClientesKeyPress(Sender: TObject; var Key: Char);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSPlantillaDetBeforePost(DataSet: TDataSet);
    procedure dbchConIvaClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSPlantillaClientesNewRecord(DataSet: TDataSet);
    procedure dbgClientesDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CDSPlantillaClientesAfterPost(DataSet: TDataSet);
    procedure CDSPlantillaClientesBeforeDelete(DataSet: TDataSet);
    procedure dbgClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarArticulo(dato:String):Boolean;
  end;

var
  FormPlantillas: TFormPlantillas;

implementation

uses UDMain_FD, UBuscadorArticulos, UBuscadorClientes, UClientes_2;

{$R *.dfm}

procedure TFormPlantillas.AgregarExecute(Sender: TObject);
begin
  CDSPlantillasCab.Close;
  CDSPlantillasCab.Params.ParamByName('id').Clear;
  CDSPlantillasCab.Open;

  CDSPlantillaDet.Close;
  CDSPlantillaDet.Params.ParamByName('id').Clear;
  CDSPlantillaDet.Open;

  CDSPlantillaClientes.Close;
  CDSPlantillaClientes.Params.ParamByName('id').Clear;
  CDSPlantillaClientes.Open;
  inherited;
  pgcPlantilla.ActivePageIndex:=0;
  dbeDetalle.SetFocus;
end;

function TFormPlantillas.AsignarArticulo(dato:String):Boolean;
begin
  QStock.Close;
  QStock.ParamByName('codigo').Value:=dato;
  QStock.Open;
  if Not(QStock.IsEmpty) then
    begin
      Result:=True;
      CDSPlantillaDetCODIGO.Value :=QStockCODIGO_STK.Value;
      CDSPlantillaDetDETALLE.Value:=QStockDETALLE_STK.Value;
    end
  else
    begin
      Result:=False;
      CDSPlantillaDetCODIGO.Clear;
      CDSPlantillaDetDETALLE.Clear;
    end;
  QStock.Close;
end;

procedure TFormPlantillas.BorrarExecute(Sender: TObject);
begin
  if CDSPlantillaClientes.IsEmpty Then
    inherited
  else
    ShowMessage('Plantillas en Uso.....');

end;

procedure TFormPlantillas.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
 IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
     FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    CDSPlantillaDetCODIGOSetText(CDSPlantillaDetCODIGO,FormBuscadorArticulos.Codigo);
end;

procedure TFormPlantillas.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormBuscadorClientes)) then
    FormBuscadorClientes:=TFormBuscadorClientes.Create(self);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     CDSPlantillaClientesCODIGOSetText(CDSPlantillaClientesCODIGO,FormBuscadorClientes.Codigo);  
end;

procedure TFormPlantillas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPlantilla.Close;
  CDSBuscaPlantilla.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaPlantilla.Close;
end;

procedure TFormPlantillas.CancelarExecute(Sender: TObject);
begin
  CDSPlantillasCab.Close;
  CDSPlantillasCab.Params.ParamByName('id').Clear;
  CDSPlantillasCab.Open;

  CDSPlantillaDet.Close;
  CDSPlantillaDet.Params.ParamByName('id').Clear;
  CDSPlantillaDet.Open;

  CDSPlantillaClientes.Close;
  CDSPlantillaClientes.Params.ParamByName('id').Clear;
  CDSPlantillaClientes.Open;
  inherited;
  pgcPlantilla.ActivePageIndex:=0;
  btNuevo.SetFocus;
end;


procedure TFormPlantillas.CDSPlantillaClientesAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSPlantillaClientes.ApplyUpdates(-1);
end;

procedure TFormPlantillas.CDSPlantillaClientesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CDSPlantillaClientes.Cancel;
end;

procedure TFormPlantillas.CDSPlantillaClientesCODIGOSetText(Sender: TField;
  const Text: string);
var
CDSClone:TClientDataSet;
begin
  inherited;
  if (Text<>'') and (Text <>#13) then
    begin
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSPlantillaClientes,True);
      if CDSPlantillaClientes.state in [dsBrowse] then
        CDSPlantillaClientes.Edit;
      Sender.AsString:=Copy('000000',1,6-Length(Text))+Text;
      QBuscaCliente.Close;
      QBuscaCliente.ParamByName('Codigo').AsString:=Sender.AsString;
      QBuscaCliente.Open;

      QBuscaClientePlantilla.Close;
      QBuscaClientePlantilla.ParamByName('Codigo').AsString:=Sender.AsString;
      QBuscaClientePlantilla.Open;

      if QBuscaClientePlantillaID.AsString<>'' then
        begin
          ShowMessage('Cliente en otra plantilla , verifique...' +
                      'Codigo de Plantilla: '+ QBuscaClientePlantillaID.AsString );
          CDSPlantillaClientes.Cancel;
        end
      else
        if not(QBuscaCliente.IsEmpty) then
          begin
            if Not(CDSClone.Locate('codigo',Sender.AsString,[])) Then
              begin
                if CDSPlantillaClientes.state in [dsBrowse] then
                   CDSPlantillaClientes.Edit;
                CDSPlantillaClientesMUESTRARAZONSOCIAL.Value :=QBuscaClienteRAZON_SOCIAL.Value;
               end
            else
              begin
                ShowMessage('Cliente ya cargado en la lista.....!!!');
                CDSPlantillaClientes.Cancel;
                //Sender.Clear;
               // CDSPlantillaClientes.Cancel;
               // SysUtils.Abort;
              end

          end;
      CDSClone.Free;
    end;
end;

procedure TFormPlantillas.CDSPlantillaClientesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPlantillaClientesID_PLANTILLA.Value:=CDSPlantillasCabID.Value;
end;

procedure TFormPlantillas.CDSPlantillaDetAfterPost(DataSet: TDataSet);
var p:TBookmark;
Aux:real;
begin
  inherited;
  Aux:=0;
  p:=CDSPlantillaDet.GetBookmark;
  CDSPlantillaDet.First;
  CDSPlantillaDet.DisableControls;
  while not(CDSPlantillaDet.Eof) do
    begin
      Aux:=Aux+CDSPlantillaDetP_TOTAL.AsFloat;
      CDSPlantillaDet.Next;
    end;
  CDSPlantillaDet.GotoBookmark(p);
  CDSPlantillaDet.FreeBookmark(p);
  CDSPlantillaDet.EnableControls;
  if CDSPlantillasCab.State in [dsBrowse] then
    CDSPlantillasCab.Edit;
  
  CDSPlantillasCabTOTAL.AsFloat:=Aux;
end;

procedure TFormPlantillas.CDSPlantillaDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (CDSPlantillaDetCODIGO.AsString='') or (CDSPlantillaDetDETALLE.AsString='') then
    begin
      SysUtils.Abort;
      CDSPlantillaDet.Cancel;
    end;
  
end;

procedure TFormPlantillas.CDSPlantillaDetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=text;
  CDSPlantillaDetP_TOTAL.AsFloat := Sender.AsFloat * CDSPlantillaDetPRECIO.AsFloat;
end;

procedure TFormPlantillas.CDSPlantillaDetCODIGOSetText(Sender: TField;
  const Text: string);
var s:String;
begin
  inherited;
  if ((Text<>'') and (Text<>#13)) then
    begin
      S:=Text;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));
      if (CDSPlantillaDet.State=dsBrowse) then
        CDSPlantillaDet.Edit;
      Sender.AsString:=s;
      if Not(AsignarArticulo(s)) then
        begin
          Sender.Clear;
          ShowMessage('dato no Valido..');
        end;
  end;
end;

procedure TFormPlantillas.CDSPlantillaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPlantillaDetID.Value      :=ibgDet.IncrementFD(1);
  CDSPlantillaDetID_CAB.Value  :=CDSPlantillasCabID.Value;
  CDSPlantillaDetCANTIDAD.AsFloat:=0;
  CDSPlantillaDetPRECIO.AsFloat  :=0;
  CDSPlantillaDetP_TOTAL.AsFloat :=0;

end;

procedure TFormPlantillas.CDSPlantillaDetPRECIOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=text;
  CDSPlantillaDetP_TOTAL.AsFloat := CDSPlantillaDetCANTIDAD.AsFloat * Sender.AsFloat;
end;

procedure TFormPlantillas.CDSPlantillasCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSPlantillasCabID.Value :=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSPlantillasCabID.Value           :=1;
  QUltimoCodigo2.Close;
  CDSPlantillasCabTOTAL.AsFloat        :=0;
  CDSPlantillasCabPRECIOS_CONIVA.Value :='S';
end;

procedure TFormPlantillas.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPlantillasCabID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;


procedure TFormPlantillas.dbchConIvaClick(Sender: TObject);
begin
  inherited;
  if dbchConIva.Checked then
    dbchConIva.Caption:='Precios Con Iva Incluido'
  else
    dbchConIva.Caption:='Precios Sin Iva Incluido';

end;

procedure TFormPlantillas.dbgClientesDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(Self);
  FormClientes_2.DatoNew:=CDSPlantillaClientesCODIGO.AsString;
  FormClientes_2.Recuperar.Execute;
  FormClientes_2.Show;
end;

procedure TFormPlantillas.dbgClientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    begin
      QBorrarPlantilla.Close;
      QBorrarPlantilla.ParamByName('codigo').Value:=CDSPlantillaClientesCODIGO.Value;
      QBorrarPlantilla.ExecSQL;
      QBorrarPlantilla.Close;
      Recuperar.Execute;
    end;
end;

procedure TFormPlantillas.dbgClientesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgClientes.SelectedField = CDSPlantillaClientesCODIGO THEN
           BuscarCliente.Execute;
      END;
end;

procedure TFormPlantillas.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
 IF DBGDetalle.SelectedIndex = 4 THEN
    DBGDetalle.SelectedIndex := 3;
end;

procedure TFormPlantillas.dbgDetalleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 3) THEN
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
        IF dbgDetalle.SelectedField = CDSPlantillaDetCODIGO THEN
           BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        dbgDetalle.DataSource.DataSet.Cancel;
end;

procedure TFormPlantillas.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  pag1.Enabled:=DSBase.State in [dsInsert,dsEdit];
  dbgClientes.ReadOnly :=DSBase.State = dsBrowse;
end;

procedure TFormPlantillas.FormActivate(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.State=dsBrowse) then
    Recuperar.Execute;

end;

procedure TFormPlantillas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CDSPlantillasCab.Close;
  CDSPlantillaDet.Close;
  CDSPlantillaClientes.Close;

  Action:=caFree;
end;

procedure TFormPlantillas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBde:=2;
  Panel2.BevelOuter:=bvNone;
  AddClientDataSet(CDSPlantillasCab,DSPPlantillasCab);
  AddClientDataSet(CDSPlantillaDet,DSPPlantillaDet);
//  AddClientDataSet(CDSPlantillaClientes,DSPPlantillaClientes);
  pgcPlantilla.ActivePageIndex:=0;
  CDSPlantillasCab.Open;
  CDSPlantillaDet.Open;
  //CDSPlantillaClientes.Open;
  Tabla:='Plantillas_cab';
  Campo:='id';
end;

procedure TFormPlantillas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlantillas:=nil;
end;

procedure TFormPlantillas.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPlantillasCab.Close;
  CDSPlantillasCab.Params.ParamByName('id').Value     :=StrToInt(DatoNew);
  CDSPlantillasCab.Open;

  CDSPlantillaDet.Close;
  CDSPlantillaDet.Params.ParamByName('id').Value      :=StrToInt(DatoNew);
  CDSPlantillaDet.Open;

  CDSPlantillaClientes.Close;
  CDSPlantillaClientes.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSPlantillaClientes.Open;


end;

end.
