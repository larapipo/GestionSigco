unit URevisionValoresIngreso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, UMovValoresIngreso, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  DBXCommon, Datasnap.Provider, Datasnap.DBClient, W7Classes, W7Panels,
  System.Actions, Vcl.ActnList, cxCheckBox, JvExStdCtrls, JvEdit, JvValidateEdit,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,Math,System.Types,System.StrUtils,
  Vcl.DBCtrls, Vcl.Menus, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormRevisionValoresIngreso = class(TForm)
    QValoresIngresados: TFDQuery;
    QValoresIngresadosID_CAJA: TIntegerField;
    QValoresIngresadosID_MOV_CAJA: TIntegerField;
    QValoresIngresadosFECHA_CAJA: TSQLTimeStampField;
    QValoresIngresadosFECHA_OPERACION: TSQLTimeStampField;
    QValoresIngresadosTIPO_OPERACION: TStringField;
    QValoresIngresadosTIPO_COMPROB: TStringField;
    QValoresIngresadosCLASE_COMPROB: TStringField;
    QValoresIngresadosID_COMPROBANTE: TIntegerField;
    QValoresIngresadosNRO_COMPROBANTE: TStringField;
    QValoresIngresadosHABER: TFloatField;
    QValoresIngresadosDEBE: TFloatField;
    QValoresIngresadosID_TPAGO: TIntegerField;
    QValoresIngresadosID_FPAGO: TIntegerField;
    QValoresIngresadosUNIDADES: TFloatField;
    QValoresIngresadosCOTIZACION: TFloatField;
    QValoresIngresadosID_CUENTA_CAJA: TIntegerField;
    QValoresIngresadosMONEDA: TIntegerField;
    QValoresIngresadosMODOPAGO: TStringField;
    DSValoresIngresados: TDataSource;
    pnCabecera: TPanel;
    QBorrarMov: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField5: TStringField;
    ActionList1: TActionList;
    Confirmar: TAction;
    QValoresIngresadosSELECCION: TBooleanField;
    Panel1: TPanel;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    edSuma: TJvValidateEdit;
    Label1: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1MODOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1SELECCION: TcxGridDBColumn;
    pnPie: TPanel;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    QValoresIngresadosNROCHE3: TIntegerField;
    QValoresIngresadosFECHACHE3: TSQLTimeStampField;
    QValoresIngresadosNUMEROCHE: TIntegerField;
    QValoresIngresadosFECHACHEP: TSQLTimeStampField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    PopupMenu1: TPopupMenu;
    ControlarValores1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure ConfirmarExecute(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QValoresIngresadosAfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1SELECCIONPropertiesChange(Sender: TObject);
    procedure ControlarValores1Click(Sender: TObject);
    procedure FrameMovValoresIngreso1BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    FId_Comprobante  : Integer;
    FTipoComprob     : String;
    FClaseComprob    : String;
    FImporteOriginal : Double;
    FId_Caja         : Integer;
    FId_Cta_Caja     : Integer;
    FNroComprobante  : String;
    FOrigen          : String;
    FCuit            : String;
    FFechaOperacion  : TDateTime;
  public
    { Public declarations }
    PROCEDURE seleccion;
    PROCEDURE sumar;

  published
    property Id_Comprobante :Integer read FId_Comprobante write FId_Comprobante;
    property TipoComprobante:String read FTipoComprob write FTipoComprob;
    property ClaseComprob:String read FClaseComprob write FClaseComprob;
    property ImporteOriginal:Double read FImporteOriginal write FImporteOriginal;
    property Id_Caja:Integer read FId_Caja write FId_Caja;
    property Id_Cta_Caja:Integer read FId_Cta_Caja write FId_Cta_Caja;
    property NroComprobante:String read FNroComprobante write FNroComprobante;
    property FechaOperacion:TDateTime read FFechaOperacion write FFechaOperacion;
    property Origen:String read FOrigen write FOrigen;
    property Cuit:String read FCuit write FCuit;

  end;

var
  FormRevisionValoresIngreso: TFormRevisionValoresIngreso;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormRevisionValoresIngreso.Seleccion;
begin
  QValoresIngresados.First;
  while Not(QValoresIngresados.Eof) do
    begin
      QValoresIngresados.Edit;
      QValoresIngresadosSELECCION.Value:=True;
      QValoresIngresados.Next;
    end;
end;

procedure TFormRevisionValoresIngreso.Sumar;
begin
  edSuma.Value:=0;
  QValoresIngresados.First;
  while Not(QValoresIngresados.Eof) do
    begin
      if QValoresIngresadosSELECCION.Value=True Then
      edSuma.Value:=edSuma.Value+QValoresIngresadosDEBE.AsFloat;
      QValoresIngresados.Next;
    end;
end;


procedure TFormRevisionValoresIngreso.btCancelClick(Sender: TObject);
begin
  Close;
end;


procedure TFormRevisionValoresIngreso.ConfirmarExecute(Sender: TObject);
var TotalIngreso:Double;
Aux:String;
begin
  Aux          := FrameMovValoresIngreso1.lbTotalValores.Caption;
  Aux          := AnsiReplaceText(Aux,',','');
  TotalIngreso := StrToFloat(Aux);

  if QValoresIngresados.RecordCount>0 then
    begin
      if ControlarValores1.Checked then
        begin
          if Not(CompareValue(TotalIngreso,edSuma.Value,0.02)=EqualsValue)  then
            RAISE Exception.Create('Hay diferencias entre lo percibido' + #13 +
                                   'Ingresos por...:'+FormatFloat(',0.00',TotalIngreso)+#13+
                                   'Importe Cpbte..:'+FormatFloat(',0.00',edSuma.Value)+#13+
                                   'Diferencia ....:'+FormatFloat(',0.00', TotalIngreso-edSuma.Value));

      //    if Not(CompareValue(TotalIngreso,0,0.02)=EqualsValue)  then
      //      RAISE Exception.Create('No Hay Ingresos.............');

          if (CompareValue(edSuma.Value,0,0.02)=EqualsValue)  then
            RAISE Exception.Create('No Hay seleccionado valores a reemplazar......');
        end;
    end;

  if QValoresIngresados.RecordCount>1 then
    begin
      QValoresIngresados.First;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        while Not(QValoresIngresados.Eof) do
          begin
            if QValoresIngresadosSELECCION.Value=True then
              begin
                QBorrarMov.Close;
                QBorrarMov.ParamByName('id').Value:=QValoresIngresadosID_MOV_CAJA.Value;
                QBorrarMov.ExecSQL;
                QBorrarMov.Close;
              end;
            QValoresIngresados.Next;
          end;
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
      end;
    end
  else
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        if QValoresIngresadosSELECCION.Value=True then
          begin
            QBorrarMov.Close;
            QBorrarMov.ParamByName('id').Value:=QValoresIngresadosID_MOV_CAJA.Value;
            QBorrarMov.ExecSQL;
            QBorrarMov.Close;
          end;
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;

  DMMain_FD.fdcGestion.StartTransaction;
    try
      FrameMovValoresIngreso1.CDSCajaMov.ApplyUpdates(0);
      FrameMovValoresIngreso1.CDSChe3.ApplyUpdates(0);
      FrameMovValoresIngreso1.CDSMovEfectivo.ApplyUpdates(0);
      FrameMovValoresIngreso1.CDSMovTCredito.ApplyUpdates(0);
      FrameMovValoresIngreso1.CDSTransBco.ApplyUpdates(0);
      FrameMovValoresIngreso1.CDSAjustes.ApplyUpdates(0);
      FrameMovValoresIngreso1.CDSMovValoresComp.ApplyUpdates(0);
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('Operacion No finalizada....!');
    end;
  Close;
end;



procedure TFormRevisionValoresIngreso.ControlarValores1Click(Sender: TObject);
begin
  ControlarValores1.Checked:=Not(ControlarValores1.Checked);
end;

procedure TFormRevisionValoresIngreso.cxGrid1DBTableView1SELECCIONPropertiesChange(
  Sender: TObject);
begin
  Sumar;
end;

procedure TFormRevisionValoresIngreso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRevisionValoresIngreso.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  FrameMovValoresIngreso1.tsCheques.TabVisible:=False;
  FrameMovValoresIngreso1.tsDebito.TabVisible :=False;

  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;
  FrameMovValoresIngreso1.CDSCajaMov.Open;
  FrameMovValoresIngreso1.CDSTransBco.Open;
  FrameMovValoresIngreso1.CDSAjustes.Open;
  FrameMovValoresIngreso1.CDSMovValoresComp.Open;
  FrameMovValoresIngreso1.QCajaCab.Open;

  FrameMovValoresIngreso1.CDSChe3.EmptyDataSet;
  FrameMovValoresIngreso1.CDSMovEfectivo.EmptyDataSet;
  FrameMovValoresIngreso1.CDSMovTCredito.EmptyDataSet;
  FrameMovValoresIngreso1.CDSMovValoresComp.EmptyDataSet;
  FrameMovValoresIngreso1.CDSAjustes.EmptyDataSet;
  FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;
  FrameMovValoresIngreso1.CDSTransBco.EmptyDataSet;

  FrameMovValoresIngreso1.pcValores.ActivePageIndex:=0;
  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

  FrameMovValoresIngreso1.ceCaja.Enabled:=False;

end;

procedure TFormRevisionValoresIngreso.FormDestroy(Sender: TObject);
begin
  FormRevisionValoresIngreso:=nil;
end;

procedure TFormRevisionValoresIngreso.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TBitBtn)) and

    (not (ActiveControl is TDBGrid))
    then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end
  else
    if Key = #27 then
      Close;
end;

procedure TFormRevisionValoresIngreso.FormShow(Sender: TObject);
var
  AIndex, ARowIndex: Integer;
  AValue : Variant;
begin
  QValoresIngresados.Close;
  QValoresIngresados.ParamByName('id_Cpbte').Value :=FId_Comprobante;
  QValoresIngresados.ParamByName('TipoCpbte').Value:=FTipoComprob;
  QValoresIngresados.Open;

  WITH FrameMovValoresIngreso1 DO
    BEGIN
      QCajaCab.Close;
      QCajaCab.ParamByName('Id').Value := FId_Cta_Caja;// CajaPorDefecto;
      QCajaCab.Open;
      IF NOT (QCajaCab.IsEmpty) THEN
      BEGIN
        ceCaja.Text        := IntToStr(FId_Cta_Caja);// CDSCajaCabID_CUENTA_CAJA.AsString;
        edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
        Id_Caja            := FId_Caja;//  CDSCajaCabID_CAJA.Value;
        id_cuenta_caja     := FId_Cta_Caja;// CDSCajaCabID_CUENTA_CAJA.AsInteger;
        FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
      end;
      TipoCpbte      := FTipoComprob;// CDSReemplazoTIPOCPBTE.Value;
      TipoOperacion  := 'I';
      ClaseCpbte     := FClaseComprob;// CDSReemplazoCLASECPBTE.Value;
      NroCpbte       := FNroComprobante;// CDSReemplazoNROCPBTE.Value;
      FechaOperacion := FFechaOperacion;//.AsDateTime;
      IdCpbte        := FId_Comprobante;//.Value;
      Origen         := FOrigen;
      Cuit           := FCuit;
    END;

  FrameMovValoresIngreso1.tsCheques.TabVisible:=False;
  FrameMovValoresIngreso1.tsDebito.TabVisible :=False;

  FrameMovValoresIngreso1.dbgMovimientos.SetFocus;
//  AIndex := cxGrid1DBTableView1.DataController.Summary.DefaultGroupSummaryItems.IndexOfItemLink(cxGrid1DBTableView1DEBE);
//  ARowIndex := cxGrid1DBTableView1.DataController.FocusedRowIndex;
//  AValue := cxGrid1DBTableView1.DataController.Summary.GroupSummaryDisplayValues[ARowIndex, 0, AIndex];

//  ShowMessage(VarToStr(AValue));
end;


procedure TFormRevisionValoresIngreso.FrameMovValoresIngreso1BitBtn7Click(
  Sender: TObject);
begin
  FrameMovValoresIngreso1.PostEfectivoExecute(Sender);

end;

procedure TFormRevisionValoresIngreso.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux: real;
begin
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  aux:= edSuma.Value -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(',0.00',aux);
end;

procedure TFormRevisionValoresIngreso.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux: real;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
  aux:= edSuma.Value - FrameMovValoresIngreso1.SumaValores ;
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(',0.00',aux);

end;

procedure TFormRevisionValoresIngreso.FrameMovValoresIngreso1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  FrameMovValoresIngreso1.CDSCajaMovBeforeDelete(DataSet);
end;

procedure TFormRevisionValoresIngreso.QValoresIngresadosAfterOpen(
  DataSet: TDataSet);
begin
  seleccion;
  Sumar;
end;

end.
