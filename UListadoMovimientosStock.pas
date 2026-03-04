unit UListadoMovimientosStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, ToolWin,
  ExtCtrls, Mask,  Librerias, StrUtils,
  frxDBSet, frxClass, frxRich, ImgList, JvComponentBase, 
  JvExControls, JvGradient, frxExportImage, frxExportRTF,
  frxExportXLS, frxExportPDF, frxExportCSV, frxExportText, frxExportHTML,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, Provider, DBClient,
  JvDBLookup, JvToolEdit, JvExMask, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxClasses, dxPSCore, cxTextEdit, cxMemo, cxRichEdit,
  System.Actions, dxPScxExtComCtrlsLnk, dxPSRELnk, JvAppStorage, JvAppIniStorage,
  dxPScxPivotGridLnk, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, Data.DB, Vcl.StdCtrls,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,VirtualUI_SDK, AdvOfficeButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, System.ImageList;

type
  TFormListadoMovStock = class(TFormABMBase)
    Label2: TLabel;
    Label3: TLabel;
    DSDepositos: TDataSource;
    edDetalle: TEdit;
    BuscaArticulos: TAction;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    ceCodigo: TJvComboEdit;
    hasta: TJvDateEdit;
    desde: TJvDateEdit;
    rxlDeposito: TJvDBLookupCombo;
    pgConsulta: TProgressBar;
    UpDown1: TUpDown;
    MMovimientos: TcxRichEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxRichEditReportLink;
    SaveDialog1: TSaveDialog;
    btExcel: TBitBtn;
    QSaldo: TFDQuery;
    QArticulos: TFDQuery;
    QDepositos: TFDQuery;
    QMovimientos_: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QSaldoCODIGO_ARTICULO: TStringField;
    QSaldoSALDO: TFloatField;
    RxLabel1: TLabel;
    RxLabel2: TLabel;
    RxLabel3: TLabel;
    chbPorArticulo: TAdvOfficeCheckBox;
    QMovimientos_conRto_: TFDQuery;
    chbConRtos: TAdvOfficeCheckBox;
    Memo1: TMemo;
    CDSMovimientos_conRto: TClientDataSet;
    CDSMovimientos: TClientDataSet;
    DSPMovimientos_conRto: TDataSetProvider;
    DSPMovimientos: TDataSetProvider;
    CDSMovimientos_conRtoID_MOV: TIntegerField;
    CDSMovimientos_conRtoCODIGO_ARTICULO: TStringField;
    CDSMovimientos_conRtoDETALLE_STK: TStringField;
    CDSMovimientos_conRtoFECHA: TSQLTimeStampField;
    CDSMovimientos_conRtoDEPOSITO: TIntegerField;
    CDSMovimientos_conRtoTIPOOPERACION: TStringField;
    CDSMovimientos_conRtoTIPOCPBTE: TStringField;
    CDSMovimientos_conRtoCLASECPBTE: TStringField;
    CDSMovimientos_conRtoNROCPBTE: TStringField;
    CDSMovimientos_conRtoDETALLE: TStringField;
    CDSMovimientos_conRtoENTRA: TFloatField;
    CDSMovimientos_conRtoSALE: TFloatField;
    CDSMovimientosID_MOV: TIntegerField;
    CDSMovimientosCODIGO_ARTICULO: TStringField;
    CDSMovimientosDETALLE_STK: TStringField;
    CDSMovimientosFECHA: TSQLTimeStampField;
    CDSMovimientosDEPOSITO: TIntegerField;
    CDSMovimientosTIPOOPERACION: TStringField;
    CDSMovimientosTIPOCPBTE: TStringField;
    CDSMovimientosCLASECPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosENTRA: TFloatField;
    CDSMovimientosSALE: TFloatField;
    CDSMovimientos_conRtoSALDOINICIAL: TFloatField;
    CDSMovimientosSALDOINICIAL: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscaArticulosExecute(Sender: TObject);
    procedure chbPorArticuloClick(Sender: TObject);
    procedure ceCodigoButtonClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cancel:Boolean;
  end;

var
  FormListadoMovStock: TFormListadoMovStock;

implementation

uses UBuscadorArticulos, UDMain_FD;
{$R *.DFM}

procedure TFormListadoMovStock.BuscarExecute(Sender: TObject);
VAR Articulo,Prefijo,Numero:String;
SaldoAux:Real;
begin
  Cancel:=False;
  MMovimientos.SetFocus;
  if chbConRtos.Checked then
    CDSMovimientos.CommandText:= '''
          select m.id_mov,m.codigo_articulo,s.detalle_stk,m.fecha ,
                 m.deposito,
                 m.tipooperacion,m.tipocpbte,m.clasecpbte,
                 m.nrocpbte,m.detalle,m.entra,m.sale from mov_stock m
            left join stock s on s.codigo_stk=m.codigo_articulo
          where ( m.fecha between :Desde and :hasta ) and ( m.deposito = :Deposito or :Deposito = -1 ) and
                ( m.codigo_articulo = :codigo or :codigo = '********' )
          union
          select d.id as id_mov, d.codigoarticulo as codigo_articulo,s.detalle_stk,d.fechavta as fecha,
                 r.deposito,
                 'T' as tipooperacion,d.tipocpbte,r.clasecpbte,
                 r.nrocpbte,cast( 'REMITO' as Varchar(20)) as detalle,0.0 as entra,d.cantidad as sale from rtodet d
            left join stock s on s.codigo_stk = d.codigoarticulo
            left join rtocab r on r.id_rto = d.id_cabrto
          where ( r.fechavta between :Desde and :hasta ) and ( r.deposito = :Deposito or :Deposito = -1 ) and
                ( d.codigoarticulo = :codigo or :codigo = '********' ) and r.idfactura is null and r.devolucion <> 'S'
          union
          select d.id as id_mov, d.codigoarticulo as codigo_articulo,s.detalle_stk,d.fechavta as fecha,
                 r.deposito,
                 'T' as tipooperacion,d.tipocpbte,r.clasecpbte,
                 r.nrocpbte,cast( 'REMITO' as Varchar(20)) as detalle,d.cantidad as entra,0.0 as sale from rtodet d
            left join stock s on s.codigo_stk = d.codigoarticulo
            left join rtocab r on r.id_rto = d.id_cabrto
          where ( r.fechavta between :Desde and :hasta ) and ( r.deposito = :Deposito or :Deposito = -1 ) and
                ( d.codigoarticulo = :codigo or :codigo = '********' ) and r.idfactura is null and r.devolucion = 'S'
        '''
  else
    CDSMovimientos.CommandText:=
      'select m.id_mov,m.codigo_articulo,s.detalle_stk,m.fecha, m.deposito,'+
      '       m.tipooperacion,m.tipocpbte,m.clasecpbte,'+
      '       m.nrocpbte,m.detalle,m.entra,m.sale from mov_stock m '+
      '  left join stock s on s.codigo_stk = m.codigo_articulo '+
      'where ( m.fecha between :Desde and :hasta ) and ( m.deposito = :Deposito or :Deposito = -1 ) and '+
      '      ( m.codigo_articulo = :codigo or :codigo = ''********'' )';



  CDSMovimientos.Close;
  if chbPorArticulo.Checked=False Then
    CDSMovimientos.Params.ParamByName('codigo').AsString :='********'
  else
    CDSMovimientos.Params.ParamByName('codigo').AsString := Trim(ceCodigo.Text);
  CDSMovimientos.Params.ParamByName('desde').AsDate      := desde.Date;
  CDSMovimientos.Params.ParamByName('Hasta').AsDate      := Hasta.Date;
  CDSMovimientos.Params.ParamByName('deposito').Value    := StrToInt(rxlDeposito.KeyValue);
  CDSMovimientos.OPen;
  CDSMovimientos.IndexFieldNames:='codigo_articulo;fecha;id_mov';
  pgConsulta.Min:=0;
  pgConsulta.Max:=1;
  pgConsulta.Position:=0;
  if CDSMovimientos.RecordCount>0 then
    pgConsulta.Max:=CDSMovimientos.RecordCount - 1;
  CDSMovimientos.First;
  Articulo:='*';
//  MMovimientos.WantTabs := true;
  MMovimientos.Clear;
  Memo1.Clear;
  sbEstado.SimpleText:='Generando Movimientos';
  while (Not(CDSMovimientos.Eof)) and (cancel=False) do
    begin
      pgConsulta.Position:=pgConsulta.Position+1;
      sbEstado.SimpleText:='Generando Movimientos:'+CDSMovimientosCODIGO_ARTICULO.AsString+'-'+CDSMovimientosDETALLE_STK.AsString;
      Application.ProcessMessages;
      if Articulo<>CDSMovimientosCODIGO_ARTICULO.Value Then
        Begin
           if Not(CDSMovimientos.Bof) Then
            MMovimientos.Lines.Append(#13);
          MMovimientos.SelAttributes.Color  := clBlue;
          MMovimientos.SelAttributes.Style  := [fsBold];
          MMovimientos.Lines.Add(CDSMovimientosCODIGO_ARTICULO.Value+#9+CDSMovimientosDETALLE_STK.Value);
          MMovimientos.SelAttributes.Style:=[fsBold];
          Memo1.Lines.Add(CDSMovimientosCODIGO_ARTICULO.Value+';'+CDSMovimientosDETALLE_STK.Value);
          QSaldo.Close;
          QSaldo.ParamByName('Codigo').Value  := CDSMovimientosCODIGO_ARTICULO.Value;
          QSaldo.ParamByName('desde').AsDate  := Desde.Date;
          QSaldo.ParamByName('deposito').Value:= StrToInt(rxlDeposito.KeyValue);
          QSaldo.Open;

          SaldoAux := 0;
          SaldoAux := QSaldoSALDO.Value;

          CDSMovimientos.Edit;
          CDSMovimientosSALDOINICIAL.Value:=SaldoAux;
          CDSMovimientos.Post;

          MMovimientos.Lines.Add(#9+#9+#9+#9+#9+#9+'Entran'+#9+#9+'Salen'+#9+#9+'Saldo');
          MMovimientos.SelAttributes.Style:=[fsBold];
          MMovimientos.Lines.Add(#9+'Saldo Inicial'+#9+#9+#9+#9+#9+#9+#9+#9+FormatFloat('0.00',QSaldoSALDO.Value));
          Memo1.Lines.Add('Saldo Inicial'+';'+FormatFloat('0.00',QSaldoSALDO.Value));

          QSaldo.Close;
        end;
      MMovimientos.SelAttributes.Style:=[];
      MMovimientos.SelAttributes.Color:=clBlack;
      SaldoAux:=(SaldoAux+CDSMovimientosENTRA.AsFloat)-CDSMovimientosSALE.AsFloat;
      Prefijo:=Copy(CDSMovimientosNROCPBTE.AsString,2,4);
      Numero :=Copy(CDSMovimientosNROCPBTE.AsString,6,8);
      if SaldoAux=0 Then
        MMovimientos.SelAttributes.Color:=clRed;
      MMovimientos.Lines.Add(#9+FormatDateTime('dd/mm',CDSMovimientosFECHA.AsDateTime)+
                             #9+CDSMovimientosTIPOCPBTE.AsString+
                             #9+Prefijo+
                             #9+Numero+
                             #9+copy('_________',1,10-Length(FormatFloat('0.00',CDSMovimientosENTRA.AsFloat)))+FormatFloat('0.00',CDSMovimientosENTRA.AsFloat)+
                             #9+copy('_________',1,10-Length(FormatFloat('0.00',CDSMovimientosSALE.AsFloat)))+FormatFloat('0.00',CDSMovimientosSALE.AsFloat)+
                             #9+copy('_________',1,10-Length(FormatFloat('0.00',SaldoAux)))+FormatFloat('0.00',SaldoAux)+
                             #9+'>>'+CDSMovimientosDETALLE.Value);

      Memo1.Lines.Add(FormatDateTime('dd/mm',CDSMovimientosFECHA.AsDateTime)+
                      ';'+CDSMovimientosTIPOCPBTE.AsString+
                      ';'+Copy(CDSMovimientosNROCPBTE.AsString,1,5)+
                      ';'+Copy(CDSMovimientosNROCPBTE.AsString,6,8)+
                      ';'+(FormatFloat('0.00',CDSMovimientosENTRA.AsFloat))+
                      ';'+FormatFloat('0.00',CDSMovimientosSALE.AsFloat)+
                      ';'+FormatFloat('0.00',SaldoAux)+
                      ';'+CDSMovimientosDETALLE.Value);

      Articulo    :=CDSMovimientosCODIGO_ARTICULO.Value;
      CDSMovimientos.Next;
    end;
  CDSMovimientos.Last;
  sbEstado.SimpleText := '';
  pgConsulta.Position := 0;
  pnPrincipal.SetFocus;
  Application.ProcessMessages;
  MMovimientos.SetFocus;
end;

procedure TFormListadoMovStock.CancelarExecute(Sender: TObject);
begin
//  inherited;
  cancel:=True;
  rxlDeposito.SetFocus;

end;

procedure TFormListadoMovStock.FormShow(Sender: TObject);
var d,m,y:word;
Tabuladores   : array[0..7] of longint;
DialogUnitsX  : LongInt;

begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  QDepositos.Open;
  DialogUnitsX := LoWord(GetDialogBaseUnits);

  Tabuladores[0] :=  (30*4) div DialogUnitsX;
  Tabuladores[1] := (100*4) div DialogUnitsX;
  Tabuladores[2] := (130*4) div DialogUnitsX;
  Tabuladores[3] := (200*4) div DialogUnitsX;
  Tabuladores[4] := (350*4) div DialogUnitsX;
  Tabuladores[5] := (450*4) div DialogUnitsX;
  Tabuladores[6] := (550*4) div DialogUnitsX;
  Tabuladores[7] := (650*4) div DialogUnitsX;

  MMovimientos.Perform( EM_SETTABSTOPS,8,LongInt(@Tabuladores) );
  ToolBar1.SetFocus;
end;

procedure TFormListadoMovStock.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
 //Buscar.Execute;
 // rxlDeposito.SetFocus;

end;

procedure TFormListadoMovStock.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Memo1.Lines.Count>0 then
    begin
      SaveDialog1.FileName:='Movimientos_Stock';
      SaveDialog1.DefaultExt:='CSV';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.CSV', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            Memo1.Lines.SaveToFile(SaveDialog1.FileName);

            Sleep(100);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);

          end;
    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormListadoMovStock.BuscaArticulosExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
 // FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1     := -1;
  FormBuscadorArticulos.Param2     := -1;
  FormBuscadorArticulos.Esquema    := -1;
  FormBuscadorArticulos.ListaPrecio:= DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
      QArticulos.Close;
      QArticulos.ParamByName('Codigo').Value:=FormBuscadorArticulos.Codigo;
      QArticulos.Open;
      edDetalle.Text:=QArticulosDETALLE_STK.Value;
      ceCodigo.Text :=QArticulosCODIGO_STK.Value;
      QArticulos.Close;
    end
  else
    begin
      edDetalle.Text:='';
      ceCodigo.Text :='';
    end;

//  QBuscaArticulos.Close;
end;

procedure TFormListadoMovStock.chbPorArticuloClick(Sender: TObject);
begin
  inherited;
  if chbPorArticulo.Checked Then
    begin
      ceCodigo.Color:=clWindow;
      ceCodigo.Enabled:=True;
    end
  else
    begin
      ceCodigo.Color:=clBtnFace;
      ceCodigo.Enabled:=False;
    end;
  if ceCodigo.Text<>'' Then
    Buscar.Execute;
end;

procedure TFormListadoMovStock.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormListadoMovStock.ceCodigoButtonClick(Sender: TObject);
begin
  inherited;
   BuscaArticulos.Execute;
end;

procedure TFormListadoMovStock.ImprimirExecute(Sender: TObject);
var
  memo: TfrxMemoView;
begin
//  Memo1.Lines.Delimiter:=char(';');

  dxComponentPrinter1Link1.Preview();
end;

procedure TFormListadoMovStock.SalirExecute(Sender: TObject);
begin
  CDSMovimientos.Close;
  Close;
  inherited;
end;

procedure TFormListadoMovStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  QDepositos.Close;
  inherited;
end;

procedure TFormListadoMovStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoMovStock:=nil;
end;

procedure TFormListadoMovStock.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoMovStock<>nil then
    if FormListadoMovStock.Width<>735 then
      formListadoMovStock.Width:=735;

end;

procedure TFormListadoMovStock.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormListadoMovStock.ceCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var dato:String;
begin
  inherited;
  IF Key = Vk_return THEN
    BEGIN
      Dato := Trim(ceCodigo.Text);
      if (Length(Trim(Dato))<=8)  then
        begin
          if DMMain_FD.JustificaCodigo='D' Then
            Dato:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Dato)) + Dato
          else
            if DMMain_FD.JustificaCodigo='I' Then
              Dato:=Dato + Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Dato));
        end;

      ceCodigo.Text := Dato;

      QArticulos.Close;
      QArticulos.ParamByName('Codigo').Value:=Dato;
      QArticulos.Open;
      edDetalle.Text:=QArticulosDETALLE_STK.Value;
      ceCodigo.Text :=QArticulosCODIGO_STK.Value;
      QArticulos.Close;
    END;
end;

end.