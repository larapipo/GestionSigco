UNIT UEmpresa;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Db, ExtCtrls, Buttons, Menus,
  StdActns, ActnList, ExtDlgs, DBClient, Provider, JvExControls, JvGradient,
  FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvDBControls, JvMaskEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvFormPlacement, JvComponentBase,
  JvAppStorage, JvAppIniStorage;

TYPE
  TFormEmpresa = CLASS(TForm)
    Panel1: TPanel;
    DSEmpresa: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBImage1: TDBImage;
    Ok: TBitBtn;
    Salir: TBitBtn;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    BitBtn1: TBitBtn;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaCPOSTAL: TStringField;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    DBCheckBox3: TDBCheckBox;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    CDSEmpresaPROVINCIA: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    DST_Pcias: TDataSource;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label18: TLabel;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    edRenspa: TJvDBMaskEdit;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    QEmpresa: TFDQuery;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    QT_Pcias: TFDQuery;
    QT_PciasID: TIntegerField;
    QT_PciasNOMBRE: TStringField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage1: TJvFormStorage;
    QEmpresaNOMBRE: TStringField;
    QEmpresaACTIVIDAD: TStringField;
    QEmpresaDIRECCION: TStringField;
    QEmpresaLOCALIDAD: TStringField;
    QEmpresaCORREO: TStringField;
    QEmpresaTELEFONO1: TStringField;
    QEmpresaTELEFONO2: TStringField;
    QEmpresaCUIT: TStringField;
    QEmpresaCONDICIONIVA: TStringField;
    QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    QEmpresaLOGO: TBlobField;
    QEmpresaCPOSTAL: TStringField;
    QEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_ING_BRUTOS: TStringField;
    QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    QEmpresaTASA_PERCEPCION_IB: TFloatField;
    QEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    QEmpresaPROVINCIA: TIntegerField;
    QEmpresaTASA_RET_IIBB: TFloatField;
    QEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    QEmpresaPUNITORIOS: TFloatField;
    QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    QEmpresaNRO_RENSPA: TStringField;
    QEmpresaNRO_RUCA: TIntegerField;
    QEmpresaCUIT_AUTORIZADO: TStringField;
    QEmpresaNOMBRE_AUTORIZADO: TStringField;
    QEmpresaCBU: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    DSActividad: TDataSource;
    QActividad: TFDQuery;
    CDSActividad: TClientDataSet;
    DSPActividad: TDataSetProvider;
    CDSActividadCOD_ACTIVIDAD: TStringField;
    CDSActividadDESC_ACTIVIDAD: TStringField;
    CDSActividadDESCL_ACTIVIDAD: TMemoField;
    Label24: TLabel;
    QEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    QEmpresaNOMBRE_FANTASIA: TStringField;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    QEmpresaDIRECCION_NRO: TStringField;
    DBEdit22: TDBEdit;
    CDSEmpresaDIRECCION_NRO: TStringField;
    DBCheckBox4: TDBCheckBox;
    QEmpresaAG_PERCEPCION_IVA: TStringField;
    QEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit24: TDBEdit;
    Label29: TLabel;
    edLey15311: TDBEdit;
    QEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    QEmpresaDIRECCION_OPERACION: TStringField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE OkClick(Sender: TObject);
    PROCEDURE SalirClick(Sender: TObject);
    PROCEDURE DSEmpresaStateChange(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE CargarImagenExecute(Sender: TObject);
    PROCEDURE DBImage1DblClick(Sender: TObject);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormEmpresa: TFormEmpresa;

IMPLEMENTATION

{$R *.DFM}

USES UDMain_FD;

PROCEDURE TFormEmpresa.FormClose(Sender: TObject; VAR Action: TCloseAction);
BEGIN
  QT_Pcias.Close;
  CDSEmpresa.Close;
  CDSActividad.Close;
  Action := caFree;
END;

PROCEDURE TFormEmpresa.OkClick(Sender: TObject);
BEGIN
  CDSEmpresa.Post;
  CDSEmpresa.ApplyUpdates(0);
END;

PROCEDURE TFormEmpresa.SalirClick(Sender: TObject);
BEGIN
  Close;
END;

PROCEDURE TFormEmpresa.DSEmpresaStateChange(Sender: TObject);
BEGIN
  IF CDSEmpresa.State IN [dsEdit, dsInsert] THEN
    ok.Enabled := True
  ELSE
    ok.Enabled := False;
END;

PROCEDURE TFormEmpresa.FormCreate(Sender: TObject);
BEGIN
  AutoSize := True;
  QT_Pcias.Open;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSActividad.Open;
  CDSEmpresa.Open;
END;

PROCEDURE TFormEmpresa.FormDestroy(Sender: TObject);
BEGIN
  FormEmpresa := NIL;
END;

PROCEDURE TFormEmpresa.CargarImagenExecute(Sender: TObject);
BEGIN
  OpenPictureDialog1.Execute;

END;

PROCEDURE TFormEmpresa.DBImage1DblClick(Sender: TObject);
BEGIN
  OpenPictureDialog1.Execute;
  IF CDSEmpresa.State = dsBrowse THEN
    CDSEmpresa.Edit;
  CDSEmpresaLOGO.LoadFromFile(OpenPictureDialog1.FileName);
END;

procedure TFormEmpresa.DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_DELETE) or (Key=VK_BACK) then
   CDSEmpresaCOD_ACTIVIDAD.value:='**********';
end;

END.
