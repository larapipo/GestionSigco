unit UListadoOTrabajoEmpleados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,  ActnList, ComCtrls,
  Buttons, ToolWin, ExtCtrls, Grids, DBGrids, Provider, DBClient, DBCtrls,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvToolEdit, JvExMask, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.TeeFunci, VCLTee.Series, VCLTee.GanttCh,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, System.Actions, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, JvAppStorage, JvAppIniStorage, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormListadoOTrabajoEmpleados = class(TFormABMBase)
    pnDetalle: TPanel;
    BuscaEmpleado: TAction;
    DSMovOTLunes: TDataSource;
    pnCabecera: TPanel;
    Label1: TLabel;
    edNombreCliente: TEdit;
    Label2: TLabel;
    DSPMovOT: TDataSetProvider;
    CDSMovOTLunes: TClientDataSet;
    CDSMovOTMartes: TClientDataSet;
    CDSMovOTMiercoles: TClientDataSet;
    CDSMovOTJueves: TClientDataSet;
    CDSMovOTViernes: TClientDataSet;
    DSMovOTMartes: TDataSource;
    DSMovOTMiercoles: TDataSource;
    DSMovOTJueves: TDataSource;
    DSMovOTViernes: TDataSource;
    dbmDetalle: TDBRichEdit;
    dbeNombre: TDBEdit;
    dbeProducto: TDBEdit;
    dbeDescripcion: TDBEdit;
    BuscarOT: TAction;
    Label8: TLabel;
    Label9: TLabel;
    UpDown1: TUpDown;
    Label11: TLabel;
    pcDetalles: TPageControl;
    Pag1: TTabSheet;
    sbSemana: TScrollBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    dbgLunes: TDBGrid;
    dbgMartes: TDBGrid;
    dbgMiercoles: TDBGrid;
    dbgJueves: TDBGrid;
    dbgViernes: TDBGrid;
    Pag2: TTabSheet;
    DBChart1: TDBChart;
    Series2: TGanttSeries;
    TeeFunction1: TAddTeeFunction;
    Series1: TGanttSeries;
    TeeFunction2: TAddTeeFunction;
    Series3: TGanttSeries;
    TeeFunction3: TAddTeeFunction;
    Series4: TGanttSeries;
    TeeFunction4: TAddTeeFunction;
    Series5: TGanttSeries;
    TeeFunction5: TAddTeeFunction;
    dbgSabado: TDBGrid;
    dbgDomingo: TDBGrid;
    Label10: TLabel;
    DBText6: TDBText;
    Label12: TLabel;
    DBText7: TDBText;
    CDSMovOTSabado: TClientDataSet;
    DSMovOTSabado: TDataSource;
    CDSMovOTDomingo: TClientDataSet;
    DSMovOTDomingo: TDataSource;
    Series6: TGanttSeries;
    TeeFunction6: TAddTeeFunction;
    Series7: TGanttSeries;
    TeeFunction7: TAddTeeFunction;
    QMovOT_Borrar: TSQLQuery;
    CDSMovOTLunesDETALLE: TMemoField;
    CDSMovOTLunesDIA: TSmallintField;
    CDSMovOTLunesNROCPBTE: TStringField;
    CDSMovOTLunesCODIGO: TStringField;
    CDSMovOTLunesPRODUCTO: TIntegerField;
    CDSMovOTLunesNOMBRE: TStringField;
    CDSMovOTLunesOPERARIO: TStringField;
    CDSMovOTLunesIDENTIFICADOR: TStringField;
    CDSMovOTLunesDESCRIPCION: TStringField;
    CDSMovOTLunesID_OTCAB: TIntegerField;
    CDSMovOTMartesDETALLE: TMemoField;
    CDSMovOTMartesDIA: TSmallintField;
    CDSMovOTMartesNROCPBTE: TStringField;
    CDSMovOTMartesCODIGO: TStringField;
    CDSMovOTMartesPRODUCTO: TIntegerField;
    CDSMovOTMartesNOMBRE: TStringField;
    CDSMovOTMartesOPERARIO: TStringField;
    CDSMovOTMartesIDENTIFICADOR: TStringField;
    CDSMovOTMartesDESCRIPCION: TStringField;
    CDSMovOTMartesID_OTCAB: TIntegerField;
    CDSMovOTMiercolesDETALLE: TMemoField;
    CDSMovOTMiercolesDIA: TSmallintField;
    CDSMovOTMiercolesNROCPBTE: TStringField;
    CDSMovOTMiercolesCODIGO: TStringField;
    CDSMovOTMiercolesPRODUCTO: TIntegerField;
    CDSMovOTMiercolesNOMBRE: TStringField;
    CDSMovOTMiercolesOPERARIO: TStringField;
    CDSMovOTMiercolesIDENTIFICADOR: TStringField;
    CDSMovOTMiercolesDESCRIPCION: TStringField;
    CDSMovOTMiercolesID_OTCAB: TIntegerField;
    CDSMovOTJuevesDETALLE: TMemoField;
    CDSMovOTJuevesDIA: TSmallintField;
    CDSMovOTJuevesNROCPBTE: TStringField;
    CDSMovOTJuevesCODIGO: TStringField;
    CDSMovOTJuevesPRODUCTO: TIntegerField;
    CDSMovOTJuevesNOMBRE: TStringField;
    CDSMovOTJuevesOPERARIO: TStringField;
    CDSMovOTJuevesIDENTIFICADOR: TStringField;
    CDSMovOTJuevesDESCRIPCION: TStringField;
    CDSMovOTJuevesID_OTCAB: TIntegerField;
    CDSMovOTViernesDETALLE: TMemoField;
    CDSMovOTViernesDIA: TSmallintField;
    CDSMovOTViernesNROCPBTE: TStringField;
    CDSMovOTViernesCODIGO: TStringField;
    CDSMovOTViernesPRODUCTO: TIntegerField;
    CDSMovOTViernesNOMBRE: TStringField;
    CDSMovOTViernesOPERARIO: TStringField;
    CDSMovOTViernesIDENTIFICADOR: TStringField;
    CDSMovOTViernesDESCRIPCION: TStringField;
    CDSMovOTViernesID_OTCAB: TIntegerField;
    CDSMovOTSabadoDETALLE: TMemoField;
    CDSMovOTSabadoDIA: TSmallintField;
    CDSMovOTSabadoNROCPBTE: TStringField;
    CDSMovOTSabadoCODIGO: TStringField;
    CDSMovOTSabadoPRODUCTO: TIntegerField;
    CDSMovOTSabadoNOMBRE: TStringField;
    CDSMovOTSabadoOPERARIO: TStringField;
    CDSMovOTSabadoIDENTIFICADOR: TStringField;
    CDSMovOTSabadoDESCRIPCION: TStringField;
    CDSMovOTSabadoID_OTCAB: TIntegerField;
    CDSMovOTDomingoDETALLE: TMemoField;
    CDSMovOTDomingoDIA: TSmallintField;
    CDSMovOTDomingoNROCPBTE: TStringField;
    CDSMovOTDomingoCODIGO: TStringField;
    CDSMovOTDomingoPRODUCTO: TIntegerField;
    CDSMovOTDomingoNOMBRE: TStringField;
    CDSMovOTDomingoOPERARIO: TStringField;
    CDSMovOTDomingoIDENTIFICADOR: TStringField;
    CDSMovOTDomingoDESCRIPCION: TStringField;
    CDSMovOTDomingoID_OTCAB: TIntegerField;
    QPersonal_Borrar: TSQLQuery;
    CDSBuscaPersonal: TClientDataSet;
    DSPBuscaPersonal: TDataSetProvider;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    CDSMovOTMartesTIEMPO: TDateTimeField;
    CDSMovOTLunesTIEMPO: TDateTimeField;
    CDSMovOTMiercolesTIEMPO: TDateTimeField;
    CDSMovOTViernesTIEMPO: TDateTimeField;
    CDSMovOTSabadoTIEMPO: TDateTimeField;
    CDSMovOTDomingoTIEMPO: TDateTimeField;
    CDSMovOTJuevesTIEMPO: TDateTimeField;
    ceEmpleado: TJvComboEdit;
    Desde: TJvDateEdit;
    ComBuscadorEmpleados: TComBuscador;
    QMovOT: TFDQuery;
    CDSMovOTLunesFECHA: TSQLTimeStampField;
    CDSMovOTLunesHORAINICIO: TSQLTimeStampField;
    CDSMovOTLunesHORAFINAL: TSQLTimeStampField;
    CDSMovOTMartesFECHA: TSQLTimeStampField;
    CDSMovOTMartesHORAINICIO: TSQLTimeStampField;
    CDSMovOTMartesHORAFINAL: TSQLTimeStampField;
    CDSMovOTMiercolesFECHA: TSQLTimeStampField;
    CDSMovOTMiercolesHORAINICIO: TSQLTimeStampField;
    CDSMovOTMiercolesHORAFINAL: TSQLTimeStampField;
    CDSMovOTJuevesFECHA: TSQLTimeStampField;
    CDSMovOTJuevesHORAINICIO: TSQLTimeStampField;
    CDSMovOTJuevesHORAFINAL: TSQLTimeStampField;
    CDSMovOTViernesFECHA: TSQLTimeStampField;
    CDSMovOTViernesHORAINICIO: TSQLTimeStampField;
    CDSMovOTViernesHORAFINAL: TSQLTimeStampField;
    CDSMovOTSabadoFECHA: TSQLTimeStampField;
    CDSMovOTSabadoHORAINICIO: TSQLTimeStampField;
    CDSMovOTSabadoHORAFINAL: TSQLTimeStampField;
    CDSMovOTDomingoFECHA: TSQLTimeStampField;
    CDSMovOTDomingoHORAINICIO: TSQLTimeStampField;
    CDSMovOTDomingoHORAFINAL: TSQLTimeStampField;
    QPersonal: TFDQuery;
    QPersonalCODIGO: TStringField;
    QPersonalNOMBRE: TStringField;
    procedure BuscaEmpleadoExecute(Sender: TObject);
    procedure ceEmpleadoKeyPress(Sender: TObject; var Key: Char);
    procedure ceEmpleadoButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgLunesEnter(Sender: TObject);
    procedure dbgMartesEnter(Sender: TObject);
    procedure dbgMiercolesEnter(Sender: TObject);
    procedure dbgJuevesEnter(Sender: TObject);
    procedure dbgViernesEnter(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure BuscarOTExecute(Sender: TObject);
    procedure dbgLunesDblClick(Sender: TObject);
    procedure dbgMartesDblClick(Sender: TObject);
    procedure dbgMiercolesDblClick(Sender: TObject);
    procedure dbgJuevesDblClick(Sender: TObject);
    procedure dbgViernesDblClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSMovOTLunesCalcFields(DataSet: TDataSet);
    procedure CDSMovOTMartesCalcFields(DataSet: TDataSet);
    procedure CDSMovOTMiercolesCalcFields(DataSet: TDataSet);
    procedure CDSMovOTJuevesCalcFields(DataSet: TDataSet);
    procedure CDSMovOTViernesCalcFields(DataSet: TDataSet);
    procedure DesdeClick(Sender: TObject);
    procedure dbgSabadoDblClick(Sender: TObject);
    procedure dbgDomingoDblClick(Sender: TObject);
    procedure dbgSabadoEnter(Sender: TObject);
    procedure dbgDomingoEnter(Sender: TObject);
    procedure CDSMovOTSabadoCalcFields(DataSet: TDataSet);
    procedure CDSMovOTDomingoCalcFields(DataSet: TDataSet);
    procedure DBChart1ClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    Indice:String;
  end;

var
  FormListadoOTrabajoEmpleados: TFormListadoOTrabajoEmpleados;

implementation

uses UOrdenDeTrabajo,DMBuscadoresForm,UDmain_FD;

{$R *.DFM}

procedure TFormListadoOTrabajoEmpleados.BuscaEmpleadoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.Open;
  comBuscadorEmpleados.Execute;
  if comBuscadorEmpleados.rOk then
    BEGIN
      ceEmpleado.Text :=comBuscadorEmpleados.Id;
      QPersonal.Close;
      QPersonal.ParamByName('Codigo').Value := comBuscadorEmpleados.Id;
      QPersonal.Open;
      IF NOT (QPersonal.eof) THEN
        BEGIN
          edNombreCliente.Text := QPersonalNOMBRE.Value;
          Buscar.Execute;
          //TraerCtaCte.Execute;
          ceEmpleado.SetFocus;
          ceEmpleado.SelectAll;
        END;
      QPersonal.Close;
    END;
  CDSBuscaPersonal.Close;
end;

procedure TFormListadoOTrabajoEmpleados.ceEmpleadoKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceEmpleado.Text))) + ceEmpleado.Text;
      ceEmpleado.Text := Dato;
      QPersonal.Close;
      QPersonal.ParamByName('Codigo').Value := Dato;
      QPersonal.Open;
      IF NOT(QPersonal.eof) THEN
        begin
          edNombreCliente.Text := QPersonalNOMBRE.Value;
          Buscar.Execute;
          ceEmpleado.SetFocus;
          ceEmpleado.SelectAll;
        END
      else
        begin
          ceEmpleado.Text:='';
          edNombreCliente.Text :='' ;
        end;
    END;
END;

procedure TFormListadoOTrabajoEmpleados.ceEmpleadoButtonClick(Sender: TObject);
begin
  inherited;
  BuscaEmpleado.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TJvComboEdit) Then
  inherited;

end;

procedure TFormListadoOTrabajoEmpleados.FormShow(Sender: TObject);
begin
  inherited;
  Desde.Date:=Date;
end;

procedure TFormListadoOTrabajoEmpleados.BuscarExecute(Sender: TObject);
Var Des,Has:TDate;
I:Byte;
begin
  inherited;
  if ceEmpleado.Text<>'' Then
    begin
      Des:=Desde.Date;
      i:=DayOfWeek(Desde.Date)-1;
      if i>1 Then
        des:=Desde.Date-(i-1)
      else
        if i=0 Then
          Des:=Desde.Date+1; //por que es domingo
      has:=des+7;
      CDSMovOTLunes.Close;
      CDSMovOTMartes.Close;
      CDSMovOTMiercoles.Close;
      CDSMovOTJueves.Close;
      CDSMovOTViernes.Close;
      CDSMovOTSabado.Close;
      CDSMovOTDomingo.Close;

      CDSMovOTLunes.Params.ParamByName('Operador').AsString    :=ceEmpleado.Text;
      CDSMovOTMartes.Params.ParamByName('Operador').AsString   :=ceEmpleado.Text;
      CDSMovOTMiercoles.Params.ParamByName('Operador').AsString:=ceEmpleado.Text;
      CDSMovOTJueves.Params.ParamByName('Operador').AsString   :=ceEmpleado.Text;
      CDSMovOTViernes.Params.ParamByName('Operador').AsString  :=ceEmpleado.Text;
      CDSMovOTSabado.Params.ParamByName('Operador').AsString   :=ceEmpleado.Text;
      CDSMovOTDomingo.Params.ParamByName('Operador').AsString  :=ceEmpleado.Text;

      CDSMovOTLunes.Params.ParamByName('Desde').AsDate         :=Des;
      CDSMovOTMartes.Params.ParamByName('Desde').AsDate        :=Des;
      CDSMovOTMiercoles.Params.ParamByName('Desde').AsDate     :=Des;
      CDSMovOTJueves.Params.ParamByName('Desde').AsDate        :=Des;
      CDSMovOTViernes.Params.ParamByName('Desde').AsDate       :=Des;
      CDSMovOTSabado.Params.ParamByName('Desde').AsDate        :=Des;
      CDSMovOTDomingo.Params.ParamByName('Desde').AsDate       :=Des;

      CDSMovOTLunes.Params.ParamByName('Hasta').AsDate         :=has;
      CDSMovOTMartes.Params.ParamByName('Hasta').AsDate        :=has;
      CDSMovOTMiercoles.Params.ParamByName('Hasta').AsDate     :=has;
      CDSMovOTJueves.Params.ParamByName('Hasta').AsDate        :=has;
      CDSMovOTViernes.Params.ParamByName('Hasta').AsDate       :=has;
      CDSMovOTSabado.Params.ParamByName('Hasta').AsDate        :=has;
      CDSMovOTDomingo.Params.ParamByName('Hasta').AsDate       :=has;

      CDSMovOTLunes.Open;
      CDSMovOTMartes.Open;
      CDSMovOTMiercoles.Open;
      CDSMovOTJueves.Open;
      CDSMovOTViernes.Open;
      CDSMovOTSabado.Open;
      CDSMovOTDomingo.Open;

    end;
  if pcDetalles.ActivePageIndex=0 Then
    dbgLunes.SetFocus;
end;

procedure TFormListadoOTrabajoEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSMovOTLunes.Close;
  CDSMovOTMartes.Close;
  CDSMovOTMiercoles.Close;
  CDSMovOTJueves.Close;
  CDSMovOTViernes.Close;
  CDSMovOTSabado.Close;
  CDSMovOTDomingo.Close;

  QPersonal.Close;
  Action:=caFree;
end;

procedure TFormListadoOTrabajoEmpleados.FormCreate(Sender: TObject);
begin
  inherited;
  pcDetalles.ActivePageIndex:=0;
  AutoSize:=False;
end;

procedure TFormListadoOTrabajoEmpleados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoOTrabajoEmpleados:=nil;
end;

procedure TFormListadoOTrabajoEmpleados.dbgLunesEnter(Sender: TObject);
begin
  inherited;
  dbeNombre.DataSource     :=DSMovOTLunes;
  dbeProducto.DataSource   :=DSMovOTLunes;
  dbeDescripcion.DataSource:=DSMovOTLunes;
  dbmDetalle.DataSource    :=DSMovOTLunes;
end;

procedure TFormListadoOTrabajoEmpleados.dbgMartesEnter(Sender: TObject);
begin
  inherited;
  dbeNombre.DataSource     :=DSMovOTMartes;
  dbeProducto.DataSource   :=DSMovOTMartes;
  dbeDescripcion.DataSource:=DSMovOTMartes;
  dbmDetalle.DataSource    :=DSMovOTMartes;
end;

procedure TFormListadoOTrabajoEmpleados.dbgMiercolesEnter(Sender: TObject);
begin
  inherited;
  dbeNombre.DataSource     :=DSMovOTMiercoles;
  dbeProducto.DataSource   :=DSMovOTMiercoles;
  dbeDescripcion.DataSource:=DSMovOTMiercoles;
  dbmDetalle.DataSource    :=DSMovOTMiercoles;
end;

procedure TFormListadoOTrabajoEmpleados.dbgJuevesEnter(Sender: TObject);
begin
  inherited;
  dbeNombre.DataSource     :=DSMovOTJueves;
  dbeProducto.DataSource   :=DSMovOTjueves;
  dbeDescripcion.DataSource:=DSMovOTJueves;
  dbmDetalle.DataSource    :=DSMovOTJueves;
end;

procedure TFormListadoOTrabajoEmpleados.dbgViernesEnter(Sender: TObject);
begin
  inherited;
  dbeNombre.DataSource     :=DSMovOTViernes;
  dbeProducto.DataSource   :=DSMovOTViernes;
  dbeDescripcion.DataSource:=DSMovOTViernes;
  dbmDetalle.DataSource    :=DSMovOTViernes;
end;

procedure TFormListadoOTrabajoEmpleados.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.BuscarOTExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormOrdenDeTrabajo)) Then
  FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(Application);
  FormOrdenDeTrabajo.TipoCpbte:='OT';
  FormOrdenDeTrabajo.DatoNew:=Indice;
  FormOrdenDeTrabajo.Recuperar.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgLunesDblClick(Sender: TObject);
begin
  inherited;
  Indice:=IntToStr(dbgLunes.DataSource.DataSet.fieldByName('id_otcab').Value);
  BuscarOT.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgMartesDblClick(Sender: TObject);
begin
  inherited;
  Indice:=IntToStr(dbgMartes.DataSource.DataSet.fieldByName('id_otcab').Value);
  BuscarOT.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgMiercolesDblClick(
  Sender: TObject);
begin
  inherited;
  Indice:=IntToStr(dbgMiercoles.DataSource.DataSet.fieldByName('id_otcab').Value);
  BuscarOT.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgJuevesDblClick(Sender: TObject);
begin
  inherited;
  Indice:=IntToStr(dbgJueves.DataSource.DataSet.fieldByName('id_otcab').Value);
  BuscarOT.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgViernesDblClick(
  Sender: TObject);
begin
  inherited;
  Indice:=IntToStr(dbgViernes.DataSource.DataSet.fieldByName('id_otcab').Value);
  BuscarOT.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date:=Desde.Date+7
  else
    if Button=btPrev Then
      Desde.Date:=Desde.Date-7;
  Buscar.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.CDSMovOTLunesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovOTLunesTIEMPO.AsDateTime:=(frac(CDSMovOTLunesHORAFINAL.AsDateTime)*24)-(frac(CDSMovOTLunesHORAINICIO.AsDateTime)*24);
end;

procedure TFormListadoOTrabajoEmpleados.CDSMovOTMartesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovOTMartesTIEMPO.AsDateTime:=(frac(CDSMovOTMartesHORAFINAL.AsDateTime)*24)-(frac(CDSMovOTMartesHORAINICIO.AsDateTime)*24);
end;

procedure TFormListadoOTrabajoEmpleados.CDSMovOTMiercolesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovOTMiercolesTIEMPO.AsDateTime:=(frac(CDSMovOTMiercolesHORAFINAL.AsDateTime)*24)-(frac(CDSMovOTMiercolesHORAINICIO.AsDAteTime)*24);
end;

procedure TFormListadoOTrabajoEmpleados.CDSMovOTJuevesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovOTJuevesTIEMPO.AsDateTime:=(frac(CDSMovOTJuevesHORAFINAL.AsDAteTime)*24)-(frac(CDSMovOTJuevesHORAINICIO.AsDAteTime)*24);
end;

procedure TFormListadoOTrabajoEmpleados.CDSMovOTViernesCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovOTViernesTIEMPO.AsDAteTime:=(frac(CDSMovOTViernesHORAFINAL.AsDateTime)*24)-(frac(CDSMovOTViernesHORAINICIO.AsDAteTime)*24);
end;

procedure TFormListadoOTrabajoEmpleados.DesdeClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgSabadoDblClick(Sender: TObject);
begin
  inherited;
  Indice:=IntToStr(dbgSabado.DataSource.DataSet.fieldByName('id_otcab').Value);
  BuscarOT.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgDomingoDblClick(
  Sender: TObject);
begin
  inherited;
  Indice:=IntToStr(dbgDomingo.DataSource.DataSet.fieldByName('id_otcab').Value);
  BuscarOT.Execute;
end;

procedure TFormListadoOTrabajoEmpleados.dbgSabadoEnter(Sender: TObject);
begin
  inherited;
  dbeNombre.DataSource     :=DSMovOTSabado;
  dbeProducto.DataSource   :=DSMovOTSabado;
  dbeDescripcion.DataSource:=DSMovOTSabado;
  dbmDetalle.DataSource    :=DSMovOTSabado;
end;

procedure TFormListadoOTrabajoEmpleados.dbgDomingoEnter(Sender: TObject);
begin
  inherited;
  dbeNombre.DataSource     :=DSMovOTDomingo;
  dbeProducto.DataSource   :=DSMovOTDomingo;
  dbeDescripcion.DataSource:=DSMovOTDomingo;
  dbmDetalle.DataSource    :=DSMovOTDomingo;
end;

procedure TFormListadoOTrabajoEmpleados.CDSMovOTSabadoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovOTSabadoTIEMPO.AsDateTime:=(frac(CDSMovOTSabadoHORAFINAL.AsDateTime)*24)-(frac(CDSMovOTSabadoHORAINICIO.AsDateTime)*24);
end;

procedure TFormListadoOTrabajoEmpleados.CDSMovOTDomingoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovOTDomingoTIEMPO.AsDateTime:=(frac(CDSMovOTDomingoHORAFINAL.asDateTime)*24)-(frac(CDSMovOTDomingoHORAINICIO.AsDateTime)*24);
end;

procedure TFormListadoOTrabajoEmpleados.DBChart1ClickSeries(
  Sender: TCustomChart; Series: TChartSeries; ValueIndex: Integer;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ShowMessage('Esta serie pertenece al :'+Series.Title);
end;

end.