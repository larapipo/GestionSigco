unit UListadoTransfBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, Buttons, ToolWin, ExtCtrls, Grids, DBGrids,Librerias, frxClass,
  frxDBSet, ImgList, JvComponentBase, JvExControls, JvGradient,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvToolEdit, JvExMask,
  Provider, DBClient, JvBaseEdits, JvAppStorage, JvAppIniStorage, System.Actions,
  Vcl.Mask, Vcl.StdCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, Vcl.Menus, frCoreClasses;

type
  TFormListadoTransfBanco = class(TFormABMBase)
    BuscadorCta: TAction;
    DSTxEmitidas: TDataSource;
    DSTxRecibidas: TDataSource;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frDSTxRecibidas: TfrxDBDataset;
    frResumen: TfrxReport;
    frDSTxEmitidas: TfrxDBDataset;
    RxLabel7: TJvLabel;
    CDSTxEmitidas: TClientDataSet;
    DSPTxEmitidas: TDataSetProvider;
    CDSTxEmitidasFECHA: TSQLTimeStampField;
    CDSTxEmitidasNUMERO: TIntegerField;
    CDSTxEmitidasID_CUENTA_BANCO: TIntegerField;
    CDSTxEmitidasDETALLE: TStringField;
    CDSTxEmitidasCLASE_COMPROB: TStringField;
    CDSTxEmitidasNRO_COMPROBANTE: TStringField;
    CDSTxEmitidasCTACAJA: TIntegerField;
    CDSTxEmitidasNOMBRECAJA: TStringField;
    CDSTxEmitidasTIPO_COMPROB: TStringField;
    CDSTxEmitidasNRO_COMPROBANTE_1: TStringField;
    CDSTxEmitidasFECHA_OPERACION: TSQLTimeStampField;
    CDSTxEmitidasNUMEROCAJA: TIntegerField;
    CDSTxRecibidas: TClientDataSet;
    DSPTxRecibidas: TDataSetProvider;
    CDSTxRecibidasFECHA: TSQLTimeStampField;
    CDSTxRecibidasNUMERO: TIntegerField;
    CDSTxRecibidasID_CUENTA_BANCO: TIntegerField;
    CDSTxRecibidasDETALLE: TStringField;
    CDSTxRecibidasCLASE_COMPROB: TStringField;
    CDSTxRecibidasNRO_COMPROBANTE: TStringField;
    CDSTxRecibidasCTACAJA: TIntegerField;
    CDSTxRecibidasNOMBRECAJA: TStringField;
    CDSTxRecibidasTIPO_COMPROB: TStringField;
    CDSTxRecibidasNRO_COMPROBANTE_1: TStringField;
    CDSTxRecibidasFECHA_OPERACION: TSQLTimeStampField;
    CDSTxRecibidasNUMEROCAJA: TIntegerField;
    CDSBuscadorCta: TClientDataSet;
    DSPBuscadorCta: TDataSetProvider;
    CDSBuscadorCtaID_CUENTA: TIntegerField;
    CDSBuscadorCtaID_TIPO_CTA: TIntegerField;
    CDSBuscadorCtaNOMBRE: TStringField;
    CDSBuscadorCtaNRO_CUENTA: TStringField;
    CDSBuscadorCtaID_BANCO: TIntegerField;
    CDSBuscadorCtaCUIT: TStringField;
    CDSBuscadorCtaRAZONSOCIAL: TStringField;
    CDSTxRecibidasID_COMPROBANTE: TIntegerField;
    CDSTxEmitidasID_COMPROBANTE: TIntegerField;
    ComBuscadorCta: TComBuscador;
    QBuscCta: TFDQuery;
    QTxRecibidas: TFDQuery;
    QTxEm: TFDQuery;
    CDSTxRecibidasIMPORTE: TFloatField;
    CDSTxRecibidasUNIDADES: TFloatField;
    CDSTxEmitidasIMPORTE: TFloatField;
    CDSTxEmitidasUNIDADES: TFloatField;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    CDSTxRecibidasMUESTRABCO: TStringField;
    CDSTxEmitidasMUESTRABCO: TStringField;
    CDSTxRecibidasID: TIntegerField;
    CDSTxEmitidasID: TIntegerField;
    PopupMenu1: TPopupMenu;
    CambiarRealizadas: TMenuItem;
    CambiarRecibidas: TMenuItem;
    CDSTxRecibidasNOMBRE: TStringField;
    CDSTxEmitidasNOMBRE: TStringField;
    pnCabecera: TPanel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    UpDown1: TUpDown;
    edNombreCta: TEdit;
    edNroCta: TEdit;
    edBanco: TEdit;
    ceCtaBco: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Panel3: TPanel;
    pnRealizadas: TPanel;
    RxLabel6: TJvLabel;
    dbgRealizadas: TDBGrid;
    edRealizadas: TJvCalcEdit;
    Splitter1: TSplitter;
    pnRecibidas: TPanel;
    dbgRecibidas: TDBGrid;
    edRecibidas: TJvCalcEdit;
    OpenDialog1: TOpenDialog;
    ExportarCSV: TAction;
    N1: TMenuItem;
    ExportaraCSV1: TMenuItem;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscadorCtaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ceCtaBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCtaBcoKeyPress(Sender: TObject; var Key: Char);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgRecibidasDblClick(Sender: TObject);
    procedure dbgRealizadasDblClick(Sender: TObject);
    procedure CambiarRealizadasClick(Sender: TObject);
    procedure CambiarRecibidasClick(Sender: TObject);
    procedure dbgRealizadasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgRecibidasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgRealizadasTitleClick(Column: TColumn);
    procedure dbgRecibidasTitleClick(Column: TColumn);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure ExportarCSVExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarCtaBco(dato:Integer):Boolean;
    procedure Sumar;
    procedure CambiarCta(Origen:String);
  end;

var
  FormListadoTransfBanco: TFormListadoTransfBanco;

implementation

uses  UDMain_FD, URecibo_2, UFacturaCtdo_2, UIngresoCaja, UOPago_2,
      UCompraCtdo_2, UEgresoCaja, UCambiarBcoTX;
{$R *.DFM}

function TFormListadoTransfBanco.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').Value:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      ceCtaBco.Text      := inttostr(Dato);
      edNombreCta.Text   := QCtaBcoNOMBRE.Value;
      edBanco.Text       := QCtaBcoMUESTRABANCO.Value;
      edNroCta.Text      := QCtaBcoNRO_CUENTA.Value;
    end
  else
    begin
      Result:=False;
      ceCtaBco.Text      :='';
      edNombreCta.Text   := '';
      edBanco.Text       := '';
      edNroCta.Text      := '';
    end
end;

procedure TFormListadoTransfBanco.Sumar;
begin
  edRealizadas.Value:=0;
  edRecibidas.Value :=0;

  CDSTxEmitidas.First;
  CDSTxEmitidas.DisableControls;
  while Not(CDSTxEmitidas.Eof) do
    begin
      edRealizadas.Value:=edRealizadas.Value+CDSTxEmitidasIMPORTE.AsFloat;
      CDSTxEmitidas.Next;
    end;
  CDSTxEmitidas.First;
  CDSTxEmitidas.EnableControls;

  CDSTxRecibidas.First;
  CDSTxRecibidas.DisableControls;
  while Not(CDSTxRecibidas.Eof) do
    begin
      edRecibidas.Value:=edRecibidas.Value+CDSTxRecibidasIMPORTE.AsFloat;
      CDSTxRecibidas.Next;
    end;
  CDSTxRecibidas.First;
  CDSTxRecibidas.EnableControls;

end;

procedure TFormListadoTransfBanco.UpDown1Click(Sender: TObject;
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
  if ceCtaBco.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormListadoTransfBanco.BuscadorCtaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCta.Close;
  CDSBuscadorCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk Then
    AsignarCtaBco(comBuscadorCta.id);
  CDSBuscadorCta.Close;
  Buscar.Execute;
end;

procedure TFormListadoTransfBanco.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Trim(ceCtaBco.Text)<>'' then
    begin
      CDSTxEmitidas.Close;
      CDSTxEmitidas.IndexDefs.Clear;
      CDSTxEmitidas.Params.ParamByName('desde').Value:=Desde.Date;
      CDSTxEmitidas.Params.ParamByName('hasta').Value:=hasta.Date;
      CDSTxEmitidas.Params.ParamByName('id').Value:=StrToInt(ceCtaBco.Text);
      CDSTxEmitidas.Open;
      CDSTxRecibidas.Close;
      CDSTxRecibidas.IndexDefs.Clear;
      CDSTxRecibidas.Params.ParamByName('desde').Value:=Desde.Date;
      CDSTxRecibidas.Params.ParamByName('hasta').Value:=hasta.Date;
      CDSTxRecibidas.Params.ParamByName('id').Value:=StrToInt(ceCtaBco.Text);
      CDSTxRecibidas.Open;
      Sumar;
    end;
end;

procedure TFormListadoTransfBanco.CambiarRecibidasClick(Sender: TObject);
begin
  inherited;
  CambiarCta('R');
end;

procedure TFormListadoTransfBanco.CambiarCta(Origen:String);
begin
  if (Origen='E') then
    begin
      if Not(Assigned(FormCambiaBcoTx)) then
        FormCambiaBcoTx:=TFormCambiaBcoTx.Create(nil);
      FormCambiaBcoTx.IdMov    := dbgRealizadas.DataSource.DataSet.FieldByName('id').Value;
      FormCambiaBcoTx.IdCtaBco := dbgRealizadas.DataSource.DataSet.FieldByName('id_cuenta_banco').Value;
      FormCambiaBcoTx.Origen   := 'E';
      FormCambiaBcoTx.NombreCta:= dbgRealizadas.DataSource.DataSet.FieldByName('MuestraBco').AsString;
      FormCambiaBcoTx.ShowModal;
    end
  else
    if (Origen='R') then
      begin
        if Not(Assigned(FormCambiaBcoTx)) then
          FormCambiaBcoTx:=TFormCambiaBcoTx.Create(nil);
        FormCambiaBcoTx.IdMov    := dbgRecibidas.DataSource.DataSet.FieldByName('id').Value;
        FormCambiaBcoTx.IdCtaBco := dbgRecibidas.DataSource.DataSet.FieldByName('id_cuenta_banco').Value;
        FormCambiaBcoTx.Origen   := 'R';
        FormCambiaBcoTx.NombreCta:= dbgRecibidas.DataSource.DataSet.FieldByName('MuestraBco').AsString;
        FormCambiaBcoTx.ShowModal;
    end;

  Buscar.Execute;
end;


procedure TFormListadoTransfBanco.CambiarRealizadasClick(Sender: TObject);
begin
  inherited;
  CambiarCta('E');
end;

procedure TFormListadoTransfBanco.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;

procedure TFormListadoTransfBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoTransfBanco.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormListadoTransfBanco.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoTransfBanco:=Nil;
end;

procedure TFormListadoTransfBanco.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frResumen.PrintOptions.Printer:=PrNomListados;
  frResumen.SelectPrinter;
  frResumen.LoadFromFile(DMMain_FD.PathReportesCpbte+'\ListadoTransferenias.fr3');
  frResumen.Variables['Banco']:= ''''+edNombreCta.Text+'''';
  frResumen.Variables['NroCta']:= ''''+edNroCta.Text+'''';
  frResumen.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frResumen.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';

  frResumen.PrintOptions.Copies := 1;
  // frCtaCte.PrepareReport;
  frResumen.ShowReport;

end;

procedure TFormListadoTransfBanco.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frResumen.DesignReport;
end;

procedure TFormListadoTransfBanco.ceCtaBcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if (key=vk_delete) or (Key=VK_back) Then
    begin
      ceCtaBco.Text:='';
      edNombreCta.Text:='';
    end;
end;

procedure TFormListadoTransfBanco.ceCtaBcoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    begin
     key:=#0;
      if Not(AsignarCtaBco(StrToInt(ceCtaBco.Text))) Then
        begin
          CDSTxEmitidas.Close;
          CDSTxRecibidas.Close;
          ceCtaBco.Text:='';
          ceCtaBco.SetFocus;
        end
      else
          Buscar.Execute;
     end;

end;

procedure TFormListadoTransfBanco.dbgRealizadasDblClick(Sender: TObject);
begin
  inherited;
 if CDSTxRecibidasTIPO_COMPROB.Value='OP' Then
    begin
     if Not(Assigned(FormOPago_2)) then
       FormOPago_2:=TFormOPago_2.Create(Self);
     FormOPago_2.DatoNew:=CDSTxRecibidasID_COMPROBANTE.ASString;
     FormOPago_2.TipoCPbte:='OP';
     FormOPago_2.REcuperar.Execute;
     FormOPago_2.Show;
    end
  else
    if CDSTxRecibidasTIPO_COMPROB.Value='FO' Then
      begin
       if Not(Assigned(FormCompraCtdo_2)) then
         FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
       FormCompraCtdo_2.DatoNew:=CDSTxRecibidasID_COMPROBANTE.ASString;
       FormCompraCtdo_2.TipoCPbte:='FO';
       FormCompraCtdo_2.REcuperar.Execute;
       FormCompraCtdo_2.Show;
    end
  else
    if CDSTxRecibidasTIPO_COMPROB.Value='EC' Then
      begin
       if Not(Assigned(FormEgresoCaja)) then
         FormEgresoCaja:=TFormEgresoCaja.Create(Self);
       FormEgresoCaja.DatoNew:=CDSTxRecibidasID_COMPROBANTE.ASString;
       FormEgresoCaja.TipoCPbte:='EC';
       FormEgresoCaja.REcuperar.Execute;
       FormEgresoCaja.Show;
    end;
end;

procedure TFormListadoTransfBanco.dbgRealizadasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  CambiarRecibidas.Enabled  := False;
  CambiarRealizadas.Enabled := True;
end;

procedure TFormListadoTransfBanco.dbgRealizadasTitleClick(Column: TColumn);
var Campo:String;
begin
  try
    Campo := Column.FieldName;
    with dbgRealizadas.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoTransfBanco.dbgRecibidasDblClick(Sender: TObject);
begin
  inherited;
  if CDSTxRecibidasTIPO_COMPROB.Value='RC' Then
    begin
     if Not(Assigned(FormRecibo_2)) then
       FormRecibo_2:=TFormRecibo_2.Create(Self);
     FormRecibo_2.DatoNew:=CDSTxRecibidasID_COMPROBANTE.ASString;
     FormRecibo_2.TipoCPbte:='RC';
     FormRecibo_2.REcuperar.Execute;
     FormRecibo_2.Show;
    end
  else
    if CDSTxRecibidasTIPO_COMPROB.Value='FO' Then
      begin
       if Not(Assigned(FormCpbteCtdo_2)) then
         FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
       FormCpbteCtdo_2.DatoNew:=CDSTxRecibidasID_COMPROBANTE.ASString;
       FormCpbteCtdo_2.TipoCPbte:='FO';
       FormCpbteCtdo_2.REcuperar.Execute;
       FormCpbteCtdo_2.Show;
    end
  else
    if CDSTxRecibidasTIPO_COMPROB.Value='IC' Then
      begin
       if Not(Assigned(FormIngresoCaja)) then
         FormIngresoCaja:=TFormIngresoCaja.Create(Self);
       FormIngresoCaja.DatoNew:=CDSTxRecibidasID_COMPROBANTE.ASString;
       FormIngresoCaja.TipoCPbte:='IC';
       FormIngresoCaja.REcuperar.Execute;
       FormIngresoCaja.Show;
    end;
end;

procedure TFormListadoTransfBanco.dbgRecibidasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  CambiarRecibidas.Enabled  := True;
  CambiarRealizadas.Enabled := False;
end;

procedure TFormListadoTransfBanco.dbgRecibidasTitleClick(Column: TColumn);
var Campo:string;
begin
  inherited;
 try
    Campo := Column.FieldName;
    with dbgRecibidas.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoTransfBanco.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoTransfBanco.ExportarCSVExecute(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    begin
      if OpenDialog1.FileName<>'' then
       begin
         ExportarClientDataSetToCSV(CDSTxEmitidas,OpenDialog1.FileName);
       end;
    end;

end;

end.