unit UObras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls,Buttons, StdCtrls, ToolWin,
  ExtCtrls, DBClient, Provider, Mask, DBCtrls, 
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvExStdCtrls, JvCombobox,
  JvDBCombobox, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, Vcl.Grids, Vcl.DBGrids, System.ImageList;

type
  TFormObras = class(TFormABMBase)
    DSPObras: TDataSetProvider;
    CDSObras: TClientDataSet;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbeResponsable: TDBEdit;
    Label7: TLabel;
    dbeDireccion: TDBEdit;
    CDSObrasCODIGO: TIntegerField;
    CDSObrasDETALLE: TStringField;
    CDSObrasFEHCHAINCIO: TSQLTimeStampField;
    CDSObrasFECHAFINAL: TSQLTimeStampField;
    CDSObrasESTADO: TStringField;
    CDSObrasRESPONSABLE: TStringField;
    CDSObrasDIREECION: TStringField;
    dbcEstado: TJvDBComboBox;
    dbeInicio: TJvDBDateEdit;
    dbeFinal: TJvDBDateEdit;
    QVerificaCodigo: TFDQuery;
    CDSObrasLISTAPRECIOS: TIntegerField;
    dbcLista: TDBLookupComboBox;
    Label8: TLabel;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    DSListaPrecios: TDataSource;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    QObrasSector: TFDQuery;
    QObrasSectorID_SECTOR: TIntegerField;
    QObrasSectorCOD_OBRA: TIntegerField;
    QObrasSectorSECTOR: TStringField;
    DSPObraSector: TDataSetProvider;
    CDSObrasSector: TClientDataSet;
    CDSObrasSectorID_SECTOR: TIntegerField;
    CDSObrasSectorCOD_OBRA: TIntegerField;
    CDSObrasSectorSECTOR: TStringField;
    DSObrasSector: TDataSource;
    QObras: TFDQuery;
    QObrasCODIGO: TIntegerField;
    QObrasDETALLE: TStringField;
    QObrasFEHCHAINCIO: TSQLTimeStampField;
    QObrasFECHAFINAL: TSQLTimeStampField;
    QObrasESTADO: TStringField;
    QObrasRESPONSABLE: TStringField;
    QObrasDIREECION: TStringField;
    QObrasLISTAPRECIOS: TIntegerField;
    QObrasUBICACION: TStringField;
    QObrasDISTANCIA: TSingleField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSObrasNewRecord(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSObrasCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSObrasSectorNewRecord(DataSet: TDataSet);
  private
    FIdObra:Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObras: TFormObras;

implementation

uses UDMain_FD, UBuscadorObras;
{$R *.DFM}

procedure TFormObras.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSObras,DSPObras);
  AddClientDataSet(CDSObrasSector,DSPObraSector);
  CDSObras.Open;
  CDSObrasSector.Open;

  CDSListaPrecios.Close;
  cdsListaPrecios.Params.ParamByName('uso').Value:='*';
  CDSListaPrecios.Open;
  Tabla:='Obras';
  Campo:='codigo';
end;

procedure TFormObras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSListaPrecios.Close;
  CDSObrasSector.Close;
  CDSObras.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormObras.CDSObrasCODIGOSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if ( Text<>'') and (text<>#13) then
    begin
      QVerificaCodigo.Close;
      QVerificaCodigo.ParamByName('codigo').AsInteger:=Sender.AsInteger;
      QVerificaCodigo.Open;
      if QVerificaCodigo.Fields[0].AsString<>'' then
        begin
          Sender.Clear;
          ShowMessage('Codigono Valido');
          QUltimoCodigo2.Close;
          QUltimoCodigo2.Open;
          if QUltimoCodigo2.Fields[0].AsString<>'' Then
            Sender.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
          else
            Sender.Value:=1;
          QUltimoCodigo2.Close;
        end;
       QVerificaCodigo.Close;
    end;

end;

procedure TFormObras.CDSObrasNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSObrasCODIGO.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSObrasCODIGO.Value:=1;
  QUltimoCodigo2.Close;
  CDSObrasFEHCHAINCIO.AsDateTime:= Date;
  CDSObrasESTADO.Value          := 'A';
  CDSObrasLISTAPRECIOS.Value    := DMMain_FD.ListaPorDefecto(SucursalPorDefecto);
end;

procedure TFormObras.CDSObrasSectorNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSObrasSectorCOD_OBRA.Value  := CDSObrasCODIGO.Value;
  CDSObrasSectorID_SECTOR.Value := CDSObrasSector.RecordCount+1;
end;

procedure TFormObras.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSObras.Close;
  CDSObras.Params.ParamByName('Codigo').Value     := StrToInt(DatoNew);
  CDSObras.Open;

  CDSObrasSector.Close;
  CDSObrasSector.Params.ParamByName('obra').Value := StrToInt(DatoNew);
  CDSObrasSector.Open;

end;

procedure TFormObras.ConfirmaExecute(Sender: TObject);
begin
  if CDSObrasSector.State in [dsInsert,dsEdit] then
    CDSObrasSector.Post;
  DatoNew:=IntToStr(CDSObrasCODIGO.Value);
  inherited;
  Recuperar.Execute;
  formObras.Tag:=CDSObrasCODIGO.Value;// uso el tag para saber el codigo de obra y mandarlo a Presupuesto
end;

procedure TFormObras.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;
//  dbcLista.KeyValue:=DMMain_FD.AsignarListaPrecio(SucursalPorDefecto);
end;

procedure TFormObras.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorObras)) Then
    FormBuscadorObras:=TFormBuscadorObras.Create(Application);
  FormBuscadorObras.ShowModal;
  if FormBuscadorObras.Codigo<>-1 Then
    begin
      DatoNew:=IntToStr(FormBuscadorObras.Codigo);
      Recuperar.Execute;
    end;
end;

procedure TFormObras.FormDestroy(Sender: TObject);
begin
  inherited;
  FormObras:=nil;
end;

end.
