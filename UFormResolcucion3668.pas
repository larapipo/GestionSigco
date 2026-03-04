unit UFormResolcucion3668;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormResolucion3668 = class(TFormABMBase)
    CDSResolucion: TClientDataSet;
    DSPResolucion: TDataSetProvider;
    dbgDetalle: TJvDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    JvGradient1: TJvGradient;
    JvGradient3: TJvGradient;
    Label1: TLabel;
    DSResolucion: TDataSource;
    CDSResolucionID: TIntegerField;
    CDSResolucionRUBRO: TStringField;
    CDSResolucionSUBRUBRO: TStringField;
    CDSResolucionMUESTRARUBRO: TStringField;
    CDSResolucionMUESTRASUBRUBRO: TStringField;
    BuscarRubro: TAction;
    BuscarSubRubro: TAction;
    CDSBuscaRubro: TClientDataSet;
    CDSBuscaRubroDETALLE_RUBRO: TStringField;
    CDSBuscaRubroCODIGO_RUBRO: TStringField;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaSubRubro: TClientDataSet;
    CDSBuscaSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSBuscaSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSBuscaSubRubroCODIGO_RUBRO: TStringField;
    DSPBuscaSubRubro: TDataSetProvider;
    ComBuscadorRubro: TComBuscador;
    ComBuscadorSubRubro: TComBuscador;
    QResolucion: TFDQuery;
    QResolucionID: TIntegerField;
    QResolucionRUBRO: TStringField;
    QResolucionSUBRUBRO: TStringField;
    QResolucionMUESTRARUBRO: TStringField;
    QResolucionMUESTRASUBRUBRO: TStringField;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QRubroCONTROL_RUBRO: TStringField;
    QRubroFUERA_PROMO: TStringField;
    QRubroORDEN: TIntegerField;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    QSubRubroCONTROL_SUBRUBRO: TStringField;
    QSubRubroFUERA_PROMO: TStringField;
    QSubRubroMUESTRARUBRO: TStringField;
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarRubroExecute(Sender: TObject);
    procedure BuscarSubRubroExecute(Sender: TObject);
    procedure CDSResolucionRUBROSetText(Sender: TField; const Text: string);
    procedure CDSResolucionSUBRUBROSetText(Sender: TField; const Text: string);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure CDSResolucionNewRecord(DataSet: TDataSet);
    procedure CDSResolucionAfterPost(DataSet: TDataSet);
    procedure CDSResolucionAfterDelete(DataSet: TDataSet);
    procedure CDSResolucionBeforePost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     FUNCTION AsignarRubro(dato: STRING): Boolean;
     FUNCTION AsignarSubRubro(dato: STRING): Boolean;

  end;

var
  FormResolucion3668: TFormResolucion3668;

implementation

{$R *.dfm}
uses UDMain_FD,DMBuscadoresForm;


FUNCTION TFormResolucion3668.AsignarRubro(dato: STRING): Boolean;
BEGIN
  QRubro.Close;
  QRubro.Params.ParamByName('CodigoRubro').Value := dato;
  QRubro.Open;
  IF NOT (QRubro.IsEmpty) THEN
    BEGIN
      Result := True;
      if CDSResolucion.State=dsBrowse then
        CDSResolucion.Edit;
      CDSResolucionMUESTRARUBRO.Value := QRubroDETALLE_RUBRO.Value;
      CDSResolucionSUBRUBRO.Clear;
      CDSResolucionMUESTRASUBRUBRO.Clear;
    END
  ELSE
    result := False;
  QRubro.Close;
END;

FUNCTION TFormResolucion3668.AsignarSubRubro(dato: STRING): Boolean;
BEGIN
  QSubRubro.Close;
  QSubRubro.Params.ParamByName('CodigoSubRubro').Value := Dato;
  QSubRubro.Params.ParamByName('CodigoRubro').Value    := CDSResolucionRUBRO.Value;
  QSubRubro.Open;
  IF NOT (QSubRubro.IsEmpty) THEN
    BEGIN
      result := True;
      if CDSResolucion.State=dsBrowse then
        CDSResolucion.Edit;
      CDSResolucionMUESTRASUBRUBRO.Value := QSubRubroDETALLE_SUBRUBRO.Value;
    END
  ELSE
    result := False;
  QSubRubro.Close;
END;


procedure TFormResolucion3668.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSResolucion.Close;
  CDSResolucion.Open;
end;

procedure TFormResolucion3668.BuscarRubroExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  comBuscadorRubro.Execute;
  if ComBuscadorRubro.rOk then
    CDSResolucionRUBROSetText(CDSResolucionRUBRO,comBuscadorRubro.Id);
  CDSBuscaRubro.Close;
end;

procedure TFormResolucion3668.BuscarSubRubroExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSubRubro.Close;
  CDSBuscaSubRubro.Params.ParamByName('Rubro').Value :=CDSResolucionRUBRO.Value;
  CDSBuscaSubRubro.Open;
  IF NOT (CDSBuscaSubRubro.IsEmpty) THEN
    BEGIN
      comBuscadorSubRubro.Execute;
      if comBuscadorSubRubro.rOk then
        CDSResolucionSUBRUBROSetText(CDSResolucionSUBRUBRO, comBuscadorSubRubro.Id);
      CDSBuscaSubRubro.Close;
    END
  ELSE
    ShowMessage('No Hay Rubro Seleccionado.....!!!');
end;

procedure TFormResolucion3668.CDSResolucionAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSResolucion.ApplyUpdates(0);
  CDSResolucion.Close;
  CDSResolucion.Open;
end;

procedure TFormResolucion3668.CDSResolucionAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSResolucion.ApplyUpdates(0);
  CDSResolucion.Close;
  CDSResolucion.Open;
end;

procedure TFormResolucion3668.CDSResolucionBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (CDSResolucionRUBRO.AsString='') or (CDSResolucionSUBRUBRO.AsString='') then
   begin
     SysUtils.Abort;
     CDSResolucion.Cancel;
   end;
end;

procedure TFormResolucion3668.CDSResolucionNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSResolucionID.Value:=1
  else
    CDSResolucionID.Value:=QUltimoCodigo2.Fields[0].Value+1;
  QUltimoCodigo2.Close;
  CDSResolucionRUBRO.Value          :='';
  CDSResolucionSUBRUBRO.Value       :='';
  CDSResolucionMUESTRARUBRO.Value   :='';
  CDSResolucionMUESTRASUBRUBRO.Value:='';

end;

procedure TFormResolucion3668.CDSResolucionRUBROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if CDSResolucion.State=dsBrowse then
        CDSResolucion.Edit;
      Sender.AsString:=Copy('000000',1,3-length(Text))+Text;
      if Not(AsignarRubro(Sender.AsString)) then
        begin
          Sender.AsString:='';
          ShowMessage('Codigo no Válido');
        end;
    end;
end;

procedure TFormResolucion3668.CDSResolucionSUBRUBROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
 if (Text<>'') and (Text<>#13) Then
    begin
      if CDSResolucion.State=dsBrowse then
        CDSResolucion.Edit;
      Sender.AsString := Copy('00000', 1, 5 - Length(Text)) + Text;
      IF NOT (AsignarSubRubro(Sender.AsString)) THEN
        BEGIN
          Sender.AsString := '';

          ShowMessage('Codigo no Válido');
        END;
    end;
end;

procedure TFormResolucion3668.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
//  CDSResolucion.ApplyUpdates(0);

end;

procedure TFormResolucion3668.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  if dbgDetalle.SelectedIndex=1 then
    dbgDetalle.SelectedIndex:=dbgDetalle.SelectedIndex+1
  else
    if dbgDetalle.SelectedIndex=3 then
      dbgDetalle.SelectedIndex:=dbgDetalle.SelectedIndex+1;
end;

procedure TFormResolucion3668.dbgDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  if dbgDetalle.SelectedIndex=0 then
    BuscarRubro.Execute
  else
    if dbgDetalle.SelectedIndex=2 then
      BuscarSubRubro.Execute;
end;

procedure TFormResolucion3668.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 2) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    if Key=#10 Then
      begin
        Key:=#0;
        if dbgDetalle.SelectedIndex=0 Then
          BuscarRubro.Execute
        else
          if dbgDetalle.SelectedIndex=2 Then
            BuscarSubRubro.Execute;
      end;
end;

procedure TFormResolucion3668.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
end;

procedure TFormResolucion3668.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormResolucion3668.FormCreate(Sender: TObject);
begin
 // inherited;
  pnPrincipal.Enabled:=True;
  AutoSize:=True;
  CDSResolucion.Open;
end;

procedure TFormResolucion3668.FormDestroy(Sender: TObject);
begin
  inherited;
  FormResolucion3668:=nil;
end;

procedure TFormResolucion3668.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if Key=#10 Then
    begin
      Key:=#0;
      if dbgDetalle.SelectedIndex=0 Then
        BuscarRubro.Execute
      else
        if dbgDetalle.SelectedIndex=2 Then
          BuscarSubRubro.Execute;
    end;
end;

end.
