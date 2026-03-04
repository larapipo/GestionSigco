unit UStock_descuentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, DB, SqlExpr, DateUtils,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, JvExMask,
  JvToolEdit, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, JvMaskEdit, JvDBFindEdit,Math, JvDBLookup, cxTimeEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, cxCheckBox, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormStock_Dstos = class(TFormABMBase)
    QArticulos: TFDQuery;
    CDSArticulos: TClientDataSet;
    DSPArticulos: TDataSetProvider;
    QArticulosCODIGO: TStringField;
    QArticulosMUESTRASTOCK: TStringField;
    QArticulosDESCUENTO: TFloatField;
    QArticulosDESDE: TSQLTimeStampField;
    QArticulosHASTA: TSQLTimeStampField;
    DSArticulos: TDataSource;
    CDSArticulosCODIGO: TStringField;
    CDSArticulosMUESTRASTOCK: TStringField;
    CDSArticulosDESCUENTO: TFloatField;
    CDSArticulosDESDE: TSQLTimeStampField;
    CDSArticulosHASTA: TSQLTimeStampField;
    Panel2: TPanel;
    Panel3: TPanel;
    JvGradient1: TJvGradient;
    JvGradient3: TJvGradient;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    BuscarArticulo: TAction;
    QArticulosPRECIO: TFloatField;
    CDSArticulosPRECIO: TFloatField;
    Label1: TLabel;
    pcPromociones: TPageControl;
    pagPromociones: TTabSheet;
    dbgDetalle: TJvDBGrid;
    pagListado: TTabSheet;
    cxgListadoDBTableView1: TcxGridDBTableView;
    cxgListadoLevel1: TcxGridLevel;
    cxgListado: TcxGrid;
    QListado: TFDQuery;
    DSPListado: TDataSetProvider;
    CDSListado: TClientDataSet;
    DSListado: TDataSource;
    BitBtn1: TBitBtn;
    JvDBFindEdit1: TJvDBFindEdit;
    QArticulosSOLOCLIENTES: TStringField;
    CDSArticulosSOLOCLIENTES: TStringField;
    Label2: TLabel;
    dbcRubro: TJvDBLookupCombo;
    DSRubro: TDataSource;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    CDSListadoCODIGO_STK: TStringField;
    CDSListadoDETALLE_STK: TStringField;
    CDSListadoRUBRO_STK: TStringField;
    CDSListadoSUBRUBRO_STK: TStringField;
    CDSListadoMARCA_STK: TStringField;
    CDSListadoDETALLE_RUBRO: TStringField;
    CDSListadoDETALLE_SUBRUBRO: TStringField;
    CDSListadoDESCRIPCION_MARCA: TStringField;
    CDSListadoDESCUENTO: TFloatField;
    CDSListadoPRECIO: TFloatField;
    CDSListadoDESDE: TSQLTimeStampField;
    CDSListadoHASTA: TSQLTimeStampField;
    CDSListadoSOLOCLIENTES: TStringField;
    cxgListadoDBTableView1CODIGO_STK: TcxGridDBColumn;
    cxgListadoDBTableView1DETALLE_STK: TcxGridDBColumn;
    cxgListadoDBTableView1RUBRO_STK: TcxGridDBColumn;
    cxgListadoDBTableView1SUBRUBRO_STK: TcxGridDBColumn;
    cxgListadoDBTableView1MARCA_STK: TcxGridDBColumn;
    cxgListadoDBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxgListadoDBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxgListadoDBTableView1DESCRIPCION_MARCA: TcxGridDBColumn;
    cxgListadoDBTableView1DESCUENTO: TcxGridDBColumn;
    cxgListadoDBTableView1PRECIO: TcxGridDBColumn;
    cxgListadoDBTableView1DESDE: TcxGridDBColumn;
    cxgListadoDBTableView1HASTA: TcxGridDBColumn;
    cxgListadoDBTableView1SOLOCLIENTES_BOOL: TcxGridDBColumn;
    CDSListadoHORA_DESDE: TSQLTimeStampField;
    CDSListadoHORA_HASTA: TSQLTimeStampField;
    cxgListadoDBTableView1HORA_DESDE: TcxGridDBColumn;
    cxgListadoDBTableView1HORA_HASTA: TcxGridDBColumn;
    AplicarAllSubRubro: TAction;
    PopupMenu1: TPopupMenu;
    AplicarAlRubro1: TMenuItem;
    LimpiarAllSubRubros: TAction;
    LimpiarAllSubRubros1: TMenuItem;
    chExpandir: TCheckBox;
    QArticulosAPLICA_LUNES: TStringField;
    QArticulosAPLICA_MARTES: TStringField;
    QArticulosAPLICA_MIERCOLES: TStringField;
    QArticulosAPLICA_JUEVES: TStringField;
    QArticulosAPLICA_VIERNES: TStringField;
    QArticulosAPLICA_SABADOS: TStringField;
    QArticulosAPLICA_ALL_DAYS: TStringField;
    CDSArticulosAPLICA_LUNES: TStringField;
    CDSArticulosAPLICA_MARTES: TStringField;
    CDSArticulosAPLICA_MIERCOLES: TStringField;
    CDSArticulosAPLICA_JUEVES: TStringField;
    CDSArticulosAPLICA_VIERNES: TStringField;
    CDSArticulosAPLICA_SABADOS: TStringField;
    CDSArticulosAPLICA_ALL_DAYS: TStringField;
    CDSListadoLUNES: TStringField;
    CDSListadoMARTES: TStringField;
    CDSListadoMIERCOLES: TStringField;
    CDSListadoJUEVES: TStringField;
    CDSListadoVIERNES: TStringField;
    CDSListadoSABADO: TStringField;
    CDSListadoTODOS: TStringField;
    CDSListadoDOMINGO: TStringField;
    QArticulosAPLICA_DOMINGO: TStringField;
    CDSArticulosAPLICA_DOMINGO: TStringField;
    cxgListadoDBTableView1LUNES: TcxGridDBColumn;
    cxgListadoDBTableView1MARTES: TcxGridDBColumn;
    cxgListadoDBTableView1MIERCOLES: TcxGridDBColumn;
    cxgListadoDBTableView1JUEVES: TcxGridDBColumn;
    cxgListadoDBTableView1VIERNES: TcxGridDBColumn;
    cxgListadoDBTableView1SABADO: TcxGridDBColumn;
    cxgListadoDBTableView1TODOS: TcxGridDBColumn;
    cxgListadoDBTableView1DOMINGO: TcxGridDBColumn;
    pagHistorico: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DSPArtHis: TDataSetProvider;
    CDSArtHis: TClientDataSet;
    StringField14: TStringField;
    StringField15: TStringField;
    SQLTimeStampField5: TSQLTimeStampField;
    SQLTimeStampField6: TSQLTimeStampField;
    FloatField3: TFloatField;
    DSArtHis: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BorrarHistorialUno: TAction;
    PopupMenu2: TPopupMenu;
    BorrarHistorialdeesteArticulo1: TMenuItem;
    N1: TMenuItem;
    QArtiHis: TFDQuery;
    CDSArtHisDESCUENTO: TFloatField;
    QlimpiarHistorialFD: TFDQuery;
    QLimpiarHistorialUnoFD: TFDQuery;
    QLimpiarArticulosFD: TFDQuery;
    QRubro: TFDQuery;
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSArticulosCODIGOSetText(Sender: TField; const Text: string);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSArticulosDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSArticulosPRECIOSetText(Sender: TField; const Text: string);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSArticulosNewRecord(DataSet: TDataSet);
    procedure CDSArticulosAfterPost(DataSet: TDataSet);
    procedure CDSArticulosAfterDelete(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure CDSListadoHORA_DESDESetText(Sender: TField; const Text: string);
    procedure CDSListadoNewRecord(DataSet: TDataSet);
    procedure dbgDetalleDblClick(Sender: TObject);
    function dbgDetalleCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure CDSArticulosBeforeInsert(DataSet: TDataSet);
    procedure AplicarAllSubRubroExecute(Sender: TObject);
    procedure LimpiarAllSubRubrosExecute(Sender: TObject);
    procedure chExpandirClick(Sender: TObject);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSListadoTODOSSetText(Sender: TField; const Text: string);
    procedure CDSListadoDESDESetText(Sender: TField; const Text: string);
    procedure CDSListadoHASTASetText(Sender: TField; const Text: string);
    procedure CDSListadoDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSListadoPRECIOSetText(Sender: TField; const Text: string);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BorrarHistorialUnoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarAsrticulo(Dato:String):Boolean;
    FUNCTION VerificaCargado(Dato: STRING): Boolean;

  end;

var
  FormStock_Dstos: TFormStock_Dstos;

implementation

uses UDMain_FD, DMBuscadoresForm, UBuscadorArticulos, UMuestraListaCodBarra;
{$R *.dfm}

FUNCTION TFormStock_Dstos.VerificaCargado(Dato: STRING): Boolean;
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSArticulos,True);
  Result:= CDSClone.Locate('CODIGO',Dato,[]);
  FreeAndNil(CDSClone);
//
end;


procedure TFormStock_Dstos.AplicarAllSubRubroExecute(Sender: TObject);
var CDSClone        :TClientDataSet;
Descuento,Precio    :Double;
Desde,Hasta,
Horadesde,HoraHasta :TDateTime;
Estado:String;
begin
  inherited;

  if ((CDSListadoDESCUENTO.AsFloat>0) or (CDSListadoPRECIO.AsFloat>0)) then
    begin
      Screen.Cursor:=crHourGlass;
      Descuento    :=CDSListadoDESCUENTO.ASFloat;
      Precio       :=CDSListadoPRECIO.ASFloat;
      Desde        :=CDSListadoDESDE.AsDateTime;
      Hasta        :=CDSListadoHASTA.AsDateTime;
      Estado       :=CDSListadoSOLOCLIENTES.Value;
      Horadesde    :=CDSListadoHORA_DESDE.AsDateTime;
      HoraHasta    :=CDSListadoHORA_HASTA.AsDateTime;

      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSListado,True);
      CDSClone.Filter:='SUBRUBRO_STK = '+''''+CDSListadoSUBRUBRO_STK.AsString+'''';
      CDSClone.Filtered:=True;
      CDSClone.First;
      while not(CDSClone.Eof) do
        begin
          if CDSListado.Locate('CODIGO_STK',CDSClone.FieldByName('CODIGO_STK').ASString,[]) Then
            begin
              CDSListado.Edit;
              CDSListadoDESCUENTO.AsFloat := Descuento;
              CDSListadoPRECIO.AsFloat    := Precio;
              CDSListadoDESDE.AsDateTime  := Desde;
              CDSListadoHASTA.AsDateTime  := Hasta;
              CDSListadoSOLOCLIENTES.Value:= Estado;
              CDSListadoHORA_DESDE.AsDateTime:=Horadesde;
              CDSListadoHORA_HASTA.AsDateTime:=HoraHasta;
              CDSListado.Post;
            end;
          CDSClone.Next;
        end;
   end;
  FreeAndNil(CDSClone);
  Screen.Cursor:=crDefault;
end;

function TFormStock_Dstos.AsignarAsrticulo(Dato: string):Boolean;
begin
  CDSStock.close;
  CDSStock.Params.ParamByName('Codigo').AsString:=Dato;
  CDSStock.Open;
  if Not(CDSStock.IsEmpty) then
    begin
      if Not(VerificaCargado(Dato)) then
        begin
          CDSArticulosMUESTRASTOCK.Value:=CDSStockDETALLE_STK.Value;
          Result:=True;
        end
      else
        Result:=False;
    end
  else
    begin
      CDSArticulosMUESTRASTOCK.Value:='';
      Result:=False;
    end;

end;

procedure TFormStock_Dstos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CDSListado.Close;
  CDSListado.IndexFieldNames:='';
  CDSListado.IndexDefs.Clear;
  CDSListado.Params.ParamByName('rubro').Value:= dbcRubro.KeyValue;
  CDSListado.Open;
  cxgListadoDBTableView1.ViewData.Expand(True);
  //CDSListado.First;
end;

procedure TFormStock_Dstos.BitBtn2Click(Sender: TObject);
begin
  inherited;
  CDSArtHis.Close;
  CDSArtHis.Open;
end;

procedure TFormStock_Dstos.BitBtn3Click(Sender: TObject);
begin
  inherited;
  QlimpiarHistorialFD.Close;
  QlimpiarHistorialFD.ExecSQL;
  QlimpiarHistorialFD.Close;
  CDSArtHis.Close;
  CDSArtHis.Open;
end;

procedure TFormStock_Dstos.BorrarHistorialUnoExecute(Sender: TObject);
begin
  inherited;
  //obtener valor de una campo en cxGrid
  QLimpiarHistorialUnoFD.Close;
  QLimpiarHistorialUnoFD.ParamByName('Codigo').AsString:=cxGridDBColumn1.DataBinding.Field.Value;
  QLimpiarHistorialUnoFD.ExecSQL;
  QLimpiarHistorialUnoFD.Close;
  CDSArtHis.Close;
  CDSArtHis.Open;
end;

procedure TFormStock_Dstos.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
       if VerificaCargado(FormBuscadorArticulos.Codigo)=False then
         begin
           //    DatosVentas.wwCDSVentaDetCodigoArticuloSetText(DatosVentas.wwCDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);
           IF CDSArticulos.State = dsBrowse THEN
             CDSArticulos.Edit;
           CDSArticulosCODIGOSetText(CDSArticulosCODIGO, FormBuscadorArticulos.Codigo);
         end
       else
         ShowMessage('Codigo cargado...');

     END;
end;

procedure TFormStock_Dstos.BuscarExecute(Sender: TObject);
begin
 // inherited;

end;

procedure TFormStock_Dstos.CDSArticulosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CDSArticulos.ApplyUpdates(0);
end;

procedure TFormStock_Dstos.CDSArticulosAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSArticulos.ApplyUpdates(0);
end;

procedure TFormStock_Dstos.CDSArticulosBeforeInsert(DataSet: TDataSet);
begin
  inherited;
 // CDSArticulos.Cancel;
 // SysUtils.Abort;
end;

procedure TFormStock_Dstos.CDSArticulosCODIGOSetText(Sender: TField;
  const Text: string);
VAR
  S: STRING;
  Enter:Char;
begin
  inherited;
  Enter:=#13;
  if (Text<>'') and (Text<>#13) then
    begin
      If CDSArticulos.State=dsBrowse Then
        CDSArticulos.edit;
      DMMain_FD.CDSCodigoBarra.Close;
      DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
      DMMain_FD.CDSCodigoBarra.Open;
      If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
        begin
          // BUsco por el serie ...
          DMBuscadores.QConsultaCodigoSerie.Close;
          DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=UpperCase(Text);
          DMBuscadores.QConsultaCodigoSerie.Open;
          If DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString='' Then
            begin
              Sender.AsString:=Text;
              DMMain_FD.EncontroCodigoBarra:=False;
            end
          else
            begin
             Sender.AsString:=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
             DMMain_FD.EncontroCodigoBarra:=True;
            end;
          DMBuscadores.QConsultaCodigoSerie.Close;
        end
      else
        begin
          if DMMain_FD.CDSCodigoBarra.RecordCount>1 Then
            begin
              if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(application);
              FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(Text);
              FormMuestraListaCodigoBarra.ShowModal;
              Sender.AsString:=FormMuestraListaCodigoBarra.Codigo;
            end
          else
            Sender.AsString:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
          DMMain_FD.EncontroCodigoBarra:=True;
        end;
      DMMain_FD.CDSCodigoBarra.Close;
      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      Sender.AsString:=s; ;
      if Not(VerificaCargado(Sender.AsString)) then
        begin
          IF AsignarAsrticulo(s) = False THEN
            BEGIN
             // Busqueda por codigo
              IF (Assigned(FormBuscadorArticulos)) THEN
                FreeAndNil(FormBuscadorArticulos);
              IF Not(Assigned(FormBuscadorArticulos)) THEN
                FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
              FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
              FormBuscadorArticulos.CampoNro          := 0;
              FormBuscadorArticulos.Param1:=1;
              FormBuscadorArticulos.Param2:=3;
              FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
              FormBuscadorArticulos.Esquema     :=-1;

              FormBuscadorArticulos.Dato              := Text;
              if FormBuscadorArticulos.Visible=False Then
                FormBuscadorArticulos.ShowModal;
              if FormBuscadorArticulos.Codigo<>'' Then
                begin
                  IF CDSArticulos.State = dsBrowse THEN
                    CDSArticulos.Edit;
                  CDSArticulosCODIGOSetText(CDSArticulosCODIGO,FormBuscadorArticulos.Codigo);
                end
              else
                Sender.AsString:='';
            END;
          if DMMain_FD.EncontroCodigoBarra Then
            FormStock_Dstos.dbgDetalle.OnKeyPress(FormStock_Dstos.dbgDetalle,Enter);
        end
      else
        begin
          ShowMessage('Codigo ya cargado.....');
          Sender.AsString:='';
          if CDSArticulos.State in [dsInsert,dsEdit] then
            begin
              CDSArticulos.Cancel;
              SysUtils.Abort;
            end;
        end;
  END;
end;

procedure TFormStock_Dstos.CDSArticulosDESCUENTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString  :=Text;
  CDSArticulosPRECIO.AsFloat:=0;
end;

procedure TFormStock_Dstos.CDSArticulosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSArticulosDESCUENTO.AsFloat      := 0;
  CDSArticulosPRECIO.AsFloat         := 0;
  CDSArticulosAPLICA_LUNES.Value     :='S';
  CDSArticulosAPLICA_MARTES.Value    :='S';
  CDSArticulosAPLICA_MIERCOLES.Value :='S';
  CDSArticulosAPLICA_JUEVES.Value    :='S';
  CDSArticulosAPLICA_VIERNES.Value   :='S';
  CDSArticulosAPLICA_SABADOS.Value   :='S';
  CDSArticulosAPLICA_ALL_DAYS.Value  :='S';
end;

procedure TFormStock_Dstos.CDSArticulosPRECIOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString              := Text;
  CDSArticulosDESCUENTO.AsFloat:= 0;
end;

procedure TFormStock_Dstos.CDSListadoDESCUENTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSListadoDESCUENTO.AsFloat>0 then
    CDSListadoPRECIO.AsFloat:=0;

end;

procedure TFormStock_Dstos.CDSListadoDESDESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if (CDSListadoHASTA.AsDateTime<=0) then
    CDSListadoHasta.AsDateTime:=IncMonth(CDSListadoDESDE.AsDateTime);

end;

procedure TFormStock_Dstos.CDSListadoHASTASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if (CDSListadoDESDE.AsDateTime<=0) then
    CDSListadoDESDE.AsDateTime:=IncMonth(CDSListadoHASTA.AsDateTime,-1);
end;

procedure TFormStock_Dstos.CDSListadoHORA_DESDESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSListadoDESDE.AsDateTime:=StrToDateTime(DateToStr(CDSListadoDESDE.AsDateTime)+ TimeToStr(CDSListadoHORA_DESDE.AsDateTime));
end;

procedure TFormStock_Dstos.CDSListadoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSListadoPRECIO.AsFloat   := 0;
  CDSListadoDESCUENTO.AsFloat:= 0;
  CDSListadoDESDE.AsDateTime := Date;
  CDSListadoHASTA.AsDateTime := Date;
  CDSListadoHORA_DESDE.AsDateTime := StrToTime('08:00');
  CDSListadoHORA_HASTA.AsDateTime := StrToTime('20:00');

end;


procedure TFormStock_Dstos.CDSListadoPRECIOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSListadoPRECIO.AsFloat>0 then
    CDSListadoDESCUENTO.AsFloat:=0;

end;

procedure TFormStock_Dstos.chExpandirClick(Sender: TObject);
begin
  inherited;
  if chExpandir.Checked then
    cxgListadoDBTableView1.ViewData.Expand(True)
  else
    cxgListadoDBTableView1.ViewData.Collapse(True);

end;

procedure TFormStock_Dstos.ConfirmaExecute(Sender: TObject);
var anio,mes,dia:Word;
Puntero:TBookmark;
begin
//  inherited;
  if (CDSListado.Active=True) and (Not(CDSListado.IsEmpty)) then
    begin

      CDSArticulos.Close;
      CDSArticulos.Open;
      CDSListado.DisableControls;
      Screen.Cursor:=crHourGlass;
      puntero:=CDSListado.GetBookmark;
      CDSListado.First;
      while Not(CDSListado.Eof) do
        begin
          if ((CDSListadoDESCUENTO.AsFloat>0) or (CDSListadoPRECIO.AsFloat>0)) then
            begin
              if CDSArticulos.Locate('CODIGO',CDSListadoCODIGO_STK.ASString,[]) Then
                CDSArticulos.Edit
              else
                CDSArticulos.Append;
              CDSArticulosCODIGO.Value    := CDSListadoCODIGO_STK.Value;
              CDSArticulosDESCUENTO.Value := CDSListadoDESCUENTO.Value;
              CDSArticulosPRECIO.Value    := CDSListadoPRECIO.Value;
//              if (DateToStr(CDSListadoDESDE.AsDateTime)='')  or (DateToStr(CDSListadoHASTA.AsDateTime)='') then
//                begin
//                  DecodeDate(Date,anio,mes,dia);
//                  CDSListadoDESDE.AsDateTime:=EncodeDate(anio,mes,1);
//                  CDSListadoDESDE.AsDateTime:=EncodeDate(anio,mes,DaysInMonth(date));
//                end;
//              if (DateToStr(CDSListadoHORA_DESDE.AsDateTime)='')  or (DateToStr(CDSListadoHORA_HASTA.AsDateTime)='') then
//                begin
//                  CDSListadoHORA_DESDE.AsDateTime:=0;
//                  CDSListadoHORA_HASTA.AsDateTime:=0;
//                end;

              if (CDSListadoDESDE.AsDateTime<=0) or (CDSListadoHASTA.AsDateTime<=0)  then
                begin
                  CDSArticulosDESDE.AsDateTime :=Date;
                  CDSArticulosHASTA.AsDateTime :=IncMonth(Date,1);
                end
              else
                begin
                  CDSArticulosDESDE.AsDateTime:=StrToDateTime(DateToStr(CDSListadoDESDE.AsDateTime)+ TimeToStr(CDSListadoHORA_DESDE.AsDateTime));
                  CDSArticulosHASTA.AsDateTime:=StrToDateTime(DateToStr(CDSListadoHASTA.AsDateTime)+ TimeToStr(CDSListadoHORA_HASTA.AsDateTime));
                end;
              CDSArticulosSOLOCLIENTES.Value    := CDSListadoSOLOCLIENTES.Value;
              CDSArticulosAPLICA_LUNES.Value    := CDSListadoLUNES.Value;
              CDSArticulosAPLICA_MARTES.Value   := CDSListadoMARTES.Value;
              CDSArticulosAPLICA_MIERCOLES.Value:= CDSListadoMIERCOLES.Value;
              CDSArticulosAPLICA_JUEVES.Value   := CDSListadoJUEVES.Value;
              CDSArticulosAPLICA_VIERNES.Value  := CDSListadoVIERNES.Value;
              CDSArticulosAPLICA_SABADOS.Value  := CDSListadoSABADO.Value;
              CDSArticulosAPLICA_DOMINGO.Value  := CDSListadoDOMINGO.Value;
              CDSArticulosAPLICA_ALL_DAYS.Value := CDSListadoTODOS.Value;
              CDSArticulos.Post;
            end
          else
            if ((CDSListadoDESCUENTO.AsFloat=0) and (CDSListadoPRECIO.AsFloat=0)) then
              begin
                if CDSArticulos.Locate('CODIGO',CDSListadoCODIGO_STK.ASString,[]) Then
                  CDSArticulos.Delete;
              end;
          CDSListado.Next;
        end;

      CDSListado.GotoBookmark(Puntero);
      CDSListado.FreeBookmark(Puntero);
      CDSListado.EnableControls;
      CDSListado.EnableControls;

      CDSArticulos.ApplyUpdates(0);
      CDSArticulos.Close;
      CDSArticulos.Open;

      Screen.Cursor:=crDefault;

    end;
end;

function TFormStock_Dstos.dbgDetalleCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  result   := Field = CDSArticulosSOLOCLIENTES;
  StringForTrue  := 'S';
  StringForFalse := 'N';


//  if Field = CDSArticulosSOLOCLIENTES then
//    begin
//      result   := Field = CDSArticulosSOLOCLIENTES;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_ALL_DAYS then
//    begin
//      result   := Field = CDSArticulosAPLICA_ALL_DAYS;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_LUNES then
//    begin
//      result   := Field = CDSArticulosAPLICA_LUNES;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_MARTES then
//    begin
//      result   := Field = CDSArticulosAPLICA_MARTES;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_MIERCOLES then
//    begin
//      result   := Field = CDSArticulosAPLICA_MIERCOLES;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_JUEVES then
//    begin
//      result   := Field = CDSArticulosAPLICA_JUEVES;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_VIERNES then
//    begin
//      result   := Field = CDSArticulosAPLICA_VIERNES;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_SABADOS then
//    begin
//      result   := Field = CDSArticulosAPLICA_SABADOS;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end
//  else
//  if Field = CDSArticulosAPLICA_DOMINGO then
//    begin
//      result   := Field = CDSArticulosAPLICA_DOMINGO;
//      StringForTrue  := 'S';
//      StringForFalse := 'N';
//    end;

  //StringForTrue  := 'S';
  //StringForFalse := 'N';
end;

procedure TFormStock_Dstos.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBgDetalle.SelectedIndex = 1 THEN
    DBGDetalle.SelectedIndex := 2
  else
    IF (DBgDetalle.SelectedIndex = 3) or (DBgDetalle.SelectedIndex = 4) THEN
      DBGDetalle.SelectedIndex := 5
end;

procedure TFormStock_Dstos.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if Not(CDSListado.IsEmpty) then
    begin
      cxgListadoDBTableView1.ViewData.Expand(True);
      if CDSListado.Locate('CODIGO_STK',CDSArticulosCODIGO.ASString,[]) Then
        pcPromociones.ActivePageIndex:=0;
    end;
end;

procedure TFormStock_Dstos.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  clPaleGreen = TColor(clMoneyGreen);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if ((Now>=CDSArticulosDESDE.AsDateTime) and
      (Now<=CDSArticulosHASTA.AsDateTime)) Then
        dbgDetalle.canvas.font.Style := [fsBold];
    //Esta línea es nueva

    dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormStock_Dstos.dbgDetalleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGDetalle.SelectedIndex = 0) THEN
        DBGDetalle.SelectedIndex := 2 else
      IF (DBGDetalle.SelectedIndex = 2) THEN
        DBGDetalle.SelectedIndex := 3 else
      IF (DBGDetalle.SelectedIndex = 3) THEN
        DBGDetalle.SelectedIndex := 4 else
      IF (DBGDetalle.SelectedIndex = 4) THEN
        DBGDetalle.SelectedIndex := 5 else
      IF (DBGDetalle.SelectedIndex = 5) THEN
        DBGDetalle.SelectedIndex := 6 else

      IF (DBGDetalle.SelectedIndex > 5) tHEN
        BEGIN
          IF DBGDetalle.DataSource.DataSet.Eof THEN
            DBGDetalle.DataSource.DataSet.Append;
          DBGDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF DBGDetalle.SelectedField = CDSArticulosCODIGO THEN
          BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        DBGDetalle.DataSource.DataSet.Cancel;


end;

procedure TFormStock_Dstos.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
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

procedure TFormStock_Dstos.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormStock_Dstos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CDSRubro.Close;
  CDSArticulos.Close;
  Action:=caFree;
end;

procedure TFormStock_Dstos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=1;
  AutoSIze:=False;
  CDSRubro.Open;
  CDSArticulos.Open;
  pnPrincipal.Enabled:=True;
  pcPromociones.ActivePageIndex:=0;
end;

procedure TFormStock_Dstos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormStock_Dstos:=nil;
end;

procedure TFormStock_Dstos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TJvDBGrid) and
    Not(ActiveControl is TJvDBDateEdit) then
  
  inherited;

end;

procedure TFormStock_Dstos.LimpiarAllSubRubrosExecute(Sender: TObject);
var CDSClone        :TClientDataSet;
begin
  inherited;
  if ((CDSListadoDESCUENTO.AsFloat>0) or (CDSListadoPRECIO.AsFloat>0)) then
    begin
      Screen.Cursor:=crHourGlass;
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSListado,True);
      CDSClone.Filter:='SUBRUBRO_STK = '+''''+CDSListadoSUBRUBRO_STK.AsString+'''';
      CDSClone.Filtered:=True;
      CDSClone.First;
      while not(CDSClone.Eof) do
        begin
          if CDSListado.Locate('CODIGO_STK',CDSClone.FieldByName('CODIGO_STK').ASString,[]) Then
            begin
              CDSListado.Edit;
              CDSListadoDESCUENTO.AsFloat := 0;
              CDSListadoPRECIO.AsFloat    := 0;
              CDSListadoDESDE.Clear;
              CDSListadoHASTA.Clear;
              CDSListadoSOLOCLIENTES.Value:= 'N';
              CDSListadoHORA_DESDE.Clear;
              CDSListadoHORA_HASTA.Clear;
              CDSListadoLUNES.Value       :='N';
              CDSListadoMARTES.Value      :='N';
              CDSListadoMIERCOLES.Value   :='N';
              CDSListadoJUEVES.Value      :='N';
              CDSListadoVIERNES.Value     :='N';
              CDSListadoSABADO.Value      :='N';
              CDSListadoDOMINGO.Value     :='N';
              CDSListadoTODOS.Value       :='N';

              CDSListado.Post;
//              if CDSArticulos.Locate('CODIGO',CDSClone.FieldByName('CODIGO_STK').ASString,[]) Then
//                CDSArticulos.Delete;

            end;
          CDSClone.Next;
        end;
   end;
  FreeAndNil(CDSClone);
  Screen.Cursor:=crDefault;
end;

procedure TFormStock_Dstos.CDSListadoTODOSSetText(Sender: TField;
  const Text: string);
begin
  inherited;
 Sender.AsString:=Text;
 if CDSListadoTODOS.Value='S' Then
    begin
      CDSListadoLUNES.Value    :='S';
      CDSListadoMARTES.Value   :='S';
      CDSListadoMIERCOLES.Value:='S';
      CDSListadoJUEVES.Value   :='S';
      CDSListadoVIERNES.Value  :='S';
      CDSListadoSABADO.Value   :='S';
      CDSListadoDOMINGO.Value  :='S';
    end;
 end;

end.
