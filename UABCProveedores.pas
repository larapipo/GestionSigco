unit UABCProveedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, AdvOfficeButtons, Vcl.StdCtrls,
  JvExControls, JvDBLookup, Vcl.Mask, JvExMask, JvToolEdit, Vcl.ComCtrls,
  JvLabel, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, JvDBControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  DateUtils, Datasnap.DBClient, Datasnap.Provider,VirtualUI_SDK, DataExport,
  DataToXLS, frxClass, frxDBSet,StrUtils, System.ImageList;

type
  TFormABCProveedores = class(TFormABMBase)
    Panel2: TPanel;
    edNeto: TLabel;
    edTotal: TLabel;
    dbgSaldos: TJvDBGrid;
    pnCabecera: TPanel;
    RxLabel2: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel14: TLabel;
    Label1: TLabel;
    UpDown1: TUpDown;
    Hasta: TJvDateEdit;
    dbcSucursal: TJvDBLookupCombo;
    dbcGrupo: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    dbcCategorias: TJvDBLookupCombo;
    Button1: TButton;
    chFiltro: TAdvOfficeCheckBox;
    QCompProvee: TFDQuery;
    DSCompProvee: TDataSource;
    DSFiltroCab: TDataSource;
    QFiltroDet: TFDQuery;
    QFiltroDetID: TIntegerField;
    QFiltroDetID_CAB: TIntegerField;
    QFiltroDetID_CPBTE: TIntegerField;
    QFiltroDetMUESTRACOMPROBANTE: TStringField;
    QFiltroDetMUESTRATIPO: TStringField;
    QFiltroDetMUESTRACLASE: TStringField;
    QFiltroDetMUESTRASUC: TStringField;
    DSFiltroDet: TDataSource;
    QFiltroCab: TFDQuery;
    QFiltroCabID: TIntegerField;
    QFiltroCabDETALLE: TStringField;
    QFiltroCabGRUPO: TSmallintField;
    QCompProveeCODIGO: TStringField;
    QCompProveeRAZONSOCIAL: TStringField;
    QCompProveeNOMBRE: TStringField;
    QCompProveeNETO: TFMTBCDField;
    QCompProveeTOTAL: TFMTBCDField;
    QCompProveePROCENTAJE: TFloatField;
    DSPCategorias: TDataSetProvider;
    DSCategorias: TDataSource;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSCategorias: TClientDataSet;
    CDSCategoriasID: TIntegerField;
    CDSCategoriasDETALLE: TStringField;
    BitBtn4: TBitBtn;
    SaveDialog: TSaveDialog;
    DataToXLS: TDataToXLS;
    frDBDSComp: TfrxDBDataset;
    frComp: TfrxReport;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    procedure Button1Click(Sender: TObject);
    procedure chFiltroClick(Sender: TObject);
    procedure dbcGrupoChange(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure QCompProveeCalcFields(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgSaldosDblClick(Sender: TObject);
    procedure dbgSaldosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    TotalVtas,
    TotalNeto:Extended;

    Condiciones:String;
    procedure ArmarCondiciones;
    { Public declarations }
  end;

var
  FormABCProveedores: TFormABCProveedores;

implementation

uses UDMain_FD,UFiltroComprobantesVenta,UProveedor_2,DMBuscadoresForm;
{$R *.dfm}

procedure TFormABCProveedores.ArmarCondiciones;
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

procedure TFormABCProveedores.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frComp.PrintOptions.Printer:=PrNomListados;
  frComp.SelectPrinter;
  frComp.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoABCProveedores.fr3');
  frComp.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
  frComp.Variables['Desde']   :=''''+DateToStr(desde.Date)+'''';
  frComp.Variables['Hasta']   :=''''+DateToStr(hasta.Date)+'''';
  // frCtaCte.PrepareReport;
  frComp.ShowReport;
end;

procedure TFormABCProveedores.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (QCompProvee.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName:='ABCProveedores';
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

procedure TFormABCProveedores.BuscarExecute(Sender: TObject);
begin
  inherited;
  Condiciones:='';
  if chFiltro.Checked then
    ArmarCondiciones;

  QCompProvee.Close;
  QCompProvee.IndexDefs.Clear;
  QCompProvee.IndexName:='';
  QCompProvee.SQL.Text:='select v.Codigo,v.razonsocial,v.nombre,sum(v.Neto) as Neto, sum(v.total) as Total from abc_proveedores_id_comprobantes(:desde,:hasta,:sucursal,:categoria) v '+
                              Condiciones+
                             ' group by v.codigo,v.razonsocial,v.nombre ';//+
                            // ' order by v.neto, v.total desc ';
  QCompProvee.Params.ParamByName('desde').AsDate    :=Desde.Date;
  QCompProvee.Params.ParamByName('hasta').AsDate    :=Hasta.Date;
  QCompProvee.Params.ParamByName('sucursal').Value  :=dbcSucursal.KeyValue;
  QCompProvee.Params.ParamByName('categoria').Value :=dbcCategorias.KeyValue;

  QCompProvee.Open;
  TotalVtas:=0;
  TotalNeto:=0;
  QCompProvee.First;
  QCompProvee.DisableControls;
  while noT(QCompProvee.Eof) do
    begin
      TotalVtas:=TotalVtas+QCompProveeTOTAL.AsFloat;
      TotalNeto:=TotalNeto+QCompProveeNETO.AsFloat;
      QCompProvee.Next;
    end;
  QCompProvee.EnableControls;
  QCompProvee.Refresh;
  edTotal.Caption:=FormatFloat(',0.00',TotalVtas);
  edNeto.Caption :=FormatFloat(',0.00',TotalNeto);
  QCompProvee.IndexFieldNames:='PROCENTAJE';
  dbgSaldos.Width:=dbgSaldos.Width+1;
  dbgSaldos.Width:=dbgSaldos.Width-1;

end;

procedure TFormABCProveedores.Button1Click(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
end;

procedure TFormABCProveedores.chFiltroClick(Sender: TObject);
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

procedure TFormABCProveedores.dbcGrupoChange(Sender: TObject);
begin
  inherited;
  QFiltroDet.Close;
  QFiltroDet.ParamByName('id').Value:=dbcGrupo.KeyValue;
  QFiltroDet.Open;
end;

procedure TFormABCProveedores.dbgSaldosDblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormProveedor_2)) then
    FormProveedor_2:=TFormProveedor_2.Create(self);
  FormProveedor_2.DatoNew:=QCompProveeCODIGO.Value;
  FormProveedor_2.recuperar.Execute;
  FormProveedor_2.BringToFront;
end;

procedure TFormABCProveedores.dbgSaldosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  if QCompProvee.IndexFieldNames=Field.FieldName Then
    QCompProvee.IndexFieldNames:= Field.FieldName + ':D'
  else
    QCompProvee.IndexFieldNames:= Field.FieldName;
end;

procedure TFormABCProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSucursal.Close;
  CDSCategorias.Close;
  Action:=caFree;
end;

procedure TFormABCProveedores.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSSucursal.Open;
  CDSCategorias.Open;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;

  QFiltroCab.Open;
  QFiltroCab.First;
  edTotal.Caption:=FormatFloat(',0.00',0);
end;

procedure TFormABCProveedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormABCProveedores:=nil;
end;

procedure TFormABCProveedores.FormShow(Sender: TObject);
begin
  inherited;
  chFiltro.Checked := False;
  dbcGrupo.Color   := clBtnFace;
  dbcGrupo.Enabled := False;
end;

procedure TFormABCProveedores.QCompProveeCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TotalVtas>0 then
  QCompProveePROCENTAJE.Value:=StrToFloat(FORMATFLOAT('0.00',(QCompProveeTOTAL.AsFloat/TotalVtas)*100));
end;

procedure TFormABCProveedores.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frComp.DesignReport;
end;

procedure TFormABCProveedores.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

end;

end.
