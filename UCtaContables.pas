unit UCtaContables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DBCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvDBControls,Db,
  Data.FMTBcd, JvExControls, JvGradient, Vcl.ExtCtrls, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrameCtaContable = class(TFrame)
    dbtNombre: TDBText;
    ceCodigo: TJvDBComboEdit;
    Label1: TLabel;
    CDSCtaContable: TClientDataSet;
    CDSCtaContableIDCUENTA: TIntegerField;
    CDSCtaContableMUESTRACUENTA: TStringField;
    CDSCtaContableCODIGOELEMENTO: TStringField;
    CDSCtaContableIDTABLA: TIntegerField;
    DSPCtaContable: TDataSetProvider;
    DSCtaContable: TDataSource;
    DSPCtaContable_Comp: TDataSetProvider;
    CDSCtaContableCompra: TClientDataSet;
    CDSCtaContableCompraIDCUENTA: TIntegerField;
    CDSCtaContableCompraMUESTRACUENTA: TStringField;
    CDSCtaContableCompraCODIGOELEMENTO: TStringField;
    CDSCtaContableCompraIDTABLA: TIntegerField;
    DSCtaContableCompra: TDataSource;
    pnBase: TPanel;
    QRelacionCtas: TFDQuery;
    QRelacionCtas_2: TFDQuery;
    procedure ceCodigoButtonClick(Sender: TObject);
    procedure ceCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
    NombreTabla   :String;
    CodigoElemento:String;
    SubIndice     :String;
    procedure TraerCtaContable(var id:integer;var Codigo,detalle:String);

  end;

implementation

{$R *.dfm}
uses DMContableForm, UBuscadorCtaContables;

procedure TFrameCtaContable.ceCodigoButtonClick(Sender: TObject);
var i:integer;
str:string;
begin
  TraerCtaContable(i,CodigoElemento,Str);
end;

procedure TFrameCtaContable.ceCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      if CDSCtaContable.State=dsBrowse then
        CDSCtaContable.Edit;


      CDSCtaContableIDCUENTA.Clear;
      CDSCtaContableMUESTRACUENTA.Clear;

      DMContable.spABMCuenta.Close;
      DMContable.spABMCuenta.ParamByName('Codigo').Value    := CodigoElemento;
      DMContable.spABMCuenta.ParamByName('Tabla').Value     := NombreTabla;
      DMContable.spABMCuenta.ParamByName('Cuenta').Value    := 0;
      DMContable.spABMCuenta.ParamByName('SubIndice').Value := SubIndice;
      DMContable.spABMCuenta.ExecProc;
      DMContable.spABMCuenta.Close;

      CDSCtaContable.Close;
      CDSCtaContable.Params.ParamByName('Tabla').AsString     := NombreTabla;
      CDSCtaContable.Params.ParamByName('Codigo').AsString    := CodigoElemento;
      CDSCtaContable.Params.ParamByName('SubIndice').AsString := SubIndice;
      CDSCtaContable.Open;

    end;

end;

procedure TFrameCtaContable.ceCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      Key:=#0;
      if ceCodigo.Text<>'' then
        begin
          DMContable.spABMCuenta.Close;
          DMContable.spABMCuenta.ParamByName('Codigo').Value    := CodigoElemento;
          DMContable.spABMCuenta.ParamByName('Tabla').Value     := NombreTabla;
          DMContable.spABMCuenta.ParamByName('Cuenta').Value    := StrToInt(Trim(ceCodigo.Text));
          DMContable.spABMCuenta.ParamByName('SubIndice').Value := SubIndice;
          DMContable.spABMCuenta.ExecProc;
          DMContable.spABMCuenta.Close;

          CDSCtaContable.Close;
          CDSCtaContable.Params.ParamByName('Tabla').AsString     := NombreTabla;
          CDSCtaContable.Params.ParamByName('Codigo').AsString    := CodigoElemento;
          CDSCtaContable.Params.ParamByName('SubIndice').AsString := SubIndice;
          CDSCtaContable.Open;
        end;
    end;

end;

procedure TFrameCtaContable.TraerCtaContable(Var id:integer;var Codigo,detalle:String);
begin
  if Not(Assigned(FormBuscadorCtaContable)) then
    FormBuscadorCtaContable:=TFormBuscadorCtaContable.Create(Self);
  FormBuscadorCtaContable.ShowModal;
  if ((FormBuscadorCtaContable.Id>0) and (FormBuscadorCtaContable.ModalResult=mrOk)) then
    begin
      DMContable.spABMCuenta.Close;
      DMContable.spABMCuenta.ParamByName('Codigo').Value    := CodigoElemento;
      DMContable.spABMCuenta.ParamByName('Tabla').Value     := NombreTabla;
      DMContable.spABMCuenta.ParamByName('Cuenta').Value    := FormBuscadorCtaContable.Id;
      DMContable.spABMCuenta.ParamByName('SubIndice').Value := SubIndice;

      DMContable.spABMCuenta.ExecProc;
      DMContable.spABMCuenta.Close;

      CDSCtaContable.Close;
      CDSCtaContable.Params.ParamByName('Tabla').AsString     := NombreTabla;
      CDSCtaContable.Params.ParamByName('Codigo').AsString    := CodigoElemento;
      CDSCtaContable.Params.ParamByName('SubIndice').AsString := SubIndice;
      CDSCtaContable.Open;

      CDSCtaContableCompra.Close;
      CDSCtaContableCompra.Params.ParamByName('Tabla').AsString     := NombreTabla;
      CDSCtaContableCompra.Params.ParamByName('Codigo').AsString    := CodigoElemento;
      CDSCtaContableCompra.Params.ParamByName('SubIndice').AsString := SubIndice;
      CDSCtaContableCompra.Open;

    end;

//  Codigo  := FormBuscadorCtaContable.Codigo;
//  detalle := FormBuscadorCtaContable.Detalle;
end;


end.
