unit URevisionValoresEgresados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls,
  Vcl.Buttons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  UMovValoresEgresos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,DBXCommon, Vcl.Grids, Vcl.DBGrids, cxCheckBox,
  JvExStdCtrls, JvEdit, JvValidateEdit, W7Classes, W7Panels,Math,System.Types,System.StrUtils,
  Vcl.DBCtrls, Vcl.Menus, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormRevisionValoresEgresados = class(TForm)
    pnValoresActuales: TPanel;
    Label1: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    pnCabecera: TPanel;
    QValoresEgresados: TFDQuery;
    DSValoresEgresados: TDataSource;
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
    QValoresEgresadosID_CAJA: TIntegerField;
    QValoresEgresadosID_MOV_CAJA: TIntegerField;
    QValoresEgresadosFECHA_CAJA: TSQLTimeStampField;
    QValoresEgresadosFECHA_OPERACION: TSQLTimeStampField;
    QValoresEgresadosTIPO_OPERACION: TStringField;
    QValoresEgresadosTIPO_COMPROB: TStringField;
    QValoresEgresadosCLASE_COMPROB: TStringField;
    QValoresEgresadosID_COMPROBANTE: TIntegerField;
    QValoresEgresadosNRO_COMPROBANTE: TStringField;
    QValoresEgresadosHABER: TFloatField;
    QValoresEgresadosDEBE: TFloatField;
    QValoresEgresadosID_TPAGO: TIntegerField;
    QValoresEgresadosID_FPAGO: TIntegerField;
    QValoresEgresadosUNIDADES: TFloatField;
    QValoresEgresadosCOTIZACION: TFloatField;
    QValoresEgresadosID_CUENTA_CAJA: TIntegerField;
    QValoresEgresadosMONEDA: TIntegerField;
    QValoresEgresadosMODOPAGO: TStringField;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1MODOPAGO: TcxGridDBColumn;
    edSuma: TJvValidateEdit;
    cxGrid1DBTableView1SELECCION: TcxGridDBColumn;
    QValoresEgresadosSELECCION: TBooleanField;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    pnPie: TPanel;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    QValoresEgresadosNROCHE3: TIntegerField;
    QValoresEgresadosFECHACHE3: TSQLTimeStampField;
    QValoresEgresadosNUMEROCHE: TIntegerField;
    QValoresEgresadosFECHACHEP: TSQLTimeStampField;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText2: TDBText;
    PopupMenu1: TPopupMenu;
    ControlarValores1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforePost(DataSet: TDataSet);
    procedure QValoresEgresadosAfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1SELECCIONPropertiesChange(Sender: TObject);
    procedure ControlarValores1Click(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn7Click(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovID_FPAGOSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
    FId_Comprobante  : Integer;
    FTipoComprob     : String;
    FClaseComprob    : String;
    FImporteOriginal : Double;
    FId_Caja         : Integer;
    FId_Cta_Caja     : Integer;
    FOrigen          : String;
    FCuit            : String;
    FNroComprobante  : String;
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
  FormRevisionValoresEgresados: TFormRevisionValoresEgresados;

implementation

uses UDMain_FD, UCarteraCheques;

{$R *.dfm}

procedure TFormRevisionValoresEgresados.Seleccion;
begin
  QValoresEgresados.First;
  while Not(QValoresEgresados.Eof) do
    begin
      QValoresEgresados.Edit;
      QValoresEgresadosSELECCION.Value:=True;
      QValoresEgresados.Next;
    end;
end;

procedure TFormRevisionValoresEgresados.Sumar;
begin
  edSuma.Value:=0;
  QValoresEgresados.First;
  while Not(QValoresEgresados.Eof) do
    begin
      if QValoresEgresadosSELECCION.Value=True Then
      edSuma.Value:=edSuma.Value+QValoresEgresadosHABER.AsFloat;
      QValoresEgresados.Next;
    end;
end;


procedure TFormRevisionValoresEgresados.btCancelarClick(Sender: TObject);
begin
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.QCajaCab.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSDebitos.Close;
  Close;
end;

procedure TFormRevisionValoresEgresados.btOkClick(Sender: TObject);
var TotalIngreso:Double;
Aux:String;
begin
  Aux          := FrameMovValoresEgresos1.lbTotalValores.Caption;
  Aux          := AnsiReplaceText(Aux,',','');
  TotalIngreso := StrToFloat(Aux);

  if QValoresEgresados.RecordCount>0 then
    begin
      if ControlarValores1.Checked then
        begin
          if Not(CompareValue(TotalIngreso,edSuma.Value,0.02)=EqualsValue)  then
            RAISE Exception.Create('Hay diferencias entre lo percibido' + #13 +
                                   'Ingresos por...:'+FormatFloat(',0.00',TotalIngreso)+#13+
                                   'Importe Cpbte..:'+FormatFloat(',0.00',edSuma.Value)+#13+
                                   'Diferencia ....:'+FormatFloat(',0.00', TotalIngreso-edSuma.Value));

   //       if Not(CompareValue(TotalIngreso,0,0.02)=EqualsValue)  then
   //         RAISE Exception.Create('No Hay Ingresos.............');

          if (CompareValue(edSuma.Value,0,0.02)=EqualsValue)  then
            RAISE Exception.Create('No Hay seleccionado valores a reemplazar......');
        end;
    end;

  if QValoresEgresados.RecordCount>1 then
    begin
      QValoresEgresados.First;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        while Not(QValoresEgresados.Eof) do
          begin
            if QValoresEgresadosSELECCION.Value=True then
              begin
                QBorrarMov.Close;
                QBorrarMov.ParamByName('id').Value:=QValoresEgresadosID_MOV_CAJA.Value;
                QBorrarMov.ExecSQL;
                QBorrarMov.Close;
              end;
            QValoresEgresados.Next;
          end;
        DMMain_FD.fdcGestion.Commit;
      Except
        showMessage('Fallo de Borrado..');
        DMMain_FD.fdcGestion.Rollback;
      end;
    end
  else
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        if QValoresEgresadosSELECCION.Value=True then
          begin
            QBorrarMov.Close;
            QBorrarMov.ParamByName('id').Value:=QValoresEgresadosID_MOV_CAJA.Value;
            QBorrarMov.ExecSQL;
            QBorrarMov.Close;
          end;
        DMMain_FD.fdcGestion.Commit;
      Except
        ShowMessage('Fallo de Borrado..');
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;

  DMMain_FD.fdcGestion.StartTransaction;
    try
      FormCarteraCheques.CDSCarteraChe.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSCajaMov.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSChe3.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSMovEfectivo.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSTransBco.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSMovTCCompra.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSMovTCCuota.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSCheques.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSTransBco.ApplyUpdates(0);
      FrameMovValoresEgresos1.CDSDebitos.ApplyUpdates(0);

  //    FrameMovValoresEgresos1.CDSMovTCCompra.Close;
//      FrameMovValoresEgresos1.CDSMovTCCuota.Close;
//      FrameMovValoresEgresos1.CDSCheques.Close;
//      FrameMovValoresEgresos1.CDSDebitos.Close;
//      FormCarteraCheques.CDSCarteraChe.Close;
//
//      FrameMovValoresEgresos1.CDSMovTCCompra.Open;
//      FrameMovValoresEgresos1.CDSMovTCCuota.Open;
//      FrameMovValoresEgresos1.CDSCheques.Open;
//      FrameMovValoresEgresos1.CDSDebitos.Open;
//      FormCarteraCheques.CDSCarteraChe.Open;

      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('Operacion No finalizada....!');
    end;
   Close;
end;

procedure TFormRevisionValoresEgresados.ControlarValores1Click(Sender: TObject);
begin
  ControlarValores1.Checked:=Not(ControlarValores1.Checked);
end;

procedure TFormRevisionValoresEgresados.cxGrid1DBTableView1SELECCIONPropertiesChange(
  Sender: TObject);
begin
  Sumar;
end;

procedure TFormRevisionValoresEgresados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRevisionValoresEgresados.FormCreate(Sender: TObject);
begin
  AutoSize:=True;

  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Self);
  FormCarteraCheques.CDSCarteraChe.Open;

  FrameMovValoresEgresos1.CDSChe3.Open;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.CDSTransBco.Open;
  FrameMovValoresEgresos1.QCajaCab.Open;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;
  FrameMovValoresEgresos1.CDSCheques.Open;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

  FrameMovValoresEgresos1.CDSChe3.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovEfectivo.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  FrameMovValoresEgresos1.CDSTransBco.EmptyDataSet;
  FrameMovValoresEgresos1.QCajaCab.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovTCCompra.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovTCCuota.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCheques.EmptyDataSet;
  FrameMovValoresEgresos1.CDSDebitos.EmptyDataSet;

  FrameMovValoresEgresos1.pcValores.ActivePageIndex:=0;
  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

  FrameMovValoresEgresos1.ceCaja.Enabled:=False;
  if Trim(FrameMovValoresEgresos1.ceCaja.Text)='' then
    FrameMovValoresEgresos1.ceCaja.Enabled:=True;



end;

procedure TFormRevisionValoresEgresados.FormDestroy(Sender: TObject);
begin
   FormRevisionValoresEgresados:=nil;
end;

procedure TFormRevisionValoresEgresados.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TBitBtn)) and
    (not (ActiveControl is TFrame)) and
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

procedure TFormRevisionValoresEgresados.FormShow(Sender: TObject);
var
  AIndex, ARowIndex: Integer;
  AValue : Variant;
begin
  QValoresEgresados.Close;
  QValoresEgresados.ParamByName('id_Cpbte').Value :=FId_Comprobante;
  QValoresEgresados.ParamByName('TipoCpbte').Value:=FTipoComprob;
  QValoresEgresados.Open;

  WITH FrameMovValoresEgresos1 DO
    BEGIN
      QCajaCab.Close;
      QCajaCab.ParamByName('Id').Value := FId_Cta_Caja;// CajaPorDefecto;
      QCajaCab.Open;
      IF NOT (QCajaCab.IsEmpty) THEN
      BEGIN
        ceCaja.Text        := IntToStr(FId_Cta_Caja);// CDSCajaCabID_CUENTA_CAJA.AsString;
        edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.AsString;
        Id_Caja            := FId_Caja;//  CDSCajaCabID_CAJA.Value;
        id_cuenta_caja     := FId_Cta_Caja;// CDSCajaCabID_CUENTA_CAJA.AsInteger;
        FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
      end;
      TipoCpbte      := FTipoComprob;// CDSReemplazoTIPOCPBTE.Value;
      TipoOperacion  := 'E';
      ClaseCpbte     := FClaseComprob;// CDSReemplazoCLASECPBTE.Value;
      NroCpbte       := FNroComprobante;// CDSReemplazoNROCPBTE.Value;
      FechaOperacion := FFechaOperacion;//.AsDateTime;
      IdCpbte        := FId_Comprobante;//.Value;
      Origen         := FOrigen;// '';
    END;

  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.IndexDefs.Clear;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
//  AIndex := cxGrid1DBTableView1.DataController.Summary.DefaultGroupSummaryItems.IndexOfItemLink(cxGrid1DBTableView1DEBE);
//  ARowIndex := cxGrid1DBTableView1.DataController.FocusedRowIndex;
//  AValue := cxGrid1DBTableView1.DataController.Summary.GroupSummaryDisplayValues[ARowIndex, 0, AIndex];

//  ShowMessage(VarToStr(AValue));
end;


procedure TFormRevisionValoresEgresados.FrameMovValoresEgresos1BitBtn7Click(
  Sender: TObject);
begin

  FrameMovValoresEgresos1.PostEfectivoExecute(Sender);

end;

procedure TFormRevisionValoresEgresados.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux: real;
begin
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
  aux:= edSuma.Value -( FrameMovValoresEgresos1.SumaValores );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(',0.00',aux);
end;

procedure TFormRevisionValoresEgresados.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux: real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  aux:= edSuma.Value - FrameMovValoresEgresos1.SumaValores ;
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(',0.00',aux);
end;

procedure TFormRevisionValoresEgresados.FrameMovValoresEgresos1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  FrameMovValoresEgresos1.CDSCajaMovBeforeDelete(DataSet);
 end;

procedure TFormRevisionValoresEgresados.FrameMovValoresEgresos1CDSCajaMovBeforePost(
  DataSet: TDataSet);
begin
  FrameMovValoresEgresos1.CDSCajaMovBeforePost(DataSet);
end;

procedure TFormRevisionValoresEgresados.FrameMovValoresEgresos1CDSCajaMovID_FPAGOSetText(
  Sender: TField; const Text: string);
begin
  FrameMovValoresEgresos1.CDSCajaMovID_FPAGOSetText(Sender, Text);

end;

procedure TFormRevisionValoresEgresados.QValoresEgresadosAfterOpen(
  DataSet: TDataSet);
begin
  seleccion;
  sumar;
end;

end.

