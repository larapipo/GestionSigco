unit UControlCuponAbono;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid, DB, Provider,
  DBClient, SqlExpr, ExtCtrls, StdCtrls, Buttons,DateUtils, ComCtrls, Mask,
  JvExMask, JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormControlCuponAbono = class(TForm)
    pnBase: TPanel;
    CDSMovimientos: TClientDataSet;
    DSPMovimientos: TDataSetProvider;
    DSMovimientos: TDataSource;
    dbgMov: TJvDBGrid;
    CDSMovimientosID: TIntegerField;
    CDSMovimientosCLIENTE: TStringField;
    CDSMovimientosFECHA: TSQLTimeStampField;
    CDSMovimientosFACTURA_ID: TIntegerField;
    CDSMovimientosFACTURA_TIPO: TStringField;
    CDSMovimientosFACTURA_CLASE: TStringField;
    CDSMovimientosFACTURA_FECHA: TSQLTimeStampField;
    CDSMovimientosFACTURA_NROCPBTE: TStringField;
    CDSMovimientosPAGADO: TStringField;
    CDSMovimientosMUESTRACLIENTE: TStringField;
    CDSMovimientosMUESTRAFECHA: TSQLTimeStampField;
    CDSMovimientosMUESTRANRO: TStringField;
    CDSMovimientosMUESTRADETALLE: TStringField;
    Label1: TLabel;
    QMovimientos: TFDQuery;
    CDSMovimientosIMPORTE_1: TFloatField;
    CDSMovimientosMUESTRADEBE: TFloatField;
    CDSMovimientosMUESTRAHABER: TFloatField;
    CDSMovimientosMUESTRASALDO: TFloatField;
    QMovimientosID: TIntegerField;
    QMovimientosCLIENTE: TStringField;
    QMovimientosFECHA: TSQLTimeStampField;
    QMovimientosFACTURA_ID: TIntegerField;
    QMovimientosFACTURA_TIPO: TStringField;
    QMovimientosFACTURA_CLASE: TStringField;
    QMovimientosFACTURA_FECHA: TSQLTimeStampField;
    QMovimientosFACTURA_NROCPBTE: TStringField;
    QMovimientosIMPORTE_1: TFloatField;
    QMovimientosPAGADO: TStringField;
    QMovimientosMUESTRACLIENTE: TStringField;
    QMovimientosMUESTRAFECHA: TSQLTimeStampField;
    QMovimientosMUESTRANRO: TStringField;
    QMovimientosMUESTRADETALLE: TStringField;
    QMovimientosMUESTRADEBE: TFloatField;
    QMovimientosMUESTRAHABER: TFloatField;
    QMovimientosMUESTRASALDO: TFloatField;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Label4: TLabel;
    Panel3: TPanel;
    chbEstado: TCheckBox;
    btBuscar: TBitBtn;
    procedure CDSMovimientosAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chbEstadoClick(Sender: TObject);
    procedure CDSMovimientosBeforeInsert(DataSet: TDataSet);
    procedure dbgMovDblClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormResize(Sender: TObject);
    procedure dbgMovColEnter(Sender: TObject);
    procedure dbgMovEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlCuponAbono: TFormControlCuponAbono;

implementation

uses  UAplicacionesCCVta_2,UDMain_FD;
{$R *.dfm}

procedure TFormControlCuponAbono.btBuscarClick(Sender: TObject);
begin
  CDSMovimientos.Close;
  CDSMovimientos.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSMovimientos.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSMovimientos.Open;
  chbEstadoClick(Sender);
end;

procedure TFormControlCuponAbono.CDSMovimientosAfterPost(DataSet: TDataSet);
begin
  CDSMovimientos.ApplyUpdates(0);
end;

procedure TFormControlCuponAbono.CDSMovimientosBeforeInsert(DataSet: TDataSet);
begin
  CDSMovimientos.Cancel;
end;

procedure TFormControlCuponAbono.chbEstadoClick(Sender: TObject);
begin
  CDSMovimientos.Filtered:=False;
  CDSMovimientos.Filter  :='Pagado = ''N'' ';
  CDSMovimientos.Filtered:=chbEstado.Checked;
end;

procedure TFormControlCuponAbono.FormActivate(Sender: TObject);
begin
 if FormControlCuponAbono<>nil then
    if FormControlCuponAbono.Width<>900 then
      FormControlCuponAbono.Width:=900;

end;

procedure TFormControlCuponAbono.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormControlCuponAbono.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  if FormControlCuponAbono<>nil then
    if FormControlCuponAbono.Width<>900 then
      FormControlCuponAbono.Width:=900;
 

end;

procedure TFormControlCuponAbono.FormDestroy(Sender: TObject);
begin
  FormControlCuponAbono:=nil;
end;

procedure TFormControlCuponAbono.FormResize(Sender: TObject);
begin
  if FormControlCuponAbono<>nil then
    if FormControlCuponAbono.Width<>900 then
      FormControlCuponAbono.Width:=900;

end;

procedure TFormControlCuponAbono.FormShow(Sender: TObject);
begin
  CDSMovimientos.Close;
  CDSMovimientos.Open;
  if FormControlCuponAbono<>nil then
    if FormControlCuponAbono.Width<>900 then
      FormControlCuponAbono.Width:=900;

end;

procedure TFormControlCuponAbono.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  btBuscar.Click;
end;

 // Buscar.Execute;end;

procedure TFormControlCuponAbono.dbgMovColEnter(Sender: TObject);
begin
  if dbgMov.SelectedIndex in [6..9] then
    dbgMov.SelectedIndex:=10;
  if dbgMov.SelectedIndex in [0..3] then
    dbgMov.SelectedIndex:=4;

end;

procedure TFormControlCuponAbono.dbgMovDblClick(Sender: TObject);
var E:Char;
begin
  E:=#13;
  if Not(Assigned(FormAplicacionesCCVta_2)) then
    FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
  FormAplicacionesCCVta_2.edCodigo.Text:=CDSMovimientosCLIENTE.AsString;
  FormAplicacionesCCVta_2.edCodigoKeyPress(Sender,E);
  FormAplicacionesCCVta_2.Show;
  
end;

procedure TFormControlCuponAbono.dbgMovEnter(Sender: TObject);
begin
 if dbgMov.SelectedIndex<>4 then
    dbgMov.SelectedIndex:=4;
end;

end.
