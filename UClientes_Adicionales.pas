unit UClientes_Adicionales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Grids, DBGrids, DBClient, Provider, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls,DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormClientesAdicionales = class(TFormABMBase)
    QDetalles: TFDQuery;
    DSPdetalles: TDataSetProvider;
    CDSDetalles: TClientDataSet;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    DSDetalles: TDataSource;
    dbgrdDetalles: TDBGrid;
    QDetallesCODIGO: TStringField;
    QDetallesDETALLE: TStringField;
    QDetallesIMPORTE: TFloatField;
    CDSDetallesCODIGO: TStringField;
    CDSDetallesDETALLE: TStringField;
    CDSDetallesIMPORTE: TFloatField;
    BuscadorArticulos: TAction;
    Label1: TLabel;
    procedure dbgrdDetallesKeyPress(Sender: TObject; var Key: Char);
    procedure BuscadorArticulosExecute(Sender: TObject);
    procedure CDSDetallesCODIGOSetText(Sender: TField; const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgrdDetallesColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarArticulo(dato:String):Boolean;
  end;

var
  FormClientesAdicionales: TFormClientesAdicionales;

implementation

uses UBuscadorArticulos, UDMain_FD;

{$R *.dfm}

function TFormClientesAdicionales.AsignarArticulo(dato:string):Boolean;
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

procedure TFormClientesAdicionales.BuscadorArticulosExecute(Sender: TObject);
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

procedure TFormClientesAdicionales.CDSDetallesCODIGOSetText(Sender: TField;
  const Text: string);
var s:string;
begin
  inherited;
  if CDSDetalles.State=dsBrowse then
    CDSDetalles.Edit;
  if (Text<>'') and (Text<>#13) then
    begin
      S:=Text;
      if DMMain_fd.JustificaCodigo='D' Then
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

procedure TFormClientesAdicionales.ConfirmaExecute(Sender: TObject);
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

procedure TFormClientesAdicionales.dbgrdDetallesColEnter(Sender: TObject);
begin
  inherited;
  if dbgrdDetalles.SelectedIndex=1 then
    dbgrdDetalles.SelectedIndex:=2;
end;

procedure TFormClientesAdicionales.dbgrdDetallesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgrdDetalles.SelectedIndex=0 then
          BuscadorArticulos.Execute;
      END
  else
    if Key=#13 then
      begin
        Key := #0;
        if dbgrdDetalles.SelectedIndex<2 then
          dbgrdDetalles.SelectedIndex:=dbgrdDetalles.SelectedIndex+1
        else
          begin
            dbgrdDetalles.DataSource.DataSet.Append;
            dbgrdDetalles.SelectedIndex:=0;
          end;
        
      end;
end;

procedure TFormClientesAdicionales.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormClientesAdicionales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSDetalles.Close;
  inherited;

  Action:=caFree;
end;

procedure TFormClientesAdicionales.FormCreate(Sender: TObject);
begin
 //inherited;
  AutoSize:=True;
  CDSDetalles.Open;
end;

procedure TFormClientesAdicionales.FormDestroy(Sender: TObject);
begin
  inherited;
  FormClientesAdicionales:=nil;
end;

end.
