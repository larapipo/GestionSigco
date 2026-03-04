unit UAsignarLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, Grids, DBGrids, Mask, ComCtrls,
  StdCtrls,   JvExControls, JvDBLookup, JvComponentBase, ImgList,
    ActnList, JvGradient, Buttons, ToolWin, ExtCtrls,Librerias,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvDBGrid, JvExButtons, JvBitBtn, JvExMask, JvToolEdit, DBXCommon,
  Data.SqlExpr, JvExDBGrids, JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormAsignacionLoteTC = class(TFormABMBase)
    dbcTaretas: TJvDBLookupCombo;
    UpDown1: TUpDown;
    edLote: TMaskEdit;
    DSPMovTc: TDataSetProvider;
    CDSMovTc: TClientDataSet;
    DSMovTc: TDataSource;
    DSTCredito: TDataSource;
    CDSMovTcID_MOV_TC: TIntegerField;
    CDSMovTcTITULAR: TStringField;
    CDSMovTcNRO_CUPON: TIntegerField;
    CDSMovTcCAN_CUOTAS: TIntegerField;
    CDSMovTcLOTE: TStringField;
    CDSMovTcTERMINAL: TStringField;
    CDSMovTcMUESTRATARJETA: TStringField;
    edTermianl: TMaskEdit;
    CDSTCredito: TClientDataSet;
    DSPTCredito: TDataSetProvider;
    CDSMovTcFECHA: TSQLTimeStampField;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    dbgMov: TJvDBGrid;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    btAsignar: TJvBitBtn;
    btDeAsignar: TJvBitBtn;
    Asignar: TAction;
    DesAsignar: TAction;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel2: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    QMovTc: TFDQuery;
    CDSMovTcIMPORTE: TFloatField;
    QTCredito: TFDQuery;
    spAsignarLote: TFDStoredProc;
    QMovTcID_MOV_TC: TIntegerField;
    QMovTcFECHA: TSQLTimeStampField;
    QMovTcTITULAR: TStringField;
    QMovTcNRO_CUPON: TIntegerField;
    QMovTcCAN_CUOTAS: TIntegerField;
    QMovTcIMPORTE: TFloatField;
    QMovTcLOTE: TStringField;
    QMovTcTERMINAL: TStringField;
    QMovTcMUESTRATARJETA: TStringField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure edLoteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edTermianlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgMovDblClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSMovTcLOTESetText(Sender: TField; const Text: string);
    procedure CDSMovTcTERMINALSetText(Sender: TField; const Text: string);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgMovColEnter(Sender: TObject);
    procedure edLoteExit(Sender: TObject);
    procedure edTermianlExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure AsignarExecute(Sender: TObject);
    procedure DesAsignarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAsignacionLoteTC: TFormAsignacionLoteTC;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormAsignacionLoteTC.AsignarExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSMovTc.GetBookmark;
  CDSMovTc.First;
  CDSMovTc.DisableControls;
  while Not(CDSMovTc.Eof) do
    begin
      if dbgMov.SelectedRows.CurrentRowSelected then
        begin
          CDSMovTc.Edit;
          CDSMovTcLOTESetText(CDSMovTcLOTE,edLote.Text);
          CDSMovTcTERMINALSetText(CDSMovTcTERMINAL,edTermianl.Text);
          CDSMovTc.Post;
        end;
      CDSMovTc.Next;
    end;
  CDSMovTc.GotoBookmark(p);
  CDSMovTc.EnableControls;
  CDSMovTc.FreeBookmark(P);
end;

procedure TFormAsignacionLoteTC.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSMovTc.Close;
  CDSMovTc.Params.ParamByName('id').Value:=dbcTaretas.KeyValue;
  CDSMovTc.Params.ParamByName('desde').Value:=Desde.Date;
  CDSMovTc.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSMovTc.Open;
end;

procedure TFormAsignacionLoteTC.CDSMovTcLOTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('000000000000',1,Sender.Size-Length( Text))+Text;
end;

procedure TFormAsignacionLoteTC.CDSMovTcTERMINALSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('000000000000',1,Sender.Size-Length( Text))+Text;
end;

procedure TFormAsignacionLoteTC.ConfirmaExecute(Sender: TObject);
Var ProcesoOk:Boolean;
begin
  CDSMovTc.First;
  CDSMovTc.DisableControls;
  ProcesoOk:=True;
  while Not(CDSMovTc.Eof) Do
    begin
      if CDSMovTcLOTE.AsString<>'' Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spAsignarLote.Close;
            spAsignarLote.ParamByName('id_mov').Value     :=CDSMovTcID_MOV_TC.Value;
            spAsignarLote.ParamByName('Lote').Value       :=CDSMovTcLOTE.Value;
            spAsignarLote.ParamByName('terminal').Value   :=CDSMovTcTERMINAL.Value;
            spAsignarLote.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            spAsignarLote.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ProcesoOk:=False;
            //ShowMessage('Transacción no realizada.....');
          end;
        end;
      CDSMovTc.Next;
    end;
  if ProcesoOk then
    ShowMessage('Cambios Aplicados.....')
  else
    ShowMessage('Fallo de Cambios Aplicados.....');


  CDSMovTc.First;
  CDSMovTc.EnableControls;
  Buscar.Execute;
end;

procedure TFormAsignacionLoteTC.dbgMovColEnter(Sender: TObject);
begin
//  inherited;
  if ( dbgMov.SelectedIndex<6 ) Then
    dbgMov.SelectedIndex:=6;
end;

procedure TFormAsignacionLoteTC.dbgMovDblClick(Sender: TObject);
begin
  inherited;
  if (CDSMovTc.State=dsBrowse) then
    begin
      CDSMovTc.Edit;
      CDSMovTcLOTE.Value    :=edLote.Text;
      CDSMovTcTERMINAL.Value:=edTermianl.Text;
      CDSMovTc.Post;
    end;
end;

procedure TFormAsignacionLoteTC.DesAsignarExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSMovTc.GetBookmark;
  CDSMovTc.First;
  CDSMovTc.DisableControls;
  while Not(CDSMovTc.Eof) do
    begin
      if dbgMov.SelectedRows.CurrentRowSelected then
        begin
          CDSMovTc.Edit;
          CDSMovTcLOTE.Value:='';
          CDSMovTcTERMINAL.Value:='';
          CDSMovTc.Post;
        end;
      CDSMovTc.Next;
    end;
  CDSMovTc.GotoBookmark(p);
  CDSMovTc.EnableControls;
  CDSMovTc.FreeBookmark(P);
end;

procedure TFormAsignacionLoteTC.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormAsignacionLoteTC.edLoteExit(Sender: TObject);
begin
  inherited;
   edLote.Text:=copy('00000',1,5-length(edLote.Text))+edLote.Text;
   Buscar.Execute;
end;

procedure TFormAsignacionLoteTC.edLoteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ( key = VK_RETURN ) then
    begin
      edLote.Text:=copy('00000',1,5-length(edLote.Text))+edLote.Text;
      Buscar.Execute;
    end;

end;

procedure TFormAsignacionLoteTC.edTermianlExit(Sender: TObject);
begin
  inherited;
  edTermianl.Text:=copy('00000000000',1,8-length(edTermianl.Text))+edTermianl.Text;
  Buscar.Execute;
 end;

procedure TFormAsignacionLoteTC.edTermianlKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( key = VK_RETURN ) then
    begin
      edTermianl.Text:=copy('00000000000',1,8-length(edTermianl.Text))+edTermianl.Text;
      Buscar.Execute;
    end;
end;

procedure TFormAsignacionLoteTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSTCredito.Close;
  CDSMovTc.Close;
  Action:=caFree;
end;

procedure TFormAsignacionLoteTC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  CDSTCredito.open;
end;

procedure TFormAsignacionLoteTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignacionLoteTC:=nil;
end;

procedure TFormAsignacionLoteTC.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.Date:=EncodeDate(y,m,1);
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormAsignacionLoteTC.spSelectClick(Sender: TObject);
begin
  inherited;
  dbgMov.SelectAll;
end;

procedure TFormAsignacionLoteTC.spunselectClick(Sender: TObject);
begin
  inherited;
  dbgMov.UnselectAll;
end;

procedure TFormAsignacionLoteTC.UpDown1Click(Sender: TObject;
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
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.