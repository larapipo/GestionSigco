unit UCashFlow_LF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, AdvGridWorkbook,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.Mask, JvExMask, JvToolEdit,
  Datasnap.Provider, Datasnap.DBClient,DateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  AdvUtil, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  System.ImageList, AdvSmoothButton;

type
  TFormCahsFlow_LF = class(TFormABMBase)
    QCash: TFDQuery;
    CDSCash: TClientDataSet;
    DSPCash: TDataSetProvider;
    DSCash: TDataSource;
    CDSCashFECHA: TSQLTimeStampField;
    CDSCashDEPOSITO: TFloatField;
    CDSCashCHEQUES: TFloatField;
    Label1: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label2: TLabel;
    UpDown1: TUpDown;
    sgCash: TAdvStringGrid;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCahsFlow_LF: TFormCahsFlow_LF;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormCahsFlow_LF.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSCash.Close;
  CDSCash.Params.ParamByName('desde').Value :=desde.Date;
  CDSCash.Params.ParamByName('hasta').Value :=hasta.Date;
  CDSCash.Open;

  sgCash.FixedRows:=0;
  sgCash.RowCount :=CDSCash.RecordCount + 10;

  sgCash.Clear;
  sgCash.Cells[0,0] :='';
  sgCash.Cells[1,0] :='';

  sgCash.Cells [2,0] :='Enero';
  sgCash.Cells [3,0] :='Febrero';
  sgCash.Cells [4,0] :='Marzo';
  sgCash.Cells [5,0] :='Abril';
  sgCash.Cells [6,0]:='Mayo';
  sgCash.Cells [7,0]:='Junio';
  sgCash.Cells [8,0]:='Julio';
  sgCash.Cells [9,0]:='Agosto';
  sgCash.Cells[10,0]:='Septiembre';
  sgCash.Cells[11,0]:='Octubre';
  sgCash.Cells[12,0]:='Noviembre';
  sgCash.Cells[13,0]:='Diciembre';

end;

procedure TFormCahsFlow_LF.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Buscar.Execute;
end;


end.
