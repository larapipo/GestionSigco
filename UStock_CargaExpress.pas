unit UStock_CargaExpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBGrids, frxClass, frxDBSet,
  Datasnap.Provider, Datasnap.DBClient,IniFiles, DataExport, DataToXLS,
  DBAdvGrid, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, JvDBLookup,
  frCoreClasses, AdvSmoothButton, AdvOfficeButtons;

type
  TFormStock_Express = class(TFormABMBase)
    Panel2: TPanel;
    Panel3: TPanel;
    mtStock: TFDMemTable;
    mtStockDETALLE: TStringField;
    mtStockPRECIO_COMRA: TFloatField;
    mtStockPRECIO_VTA: TFloatField;
    mtStockCANTIDAD: TFloatField;
    mtStockCODIGO: TStringField;
    DSStock: TDataSource;
    BitBtn1: TBitBtn;
    spAltaStock: TFDStoredProc;
    AltaStock: TAction;
    Etiquetas: TfrxDBDataset;
    edEtiqueta1: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    frxReporte: TfrxReport;
    Imprimir: TAction;
    DSListaArt: TDataSource;
    CDSListaArt: TClientDataSet;
    DSPListaArt: TDataSetProvider;
    QListArt: TFDQuery;
    BitBtn3: TBitBtn;
    Button1: TButton;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    dbgStock: TDBAdvGrid;
    QSubRub: TFDQuery;
    DSPSubRub: TDataSetProvider;
    CDSSubRub: TClientDataSet;
    CDSSubRubCODIGO_SUBRUBRO: TStringField;
    CDSSubRubDETALLE_SUBRUBRO: TStringField;
    CDSSubRubCODIGO_RUBRO: TStringField;
    CDSSubRubMUESTRARUBRO: TStringField;
    DSSubRub: TDataSource;
    sBuscar: TDBAdvSearchEdit;
    Label1: TLabel;
    mtStockPRECIO_VTA2: TFloatField;
    spActualiza: TFDStoredProc;
    Label4: TLabel;
    dbcListas: TJvDBLookupCombo;
    QLista: TFDQuery;
    QListaID: TIntegerField;
    QListaNOMBRE: TStringField;
    DSLista: TDataSource;
    CDSListaArtID: TIntegerField;
    CDSListaArtID_CAB: TIntegerField;
    CDSListaArtRUBRO: TStringField;
    CDSListaArtSUBRUBRO: TStringField;
    CDSListaArtCODIGOARTICULO: TStringField;
    CDSListaArtCOSTO_GRAVADO: TFloatField;
    CDSListaArtCOSTO_EXENTO: TFloatField;
    CDSListaArtCOSTO_TOTAL: TFloatField;
    CDSListaArtIVA_TASA: TFloatField;
    CDSListaArtRECARGO: TFloatField;
    CDSListaArtPRECIO_GRAVADO: TFloatField;
    CDSListaArtIVA_IMPORTE: TFloatField;
    CDSListaArtPRECIO_EXENTO: TFloatField;
    CDSListaArtPRECIO: TFloatField;
    CDSListaArtDESCUENTO: TFloatField;
    CDSListaArtREC_APLICAR: TFloatField;
    CDSListaArtFECHA: TSQLTimeStampField;
    CDSListaArtMUESTRALISTA: TStringField;
    CDSListaArtMUESTRAFECHA: TSQLTimeStampField;
    CDSListaArtMUESTRAPORDEFECTO: TStringField;
    CDSListaArtHAYSUBDET: TIntegerField;
    CDSListaArtMUESTRADETALLESTOCK: TStringField;
    CDSListaArtMUESTRACODIGOBARRA: TStringField;
    CDSListaArtPRECIO_2: TFloatField;
    CDSListaArtCODIGOALTERNATIVO: TStringField;
    mtStockCODIGO_EAN: TStringField;
    chbCostoConIva: TAdvOfficeCheckBox;
    dbcDepositos: TJvDBLookupCombo;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSDeposito: TDataSource;
    QDeposito: TFDQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QDepositoACTIVO: TStringField;
    mtStockPRECIO_GRAVADO: TFloatField;
    mtStockPRECIO_GRAVADO_2: TFloatField;
    CDSListaArtPRECIO_GRAVADO_2: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AltaStockExecute(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure mtStockNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBAdvGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure mtStockBeforePost(DataSet: TDataSet);
    procedure dbgStockDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgStockMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sBuscarSelect(Sender: TObject);
    procedure sBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure mtStockPRECIO_VTASetText(Sender: TField; const Text: string);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStock_Express: TFormStock_Express;

implementation

{$R *.dfm}
uses UDMain_FD,UStock_2;


procedure TFormStock_Express.AltaStockExecute(Sender: TObject);
var Codigo:String;
begin
  inherited;
  mtStock.First;
  while Not(mtStock.Eof) do
    begin
      if (Trim(mtStockCODIGO.Value)='*') and (Trim(mtStockDETALLE.AsString)<>'') then
        BEGIN
          DMMain_FD.fdcGestion.StartTransaction;
            TRY
              Codigo:='*';
              spAltaStock.Close;
              spAltaStock.ParamByName('DETALLE').AsString           := UpperCase(Trim(mtStockDETALLE.AsString));
              spAltaStock.ParamByName('DETALLE_ADICIONAL').AsString := UpperCase(Trim(mtStockDETALLE.AsString));
              spAltaStock.ParamByName('COSTO').AsFloat              := mtStockPRECIO_COMRA.AsFloat;
              spAltaStock.ParamByName('PRECIOVTA').AsFloat          := mtStockPRECIO_VTA.AsFloat;
              spAltaStock.ParamByName('CANTIDAD').AsFloat           := mtStockCANTIDAD.AsFloat;
              spAltaStock.ParamByName('CODIGOBARRA').AsString       := mtStockCODIGO_EAN.AsString;
              if chbCostoConIva.Checked then
                spAltaStock.ParamByName('COSTO_CON_IVA').AsString     := 'S'
              else
                spAltaStock.ParamByName('COSTO_CON_IVA').AsString     := 'N';


              if sBuscar.Text<>'' then
                spAltaStock.ParamByName('SUBRUB').AsString            := CDSSubRubCODIGO_SUBRUBRO.Value
              else
                spAltaStock.ParamByName('SUBRUB').AsString            := '*****';

              if dbcDepositos.KeyValue>0 then
                spAltaStock.ParamByName('DEPOSITO').AsInteger           := dbcDepositos.KeyValue
              else
                spAltaStock.ParamByName('DEPOSITO').AsInteger           := DMMain_FD.DepositoPorSucursal(-1);

              spAltaStock.ExecProc;

              DMMain_FD.fdcGestion.Commit;
              Codigo := spAltaStock.ParamByName('codigo_out').AsString;
              spAltaStock.Close;
            except
              Codigo:='*';
              DMMain_FD.fdcGestion.Rollback;
            END;
          mtStock.Edit;
          mtStockCODIGO.Value:=Codigo;
        END;

        if Trim(Codigo)<>'*' then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
              try
                spActualiza.Close;
                spActualiza.ParamByName('codigo').AsString  := Codigo;
                spActualiza.ParamByName('preciovta').Value  := mtStockPRECIO_VTA2.Value;
                spActualiza.ParamByName('lista').Value      := dbcListas.KeyValue;//   StrToInt(Edit1.Text);
                spActualiza.ExecProc;
                DMMain_FD.fdcGestion.Commit;
                DMMain_FD.LogFileFD(0,2,'Actualizacion Vta Cambio Express >>Lista de Precios: '+dbcListas.Text+
                                   ' >>Fecha: '+DateToStr(Date)+
                                   ' >>Actualiza Lista: '+ IntToStr(dbcListas.KeyValue),
                                   ' ACTCOSVTA');

                spActualiza.Close;
              except
                DMMain_FD.fdcGestion.rollback;
                spActualiza.Close;
              end;
          end;

      mtStock.Next;
    end;
  spAltaStock.Close;
end;

procedure TFormStock_Express.BorrarExecute(Sender: TObject);
begin
 // inherited;
  mtStock.Close;
  mtStock.Open;
  mtStock.EmptyDataSet;
end;

procedure TFormStock_Express.Button1Click(Sender: TObject);
begin
  inherited;
 if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
       begin
        DataToXLS1.SaveToFile(SaveDialog1.FileName)

       end;
end;

procedure TFormStock_Express.dbgStockDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  inherited;
  if (ACol=7) and (mtStockCODIGO.AsString<>'*') and (mtStockCODIGO.AsString<>'') then
    begin
      if Not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(self);
       formStock_2.DatoNew:=mtStockCODIGO.Value;
       FormStock_2.Recuperar.Execute;
       FormStock_2.Show;
    end
  else
    if (mtStockCODIGO.AsString<>'*') and (mtStockCODIGO.AsString<>'') then
      begin
        Imprimir.Execute;
      end;
end;

procedure TFormStock_Express.DBAdvGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //if Key=#13 then
//    BEGIN
//      if DBAdvGrid1.Col<3 then
//        DBAdvGrid1.GotoCell(DBAdvGrid1.Col+1,dbAdvGrid1.Row)
//      else
//        begin
//          DBAdvGrid1.DataSource.DataSet.Append;
//          DBAdvGrid1.GotoCell(0,dbAdvGrid1.Row)
//        end;
//    END;
end;



procedure TFormStock_Express.dbgStockMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var Mensaje:string;
begin
  inherited;
  if X<995 then
    Mensaje:= 'Dbl+Cick = Imprime Etiqueta'
  else
    Mensaje:= 'Dbl+Click = Ficha de Arti.';

    sbEstado.SimpleText:=mensaje;
end;

procedure TFormStock_Express.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 //*************************************************************
  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Stock_Express.ini');
  ArchivoIni.WriteString('Stock', 'Etiqueta', edEtiqueta1.Text );
  ArchivoIni.WriteInteger('Stock', 'Lista', dbcListas.KeyValue );
  ArchivoIni.WriteInteger('Stock', 'Deposito', dbcDepositos.KeyValue );

  if sBuscar.Text<>'' then
    ArchivoIni.WriteString('Stock', 'SubRubro', sBuscar.ListSource.DataSet.FieldByName('CODIGO_SUBRUBRO').AsString)
  else
    ArchivoIni.WriteString('Stock', 'SubRubro', '');


  ArchivoIni.Free;
  //*************************************************************
  QListArt.Close;
  CDSSubRub.Close;

  Action:=caFree;
end;

procedure TFormStock_Express.FormCreate(Sender: TObject);
var sub:String;
begin
  inherited;
  AutoSize:=False;
  QLista.Close;
  QLista.Open;

  CDSDepositos.Close;
  CDSDepositos.Open;

  //Archivo Ini de Stock
  //*************************************************************

  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Stock_Express.ini');
  edEtiqueta1.Text          := ArchivoIni.ReadString('Stock', 'Etiqueta', '' );
  dbcListas.KeyValue        := ArchivoIni.ReadInteger('Stock', 'Lista', -1 );
  dbcDepositos.KeyValue     := ArchivoIni.ReadInteger('Stock', 'Deposito', -1 );
  sub                       := ArchivoIni.ReadString('Stock', 'SubRubro', '');

  ArchivoIni.Free;

  //*************************************************************

  //  dbcListas.KeyValue :=DMMain_FD.ListaPorDefecto(-1);

  mtStock.Close;
  mtStock.Open;
  CDSSubRub.Close;
  CDSSubRub.Open;
  if CDSSubRub.Locate('codigo_subrubro',sub,[]) Then
    sBuscar.Text:=CDSSubRubDETALLE_SUBRUBRO.AsString;

end;

procedure TFormStock_Express.FormDestroy(Sender: TObject);
begin
  inherited;
  FormStock_Express:=nil;
end;

procedure TFormStock_Express.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if not(ActiveControl is TDBGrid) and
     not(ActiveControl is TDBAdvGrid)  then
   inherited;

end;

procedure TFormStock_Express.FormResize(Sender: TObject);
begin
  inherited;
  if FormStock_Express<>nil then
    if FormStock_Express.Width<>1358 then
     FormStock_Express.Width:=1358;

end;

procedure TFormStock_Express.FormShow(Sender: TObject);
begin
  inherited;
  dbgStock.SetFocus;
  if FormStock_Express<>nil then
    if FormStock_Express.Width<>1358 then
      FormStock_Express.Width:=1358;
end;

procedure TFormStock_Express.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if (mtStockCODIGO.AsString<>'*') and (mtStockCODIGO.AsString<>'') then
    begin
      CDSListaArt.Close;
      CDSListaArt.Params.ParamByName('codigo').Value   := mtStockCODIGO.AsString;
      CDSListaArt.Params.ParamByName('id_lista').Value := dbcListas.KeyValue;
      CDSListaArt.Open;
      frxReporte.PrintOptions.Printer:=PrNomListados;
      frxReporte.SelectPrinter;
      frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edEtiqueta1.Text);
      frxReporte.PrintOptions.Copies := Trunc(mtStockCANTIDAD.ASFloat);
      frxReporte.PrepareReport;
      frxReporte.PrintOptions.ShowDialog:=true;
      frxReporte.ShowReport;
    end;
  CDSListaArt.Close;
end;

procedure TFormStock_Express.mtStockBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (mtStock.State in [dsInsert,dsEdit]) and (Trim(mtStockDETALLE.AsString)='') then
    mtStock.Cancel;
end;

procedure TFormStock_Express.mtStockNewRecord(DataSet: TDataSet);
begin
  inherited;
  mtStockCODIGO.Value       := '*';
  mtStockCANTIDAD.Value     := 1;
  mtStockPRECIO_COMRA.Value := 1;
  mtStockPRECIO_VTA.Value   := 0;
  mtStockPRECIO_VTA2.Value  := 0;
  mtStockCODIGO_EAN.AsString:= '';
end;

procedure TFormStock_Express.mtStockPRECIO_VTASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString                 := Text;
  mtStockPRECIO_VTA.AsFloat       := Sender.AsFloat;
  mtStockPRECIO_VTA2.AsFloat      := Sender.AsFloat;
  if Not(chbCostoConIva.Checked) then
    begin
      mtStockPRECIO_GRAVADO.AsFloat   := Sender.AsFloat/1.21;
      mtStockPRECIO_GRAVADO_2.AsFloat := Sender.AsFloat/1.21;
    end
  else
    begin
      mtStockPRECIO_GRAVADO.AsFloat   := Sender.AsFloat;
      mtStockPRECIO_GRAVADO_2.AsFloat := Sender.AsFloat;
    end;


end;

procedure TFormStock_Express.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormStock_Express.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edEtiqueta1.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edEtiqueta1.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edEtiqueta1.Text:='';
end;

procedure TFormStock_Express.sBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then
    dbgStock.SetFocus;
end;

procedure TFormStock_Express.sBuscarSelect(Sender: TObject);
begin
  inherited;
  sBuscar.SetFocus;
//  CDSSubRub.Locate('CODIGO_SUBRUBRO',sBuscar.Columns[0],[]);
  CDSSubRub.Locate('codigo_SubRubro',sBuscar.SearchList.SelectedItem.Captions[0],[]);
end;

end.
