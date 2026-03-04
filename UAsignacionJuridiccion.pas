unit UAsignacionJuridiccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB, SqlExpr,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Provider, DBClient, Mask, JvExMask, JvToolEdit,Librerias,
  JvDBLookup, JvExButtons, JvBitBtn, JvAppStorage, JvAppIniStorage,
  System.Actions, JvComponentBase, JvFormPlacement, Vcl.ImgList, Vcl.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, UBuscadorJuridicciones, AdvOfficeButtons;

type
  TFormAsignacionJuridiccion = class(TFormABMBase)
    QFacturas: TFDQuery;
    Label2: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label3: TLabel;
    UpDown1: TUpDown;
    CDSFacturas: TClientDataSet;
    DSPFacturas: TDataSetProvider;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasFECHAVTA: TSQLTimeStampField;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasNROCPBTE: TStringField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasRAZONSOCIAL: TStringField;
    CDSFacturasSUCURSAL: TIntegerField;
    CDSFacturasTOTAL: TFloatField;
    CDSFacturasJURIDICION_LOCALIDAD: TIntegerField;
    DSFacturas: TDataSource;
    QJuridiccion: TFDQuery;
    CDSFacturasMUESTRALOCALIDADJURIDCCION: TStringField;
    Label1: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSJuridiccion: TDataSource;
    CDSJuridiccion: TClientDataSet;
    DSPJuridiccion: TDataSetProvider;
    QJuridiccionID: TIntegerField;
    QJuridiccionID_JURIDICION: TIntegerField;
    QJuridiccionLOCALIDAD: TStringField;
    QJuridiccionPOR_DEFECTO: TStringField;
    CDSJuridiccionID: TIntegerField;
    CDSJuridiccionID_JURIDICION: TIntegerField;
    CDSJuridiccionLOCALIDAD: TStringField;
    CDSJuridiccionPOR_DEFECTO: TStringField;
    dbcJuridiccion: TJvDBLookupCombo;
    QJuri: TFDQuery;
    QJuriID: TIntegerField;
    QJuriID_JURIDICION: TIntegerField;
    QJuriLOCALIDAD: TStringField;
    QJuriPOR_DEFECTO: TStringField;
    CDSFacturasJURIDICION: TIntegerField;
    QFacturasID_FC: TIntegerField;
    QFacturasFECHAVTA: TSQLTimeStampField;
    QFacturasTIPOCPBTE: TStringField;
    QFacturasCLASECPBTE: TStringField;
    QFacturasNROCPBTE: TStringField;
    QFacturasCODIGO: TStringField;
    QFacturasRAZONSOCIAL: TStringField;
    QFacturasSUCURSAL: TIntegerField;
    QFacturasTOTAL: TFloatField;
    QFacturasJURIDICION_LOCALIDAD: TIntegerField;
    QFacturasJURIDICION: TIntegerField;
    QFacturasMUESTRALOCALIDADJURIDCCION: TStringField;
    btAsignar: TJvBitBtn;
    btDeAsignar: TJvBitBtn;
    Asignar: TAction;
    DesAsignar: TAction;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    QFacturasLOCALIDADFACTURA: TStringField;
    CDSFacturasLOCALIDADFACTURA: TStringField;
    dbgFacturas: TJvDBGrid;
    pnCabecera: TPanel;
    QJuridiccionPROVINCIA: TStringField;
    CDSJuridiccionPROVINCIA: TStringField;
    chbSinJuridiccion: TAdvOfficeCheckBox;
    ConsultaComprobante: TAction;
    AsignacionAutomaticaAll: TAction;
    JvDBStatusLabel1: TJvDBStatusLabel;
    Label4: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure CDSFacturasJURIDICION_LOCALIDADSetText(Sender: TField;
      const Text: string);
    procedure CDSFacturasBeforeInsert(DataSet: TDataSet);
    procedure dbgFacturasColEnter(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AsignarExecute(Sender: TObject);
    procedure DesAsignarExecute(Sender: TObject);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure chbSinJuridiccionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgFacturasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
    procedure dbgFacturasEditButtonClick(Sender: TObject);
    procedure ConsultaComprobanteExecute(Sender: TObject);
    procedure AsignacionAutomaticaAllExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAsignacionJuridiccion: TFormAsignacionJuridiccion;

implementation

uses UDMain_FD,DMBuscadoresForm, UFactura_2, UFacturaCtdo_2, UTiketVta;

{$R *.dfm}

procedure TFormAsignacionJuridiccion.AsignacionAutomaticaAllExecute(
  Sender: TObject);
var Juri:TJurisdiccion;
var p:TBookmark;
begin
  inherited;
  p:=CDSFacturas.GetBookmark;
  CDSFacturas.First;
  CDSFacturas.DisableControls;
  while Not(CDSFacturas.Eof) do
    begin
      if dbgFacturas.SelectedRows.CurrentRowSelected then
        begin
          if DMMain_FD.JurisdiccionIIBLocalidad(UpperCase(Trim(CDSFacturasLOCALIDADFACTURA.AsString)), Juri) then
            begin
              CDSFacturasJURIDICION_LOCALIDADSetText(CDSFacturasJURIDICION_LOCALIDAD,IntToStr(juri.LOCALIDAD));
            end;
        end;
      CDSFacturas.Next;
    end;
  CDSFacturas.GotoBookmark(p);
  CDSFacturas.EnableControls;
  CDSFacturas.FreeBookmark(P);
end;

procedure TFormAsignacionJuridiccion.ConsultaComprobanteExecute(
  Sender: TObject);
var Juri:TJurisdiccion;
begin
  inherited;
  if (CDSFacturasTIPOCPBTE.Value='FC') or (CDSFacturasTIPOCPBTE.Value='NC') or
     (CDSFacturasTIPOCPBTE.Value='ND') then
    begin
      if NOt(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  := CDSFacturasID_FC.AsString;
      FormCpbte_2.tipoCpbte:= CDSFacturasTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSFacturasTIPOCPBTE.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  := CDSFacturasID_FC.AsString;
        FormCpbteCtdo_2.tipoCpbte:= CDSFacturasTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (CDSFacturasTIPOCPBTE.Value='TK') then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta:=TFormTicketVta.Create(Self);
          FormTicketVta.DatoNew  := CDSFacturasID_FC.AsString;
          FormTicketVta.TipoCpbte:= CDSFacturasTIPOCPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end;

 //  if DMMain_FD.JurisdiccionIIBLocalidad(UpperCase(Trim(CDSFacturasLOCALIDADFACTURA.AsString)), Juri) then
//    begin
//      CDSFacturasJURIDICION_LOCALIDADSetText(CDSFacturasJURIDICION_LOCALIDAD,IntToStr(juri.LOCALIDAD));
//    end;

end;

procedure TFormAsignacionJuridiccion.AsignarExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSFacturas.GetBookmark;
  CDSFacturas.First;
  CDSFacturas.DisableControls;
  while Not(CDSFacturas.Eof) do
    begin
      if dbgFacturas.SelectedRows.CurrentRowSelected then
        begin
          CDSFacturas.Edit;
          CDSFacturasJURIDICION_LOCALIDADSetText(CDSFacturasJURIDICION_LOCALIDAD,IntToStr(dbcJuridiccion.KeyValue));
          if CDSFacturas.State<>dsBrowse then
            CDSFacturas.Post;
        end;
      CDSFacturas.Next;
    end;
  CDSFacturas.GotoBookmark(p);
  CDSFacturas.EnableControls;
  CDSFacturas.FreeBookmark(P);
end;

procedure TFormAsignacionJuridiccion.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSFacturas.Close;
  CDSFacturas.IndexDefs.Clear;
  CDSFacturas.IndexName:='';
  CDSFacturas.Params.ParamByName('desde').AsDate:=desde.Date;
  CDSFacturas.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSFacturas.Params.ParamByName('Sucursal').Value:=dbcSucursal.KeyValue;
  if chbSinJuridiccion.Checked then
    CDSFacturas.Params.ParamByName('juridiccion').Value:=1
  else
    CDSFacturas.Params.ParamByName('juridiccion').Value:=-1;

  CDSFacturas.Open;

  CDSFacturas.IndexFieldNames:='FECHAVTA;TIPOCPBTE;NROCPBTE';
end;

procedure TFormAsignacionJuridiccion.CDSFacturasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CDSFacturas.Cancel;

end;

procedure TFormAsignacionJuridiccion.CDSFacturasJURIDICION_LOCALIDADSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if CDSFacturas.State=dsBrowse then
    CDSFacturas.Edit;
  Sender.AsString:=Text;
  QJuri.Close;
  QJuri.ParamByName('id').Value:=Sender.AsInteger;
  QJuri.Open;
  if Not(QJuri.IsEmpty) then
    begin
      CDSFacturasJURIDICION_LOCALIDAD.Value       := QJuriID.Value;
      CDSFacturasJURIDICION.Value                 := QJuriID_JURIDICION.Value;
      CDSFacturasMUESTRALOCALIDADJURIDCCION.Value := QJuriLOCALIDAD.Value;
      //CDSFacturasMUESTRAJURIDICCION.Value         := QJuriID_JURIDICION.Value;
    end
  else
    Sender.Clear;
  CDSFacturas.Post;
  CDSFacturas.ApplyUpdates(0);
end;

procedure TFormAsignacionJuridiccion.chbSinJuridiccionClick(Sender: TObject);
begin
  inherited;
//  if chbSinJuridiccion.Checked=False then
//    begin
//      CDSFacturas.Filter:= ' JURIDICION_LOCALIDAD = '''' ';
//      CDSFacturas.Filtered := True;
//    end
//  else
//    begin
//      CDSFacturas.Filter:= '';
//      CDSFacturas.Filtered := False;
//    end
  Buscar.Execute;
end;

procedure TFormAsignacionJuridiccion.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  CDSFacturas.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormAsignacionJuridiccion.dbgFacturasColEnter(Sender: TObject);
begin
  inherited;
  if dbgFacturas.SelectedIndex>8 then
    dbgFacturas.SelectedIndex:=8;
  
end;

procedure TFormAsignacionJuridiccion.dbgFacturasEditButtonClick(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorJuridicciones)) then
    FormBuscadorJuridicciones:=TFormBuscadorJuridicciones.Create(self);
  FormBuscadorJuridicciones.ShowModal;
  if FormBuscadorJuridicciones.ModalResult=mrOk then
    begin

      CDSFacturasJURIDICION_LOCALIDADSetText(CDSFacturasJURIDICION_LOCALIDAD,IntToStr(FormBuscadorJuridicciones.id));
    end;
  FreeAndNil(FormBuscadorJuridicciones);
end;

procedure TFormAsignacionJuridiccion.dbgFacturasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  if Acol<8 then
  begin
  try
    Campo := Field.FieldName;
    with dbgFacturas.DataSource.DataSet as TClientDataSet do
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
end;

procedure TFormAsignacionJuridiccion.DesAsignarExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSFacturas.GetBookmark;
  CDSFacturas.First;
  CDSFacturas.DisableControls;
  while Not(CDSFacturas.Eof) do
    begin
      if dbgFacturas.SelectedRows.CurrentRowSelected then
        begin
          CDSFacturas.Edit;
          CDSFacturasJURIDICION_LOCALIDAD.Clear;
          CDSFacturasMUESTRALOCALIDADJURIDCCION.Value  :='';
          CDSFacturasJURIDICION.Clear;
        end;
      CDSFacturas.Next;
    end;
  CDSFacturas.GotoBookmark(p);
  CDSFacturas.EnableControls;
  CDSFacturas.FreeBookmark(P);
end;

procedure TFormAsignacionJuridiccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAsignacionJuridiccion.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  autosize:=false;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  CDSSucursal.Open;
  CDSJuridiccion.Open;
  Buscar.Execute;

end;

procedure TFormAsignacionJuridiccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignacionJuridiccion:=nil;
end;

procedure TFormAsignacionJuridiccion.FormResize(Sender: TObject);
begin
  inherited;
  if FormAsignacionJuridiccion<>nil then
    if FormAsignacionJuridiccion.Width<>1066 then
      FormAsignacionJuridiccion.Width:=1066;
end;

procedure TFormAsignacionJuridiccion.spSelectClick(Sender: TObject);
begin
  inherited;
  dbgFacturas.SelectAll;
end;

procedure TFormAsignacionJuridiccion.spunselectClick(Sender: TObject);
begin
  inherited;
  dbgFacturas.UnselectAll;
end;

procedure TFormAsignacionJuridiccion.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
 inherited;
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
  Buscar.Execute;

end;

end.
