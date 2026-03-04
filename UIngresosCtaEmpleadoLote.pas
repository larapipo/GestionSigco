unit UIngresosCtaEmpleadoLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, JvExControls, JvDBLookup,
  DBClient, Provider, Mask, JvExMask, JvToolEdit, StdCtrls, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls,
  JvBaseEdits,DateUtils, Grids, DBGrids, JvExDBGrids, JvDBGrid, IBGenerator, DBXCommon,
  System.Actions, JvAppStorage, JvAppIniStorage, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,VirtualUI_SDK,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormIngresoPorLotePersonal = class(TFormABMBase)
    BuscaPersonal: TAction;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    DSPEmpleados: TDataSetProvider;
    CDSEmpleados: TClientDataSet;
    CDSEmpleadosCODIGO: TStringField;
    CDSEmpleadosNOMBRE: TStringField;
    CDSEmpleadosMUESTRACATEGORIA: TStringField;
    DSPCategoria: TDataSetProvider;
    CDSCategoria: TClientDataSet;
    CDSCategoriaID: TIntegerField;
    CDSCategoriaDETALLE: TStringField;
    DSPCargo: TDataSetProvider;
    CDSCargo: TClientDataSet;
    CDSCargoID: TIntegerField;
    CDSCargoDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    DSCategoria: TDataSource;
    DSCargo: TDataSource;
    edTotal: TJvCalcEdit;
    btGeneraIng: TBitBtn;
    GenerarIngresos: TAction;
    dbgMovimientos: TJvDBGrid;
    DSEmpleados: TDataSource;
    CDSEmpleadosNroCpbte: TStringField;
    CDSEmpleadosImporte: TFloatField;
    DSPMovCtaCte: TDataSetProvider;
    CDSMovCtaCte: TClientDataSet;
    CDSMovCtaCteID: TIntegerField;
    CDSMovCtaCteIDADELANTO: TIntegerField;
    CDSMovCtaCteCODIGO: TStringField;
    CDSMovCtaCteFECHA: TSQLTimeStampField;
    CDSMovCtaCteCLASECOMP: TStringField;
    CDSMovCtaCteNROCPBTE: TStringField;
    CDSMovCtaCteDETALLE: TStringField;
    CDSMovCtaCteMUESTRAEMPLEADO: TStringField;
    ibgId: TIBGenerator;
    QEmpleados: TFDQuery;
    QCategoria: TFDQuery;
    QCargo: TFDQuery;
    QMovCtaCte: TFDQuery;
    QMovCtaCteID: TIntegerField;
    QMovCtaCteIDADELANTO: TIntegerField;
    QMovCtaCteCODIGO: TStringField;
    QMovCtaCteFECHA: TSQLTimeStampField;
    QMovCtaCteCLASECOMP: TStringField;
    QMovCtaCteNROCPBTE: TStringField;
    QMovCtaCteDETALLE: TStringField;
    QMovCtaCteDEBE: TFloatField;
    QMovCtaCteHABER: TFloatField;
    QMovCtaCteMUESTRAEMPLEADO: TStringField;
    CDSMovCtaCteDEBE: TFloatField;
    CDSMovCtaCteHABER: TFloatField;
    Panel2: TPanel;
    Label1: TLabel;
    edFecha: TJvDateEdit;
    Label2: TLabel;
    edDetalle: TEdit;
    Label3: TLabel;
    dbcCategoria: TJvDBLookupCombo;
    Label4: TLabel;
    dbcCargo: TJvDBLookupCombo;
    Label5: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GenerarIngresosExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgMovimientosColEnter(Sender: TObject);
    procedure dbgMovimientosKeyPress(Sender: TObject; var Key: Char);
    procedure CDSEmpleadosBeforeInsert(DataSet: TDataSet);
    procedure CDSMovCtaCteNewRecord(DataSet: TDataSet);
    procedure CDSEmpleadosAfterPost(DataSet: TDataSet);
    procedure dbgMovimientosTitleClick(Column: TColumn);
    procedure dbgMovimientosEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

   ListaNovedades:TStringList;
   procedure guardarListViewFichero (AListView: TListView);

  end;

var
  FormIngresoPorLotePersonal: TFormIngresoPorLotePersonal;

implementation

uses UIngresosCtaEmpleados,UDMain_FD, UMuestraIngresosPersonal,
  UCtaCteEmpleados;

{$R *.dfm}


procedure TFormIngresoPorLotePersonal.guardarListViewFichero (AListView: TListView);
var
  idxItem, idxSub, IdxImage: Integer;
  F: TFileStream;
  pText: PChar;
  Codigo,Nombre,Importe: string;
  W, ItemCount, SubCount: Word;
  MySignature: array [0..2] of Char;
begin
  //Initialization
  ListaNovedades.Clear;
  with AListView do
  begin
    ItemCount := 0;
    SubCount  := 0;
     if Items.Count = 0 then ItemCount := 0
    else
      ItemCount := Items.Count;
    if Items.Count > 0 then
      begin
        for idxItem := 1 to ItemCount do
          begin
            with Items[idxItem - 1] do
              begin
                if SubItems.Count = 0 then SubCount := 0 else SubCount := Subitems.Count;
                // El primero de las columnas
                Codigo := Caption;

                if SubCount > 0 then
                  begin
                    for idxSub := 0 to SubItems.Count - 1 do
                      begin
                        case idxSub of
                          0:Nombre   := Trim(SubItems[idxSub]);
                          1:Importe  := SubItems[idxSub];
                        end;
                      end;
                  end;
                ListaNovedades.Add(Codigo+#9+
                                   Nombre+Copy('_______________________________________',1,40-Length(Nombre))+#9+
                                   Copy('                    ',1,20-Length(Importe))+ Importe);
              end;
          end;
      end;
  end;
end;




procedure TFormIngresoPorLotePersonal.BuscarExecute(Sender: TObject);
begin
 // inherited;
//  kgIngresos.ClearGrid;
  CDSEmpleados.Close;
  CDSEmpleados.IndexFieldNames:='CODIGO';
  CDSEmpleados.IndexDefs.Clear;

  CDSEmpleados.Params.ParamByName('idsucursal').Value  := dbcSucursal.KeyValue;
  CDSEmpleados.Params.ParamByName('idcargo').Value     := dbcCargo.KeyValue;
  CDSEmpleados.Params.ParamByName('idcategoria').Value := dbcCategoria.KeyValue;
  CDSEmpleados.Open;

//  kgIngresos.Cells[0,0]:='Codigo';
//  kgIngresos.Cells[1,0]:='Nombre';
//  kgIngresos.Cells[2,0]:='Nro.Cpbte';
//  kgIngresos.Cells[3,0]:='Importe';


//  kgIngresos.RowCount:=CDSEmpleados.RecordCount+1;
//  CDSEmpleados.First;
//  while Not(CDSEmpleados.Eof) do
//    begin
//      kgIngresos.Cells[0,CDSEmpleados.RecNo] := CDSEmpleadosCODIGO.Value;
//      kgIngresos.Cells[1,CDSEmpleados.RecNo] := CDSEmpleadosNOMBRE.Value;
//      kgIngresos.Cells[3,CDSEmpleados.RecNo ]:= '-';
//      CDSEmpleados.Next;
//    end;
end;

procedure TFormIngresoPorLotePersonal.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormIngresoPorLotePersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   Action:=caFree;
end;

procedure TFormIngresoPorLotePersonal.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  if Not(Assigned(FormMuestraIngresosPersonal)) then
    FormMuestraIngresosPersonal:=TFormMuestraIngresosPersonal.Create(Self);
  ListaNovedades:=TStringList.Create;
  CDSSucursal.Close;
  CDSSucursal.Open;
  CDSCategoria.Close;
  CDSCategoria.Open;
  CDSCargo.Close;
  CDSCargo.Open;
  Buscar.Execute;
end;

procedure TFormIngresoPorLotePersonal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormIngresoPorLotePersonal:=nil;
end;

procedure TFormIngresoPorLotePersonal.FormResize(Sender: TObject);
begin
  inherited;
  if FormIngresoPorLotePersonal<>nil then
    if FormIngresoPorLotePersonal.Width<>848 then
      FormIngresoPorLotePersonal.Width:=848;
end;

procedure TFormIngresoPorLotePersonal.GenerarIngresosExecute(Sender: TObject);
var
  I: Integer;
    Lista:TListItem;
begin
  inherited;

  CDSMovCtaCte.Close;
  CDSMovCtaCte.Params.ParamByName('id').Clear;
  CDSMovCtaCte.Open;

  CDSEmpleados.First;
  while Not(CDSEmpleados.Eof) do
    begin
      if (CDSEmpleadosImporte.AsFloat>0) then
        begin
          CDSMovCtaCte.Insert;
          CDSMovCtaCteCODIGO.Value:=CDSEmpleadosCODIGO.Value;

          if (CDSEmpleadosNroCpbte.AsString='') then
            CDSMovCtaCteNROCPBTE.Value:=FormatDateTime('yymmdd',edFecha.Date)
          else
            CDSMovCtaCteNROCPBTE.AsString:= CDSEmpleadosNroCpbte.AsString;

          CDSMovCtaCteDEBE.AsFloat    :=CDSEmpleadosImporte.AsFloat;

          if edDetalle.Text<>'' then
            CDSMovCtaCteDETALLE.Value   :=edDetalle.Text
          else
            CDSMovCtaCteDETALLE.Value   :='Haberes '+ FormatDateTime('mmm-yyyy', edFecha.Date);

          Lista:=FormMuestraIngresosPersonal.lvLista.Items.Add;
          Lista.Caption     :=CDSEmpleadosCODIGO.Value;
          Lista.SubItems.Add(CDSEmpleadosNOMBRE.AsString);
          Lista.SubItems.Add(FormatFloat(',0.00',CDSEmpleadosImporte.AsFloat));

          CDSMovCtaCte.Post;
        end;
      CDSEmpleados.Next;
    end;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    sbEstado.SimplePanel:=True;
    sbEstado.SimpleText:='Generando Movimientos.....';
    Application.ProcessMessages;
    if CDSMovCtaCte.State<>dsBrowse then
      CDSMovCtaCte.Post;
    CDSMovCtaCte.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
    if not(VirtualUI.Active) then
      FormMuestraIngresosPersonal.ShowModal;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se realizo la Carga....');
  end;
  sbEstado.SimplePanel:=True;
  sbEstado.SimpleText:='..';
  Application.ProcessMessages;

  Screen.Cursor:=crDefault;
  CDSMovCtaCte.Close;
  CDSMovCtaCte.Params.ParamByName('id').Clear;
  CDSMovCtaCte.Open;

  CDSEmpleados.Close;
  CDSEmpleados.Params.ParamByName('idsucursal').Value  :=dbcSucursal.KeyValue;
  CDSEmpleados.Params.ParamByName('idcargo').Value     :=dbcCargo.KeyValue;
  CDSEmpleados.Params.ParamByName('idcategoria').Value:=dbcCategoria.KeyValue;
  CDSEmpleados.Open;

end;

procedure TFormIngresoPorLotePersonal.CDSEmpleadosAfterPost(DataSet: TDataSet);
var T:TBookmark;
begin
  inherited;
  edTotal.Value:=0;
  T:=CDSEmpleados.GetBookmark;
  CDSEmpleados.DisableControls;
  CDSEmpleados.First;
  while Not(CDSEmpleados.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSEmpleadosImporte.AsFloat;
      CDSEmpleados.Next;
    end;
  CDSEmpleados.GotoBookmark(t);
  CDSEmpleados.FreeBookmark(t);
  CDSEmpleados.EnableControls;
end;

procedure TFormIngresoPorLotePersonal.CDSEmpleadosBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormIngresoPorLotePersonal.CDSMovCtaCteNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMovCtaCteID.Value         := ibgId.IncrementFD(1);
  CDSMovCtaCteFECHA.AsDateTime := edFecha.Date;
  CDSMovCtaCteDEBE.AsFloat     := 0;
  CDSMovCtaCteHABER.AsFloat    := 0;
  CDSMovCtaCteCLASECOMP.Value  := 'IP';
end;

procedure TFormIngresoPorLotePersonal.dbgMovimientosColEnter(Sender: TObject);
begin
  inherited;
  if dbgMovimientos.SelectedIndex<=1 then
    dbgMovimientos.SelectedIndex:=2;
end;

procedure TFormIngresoPorLotePersonal.dbgMovimientosDblClick(Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  if not(Assigned(FormCtaCteEmpleados)) then
    FormCtaCteEmpleados:=TFormCtaCteEmpleados.Create(self);
  FormCtaCteEmpleados.ceCliente.Text:=CDSEmpleadosCODIGO.Value;
  FormCtaCteEmpleados.ceCliente.OnKeyPress(FormCtaCteEmpleados.ceCliente,Enter);
  FormCtaCteEmpleados.show;
end;

procedure TFormIngresoPorLotePersonal.dbgMovimientosEnter(Sender: TObject);
begin
  inherited;
  dbgMovimientos.SelectedIndex:=3;
end;

procedure TFormIngresoPorLotePersonal.dbgMovimientosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgMovimientos.SelectedIndex < 2) THEN
        dbgMovimientos.SelectedIndex := dbgMovimientos.SelectedIndex + 1
      ELSE
        BEGIN
          IF Not(dbgMovimientos.DataSource.DataSet.Eof)  THEN
            dbgMovimientos.DataSource.DataSet.Next;
          dbgMovimientos.SelectedIndex := 3;
        END;
    END
end;




procedure TFormIngresoPorLotePersonal.dbgMovimientosTitleClick(Column: TColumn);
var campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Column.FieldName;
    with dbgMovimientos.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

end.
