unit UNPedidoClientePendientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, DBClient, Provider, JvComponentBase,
  ImgList, JvExControls, JvGradient, Menus, frxClass, frxDBSet, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, DBXCommon, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.Buttons, CompBuscador,IniFiles, DataExport,
  DataToXLS, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormNPedidoClientePendientes = class(TFormABMBase)
    DSPendientesDetalles: TDataSource;
    VerNP: TAction;
    DSPPendientesDetalles: TDataSetProvider;
    CDSPendientesDetalles: TClientDataSet;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    CDSPendientesClientes: TClientDataSet;
    DSPPendientesClientes: TDataSetProvider;
    Panel2: TPanel;
    dbgResultados: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    dbgArticulosPorCliente: TDBGrid;
    dbgPendientesDetalles: TDBGrid;
    DSPendientesClientes: TDataSource;
    Splitter3: TSplitter;
    Panel5: TPanel;
    DSArticulosPorCliente: TDataSource;
    DSTotales: TDataSource;
    Splitter4: TSplitter;
    dbgTotales: TDBGrid;
    DBGrid3: TDBGrid;
    DSArticulosClientes: TDataSource;
    CDSTotales: TClientDataSet;
    DSPTotales: TDataSetProvider;
    AnularPedido: TAction;
    PopupMenu1: TPopupMenu;
    AnularPedido1: TMenuItem;
    frxReporte: TfrxReport;
    frxDBTotales: TfrxDBDataset;
    frxDBArticulosClientes: TfrxDBDataset;
    ImprimirPendientesClientes: TAction;
    PopupMenu2: TPopupMenu;
    ImprimirPendientesClientes1: TMenuItem;
    ImrimirPendienteDelCliente: TAction;
    frxDBPendientesDelCliente: TfrxDBDataset;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    ControlNP: TAction;
    CDSPendientesClientesID: TIntegerField;
    CDSPendientesClientesTIPOCPBTE: TStringField;
    CDSPendientesClientesCLASECPBTE: TStringField;
    CDSPendientesClientesNROCPBTE: TStringField;
    CDSPendientesClientesCODIGO: TStringField;
    CDSPendientesClientesLETRANP: TStringField;
    CDSPendientesClientesSUCNP: TStringField;
    CDSPendientesClientesNUMERONP: TStringField;
    CDSPendientesClientesNOMBRE: TStringField;
    CDSPendientesClientesRAZONSOCIAL: TStringField;
    CDSPendientesClientesDIRECCION: TStringField;
    CDSPendientesClientesCPOSTAL: TStringField;
    CDSPendientesClientesLOCALIDAD: TStringField;
    CDSPendientesClientesTIPOIVA: TIntegerField;
    CDSPendientesClientesCUIT: TStringField;
    CDSPendientesClientesLISTAPRECIO: TIntegerField;
    CDSPendientesClientesFECHAPEDIDO: TSQLTimeStampField;
    CDSPendientesClientesFECHAVTO: TSQLTimeStampField;
    CDSPendientesClientesCONDICIONVTA: TIntegerField;
    CDSPendientesClientesIMPRESO: TStringField;
    CDSPendientesClientesOBSERVACION1: TStringField;
    CDSPendientesClientesOBSERVACION2: TStringField;
    CDSPendientesClientesSUCURSAL: TIntegerField;
    CDSPendientesClientesZONA: TIntegerField;
    CDSPendientesClientesLDR: TIntegerField;
    CDSPendientesClientesDEPOSITO: TIntegerField;
    CDSPendientesClientesCALCULA_SOBRETASA: TStringField;
    CDSPendientesClientesDESGLOZAIVA: TStringField;
    CDSPendientesClientesVENDEDOR: TStringField;
    CDSPendientesClientesUSUARIO: TStringField;
    CDSPendientesClientesRENGLONES: TSmallintField;
    CDSPendientesClientesORIGEN_ID_NOTA_PEDIDO: TIntegerField;
    CDSPendientesClientesORIGEN_TIPOCPBTE: TStringField;
    CDSPendientesClientesORIGEN_NROCPBTE: TStringField;
    CDSPendientesClientesCOPIA: TSmallintField;
    CDSPendientesClientesENTREGA_ID_CPBTE: TIntegerField;
    CDSPendientesClientesENTREGA_TIPOCPBTE: TStringField;
    CDSPendientesClientesENTREGA_NROCPBTE: TStringField;
    CDSPendientesClientesESTADO: TStringField;
    CDSPendientesClientesPRESUPUESTO_ID: TIntegerField;
    CDSPendientesClientesPRESUPUESTO_NROCPBTE: TStringField;
    CDSPendientesDetallesID: TIntegerField;
    CDSPendientesDetallesID_CABNP: TIntegerField;
    CDSPendientesDetallesTIPOCPBTE: TStringField;
    CDSPendientesDetallesCLASECPBTE: TStringField;
    CDSPendientesDetallesNROCPBTE: TStringField;
    CDSPendientesDetallesFECHAPEDIOD: TSQLTimeStampField;
    CDSPendientesDetallesCODIGOARTICULO: TStringField;
    CDSPendientesDetallesDETALLE: TStringField;
    CDSPendientesDetallesUNIDAD: TStringField;
    CDSPendientesDetallesDESGLOZAIVA: TStringField;
    CDSPendientesDetallesMODO_GRAVAMEN: TStringField;
    CDSPendientesDetallesTIPOIVA_TASA: TIntegerField;
    CDSPendientesDetallesTIPOIVA_SOBRETASA: TIntegerField;
    CDSPendientesDetallesDEPOSITO: TIntegerField;
    CDSPendientesDetallesAFECTA_STOCK: TStringField;
    CDSPendientesDetallesCALCULA_SOBRETASA: TStringField;
    CDSPendientesDetallesGRAVADO_IB: TStringField;
    CDSPendientesDetallesID_MONEDA: TIntegerField;
    CDSArticulosPorCliente: TClientDataSet;
    DSPArticulosPorCliente: TDataSetProvider;
    QArticulosPorCliente: TFDQuery;
    CDSArticulosPorClienteCODIGOARTICULO: TStringField;
    CDSArticulosPorClienteDETALLE: TStringField;
    CDSArticulosPorClienteFALTANTE: TFloatField;
    CDSArticulosPorClientePEDIDA: TFloatField;
    CDSArticulosPorClienteENTREGADA: TFloatField;
    CDSArticulosPorClienteFECHA: TSQLTimeStampField;
    QTotales: TFDQuery;
    CDSTotalesCODIGOARTICULO: TStringField;
    CDSTotalesDETALLE: TStringField;
    CDSTotalesFALTANTE: TFloatField;
    spControlNP: TFDStoredProc;
    CDSArticulosClientes: TClientDataSet;
    DSPArticulosClientes: TDataSetProvider;
    QArticulosClientes: TFDQuery;
    CDSArticulosClientesCODIGO: TStringField;
    CDSArticulosClientesNOMBRE: TStringField;
    CDSArticulosClientesCANTIDAD_FALTANTE: TFloatField;
    CDSPendientesDetallesMUESTRACODALTER: TStringField;
    CDSArticulosPorClienteMUESTRACODALTER: TStringField;
    CDSTotalesMUESTRACODALTER: TStringField;
    CDSArticulosClientesMUESTRACODALTER: TStringField;
    chbCodAlter: TCheckBox;
    CDSArticulosClientesDETALLE_STK: TStringField;
    CDSArticulosClientesCODIGO_STK: TStringField;
    DataToXLS: TDataToXLS;
    N1: TMenuItem;
    ExportarExcel1: TMenuItem;
    SaveDialog: TSaveDialog;
    CDSTotalesCODIGO: TStringField;
    CDSTotalesNOMBRE: TStringField;
    CDSTotalesFECHAPEDIDO: TSQLTimeStampField;
    QPendientesClientes: TFDQuery;
    QPendientesDetalles: TFDQuery;
    CDSPendientesDetallesCANTIDAD_PEDIDIA: TFloatField;
    CDSPendientesDetallesCANTIDAD_ENTREGADA: TFloatField;
    CDSPendientesDetallesCANTIDAD_FALTANTE: TFloatField;
    CDSPendientesDetallesCANTIDAD_UNIDADES: TFloatField;
    spAnular: TFDStoredProc;
    Panel6: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    Label3: TLabel;
    Panel9: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VerNPExecute(Sender: TObject);
    procedure dbgResultadosTitleClick(Column: TColumn);
    procedure CDSPendientesClientesAfterScroll(DataSet: TDataSet);
    procedure dbgPendientesDetallesTitleClick(Column: TColumn);
    procedure dbgTotalesTitleClick(Column: TColumn);
    procedure CDSTotalesAfterScroll(DataSet: TDataSet);
    procedure AnularPedidoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImprimirPendientesClientesExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ImrimirPendienteDelClienteExecute(Sender: TObject);
    procedure ControlNPExecute(Sender: TObject);
    procedure CDSPendientesDetallesCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSArticulosPorClienteCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSTotalesCODIGOARTICULOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSArticulosClientesCODIGOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure chbCodAlterClick(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNPedidoClientePendientes: TFormNPedidoClientePendientes;

implementation

uses UNotaPedidoCliente, UAvisoProceso, UDMain_FD;

{$R *.DFM}

procedure TFormNPedidoClientePendientes.FormActivate(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormNPedidoClientePendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni  := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PedidosPendiente.ini');
  ArchivoIni.WriteBool('datos', 'codigoalter', chbCodAlter.Checked);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormNPedidoClientePendientes.AnularPedidoExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Está por Anular la Nota de Pedido, .... esta seguro?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      spAnular.Close;
      spAnular.ParamByName('ID').Value:=CDSPendientesClientesID.Value;
      spAnular.ExecProc;
      spAnular.Close;
      Buscar.Execute;
   end;
end;

procedure TFormNPedidoClientePendientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSTotales.Close;
  CDSTotales.Open;
  CDSPendientesDetalles.Close;
  CDSPendientesDetalles.Open;
  CDSArticulosPorCliente.Close;
  CDSArticulosPorCliente.Open;
  CDSPendientesClientes.Close;
  CDSPendientesClientes.Open;
end;

procedure TFormNPedidoClientePendientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNPedidoClientePendientes:=nil;
end;

procedure TFormNPedidoClientePendientes.ImprimirPendientesClientesExecute(
  Sender: TObject);
begin
  inherited;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoPendientesClientes.fr3');

  frxReporte.ShowReport;
end;

procedure TFormNPedidoClientePendientes.ImrimirPendienteDelClienteExecute(
  Sender: TObject);
begin
  inherited;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoPendientesDelClientes.fr3');
  frxReporte.Variables['Cliente']:=''''+CDSPendientesClientesNOMBRE.AsString+'''';

  frxReporte.ShowReport;
end;

procedure TFormNPedidoClientePendientes.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormNPedidoClientePendientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  ArchivoIni           := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PedidosPendiente.ini');
  chbCodAlter.Checked  := ArchivoIni.ReadBool('datos', 'codigoalter', False);
  ArchivoIni.Free;
  ControlNP.Execute;
  CDSPendientesClientes.Close;
  CDSPendientesClientes.Open;
end;

procedure TFormNPedidoClientePendientes.VerNPExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormNotaPedidoCliente)) Then
    FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(Application);
  FormNotaPedidoCliente.DatoNew  :=CDSPendientesClientesID.AsString;
  FormNotaPedidoCliente.TipoCpbte:=CDSPendientesClientesTIPOCPBTE.AsString;
  FormNotaPedidoCliente.Recuperar.Execute;
  FormNotaPedidoCliente.Show;
end;

procedure TFormNPedidoClientePendientes.CDSArticulosClientesCODIGOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if chbCodAlter.Checked then
    Text:=CDSArticulosClientesMUESTRACODALTER.AsString
  else
    Text:=CDSArticulosClientesCODIGO.AsString

end;

procedure TFormNPedidoClientePendientes.CDSArticulosPorClienteCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if chbCodAlter.Checked then
    Text:=CDSArticulosPorClienteMUESTRACODALTER.AsString
  else
    Text:=CDSArticulosPorClienteCODIGOARTICULO.AsString

end;

procedure TFormNPedidoClientePendientes.CDSPendientesClientesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSPendientesDetalles.Close;
  CDSPendientesDetalles.Params.ParamByName('id').Value:=CDSPendientesClientesID.Value;
  CDSPendientesDetalles.Open;
  CDSArticulosPorCliente.Close;
  CDSArticulosPorCliente.Params.ParamByName('codigo').Value:=CDSPendientesClientesCODIGO.Value;
  CDSArticulosPorCliente.Open;
  CDSTotales.Close;
  CDSTotales.Open;
end;

procedure TFormNPedidoClientePendientes.CDSPendientesDetallesCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if chbCodAlter.Checked then
    Text:=CDSPendientesDetallesMUESTRACODALTER.AsString
  else
    Text:=CDSPendientesDetallesCODIGOARTICULO.AsString


end;

procedure TFormNPedidoClientePendientes.CDSTotalesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSArticulosClientes.Close;
  CDSArticulosClientes.Params.ParamByName('codigo').AsString:=CDSTotalesCODIGOARTICULO.Value;
  CDSArticulosClientes.Open;
end;

procedure TFormNPedidoClientePendientes.CDSTotalesCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if chbCodAlter.Checked then
    Text:=CDSTotalesMUESTRACODALTER.AsString
  else
    Text:=CDSTotalesCODIGOARTICULO.AsString

end;

procedure TFormNPedidoClientePendientes.chbCodAlterClick(Sender: TObject);
begin
  inherited;
  dbgResultados.Refresh;
  dbgArticulosPorCliente.Refresh;
  dbgPendientesDetalles.Refresh;
  dbgTotales.Refresh;
  DBGrid3.Refresh;

end;

procedure TFormNPedidoClientePendientes.ControlNPExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if Not(Assigned(FormProceso)) then
      FormProceso:=TFormProceso.Create(Self);
    FormProceso.Mensaje:='Verificando pedidos antiguos.....';
    spControlNP.Close;
    spControlNP.ExecProc;
    spControlNP.Close;
    DMMain_FD.fdcGestion.Commit;
  except
     spControlNP.Close;
     ShowMessage('No se pudo verificar N.de Pedido');
     DMMain_FD.fdcGestion.Rollback;
  end;
 FormProceso.Close;
end;

procedure TFormNPedidoClientePendientes.dbgPendientesDetallesTitleClick(
  Column: TColumn);
var i:integer;
begin
  inherited;
For i:=0 to dbgPendientesDetalles.Columns.Count-1 do
    begin
       //dbgResutados.Columns[i].Title.Font.Style:=[];
       dbgPendientesDetalles.Columns[i].Title.Font.Color:=clYellow;
    end;
  //Column.Title.Font.Style:=[fsBold];
  Column.Title.Font.Color:=clAqua;
  CDSPendientesDetalles.IndexFieldNames:=Column.FieldName;
end;

procedure TFormNPedidoClientePendientes.dbgResultadosTitleClick(Column: TColumn);
var i:byte;
begin
  inherited;
 For i:=0 to dbgResultados.Columns.Count-1 do
    begin
       //dbgResutados.Columns[i].Title.Font.Style:=[];
       dbgResultados.Columns[i].Title.Font.Color:=clYellow;
    end;
  //Column.Title.Font.Style:=[fsBold];
  Column.Title.Font.Color:=clAqua;
  CDSPendientesClientes.IndexFieldNames:=Column.FieldName;
end;

procedure TFormNPedidoClientePendientes.dbgTotalesTitleClick(Column: TColumn);
var i:integer;
begin
  inherited;
For i:=0 to dbgTotales.Columns.Count-1 do
    begin
       //dbgResutados.Columns[i].Title.Font.Style:=[];
       dbgTotales.Columns[i].Title.Font.Color:=clYellow;
    end;
  //Column.Title.Font.Style:=[fsBold];
  Column.Title.Font.Color:=clAqua;
  CDSTotales.IndexName:=Column.FieldName;
end;

procedure TFormNPedidoClientePendientes.ExportarExcel1Click(Sender: TObject);
begin
  inherited;
  if SaveDialog.Execute then

  DataToXLS.SaveToFile(SaveDialog.FileName);
end;

end.