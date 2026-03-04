unit UControlMovStockVta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, JvComponentBase, ImgList,
  JvExControls, JvGradient, Mask, Librerias, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, Provider, DBClient, SqlExpr, JvExMask,
  JvToolEdit, Data.DB, JvAppStorage, JvAppIniStorage,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormControlMovStockVta = class(TFormABMBase)
    dbgMov: TDBGrid;
    Splitter1: TSplitter;
    dbgMovimientos: TDBGrid;
    Splitter2: TSplitter;
    DBGrid3: TDBGrid;
    DSMov: TDataSource;
    pnlpncabecera: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    ud1: TUpDown;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    CDSMovFCD_TIPOCPBTE: TStringField;
    CDSMovFCD_NROCPBTE: TStringField;
    CDSMovFCD_ID_DETALLE: TIntegerField;
    CDSMovFCD_IDCABFAC: TIntegerField;
    CDSMovFCD_CODIGO: TStringField;
    CDSMovFCD_CANT: TFMTBCDField;
    CDSMovFCD_DESCRIPCION: TStringField;
    CDSMovFCC_NROCPBTE: TStringField;
    CDSMovFCC_FECHA: TSQLTimeStampField;
    CDSMovFCC_ID_CAB: TIntegerField;
    CDSMovFCC_ANULADO: TStringField;
    CDSMovMOV_ID: TIntegerField;
    CDSMovMOV_ID_DET_CPBTE: TIntegerField;
    CDSMovMOV_ID_CPBTE: TIntegerField;
    CDSMovMOV_CANTIDAD: TFloatField;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    QMov: TFDQuery;
    procedure BuscarExecute(Sender: TObject);
    procedure dbgMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMovDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlMovStockVta: TFormControlMovStockVta;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormControlMovStockVta.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSMov.close;
  CDSMov.Params.ParamByName('desde').Value:=desde.Date;
  CDSMov.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSMov.Open;

end;

procedure TFormControlMovStockVta.dbgMovimientosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if (gdSelected in state) Then
    begin
      dbgMovimientos.Canvas.Font.Color:=clWhite;
      dbgMovimientos.Canvas.Brush.Color:=clNavy;
    end;
  dbgMovimientos.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlMovStockVta.dbgMovDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (gdSelected in state) Then
    begin
      dbgMov.Canvas.Font.Color:=clWhite;
      dbgMov.Canvas.Brush.Color:=clNavy;
    end;
  dbgMov.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlMovStockVta.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (gdSelected in state) Then
    begin
      DBGrid3.Canvas.Font.Color:=clWhite;
      DBGrid3.Canvas.Brush.Color:=clNavy;
    end;
  DBGrid3.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlMovStockVta.FormShow(Sender: TObject);
vaR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormControlMovStockVta.ud1Click(Sender: TObject; Button: TUDBtnType);
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
end;

end.
