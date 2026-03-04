unit UIngresoCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvEdit, JvValidateEdit, ExtCtrls,
  JvExControls, JvGradient, DB, Mask, DBCtrls, FMTBcd, SqlExpr,DBXCommon,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCotizacion = class(TForm)
    pn1: TPanel;
    btIgnore: TBitBtn;
    btOk: TBitBtn;
    lb1: TLabel;
    JvGradient1: TJvGradient;
    lbMoneda: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    DSMoneda: TDataSource;
    edtVta: TJvValidateEdit;
    edtCompra: TJvValidateEdit;
    QMoneda: TFDQuery;
    QMonedaID: TIntegerField;
    QMonedaMONEDA: TStringField;
    QMonedaCOTIZACION: TFloatField;
    QMonedaSIGNO: TStringField;
    QMonedaORDEN: TSmallintField;
    QMonedaCOTIZACION_COMPRA: TFloatField;
    spActualizar: TFDStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btIgnoreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FMostrar:Boolean;
    FCotizacion:Real;
    FMoneda:Integer;
    FComp_Vta:string;
  public
    { Public declarations }
    OldCompra,Oldvta:Real;
  published
    property Mostrar:Boolean read FMostrar write FMostrar;
    property Cotizacion:Real read FCotizacion write FCotizacion;
    property Moneda:Integer read FMoneda write FMoneda;
    property Comp_Vta:string read FComp_Vta write FComp_Vta;
  end;

var
  FormCotizacion: TFormCotizacion;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCotizacion.btIgnoreClick(Sender: TObject);
begin
 // Close;
  edtVta.Value    :=Oldvta;
  edtCompra.Value :=OldCompra;
end;

procedure TFormCotizacion.btOkClick(Sender: TObject);
begin
  if (FComp_Vta='V') then
    FCotizacion:=edtVta.Value
  else
    if (FComp_Vta='C') then
      FCotizacion:=edtCompra.Value;

  DMMain_FD.fdcGestion.StartTransaction;
  try
    spActualizar.Close;
    spActualizar.ParamByName('moneda').Value         :=FMoneda;
    spActualizar.ParamByName('compra_venta').Value   :=FComp_Vta;
    if (FComp_Vta='V') then
      spActualizar.ParamByName('cotizacion').AsFloat   :=edtVta.Value
    else
      if (FComp_Vta='C') then
        spActualizar.ParamByName('cotizacion').AsFloat :=edtCompra.Value;
    spActualizar.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spActualizar.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage(' No se Actualizo la Cotizacoón....');
  end;
  FMostrar   :=True;

  //  FMostrar   :=chb1.Checked;
  //Close;
end;

procedure TFormCotizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCotizacion.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCotizacion.FormDestroy(Sender: TObject);
begin
  FormCotizacion:=nil;
end;

procedure TFormCotizacion.FormShow(Sender: TObject);
begin
  QMoneda.Close;
  QMoneda.ParamByName('id').Value:=FMoneda;
  QMoneda.Open;
  edtVta.Value     := QMonedaCOTIZACION.AsFloat;
  edtCompra.Value  := QMonedaCOTIZACION_COMPRA.AsFloat;
  Oldvta           := QMonedaCOTIZACION.AsFLoat;
  OldCompra        := QMonedaCOTIZACION_COMPRA.AsFloat;


  edtVta.Enabled   := FComp_Vta='V';
  edtCompra.Enabled:= FComp_Vta='C';
  lbMoneda.Caption := QMonedaMONEDA.Value;

  QMoneda.Close;
  if edtVta.Enabled then
    edtVta.SetFocus
  else
    if edtCompra.Enabled then
      edtCompra.SetFocus;

end;

end.
