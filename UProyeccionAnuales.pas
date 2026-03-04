unit UProyeccionAnuales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Spin, JvDBLookup, Provider, DBClient,
  Mask, JvExMask, JvToolEdit, JvBaseEdits, frxClass, frxDBSet, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, Vcl.WinXPickers,
  AdvSmoothEdit, AdvSmoothEditButton, AdvSmoothDatePicker, frCoreClasses;

type
  TFormProyeccionAnuales = class(TFormABMBase)
    CDSProyeccion: TClientDataSet;
    DSProyeccion: TDataSource;
    DSPProyeccion: TDataSetProvider;
    Label1: TLabel;
    dbcVendedor: TJvDBLookupCombo;
    DSPersonal: TDataSource;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    DSPPersonal: TDataSetProvider;
    spMes: TSpinEdit;
    Label2: TLabel;
    CDSProyeccionCODIGO: TStringField;
    CDSProyeccionNOMBRE: TStringField;
    CDSProyeccionDIRECCION_COMERCIAL: TStringField;
    CDSProyeccionTIPOABONO: TStringField;
    CDSProyeccionMES_ABONOANUAL: TIntegerField;
    CDSProyeccionDETALLE: TStringField;
    CDSProyeccionCOBRADOR: TStringField;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    frDetalles: TfrxReport;
    frDBDetalles: TfrxDBDataset;
    CDSProyeccionCODIGO_OP: TStringField;
    frFacturas: TfrxDBDataset;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    edTotal: TJvCalcEdit;
    chDetalle: TCheckBox;
    DSPMovCC: TDataSetProvider;
    CDSMovCC: TClientDataSet;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCSaldoCC: TFloatField;
    CDSMovCCCLIENTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCID_MOVCCVTA: TIntegerField;
    CDSMovCCID_COMPROBANTE: TIntegerField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCTIPO: TStringField;
    CDSMovCCOBSERVACIONES: TStringField;
    CDSMovCCCUOTA: TIntegerField;
    DSMovCC: TDataSource;
    CDSProyeccionMES_SEMESTRAL: TIntegerField;
    QMovCC: TFDQuery;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    QProyeccion: TFDQuery;
    CDSProyeccionTOTAL: TFloatField;
    CDSProyeccionTOTAL_ABONO: TFloatField;
    ToolButton2: TToolButton;
    CDSProyeccionINICIO_FC_ABONO: TSQLTimeStampField;
    chFechaInicio: TCheckBox;
    Label3: TLabel;
    edFecha: TAdvSmoothDatePicker;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSProyeccionAfterScroll(DataSet: TDataSet);
    procedure JvDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure chFechaInicioClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure sumar; { Public declarations }
  end;

var
  FormProyeccionAnuales: TFormProyeccionAnuales;

implementation

{$R *.dfm}
uses DMBuscadoresForm,UDMain_FD, UClientes_2;

procedure TFormProyeccionAnuales.BitBtn1Click(Sender: TObject);
begin
  inherited;
 
  IF NOT (CDSProyeccion.IsEmpty) THEN
    BEGIN

      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;

      if Not(chDetalle.Checked) then
        frDetalles.LoadFromFile(DMMain_FD.PathReportesLst+'\ProyeccionAnuales.fr3')
      else
        if chDetalle.Checked then
          frDetalles.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\ProyeccionAnualesDetalle.fr3');

      frDetalles.PrintOptions.Printer:=PrNomListados;

      frDetalles.Variables['Mes']     :=''''+IntToStr(spMes.Value)+'''';
      frDetalles.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';

     // frSaldos.PrepareReport();
      frDetalles.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos a listar');
end;

procedure TFormProyeccionAnuales.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSProyeccion.Close;
  CDSProyeccion.IndexDefs.Clear;
  CDSProyeccion.IndexFieldNames                       := '';
  CDSProyeccion.Params.ParamByName('mes').Value       := spMes.Value;
  CDSProyeccion.Params.ParamByName('vendedor').value  := dbcVendedor.KeyValue;
  CDSProyeccion.Open;

  sumar;
  //edTotal.Value:=0;
//  CDSProyeccion.First;
//  CDSProyeccion.DisableControls;
//  while not(CDSProyeccion.Eof) do
//    begin
//      edTotal.Value:=edTotal.Value+CDSProyeccionTOTAL_ABONO.AsFloat;
//      CDSProyeccion.Next;
//    end;
//  CDSProyeccion.First;
//  CDSProyeccion.EnableControls;
end;

procedure TFormProyeccionAnuales.CDSProyeccionAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSMovCC.Close;
  CDSMovCC.Params.ParamByName('codigo').Value:=CDSProyeccionCODIGO.AsString;
  CDSMovCC.Params.ParamByName('desde').AsDate:=Date-30;
  CDSMovCC.Params.ParamByName('hasta').AsDate:=Date;
  CDSMovCC.Open;
end;

procedure TFormProyeccionAnuales.chFechaInicioClick(Sender: TObject);
begin
  inherited;
  CDSProyeccion.Filtered:=False;
  CDSProyeccion.Filter:='Not (INICIO_FC_ABONO > '+ QuotedStr(edFecha.Text)+')' ;
  if chFechaInicio.Checked then
    CDSProyeccion.Filtered:=True
  else
    CDSProyeccion.Filtered:=False;
  sumar;

end;

procedure TFormProyeccionAnuales.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormProyeccionAnuales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormProyeccionAnuales.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSPersonal.Close;
  CDSPersonal.Open;
end;

procedure TFormProyeccionAnuales.FormDestroy(Sender: TObject);
begin
  inherited;
  FormProyeccionAnuales:=nil;
end;

procedure TFormProyeccionAnuales.FormResize(Sender: TObject);
begin
  inherited;
  if FormProyeccionAnuales<>nil then
    if FormProyeccionAnuales.Width<>1146 then
      FormProyeccionAnuales.Width:=1146;
end;

procedure TFormProyeccionAnuales.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if CDSProyeccionCODIGO.AsString<>'' then
    begin
      if Not(Assigned(FormClientes_2)) then
        FormClientes_2:=TFormClientes_2.Create(Self);
      FormClientes_2.DatoNew:=CDSProyeccionCODIGO.AsString;
      FormClientes_2.Recuperar.Execute;
      FormClientes_2.Show;

    end;
end;

procedure TFormProyeccionAnuales.JvDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
// if ACol>=1 then
  begin
    try
    Campo := Field.FieldName;
    with JvDBGrid1.DataSource.DataSet as TClientDataSet do
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
end;

procedure TFormProyeccionAnuales.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frDetalles.DesignReport();
end;

procedure TFormProyeccionAnuales.sumar;
begin
  edTotal.Value:=0;
  CDSProyeccion.First;
  CDSProyeccion.DisableControls;
  while not(CDSProyeccion.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSProyeccionTOTAL_ABONO.AsFloat;
      CDSProyeccion.Next;
    end;
  CDSProyeccion.First;
  CDSProyeccion.EnableControls;
end;

end.
