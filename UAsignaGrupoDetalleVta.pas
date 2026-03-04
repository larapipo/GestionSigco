unit UAsignaGrupoDetalleVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ComCtrls, Grids, DBGrids,
  ExtCtrls, StdCtrls, Buttons, FMTBcd, SqlExpr, DBXCommon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAgrupamientoDetalle = class(TForm)
    pnGrupo: TPanel;
    DSDetalle: TDataSource;
    DSPDetalle: TDataSetProvider;
    CDSDetalle: TClientDataSet;
    CDSDetalleID: TIntegerField;
    CDSDetalleID_CABFAC: TIntegerField;
    CDSDetalleCODIGOARTICULO: TStringField;
    CDSDetalleDETALLE: TStringField;
    CDSDetalleGRUPO_DETALLE: TIntegerField;
    CDSDetalleMUESTRAGRUPO: TStringField;
    btGravar: TBitBtn;
    btSalir: TBitBtn;
    DBGrid1: TDBGrid;
    QDetalle: TFDQuery;
    QDetalleID: TIntegerField;
    QDetalleID_CABFAC: TIntegerField;
    QDetalleTIPOCPBTE: TStringField;
    QDetalleCLASECPBTE: TStringField;
    QDetalleNROCPBTE: TStringField;
    QDetalleRENGLON: TFloatField;
    QDetalleFECHAVTA: TSQLTimeStampField;
    QDetalleCODIGOARTICULO: TStringField;
    QDetalleDETALLE: TStringField;
    QDetalleUNIDAD: TStringField;
    QDetalleCANTIDAD: TFloatField;
    QDetalleDESGLOZAIVA: TStringField;
    QDetalleMODO_GRAVAMEN: TStringField;
    QDetalleTIPOIVA_TASA: TIntegerField;
    QDetalleTIPOIVA_SOBRETASA: TIntegerField;
    QDetalleDEPOSITO: TIntegerField;
    QDetalleMARGEN: TFloatField;
    QDetalleAFECTA_STOCK: TStringField;
    QDetalleCALCULA_SOBRETASA: TStringField;
    QDetalleGRAVADO_IB: TStringField;
    QDetalleCON_NRO_SERIE: TStringField;
    QDetalleCON_CODIGO_BARRA: TStringField;
    QDetalleIB_TASA: TFloatField;
    QDetalleTIPOIB_TASA: TIntegerField;
    QDetalleLOTE: TIntegerField;
    QDetallePRECIO_EDITABLE: TStringField;
    QDetalleID_MONEDA: TIntegerField;
    QDetalleCOTIZACION: TFloatField;
    QDetalleDETALLE_ADICIONAL: TStringField;
    QDetalleGRUPO_DETALLE: TIntegerField;
    QDetalleCTA_ORDEN_ID_RECEPCION: TIntegerField;
    QDetalleCTA_ORDEN_NROCPBTE: TStringField;
    QDetalleCTA_ORDEN_TIPOCPBTE: TStringField;
    QDetalleCTA_ORDEN_CALSECPBTE: TStringField;
    QDetalleMESES_GTIA: TIntegerField;
    QGrupos: TFDQuery;
    CDSGrupos: TClientDataSet;
    DSPGrupos: TDataSetProvider;
    CDSGruposID: TIntegerField;
    CDSGruposGRUPO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSDetalleBeforeInsert(DataSet: TDataSet);
  private
    FId:Integer;
    { Private declarations }

   public
    { Public declarations }
  published
    property id:integer read FId write fid;
  end;

var
  FormAgrupamientoDetalle: TFormAgrupamientoDetalle;


implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormAgrupamientoDetalle.btGravarClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSDetalle.State <> dsBrowse then
      CDSDetalle.Post;
    CDSDetalle.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudieron Gravar los Cambios');
  end;
  Close;
end;

procedure TFormAgrupamientoDetalle.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormAgrupamientoDetalle.CDSDetalleBeforeInsert(DataSet: TDataSet);
begin
  CDSDetalle.Cancel;
end;

procedure TFormAgrupamientoDetalle.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_DELETE) or (Key=VK_BACK) and (DBGrid1.SelectedIndex=2) then
    begin
      DBGrid1.DataSource.DataSet.Edit;

      DBGrid1.DataSource.DataSet.FieldByName('Grupo_detalle').Clear;
      DBGrid1.DataSource.DataSet.Post;

    end;

end;

procedure TFormAgrupamientoDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormAgrupamientoDetalle.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormAgrupamientoDetalle.FormDestroy(Sender: TObject);
begin
  FormAgrupamientoDetalle:=nil;
end;

procedure TFormAgrupamientoDetalle.FormShow(Sender: TObject);
var Nodo0,Nodo1:TTreeNode;
Primero:Integer;
begin
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('id').Value:=FId;
  CDSDetalle.Open;

  CDSGrupos.Close;
  CDSGrupos.Open;

end;



end.
