unit UListadoMovCaja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DB, DBClient,  Provider, frxClass, frxDBSet, ComCtrls,
  StdCtrls, Grids, DBGrids, Mask, JvComponentBase,
  ImgList, ActnList, JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls,Variants,
  Librerias, JvExDBGrids, JvDBGrid,
  frxExportPDF, Menus, JvArrowButton, JvFormPlacement, JvLabel,
  DateUtils,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.FMTBcd, JvExMask,
  JvToolEdit, JvDBLookup, Data.SqlExpr, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, AdvOfficeButtons, frxExportBaseDialog, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, frCoreClasses;

type
  TFormListadoMovCaja = class(TFormABMBase)
    DSCtaCaja: TDataSource;
    Label1: TLabel;
    UpDown1: TUpDown;
    Label2: TLabel;
    DSMov: TDataSource;
    frListaMov: TfrxReport;
    frDBMov: TfrxDBDataset;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    DSPEmpresa: TDataSetProvider;
    frEmpresa: TfrxDBDataset;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSMovID_COMPROBANTE: TIntegerField;
    CDSMovNRO_CPBTE: TStringField;
    CDSMovTIPO_CPBTE: TStringField;
    CDSMovCLASE_CPBTE: TStringField;
    CDSMovDETALLE: TStringField;
    CDSMovTIPO_OPERACION: TStringField;
    CDSMovMUESTRA_TIPOOPERACION: TStringField;
    CDSMovID_CUENTA_CAJA: TIntegerField;
    CDSMovMUESTRA_CUENTA_CAJA: TStringField;
    frxPDFExport1: TfrxPDFExport;
    lbTotal: TLabel;
    Label3: TLabel;
    btImpresion: TJvArrowButton;
    mImpresion: TPopupMenu;
    Imprimir1: TMenuItem;
    ImprimirContinuo: TAction;
    FormatoListadoContinuo1: TMenuItem;
    CDSMovNC: TClientDataSet;
    DSPMovNC: TDataSetProvider;
    DSMovNC: TDataSource;
    CDSMovNCID_COMPROBANTE: TIntegerField;
    CDSMovNCNRO_CPBTE: TStringField;
    CDSMovNCTIPO_CPBTE: TStringField;
    CDSMovNCCLASE_CPBTE: TStringField;
    CDSMovNCDETALLE: TStringField;
    CDSMovNCID_CUENTA_CAJA: TIntegerField;
    CDSMovNCTIPO_OPERACION: TStringField;
    CDSMovNCMUESTRA_TIPOOPERACION: TStringField;
    CDSMovNCMUESTRA_CUENTA_CAJA: TStringField;
    lcCta: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNombre: TStringField;
    CDSEmpresaActividad: TStringField;
    CDSEmpresaDireccion: TStringField;
    CDSEmpresaLocalidad: TStringField;
    CDSEmpresaCorreo: TStringField;
    CDSEmpresaTelefono1: TStringField;
    CDSEmpresaTelefono2: TStringField;
    CDSEmpresaLogo: TGraphicField;
    CDSEmpresaCuit: TStringField;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovDEBE: TFloatField;
    CDSMovHABER: TFloatField;
    CDSMovNCFECHA: TSQLTimeStampField;
    CDSMovNCDEBE: TFloatField;
    CDSMovNCHABER: TFloatField;
    QCtaCaja: TFDQuery;
    QMovNC: TFDQuery;
    QMov: TFDQuery;
    QCtaCajaID_CUENTA: TIntegerField;
    QCtaCajaID_TIPO_CTA: TIntegerField;
    QCtaCajaNOMBRE: TStringField;
    QCtaCajaNRO_CUENTA: TStringField;
    QCtaCajaID_BANCO: TIntegerField;
    QCtaCajaCUIT: TStringField;
    QCtaCajaRAZONSOCIAL: TStringField;
    cxGMov: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGMovNRO_CPBTE: TcxGridDBColumn;
    cxGMovTIPO_CPBTE: TcxGridDBColumn;
    cxGMovCLASE_CPBTE: TcxGridDBColumn;
    cxGMovDETALLE: TcxGridDBColumn;
    cxGMovMUESTRA_CUENTA_CAJA: TcxGridDBColumn;
    cxGMovFECHA: TcxGridDBColumn;
    cxGMovDEBE: TcxGridDBColumn;
    cxGMovHABER: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pnCabecera: TPanel;
    chbNotaCredito: TAdvOfficeCheckBox;
    chbPorDia: TAdvOfficeCheckBox;
    chIngresosCaja: TAdvOfficeCheckBox;
    chTx: TAdvOfficeCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lcCtaClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure chTxClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ImprimirContinuoExecute(Sender: TObject);
    procedure chIngresosCajaClick(Sender: TObject);
    procedure dbgMovDblClick(Sender: TObject);
    procedure cxGMovDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure sumar;
  end;

var
  FormListadoMovCaja: TFormListadoMovCaja;

implementation

{$R *.DFM}
uses UFacturaCtdo_2, UTiketVta, UFactura_2, URecibo_2,UDMain_FD;


procedure TFormListadoMovCaja.Sumar;
Var p:TBookmark;
Deb,Hab:real;
begin
  inherited;
  p:=CDSMov.GetBookmark;
  Deb:=0;Hab:=0;
  CDSMov.DisableControls;
  CDSMov.First;
  while not(CDSMov.Eof) do
    begin
      Deb:=Deb+CDSMovDEBE.Value;
      Hab:=Hab+CDSMovHABER.Value;
      CDSMov.Next;
    end;
  CDSMov.GotoBookmark(p);
  CDSMov.FreeBookmark(p);
  CDSMov.EnableControls;
  lbTotal.Caption:=FormatFloat('###,###,###,##0.00',Deb-Hab);

end;


procedure TFormListadoMovCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QCtaCaja.Close;
  CDSEmpresa.Close;
  Action:=caFree;
end;

procedure TFormListadoMovCaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoMovCaja:=Nil;
end;

procedure TFormListadoMovCaja.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoMovCaja<>nil then
    if FormListadoMovCaja.Width<>872 then
      FormListadoMovCaja.Width:=872;

end;

procedure TFormListadoMovCaja.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoMovCaja.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSMov.Close;
  CDSMov.Filtered:=False;
  CDSMov.Filter  :='';
  CDSMov.CommandText:='';
  if chTx.Checked=False Then
    begin
      if (lcCta.KeyValue=-1) or (lcCta.KeyValue=null)  Then // todas las ctas
        CDSMov.CommandText:='select * from TRAER_DETALLES_MOV_CAJA( :desde, :hasta, ''I'' )'+
                     ' where tipo_cpbte<>''CX'' and tipo_cpbte<>''QX'' '+
                     ' order by id_cuenta_caja,tipo_cpbte,fecha'
      else
        CDSMov.CommandText:='select * from TRAER_DETALLES_MOV_CAJA( :desde, :hasta, ''I'' )'+
                     ' where tipo_cpbte<>''CX'' and tipo_cpbte<>''QX'' and id_cuenta_caja='+IntToStr(lcCta.KeyValue)+
                     ' order by tipo_cpbte,fecha';
    end
  else
    if chTx.Checked=True Then
      begin
        if (lcCta.KeyValue=-1) or (lcCta.KeyValue=null) Then  // todas las ctas.
          CDSMov.CommandText:='select * from TRAER_DETALLES_MOV_CAJA( :desde, :hasta, ''I'' )'+
                       ' order by id_cuenta_caja,tipo_cpbte,fecha'
        else
          CDSMov.CommandText:='select * from TRAER_DETALLES_MOV_CAJA( :desde, :hasta, ''I'' )'+
                       ' where id_cuenta_caja='+IntToStr(lcCta.KeyValue)+
                       ' order by tipo_cpbte,fecha';
      end;



                 //  QMov.Open;
  CDSMov.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSMov.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSMov.IndexFieldNames:='';
  CDSMov.Open;


  if chbNotaCredito.Checked then
    begin
      CDSMovNC.Close;
      CDSMovNC.CommandText:='';

      if (lcCta.KeyValue=-1) or (lcCta.KeyValue=null) Then // todas las ctas
        CDSMovNC.CommandText:='select * from TRAER_DETALLES_MOV_CAJA_NC_VTA(:desde,:hasta)'+
                            ' order by id_cuenta_caja,tipo_cpbte,fecha'
      else
        CDSMovNC.CommandText:='select * from TRAER_DETALLES_MOV_CAJA_NC_VTA(:desde,:hasta)'+
                            ' where id_cuenta_caja='+IntToStr(lcCta.KeyValue)+
                            ' order by tipo_cpbte,fecha';

      CDSMovNC.Params.ParamByName('desde').AsDate:=Desde.Date;
      CDSMovNC.Params.ParamByName('hasta').AsDate:=Hasta.Date;
      CDSMovNC.IndexFieldNames:='';
      CDSMovNC.Open;
      if Not(CDSMovNC.IsEmpty) then
        while nOT(CDSMovNC.Eof) do
          begin
            CDSMov.Append;
            CDSMovFECHA.AsDateTime           :=CDSMovNCFECHA.AsDateTime;
            CDSMovID_COMPROBANTE.Value       :=CDSMovNCID_COMPROBANTE.Value;
            CDSMovNRO_CPBTE.Value            :=CDSMovNCNRO_CPBTE.Value;
            CDSMovTIPO_CPBTE.Value           :=CDSMovNCTIPO_CPBTE.Value;
            CDSMovCLASE_CPBTE.Value          :=CDSMovNCCLASE_CPBTE.Value;
            CDSMovDETALLE.Value              :=CDSMovNCDETALLE.Value;
            CDSMovDEBE.Value                 :=CDSMovNCDEBE.Value;
            CDSMovHABER.Value                :=CDSMovNCHABER.Value;
            CDSMovTIPO_OPERACION.Value       :=CDSMovNCTIPO_OPERACION.Value;
            CDSMovMUESTRA_TIPOOPERACION.Value:=CDSMovNCMUESTRA_TIPOOPERACION.Value;
            CDSMovID_CUENTA_CAJA.Value       :=CDSMovNCID_CUENTA_CAJA.Value;
            CDSMovMUESTRA_CUENTA_CAJA.Value  :=CDSMovNCMUESTRA_CUENTA_CAJA.Value;
            CDSMov.Post;
            CDSMovNC.Next;
        end;
    end;
  if chIngresosCaja.Checked then
    begin
      CDSMov.Filter  :='TIPO_CPBTE<>''IC'' ';
      CDSMov.Filtered:=True;
    end
  else
    begin
      CDSMov.Filter  :='';
      CDSMov.Filtered:=False;
    end;

  sumar;
end;

procedure TFormListadoMovCaja.FormCreate(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;
  lcCta.KeyValue:=CajaPorDefecto;
  lcCta.Enabled:=DMMain_FD.ModificaCaja;
  QCtaCaja.Open;
  AutoSize:=False;
end;

procedure TFormListadoMovCaja.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
//  if m=1 Then
//    begin
//      m:=12;y:=y-1;
//    end
//  else
//    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormListadoMovCaja.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoMovCaja.lcCtaClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoMovCaja.ImprimirContinuoExecute(Sender: TObject);
begin
  inherited;

  CDSEmpresa.Open;
  frListaMov.PrintOptions.Printer:=PrNomListados;
  frListaMov.SelectPrinter;
  frListaMov.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListaMovIngresoCajaLineal.fr3');
  frListaMov.PrintOptions.Printer:=PrNomListados;
  frListaMov.SelectPrinter;

  frListaMov.Variables['Desde']:=''''+Desde.Text+'''';
  frListaMov.Variables['Hasta']:=''''+Hasta.Text+'''';

  frListaMov.ShowReport;
  CDSEmpresa.Close;

end;

procedure TFormListadoMovCaja.ImprimirExecute(Sender: TObject);
begin
  inherited;

  CDSEmpresa.Open;
  frListaMov.PrintOptions.Printer:=PrNomListados;
  frListaMov.SelectPrinter;
  frListaMov.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListaMovIngresoCaja.fr3');
  frListaMov.PrintOptions.Printer:=PrNomListados;
  frListaMov.SelectPrinter;

  frListaMov.Variables['Desde']:=''''+Desde.Text+'''';
  frListaMov.Variables['Hasta']:=''''+Hasta.Text+'''';
  frListaMov.Variables['Cuenta']:=''''+lcCta.Text+'''';

  frListaMov.ShowReport;
  CDSEmpresa.Close;

end;

procedure TFormListadoMovCaja.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
   frListaMov.DesignReport;
end;

procedure TFormListadoMovCaja.chIngresosCajaClick(Sender: TObject);
begin
  inherited;
  if chIngresosCaja.Checked then
    begin
      CDSMov.Filter:='TIPO_CPBTE<>''IC'' ';
      CDSMov.Filtered:=True;
    end
  else
    begin
      CDSMov.Filter:='';
      CDSMov.Filtered:=False;
    end;
  sumar;
end;

procedure TFormListadoMovCaja.chTxClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoMovCaja.cxGMovDblClick(Sender: TObject);
begin
  inherited;
 if CDSMovTIPO_CPBTE.Value='FO' then
    begin
      IF NOT (Assigned(FormCpbteCtdo_2)) THEN
        FormCpbteCtdo_2         := TFormCpbteCtdo_2.Create(self);
      FormCpbteCtdo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
      FormCpbteCtdo_2.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
    if CDSMovTIPO_CPBTE.Value='TK' then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta         := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := CDSMovID_COMPROBANTE.AsString;
        FormTicketVta.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if CDSMovTIPO_CPBTE.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2         := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCpbte_2.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if CDSMovTIPO_CPBTE.Value='RC' then
          begin
            IF NOT (Assigned(FormRecibo_2)) THEN
              FormRecibo_2         := TFormRecibo_2.Create(self);
            FormRecibo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormRecibo_2.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
            FormRecibo_2.Recuperar.Execute;
            FormRecibo_2.Show;
          end;


end;

procedure TFormListadoMovCaja.dbgMovDblClick(Sender: TObject);
begin
  inherited;
  if CDSMovTIPO_CPBTE.Value='FO' then
    begin
      IF NOT (Assigned(FormCpbteCtdo_2)) THEN
        FormCpbteCtdo_2         := TFormCpbteCtdo_2.Create(self);
      FormCpbteCtdo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
      FormCpbteCtdo_2.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
    if CDSMovTIPO_CPBTE.Value='TK' then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta         := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := CDSMovID_COMPROBANTE.AsString;
        FormTicketVta.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if CDSMovTIPO_CPBTE.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2         := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCpbte_2.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if CDSMovTIPO_CPBTE.Value='RC' then
          begin
            IF NOT (Assigned(FormRecibo_2)) THEN
              FormRecibo_2         := TFormRecibo_2.Create(self);
            FormRecibo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormRecibo_2.TipoCpbte := CDSMovTIPO_CPBTE.AsString;
            FormRecibo_2.Recuperar.Execute;
            FormRecibo_2.Show;
          end;


end;


procedure TFormListadoMovCaja.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

end.