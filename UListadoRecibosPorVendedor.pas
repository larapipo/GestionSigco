unit UListadoRecibosPorVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Librerias, UABMBase, ComCtrls, StdCtrls, Mask,  
  JvComponentBase, ImgList, DB,Inifiles,
    ActnList, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Grids, DBGrids, frxClass, frxDBSet, JvFormPlacement,
  JvLabel, JvDBControls, JvExMask, JvToolEdit, JvBaseEdits, FMTBcd,
  SqlExpr, DBClient, JvExDBGrids, JvDBGrid, Datasnap.Provider, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportPDF, AdvOfficeButtons, frxExportBaseDialog, Vcl.DBCtrls,
  System.ImageList, frCoreClasses;

type
  TFormListadoRecibosPorCobrador = class(TFormABMBase)
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    dbgRecibos: TDBGrid;
    DSRecibos: TDataSource;
    frDBRecibos: TfrxDBDataset;
    frReporte: TfrxReport;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    VerRecibo: TAction;
    Desde: TJvDateEdit;
    hasta: TJvDateEdit;
    CDSRecibos: TClientDataSet;
    DSPRecibos: TDataSetProvider;
    CDSRecibosID_RC: TIntegerField;
    CDSRecibosTIPOCPBTE: TStringField;
    CDSRecibosCLASECPBTE: TStringField;
    CDSRecibosNROCPBTE: TStringField;
    CDSRecibosCODIGO: TStringField;
    CDSRecibosNOMBRE: TStringField;
    CDSRecibosTOTALNETO: TFloatField;
    CDSRecibosVENDEDOR: TStringField;
    CDSRecibosMUESTRAVENDEDOR: TStringField;
    CDSRecibosCOMISION: TFloatField;
    CDSDetalleAplicacion: TClientDataSet;
    DSPDetalleAplicacion: TDataSetProvider;
    CDSDetalleAplicacionAPLICA_ID_CPBTE: TIntegerField;
    CDSDetalleAplicacionAPLICA_TIPOCPBTE: TStringField;
    CDSDetalleAplicacionAPLICA_CLASECPBTE: TStringField;
    CDSDetalleAplicacionAPLICA_NROCPBTE: TStringField;
    CDSDetalleAplicacionIDCOMPROBANTEAPLICACION: TIntegerField;
    CDSDetalleAplicacionTIOPOCOMPROBANTEAPLICACION: TStringField;
    CDSDetalleAplicacionNUMERORECIBO: TStringField;
    CDSDetalleAplicacionTASAIVA: TFloatField;
    CDSDetalleAplicacionAPLICACIONSINIVA: TFloatField;
    dbgDetalle: TJvDBGrid;
    DSAplicaciones: TDataSource;
    CDSDetalleAplicacionCOMISIONCALCLULADA: TFloatField;
    frDBDetalle: TfrxDBDataset;
    CDSDetalleAplicacionTIPO_VTA: TStringField;
    BuscarCobrador: TAction;
    DSPBuscadorPersonal: TDataSetProvider;
    CDSBuscadorPersonal: TClientDataSet;
    CDSBuscadorPersonalCODIGO: TStringField;
    CDSBuscadorPersonalNOMBRE: TStringField;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFMTBCDField;
    CDSPersonalVENDEDOR: TStringField;
    DSPPersonal: TDataSetProvider;
    Label7: TLabel;
    ceCobrador: TJvComboEdit;
    edNombreCobrador: TEdit;
    CDSPersonalCOBRADOR: TStringField;
    frxPDFExport1: TfrxPDFExport;
    pnCabecera: TPanel;
    chbTodos: TAdvOfficeCheckBox;
    QBuscaVend: TFDQuery;
    QRecibos: TFDQuery;
    CDSRecibosTOTAL: TFloatField;
    CDSRecibosMUESTRACOMISION: TFloatField;
    QDetalleAplicacion: TFDQuery;
    CDSDetalleAplicacionIMPORTEAPLIACION: TFloatField;
    CDSDetalleAplicacionTOTALFACTURA: TFloatField;
    CDSDetalleAplicacionNETOGRAVADOFACTURA: TFloatField;
    CDSDetalleAplicacionNETOEXENTOFACTURA: TFloatField;
    CDSDetalleAplicacionPERCEPCIONIIBB: TFloatField;
    CDSDetalleAplicacionIMPORTERECIBO: TFloatField;
    CDSRecibosFECHA: TSQLTimeStampField;
    QMaxRc: TFDQuery;
    QMinRc: TFDQuery;
    CDSDetalleAplicacionID_CPBTE: TIntegerField;
    CDSDetalleAplicacionFECHAVTA: TSQLTimeStampField;
    CDSDetalleAplicacionFECHAVTO: TSQLTimeStampField;
    CDSDetalleAplicacionOBSERVACION1: TStringField;
    CDSDetalleAplicacionOBSERVACION2: TStringField;
    QMaxRcMAX: TIntegerField;
    QMinRcMIN: TIntegerField;
    DBText1: TDBText;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label1: TLabel;
    edTotal: TJvCalcEdit;
    Label5: TLabel;
    edTotalNeto: TJvCalcEdit;
    Label4: TLabel;
    edComision: TJvCalcEdit;
    Label6: TLabel;
    edReporte: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure VerReciboExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSDetalleAplicacionCalcFields(DataSet: TDataSet);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BuscarCobradorExecute(Sender: TObject);
    procedure ceCobradorKeyPress(Sender: TObject; var Key: Char);
    procedure chbTodosClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AuxTotal,
    AuxNeto,
    AuxComisionTotal,
    AuxComisionNeta:Real;
    procedure sumar;
  end;

var
  FormListadoRecibosPorCobrador: TFormListadoRecibosPorCobrador;

implementation

{$R *.dfm}
uses URecibo_2, UDMain_FD;

procedure TFormListadoRecibosPorCobrador.Sumar;
var p:TBookmark;

begin
  inherited;
  AuxTotal        :=0;
  AuxNeto         :=0;
  AuxComisionTotal:=0;
  AuxComisionNeta :=0;

  p:=CDSRecibos.GetBookmark;
  CDSRecibos.DisableControls;
  CDSRecibos.First;
  while not(CDSRecibos.Eof) do
    begin
      CDSDetalleAplicacion.First;
      while not( CDSDetalleAplicacion.Eof) do
        begin
          AuxTotal        :=AuxTotal+CDSDetalleAplicacionIMPORTEAPLIACION.AsFloat;
          AuxNeto         :=AuxNeto +CDSDetalleAplicacionAPLICACIONSINIVA.Value;
          AuxComisionTotal:=AuxComisionTotal+CDSDetalleAplicacionCOMISIONCALCLULADA.AsFloat;
          //AuxComisionNeta :=AuxComisionNeta+CDSRecibosCOMISIONNETA.AsFloat;
          CDSDetalleAplicacion.Next;
        end;
      CDSRecibos.Next;
    end;
  CDSRecibos.GotoBookmark(p);
  CDSRecibos.EnableControls;
  CDSRecibos.FreeBookmark(p);
  edTotal.Value        :=AuxTotal;
  edTotalNeto.Value    :=AuxNeto;
  edComision.Value     :=AuxComisionTotal;

end;

procedure TFormListadoRecibosPorCobrador.BuscarCobradorExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorPersonal.Close;
  CDSBuscadorPersonal.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    BEGIN
      ceCobrador.Text := comBuscadorBase.Id;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := comBuscadorBase.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        BEGIN
          edNombreCobrador.Text := CDSPersonalNOMBRE.Value;
          Buscar.Execute;
          ceCobrador.SetFocus;
          ceCobrador.SelectAll;
        END;
    END;
  CDSPersonal.Close;
  CDSBuscadorPersonal.Close;
end;

procedure TFormListadoRecibosPorCobrador.BuscarExecute(Sender: TObject);
var Max,Min:Integer;
begin
  inherited;
  CDSRecibos.Close;
  CDSRecibos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSRecibos.Params.ParamByName('hasta').Value:=hasta.Date;
  if chbTodos.Checked then
    CDSRecibos.Params.ParamByName('Vendedor').Value:='******'
  else
    CDSRecibos.Params.ParamByName('Vendedor').Value:=ceCobrador.Text;
  CDSRecibos.Open;

  QMaxRc.Close;
  QMaxRc.ParamByName('desde').Value:=Desde.Date;
  QMaxRc.ParamByName('hasta').Value:=hasta.Date;
  if chbTodos.Checked then
    QMaxRc.ParamByName('Vendedor').Value:='******'
  else
    QMaxRc.ParamByName('Vendedor').Value:=ceCobrador.Text;
  QMaxRc.Open;


  QMinRc.Close;
  QMinRc.ParamByName('desde').Value:=Desde.Date;
  QMinRc.ParamByName('hasta').Value:=hasta.Date;
  if chbTodos.Checked then
    QMinRc.ParamByName('Vendedor').Value:='******'
  else
    QMinRc.ParamByName('Vendedor').Value:=ceCobrador.Text;
  QMinRc.Open;

  if QMaxRcMAX.AsString='' then
    Max:=0
  else
    Max:=QMaxRcMAX.Value;

  if QMinRcMIN.AsString='' then
    Min:=0
  else
    Min:=QMinRcMIN.Value;


  CDSDetalleAplicacion.MasterSource    := nil;
  CDSDetalleAplicacion.MasterFields    := '';
  CDSDetalleAplicacion.IndexFieldNames := '';

  CDSDetalleAplicacion.Close;
  CDSDetalleAplicacion.Params.ParamByName('idMax').Value:=Max;
  CDSDetalleAplicacion.Params.ParamByName('idMin').Value:=Min;
  CDSDetalleAplicacion.Open;

  CDSDetalleAplicacion.MasterSource    := DSRecibos;
  CDSDetalleAplicacion.IndexFieldNames := 'ID_CPBTE';
  CDSDetalleAplicacion.MasterFields    := 'ID_RC';


  sumar;
end;

procedure TFormListadoRecibosPorCobrador.CDSDetalleAplicacionCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if CDSDetalleAplicacionNETOGRAVADOFACTURA.AsFloat>0 then
  begin
    CDSDetalleAplicacionTASAIVA.Value:= (((CDSDetalleAplicacionTOTALFACTURA.AsFloat-CDSDetalleAplicacionPERCEPCIONIIBB.AsFloat) /CDSDetalleAplicacionNETOGRAVADOFACTURA.AsFloat )-1)*100;
//  CDSDetalleAplicacionAPLICACIONSINIVA.AsFloat:= CDSDetalleAplicacionIMPORTEAPLIACION.AsFloat / (CDSDetalleAplicacionTOTALFACTURA.AsFloat - CDSDetalleAplicacionPERCEPCIONIIBB.AsFloat ) ;
    CDSDetalleAplicacionAPLICACIONSINIVA.AsFloat:= CDSDetalleAplicacionIMPORTEAPLIACION.AsFloat /( (CDSDetalleAplicacionTOTALFACTURA.AsFloat-CDSDetalleAplicacionPERCEPCIONIIBB.AsFloat) / CDSDetalleAplicacionNETOGRAVADOFACTURA.AsFloat);
    CDSDetalleAplicacionCOMISIONCALCLULADA.AsFloat:=CDSDetalleAplicacionAPLICACIONSINIVA.AsFloat*CDSRecibosMUESTRACOMISION.AsFloat*0.01;
  end;
end;


procedure TFormListadoRecibosPorCobrador.ceCobradorKeyPress(Sender: TObject;
  var Key: Char);
var dato:string;
begin
  inherited;
   IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCobrador.Text))) + ceCobrador.Text;
      ceCobrador.Text := Dato;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := Dato;
      CDSPersonal.Open;
      IF (NOT (CDSPersonal.IsEmpty)) and (CDSPersonalCOBRADOR.Value='S') THEN
        BEGIN
          edNombreCobrador.Text := CDSPersonalNOMBRE.Value;
          //edTasaComision.Text   := FormatFloat('0.00',CDSPersonalCOMISION.AsFloat);
        END
      else
        BEGIN
          ceCobrador.Text       :='';
          edNombreCobrador.Text := '';
          //edTasaComision.Text   :=FormatFloat('0.00',0);
        END;

      Buscar.Execute;
      ceCobrador.SetFocus;
      ceCobrador.SelectAll;
    END;
  CDSPersonal.Close;
end;

procedure TFormListadoRecibosPorCobrador.chbTodosClick(Sender: TObject);
begin
  inherited;
  ceCobrador.Enabled:= Not(chbTodos.Checked);
  Buscar.Execute;
end;

procedure TFormListadoRecibosPorCobrador.DSBaseStateChange(Sender: TObject);
begin
 //iherited;

end;

procedure TFormListadoRecibosPorCobrador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni     := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ListadoRecibosPorVendedor.ini');
  ArchivoIni.WriteString('Reporte', 'Archivo', edReporte.Text);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormListadoRecibosPorCobrador.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:= (sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  OpenDialog.InitialDir        := DMMain_FD.PathReportesCpbte;
  ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ListadoRecibosPorVendedor.ini');
  edReporte.Text               := ArchivoIni.ReadString('Reporte', 'Archivo', 'ListadoRecibosVendedor.fr3');
  ArchivoIni.Free;
  AutoSize:=False;
end;

procedure TFormListadoRecibosPorCobrador.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRecibosPorCobrador:=nil;
end;

procedure TFormListadoRecibosPorCobrador.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoRecibosPorCobrador<>nil then
    if FormListadoRecibosPorCobrador.Width<>817 then
      FormListadoRecibosPorCobrador.Width:=817;

end;

procedure TFormListadoRecibosPorCobrador.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  Desde.SetFocus;
end;


procedure TFormListadoRecibosPorCobrador.ImprimirExecute(Sender: TObject);
begin
  frReporte.PrintOptions.Printer:=PrNomListados;
  frReporte.SelectPrinter;
  frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+edReporte.Text);
  frReporte.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frReporte.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';
  frReporte.PrintOptions.Copies := 1;
  // frCtaCte.PrepareReport;
  frReporte.ShowReport;
end;

procedure TFormListadoRecibosPorCobrador.dbgDetalleDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if CDSDetalleAplicacionTIPO_VTA.Value='S' Then
    dbgDetalle.Canvas.Font.Color :=clBlue;

  if gdSelected	in state Then
    begin
      dbgDetalle.Canvas.brush.Color :=clBlue;
      dbgDetalle.Canvas.Font.Color  :=clWhite;
    end;

  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormListadoRecibosPorCobrador.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

procedure TFormListadoRecibosPorCobrador.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edReporte.Text := OpenDialog.FileName;
        Lon1           := Length(OpenDialog.InitialDir);
        Lon2           := Length(OpenDialog.FileName);
        edReporte.Text := Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1)
      end
    else
      edReporte.Text:='';
end;

procedure TFormListadoRecibosPorCobrador.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Buscar.Execute;
  //  Desde.SetFocus;
 end;

procedure TFormListadoRecibosPorCobrador.VerReciboExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
  FormRecibo_2.DatoNew:=CDSRecibosID_RC.AsString;
  FormRecibo_2.TipoCpbte:='RC';
  FormRecibo_2.Recuperar.Execute;  
end;

end.