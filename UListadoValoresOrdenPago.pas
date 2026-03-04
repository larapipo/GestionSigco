unit UListadoValoresOrdenPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Mask, JvExMask, JvToolEdit,System.DateUtils, AdvOfficeButtons;

type
  TFormListadoValoresOPago = class(TFormABMBase)
    pnCabecera: TPanel;
    dbgMovimientosOP: TDBAdvGrid;
    pnPie: TPanel;
    QMovimientos: TFDQuery;
    DSPMovimientos: TDataSetProvider;
    CDSMovimientos: TClientDataSet;
    DSMovimientos: TDataSource;
    Label2: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label3: TLabel;
    UpDown1: TUpDown;
    CDSMovimientosID_MOV_CAJA: TIntegerField;
    CDSMovimientosID_CAJA: TIntegerField;
    CDSMovimientosID_COMPROBANTE: TIntegerField;
    CDSMovimientosFECHA_OPERACION: TSQLTimeStampField;
    CDSMovimientosTIPO_COMPROB: TStringField;
    CDSMovimientosCLASE_COMPROB: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosID_TPAGO: TIntegerField;
    CDSMovimientosID_FPAGO: TIntegerField;
    CDSMovimientosDESCRIPCION: TStringField;
    CDSMovimientosDEBE: TFloatField;
    CDSMovimientosHABER: TFloatField;
    CDSMovimientosNUMERO: TIntegerField;
    CDSMovimientosFECHAPAGO: TSQLTimeStampField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosBANCO: TStringField;
    CDSMovimientosIMPORTE_COMPROBANTE: TFloatField;
    Label1: TLabel;
    chOrden: TAdvOfficeCheckBox;
    chGrupo: TAdvOfficeCheckBox;
    CDSMovimientosRAZON_SOCIAL: TStringField;
    btExcel: TBitBtn;
    SaveDialog1: TSaveDialog;
    pagMovimientos: TPageControl;
    pagOrdenDepago: TTabSheet;
    pagRecibos: TTabSheet;
    dbgMovimientosRC: TDBAdvGrid;
    QMovRecibos: TFDQuery;
    DSPMovRecibos: TDataSetProvider;
    CDSMovRecibos: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField4: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField6: TStringField;
    IntegerField6: TIntegerField;
    StringField7: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DSMovRecibos: TDataSource;
    CDSMovRecibosHABER: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure chOrdenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure chGrupoClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure dbgMovimientosOPClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure dbgMovimientosOPGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure dbgMovimientosRCClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure dbgMovimientosRCGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure dbgMovimientosRCGetFloatFormat(Sender: TObject; ACol,
      ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoValoresOPago: TFormListadoValoresOPago;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormListadoValoresOPago.chGrupoClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;

  dbgMovimientosOP.UnGroup;
  if chGrupo.Checked then
    begin
      dbgMovimientosOP.InsertCols(0,1);
      dbgMovimientosOP.ColWidths[0] :=20;
      dbgMovimientosOP.GroupColumn  :=1;
    end
  else
    dbgMovimientosOP.RemoveCols(0,1);

  For i:= 1 to dbgMovimientosOP.ColCount - 1 do
    dbgMovimientosOP.AutoSizeCol(i,10);

  //dbgMovimientos.ColAlignments[6]:=taRightJustify

  dbgMovimientosRC.UnGroup;
  if chGrupo.Checked then
    begin
      dbgMovimientosRC.InsertCols(0,1);
      dbgMovimientosRC.ColWidths[0] :=20;
      dbgMovimientosRC.GroupColumn  :=1;
    end
  else
    dbgMovimientosRC.RemoveCols(0,1);

  For i:= 1 to dbgMovimientosRC.ColCount - 1 do
    dbgMovimientosRC.AutoSizeCol(i,10);
end;

procedure TFormListadoValoresOPago.btExcelClick(Sender: TObject);
begin
  inherited;
  if pagMovimientos.ActivePageIndex=0 then
    begin
      if Not(dbgMovimientosOP.DataSource.DataSet.IsEmpty) then
        if SaveDialog1.Execute then
          if SaveDialog1.FileName<>'' then
            dbgMovimientosOP.SaveToXLS(SaveDialog1.FileName+'.xls');
    end
  else
    if pagMovimientos.ActivePageIndex=1 then
      begin
        if Not(dbgMovimientosRC.DataSource.DataSet.IsEmpty) then
          if SaveDialog1.Execute then
            if SaveDialog1.FileName<>'' then
              dbgMovimientosRC.SaveToXLS(SaveDialog1.FileName+'.xls');
      end

end;

procedure TFormListadoValoresOPago.BuscarExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  CDSMovimientos.Close;
  CDSMovimientos.Params.ParamByName('desde').AsDateTime:=desde.Date;
  CDSMovimientos.Params.ParamByName('hasta').AsDateTime:=hasta.Date;
  CDSMovimientos.Open;

  For i:= 0 to dbgMovimientosOP.ColCount - 1 do
    dbgMovimientosOP.AutoSizeCol(i,10);

  dbgMovimientosOP.ColAlignments[6]:=taRightJustify;
 ///////////////////////////////////////////////////////////////////
  CDSMovRecibos.Close;
  CDSMovRecibos.Params.ParamByName('desde').AsDateTime:=desde.Date;
  CDSMovRecibos.Params.ParamByName('hasta').AsDateTime:=hasta.Date;
  CDSMovRecibos.Open;

  For i:= 0 to dbgMovimientosRC.ColCount - 1 do
    dbgMovimientosRC.AutoSizeCol(i,10);

  dbgMovimientosRC.ColAlignments[6]:=taRightJustify;
  dbgMovimientosRC.FloatingFooter.ColumnCalc[6] := acSUM;
 // dbgMovimientosRC.ColAlignments[10]:=taRightJustify;
 // dbgMovimientosRC.FloatingFooter.ColumnCalc[10] := acSUM;

end;

procedure TFormListadoValoresOPago.chOrdenClick(Sender: TObject);
begin
  inherited;
  dbgMovimientosOP.PageMode          := Not(chOrden.Checked);
  dbgMovimientosOP.SortSettings.Show := chOrden.Checked;

  dbgMovimientosRC.PageMode          := Not(chOrden.Checked);
  dbgMovimientosRC.SortSettings.Show := chOrden.Checked;


  if Not(chOrden.Checked) then
    begin
      CDSMovimientos.Refresh;
      CDSMovRecibos.Refresh;
    end;

end;

procedure TFormListadoValoresOPago.dbgMovimientosOPClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
  inherited;
  if ARow=0 then
    begin
      dbgMovimientosOP.ColAlignments[acol]:=taRightJustify;
    end;
end;

procedure TFormListadoValoresOPago.dbgMovimientosOPGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  inherited;
  if ARow=0 then
    HAlign:=taCenter;
end;

procedure TFormListadoValoresOPago.dbgMovimientosRCClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
  inherited;
  if ARow=0 then
    begin
      dbgMovimientosRC.ColAlignments[acol]:=taRightJustify;
    end;
end;

procedure TFormListadoValoresOPago.dbgMovimientosRCGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  inherited;
  if ARow=0 then
    HAlign:=taCenter;
end;

procedure TFormListadoValoresOPago.dbgMovimientosRCGetFloatFormat(
  Sender: TObject; ACol, ARow: Integer; var IsFloat: Boolean;
  var FloatFormat: string);
begin
  inherited;
//  if ACol=10 then
//    FloatFormat:='%.2n';
  if ACol=6 then
    FloatFormat:='%.2n';

end;

procedure TFormListadoValoresOPago.desdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoValoresOPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;

end;

procedure TFormListadoValoresOPago.FormCreate(Sender: TObject);
var
  d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := EncodeDate(y,m,1);// I ncMonth(Hasta.Date,-1);
  pagMovimientos.ActivePageIndex:=0;
  Buscar.Execute;

end;

procedure TFormListadoValoresOPago.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoValoresOPago:=nil;
end;

procedure TFormListadoValoresOPago.hastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoValoresOPago.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(desde.Date));
  Buscar.Execute;
end;

end.
