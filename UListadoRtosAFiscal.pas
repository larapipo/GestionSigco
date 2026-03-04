unit UListadoRtosAFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, ImgList,
  ActnList, ComCtrls,JvExControls,DBXCommon,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, Mask, JvExMask, JvToolEdit, JvDBControls, DBCtrls, JvComponentBase,
  JvFormPlacement, JvLabel, FMTBcd, SqlExpr,
  JvAppIniStorage, System.Actions, JvAppStorage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormRtosAFiscal = class(TFormABMBase)
    DSPRtos: TDataSetProvider;
    CDSRtos: TClientDataSet;
    chbNuevos: TCheckBox;
    dbgRtos: TJvDBGrid;
    JvDBDateEdit1: TJvDBDateEdit;
    MarcarRtos: TAction;
    lb1: TLabel;
    dbeUSUARIO: TDBEdit;
    lb2: TLabel;
    dbeFECHA_HORA: TDBEdit;
    CDSRtosID: TIntegerField;
    CDSRtosID_RTO: TIntegerField;
    CDSRtosFECHA_RTO: TSQLTimeStampField;
    CDSRtosNRPCPBTE: TStringField;
    CDSRtosCLIENTE: TStringField;
    CDSRtosNOMBRE: TStringField;
    CDSRtosFECHA_FACTURA: TSQLTimeStampField;
    CDSRtosNRO_FACTURA: TStringField;
    CDSRtosID_FACTURA: TIntegerField;
    CDSRtosUSUARIO: TStringField;
    CDSRtosFECHA_HORA: TSQLTimeStampField;
    CDSRtosESTADO: TStringField;
    spMarcar: TFDStoredProc;
    QRtos: TFDQuery;
    QRtosID: TIntegerField;
    QRtosID_RTO: TIntegerField;
    QRtosFECHA_RTO: TSQLTimeStampField;
    QRtosNRPCPBTE: TStringField;
    QRtosCLIENTE: TStringField;
    QRtosNOMBRE: TStringField;
    QRtosIMPORTE: TFloatField;
    QRtosFECHA_FACTURA: TSQLTimeStampField;
    QRtosNRO_FACTURA: TStringField;
    QRtosID_FACTURA: TIntegerField;
    QRtosUSUARIO: TStringField;
    QRtosFECHA_HORA: TSQLTimeStampField;
    QRtosESTADO: TStringField;
    CDSRtosIMPORTE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgRtosColEnter(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure MarcarRtosExecute(Sender: TObject);
    procedure dbgRtosKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRtosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure chbNuevosClick(Sender: TObject);
    procedure dbgRtosDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRtosAFiscal: TFormRtosAFiscal;

implementation

uses URemitos, UDMain_FD;

{$R *.dfm}

procedure TFormRtosAFiscal.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSRtos.IndexDefs.Clear;
  CDSRtos.IndexFieldNames:='';
  CDSRtos.Close;
  if chbNuevos.Checked then
    CDSRtos.Params.ParamByName('estado').Value:='N'
  else
    CDSRtos.Params.ParamByName('estado').Value:='F';
  CDSRtos.Open;

end;

procedure TFormRtosAFiscal.chbNuevosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormRtosAFiscal.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
   MarcarRtos.Execute;
end;

procedure TFormRtosAFiscal.dbgRtosColEnter(Sender: TObject);
begin
  inherited;
if dbgRtos.SelectedIndex<4 Then
    dbgRtos.SelectedIndex:=4;
end;

procedure TFormRtosAFiscal.dbgRtosDblClick(Sender: TObject);
begin
  inherited;
  if Not(CDSRtos.IsEmpty) then
    begin
      if Not(Assigned(FormRemitos)) then
        Formremitos:=TFormRemitos.Create(Self);
      FormRemitos.DatoNew:=CDSRtosID_RTO.AsString;
      FormRemitos.TipoCpbte:='RE';
      FormRemitos.Recuperar.Execute;
    end;
//  Self//

end;

procedure TFormRtosAFiscal.dbgRtosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#13 then
    begin
      Key:=#0;
      if dbgRtos.SelectedIndex=4 then
        dbgRtos.SelectedIndex:=5
      else
        if dbgRtos.SelectedIndex=5 then
          dbgRtos.SelectedIndex:=4;

    end;
end;

procedure TFormRtosAFiscal.dbgRtosTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgRtos.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormRtosAFiscal.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormRtosAFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRtosAFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormRtosAFiscal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRtosAFiscal:=nil;
end;

procedure TFormRtosAFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if not(ActiveControl is TJvDBDateEdit) then
   
  inherited;

end;

procedure TFormRtosAFiscal.MarcarRtosExecute(Sender: TObject);
begin
  inherited;
  CDSRtos.First;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    while not(CDSRtos.Eof) do
      begin
        if (CDSRtosFECHA_FACTURA.AsString<>'') and (CDSRtosNRO_FACTURA.AsString<>'') then
          begin
            spMarcar.Close;
            spMarcar.ParamByName('id').Value           := CDSRtosID.Value;
            spMarcar.ParamByName('fechafactura').Value := CDSRtosFECHA_FACTURA.AsDateTime;
            spMarcar.ParamByName('nrofactura').Value   := CDSRtosNRO_FACTURA.Value;
            spMarcar.ParamByName('usuario').Value      := DMMain_FD.UsuarioActivo;
            spMarcar.ParamByName('fechahora').Value    := now;
            spMarcar.ExecProc;
          end;
        CDSRtos.Next;
      end;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo hacer la oparcion de gravado.....!!!!');
  end;
  Buscar.Execute;
end;

end.
