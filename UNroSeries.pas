unit UNroSeries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBGenerator, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,DBXCommon,
  CompBuscador;

type
  TFormNroSeries = class(TForm)
    dbgSeries: TDBGrid;
    DSPVtaSubDet: TDataSetProvider;
    DSVtaSubDetalle: TDataSource;
    IBGFcVtaSubDet: TIBGenerator;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    CDSBuscaNroSerie: TClientDataSet;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieDEPOSITO: TIntegerField;
    DSPBuscaNroSerie: TDataSetProvider;
    CDSVtaSubDetalle: TClientDataSet;
    CDSVtaSubDetalleID: TIntegerField;
    CDSVtaSubDetalleID_DETFAC: TIntegerField;
    CDSVtaSubDetalleID_CABFAC: TIntegerField;
    CDSVtaSubDetalleTIPOCPBTE: TStringField;
    CDSVtaSubDetalleCLASECPBTE: TStringField;
    CDSVtaSubDetalleFECHA: TSQLTimeStampField;
    CDSVtaSubDetalleNROCPBTE: TStringField;
    CDSVtaSubDetalleCODIGOARTICULO: TStringField;
    CDSVtaSubDetalleSERIE: TStringField;
    CDSVtaSubDetalleDEPOSITO: TIntegerField;
    CDSVtaSubDetalleTIPO: TStringField;
    ComBuscadorSerie: TComBuscador;
    procedure FormShow(Sender: TObject);
    procedure CDSVtaSubDetalle_oldBeforeInsert(DataSet: TDataSet);
    procedure CDSVtaSubDetalle_oldBeforeDelete(DataSet: TDataSet);
    procedure dbgSeriesEditButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure CDSVtaSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSVtaSubDetalleBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FId_Fc      :Integer;
    FId_Deposito:Integer;
    FCodigo     :String;
  public
    { Public declarations }
  published
    property Id_Fc:Integer read FId_Fc write FId_Fc;
    property Id_Deposito :Integer read FId_Deposito write FId_Deposito;
    property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormNroSeries: TFormNroSeries;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormNroSeries.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSVtaSubDetalle.ApplyUpdates(0);
    // **** Ingreso en el Log File  **************
    DMMain_FD.LogFileFD(0,2,'Modificación Fac.Venta: '+ CDSVtaSubDetalleNROCPBTE.Value+'Cambios Nro.Serie.....','FACVTA');
    // ******************************************
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se realizo la Carga....');
  end;

end;

procedure TFormNroSeries.CDSVtaSubDetalleBeforeDelete(DataSet: TDataSet);
begin
  CDSVtaSubDetalle.Cancel;
end;

procedure TFormNroSeries.CDSVtaSubDetalleBeforeInsert(DataSet: TDataSet);
begin
  CDSVtaSubDetalle.Cancel;
end;

procedure TFormNroSeries.CDSVtaSubDetalle_oldBeforeDelete(DataSet: TDataSet);
begin
  CDSVtaSubDetalle.Cancel;
end;

procedure TFormNroSeries.CDSVtaSubDetalle_oldBeforeInsert(DataSet: TDataSet);
begin
  CDSVtaSubDetalle.Cancel;
end;

procedure TFormNroSeries.dbgSeriesEditButtonClick(Sender: TObject);
var i:byte;
VAR CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSBuscaNroSerie.Close;
  CDSBuscaNroSerie.CommandText:='';
  CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                                'where  (ss.codigo_stk = :codigo  and ss.id_cpbte_egreso is null)  and ( ss.deposito = :deposito or  :deposito = -1 ) ';
  CDSBuscaNroSerie.Params.ParamByName('deposito').Value:= FId_Deposito;

  //wwBuscadorSerie.LookupTable:=CDSBuscaNroSerie;
  CDSBuscaNroSerie.Params.ParamByName('codigo').Value  := FCodigo;
  CDSBuscaNroSerie.Open;
//  wwBuscadorSerie.Selected.Clear;
    // DatosVentas.CDSBuscaNroSerie.FieldList.Clear;
//  for i:= 0 to CDSBuscaNroSerie.FieldCount-1 do
//    begin
//      if i<0 then
//        wwBuscadorSerie.Selected.Add(CDSBuscaNroSerie.Fields[i].FieldName + #9 + IntToStr(CDSBuscaNroSerie.Fields[i].DisplayWidth) + #9 +
//      CDSBuscaNroSerie.Fields[i].DisplayLabel);
//      if i>0 then
//        CDSBuscaNroSerie.Fields[i].Visible:=False;
//    end;
  comBuscadorSerie.Execute;
  if comBuscadorSerie.rOk Then
      begin
        CDSClone.CloneCursor(CDSVtaSubDetalle,True);
        if Not(CDSClone.Locate('SERIE',Trim(comBuscadorSerie.Id),[])) Then
          begin
            CDSVtaSubDetalle.Edit;
            CDSVtaSubDetalleSERIE.Value:= comBuscadorSerie.Id;
            CDSVtaSubDetalle.Post;
          end
        else
          ShowMessage('Codigo Ingresado....');
      end;
  CDSBuscaNroSerie.Close;
  FreeAndNil(CDSClone);
end;


procedure TFormNroSeries.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormNroSeries.FormDestroy(Sender: TObject);
begin
  FormNroSeries:=nil;
end;

procedure TFormNroSeries.FormShow(Sender: TObject);
begin
  CDSVtaSubDetalle.Close;
  CDSVtaSubDetalle.Params.ParamByName('id').AsInteger:=FId_Fc;
  CDSVtaSubDetalle.Open;
end;

end.
