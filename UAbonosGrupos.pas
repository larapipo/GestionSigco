unit UAbonosGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, JvComponentBase, 
  ImgList,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls, JvFormPlacement, JvLabel,
  Data.FMTBcd, JvAppStorage, JvAppIniStorage, Data.SqlExpr, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormAbonosGrupos = class(TFormABMBase)
    CDSGrupos: TClientDataSet;
    DSPGrupos: TDataSetProvider;
    CDSGruposID: TIntegerField;
    CDSGruposDETALLE: TStringField;
    CDSGruposCODIGOARTICULO: TStringField;
    CDSGruposMUESTRAARTICULO: TStringField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    Label3: TLabel;
    dbePrecio1: TDBEdit;
    Label4: TLabel;
    dbePrecio2: TDBEdit;
    Label5: TLabel;
    dbeMuestraArticulo: TDBEdit;
    ceCodigo: TJvDBComboEdit;
    BuscarArticulo: TAction;
    CDSGruposVTO_1: TSmallintField;
    CDSGruposVTO_2: TSmallintField;
    Label6: TLabel;
    dbeVto1: TDBEdit;
    dbeVto2: TDBEdit;
    Label8: TLabel;
    Label7: TLabel;
    ceCodigoDebito: TJvDBComboEdit;
    DBEdit1: TDBEdit;
    CDSGruposCODIGOARTICULO_DEBITOS: TStringField;
    CDSGruposMUESTRAARTICULODEBITO: TStringField;
    QGrupos: TFDQuery;
    QGruposID: TIntegerField;
    QGruposDETALLE: TStringField;
    QGruposCODIGOARTICULO: TStringField;
    QGruposMUESTRAARTICULO: TStringField;
    QGruposVTO_1: TSmallintField;
    QGruposVTO_2: TSmallintField;
    QGruposCODIGOARTICULO_DEBITOS: TStringField;
    QGruposMUESTRAARTICULODEBITO: TStringField;
    QGruposPRECIO1: TFloatField;
    QGruposPRECIO2: TFloatField;
    CDSGruposPRECIO1: TFloatField;
    CDSGruposPRECIO2: TFloatField;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    QBUscador: TFDQuery;
    QBUscadorDETALLE: TStringField;
    QBUscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    CDSBuscadorID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSGruposNewRecord(DataSet: TDataSet);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSGruposCODIGOARTICULOSetText(Sender: TField;
      const Text: string);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSGruposCODIGOARTICULO_DEBITOSSetText(Sender: TField;
      const Text: string);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCodigoDebitoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarArticulo(dato:String;cual:byte):Boolean;
  end;

var
  FormAbonosGrupos: TFormAbonosGrupos;

implementation

uses UBuscadorArticulos,UDMain_FD;
{$R *.dfm}

function TFormAbonosGrupos.AsignarArticulo(dato: string;cual:byte):Boolean;
begin
  QStock.Close;
  QStock.ParamByName('codigo').Value:=Dato;
  QStock.OPen;
  if Not(QStock.IsEmpty) then
    begin
      Result:=True;
      case Cual of
        1:CDSGruposMUESTRAARTICULO.Value      :=QStockDETALLE_STK.Value;
        2:CDSGruposMUESTRAARTICULODEBITO.Value:=QStockDETALLE_STK.Value;
      end;
    end
  else
    begin
      Result:=False;
      case Cual of
        1:CDSGruposMUESTRAARTICULO.Clear;
        2:CDSGruposMUESTRAARTICULODEBITO.Clear;
      end;
    end;
  QStock.Close;
end;

procedure TFormAbonosGrupos.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
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
    begin
      if ((sender as TJvDBComboEdit).Name = 'ceCodigo') then
        CDSGruposCODIGOARTICULOSetText(CDSGruposCODIGOARTICULO,FormBuscadorArticulos.Codigo)
      else
        if ((sender as TJvDBComboEdit).Name = 'ceCodigoDebito') then
          CDSGruposCODIGOARTICULO_DEBITOSSetText(CDSGruposCODIGOARTICULO_DEBITOS,FormBuscadorArticulos.Codigo)
    end;

end;

procedure TFormAbonosGrupos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBUscador.Close;
  CDSBUscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBUscador.Close;
end;

procedure TFormAbonosGrupos.CDSGruposCODIGOARTICULOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if DMMain_FD.JustificaCodigo='D' Then
        Sender.AsString:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text)) + Text
      else
        if DMMain_FD.JustificaCodigo='I' Then
          Sender.AsString:=Text+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text));
      if not(AsignarArticulo(Sender.AsString,1)) then
        begin
          Sender.Clear;
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TFormAbonosGrupos.CDSGruposCODIGOARTICULO_DEBITOSSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if DMMain_FD.JustificaCodigo='D' Then
        Sender.AsString:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text)) + Text
      else
        if DMMain_FD.JustificaCodigo='I' Then
          Sender.AsString:=Text+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text));
      if not(AsignarArticulo(Sender.AsString,2)) then
        begin
          Sender.Clear;
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TFormAbonosGrupos.CDSGruposNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSGruposID.Value:=1
  else
    CDSGruposID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
  CDSGruposPRECIO1.AsFloat:=0;
  CDSGruposPRECIO2.AsFloat:=0;  
end;

procedure TFormAbonosGrupos.ceCodigoDebitoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_DELETE then
    begin
      CDSGruposCODIGOARTICULO_DEBITOS.Clear;
      CDSGruposMUESTRAARTICULODEBITO.Clear;
    end;

end;

procedure TFormAbonosGrupos.ceCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_DELETE then
    begin
      CDSGruposCODIGOARTICULO.Clear;
      CDSGruposMUESTRAARTICULO.Clear;
    end;
end;

procedure TFormAbonosGrupos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSGruposID.AsString;
  if ( CDSGruposCODIGOARTICULO.AsString='') and (CDSGruposMUESTRAARTICULO.AsString='' ) then
    Raise Exception.Create('No se ingreso artículo de Facturación...');
  if ( CDSGruposCODIGOARTICULO_DEBITOS.AsString='') and (CDSGruposMUESTRAARTICULODEBITO.AsString='' ) then
    Raise Exception.Create('No se ingreso artículo para Débitos...');

  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormAbonosGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAbonosGrupos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  AddClientDataSet(CDSGrupos,DSPGrupos);
  CDSGrupos.Open;
  Tabla:='cupon_abonos_grupos';
  Campo:='id';
end;

procedure TFormAbonosGrupos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAbonosGrupos:=nil;
end;

procedure TFormAbonosGrupos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGrupos.Close;
  CDSGrupos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSGrupos.Open;
end;

end.
