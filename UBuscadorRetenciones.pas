unit UBuscadorRetenciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls, StdCtrls,
  Mask, JvExMask, JvToolEdit, JvExControls, JvLabel,DateUtils, JvGradient,
  Data.DB;

type
  TFormBuscadorRetenciones = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    pnTitulo: TPanel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    JvDBGrid1: TJvDBGrid;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
    FId    :Integer;
  public
    { Public declarations }
    procedure Buscar;
  published
    property Codigo:String Read FCodigo Write FCodigo;
    property Id:Integer Read FId Write FId;
  end;

var
  FormBuscadorRetenciones: TFormBuscadorRetenciones;

implementation

uses DMAnulacionRecibos;
{$R *.dfm}

procedure TFormBuscadorRetenciones.Buscar;
begin
  DatosAnulacionRecibo.CDSBuscaRet.Close;
  DatosAnulacionRecibo.CDSBuscaRet.Params.ParamByName('codigo').Value:=FCodigo;
  DatosAnulacionRecibo.CDSBuscaRet.Params.ParamByName('desde').Value :=Desde.Date;
  DatosAnulacionRecibo.CDSBuscaRet.Params.ParamByName('hasta').Value :=Hasta.Date;
  DatosAnulacionRecibo.CDSBuscaRet.Open;
end;

procedure TFormBuscadorRetenciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorRetenciones.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;

end;

procedure TFormBuscadorRetenciones.FormDestroy(Sender: TObject);
begin
  FormBuscadorRetenciones:=nil;
end;

procedure TFormBuscadorRetenciones.FormShow(Sender: TObject);
begin
  Fid:= -1;
  Buscar;
end;

procedure TFormBuscadorRetenciones.JvDBGrid1DblClick(Sender: TObject);
begin
  FId:=DatosAnulacionRecibo.CDSAnulacionRetID_MOV_RETENCIONES.Value;
  Close;
end;

procedure TFormBuscadorRetenciones.UpDown1Click(Sender: TObject;
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
  Buscar;
  //  Desde.SetFocus;
 end;
end.
