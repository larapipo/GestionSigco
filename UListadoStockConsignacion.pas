unit UListadoStockConsignacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, DBCtrls,
  JvExMask, JvToolEdit, JvBaseEdits, frxClass, frxDBSet, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.FMTBcd, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormStockConsignacion = class(TFormABMBase)
    QStockConsignacion: TFDQuery;
    CDSStockConsignacion: TClientDataSet;
    DSPStockConsignacion: TDataSetProvider;
    dbgCabecera: TJvDBGrid;
    DSStockConsignacion: TDataSource;
    CDSStockConsignacionID_CABREC: TIntegerField;
    CDSStockConsignacionID: TIntegerField;
    CDSStockConsignacionTIPOCPBTE: TStringField;
    CDSStockConsignacionCLASECPBTE: TStringField;
    CDSStockConsignacionFECHARECEPCION: TSQLTimeStampField;
    CDSStockConsignacionNROCPBTE: TStringField;
    CDSStockConsignacionCODIGOPROVEEDOR: TStringField;
    CDSStockConsignacionNOMBRE: TStringField;
    CDSStockConsignacionCANTIDAD: TFloatField;
    CDSStockConsignacionCANTIDAD_SALDO: TFloatField;
    QMov: TFDQuery;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    DSMov: TDataSource;
    dbgDetalle: TJvDBGrid;
    CDSMovID: TIntegerField;
    CDSMovID_CABFAC: TIntegerField;
    CDSMovID_DETFAC: TIntegerField;
    CDSMovCODIGO: TStringField;
    CDSMovDETALLE: TStringField;
    CDSMovCANTIDAD: TFloatField;
    CDSMovID_MOV_RECEPCION_CAB: TIntegerField;
    CDSMovID_MOV_RECEPCION_DET: TIntegerField;
    CDSMovLIQUIDADA: TStringField;
    CDSMovPRECIO_VTA: TFloatField;
    CDSMovPRECIO_COMPRA: TFloatField;
    CDSMovCODIGO_PROVEEDOR: TStringField;
    CDSMovCODIGOCLIENTE: TStringField;
    CDSMovNOMBRE: TStringField;
    CDSMovTIPOCPBTE: TStringField;
    CDSMovCLASECPBTE: TStringField;
    CDSMovNROCPBTE: TStringField;
    CDSMovFECHAVTA: TSQLTimeStampField;
    CDSStockConsignacionCODIGOART: TStringField;
    CDSStockConsignacionDETALLE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    edSuma: TJvCalcEdit;
    desde: TJvDateEdit;
    Label3: TLabel;
    hasta: TJvDateEdit;
    Label4: TLabel;
    UpDown1: TUpDown;
    Label5: TLabel;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frxReport: TfrxReport;
    frxDBCab: TfrxDBDataset;
    frxDBDet: TfrxDBDataset;
    Imprimir: TAction;
    CDSMovRAZONSOCIAL: TStringField;
    CDSStockConsignacionUNITARIO_TOTAL: TFloatField;
    Label6: TLabel;
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSStockConsignacionAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbgCabeceraDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgCabeceraDblClick(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SumarMov;
  end;

var
  FormStockConsignacion: TFormStockConsignacion;

implementation

uses UDMain_FD,Librerias, URecepcionMercaderia, UFacturaCtdo_2, UFactura_2;
{$R *.dfm}

procedure TFormStockConsignacion.SumarMov;
var P:TBookmark;
begin
  P:=CDSMov.GetBookmark;
  CDSMov.DisableControls;
  CDSMov.First;
  edSuma.Value:=0;
  while not(CDSMov.Eof) do
    begin
      edSuma.Value:=edSuma.Value+CDSMovCANTIDAD.AsFloat;
      CDSMov.Next;
    end;
  CDSMov.GotoBookmark(p);
  CDSMov.EnableControls;
  CDSMov.FreeBookmark(p);  
end;


procedure TFormStockConsignacion.UpDown1Click(Sender: TObject;
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
end;

procedure TFormStockConsignacion.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSStockConsignacion.Close;
  CDSStockConsignacion.Params.ParamByName('desde').Value:=Desde.Date;
  CDSStockConsignacion.Params.ParamByName('Hasta').Value:=hasta.Date;
  CDSStockConsignacion.Open;
  CDSMov.Close;
  CDSMov.Params.ParamByName('id').Value:=CDSStockConsignacionID.Value;
  CDSMov.Open;
  SumarMov;

end;

procedure TFormStockConsignacion.CDSStockConsignacionAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSMov.Close;
  CDSMov.Params.ParamByName('id').Value:=CDSStockConsignacionID.Value;
  CDSMov.Open;
  SumarMov;
end;

procedure TFormStockConsignacion.dbgCabeceraDblClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormRecepcionMercaderia)) Then
     FormRecepcionMercaderia:=TFormRecepcionMercaderia.Create(Self);
   FormRecepcionMercaderia.DatoNew:=CDSStockConsignacionID_CABREC.AsString;
   FormRecepcionMercaderia.TipoCpbte:='RM';
   FormRecepcionMercaderia.Recuperar.Execute;
   FormRecepcionMercaderia.Show;

end;

procedure TFormStockConsignacion.dbgCabeceraDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if CDSStockConsignacionCANTIDAD_SALDO.AsFloat=0 Then
    dbgCabecera.Canvas.Font.Style :=[fsStrikeOut]
  else
    dbgCabecera.Canvas.Font.Style :=[];

  dbgCabecera.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormStockConsignacion.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if CDSMovTIPOCPBTE.Value='FO' then
    begin
      IF NOT (Assigned(FormCpbteCtdo_2)) THEN
        FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
      FormCpbteCtdo_2.DatoNew   := CDSMovID_CABFAC.AsString;
      FormCpbteCtdo_2.TipoCpbte := CDSMovTIPOCPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
    if CDSMovTIPOCPBTE.Value='FC' then
      begin
        IF NOT (Assigned(FormCpbte_2)) THEN
          FormCpbte_2   := TFormCpbte_2.Create(self);
        FormCpbte_2.DatoNew   := CDSMovID_CABFAC.AsString;
        FormCpbte_2.TipoCpbte := CDSMovTIPOCPBTE.AsString;
        FormCpbte_2.Recuperar.Execute;
        FormCpbte_2.Show;
      end;

end;

procedure TFormStockConsignacion.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormStockConsignacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormStockConsignacion.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  Buscar.Execute;
end;

procedure TFormStockConsignacion.FormDestroy(Sender: TObject);
begin
  inherited;
   FormStockConsignacion:=nil;
end;

procedure TFormStockConsignacion.FormResize(Sender: TObject);
begin
  inherited;
  if FormStockConsignacion<>nil then
    if FormStockConsignacion.Width<>912 then
      FormStockConsignacion.Width:=912;
end;

procedure TFormStockConsignacion.FormShow(Sender: TObject);
begin
//  inherited;
  Buscar.Execute;
end;

procedure TFormStockConsignacion.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoStockConsignacion.fr3');
//  frCtaCte.Variables['SaldoAnterior']:=''''+lbSaldoInicial.Caption+'''';
  // frCtaCte.PrepareReport;
  frxReport.ShowReport;
end;

procedure TFormStockConsignacion.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

end.
