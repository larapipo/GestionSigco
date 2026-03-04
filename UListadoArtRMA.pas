unit UListadoArtRMA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, ToolWin, ExtCtrls, DBClient, Provider, Grids, DBGrids, DBCtrls, Mask, Menus,
  frxDBSet, frxClass, ImgList, JvComponentBase, JvExControls,  JvGradient, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, DBXCommon, JvExDBGrids, JvDBGrid, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit, DataExport, DataToXLS,ClipBrd,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.DB, Vcl.ComCtrls,
  Vcl.ActnList, Vcl.Buttons,VirtualUI_SDK,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormListadoRMA = class(TFormABMBase)
    DSStockRMA: TDataSource;
    DSProveedorRMA: TDataSource;
    DSPStockRMA: TDataSetProvider;
    DSPProveedorRMA: TDataSetProvider;
    CDSStockRMA: TClientDataSet;
    CDSProveedorRMA: TClientDataSet;
    CDSStockRMAID: TIntegerField;
    CDSStockRMACODIGOARTICULO: TStringField;
    CDSStockRMASERIE: TStringField;
    CDSStockRMAID_RTO_ENVIO: TIntegerField;
    CDSStockRMAPROVEEDOR: TStringField;
    CDSStockRMAESTADO: TStringField;
    CDSStockRMAMUESTRAARTICULO: TStringField;
    CDSProveedorRMAPROVEEDOR: TStringField;
    CDSProveedorRMAMUESTRAPROVEEDOR: TStringField;
    cbEstado: TComboBox;
    dbtSerie: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    CDSStockRMACOMPROB_RECPECION: TStringField;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Rechazar: TAction;
    Recibir: TAction;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frxReporte: TfrxReport;
    frDBDProveedores: TfrxDBDataset;
    frDBDStock: TfrxDBDataset;
    QProveedorRMA: TFDQuery;
    QProveedorRMAPROVEEDOR: TStringField;
    QProveedorRMAMUESTRAPROVEEDOR: TStringField;
    QStockRMA: TFDQuery;
    CDSStockRMAFECHA_ENVIO: TSQLTimeStampField;
    CDSStockRMAFECHA_RECEPCION: TSQLTimeStampField;
    CDSStockRMAMUESTRAPRECIO: TFloatField;
    spRechazar: TFDStoredProc;
    dbgProveedor: TJvDBGrid;
    dbgStock: TJvDBGrid;
    dbeSerie: TJvDBFindEdit;
    JvDBFindEdit1: TJvDBFindEdit;
    CDSStockRMANUMRTO: TStringField;
    JvDBFindEdit2: TJvDBFindEdit;
    BitBtn2: TBitBtn;
    ToolButton2: TToolButton;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    CopiarPortaPepeles: TAction;
    CopiarPortaPepeles1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RechazarExecute(Sender: TObject);
    procedure RecibirExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgProveedorTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgStockTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CDSProveedorRMAAfterScroll(DataSet: TDataSet);
    procedure CopiarPortaPepelesExecute(Sender: TObject);
  
  private
    { Private declarations }
  public
    procedure CopiarClipBoard(Grilla:TDBGrid);

    { Public declarations }
  end;

var
  FormListadoRMA: TFormListadoRMA;

implementation

uses URechazoRma, URMARecepcion, UDMain_FD;
{$R *.DFM}

procedure TFormListadoRMA.FormShow(Sender: TObject);
begin
  inherited;
  cbEstado.ItemIndex:=1;
  Buscar.Execute;
end;

procedure TFormListadoRMA.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSStockRMA.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='RMA';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

    end
  else
    ShowMessage('No hay datos para exportar');  
end;

procedure TFormListadoRMA.BuscarExecute(Sender: TObject);
var e:string;
begin
  inherited;
  CASE cbEstado.ItemIndex of
    0:e:='*';
    1:e:='P';
    2:e:='R';
    3:e:='E';
    4:e:='D';
   end;

   CDSProveedorRMA.Close;
   CDSProveedorRMA.Params.ParamByName('Estado').Value:=e;
   CDSProveedorRMA.Open;

   //CDSStockRMA.MasterSource:=nil;

   CDSStockRMA.Close;
   CDSStockRMA.Params.ParamByName('Estado').Value:=e;
   CDSStockRMA.Open;


end;

procedure TFormListadoRMA.CDSProveedorRMAAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSStockRMA.Close;
  CDSStockRMA.Params.ParamByName('proveedor').AsString:=CDSProveedorRMAPROVEEDOR.Value;
  CDSStockRMA.Open;
end;

procedure TFormListadoRMA.CopiarClipBoard(Grilla:TDBGrid);
var
  i_local,j_local: Integer;
  BookMark_local: TBookmark;
  s_local,Campo: string;
begin
  Grilla.DataSource.DataSet.DisableControls;  // evita parpadeo en la grilla
  try
    BookMark_local:= Grilla.DataSource.DataSet.Bookmark;  // guardar posición
    s_local:= '';

    campo:='';
    if (Grilla.Fields[2].DataType=ftFloat) or
       (Grilla.Fields[2].DataType=ftBCD) or
       (Grilla.Fields[2].DataType=ftFMTBcd) Then
      campo:= FormatFloat(',0.00', Grilla.Fields[2].AsFloat)
    else
      campo:= Grilla.Fields[2].AsString;

    s_local:= s_local +Campo;

  //  s_local:= s_local + #13 + #10;                  //CRLF

    ClipBoard.SetTextBuf(PChar(s_local));  // a portapapeles
    Grilla.DataSource.DataSet.Bookmark:= BookMark_local; // restaurar posición
  finally
    Grilla.DataSource.DataSet.EnableControls;
  end;

end;

procedure TFormListadoRMA.CopiarPortaPepelesExecute(Sender: TObject);
begin
  inherited;
 CopiarClipBoard(dbgStock);
end;

procedure TFormListadoRMA.dbgProveedorTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
  try
    Campo := Field.FieldName;
    with dbgProveedor.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoRMA.dbgStockTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var campo:String;
begin
  try
    Campo := Field.FieldName;
    with dbgStock.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoRMA.FormActivate(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSProveedorRMA.GetBookmark;
  Buscar.Execute;
  CDSProveedorRMA.GotoBookmark(p);
  CDSProveedorRMA.FreeBookmark(p);
end;

procedure TFormListadoRMA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSStockRMA.Close;
  CDSProveedorRMA.Close;
  Action:=caFree;
end;

procedure TFormListadoRMA.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRMA:=nil;
end;

procedure TFormListadoRMA.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormListadoRMA.RechazarExecute(Sender: TObject);
begin
  inherited;
  if cbEstado.ItemIndex=1 Then
    begin
      if Not(Assigned(FormRechazoRMA)) Then
        FormRechazoRMA:=TFormRechazoRMA.Create(Application);
      FormRechazoRMA.ShowModal;
      if FormRechazoRMA.ModalResult = mrOk Then
      //if (FormRechazoRMA.ModalResult= NroCpbte<>'') or (FormRechazoRMA.Fecha<>-1) Then
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        try
          spRechazar.Close;
          spRechazar.ParamByName('id').Value        := CDSStockRMAID.Value;
          spRechazar.ParamByName('Fecha').AsDateTime:= FormRechazoRMA.Fecha;
          spRechazar.ParamByName('cpbte').AsString  := FormRechazoRMA.NroCpbte;
          spRechazar.ExecProc;
          spRechazar.Close;
          DMMain_FD.fdcGestion.Commit;
        except
          spRechazar.Close;
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('Transaccion no finalizada....!');
        end;
        Buscar.Execute;
      end;
    end;
end;

procedure TFormListadoRMA.RecibirExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  if cbEstado.ItemIndex=1 Then
    begin
      if Not(Assigned(FormRMARecepcion)) Then
        FormRMARecepcion:=TFormRMARecepcion.Create(Application);
      FormRMARecepcion.Show;
      FormRMARecepcion.BringToFront;
      FormRMARecepcion.Agregar.Execute;
      FormRMARecepcion.CDSGtiaCabPROVEEDORSetText(FormRMARecepcion.CDSGtiaCabPROVEEDOR,CDSProveedorRMAPROVEEDOR.AsString);
      For i:=0 to dbgStock.SelectedRows.Count-1 do
        begin
          {$IF CompilerVersion < 24}
            dbgStock.DataSource.DataSet.GotoBookmark(Pointer(dbgStock.SelectedRows.Items[i]));
          {$ELSE}
            dbgStock.DataSource.DataSet.GotoBookmark((dbgStock.SelectedRows.Items[i]));
          {$ENDIF}
          FormRMARecepcion.CDSGtiaDet.Append;
          FormRMARecepcion.CDSGtiaDetCODIGOSetText(FormRMARecepcion.CDSGtiaDetCODIGO,CDSStockRMACODIGOARTICULO.Value);
          FormRMARecepcion.CDSGtiaDetCANTIDAD.AsFloat:=1;
          FormRMARecepcion.CDSGtiaDetID_ARTICULO_RMA.Value:=CDSStockRMAID.Value;
          FormRMARecepcion.CDSGtiaDet.Post;
        end;
    end;
end;

procedure TFormListadoRMA.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
   frxReporte.DesignReport;
end;

procedure TFormListadoRMA.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\RMA.fr3');

  frxReporte.ShowReport;
end;

end.