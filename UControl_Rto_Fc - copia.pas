unit UControl_Rto_Fc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Mask, JvExMask, JvToolEdit, dxtree, dxdbtree, dxdbtrel,
  JvBaseDlg, JvProgressDialog, JvDBGridFooter, Grids, DBGrids, JvExDBGrids,
  JvDBGrid,DateUtils, JvExComCtrls, JvUpDown, DBXCommon, Vcl.Samples.Spin,
  JvAppStorage, JvAppIniStorage, System.Actions, Vcl.Menus, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,StrUtils,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, frxClass, frxDBSet,
  dxSkinWXI, frCoreClasses, AdvOfficeButtons;

type
  TFormControlAsignacionRto_Fc = class(TFormABMBase)
    CDSRtos: TClientDataSet;
    DSPRtos: TDataSetProvider;
    DSRtos: TDataSource;
    DSPFac: TDataSetProvider;
    CDSFac: TClientDataSet;
    DSFac: TDataSource;
    CDSFacID_FC: TIntegerField;
    CDSFacTIPOCPBTE: TStringField;
    CDSFacCLASECPBTE: TStringField;
    CDSFacLETRAFAC: TStringField;
    CDSFacSUCFAC: TStringField;
    CDSFacNUMEROFAC: TStringField;
    CDSFacNROCPBTE: TStringField;
    CDSFacNRORTO: TStringField;
    CDSFcRto: TClientDataSet;
    DSPFcRto: TDataSetProvider;
    DSFcRto: TDataSource;
    CDSFcRtoID_FC: TIntegerField;
    CDSFcRtoTIPOCPBTE: TStringField;
    CDSFcRtoCLASECPBTE: TStringField;
    CDSFcRtoLETRAFAC: TStringField;
    CDSFcRtoSUCFAC: TStringField;
    CDSFcRtoNUMEROFAC: TStringField;
    CDSFcRtoNROCPBTE: TStringField;
    Label1: TLabel;
    ceCliente: TJvComboEdit;
    edNombre: TEdit;
    BuscarCliente: TAction;
    DSPRtoAsociado: TDataSetProvider;
    CDSRtoAsociado: TClientDataSet;
    DSRtoAsociado: TDataSource;
    CDSRtoAsociadoID_RTO: TIntegerField;
    CDSRtoAsociadoTIPOCPBTE: TStringField;
    CDSRtoAsociadoCLASECPBTE: TStringField;
    CDSRtoAsociadoLETRARTO: TStringField;
    CDSRtoAsociadoSUCRTO: TStringField;
    CDSRtoAsociadoNUMERORTO: TStringField;
    CDSRtoAsociadoNROCPBTE: TStringField;
    CDSRtoAsociadoIDFACTURA: TIntegerField;
    CDSRtoAsociadoNROFACT: TStringField;
    CDSRtosID_RTO: TIntegerField;
    CDSRtosTIPOCPBTE: TStringField;
    CDSRtosCLASECPBTE: TStringField;
    CDSRtosLETRARTO: TStringField;
    CDSRtosSUCRTO: TStringField;
    CDSRtosNUMERORTO: TStringField;
    CDSRtosNROCPBTE: TStringField;
    CDSRtosIDFACTURA: TIntegerField;
    CDSRtosNROFACT: TStringField;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    BorrarRto: TAction;
    BorrarRto1: TMenuItem;
    CDSRtosNOMBRE: TStringField;
    CDSRtosRAZONSOCIAL: TStringField;
    CDSRtosCODIGO: TStringField;
    Hasta: TJvDateEdit;
    spFech: TSpinButton;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    Label3: TLabel;
    QRtos: TFDQuery;
    QRtosID_RTO: TIntegerField;
    QRtosTIPOCPBTE: TStringField;
    QRtosCLASECPBTE: TStringField;
    QRtosLETRARTO: TStringField;
    QRtosSUCRTO: TStringField;
    QRtosNUMERORTO: TStringField;
    QRtosNROCPBTE: TStringField;
    QRtosIDFACTURA: TIntegerField;
    QRtosNROFACT: TStringField;
    QRtosCODIGO: TStringField;
    QRtosNOMBRE: TStringField;
    QRtosRAZONSOCIAL: TStringField;
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
    QRtoAsociados: TFDQuery;
    QFcRto: TFDQuery;
    CDSFcRtoNRORTO: TStringField;
    CDSFcRtoTOTAL: TFloatField;
    CDSFcRtoCODIGO: TStringField;
    QFac: TFDQuery;
    QFacID_FC: TIntegerField;
    QFacTIPOCPBTE: TStringField;
    QFacCLASECPBTE: TStringField;
    QFacLETRAFAC: TStringField;
    QFacSUCFAC: TStringField;
    QFacNUMEROFAC: TStringField;
    QFacNROCPBTE: TStringField;
    QFacNRORTO: TStringField;
    QFacCODIGO: TStringField;
    CDSFacCODIGO: TStringField;
    spMarcarRto: TFDStoredProc;
    spRecuperarRto: TFDStoredProc;
    QMarcarEntregado: TFDQuery;
    CDSFcRtoFECHAVTA: TSQLTimeStampField;
    CDSRtoAsociadoFECHAVTA: TSQLTimeStampField;
    QFacFECHAVTA: TSQLTimeStampField;
    CDSFacFECHAVTA: TSQLTimeStampField;
    QRtosFECHAVTA: TSQLTimeStampField;
    CDSRtosFECHAVTA: TSQLTimeStampField;
    ppmRtos: TPopupMenu;
    MarcarEntregados: TAction;
    spNoFacturable: TFDStoredProc;
    MarcarEntregados1: TMenuItem;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frxDBFcRto: TfrxDBDataset;
    frxDBRtos: TfrxDBDataset;
    frFcRto: TfrxReport;
    pnCabecera: TPanel;
    pnPie: TPanel;
    lbNivel: TLabel;
    spExapnd: TSpeedButton;
    SpeedButton1: TSpeedButton;
    chExpand: TCheckBox;
    btVer: TButton;
    pnFacturas: TPanel;
    tvListado: TTreeView;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    pnRemitos: TPanel;
    cxGRtos: TcxGrid;
    cxGRtosDet: TcxGridDBTableView;
    cxGRtosDetID_RTO: TcxGridDBColumn;
    cxGRtosDetFECHAVTA: TcxGridDBColumn;
    cxGRtosDetCODIGO: TcxGridDBColumn;
    cxGRtosDetTIPOCPBTE: TcxGridDBColumn;
    cxGRtosDetCLASECPBTE: TcxGridDBColumn;
    cxGRtosDetNROCPBTE: TcxGridDBColumn;
    cxGRtosDetNOMBRE: TcxGridDBColumn;
    cxGRtosLevel1: TcxGridLevel;
    Splitter2: TSplitter;
    DBGrid2: TDBGrid;
    QRtoDet: TFDQuery;
    QRtoDetID: TIntegerField;
    QRtoDetID_CABRTO: TIntegerField;
    QRtoDetRENGLON: TFloatField;
    QRtoDetCODIGOARTICULO: TStringField;
    QRtoDetDETALLE: TStringField;
    QRtoDetCANTIDAD: TFloatField;
    QRtoDetUNITARIO_TOTAL: TFloatField;
    QRtoDetTOTAL: TFloatField;
    DSRtoDet: TDataSource;
    QDetFact: TFDQuery;
    QDetFactID: TIntegerField;
    QDetFactRENGLON: TFloatField;
    QDetFactCODIGOARTICULO: TStringField;
    QDetFactDETALLE: TStringField;
    QDetFactUNIDAD: TStringField;
    QDetFactUNITARIO_TOTAL: TFloatField;
    QDetFactCANTIDAD: TFloatField;
    QDetFactTOTAL: TFloatField;
    DSDetFact: TDataSource;
    QDetFactNROCPBTE: TStringField;
    chbFiltrar: TAdvOfficeCheckBox;
    cxGRtosDetTOTAL: TcxGridDBColumn;
    QRtosTOTAL: TFloatField;
    CDSRtosTOTAL: TFloatField;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tvListadoCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure spExapndClick(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvListadoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvListadoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgRtosDblClick(Sender: TObject);
    procedure btVerClick(Sender: TObject);
//    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure btPrevClick(Sender: TObject);
    procedure chExpandClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgRtosKeyPress(Sender: TObject; var Key: Char);
    procedure spFechDownClick(Sender: TObject);
    procedure spFechUpClick(Sender: TObject);
    procedure BorrarRtoExecute(Sender: TObject);
    procedure cxGRtosDetDblClick(Sender: TObject);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chbFiltrar_oldClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tvListadoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure MarcarEntregadosExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure cxGRtosDetCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvListadoGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure chbFiltrarClick(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure CancelarExecute(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
    Cancela:Boolean;
    Lista:TStringList;
  end;

var
  FormControlAsignacionRto_Fc: TFormControlAsignacionRto_Fc;

implementation

uses UDMain_FD, UBuscadorClientes, UFactura_2, UFacturaCtdo_2, URemitos;
{$R *.dfm}

procedure TFormControlAsignacionRto_Fc.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  CDSRtos.Filtered:=False;
  CDSRtos.Filter:='';

   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      edNombre.Text := QClientesNOMBRE.Value;
      QClientes.Close;
     // CDSRtos.Filtered:=False;
//      CDSRtos.Filter:='CODIGO = '+''''+FormBuscadorClientes.Codigo+'''';
//      CDSRtos.Filtered:=True;

      Buscar.Execute;
    END;

end;

procedure TFormControlAsignacionRto_Fc.BuscarExecute(Sender: TObject);
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin
  Nodo1 := NIL;
  Cancela:=False;
  Lista.Clear;
  tvListado.Items.Clear;
 // CDSRtos.Filtered:=False;
 // CDSRtos.Filter:='';
 // chbFiltrar.Checked:=False;


  CDSFcRto.Close;
  CDSFcRto.Params.ParamByName('codigo').AsString:= ceCliente.Text;
  CDSFcRto.Params.ParamByName('Desde').AsDate   := Desde.Date;
  CDSFcRto.Params.ParamByName('Hasta').AsDate   := Hasta.Date;
  CDSFcRto.Open;


  WHILE NOT (CDSFcRto.Eof) and (Cancela=false) DO
    BEGIN
      Lista.Add(IntToStr(CDSFcRtoID_FC.Value));
      Application.ProcessMessages;
      Nodo1 := tvListado.Items.Add(NIL, '('+CDSFcRtoID_FC.AsString +')  '+
                                            CDSFcRtoFECHAVTA.AsString+' - '+
                                            CDSFcRtoTIPOCPBTE.Value  +' - '+
                                            CDSFcRtoCLASECPBTE.Value +' - '+
                                            CDSFcRtoNROCPBTE.Value   +' . '+
                                            CDSFcRtoNRORTO.Value     +'....... $ '+
                                        FormatFloat(',0.00',CDSFcRtoTOTAL.AsFloat));
      tvListado.Selected := Nodo1;
      N := tvListado.Selected.AbsoluteIndex;

      CDSRtoAsociado.Close;
      CDSRtoAsociado.Params.ParamByName('id_Factura').Value := CDSFcRtoID_FC.Value;
      CDSRtoAsociado.Open;
      CDSRtoAsociado.First;


      WHILE NOT (CDSRtoAsociado.Eof) DO
        BEGIN
          Nodo1 := tvListado.Items.AddChild(tvListado.Items[N], CDSRtoAsociadoFECHAVTA.AsString + ' - ' +
                                                                CDSRtoAsociadoTIPOCPBTE.Value   + ' - ' +
                                                                CDSRtoAsociadoCLASECPBTE.Value  + ' - ' +
                                                                CDSRtoAsociadoNROCPBTE.Value    + ' (Ref:' +
                                                                CDSRtoAsociadoID_RTO.AsString   + ')');
          tvListado.Selected := Nodo1;
          CDSRtoAsociado.Next;
        END;
      CDSFcRto.Next;
    END;

  CDSRtos.Filtered := False;
  CDSRtos.Filter   := '';

  CDSRtos.Close;
  CDSRtos.IndexFieldNames:='';
  CDSRtos.IndexDefs.Clear;
  CDSRtos.Params.ParamByName('codigo').AsString:= '******';//ceCliente.Text;
  CDSRtos.Open;
  CDSRtos.IndexFieldNames:='NOMBRE';
  CDSRtos.First;

  if (Not(CDSRtos.IsEmpty)) and (Trim(cecliente.Text)<>'') then
    begin
      CDSRtos.Filtered := False;
      CDSRtos.Filter   := 'CODIGO = '+''+Trim(cecliente.Text)+'';
      CDSRtos.Filtered := chbFiltrar.Checked;
    end;

  Cancela:=False;
  //  tvListado.SetFocus;
//  dbgRtos.SetFocus;
//  dbgRtos.SelectAll;
//  ActiveControl:=tvListado;
end;

procedure TFormControlAsignacionRto_Fc.CancelarExecute(Sender: TObject);
begin
 // inherited;
  Cancela:=True;
end;

procedure TFormControlAsignacionRto_Fc.chbFiltrarClick(Sender: TObject);
begin
  inherited;
  if (Not(CDSRtos.IsEmpty)) and (Trim(cecliente.Text)<>'') then
    begin
      CDSRtos.Filtered := False;
      CDSRtos.Filter   := 'CODIGO = '+''+Trim(cecliente.Text)+'';
      CDSRtos.Filtered := chbFiltrar.Checked;
    end;
end;

procedure TFormControlAsignacionRto_Fc.BorrarRtoExecute(Sender: TObject);
var tipo,Dato:string;
nodo:TTreeNode;
I1,I2:Integer;
begin
  inherited;
  Nodo:=tvListado.Selected;
  if Nodo<>nil then
    begin
      if (Nodo.Level=1) then
       begin
         i1:=Pos(':',Nodo.Text)+1;
         i2:=Pos(')',Nodo.Text);
         Dato:= Trim( Copy(Nodo.Text,i1,i2-i1));
         Tipo:= Copy(Nodo.Text,14,2);
        // if tipo='RE' then
           begin
             DMMain_FD.fdcGestion.StartTransaction;
             try
               spRecuperarRto.Close;
               spRecuperarRto.ParamByName('id_rto').ASInteger:=StrToInt(Dato);
               spRecuperarRto.ExecProc;
               DMMain_FD.fdcGestion.Commit;
               spRecuperarRto.Close;
               except
                 DMMain_FD.fdcGestion.Rollback;
                 ShowMessage('No se pudo hacer el cambio..');
               end;
             spRecuperarRto.Close;
           end;
          Buscar.Execute;
       end;
    end;

end;

procedure TFormControlAsignacionRto_Fc.btPrevClick(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  //Next
  if (Sender as TBitBtn).Name='btNext' Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if (Sender as TBitBtn).Name='btPrev' Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
 // if ceCtaBco.Text<>'' Then
  Buscar.Execute;
//  dbgRtos.SetFocus;
   //  Desde.SetFocus;
end;

procedure TFormControlAsignacionRto_Fc.btVerClick(Sender: TObject);
begin
  inherited;
  if Not(CDSRtos.IsEmpty) then
    begin
      if Not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(Self);
      FormRemitos.DatoNew:=CDSRtosID_RTO.AsString;
      FormRemitos.TipoCpbte:='RE';
      FormRemitos.Recuperar.Execute;
      FormRemitos.Show;
    end;
end;

procedure TFormControlAsignacionRto_Fc.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=vk_delete) or (Key=VK_BACK) then
    begin
      ceCliente.Text    := '';
      edNombre.Text     := '';
      CDSFcRto.Filtered := False;
      CDSFcRto.Filter   := '';
    end;
end;

procedure TFormControlAsignacionRto_Fc.ceClienteKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      chbFiltrar.Checked:=False;
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        edNombre.Text := QClientesNOMBRE.Value;
      Buscar.Execute;
    END;
end;

procedure TFormControlAsignacionRto_Fc.chbFiltrar_oldClick(Sender: TObject);
begin
  inherited;
  if (Not(CDSRtos.IsEmpty)) and (Trim(cecliente.Text)<>'') then
    begin
      CDSRtos.Filtered := False;
      CDSRtos.Filter   := 'CODIGO = '+''+Trim(cecliente.Text)+'';
      CDSRtos.Filtered := chbFiltrar.Checked;
    end;
 end;

procedure TFormControlAsignacionRto_Fc.chExpandClick(Sender: TObject);
begin
  inherited;
  tvListado.AutoExpand:= chExpand.Checked;
end;

procedure TFormControlAsignacionRto_Fc.cxGRtosDetCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  QRtoDet.close;
  QRtoDet.ParamByName('idrto').Value:=CDSRtosID_RTO.Value;
  QRtoDet.Open;
end;

procedure TFormControlAsignacionRto_Fc.cxGRtosDetDblClick(
  Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  ceCliente.Text:=CDSRtosCODIGO.AsString;
  ceClienteKeyPress(Sender,Enter);
end;

procedure TFormControlAsignacionRto_Fc.dbgRtosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRemitos)) then
    FormRemitos:=TFormRemitos.Create(Self);
  FormRemitos.DatoNew:=CDSRtosID_RTO.AsString;
  FormRemitos.TipoCpbte:='RE';
  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;
end;

procedure TFormControlAsignacionRto_Fc.dbgRtosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (CDSRtos.IsEmpty=False) and (key='-') and (CDSRtosID_RTO.AsString<>'') then
     begin
      key:=#0;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QMarcarEntregado.Close;
        QMarcarEntregado.ParamByName('id').Value:=CDSRtosID_RTO.Value;
        QMarcarEntregado.ExecSQL;
        QMarcarEntregado.Close;
        DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo hacer el cambio..');
        end;
    end;
  CDSRtos.Close;
  CDSRtos.Params.ParamByName('codigo').AsString:=ceCliente.Text;
  CDSRtos.Open;
  CDSRtos.First;
end;


procedure TFormControlAsignacionRto_Fc.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Action:=True;
  Buscar.Execute;
end;

procedure TFormControlAsignacionRto_Fc.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlAsignacionRto_Fc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlAsignacionRto_Fc.FormCreate(Sender: TObject);
begin
//  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Lista:=TStringList.Create;
end;

procedure TFormControlAsignacionRto_Fc.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlAsignacionRto_Fc:=nil;
end;

procedure TFormControlAsignacionRto_Fc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TJvComboEdit)  then
    inherited;
end;

procedure TFormControlAsignacionRto_Fc.FormResize(Sender: TObject);
begin
  inherited;
  if (FormControlAsignacionRto_Fc<>nil) Then
    if (FormControlAsignacionRto_Fc.Width<>1325) then
      FormControlAsignacionRto_Fc.Width:=1325;
end;

procedure TFormControlAsignacionRto_Fc.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.date));
  CDSRtos.Close;
  CDSRtos.IndexFieldNames:='';
  CDSRtos.IndexDefs.Clear;
  CDSRtos.Params.ParamByName('codigo').AsString:= '******';//ceCliente.Text;
  CDSRtos.Open;
  CDSRtos.IndexFieldNames:='NOMBRE';

  CDSRtos.First;

end;


procedure TFormControlAsignacionRto_Fc.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frFcRto.LoadFromFile(DMMain_FD.PathReportesCpbte + '\AsignacionRtoFc.fr3');
  frFcRto.PrepareReport;
  frFcRto.ShowReport;
end;

procedure TFormControlAsignacionRto_Fc.MarcarEntregadosExecute(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  IF MessageDlg('Ud. Va marcar los remitos como Facturados...', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin
     DMMain_FD.fdcGestion.StartTransaction;
      try
        QMarcarEntregado.Close;
        for x:=0 to cxGRtosDet.Controller.SelectedRecordCount -1 do
          begin
            QMarcarEntregado.ParamByName('id').Value:=   cxGRtosDet.Controller.SelectedRecords[x].Values[0];
            QMarcarEntregado.ExecSQL;
            QMarcarEntregado.Close;
          end;

        DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo hacer el cambio..');
        end;
      QMarcarEntregado.Close;
    end;
  Buscar.Execute;
end;

procedure TFormControlAsignacionRto_Fc.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   tvListado.FullCollapse;
end;

procedure TFormControlAsignacionRto_Fc.spExapndClick(Sender: TObject);
begin
  inherited;
  tvListado.FullExpand;
end;

procedure TFormControlAsignacionRto_Fc.spFechDownClick(Sender: TObject);
var d,m,y:word;
begin
  Desde.Date:=IncMonth(Desde.Date,-1);
  DecodeDate(Desde.date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

procedure TFormControlAsignacionRto_Fc.spFechUpClick(Sender: TObject);
var d,m,y:word;
begin
  Desde.Date:=IncMonth(Desde.Date,1);
  DecodeDate(Desde.Date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

procedure TFormControlAsignacionRto_Fc.tvListadoCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  if (Node.Level=0) and (Node.HasChildren) then
    begin
      Sender.Canvas.Font.Color:=clBlue;
      Sender.Canvas.Font.Style:=[fsBold];
    end
  else
     begin
       Sender.Canvas.Font.Color:=clBlack;
       Sender.Canvas.Font.Style:=[];
     end;

  if cdsFocused in State then
    Sender.Canvas.Font.Color:=clWhite;
end;

procedure TFormControlAsignacionRto_Fc.tvListadoDblClick(Sender: TObject);
var tipo,Dato:string;
nodo:TTreeNode;
I1,I2:Integer;
begin
  inherited;
  Nodo:=tvListado.Selected;
  if Nodo<>nil then
    begin
      if (Nodo.Level=0) then
        begin
          i1:=Pos('-',tvListado.Selected.Text)+2;
          Tipo:= Copy(tvListado.Selected.Text,i1,2);

          i1:=Pos('(',tvListado.Selected.Text)+1;
          i2:=Pos(')',tvListado.Selected.Text);
          Dato:= Copy(tvListado.Selected.Text,i1,i2-i1);
          if (tipo='FC') or (tipo='NC') then
            begin
              if Not(Assigned(FormCpbte_2)) then
                FormCpbte_2:=TFormCpbte_2.Create(self);
              FormCpbte_2.DatoNew  :=Dato;//Lista[tvListado.Selected.Index];
              FormCpbte_2.TipoCpbte:=Tipo;//'FC';
              FormCpbte_2.Recuperar.Execute;
              FormCpbte_2.Show;
            end
          else
          if tipo='FO' then
            begin
              if Not(Assigned(FormCpbteCtdo_2)) then
                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
              FormCpbteCtdo_2.DatoNew:=Dato;//Lista[tvListado.Selected.Index];
              FormCpbteCtdo_2.TipoCpbte:='FO';
              FormCpbteCtdo_2.Recuperar.Execute;
              FormCpbteCtdo_2.Show;
            end;
         end
       else
         if (Nodo.Level=1) then
           begin
             i1:=Pos('-',tvListado.Selected.Text)+2;
             Tipo:= Copy(tvListado.Selected.Text,i1,2);

             i1:=Pos(':',tvListado.Selected.Text)+1;
             i2:=Pos(')',tvListado.Selected.Text);
             Dato:= Copy(tvListado.Selected.Text,i1,i2-i1);
             if tipo='RE' then
               begin
                 if Not(Assigned(FormRemitos)) then
                   FormRemitos:=TFormRemitos.Create(self);
                 FormRemitos.DatoNew   := Dato;
                 FormRemitos.TipoCpbte := Tipo;
                 FormRemitos.Recuperar.Execute;
                 FormRemitos.Show;
               end
           end;
    end;


end;

procedure TFormControlAsignacionRto_Fc.tvListadoDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i,ID_Rto, ID_Fac,N,RecID,ColID:Integer;
Dato,
Nro:String;
TargetNode,Nodo1:TTreeNode;
begin
  inherited;
  TargetNode := tvListado.GetNodeAt(X,Y); // Get target node
  if (TargetNode<>nil) and (TargetNode.Level=0) then
    begin
      i           := TargetNode.Index;
      TargetNode  := tvListado.GetNodeAt(X,Y); // Get target node
      Dato        := targetNode.Text;
      Delete(Dato,1,1);
      ID_Fac      := StrToInt(Trim(Copy(Dato,1,Pos(')',Dato)-1)));
      while (Pos('-',Dato)>0) do
        Delete(Dato,1,1);
      Nro:=AnsiLeftStr(Trim(Dato),13);// Trim(Copy(Dato,1,13));
      if (TargetNode.Level=0) and (TargetNode<>nil) then
        begin
          i  := TargetNode.Index;
        //  Nro:= Copy(TargetNode.Text,18,13);// Copy(TargetNode.Text,18,13);
          for i := 0 to (cxGRtosDet.Controller.SelectedRecordCount - 1) do
            begin
              if Not(VarIsNull(cxGRtosDet.Controller.SelectedRecords[i].RecordIndex)) then
                 begin
                   RecId   := cxGRtosDet.Controller.SelectedRecords[i].RecordIndex;
                   ColId   := cxGRtosDet.DataController.GetItemByFieldName('ID_RTO').Index;
                   Id_Rto  := cxGRtosDet.DataController.Values[RecId, ColId];

                   if CDSRtosCODIGO.Value=ceCliente.Text then
                      begin
                        spMarcarRto.Close;
                        spMarcarRto.ParamByName('id_rto').Value  := ID_RTO;
                        spMarcarRto.ParamByName('id_fc').Value   := Id_Fac;
                        spMarcarRto.ParamByName('Nro_fac').Value := Nro;
                        spMarcarRto.ExecProc;
                        spMarcarRto.Close;
//                        CDSRtos.Delete;
                      end;
                 end;
            end;

          Nodo1 := NIL;

          Lista.Clear;
          tvListado.Items.Clear;
          Buscar.Execute;


//          CDSFcRto.Close;
//          CDSFcRto.Params.ParamByName('codigo').AsString := ceCliente.Text;
//          CDSFcRto.Params.ParamByName('Desde').AsDate    := Desde.Date;
//          CDSFcRto.Params.ParamByName('Hasta').AsDate    := Hasta.Date;
//
//          CDSFcRto.Open;
//          WHILE NOT (CDSFcRto.Eof) DO
//            BEGIN
//              Lista.Add(IntToStr(CDSFcRtoID_FC.Value));
//              Application.ProcessMessages;
//              Nodo1 := tvListado.Items.Add(NIL, '('+CDSFcRtoID_FC.AsString +')  '+
//                                            CDSFcRtoFECHAVTA.AsString+' - '+
//                                            CDSFcRtoTIPOCPBTE.Value  +' - '+
//                                            CDSFcRtoCLASECPBTE.Value +' - '+
//                                            CDSFcRtoNROCPBTE.Value   +'....... $ '+
//                                        FormatFloat(',0.00',CDSFcRtoTOTAL.AsFloat));
//
//              tvListado.Selected := Nodo1;
//              N := tvListado.Selected.AbsoluteIndex;
//
//              CDSRtoAsociado.Close;
//              CDSRtoAsociado.Params.ParamByName('id_Factura').Value := CDSFcRtoID_FC.Value;
//              CDSRtoAsociado.Open;
//              CDSRtoAsociado.First;
//              WHILE NOT (CDSRtoAsociado.Eof) DO
//                BEGIN
//                  Nodo1 := tvListado.Items.AddChild(tvListado.Items[N], CDSRtoAsociadoFECHAVTA.AsString + '-' +
//                                                                        CDSRtoAsociadoTIPOCPBTE.Value   + '-' +
//                                                                        CDSRtoAsociadoCLASECPBTE.Value  + '-' +
//                                                                        CDSRtoAsociadoNROCPBTE.Value    + '(Ref:' +
//                                                                        CDSRtoAsociadoID_RTO.AsString   + ')');
//
//                  tvListado.Selected := Nodo1;
//                  CDSRtoAsociado.Next;
//                END;
//              CDSFcRto.Next;
//            END;
        end;

    end;
end;

procedure TFormControlAsignacionRto_Fc.tvListadoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
  if (Source is TJvDBGrid ) or (Source is TcxGrid ) then
    Accept:=True;
  if Accept=True then
    Accept:=Not(CDSFcRto.IsEmpty);


  if Accept then
    begin
      if (y < 14) then {On the upper edge - should scroll up }
        SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEUP, 0)
      else
        if (tvListado.Height - y < 14) then { On the lower edge - should scroll down }
          SendMessage(tvListado.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
      Nodo:=tvListado.Selected;
     // if Nodo.Level>0 then
     //   Accept:=False;
      lbNivel.Caption:='Level:'+IntToStr(Nodo.Level)+'..Y:'+IntToStr(y)+' '+Nodo.Text;
    end;
end;



procedure TFormControlAsignacionRto_Fc.tvListadoGetSelectedIndex(
  Sender: TObject; Node: TTreeNode);
var tipo,Dato:string;
nodo:TTreeNode;
I1,I2:Integer;
begin
  inherited;
  Nodo:=tvListado.Selected;
  if Nodo<>nil then
    begin
      if (Nodo.Level=0) then
        begin
          i1:=Pos('-',tvListado.Selected.Text)+2;
          Tipo:= Copy(tvListado.Selected.Text,i1,2);

          i1  := Pos('(',tvListado.Selected.Text)+1;
          i2  := Pos(')',tvListado.Selected.Text);
          Dato:= Copy(tvListado.Selected.Text,i1,i2-i1);
          QDetFact.Close;
          QDetFact.ParamByName('id').Value:=StrToInt(Dato);
          QDetFact.Open;
//          if tipo='FC' then
//            begin
//              if Not(Assigned(FormCpbte_2)) then
//                FormCpbte_2:=TFormCpbte_2.Create(self);
//              FormCpbte_2.DatoNew:=Dato;//Lista[tvListado.Selected.Index];
//              FormCpbte_2.TipoCpbte:='FC';
//              FormCpbte_2.Recuperar.Execute;
//              FormCpbte_2.Show;
//            end
//          else
//          if tipo='FO' then
//            begin
//              if Not(Assigned(FormCpbteCtdo_2)) then
//                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
//              FormCpbteCtdo_2.DatoNew:=Dato;//Lista[tvListado.Selected.Index];
//              FormCpbteCtdo_2.TipoCpbte:='FO';
//              FormCpbteCtdo_2.Recuperar.Execute;
//              FormCpbteCtdo_2.Show;
//            end;
         end;
    end;


end;

//procedure TFormControlAsignacionRto_Fc.UpDown1Click(Sender: TObject;
//  Button: TUDBtnType);
//var d,m,y:word;
//begin
//  DecodeDate(Desde.Date,y,m,d);
//  if Button=btnext Then
//    if m=12 Then
//      begin
//        m:=1;y:=y+1;
//      end
//    else
//      m:=m+1
//  else
//    if Button=btPrev Then
//      if m=1 Then
//        begin
//          m:=12;y:=y-1;
//        end
//      else
//        m:=m-1;
//
//  Desde.Date:=EncodeDate(y,m,1);
//  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
// // if ceCtaBco.Text<>'' Then
//  Buscar.Execute;
//  dbgRtos.SetFocus;
//   //  Desde.SetFocus;
//end;

end.
