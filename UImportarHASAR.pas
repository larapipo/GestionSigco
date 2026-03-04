unit UImportarHASAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,IniFiles,System.Math,System.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvUtil, Vcl.StdCtrls, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ExtCtrls, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.Xmlxform, Datasnap.DBClient, DBAdvGrid, Vcl.Mask,
  JvExMask, JvToolEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCurrencyEdit, JvBaseEdits,StrUtils, Vcl.Menus, Vcl.DBCtrls,IOUtils;

type
  TFormImportarHasar = class(TFormABMBase)
    OpenDialog1: TOpenDialog;
    DataSource1: TDataSource;
    CDSxmlCab: TClientDataSet;
    XMLTransformProvider: TXMLTransformProvider;
    DSXmlDet: TDataSource;
    pnCab: TPanel;
    pnPie: TPanel;
    BitBtn1: TBitBtn;
    Label34: TLabel;
    edPathMaper: TEdit;
    sbMaperFile: TSpeedButton;
    Splitter1: TSplitter;
    QVtas: TFDQuery;
    edDesde: TJvDateEdit;
    edHasta: TJvDateEdit;
    lbDesde: TLabel;
    lbHasta: TLabel;
    SpeedButton1: TSpeedButton;
    Busca: TAction;
    DSVtas: TDataSource;
    CDSVtas: TClientDataSet;
    DSPVtas: TDataSetProvider;
    CDSVtasID_FC: TIntegerField;
    CDSVtasTIPOCPBTE: TStringField;
    CDSVtasCLASECPBTE: TStringField;
    CDSVtasLETRAFAC: TStringField;
    CDSVtasSUCFAC: TStringField;
    CDSVtasNUMEROFAC: TStringField;
    CDSVtasNOMBRE: TStringField;
    CDSVtasNROCPBTE: TStringField;
    CDSVtasNETOGRAV2: TFloatField;
    CDSVtasDIFIVA: TFloatField;
    CDSVtasTOTAL: TFloatField;
    CDSVtasFISCAL: TStringField;
    dbgVtas: TDBGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pnIzq: TPanel;
    dbgXMLCab: TDBGrid;
    pnPieSuma: TPanel;
    edTotal: TJvCalcEdit;
    edIva: TJvCalcEdit;
    edGravado: TJvCalcEdit;
    CDSXmlDet: TClientDataSet;
    dbgXMLDet: TDBGrid;
    DSXmlCab: TDataSource;
    Splitter2: TSplitter;
    pnSUbTotal: TPanel;
    edTotalFina: TJvCalcEdit;
    edTotalIVA: TJvCalcEdit;
    edTotalBase: TJvCalcEdit;
    edIvaVtas: TJvCalcEdit;
    edTotalVtas: TJvCalcEdit;
    edNetoVtas: TJvCalcEdit;
    Panel2: TPanel;
    dbgDetalle: TDBGrid;
    Splitter3: TSplitter;
    QVtasDet: TFDQuery;
    DSPVtasDet: TDataSetProvider;
    CDSVtasDet: TClientDataSet;
    DSVtasDet: TDataSource;
    QVtasDetID: TIntegerField;
    QVtasDetID_CABFAC: TIntegerField;
    QVtasDetTIPOCPBTE: TStringField;
    QVtasDetCLASECPBTE: TStringField;
    QVtasDetNROCPBTE: TStringField;
    QVtasDetRENGLON: TFloatField;
    QVtasDetFECHAVTA: TDateField;
    QVtasDetCODIGOARTICULO: TStringField;
    QVtasDetDETALLE: TStringField;
    QVtasDetUNIDAD: TStringField;
    QVtasDetMODO_GRAVAMEN: TStringField;
    QVtasDetCANTIDAD: TFloatField;
    QVtasDetUNIDADES_GRAVADO: TFloatField;
    QVtasDetUNIDADES_EXENTO: TFloatField;
    QVtasDetUNIDADES_TOTAL: TFloatField;
    QVtasDetCOSTO_GRAVADO: TFloatField;
    QVtasDetCOSTO_EXENTO: TFloatField;
    QVtasDetCOSTO_TOTAL: TFloatField;
    QVtasDetUNITARIO_GRAVADO: TFloatField;
    QVtasDetIVA_UNITARIO: TFloatField;
    QVtasDetUNITARIO_EXENTO: TFloatField;
    QVtasDetUNITARIO_TOTAL: TFloatField;
    QVtasDetDESGLOZAIVA: TStringField;
    QVtasDetTOTAL_EXENTO: TFloatField;
    QVtasDetTOTAL_GRAVADO: TFloatField;
    QVtasDetIVA_TOTAL: TFloatField;
    QVtasDetTOTAL: TFloatField;
    QVtasDetTIPOIVA_TASA: TIntegerField;
    QVtasDetTIPOIVA_SOBRETASA: TIntegerField;
    QVtasDetIVA_TASA: TFloatField;
    QVtasDetIVA_SOBRETASA: TFloatField;
    QVtasDetDESCUENTO: TFloatField;
    QVtasDetDEPOSITO: TIntegerField;
    QVtasDetMARGEN: TFloatField;
    QVtasDetAFECTA_STOCK: TStringField;
    QVtasDetCALCULA_SOBRETASA: TStringField;
    QVtasDetGRAVADO_IB: TStringField;
    QVtasDetCON_NRO_SERIE: TStringField;
    QVtasDetCON_CODIGO_BARRA: TStringField;
    QVtasDetIB_TASA: TFloatField;
    QVtasDetTIPOIB_TASA: TIntegerField;
    QVtasDetPRECIO_EDITABLE: TStringField;
    QVtasDetID_MONEDA: TIntegerField;
    QVtasDetCOTIZACION: TFloatField;
    QVtasDetDETALLE_ADICIONAL: TStringField;
    QVtasDetGRUPO_DETALLE: TIntegerField;
    QVtasDetCODIGOBARRA: TStringField;
    QVtasDetDE_PRODUCCION: TStringField;
    CDSVtasDetID: TIntegerField;
    CDSVtasDetID_CABFAC: TIntegerField;
    CDSVtasDetTIPOCPBTE: TStringField;
    CDSVtasDetCLASECPBTE: TStringField;
    CDSVtasDetNROCPBTE: TStringField;
    CDSVtasDetRENGLON: TFloatField;
    CDSVtasDetFECHAVTA: TDateField;
    CDSVtasDetCODIGOARTICULO: TStringField;
    CDSVtasDetDETALLE: TStringField;
    CDSVtasDetUNIDAD: TStringField;
    CDSVtasDetMODO_GRAVAMEN: TStringField;
    CDSVtasDetCANTIDAD: TFloatField;
    CDSVtasDetUNIDADES_GRAVADO: TFloatField;
    CDSVtasDetUNIDADES_EXENTO: TFloatField;
    CDSVtasDetUNIDADES_TOTAL: TFloatField;
    CDSVtasDetCOSTO_GRAVADO: TFloatField;
    CDSVtasDetCOSTO_EXENTO: TFloatField;
    CDSVtasDetCOSTO_TOTAL: TFloatField;
    CDSVtasDetUNITARIO_GRAVADO: TFloatField;
    CDSVtasDetIVA_UNITARIO: TFloatField;
    CDSVtasDetUNITARIO_EXENTO: TFloatField;
    CDSVtasDetUNITARIO_TOTAL: TFloatField;
    CDSVtasDetDESGLOZAIVA: TStringField;
    CDSVtasDetTOTAL_EXENTO: TFloatField;
    CDSVtasDetTOTAL_GRAVADO: TFloatField;
    CDSVtasDetIVA_TOTAL: TFloatField;
    CDSVtasDetTOTAL: TFloatField;
    CDSVtasDetTIPOIVA_TASA: TIntegerField;
    CDSVtasDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSVtasDetIVA_TASA: TFloatField;
    CDSVtasDetIVA_SOBRETASA: TFloatField;
    CDSVtasDetDESCUENTO: TFloatField;
    CDSVtasDetDEPOSITO: TIntegerField;
    CDSVtasDetMARGEN: TFloatField;
    CDSVtasDetAFECTA_STOCK: TStringField;
    CDSVtasDetCALCULA_SOBRETASA: TStringField;
    CDSVtasDetGRAVADO_IB: TStringField;
    CDSVtasDetCON_NRO_SERIE: TStringField;
    CDSVtasDetCON_CODIGO_BARRA: TStringField;
    CDSVtasDetIB_TASA: TFloatField;
    CDSVtasDetTIPOIB_TASA: TIntegerField;
    CDSVtasDetPRECIO_EDITABLE: TStringField;
    CDSVtasDetID_MONEDA: TIntegerField;
    CDSVtasDetCOTIZACION: TFloatField;
    CDSVtasDetDETALLE_ADICIONAL: TStringField;
    CDSVtasDetGRUPO_DETALLE: TIntegerField;
    CDSVtasDetCODIGOBARRA: TStringField;
    CDSVtasDetDE_PRODUCCION: TStringField;
    CDSxmlCabNombre: TStringField;
    CDSxmlCabDireccion: TStringField;
    CDSxmlCabTipoCliente: TStringField;
    CDSxmlCabTipoDocumento: TStringField;
    CDSxmlCabSubTipoDocumento: TStringField;
    CDSxmlCabCalificadorDocumento: TStringField;
    CDSxmlCabTipoAFIP: TStringField;
    CDSxmlCabFecha: TStringField;
    CDSxmlCabNumeroCompleto: TStringField;
    CDSxmlCabBase: TStringField;
    CDSxmlCabMontoIVA: TStringField;
    CDSxmlCabMontoOtrosTributos: TStringField;
    CDSxmlCabMontoNoGravado: TStringField;
    CDSxmlCabMontoExento: TStringField;
    CDSxmlCabMontoGravado: TStringField;
    CDSxmlCabFinal: TStringField;
    CDSXmlDetCodigoMatrix: TStringField;
    CDSXmlDetDescripcion: TStringField;
    CDSXmlDetCantidad: TStringField;
    CDSXmlDetPrecioBase: TStringField;
    CDSXmlDetMontoTotalBase: TStringField;
    CDSXmlDetTasaIVA: TStringField;
    CDSXmlDetMontoTotalIVA: TStringField;
    CDSXmlDetMontoTotalII: TStringField;
    CDSXmlDetImpIntFijo: TStringField;
    CDSXmlDetPrecioFinal: TStringField;
    CDSXmlDetMontoFinal: TStringField;
    CDSxmlCabVenta: TDataSetField;
    PopupMenu1: TPopupMenu;
    OtrosTributos1: TMenuItem;
    NoGravado1: TMenuItem;
    Exento1: TMenuItem;
    Panel3: TPanel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    JvDBStatusLabel4: TJvDBStatusLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    CDSVtasDetTOTAL_FINAL: TFloatField;
    Recalcular: TAction;
    CDSVtasDetSUMATOTAL: TAggregateField;
    PopupMenu2: TPopupMenu;
    Recalcular1: TMenuItem;
    N1: TMenuItem;
    BuscarFaltante: TAction;
    BuscarFaltante1: TMenuItem;
    N2: TMenuItem;
    Aplicar1: TMenuItem;
    DBEdit1: TDBEdit;
    CDSVtasDetSUMANETO: TAggregateField;
    CDSVtasDetSUMAEXENTO: TAggregateField;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    CDSVtasDetSUMAIVA: TAggregateField;
    DBEdit4: TDBEdit;
    chTraerDatos: TCheckBox;
    edTotalExento: TJvCalcEdit;
    CDSVtasNETOEXEN2: TFloatField;
    edTotalExe: TJvCalcEdit;
    edIIB: TJvCalcEdit;
    N3: TMenuItem;
    CalcularyAplicar1: TMenuItem;
    Label3: TLabel;
    edPathCajas: TEdit;
    spDirXML: TSpeedButton;
    lbArchivos: TListBox;
    btLeeDIrectorio: TBitBtn;
    Nombre: TMenuItem;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure sbMaperFileClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgHasarGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure BuscaExecute(Sender: TObject);
    procedure dbgVtasDblClick(Sender: TObject);
    procedure dbgVtasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgVtasCellClick(Column: TColumn);
    procedure CDSxmlCabAfterScroll(DataSet: TDataSet);
    procedure OtrosTributos1Click(Sender: TObject);
    procedure NoGravado1Click(Sender: TObject);
    procedure Exento1Click(Sender: TObject);
    procedure CDSVtasDetCalcFields(DataSet: TDataSet);
    procedure RecalcularExecute(Sender: TObject);
    procedure BuscarFaltanteExecute(Sender: TObject);
    procedure Aplicar1Click(Sender: TObject);
    procedure CalcularyAplicar1Click(Sender: TObject);
    procedure spDirXMLClick(Sender: TObject);
    procedure btLeeDIrectorioClick(Sender: TObject);
    procedure lbArchivosClick(Sender: TObject);
    procedure NombreClick(Sender: TObject);
    procedure dbgXMLCabTitleClick(Column: TColumn);
    procedure CDSVtasBeforeInsert(DataSet: TDataSet);
    procedure CDSVtasDetBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LeerArchivos;

  end;

var
  FormImportarHasar: TFormImportarHasar;

implementation

uses UDMain_FD,UBuscaDirectorio, UTiketVta, UFacturaCtdo_2, UFactura_2;

{$R *.dfm}


procedure TFormImportarHasar.LeerArchivos;
var
  Busqueda   : TSearchRec;
  i,iResultado : Integer;
  FDirectorio:string;
  FDir:TStringDynArray;
begin
  // Nos aseguramos que termine en contrabarra
  lbArchivos.Clear;
  FDirectorio := edPathCajas.Text+'\';
  iResultado  :=  FindFirst( FDirectorio + '*.xml', faAnyFile, Busqueda );
  FDir:=TDirectory.GetFiles(FDirectorio,'*.xml');

  for i:=Low(FDir) to High(FDir) Do
    lbArchivos.Items.Add(FDir[i]);


//  while iResultado = 0 do
//    begin
//      // ¿Ha encontrado un archivo y no es un directorio?
//      if ( Busqueda.Attr and faArchive = faArchive ) and
//         ( Busqueda.Attr and faDirectory <> faDirectory ) then
//        lbArchivos.Items.Add(Busqueda.Name);
//      iResultado := FindNext( Busqueda );
//    end;
//  FindClose( Busqueda );


  lbArchivos.Sorted:=True;
 end;



procedure TFormImportarHasar.Aplicar1Click(Sender: TObject);
begin
  inherited;
  CDSVtasDet.ApplyUpdates(-1);
end;

procedure TFormImportarHasar.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if  OpenDialog1.Execute then
    if OpenDialog1.FileName<>'' then
      begin
        CDSxmlCab.Close;
        XMLTransformProvider.XMLDataFile:=OpenDialog1.FileName;
        CDSxmlCab.Open;
        if CDSxmlCab.RecordCount>0 then
          begin
            CDSxmlCab.AfterScroll:=nil;
            CDSxmlcab.DisableControls;
            CDSxmlcab.First;
            edTotal.Value  :=0;
            edIva.Value    :=0;
            edGravado.Value:=0;
            edIIB.Value:=0;
            while Not(CDSxmlCab.Eof) do
              begin
                if Trim(CDSxmlCabFinal.AsString)<>'' then
                  begin
                    edTotal.Value   := edTotal.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabFinal.AsString,',',''));
                    edGravado.Value := edGravado.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabMontoGravado.AsString,',',''));
                    edIva.Value     := edIva.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabMontoIVA.AsString,',',''));
                    edIIB.Value:= edIIB.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabMontoExento.AsString,',',''));
                  end;
                CDSxmlCab.Next;
              end;
            CDSxmlCab.Delete;
            CDSxmlCab.First;
            CDSxmlCab.EnableControls;
            CDSxmlCab.AfterScroll:=CDSxmlCabAfterScroll;
          end;
        if chTraerDatos.Checked then Busca.Execute;


      end;

end;

procedure TFormImportarHasar.btLeeDIrectorioClick(Sender: TObject);
begin
  inherited;
  LeerArchivos;
end;

procedure TFormImportarHasar.BuscaExecute(Sender: TObject);
var AuxFecha,Hasta:TDateTime;
Aux,SucFac:string;
D1,D2:Integer;
begin
  inherited;
  if not(CDSxmlCab.IsEmpty) then
    begin
      CDSxmlCab.First;
      Aux:= CDSxmlCabFecha.AsString;
      SucFac:= Copy(CDSxmlCabNumeroCompleto.AsString,2,4);

      edDesde.Date:=StrToDate(Copy(Aux,5,2)+'/'+Copy(Aux,3,2)+'/'+Copy(Aux,1,2));
      edHasta.Date:=StrToDate(Copy(Aux,5,2)+'/'+Copy(Aux,3,2)+'/'+Copy(Aux,1,2));

      CDSVtas.Close;
      CDSVtas.Params.ParamByName('desde').Value  := edDesde.Date;
      CDSVtas.Params.ParamByName('hasta').Value  := edHasta.Date;
      CDSVtas.Params.ParamByName('sucfac').Value := SucFac;
      CDSVtas.Open;

      CDSVtas.DisableControls;
      edTotalVtas.Value  :=0;
      edIvaVtas.Value    :=0;
      edNetoVtas.Value   :=0;
      edTotalExento.Value:=0;
      while Not(CDSVtas.Eof) do
         begin
           edTotalVtas.Value    := edTotalVtas.Value + CDSVtasTOTAL.Value;
           edIvaVtas.Value      := edIvaVtas.Value  + CDSVtasDIFIVA.Value;
           edNetoVtas.Value     := edNetoVtas.Value + CDSVtasNETOGRAV2.Value;
           edTotalExento.Value  := edTotalExento.Value + CDSVtasNETOEXEN2.Value;

           CDSVtas.Next;
         end;

      CDSVtas.Last;
      D2:=CDSVtasID_FC.Value;
      CDSVtas.First;
      D1:=CDSVtasID_FC.Value;
      CDSVtas.EnableControls;

      CDSVtasDet.MasterSource   := nil;
      CDSVtasDet.MasterFields   := '';

      CDSVtasDet.Close;
      CDSVtasDet.Params.ParamByName('desde').Value:= D1;
      CDSVtasDet.Params.ParamByName('hasta').Value:= D2;
      CDSVtasDet.Open;

      CDSVtasDet.MasterSource   := DSVtas;
      CDSVtasDet.MasterFields   := 'ID_FC';
      CDSVtasDet.IndexFieldNames:= 'ID_CABFAC;RENGLON';

    end;
  CDSXmlCab.First;

end;


procedure TFormImportarHasar.BuscarFaltanteExecute(Sender: TObject);
var aux:string;
begin
  inherited;
  CDSxmlCab.First;
  while Not(CDSxmlCab.Eof) do
    begin
      Aux:=CDSxmlCabCalificadorDocumento.AsString + AnsiRightStr(AnsiReplaceText(CDSxmlCabNumeroCompleto.AsString,'-',''),12);
      if Not((CDSVtas.Locate('Nrocpbte',Aux,[]))) Then
        begin
          ShowMessage('Falta Cpbte '+Aux);
          Exit
        end;
      CDSxmlCab.Next;
    end;
end;

procedure TFormImportarHasar.CalcularyAplicar1Click(Sender: TObject);
begin
  inherited;
  Recalcular.Execute;
  CDSVtasDet.ApplyUpdates(-1);
end;

procedure TFormImportarHasar.CDSVtasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CDSVtas.Cancel;
end;

procedure TFormImportarHasar.CDSVtasDetBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CDSVtasDet.Cancel;
end;

procedure TFormImportarHasar.CDSVtasDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVtasDetTOTAL_FINAL.Value:=CDSVtasDetTOTAL_GRAVADO.Value+CDSVtasDetIVA_TOTAL.Value+CDSVtasDetTOTAL_EXENTO.Value;
end;

procedure TFormImportarHasar.CDSxmlCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSxmlDet.DisableControls;

  CDSXmlDet.First;

  edTotalFina.Value   :=0;
  edTotalIVA.Value    :=0;
  edTotalBase.Value   :=0;
  edTotalExe.Value    :=0;
  while Not(CDSXmlDet.Eof) do
    begin
      if Trim(CDSXmlDetPrecioFinal.AsString)<>'' then
        begin
          edTotalFina.Value   := edTotalFina.Value + StrToFloat(AnsiReplaceStr( CDSXmlDetMontoFinal.AsString,',',''));
          edTotalIVA.Value    := edTotalIVA.Value  + StrToFloat(AnsiReplaceStr( CDSXmlDetMontoTotalIVA.AsString,',',''));
          edTotalBase.Value   := edTotalBase.Value + StrToFloat(AnsiReplaceStr( CDSXmlDetMontoTotalBase.AsString,',',''));
          edTotalExe.Value    := edTotalExe.Value + StrToFloat(AnsiReplaceStr( CDSXmlDetMontoTotalII.AsString,',',''));
        end;
      CDSXmlDet.Next;
    end;
  CDSXmlDet.First;
  CDSXmlDet.EnableControls;
end;

procedure TFormImportarHasar.dbgHasarGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
 if ACol>4 then
   HAlign:= taRightJustify;
end;


procedure TFormImportarHasar.dbgVtasCellClick(Column: TColumn);
begin
  inherited;
  CDSxmlCab.Locate('NumeroCompleto',('0'+CDSVtasSUCFAC.AsString + '-'+ CDSVtasNUMEROFAC.AsString),[]);

end;

procedure TFormImportarHasar.dbgVtasDblClick(Sender: TObject);
begin
  inherited;
  if CDSVtasTIPOCPBTE.Value='TK' then
    begin
      if not(Assigned(FormTicketVta)) then
        FormTicketVta:=TFormTicketVta.Create(Self);
      FormTicketVta.datoNew:=CDSVtasID_FC.AsString;
      formticketVta.TipoCpbte:=CDSVtasTIPOCPBTE.AsString;
      FormTicketVta.Recuperar.Execute;
      FormticketVta.Show;
    end
  else
    if CDSVtasTIPOCPBTE.Value='FO' then
      begin
        if not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew:=CDSVtasID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSVtasTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
    end
      else
        if CDSVtasTIPOCPBTE.Value='FC' then
          begin
            if not(Assigned(FormCpbte_2)) then
              FormCpbte_2:=TFormCpbte_2.Create(Self);
            FormCpbte_2.DatoNew:=CDSVtasID_FC.AsString;
            FormCpbte_2.TipoCpbte:=CDSVtasTIPOCPBTE.AsString;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
          end

end;

procedure TFormImportarHasar.dbgVtasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if Not(CDSVtas.IsEmpty) then
    begin
      dbgVtas.Canvas.Brush.Color:= clWindow;

      if not(CDSVtasSUCFAC.IsNull) and (CDSxmlCab.Locate('NumeroCompleto',('0'+CDSVtasSUCFAC.AsString + '-'+ CDSVtasNUMEROFAC.AsString),[])) Then
        if Not(CDSxmlCabMontoGravado.IsNull) and (CompareValue(CDSxmlCabMontoGravado.AsFloat,CDSVtasNETOGRAV2.AsFloat,0.03)<>EqualsValue) or
           (CompareValue(CDSxmlCabMontoIVA.AsFloat,CDSVtasDIFIVA.AsFloat,0.03)<>EqualsValue) or
           (CompareValue(CDSxmlCabFinal.AsFloat,CDSVtasTOTAL.AsFloat,0.03)<>EqualsValue)

           Then
          dbgVtas.canvas.brush.color := clPaleRed;
      if (gdFocused in State) then
        begin
          dbgVtas.canvas.brush.color := ClBlack;
          dbgVtas.canvas.Font.color  := clWhite;
        end;
    end;
  if (gdFocused in State) then
    begin
      dbgVtas.canvas.brush.color := ClBlack;
      dbgVtas.canvas.Font.color  := clWhite;
    end;
    //Esta línea es nueva
  dbgVtas.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormImportarHasar.dbgXMLCabTitleClick(Column: TColumn);
var campo:string;
begin
  inherited;
  try
    Campo := Column.FieldName;
    with dbgXMLCab.DataSource.DataSet as TClientDataSet do
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

procedure TFormImportarHasar.Exento1Click(Sender: TObject);
begin
  inherited;
  Exento1.Checked:=not(Exento1.Checked);
  dbgXMLCab.Columns[12].Visible := Exento1.Checked;
end;

procedure TFormImportarHasar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportacionHasar.ini');
  ArchivoIni.WriteString('ArchivoXML', 'File', edPathMaper.Text);
  ArchivoIni.WriteString('CajasXML', 'File', edPathCajas.Text );

  ArchivoIni.WriteBool('OtrosTributos', 'Estado',OtrosTributos1.Checked );
  ArchivoIni.WriteBool('NoGravado', 'Estado',NoGravado1.Checked);
  ArchivoIni.WriteBool('Exento', 'Estado',Exento1.Checked );
  ArchivoIni.WriteBool('Nombre', 'Estado',Nombre.Checked );

  ArchivoIni.Free;
  Action:=caFree;
  inherited;

end;

procedure TFormImportarHasar.FormCreate(Sender: TObject);
var i:Integer;
begin
  inherited;
  AutoSize:=False;
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportacionHasar.ini');
  edPathMaper.Text       := ArchivoIni.ReadString('ArchivoXML', 'File', '');
  edPathCajas.Text       := ArchivoIni.ReadString('CajasXML', 'File', '');

  OtrosTributos1.Checked := ArchivoIni.ReadBool('OtrosTributos', 'Estado',True);
  NoGravado1.Checked     := ArchivoIni.ReadBool('NoGravado', 'Estado',True);
  Exento1.Checked        := ArchivoIni.ReadBool('Exento', 'Estado',True);
  Nombre.Checked         := ArchivoIni.ReadBool('Nombre', 'Estado',True );

  ArchivoIni.Free;
  XMLTransformProvider.TransformRead.TransformationFile:=edPathMaper.Text;

  dbgXMLCab.Columns[0].Visible  := Nombre.Checked;
  dbgXMLCab.Columns[10].Visible := OtrosTributos1.Checked;
  dbgXMLCab.Columns[11].Visible := NoGravado1.Checked;
  dbgXMLCab.Columns[12].Visible := Exento1.Checked;


end;

procedure TFormImportarHasar.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarHasar:=nil;
end;

procedure TFormImportarHasar.lbArchivosClick(Sender: TObject);
begin
  inherited;
  if lbArchivos.Items.Count>0 then
      begin
        CDSxmlCab.Close;
        XMLTransformProvider.XMLDataFile:=lbArchivos.Items[lbArchivos.ItemIndex];
        CDSxmlCab.Open;
        if CDSxmlCab.RecordCount>0 then
          begin
            CDSxmlCab.AfterScroll:=nil;
            CDSxmlcab.DisableControls;
            CDSxmlcab.First;
            edTotal.Value  :=0;
            edIva.Value    :=0;
            edGravado.Value:=0;
            edIIB.Value:=0;
            while Not(CDSxmlCab.Eof) do
              begin
                if Trim(CDSxmlCabFinal.AsString)<>'' then
                  begin
                    edTotal.Value   := edTotal.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabFinal.AsString,',',''));
                    edGravado.Value := edGravado.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabMontoGravado.AsString,',',''));
                    edIva.Value     := edIva.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabMontoIVA.AsString,',',''));
                    edIIB.Value     := edIIB.Value+StrToFloat(AnsiReplaceStr( CDSxmlCabMontoExento.AsString,',',''));
                  end;
                CDSxmlCab.Next;
              end;
            CDSxmlCab.Delete;
            CDSxmlCab.First;
            CDSxmlCab.EnableControls;
            CDSxmlCab.AfterScroll:=CDSxmlCabAfterScroll;
          end;
        if chTraerDatos.Checked then Busca.Execute;
      end;
end;

procedure TFormImportarHasar.NoGravado1Click(Sender: TObject);
begin
  inherited;
  NoGravado1.Checked:=not(NoGravado1.Checked);
  dbgXMLCab.Columns[11].Visible := NoGravado1.Checked;
end;

procedure TFormImportarHasar.NombreClick(Sender: TObject);
begin
  inherited;
  Nombre.Checked :=not(Nombre.Checked);
  dbgXMLCab.Columns[0].Visible := Nombre.Checked;
end;

procedure TFormImportarHasar.OtrosTributos1Click(Sender: TObject);
begin
  inherited;
  OtrosTributos1.Checked:=not(OtrosTributos1.Checked);
  dbgXMLCab.Columns[10].Visible := OtrosTributos1.Checked;
end;

procedure TFormImportarHasar.RecalcularExecute(Sender: TObject);
begin
  inherited;
  CDSXmlDet.First;
  CDSVtasDet.First;
  while Not(CDSXmlDet.Eof) do
    begin
 //     if CDSVtasDet.Locate('CODIGOARTICULO',CDSXmlDetCodigoMatrix.AsString,[]) Then
        begin
          CDSVtasDet.Edit;
          CDSVtasDetUNITARIO_GRAVADO.Value := StrToFloat(CDSXmlDetPrecioBase.AsString);
          CDSVtasDetIVA_UNITARIO.Value     := StrToFloat(CDSXmlDetMontoTotalIVA.AsString)/CDSVtasDetCANTIDAD.Value;
          CDSVtasDetUNITARIO_EXENTO.Value  := StrToFloat(CDSXmlDetMontoTotalII.AsString)/CDSVtasDetCANTIDAD.Value;

          CDSVtasDetUNITARIO_TOTAL.Value   := StrToFloat(CDSXmlDetPrecioBase.AsString);
          CDSVtasDetTOTAL_GRAVADO.Value    := StrToFloat(CDSXmlDetMontoTotalBase.AsString);
          CDSVtasDetTOTAL_EXENTO.Value     := StrToFloat(CDSXmlDetMontoTotalII.AsString);
          CDSVtasDetIVA_TOTAL.Value        := StrToFloat(CDSXmlDetMontoTotalIVA.AsString);
          if (CDSVtasDetTOTAL_EXENTO.Value>0) and (CDSVtasDetTOTAL_GRAVADO.Value>0) then
            CDSVtasDetMODO_GRAVAMEN.Value:='M';

          CDSVtasDet.Post;
        end;
      CDSXmlDet.Next;
      CDSVtasDet.Next;
    end;
end;

procedure TFormImportarHasar.sbMaperFileClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPathMaper.Text :=FormBuscaDirectorio.Directorio
  else
    edPathMaper.Text :='';
end;



procedure TFormImportarHasar.spDirXMLClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPathCajas.Text :=FormBuscaDirectorio.Directorio
  else
    edPathCajas.Text :='';


  if edPathCajas.Text<>'' then
    begin
      LeerArchivos;
    end;
end;

end.
