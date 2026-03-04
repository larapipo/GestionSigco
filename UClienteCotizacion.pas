unit UClienteCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid, IBGenerator,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormClienteCotizacion = class(TFormABMBase)
    QCotizacion: TSQLQuery;
    QCotizacionID: TIntegerField;
    QCotizacionCLIENTE: TStringField;
    QCotizacionCOTIZACION: TFMTBCDField;
    QCotizacionFECHA: TSQLTimeStampField;
    QCotizacionMUESTRACLIENTE: TStringField;
    QCotizacionMUESTRAMONEDA: TStringField;
    CDSCotizacion: TClientDataSet;
    DSPCotizacion: TDataSetProvider;
    DSCotizacion: TDataSource;
    dbgCotizaciones: TJvDBGrid;
    CDSCotizacionID: TIntegerField;
    CDSCotizacionCLIENTE: TStringField;
    CDSCotizacionCOTIZACION: TFMTBCDField;
    CDSCotizacionFECHA: TSQLTimeStampField;
    CDSCotizacionMUESTRACLIENTE: TStringField;
    CDSCotizacionMUESTRAMONEDA: TStringField;
    BuscarCliente: TAction;
    QClientes: TSQLQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QMonedas: TSQLQuery;
    QBuscaMoneda: TSQLQuery;
    DSPBuscaMoneda: TDataSetProvider;
    CDSBuscaMoneda: TClientDataSet;
    CDSBuscaMonedaMONEDA: TStringField;
    CDSBuscaMonedaID: TIntegerField;
    CDSBuscaMonedaCOTIZACION: TFMTBCDField;
    CDSBuscaMonedaSIGNO: TStringField;
    CDSBuscaMonedaORDEN: TSmallintField;
    CDSBuscaMonedaCOTIZACION_COMPRA: TFMTBCDField;
    BuscarMoneda: TAction;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFMTBCDField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFMTBCDField;
    QCotizacionMONEDA: TIntegerField;
    CDSCotizacionMONEDA: TIntegerField;
    ibgId: TIBGenerator;
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSCotizacionCLIENTESetText(Sender: TField; const Text: string);
    procedure dbgCotizacionesEditButtonClick(Sender: TObject);
    procedure CDSCotizacionMONEDASetText(Sender: TField; const Text: string);
    procedure BuscarMonedaExecute(Sender: TObject);
    procedure dbgCotizacionesColEnter(Sender: TObject);
    procedure dbgCotizacionesKeyPress(Sender: TObject; var Key: Char);
    procedure CDSCotizacionNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarCliente(dato:String):Boolean;
    function AsignarMoneda(dato:Integer):Boolean;
  end;

var
  FormClienteCotizacion: TFormClienteCotizacion;

implementation

uses UDMain_FD, UBuscadorClientes;

{$R *.dfm}

function TFormClienteCotizacion.AsignarCliente(dato:String):Boolean;
begin
  QClientes.Close;
  QClientes.ParamByName('codigo').Value:=Dato;
  QClientes.Open;
  if QClientesCODIGO.AsString<>'' then
    begin
      Result:=True;
      CDSCotizacionCLIENTE.Value       := QClientesCODIGO.AsString;
      CDSCotizacionMUESTRACLIENTE.Value:= QClientesNOMBRE.AsString;
    end
  else
    begin
      Result:=False;
      CDSCotizacionCLIENTE.Clear;
      CDSCotizacionMUESTRACLIENTE.Clear;
    end;
  QClientes.Close;
end;

function TFormClienteCotizacion.AsignarMoneda(dato:Integer):Boolean;
begin
  QMonedas.Close;
  QMonedas.ParamByName('id').Value:=Dato;
  QMonedas.Open;
  if QMonedasID.AsString<>'' then
    begin
      Result:=True;
      CDSCotizacionMONEDA.Value       := QMonedasID.Value;
      CDSCotizacionMUESTRAMONEDA.Value:= QMonedasMONEDA.AsString;
      CDSCotizacionCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat;
    end
  else
    begin
      Result:=False;
      CDSCotizacionMONEDA.Clear;
      CDSCotizacionMUESTRAMONEDA.Clear;
      CDSCotizacionCOTIZACION.AsFloat:=0;
    end;
  QMonedas.Close;
end;



procedure TFormClienteCotizacion.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      CDSCotizacionCLIENTESetText(CDSCotizacionCLIENTE,FormBuscadorClientes.Codigo);
    END;
end;

procedure TFormClienteCotizacion.BuscarMonedaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaMoneda.Close;
  CDSBuscaMoneda.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    CDSCotizacionMONEDASetText(CDSCotizacionMONEDA,IntToStr(comBuscadorBase.Id));
  CDSBuscaMoneda.Close;
end;

procedure TFormClienteCotizacion.CDSCotizacionCLIENTESetText(Sender: TField;
  const Text: string);
VAR Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
        END;
    end;
END;

procedure TFormClienteCotizacion.CDSCotizacionMONEDASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarMoneda(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Codigo moneda no válido');
          Sender.AsString:= '';
        END;
    end;

end;

procedure TFormClienteCotizacion.CDSCotizacionNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCotizacionID.AsInteger        := ibgId.IncrementFD(1);
  CDSCotizacionFECHA.AsDateTime    := Date;
  CDSCotizacionCOTIZACION.AsFloat  := 0;
  CDSCotizacionCLIENTE.Value       :='';
  CDSCotizacionMUESTRAMONEDA.Value :='';
  CDSCotizacionMUESTRACLIENTE.Value:='';
end;

procedure TFormClienteCotizacion.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
 if (CDSCotizacion.State in [dsInsert,dsEdit]) then
   CDSCotizacion.Post;
 CDSCotizacion.ApplyUpdates(0);
 CDSCotizacion.Close;
 CDSCotizacion.Open;
end;

procedure TFormClienteCotizacion.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormClienteCotizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormClienteCotizacion.FormCreate(Sender: TObject);
begin
  inherited;
  CDSCotizacion.Close;
  CDSCotizacion.Open;
end;

procedure TFormClienteCotizacion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormClienteCotizacion:=nil;
end;

procedure TFormClienteCotizacion.FormShow(Sender: TObject);
begin
  inherited;
  dbgCotizaciones.SetFocus;
end;

procedure TFormClienteCotizacion.dbgCotizacionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgCotizaciones.SelectedIndex=1 then
    dbgCotizaciones.SelectedIndex:=2
  else
    if dbgCotizaciones.SelectedIndex=3 then
      dbgCotizaciones.SelectedIndex:=4;
//
//
//  else
//    if dbgCotizaciones.SelectedIndex>5 then
//      begin
//        dbgCotizaciones.DataSource.DataSet.Append;
//        dbgCotizaciones.SelectedIndex:=0;
//      end;



end;

procedure TFormClienteCotizacion.dbgCotizacionesEditButtonClick(Sender: TObject);
begin
  inherited;
  if dbgCotizaciones.SelectedIndex=0 then
    begin
      BuscarCliente.Execute;
    end
  else
  if dbgCotizaciones.SelectedIndex=2 then
    begin
      BuscarMoneda.Execute;
    end;

end;

procedure TFormClienteCotizacion.dbgCotizacionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgCotizaciones.SelectedIndex < 5) THEN
        dbgCotizaciones.SelectedIndex := dbgCotizaciones.SelectedIndex + 1
      ELSE
        BEGIN
          dbgCotizaciones.DataSource.DataSet.Append;
          dbgCotizaciones.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorClientes)) then
          begin
            IF dbgCotizaciones.SelectedField = CDSCotizacionCLIENTE THEN
              BuscarCliente.Execute;
          end
        else
          begin
            IF dbgCotizaciones.SelectedField = CDSCotizacionMONEDA THEN
              BuscarMoneda.Execute;
          end;


      END;

end;

end.
