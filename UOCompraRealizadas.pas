unit UOCompraRealizadas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,  ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, DBClient, Provider, Grids, DBGrids, Mask, Librerias,
  frxClass,  frxDBSet, ImgList, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask,
  JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,

   FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, dxSkinBasic,
  System.ImageList, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, System.Rtti, VCL.TMSFNCDataGridCell,
  VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase, VCL.TMSFNCDataGridCore,
  VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, VCL.TMSFNCCustomControl,
  VCL.TMSFNCDataGrid, frCoreClasses;

type
  TFormOCompraRealizadas = class(TFormABMBase)
    DSCompra: TDataSource;
    DSPOCompra: TDataSetProvider;
    CDSOCompra: TClientDataSet;
    Label1: TLabel;
    UpDown1: TUpDown;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frConsulta: TfrxReport;
    frDBDatos: TfrxDBDataset;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSOCompraID_OC: TIntegerField;
    CDSOCompraTIPOCPBTE: TStringField;
    CDSOCompraCLASECPBTE: TStringField;
    CDSOCompraNROCPBTE: TStringField;
    CDSOCompraCODIGO: TStringField;
    CDSOCompraNOMBRE: TStringField;
    CDSOCompraRAZONSOCIAL: TStringField;
    CDSOCompraESTADO: TStringField;
    QOCompra: TFDQuery;
    CDSOCompraTOTAL: TFloatField;
    CDSOCompraFECHA: TSQLTimeStampField;
    CDSOCompraFECHAAUTORIZACION: TSQLTimeStampField;
    CDSOCompraFECHACUMPLIDA: TSQLTimeStampField;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    chFiltro: TCheckBox;
    pnPie: TPanel;
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TMSFNCDataGrid1GetCellLayout(Sender: TObject;
      ACell: TTMSFNCDataGridCell);
    procedure chFiltroClick(Sender: TObject);
    procedure TMSFNCDataGrid1GetCellFormatting(Sender: TObject;
      ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
      var AFormatting: TTMSFNCDataGridDataFormatting;
      var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
    procedure TMSFNCDataGrid1CellDblClick(Sender: TObject; AColumn,
      ARow: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOCompraRealizadas: TFormOCompraRealizadas;

implementation

uses UOrdenCompra,UDMain_FD;
{$R *.DFM}

procedure TFormOCompraRealizadas.FormShow(Sender: TObject);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  Buscar.Execute;
end;

procedure TFormOCompraRealizadas.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFormOCompraRealizadas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOCompra.Close;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.IndexName:='';
  CDSOCompra.Params.ParamByName('desde').Value:=Desde.Date;
  CDSOCompra.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSOCompra.Open;

 // Centrar todos los encabezados
//  for i := 0 to fncGDetalle.ColumnCount - 1 do
//    fncGDetalle.Columns[i].  HorzAlignments[i, 0] := taCenter; // fila 0 = encabezado

 
  TMSFNCDataGrid1.Columns[0].Width:=40;
  TMSFNCDataGrid1.Columns[1].Width:=40;
  TMSFNCDataGrid1.Columns[2].Width:=100;
  TMSFNCDataGrid1.Columns[3].Width:=110;
  TMSFNCDataGrid1.Columns[4].Width:=110;
  TMSFNCDataGrid1.Columns[5].Width:=60;
  TMSFNCDataGrid1.Columns[6].Width:=220;
  TMSFNCDataGrid1.Columns[7].Width:=220;
  TMSFNCDataGrid1.Columns[8].Width:=90;
  TMSFNCDataGrid1.Columns[9].Width:=40;


end;

procedure TFormOCompraRealizadas.chFiltroClick(Sender: TObject);
begin
  inherited;
   TMSFNCDataGrid1.Options.Filtering.Enabled:=chFiltro.Checked;
  if Not(chFiltro.Checked) then
    begin
      TMSFNCDataGrid1.ClearFilter;
    end;
end;



procedure TFormOCompraRealizadas.TMSFNCDataGrid1CellDblClick(Sender: TObject;
  AColumn, ARow: Integer);
begin
  inherited;
  if Not(Assigned(FormOrdenCompra)) Then
    FormOrdenCompra:=TFormOrdenCompra.Create(Application);
  FormOrdenCompra.Modo:='N';
  FormOrdenCompra.lbModo.Caption:='En Modo de Pedido';
  FormOrdenCompra.DatoNew   :=CDSOCompraID_OC.AsString;
  FormOrdenCompra.TipoCpbte :='OC';
  FormOrdenCompra.Recuperar.Execute;
end;

procedure TFormOCompraRealizadas.TMSFNCDataGrid1GetCellFormatting(
  Sender: TObject; ACell: TTMSFNCDataGridCellCoord;
  AData: TTMSFNCDataGridCellValue;
  var AFormatting: TTMSFNCDataGridDataFormatting;
  var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
begin
  inherited;
  ACanFormat:=True;
  if (ACell.Column=8) and (ACell.Row>0) Then
    begin
      AFormatting.Format                := '#,##0.00';  // Format salary with commas and decimals
      AFormatting.&Type                 := gdftFloat;   // Set type to Float
      AConvertSettings.DecimalSeparator := '.';         // Use '.' as the decimal separator
      AConvertSettings.ThousandSeparator:= ',';
    end;
end;

procedure TFormOCompraRealizadas.TMSFNCDataGrid1GetCellLayout(Sender: TObject;
  ACell: TTMSFNCDataGridCell);
begin
  inherited;
  if ACell.Row = 0 then
    begin
      ACell.Layout.TextAlign  := gtaCenter;
      ACell.Layout.TextAlign  := gtaCenter;
      ACell.Layout.Fill.Color := gcMidnightblue;
      ACell.Layout.Font.Color := gcWhite;

    end;
  if (ACell.Row>0) and (ACell.Column=8) then
    begin
      ACell.Layout.TextAlign := gtaTrailing;
    end;

end;

procedure TFormOCompraRealizadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormOCompraRealizadas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormOCompraRealizadas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOCompraRealizadas:=Nil;
end;

procedure TFormOCompraRealizadas.FormResize(Sender: TObject);
begin
  inherited;
  if FormOCompraRealizadas<>Nil then
    begin
      if (FormOCompraRealizadas.Width>1070) or (FormOCompraRealizadas.Width<1070) then
        FormOCompraRealizadas.Width:=1070;
    end;
end;

procedure TFormOCompraRealizadas.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if PrListados<0 Then PrListados:=0;
  frConsulta.PrintOptions.Printer:=PrNomListados;
  frConsulta.SelectPrinter;
  frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoOCompra.fr3');
  frConsulta.ShowReport;
end;

procedure TFormOCompraRealizadas.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;




end.
