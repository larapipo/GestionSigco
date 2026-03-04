unit UGtias_Ext;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, IBGenerator, Data.FMTBcd, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormGtias_Ext = class(TFormABMBase)
    CDSGtias: TClientDataSet;
    DSPGtias: TDataSetProvider;
    DSGtiaClientes: TDataSource;
    CDSGtiasCODIGO: TStringField;
    CDSGtiasPOLIZA: TStringField;
    CDSGtiasDURACION: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    dbeTasaCosto: TDBEdit;
    Label3: TLabel;
    dbeTasaVta: TDBEdit;
    Label4: TLabel;
    dbePoliza: TDBEdit;
    Label5: TLabel;
    dbeDuracion: TDBEdit;
    CDSGtiasID: TIntegerField;
    CDSGtiasMUESTRASTOCK: TStringField;
    dbeMuestraArti: TDBEdit;
    dbcCodigo: TJvDBComboEdit;
    BuscarArticulo: TAction;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    DSPBuscadorGtia: TDataSetProvider;
    CDSBuscadorGtia: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    StringField6: TStringField;
    DSPGtiaClientes: TDataSetProvider;
    CDSGtiaClientes: TClientDataSet;
    CDSGtiaClientesID: TIntegerField;
    CDSGtiaClientesID_CAB: TIntegerField;
    CDSGtiaClientesCODIGO: TStringField;
    CDSGtiaClientesMUESTRANOMBRE: TStringField;
    dbgClientes: TJvDBGrid;
    BuscarCliente: TAction;
    ibgClientes: TIBGenerator;
    QBuscadorGtia: TFDQuery;
    CDSBuscadorGtiaTASA_VTA: TFloatField;
    CDSBuscadorGtiaTASA_COSTO: TFloatField;
    QGtias: TFDQuery;
    QGtiasID: TIntegerField;
    QGtiasCODIGO: TStringField;
    QGtiasTASA_COSTO: TFloatField;
    QGtiasTASA_VTA: TFloatField;
    QGtiasPOLIZA: TStringField;
    QGtiasDURACION: TIntegerField;
    QGtiasMUESTRASTOCK: TStringField;
    CDSGtiasTASA_COSTO: TFloatField;
    CDSGtiasTASA_VTA: TFloatField;
    QGtiaClientes: TFDQuery;
    QGtiaClientesID: TIntegerField;
    QGtiaClientesID_CAB: TIntegerField;
    QGtiaClientesCODIGO: TStringField;
    QGtiaClientesTASA_COSTO: TFloatField;
    QGtiaClientesTASA_VTA: TFloatField;
    QGtiaClientesMUESTRANOMBRE: TStringField;
    CDSGtiaClientesTASA_COSTO: TFloatField;
    CDSGtiaClientesTASA_VTA: TFloatField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CDSGtiasNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSGtiasCODIGOSetText(Sender: TField; const Text: string);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSGtiaClientesCODIGOSetText(Sender: TField; const Text: string);
    procedure dbgClientesColEnter(Sender: TObject);
    procedure CDSGtiaClientesNewRecord(DataSet: TDataSet);
    procedure dbgClientesKeyPress(Sender: TObject; var Key: Char);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarArticulo(dato:String):Boolean;
    function AsignarCliente(dato:String):Boolean;
  end;

var
  FormGtias_Ext: TFormGtias_Ext;

implementation

uses UDMain_FD, UBuscadorArticulos, UBuscadorClientes;
{$R *.dfm}

procedure TFormGtias_Ext.AgregarExecute(Sender: TObject);
begin
  CDSGtias.Close;
  CDSGtias.Params.ParamByName('id').Clear;
  CDSGtias.Open;

  CDSGtiaClientes.Close;
  CDSGtiaClientes.Params.ParamByName('id').Clear;
  CDSGtiaClientes.Open;

  inherited;

  dbcCodigo.SetFocus;

end;

function TFormGtias_Ext.AsignarArticulo(dato:String):Boolean;
begin
  CDSStock.Close;
  CDSStock.Params.ParamByName('codigo').AsString:=dato;
  CDSStock.Open;
  if Not(CDSStock.IsEmpty) then
    begin
      Result:=True;
      CDSGtiasCODIGO.AsString:=CDSStockCODIGO_STK.Value;
      CDSGtiasMUESTRASTOCK.AsString:=CDSStockDETALLE_STK.Value;
    end
  else
    begin
      Result:=False;
      CDSGtiasCODIGO.Clear;
      CDSGtiasMUESTRASTOCK.Clear;
    end

end;

function TFormGtias_Ext.AsignarCliente(dato:String):Boolean;
begin
  QClientes.Close;
  QClientes.ParamByName('codigo').AsString:=dato;
  QClientes.Open;
  if Not(QClientes.IsEmpty) then
    begin
      Result:=True;
      CDSGtiaClientesCODIGO.AsString        :=QClientesCODIGO.Value;
      CDSGtiaClientesMUESTRANOMBRE.AsString :=QClientesNOMBRE.Value;
    end
  else
    begin
      Result:=False;
      CDSGtiaClientesCODIGO.Clear;
      CDSGtiaClientesMUESTRANOMBRE.Clear;
    end

end;

procedure TFormGtias_Ext.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
 if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
     // FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;

      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSGtiasCODIGOSetText(CDSGtiasCODIGO,FormBuscadorArticulos.Codigo);
    end;
end;


procedure TFormGtias_Ext.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    CDSGtiaClientesCODIGOSetText(CDSGtiaClientesCODIGO,FormBuscadorClientes.Codigo);

end;

procedure TFormGtias_Ext.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorGtia.Close;
  CDSBuscadorGtia.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormGtias_Ext.CancelarExecute(Sender: TObject);
begin
  CDSGtias.Close;
  CDSGtias.Params.ParamByName('id').Clear;
  CDSGtias.Open;

  CDSGtiaClientes.Close;
  CDSGtiaClientes.Params.ParamByName('id').Clear;
  CDSGtiaClientes.Open;

  inherited;

end;

procedure TFormGtias_Ext.CDSGtiaClientesCODIGOSetText(Sender: TField;
  const Text: string);
Var Aux:String;
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if CDSGtiaClientes.State=dsBrowse then
        CDSGtiaClientes.Edit;
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      //Sender.AsString:=Text;
      if Not(AsignarCliente(Sender.AsString)) then
        begin
          ShowMessage(' Codigo no Valido');
          Sender.Clear;
        end;
    end;
end;

procedure TFormGtias_Ext.CDSGtiaClientesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaClientesID.Value          := ibgClientes.IncrementFD(1);
  CDSGtiaClientesID_CAB.Value      := CDSGtiasID.Value;
  CDSGtiaClientesTASA_COSTO.AsFloat:= CDSGtiasTASA_COSTO.AsFloat;
  CDSGtiaClientesTASA_VTA.AsFloat  := CDSGtiasTASA_VTA.AsFloat;
end;

procedure TFormGtias_Ext.CDSGtiasCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarArticulo(Sender.AsString)) then
        begin
          ShowMessage(' Codigo no Valido');
          Sender.Clear;
        end;

    end;
end;

procedure TFormGtias_Ext.CDSGtiasNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSGtiasID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSGtiasID.Value:=1;
  QUltimoCodigo2.Close;


end;

procedure TFormGtias_Ext.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSGtiasID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormGtias_Ext.dbgClientesColEnter(Sender: TObject);
begin
  inherited;
  if dbgClientes.SelectedIndex=1 then
    dbgClientes.SelectedIndex:=dbgClientes.SelectedIndex+1;
end;

procedure TFormGtias_Ext.dbgClientesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgClientes.SelectedIndex < 3) THEN
        dbgClientes.SelectedIndex := dbgClientes.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgClientes.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgClientes.DataSource.DataSet.Append;
          dbgClientes.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorArticulos)) then
          begin
            IF dbgClientes.SelectedField = CDSGtiaClientesCODIGO THEN
              BuscarCliente.Execute;
          end;
      END
    else
      if (key = #27) then
        dbgClientes.DataSource.DataSet.Cancel;
end;

procedure TFormGtias_Ext.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormGtias_Ext.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde  :=2;
  AddClientDataSet(CDSGtias,DSPGtias);
  AddClientDataSet(CDSGtiaClientes,DSPGtiaClientes);
  CDSGtias.Open;
  CDSGtiaClientes.Open;
  Tabla:='DATOS_GTIA_EXTENDIDA';
  Campo:='id';
end;

procedure TFormGtias_Ext.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGtias_Ext:=nil;
end;

procedure TFormGtias_Ext.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGtias.Close;
  CDSGtias.Params.ParamByName('id').AsInteger:=StrToInt(DatoNew);
  CDSGtias.Open;

  CDSGtiaClientes.Close;
  CDSGtiaClientes.Params.ParamByName('id').AsInteger:=StrToInt(DatoNew);
  CDSGtiaClientes.Open;

end;

end.
