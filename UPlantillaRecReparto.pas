unit UPlantillaRecReparto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Grids, Vcl.DBGrids,StrUtils, System.ImageList;

type
  TFormPlantillaRecepReparto = class(TFormABMBase)
    QPlantilla: TFDQuery;
    QPlantillaCODIGO: TStringField;
    QPlantillaDESC_CORTA: TStringField;
    QPlantillaORDEN: TIntegerField;
    QPlantillaMUESTRADESCRIPCION: TStringField;
    DSPPlantilla: TDataSetProvider;
    CDSPlantilla: TClientDataSet;
    CDSPlantillaCODIGO: TStringField;
    CDSPlantillaDESC_CORTA: TStringField;
    CDSPlantillaORDEN: TIntegerField;
    CDSPlantillaMUESTRADESCRIPCION: TStringField;
    dbgPlantilla: TDBGrid;
    BuscarArticulo: TAction;
    QArticulos: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSPlantillaCODIGOSetText(Sender: TField; const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSPlantillaAfterPost(DataSet: TDataSet);
    procedure CDSPlantillaAfterDelete(DataSet: TDataSet);
    procedure dbgPlantillaColEnter(Sender: TObject);
    procedure dbgPlantillaKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function AsignarArticulo(Codigo:string):Boolean;
  end;

var
  FormPlantillaRecepReparto: TFormPlantillaRecepReparto;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorArticulos;


Function TFormPlantillaRecepReparto.AsignarArticulo(Codigo: string):Boolean;
begin
  QArticulos.Close;
  QArticulos.ParamByName('Codigo').Value:=Codigo;
  QArticulos.Open;
  if QArticulosCODIGO_STK.Value<>'' then
    begin
      Result:=True;
      CDSPlantillaMUESTRADESCRIPCION.Value := QArticulosDETALLE_STK.Value;
      CDSPlantillaCODIGO.Value             := QArticulosCODIGO_STK.Value;
    end
  else
    begin
      Result:=False;
      CDSPlantillaMUESTRADESCRIPCION.Value := '';
      CDSPlantillaCODIGO.Value             := '';
    end;
  QArticulos.Close;
end;

procedure TFormPlantillaRecepReparto.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(self);
      FormBuscadorArticulos.Param1      := 1;
      FormBuscadorArticulos.Param2      := 3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(SucursalPorDefecto);
      FormBuscadorArticulos.Esquema     := -1;
      FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSPlantillaCODIGOSetText(CDSPlantillaCODIGO,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormPlantillaRecepReparto.CDSPlantillaAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSPlantilla.ApplyUpdates(0);
end;

procedure TFormPlantillaRecepReparto.CDSPlantillaAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSPlantilla.ApplyUpdates(0);
end;

procedure TFormPlantillaRecepReparto.CDSPlantillaCODIGOSetText(Sender: TField;
  const Text: string);
VAR S,CodTxt,Aux,CodAlternativo: STRING;
Enter   :Char;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      CodTxt:=AnsiReplaceStr(Text, #13, '');
      CodTxt:=AnsiReplaceStr(CodTxt, #10, '');

      Sender.AsString := DMMain_FD.SearchCodigo(CodTxt,DSBase,False);
      S:= Sender.AsString;
      IF AsignarArticulo(s) = False THEN
        BEGIN
         // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.ListaPrecio:= DMMain_FD.ListaPorDefecto(SucursalPorDefecto);
          FormBuscadorArticulos.Dato              := s;//Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSPlantilla.State = dsBrowse THEN
                CDSPlantilla.Edit;
              CDSPlantillaCODIGOSetText(CDSPlantillaCODIGO,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
  end;
end;

procedure TFormPlantillaRecepReparto.dbgPlantillaColEnter(Sender: TObject);
begin
  inherited;
  if dbgPlantilla.SelectedIndex=1 then
    dbgPlantilla.SelectedIndex:=2;
end;

procedure TFormPlantillaRecepReparto.dbgPlantillaKeyPress(Sender: TObject;
  var Key: Char);
begin
 inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 3;
      IF (dbgPlantilla.SelectedIndex < Top) THEN
        dbgPlantilla.SelectedIndex := dbgPlantilla.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgPlantilla.DataSource.DataSet.Eof) and (Not(CDSPlantilla.State in [dsBrowse])) THEN
            begin
              dbgPlantilla.DataSource.DataSet.Append;
              dbgPlantilla.SelectedIndex := 0;
            end
          else
            IF (not(dbgPlantilla.DataSource.DataSet.Eof)) and (Not(CDSPlantilla.State in [dsBrowse])) and
              (dbgPlantilla.DataSource.DataSet.RecordCount>0) THEN
              begin
                dbgPlantilla.DataSource.DataSet.Append;
                dbgPlantilla.SelectedIndex := 0;
              end;

        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorArticulos)) then
          begin
            IF dbgPlantilla.SelectedField = CDSPlantillaCODIGO THEN
              BuscarArticulo.Execute;
          end;
      END
    else
      if (key = #27) then
        dbgPlantilla.DataSource.DataSet.Cancel;
end;

procedure TFormPlantillaRecepReparto.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
end;

procedure TFormPlantillaRecepReparto.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSPlantilla,DSPPlantilla);
  pnPrincipal.Enabled:=True;
  CDSPlantilla.Close;
  CDSPlantilla.Open;
end;

procedure TFormPlantillaRecepReparto.FormResize(Sender: TObject);
begin
  inherited;
  if FormPlantillaRecepReparto<>nil then
    if FormPlantillaRecepReparto.Width<>618 then
      FormPlantillaRecepReparto.Width:=618;
end;

end.
