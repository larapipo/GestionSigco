unit UAsignacionesEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, DB,
  DBClient, Provider, Grids, DBGrids, JvExDBGrids, JvDBGrid, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList,
  JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls,DateUtils,
  JvAppStorage, JvAppIniStorage, System.Actions, Vcl.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador;

type
  TFormAsignacionesPersonal = class(TFormABMBase)
    dbgSaldos: TJvDBGrid;
    QSaldosEmp: TSQLQuery;
    DSPSaldosEmpleados: TDataSetProvider;
    CDSSaldosEmpleados: TClientDataSet;
    DSSaldosEmpleados: TDataSource;
    QComp: TSQLQuery;
    DSPComprob: TDataSetProvider;
    CDSComprob: TClientDataSet;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobDENOMINACION: TStringField;
    CDSComprobSUCURSAL: TIntegerField;
    CDSComprobLETRA: TStringField;
    CDSComprobPREFIJO: TStringField;
    pnCabecera: TPanel;
    Label1: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Label2: TLabel;
    UpDown1: TUpDown;
    JvGradient1: TJvGradient;
    CDSSaldosEmpleadosID: TIntegerField;
    CDSSaldosEmpleadosIDADELANTO: TIntegerField;
    CDSSaldosEmpleadosCODIGO: TStringField;
    CDSSaldosEmpleadosFECHA: TSQLTimeStampField;
    CDSSaldosEmpleadosCLASECOMP: TStringField;
    CDSSaldosEmpleadosNROCPBTE: TStringField;
    CDSSaldosEmpleadosDETALLE: TStringField;
    CDSSaldosEmpleadosDEBE: TFMTBCDField;
    CDSSaldosEmpleadosHABER: TFMTBCDField;
    CDSSaldosEmpleadosMUESTRANOMBRE: TStringField;
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAsignacionesPersonal: TFormAsignacionesPersonal;

implementation

{$R *.dfm}

procedure TFormAsignacionesPersonal.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSSaldosEmpleados.Close;
  CDSSaldosEmpleados.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSSaldosEmpleados.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSSaldosEmpleados.Open;


end;

procedure TFormAsignacionesPersonal.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormAsignacionesPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAsignacionesPersonal.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
AutoSize:=True;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(date));
  Desde.Date := EncodeDate(y,m,1);
end;

procedure TFormAsignacionesPersonal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignacionesPersonal:=nil;
end;

procedure TFormAsignacionesPersonal.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var y,m,d:Word;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;



end;

end.
