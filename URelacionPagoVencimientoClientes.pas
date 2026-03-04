unit URelacionPagoVencimientoClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, StdCtrls, Mask,
  ActnList, ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls, Grids,
  DBGrids, frxClass, frxDBSet, JvComponentBase, JvExControls, JvGradient,Librerias,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormRelacionPagoSClientes = class(TFormABMBase)
    edNombreCliente: TEdit;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    BuscarClientes: TAction;
    DSPMovCC: TDataSetProvider;
    DSPAplicaciones: TDataSetProvider;
    DSPCajaMov: TDataSetProvider;
    CDSMovCC: TClientDataSet;
    CDSAplicaciones: TClientDataSet;
    CDSCajaMov: TClientDataSet;
    DSMovCC: TDataSource;
    DSAplicaciones: TDataSource;
    DSCajaMov: TDataSource;
    DSValores: TDataSource;
    CDSValores: TClientDataSet;
    DSPValores: TDataSetProvider;
    CDSAplicacionesMora: TFloatField;
    CDSValoresMora: TFloatField;
    tvMovimientos: TTreeView;
    CDSMovCCPERIODO: TFloatField;
    frxReporte: TfrxReport;
    frdbMovcc: TfrxDBDataset;
    frdbAplicaciones: TfrxDBDataset;
    frdbCajaMov: TfrxDBDataset;
    frdbValores: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    chTodos: TCheckBox;
    lbPromedio: TLabel;
    lbItems: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    UpDown1: TUpDown;
    RxLabel4: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceCliente: TJvComboEdit;
    CDSMovCCID_MOVCCVTA: TIntegerField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesID_MOVCCVTA: TIntegerField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSCajaMovID_MOV_CAJA: TIntegerField;
    CDSCajaMovTIPO_OPERACION: TStringField;
    CDSCajaMovID_COMPROBANTE: TIntegerField;
    CDSCajaMovTIPO_COMPROB: TStringField;
    CDSValoresID_MOV_CAJA: TIntegerField;
    CDSValoresORIGEN: TStringField;
    CDSValoresNOMBRE: TStringField;
    CDSValoresNUMERO: TIntegerField;
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
    CDSClientesLIMITE_CREDITO: TFMTBCDField;
    CDSClientesSALDOINICIAL: TFMTBCDField;
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
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView1PERIODO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2Mora: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView2FECHA: TcxGridDBColumn;
    cxGrid1DBTableView2NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView3Mora: TcxGridDBColumn;
    cxGrid1DBTableView3ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView3FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView3FECHA_COBRO: TcxGridDBColumn;
    cxGrid1DBTableView3ORIGEN: TcxGridDBColumn;
    cxGrid1DBTableView3IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView3NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView3NUMERO: TcxGridDBColumn;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView4ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView4FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView4FECHA_COBRO: TcxGridDBColumn;
    cxGrid1DBTableView4ORIGEN: TcxGridDBColumn;
    cxGrid1DBTableView4NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView4NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView4IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView4Mora: TcxGridDBColumn;
    TabSheet3: TTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid2DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA: TcxGridDBColumn;
    cxGrid2DBTableView1NUMEROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid2DBTableView1Mora: TcxGridDBColumn;
    cxGrid3DBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid3DBTableView1FECHA_OPERACION: TcxGridDBColumn;
    cxGrid3DBTableView1TIPO_OPERACION: TcxGridDBColumn;
    cxGrid3DBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGrid3DBTableView1TIPO_COMPROB: TcxGridDBColumn;
    cxGrid3DBTableView1DEBE: TcxGridDBColumn;
    cxGrid3DBTableView1HABER: TcxGridDBColumn;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid4DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid4DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid4DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid4DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid4DBTableView1PERIODO: TcxGridDBColumn;
    cxGrid4DBTableView1DEBE: TcxGridDBColumn;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid5DBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGrid5DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGrid5DBTableView1ORIGEN: TcxGridDBColumn;
    cxGrid5DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid5DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid5DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid5DBTableView1Mora: TcxGridDBColumn;
    QMovCC: TFDQuery;
    CDSMovCCDEBE: TFloatField;
    QAplicaciones: TFDQuery;
    QValores: TFDQuery;
    QCajaMov: TFDQuery;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSCajaMovHABER: TFloatField;
    CDSCajaMovDEBE: TFloatField;
    CDSValoresIMPORTE: TFloatField;
    CDSAplicacionesPONDERADO: TFloatField;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSCajaMovFECHA_OPERACION: TSQLTimeStampField;
    CDSValoresFECHA_EMISION: TSQLTimeStampField;
    CDSValoresFECHA_COBRO: TSQLTimeStampField;
    procedure BuscarClientesExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSAplicacionesCalcFields(DataSet: TDataSet);
    procedure CDSValoresCalcFields(DataSet: TDataSet);
    procedure CDSMovCCCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure tvMovimientosDblClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalMora:Real;
    TotalDiasGracia:Integer;
    TotalItem:Integer;
  end;

var
  FormRelacionPagoSClientes: TFormRelacionPagoSClientes;

implementation

uses  UBuscadorClientes,UDMain_FD;

{$R *.DFM}

procedure TFormRelacionPagoSClientes.BuscarClientesExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  begin
    ceCliente.Text := FormBuscadorClientes.Codigo;
    CDSClientes.Close;
    CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
    CDSClientes.Open;
    if not (CDSClientes.eof) then
    begin
      edNombreCliente.Text := CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    end;
  end;


end;

procedure TFormRelacionPagoSClientes.BuscarExecute(Sender: TObject);
var
  Nodo1: TTreeNode;
  N, M, Dias,
  Id_Desde,Id_Hasta : Integer;
  Cifra:String;
begin
//  inherited;
  tvMovimientos.Items.Clear;
  CDSMovCC.Close;
  CDSAplicaciones.Close;
  CDSValores.Close;
  CDSCajaMov.Close;
  TotalMora:=0;
  if Not(chTodos.Checked) Then
    CDSMovCC.Params.ParamByName('codigo').Value := ceCliente.Text
  else
    CDSMovCC.Params.ParamByName('codigo').Value := '******';

  CDSMovCC.Params.ParamByName('desde').value:=desde.Date;
  CDSMovCC.Params.ParamByName('hasta').value:=hasta.Date;
  CDSMovCC.Open;

  CDSMovCC.Last;
  Id_Hasta:=CDSMovCCID_MOVCCVTA.AsInteger;
  CDSMovCC.First;
  Id_Desde:=CDSMovCCID_MOVCCVTA.AsInteger;

  CDSAplicaciones.Close;
  CDSAplicaciones.Params.ParamByName('id_desde').Value := Id_Desde;
  CDSAplicaciones.Params.ParamByName('id_hasta').Value := Id_Hasta;
  CDSAplicaciones.Open;

  CDSAplicaciones.Last;
  Id_Hasta:=CDSAplicacionesID_CPBTE.AsInteger;
  CDSAplicaciones.First;
  Id_Desde:=CDSAplicacionesID_CPBTE.AsInteger;

  CDSCajaMov.Close;
  CDSCajaMov.Params.ParamByName('id_desde').Value   := Id_Desde;
  CDSCajaMov.Params.ParamByName('id_hasta').Value   := Id_Hasta;
  CDSCajaMov.open;

  CDSCajaMov.Last;
  Id_Hasta:=CDSCajaMovID_MOV_CAJA.AsInteger;
  CDSCajaMov.First;
  Id_Desde:=CDSCajaMovID_MOV_CAJA.AsInteger;

  CDSValores.Close;
  CDSValores.Params.ParamByName('id_desde').Value   := Id_Desde;
  CDSValores.Params.ParamByName('id_hasta').Value   := Id_Hasta;
  CDSValores.open;


  if CDSMovCC.RecordCount<0 Then
    begin
      CDSMovCC.First;
      tvMovimientos.Items.Clear;
      CDSAplicaciones.First;
      CDSValores.First;
      CDSCajaMov.First;

      Nodo1 := nil;
      while not (CDSMovCC.Eof) do
        begin
          Dias := trunc(CDSMovCCFECHAVTO.AsDateTime - CDSMovCCFECHAVTA.AsDateTime);
          Cifra:=Copy('                ',1,15-Length(FloatToStrF(CDSMovCCDEBE.AsFloat, ffNumber, 10, 2)))+FloatToStrF(CDSMovCCDEBE.AsFloat, ffNumber, 10, 2);
          Nodo1 := tvMovimientos.Items.Add(nil, CDSMovCCDETALLE.AsString+' >> '+CDSMovCCFECHAVTA.AsString + ' ---- ' + CDSMovCCFECHAVTO.AsString + ' .......... ' + 'Periodo de Credito....:' + intToStr(dias) + '->> $ ' +
          Cifra + ' .........Días de Mora :' + intToStr(trunc(CDSValoresMora.Value)));
          TotalDiasGracia:=TotalDiasGracia+Dias;
          tvMovimientos.Selected := Nodo1;
          N := tvMovimientos.Selected.AbsoluteIndex;
          CDSAplicaciones.first;
          while not (CDSAplicaciones.Eof) do
            begin
              Cifra:=Copy('                 ',1,15-Length(FloatToStrF(CDSAplicacionesIMPORTE.AsFloat, ffNumber, 10, 2)))+FloatToStrF(CDSAplicacionesIMPORTE.AsFloat, ffNumber, 10, 2);
              Nodo1 := tvMovimientos.Items.AddChild(tvMovimientos.Items[N],
              CDSAplicacionesFECHA.AsString + ' --- ' + CDSAplicacionesNUMEROCPBTE.asstring + ' .......... ' + Cifra + '..... Días de mora.:' + IntToStr(Trunc(CDSAplicacionesMora.Value)));
              tvMovimientos.Selected := Nodo1;
              M := tvMovimientos.Selected.AbsoluteIndex;
              CDSValores.First;
              while not (CDSValores.Eof) do
                begin
                  Cifra:=Copy('                 ',1,15-Length(FloatToStrF(CDSValoresIMPORTE.AsFloat, ffNumber, 10, 2)))+FloatToStrF(CDSValoresIMPORTE.AsFloat, ffNumber, 10, 2);
                  Nodo1 := tvMovimientos.Items.AddChild(tvMovimientos.Items[M],'Che.Nro.:'+CDSValoresNUMERO.AsString+' del Banco '+CDSValoresNOMBRE.AsString+' '+
                  CDSValoresFECHA_EMISION.AsString + ' ---- ' + CDSValoresFECHA_COBRO.AsString + ' .......... ' + Cifra + '....... Días de mora.:' + IntToStr(Trunc(CDSValoresMora.Value)));
                  TotalMora:=TotalMora+Trunc(CDSValoresMora.Value);
                  CDSValores.Next;
                end;
              CDSAplicaciones.Next;
            end;
          CDSMovCC.Next;
        end;

    end;
//  lbItems.Caption    :=IntToStr(CDSMovCC.RecordCount);
//  if CDSMovcc.RecordCount>0 then
//    lbPromedio.Caption :=FormatFloat('0.00', TotalMora/CDSMovCC.RecordCount)
//  else
//    lbPromedio.Caption :='0.00';
//  CDSMovCC.First;
//  if Not(CDSAplicaciones.State in [dsInactive]) then
//    CDSAplicaciones.First;
//  if Not(CDSValores.State in [dsInactive]) then
//    CDSValores.First;
//  if Not(CDSCajaMov.State in [dsInactive]) then
//    CDSCajaMov.First;
   cxGrid1DBTableView1.ViewData.Expand(True);
   cxGrid1DBTableView2.ViewData.Expand(True);
   cxGrid1DBTableView3.ViewData.Expand(True);
   cxGrid1DBTableView4.ViewData.Expand(True);

end;

procedure TFormRelacionPagoSClientes.CDSAplicacionesCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSAplicacionesMora.Value     := CDSAplicacionesFECHA.AsDateTime - CDSMovCCFECHAVTO.AsDateTime;
  CDSAplicacionesPONDERADO.Value:= CDSAplicacionesMora.Value * CDSAplicacionesIMPORTE.AsFloat;
end;

procedure TFormRelacionPagoSClientes.CDSValoresCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSValoresMora.Value := CDSValoresFECHA_COBRO.AsDateTime - CDSMovCCFECHAVTO.AsDateTime;
  if CDSValoresMora.Value<=0 then
    CDSValoresMora.Value:=0;
end;

procedure TFormRelacionPagoSClientes.CDSMovCCCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSMovCCPERIODO.Value := (CDSMovCCFECHAVTO.AsDateTime - CDSMovCCFECHAVTO.AsDateTime);
end;

procedure TFormRelacionPagoSClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFormRelacionPagoSClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRelacionPagoSClientes := nil;
end;

procedure TFormRelacionPagoSClientes.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var dato:string;
begin
  inherited;
  if Key = VK_Return then
    begin
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      if not (CDSClientes.eof) then
        edNombreCliente.Text := CDSClientesNOMBRE.AsString;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    end
  else
    if (Key = 17) and (Shift = [ssCtrl]) then
      BuscarClientes.Execute;

end;

procedure TFormRelacionPagoSClientes.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1*1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;


  //Hasta.Date := Date;
  //Desde.Date := Date-360;
end;

procedure TFormRelacionPagoSClientes.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormRelacionPagoSClientes.ImprimirExecute(Sender: TObject);
begin
  inherited;
  
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRelacionPagosClientes.fr3');
  frxReporte.Variables['Cliente']:=''''+edNombreCliente.Text+'''';
  //frLibro.PrepareReport;

  frxReporte.ShowReport;

end;

procedure TFormRelacionPagoSClientes.tvMovimientosDblClick(
  Sender: TObject);
begin
  inherited;
  tvMovimientos.FullExpand;
end;

procedure TFormRelacionPagoSClientes.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  inherited;
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
  Buscar.Execute;
end;

end.