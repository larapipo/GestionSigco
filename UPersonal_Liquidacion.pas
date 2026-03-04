unit UPersonal_Liquidacion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ImgList, Provider, DBClient, Db,
  ActnList, ComCtrls, StdCtrls, Buttons, ToolWin, ExtCtrls, Grids, DBGrids,
  DBCtrls, Mask, IBGenerator, DateUtils,
  Menus, JvExControls, JvButton, JvTransparentButton, JvDBLookup,
  JvExDBGrids, JvDBGrid, JvExMask, JvToolEdit, JvDBControls, frxClass, frxDBSet,
  frxDesgn, Milib, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlueprint, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  JvLabel, Data.FMTBcd, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, JvGradient, AdvUtil, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, frCoreClasses;

type
  TFormPersonalliquidacion = class(TFormABMBase)
    pnLiquidacion: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbeId: TDBEdit;
    dbePeriodo: TDBEdit;
    dbchCerrada: TDBCheckBox;
    pnDetalle: TPanel;
    BitBtn3: TBitBtn;
    DSTipoLiquidacion: TDataSource;
    DSLstEmpleados: TDataSource;
    TraerEmpleados: TAction;
    SpeedButton1: TSpeedButton;
    SelectAll: TAction;
    SpeedButton2: TSpeedButton;
    UnSelect: TAction;
    Liquidar: TAction;
    CancelaLiq: TAction;
    Imprimir: TAction;
    BitBtn4: TBitBtn;
    dbgHorasTrabajadas: TDBGrid;
    UpDown2: TUpDown;
    Label3: TLabel;
    DSCategorias: TDataSource;
    dbgProduccion: TDBGrid;
    Label4: TLabel;
    DSLugar: TDataSource;
    btnConsultar: TSpeedButton;
    pmSubMenu: TPopupMenu;
    actMarcarLiquidad: TAction;
    actMarcarLiquidad1: TMenuItem;
    dbcTipo: TJvDBLookupCombo;
    dbcCategorias: TJvDBLookupCombo;
    RxDBLookupCombo1: TJvDBLookupCombo;
    Desde: TJvDBDateEdit;
    Hasta: TJvDBDateEdit;
    dbeFecha: TJvDBDateEdit;
    frxReport: TfrxReport;
    frRecibo: TfrxDBDataset;
    frDetalle: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    chPreview: TCheckBox;
    ToolButton1: TToolButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    frProduccion: TfrxDBDataset;
    JvDBStatusLabel1: TJvDBStatusLabel;
    pnListadoRc: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    BitBtn5: TBitBtn;
    pgcDetalles: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbgrd1: TDBGrid;
    ts3: TTabSheet;
    dbgrd2: TDBGrid;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    dbgEmpleados: TDBGrid;
    DSPLstEmpleados: TDataSetProvider;
    CDSLstEmpleados: TClientDataSet;
    CDSLstEmpleadosCODIGO: TStringField;
    CDSLstEmpleadosNOMBRE: TStringField;
    CDSLstEmpleadosDOMICILIO: TStringField;
    CDSLstEmpleadosCATEGORIA: TIntegerField;
    CDSLstEmpleadosFECHA_INGRESO: TSQLTimeStampField;
    CDSLstEmpleadosCUIL: TStringField;
    CDSLstEmpleadosSUELDO_BASICO: TFloatField;
    DSHorasTrabajadas: TDataSource;
    CDSLstEmpleadosMUESTRACATEGORIA: TStringField;
    pnCab: TPanel;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1NETO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACATEGORIA: TcxGridDBColumn;
    DBAdvGrid1: TDBAdvGrid;
    QBuscadorLiquidacion: TFDQuery;
    QBuscadorLiquidacionFECHALIQUIDACION: TSQLTimeStampField;
    QBuscadorLiquidacionDESDE: TSQLTimeStampField;
    QBuscadorLiquidacionHASTA: TSQLTimeStampField;
    QBuscadorLiquidacionPERIODO: TStringField;
    QBuscadorLiquidacionMUESTRATIPOLIQUIDACION: TStringField;
    QBuscadorLiquidacionID: TIntegerField;
    frEmpresa: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure TraerEmpleadosExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure SelectAllExecute(Sender: TObject);
    procedure UnSelectExecute(Sender: TObject);
    procedure LiquidarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CancelaLiqExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSEmpleadosBeforeEdit(DataSet: TDataSet);
    procedure DSRecibosStateChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbcCategoriasClick(Sender: TObject);
    procedure BSiguienteClick(Sender: TObject);
    procedure BAnteriorClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure CDSRecibosAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure CDSRecibosBeforeDelete(DataSet: TDataSet);
    procedure dbgEmpleadosDblClick(Sender: TObject);
    procedure CDSLstEmpleadosAfterScroll(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    procedure AgregarRecibo(CodEmpleado:String);
    procedure ArmarCabeceraRecibo;
    procedure AgregarConceptosRecibo;
    procedure AgregarNovedades;
    procedure IngresarBasico;
    function CalculaAntiguedad(Antiguedad:Integer):Extended;
    { Public declarations }
  end;

var
  FormPersonalliquidacion: TFormPersonalliquidacion;

implementation

uses UDMain_fd,DMLiquidacionSueldos, UPersonal;

{$R *.DFM}


procedure TFormPersonalliquidacion.ArmarCabeceraRecibo;
begin
  DatosLiquidacionSueldo.CDSRecibos.Append;
  DatosLiquidacionSueldo.CDSRecibosFECHA.AsDateTime            := DatosLiquidacionSueldo.CDSLiquidacionFECHALIQUIDACION.AsDateTime;
  DatosLiquidacionSueldo.CDSRecibosIDLIQUIDACION.Value         := DatosLiquidacionSueldo.CDSLiquidacionID.Value;

  DatosLiquidacionSueldo.CDSRecibosEMPLEADO.Value              := DatosLiquidacionSueldo.CDSEmpleadoCODIGO.Value;

  if DatosLiquidacionSueldo.CDSEmpleadoLEGAJO.AsString<>'' then
    DatosLiquidacionSueldo.CDSRecibosLEGAJO.Value              := StrToInt(DatosLiquidacionSueldo.CDSEmpleadoLEGAJO.Value)
  else
    DatosLiquidacionSueldo.CDSRecibosLEGAJO.Value:=0;

  DatosLiquidacionSueldo.CDSRecibosNOMBRE.Value                := DatosLiquidacionSueldo.CDSEmpleadoNOMBRE.Value;
  DatosLiquidacionSueldo.CDSRecibosCATEGORIA.Value             := DatosLiquidacionSueldo.CDSEmpleadoCATEGORIA.Value;
  DatosLiquidacionSueldo.CDSRecibosMUESTRACATEGORIA.Value      := DatosLiquidacionSueldo.CDSEmpleadoMUESTRACATEGORIA.Value;

  DatosLiquidacionSueldo.CDSRecibosINGRESO.Value               := DatosLiquidacionSueldo.CDSEmpleadoFECHA_INGRESO.Value;
  DatosLiquidacionSueldo.CDSRecibosSECCION.Value               := 0;//DatosLiquidacionSueldo.CDSEmpleadosSECCION.Value;
  DatosLiquidacionSueldo.CDSRecibosVALORHORA.Value             := 0;
  DatosLiquidacionSueldo.CDSRecibosDIRECCIONEMPLEADO.Value     := DatosLiquidacionSueldo.CDSEmpleadoDOMICILIO.Value;
  DatosLiquidacionSueldo.CDSRecibosIDEMPLEADOR.Value           := 1;//CDSBaseID_EMPLEADOR.Value;
  DatosLiquidacionSueldo.CDSRecibosPERIODO.Value               := DSBase.DataSet.FieldByName('PERIODO').AsString;

  DatosLiquidacionSueldo.CDSRecibosCUIL_EMPLEADO.Value         := DatosLiquidacionSueldo.CDSEmpleadoCUIL.Value;
  DatosLiquidacionSueldo.CDSRecibosDESDE.AsDateTime            := Desde.Date;
  DatosLiquidacionSueldo.CDSRecibosHASTA.AsDateTime            := Hasta.Date;
  DatosLiquidacionSueldo.CDSRecibosTIPO_LIQUIDACION.Value      := DatosLiquidacionSueldo.CDSLiquidacionTIPOLIQUIDACION.Value;
  DatosLiquidacionSueldo.CDSRecibosMUESTRATIPOLIQUIDACION.Value:= dbctipo.text;// CDSLiquidacionTIPOLIQUIDACION.Value;
end;

procedure TFormPersonalliquidacion.AgregarConceptosRecibo;
begin
  DatosLiquidacionSueldo.CDSConceptosCategorias.Close;
  DatosLiquidacionSueldo.CDSConceptosCategorias.Params.ParamByName('idcategoria').Value:=DatosLiquidacionSueldo.CDSRecibosCATEGORIA.Value;
  DatosLiquidacionSueldo.CDSConceptosCategorias.Open;
  DatosLiquidacionSueldo.CDSConceptosCategorias.IndexFieldNames:='RENGLON';
  DatosLiquidacionSueldo.CDSRecibosBASICO.Value                := DatosLiquidacionSueldo.CDSCategoriaSUELDO_BASICO.AsFloat;
  if DSBase.DataSet.FieldByName('TIPOLIQUIDACION').Value>1 then
    begin
      DatosLiquidacionSueldo.CDSConceptosCategorias.Filter  :='IDCONCEPTO < 10';
      DatosLiquidacionSueldo.CDSConceptosCategorias.Filtered:=True;
    end
  else
    begin
      DatosLiquidacionSueldo.CDSConceptosCategorias.Filtered:=False;
      DatosLiquidacionSueldo.CDSConceptosCategorias.Filter  :='';
    end;

  // aca cargo los renglones del recibo de los conceptos a liquidar
  DatosLiquidacionSueldo.CDSConceptosCategorias.First;
  while not (DatosLiquidacionSueldo.CDSConceptosCategorias.Eof) do
    begin
      DatosLiquidacionSueldo.CDSDetalleRecibo.Append;
      DatosLiquidacionSueldo.CDSDetalleReciboID.Value                 := DatosLiquidacionSueldo.ibgId_detalle.IncrementFD(1);
      DatosLiquidacionSueldo.CDSDetalleReciboIDRECIBO.Value           := DatosLiquidacionSueldo.CDSRecibosID.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value         := DatosLiquidacionSueldo.CDSConceptosCategoriasIDCONCEPTO.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboCONCEPTO.Value           := DatosLiquidacionSueldo.CDSConceptosCategoriasCONCEPTO.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value           := DatosLiquidacionSueldo.CDSConceptosCategoriasPORCENTAJE.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value       := 0;
      DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value := 0;
      DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value          := 0;
      DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value               := DatosLiquidacionSueldo.CDSConceptosCategoriasTIPO_CONCEPTO.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value            := DatosLiquidacionSueldo.CDSConceptosCategoriasIMPORTE.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value         := DatosLiquidacionSueldo.CDSConceptosCategoriasPORCENTAJE.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value               := 0;//DatosLiquidacionSueldo.CDSRecibosBASICO.AsFloat;

      DatosLiquidacionSueldo.QConcepto.Close;
      DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value        := DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
      DatosLiquidacionSueldo.QConcepto.Open;
      DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value            := DatosLiquidacionSueldo.QConceptoCALCULO.Value;
      DatosLiquidacionSueldo.QConcepto.Close;

      DatosLiquidacionSueldo.CDSDetalleRecibo.Post;
      DatosLiquidacionSueldo.CDSConceptosCategorias.Next;
    end;
  DatosLiquidacionSueldo.CDSConceptosCategorias.Close;
end;

procedure TFormPersonalliquidacion.AgregarNovedades;
begin
  DatosLiquidacionSueldo.QNovedades.Close;
  DatosLiquidacionSueldo.QNovedades.ParamByName('empleado').Value:=DatosLiquidacionSueldo.CDSRecibosEMPLEADO.Value;
  DatosLiquidacionSueldo.QNovedades.Open;
  DatosLiquidacionSueldo.QNovedades.First;
  while not (DatosLiquidacionSueldo.QNovedades.Eof) do
    begin
      DatosLiquidacionSueldo.CDSDetalleRecibo.Append;
      DatosLiquidacionSueldo.CDSDetalleReciboID.Value                 := DatosLiquidacionSueldo.ibgId_detalle.IncrementFD(1);
      DatosLiquidacionSueldo.CDSDetalleReciboIDRECIBO.Value           := DatosLiquidacionSueldo.CDSRecibosID.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value         := DatosLiquidacionSueldo.QNovedadesIDCONCEPTO.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboCONCEPTO.Value           := DatosLiquidacionSueldo.QNovedadesCONCEPTO.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value           := DatosLiquidacionSueldo.QNovedadesCANTIDAD.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value       := 0;
      DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value := 0;
      DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value          := 0;
      DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value               := DatosLiquidacionSueldo.QNovedadesTIPO_CONCEPTO.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value            := DatosLiquidacionSueldo.QNovedadesIMPORTE.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value         := DatosLiquidacionSueldo.QNovedadesPORCENTAJE.Value;
      DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value               := DatosLiquidacionSueldo.QNovedadesIMPORTE.Value;

      DatosLiquidacionSueldo.QConcepto.Close;
      DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value        := DatosLiquidacionSueldo.QNovedadesIDCONCEPTO.Value;
      DatosLiquidacionSueldo.QConcepto.Open;

      DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value            := DatosLiquidacionSueldo.QConceptoCALCULO.Value;

      DatosLiquidacionSueldo.CDSDetalleRecibo.Post;
      DatosLiquidacionSueldo.QNovedades.Next;
    end;
end;


procedure TFormPersonalLiquidacion.IngresarBasico;
var
  TotalProduccion,TotalHoras:Extended;
  horas,minutos             :Integer;
const M60=60;
begin
   //*******************************************************************************
  if DatosLiquidacionSueldo.CDSDetalleRecibo.Locate('Tipo','SB',[]) Then // Sueldo Basico
    begin
      DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
      // Traigo el concpeto desde la tabla de conceptos
      DatosLiquidacionSueldo.CDSConceptosCategorias.Close;
      DatosLiquidacionSueldo.CDSConceptosCategorias.Params.ParamByName('idcategoria').Value:=DatosLiquidacionSueldo.CDSRecibosCATEGORIA.Value;
      DatosLiquidacionSueldo.CDSConceptosCategorias.Open;

      TotalProduccion:=0;

      if DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value='SB' Then //este debe ser el primero que es la remuneracion
        begin
          if (DatosLiquidacionSueldo.CDSConceptosCategoriasTIPO_LIQUIDACION.Value=1) Then // Sueldo Basico
            begin
              if DSBase.DataSet.FieldByName('TIPOLIQUIDACION').Value<=1 then
                begin
                  DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value     := DatosLiquidacionSueldo.CDSConceptosCategoriasSUELDO_BASICO.Value;
                  DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value    := 1;

                  DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value;
                  DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value +
                                                                              DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
                  DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value        := DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value;
                end
              else  //SAC
                begin
                  DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value     := 0;//DatosLiquidacionSueldo.CDSEmpleadosIMPORTESAC.Value;
                  DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value    := 1;

                  DatosLiquidacionSueldo.CDSDetalleReciboCONCEPTO.Value    :='SAC';
                  DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value;
                  DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value+DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
                  DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value        := DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value;

                end
             end
          else
            if (DatosLiquidacionSueldo.CDSConceptosCategoriasTIPO_LIQUIDACION.Value=2) Then // Sueldo x Hora o Produccion
              begin
                Horas:=0;   Minutos:=0;  TotalHoras:=0;
                DatosLiquidacionSueldo.QHoras.Close;
                DatosLiquidacionSueldo.QHoras.ParamByName('desde').Value  :=DESDE.Date;
                DatosLiquidacionSueldo.QHoras.ParamByName('hasta').Value  :=HASTA.Date;
                DatosLiquidacionSueldo.QHoras.ParamByName('codigo').Value :=DatosLiquidacionSueldo.CDSRecibosEMPLEADO.Value;
                DatosLiquidacionSueldo.QHoras.Open;
                while not(DatosLiquidacionSueldo.QHoras.eof) do
                  begin
                    horas  := Horas  +  Trunc(DatosLiquidacionSueldo.QHoras.Fields[0].AsFloat);
                    Minutos:= Minutos + ( (DatosLiquidacionSueldo.QHoras.Fields[0].Value) - int(DatosLiquidacionSueldo.QHoras.Fields[0].AsFloat)) ;
                    DatosLiquidacionSueldo.QHoras.Next;
                  end;
                DatosLiquidacionSueldo.QHoras.Close;
                Horas:=Horas + ( Minutos div 60);
                minutos:=(minutos mod m60) ;
                TotalHoras:=Horas+Minutos;

                DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value     := DatosLiquidacionSueldo.CDSConceptosCategoriasVALORHORA.Value;
                if DSBase.DataSet.FieldByName('ID_LUGAR').Value>-1 Then
                  DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value   := DatosLiquidacionSueldo.QLugarVALORHORA.Value;
                DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value    := TotalHoras;
                DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= DatosLiquidacionSueldo.CDSConceptosCategoriasVALORHORA.Value*TotalHoras;

                if DSBase.DataSet.FieldByName('ID_LUGAR').Value>-1 Then
                  DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= DatosLiquidacionSueldo.QLugarVALORHORA.Value*TotalHoras;

                DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value+DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
                DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value        := DatosLiquidacionSueldo.CDSConceptosCategoriasVALORHORA.Value;
              end
            else
              raise Exception.Create('Hay un error en el tipo de concpeto de remuneracion....');

            DatosLiquidacionSueldo.QProduccion.Close;
            DatosLiquidacionSueldo.QProduccion.ParamByName('desde').Value  := DESDE.Date;
            DatosLiquidacionSueldo.QProduccion.ParamByName('hasta').Value  := HASTA.Date;
            DatosLiquidacionSueldo.QProduccion.ParamByName('codigo').Value := DatosLiquidacionSueldo.CDSRecibosEMPLEADO.Value;
            DatosLiquidacionSueldo.QProduccion.Open;
            while not(DatosLiquidacionSueldo.QProduccion.eof) do
              begin
                TotalProduccion:=TotalProduccion+DatosLiquidacionSueldo.QProduccionVALOR_TOTAL.Value;
                DatosLiquidacionSueldo.QProduccion.Next;
              end;
            DatosLiquidacionSueldo.QProduccion.Close;
            DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value     := DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value+TotalProduccion;
            DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value+TotalProduccion;
            DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value+TotalProduccion;
         end;
      DatosLiquidacionSueldo.CDSDetalleRecibo.Post;
    end;

end;

function TformPersonalLiquidacion.CalculaAntiguedad(Antiguedad:Integer):Extended;
begin
  Result :=0;
  DatosLiquidacionSueldo.CDSDetalleRecibo.First;

  while not(DatosLiquidacionSueldo.CDSDetalleRecibo.Eof) do
    begin
      if DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value='AT' Then //Si es Antiguedad
        begin
          if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='P' then
            begin //calculo por porcentaje
              DatosLiquidacionSueldo.QConcepto.Close;
              DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
              DatosLiquidacionSueldo.QConcepto.Open;
              DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
              DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value    := Antiguedad;
              DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= DatosLiquidacionSueldo.CDSRecibosBASICO.Value *
                                                                          DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value *
                                                                          0.01 *
                                                                          Antiguedad;
              Result                                                   := DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
              DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value +
                                                                          DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
              DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value        := DatosLiquidacionSueldo.CDSRecibosBASICO.Value;
            end;
        end;
      DatosLiquidacionSueldo.CDSDetalleRecibo.Next;
    end;

end;


Procedure TFormPersonalliquidacion.AgregarRecibo(CodEmpleado:String);
Var
 Total,ImporteTemporal,Importe,CantidadTemp:double;
 Antiguedad,horas,minutos:Integer;
 TotalHoras,TotalProduccion,ValorViaticoDia,DiasNoTrabajados :real;
 Puntero :TBookmark;
 MontoAntiguedad:Extended;
 Afiliado:Boolean;
 i:integer;

begin
  // pongo todos los valores al nuevo recibo
  DatosLiquidacionSueldo.CDSEmpleado.Close;
  DatosLiquidacionSueldo.CDSEmpleado.Params.ParamByName('codigo').Value := CodEmpleado;
  DatosLiquidacionSueldo.CDSEmpleado.Open;

  DatosLiquidacionSueldo.CDSCategoria.Close;
  DatosLiquidacionSueldo.CDSCategoria.Params.ParamByName('id').Value    :=  DatosLiquidacionSueldo.CDSEmpleadoCATEGORIA.Value;//dbcCategorias.KeyValue;//
  DatosLiquidacionSueldo.CDSCategoria.Open;

  ArmarCabeceraRecibo; /////////////////

  Afiliado                              := DatosLiquidacionSueldo.CDSEmpleadoAFILIADO.Value='S';
  Antiguedad                            := YearsBetween(DatosLiquidacionSueldo.CDSRecibosFECHA.AsDateTime,DatosLiquidacionSueldo.CDSRecibosINGRESO.AsDateTime);
  if Antiguedad<0 then Antiguedad:=0;
  DiasNoTrabajados  :=0;

  AgregarConceptosRecibo; /////////////////////

  if DSBase.DataSet.FieldByName('TIPOLIQUIDACION').Value<=1 then
    AgregarNovedades;

  IngresarBasico;

  MontoAntiguedad:=CalculaAntiguedad(Antiguedad);

   //************************************************************************************************************************
   DatosLiquidacionSueldo.CDSDetalleRecibo.First;
   while not(DatosLiquidacionSueldo.CDSDetalleRecibo.Eof) do
     begin
       if DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value='RM' Then //Si son Remunearcion
         begin
           if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='P' then
             begin //calculo por porcentaje (si es RT)
               DatosLiquidacionSueldo.QConcepto.Close;
               DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value := DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
               DatosLiquidacionSueldo.QConcepto.Open;

               DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
               // Adicional Por Nocturnidad...
               if DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value=26 then
                 DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= (((DatosLiquidacionSueldo.CDSRecibosBASICO.Value + MontoAntiguedad) *
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value*0.01)) *
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value
               else
                 DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= (((DatosLiquidacionSueldo.CDSRecibosBASICO.Value) *
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value * 0.01)) *
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value;

               DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value      := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value+DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
               DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value          := DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;

             end
           else
            if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='D' then
              begin //calculo Coeficiante de Division)
                DatosLiquidacionSueldo.QConcepto.Close;
                DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
                DatosLiquidacionSueldo.QConcepto.Open;

                Puntero:= DatosLiquidacionSueldo.CDSDetalleRecibo.GetBookmark;
                DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;

                if DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value<=30 then
                  BEGIN
                    DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= (DatosLiquidacionSueldo.CDSRecibosBASICO.Value /
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value) *
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.AsFloat;
                    ImporteTemporal := DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;

                    if DatosLiquidacionSueldo.CDSDetalleRecibo.Locate('Tipo','SB',[]) Then
                      begin
                         DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
                         DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value :=DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value -
                                                                                     ImporteTemporal;
                       end;

                    DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value        := DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;

                    DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value -
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;

                    DatosLiquidacionSueldo.CDSDetalleRecibo.GotoBookmark(Puntero);
                    DatosLiquidacionSueldo.CDSDetalleRecibo.FreeBookmark(Puntero);
                  end
                 ELSE
                   if DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value>30 then
                     BEGIN
                       DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= (DatosLiquidacionSueldo.CDSRecibosBASICO.Value/
                                                                                    DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value) *
                                                                                   DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.AsFloat;
                       DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value +
                                                                                   DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
                       DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value        := DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;

                     end
                   ELSE

                   if (DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value<30) AND (DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value>0) then // Por las Vacaciones
                     BEGIN
                       DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value := (DatosLiquidacionSueldo.CDSRecibosBASICO.Value/
                                                                                    DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value) *
                                                                                    DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.AsFloat;
                       ImporteTemporal:=DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
                       CantidadTemp   :=DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value;
                       if DatosLiquidacionSueldo.CDSDetalleRecibo.Locate('Tipo','SB',[]) Then
                         begin
                           DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
                           DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:=DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value-(CantidadTemp*(DatosLiquidacionSueldo.CDSRecibosBASICO.Value/30));
                         end;
                       DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value-DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;

                       DatosLiquidacionSueldo.CDSDetalleRecibo.GotoBookmark(Puntero);
                       DatosLiquidacionSueldo.CDSDetalleRecibo.FreeBookmark(Puntero);
                     end
                   ELSE
                     if (DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value<0) then // Ausencias - Faltas
                       BEGIN
                         DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value:= (DatosLiquidacionSueldo.CDSRecibosBASICO.Value/DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value)*DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.AsFloat;
                         DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value    := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value+DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
                         DiasNoTrabajados:=DiasNoTrabajados+DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value;
                       end;
              end
            else
              if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='F' then
                begin
                  DatosLiquidacionSueldo.QConcepto.Close;
                  DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
                  DatosLiquidacionSueldo.QConcepto.Open;

                  DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
                   //calculo por valor fijo*cantidad,
                  if DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value<=0 then
                    DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value      := 1;
                  DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value  := DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value *
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value;
                  DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value      := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value +
                                                                                DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value;
                  DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value          := DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value;

                end;
         end;

       DatosLiquidacionSueldo.CDSDetalleRecibo.Next;
     end;

   DatosLiquidacionSueldo.CDSDetalleRecibo.First;

   while not(DatosLiquidacionSueldo.CDSDetalleRecibo.Eof) do
     begin
       if DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value='RX' Then //Si son Remuneracion Exenta
         begin
           if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='F' then
             begin //calculo por porcentaje (si es RT)
               DatosLiquidacionSueldo.QConcepto.Close;
               DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
               DatosLiquidacionSueldo.QConcepto.Open;

               DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;

               DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value:=DatosLiquidacionSueldo.QConceptoIMPORTE.Value-((DatosLiquidacionSueldo.QConceptoIMPORTE.Value/200)*DiasNoTrabajados);
               DatosLiquidacionSueldo.CDSRecibosREMUNERACIONESEXENTAS.Value   :=DatosLiquidacionSueldo.CDSRecibosREMUNERACIONESEXENTAS.Value+DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value;
             end;
         end
       else
         if DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value='RT' Then //Si son retenciones (descuentos)
           begin
             //***** Concepto FIJO
             if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='F' then
               begin
                 DatosLiquidacionSueldo.QConcepto.Close;
                 DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
                 DatosLiquidacionSueldo.QConcepto.Open;

                 DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
                 //calculo por valor fijo*cantidad,
                 if DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value<=0 then
                   DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value    := 1;
                 DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value   := DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value *
                                                                             DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value;
                 DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value       := DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value +
                                                                             DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value;
               end
             else
             //****** Concpeto Calculado
               if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='C' then
                 begin
                   DatosLiquidacionSueldo.QConcepto.Close;
                   DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
                   DatosLiquidacionSueldo.QConcepto.Open;
                   DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
                   DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value := DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value *
                                                                             DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value *
                                                                             0.01;
                   DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value     := DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value +
                                                                             DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value;
                 end
               else
                 //****** Concpeto Cociente
                 if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='D' then
                   begin
                     DatosLiquidacionSueldo.QConcepto.Close;
                     DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
                     DatosLiquidacionSueldo.QConcepto.Open;
                     DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
                     //CDSDetalleReciboBASE.Value     := QConceptoID.value,'importe');
                     DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value:= DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value/
                                                                              (DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value *
                                                                               DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.ASFloat);
                     DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value    := DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value+DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value;
                   end
                 else
                   //****** Concpeto Suma de dos
                   if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='S' then //suma
                     begin
                       //Importe:=QDetalleREMUNERACION.value-QDetalleRETENCION.Value;
                       //QDetalle.Close;
                       // QDetalle.Params.ParamByName('IdRecibo').Value:=CDSRecibosID.Value;
                       // QDetalle.Params.ParamByName('IdConcepto').Value:=QConceptoCONCEPTOBASE2.Value;
                       // QDetalle.Open;
                       // Importe:=Importe+QDetalleREMUNERACION.value-QDetalleRETENCION.Value;
                     end
                   else
                     //****** Concpeto Calcula Porcentaje sobre otro
                     if DatosLiquidacionSueldo.CDSDetalleReciboCALCULO.Value='P' then
                       begin //calculo por porcentaje (si es RT)
                         DatosLiquidacionSueldo.QConcepto.Close;
                         DatosLiquidacionSueldo.QConcepto.ParamByName('id').Value:=DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value;
                         DatosLiquidacionSueldo.QConcepto.Open;
                         DatosLiquidacionSueldo.CDSDetalleRecibo.Edit;
                         DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value:= DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value *
                                                                                  DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value * 0.01;
                         DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value    := DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value +
                                                                                  DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value;
                       end;
           end;
       DatosLiquidacionSueldo.CDSDetalleRecibo.Next;
     end;

   //*Embargos ***********************************************************************
   DatosLiquidacionSueldo.CDSEmbargos.Close;
   DatosLiquidacionSueldo.CDSEmbargos.Params.ParamByName('empleado').Value:=DatosLiquidacionSueldo.CDSRecibosEMPLEADO.Value;
   DatosLiquidacionSueldo.CDSEmbargos.Open;
   DatosLiquidacionSueldo.CDSEmbargos.First;

   if not (DatosLiquidacionSueldo.CDSEmbargos.IsEmpty) Then
     while not(DatosLiquidacionSueldo.CDSEmbargos.Eof) do
       begin
         DatosLiquidacionSueldo.CDSDetalleRecibo.Append;
         DatosLiquidacionSueldo.CDSDetalleReciboID.Value                  := DatosLiquidacionSueldo.ibgId_detalle.IncrementFD(1);
         DatosLiquidacionSueldo.CDSDetalleReciboIDRECIBO.Value            := DatosLiquidacionSueldo.CDSRecibosID.Value;
         DatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTO.Value          := 9999;
         DatosLiquidacionSueldo.CDSDetalleReciboCONCEPTO.Value            := 'Embargo';
         DatosLiquidacionSueldo.CDSDetalleReciboCANTIDAD.Value            := 1;
         DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACION.Value        := 0;
         DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value  := 0;
         DatosLiquidacionSueldo.CDSDetalleReciboRETENCION.Value           := 0;
         DatosLiquidacionSueldo.CDSDetalleReciboTIPO.Value                := 'RX';
         if DatosLiquidacionSueldo.CDSEmbargosINCLUYE_EXENTO.Value='S' then
           DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value  :=  (DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value+DatosLiquidacionSueldo.CDSRecibosREMUNERACIONESEXENTAS.Value-
                                                           DatosLiquidacionSueldo.CDSEmbargosIMPORTE_DEDUCCION.Value ) *
                                                           DatosLiquidacionSueldo.CDSEmbargosPORCENTAJE1.Value *0.01 +
                                                           DatosLiquidacionSueldo.CDSEmbargosMONTO_FIJO.Value
         ELSE
           DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value  :=  (DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value-
                                                           DatosLiquidacionSueldo.CDSEmbargosIMPORTE_DEDUCCION.Value ) *
                                                           DatosLiquidacionSueldo.CDSEmbargosPORCENTAJE1.Value *0.01 +
                                                           DatosLiquidacionSueldo.CDSEmbargosMONTO_FIJO.Value;
         DatosLiquidacionSueldo.CDSDetalleReciboPORCENTAJE.Value         := 0;
         DatosLiquidacionSueldo.CDSDetalleReciboBASE.Value               := 0;

         DatosLiquidacionSueldo.CDSDetalleReciboIMPORTE.Value  := 0;
         DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value  := DatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTA.Value * -1;
         DatosLiquidacionSueldo.CDSDetalleRecibo.Post;


         DatosLiquidacionSueldo.CDSEmbargos.Next;
      end;

  DatosLiquidacionSueldo.sumar;
  DatosLiquidacionSueldo.CDSConceptosCategorias.Close;

//*Embargos ***********************************************************************

  DatosLiquidacionSueldo.CDSRecibosNETO.Value     := DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value + DatosLiquidacionSueldo.CDSRecibosREMUNERACIONESEXENTAS.Value - DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value;
  DatosLiquidacionSueldo.CDSRecibosENLETRAS.Value := numero2letras(abs( DatosLiquidacionSueldo.CDSRecibosNETO.Value));

  For i:=0 to DatosLiquidacionSueldo.CDSRecibos.FieldCount-1 do
   begin
     if (DatosLiquidacionSueldo.CDSRecibos.Fields[i].Required) and (DatosLiquidacionSueldo.CDSRecibos.Fields[i].AsString='') Then
       ShowMessage(DatosLiquidacionSueldo.CDSRecibos.Fields[i].FieldName+':'+
     DatosLiquidacionSueldo.CDSRecibos.Fields[i].AsString);
   end;

  For i:=0 to DatosLiquidacionSueldo.CDSDetalleRecibo.FieldCount-1 do
   begin
     if (DatosLiquidacionSueldo.CDSDetalleRecibo.Fields[i].Required) and (DatosLiquidacionSueldo.CDSDetalleRecibo.Fields[i].AsString='') Then
       ShowMessage(DatosLiquidacionSueldo.CDSDetalleRecibo.Fields[i].FieldName+':'+
     DatosLiquidacionSueldo.CDSDetalleRecibo.Fields[i].AsString);
   end;


  DatosLiquidacionSueldo.CDSRecibos.Post;
end;

procedure TFormPersonalliquidacion.FormCreate(Sender: TObject);
begin
  inherited;
  SInBDE:=2;
   IF NOT (Assigned(DatosLiquidacionSueldo)) THEN
    DatosLiquidacionSueldo := TDatosLiquidacionSueldo.Create(Self);

  with DatosLiquidacionSueldo do
    begin
      AddClientDataSet(CDSLiquidacion,DSPLiquidacion);
      AddClientDataSet(CDSRecibos,DSPRecibos);
      AddClientDataSet(CDSDetalleRecibo,DSPDetalleRecibos);

      CDSLiquidacion.Open;
      CDSRecibos.Open;
      CDSDetalleRecibo.Open;
      QCategorias.Open;
      QLugar.Open;
      QTipoLiquidacion.Open;
      CDSEmpresa.Open;

    end;
  Tabla  :='PERSONAL_LIQUIDACIONES';
  Campo  := 'ID';
  AutoSize:=False;
  pgcDetalles.ActivePageIndex:=0;
end;



procedure TFormPersonalliquidacion.TraerEmpleadosExecute(Sender: TObject);
begin
  inherited;
  CDSLstEmpleados.Close;
  CDSLstEmpleados.Params.ParamByName('id_categoria').Value:=dbcCategorias.Value;
  CDSLstEmpleados.Open;
  //ShowMessage('Cantidad:'+IntToStr(DatosLiquidacionSueldo.CDSEmpleados.RecordCount));

  DatosLiquidacionSueldo.QHorasTrabajadas.Close;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('codigo').Value := CDSLstEmpleadosCODIGO.Value;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Desde').Value  := Desde.Date;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Hasta').Value  := Hasta.Date;
  DatosLiquidacionSueldo.QHorasTrabajadas.Open;

  DatosLiquidacionSueldo.QProduccion.Close;
  DatosLiquidacionSueldo.QProduccion.ParamByName('codigo').Value := CDSLstEmpleadosCODIGO.Value;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Desde').Value  := Desde.Date;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Hasta').Value  := Hasta.Date;
  DatosLiquidacionSueldo.QProduccion.Open;
  //dbgEmpleados.SelectAll;

 end;

procedure TFormPersonalliquidacion.CancelarExecute(Sender: TObject);
begin
  inherited;
  DSBase.Dataset.Close;
  DSBase.DataSet.Open;

  DatosLiquidacionSueldo.CDSRecibos.Close;
  DatosLiquidacionSueldo.CDSRecibos.Params.ParamByName('idliquidacion').Clear;
  DatosLiquidacionSueldo.CDSRecibos.Open;

  DatosLiquidacionSueldo.CDSDetalleRecibo.Close;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Params.ParamByName('idrecibo').Clear;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Open;

  CDSLstEmpleados.Close;
  CDSLstEmpleados.Params.ParamByName('id_categoria').Clear;
  CDSLstEmpleados.Open;

  DatosLiquidacionSueldo.QHorasTrabajadas.Close;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('codigo').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Desde').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Hasta').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.Open;

  DatosLiquidacionSueldo.QProduccion.Close;
  DatosLiquidacionSueldo.QProduccion.ParamByName('codigo').Clear;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Desde').Clear;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Hasta').Clear;
  DatosLiquidacionSueldo.QProduccion.Open;

end;

procedure TFormPersonalliquidacion.SelectAllExecute(Sender: TObject);
var i: Integer;
begin
  dbgempleados.SelectedRows.Clear;
  dbgempleados.DataSource.DataSet.First;
  for i:= 0 to dbgempleados.DataSource.DataSet.RecordCount-1 do
    begin
      dbgempleados.SelectedRows.CurrentRowSelected := true;
      dbgempleados.DataSource.DataSet.Next;
    end;
end;

procedure TFormPersonalliquidacion.UnSelectExecute(Sender: TObject);
begin
  inherited;
  dbgempleados.SelectedRows.Clear;
end;

procedure TFormPersonalliquidacion.LiquidarExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosLiquidacionSueldo.CDSRecibos.Active) Then
    DatosLiquidacionSueldo.CDSRecibos.Open;
  if Not(DatosLiquidacionSueldo.CDSDetalleRecibo.Active) Then
    DatosLiquidacionSueldo.CDSDetalleRecibo.OPen;

  CDSLstEmpleados.First;
  while not CDSLstEmpleados.Eof do
    begin
      if dbgEmpleados.SelectedRows.CurrentRowSelected Then
         AgregarRecibo(CDSLstEmpleadosCODIGO.Value);
      CDSLstEmpleados.Next;
   end;

  DatosLiquidacionSueldo.CDSRecibos.First;
  while Not(DatosLiquidacionSueldo.CDSRecibos.Eof) do
    begin
      if DatosLiquidacionSueldo.CDSRecibosNETO.Value<=0 Then
        begin
          DatosLiquidacionSueldo.CDSRecibos.Delete;
          DatosLiquidacionSueldo.CDSRecibos.First;
        end;

      DatosLiquidacionSueldo.CDSRecibos.Next;
    end;
  DatosLiquidacionSueldo.CDSRecibos.First;
end;

procedure TFormPersonalliquidacion.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosLiquidacionSueldo.CDSRecibos.Close;
  DatosLiquidacionSueldo.CDSRecibos.Params.ParamByName('idliquidacion').Value      :=  StrToInt(DatoNew);
  DatosLiquidacionSueldo.CDSRecibos.Open;

  DatosLiquidacionSueldo.CDSDetalleRecibo.Close;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Params.ParamByName('idrecibo').Value     :=  DatosLiquidacionSueldo.CDSRecibosID.AsInteger;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Open;

  DatosLiquidacionSueldo.CDSProduccionRecibo.Close;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Params.ParamByName('idrecibo').Value  :=  DatosLiquidacionSueldo.CDSRecibosID.AsInteger;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Open;

  DatosLiquidacionSueldo.CDSHorasRecibo.Close;
  DatosLiquidacionSueldo.CDSHorasRecibo.Params.ParamByName('idrecibo').Value       :=  DatosLiquidacionSueldo.CDSRecibosID.AsInteger;
  DatosLiquidacionSueldo.CDSHorasRecibo.Open;
end;

procedure TFormPersonalliquidacion.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormPersonalliquidacion.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscadorLiquidacion.Close;
  QBuscadorLiquidacion.Open;
  ComBuscadorBase.Execute;
  if IntToStr(ComBuscadorBase.Id)<>'' then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
       Recuperar.Execute;
    end
  else
    DatoNew:='-1';
  QBuscadorLiquidacion.Close;

  
end;

procedure TFormPersonalliquidacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DatosLiquidacionSueldo.QCategorias.Close;
  DatosLiquidacionSueldo.QLugar.Close;
  DatosLiquidacionSueldo.CDSEmpresa.Close;
  FreeAndNil(DatosLiquidacionSueldo);
  inherited;
  Action:=caFree;
end;

procedure TFormPersonalliquidacion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPersonalliquidacion:=nil;
end;

procedure TFormPersonalliquidacion.FormResize(Sender: TObject);
begin
  inherited;
  if FormPersonalliquidacion<>nil then
    if FormPersonalliquidacion.Width<>1223 then
      FormPersonalliquidacion.Width:=1223;
end;

procedure TFormPersonalliquidacion.CancelaLiqExecute(Sender: TObject);
begin
  inherited;
  DatosLiquidacionSueldo.CDSRecibos.Close;
  DatosLiquidacionSueldo.CDSRecibos.Params.ParamByName('idLiquidacion').Clear;
  DatosLiquidacionSueldo.CDSRecibos.Open;

  DatosLiquidacionSueldo.CDSDetalleRecibo.Close;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Params.ParamByName('idrecibo').Clear;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Open;
end;

procedure TFormPersonalliquidacion.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=DSBase.dataset.FieldByName('id').AsString;
  inherited;
  Recuperar.Execute;
  DatosLiquidacionSueldo.CDSRecibos.Close;
  DatosLiquidacionSueldo.CDSRecibos.Params.ParamByName('idliquidacion').Value:=StrToInt(DatoNew);
  DatosLiquidacionSueldo.CDSRecibos.Open;

  DatosLiquidacionSueldo.CDSDetalleRecibo.Close;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Params.ParamByName('idrecibo').Value:=DatosLiquidacionSueldo.CDSRecibosID.AsInteger;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Open;

  //CDSLstEmpleados.Close;
  //CDSLstEmpleados.Params.ParamByName('id_categoria').Value:=dbcCategorias.Value;
  //CDSLstEmpleados.Open;

  DatosLiquidacionSueldo.QHorasTrabajadas.Close;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('codigo').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Desde').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Hasta').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.Open;

  DatosLiquidacionSueldo.QProduccion.Close;
  DatosLiquidacionSueldo.QProduccion.ParamByName('codigo').Clear;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Desde').Clear;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Hasta').Clear;
  DatosLiquidacionSueldo.QProduccion.Open;

end;


procedure TFormPersonalliquidacion.CDSEmpleadosBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Not(DatosLiquidacionSueldo.CDSRecibos.IsEmpty) Then
    SysUtils.Abort;
end;


procedure TFormPersonalliquidacion.CDSLstEmpleadosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  DatosLiquidacionSueldo.QHorasTrabajadas.Close;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('codigo').Value := CDSLstEmpleadosCODIGO.Value;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Desde').Value  := Desde.Date;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Hasta').Value  := Hasta.Date;
  DatosLiquidacionSueldo.QHorasTrabajadas.Open;

  DatosLiquidacionSueldo.QProduccion.Close;
  DatosLiquidacionSueldo.QProduccion.ParamByName('codigo').Value := CDSLstEmpleadosCODIGO.Value;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Desde').Value  := Desde.Date;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Hasta').Value  := Hasta.Date;
  DatosLiquidacionSueldo.QProduccion.Open;
end;

procedure TFormPersonalliquidacion.CDSRecibosAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  CDSRecibos.Close;
//  CDSRecibos.Params.ParamByName('idliquidacion').Value:=CDSBaseID.Value ;
 // CDSRecibos.Open;
//  CDSDetalleRecibo.Close;
//  CDSDetalleRecibo.Params.ParamByName('idrecibo').Value:=CDSRecibosID.Value;
//  CDSDetalleRecibo.Open;
end;

procedure TFormPersonalliquidacion.CDSRecibosBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Delete;
end;

procedure TFormPersonalliquidacion.DSRecibosStateChange(Sender: TObject);
begin
  inherited;
  Liquidar.Enabled    :=  DatosLiquidacionSueldo.DSRecibos.DataSet.IsEmpty;
  CancelaLiq.Enabled  := Not(DatosLiquidacionSueldo.DSRecibos.DataSet.IsEmpty);
end;

procedure TFormPersonalliquidacion.ImprimirExecute(Sender: TObject);
begin
  inherited;
//  frReport.LoadFromFile('Recibos.frf');
//  frReport.Dictionary.Variables['Desde'] :=DateToStr(desde.date);
//  frReport.Dictionary.Variables['hasta'] :=DateToStr(hasta.date);
//  frReport.Dictionary.Variables['factor']:=0;
//  if (CDSProduccionRecibo.RecordCount>0) or
 //    (CDSHorasRecibo.RecordCount>0) Then
 //   frReport.Dictionary.Variables['factor']:=1;
  DatosLiquidacionSueldo.CDSEmpresa.Close;
  DatosLiquidacionSueldo.CDSEmpresa.Open;
  frxReport.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Sueldo_recibo.fr3');
  frxReport.PrintOptions.ShowDialog:=False;
  if Not(DatosLiquidacionSueldo.CDSRecibos.IsEmpty) Then
  begin
    DatosLiquidacionSueldo.CDSRecibos.First;
    while not(DatosLiquidacionSueldo.CDSRecibos.Eof) do
      begin
        if chPreview.Checked=False then
          frxReport.Print
        else
          begin
            frxReport.ShowReport;
          end;
        DatosLiquidacionSueldo.CDSRecibos.Next;
      end;
  end;
end;

procedure TFormPersonalliquidacion.StatusBar1DblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormPersonalliquidacion.AgregarExecute(Sender: TObject);
var d,m,y:Word;
begin
  CDSLstEmpleados.Close;
  CDSLstEmpleados.Params.ParamByName('id_categoria').Clear;
  CDSLstEmpleados.Open;

  DatosLiquidacionSueldo.CDSRecibos.Close;
  DatosLiquidacionSueldo.CDSRecibos.Params.ParamByName('idliquidacion').Clear;
  DatosLiquidacionSueldo.CDSRecibos.Open;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Close;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Params.ParamByName('idrecibo').Clear;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Open;

  DatosLiquidacionSueldo.QHorasTrabajadas.Close;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('codigo').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Desde').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.ParamByName('Hasta').Clear;
  DatosLiquidacionSueldo.QHorasTrabajadas.Open;

  DatosLiquidacionSueldo.QProduccion.Close;
  DatosLiquidacionSueldo.QProduccion.ParamByName('codigo').Clear;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Desde').Clear;
  DatosLiquidacionSueldo.QProduccion.ParamByName('Hasta').Clear;
  DatosLiquidacionSueldo.QProduccion.Open;


  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(desde.Date));

end;

procedure TFormPersonalliquidacion.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:Word;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(DSBase.DataSet.FieldByName('DESDE').Value));
  TraerEmpleados.Execute;

  //  DecodeDate(DESDE.Date,y,m,d);
//  CDSBaseDESDE.AsDateTime :=EncodeDate(y,m,1);
//  CDSBaseHASTA.AsDateTime :=EncodeDate(y,m,DaysInMonth(y,m));
end;

procedure TFormPersonalliquidacion.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled       := DSBase.State in [dsBrowse];
  pnPrincipal.Enabled    := True;
  pnLiquidacion.Enabled  := Not(DSBase.State=dsBrowse);
  pnDetalle.Enabled      := Not(DSBase.State=dsBrowse);
end;

procedure TFormPersonalliquidacion.dbcCategoriasClick(Sender: TObject);
begin
  inherited;
  TraerEmpleados.Execute;  
end;

procedure TFormPersonalliquidacion.dbgEmpleadosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormPersonal)) then
    FormPersonal:=TFormPersonal.Create(Self);
  FormPersonal.DatoNew:=CDSLstEmpleadosCODIGO.Value;
  FormPersonal.Recuperar.Execute;
  FormPersonalliquidacion.Show;
end;

procedure TFormPersonalliquidacion.BSiguienteClick(Sender: TObject);
begin
  inherited;
  DatosLiquidacionSueldo.CDSRecibos.Close;
  DatosLiquidacionSueldo.CDSRecibos.Params.ParamByName('idliquidacion').Value:=DSBase.DataSet.FieldByName('ID').Value;
  DatosLiquidacionSueldo.CDSRecibos.Open;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Close;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Params.ParamByName('idrecibo').Value:=DatosLiquidacionSueldo.CDSRecibosID.Value;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Open;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Close;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Params.ParamByName('idrecibo').Value:=DatosLiquidacionSueldo.CDSRecibosID.Value;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Open;

end;

procedure TFormPersonalliquidacion.BAnteriorClick(Sender: TObject);
begin
  inherited;
  DatosLiquidacionSueldo.CDSRecibos.Close;
  DatosLiquidacionSueldo.CDSRecibos.Params.ParamByName('idliquidacion').Value:=DSBase.DataSet.FieldByName('ID').Value ;
  DatosLiquidacionSueldo.CDSRecibos.Open;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Close;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Params.ParamByName('idrecibo').Value:=DatosLiquidacionSueldo.CDSRecibosID.Value;
  DatosLiquidacionSueldo.CDSDetalleRecibo.Open;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Close;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Params.ParamByName('idrecibo').Value:=DatosLiquidacionSueldo.CDSRecibosID.Value;
  DatosLiquidacionSueldo.CDSProduccionRecibo.Open;

end;

procedure TFormPersonalliquidacion.BitBtn5Click(Sender: TObject);
begin
  inherited;
  DatosLiquidacionSueldo.CDSEmpresa.Close;
  DatosLiquidacionSueldo.CDSEmpresa.Open;
  frxReport.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Sueldo_recibo.fr3');
  frxReport.ShowReport;
end;

end.
