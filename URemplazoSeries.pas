unit URemplazoSeries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, IBGenerator, Mask, DBCtrls,  
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr, JvAppStorage,
  JvAppIniStorage, System.Actions, Datasnap.Provider, Datasnap.DBClient,
   CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormRemplazoSeries = class(TFormABMBase)
    CDSPermuta: TClientDataSet;
    DSPPermuta: TDataSetProvider;
    ibgPermuta: TIBGenerator;
    Label1: TLabel;
    Label2: TLabel;
    dbeNumero: TDBEdit;
    Label3: TLabel;
    dbeSerieOld: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    dbeTipo: TDBEdit;
    dbeClase: TDBEdit;
    Label7: TLabel;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    Label9: TLabel;
    dbeSerieNew: TDBEdit;
    Bevel1: TBevel;
    spBuscaSerieEntregada: TSpeedButton;
    spBuscaSerieDisponible: TSpeedButton;
    CDSPermutaID: TIntegerField;
    CDSPermutaNRO_PERMUTA: TStringField;
    CDSPermutaID_STOCK_SERIE_OLD: TIntegerField;
    CDSPermutaID_STOCK_SERIE_NEW: TIntegerField;
    CDSPermutaCODIGOARTICULO: TStringField;
    CDSPermutaSERIE_OLD: TStringField;
    CDSPermutaSERIE_NEW: TStringField;
    CDSPermutaID_CPBTE_VTA: TIntegerField;
    CDSPermutaNROCPBTE_VTA: TStringField;
    CDSPermutaTIPOCPBTE_VTA: TStringField;
    CDSPermutaCLASECPBTE_VTA: TStringField;
    CDSPermutaCODIGOCLIENTE: TStringField;
    CDSPermutaNOMBRECLIENTE: TStringField;
    CDSPermutaDETALLE_ARTICULO: TStringField;
    Label5: TLabel;
    dbeCodigoArticulo: TDBEdit;
    dbeDescripcion: TDBEdit;
    CDSPermutaDEPOSITO_NEW: TIntegerField;
    CDSPermutaDEPOSITO_OLD: TIntegerField;
    Label6: TLabel;
    dbeDepOld: TDBEdit;
    Label8: TLabel;
    dbeDepNew: TDBEdit;
    dbeFecha: TJvDBDateEdit;
    CDSPermutaFECHAPERMUTA: TSQLTimeStampField;
    CDSBuscadorPermutas: TClientDataSet;
    DSPBuscadorPermutas: TDataSetProvider;
    CDSBuscadorPermutasID: TIntegerField;
    CDSBuscadorPermutasNRO_PERMUTA: TStringField;
    CDSBuscadorPermutasFECHAPERMUTA: TSQLTimeStampField;
    QPermuta: TFDQuery;
    QPermutaID: TIntegerField;
    QPermutaNRO_PERMUTA: TStringField;
    QPermutaFECHAPERMUTA: TSQLTimeStampField;
    QPermutaID_STOCK_SERIE_OLD: TIntegerField;
    QPermutaID_STOCK_SERIE_NEW: TIntegerField;
    QPermutaCODIGOARTICULO: TStringField;
    QPermutaDETALLE_ARTICULO: TStringField;
    QPermutaSERIE_OLD: TStringField;
    QPermutaSERIE_NEW: TStringField;
    QPermutaID_CPBTE_VTA: TIntegerField;
    QPermutaNROCPBTE_VTA: TStringField;
    QPermutaTIPOCPBTE_VTA: TStringField;
    QPermutaCLASECPBTE_VTA: TStringField;
    QPermutaCODIGOCLIENTE: TStringField;
    QPermutaNOMBRECLIENTE: TStringField;
    QPermutaDEPOSITO_NEW: TIntegerField;
    QPermutaDEPOSITO_OLD: TIntegerField;
    QBuscadorPermutas: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSPermutaNewRecord(DataSet: TDataSet);
    procedure CDSPermutaSERIE_OLDSetText(Sender: TField;
      const Text: String);
    procedure CDSPermutaNRO_PERMUTASetText(Sender: TField;
      const Text: String);
    procedure spBuscaSerieEntregadaClick(Sender: TObject);
    procedure spBuscaSerieDisponibleClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSPermutaSERIE_NEWSetText(Sender: TField;
      const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignaSerieOld(dato:String):Boolean;
    function AsignaSerieNew(dato:String):Boolean;

  end;

var
  FormRemplazoSeries: TFormRemplazoSeries;

implementation

uses UDMain_FD,UBuscadorSeries;
{$R *.DFM}

function TFormRemplazoseries.AsignaSerieOld(dato:String):Boolean;
var QSeries:TFDQuery;
begin
  QSeries:=TFDQuery.Create(nil);
  QSeries.Connection:=DMMain_FD.fdcGestion;
  QSeries.SQL.Text:='select ss.*,fc.Nombre,fc.codigo,s.detalle_stk from stock_series ss '+
                    'left join FcVtaCab Fc on fc.id_fc=ss.id_cpbte_egreso and fc.tipocpbte=ss.tipocpbte_egreso and fc.clasecpbte=ss.clasecpbte_egreso '+
                    'left join stock s on s.codigo_stk=ss.codigo_stk '+
                    'where ss.codigoserie=:serie';
  QSeries.Close;
  QSeries.ParamByName('serie').Value:=Dato;
  QSeries.Open;
  if (QSeries.FieldByName('ID').AsString<>'') and (QSeries.FieldByName('ID_CPBTE_EGRESO').AsString<>'') Then
    begin
      CDSPermutaCODIGOARTICULO.Value    :=QSeries.FieldByName('CODIGO_STK').Value;
      CDSPermutaID_CPBTE_VTA.Value      :=QSeries.FieldByName('ID_CPBTE_EGRESO').Value;
      CDSPermutaTIPOCPBTE_VTA.Value     :=QSeries.FieldByName('TIPOCPBTE_EGRESO').Value;
      CDSPermutaCLASECPBTE_VTA.Value    :=QSeries.FieldByName('CLASECPBTE_EGRESO').Value;
      CDSPermutaNROCPBTE_VTA.Value      :=QSeries.FieldByName('NRO_CPBTE_EGRESO').Value;
      CDSPermutaCODIGOCLIENTE.Value     :=QSeries.FieldByName('CODIGO').Value;
      CDSPermutaID_STOCK_SERIE_OLD.Value:=QSeries.FieldByName('ID').Value;
      CDSPermutaCODIGOARTICULO.Value    :=QSeries.FieldByName('CODIGO_STK').Value;
      CDSPermutaDETALLE_ARTICULO.Value  :=QSeries.FieldByName('DETALLE_STK').Value;
      CDSPermutaNOMBRECLIENTE.Value     :=QSeries.FieldByName('NOMBRE').Value;
      CDSPermutaDEPOSITO_OLD.Value      :=QSeries.FieldByName('DEPOSITO').Value;
      Result:=True;
    end
  else
    begin
      CDSPermutaCODIGOARTICULO.Value    :='';
      CDSPermutaID_CPBTE_VTA.Clear;
      CDSPermutaTIPOCPBTE_VTA.Value     :='';
      CDSPermutaCLASECPBTE_VTA.Value    :='';
      CDSPermutaNROCPBTE_VTA.Value      :='';
      CDSPermutaCODIGOCLIENTE.Value     :='';
      CDSPermutaID_STOCK_SERIE_OLD.Clear;
      CDSPermutaCODIGOARTICULO.Value    :='';
      CDSPermutaDETALLE_ARTICULO.Value  :='';
      CDSPermutaNOMBRECLIENTE.Value     :='';
      CDSPermutaDEPOSITO_OLD.Clear;
      Result:=False;
    end;
  QSeries.Close;
  FreeAndNil(QSeries);

end;

function TFormRemplazoseries.AsignaSerieNew(dato:String):Boolean;
var QSeries:TFDQuery;
begin
  QSeries:=TFDQuery.Create(nil);
  QSeries.Connection:=DMMain_FD.fdcGestion;
  QSeries.SQL.Text:='select ss.*,fc.Nombre,fc.codigo,s.detalle_stk from stock_series ss '+
                    'left join FcVtaCab Fc on fc.id_fc=ss.id_cpbte_egreso and fc.tipocpbte=ss.tipocpbte_egreso and fc.clasecpbte=ss.clasecpbte_egreso '+
                    'left join stock s on s.codigo_stk=ss.codigo_stk where ss.codigoserie=:serie';
  QSeries.Close;
  QSeries.ParamByName('serie').Value:=Dato;
  QSeries.Open;
  if (QSeries.FieldByName('ID').AsString<>'') and (QSeries.FieldByName('ID_CPBTE_EGRESO').AsString='') Then
    begin
      CDSPermutaSERIE_NEW.Value          :=QSeries.FieldByName('CODIGOSERIE').Value;
      CDSPermutaDEPOSITO_NEW.Value       :=QSeries.FieldByName('DEPOSITO').Value;
      CDSPermutaID_STOCK_SERIE_NEW.Value :=QSeries.FieldByName('ID').Value;
      Result:=True;
    end
  else
    begin
      CDSPermutaSERIE_NEW.Value :='';
      CDSPermutaID_STOCK_SERIE_NEW.Clear;
      CDSPermutaDEPOSITO_NEW.Clear;
      Result:=False;
    end;
  QSeries.Close;
  FreeAndNil(QSeries);
end;


procedure TFormRemplazoSeries.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSPermuta,DSPPermuta);
  CDSPermuta.Open;
  AutoSize := True;
  Tabla    := 'Permuta_Series';
  Campo    := 'id';
end;

procedure TFormRemplazoSeries.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRemplazoSeries.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRemplazoSeries:=nil;
end;

procedure TFormRemplazoSeries.CDSPermutaNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPermutaID.Value               :=ibgPermuta.IncrementFD(1);
  CDSPermutaFECHAPERMUTA.AsDateTime:=Date;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSPermutaNRO_PERMUTASetText(CDSPermutaNRO_PERMUTA,'1')
  else
    CDSPermutaNRO_PERMUTASetText(CDSPermutaNRO_PERMUTA,IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1));
  QUltimoCodigo2.Close;
end;

procedure TFormRemplazoSeries.CDSPermutaSERIE_OLDSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:= UpperCase(Text);
      if Not(AsignaSerieOld(Sender.AsString)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no encontrado');
        end;
    end;
end;

procedure TFormRemplazoSeries.CDSPermutaNRO_PERMUTASetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,8-Length(Text))+Text;
end;

procedure TFormRemplazoSeries.spBuscaSerieEntregadaClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorSeries)) Then
    FormBuscadorSeries:=TFormBuscadorSeries.Create(Application);
  FormBuscadorSeries.rgSeleccion.ItemIndex:=1;
  FormBuscadorSeries.rgSeleccion.Enabled:=False;
  FormBuscadorSeries.ShowModal;
  if FormBuscadorSeries.Serie<>'' Then
    begin
      CDSPermutaSERIE_OLDSetText(CDSPermutaSERIE_OLD,FormBuscadorSeries.Serie)
    end
end;

procedure TFormRemplazoSeries.spBuscaSerieDisponibleClick(Sender: TObject);
begin
  inherited;
  if CDSPermutaSERIE_OLD.Value<>'' Then
    begin
      if Not(Assigned(FormBuscadorSeries)) Then
        FormBuscadorSeries:=TFormBuscadorSeries.Create(Application);
      FormBuscadorSeries.rgSeleccion.ItemIndex:=0;
      FormBuscadorSeries.rgSeleccion.Enabled:=False;
      FormBuscadorSeries.ceCodigo.Text:=CDSPermutaCODIGOARTICULO.Value;
      FormBuscadorSeries.QBuscaArticulo.Close;
      FormBuscadorSeries.QBuscaArticulo.ParamByName('codigo').Value:=CDSPermutaCODIGOARTICULO.Value;
      FormBuscadorSeries.QBuscaArticulo.Open;
      FormBuscadorSeries.edArticulo.Text:=FormBuscadorSeries.QBuscaArticuloDETALLE_STK.Value;
      FormBuscadorSeries.TraerSeires.Execute;
      FormBuscadorSeries.ceCodigo.Enabled:=False;
      FormBuscadorSeries.ShowModal;
      if FormBuscadorSeries.Serie<>'' Then
        begin
          CDSPermutaSERIE_NEWSetText(CDSPermutaSERIE_NEW,FormBuscadorSeries.Serie)
        end;
    end
  else
    ShowMessage('Primero hay que elegir el Nro. de Serie a Cambiar....');      
end;

procedure TFormRemplazoSeries.ConfirmaExecute(Sender: TObject);
begin
  if (CDSPermutaDEPOSITO_NEW.Value=CDSPermutaDEPOSITO_OLD.Value) and
  (CDSPermutaSERIE_OLD.Value<>'') and (CDSPermutaSERIE_NEW.Value<>'') Then
    begin
      DatoNew:=CDSPermutaID.AsString;
      inherited;
      Recuperar.Execute;
    end
  else
    ShowMessage('Los Nro.de Serie deben ser del mismo deposito que se sacan...');
end;

procedure TFormRemplazoSeries.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPermuta.Close;
  CDSPermuta.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSPermuta.Open;
end;

procedure TFormRemplazoSeries.CDSPermutaSERIE_NEWSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:= UpperCase(Text);
      if Not(AsignaSerieNew(Sender.AsString)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no encontrado');
        end;
    end;
end;

procedure TFormRemplazoSeries.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeSerieOld.SetFocus;
end;

procedure TFormRemplazoSeries.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorPermutas.Close;
  CDSBuscadorPermutas.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr( comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscadorPermutas.Close;
end;

procedure TFormRemplazoSeries.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

end.