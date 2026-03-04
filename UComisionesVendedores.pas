unit UComisionesVendedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls,  
  Mask,   ActnList, ComCtrls, Buttons, ToolWin, IBGenerator,
  DBClient, Provider, JvComponentBase, ImgList, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvExComCtrls, JvProgressBar, JvExMask, JvToolEdit, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormComisionesVendedores = class(TFormABMBase)
    pnCabecera: TPanel;
    dbeId: TDBEdit;
    dbeNombre: TDBEdit;
    dbeComision: TDBEdit;
    Panel2: TPanel;
    Splitter1: TSplitter;
    dbgRubros: TDBGrid;
    dbgSubRubros: TDBGrid;
    Splitter2: TSplitter;
    dbgArticulos: TDBGrid;
    DSPComisionRub: TDataSetProvider;
    DSPComisionSub: TDataSetProvider;
    DSPComisionArt: TDataSetProvider;
    CDSComisionArt: TClientDataSet;
    CDSComisionSub: TClientDataSet;
    CDSComisionRub: TClientDataSet;
    DSComisionRub: TDataSource;
    DSComisionSub: TDataSource;
    DSListaArt: TDataSource;
    ibgArt: TIBGenerator;
    ibgSub: TIBGenerator;
    ibgRub: TIBGenerator;
    CDSComisionCab: TClientDataSet;
    DSPComisionCab: TDataSetProvider;
    CDSComisionCabID: TIntegerField;
    CDSComisionCabNOMBRE: TStringField;
    CDSComisionCabFECHA: TSQLTimeStampField;
    CDSComisionCabPORDEFECTO: TStringField;
    CDSComisionRubID: TIntegerField;
    CDSComisionRubID_CAB: TIntegerField;
    CDSComisionRubRUBRO: TStringField;
    CDSComisionRubMUESTRARUBRO: TStringField;
    CDSComisionSubID: TIntegerField;
    CDSComisionSubID_CAB: TIntegerField;
    CDSComisionSubRUBRO: TStringField;
    CDSComisionSubSUBRUBRO: TStringField;
    CDSComisionSubMUESTRASUBRUBRO: TStringField;
    CDSComisionArtID: TIntegerField;
    CDSComisionArtID_CAB: TIntegerField;
    CDSComisionArtRUBRO: TStringField;
    CDSComisionArtSUBRUBRO: TStringField;
    CDSComisionArtCODIGOARTICULO: TStringField;
    CDSComisionArtMUESTRAARTICULO: TStringField;
    CDSRubros: TClientDataSet;
    DSPRubros: TDataSetProvider;
    CDSRubrosCODIGO_RUBRO: TStringField;
    CDSRubrosDETALLE_RUBRO: TStringField;
    CDSSubRubros: TClientDataSet;
    DSPSubRubros: TDataSetProvider;
    CDSSubRubrosCODIGO_SUBRUBRO: TStringField;
    CDSSubRubrosDETALLE_SUBRUBRO: TStringField;
    CDSSubRubrosCODIGO_RUBRO: TStringField;
    CDSArticulos: TClientDataSet;
    DSPArticulos: TDataSetProvider;
    CDSArticulosCODIGO_STK: TStringField;
    CDSArticulosDETALLE_STK: TStringField;
    CDSArticulosRUBRO_STK: TStringField;
    CDSArticulosSUBRUBRO_STK: TStringField;
    CDSBuscaLista: TClientDataSet;
    DSPBuscaLista: TDataSetProvider;
    CDSBuscaListaID: TIntegerField;
    CDSBuscaListaNOMBRE: TStringField;
    CDSBuscaListaFECHA: TSQLTimeStampField;
    CDSBuscaListaPORDEFECTO: TStringField;
    pgEstado: TJvProgressBar;
    Label1: TJvLabel;
    Label2: TJvLabel;
    Label3: TJvLabel;
    Label4: TJvLabel;
    Label5: TJvLabel;
    dbeFecha: TJvDBDateEdit;
    QComisionSub: TFDQuery;
    QComisionRub: TFDQuery;
    QComisionCab: TFDQuery;
    QComisionCabID: TIntegerField;
    QComisionCabNOMBRE: TStringField;
    QComisionCabCOMISIONBASE: TFloatField;
    QComisionCabFECHA: TSQLTimeStampField;
    QComisionCabPORDEFECTO: TStringField;
    CDSComisionCabCOMISIONBASE: TFloatField;
    QComisionRubRUBRO: TStringField;
    QComisionRubCOMISION: TFloatField;
    QComisionRubID: TIntegerField;
    QComisionRubID_CAB: TIntegerField;
    QComisionRubMUESTRARUBRO: TStringField;
    CDSComisionRubCOMISION: TFloatField;
    QComisionSubRUBRO: TStringField;
    QComisionSubSUBRUBRO: TStringField;
    QComisionSubID: TIntegerField;
    QComisionSubID_CAB: TIntegerField;
    QComisionSubMUESTRASUBRUBRO: TStringField;
    QComisionSubCOMISION: TFloatField;
    QComisionArt: TFDQuery;
    QArticulos: TFDQuery;
    CDSArticulosFIJACION_PRECIO_TOTAL: TFloatField;
    QComisionArtID: TIntegerField;
    QComisionArtID_CAB: TIntegerField;
    QComisionArtRUBRO: TStringField;
    QComisionArtSUBRUBRO: TStringField;
    QComisionArtCODIGOARTICULO: TStringField;
    QComisionArtCOMISION: TFloatField;
    QComisionArtMUESTRAARTICULO: TStringField;
    CDSComisionArtCOMISION: TFloatField;
    CDSComisionSubCOMISION: TFloatField;
    QBuscaLis: TFDQuery;
    CDSBuscaListaCOMISIONBASE: TFloatField;
    procedure CDSComisionCabCOMISIONBASESetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgRubrosColEnter(Sender: TObject);
    procedure dbgRubrosEnter(Sender: TObject);
    procedure dbgSubRubrosColEnter(Sender: TObject);
    procedure dbgSubRubrosEnter(Sender: TObject);
    procedure dbgArticulosColEnter(Sender: TObject);
    procedure dbgArticulosEnter(Sender: TObject);
    procedure CDSComisionCabNewRecord(DataSet: TDataSet);
    procedure CDSComisionRubBeforeInsert(DataSet: TDataSet);
    procedure CDSComisionSubBeforeInsert(DataSet: TDataSet);
    procedure CDSComisionRubNewRecord(DataSet: TDataSet);
    procedure CDSComisionSubNewRecord(DataSet: TDataSet);
    procedure CDSComisionArtBeforeInsert(DataSet: TDataSet);
    procedure CDSComisionArtNewRecord(DataSet: TDataSet);
    procedure CDSComisionRubCOMISIONSetText(Sender: TField; const Text: string);
    procedure CDSComisionSubCOMISIONSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    // Lleno la uso como flag para habilitar o o el insert en Rubro y SubRubros
    Lleno:Boolean;
    Mascara:String;
    procedure AgregarRubros;
    procedure AgregarSubRubros;
    procedure AgregarArticulos;
    procedure AsignarMascara;
    procedure AsignarRecargoRubro;
    procedure AsignarRecargoSubRubro;
    procedure AsignarRecargoArticulo;
  end;

var
  FormComisionesVendedores: TFormComisionesVendedores;

implementation

uses DMBuscadoresForm, UDMain_FD;

{$R *.DFM}

procedure TFormComisionesVendedores.AsignarRecargoRubro;
BEGIN
//  CDSListaRub.DisableControls;
  CDSComisionRub.First;
  while Not(CDSComisionRub.Eof) DO
    begin
      CDSComisionRub.edit;
      CDSComisionRubCOMISION.Value:=CDSComisionCabCOMISIONBASE.Value;
      AsignarRecargoSubRubro;
      CDSComisionRub.Next;
    end;
  CDSComisionRub.First;
//  CDSComisionRub.EnableControls;
End;

procedure TFormComisionesVendedores.AsignarRecargoSubRubro;
BEGIN
//  CDSComisionSub.DisableControls;
  CDSComisionSub.First;
  while Not(CDSComisionSub.Eof) DO
    begin
      CDSComisionSub.edit;
      CDSComisionSubCOMISION.Value:=CDSComisionRubCOMISION.Value;
      AsignarRecargoArticulo;
      CDSComisionSub.Next;
    end;
  CDSComisionSub.First;
//  CDSComisionSub.EnableControls;
End;

procedure TFormComisionesVendedores.AsignarRecargoArticulo;
BEGIN
//  CDSComisionArt.DisableControls;
  CDSComisionArt.First;
  while Not(CDSComisionArt.Eof) DO
    begin
      CDSComisionArt.edit;
      CDSComisionArtCOMISION.Value:=CDSComisionSubCOMISION.Value;
      CDSComisionArt.Next;
    end;
  CDSComisionArt.First;
//  CDSComisionArt.EnableControls;
End;


procedure TFormComisionesVendedores.AsignarMascara;
BEGIN
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='STOCK';
  DMMain_FD.QOpciones.Open;
  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;
  DMMain_FD.QOpciones.Close;
  CDSComisionCabCOMISIONBASE.EditFormat   := Mascara;
  CDSComisionCabCOMISIONBASE.DisplayFormat:= Mascara;
  CDSComisionRubCOMISION.EditFormat       := Mascara;
  CDSComisionRubCOMISION.DisplayFormat    := Mascara;
  CDSComisionSubCOMISION.EditFormat       := Mascara;
  CDSComisionSubCOMISION.DisplayFormat    := Mascara;
  CDSComisionArtCOMISION.EditFormat       := Mascara;
  CDSComisionArtCOMISION.DisplayFormat    := Mascara;
End;


procedure TFormComisionesVendedores.AgregarRubros;
begin
  CDSComisionRub.DisableControls;
  CDSRubros.Close;
  CDSRubros.Open;
  CDSRubros.First;
  if CDSRubros.RecordCount>0 then
    pgEstado.Max :=CDSRubros.RecordCount-1
  else
    pgEstado.Max :=0;
  pgEstado.Min :=0;
  pgEstado.Position:=0;
  while Not(CDSRubros.Eof) DO
    begin
      Application.ProcessMessages;
      sbEstado.SimpleText:='Agregando Reg:'+IntToStr(pgEstado.Position)+'/'+IntToStr(pgEstado.Max);
      CDSComisionRub.Insert;
      CDSComisionRubRUBRO.Value       :=CDSRubrosCODIGO_RUBRO.Value;
      CDSComisionRubMUESTRARUBRO.Value:=CDSRubrosDETALLE_RUBRO.Value;
      CDSComisionRubCOMISION.AsFloat  :=0;
      CDSComisionRub.Post;
      pgEstado.Position:=pgEstado.Position+1;
      CDSRubros.Next;
    end;
  pgEstado.Position:=0;
  CDSRubros.Close;
  CDSComisionRub.First;
  CDSComisionRub.EnableControls;
end;

procedure TFormComisionesVendedores.AgregarSubRubros;
begin
  CDSComisionSub.DisableControls;
  CDSSubRubros.Close;
  CDSSubRubros.Open;
  CDSSubRubros.First;
  if CDSSubRubros.RecordCount>0 then
    pgEstado.Max :=CDSSubRubros.RecordCount-1
  else
    pgEstado.Max :=0;
  pgEstado.Min :=0;
  pgEstado.Position:=0;
  while Not(CDSSubRubros.Eof) DO
    begin
      Application.ProcessMessages;
      sbEstado.SimpleText:='Agregando Reg:'+IntToStr(pgEstado.Position)+'/'+IntToStr(pgEstado.Max);
      CDSComisionSub.Append;
      CDSComisionSubRUBRO.Value          :=CDSSubRubrosCODIGO_RUBRO.Value;
      CDSComisionSubSUBRUBRO.Value       :=CDSSubRubrosCODIGO_SUBRUBRO.Value;
      CDSComisionSubMUESTRASUBRUBRO.Value:=CDSSubRubrosDETALLE_SUBRUBRO.Value;
      CDSComisionSubCOMISION.AsFloat     :=0;
      CDSComisionSub.Post;
      pgEstado.Position:=pgEstado.Position+1;
      CDSSubRubros.Next;
    end;
  pgEstado.Position:=0;
  CDSSubRubros.Close;
  CDSComisionSub.First;
  CDSComisionSub.EnableControls;

end;

procedure TFormComisionesVendedores.AgregarArticulos;
begin
  CDSComisionArt.DisableControls;
  CDSArticulos.Close;
  CDSArticulos.Open;
  if CDSArticulos.RecordCount>0 then
    pgEstado.Max :=CDSArticulos.RecordCount-1
  else
    pgEstado.Max :=0;
  pgEstado.Min :=0;
  pgEstado.Position:=0;

  CDSArticulos.First;
  while Not(CDSArticulos.Eof) DO
    begin
      Application.ProcessMessages;
      sbEstado.SimpleText:='Agregando Reg:'+IntToStr(pgEstado.Position)+'/'+IntToStr(pgEstado.Max);
      CDSComisionArt.Append;
      CDSComisionArtCODIGOARTICULO.Value :=CDSArticulosCODIGO_STK.Value;
      CDSComisionArtRUBRO.Value          :=CDSArticulosRUBRO_STK.Value;
      CDSComisionArtSUBRUBRO.Value       :=CDSArticulosSUBRUBRO_STK.Value;
      CDSComisionArtMUESTRAARTICULO.Value:=CDSArticulosDETALLE_STK.Value;
      CDSComisionArtCOMISION.AsFloat     :=0;
      CDSComisionArt.Post;
      pgEstado.Position:=pgEstado.Position+1;
      CDSArticulos.Next;
    end;
  pgEstado.Position:=0;
  CDSArticulos.Close;
  CDSComisionArt.First;
  CDSComisionArt.EnableControls;
end;


procedure TFormComisionesVendedores.CDSComisionCabCOMISIONBASESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text<>'' Then
    Sender.AsString:=Text;
  AsignarRecargoRubro;
end;

procedure TFormComisionesVendedores.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBDE:=2;
  //ClientWidth :=737;
  //ClientHeight:=631;
  AddClientDataSet(CDSComisionCab,DSPComisionCab);
  AddClientDataSet(CDSComisionRub,DSPComisionRub);
  AddClientDataSet(CDSComisionSub,DSPComisionSub);
  AddClientDataSet(CDSComisionArt,DSPComisionArt);
  CDSComisionCab.Open;
  CDSComisionRub.OPen;
  CDSComisionSub.Open;
  CDSComisionArt.Open;
  Tabla:='comisionescab';
  Campo:='id';
  AsignarMascara;
  Lleno:=False;
end;

procedure TFormComisionesVendedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSComisionCab.Close;
  CDSComisionArt.Close;
  CDSComisionSub.Close;
  CDSComisionRub.Close;
  Action:=caFree;
end;

procedure TFormComisionesVendedores.ConfirmaExecute(Sender: TObject);
begin
  if CDSComisionRub.State <> dsBrowse  Then
    CDSComisionRub.Post;
  if CDSComisionSub.State <> dsBrowse  Then
    CDSComisionSub.Post;
  if CDSComisionArt.State <> dsBrowse  Then
    CDSComisionArt.Post;

  DatoNew:=CDSComisionCabID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormComisionesVendedores.AgregarExecute(Sender: TObject);
begin
  CDSComisionCab.Close;
  CDSComisionCab.Params.ParamByName('id').Clear;
  CDSComisionCab.OPen;

  CDSComisionRub.Close;
  CDSComisionRub.MasterSource   :=DSBase;
  CDSComisionRub.MasterFields   :='';
  CDSComisionRub.IndexFieldNames:='';
  CDSComisionRub.Params.ParamByName('id').Clear;
  CDSComisionRub.OPen;

  CDSComisionRub.MasterSource   :=DSBase;
  CDSComisionRub.IndexFieldNames:='ID_CAB';
  CDSComisionRub.MasterFields   :='ID';

  CDSComisionSub.Close;
  CDSComisionSub.MasterSource   :=DSComisionRub;
  CDSComisionSub.MasterFields   :='';
  CDSComisionSub.IndexFieldNames:='';
  CDSComisionSub.Params.ParamByName('id').Clear;
  CDSComisionSub.OPen;

  CDSComisionSub.MasterSource   :=DSComisionRub;
  CDSComisionSub.IndexFieldNames:='RUBRO';
  CDSComisionSub.MasterFields   :='RUBRO';

  CDSComisionArt.Close;
  CDSComisionArt.MasterSource   :=DSComisionSub;
  CDSComisionArt.MasterFields   :='';
  CDSComisionArt.IndexFieldNames:='';
  CDSComisionArt.Params.ParamByName('id').Clear;
  CDSComisionArt.OPen;

  CDSComisionArt.MasterSource   :=DSComisionSub;
  CDSComisionArt.IndexFieldNames:='SUBRUBRO';
  CDSComisionArt.MasterFields   :='SUBRUBRO';

  inherited;
  Lleno:=False;
  sbEstado.Panels[0].Text:='Procesando datos...Agregando Rubro..';
  Sleep(1);
  Application.ProcessMessages;
  AgregarRubros;
  sbEstado.Panels[0].Text:='Procesando datos...Agregando Sub Rubro..';
  Sleep(1);
  Application.ProcessMessages;
  AgregarSubRubros;
  sbEstado.Panels[0].Text:='Procesando datos...Agregando Articulos..';
  Sleep(1);
  Application.ProcessMessages;
  AgregarArticulos;
  sbEstado.Panels[0].Text:='';
  Sleep(1);
  Application.ProcessMessages;
  Lleno  :=True;
  CDSComisionCabCOMISIONBASESetText(CDSComisionCabCOMISIONBASE,'0');
end;

procedure TFormComisionesVendedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComisionesVendedores:=Nil;
end;

procedure TFormComisionesVendedores.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaLista.Close;
  CDSBuscaLista.OPen;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr( comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaLista.Close;
end;

procedure TFormComisionesVendedores.RecuperarExecute(Sender: TObject);
begin
  CDSComisionCab.Close;
  CDSComisionRub.Close;
  CDSComisionSub.Close;
  CDSComisionArt.Close;
  CDSComisionCab.Params.ParamByName('id').Clear;
  CDSComisionRub.Params.ParamByName('id').Clear;
  CDSComisionSub.Params.ParamByName('id').Clear;
  CDSComisionArt.Params.ParamByName('id').Clear;
  CDSComisionCab.Open;
  CDSComisionRub.Open;
  CDSComisionSub.Open;
  CDSComisionArt.Open;
  CDSComisionCab.EmptyDataSet;
  CDSComisionRub.EmptyDataSet;
  CDSComisionSub.EmptyDataSet;
  CDSComisionArt.EmptyDataSet;
  inherited;

  CDSComisionCab.Close;
  CDSComisionCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSComisionCab.OPen;

  CDSComisionRub.Close;
  CDSComisionRub.MasterSource   :=DSBase;
  CDSComisionRub.MasterFields   :='';
  CDSComisionRub.IndexFieldNames:='';
  CDSComisionRub.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSComisionRub.OPen;

  CDSComisionRub.MasterSource   :=DSBase;
  CDSComisionRub.IndexFieldNames:='ID_CAB';
  CDSComisionRub.MasterFields   :='ID';

  CDSComisionSub.Close;
  CDSComisionSub.MasterSource   :=DSComisionRub;
  CDSComisionSub.MasterFields   :='';
  CDSComisionSub.IndexFieldNames:='';
  CDSComisionSub.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSComisionSub.OPen;

  CDSComisionSub.MasterSource   :=DSComisionRub;
  CDSComisionSub.IndexFieldNames:='RUBRO';
  CDSComisionSub.MasterFields   :='RUBRO';

  CDSComisionArt.Close;
  CDSComisionArt.MasterSource   :=DSComisionSub;
  CDSComisionArt.MasterFields   :='';
  CDSComisionArt.IndexFieldNames:='';
  CDSComisionArt.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSComisionArt.OPen;

  CDSComisionArt.MasterSource   :=DSComisionSub;
  CDSComisionArt.IndexFieldNames:='SUBRUBRO';
  CDSComisionArt.MasterFields   :='SUBRUBRO';

  Lleno:=True;
end;

procedure TFormComisionesVendedores.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  pnCabecera.Enabled    :=DSBase.State in [dsInsert,dsEdit];
  dbgRubros.ReadOnly    :=DSBase.State=dsBrowse;
  dbgSubRubros.ReadOnly :=DSBase.State=dsBrowse;
  dbgArticulos.ReadOnly :=DSBase.State=dsBrowse;
//  Recalculo.Enabled:=(DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty))
end;

procedure TFormComisionesVendedores.dbgRubrosColEnter(Sender: TObject);
begin
  inherited;
 if dbgRubros.SelectedIndex in [0,1] Then
    dbgRubros.SelectedIndex:=3;
end;

procedure TFormComisionesVendedores.dbgRubrosEnter(Sender: TObject);
begin
  inherited;
 dbgRubros.SelectedIndex:=1;
end;

procedure TFormComisionesVendedores.dbgSubRubrosColEnter(Sender: TObject);
begin
  inherited;
 if dbgSubRubros.SelectedIndex in [0,1] Then
    dbgSubRubros.SelectedIndex:=2;

end;

procedure TFormComisionesVendedores.dbgSubRubrosEnter(Sender: TObject);
begin
  inherited;
  dbgSubRubros.SelectedIndex:=1;
end;

procedure TFormComisionesVendedores.dbgArticulosColEnter(Sender: TObject);
begin
  inherited;
   if dbgArticulos.SelectedIndex in [0,1] Then
    dbgArticulos.SelectedIndex:=2;
end;

procedure TFormComisionesVendedores.dbgArticulosEnter(Sender: TObject);
begin
  inherited;
 dbgArticulos.SelectedIndex:=2;
end;

procedure TFormComisionesVendedores.CDSComisionCabNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.OPen;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSComisionCabID.Value          :=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSComisionCabID.Value          :=1;
  QUltimoCodigo2.Close;
  CDSComisionCabCOMISIONBASE.AsFloat:=0;
  CDSComisionCabFECHA.AsDateTime    :=Date;
  CDSComisionCabPORDEFECTO.Value    :='N';
end;

procedure TFormComisionesVendedores.CDSComisionRubBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if Lleno Then sysutils.Abort;
end;

procedure TFormComisionesVendedores.CDSComisionRubCOMISIONSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if Text<>'' then
    begin
      sender.AsString:=Text;
      //CDSListaRub.Post;
      AsignarRecargoSubRubro;
    end;
end;

procedure TFormComisionesVendedores.CDSComisionSubBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
 if Lleno Then sysutils.Abort;
end;

procedure TFormComisionesVendedores.CDSComisionSubCOMISIONSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if text<>'' then
    begin
      sender.AsString:=text;
      AsignarRecargoArticulo;
//      CDSListasub.Post;
    end;
end;

procedure TFormComisionesVendedores.CDSComisionRubNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSComisionRubID.Value     :=ibgRub.IncrementFD(1);
  CDSComisionRubID_CAB.Value :=CDSComisionCabID.Value;
  CDSComisionRubCOMISION.AsFloat:=0;

end;

procedure TFormComisionesVendedores.CDSComisionSubNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSComisionSubID.Value     :=ibgSub.IncrementFD(1);
  CDSComisionSubID_CAB.Value :=CDSComisionCabID.Value;
  CDSComisionSubCOMISION.AsFloat:=0;

end;

procedure TFormComisionesVendedores.CDSComisionArtBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if Lleno Then sysutils.Abort;
end;

procedure TFormComisionesVendedores.CDSComisionArtNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSComisionArtID.Value     :=ibgArt.IncrementFD(1);
  CDSComisionArtID_CAB.Value :=CDSComisionCabID.Value;
  CDSComisionArtCOMISION.AsFloat:=0;
end;

end.