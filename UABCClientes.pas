unit UABCClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, ComCtrls, StdCtrls, Mask,   Grids,
  JvToolEdit, JvMaskEdit, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr,StrUtils,
  DataToXLS, JvExMask, JvExDBGrids, JvDBGrid, DBGrids, JvExControls, JvDBLookup,
  JvComponentBase, ImgList, ActnList, JvGradient, Buttons,
  ToolWin, ExtCtrls, Librerias, JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK,
  Datasnap.Provider, Datasnap.DBClient, frxClass, frxDBSet, DataExport,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons, System.ImageList, frCoreClasses;

type
  TFormABCClientes = class(TFormABMBase)
    DSVtaCliente: TDataSource;
    UpDown1: TUpDown;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    ToolButton1: TToolButton;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    frVtas: TfrxReport;
    frDBDSVtas: TfrxDBDataset;
    dbcGrupo: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcZona: TJvDBLookupCombo;
    dbgSaldos: TJvDBGrid;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel10: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    DSPersonal: TDataSource;
    DSZona: TDataSource;
    CDSZona: TClientDataSet;
    CDSZonaID_ZONA: TIntegerField;
    CDSZonaDETALLE: TStringField;
    DSPZona: TDataSetProvider;
    DSFiltroCab: TDataSource;
    DSFiltroDet: TDataSource;
    dbcCategorias: TJvDBLookupCombo;
    RxLabel14: TLabel;
    DSCategorias: TDataSource;
    DSPCategorias: TDataSetProvider;
    CDSCategorias: TClientDataSet;
    CDSCategoriasID: TIntegerField;
    CDSCategoriasDETALLE: TStringField;
    QVtaCliente: TFDQuery;
    QFiltroCab: TFDQuery;
    QFiltroDet: TFDQuery;
    QFiltroCabID: TIntegerField;
    QFiltroCabDETALLE: TStringField;
    QFiltroCabGRUPO: TSmallintField;
    QFiltroDetID: TIntegerField;
    QFiltroDetID_CAB: TIntegerField;
    QFiltroDetID_CPBTE: TIntegerField;
    QFiltroDetMUESTRACOMPROBANTE: TStringField;
    QFiltroDetMUESTRATIPO: TStringField;
    QFiltroDetMUESTRACLASE: TStringField;
    QFiltroDetMUESTRASUC: TStringField;
    QVtaClienteCODIGO: TStringField;
    QVtaClienteRAZONSOCIAL: TStringField;
    QVtaClienteNETO: TFMTBCDField;
    QVtaClienteTOTAL: TFMTBCDField;
    QVtaClientePORCENTAJE: TFloatField;
    pnCabecera: TPanel;
    Button1: TButton;
    QVtaClienteNOMBRE: TStringField;
    chFiltro: TAdvOfficeCheckBox;
    Panel2: TPanel;
    edNeto: TLabel;
    edTotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbEstadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chFiltroClick(Sender: TObject);
    procedure dbcGrupoChange(Sender: TObject);
    procedure dbgSaldosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSVtaCliente_oldCalcFields(DataSet: TDataSet);
    procedure dbgSaldosDblClick(Sender: TObject);
    procedure QVtaClienteCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalVtas,
    TotalNeto:Extended;

    Condiciones:String;
    procedure ArmarCondiciones;
  end;

var
  FormABCClientes: TFormABCClientes;

implementation

uses DMBuscadoresForm, UClientes_2,UDMain_FD,
  UFiltroComprobantesVenta;

{$R *.dfm}

procedure TFormABCClientes.ArmarCondiciones;
begin
  Condiciones:='';
  if Not(QFiltroDet.IsEmpty) then
  begin
    QFiltroDet.First;
    while not(QFiltroDet.Eof) do
      begin
        if Condiciones='' Then
          condiciones:=' where (v.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') '
        else
          condiciones:=Condiciones+' or (v.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') ';
        QFiltroDet.Next;
    end;
   // Condiciones:=' and ('+condiciones+')';
  end;
end;

procedure TFormABCClientes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frVtas.PrintOptions.Printer:=PrNomListados;
  frVtas.SelectPrinter;
  frVtas.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoABCClientes.fr3');
  frVtas.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
  frVtas.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';
  frVtas.Variables['Zona']    :=''''+dbcZona.Text+'''';
  frVtas.Variables['Desde']   :=''''+DateToStr(desde.Date)+'''';
  frVtas.Variables['Hasta']   :=''''+DateToStr(hasta.Date)+'''';
  // frCtaCte.PrepareReport;
  frVtas.ShowReport;
end;

procedure TFormABCClientes.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (QVtaCliente.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName:='ABCClientes';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormABCClientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  Condiciones:='';
  if chFiltro.Checked then
    ArmarCondiciones;

  QVtaCliente.Close;
  QVtaCliente.IndexDefs.Clear;
  QVtaCliente.IndexName:='';
  QVtaCliente.SQL.Text:='select v.Codigo,v.razonsocial,v.nombre,sum(v.Neto) as Neto, sum(v.total) as Total from ABC_CLIENTES_ID_COMPROBANTES(:desde,:hasta,:sucursal,:zona,:vendedor,:categoria) v '+
                              Condiciones+
                             ' group by v.codigo,v.razonsocial,v.nombre ';//+
                            // ' order by v.neto, v.total desc ';
  QVtaCliente.Params.ParamByName('desde').AsDate    :=Desde.Date;
  QVtaCliente.Params.ParamByName('hasta').AsDate    :=Hasta.Date;
  QVtaCliente.Params.ParamByName('sucursal').Value  :=dbcSucursal.KeyValue;
  QVtaCliente.Params.ParamByName('Vendedor').Value  :=dbcVendedor.KeyValue;
  QVtaCliente.Params.ParamByName('Zona').Value      :=dbcZona.KeyValue;
  QVtaCliente.Params.ParamByName('categoria').Value :=dbcCategorias.KeyValue;

  QVtaCliente.Open;
  TotalVtas:=0;
  TotalNeto:=0;
  QVtaCliente.First;
  QVtaCliente.DisableControls;
  while noT(QVtaCliente.Eof) do
    begin
      TotalVtas:=TotalVtas+QVtaClienteTOTAL.AsFloat;
      TotalNeto:=TotalNeto+QVtaClienteNETO.AsFloat;
      QVtaCliente.Next;
    end;
  QVtaCliente.EnableControls;
  QVtaCliente.Refresh;
  edTotal.Caption:=FormatFloat(',0.00',TotalVtas);
  edNeto.Caption :=FormatFloat(',0.00',TotalNeto);
  dbgSaldos.Width:=dbgSaldos.Width+1;
  dbgSaldos.Width:=dbgSaldos.Width-1;

end;

procedure TFormABCClientes.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
end;

procedure TFormABCClientes.CDSVtaCliente_oldCalcFields(DataSet: TDataSet);
begin
  inherited;
//  if TotalVtas>0 then
//  CDSVtaClientePORCENTAJE.Value:=StrToFloat(FORMATFLOAT('0.00',(CDSVtaClienteTOTAL.AsFloat/TotalVtas)*100));
end;

procedure TFormABCClientes.chFiltroClick(Sender: TObject);
begin
  inherited;
 if chFiltro.Checked=True then
    begin
      dbcGrupo.Color   := clWhite;
      dbcGrupo.Enabled := True;

    end
  else
  if chFiltro.Checked=False then
    begin
      dbcGrupo.Color   := clBtnFace;
      dbcGrupo.Enabled := False;
    end;
end;

procedure TFormABCClientes.dbcGrupoChange(Sender: TObject);
begin
  inherited;
  QFiltroDet.Close;
  QFiltroDet.ParamByName('id').Value:=dbcGrupo.KeyValue;
  QFiltroDet.Open;
end;

procedure TFormABCClientes.dbgSaldosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(self);
  FormClientes_2.DatoNew:=QVtaClienteCODIGO.Value;
  FormClientes_2.recuperar.Execute;
  FormClientes_2.BringToFront;
end;

procedure TFormABCClientes.dbgSaldosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  if QVtaCliente.IndexFieldNames=Field.FieldName Then
    QVtaCliente.IndexFieldNames:= Field.FieldName + ':D'
  else
    QVtaCliente.IndexFieldNames:= Field.FieldName;
end;

procedure TFormABCClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CDSZona.Close;
  CDSPersonal.Close;
  CDSSucursal.Close;
  CDSCategorias.Close;
  Action:=caFree;
end;

procedure TFormABCClientes.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSZona.Open;
  CDSPersonal.Open;
  CDSSucursal.Open;
  CDSCategorias.Open;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

  QFiltroCab.Open;
  QFiltroCab.First;
  edTotal.Caption:=FormatFloat(',0.00',0);
end;

procedure TFormABCClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormABCClientes:=nil;
end;

procedure TFormABCClientes.FormShow(Sender: TObject);
begin
  inherited;
  chFiltro.Checked := False;
  dbcGrupo.Color   := clBtnFace;
  dbcGrupo.Enabled := False;
end;

procedure TFormABCClientes.QVtaClienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TotalVtas>0 then
  QVtaClientePORCENTAJE.Value:=StrToFloat(FORMATFLOAT('0.00',(QVtaClienteTOTAL.AsFloat/TotalVtas)*100));

end;

procedure TFormABCClientes.sbEstadoClick(Sender: TObject);
begin
  inherited;
  frVtas.DesignReport;
end;

procedure TFormABCClientes.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frVtas.DesignReport;
end;

procedure TFormABCClientes.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
end;

end.