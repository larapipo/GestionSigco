unit UUsuariosMovil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Datasnap.Provider, Datasnap.DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.DBCtrls, Vcl.Mask, cxTextEdit, cxDBEdit,
  AdvDBLookupComboBox, JvDBLookup, AdvCombo, AdvDBComboBox, Vcl.Grids,
  Vcl.DBGrids, IBGenerator,System.StrUtils, AdvSmoothButton, JvExMask,
  JvToolEdit;

type
  TFormUsuariosMoviles = class(TFormABMBase)
    QUsuarios: TFDQuery;
    QVendedores: TFDQuery;
    CDSUsuarios: TClientDataSet;
    DSPUsuarios: TDataSetProvider;
    QVendedoresCODIGO: TStringField;
    QVendedoresNOMBRE: TStringField;
    CDSUsuariosID: TIntegerField;
    CDSUsuariosNOMBRE: TStringField;
    CDSUsuariosUSUARIO: TStringField;
    CDSUsuariosPASSWORD: TStringField;
    CDSUsuariosPERFIL: TIntegerField;
    CDSUsuariosVENDEDOR: TStringField;
    CDSUsuariosCOBRADOR: TStringField;
    DSVendedor: TDataSource;
    QueryBUscador: TFDQuery;
    QueryBUscadorNOMBRE: TStringField;
    QueryBUscadorID: TIntegerField;
    QCobradores: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DSCobrador: TDataSource;
    CDSUsuariosDESCUENTO_ADICIONAL: TFloatField;
    CDSUsuariosLISTA_POR_DEFECTO: TIntegerField;
    QListas: TFDQuery;
    DSListas: TDataSource;
    QListasID: TIntegerField;
    QListasNOMBRE: TStringField;
    pcDatos: TPageControl;
    tsPrincipal: TTabSheet;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    JvDBLookupCombo2: TJvDBLookupCombo;
    AdvDBComboBox1: TAdvDBComboBox;
    JvDBLookupCombo1: TJvDBLookupCombo;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    tsDescuentos: TTabSheet;
    dbgDetalle: TDBGrid;
    Panel2: TPanel;
    QDetalle: TFDQuery;
    DSPDetalle: TDataSetProvider;
    CDSDetalle: TClientDataSet;
    ibgDetalle: TIBGenerator;
    CDSDetalleID: TIntegerField;
    CDSDetalleID_USUARIO: TIntegerField;
    CDSDetalleCODIGO: TStringField;
    CDSDetalleDESCUENTO: TFloatField;
    CDSDetalleMUESTRASTK: TStringField;
    QStock: TFDQuery;
    BuscarArticulo: TAction;
    DSDetalle: TDataSource;
    QDetalleID: TIntegerField;
    QDetalleID_USUARIO: TIntegerField;
    QDetalleCODIGO: TStringField;
    QDetalleDESCUENTO: TFloatField;
    QDetalleMUESTRASTK: TStringField;
    QUsuariosID: TIntegerField;
    QUsuariosNOMBRE: TStringField;
    QUsuariosUSUARIO: TStringField;
    QUsuariosPASSWORD: TStringField;
    QUsuariosPERFIL: TIntegerField;
    QUsuariosVENDEDOR: TStringField;
    QUsuariosCOBRADOR: TStringField;
    QUsuariosDESCUENTO_ADICIONAL: TFloatField;
    QUsuariosLISTA_POR_DEFECTO: TIntegerField;
    QUsuariosCLIENTE: TStringField;
    CDSUsuariosCLIENTE: TStringField;
    Label10: TLabel;
    BuscarCliente: TAction;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
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
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesCORREOELECTRONICO_2: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesDIAS_MAYOR_30: TIntegerField;
    QClientesTIPOABONO: TStringField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesFOTO: TBlobField;
    QClientesCON_MONITOREO: TStringField;
    QClientesCON_GPRS: TStringField;
    QClientesCON_HOSTING: TStringField;
    QClientesCOMUNITARIO: TStringField;
    QClientesID_PRESTADOR: TIntegerField;
    QClientesMES_ADICIONAL: TIntegerField;
    QClientesMES_SEMESTRAL: TIntegerField;
    QClientesMOROSO: TStringField;
    QClientesPLANTILLA_CIVA: TStringField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QClientesAVISO: TStringField;
    QClientesRUBRO: TIntegerField;
    QClientesMUESTRACOORPORATIVO: TStringField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    edNombreCliente: TDBEdit;
    QUsuariosNOMBRECLIENTE: TStringField;
    CDSUsuariosNOMBRECLIENTE: TStringField;
    ceCliente: TJvDBComboEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSUsuariosNewRecord(DataSet: TDataSet);
    procedure CDSDetalleNewRecord(DataSet: TDataSet);
    procedure CDSDetalleCODIGOSetText(Sender: TField; const Text: string);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSUsuariosCLIENTESetText(Sender: TField; const Text: string);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvDBComboBox1Change(Sender: TObject);
  private
    function VerificaCargado(Dato: STRING): Boolean;
    { Private declarations }
  public
    { Public declarations }
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
  end;

var
  FormUsuariosMoviles: TFormUsuariosMoviles;

implementation

uses UDMain_FD, UBuscadorArticulos, UBuscadorClientes;
{$R *.dfm}

FUNCTION TFormUsuariosMoviles.VerificaCargado(Dato: STRING): Boolean;
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSDetalle,True);
  Result:= CDSClone.Locate('CODIGO',Dato,[]);
  FreeAndNil(CDSClone);
//
end;


procedure TFormUsuariosMoviles.AdvDBComboBox1Change(Sender: TObject);
begin
  inherited;
  ceCliente.Enabled:= AdvDBComboBox1.ItemIndex=3 ;
  if AdvDBComboBox1.ItemIndex<>3 then
    begin
      CDSUsuariosCLIENTE.AsString       := '';
      CDSUsuariosNOMBRECLIENTE.AsString := '';
    end;
end;

FUNCTION TFormUsuariosMoviles.ASignarArticulo(Dato: STRING): Boolean;
VAR
  Recargo: Variant;
BEGIN
  IF CDSDetalle.State = dsBrowse THEN
    CDSDetalle.Edit;
  QStock.Close;
  QStock.ParamByName('Codigo').Value:=Dato;
  QStock.Open;
  IF NOT (QStock.IsEmpty) THEN
    BEGIN
      CDSDetalleMUESTRASTK.AsString   := QStock.Fields[0].AsString;
      Result:=True;
     END
   ELSE
     begin
      CDSDetalleMUESTRASTK.AsString   := '';
      Result:=False;
     end;
END;



procedure TFormUsuariosMoviles.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos := TFormBuscadorArticulos.Create(self);
      FormBuscadorArticulos.Param1      := 1;
      FormBuscadorArticulos.Param2      := 3;
      FormBuscadorArticulos.Param3      := 3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;
      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;

      if FormBuscadorArticulos.Codigo<>'' Then
     if VerificaCargado(FormBuscadorArticulos.Codigo)=False then
         begin
           //    DatosVentas.wwCDSVentaDetCodigoArticuloSetText(DatosVentas.wwCDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);
           IF CDSDetalle.State = dsBrowse THEN
             CDSDetalle.Edit;
           CDSDetalleCODIGOSetText(CDSDetalleCODIGO,FormBuscadorArticulos.Codigo);
         end
       else
         ShowMessage('Codigo cargado...');


   //     CDSDetalleCODIGOSetText(CDSDetalleCODIGO,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormUsuariosMoviles.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
 
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
      CDSUsuariosCLIENTE.AsString :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          CDSUsuariosNOMBRECLIENTE.AsString:=QClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;
      QClientes.Close;
    END;
end;

procedure TFormUsuariosMoviles.BuscarExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorBase.Data.Open;
  combuscadorBase.Execute;
  if IntToStr(ComBuscadorBase.Id)<>'' then
    begin
      datonew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormUsuariosMoviles.CDSDetalleCODIGOSetText(Sender: TField;
  const Text: string);
VAR S,CodTxt,Aux,CodAlternativo: STRING;
Enter:Char;
begin
   Enter:=#13;
   if  (Text<>'') and (Text[1]<>#13) Then
    begin
      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSDetalle,False);
      S:= Sender.AsString;
      if VerificaCargado(s)=False then
        begin
          IF AsignarArticulo(s) = False THEN
            BEGIN
             // Busqueda por codigo
              IF (Assigned(FormBuscadorArticulos)) THEN
                FreeAndNil(FormBuscadorArticulos);
              IF Not(Assigned(FormBuscadorArticulos)) THEN
                FormBuscadorArticulos := TFormBuscadorArticulos.Create(Self);
              FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
              FormBuscadorArticulos.CampoNro          := 0;
              FormBuscadorArticulos.Param1 :=1;
              FormBuscadorArticulos.Param2 :=3;
              FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
              FormBuscadorArticulos.Esquema     :=-1;
              FormBuscadorArticulos.Dato              := S;
              if FormBuscadorArticulos.Visible=False Then
                FormBuscadorArticulos.ShowModal;
              if FormBuscadorArticulos.Codigo<>'' Then
                begin
                  IF CDSDetalle.State = dsBrowse THEN
                    CDSDetalle.Edit;
                  CDSDetalleCODIGOSetText(CDSDetalleCODIGO,FormBuscadorArticulos.Codigo);
                end
              else
                Sender.AsString:='';
            END;
          if DMMain_FD.EncontroCodigoBarra Then
            dbgDetalle.OnKeyPress(dbgDetalle,Enter);
        end
      else
        begin
          ShowMessage('Ya existe.....');
          Sender.AsString:='';
          dbgDetalle.SelectedIndex:=0;
        end;
    end;
end;

procedure TFormUsuariosMoviles.CDSDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDetalleID.Value         := ibgDetalle.IncrementFD(1);
  CDSDetalleID_USUARIO.Value := CDSUsuariosID.Value;
  CDSDetalleDESCUENTO.Value  := 0;
end;

procedure TFormUsuariosMoviles.CDSUsuariosCLIENTESetText(Sender: TField;
  const Text: string);
BEGIN
  Sender.AsString:=Text;
  if (Trim(Sender.AsString)<>'') then
    Sender.AsString := Copy('000000', 1, 6 - (Length(Text))) + Text;
  QClientes.Close;
  QClientes.ParamByName('Codigo').Value := Sender.AsString;
  QClientes.Open;
  IF NOT(QClientes.IsEmpty) THEN
    begin
      CDSUsuariosNOMBRECLIENTE.AsString:= QClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
  QClientes.Close;

end;

procedure TFormUsuariosMoviles.CDSUsuariosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSUsuariosID.Value:=QUltimoCodigo2.Fields[0].AsInteger +1
  else
    CDSUsuariosID.Value:=1;
  QUltimoCodigo2.Close;

  CDSUsuariosDESCUENTO_ADICIONAL.Value:=0;
  CDSUsuariosLISTA_POR_DEFECTO.Value  :=DMMain_FD.ListaPorDefecto(-1);
end;



procedure TFormUsuariosMoviles.ceClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) or (Key=VK_BACK) then
    begin
      CDSUsuariosCLIENTE.AsString      :='';
      CDSUsuariosNOMBRECLIENTE.AsString:='';

    end;
end;

procedure TFormUsuariosMoviles.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSUsuariosID.AsString;
  if (CDSDetalle.State in [dsInsert,dsEdit]) then
    if (Trim(CDSDetalleCODIGO.AsString)='')  then
      CDSDetalle.Cancel;

  if CDSDetalle.State<>dsBrowse then
    CDSDetalle.Post;
  inherited;
  Recuperar.Execute;

end;

procedure TFormUsuariosMoviles.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF dbgDetalle.SelectedIndex in [1]  THEN
    dbgDetalle.SelectedIndex := 2;

end;

procedure TFormUsuariosMoviles.dbgDetalleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 2) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex +1
      else
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
        IF dbgDetalle.SelectedField = CDSDetalleCODIGO THEN
          BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        dbgDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormUsuariosMoviles.DSBaseStateChange(Sender: TObject);
begin
  inherited;
   pnPrincipal.Enabled  := True;
   tsPrincipal.Enabled  := DSBase.State in [dsinsert,dsedit];
   tsDescuentos.Enabled := True;
   dbgDetalle.ReadOnly  := DSBase.State=dsBrowse;
end;

procedure TFormUsuariosMoviles.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormUsuariosMoviles.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSUsuarios,DSPUsuarios);
  AddClientDataSet(CDSDetalle,DSPDetalle);
  QVendedores.Open;
  QCobradores.Open;
  Tabla := 'usuarios_app';
  campo := 'id';
  QListas.Open;
  CDSUsuarios.Open;
  CDSDetalle.Open;
  pcDatos.ActivePageIndex:=0;

end;

procedure TFormUsuariosMoviles.FormDestroy(Sender: TObject);
begin
  inherited;
  FormUsuariosMoviles:=nil;
end;

procedure TFormUsuariosMoviles.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSUsuarios.Close;
  CDSUsuarios.Params.ParamByName('id').Value:=StrToInt(datoNew);
  CDSUsuarios.Open;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id_usuario').Value:=StrToInt(datoNew);
  CDSDetalle.Open;
  ceCliente.Enabled:= AdvDBComboBox1.ItemIndex=3 ;
 

end;

end.
