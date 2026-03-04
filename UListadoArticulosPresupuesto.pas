unit UListadoArticulosPresupuesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, Vcl.Buttons, cxCustomPivotGrid,
  cxDBPivotGrid, Vcl.Samples.Spin, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxBarBuiltInMenu;

type
  TFormListadoArticulosPresupuesto = class(TForm)
    pnCabecera: TPanel;
    Label1: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label2: TLabel;
    SpinButton1: TSpinButton;
    pnBase: TPanel;
    cxDBPivotGrid1: TcxDBPivotGrid;
    pnPie: TPanel;
    btSAlir: TBitBtn;
    btBuscar: TBitBtn;
    QPresupuestos: TFDQuery;
    QPresupuestosID: TIntegerField;
    QPresupuestosID_CABPRES: TIntegerField;
    QPresupuestosTIPOCPBTE: TStringField;
    QPresupuestosCLASECPBTE: TStringField;
    QPresupuestosNROCPBTE: TStringField;
    QPresupuestosRENGLON: TFloatField;
    QPresupuestosFECHAVTA: TSQLTimeStampField;
    QPresupuestosCODIGOARTICULO: TStringField;
    QPresupuestosDETALLE: TStringField;
    QPresupuestosDETALLE_ADICIONAL: TStringField;
    QPresupuestosUNIDAD: TStringField;
    QPresupuestosDESGLOZAIVA: TStringField;
    QPresupuestosDESCUENTO: TFloatField;
    QPresupuestosCANTIDAD: TFloatField;
    QPresupuestosUNITARIO_GRAVADO: TFloatField;
    QPresupuestosIVA_UNITARIO: TFloatField;
    QPresupuestosUNITARIO_EXENTO: TFloatField;
    QPresupuestosUNITARIO_TOTAL: TFloatField;
    QPresupuestosTOTAL_EXENTO: TFloatField;
    QPresupuestosTOTAL_GRAVADO: TFloatField;
    QPresupuestosIVA_TOTAL: TFloatField;
    QPresupuestosTOTAL: TFloatField;
    QPresupuestosIVA_TASA: TFloatField;
    QPresupuestosSUCURSAL: TIntegerField;
    QPresupuestosDEPOSITO: TIntegerField;
    QPresupuestosID_MONEDA: TIntegerField;
    QPresupuestosCOTIZACION: TFloatField;
    QPresupuestosACEPTADO: TStringField;
    QPresupuestosCPBTESALIDA_ID: TIntegerField;
    QPresupuestosCPBTESALIDA_TIPO: TStringField;
    QPresupuestosCPBTESALIDA_CLASE: TStringField;
    QPresupuestosCPBTESALIDA_NROCPBTE: TStringField;
    QPresupuestosCODIGOCLIENTE: TStringField;
    QPresupuestosNOMBRE: TStringField;
    QPresupuestosRAZONSOCIAL: TStringField;
    QPresupuestosLISTAPRECIO: TIntegerField;
    QPresupuestosNETOGRAV2: TFloatField;
    QPresupuestosNETOEXEN2: TFloatField;
    QPresupuestosTOTALPRESU: TFloatField;
    QPresupuestosDSTOIMPORTE: TFloatField;
    BitBtn1: TBitBtn;
    DSPresupuestos: TDataSource;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoArticulosPresupuesto: TFormListadoArticulosPresupuesto;

implementation

{$R *.dfm}
uses UDMain_FD;


end.
