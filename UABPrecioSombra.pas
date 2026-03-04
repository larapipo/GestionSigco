unit UABPrecioSombra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList, DB,  
  ActnList, ComCtrls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, DBClient, Provider, DBCtrls, Mask, Menus,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr,
  DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormABPrecioSombra = class(TFormABMBase)
    dbtUsuario: TDBText;
    DSHistorico: TDataSource;
    DSPHistorico: TDataSetProvider;
    CDSHistorico: TClientDataSet;
    btAplicarPrecios: TBitBtn;
    BorrarAplicacion: TAction;
    CDSHistoricoID: TIntegerField;
    CDSHistoricoUSUARIO: TStringField;
    PopupMenu1: TPopupMenu;
    BorrarAplicacion1: TMenuItem;
    btReset: TBitBtn;
    Fecha: TJvDateEdit;
    QHayCambios: TFDQuery;
    QHistorico: TFDQuery;
    QHistoricoID: TIntegerField;
    QHistoricoUSUARIO: TStringField;
    QHistoricoFECHA_APLICACION: TSQLTimeStampField;
    CDSHistoricoFECHA_APLICACION: TSQLTimeStampField;
    QReset: TFDQuery;
    spAplicar: TFDStoredProc;
    spBorrar: TFDStoredProc;
    dbgPreciosAcambiar: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    QDetalle: TFDQuery;
    DSPDetalle: TDataSetProvider;
    CDSDetalle: TClientDataSet;
    DSDetalle: TDataSource;
    CDSDetalleID: TIntegerField;
    CDSDetalleCODIGO: TStringField;
    CDSDetalleCOSTO_EXENTO_NEW: TFloatField;
    CDSDetalleCOSTO_EXENTO_OLD: TFloatField;
    CDSDetalleCOSTO_GRAVADO_NEW: TFloatField;
    CDSDetalleCOSTO_GRAVADO_OLD: TFloatField;
    CDSDetalleMUESTRADETALLE: TStringField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure btAplicarPreciosClick(Sender: TObject);
    procedure BorrarAplicacionExecute(Sender: TObject);
    procedure btResetClick(Sender: TObject);
    procedure CDSHistoricoAfterScroll(DataSet: TDataSet);
    procedure dbgDetalleDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABPrecioSombra: TFormABPrecioSombra;

implementation

uses UDMain_FD, UStock_2;

{$R *.dfm}

procedure TFormABPrecioSombra.BorrarAplicacionExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spBorrar.Close;
    spBorrar.ParamByName('P_id').Value := CDSHistoricoID.Value;
    spBorrar.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    ShowMessage('Aplicación Revertida');
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se aplicaron los cambios');
  end;
  Buscar.Execute;
end;

procedure TFormABPrecioSombra.btAplicarPreciosClick(Sender: TObject);
begin
 // inherited;
  if Copy(Fecha.Text,1,1)<> ' ' then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spAplicar.Close;
        spAplicar.ParamByName('P_fecha').Value  :=Fecha.Date;
        spAplicar.ParamByName('P_Usuario').Value:=DMMain_FD.UsuarioActivo;
        spAplicar.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        ShowMessage('Precios Aplicados');
      Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se aplicaron los cambios');
      end;
      Buscar.Execute;
    end
  else
    ShowMessage('No se indico Fecha');
 sbEstado.SimpleText:='';
  Application.ProcessMessages;


end;

procedure TFormABPrecioSombra.btResetClick(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QReset.Close;
    QReset.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
    ShowMessage('Precios Resetados');
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se aplicaron los cambios');
  end;
  QReset.Close;
  Buscar.Execute;
end;

procedure TFormABPrecioSombra.BuscarExecute(Sender: TObject);
begin
  inherited;
  QHayCambios.Close;
  QHayCambios.Open;
  CDSHistorico.Close;
  CDSHistorico.Open;
  btAplicarPrecios.Enabled:=QHayCambios.Fields.Fields[0].Value>0;
end;

procedure TFormABPrecioSombra.CDSHistoricoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').Value:=CDSHistoricoID.Value;
  CDSDetalle.Open;
end;

procedure TFormABPrecioSombra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormABPrecioSombra.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize    :=true;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Fecha.Date  :=Date;
  Buscar.Execute;
end;

procedure TFormABPrecioSombra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormABPrecioSombra:=nil;
end;

procedure TFormABPrecioSombra.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if CDSDetalleCODIGO.AsString<>'' then
    begin
      if Not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(self);
      FormStock_2.DatoNew:= CDSDetalleCODIGO.AsString;
      FormStock_2.Recuperar.Execute;
      FormStock_2.Show;

    end;
end;

end.