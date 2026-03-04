unit UTasaRetGanancias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,   ActnList, ComCtrls,
  Buttons, ToolWin, ExtCtrls, JvComponentBase, 
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, ADODB, Grids, DBGrids, IBGenerator, Datasnap.Provider,
  Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormTasaRetGanancia = class(TFormABMBase)
    CDSTasaRetGanancia: TClientDataSet;
    DSPTasaRetGanancia: TDataSetProvider;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeConcepto: TDBEdit;
    Label3: TLabel;
    dbeAlicuota: TDBEdit;
    Label4: TLabel;
    dbeMinimo: TDBEdit;
    dbchPorDefecto: TDBCheckBox;
    Label5: TLabel;
    dbeImpMin: TDBEdit;
    CDSTasaRetGananciaCODIGO: TIntegerField;
    CDSTasaRetGananciaCONCEPTO: TStringField;
    CDSTasaRetGananciaPOR_DEFECTO: TStringField;
    CDSBuscadorTasa: TClientDataSet;
    DSPBuscadorTasa: TDataSetProvider;
    CDSBuscadorTasaCODIGO: TIntegerField;
    CDSBuscadorTasaCONCEPTO: TStringField;
    DSClientesXLS: TDataSource;
    OpenDialog: TOpenDialog;
    RichEdit1: TRichEdit;
    dbgEscalas: TDBGrid;
    DSPEscalas: TDataSetProvider;
    CDSEscalas: TClientDataSet;
    CDSEscalasID: TIntegerField;
    CDSEscalasCOD_RETENCION: TIntegerField;
    DSEscalas: TDataSource;
    CDSTasaRetGananciaCON_ESCALAS: TStringField;
    dbchEscalas: TDBCheckBox;
    ibgEscala: TIBGenerator;
    QTasaRetGanancia: TFDQuery;
    QTasaRetGananciaCODIGO: TIntegerField;
    QTasaRetGananciaCONCEPTO: TStringField;
    QTasaRetGananciaALICUOTA: TFloatField;
    QTasaRetGananciaMINIMO_NO_IMPONIBLE: TFloatField;
    QTasaRetGananciaPOR_DEFECTO: TStringField;
    QTasaRetGananciaIMPUESTO_MINIMO: TFloatField;
    QTasaRetGananciaCON_ESCALAS: TStringField;
    CDSTasaRetGananciaALICUOTA: TFloatField;
    CDSTasaRetGananciaIMPUESTO_MINIMO: TFloatField;
    CDSTasaRetGananciaMINIMO_NO_IMPONIBLE: TFloatField;
    QBuscadorTasas: TFDQuery;
    CDSBuscadorTasaALICUOTA: TFloatField;
    QEscalas: TFDQuery;
    QEscalasID: TIntegerField;
    QEscalasCOD_RETENCION: TIntegerField;
    QEscalasDESDE: TFloatField;
    QEscalasHASTA: TFloatField;
    QEscalasFIJO: TFloatField;
    QEscalasVARIA: TFloatField;
    QEscalasEXCEDENTE: TFloatField;
    CDSEscalasDESDE: TFloatField;
    CDSEscalasHASTA: TFloatField;
    CDSEscalasFIJO: TFloatField;
    CDSEscalasVARIA: TFloatField;
    CDSEscalasEXCEDENTE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSTasaRetGananciaNewRecord(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbchEscalasClick(Sender: TObject);
    procedure CDSEscalasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTasaRetGanancia: TFormTasaRetGanancia;

const impuestos=(' 40 ,	Intereses de Deudas, Incluidos los de Obligaciones Negociable. Art. 81 inc. a) de la Ley.'+
                 '159 ,	Sueldos, jubilaciones y otros r‚ditos de car cter peri¢dico del trabajo personal.'+
                  '27 ,	Alquileres de Bienes Muebles e Inmuebles'+
                 '124 ,	Corredores, Viajantes y Despachantes de Aduana'+
                  '78 ,	Enajenaci¢n Bs de Cambio y Bs Muebles.'+
                  '20 ,	Intereses por Financiaci¢n o Eventuales incumplimientos'+
                  '19 ,	Intereses por operaciones realizadas en Entidades Financieras'+
                  '21 ,	Intereses por otro tipo de Operaciones'+
                  '55 ,	Locaci¢n de derechos de distribuci¢n de Pel¡culas cinematogr ficas'+
                  '94 ,	Locaci¢n de Obras y/o Servicios'+
                  '51 ,	Obl. de no hacer o por abandono o no ejercicio de una actividad'+
                  '53 ,	Operaciones Realizadas a Trav‚s del mercado de Cereales a T‚rmino'+
                 '116 ,	Profesiones Liberales, S¡ndicos y Director de Sociedad An¢nima.'+
                  '35 ,	Regal¡as'+
                  '86 ,	Transferencia de Llaves, Marcas, Patentes, Regal¡as, etc.'+
                  '95 ,	Transporte de Carga entre Argentina y Pa¡ses Extranjeros'+
                  '43 ,	Utilidades e Intereses de Cooperativas excepto de consumo'+
                 '193 ,	Transferencia Inmuebles Beneficiarios del Exterior - Art. 21'+
                 '305 ,	Transferencia Inmuebles Op. Grav Eventuales - Art. 6 inc. 1'+
                 '306 ,	Transferencia Inmuebles Op. Grav Eventuales - Reducida al 50% '+
                 '191 ,	Transferencia Inmuebles Op. Grav Ganancias - Art. 6 inc. 2'+
                 '192 ,	Transferencia Inmuebles Op. Grav Ganancias - Reducida al 50%'+
                 '221 ,	Dividendos en Acciones - Art. 70 inc. 1'+
                 '220 ,	Dividendos en Acciones - Art. 70 inc. 2 al 4'+
                 '213 ,	Usuarios del Sistema de Tarjetas de Cr‚dito'+
                 '532 ,	Import. def. Bs. para uso del Importador - Art. 4 2§ P rrafo'+
                 '531 ,	Import. def. Bs. para Venta - Art. 4º 1º Parrafo'+
                  '80 ,	Importaci¢n de finitiva de bienes con C.V.D.I.'+
                  '81 ,	Importaci¢n de finitiva de bienes para uso de Importador con C.V.D.I.'+
                  '82 ,	Importaci¢n de finitiva de bienes para uso de Importador sin C.V.D.I.'+
                  '83 ,	Importaci¢n de finitiva de bienes sin C.V.D.I.'+
                 '531 ,	Importaci¢n definitiva de bienes'+
                 '160 ,	Rentas del Trabajo Personal bajo Relaci¢n de Dependencia'+
                 '691 ,	Vales de Almuerzo y/o alimentarios de canasta familiar'+
                 '235 ,	Nominatividad de t¡tulos valores - saldos impagos'+
                 '240 ,	Nominatividad de t¡tulos valores - saldos pagos'+
                  '46 ,	Dividendos o distribuci¢n de utilidades superior a ganancia impositiva (art. Incorporado a continuaci¢n del');

  implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormTasaRetGanancia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSTasaRetGanancia.Close;
  CDSEscalas.Close;
  Action:=caFree;
end;

procedure TFormTasaRetGanancia.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  AddClientDataSet(CDSTasaRetGanancia,DSPTasaRetGanancia);
  AddClientDataSet(CDSEscalas,DSPEscalas);
  CDSTasaRetGanancia.Open;
  CDSEscalas.Open;
  Tabla:='TASAS_RET_GANANCIA';
  Campo:='Codigo';
end;

procedure TFormTasaRetGanancia.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTasaRetGanancia:=Nil;
end;

procedure TFormTasaRetGanancia.CDSEscalasNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSEscalasID.Value:=ibgEscala.IncrementFD(1);
  CDSEscalasCOD_RETENCION.Value:=CDSTasaRetGananciaCODIGO.Value;
  CDSEscalasDESDE.AsFloat    :=0;
  CDSEscalasHASTA.AsFloat    :=0;
  CDSEscalasFIJO.AsFloat     :=0;
  CDSEscalasVARIA.AsFloat    :=0;
  CDSEscalasEXCEDENTE.AsFloat:=0;
end;

procedure TFormTasaRetGanancia.CDSTasaRetGananciaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSTasaRetGananciaPOR_DEFECTO.Value:='N';
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSTasaRetGananciaCODIGO.Value:=1
  else
    CDSTasaRetGananciaCODIGO.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
  CDSTasaRetGananciaALICUOTA.AsFloat           := 0;
  CDSTasaRetGananciaMINIMO_NO_IMPONIBLE.AsFloat:= 0;
  CDSTasaRetGananciaPOR_DEFECTO.Value          := 'N';
  CDSTasaRetGananciaCON_ESCALAS.Value          := 'N';
  CDSTasaRetGananciaIMPUESTO_MINIMO.AsFloat    := 0;
end;

procedure TFormTasaRetGanancia.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTasaRetGanancia.Close;
  CDSTasaRetGanancia.Params.ParamByName('codigo').Value:=StrToInt(DatoNew);
  CDSTasaRetGanancia.Open;

  CDSEscalas.Close;
  CDSEscalas.Params.ParamByName('codigo').Value:=StrToInt(DatoNew);
  CDSEscalas.Open;
end;

procedure TFormTasaRetGanancia.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorTasa.Close;
  CDSBuscadorTasa.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscadorTasa.Close;
end;

procedure TFormTasaRetGanancia.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTasaRetGananciaCODIGO.AsString;
  if dbchEscalas.Checked=False then
    begin
      while CDSEscalas.RecordCount>0 do
       begin
         CDSEscalas.Delete;
         CDSEscalas.First;
       end;
    end;
  inherited;
  Recuperar.Execute;

end;

procedure TFormTasaRetGanancia.dbchEscalasClick(Sender: TObject);
begin
  inherited;
  dbgEscalas.Enabled:=dbchEscalas.Enabled;
end;

end.
