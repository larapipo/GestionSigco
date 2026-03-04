unit UVtas_Rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, JvDBLookup, Mask, JvExMask, JvToolEdit, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, AdvSmoothButton;

type
  TFormVta_Rec = class(TFormABMBase)
    QVtas: TSQLQuery;
    DSPVtas: TDataSetProvider;
    CDSVtas: TClientDataSet;
    CDSVtasID_CPBTE: TIntegerField;
    CDSVtasTIPOCPBTE: TStringField;
    CDSVtasCLASECPBTE: TStringField;
    CDSVtasNUMEROCPBTE: TStringField;
    CDSVtasCODIGO: TStringField;
    CDSVtasNOMBRE: TStringField;
    CDSVtasTOTAL: TFMTBCDField;
    CDSVtasANIO: TSmallintField;
    CDSVtasMES: TSmallintField;
    CDSVtasCODSUCURSAL: TIntegerField;
    CDSVtasMUESTRASUCURSAL: TStringField;
    CDSVtasTOTAL_CALCULADO: TFloatField;
    DSVtas: TDataSource;
    QRec: TSQLQuery;
    DSPRec: TDataSetProvider;
    CDSRec: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FMTBCDField1: TFMTBCDField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    DSRec: TDataSource;
    QVendedor: TSQLQuery;
    DSPVendedor: TDataSetProvider;
    CDSVendedor: TClientDataSet;
    CDSVendedorCODIGO: TStringField;
    CDSVendedorNOMBRE: TStringField;
    DSVendedores: TDataSource;
    Panel2: TPanel;
    Label3: TLabel;
    dbcCobradores: TJvDBLookupCombo;
    Label1: TLabel;
    Desde: TJvDateEdit;
    Label2: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVta_Rec: TFormVta_Rec;

implementation

{$R *.dfm}

end.
