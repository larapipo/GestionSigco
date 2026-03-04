unit UEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,   ActnList, ComCtrls,
  Buttons, StdCtrls, ToolWin, ExtCtrls, Provider, DBCtrls,  
  frxDBSet, frxClass, ImgList, JvComponentBase, JvExControls,
  JvGradient, frxExportRTF, frxExportText, frxExportXLS, frxExportPDF,IniFiles,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportBaseDialog, System.ImageList, AeroButtons,
  frCoreClasses,DelphiZXingQRCode;

type
  TFormEtiquetas = class(TFormABMBase)
    dbgDetalle: TDBGrid;
    DSEtiquetas: TDataSource;
    BuscadorArticulos: TAction;
    Label1: TLabel;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    frxReport: TfrxReport;
    Etiquetas: TfrxDBDataset;
    chOferta: TCheckBox;
    frxPDFExport1: TfrxPDFExport;
    edEtiqueta1: TEdit;
    sbReporte: TSpeedButton;
    edEtiqueta2: TEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog: TOpenDialog;
    Label2: TLabel;
    Label3: TLabel;
    cbLista: TJvDBLookupCombo;
    DSPListaPrecioCab: TDataSetProvider;
    CDSListaPrecioCab: TClientDataSet;
    DSListaPrecioCab: TDataSource;
    CDSListaPrecioCabID: TIntegerField;
    CDSListaPrecioCabNOMBRE: TStringField;
    CDSListaPrecioCabFECHA: TSQLTimeStampField;
    CDSListaPrecioCabPORDEFECTO: TStringField;
    CDSListaPrecioCabF_PAGO: TIntegerField;
    CDSListaPrecioCabUSO_ADMINISTRADOR: TStringField;
    CDSListaPrecioCabCLONADA: TStringField;
    CDSListaPrecioCabID_LISTA_CLONADA: TIntegerField;
    RepetirCodigo: TAction;
    DSPLstStock: TDataSetProvider;
    CDSLstStock: TClientDataSet;
    CDSLstStockCODIGO_STK: TStringField;
    CargarStock: TAction;
    QListaPrecioCab: TFDQuery;
    QLstStock: TFDQuery;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockTASA: TFloatField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockRECARGO: TFloatField;
    QStockREEMPLAZO_STK: TStringField;
    QStockPRECIO: TFloatField;
    mtEtiquetas: TFDMemTable;
    mtEtiquetasCODIGO: TStringField;
    mtEtiquetasDETALLE: TStringField;
    mtEtiquetasPRECIO: TFloatField;
    mtEtiquetasCODIGOBARRA: TStringField;
    mtEtiquetasCODIGOALTERNATIVO: TStringField;
    QCB: TFDQuery;
    QCBCODIGOBARRA: TStringField;
    btLimpiar: TAeroButton;
    Limpiar: TAction;
    mtEtiquetasPRECIO_2: TFloatField;
    Label4: TLabel;
    cbLista2: TJvDBLookupCombo;
    CDSListaPrecio2: TClientDataSet;
    DSListaPrecio2: TDataSource;
    CDSListaPrecio2ID: TIntegerField;
    CDSListaPrecio2NOMBRE: TStringField;
    CDSListaPrecio2RECARGOBASE: TFloatField;
    CDSListaPrecio2FECHA: TSQLTimeStampField;
    CDSListaPrecio2PORDEFECTO: TStringField;
    CDSListaPrecio2F_PAGO: TIntegerField;
    CDSListaPrecio2USO_ADMINISTRADOR: TStringField;
    CDSListaPrecio2CLONADA: TStringField;
    CDSListaPrecio2ID_LISTA_CLONADA: TIntegerField;
    CDSListaPrecio2COEFICIENTE: TFloatField;
    CDSListaPrecio2EXCLUSIVO_EFECTIVO: TStringField;
    CDSListaPrecio2ACTUALIZA_EXCEPCION: TStringField;
    QStockRECARGO_2: TFloatField;
    QStockPRECIO2: TFloatField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    mtEtiquetasPRECIO_GRAVADO: TFloatField;
    mtEtiquetasPRECIO_GRAVADO_2: TFloatField;
    QStockPRECIOGRAVADO: TFloatField;
    QStockPRECIOGRAVADO2: TFloatField;
    mtEtiquetasImagen: TBlobField;
    mtEtiquetasURL: TStringField;
    DBImage1: TDBImage;
    QStockFOTO: TBlobField;
    QStockURL: TStringField;
    mtEtiquetasQRImage: TBlobField;
    mtEtiquetasDESCUENTO: TFloatField;
    mtEtiquetasDESCUENTO_2: TFloatField;
    QStockDESCUENTO: TFloatField;
    QStockDESCUENTO_2: TFloatField;
//    procedure CDSEtiquetas_CODIGOSetText(Sender: TField;
//      const Text: String);
    procedure BuscadorArticulosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RepetirCodigoExecute(Sender: TObject);
    procedure dbgDetalleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CargarStockExecute(Sender: TObject);
    procedure mtEtiquetasCODIGOSetText(Sender: TField; const Text: string);
    procedure FormResizem(Sender: TObject);
    procedure LimpiarExecute(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
  private
    QRCodeBitmap: TBitmap;
    function Update(text:string):TBitmap;
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  end;

var
  FormEtiquetas: TFormEtiquetas;

implementation

uses UBuscadorArticulos, UCantidadEtiquetas,UDMain_FD, UStock_2;

{$R *.DFM}

procedure TFormEtiquetas.CargarStockExecute(Sender: TObject);
begin
  inherited;
  CDSLstStock.Close;
  CDSLstStock.Open;
  CDSLstStock.First;
  while Not(CDSLstStock.Eof) do
    begin
      mtEtiquetas.Append;
      mtEtiquetasCODIGOSetText(mtEtiquetasCODIGO,CDSLstStockCODIGO_STK.AsString);
      if mtEtiquetas.State<>dsBrowse then
        mtEtiquetas.Post;
      CDSLstStock.Next;
    end;
  CDSLstStock.Close;
end;


procedure TFormEtiquetas.BuscadorArticulosExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    mtEtiquetasCODIGOSetText(mtEtiquetasCODIGO,FormBuscadorArticulos.Codigo);
end;

procedure TFormEtiquetas.FormCreate(Sender: TObject);
begin
  inherited;
  AUtoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Etiqutetas.Ini');
  edEtiqueta1.Text:= ArchivoIni.ReadString('etiqueta', 'chica', '');
  edEtiqueta2.Text:= ArchivoIni.ReadString('etiqueta', 'oferta', '');
  ArchivoIni.Free;

  pnPrincipal.Enabled:=True;
  mtEtiquetas.Open;
  CDSListaPrecioCab.Open;
  CDSListaPrecio2.Open;


  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;

end;

procedure TFormEtiquetas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Etiqutetas.Ini');
  //*************************************************************
  ArchivoIni.WriteString('etiqueta', 'chica', edEtiqueta1.Text);
  ArchivoIni.WriteString('etiqueta', 'oferta',edEtiqueta2.Text);
  ArchivoIni.Free;
  CDSListaPrecioCab.close;
  CDSListaPrecio2.Close;
  mtEtiquetas.Close;
  Action:=caFree;
end;

procedure TFormEtiquetas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormEtiquetas:=nil;
end;

procedure TFormEtiquetas.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

procedure TFormEtiquetas.FormResizem(Sender: TObject);
begin
  inherited;
  if FormEtiquetas<>nil then
    if FormEtiquetas.Width<>1030 then
      FormEtiquetas.Width:=1030;
end;

procedure TFormEtiquetas.FormShow(Sender: TObject);
begin
  inherited;
  cbLista.KeyValue  := DMMain_FD.ListaPorDefecto;
  cbLista2.KeyValue := DMMain_FD.ListaPorDefecto;

end;

procedure TFormEtiquetas.LimpiarExecute(Sender: TObject);
begin
  inherited;
  mtEtiquetas.Close;
  mtEtiquetas.Open;
end;

function TFormEtiquetas.Update(Text: string): TBitmap;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column, Scale: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data      := Text;
    QRCode.Encoding  := TQRCodeEncoding(qrUTF8NoBOM);
    QRCode.QuietZone := 4;

    Scale := 5; // Aumenta el tamaño visual del QR (cada "pixel" se dibuja más grande)
    Result := TBitmap.Create;
    Result.SetSize(QRCode.Columns * Scale, QRCode.Rows * Scale);
    Result.PixelFormat := pf24bit;

    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if QRCode.IsBlack[Row, Column] then
          Result.Canvas.Brush.Color := clBlack
        else
          Result.Canvas.Brush.Color := clWhite;

        // Dibuja un rectángulo en vez de un solo píxel
        Result.Canvas.FillRect(Rect(
          Column * Scale,
          Row * Scale,
          (Column + 1) * Scale,
          (Row + 1) * Scale));
      end;
    end;
  finally
    QRCode.Free;
  end;
end;

procedure TFormEtiquetas.mtEtiquetasCODIGOSetText(Sender: TField; const Text: string);
var
  BitmapQR: TBitmap;
  Stream: TMemoryStream;
begin
  inherited;

  if (Text <> '') and (Text <> #13) then
    begin
      sbEstado.Panels[1].Text := '';

      if mtEtiquetas.State = dsBrowse then
        mtEtiquetas.Append;

      DMMain_FD.CDSCodigoBarra.Close;
      DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString := Text;
      DMMain_FD.CDSCodigoBarra.Open;

      if DMMain_FD.CDSCodigoBarra.Fields[0].AsString <> '' then
        Sender.AsString := DMMain_FD.CDSCodigoBarra.Fields[0].AsString
      else
        begin
          if DMMain_FD.JustificaCodigo = 'D' then
            Sender.AsString := Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Trim(Text))) + Trim(Text)
          else if DMMain_FD.JustificaCodigo = 'I' then
            Sender.AsString := Trim(Text) + Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Trim(Text)));
        end;

      QStock.Close;
      QStock.ParamByName('codigo').Value := Sender.AsString;
      QStock.ParamByName('lista').Value  := cbLista.LookupSource.DataSet.FieldByName('id').Value;
      QStock.ParamByName('lista2').Value := cbLista2.LookupSource.DataSet.FieldByName('id').Value;
      QStock.Open;

      if QStockCODIGO_STK.AsString <> '' then
        begin
          QCB.Close;
          QCB.ParamByName('Codigo').Value := Sender.AsString;
          QCB.Open;

          mtEtiquetasCODIGO.Value             := QStockCODIGO_STK.Value;
          mtEtiquetasCODIGOALTERNATIVO.Value  := QStockREEMPLAZO_STK.Value;
          mtEtiquetasDETALLE.Value            := QStockDETALLE_STK.Value;
          mtEtiquetasDESCUENTO.AsFloat        := QStockDESCUENTO.AsFloat;
          mtEtiquetasDESCUENTO_2.AsFloat      := QStockDESCUENTO_2.AsFloat;

          mtEtiquetasPRECIO.AsFloat           := QStockPRECIO.Value;
          mtEtiquetasPRECIO_2.AsFloat         := QStockPRECIO2.AsFloat * ((100-mtEtiquetasDESCUENTO_2.AsFloat)*0.01);

          if QCBCODIGOBARRA.AsString <> '' then
            mtEtiquetasCODIGOBARRA.Value := QCBCODIGOBARRA.AsString
          else
            mtEtiquetasCODIGOBARRA.Value := 'S/N';

          mtEtiquetasPRECIO_GRAVADO.Value    := QStockPRECIOGRAVADO.Value;
          mtEtiquetasPRECIO_GRAVADO_2.Value  := QStockPRECIOGRAVADO2.Value * ((100-mtEtiquetasDESCUENTO_2.AsFloat)*0.01);
          mtEtiquetasURL.Value               := QStockURL.Value;
          mtEtiquetasImagen.Value            := QStockFOTO.Value;

          // ✅ Generar y guardar QR como imagen en campo blob
          BitmapQR := Update(QStockURL.Value);
          Stream   := TMemoryStream.Create;
          try
            BitmapQR.SaveToStream(Stream);
            Stream.Position := 0;
            TBlobField(mtEtiquetasQRImage).LoadFromStream(Stream);
          finally
            Stream.Free;
            BitmapQR.Free;
          end;

          sbEstado.Panels[1].Text := QStockURL.Value;
        end;
    end;
end;

procedure TFormEtiquetas.pnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormEtiquetas.RepetirCodigoExecute(Sender: TObject);
var i,Tope:Integer;
begin
  inherited;
  if Not(Assigned(FormCantidadEtiquetas)) then
    FormCantidadEtiquetas:=TFormCantidadEtiquetas.Create(Self);
  FormCantidadEtiquetas.Codigo :=mtEtiquetasCODIGO.Value;
  FormCantidadEtiquetas.Detalle:=mtEtiquetasDETALLE.Value;

  FormCantidadEtiquetas.ShowModal;
  if FormCantidadEtiquetas.ModalResult=mrOk then
    begin
      Tope:=FormCantidadEtiquetas.Cantidad;
      for i:=1 to tope do
        begin
          mtEtiquetas.Append;
          mtEtiquetasCODIGOSetText(mtEtiquetasCODIGO,FormCantidadEtiquetas.Codigo);
        end;
    end;
end;

procedure TFormEtiquetas.dbgDetalleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF DBGDetalle.SelectedField = mtEtiquetasCODIGO THEN
           BuscadorArticulos.Execute;
      END
   else
     IF Key = #13 THEN
       BEGIN
         Key := #0;
         IF (DBGDetalle.SelectedIndex < 0) THEN
        DBGDetalle.SelectedIndex := DBGDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF (DBGDetalle.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            DBGDetalle.DataSource.DataSet.Append;
          DBGDetalle.SelectedIndex := 0;
        END;
    END
end;

procedure TFormEtiquetas.dbgDetalleMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='Ctrl + R = Repetir Codigo.  Ctrl + L = Limpiar';
end;

procedure TFormEtiquetas.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  if dbgDetalle.SelectedIndex>0 Then
    begin
      dbgDetalle.SelectedIndex:=0;
    end;
end;

procedure TFormEtiquetas.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(formStock_2)) then
    formStock_2:=TFormStock_2.Create(Self);
  formstock_2.datoNew:=mtEtiquetasCODIGO.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormEtiquetas.dbgDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscadorArticulos.Execute;
end;

procedure TFormEtiquetas.btImprimirClick(Sender: TObject);
begin
  inherited;

  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  if chOferta.Checked=False Then
    frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edEtiqueta1.Text)
  else
    frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edEtiqueta2.Text);

  frxReport.ShowReport;
end;

procedure TFormEtiquetas.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormEtiquetas.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
 if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edEtiqueta1.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edEtiqueta1.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edEtiqueta1.Text:='';
end;

procedure TFormEtiquetas.SpeedButton1Click(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
 if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edEtiqueta2.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edEtiqueta2.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edEtiqueta2.Text:='';
end;

end.