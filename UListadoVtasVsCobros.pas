unit UListadoVtasVsCobros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ComCtrls, StdCtrls, Mask, ImgList,
  DB,   ActnList,JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls, cxClasses, cxGraphics, cxCustomData,
  cxStyles, dxSkinsCore,  cxControls, cxDBPivotGrid, Provider, DBClient,Librerias, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, frxClass, frxDBSet, DataExport, DataToXLS, JvComponentBase,
  JvExMask, JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK,
  Data.FMTBcd, Data.SqlExpr, JvToolEdit, JvFormPlacement, JvLabel, JvDBControls,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frCoreClasses, System.ImageList, AdvSmoothButton;

type
  TFormVentasVsCobranza = class(TFormABMBase)
    JvGradient1: TJvGradient;
    lbl1: TLabel;
    edNombreCliente: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    udFechas: TUpDown;
    DSSaldos: TDataSource;
    TraerSaldos: TAction;
    CDSSaldos: TClientDataSet;
    DSPSaldos: TDataSetProvider;
    BuscarCliente: TAction;
    chbCliente: TCheckBox;
    dbgSaldos: TJvDBGrid;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    frSaldos: TfrxReport;
    Imprimir: TAction;
    frDSSaldos: TfrxDBDataset;
    btExcel: TBitBtn;
    ExportarXLS: TAction;
    SaveDialog: TSaveDialog;
    DataToXLS: TDataToXLS;
    CDSSaldosCODIGO: TStringField;
    CDSSaldosNOMBRE: TStringField;
    CDSSaldosANIO: TIntegerField;
    CDSSaldosMES: TIntegerField;
    ceCliente: TJvComboEdit;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QSaldos: TFDQuery;
    spGenerarValores: TFDStoredProc;
    CDSSaldosVENTAS: TFloatField;
    CDSSaldosCOBROS: TFloatField;
    CDSSaldosVENTAS_CTDO: TFloatField;
    CDSSaldosNOTAS_CREDITOS: TFloatField;
    CDSSaldosSALDO: TFloatField;
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure TraerSaldosExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure chbClienteClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure udFechasClick(Sender: TObject; Button: TUDBtnType);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbgSaldosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVentasVsCobranza: TFormVentasVsCobranza;

implementation

uses UBuscadorClientes, UDMain_FD;

{$R *.dfm}

procedure TFormVentasVsCobranza.BuscarClienteExecute(Sender: TObject);
BEGIN
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.Value;
          TraerSaldos.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
end;

procedure TFormVentasVsCobranza.BuscarExecute(Sender: TObject);
begin
 // inherited;
  TraerSaldos.Execute;
end;

procedure TFormVentasVsCobranza.ceClienteKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
          TraerSaldos.Execute;
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormVentasVsCobranza.chbClienteClick(Sender: TObject);
begin
  inherited;
  if (chbCliente.Checked=False) then
    begin
      ceCliente.Enabled       :=True;
      edNombreCliente.Enabled :=True;
      ceCliente.Color         :=clWhite;
      edNombreCliente.Color   :=clWhite;
    end
  else
    begin
      ceCliente.Enabled       :=False;
      edNombreCliente.Enabled :=False;
      ceCliente.Color         :=clBtnFace;
      edNombreCliente.Color   :=clBtnFace;
      ceCliente.Clear;
      edNombreCliente.Clear;
    end;
end;

procedure TFormVentasVsCobranza.dbgSaldosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  Campo: string;
begin
  try
    Campo := Field.FieldName;
    with dbgSaldos.DataSource.DataSet as TClientDataSet do
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

procedure TFormVentasVsCobranza.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormVentasVsCobranza.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSSaldos.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:=edNombreCliente.Text;
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
       if SaveDialog.FileName<>'' Then
          begin
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
  //ceCliente.SetFocus;
  //ceCliente.SelectAll;
end;

procedure TFormVentasVsCobranza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormVentasVsCobranza.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-6));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
end;

procedure TFormVentasVsCobranza.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVentasVsCobranza:=nil;
end;

procedure TFormVentasVsCobranza.FormShow(Sender: TObject);
begin
 // inherited;

end;

procedure TFormVentasVsCobranza.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frSaldos.PrintOptions.Printer:=PrNomListados;
  frSaldos.SelectPrinter;
  frSaldos.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtavsCobros.fr3');
  frSaldos.Variables['Cliente']:= ''''+edNombreCliente.Text+'''';
  frSaldos.Variables['Desde']  := ''''+DateToStr(Desde.Date)+'''';
  frSaldos.Variables['Hasta']  := ''''+DateToStr(Hasta.Date)+'''';
  frSaldos.ShowReport;
end;

procedure TFormVentasVsCobranza.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frSaldos.DesignReport;
end;

procedure TFormVentasVsCobranza.TraerSaldosExecute(Sender: TObject);
BEGIN
  if (Hasta.Date>=Desde.Date) Then
    begin
      spGenerarValores.Close;
      if chbCliente.Checked then
        spGenerarValores.ParamByName('cliente').Value:='******'
      else
        spGenerarValores.ParamByName('cliente').Value:=ceCliente.Text;

      spGenerarValores.ParamByName('desde').Value:=desde.Date;
      spGenerarValores.ParamByName('hasta').Value:=hasta.Date;
      spGenerarValores.ExecProc;
      spGenerarValores.Close;
      CDSSaldos.Close;
      CDSSaldos.Open;
    end;
end;

procedure TFormVentasVsCobranza.udFechasClick(Sender: TObject; Button: TUDBtnType);
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
  Desde.Date := IncMonth(Hasta.Date,(-6));
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.