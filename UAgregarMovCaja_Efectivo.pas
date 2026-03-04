unit UAgregarMovCaja_Efectivo;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, Vcl.ComCtrls;

type
  TFormAgregarMovCaja_Efectivo = class(TForm)
    pnBas: TPanel;
    pnCab: TPanel;
    spAgregarMovCaja: TFDStoredProc;
    Label1: TLabel;
    dbcCajaDestino: TDBLookupComboBox;
    QCtaCaja: TFDQuery;
    DSPCtaCaja: TDataSetProvider;
    CDSCajaDestino: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    CDSCajaDestinoSALDO_INCIAL: TFloatField;
    IntegerField3: TIntegerField;
    MemoField1: TMemoField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    pnPie: TPanel;
    btOk: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    DSCajaDestino: TDataSource;
    edFecha: TDateTimePicker;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FId_Cpbte   :Integer;
    FTipoCpbte  :String;
    FClaseCpbte :String;
    FNroCpbte   :String;
    FId_CtaCja  :Integer;
    FFecha      :TdateTime;
    FDebe       :Extended;
    FHaber      :Extended;
    FTipoOperacion :String;
    FFPago          :Integer;
  public
    { Public declarations }
  published

    property Id_Cpbte       :Integer read FId_Cpbte write FId_Cpbte;
    property TipoCpbte      :String read FTipoCpbte write FTipoCpbte;
    property ClaseCpbte     :String read FClaseCpbte write FClaseCpbte;
    property NroCpbte       :String read FNroCpbte write FNroCpbte;
    property Id_CtaCja      :Integer read FId_CtaCja write FId_CtaCja;
    property Fecha          :TdateTime read FFecha write FFecha;
    property Debe           :Extended read FDebe write FDebe;
    property Haber          :Extended read FHaber write FHaber;
    property TipoOperacion  :String read FTipoOperacion write FTipoOperacion;
    property FPago          :Integer read FFPago write FFPago;

  end;

var
  FormAgregarMovCaja_Efectivo: TFormAgregarMovCaja_Efectivo;

implementation
uses UDMain_FD;
{$R *.dfm}

procedure TFormAgregarMovCaja_Efectivo.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
     spAgregarMovCaja.Close;
     spAgregarMovCaja.ParamByName('id_cpbte').Value         := FId_Cpbte;
     spAgregarMovCaja.ParamByName('Tipo_comprob').Value     := FTipoCpbte;
     spAgregarMovCaja.ParamByName('Clase_comprob').Value    := FClaseCpbte;
     spAgregarMovCaja.ParamByName('NroCpbte').Value         := FNroCpbte;
     spAgregarMovCaja.ParamByName('id_cuenta_caja').Value   := dbcCajaDestino.KeyValue;
     spAgregarMovCaja.ParamByName('Fecha_Movimiento').Value := FFecha;
     spAgregarMovCaja.ParamByName('Debe').Value             := FId_Cpbte;
     spAgregarMovCaja.ParamByName('Haber').Value            := FId_Cpbte;
     spAgregarMovCaja.ParamByName('TipoOperacion').Value    := FTipoOperacion;
     spAgregarMovCaja.ParamByName('fpago').Value            := FPago;
     spAgregarMovCaja.ExecProc;
     DMMain_FD.fdcGestion.Commit;
     ShowMessage('Operacion Ok...');

  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Operacion Fallida...');
  end;

  spAgregarMovCaja.Close;

end;

procedure TFormAgregarMovCaja_Efectivo.FormCreate(Sender: TObject);
begin
  CDSCajaDestino.Close;
  CDSCajaDestino.Open;
  edDebe.Value  := FDebe;
  edHaber.Value := FHaber;
  edFecha.Date  := FFecha;
  //dbcCajaDestino.KeyValue
end;

procedure TFormAgregarMovCaja_Efectivo.FormDestroy(Sender: TObject);
begin
  FormAgregarMovCaja_Efectivo:=nil;
end;

procedure TFormAgregarMovCaja_Efectivo.FormShow(Sender: TObject);
begin
  CDSCajaDestino.Close;
  CDSCajaDestino.Open;
  edDebe.Value  := FDebe;
  edHaber.Value := FHaber;
  edFecha.Date  := FFecha;
end;

end.
