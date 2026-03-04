unit UControlChe3_Opago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCGridCell, VCL.TMSFNCGridOptions, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCCustomGrid, VCL.TMSFNCGridDatabaseAdapter, VCL.TMSFNCCustomControl,
  VCL.TMSFNCCustomScrollControl, VCL.TMSFNCGridData, VCL.TMSFNCGrid, Vcl.Grids,
  Vcl.DBGrids, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, AdvOfficeButtons,
  Vcl.Menus;

type
  TFormControlChe3_OP = class(TFormABMBase)
    QCheques: TFDQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    DSCheques: TDataSource;
    QChequesID_MOV_CAJA: TIntegerField;
    QChequesID_CAJA: TIntegerField;
    QChequesFECHA_OPERACION: TSQLTimeStampField;
    QChequesTIPO_COMPROB: TStringField;
    QChequesCLASE_COMPROB: TStringField;
    QChequesNRO_COMPROBANTE: TStringField;
    QChequesID_COMPROBANTE: TIntegerField;
    QChequesDEBE: TFloatField;
    QChequesHABER: TFloatField;
    QChequesID_CHEQUE_TER: TIntegerField;
    QChequesNUMERO: TIntegerField;
    QChequesDESTINO: TStringField;
    QChequesIMPORTE: TFloatField;
    QChequesDISPONIBLE: TStringField;
    dbgCheques: TDBAdvGrid;
    chActivarFiltros: TAdvOfficeCheckBox;
    PopupMenu1: TPopupMenu;
    QActualizaCHe: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField4: TStringField;
    FloatField3: TFloatField;
    StringField5: TStringField;
    ActualizarChe: TAction;
    ActualizarChe1: TMenuItem;
    TraerOPago: TAction;
    Label1: TLabel;
    procedure FormResize(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure chActivarFiltrosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ActualizarCheExecute(Sender: TObject);
    procedure TraerOPagoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlChe3_OP: TFormControlChe3_OP;

implementation

{$R *.dfm}
uses UDMain_FD, UOPago_2;

procedure TFormControlChe3_OP.ActualizarCheExecute(Sender: TObject);
begin
  inherited;
  QActualizaCHe.Close;
  QActualizaCHe.ParamByName('id_cheque').Value:=dbgCheques.Cells[12,dbgCheques.Row];
  if dbgCheques.Cells[10,dbgCheques.Row]='S' then
    begin
      QActualizaCHe.ParamByName('Estado').Value:='N';
      QActualizaCHe.ParamByName('Destino').Value:=dbgCheques.Cells[5,dbgCheques.Row];
    end
  else
    if dbgCheques.Cells[10,dbgCheques.Row]='N' then
      begin
        QActualizaCHe.ParamByName('Estado').Value:='S';
        QActualizaCHe.ParamByName('Destino').Value:='';
      end;
  QActualizaCHe.ParamByName('Fecha_Salida').Value:= StrToDateTime(dbgCheques.Cells[1,dbgCheques.Row]);

  QActualizaCHe.ExecSQL;
  QActualizaCHe.Close;
  Buscar.Execute;


end;

procedure TFormControlChe3_OP.BuscarExecute(Sender: TObject);
begin
  inherited;

  QCheques.Close;
  QCheques.Open;
end;

procedure TFormControlChe3_OP.chActivarFiltrosClick(Sender: TObject);
begin
  inherited;
  if chActivarFiltros.Checked then
    begin
      chActivarFiltros.Caption      := 'Desactivar Filtros';
      dbgCheques.PageMode           := False;
      dbgCheques.FilterActive       := True;
      dbgCheques.FilterDropDownAuto := True;
    end
  else
    if Not(chActivarFiltros.Checked) then
      begin
        chActivarFiltros.Caption      := 'Activar Filtros';
        dbgCheques.PageMode           := True;
        dbgCheques.FilterActive       := False;
        dbgCheques.FilterDropDownAuto := False;

      end

end;

procedure TFormControlChe3_OP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlChe3_OP.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormControlChe3_OP.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlChe3_OP:=nil;
end;

procedure TFormControlChe3_OP.FormResize(Sender: TObject);
begin
  inherited;
  IF FormControlChe3_OP<>nil Then
    if FormControlChe3_OP.Width<>1114 Then
      FormControlChe3_OP.Width:=1114;

end;

procedure TFormControlChe3_OP.TraerOPagoExecute(Sender: TObject);
begin
  inherited;
  if FormOPago_2=nil then
    FormOPago_2:=TFormOPago_2.Create(self);
  FormOPago_2.DatoNew:=dbgCheques.Cells[11,dbgCheques.Row];// QChequesID_COMPROBANTE.AsString;
  FormOPago_2.TipoCpbte:='OP';

  formOPago_2.Recuperar.Execute;
  FormOPago_2.Show;

end;

end.
