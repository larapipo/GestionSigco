unit UConsultaStockXSerie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, JvExDBGrids, JvDBGrid, FMTBcd, Grids, DBGrids, StdCtrls, JvExMask, JvToolEdit,
  JvDBControls, Mask, DBCtrls, JvLabel, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.DB, Datasnap.DBClient, Datasnap.Provider, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormConsultaXSerie = class(TFormABMBase)
    DSMovSeries: TDataSource;
    DSPSeries: TDataSetProvider;
    CDSSeries: TClientDataSet;
    DSSeries: TDataSource;
    CDSSeriesID: TIntegerField;
    CDSSeriesCODIGO_STK: TStringField;
    CDSSeriesCODIGOSERIE: TStringField;
    CDSSeriesID_CPBTE_INGRESO: TIntegerField;
    CDSSeriesTIPOCPBTE_INGRESO: TStringField;
    CDSSeriesCLASECPBTE_INGRESO: TStringField;
    CDSSeriesNRO_CPBTE_INGRESO: TStringField;
    CDSSeriesID_CPBTE_EGRESO: TIntegerField;
    CDSSeriesTIPOCPBTE_EGRESO: TStringField;
    CDSSeriesCLASECPBTE_EGRESO: TStringField;
    CDSSeriesNRO_CPBTE_EGRESO: TStringField;
    CDSSeriesDEPOSITO: TIntegerField;
    CDSSeriesOBS: TStringField;
    CDSSeriesMUESTRASTOCK: TStringField;
    pnCabecera: TPanel;
    dbeCodigo: TDBEdit;
    dbeDescripcion: TDBEdit;
    edSerie: TEdit;
    QSeries: TSQLQuery;
    CDSSeriesFECHAINGRESO: TSQLTimeStampField;
    CDSSeriesFECHAEGRESO: TSQLTimeStampField;
    QSeriesArticulo: TSQLQuery;
    CDSMovSerie: TClientDataSet;
    DSPMovSerie: TDataSetProvider;
    QMovSerie: TSQLQuery;
    CDSMovSerieO_ID_CPBTE: TIntegerField;
    CDSMovSerieO_TIPOCPBTE: TStringField;
    CDSMovSerieO_CLASECPBTE: TStringField;
    CDSMovSerieO_FECHA: TSQLTimeStampField;
    CDSMovSerieO_NROCPBTE: TStringField;
    CDSMovSerieO_DEPOSITO: TIntegerField;
    CDSMovSerieO_ORIGEN: TStringField;
    CDSMovSerieO_DESCRIPCION: TStringField;
    CDSMovSerieO_NOMBREDEPOSITO: TStringField;
    dbeIngreso: TJvDBDateEdit;
    dbeEgreso: TJvDBDateEdit;
    Label1: TJvLabel;
    Label3: TJvLabel;
    Label4: TJvLabel;
    Label2: TJvLabel;
    CDSSeriesArticulos: TClientDataSet;
    DSPSeriesArticulos: TDataSetProvider;
    CDSSeriesArticulosCODIGOSERIE: TStringField;
    CDSSeriesArticulosCODIGO_STK: TStringField;
    CDSSeriesArticulosMUESTRASTOCK: TStringField;
    dbgMov: TJvDBGrid;
    CDSMovSerieO_OBS: TStringField;
    Label5: TLabel;
    cxDBTextEdit1: TDBEdit;
    chType: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSerieKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaXSerie: TFormConsultaXSerie;

implementation

uses UBuscaArticuloSerie,UDMain_FD;

{$R *.DFM}

procedure TFormConsultaXSerie.FormCreate(Sender: TObject);
begin
  inherited;
  CDSSeries.Open;
  AutoSize:=True;
end;

procedure TFormConsultaXSerie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSeries.Close;
  CDSMovSerie.Close;
end;

procedure TFormConsultaXSerie.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConsultaXSerie:=nil;
end;

procedure TFormConsultaXSerie.FormShow(Sender: TObject);
begin
  inherited;
  edSerie.SetFocus;
  edSerie.SelectAll;
end;

procedure TFormConsultaXSerie.edSerieKeyPress(Sender: TObject;
  var Key: Char);
VAR Codigo:String;
begin
  inherited;
  if chType.Checked=False then
    begin
      if (key=#13) Then
        begin
        CDSSeries.Close;
        CDSSeries.Params.ParamByName('Codigoserie').Clear;
        CDSSeries.Params.ParamByName('codigostk').Clear;
        CDSSeries.Open;
        CDSMovSerie.Close;
        CDSMovSerie.Params.ParamByName('codigoserie').Clear;
        CDSMovSerie.Params.ParamByName('codigostk').Clear;
        CDSMovSerie.Open;
      // veo cuantos tienes el mismo codigo
        CDSSeriesArticulos.Close;
        CDSSeriesArticulos.Params.ParamByName('codigoserie').AsString:=edSerie.Text;
        CDSSeriesArticulos.Open;
        if CDSSeriesArticulos.RecordCount>1 Then
          BEGIN
            if Not(Assigned(FormArticulosSeries)) Then
              FormArticulosSeries:=TFormArticulosSeries.Create(Application);
            FormArticulosSeries.ShowModal;
            Codigo:=FormArticulosSeries.codigo;
          END
        ELSE
          Codigo:=CDSSeriesArticulosCODIGO_STK.Value;
        CDSSeriesArticulos.Close;
        CDSSeries.Close;
        CDSSeries.Params.ParamByName('Codigoserie').Value:=edSerie.Text;
        CDSSeries.Params.ParamByName('CodigoStk').Value:=Codigo;
        CDSSeries.Open;
        if Not(CDSSeries.IsEmpty) Then
          begin
            CDSMovSerie.Close;
            CDSMovSerie.Params.ParamByName('codigoserie').Value:=edSerie.text;
            CDSMovSerie.Params.ParamByName('codigostk').Value:=Codigo;
            CDSMovSerie.Open;
          end;
        edSerie.SetFocus;
        edSerie.SelectAll;
      end;
    end
  else
    if chType.Checked then
      begin
        CDSSeriesArticulos.Close;
        CDSSeriesArticulos.Params.ParamByName('codigoserie').AsString:=edSerie.Text;
        CDSSeriesArticulos.Open;
        if Not(CDSSeriesArticulos.IsEmpty) then
          begin
            edSerie.Text:= CDSSeriesArticulosCODIGOSERIE.Value;
            Codigo := CDSSeriesArticulosCODIGO_STK.Value;
            CDSSeriesArticulos.Close;
            CDSSeries.Close;
            CDSSeries.Params.ParamByName('Codigoserie').Value:=edSerie.Text;
            CDSSeries.Params.ParamByName('CodigoStk').Value  :=Codigo;
            CDSSeries.Open;
            if Not(CDSSeries.IsEmpty) Then
              begin
                CDSMovSerie.Close;
                CDSMovSerie.Params.ParamByName('codigoserie').Value:= edSerie.text;
                CDSMovSerie.Params.ParamByName('codigostk').Value  := Codigo;
                CDSMovSerie.Open;
              end;

          end;
      end;
end;

procedure TFormConsultaXSerie.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

end.
