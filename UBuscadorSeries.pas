unit UBuscadorSeries;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,   Grids, DBGrids, Db, ExtCtrls,
  ActnList, Buttons, JvExMask, JvToolEdit, FMTBcd, SqlExpr, Provider, DBClient,
  JvExDBGrids, JvDBGrid, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvGroupBox, AdvOfficeButtons;

type
  TFormBuscadorSeries = class(TForm)
    pnPrincipal: TPanel;
    edArticulo: TEdit;
    DSBuscadorSeires: TDataSource;
    Label1: TLabel;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    BuscarArticulo: TAction;
    TraerSeires: TAction;
    ceCodigo: TJvComboEdit;
    CDSBuscadorSerie: TClientDataSet;
    DSPBuscadorSerie: TDataSetProvider;
    CDSBuscadorSerieID: TIntegerField;
    CDSBuscadorSerieCODIGO_STK: TStringField;
    CDSBuscadorSerieCODIGOSERIE: TStringField;
    CDSBuscadorSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscadorSerieFECHAEGRESO: TSQLTimeStampField;
    CDSBuscadorSerieID_CPBTE_INGRESO: TIntegerField;
    CDSBuscadorSerieTIPOCPBTE_INGRESO: TStringField;
    CDSBuscadorSerieCLASECPBTE_INGRESO: TStringField;
    CDSBuscadorSerieNRO_CPBTE_INGRESO: TStringField;
    CDSBuscadorSerieID_CPBTE_EGRESO: TIntegerField;
    CDSBuscadorSerieTIPOCPBTE_EGRESO: TStringField;
    CDSBuscadorSerieCLASECPBTE_EGRESO: TStringField;
    CDSBuscadorSerieNRO_CPBTE_EGRESO: TStringField;
    CDSBuscadorSerieDEPOSITO: TIntegerField;
    CDSBuscadorSerieOBS: TStringField;
    CDSBuscadorSerieALTA_POR_VTA: TStringField;
    dbgSeries: TJvDBGrid;
    QBuscaArticulo: TFDQuery;
    QBuscaArticuloDETALLE_STK: TStringField;
    QBuscadorSerie: TFDQuery;
    rgSeleccion: TAdvOfficeRadioGroup;
    procedure AceptarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure TraerSeiresExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgSeriesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    FCodigo:String;
    FNombre:String;
    FSerie:String;
    FDeposito:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo Write FCodigo;
    property Nombre:String read FNombre Write FNombre;
    property Serie:String read FSerie Write FSerie;
    property Deposito:Integer read FDeposito Write FDeposito;

  end;

var
  FormBuscadorSeries: TFormBuscadorSeries;

implementation

uses UBuscadorArticulos,UDMain_FD;

{$R *.DFM}

procedure TFormBuscadorSeries.AceptarExecute(Sender: TObject);
begin
 if Not(CDSBuscadorSerie.IsEmpty) Then
   begin
     FCodigo   :=CDSBuscadorSerieCODIGO_STK.Value;
     FNombre   :=edArticulo.Text;
     FSerie    :=CDSBuscadorSerieCODIGOSERIE.Value;
     FDeposito :=CDSBuscadorSerieDEPOSITO.Value;
   end
 else
   begin
     FCodigo:='';
     FNombre:='';
     FSerie :='';
   end;
 Close;


end;

procedure TFormBuscadorSeries.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorSeries.FormDestroy(Sender: TObject);
begin
  FormBuscadorSeries:=nil;
end;

procedure TFormBuscadorSeries.CancelarExecute(Sender: TObject);
begin
  FCodigo:='';
  FNombre:='';
  FSerie :='';
  Close;
end;

procedure TFormBuscadorSeries.dbgSeriesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgSeries.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormBuscadorSeries.BuscarArticuloExecute(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if Not(Assigned(FormBuscadorArticulos)) Then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1      :=-1;
  FormBuscadorArticulos.Param2      :=-1;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

  formBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
      QBuscaArticulo.Close;
      QBuscaArticulo.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
      QBuscaArticulo.Open;
      ceCodigo.Text  :=FormBuscadorArticulos.Codigo;
      edArticulo.Text:=QBuscaArticuloDETALLE_STK.Value;
      TraerSeires.Execute;
    end
  else
    begin
      ceCodigo.Text  :='';
      edArticulo.Text:='';
    end;
end;

procedure TFormBuscadorSeries.TraerSeiresExecute(Sender: TObject);
begin
  CDSBuscadorSerie.IndexDefs.Clear;
  CDSBuscadorSerie.IndexName:='';
  CDSBuscadorSerie.Close;
  CDSBuscadorSerie.CommandText:='';
  if rgSeleccion.ItemIndex=0 Then
    CDSBuscadorSerie.CommandText := 'select ss.* from stock_series ss where (ss.id_cpbte_egreso is null) '+
                                    'and ss.codigo_stk='+''''+ceCodigo.Text+''''
  else
    if rgSeleccion.ItemIndex=1 Then
      CDSBuscadorSerie.CommandText := 'select ss.* from stock_series ss where (Not(ss.id_cpbte_egreso is null)) '+
                                      'and ss.codigo_stk='+''''+ceCodigo.text+''''
    else
      if rgSeleccion.ItemIndex=2 Then
         CDSBuscadorSerie.CommandText := 'select ss.* from stock_series ss where '+
                                         'ss.codigo_stk ='+''''+ceCodigo.text+'''';

  CDSBuscadorSerie.Open;
end;

procedure TFormBuscadorSeries.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSBuscadorSerie.IndexName:='';
end;

end.