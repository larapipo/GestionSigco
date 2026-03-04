unit UAsignaVendedorRC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Grids, Mask,  Librerias, DBClient, Provider,
  DBGrids, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormAsignacionCobradorRC = class(TFormABMBase)
    Label1: TLabel;
    chbSinVendedor: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    DSRec: TDataSource;
    DSPRec: TDataSetProvider;
    CDSRec: TClientDataSet;
    CDSRecID_RC: TIntegerField;
    CDSRecTIPOCPBTE: TStringField;
    CDSRecCLASECPBTE: TStringField;
    CDSRecNROCPBTE: TStringField;
    CDSRecCODIGO: TStringField;
    CDSRecNOMBRE: TStringField;
    CDSRecVENDEDOR: TStringField;
    CDSRecNomVend: TStringField;
    ToolButton1: TToolButton;
    spbAsignacion: TSpeedButton;
    Desde: TJvDateEdit;
    hasta: TJvDateEdit;
    CDSRecFECHA: TSQLTimeStampField;
    CDSCobrador: TClientDataSet;
    DSPCobrador: TDataSetProvider;
    CDSCobradorNOMBRE: TStringField;
    CDSCobradorCODIGO: TStringField;
    DBGrid1: TDBGrid;
    QCobr: TFDQuery;
    QRec: TFDQuery;
    CDSRecTOTAL: TFloatField;
    QAsignacion: TFDQuery;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure spbAsignacionClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAsignacionCobradorRC: TFormAsignacionCobradorRC;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormAsignacionCobradorRC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSRec.Close;
  CDSRec.CommandText:='';
  if chbSinVendedor.Checked Then
    CDSRec.CommandText:='select r.id_rc,r.fecha,r.tipocpbte,r.clasecpbte,r.nrocpbte,r.codigo,r.nombre, r.vendedor,r.total  from recibos r '+
                        'where ((r.vendedor is null) or (r.vendedor=''''))  and '+
                        'r.fecha between :desde and :hasta ' +
                        'order by r.fecha,r.tipocpbte,r.nrocpbte '

  else
    CDSRec.CommandText:='select r.id_rc,r.fecha,r.tipocpbte,r.clasecpbte,r.nrocpbte,r.codigo,r.nombre, r.vendedor,r.total  from recibos r '+
                        'where r.fecha between :desde and :hasta ' +
                        'order by r.fecha,r.tipocpbte,r.nrocpbte ';

  CDSRec.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSRec.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSRec.Open;
end;

procedure TFormAsignacionCobradorRC.ConfirmaExecute(Sender: TObject);
begin
  CDSRec.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormAsignacionCobradorRC.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
 if DBGrid1.SelectedIndex<>6 Then
    DBGrid1.SelectedIndex:=6;
end;

procedure TFormAsignacionCobradorRC.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((key=VK_BACK) or (key=VK_DELETE)) and (DBGrid1.SelectedIndex=6) Then
    begin
      if CDSRec.State<>dsEdit Then CDSRec.Edit;
      CDSRecVENDEDOR.Clear;
    end;
end;

procedure TFormAsignacionCobradorRC.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_BACK) or (key=VK_DELETE) Then
    begin
      if CDSRec.State<>dsEdit Then CDSRec.Edit;
      CDSRecVENDEDOR.Clear;
    end;
end;

procedure TFormAsignacionCobradorRC.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormAsignacionCobradorRC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSCobrador.Close;
  Action:=cafree;
end;

procedure TFormAsignacionCobradorRC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSCobrador.Open;
end;

procedure TFormAsignacionCobradorRC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignacionCobradorRC:=Nil;
end;

procedure TFormAsignacionCobradorRC.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormAsignacionCobradorRC.spbAsignacionClick(Sender: TObject);
begin
  inherited;
  QAsignacion.Close;
  QAsignacion.ParamByName('desde').Value:=Desde.Date;
  QAsignacion.ParamByName('hasta').Value:=hasta.Date;
  QAsignacion.ExecSQL;
  QAsignacion.Close;
  CDSCobrador.Close;
  CDSCobrador.Open;
  Buscar.Execute;
end;

procedure TFormAsignacionCobradorRC.UpDown1Click(Sender: TObject;
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