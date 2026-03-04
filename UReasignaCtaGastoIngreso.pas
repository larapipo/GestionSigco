unit UReasignaCtaGastoIngreso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, ToolWin, ExtCtrls, Mask,Librerias, Grids, DBGrids, Provider, DBClient,
  DBCtrls, JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, Menus,
  JvExDBGrids, JvDBGrid, DBXCommon, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.DB, Vcl.ComCtrls, Vcl.ActnList,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  AdvSmoothButton;

type
  TFormReasignaCtasGastosIngresos = class(TFormABMBase)
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    DSDetalleEgresos: TDataSource;
    CDSDetalleEgresos: TClientDataSet;
    DSPDetalleEgresos: TDataSetProvider;
    BuscarRubro: TAction;
    BuscarCta: TAction;
    BitBtn1: TBitBtn;
    pgcMov: TPageControl;
    tsEgresos: TTabSheet;
    Label1: TLabel;
    dbtRubEgreso: TDBText;
    Label4: TLabel;
    dbtCtaEgreso: TDBText;
    tsIngresos: TTabSheet;
    Label5: TLabel;
    dbtRubIngreso: TDBText;
    Label6: TLabel;
    dbtCtaIngreso: TDBText;
    DSDetalleIngresos: TDataSource;
    DSPDetalleIngresos: TDataSetProvider;
    CDSDetalleIngresos: TClientDataSet;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    CDSDetalleEgresosID: TIntegerField;
    CDSDetalleEgresosCLASECPBTE: TStringField;
    CDSDetalleEgresosNROCPBTE: TStringField;
    CDSDetalleEgresosFECHACPBTE: TSQLTimeStampField;
    CDSDetalleEgresosFECHAGASTO: TSQLTimeStampField;
    CDSDetalleEgresosRUBROGASTO: TStringField;
    CDSDetalleEgresosCODIGOGASTO: TStringField;
    CDSDetalleEgresosDETALLE: TStringField;
    CDSDetalleEgresosMUESTRARUBRO: TStringField;
    CDSDetalleEgresosMUESTRACUENTA: TStringField;
    CDSDetalleIngresosID: TIntegerField;
    CDSDetalleIngresosCLASECPBTE: TStringField;
    CDSDetalleIngresosNROCPBTE: TStringField;
    CDSDetalleIngresosFECHACPBTE: TSQLTimeStampField;
    CDSDetalleIngresosFECHAINGRESO: TSQLTimeStampField;
    CDSDetalleIngresosRUBROINGRESO: TStringField;
    CDSDetalleIngresosCODIGOINGRESO: TStringField;
    CDSDetalleIngresosDETALLE: TStringField;
    CDSDetalleIngresosMUESTRARUBRO: TStringField;
    CDSDetalleIngresosMUESTRACUENTA: TStringField;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubroCODIGO: TStringField;
    CDSBuscaRubroDETALLE: TStringField;
    CDSBuscaCuenta: TClientDataSet;
    DSPBuscaCuenta: TDataSetProvider;
    CDSBuscaCuentaCODIGO: TStringField;
    CDSBuscaCuentaCODIGO_RUBRO: TStringField;
    CDSBuscaCuentaDETALLE: TStringField;
    hasta: TJvDateEdit;
    desde: TJvDateEdit;
    ReasignaRub: TAction;
    PopupMenu1: TPopupMenu;
    ReasignaRub1: TMenuItem;
    dbgEgresos: TJvDBGrid;
    dbgIngresos: TJvDBGrid;
    CDSDetalleEgresosID_CPBTE: TIntegerField;
    CDSDetalleIngresosID_CPBTE: TIntegerField;
    FechaEgreso: TJvDBDateEdit;
    FechaIngreso: TJvDBDateEdit;
    ComBuscadorCuentas: TComBuscador;
    ComBuscadorRubros: TComBuscador;
    ComBuscadorRubro: TComBuscador;
    QDetalleEgresos: TFDQuery;
    QDetalleEgresosID: TIntegerField;
    QDetalleEgresosCLASECPBTE: TStringField;
    QDetalleEgresosNROCPBTE: TStringField;
    QDetalleEgresosFECHACPBTE: TSQLTimeStampField;
    QDetalleEgresosFECHAGASTO: TSQLTimeStampField;
    QDetalleEgresosRUBROGASTO: TStringField;
    QDetalleEgresosCODIGOGASTO: TStringField;
    QDetalleEgresosDETALLE: TStringField;
    QDetalleEgresosIMPORTE: TFloatField;
    QDetalleEgresosMUESTRARUBRO: TStringField;
    QDetalleEgresosMUESTRACUENTA: TStringField;
    QDetalleEgresosID_CPBTE: TIntegerField;
    CDSDetalleEgresosIMPORTE: TFloatField;
    QDetalleIngresos: TFDQuery;
    QDetalleIngresosID: TIntegerField;
    QDetalleIngresosCLASECPBTE: TStringField;
    QDetalleIngresosNROCPBTE: TStringField;
    QDetalleIngresosFECHACPBTE: TSQLTimeStampField;
    QDetalleIngresosID_CPBTE: TIntegerField;
    QDetalleIngresosFECHAINGRESO: TSQLTimeStampField;
    QDetalleIngresosRUBROINGRESO: TStringField;
    QDetalleIngresosCODIGOINGRESO: TStringField;
    QDetalleIngresosDETALLE: TStringField;
    QDetalleIngresosIMPORTE: TFloatField;
    QDetalleIngresosMUESTRARUBRO: TStringField;
    QDetalleIngresosMUESTRACUENTA: TStringField;
    CDSDetalleIngresosIMPORTE: TFloatField;
    QBuscaCuentas: TFDQuery;
    QBuscaRubro: TFDQuery;
    QReasignaRubrosMovimientos: TFDQuery;
    QRubro: TFDQuery;
    QRubroCODIGO: TStringField;
    QRubroDETALLE: TStringField;
    QCta: TFDQuery;
    QCtaCODIGO: TStringField;
    QCtaCODIGO_RUBRO: TStringField;
    QCtaDETALLE: TStringField;
    QCtaEXCLUYE: TStringField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSDetalleEgresosBeforeInsert(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSDetalleEgresosRUBROGASTOSetText(Sender: TField;
      const Text: String);
    procedure CancelarExecute(Sender: TObject);
    procedure CDSDetalleEgresosCODIGOGASTOSetText(Sender: TField;
      const Text: String);
    procedure BuscarRubroExecute(Sender: TObject);
    procedure BuscarCtaExecute(Sender: TObject);
    procedure dbgEgresosKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSDetalleIngresosRUBROINGRESOSetText(Sender: TField;
      const Text: String);
    procedure CDSDetalleIngresosCODIGOINGRESOSetText(Sender: TField;
      const Text: String);
    procedure dbgIngresosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgEgresosColEnter(Sender: TObject);
    procedure dbgIngresosColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgIngresosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgEgresosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ReasignaRubExecute(Sender: TObject);
    procedure dbgIngresosDblClick(Sender: TObject);
    procedure dbgEgresosDblClick(Sender: TObject);
    procedure dbgEgresosEnter(Sender: TObject);
    procedure dbgIngresosEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarCta(Dato1, Dato2: STRING): Boolean;
    FUNCTION AsignarRubro(Dato: STRING): Boolean;

  end;

var
  FormReasignaCtasGastosIngresos: TFormReasignaCtasGastosIngresos;

implementation

uses UDMain_FD, UEgresoCaja, UIngresoCaja;

{$R *.DFM}

FUNCTION TFormReasignaCtasGastosIngresos.AsignarCta(Dato1, Dato2: STRING): Boolean;
BEGIN
  QCta.Close;
  QCta.ParamByName('rubro').Value := dato1;
  QCta.ParamByName('codigo').Value := Dato2;
  QCta.Open;
  IF NOT (QCta.IsEmpty) THEN
    BEGIN
      Result := True;
      if pgcMov.ActivePageIndex=0 Then
        CDSDetalleEgresosMUESTRACUENTA.Value  := QCtaDETALLE.Value
      else
        CDSDetalleIngresosMUESTRACUENTA.Value := QCtaDETALLE.Value;
    END
  ELSE
    BEGIN
      Result := False;
      if pgcMov.ActivePageIndex=0 Then
        CDSDetalleEgresosMUESTRACUENTA.Value:=''
      else
        CDSDetalleIngresosMUESTRACUENTA.Value:=''
    END;
  QCta.Close;
END;

FUNCTION TFormReasignaCtasGastosIngresos.AsignarRubro(Dato: STRING): Boolean;
BEGIN
  QRubro.Close;
  QRubro.ParamByName('codigo').AsString := dato;
  QRubro.Open;
  IF NOT (QRubro.IsEmpty) THEN
    BEGIN
      Result := True;
      if pgcMov.ActivePageIndex=0 Then
        begin
          CDSDetalleEgresosMUESTRARUBRO.Value:=QRubroDETALLE.Value;
          CDSDetalleEgresosCODIGOGASTO.Clear;
        end
      else
        if pgcMov.ActivePageIndex=1 Then
          begin
            CDSDetalleIngresosMUESTRARUBRO.Value:=QRubroDETALLE.Value;
            CDSDetalleIngresosCODIGOINGRESO.Clear;
          end;
    END
  ELSE
    BEGIN
      Result := False;
      CDSDetalleEgresosMUESTRARUBRO.Value:='';
    END;
  QRubro.Close;
END;

procedure TFormReasignaCtasGastosIngresos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Recuperar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormReasignaCtasGastosIngresos.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;

procedure TFormReasignaCtasGastosIngresos.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDetalleEgresos.State<> dsBrowse Then
      CDSDetalleEgresos.Post;
    CDSDetalleEgresos.ApplyUpdates(0);
    if CDSDetalleIngresos.State<> dsBrowse Then
      CDSDetalleIngresos.Post;
    CDSDetalleIngresos.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
    ShowMessage('Cambios Aplicados...');

  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo realizar la operación...');
  end;
end;

procedure TFormReasignaCtasGastosIngresos.CDSDetalleEgresosBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  sysUtils.Abort;
end;

procedure TFormReasignaCtasGastosIngresos.BuscarExecute(Sender: TObject);
begin
 // inherited;

end;

procedure TFormReasignaCtasGastosIngresos.CDSDetalleEgresosRUBROGASTOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSDetalleEgresos.State=dsBrowse Then CDSDetalleEgresos.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarRubro(Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
   end;
end;

procedure TFormReasignaCtasGastosIngresos.CancelarExecute(Sender: TObject);
begin
  //inherited;
  CDSDetalleEgresos.Close;
end;

procedure TFormReasignaCtasGastosIngresos.CDSDetalleEgresosCODIGOGASTOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSDetalleEgresos.State=dsBrowse Then CDSDetalleEgresos.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarCta(CDSDetalleEgresosRUBROGASTO.AsString,Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
    end;
end;

procedure TFormReasignaCtasGastosIngresos.BuscarRubroExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  comBuscadorRubro.Execute;
  if comBuscadorRubro.rOk Then
      if pgcMov.ActivePageIndex=0 Then
        CDSDetalleEgresosRUBROGASTOSetText(CDSDetalleEgresosRUBROGASTO,comBuscadorRubro.Id)
      else
        CDSDetalleIngresosRUBROINGRESOSetText(CDSDetalleIngresosRUBROINGRESO,comBuscadorRubro.Id);
  CDSBuscaRubro.Close;
end;

procedure TFormReasignaCtasGastosIngresos.BuscarCtaExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscaCuenta.Close;
  if pgcMov.ActivePageIndex=0 Then
    CDSBuscaCuenta.Params.ParamByName('rubro').AsString := CDSDetalleEgresosRUBROGASTO.AsString
  else
    CDSBuscaCuenta.Params.ParamByName('rubro').AsString := CDSDetalleIngresosRUBROINGRESO.AsString;
  CDSBuscaCuenta.Open;
  comBuscadorCuentas.Execute;
  if comBuscadorCuentas.rOk Then
    if pgcMov.ActivePageIndex=0 Then
      CDSDetalleEgresosCODIGOGASTOSetText(CDSDetalleEgresosCODIGOGASTO, comBuscadorCuentas.Id)
    else
      CDSDetalleIngresosCODIGOINGRESOSetText(CDSDetalleIngresosCODIGOINGRESO, comBuscadorCuentas.Id);
  CDSBuscaCuenta.Close;

end;

procedure TFormReasignaCtasGastosIngresos.dbgEgresosKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgEgresos.SelectedIndex < 5) THEN
        dbgEgresos.SelectedIndex := dbgEgresos.SelectedIndex + 1
      ELSE
        BEGIN
          dbgEgresos.DataSource.DataSet.Next;
          dbgEgresos.SelectedIndex := 4;
        END;
    END
  ELSE
  if Key=#10 Then
    begin
      Key:=#0;
      if dbgEgresos.SelectedIndex=4 Then
        BuscarRubro.Execute
      else
        if dbgEgresos.SelectedIndex=5 Then
          BuscarCta.Execute;
    end;

end;

procedure TFormReasignaCtasGastosIngresos.dbgEgresosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgEgresos.DataSource.DataSet as TClientDataSet do
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

procedure TFormReasignaCtasGastosIngresos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
//  if (Key = #13) and
//    (not (ActiveControl is Tbutton)) and
//    (not (ActiveControl is TFrame)) and
//    (not (ActiveControl is TDBMemo)) and
//    (not (ActiveControl is TDBGrid))
//    then
//  begin
//    perform(wm_nextdlgctl, 0, 0);
//    key := #0;
//  end;
//  if Key = #27 then
//    if btCancelar.Enabled Then
//      Cancelar.Execute;

end;

procedure TFormReasignaCtasGastosIngresos.ReasignaRubExecute(Sender: TObject);
begin
  inherited;
  QReasignaRubrosMovimientos.Close;
  QReasignaRubrosMovimientos.ExecSQL(True);
  QReasignaRubrosMovimientos.Close;
  Recuperar.Execute;
end;

procedure TFormReasignaCtasGastosIngresos.RecuperarExecute(
  Sender: TObject);
begin
  inherited;
  CDSDetalleEgresos.IndexName :='';
  CDSDetalleIngresos.IndexName:='';
  CDSDetalleEgresos.IndexDefs.Clear;
  CDSDetalleIngresos.IndexDefs.Clear;

  CDSDetalleEgresos.Close;
  CDSDetalleEgresos.Params.ParamByName('desde').Value:=desde.Date;
  CDSDetalleEgresos.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSDetalleEgresos.Open;
  CDSDetalleIngresos.Close;
  CDSDetalleIngresos.Params.ParamByName('desde').Value:=desde.Date;
  CDSDetalleIngresos.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSDetalleIngresos.Open;
end;

procedure TFormReasignaCtasGastosIngresos.CDSDetalleIngresosRUBROINGRESOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSDetalleIngresos.State=dsBrowse Then CDSDetalleIngresos.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarRubro(Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
   end;

end;

procedure TFormReasignaCtasGastosIngresos.CDSDetalleIngresosCODIGOINGRESOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSDetalleIngresos.State=dsBrowse Then CDSDetalleIngresos.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarCta(CDSDetalleIngresosRUBROINGRESO.AsString,Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
    end;

end;

procedure TFormReasignaCtasGastosIngresos.dbgIngresosKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgIngresos.SelectedIndex < 5) THEN
        dbgIngresos.SelectedIndex := dbgIngresos.SelectedIndex + 1
      ELSE
        BEGIN
          dbgIngresos.DataSource.DataSet.Next;
          dbgIngresos.SelectedIndex := 4;
        END;
    END
  ELSE
  if Key=#10 Then
    begin
      Key:=#0;
      if dbgIngresos.SelectedIndex=4 Then
        BuscarRubro.Execute
      else
        if dbgIngresos.SelectedIndex=5 Then
          BuscarCta.Execute;
    end;
end;

procedure TFormReasignaCtasGastosIngresos.dbgIngresosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgIngresos.DataSource.DataSet as TClientDataSet do
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

procedure TFormReasignaCtasGastosIngresos.dbgEgresosColEnter(
  Sender: TObject);
begin
  inherited;
  IF dbgEgresos.SelectedIndex < 1 THEN
    dbgEgresos.SelectedIndex := 1;
  IF (dbgEgresos.SelectedIndex >= 2) and (dbgEgresos.SelectedIndex <= 3) THEN
    dbgEgresos.SelectedIndex := 1;

  IF dbgEgresos.SelectedIndex > 5 THEN
    dbgEgresos.SelectedIndex := 5;

end;

procedure TFormReasignaCtasGastosIngresos.dbgEgresosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormEgresoCaja)) Then
    FormEgresoCaja:=TFormEgresoCaja.Create(self);
   FormEgresoCaja.TipoCpbte:= 'EC';
   FormEgresoCaja.DatoNew  := CDSDetalleEgresosID_CPBTE.AsString;
   FormEgresoCaja.Recuperar.Execute;
   FormEgresoCaja.Show;

end;

procedure TFormReasignaCtasGastosIngresos.dbgEgresosEnter(Sender: TObject);
begin
  inherited;
  dbgIngresos.SelectedIndex:=4;
end;

procedure TFormReasignaCtasGastosIngresos.dbgIngresosColEnter(
  Sender: TObject);
begin
  inherited;
//  IF dbgIngresos.SelectedIndex < 4 THEN
//    dbgIngresos.SelectedIndex := 4;
//  IF dbgIngresos.SelectedIndex > 5 THEN
//    dbgIngresos.SelectedIndex := 5;

  IF dbgIngresos.SelectedIndex < 1 THEN
    dbgIngresos.SelectedIndex := 1;
  IF (dbgIngresos.SelectedIndex >= 2) and (dbgIngresos.SelectedIndex <= 3) THEN
    dbgIngresos.SelectedIndex := 1;

  IF dbgIngresos.SelectedIndex > 5 THEN
    dbgIngresos.SelectedIndex := 5;

end;

procedure TFormReasignaCtasGastosIngresos.dbgIngresosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormIngresoCaja)) Then
    FormIngresoCaja:=TFormIngresoCaja.Create(self);
   FormIngresoCaja.TipoCpbte:= 'IC';
   FormIngresoCaja.DatoNew  := CDSDetalleIngresosID_CPBTE.AsString;
   FormIngresoCaja.Recuperar.Execute;
   FormIngresoCaja.Show;

end;

procedure TFormReasignaCtasGastosIngresos.dbgIngresosEnter(Sender: TObject);
begin
  inherited;
  dbgIngresos.SelectedIndex:=4;
end;

procedure TFormReasignaCtasGastosIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormReasignaCtasGastosIngresos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormReasignaCtasGastosIngresos:=nil;
end;

end.