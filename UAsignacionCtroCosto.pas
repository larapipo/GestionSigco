unit UAsignacionCtroCosto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr,DBXCommon,DB, Provider, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ExtCtrls, JvExControls, JvGradient, StdCtrls, Buttons, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, DBCtrls,  ActnList,
  IBGenerator,Math,Types,StrUtils, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador;

type
  TFormAsignacionCentroCosto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgAplic: TJvDBGrid;
    CDSAplic: TClientDataSet;
    DSAplic: TDataSource;
    CDSAplicID: TIntegerField;
    CDSAplicID_CPBTE: TIntegerField;
    CDSAplicTIPOCPBTE: TStringField;
    CDSAplicCTRO_COSTO: TIntegerField;
    CDSAplicTIPO: TStringField;
    CDSAplicMUESTRACTROCOSTO: TStringField;
    JvGradient1: TJvGradient;
    btAceptar: TBitBtn;
    btCerrar: TBitBtn;
    edTotalAplicado: TJvCalcEdit;
    DBNavigator1: TDBNavigator;
    DSPCtroCosto: TDataSetProvider;
    CDSCtroCosto: TClientDataSet;
    CDSCtroCostoID: TIntegerField;
    CDSCtroCostoDESCRIPCION: TStringField;
    ActionList1: TActionList;
    BuscarCtros: TAction;
    ibgId: TIBGenerator;
    CDSCtroCostoPOR_DEFECTO: TStringField;
    CDSAplicCONCEPTO: TStringField;
    CDSAplicDETALLE_CONCEP: TStringField;
    edTotalGral: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    QPorDefecto: TFDQuery;
    QCtro: TFDQuery;
    QUltimoId: TFDQuery;
    QAplic: TFDQuery;
    QCtroCosto: TFDQuery;
    QPorDefectoID: TIntegerField;
    QAplicID: TIntegerField;
    QAplicID_CPBTE: TIntegerField;
    QAplicTIPOCPBTE: TStringField;
    QAplicCTRO_COSTO: TIntegerField;
    QAplicIMPUTADO: TFloatField;
    QAplicTOTAL: TFloatField;
    QAplicPORCENTAJE: TFloatField;
    QAplicTIPO: TStringField;
    QAplicCONCEPTO: TStringField;
    QAplicDETALLE_CONCEP: TStringField;
    QAplicIMPORTE_LINEA: TFloatField;
    QAplicPORCENTAJE_TOTAL: TFloatField;
    QAplicMUESTRACTROCOSTO: TStringField;
    CDSAplicIMPUTADO: TFloatField;
    CDSAplicTOTAL: TFloatField;
    QCtroID: TIntegerField;
    QCtroDESCRIPCION: TStringField;
    QCtroPOR_DEFECTO: TStringField;
    CDSAplicPORCENTAJE: TFloatField;
    CDSAplicPORCENTAJE_TOTAL: TFloatField;
    CDSAplicIMPORTE_LINEA: TFloatField;
    ComBuscadorCtros: TComBuscador;
    DSPAplic: TDataSetProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAceptarClick(Sender: TObject);
    procedure dbgAplicColEnter(Sender: TObject);
    procedure dbgAplicKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarCtrosExecute(Sender: TObject);
    procedure CDSAplicCTRO_COSTOSetText(Sender: TField; const Text: string);
    procedure CDSAplicIMPUTADOSetText(Sender: TField; const Text: string);
    procedure CDSAplicPORCENTAJESetText(Sender: TField; const Text: string);
    procedure btCerrarClick(Sender: TObject);
    procedure CDSAplicNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSAplicAfterPost(DataSet: TDataSet);
    procedure CDSAplicAfterDelete(DataSet: TDataSet);
    procedure CDSAplicBeforePost(DataSet: TDataSet);
    procedure CDSAplicAfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CDSAplicCONCEPTOSetText(Sender: TField; const Text: string);
    procedure CDSAplicIMPORTE_LINEASetText(Sender: TField; const Text: string);
    procedure CDSAplicBeforeInsert(DataSet: TDataSet);
    procedure dbgAplicKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    FIdCpbte:Integer;
    FTipoCpbte:String;
    FTipo:String;
    FTotal:Real;
    FNeto:Real;
    FLstConceptos:TStringlist;
    FLstDetalles :TStringlist;
    FLstImportes :TStringlist;
    FLstGastos   :TStringlist;
    FCtroCosto   :Integer;

    type
      TGasto = class
      Codigo : String;
      Detalle: String;
      Importe: String;
    end;

    { Private declarations }
  public
    { Public declarations }

    Longitud:Integer;
    function AsignarCtros(Dato:Integer):Boolean;
    procedure Sumar;
  published
    Gasto:TGasto;
    property IdCpbte:Integer read FIdCpbte write FIdCpbte;
    property TipoCpbte:String read FTipoCpbte write FTipoCpbte;
    property Tipo:String read FTipo write FTipo;
    property Total:Real read FTotal write FTotal;
    property LstConcepto :TStringList read FLstConceptos write FLstConceptos;
    property LstDetalles :TStringList read FLstDetalles write FLstDetalles;
    property LstImportes :TStringList read FLstImportes write FLstImportes;
    property LstGastos   :TStringList read FLstGastos write FLstGastos;
    property CtroCosto   :Integer read FCtroCosto write FCtroCosto default -1;
  end;

var
  FormAsignacionCentroCosto: TFormAsignacionCentroCosto;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormAsignacionCentroCosto.sumar;
var p:TBookmark;
begin
  edTotalAplicado.Value:=0;
  p:=CDSAplic.GetBookmark;
  CDSAplic.DisableControls;
  CDSAplic.First;
  while not(CDSAplic.Eof) do
    begin
      edTotalAplicado.Value:=edTotalAplicado.Value+CDSAplicIMPUTADO.AsFloat;
      CDSAplic.Next;
    end;
  CDSAplic.GotoBookmark(p);
  CDSAplic.FreeBookmark(p);
  CDSAplic.EnableControls;  
end;

function TFormAsignacionCentroCosto.AsignarCtros(dato:Integer):Boolean;
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSAplic,True);
  QCtro.Close;
  QCtro.ParamByName('id').Value:=Dato;
  QCtro.Open;
  if Not(QCtro.IsEmpty) then
    begin
      if Not(CDSClone.Locate('CONCEPTO;CTRO_COSTO',VarArrayOf([CDSAplicCONCEPTO.AsString,CDSAplicCTRO_COSTO.AsString]),[])) Then
        begin
          CDSAplicCTRO_COSTO.Value      :=QCtroID.Value;
          CDSAplicMUESTRACTROCOSTO.Value:=QCtroDESCRIPCION.Value;
          Result:=True;
        end
      else
        begin
          CDSAplicCTRO_COSTO.Clear;
          CDSAplicMUESTRACTROCOSTO.Clear;
          Result:=False;
        end;
    end
  else
    begin
      CDSAplicCTRO_COSTO.Clear;
      CDSAplicMUESTRACTROCOSTO.Clear;
      Result:=False;
    end;
  QCtro.Close;
end;

procedure TFormAsignacionCentroCosto.btAceptarClick(Sender: TObject);
var A,B:Extended;
Estado: TValueRelationship;
begin
  if CDSAplic.State<>dsBrowse then CDSAplic.Post;
  
  A:= RoundTo(edTotalAplicado.Value ,-2);
  B:= RoundTo(FTotal,-2);

  Estado:= Math.CompareValue(A,B,0.10);
  if (Estado=GreaterThanValue)then
    Raise Exception.Create('asignacion mayor de la real....');

  DMMain_FD.fdcGestion.StartTransaction;
    try
      if (CDSAplic.State in [dsInsert,dsEdit]) Then
        CDSAplic.Post;
      CDSAplic.ApplyUpdates(0);
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
     end;
  Close;
end;

procedure TFormAsignacionCentroCosto.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAsignacionCentroCosto.BuscarCtrosExecute(Sender: TObject);
begin
  if dbgAplic.SelectedIndex=2 then
    begin
      CDSCtroCosto.Close;
      CDSCtroCosto.Open;
      comBuscadorCtros.Execute;
      if comBuscadorCtros.rOk then
        CDSAplicCTRO_COSTOSetText(CDSAplicCTRO_COSTO,IntToStr(comBuscadorCtros.id));
      CDSCtroCosto.Close;
    end;
end;

procedure TFormAsignacionCentroCosto.CDSAplicAfterDelete(DataSet: TDataSet);
begin
  sumar;
end;

procedure TFormAsignacionCentroCosto.CDSAplicAfterOpen(DataSet: TDataSet);
begin
  sumar;
end;

procedure TFormAsignacionCentroCosto.CDSAplicAfterPost(DataSet: TDataSet);
begin
  sumar;
end;

procedure TFormAsignacionCentroCosto.CDSAplicBeforeInsert(DataSet: TDataSet);
begin
  if edTotalAplicado.value >= edTotalGral.value then
    begin
      CDSAplic.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormAsignacionCentroCosto.CDSAplicBeforePost(DataSet: TDataSet);
begin
  if (CDSAplicCTRO_COSTO.AsString='') or (CDSAplicIMPUTADO.AsFloat<=0) or (CDSAplicTOTAL.AsFloat<=0) then
    begin
      CDSAplic.Cancel;
      SysUtils.Abort;
      if (CDSAplicCTRO_COSTO.AsString='') Then
        ShowMessage('Falta Centro de Costo')
      else
        if (CDSAplicIMPUTADO.AsFloat<=0) Then
          ShoWMessage('Valor de Imputacion es cero')
        else
          if (CDSAplicTOTAL.AsFloat<=0) then
            ShoWMessage('Total es cero');
    end;
end;



procedure TFormAsignacionCentroCosto.CDSAplicCONCEPTOSetText(Sender: TField;
  const Text: string);
var indice:integer;
begin
  if Text<>'' then
    begin
      Sender.ASString:=Copy('0000000000',1,Longitud-Length(Text))+Text;
      if CDSAplic.State=dsBrowse Then CDSAplic.Edit;
      indice:=LstConcepto.IndexOf( Sender.ASString);
      if indice>=0 then
        begin
 //         if Not(CDSClone.Locate('CONCEPTO;CTRO_COSTO',VarArrayOf([CDSAplicCONCEPTO.AsString,CDSAplicCTRO_COSTO.AsString]),[])) Then
 //         begin
          CDSAplicDETALLE_CONCEP.Value:=LstDetalles[indice];
          CDSAplicIMPORTE_LINEASetText(CDSAplicIMPORTE_LINEA,AnsiReplaceStr(LstImportes[indice],',',''));
          CDSAplicIMPUTADOSetText(CDSAplicIMPUTADO,AnsiReplaceStr(LstImportes[indice],',',''));

        end;
    end;
end;

procedure TFormAsignacionCentroCosto.CDSAplicCTRO_COSTOSetText(Sender: TField;
  const Text: string);
begin
  if CDSAplic.State=dsBrowse then
    CDSAplic.Edit;
  if (Text<>'') and (Text<>#13) then
     begin
      Sender.AsString:=Trim(Text);
      if Not(AsignarCtros(Sender.AsInteger)) then
        begin
          Sender.Clear;
          ShowMessage('Codigo no Valido.....');
          CDSAplic.Cancel;
        end;
    end;
end;

procedure TFormAsignacionCentroCosto.CDSAplicIMPORTE_LINEASetText(
  Sender: TField; const Text: string);
var Valor:String;
begin
  Valor:=Text;
  while Pos(',',Valor)>0 do
            Delete(Valor,Pos(',',Valor),1);
  Sender.AsString:=Valor;
//  CDSAplicPORCENTAJE.AsFloat:= (Sender.AsFloat/FTotal)*100;
end;

procedure TFormAsignacionCentroCosto.CDSAplicIMPUTADOSetText(Sender: TField;
  const Text: string);
var Valor:String;
begin
  Valor:=Text;
  while Pos(',',Valor)>0 do
            Delete(Valor,Pos(',',Valor),1);
  Sender.AsString:=Valor;
  if Abs(CDSAplicIMPORTE_LINEA.AsFloat)>0 then
  
  CDSAplicPORCENTAJE.AsFloat:= (Sender.AsFloat/CDSAplicIMPORTE_LINEA.AsFloat)*100;
end;

procedure TFormAsignacionCentroCosto.CDSAplicNewRecord(DataSet: TDataSet);
begin
  CDSAplicID.Value          := ibgId.IncrementFD(1);
  CDSAplicID_CPBTE.Value    := FIdCpbte;
  CDSAplicPORCENTAJE.AsFloat:= 0;
  CDSAplicTOTAL.AsFloat     := FTotal;
  begin
    CDSAplicIMPUTADO.AsFloat  := 0;

    if FCtroCosto<= 0 then
      begin
        QPorDefecto.Close;
        QPorDefecto.Open;
        if (QPorDefectoID.AsString<>'') then
          begin
            CDSAplicCTRO_COSTOSetText(CDSAplicCTRO_COSTO,QPorDefectoID.AsString);
            CDSAplicTOTAL.AsFloat     := FTotal;
          end
      end
    else
      begin
        CDSAplicCTRO_COSTOSetText(CDSAplicCTRO_COSTO,IntToStr(FCtroCosto));
        CDSAplicTOTAL.AsFloat     := FTotal;
      end


  end;
  CDSAplicTIPO.Value        := FTipo;
  CDSAplicTIPOCPBTE.Value   := FTipoCpbte;
end;

procedure TFormAsignacionCentroCosto.CDSAplicPORCENTAJESetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSAplicIMPUTADO.AsFloat:=CDSAplicPORCENTAJE.AsFloat * 0.01 * CDSAplicIMPORTE_LINEA.AsFloat;
end;

procedure TFormAsignacionCentroCosto.dbgAplicColEnter(Sender: TObject);
begin
  IF dbgAplic.SelectedIndex = 1 THEN
    dbgAplic.SelectedIndex := 2
  else
    IF (dbgAplic.SelectedIndex = 3) THEN
      dbgAplic.SelectedIndex := 5
    else
     IF dbgAplic.SelectedIndex = 6 THEN
      dbgAplic.SelectedIndex := 5
end;

procedure TFormAsignacionCentroCosto.dbgAplicKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_LEFT) then
    begin
     if (dbgAplic.SelectedIndex=4) then
       dbgAplic.SelectedIndex:=2;
     if (dbgAplic.SelectedIndex=2) then
       dbgAplic.SelectedIndex:=0;
    end;

end;

procedure TFormAsignacionCentroCosto.dbgAplicKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgAplic.SelectedIndex < 4) THEN
        dbgAplic.SelectedIndex := dbgAplic.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgAplic.DataSource.DataSet.Eof)  THEN
            dbgAplic.DataSource.DataSet.Append;
          dbgAplic.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgAplic.SelectedField = CDSAplicCTRO_COSTO THEN
           comBuscadorCtros.Execute;
      END
    else
      if (key = #27) then
        dbgAplic.DataSource.DataSet.Cancel;
end;

procedure TFormAsignacionCentroCosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSAplic.Close;
  Action:=caFree;
end;

procedure TFormAsignacionCentroCosto.FormCreate(Sender: TObject);
begin
  FLstConceptos := TStringList.Create;
  FLstDetalles  := TStringList.Create;
  FLstImportes  := TStringList.Create;
  FLstGastos    := TStringList.Create;
  Gasto         := TGasto.Create;
  edTotalGral.Value:= FTotal;
  //FLstConceptos.
  AutoSize:=True;
 end;

procedure TFormAsignacionCentroCosto.FormDestroy(Sender: TObject);
begin
  FormAsignacionCentroCosto:=nil;
end;

procedure TFormAsignacionCentroCosto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_F7 then
    btAceptar.Click;
end;

procedure TFormAsignacionCentroCosto.FormShow(Sender: TObject);
var i:integer;
Cadena,Valor:String;
begin
  edTotalGral.Value:=FTotal;

  dbgAplic.Columns[0].PickList.Clear;
  for I := 0 to FLstConceptos.Count - 1 do
    begin
      Cadena:=FLstConceptos[i];
      dbgAplic.Columns[0].PickList.Add(Cadena);
    end;
  longitud:=length(FLstConceptos[0]);
  CDSAplic.Close;
  CDSAplic.Params.ParamByName('id').Value       :=FIdCpbte;
  CDSAplic.Params.ParamByName('TipoCpbte').Value:=FTipoCpbte;
  CDSAplic.Params.ParamByName('Tipo').Value     :=FTipo;
  CDSAplic.Open;
  if CDSAplic.IsEmpty then
    begin
      for I := 0 to FLstConceptos.Count - 1 do
        begin
          Cadena:=FLstConceptos[i];
          if StrToFloat(FLstImportes[i])>0 then
            begin
              CDSAplic.Append;
              CDSAplicCONCEPTOSetText(CDSAplicCONCEPTO,Cadena);
              CDSAplicDETALLE_CONCEP.Value:=LstDetalles[i];
              CDSAplicIMPORTE_LINEASetText(CDSAplicIMPORTE_LINEA,FLstImportes[i]);
              CDSAplicIMPUTADOSetText(CDSAplicIMPUTADO,FLstImportes[i]);
              CDSAplic.Post;
            end;
        end;
    end;


end;

end.
