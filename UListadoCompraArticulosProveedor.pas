unit UListadoCompraArticulosProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, ComCtrls, JvToolEdit, StdCtrls, Mask, JvExMask,
  ActnList, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,Librerias, Provider,
  DBClient, JvMaskEdit, JvDBFindEdit, frxClass, frxDBSet, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB, JvLabel, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, dxBarBuiltInMenu,
  cxCustomPivotGrid, cxDBPivotGrid, cxCurrencyEdit, Vcl.Menus,VirtualUI_Sdk,StrUtils,cxExportPivotGridLink;

type
  TFormLisCompraArt_Proveedor = class(TFormABMBase)
    BuscarProveedor: TAction;
    pnCabecera: TPanel;
    RxLabel4: TJvLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    Desde: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    ud1: TUpDown;
    pnArticulosComprados: TPanel;
    dbgArticulos: TJvDBGrid;
    pnDetalles: TPanel;
    Splitter1: TSplitter;
    CDSArticulos: TClientDataSet;
    DSPArticulos: TDataSetProvider;
    CDSArticulosCODIGOARTICULO: TStringField;
    CDSArticulosDETALLE: TStringField;
    DSArticulos: TDataSource;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    CDSMovCODIGOARTICULO: TStringField;
    CDSMovDETALLE: TStringField;
    CDSMovUNITARIO_EXENTO: TFloatField;
    CDSMovUNITARIO_GRAVADO: TFloatField;
    CDSMovUNITARIO_TOTAL: TFloatField;
    DSMov: TDataSource;
    JvDBFindEdit1: TJvDBFindEdit;
    JvDBFindEdit2: TJvDBFindEdit;
    bt1: TBitBtn;
    ToolButton1: TToolButton;
    frxReporte: TfrxReport;
    frDBArt: TfrxDBDataset;
    frDBMov: TfrxDBDataset;
    Imprimir: TAction;
    CDSArticulosCOUNT: TIntegerField;
    CDSMovID_CABFAC: TIntegerField;
    CDSMovTIPOCPBTE: TStringField;
    CDSMovCLASECPBTE: TStringField;
    CDSMovNROCPBTE: TStringField;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    QProveedor: TFDQuery;
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    QProveedorRAZON_SOCIAL: TStringField;
    QProveedorN_DE_CUENTA: TStringField;
    QProveedorID_COD_POSTAL: TIntegerField;
    QProveedorCOD_POSTAL: TStringField;
    QProveedorLOCALIDAD: TStringField;
    QProveedorDIRECCION: TStringField;
    QProveedorTELEFONO_1: TStringField;
    QProveedorTELEFONO_2: TStringField;
    QProveedorCONDICION_IVA: TIntegerField;
    QProveedorN_DE_CUIT: TStringField;
    QProveedorACTIVO: TStringField;
    QMov: TFDQuery;
    CDSMovCANTIDAD: TFloatField;
    QArticulos: TFDQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    pnPie: TPanel;
    chConMov: TCheckBox;
    CDSMovFECHACOMPRA: TSQLTimeStampField;
    QMovGr: TFDQuery;
    DSMovGr: TDataSource;
    CDSMovGr: TClientDataSet;
    DSPMovGr: TDataSetProvider;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    CDSMovGrCODIGOARTICULO: TStringField;
    CDSMovGrDETALLE: TStringField;
    CDSMovGrDETALLE_1: TStringField;
    CDSMovGrCANTIDAD: TFloatField;
    CDSMovGrUNITARIO_EXENTO: TFloatField;
    CDSMovGrUNITARIO_GRAVADO: TFloatField;
    CDSMovGrUNITARIO_TOTAL: TFloatField;
    CDSMovGrFECHACOMPRA: TDateField;
    CDSMovGrMES: TSmallintField;
    CDSMovGrANIO: TSmallintField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    CDSMovGrMesNombre: TStringField;
    PopupMenu1: TPopupMenu;
    ExportaraExcel1: TMenuItem;
    SaveDialog: TSaveDialog;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSArticulosAfterScroll(DataSet: TDataSet);
    procedure dbgArticulosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgArticulosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pnDetallesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure cds1Click(Sender: TObject);
    procedure CDSMovGrMESGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovGrCalcFields(DataSet: TDataSet);
    procedure ExportaraExcel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLisCompraArt_Proveedor: TFormLisCompraArt_Proveedor;

implementation

uses UBuscadorProveedor, UCompra_2, UCompraCtdo_2,UDMAin_FD;

{$R *.dfm}

procedure TFormLisCompraArt_Proveedor.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSArticulos.Close;
  CDSArticulos.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSArticulos.Params.ParamByName('Desde').Value :=Desde.Date;
  CDSArticulos.Params.ParamByName('Hasta').Value :=Hasta.Date;
  CDSArticulos.Open;
  dbgArticulos.Width:=dbgArticulos.Width+1;
  dbgArticulos.Width:=dbgArticulos.Width-1;
end;

procedure TFormLisCompraArt_Proveedor.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''S'''; // Activos
   FormBuscadorProveedor.PopupMode:=pmAuto;
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorProveedor.Codigo;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value :=FormBuscadorProveedor.Codigo;
      QProveedor.Open;
      IF NOT (QProveedor.eof) THEN
        BEGIN
          edNombreCliente.Text := QProveedorNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
          Buscar.Execute;
        END;
    end;
end;

procedure TFormLisCompraArt_Proveedor.CDSArticulosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSMov.Close;
  CDSMov.Params.ParamByName('codigo').Value     :=ceCliente.Text;
  CDSMov.Params.ParamByName('codArticulo').Value:=CDSArticulosCODIGOARTICULO.Text;
  CDSMov.Params.ParamByName('desde').Value      := Desde.Date;
  CDSMov.Params.ParamByName('hasta').Value      := Hasta.Date;
  CDSMov.Open;

  CDSMovGr.Close;
  CDSMovGr.Params.ParamByName('codigo').Value     :=ceCliente.Text;
  CDSMovGr.Params.ParamByName('codArticulo').Value:=CDSArticulosCODIGOARTICULO.Text;
  CDSMovGr.Params.ParamByName('desde').Value      := Desde.Date;
  CDSMovGr.Params.ParamByName('hasta').Value      := Hasta.Date;
  CDSMovGr.Open;

  end;

procedure TFormLisCompraArt_Proveedor.CDSMovGrCalcFields(DataSet: TDataSet);
  // Mayuscula la 1ra letra/////
  Function jachStrProperCase(s : String) : String;
  Var
    i : Integer;
    up : Boolean;
  Begin
    result := '';
    up := True;
    for i := 1 to length(s) do
    Begin
      if up Then
        result := result + AnsiUpperCase(s[i])
      else
        result := Result + AnsiLowerCase(s[i]);
      up := s[i] = ' ';
      if up and (length(s) >= (i + 2)) and (s[i+2] = ' ') Then
        // En el caso especial de palabras de una letra, se dejan en minúscula!
        up := false;
    end;
  end;
begin
  inherited;
  CDSMovGrMesNombre.AsString := jachStrProperCase( FormatDateTime('MMMM', CDSMovGrFECHACOMPRA.AsDateTime));// 'Enero';
end;

procedure TFormLisCompraArt_Proveedor.CDSMovGrMESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
 // Text:= FormatDateTime('mmmm', CDSMovGrFECHACOMPRA.AsDateTime);// 'Enero';
end;

procedure TFormLisCompraArt_Proveedor.ceClienteKeyPress(Sender: TObject; var Key: Char);
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value := Dato;
      QProveedor.Open;
      IF NOT (QProveedor.eof) THEN
        edNombreCliente.Text := QProveedorNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;
end;
procedure TFormLisCompraArt_Proveedor.cds1Click(Sender: TObject);
begin
  inherited;
  CDSArticulos.Filtered:=False;
  CDSArticulos.Filter:= ' COUNT > 0';
  CDSArticulos.Filtered:=chConMov.Checked;
end;

procedure TFormLisCompraArt_Proveedor.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 if Not(CDSMov.IsEmpty) then
    begin
      if CDSMovTIPOCPBTE.Value='FC' then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Self);
          FormCompra_2.TipoCpbte:=CDSMovTIPOCPBTE.Value;
          FormCompra_2.DatoNew  :=CDSMovID_CABFAC.AsString;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
        if CDSMovTIPOCPBTE.Value='FO' then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
            FormCompraCtdo_2.TipoCpbte:=CDSMovTIPOCPBTE.Value;
            FormCompraCtdo_2.DatoNew  :=CDSMovID_CABFAC.AsString;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end;
     end;

end;

procedure TFormLisCompraArt_Proveedor.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var campo:String;
begin
  campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
  try
    campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
    with TcxGridDBTableView(sender).DataController.DataSource.DataSet  as TClientDataSet do
      begin
        DisableControls;
        if IndexFieldNames <> Campo then
          IndexFieldNames := Campo // Ascendente
        else
          begin
            AddIndex(Campo, Campo, [], Campo); // Descendente
            IndexName := Campo;
          end;
        EnableControls;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormLisCompraArt_Proveedor.cxGrid1DBTableView1MouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='Doble click en renglon abre la factura asociada...';
end;

procedure TFormLisCompraArt_Proveedor.dbgArticulosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
//  if CDSArticulosCOUNT.Value>0 Then
//    if (gdFocused in State) then
//      begin
 //       dbgArticulos.canvas.brush.color := clBlack;
 //     end
 //   else
//      begin
 //       dbgArticulos.canvas.brush.color := clWhite;
 //    end;
  dbgArticulos.Canvas.Font.Style:=[];
  dbgArticulos.Canvas.Font.Color:=clBlack;

  if (CDSArticulosCOUNT.Value>0) then
    begin
      dbgArticulos.Canvas.Font.Style:=[fsBold];
      dbgArticulos.Canvas.Font.Color:=clBlue;
    end;



    dbgArticulos.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormLisCompraArt_Proveedor.dbgArticulosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgArticulos.DataSource.DataSet as TClientDataSet do
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

procedure TFormLisCompraArt_Proveedor.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormLisCompraArt_Proveedor.ExportaraExcel1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSMovGr.IsEmpty) THEN
    BEGIN
      if PageControl1.ActivePageIndex=1 then
        begin
          cxDBPivotGrid1.OptionsView.DataFields     :=False;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
          cxDBPivotGrid1.OptionsView.RowFields      :=False;
          cxDBPivotGrid1.OptionsView.FilterFields   :=False;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
          SaveDialog.FileName:='Movimientos';
          SaveDialog.DefaultExt:='XLS';
          if VirtualUI.Active then
             SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          if SaveDialog.Execute Then
            begin
              if VirtualUI.Active then
               if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                 SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
              if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog.FileName);
            end;

          cxDBPivotGrid1.OptionsView.DataFields     :=True;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
          cxDBPivotGrid1.OptionsView.RowFields      :=True;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
        end
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormLisCompraArt_Proveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSArticulos.Close;
  CDSMov.Close;
end;

procedure TFormLisCompraArt_Proveedor.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormLisCompraArt_Proveedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLisCompraArt_Proveedor:=nil;
end;

procedure TFormLisCompraArt_Proveedor.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,1,1);
  Hasta.Date:=EncodeDate(y,12,DaysInMonth(y,12));
end;

procedure TFormLisCompraArt_Proveedor.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoArticulosProveedor.fr3');
  frxReporte.Variables['Desde']:=''''+DateToStr(Desde.Date)+'''';
  frxReporte.Variables['Hasta']:=''''+DateToStr(hasta.Date)+'''';
  frxReporte.Variables['Provee']:=''''+edNombreCliente.Text+'''';
  frxReporte.ShowReport;
end;

procedure TFormLisCompraArt_Proveedor.pnDetallesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormLisCompraArt_Proveedor.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;


procedure TFormLisCompraArt_Proveedor.ud1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);

  if Button=btnext Then
    begin
      Desde.Date:=IncMonth(Desde.Date,1);
      Hasta.Date:=IncMonth(Hasta.Date,1);
    end
  else
    if Button=btPrev Then
    begin
      Desde.Date:=IncMonth(Desde.Date,-1);
      Hasta.Date:=IncMonth(Hasta.Date,-1);
    end;

//  Desde.Date:=EncodeDate(y,m,1);
//  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
end;



end.
