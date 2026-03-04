unit UListadoOperacionesClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask,
  Librerias, Provider,DBClient, Grids, DBGrids, DBCtrls, JvComponentBase, ImgList,
  JvExControls, JvGradient, DataExport, DataToXLS, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, Data.DB,
  Vcl.ActnList, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormListadoOpercionesCliente = class(TFormABMBase)
    UpDown1: TUpDown;
    CDSOperaciones: TClientDataSet;
    DSPOperaciones: TDataSetProvider;
    DSOperaciones: TDataSource;
    DSDetalleArticulos: TDataSource;
    DSPDetalleArticulos: TDataSetProvider;
    CDSDetalleArticulos: TClientDataSet;
    CDSDetalleArticulosCODIGOARTICULO: TStringField;
    CDSDetalleArticulosDETALLE: TStringField;
    CDSDetalleArticulosCODIGO: TStringField;
    DBGrid1: TDBGrid;
    dbgResultados: TDBGrid;
    CDSOperacionesO_CODIGO: TStringField;
    CDSOperacionesO_NOMBRE: TStringField;
    Label1: TLabel;
    CDSOperacionesPORCENTA_INCIDENCIA: TFloatField;
    dbTotal: TDBText;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    DataToXLS: TDataToXLS;
    QDetalleArticulos: TFDQuery;
    CDSDetalleArticulosCANTIDAD: TFloatField;
    CDSDetalleArticulosIMPORTE: TFloatField;
    QOperaciones: TFDQuery;
    CDSOperacionesO_FACTURADO: TFloatField;
    CDSOperacionesO_NCREDITO: TFloatField;
    CDSOperacionesO_PRESUPUESTADO: TFloatField;
    CDSOperacionesO_COBRADO: TFloatField;
    CDSOperacionesO_TOTALFACTURADO: TFloatField;
    CDSOperacionesO_SALDOCC: TFloatField;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Label2: TLabel;
    CDSDetalleArticulosTIPOCPBTE: TStringField;
    CDSDetalleArticulosCANTIDAD_REC: TFloatField;
    CDSDetalleArticulosIMPORTE_REC: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure RxDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgResultadosTitleClick(Column: TColumn);
    procedure CDSOperacionesCalcFields(DataSet: TDataSet);
    procedure btExcelClick(Sender: TObject);
    procedure CDSDetalleArticulosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoOpercionesCliente: TFormListadoOpercionesCliente;

implementation

uses UDMain_FD, UAvisoProceso;

{$R *.DFM}

procedure TFormListadoOpercionesCliente.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormListadoOpercionesCliente.UpDown1Click(Sender: TObject;
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

procedure TFormListadoOpercionesCliente.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSOperaciones.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='Operaciones';
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoOpercionesCliente.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  CDSOperaciones.Close;
  CDSOperaciones.Params.ParamByName('Desde').Value:=desde.date;
  CDSOperaciones.Params.ParamByName('Hasta').Value:=hasta.date;
  CDSOperaciones.Open;

  CDSDetalleArticulos.Close;
  CDSDetalleArticulos.Params.ParamByName('desde').Value :=Desde.date;
  CDSDetalleArticulos.Params.ParamByName('Hasta').Value :=Hasta.date;
  CDSDetalleArticulos.Open;

  CDSDetalleArticulos.MasterSource:=DSOperaciones;
  CDSDetalleArticulos.MasterFields:='O_CODIGO';

  Screen.Cursor:=crDefault;
end;

procedure TFormListadoOpercionesCliente.RxDBGrid1TitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
begin
  inherited;
  CDSOperaciones.IndexFieldNames:=Field.FieldName;
end;

procedure TFormListadoOpercionesCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoOpercionesCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoOpercionesCliente:=nil;
end;

procedure TFormListadoOpercionesCliente.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;



procedure TFormListadoOpercionesCliente.dbgResultadosTitleClick(Column: TColumn);
var i:Byte;
begin
  inherited;
  For i:=0 to dbgResultados.Columns.Count-1 do
    begin
       dbgResultados.Columns[i].Title.Font.Style:=[];
       dbgResultados.Columns[i].Title.Font.Color:=clWindowText;
    end;
  Column.Title.Font.Style:=[fsBold];
  Column.Title.Font.Color:=clBlue;
  CDSOperaciones.IndexFieldNames:=Column.FieldName;
end;

procedure TFormListadoOpercionesCliente.CDSDetalleArticulosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSDetalleArticulosIMPORTE_REC.AsFloat :=CDSDetalleArticulosIMPORTE.AsFloat;
  CDSDetalleArticulosCANTIDAD_REC.AsFloat:=CDSDetalleArticulosCANTIDAD.AsFloat;
  if CDSDetalleArticulosTIPOCPBTE.Value='NC' then
    begin
      CDSDetalleArticulosIMPORTE_REC.AsFloat :=CDSDetalleArticulosIMPORTE.AsFloat*-1;
      CDSDetalleArticulosCANTIDAD_REC.AsFloat:=CDSDetalleArticulosCANTIDAD.AsFloat*-1;
    end;
  
end;

procedure TFormListadoOpercionesCliente.CDSOperacionesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if CDSOperacionesO_TOTALFACTURADO.AsFloat>0 then
    CDSOperacionesPORCENTA_INCIDENCIA.AsFloat:=(CDSOperacionesO_FACTURADO.AsFloat/CDSOperacionesO_TOTALFACTURADO.AsFloat)*100;
end;

end.