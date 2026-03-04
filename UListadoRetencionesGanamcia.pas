unit UListadoRetencionesGanamcia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, Buttons, ToolWin, ExtCtrls,
  frxDBSet, frxClass, Menus, DataExport, DataToAscii,FileCtrl, ImgList,
  JvComponentBase, JvExControls, JvGradient, DataToXLS, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, Provider,
  DBClient, frxExportPDF, JvExStdCtrls, JvCombobox,IniFiles,DateUtils, DBXCommon,
  JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_sdk, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,StrUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormListadoRetencionesGanancias = class(TFormABMBase)
    UpDown1: TUpDown;
    dbgDetalle: TDBGrid;
    DSRetGanancia: TDataSource;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frConsulta: TfrxReport;
    frDBDRetenciones: TfrxDBDataset;
    DataToTxt: TDataToAscii;
    PopupMenu: TPopupMenu;
    ExportarTxt: TAction;
    SaveDialog: TSaveDialog;
    ExportarenTxt1: TMenuItem;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    ToolButton2: TToolButton;
    MaracarLiquidadas: TAction;
    ExportarXLS: TAction;
    DataToXLS1: TDataToXLS;
    ExportaraXLS1: TMenuItem;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    frxPDFExport1: TfrxPDFExport;
    CDSRetGan: TClientDataSet;
    DSPRetGan: TDataSetProvider;
    CDSRetGanNUMERO_RETENCION: TStringField;
    CDSRetGanCODIGO_REGIMEN: TIntegerField;
    CDSRetGanCONCEPTO: TStringField;
    CDSRetGanANULADA: TStringField;
    CDSRetGanESTADO: TStringField;
    CDSRetGanNUMEROOPAGO: TStringField;
    CDSRetGanNOMBREOPAGO: TStringField;
    CDSRetGanCUIT: TStringField;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    ExportarSICORE: TAction;
    CDSRetGanPREFIJOOPAGO: TStringField;
    CDSRetGanTIPOIVA: TIntegerField;
    spRecalcular: TSpeedButton;
    ToolButton3: TToolButton;
    DepurarCeros: TAction;
    ComboBox: TComboBox;
    JvLabel1: TJvLabel;
    CDSRetGanID: TIntegerField;
    DesmarcarLiq: TAction;
    N1: TMenuItem;
    DesmarcarLiq1: TMenuItem;
    CDSRetGanBCALCULO: TFloatField;
    CDSRetGanBASECALCULO: TFloatField;
    QRetGan: TFDQuery;
    CDSRetGanIMPUESTO_RETENIDO: TFloatField;
    CDSRetGanMINIMO_NO_IMPONIBLE: TFloatField;
    CDSRetGanTASA: TFloatField;
    CDSRetGanIMPORTEOPAGO: TFloatField;
    QDesmaracaLiquidad: TFDQuery;
    QDepurar: TFDQuery;
    spMarcarLiquidadas: TFDStoredProc;
    CDSRetGanFECHARETENCION: TSQLTimeStampField;
    CDSRetGanFECHAOPAGO: TSQLTimeStampField;
    rgEstado: TAdvOfficeRadioGroup;
    CDSRetGanRAZON_SOCIAL: TStringField;
    CDSRetGanID_OP: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ExportarTxtExecute(Sender: TObject);
    procedure MaracarLiquidadasExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure ExportarSICOREExecute(Sender: TObject);
    procedure DepurarCerosExecute(Sender: TObject);
    procedure ComboBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure CDSRetGanAfterPost(DataSet: TDataSet);
    procedure DesmarcarLiqExecute(Sender: TObject);
    procedure CDSRetGanCalcFields(DataSet: TDataSet);
    procedure rgEstadoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoRetencionesGanancias: TFormListadoRetencionesGanancias;

implementation

uses UDMain_FD, UOPago_2;

{$R *.DFM}

procedure TFormListadoRetencionesGanancias.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;

procedure TFormListadoRetencionesGanancias.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSRetGan.Close;
  CDSRetGan.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSRetGan.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  case rgEstado.ItemIndex of
    0:  CDSRetGan.Params.ParamByName('estado').Value:='*';
    1:  CDSRetGan.Params.ParamByName('estado').Value:='P';
    2:  CDSRetGan.Params.ParamByName('estado').Value:='L';
  end;

  CDSRetGan.Open;

  TFloatField(dbgDetalle.Fields[6]).DisplayFormat:='0.00';
  TFloatField(dbgDetalle.Fields[5]).DisplayFormat:='0.00';
end;

procedure TFormListadoRetencionesGanancias.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoRetencionesGanancias.ImprimirExecute(
  Sender: TObject);
begin
  inherited;

  if PrListados<0 Then PrListados:=0;
  frConsulta.PrintOptions.Printer:=PrNomListados;
  frConsulta.SelectPrinter;
  frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRetencionesGanancia.fr3');

  frConsulta.ShowReport;
end;

procedure TFormListadoRetencionesGanancias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ListadoRetencionesGanancia.ini');
  //*************************************************************
  ArchivoIni.WriteInteger('Dato', 'Dato', ComboBox.ItemIndex);
  ArchivoIni.Free;

end;

procedure TFormListadoRetencionesGanancias.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ListadoRetencionesGanancia.ini');
  //*************************************************************
  ComboBox.ItemIndex        := ArchivoIni.ReadInteger('Dato', 'Dato', -1);
  ArchivoIni.Free;
end;

procedure TFormListadoRetencionesGanancias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRetencionesGanancias:=nil;
end;

procedure TFormListadoRetencionesGanancias.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoRetencionesGanancias<>nil then
    if FormListadoRetencionesGanancias.Width<>944 then
      FormListadoRetencionesGanancias.Width:=944;


end;

procedure TFormListadoRetencionesGanancias.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;

procedure TFormListadoRetencionesGanancias.CDSRetGanAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSRetGan.ApplyUpdates(0);
end;

procedure TFormListadoRetencionesGanancias.CDSRetGanCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSRetGanBASECALCULO.Value:=CDSRetGanBCALCULO.Value;
  if CDSRetGanBASECALCULO.Value<0 then
     begin
       CDSRetGanBASECALCULO.Value:=CDSRetGanIMPUESTO_RETENIDO.AsFloat/(CDSRetGanTASA.AsFloat * 0.01);
     end;
end;

procedure TFormListadoRetencionesGanancias.ComboBoxDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  sValor, sTodo: string;
  i, iPos: Integer;
  rc: TRect;
  AnchoColumna: array[0..3] of Integer;
begin
  ComboBox.Canvas.Brush.Style := bsSolid;
  ComboBox.Canvas.FillRect( Rect );

  // Las columnas deben ir separadas por un ;
  sTodo := ComboBox.Items[Index];

  // Establecemos el ancho de las columnas
  AnchoColumna[0] := 0;
  AnchoColumna[1] := 50;  // Ancho de la columna 1
  AnchoColumna[2] := 100;  // Ancho de la columna 2
  AnchoColumna[3] := 500;  // Ancho de la columna 3

  // Leemos el texto de la primera columna
  iPos := Pos( ';', sTodo );
  sValor := Copy( sTodo, 1, iPos - 1 );

  for i := 0 to 2 do
  begin
    // Dibujamos la primera columna
    rc.Left   := Rect.Left + AnchoColumna[i] + 2;
    rc.Right  := Rect.Left + AnchoColumna[i+1] - 2;
    rc.Top    := Rect.Top;
    rc.Bottom := Rect.Bottom;

    // Escribimos el texto
    Combobox.Canvas.TextRect( rc, rc.Left, rc.Top, sValor );

    // Dibujamos las líneas que separan las columnas
    if i < 3 then
    begin
      Combobox.Canvas.MoveTo( rc.Right, rc.Top );
      Combobox.Canvas.LineTo( rc.Right, rc.Bottom );
    end;

    // Leemos el texto de la segunda columna
    sTodo := Copy( sTodo, iPos + 1, Length( sTodo ) - iPos );
    iPos := Pos( ';', sTodo );
    sValor := Copy( sTodo, 1, iPos - 1 );
  end;
end;

procedure TFormListadoRetencionesGanancias.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
   if CDSRetGanID_OP.AsString<>'' then
     begin
       if FormOPago_2<>nil then
         FormOPago_2:=TFormOpago_2.Create(Self);
       FormOPago_2.DatoNew   := CDSRetGanID_OP.AsString;
       FormOPago_2.TipoCpbte := 'OP';
       FormOPago_2.Recuperar.Execute;
       FormOPago_2.Show;
     end;
end;

procedure TFormListadoRetencionesGanancias.dbgDetalleDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if CDSRetGanESTADO.Value='L' Then
    dbgDetalle.Canvas.Font.Color:=clblue
  else
    if CDSRetGanESTADO.Value='P' Then
      dbgDetalle.Canvas.Font.Color:=clblack;

  if CDSRetGanANULADA.Value='S' Then
    dbgDetalle.Canvas.Font.Style :=[fsStrikeOut]
  else
    dbgDetalle.Canvas.Font.Style :=[];

  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormListadoRetencionesGanancias.DepurarCerosExecute(Sender: TObject);
begin
  inherited;
  QDepurar.Close;
  QDepurar.ExecSQL;
  QDepurar.Close;
  Buscar.Execute;
end;

procedure TFormListadoRetencionesGanancias.DesmarcarLiqExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to dbgDetalle.SelectedRows.Count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgDetalle.DataSource.DataSet.GotoBookmark(Pointer(dbgDetalle.SelectedRows.Items[i]));
      {$ELSE}
        dbgDetalle.DataSource.DataSet.GotoBookmark((dbgDetalle.SelectedRows.Items[i]));
      {$ENDIF}


      DMMain_FD.fdcGestion.StartTransaction;
      try
        QDesmaracaLiquidad.Close;
        QDesmaracaLiquidad.ParamByName('id').Value:=CDSRetGanID.Value;
        QDesmaracaLiquidad.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se Desmarco la retencion...');
      end;
    end;
  Buscar.Execute;
end;

procedure TFormListadoRetencionesGanancias.ExportarSICOREExecute(
  Sender: TObject);
var
  ArchiTxt: TextFile;
  CodioCopprobante,Fecha,NroCpbte,ImporteCpbte,CodImpueto,CodRegimen,CodOperacion,
  BaseCalculo,FechaRet,CodigoCondicion,CodSujetoSupendido,ImporteRet,
  PorcentajeExclusion,FechaBoletin,TipoDocRetenido,
  NroDocRetendido,NroCertificado: String;
  i:byte;
begin
  SaveDialog.FileName:='Retenciones_SICORE'+FormatDateTime('MM-YYYY',Hasta.Date)+'.TXT';
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  CDSRetGan.First;
  if SaveDialog.Execute Then
    begin
      SaveDialog.FileName:=SaveDialog.FileName;
      if Not(AnsiContainsText(SaveDialog.FileName,'.TXT')) then
        if VirtualUI.Active then
          SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      AssignFile(ArchiTxt, SaveDialog.FileName);
      Rewrite(ArchiTxt);
      while not (CDSRetGan.Eof) do
        begin
          TipoCpbte   := '06';
          Fecha       := FormatDateTime('DD/MM/YYYY',CDSRetGanFECHAOPAGO.AsDateTime);
          NroCpbte    := '0000'+CDSRetGanPREFIJOOPAGO.Value+CDSRetGanNUMEROOPAGO.Value;
          ImporteCpbte:= FormatFloat('0000000000000.00',CDSRetGanIMPORTEOPAGO.AsFloat);
          CodImpueto  := '0217';
          CodRegimen  := Copy('000',1,3-Length(CDSRetGanCODIGO_REGIMEN.AsString))+CDSRetGanCODIGO_REGIMEN.AsString;
          if CodRegimen='000' then
            begin
              CodRegimen := Copy(ComboBox.Text,Pos(';',ComboBox.Text)+1,20);
              CodRegimen := Copy(CodRegimen,1,Pos(';',ComboBox.Text));
              CodRegimen := Trim(CodRegimen);
              CodRegimen := Copy('000',1,3-Length(CodRegimen))+CodRegimen;
            end;
          CodOperacion:='1';
          BaseCalculo :=FormatFloat('00000000000.00',Abs(CDSRetGanBASECALCULO.AsFloat));
          FechaRet    :=FormatDateTime('DD/MM/YYYY',CDSRetGanFECHARETENCION.AsDateTime);
          case CDSRetGanTIPOIVA.Value of
            1:CodigoCondicion:='01';
            2:CodigoCondicion:='02';
            3:CodigoCondicion:='03';
            4:CodigoCondicion:='03';
            5:CodigoCondicion:='03';
          end;

          CodSujetoSupendido :='0';
          ImporteRet         :=FormatFloat('00000000000.00',CDSRetGanIMPUESTO_RETENIDO.AsFloat);
          PorcentajeExclusion:='000.00';
          FechaBoletin       :='          ';
          TipoDocRetenido    :='80';
          NroDocRetendido    :=CDSRetGanCUIT.AsString;
          while Pos('-',NroDocRetendido)>0 do
            Delete(NroDocRetendido,Pos('-',NroDocRetendido),1);
          NroDocRetendido:='         '+NroDocRetendido;
          NroCertificado:= StringOfChar('0',14);
          if (CDSRetGanESTADO.Value='P') and (CDSRetGanIMPUESTO_RETENIDO.AsFloat>0) then
            WriteLn(ArchiTxt,  TipoCpbte,  Fecha, NroCpbte,
                               ImporteCpbte, CodImpueto, CodRegimen,
                               CodOperacion, BaseCalculo, FechaRet,
                               CodigoCondicion, CodSujetoSupendido, ImporteRet,
                               PorcentajeExclusion, FechaBoletin, TipoDocRetenido,
                               NroDocRetendido, NroCertificado);
          CDSRetGan.Next;
        end;
      CloseFile(ArchiTxt);
      if Not( VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog.FileName+'..... ');
      CDSRetGan.First;
    end;
  if VirtualUI.Active then
    VirtualUI.DownloadFile(SaveDialog.FileName);
end;


procedure TFormListadoRetencionesGanancias.ExportarTxtExecute(
  Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  SaveDialog.DefaultExt:='txt';
  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      DataToTxt.SaveToFile(SaveDialog.FileName);

end;

procedure TFormListadoRetencionesGanancias.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
   if VirtualUI.Active then
     VirtualUI.StdDialogs:=False;

   IF NOT (CDSRetGan.IsEmpty) THEN
     BEGIN
       SaveDialog.FileName:='Retenciones';
       SaveDialog.DefaultExt:='XLS';

       SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

       if SaveDialog.Execute Then
         if SaveDialog.FileName<>'' Then
           begin
             SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
             DataToXLS1.SaveToFile(SaveDialog.FileName);
            if VirtualUI.Active then
               VirtualUI.DownloadFile(SaveDialog.FileName);
           end;
     END;
end;

procedure TFormListadoRetencionesGanancias.MaracarLiquidadasExecute(
  Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  Try
    spMarcarLiquidadas.Close;
    spMarcarLiquidadas.ParamByName('desde').AsDate:=Desde.Date;
    spMarcarLiquidadas.ParamByName('hasta').AsDate:=hasta.Date;
    spMarcarLiquidadas.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spMarcarLiquidadas.Close;
    ShowMessage('Transacción Finalizada');
  except
    DMMain_FD.fdcGestion.Rollback;
    spMarcarLiquidadas.Close;
    ShowMessage('No se pudo relizar la Transacción ..... ');
  End;
  Buscar.Execute;
end;

procedure TFormListadoRetencionesGanancias.rgEstadoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.