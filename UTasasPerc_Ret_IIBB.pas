unit UTasasPerc_Ret_IIBB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Provider, DBClient,   Mask, DBCtrls, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.DB, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormTasaPercep_Ret = class(TFormABMBase)
    CDSTasas: TClientDataSet;
    CDSTasasCUIT: TStringField;
    CDSTasasESTADO: TStringField;
    CDSTasasCAMBIO_ALICUOTA: TStringField;
    CDSTasasGRUPO_RETENCION: TSmallintField;
    DSPTasas: TDataSetProvider;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    pnBuscador: TPanel;
    edBuscador: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    QTasas: TSQLQuery;
    QTasasCUIT: TStringField;
    QTasasTIPO_CONVENIO: TStringField;
    QTasasESTADO: TStringField;
    QTasasCAMBIO_ALICUOTA: TStringField;
    QTasasGRUPO_PERCEPCION: TSmallintField;
    QTasasGRUPO_RETENCION: TSmallintField;
    QTasasFECHA: TSQLTimeStampField;
    QTasasDESDE: TSQLTimeStampField;
    QTasasHASTA: TSQLTimeStampField;
    QTasasTASA_PERCEPCION: TFMTBCDField;
    QTasasTASA_RETENCION: TFMTBCDField;
    CDSTasasTIPO_CONVENIO: TStringField;
    CDSTasasGRUPO_PERCEPCION: TSmallintField;
    CDSTasasFECHA: TSQLTimeStampField;
    CDSTasasDESDE: TSQLTimeStampField;
    CDSTasasHASTA: TSQLTimeStampField;
    CDSTasasTASA_PERCEPCION: TFMTBCDField;
    CDSTasasTASA_RETENCION: TFMTBCDField;
    DBDateEdit1: TJvDBDateEdit;
    DBEdit4: TJvDBDateEdit;
    DBEdit5: TJvDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure edBuscadorKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTasaPercep_Ret: TFormTasaPercep_Ret;

implementation

{$R *.DFM}
uses UDMain_FD;

procedure TFormTasaPercep_Ret.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBde:=1;
  AddClientDataSet(CDSTasas,DSPTasas);
  CDSTasas.Open;
  pnBuscador.Visible:=False;
  Tabla:='TABLA_PERCEPCION_RETENCION';
  Campo:='Cuit';
end;

procedure TFormTasaPercep_Ret.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormTasaPercep_Ret.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTasaPercep_Ret:=nil;
end;

procedure TFormTasaPercep_Ret.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTasas.Close;
  CDSTasas.Params.ParamByName('Cuit').Value:=DatoNew;
  CDSTasas.OPen;
  pnBuscador.Visible:=False;
end;

procedure TFormTasaPercep_Ret.CancelarExecute(Sender: TObject);
begin
  inherited;
  CDSTasas.Close;
  CDSTasas.Params.ParamByName('Cuit').Clear;
  CDSTasas.OPen;
  pnBuscador.Visible:=False;
end;

procedure TFormTasaPercep_Ret.AgregarExecute(Sender: TObject);
begin
  CDSTasas.Close;
  CDSTasas.Params.ParamByName('Cuit').Clear;
  CDSTasas.OPen;
  inherited;
  pnBuscador.Visible:=False;
  DBEdit1.SetFocus;
end;

procedure TFormTasaPercep_Ret.BuscarExecute(Sender: TObject);
begin
  inherited;
  pnBuscador.Visible:=True;
  edBuscador.Text:='';
  edBuscador.SetFocus;
end;

procedure TFormTasaPercep_Ret.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTasasCUIT.Value;
  inherited;
  Recuperar.Execute;
  pnBuscador.Visible:=False;
end;

procedure TFormTasaPercep_Ret.edBuscadorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 Then
    begin
      pnBuscador.Visible:=False;
      DatoNew:=edBuscador.Text;
      Recuperar.Execute;
    end;
end;

procedure TFormTasaPercep_Ret.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TMaskEdit) Then
    inherited;

end;

end.