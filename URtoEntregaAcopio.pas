unit URtoEntregaAcopio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, JvFormPlacement, ImgList,ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, DBCtrls, Grids, DBGrids, JvExDBGrids,
  JvExMask, JvToolEdit, IBGenerator, JvBaseEdits, frxClass, frxDBSet,
  JvMaskEdit, JvDBFindEdit, JvAppStorage, JvAppIniStorage, System.Actions,
  Data.FMTBcd, Data.DB, Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxLabel, JvGradient, AdvSearchList, AdvSearchEdit,
  DBAdvSearchEdit, dxSkinWXI, frCoreClasses, AdvSmoothButton;

type
  TFormRtoEntregaAcopio = class(TFormABMBase)
    DSRtoDet: TDataSource;
    pnRtoEntrega: TPanel;
    pnAcopio: TPanel;
    pnCab: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit1: TJvDBDateEdit;
    DSMercDet: TDataSource;
    DSMercCab: TDataSource;
    pnCabMerc: TPanel;
    Label7: TLabel;
    ceCliente: TJvComboEdit;
    BuscarCliente: TAction;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TJvDBCalcEdit;
    DBEdit8: TJvDBCalcEdit;
    Label6: TLabel;
    frRemitos: TfrxReport;
    frxDBDet: TfrxDBDataset;
    frxDBCab: TfrxDBDataset;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    VerCompAcopio: TAction;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorNUMERO: TStringField;
    CDSBuscadorFECHA: TSQLTimeStampField;
    CDSBuscadorCLIENTE: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    frxDBPendientes: TfrxDBDataset;
    Label10: TLabel;
    RxLabel4: TJvLabel;
    RxCDeposito: TJvDBComboEdit;
    dbeMuestraDeposito: TDBEdit;
    DSPDeposito: TDataSetProvider;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    BuscaDeposito: TAction;
    JvDBFindEdit1: TJvDBFindEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    ComBuscadorDeposito: TComBuscador;
    DBText1: TDBText;
    QBuscador: TFDQuery;
    QRtoAcopio: TFDQuery;
    QRtoAcopioID: TIntegerField;
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
    BitBtn1: TBitBtn;
    GeneraRemito: TAction;
    LFinalizado: TcxLabel;
    chCumplidos: TCheckBox;
    CDSBuscadorCUMPLIDO: TStringField;
    CDSBuscadorNRO_FACTURA: TStringField;
    CDSBuscadorNROACOPIO: TStringField;
    Label12: TLabel;
    edRemito: TDBEdit;
    dbgMerca: TDBGrid;
    dbgMercCab: TDBGrid;
    dbgRtoDet: TDBGrid;
    QBuscaCliente: TFDQuery;
    DSPBuscaCliente: TDataSetProvider;
    CDSBuscaCliente: TClientDataSet;
    DSBuscaCliente: TDataSource;
    CDSBuscaClienteCLIENTE: TStringField;
    CDSBuscaClienteNOMBRE: TStringField;
    CDSBuscaClienteDIRECCION: TStringField;
    frxDBMercCab: TfrxDBDataset;
    frxDBMercDet: TfrxDBDataset;
    frEntregas: TfrxReport;
    btImprimirDet: TBitBtn;
    ImprimirDetalle: TAction;
    lbNroRemito: TLabel;
    VerRemito: TAction;
    DBText2: TDBText;
    QMarcarRtoAcopioCab: TFDQuery;
    edNombreCliente: TEdit;
    CDSBuscadorMUESTRANRORTO: TStringField;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgMercaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure VerCompAcopioExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BorrarExecute(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure dbgMercCabDblClick(Sender: TObject);
    procedure BuscaDepositoExecute(Sender: TObject);
    procedure RxCDepositoButtonClick(Sender: TObject);
    procedure dbgMercCabTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ModificarExecute(Sender: TObject);
    procedure dbgMercaDblClick(Sender: TObject);
    procedure dbgRtoDetColEnter(Sender: TObject);
    procedure dbgRtoDetDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgRtoDetDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgRtoDetEnter(Sender: TObject);
 //   procedure dbgRtoDetCanEditCell(Grid: TJvDBGrid; Field: TField;
 //     var AllowEdit: Boolean);
    procedure dbgRtoDetKeyPress(Sender: TObject; var Key: Char);
    procedure GeneraRemitoExecute(Sender: TObject);
    procedure dbgRtoDetExit(Sender: TObject);
    procedure dbgMercCabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMercaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSBuscadorCUMPLIDOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
    procedure ImprimirDetalleExecute(Sender: TObject);
    procedure VerRemitoExecute(Sender: TObject);
    procedure chCumplidosClick(Sender: TObject);
  private
    { Private declarations }
    IDComprobante:  integer;
    SucursalComprobante: integer;
  public
    { Public declarations }
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
 //   Function ControlFinalizado:Boolean;
 //   procedure ControlDeposito;
    procedure DetalleDeEntregas(id_Acopio_detalle:integer);
    procedure AgregarCabRto;
    procedure AgregarDetRto;

  end;

var
  FormRtoEntregaAcopio: TFormRtoEntregaAcopio;

implementation

{$R *.dfm}
uses UAcopio, UBuscadorAcopios, UBuscadorAcopiosActivos, UDetalleEntregasAcopio,
     URemitos, UDMain_FD, DMAcopio, UBuscadorTipoCpbte, UControlNroRto, DMRemitos,
     UBuscadorDepositos;



procedure TFormRtoEntregaAcopio.AgregarCabRto;
begin
  with DatosRemitos DO
  begin
    FormRemitos.SucursalPorDefecto    := SucursalComprobante;
    FormRemitos.DepositoPorDefecto    := DMMain_FD.DepositoPorSucursal(-1);// DepositoPorDefecto;

    CDSRtoCabUSUARIO.AsString         := DMMain_FD.UsuarioActivo;

    CDSRtoCabSucursal.Text            := IntToStr(SucursalComprobante);
    CDSRtoCabCodigo.Text              := DatosAcopio.CDSRtoCabCLIENTE.AsString;
    CDSRtoCabID_TIPOCOMPROBANTE.Text  := IntToStr(IDComprobante);

    CDSRtoCabANULADO.Value            := 'N';
    CDSRtoCabIMPRESO.Value            := 'N';
    CDSRtoCabOBSERVACION1.AsString    := 'ENTREGA DE ACOPIO Nº' + DatosAcopio.CDSRtoCabNUMERO.AsString;
    CDSRtoCabOBSERVACION2.AsString    :=  DatosAcopio.CDSRtoCabOBS1.AsString + ' // ' + DatosAcopio.CDSRtoCabOBS2.AsString;
    CDSRtoCabCPTE_MANUAL.Value        := 'N';
    CDSRtoCabIDFACTURA.AsInteger      := DatosAcopio.CDSRtoCabID_FACTURA.AsInteger;
    CDSRtoCabNROFACT.AsString         := DatosAcopio.CDSRtoCabNRO_FACTURA.AsString;
  end;
end;

procedure TFormRtoEntregaAcopio.AgregarDetRto;
var UnitarioTotal:Extended;
begin
  inherited;
  with DatosRemitos DO
    begin
      CDSRtoDet.Append;
      CDSRtoDetDESGLOZAIVA.AsString       := CDSRtoCabDESGLOZAIVA.AsString;
      CDSRtoDetDEPOSITO.AsInteger         := CDSRtoCabDeposito.AsInteger;
      CDSRtoDetCLASECPBTE.AsString        := CDSRtoCabCLASECPBTE.AsString;
      CDSRtoDetTIPOCPBTE.AsString         := CDSRtoCabTIPOCPBTE.AsString;
      CDSRtoDetCODIGOARTICULO.Text        := DatosAcopio.CDSRtoDetCODIGO.AsString;
      CDSRtoDetDETALLE.AsString           := DatosAcopio.CDSRtoDetDETALLE.AsString;
      CDSRtoDetCANTIDAD.AsFloat           := DatosAcopio.CDSRtoDetCANTIDAD.AsFloat;
//      CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(CDSNotaPedidoDetCANTIDAD_PEDIDIA,DatosPresupuesto.wwCDSPresuDetCANTIDAD.AsString);
     // CDSRtoDetUNITARIO_GRAVADO.AsFloat := DatosAcopio.CDSMercDetUNITARIO_GRAVADO.AsFloat;
     // CDSRtoDetUNITARIO_EXENTO.AsFloat  := DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat;
     // CDSRtoDetUNITARIO_TOTAL.AsFloat   := DatosVentas.CDSVentaDetUNITARIO_TOTAL.AsFloat;
    //  CDSRtoDetIVA_UNITARIO.AsFloat     := DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat;
     // CDSRtoDetIVA_TOTAL.AsFloat        := DatosVentas.CDSVentaDetIVA_TOTAL.AsFloat;

      UnitarioTotal := CDSRtoDetUNITARIO_TOTAL.AsFloat;

      if CDSRtoCabDESGLOZAIVA.AsString='N' Then
        UnitarioTotal := CDSRtoDetUNITARIO_TOTAL.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat;

      CDSRtoDetUNITARIO_TOTAL.Text        := FloatToStr(UnitarioTotal);
      CDSRtoDetAFECTA_STOCK.AsString      := 'N';
      CDSRtoDet.Post;
    end;
end;


procedure TFormRtoEntregaAcopio.DetalleDeEntregas(id_Acopio_detalle:integer);
begin
  if Not(Assigned(FormMuestraEntregasAcopios)) Then
    FormMuestraEntregasAcopios:=TFormMuestraEntregasAcopios.Create(Self);
  FormMuestraEntregasAcopios.CDSDetalleEntregas.Close;
  FormMuestraEntregasAcopios.CDSDetalleEntregas.Params.ParamByName('id').Value:=id_Acopio_detalle;
  FormMuestraEntregasAcopios.CDSDetalleEntregas.Open;
  FormMuestraEntregasAcopios.ShowModal;
end;


FUNCTION TFormRtoEntregaAcopio.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      DatosAcopio.CDSRtoCabMUESTRADEPOSITO.AsString := CDSDepositoNOMBRE.AsString ;
      END
  ELSE
    begin
      Result := False;
      DatosAcopio.CDSRtoCabMUESTRADEPOSITO.AsString := '';
    end;
  CDSDeposito.Close;
END;


procedure TFormRtoEntregaAcopio.AgregarExecute(Sender: TObject);
begin
  if Not(dbgMerca.DataSource.DataSet.IsEmpty) then
    BEGIN
      chCumplidos.Checked :=  true;
      with DatosAcopio do
        begin
          if (CDSMercCab.IsEmpty) Then
            begin
              if ceCliente.Enabled then
                begin
                  ceCliente.SetFocus;
                  ceCliente.SelectAll;
                  ceCliente.ShowHint := True;
                end;
            end
          else
          //if Not(CDSMercCab.IsEmpty) then
            begin
              CDSRtoCab.Close;
              CDSRtoCab.Params.ParamByName('id').Clear;
              CDSRtoCab.Open;

              CDSRtoDet.Close;
              CDSRtoDet.Params.ParamByName('id').Clear;
              CDSRtoDet.Open;

              inherited;
              CDSRtoCabDEPOSITO.Text  :=  IntToStr(DepositoPorDefecto);
            end;
        end;
    END
  else
    ShowMessage('No Hay datos para entrega...');
end;

procedure TFormRtoEntregaAcopio.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    begin
      inherited;
      //ceClienteKeyPress(Sender,Enter);
      Recuperar.Execute;
    end
  else
    ShowMessage('No esta Autorizado para esta operación...');  

end;

procedure TFormRtoEntregaAcopio.BuscaDepositoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosAcopio.CDSRtoCabDEPOSITOSetText(DatosAcopio.CDSRtoCabDEPOSITO,IntToStr(comBuscadorDeposito.Id));
  CDSBuscaDeposito.Close;
end;

procedure TFormRtoEntregaAcopio.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
 if not(Assigned(FormBuscadorAcopiosActivos)) then
    FormBuscadorAcopiosActivos:=TFormBuscadorAcopiosActivos.Create(Self);
  FormBuscadorAcopiosActivos.Estado:='N';
  FormBuscadorAcopiosActivos.cbEstado.ItemIndex:=1;
  FormBuscadorAcopiosActivos.cbEstado.Enabled  :=True;
  FormBuscadorAcopiosActivos.ShowModal;
  if FormBuscadorAcopiosActivos.ModalResult=mrOk then
    begin
      ceCliente.Text :=FormBuscadorAcopiosActivos.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorAcopiosActivos.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text :=  QClientesNOMBRE.AsString;

          DatosAcopio.CDSMercCab.Close;
          DatosAcopio.CDSMercCab.Params.ParamByName('Codigo').AsString    := QClientesCODIGO.AsString;
          DatosAcopio.CDSMercCab.Params.ParamByName('filtrado').AsString  := '*';
          DatosAcopio.CDSMercCab.Open;

          if DatosAcopio.CDSMercCab.IsEmpty then
            Showmessage(' El Cliente no posee acopios activos.');
        END
      else
        begin
          DatosAcopio.CDSMercCab.Close;
          DatosAcopio.CDSMercCab.Params.ParamByName('Codigo').Clear;
          DatosAcopio.CDSMercCab.Params.ParamByName('filtrado').AsString  := '*';
          DatosAcopio.CDSMercCab.Open;
        end;
       QClientes.Close;
    END;
END;


procedure TFormRtoEntregaAcopio.BuscarExecute(Sender: TObject);
begin
  inherited;
  with DatosAcopio do
    begin
      CDSBuscador.Close;
      CDSBuscador.Open;
      comBuscadorBase.Execute;
      if comBuscadorBase.rOk then
        begin
          DatoNew:= IntToStr(comBuscadorBase.Id);
//          ceCliente.Text  :=  CDSBuscadorCLIENTE.AsString;
          Recuperar.Execute;
        end;
      CDSBuscador.Close;
    end;
end;

procedure TFormRtoEntregaAcopio.CancelarExecute(Sender: TObject);
begin
  with DatosAcopio do
    begin
      CDSRtoCab.Close;
      CDSRtoCab.Params.ParamByName('id').Clear;
      CDSRtoCab.Open;

      CDSRtoDet.Close;
      CDSRtoDet.Params.ParamByName('id').Clear;
      CDSRtoDet.Open;

      ceCliente.Text      :='';
      edNombreCliente.Text:='';

      inherited;

      CDSMercCab.Close;
      CDSMercCab.Params.ParamByName('Codigo').Clear;
      CDSMercCab.Params.ParamByName('filtrado').Value:='*';
      CDSMercCab.Open;


    end;
  if (btNuevo.Enabled) and (FormRtoEntregaAcopio.Visible=True) Then
    btNuevo.SetFocus;

  pnCabMerc.Enabled:=True;

end;




procedure TFormRtoEntregaAcopio.CDSBuscadorCUMPLIDOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if CDSBuscadorCUMPLIDO.Value='S' then
    Text:='Si'
  else
    Text:='';
end;



procedure TFormRtoEntregaAcopio.chCumplidosClick(Sender: TObject);
begin
  inherited;
  if Trim(ceCliente.Text)<>'' then
    begin
      DatosAcopio.CDSMercCab.Close;
      DatosAcopio.CDSMercCab.Params.ParamByName('codigo').Value   := Trim(ceCliente.Text);
      if chCumplidos.Checked then
        DatosAcopio.CDSMercCab.Params.ParamByName('filtrado').Value := 'S'
      else
        DatosAcopio.CDSMercCab.Params.ParamByName('filtrado').Value := '*';
      DatosAcopio.CDSMercCab.Open;
    end;
end;

procedure TFormRtoEntregaAcopio.ConfirmaExecute(Sender: TObject);
var
  CUMP: char;
begin
  if DatosAcopio.CDSRtoCabDEPOSITO.AsString='' then
    Raise Exception.Create('Falta Indicar el Depósito.....');

  with DatosAcopio do
    begin
      if CDSRtoDet.State<>dsBrowse then CDSRtoDet.Post;

      if Not(CDSMercCab.IsEmpty) then
        begin
          if CDSMercCab.State=dsBrowse then CDSMercCab.Edit;
          if CDSMercDetSALDOTOTAL.value <=0.01 then
            CUMP := 'S'
          else
           CUMP := 'N';
          CDSMercCabCUMPLIDO.AsString :=  CUMP;
         CDSMercCab.Post;
        end;

      DatoNew:=CDSRtoCabID.AsString;
    end;

  inherited;
  Recuperar.Execute;
end;


procedure TFormRtoEntregaAcopio.dbgMercaDblClick(Sender: TObject);
begin
  inherited;
  DetalleDeEntregas(DatosAcopio.CDSMercDetID.AsInteger);
end;

procedure TFormRtoEntregaAcopio.dbgMercaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  with DatosAcopio do
    begin
      if CDSMercDetCUMPLIDO.AsString = 'S' then
        dbgMerca.Canvas.Font.Color:=clInactiveCaption
      else
        dbgMerca.Canvas.Font.Color:=clWindowText;
    end;
  dbgMerca.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormRtoEntregaAcopio.dbgMercaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    begin
      if Y<=16 Then
        dbgMerca.DragMode:=dmManual
      else
       dbgMerca.DragMode:=dmAutomatic;
    end;
end;

procedure TFormRtoEntregaAcopio.dbgMercCabDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAcopio)) then
    FormAcopio:=TFormAcopio.Create(Self);
  FormAcopio.datoNew:=DatosAcopio.CDSMercCabID.AsString;
  FormAcopio.Recuperar.Execute;
  
end;

procedure TFormRtoEntregaAcopio.dbgMercCabDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  with DatosAcopio do
    begin
      if gdSelected in State Then
        begin
          dbgMercCab.Canvas.Font.Color:=clWhite;
          dbgMercCab.Canvas.Brush.Color:=clNavy;
        end
      else
      if CDSMercCabCUMPLIDO.AsString = 'S' then
        dbgMercCab.Canvas.Font.Color:=clInactiveCaption
      else
        dbgMercCab.Canvas.Font.Color:=clWindowText;
    end;
  dbgMercCab.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormRtoEntregaAcopio.dbgMercCabTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgMercCab.DataSource.DataSet as TClientDataSet do
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



procedure TFormRtoEntregaAcopio.dbgRtoDetColEnter(Sender: TObject);
begin
  inherited;
 // if (Sender Field.FieldName = 'DETALLE') or ((Field.FieldName = 'CANTIDAD') and (DatosAcopio.CDSRtoDetCODIGO.AsString = '')) then
 //   AllowEdit :=  False
 // else
 //   AllowEdit :=  True;//  if dbgRtoDet.SelectedIndex=1 Then
//    dbgRtoDet.SelectedIndex:=2;
  if dbgRtoDet.SelectedIndex=1 then
    dbgRtoDet.SelectedIndex:=2;
end;

procedure TFormRtoEntregaAcopio.dbgRtoDetDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  with DatosAcopio do
    begin
      if (DSBase.State in [dsInsert]) then
      begin
        IF (Trunc(CDSMercDetSALDO.AsFloat * 1000)) > 0 THEN
          BEGIN
            WITH (Source AS TDBGrid).DataSource.DataSet DO
              begin
                CDSRtoDet.Append;
                CDSRtoDetCODIGO.AsString                  := FieldByName('Codigo').AsString;
                CDSRtoDetDETALLE.AsString                 := FieldByName('Detalle').AsString;
                CDSRtoDetCANTIDAD.Text                    := FieldByName('Saldo').AsString;
                CDSRtoDetCANT_ORIGINAL.AsFloat            := FieldByName('Saldo').AsFloat;
                CDSRtoDetID_MERCA_ACOPIO_DET.AsInteger    := FieldByName('id').AsInteger;
                CDSRtoDetPRESENTACION_CANT.AsFloat        := FieldByName('MUESTRAPRESENTACION').AsFloat;
                if (VarIsNull(CDSRtoDetPRESENTACION_CANT.AsFloat)) or (CDSRtoDetPRESENTACION_CANT.AsFloat<0) then
                  CDSRtoDetPRESENTACION_CANT.AsFloat      := 1;
                CDSRtoDetCANTIDAD_UNIDAD.AsFloat          := CDSRtoDetCANTIDAD.AsFloat/CDSRtoDetPRESENTACION_CANT.AsFloat;
                CDSRtoDet.Post;
              END;
          END
        else
          ShowMessage('Ya se entrego todo el disponible....');
      end;
    end;
end;



procedure TFormRtoEntregaAcopio.dbgRtoDetDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if DSBase.State in [dsInsert,dsedit] Then
    begin
      IF Source = dbgMerca THEN
        accept := True
      ELSE
        Accept := False;
    end
  ELSE
    Accept := False;

end;



procedure TFormRtoEntregaAcopio.dbgRtoDetEnter(Sender: TObject);
begin
  inherited;
//  if dbgRtoDet.SelectedIndex<2 Then
//    dbgRtoDet.SelectedIndex:=2;
  dbgRtoDet.SelectedIndex  := 0;
end;


procedure TFormRtoEntregaAcopio.dbgRtoDetExit(Sender: TObject);
begin
  inherited;
  with DatosAcopio do
    if (CDSRtoDet.State in [dsInsert, dsEdit]) and (CDSRtoDetCODIGO.AsString = '') then
      CDSRtoDet.Cancel;
end;

procedure TFormRtoEntregaAcopio.dbgRtoDetKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    begin
      if dbgRtoDet.SelectedIndex=2 then
        begin
          if DatosAcopio.CDSRtoDet.State in [dsEdit, dsInsert] then
            DatosAcopio.CDSRtoDet.Post;
          if DatosAcopio.CDSRtoDetCODIGO.AsString <> '' then
            DatosAcopio.CDSRtoDet.Append;
          dbgRtoDet.SelectedIndex :=  0;
        end
      else
        dbgRtoDet.SelectedIndex := dbgRtoDet.SelectedIndex +1;
    end;
  inherited;

end;

procedure TFormRtoEntregaAcopio.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCab.Enabled         := True;
  pnCabMerc.Enabled     := DSBase.State in [dsBrowse];
  Imprimir.Enabled      := DSBase.State in [dsBrowse];
  Modificar.Enabled     := (DMMain_FD.UsuarioAdministrador) and (DSBase.DataSet.FieldByName('cumplido').Value<>'S')
                           and (Not(DSBase.DataSet.IsEmpty))
                           and ((DSBase.DataSet.FieldByName('ID_REMITO').IsNull) or (DSBase.DataSet.FieldByName('ID_REMITO').AsInteger=0));
  dbgRtoDet.ReadOnly    := DSBase.State in [dsBrowse];
//  dbgMercCab.Enabled    := DSBase.State in [dsInsert] and (not DSRtoDet.DataSet.IsEmpty);
  GeneraRemito.Enabled  := DSBase.State = dsBrowse;

  Borrar.Enabled        := (DSBase.State = dsBrowse) and (not DSBase.DataSet.IsEmpty) //and DMMain_FD.UsuarioAdministrador;
                              and ((DSBase.DataSet.FieldByName('ID_REMITO').IsNull)
                               or (DSBase.DataSet.FieldByName('ID_REMITO').AsInteger=0));
  GeneraRemito.Enabled  := (DSBase.State = dsBrowse)
                              and (not DSBase.DataSet.IsEmpty)
                              and (not DSBase.DataSet.FieldByName('ID_FACTURA').IsNull)
                              and ((DSBase.DataSet.FieldByName('ID_REMITO').IsNull)
                                    or (DSBase.DataSet.FieldByName('ID_REMITO').AsInteger=0));
  edRemito.Enabled      := (DSBase.State = dsBrowse)
                              and (not DSBase.DataSet.IsEmpty)
                              and (not DSBase.DataSet.FieldByName('ID_REMITO').IsNull)
                              and (DSBase.DataSet.FieldByName('ID_REMITO').AsInteger<>0);
  pnRtoEntrega.Enabled  := DSBase.State in [dsInsert,dsEdit];
  pnPrincipal.Enabled   := True;
end;



procedure TFormRtoEntregaAcopio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with DatosAcopio do
    begin
      CDSRtoCab.Close;
      CDSRtoCab.Params.ParamByName('ID').Clear;
      CDSRtoDet.Close;
      CDSRtoDet.Params.ParamByName('ID').Clear;
      CDSMercCab.Close;
      CDSMercCab.Params.ParamByName('CODIGO').Clear;
      CDSMercDet.Close;
    end;
  FreeAndNil(DatosAcopio);
  Action:=caFree;
  inherited;
end;

procedure TFormRtoEntregaAcopio.FormCreate(Sender: TObject);
begin

  inherited;
  SinBde:=2;
  AutoSize:=False;

  if Not(Assigned(DatosAcopio)) then
    DatosAcopio:=TDatosAcopio.Create(Self);
  with DatosAcopio do
  begin
    AddClientDataSet(CDSRtoCab,DSPRtoCab);
    AddClientDataSet(CDSRtoDet,DSPRtoDet);
    //AddClientDataSet(CDSMercCab,DSPMercCab);
   // AddClientDataSet(CDSMercDet,DSPMercDet);

    CDSMercCab.Close;
    CDSMercCab.Params.ParamByName('filtrado').Clear;
    CDSMercCab.Params.ParamByName('CODIGO').Clear;
    CDSMercCab.Open;

    CDSMercDet.Open;

    CDSRtoCab.Open;
    CDSRtoDet.Open;
  end;
  Tabla:='rto_acopio_cab';
  Campo:='id';
end;

procedure TFormRtoEntregaAcopio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRtoEntregaAcopio:=nil;
end;

procedure TFormRtoEntregaAcopio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if  Not (ActiveControl is TJvComboEdit) then
    inherited;
end;

procedure TFormRtoEntregaAcopio.FormResize(Sender: TObject);
begin
  inherited;
  if FormRtoEntregaAcopio<>nil then
    if FormRtoEntregaAcopio.Width<>1038 then
      FormRtoEntregaAcopio.Width:=1038;
end;

procedure TFormRtoEntregaAcopio.GeneraRemitoExecute(Sender: TObject);
var Cancel: Boolean;
begin
  inherited;
  Cancel :=  False;
  if not(DSBase.DataSet.IsEmpty) then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
      FormBuscadorTipoCpbte.TipoCpbte1   :='RE';
      FormBuscadorTipoCpbte.TipoCpbte2   :='';
      FormBuscadorTipoCpbte.TipoCpbte3   :='';
      FormBuscadorTipoCpbte.CV           :='V';
      FormBuscadorTipoCpbte.Sucursal     := DMMain_FD.SucursalPorDef;// SucursalPorDefecto;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante                := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                      := FormBuscadorTipoCpbte.Id_Cpbte;

      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
           FormBuscadorDepositos.Deposito:=  DMMain_FD.DepositoPorSucursal(-1);// DatosRemitos.CDSRtoCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               if Not(Assigned(FormRemitos)) Then
                 FormRemitos:=TFormRemitos.Create(self);
               FormRemitos.Agregar.Execute;
               AgregarCabRto;
               if Not(Assigned(FormControlNroRto)) then
                 FormControlNroRto:=TFormControlNroRto.Create(Self);
               FormControlNroRto.Let:= DatosRemitos.CDSRtoCabLETRARTO.AsString;
               FormControlNroRto.Suc:= DatosRemitos.CDSRtoCabSUCRTO.AsString;
               FormControlNroRto.Num:= DatosRemitos.CDSRtoCabNUMERORTO.AsString;
               FormControlNroRto.ShowMOdal;

               if (FormControlNroRto.ModalResult=mrOk) then
                 begin
                   if (FormControlNroRto.Let<> DatosRemitos.CDSRtoCabLETRARTO.AsString) or
                      (FormControlNroRto.Suc<> DatosRemitos.CDSRtoCabSUCRTO.AsString) or
                      (FormControlNroRto.Num<> DatosRemitos.CDSRtoCabNUMERORTO.AsString) Then
                   DatosRemitos.CDSRtoCabCPTE_MANUAL.AsString:='S';
                   DatosRemitos.CDSRtoCabLETRARTO.AsString:=FormControlNroRto.Let;
                   DatosRemitos.CDSRtoCabSUCRTOSetText(DatosRemitos.CDSRtoCabSUCRTO,FormControlNroRto.Suc);
                   DatosRemitos.CDSRtoCabNUMERORTOSetText(DatosRemitos.CDSRtoCabNUMERORTO,FormControlNroRto.Num);
                 end;
             end
          else
            Cancel    :=  true;
          if not Cancel then
            begin
              DatosAcopio.CDSRtoDet.First;
              while Not(DatosAcopio.CDSRtoDet.Eof)  do
                begin
                  while Not(DatosAcopio.CDSRtoDet.Eof)  Do // Ingreso el detalle
                    begin
                      AgregarDetRto;
                      DatosAcopio.CDSRtoDet.Next;
                    end;
                end;
              FormRemitos.Confirma.Execute;

              with DatosAcopio do
                begin
                  CDSRtoCab.DisableControls;
                  CDSRtoDet.DisableControls;
                  Modificar.Execute;

                  if CDSRtoCab.State=dsBrowse then CDSRtoCab.Edit;
                  CDSRtoCabID_REMITO.AsInteger    :=  DatosRemitos.CDSRtoCabID_RTO.AsInteger;
                  CDSRtoCab.Post;
                  CDSRtoCab.ApplyUpdates(0);
                  CDSRtoCab.EnableControls;
                  CDSRtoDet.EnableControls;
                end;
                GeneraRemito.Enabled  :=  false;
            end
          else
            begin
              FormRemitos.Cancelar.Execute;
              FormRemitos.Salir.Execute;
            end;
        end;
    end;
end;

procedure TFormRtoEntregaAcopio.ImprimirDetalleExecute(Sender: TObject);
begin
  inherited;
  if (DSMercCab.State = dsBrowse) and (not DSMercCab.DataSet.IsEmpty) then
    begin
      frEntregas.PrintOptions.Printer:=PrNomCpbte;
      frEntregas.SelectPrinter;
      frEntregas.LoadFromFile(DMMain_FD.PathReportesLst+'\RtoEntregaAcopio.fr3');
      frEntregas.PrepareReport;
      frEntregas.ShowReport;
    end;
end;

procedure TFormRtoEntregaAcopio.ImprimirExecute(Sender: TObject);
begin
  inherited;
  DatosAcopio.CDSMercCab.Locate('id_factura',DatosAcopio.CDSRtoCabID_FACTURA.AsString,[]);
  frRemitos.PrintOptions.Printer:=PrNomCpbte;
  frRemitos.SelectPrinter;
  frRemitos.LoadFromFile(DMMain_FD.PathReportesLst+'\LstRtoEntregaAcopio.fr3');
//  frRemitos.Variables['Tareas']    := ''''+ MuestraTareas+'''';
  frRemitos.ShowReport;
end;

procedure TFormRtoEntregaAcopio.Label10Click(Sender: TObject);
begin
  with DatosAcopio do
    begin
      inherited;
      CDSMercDet.First;
      while (Not(CDSMercDet.Eof)) do
        begin
          if CDSMercDetSALDO.AsFloat>0 then
            dbgRtoDetDragDrop( Sender, dbgMerca,10,10);
          CDSMercDet.Next;
        end;
    end;
end;

procedure TFormRtoEntregaAcopio.ModificarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    inherited;

end;

procedure TFormRtoEntregaAcopio.RecuperarExecute(Sender: TObject);
begin
  inherited;
  with DatosAcopio do
    begin
      LFinalizado.Visible  :=  False;

      CDSRtoCab.Close;
      CDSRtoCab.Params.ParamByName('id').Value:=StrToInt(datoNew);
      CDSRtoCab.Open;

      CDSRtoDet.Close;
      CDSRtoDet.Params.ParamByName('id').Value:=StrToInt(datoNew);
      CDSRtoDet.Open;

      CDSMercCab.Close;
      CDSMercCab.Params.ParamByName('codigo').Value   := CDSRtoCabCLIENTE.value;
      CDSMercCab.Params.ParamByName('filtrado').Value := '*';
      CDSMercCab.Open;

      edNombreCliente.Text := CDSRtoCabNOMBRE.Value;
      ceCliente.Text       := CDSRtoCabCLIENTE.Value;

      if (not CDSRtoCabID_MERCA_ACOPIO_CAB.IsNull) and (CDSRtoCabID_MERCA_ACOPIO_CAB.AsInteger>0) then
        CDSMercCab.Locate('id',CDSRtoCabID_MERCA_ACOPIO_CAB.AsInteger,[])
      else
        CDSMercCab.Locate('id_factura',CDSRtoCabID_FACTURA.AsInteger,[]);

      FormRtoEntregaAcopio.Caption:='Remitos de Entrega Mercaderia en Acopio -- '+ CDSRtoCabFECHA_HORA.AsString+'//'+Copy(CDSRtoCabUSUARIO.AsString,1,15);
    end;
  sbEstado.SimplePanel:= True;
  sbEstado.SimpleText := '';
  if Not(DSBase.DataSet.FieldByName('ID_REMITO').IsNull) or (DSBase.DataSet.FieldByName('ID_REMITO').AsInteger>0) Then
    sbEstado.SimpleText:='No se Puede Borrar/modificar tiene rto.';

end;

procedure TFormRtoEntregaAcopio.RxCDepositoButtonClick(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosAcopio.CDSRtoCabDEPOSITOSetText(DatosAcopio.CDSRtoCabDEPOSITO,IntToStr(comBuscadorDeposito.Id));
  CDSBuscaDeposito.Close;
end;

procedure TFormRtoEntregaAcopio.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frRemitos.DesignReport;
end;

procedure TFormRtoEntregaAcopio.VerCompAcopioExecute(Sender: TObject);
begin
  inherited;
  with DatosAcopio do
    begin
      QRtoAcopio.Close;
      QRtoAcopio.ParamByName('id_Factura').AsInteger:= CDSRtoCabID_FACTURA.AsInteger;
      QRtoAcopio.Open;
      if QRtoAcopioID.AsString<>'' then
        begin
         { CDSMercDet.Close;
          CDSMercDet.Params.ParamByName('id').Value:=QRtoAcopioID.Value;
          CDSMercDet.Open;      }
        end;
    end;
end;

procedure TFormRtoEntregaAcopio.VerRemitoExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.FieldByName('ID_REMITO').AsString<>'' then
    begin
      if Not(Assigned(FormRemitos)) Then
        FormRemitos:=TFormRemitos.Create(self);
      FormRemitos.TipoCpbte :=  'RE';
      FormRemitos.DatoNew   :=  DSBase.DataSet.FieldByName('ID_REMITO').AsString;
      FormRemitos.Show;
      FormRemitos.Recuperar.Execute;
    end;
end;

end.
