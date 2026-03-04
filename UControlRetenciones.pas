unit UControlRetenciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ImgList,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Mask, Librerias, JvExMask, JvToolEdit, JvDBControls,
  DBXCommon, Data.FMTBcd, JvLabel, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormControlRetenciones = class(TFormABMBase)
    dbgRetenciones: TJvDBGrid;
    DSRetenciones: TDataSource;
    CDSRetenciones: TClientDataSet;
    DSPRetenciones: TDataSetProvider;
    CDSRetencionesMUESTRARETENCION: TStringField;
    ud1: TUpDown;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    CDSRetencionesID_MOV_RETENCIONES: TIntegerField;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPOCPBTE: TStringField;
    CDSRetencionesCLASECPBTE: TStringField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesID_CPBTE: TIntegerField;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesCODIGO_CLIENTE: TStringField;
    CDSRetencionesCUIT_CLIENTE: TStringField;
    CDSRetencionesJURIDICCION: TIntegerField;
    CDSRetencionesNOMBRE_CLIENTE: TStringField;
    CDSTipo: TClientDataSet;
    DSPQTipo: TDataSetProvider;
    CDSTipoID_RETENCION: TIntegerField;
    CDSTipoDETALLE: TStringField;
    CDSTipoTIPO: TSmallintField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Panel2: TPanel;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    QRetenciones: TFDQuery;
    CDSRetencionesIMPORTE: TFloatField;
    QTipo: TFDQuery;
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgRetencionesColEnter(Sender: TObject);
    procedure dbgRetencionesEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgRetencionesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlRetenciones: TFormControlRetenciones;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormControlRetenciones.BuscarExecute(Sender: TObject);
begin
 // inherited;

  CDSRetenciones.Close;
  CDSRetenciones.IndexName:='';
  CDSRetenciones.IndexDefs.Clear;
  CDSRetenciones.Params.ParamByName('Retencion').Value:=-1;
  CDSRetenciones.Params.ParamByName('desde').Value:= Desde.date;
  CDSRetenciones.Params.ParamByName('hasta').Value:= Hasta.date;
  CDSRetenciones.Open;

end;

procedure TFormControlRetenciones.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  DMMain_FD.fdcGestion.StartTransaction;
    try
      if CDSRetenciones.State<>dsBrowse then
        CDSRetenciones.Post;
      CDSRetenciones.ApplyUpdates(0);
      DMMain_FD.fdcGestion.Commit;
    Except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se Gravo la Operacion');
    end;
  Buscar.Execute;
end;

procedure TFormControlRetenciones.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormControlRetenciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlRetenciones.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;

end;

procedure TFormControlRetenciones.FormDestroy(Sender: TObject);
begin
  inherited;
  formControlRetenciones:=nil;
end;

procedure TFormControlRetenciones.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  Buscar.Execute;
end;

procedure TFormControlRetenciones.dbgRetencionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgRetenciones.SelectedIndex<3 then
    dbgRetenciones.SelectedIndex:=3
  else
  if dbgRetenciones.SelectedIndex>5 then
    dbgRetenciones.SelectedIndex:=5
 end;

procedure TFormControlRetenciones.dbgRetencionesEnter(Sender: TObject);
begin
  inherited;
  dbgRetenciones.SelectedIndex:=3;
end;

procedure TFormControlRetenciones.dbgRetencionesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgRetenciones.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlRetenciones.ud1Click(Sender: TObject; Button: TUDBtnType);
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
