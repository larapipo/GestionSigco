unit UMovAuxCCComp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, JvAppStorage, JvAppIniStorage, Data.DB,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
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
  JvBaseEdits, cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit, JvExMask,
  JvToolEdit, IBGenerator, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormMovAuxCCComp = class(TFormABMBase)
    CDSMov: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DSPMov: TDataSetProvider;
    CDSMovID: TIntegerField;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovCODIGO_PROV: TStringField;
    CDSMovID_TIPO: TIntegerField;
    CDSMovID_OP: TIntegerField;
    CDSMovMUESTRATIPO: TStringField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeFecha: TJvDBDateEdit;
    DataSource1: TDataSource;
    CDSMovMUESTRAPROVEEDOR: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbeDebe: TJvDBCalcEdit;
    dbeHaber: TJvDBCalcEdit;
    ceTipo: TJvDBComboEdit;
    ceCodigo: TJvDBComboEdit;
    dbeNombre: TDBEdit;
    dbeDescripcion: TDBEdit;
    BuscarProvee: TAction;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorSALDO_INICIAL: TFMTBCDField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFMTBCDField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField;
    CDSProveedorCON_OCOMPRA: TStringField;
    IBGMov: TIBGenerator;
    BuscarTipo: TAction;
    QMov: TFDQuery;
    QMovID: TIntegerField;
    QMovFECHA: TSQLTimeStampField;
    QMovCODIGO_PROV: TStringField;
    QMovID_TIPO: TIntegerField;
    QMovDEBE: TFloatField;
    QMovHABER: TFloatField;
    QMovID_OP: TIntegerField;
    QMovMUESTRATIPO: TStringField;
    QMovMUESTRAPROVEEDOR: TStringField;
    CDSMovDEBE: TFloatField;
    CDSMovHABER: TFloatField;
    QTipo: TFDQuery;
    QTipoID: TIntegerField;
    QTipoDETALLE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarProveeExecute(Sender: TObject);
    procedure CDSMovCODIGO_PROVSetText(Sender: TField; const Text: string);
    procedure CDSMovNewRecord(DataSet: TDataSet);
    procedure BuscarTipoExecute(Sender: TObject);
    procedure CDSMovID_TIPOSetText(Sender: TField; const Text: string);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMovAuxCCComp: TFormMovAuxCCComp;

implementation

{$R *.dfm}
uses UDMain_FD,UBuscadorProveedor, UBuscadorTipoAdCompra,
  UBuscadorMovAuxCCComp;

procedure TFormMovAuxCCComp.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorMovAuxCCComp)) THEN
     FormBuscadorMovAuxCCComp:=TFormBuscadorMovAuxCCComp.Create(self);
   FormBuscadorMovAuxCCComp.ShowModal;
   if FormBuscadorMovAuxCCComp.Id>-1 Then
     begin
       DatoNew:=IntToStr(FormBuscadorMovAuxCCComp.Id);
       Recuperar.Execute;
     end;

end;

procedure TFormMovAuxCCComp.BuscarProveeExecute(Sender: TObject);
begin
  inherited;
 IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Self);
   FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       CDSMovCODIGO_PROVSetText(CDSMovCODIGO_PROV, FormBuscadorProveedor.Codigo);
     end;
end;

procedure TFormMovAuxCCComp.BuscarTipoExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorTipoMovCCComp)) THEN
     FormBuscadorTipoMovCCComp:=TFormBuscadorTipoMovCCComp.Create(Self);
  FormBuscadorTipoMovCCComp.ShowModal;
  if FormBuscadorTipoMovCCComp.Id>-1 Then
    begin
      CDSMovID_TIPOSetText(CDSMovID_TIPO,IntToStr(FormBuscadorTipoMovCCComp.Id));
    end;


end;

procedure TFormMovAuxCCComp.CDSMovCODIGO_PROVSetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  if (Text<>#13) and (Text<>'') Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Aux;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.Eof) THEN
        BEGIN
          CDSMovMUESTRAPROVEEDOR.Value:=CDSProveedorNOMBRE.AsString;//SysUtils.Abort;
        END;
    end;
END;

procedure TFormMovAuxCCComp.CDSMovID_TIPOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
     Sender.AsString:=Text;
     QTipo.Close;
     QTipo.ParamByName('id').Value:=Sender.AsInteger;
     QTipo.Open;
     if QTipoID.AsString<>'' then
       CDSMovMUESTRATIPO.Value:=QTipoDETALLE.Value
     else
       begin
         ShowMessage('Codigo no Valido....');
         Sender.Clear;
         CDSMovMUESTRATIPO.Value:='';
       end;
     QTipo.Close;
    end;
end;

procedure TFormMovAuxCCComp.CDSMovNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMovID.Value        := IBGMov.IncrementFD(1);
  CDSMovDEBE.Value      := 0;
  CDSMovHABER.Value     := 0;
  CDSMovFECHA.AsDateTime:= Date;
end;

procedure TFormMovAuxCCComp.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMovID.AsString;
  if CDSMovCODIGO_PROV.AsString='' then
    raise Exception.Create('No hay Proveedor');
  if CDSMovID_TIPO.AsString='' then
    raise Exception.Create('No Hay tipo de Movimiento');
  inherited;
  Recuperar.Execute;
end;

procedure TFormMovAuxCCComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormMovAuxCCComp.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataset(CDSMov, DSPMov);
  CDSMov.Open;
  Tabla:='mov_adiccional_cccomp';
  campo:='id';
end;

procedure TFormMovAuxCCComp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMovAuxCCComp:=nil;
end;

procedure TFormMovAuxCCComp.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMov.Close;
  CDSMov.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMov.Open;
end;

end.
