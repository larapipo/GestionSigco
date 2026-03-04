unit UDetalleObras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, Mask,   
  frxDBSet, frxClass, JvComponentBase, ImgList, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvMemoryDataset, JvExMask, JvToolEdit, Provider, DBClient, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormDetallesObras = class(TFormABMBase)
    DSDetallesObras: TDataSource;
    DSDatosMemoria: TDataSource;
    dbgDetalle: TDBGrid;
    Label1: TLabel;
    edNombreObra: TEdit;
    ToolButton1: TToolButton;
    BitBtn4: TBitBtn;
    Imprimir: TAction;
    frMov: TfrxReport;
    frDBDMov: TfrxDBDataset;
    ceObra: TJvComboEdit;
    TDatosMem: TJvMemoryData;
    TDatosMemCodigo: TStringField;
    TDatosMemDetalle: TStringField;
    TDatosMemCantidad: TFloatField;
    TDatosMemPrecio: TFloatField;
    TDatosMemtipocpbte: TStringField;
    TDatosMemclasecpbte: TStringField;
    TDatosMemnrocpbte: TStringField;
    TDatosMemfecha: TDateField;
    TDatosMemtotal: TFloatField;
    QDetallesO: TFDQuery;
    QObras: TFDQuery;
    CDSDetallesObras: TClientDataSet;
    DSPDetallesObras: TDataSetProvider;
    CDSDetallesObrasFECHA: TSQLTimeStampField;
    CDSDetallesObrasCODIGO: TStringField;
    CDSDetallesObrasDETALLE: TStringField;
    CDSDetallesObrasCANTIDAD: TFloatField;
    CDSDetallesObrasCOSTO_TOTAL: TFloatField;
    CDSDetallesObrasNROCPBTE: TStringField;
    CDSDetallesObrasCLASECPBTE: TStringField;
    CDSDetallesObrasTIPOCPBTE: TStringField;
    CDSDetallesObrasTOTAL: TFloatField;
    QObrasCODIGO: TIntegerField;
    QObrasDETALLE: TStringField;
    QObrasFEHCHAINCIO: TSQLTimeStampField;
    QObrasFECHAFINAL: TSQLTimeStampField;
    QObrasESTADO: TStringField;
    QObrasRESPONSABLE: TStringField;
    QObrasDIREECION: TStringField;
    CDSDetallesObrasUNITARIO_TOTAL: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ceObraButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetallesObras: TFormDetallesObras;

implementation

USES  UBuscadorObras, UDMain_FD;
{$R *.DFM}

//procedure TFormDetallesObras.SMDBGrid1Expression(Sender: TObject;
//  Expression: String; var Text: String; var Value: Boolean);
//begin
//  inherited;
// if (CDSDetallesObras.FieldByName(Expression).AsInteger = 1) then
//  begin
//    Value := True;
//    Text := 'CODIGO from ' + CDSDetallesObras.FieldByName('CODIGO').AsString
//  end;
//end;

procedure TFormDetallesObras.BuscarExecute(Sender: TObject);
var aux:String;
SumaCant,SumaImporte,SumaTotal:Real;
begin
//  inherited;
  TDatosMem.Close;
  TDatosMem.Open;
  if ceObra.Text='' Then
    Raise Exception.Create('No hay Obra elegida....');

  CDSDetallesObras.Close;
  CDSDetallesObras.Params.ParamByName('obra').Value:=StrToInt(ceObra.Text);
  CDSDetallesObras.Open;
  if CDSDetallesObrasCODIGO.AsString='' Then
    Raise Exception.Create('No Hay datos para procesar....');
  SumaCant   :=0;
  SumaImporte:=0;
  SumaTotal  :=0;
  CDSDetallesObras.first;
  Aux:=CDSDetallesObrasCODIGO.AsString;
  TDatosMem.Open;
  while not(CDSDetallesObras.eof) Do
    begin
      if Aux=CDSDetallesObrasCODIGO.AsString Then
        begin
          TDatosMem.Append;
          TDatosMemCodigo.Value     := CDSDetallesObrasCODIGO.AsString;
          TDatosMemDetalle.Value    := CDSDetallesObrasDETALLE.AsString;
          TDatosMemCantidad.Value   := CDSDetallesObrasCANTIDAD.AsFloat;
          TDatosMemPrecio.Value     := CDSDetallesObrasUNITARIO_TOTAL.AsFloat;
          TDatosMemtipocpbte.Value  := CDSDetallesObrasTIPOCPBTE.AsString;
          TDatosMemclasecpbte.Value := CDSDetallesObrasCLASECPBTE.AsString;
          TDatosMemnrocpbte.Value   := CDSDetallesObrasNROCPBTE.AsString;
          TDatosMemfecha.Value      := CDSDetallesObrasFECHA.AsDateTime;
          TDatosMemtotal.Value      := CDSDetallesObrasTOTAL.AsFloat;

          SumaCant   := SumaCant+CDSDetallesObrasCANTIDAD.AsFloat;
          SumaImporte:= SumaImporte+CDSDetallesObrasUNITARIO_TOTAL.AsFloat;
          SumaTotal  := SumaTotal+CDSDetallesObrasTOTAL.AsFloat;
          CDSDetallesObras.Next;
          TDatosMem.Post;
        end
      else
        begin
          TDatosMem.Append;
          TDatosMemDetalle.Value  := 'Total Acumulado';
          TDatosMemCantidad.Value := SumaCant;
          TDatosMemPrecio.Value   := SumaImporte;
          TDatosMemtotal.Value    := SumaTotal;
          TDatosMem.Post;
          SumaCant   :=0;
          SumaImporte:=0;
          SumaTotal  :=0;
          Aux:=CDSDetallesObrasCODIGO.AsString;
        end;
    end;
  TDatosMem.Append;
  TDatosMemDetalle.Value  := 'Total Acumulado';
  TDatosMemCantidad.Value := SumaCant;
  TDatosMemPrecio.Value   := SumaImporte;
  TDatosMemtotal.Value    := SumaTotal;
  TDatosMem.Post;
  TDatosMem.First;
  ceObra.SetFocus;
end;

procedure TFormDetallesObras.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if TDatosMemCodigo.AsString='' Then
    begin
      dbgDetalle.Canvas.Brush.Color := clYellow;
      dbgDetalle.canvas.Font.Color  := clBlack;
      dbgDetalle.canvas.Font.Style := [fsBold]
    end
  else
    begin
      dbgDetalle.Canvas.Brush.Color := clWindow;
      dbgDetalle.canvas.Font.Style  := [];
      dbgDetalle.canvas.Font.Color  := clBlack;
    end;
  if gdFocused in State Then
    begin
      dbgDetalle.Canvas.Brush.Color := clNavy;
      dbgDetalle.canvas.Font.Color  := clWhite;
    end;


  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormDetallesObras.ceObraButtonClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorObras)) Then
    FormBuscadorObras:=TFormBuscadorObras.Create(Application);
  FormBuscadorObras.ShowModal;
  if FormBuscadorObras.Codigo>-1 Then
    begin

      QObras.Close;
      QObras.ParamByName('codigo').Value:=FormBuscadorObras.Codigo;
      QObras.Open;
      edNombreObra.Text := QObrasDETALLE.Value;
      ceObra.Text       := IntToStr(FormBuscadorObras.Codigo);
      Buscar.Execute;
    end;
end;

procedure TFormDetallesObras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormDetallesObras.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormDetallesObras.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDetallesObras:=nil;
end;

procedure TFormDetallesObras.FormResize(Sender: TObject);
begin
  inherited;
  if FormDetallesObras<>nil then
    if FormDetallesObras.Width<>829 then
      FormDetallesObras.Width:=829;

end;

procedure TFormDetallesObras.FormShow(Sender: TObject);
begin
  inherited;
  ceObra.SetFocus;
end;

procedure TFormDetallesObras.ImprimirExecute(Sender: TObject);
begin
  inherited;
 
  FrMov.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoDetalleObra.fr3');
  frMov.Variables['Obra']   :=''''+ceObra.Text+'''';
  frMov.Variables['Detalle']:=''''+edNombreObra.Text+'''';
  frMov.ShowReport;

end;

procedure TFormDetallesObras.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frMov.DesignReport;
end;

procedure TFormDetallesObras.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frMov.DesignReport;
end;

end.