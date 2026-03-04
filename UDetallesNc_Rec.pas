unit UDetallesNc_Rec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, Provider, DBClient, ImgList,
    ActnList, ComCtrls, JvExControls, JvGradient, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, JvComponentBase, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, DBXCommon,
  JvAppIniStorage, System.Actions, JvAppStorage, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvSmoothButton;

type
  TFormdetallesNc_Rec = class(TFormABMBase)
    CDSDetalles: TClientDataSet;
    DSPdetalles: TDataSetProvider;
    dbgrdDetalles: TDBGrid;
    DSDetalles: TDataSource;
    CDSDetallesID: TIntegerField;
    CDSDetallesCODIGO: TStringField;
    CDSDetallesDETALLE: TStringField;
    BuscadorArticulo: TAction;
    QDetalles: TFDQuery;
    QDetallesID: TIntegerField;
    QDetallesCODIGO: TStringField;
    QDetallesDETALLE: TStringField;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    procedure CDSDetallesCODIGOSetText(Sender: TField; const Text: string);
    procedure BuscadorArticuloExecute(Sender: TObject);
    procedure dbgrdDetallesKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSDetallesNewRecord(DataSet: TDataSet);
    procedure CDSDetallesBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  
  private
    { Private declarations }
  public
    function AsignarArticulo(dato:String):Boolean;
    { Public declarations }
  end;

var
  FormdetallesNc_Rec: TFormdetallesNc_Rec;

implementation

uses UBuscadorArticulos, DMVenta, UDMain_FD;

{$R *.dfm}

function TFormdetallesNc_Rec.AsignarArticulo(dato:string):Boolean;
begin
  QStock.Close;
  QStock.ParamByName('codigo').Value:=dato;
  QStock.Open;
  if QStock.Fields[0].AsString<>'' then
    begin
      CDSDetallesDETALLE.Value:=QStockDETALLE_STK.Value;
      Result:=True;
    end
  else
    begin
      CDSDetallesDETALLE.Clear;
      Result:=False;
    end;
  QStock.Close;
end;

procedure TFormdetallesNc_Rec.BuscadorArticuloExecute(Sender: TObject);
begin
  inherited;
  //if (CDSDetalles.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;

      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSDetallesCODIGOSetText(CDSDetallesCODIGO,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormdetallesNc_Rec.CDSDetallesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CDSDetallesCODIGO.AsString='' then
    SysUtils.Abort;
end;

procedure TFormdetallesNc_Rec.CDSDetallesCODIGOSetText(Sender: TField;
  const Text: string);
var s:string;
begin
  inherited;
  if CDSDetalles.State=dsBrowse then
    CDSDetalles.Edit;
  if (Text<>'') and (Text<>#13) then
    begin
      S:=Text;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      Sender.AsString:=S;
       if not(AsignarArticulo(Sender.AsString)) then
         begin
           Sender.Clear;
           ShowMessage('Datos no Valido');
         end
    end;
end;

procedure TFormdetallesNc_Rec.CDSDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSDetallesID.Value:=2
  else
    CDSDetallesID.Value:=QUltimoCodigo2.Fields[0].AsInteger+ CDSDetalles.RecordCount;
  QUltimoCodigo2.Close;
end;

procedure TFormdetallesNc_Rec.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDetalles.State<>dsBrowse then
      CDSDetalles.Post;
    CDSDetalles.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    ShowMessage('No se gravaron los datos....');
    DMMain_FD.fdcGestion.Rollback;
  end;
  CDSDetalles.Close;
  CDSDetalles.Open;
end;

procedure TFormdetallesNc_Rec.dbgrdDetallesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgrdDetalles.SelectedIndex=0 then
          BuscadorArticulo.Execute;
      END;
end;

procedure TFormdetallesNc_Rec.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormdetallesNc_Rec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSDetalles.Close;
  inherited;

  Action:=caFree;

end;

procedure TFormdetallesNc_Rec.FormCreate(Sender: TObject);
begin
  //inherited;
  AutoSize:=True;
  CDSDetalles.Open;
end;

procedure TFormdetallesNc_Rec.FormDestroy(Sender: TObject);
begin
  inherited;
  FormdetallesNc_Rec:=nil;
end;

end.


