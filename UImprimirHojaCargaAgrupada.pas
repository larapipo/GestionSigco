unit UImprimirHojaCargaAgrupada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.Provider, Datasnap.DBClient, frxClass, JvMemoryDataset, frxDBSet,
  Vcl.StdCtrls, Vcl.Buttons, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frCoreClasses;

type
  TFormImpresionHojaCargaAgrupada = class(TForm)
    DSHojaCab: TDataSource;
    DSHojaDet: TDataSource;
    QHojaDet: TFDQuery;
    QHojaCab: TFDQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    CDSHojaCab: TClientDataSet;
    DSPHojaCab: TDataSetProvider;
    CDSHojaDet: TClientDataSet;
    DSPHojaDet: TDataSetProvider;
    CDSHojaCabID: TIntegerField;
    CDSHojaCabFECHA: TSQLTimeStampField;
    CDSHojaCabRESPONSABLE: TStringField;
    CDSHojaCabNOTAS: TStringField;
    CDSHojaCabCOMISION: TFloatField;
    CDSHojaCabID_ZONA: TIntegerField;
    CDSHojaCabMUESTRARESPONSABLE: TStringField;
    CDSHojaCabSELECCION: TBooleanField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_ZONA: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRARESPONSABLE: TcxGridDBColumn;
    cxGrid1DBTableView1SELECCION: TcxGridDBColumn;
    CDSHojaDetID: TIntegerField;
    CDSHojaDetID_CAB: TIntegerField;
    CDSHojaDetID_CPBTE: TIntegerField;
    CDSHojaDetTIPOCPBTE: TStringField;
    CDSHojaDetCLASECPBTE: TStringField;
    CDSHojaDetNROCPBTE: TStringField;
    CDSHojaDetNOMBRE: TStringField;
    CDSHojaDetIMPORTE: TFloatField;
    CDSHojaDetENTREGADO: TStringField;
    CDSHojaDetDIRECCION: TStringField;
    CDSHojaDetNETO: TFloatField;
    CDSHojaDetSALDO: TFloatField;
    cxGrid2DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid2DBTableView1ENTREGADO: TcxGridDBColumn;
    cxGrid2DBTableView1DIRECCION: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    btImprimir: TBitBtn;
    frCabecera: TfrxDBDataset;
    frDetalle: TfrxDBDataset;
    frResumenDetalle: TfrxDBDataset;
    frDetalleMercaderia: TfrxDBDataset;
    CDSResumenDetalle: TJvMemoryData;
    CDSResumenDetalleCODIGOARTICULO: TStringField;
    CDSResumenDetalleDETALLE: TStringField;
    CDSResumenDetalleCANTIDAD: TFloatField;
    frxReporte: TfrxReport;
    DSPDetalles: TDataSetProvider;
    CDSDetalles: TClientDataSet;
    CDSDetallesID: TIntegerField;
    CDSDetallesID_CABFAC: TIntegerField;
    CDSDetallesCODIGOARTICULO: TStringField;
    CDSDetallesDETALLE: TStringField;
    DSDetalles: TDataSource;
    btBuscar: TBitBtn;
    cxGrid2DBTableView1ID_CAB: TcxGridDBColumn;
    pnCabecera: TPanel;
    pnPrincipal: TPanel;
    pnPie: TPanel;
    QDetalles: TFDQuery;
    CDSDetallesCANTIDAD: TFloatField;
    CDSDetallesUNITARIOFINAL: TFloatField;
    CDSDetallesNETOGRAVADO: TFloatField;
    CDSHojaDetCODIGO: TStringField;
    CDSHojaCabID_TRANSPORTE: TIntegerField;
    CDSHojaCabID_CHOFER: TIntegerField;
    CDSResumenDetalleCANTIDAD_CONTENIDO: TFloatField;
    CDSResumenDetalleUNIDAD_CONTENIDO: TStringField;
    CDSDetallesPRESENTACION_CANTIDAD: TFloatField;
    CDSDetallesPRESENTACION_UNIDAD: TStringField;
    CDSHojaDetVENDEDOR: TStringField;
    CDSHojaDetMUESTRAVENDEDOR: TStringField;
    procedure btImprimirClick(Sender: TObject);
    procedure CDSHojaDetAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    HojaDetSQL: WideString;

  public
    { Public declarations }
    Condiciones :String;
    Responsables:String;
    procedure ArmarCondiciones;

  end;

var
  FormImpresionHojaCargaAgrupada: TFormImpresionHojaCargaAgrupada;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormImpresionHojaCargaAgrupada.ArmarCondiciones;
begin
  Condiciones:='';
  Responsables:='';
  CDSHojaCab.DisableControls;
  CDSHojaCab.First;
  while not(CDSHojaCab.Eof) do
    begin
      if CDSHojaCabSELECCION.AsBoolean then
        begin
            if Condiciones='' Then
            condiciones:='(d.id_cab ='+''+CDSHojaCabID.AsString+''+') '
          else
            condiciones:=Condiciones+' or (d.id_Cab ='+''+CDSHojaCabID.AsString+''+') ';
//          if Condiciones = '' then
//            Condiciones := CDSHojaCabID.AsString
//          else
//            Condiciones :=  Condiciones + ', ' + CDSHojaCabID.AsString;
        end;
      CDSHojaCab.Next;
    end;
 // Condiciones:=' and ('+condiciones+')';
  CDSHojaCab.First;
  CDSHojaCab.EnableControls;
end;



procedure TFormImpresionHojaCargaAgrupada.btImprimirClick(Sender: TObject);
begin

  if Not(CDSHojaDet.IsEmpty) then
    begin
      CDSResumenDetalle.Close;
      CDSResumenDetalle.Open;
      CDSResumenDetalle.EmptyTable;
      CDSHojaDet.First;
      while not(CDSHojaDet.Eof) do
        begin
          while not(CDSDetalles.Eof) do
          begin
            if CDSResumenDetalle.Locate('CODIGOARTICULO',CDSDetallesCODIGOARTICULO.AsString,[]) then
              begin
                CDSResumenDetalle.Edit;
                CDSResumenDetalleCANTIDAD.Value           := CDSResumenDetalleCANTIDAD.Value+CDSDetallesCANTIDAD.AsFloat;
                CDSResumenDetalleCANTIDAD_CONTENIDO.Value := CDSDetallesPRESENTACION_CANTIDAD.AsFloat;
                CDSResumenDetalleUNIDAD_CONTENIDO.Value   := CDSDetallesPRESENTACION_UNIDAD.Value;
                CDSResumenDetalle.Post;
             end
          else
            begin
              CDSResumenDetalle.Append;
              CDSResumenDetalleCODIGOARTICULO.Value:=CDSDetallesCODIGOARTICULO.Value;
              CDSResumenDetalleDETALLE.Value       :=CDSDetallesDETALLE.Value;
              CDSResumenDetalleCANTIDAD.AsFloat    :=CDSDetallesCANTIDAD.AsFloat;
              CDSResumenDetalleCANTIDAD_CONTENIDO.Value := CDSDetallesPRESENTACION_CANTIDAD.AsFloat;
              CDSResumenDetalleUNIDAD_CONTENIDO.Value   := CDSDetallesPRESENTACION_UNIDAD.Value;
              CDSResumenDetalle.Post;
            end;
            CDSDetalles.Next;
          end;
          CDSHojaDet.Next;
        end;
      CDSResumenDetalle.SortOnFields('DETALLE',True,False);

     // CDSHojaDet.IndexFieldNames:='NOMBRE';

     // frxReporte.PrintOptions.Printer:=PrNomListados;
      frxReporte.SelectPrinter;

      frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\HojaCarga.fr3');
      frxReporte.Variables['Responsable']:=''''+'....'+'''';
      frxReporte.Variables['Zona']:=''''+'....'+'''';

      frxReporte.ShowReport;
    end;
end;

procedure TFormImpresionHojaCargaAgrupada.btBuscarClick(Sender: TObject);
VAR SQL:String;
begin
  sql:='select d.*, case d.tipocpbte    when ''RO''   then r.vendedor '+
                            'when ''RA''   then (select fc.vendedor from fcvtacab fc where fc.id_fc = a.id_factura) ' +
                            'else             f.vendedor '+
        ' end as Vendedor, p.nombre as MuestraVendedor  from hojacarga_det d '+
        ' left join fcvtacab f on f.id_fc=d.id_cpbte and f.tipocpbte=d.tipocpbte '+
        ' left join rtocab r on r.id_rto=d.id_cpbte  and r.tipocpbte=d.tipocpbte '+
        ' left join rto_acopio_cab a on a.id=d.id_cpbte and a.tipocpbte=d.tipocpbte '+
        ' left join personal p on (p.codigo = f.vendedor) or (p.codigo = r.vendedor)';
  ArmarCondiciones;
  if Condiciones<>'' then
    begin
      CDSHojaDet.Close;
      CDSHojaDet.CommandText  := sql + ' where '+ Condiciones;
      CDSHojaDet.Open;
    end
  else
    begin
      CDSHojaDet.Close;
      CDSHojaDet.CommandText  := sql + ' where d.id_cab = -1 ';
      CDSHojaDet.Open;
    end;
end;


procedure TFormImpresionHojaCargaAgrupada.CDSHojaDetAfterScroll(
  DataSet: TDataSet);
begin
  CDSDetalles.Close;
  CDSDetalles.Params.ParamByName('id').Value  :=CDSHojaDetID_CPBTE.Value;
  CDSDetalles.Params.ParamByName('Tipo').Value:=CDSHojaDetTIPOCPBTE.Value;
  CDSDetalles.Open;

end;

procedure TFormImpresionHojaCargaAgrupada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;


procedure TFormImpresionHojaCargaAgrupada.FormDestroy(Sender: TObject);
begin
  FormImpresionHojaCargaAgrupada:=nil;
end;

procedure TFormImpresionHojaCargaAgrupada.FormShow(Sender: TObject);
begin
  AutoSize:=True;
  CDSHojaCab.Close;
  CDSHojaCab.Open;
  CDSHojaCab.DisableControls;
  CDSHojaCab.First;
  while Not(CDSHojaCab.Eof) do
    begin
      CDSHojaCab.Edit;
      CDSHojaCabSELECCION.Value:=False;
      CDSHojaCab.Next;
    end;
  CDSHojaCab.First;
  CDSHojaCab.EnableControls;


  CDSHojaDet.AfterScroll:=nil;
  CDSHojaDet.Close;
  CDSHojaDet.Open;
  CDSHojaDet.AfterScroll:=CDSHojaDetAfterScroll;

  CDSHojaDet.EmptyDataSet;

end;

end.
