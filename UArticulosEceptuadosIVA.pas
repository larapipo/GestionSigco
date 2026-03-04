unit UArticulosEceptuadosIVA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Datasnap.Provider,System.StrUtils;

type
  TFormArtciculosEceptuadosIVAVta = class(TFormABMBase)
    dbgPlantilla: TDBGrid;
    QPlantilla: TFDQuery;
    DSPPlantilla: TDataSetProvider;
    CDSPlantilla: TClientDataSet;
    QArticulos: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    QPlantillaCODIGO: TStringField;
    QPlantillaMUESTRADESCRIPCION: TStringField;
    CDSPlantillaCODIGO: TStringField;
    CDSPlantillaMUESTRADESCRIPCION: TStringField;
    BuscarArticulo: TAction;
    QBorrraCodigo: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    procedure CDSPlantillaCODIGOSetText(Sender: TField; const Text: string);
    procedure dbgPlantillaColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgPlantillaKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSPlantillaAfterDelete(DataSet: TDataSet);
    procedure CDSPlantillaAfterPost(DataSet: TDataSet);
    procedure CDSPlantillaBeforeInsert(DataSet: TDataSet);
    procedure CDSPlantillaAfterInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPlantillaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSPlantillaBeforePost(DataSet: TDataSet);
    procedure dbgPlantillaDblClick(Sender: TObject);
    procedure CDSPlantillaBeforeDelete(DataSet: TDataSet);
  private
    function AsignarArticulo(Codigo: string): Boolean;
    function VerificaExistencia(var codigo: String): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArtciculosEceptuadosIVAVta: TFormArtciculosEceptuadosIVAVta;

implementation

uses UDMain_FD, UBuscadorArticulos, UStock_2;
{$R *.dfm}


Function TFormArtciculosEceptuadosIVAVta.AsignarArticulo(Codigo: string):Boolean;
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

procedure TFormArtciculosEceptuadosIVAVta.BuscarArticuloExecute(
  Sender: TObject);
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

procedure TFormArtciculosEceptuadosIVAVta.CDSPlantillaAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  QBorrraCodigo.Close;
  QBorrraCodigo.ParamByName('codigo').Value:=CDSPlantillaCODIGO.AsString;
  QBorrraCodigo.ExecSQL;
  QBorrraCodigo.Close;
end;

procedure TFormArtciculosEceptuadosIVAVta.CDSPlantillaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  dbgPlantilla.SelectedIndex:=0;
end;

procedure TFormArtciculosEceptuadosIVAVta.CDSPlantillaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSPlantilla.ApplyUpdates(0);
end;

procedure TFormArtciculosEceptuadosIVAVta.CDSPlantillaBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  QBorrraCodigo.Close;
  QBorrraCodigo.ParamByName('codigo').Value:=CDSPlantillaCODIGO.AsString;
  QBorrraCodigo.ExecSQL;
  QBorrraCodigo.Close;
end;

procedure TFormArtciculosEceptuadosIVAVta.CDSPlantillaBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  dbgPlantilla.SelectedIndex:=0;
end;

procedure TFormArtciculosEceptuadosIVAVta.CDSPlantillaBeforePost(
  DataSet: TDataSet);
begin
  if (CDSPlantillaCODIGO.AsString<>'') then
  inherited;
end;

function TFormArtciculosEceptuadosIVAVta.VerificaExistencia(var codigo:String):Boolean;
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSPlantilla,True);
  CDSClone.First;
  if CDSClone.Locate('CODIGO',codigo,[]) then
    result:=True
  else
    Result:=False;
  CDSClone.Free;

end;

procedure TFormArtciculosEceptuadosIVAVta.CDSPlantillaCODIGOSetText(
  Sender: TField; const Text: string);
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
      if Not(VerificaExistencia(s)) then
        begin
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
        end
      else
        begin
          Sender.AsString := '';
          CDSPlantilla.Cancel;
        end;
    end;
end;

procedure TFormArtciculosEceptuadosIVAVta.dbgPlantillaColEnter(Sender: TObject);
begin
   inherited;
  if dbgPlantilla.SelectedIndex=1 then
    dbgPlantilla.SelectedIndex:=0;
end;

procedure TFormArtciculosEceptuadosIVAVta.dbgPlantillaDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSPlantillaCODIGO.AsString;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormArtciculosEceptuadosIVAVta.dbgPlantillaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (shift=[ssCtrl]) and (Key=VK_RETURN) then
    begin
      Key:=0;
      BuscarArticulo.Execute;
    end;
end;

procedure TFormArtciculosEceptuadosIVAVta.dbgPlantillaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 1;
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

procedure TFormArtciculosEceptuadosIVAVta.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
  pnPrincipal.Enabled:=True;
end;

procedure TFormArtciculosEceptuadosIVAVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;
end;

procedure TFormArtciculosEceptuadosIVAVta.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  autosize:=False;
  AddClientDataSet(CDSPlantilla,DSPPlantilla);
  pnPrincipal.Enabled:=True;
  CDSPlantilla.Close;
  CDSPlantilla.Params.ParamByName('codigo').Value:='********';
  CDSPlantilla.Open;
end;

procedure TFormArtciculosEceptuadosIVAVta.FormDestroy(Sender: TObject);
begin
  inherited;
   FormArtciculosEceptuadosIVAVta:=nil;
end;

procedure TFormArtciculosEceptuadosIVAVta.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not(ActiveControl is TDBGrid)) then
  inherited;
end;

procedure TFormArtciculosEceptuadosIVAVta.FormResize(Sender: TObject);
begin
  inherited;
  if FormArtciculosEceptuadosIVAVta<>nil then
    if FormArtciculosEceptuadosIVAVta.Width<>538 then
      FormArtciculosEceptuadosIVAVta.Width:=538;
end;

end.
