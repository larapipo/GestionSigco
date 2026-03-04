unit UListadoRecibosPorVendedor_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Librerias, UABMBase, ComCtrls, StdCtrls, Mask,  
  JvComponentBase, ImgList, DB,StrUtils,
  ActnList,JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Grids, DBGrids, frxClass, frxDBSet, JvFormPlacement,
  JvLabel, JvDBControls, JvExMask, JvToolEdit, JvBaseEdits, FMTBcd,
  JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK, DataExport,
  DataToXLS, Datasnap.Provider, Datasnap.DBClient, JvDBLookup, Data.SqlExpr,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons, System.ImageList, frCoreClasses;

type
  TFormListadoRecibosPorCobrador_2 = class(TFormABMBase)
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
    edTotal: TJvCalcEdit;
    Label1: TLabel;
    Label4: TLabel;
    edTotalNeto: TJvCalcEdit;
    edComision: TJvCalcEdit;
    edComisionNeta: TJvCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
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
    CDSRecibosCOMISIONNETA: TFloatField;
    CDSRecibosNRO_RECIBO_INTERMO: TIntegerField;
    BuscarCobrador: TAction;
    DSPBuscadorPersonal: TDataSetProvider;
    CDSBuscadorPersonal: TClientDataSet;
    CDSBuscadorPersonalCODIGO: TStringField;
    CDSBuscadorPersonalNOMBRE: TStringField;
    Label7: TLabel;
    ceCobrador: TJvComboEdit;
    edNombreCobrador: TEdit;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalVENDEDOR: TStringField;
    CDSPersonalCOBRADOR: TStringField;
    Label8: TLabel;
    dbcVendedores: TJvDBLookupCombo;
    DSVendedor: TDataSource;
    CDSVendedor: TClientDataSet;
    DSPVendedor: TDataSetProvider;
    CDSVendedorCODIGO: TStringField;
    CDSVendedorNOMBRE: TStringField;
    CDSRecibosVENDEDORCLIENTE: TStringField;
    ToolButton2: TToolButton;
    BitBtn1: TBitBtn;
    DataToXLS: TDataToXLS;
    SaveDialog1: TSaveDialog;
    QBuscaVend: TFDQuery;
    QRecibos: TFDQuery;
    CDSRecibosTOTAL: TFloatField;
    CDSRecibosMUESTRACOMISION: TFloatField;
    pnCabecera: TPanel;
    chbTodos: TAdvOfficeCheckBox;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSVendedorCOMISION: TFloatField;
    CDSPersonalCOMISION: TFloatField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure VerReciboExecute(Sender: TObject);
    procedure BuscarCobradorExecute(Sender: TObject);
    procedure ceCobradorKeyPress(Sender: TObject; var Key: Char);
    procedure chbTodosClick(Sender: TObject);
    procedure dbcVendedoresClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
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
  FormListadoRecibosPorCobrador_2: TFormListadoRecibosPorCobrador_2;

implementation

{$R *.dfm}
uses UDMain_FD, URecibo_2;

procedure TFormListadoRecibosPorCobrador_2.Sumar;
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
      AuxTotal        :=AuxTotal+CDSRecibosTOTAL.AsFloat;
      AuxNeto         :=AuxNeto+CDSRecibosTOTALNETO.AsFloat;
      AuxComisionTotal:=AuxComisionTotal+CDSRecibosCOMISION.AsFloat;
      AuxComisionNeta :=AuxComisionNeta+CDSRecibosCOMISIONNETA.AsFloat;
      CDSRecibos.Next;
    end;
  CDSRecibos.GotoBookmark(p);
  CDSRecibos.EnableControls;
  CDSRecibos.FreeBookmark(p);
  edTotal.Value        :=AuxTotal;
  edTotalNeto.Value    :=AuxNeto;
  edComision.Value     :=AuxComisionTotal;
  edComisionNeta.Value :=AuxComisionNeta;

end;

procedure TFormListadoRecibosPorCobrador_2.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSRecibos.IsEmpty) then
    begin
      SaveDialog1.FileName  :='Recibo_Cobrador';
      SaveDialog1.DefaultExt:='xls';

      SaveDialog1.FileName  := SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
        begin
          if Not(AnsiEndsText('.xls',SaveDialog1.FileName)) then
           SaveDialog1.FileName:= SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          if VirtualUI.Active then
            DataToXLS.SaveToFile(SaveDialog1.FileName)
          else
            DataToXLS.SaveToFile(SaveDialog1.FileName);
          sleep(300);
          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog1.FileName);
            end;
        end;
    end;
end;

procedure TFormListadoRecibosPorCobrador_2.BuscarCobradorExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscadorPersonal.Close;
  CDSBuscadorPersonal.Open;
  ComBuscadorBase.Execute;
  IF comBuscadorBase.rOk THEN
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

procedure TFormListadoRecibosPorCobrador_2.BuscarExecute(Sender: TObject);
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
  dbcVendedores.OnClick(self);
  dbgRecibos.Width:=dbgRecibos.Width-1;
  dbgRecibos.Width:=dbgRecibos.Width+1;

  sumar;
end;

    
procedure TFormListadoRecibosPorCobrador_2.ceCobradorKeyPress(Sender: TObject;
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

procedure TFormListadoRecibosPorCobrador_2.chbTodosClick(Sender: TObject);
begin
  inherited;
  ceCobrador.Enabled:= Not(chbTodos.Checked);
  Buscar.Execute;

end;

procedure TFormListadoRecibosPorCobrador_2.dbcVendedoresClick(Sender: TObject);
begin
  inherited;
  CDSRecibos.Filtered:=False;
  CDSRecibos.Filter:='';

  if dbcVendedores.KeyValue<>'******' then
    begin
      CDSRecibos.Filter:='vendedorcliente = '+''''+dbcVendedores.KeyValue+'''';
      CDSRecibos.Filtered:=True;

    end;
   sumar;
  
end;

procedure TFormListadoRecibosPorCobrador_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSVendedor.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormListadoRecibosPorCobrador_2.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSVendedor.Open;
end;

procedure TFormListadoRecibosPorCobrador_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRecibosPorCobrador_2:=nil;
end;

procedure TFormListadoRecibosPorCobrador_2.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoRecibosPorCobrador_2<>nil Then
    if (FormListadoRecibosPorCobrador_2.Width>1007) or (FormListadoRecibosPorCobrador_2.Width<1007)  then
      FormListadoRecibosPorCobrador_2.Width:=1007;

end;

procedure TFormListadoRecibosPorCobrador_2.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  Desde.SetFocus;
end;


procedure TFormListadoRecibosPorCobrador_2.ImprimirExecute(Sender: TObject);
begin
  frReporte.PrintOptions.Printer:=PrNomListados;
  frReporte.SelectPrinter;
  frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\ListadoRecibosVendedor_2.fr3');
  frReporte.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frReporte.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';
  frReporte.PrintOptions.Copies := 1;
  // frCtaCte.PrepareReport;
  frReporte.ShowReport;
end;

procedure TFormListadoRecibosPorCobrador_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

procedure TFormListadoRecibosPorCobrador_2.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFormListadoRecibosPorCobrador_2.VerReciboExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRecibo_2)) then
    FormRecibo_2:=TFormRecibo_2.Create(Self);
  FormRecibo_2.DatoNew:=CDSRecibosID_RC.AsString;
  FormRecibo_2.TipoCpbte:='RC';
  FormRecibo_2.Recuperar.Execute;  
end;

end.