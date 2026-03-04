unit UPersonalCategorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, Db, Provider, DBClient,
  ActnList, ComCtrls, Buttons, ToolWin, ExtCtrls,
  IBGenerator, ImgList, Grids, DBGrids, JvExControls, JvButton,
  JvTransparentButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, CompBuscador, System.ImageList,
  Data.FMTBcd, JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, JvGradient;

type
  TFormPersonalCategorias = class(TFormABMBase)
    dbgConceptos: TDBGrid;
    DSPConcpetos: TDataSetProvider;
    CDSConceptos: TClientDataSet;
    DSConceptos: TDataSource;
    CDSConceptosID: TIntegerField;
    CDSConceptosIDCATEGORIA: TIntegerField;
    CDSConceptosIDCONCEPTO: TIntegerField;
    CDSConceptosTIPO_CONCEPTO: TStringField;
    CDSConceptosCONCEPTO: TStringField;
    CDSConceptosCANTIDAD: TIntegerField;
    CDSConceptosIMPORTE: TFloatField;
    BuscarConcepto: TAction;
    ibgId_Conceptos: TIBGenerator;
    CDSConceptosPORCENTAJE: TFloatField;
    QConceptos: TFDQuery;
    QConceptosID: TIntegerField;
    QConceptosIDCATEGORIA: TIntegerField;
    QConceptosIDCONCEPTO: TIntegerField;
    QConceptosTIPO_CONCEPTO: TStringField;
    QConceptosCONCEPTO: TStringField;
    QConceptosCANTIDAD: TIntegerField;
    QConceptosIMPORTE: TFloatField;
    QConceptosPORCENTAJE: TFloatField;
    QTiposConcpetos: TFDQuery;
    QBuscadorConceptos: TFDQuery;
    QTiposConcpetosID: TIntegerField;
    QTiposConcpetosTIPO: TStringField;
    QTiposConcpetosCONCEPTO: TStringField;
    QTiposConcpetosCALCULO: TStringField;
    QTiposConcpetosIMPORTE: TFloatField;
    QTiposConcpetosPORCENTAJE: TFloatField;
    QTiposConcpetosMINIMO: TFloatField;
    QTiposConcpetosCONCEPTOBASE: TIntegerField;
    QTiposConcpetosCOLUMNA: TIntegerField;
    QTiposConcpetosMAXIMO: TIntegerField;
    QTiposConcpetosVISIBLE: TStringField;
    QTiposConcpetosCONCEPTOBASE2: TIntegerField;
    ComBuscadorConceptos: TComBuscador;
    pnCabecera: TPanel;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    Label3: TLabel;
    dbeSueldo: TDBEdit;
    Label4: TLabel;
    dbeHora: TDBEdit;
    rgTipoLiquidacion: TDBRadioGroup;
    Label5: TLabel;
    QConceptosRENGLON: TIntegerField;
    CDSConceptosRENGLON: TIntegerField;
    QCategoria: TFDQuery;
    QCategoriaID: TIntegerField;
    QCategoriaDETALLE: TStringField;
    QCategoriaVALORHORA: TFloatField;
    QCategoriaSUELDO_BASICO: TFloatField;
    DSPCategoria: TDataSetProvider;
    CDSCategoria: TClientDataSet;
    QCategoriaTIPO_LIQUIDACION: TSmallintField;
    CDSCategoriaID: TIntegerField;
    CDSCategoriaDETALLE: TStringField;
    CDSCategoriaVALORHORA: TFloatField;
    CDSCategoriaSUELDO_BASICO: TFloatField;
    CDSCategoriaTIPO_LIQUIDACION: TSmallintField;
    QBuscador: TFDQuery;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbeHoraExit(Sender: TObject);
    procedure CDSConceptosIDCONCEPTOSetText(Sender: TField;
      const Text: String);
    procedure BuscarConceptoExecute(Sender: TObject);
    procedure dbgConceptosKeyPress(Sender: TObject; var Key: Char);
    procedure CDSConceptosNewRecord(DataSet: TDataSet);
    procedure dbgConceptosColEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BAnteriorClick(Sender: TObject);
    procedure BSiguienteClick(Sender: TObject);
    procedure rgTipoLiquidacionClick(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgConceptosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgConceptosDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgConceptosEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgConceptosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgConceptosStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSCategoriaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    OrdenOld,OrdenNew,Codigo:Integer;
    function AsignarConcepto(Dato:Integer):Boolean;
  end;

var
  FormPersonalCategorias: TFormPersonalCategorias;
type
  TGridHack = class(TDBGrid);

implementation

{$R *.DFM}
uses UDMain_FD;

function TFormPersonalCategorias.AsignarConcepto(Dato:Integer):boolean;
begin
  QTiposConcpetos.Close;
  QTiposConcpetos.ParamByName('id').Value:=dato;
  QTiposConcpetos.Open;
  if Not(QTiposConcpetos.IsEmpty) Then
    begin
      result:=True;
      CDSConceptosTIPO_CONCEPTO.Value:=QTiposConcpetosTIPO.Value;
      CDSConceptosCONCEPTO.Value     :=QTiposConcpetosCONCEPTO.Value;
      CDSConceptosIMPORTE.Value      :=QTiposConcpetosIMPORTE.Value;
      CDSConceptosPORCENTAJE.Value   :=QTiposConcpetosPORCENTAJE.Value;

    end
  else
    Begin
      result:=False;
      CDSConceptosTIPO_CONCEPTO.Clear;
      CDSConceptosCONCEPTO.Clear;
      CDSConceptosIMPORTE.Value      :=0;
      CDSConceptosPORCENTAJE.Value   :=0;
    end;
end;

procedure TFormPersonalCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  CDSConceptos.CLose;

  Action:=cafree;
end;

procedure TFormPersonalCategorias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPersonalCategorias:=nil;
end;



procedure TFormPersonalCategorias.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCategoria.Close;
  CDSCategoria.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCategoria.Open;

  CDSConceptos.Close;
  CDSConceptos.Params.ParamByName('idcategoria').Value:=StrToInt(DatoNew);
  CDSConceptos.Open;
  CDSConceptos.IndexFieldNames:='RENGLON';

end;

procedure TFormPersonalCategorias.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSCategoria,DSPCategoria);
  AddClientDataSet(CDSConceptos,DSPConcpetos);
  CDSCategoria.Open;
  CDSConceptos.Open;
  Campo:='id';
  Tabla:='personal_categoria';
  AutoSize:=true;
end;

procedure TFormPersonalCategorias.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCategoriaID.AsString;
  inherited;
  Recuperar.Execute;
  if rgTipoLiquidacion.ItemIndex=0 Then
    begin
      dbeSueldo.Enabled :=True;
      dbeHora.Enabled   :=False;
      dbeSueldo.Color   :=clWhite;
      dbeHora.Color     :=clBtnFace;
    end
  else
    if rgTipoLiquidacion.ItemIndex=1 Then
      begin
        dbeSueldo.Enabled :=False;
        dbeHora.Enabled   :=True;
        dbeSueldo.Color   :=clBtnFace;
        dbeHora.Color     :=clWhite;
      end;


end;

procedure TFormPersonalCategorias.dbeHoraExit(Sender: TObject);
begin
  inherited;
  btConfirma.SetFocus; 
end;

procedure TFormPersonalCategorias.CDSCategoriaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSCategoriaID.Value:=1
  ELSE
   CDSCategoriaID.Value:=QUltimoCodigo2.Fields[0].Value+1;
  QUltimoCodigo2.Close;
  CDSCategoriaTIPO_LIQUIDACION.Value := 1;
  CDSCategoriaVALORHORA.Value        := 0;
  CDSCategoriaSUELDO_BASICO.Value    := 0;
end;

procedure TFormPersonalCategorias.CDSConceptosIDCONCEPTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      if CDSConceptos.State=dsBrowse Then
        CDSConceptos.Edit;
      Sender.AsString:=Text;
      if Not(AsignarConcepto(Sender.AsInteger)) Then
        begin
          ShowMessage('dato no Valido...');
          Sender.Clear;
        end;
    end;
end;

procedure TFormPersonalCategorias.BuscarConceptoExecute(Sender: TObject);
begin
  inherited;
  QBuscadorConceptos.Close;
  QBuscadorConceptos.Open;
  comBuscadorConceptos.Execute;
  if comBuscadorConceptos.rOk Then
    CDSConceptosIDCONCEPTOSetText(CDSConceptosIDCONCEPTO,IntToStr(comBuscadorConceptos.id));
  QBuscadorConceptos.Close;
end;

procedure TFormPersonalCategorias.dbgConceptosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#10 Then
    begin
      Key:=#0;
      BuscarConcepto.Execute;
    end;
end;

procedure TFormPersonalCategorias.dbgConceptosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if (Y > 15) and (dbgConceptos.DataSource.DataSet.RecordCount > 0) Then
    begin

      IF (Button = mbLeft) and (Shift = [ssShift, ssLeft]) then
        dbgConceptos.beginDrag(True)
      else
        dbgConceptos.beginDrag(False);
    end;
end;

procedure TFormPersonalCategorias.dbgConceptosStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  inherited;
  if dbgConceptos.DataSource.DataSet.FieldByName('IDCONCEPTO').AsString <> '' Then
    begin
      codigo   := dbgConceptos.DataSource.DataSet.FieldByName('IDCONCEPTO').AsInteger;
      OrdenOld := dbgConceptos.DataSource.DataSet.FieldByName('renglon').Value;
    end;
end;

procedure TFormPersonalCategorias.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:= True;
  pnCabecera.Enabled := DSBase.State in [dsInsert,dsEdit];
end;

procedure TFormPersonalCategorias.CDSConceptosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSConceptosID.Value         := ibgId_Conceptos.IncrementFD(1);
  CDSConceptosIDCATEGORIA.Value:= CDSCategoriaID.Value;
  CDSConceptosCANTIDAD.Value   := 1;
  CDSConceptosIMPORTE.Value    := 0;
  CDSConceptosRENGLON.Value    := CDSConceptos.RecordCount+1;
end;

procedure TFormPersonalCategorias.dbgConceptosColEnter(Sender: TObject);
begin
  inherited;
  if dbgConceptos.SelectedIndex>=1 Then
    dbgConceptos.SelectedIndex:=0;
end;

procedure TFormPersonalCategorias.dbgConceptosDragDrop(Sender, Source: TObject; X, Y: Integer);
var
 Orden: Integer;
begin
  inherited;

  if (Y > 15) and (dbgConceptos.DataSource.DataSet.RecordCount > 0) Then
    begin
      dbgConceptos.DataSource.DataSet.DisableControls;
      OrdenNew := dbgConceptos.DataSource.DataSet.FieldByName('Renglon').Value;

      dbgConceptos.DataSource.DataSet.Locate('Renglon', OrdenOld, []);
      dbgConceptos.DataSource.DataSet.Delete;
      Orden := 1;
      dbgConceptos.DataSource.DataSet.First;
      while not(dbgConceptos.DataSource.DataSet.Eof) DO
        begin
          dbgConceptos.DataSource.DataSet.Edit;
          dbgConceptos.DataSource.DataSet.FieldByName('renglon').Value := Orden;
          Inc(Orden);
          dbgConceptos.DataSource.DataSet.Next;
        end;

      dbgConceptos.DataSource.DataSet.Last;
      while not(dbgConceptos.DataSource.DataSet.Bof) DO
        begin
          if dbgConceptos.DataSource.DataSet.FieldByName('renglon').Value >=
            OrdenNew Then
            Begin
              dbgConceptos.DataSource.DataSet.Edit;
              dbgConceptos.DataSource.DataSet.FieldByName('renglon').Value :=
                dbgConceptos.DataSource.DataSet.FieldByName('renglon').Value + 1;
            end;
          dbgConceptos.DataSource.DataSet.Prior;
        end;
      dbgConceptos.DataSource.DataSet.Insert;
      CDSConceptosIDCONCEPTOSetText(CDSConceptosIDCONCEPTO, IntToStr(codigo));
      CDSConceptosRENGLON.Value := OrdenNew;
      dbgConceptos.DataSource.DataSet.EnableControls;
      CDSConceptos.ApplyUpdates(-1);
//      Recuperar.Execute;
      btNuevo.SetFocus;
    end;
end;

procedure TFormPersonalCategorias.dbgConceptosDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
  var
  coord: TGridCoord;
begin
  inherited;
   begin
      IF Source = dbgConceptos THEN
        Accept := True
      ELSE
        Accept := False;
      coord := dbgConceptos.MouseCoord(X, Y);
      if coord.X > 0 Then
        TGridHack(dbgConceptos).MouseDown(mbLeft, [], X, Y);
   end;
   if DSBase.State<>dsBrowse then Accept:=False;

end;

procedure TFormPersonalCategorias.dbgConceptosEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  inherited;
  if dbgConceptos.DataSource.DataSet.State <> dsBrowse Then
    dbgConceptos.DataSource.DataSet.Post;
end;

procedure TFormPersonalCategorias.BuscarExecute(Sender: TObject);
begin
  ComBuscadorBase.Data.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  inherited;
  if rgTipoLiquidacion.ItemIndex=0 Then
    begin
      dbeSueldo.Enabled :=True;
      dbeHora.Enabled   :=False;
      dbeSueldo.Color   :=clWhite;
      dbeHora.Color     :=clBtnFace;
    end
  else
    if (rgTipoLiquidacion.ItemIndex=1) or (rgTipoLiquidacion.ItemIndex=2) Then
      begin
        dbeSueldo.Enabled :=False;
        dbeHora.Enabled   :=True;
        dbeSueldo.Color   :=clBtnFace;
        dbeHora.Color     :=clWhite;
      end;
end;

procedure TFormPersonalCategorias.BAnteriorClick(Sender: TObject);
begin
  inherited;
  CDSConceptos.Close;
//  CDSConceptos.Params.ParamByName('idcategoria').Value:=CDSBaseID.Value;
  CDSConceptos.Open;
  if rgTipoLiquidacion.ItemIndex=0 Then
    begin
      dbeSueldo.Enabled :=True;
      dbeHora.Enabled   :=False;
      dbeSueldo.Color   :=clWhite;
      dbeHora.Color     :=clBtnFace;
    end
  else
    if rgTipoLiquidacion.ItemIndex=1 Then
      begin
        dbeSueldo.Enabled :=False;
        dbeHora.Enabled   :=True;
        dbeSueldo.Color   :=clBtnFace;
        dbeHora.Color     :=clWhite;
      end;
end;

procedure TFormPersonalCategorias.BSiguienteClick(Sender: TObject);
begin
  inherited;
  CDSConceptos.Close;
//  CDSConceptos.Params.ParamByName('idcategoria').Value:=CDSBaseID.Value;
  CDSConceptos.Open;
  if rgTipoLiquidacion.ItemIndex=0 Then
    begin
      dbeSueldo.Enabled :=True;
      dbeHora.Enabled   :=False;
      dbeSueldo.Color   :=clWhite;
      dbeHora.Color     :=clBtnFace;
    end
  else
    if rgTipoLiquidacion.ItemIndex=1 Then
      begin
        dbeSueldo.Enabled :=False;
        dbeHora.Enabled   :=True;
        dbeSueldo.Color   :=clBtnFace;
        dbeHora.Color     :=clWhite;
      end;
end;

procedure TFormPersonalCategorias.rgTipoLiquidacionClick(Sender: TObject);
begin
  inherited;
  if (rgTipoLiquidacion.ItemIndex=0)   Then
    begin
      dbeSueldo.Enabled :=True;
      dbeHora.Enabled   :=False;
      dbeSueldo.Color   :=clWhite;
      dbeHora.Color     :=clBtnFace;
    end
  else
    if (rgTipoLiquidacion.ItemIndex=1) or (rgTipoLiquidacion.ItemIndex=2) Then
      begin
        dbeSueldo.Enabled :=False;
        dbeHora.Enabled   :=True;
        dbeSueldo.Color   :=clBtnFace;
        dbeHora.Color     :=clWhite;
      end;

end;

procedure TFormPersonalCategorias.SalirExecute(Sender: TObject);
begin
  CDSConceptos.Close;
  CDSConceptos.Params.ParamByName('idcategoria').Clear;
  CDSConceptos.Open;
  inherited;
end;

procedure TFormPersonalCategorias.CancelarExecute(Sender: TObject);
begin
  CDSConceptos.Close;
  CDSConceptos.Params.ParamByName('idcategoria').Clear;
  CDSConceptos.Open;
  inherited;
end;

procedure TFormPersonalCategorias.AgregarExecute(Sender: TObject);
begin

  CDSCategoria.Close;
  CDSCategoria.Params.ParamByName('id').Clear;
  CDSCategoria.Open;

  CDSConceptos.Close;
  CDSConceptos.Params.ParamByName('idcategoria').Clear;
  CDSConceptos.Open;
  inherited;
  dbeCodigo.SetFocus;
end;

end.
