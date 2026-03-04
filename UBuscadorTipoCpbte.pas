unit UBuscadorTipoCpbte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DBCtrls,
  ActnList, JvExControls, JvGradient, FMTBcd, SqlExpr, Provider,System.Variants,
  DBClient, JvDBLookup, CheckLst, JvLabel, JvDBControls,IniFiles, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvFormPlacement, JvComponentBase,
  AdvOfficeButtons,System.StrUtils;

type
  TFormBuscadorTipoCpbte = class(TForm)
    DSTipoCpbte: TDataSource;
    pnPrincipal: TPanel;
    dbgTipo: TDBGrid;
    DSSucursal: TDataSource;
    ActionList1: TActionList;
    Aceptar: TAction;
    pnFiltros: TPanel;
    chTipos: TCheckListBox;
    QTipoCpbte: TFDQuery;
    QSucursal: TFDQuery;
    QTipoCpbteID_COMPROBANTE: TIntegerField;
    QTipoCpbteTIPO_COMPROB: TStringField;
    QTipoCpbteCLASE_COMPROB: TStringField;
    QTipoCpbteDENOMINACION: TStringField;
    QTipoCpbteSUCURSAL: TIntegerField;
    QTipoCpbteLETRA: TStringField;
    QTipoCpbtePREFIJO: TStringField;
    QTipoCpbteNUMERARCION_PROPIA: TStringField;
    QTipoCpbteNUMERO: TStringField;
    QTipoCpbteTOMA_NRO_DE: TIntegerField;
    QTipoCpbteAFECTA_IVA: TStringField;
    QTipoCpbteAFECTA_CC: TStringField;
    QTipoCpbteDESGLOZA_IVA: TStringField;
    QTipoCpbteCOMPRA_VENTA: TStringField;
    QTipoCpbteCOPIAS: TIntegerField;
    QTipoCpbteREPORTE: TStringField;
    QTipoCpbteIMPRIME: TStringField;
    QTipoCpbteFISCAL: TStringField;
    QTipoCpbteNOMBREIMPRESORA: TStringField;
    QTipoCpbtePENDIENTEIMPRESION: TStringField;
    QTipoCpbteLINEAS_DETALLE: TSmallintField;
    QTipoCpbteCALCULA_IVA_ARTICULOS: TStringField;
    QTipoCpbteDEFECTO: TStringField;
    QTipoCpbteCAJA_DEFECTO: TIntegerField;
    QTipoCpbteDIVIDE_IVA: TStringField;
    QTipoCpbteFACTURAELECTRONICA: TStringField;
    QTipoCpbteEN_USO: TStringField;
    QTipoCpbteCODIGO_AFIP: TStringField;
    QTipoCpbteID_AJUSTECC: TIntegerField;
    QTipoCpbteCENTRO_COSTO: TIntegerField;
    QTipoCpbteFILTRO_COMPROBANTES: TStringField;
    QTipoCpbteDEPOSITO: TIntegerField;
    QTipoCpbteULTIMONRO: TIntegerField;
    QTipoCpbteEDITAR_NRO: TStringField;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    Panel1: TPanel;
    cbDiscriminanIVA: TComboBox;
    JvDBStatusLabel1: TJvDBStatusLabel;
    lbFiltro: TLabel;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    cbSucursal: TJvDBLookupCombo;
    chUso: TAdvOfficeCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSucursalClick(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure dbgTipoDblClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure cbDiscriminanIVAClick(Sender: TObject);
    procedure chTiposClick(Sender: TObject);
    procedure lbFiltroClick(Sender: TObject);
    procedure chUso_Click(Sender: TObject);
    procedure CDSTipoCpbteFACTURAELECTRONICAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSTipoCpbteFISCALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgTipoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QTipoCpbteFISCALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QTipoCpbteFACTURAELECTRONICAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure chUsoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FSucursal:Integer;
    FTipoCpbte:String;
    FTipoCpbte1:String;
    FTipoCpbte2:String;
    FTipoCpbte3:String;
    FClaseCpbte:String;
    FId_Cpbte:Integer;
    FCV:String;
    FLetra:String;
    FDetalle:String;
    FDiscriminaIVA:String;
    FNumeracionPropia:String;

    Filtro:String;
    BuscadorIni        :TIniFile;

    procedure ArmarFiltro;

  published
    property Sucursal:Integer read FSucursal write FSucursal;
    property TipoCpbte:String read FTipoCpbte Write FTipoCpbte;
    property TipoCpbte1:String read FTipoCpbte1 Write FTipoCpbte1;
    property TipoCpbte2:String read FTipoCpbte2 Write FTipoCpbte2;
    property TipoCpbte3:String read FTipoCpbte3 Write FTipoCpbte3;
    property ClaseCpbte:String read FClaseCpbte Write FClaseCpbte;
    property Id_Cpbte:Integer Read FId_Cpbte write FId_Cpbte;
    property CV:String Read FCV write FCV;
    property Letra:String Read FLetra write FLetra;
    property Detalle:String Read FDetalle write FDetalle;
    property DiscriminaIVA:String Read FDiscriminaIVA write FDiscriminaIVA;
    property NumeracionPropia:String Read FNumeracionPropia write FNumeracionPropia;

  end;

var
  FormBuscadorTipoCpbte: TFormBuscadorTipoCpbte;

implementation

uses UDMain_FD;

{$R *.DFM}


procedure TFormBuscadorTipoCpbte.ArmarFiltro;
var i:Integer;
dato:String;
begin
  filtro:='';
  for i:= 0 to chTipos.Items.Count-1 do
    begin
       if chTipos.Checked[i]=True then
         begin
           Dato:=copy(chTipos.Items[i],1,pos('#',chTipos.items[i])-1);
           dato:=IntToStr(StrToInt(trim(dato)));
           if Filtro='' then
             Filtro:='ID_COMPROBANTE='+Dato
           else
             Filtro:=Filtro+' or ID_COMPROBANTE='+Dato;
         end;
    end;
  if chUso.Checked then
    if filtro<>'' then
      Filtro:= '('+Filtro + ') and EN_USO = ''S'' '
    else
      Filtro:= ' EN_USO = ''S'' ';

end;

procedure TFormBuscadorTipoCpbte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorTipoCpbte.ini');
  BuscadorIni.WriteBool('comprobante', 'Tipo',chUso.Checked);
  BuscadorIni.WriteInteger('comprobante', 'modo',cbDiscriminanIVA.ItemIndex);
  BuscadorIni.Free;

  Action:=caFree;
end;

procedure TFormBuscadorTipoCpbte.FormDestroy(Sender: TObject);
begin
  FormBuscadorTipoCpbte:=nil;
end;

procedure TFormBuscadorTipoCpbte.FormCreate(Sender: TObject);
begin
  BuscadorIni               := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorTipoCpbte.ini');
  chUso.Checked             := BuscadorIni.ReadBool('comprobante', 'Tipo',False);
  cbDiscriminanIVA.ItemIndex:= BuscadorIni.Readinteger('comprobante', 'modo',-1);
  BuscadorIni.Free;
  AutoSize:=True;

  BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  Sucursal    := BuscadorIni.ReadInteger('Sucursal', 'Sucursal',1);
  BuscadorIni.Free;
 // JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;


end;

procedure TFormBuscadorTipoCpbte.FormShow(Sender: TObject);
var i:integer;
begin
  if FDiscriminaIVA='' then
    FDiscriminaIVA:='*';

  QTipoCpbte.Filtered:=False;
  QTipoCpbte.Filter  :='';

  QTipoCpbte.Close;
  QTipoCpbte.ParamByName('Tipo1').Value           := FTipoCpbte1;
  QTipoCpbte.ParamByName('Tipo2').Value           := FTipoCpbte2;
  QTipoCpbte.ParamByName('Tipo3').Value           := FTipoCpbte3;
  QTipoCpbte.ParamByName('Sucursal').Value        := FSucursal;
  QTipoCpbte.ParamByName('Compra_Venta').Value    := FCV;
  if FDiscriminaIVA='*' then
    cbDiscriminanIVA.ItemIndex:=0
  else
    if FDiscriminaIVA='S' then
      cbDiscriminanIVA.ItemIndex:=1
    else
      if FDiscriminaIVA='N' then
        cbDiscriminanIVA.ItemIndex:=2;
  QTipoCpbte.ParamByName('discrimina_iva').Value  := FDiscriminaIVA;
  QTipoCpbte.Open;
  QTipoCpbte.First;
  dbgTipo.Width:=dbgTipo.Width+1;
  dbgTipo.Width:=dbgTipo.Width-1;
  QTipoCpbte.DisableControls;
  chTipos.Clear;
  for i:= 0 to QTipoCpbte.RecordCount-1 do
    begin
      chTipos.Items.Add(QTipoCpbte.FieldByName('id_comprobante').AsString +' # '+
                        QTipoCpbte.FieldByName('TIPO_COMPROB').AsString + ' - '+
                        QTipoCpbte.FieldByName('CLASE_COMPROB').AsString + ' ... '+
                        ifThen(QTipoCpbte.FieldByName('DENOMINACION').AsString<>'',QTipoCpbte.FieldByName('DENOMINACION').AsString,'Sin Nombre'));
      chTipos.Checked[i]:=true ;
      QTipoCpbte.Next;
    end;
   QTipoCpbte.EnableControls;

  QSucursal.Close;
  QSucursal.Open;
  cbSucursal.KeyValue:=QSucursal.Lookup('codigo',Sucursal,'Codigo');
  cbSucursalClick(Sender);
    // Locate('Codigo',Sucursal,[]);

  QTipoCpbte.Filtered  := False;
  ArmarFiltro;
  QTipoCpbte.Filter    := Filtro;
  QTipoCpbte.Filtered  := True;
  dbgTipo.Width        := dbgTipo.Width-1;
  dbgTipo.Width        := dbgTipo.Width+1;
  cbSucursal.Enabled   := DMMain_FD.ModificaSucursal;
  if Not(QTipoCpbte.IsEmpty) then
    QTipoCpbte.First;
  BringToFront;
end;

procedure TFormBuscadorTipoCpbte.lbFiltroClick(Sender: TObject);
begin
  if pnFiltros.Visible=True Then
    begin
      pnFiltros.Visible:= False;
      lbFiltro.Caption := 'Filtro>>';
    end
  else
    begin
      pnFiltros.Visible:= True;
      lbFiltro.Caption := 'Filtro<<';
    end;
end;

procedure TFormBuscadorTipoCpbte.QTipoCpbteFACTURAELECTRONICAGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
if QTipoCpbteFACTURAELECTRONICA.Value='S' then
    Text:='*'
  else
    Text:='';

end;

procedure TFormBuscadorTipoCpbte.QTipoCpbteFISCALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
if QTipoCpbteFISCAL.Value='S' then
    Text:='*'
  else
    Text:='';
end;

procedure TFormBuscadorTipoCpbte.btCancelClick(Sender: TObject);
begin
  FSucursal    := -1;
  FTipoCpbte   := '';
  FClaseCpbte  := '';
  FId_Cpbte    := -1;
 // Close;
end;

procedure TFormBuscadorTipoCpbte.cbDiscriminanIVAClick(Sender: TObject);
begin
  cbSucursalClick(Sender);

{  CDSTipoCpbte.Filtered:=False;
  CDSTipoCpbte.Filter:='';

  CDSTipoCpbte.Close;
  CDSTipoCpbte.Params.ParamByName('Tipo1').Value          := TipoCpbte1;
  CDSTipoCpbte.Params.ParamByName('Tipo2').Value          := TipoCpbte2;
  CDSTipoCpbte.Params.ParamByName('Tipo3').Value          := TipoCpbte3;
  CDSTipoCpbte.Params.ParamByName('Sucursal').Value       := Sucursal;
  CDSTipoCpbte.Params.ParamByName('Compra_Venta').Value   := CV;
  case cbDiscriminanIVA.ItemIndex of
    0: CDSTipoCpbte.Params.ParamByName('discrimina_iva').Value := '*';
    1: CDSTipoCpbte.Params.ParamByName('discrimina_iva').Value := 'S';
    2: CDSTipoCpbte.Params.ParamByName('discrimina_iva').Value := 'N';
  end;
  CDSTipoCpbte.Open;

  CDSTipoCpbte.Filtered:=False;
  ArmarFiltro;
  CDSTipoCpbte.Filter:=Filtro;
  CDSTipoCpbte.Filtered:=True;
 }
end;

procedure TFormBuscadorTipoCpbte.cbSucursalClick(Sender: TObject);
VAR
i:Integer;
begin
  if VarIsNull(cbSucursal.KeyValue) then
    begin
      cbSucursal.LookupSource.DataSet.First;
      cbSucursal.KeyValue:=cbSucursal.LookupSource.DataSet.FieldByName('codigo').Value;
      Sucursal  :=cbSucursal.LookupSource.DataSet.FieldByName('codigo').Value;
    end
  else

  FSucursal:=cbSucursal.KeyValue;
  QTipoCpbte.Filtered := False;
  QTipoCpbte.Filter   := '';

  QTipoCpbte.Close;
  QTipoCpbte.ParamByName('Tipo1').Value          := FTipoCpbte1;
  QTipoCpbte.ParamByName('Tipo2').Value          := FTipoCpbte2;
  QTipoCpbte.ParamByName('Tipo3').Value          := FTipoCpbte3;
  QTipoCpbte.ParamByName('Sucursal').Value       := FSucursal;
  QTipoCpbte.ParamByName('Compra_Venta').Value   := FCV;
  case cbDiscriminanIVA.ItemIndex of
    0: QTipoCpbte.ParamByName('discrimina_iva').Value := '*';
    1: QTipoCpbte.ParamByName('discrimina_iva').Value := 'S';
    2: QTipoCpbte.ParamByName('discrimina_iva').Value := 'N';
  end;
  QTipoCpbte.Open;
  QTipoCpbte.First;
  QTipoCpbte.DisableControls;
  chTipos.Clear;
  for i:= 0 to QTipoCpbte.RecordCount-1 do
    begin
      chTipos.Items.Add(QTipoCpbte.FieldByName('id_comprobante').AsString+' # '+
                        QTipoCpbte.FieldByName('TIPO_COMPROB').Value + ' - '+
                        QTipoCpbte.FieldByName('CLASE_COMPROB').Value + ' ... '+
                        QTipoCpbte.FieldByName('DENOMINACION').Value );
      chTipos.Checked[i]:=true ;
      QTipoCpbte.Next;
    end;
  QTipoCpbte.EnableControls;
  QTipoCpbte.Filtered:=False;
  ArmarFiltro;
  QTipoCpbte.Filter  :=Filtro;
  QTipoCpbte.Filtered:=True;
end;

procedure TFormBuscadorTipoCpbte.CDSTipoCpbteFACTURAELECTRONICAGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if QTipoCpbteFACTURAELECTRONICA.Value='S' then
    Text:='**'
  else
    Text:='';

end;

procedure TFormBuscadorTipoCpbte.CDSTipoCpbteFISCALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if QTipoCpbteFISCAL.Value='S' then
    Text:='**'
  else
    Text:='';
end;

procedure TFormBuscadorTipoCpbte.chTiposClick(Sender: TObject);
begin
  QTipoCpbte.Filtered:=False;
  ArmarFiltro;
  QTipoCpbte.Filter  :=Filtro;
  QTipoCpbte.Filtered:=True;
end;

procedure TFormBuscadorTipoCpbte.chUsoClick(Sender: TObject);
begin
  QTipoCpbte.Filtered:=False;
  ArmarFiltro;
  QTipoCpbte.Filter  :=Filtro;
  QTipoCpbte.Filtered:=True;
end;

procedure TFormBuscadorTipoCpbte.chUso_Click(Sender: TObject);
begin
  QTipoCpbte.Filtered:=False;
  ArmarFiltro;
  QTipoCpbte.Filter  :=Filtro;
  QTipoCpbte.Filtered:=True;
end;

procedure TFormBuscadorTipoCpbte.AceptarExecute(Sender: TObject);
begin
  FSucursal        := QTipoCpbteSUCURSAL.Value;
  FTipoCpbte       := QTipoCpbteTIPO_COMPROB.AsString;
  FClaseCpbte      := QTipoCpbteCLASE_COMPROB.AsString;
  FDetalle         := QTipoCpbteDENOMINACION.AsString;
  FLetra           := QTipoCpbteLETRA.AsString;
  FId_Cpbte        := QTipoCpbteID_COMPROBANTE.Value;
  FNumeracionPropia:= QTipoCpbteNUMERARCION_PROPIA.Value;
end;

procedure TFormBuscadorTipoCpbte.dbgTipoDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorTipoCpbte.dbgTipoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Column.Index in [7..8]) and (State = []) then
  begin
    if (dbgTipo.Columns[Datacol].Field.AsString)='S' then
      begin
        dbgTipo.Canvas.Brush.Color := clMenuHighlight;
        dbgTipo.DefaultDrawColumnCell(rect,DataCol,Column,State);
      end;
  end;

end;

end.
