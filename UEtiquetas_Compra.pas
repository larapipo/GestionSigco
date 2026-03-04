unit UEtiquetas_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,IniFiles,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, System.Actions, Vcl.ActnList, Vcl.Menus, frCoreClasses;

type
  TFormEtiquetasCompra = class(TForm)
    pnBase: TPanel;
    dbgEtiquetas: TDBGrid;
    DSEtiquetas: TDataSource;
    CDSEtiquetas: TClientDataSet;
    Label1: TLabel;
    edEtiqueta1: TEdit;
    sbReporte: TSpeedButton;
    btImprimir: TBitBtn;
    chPreview: TCheckBox;
    frEtiquetas: TfrxReport;
    frDSEtiquetas: TfrxDBDataset;
    OpenDialog: TOpenDialog;
    pnCabecera: TPanel;
    CDSEtiquetasReptidas: TClientDataSet;
    DSEtiquetasRepetidas: TDataSource;
    DBGrid1: TDBGrid;
    btHacer_x_Cantidad: TButton;
    CDSEtiquetasReptidasCODIGOARTICULO: TStringField;
    CDSEtiquetasReptidasDETALLE: TStringField;
    CDSEtiquetasReptidasMUESTRAPRECIOVTA: TStringField;
    CDSEtiquetasReptidasMUESTRACODIGOBARRA: TStringField;
    CDSEtiquetasReptidasCANTIDAD: TStringField;
    Label2: TLabel;
    QListaCab: TFDQuery;
    QListaDet: TFDQuery;
    DSListaPrecio: TDataSource;
    dbcLista: TDBLookupComboBox;
    btAplicaPrecio: TBitBtn;
    btPorRenglon: TButton;
    spActualizaPrecioVta: TFDStoredProc;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    Redondeo_0: TAction;
    Redonde0decimales1: TMenuItem;
    AplicarCambios: TAction;
    N1: TMenuItem;
    AplicarCambiosdePrecios1: TMenuItem;
    CDSEtiquetasReptidasUNITARIO_TOTAL: TStringField;
    procedure sbReporteClick(Sender: TObject);
    procedure dbgEtiquetasColEnter(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure dbgEtiquetasEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnBaseDblClick(Sender: TObject);
    procedure btHacer_x_CantidadClick(Sender: TObject);
    procedure btAplicaPrecioClick(Sender: TObject);
    procedure btPorRenglonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Redondeo_0Execute(Sender: TObject);
    procedure AplicarCambiosExecute(Sender: TObject);
    procedure dbgEtiquetasDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Modo:byte;

  end;

var
  FormEtiquetasCompra: TFormEtiquetasCompra;

implementation

uses  UDMain_FD, DMCompra, UCompra_2, UStock_2;

{$R *.dfm}

procedure TFormEtiquetasCompra.btImprimirClick(Sender: TObject);
begin
  if Modo=0 then
    frDSEtiquetas.DataSource:=DSEtiquetas
  else
  if Modo=1 then
    frDSEtiquetas.DataSource:=DSEtiquetasRepetidas;

  frEtiquetas.SelectPrinter;
  frEtiquetas.PrintOptions.ShowDialog:=False;
  frEtiquetas.LoadFromFile(DMMain_FD.PathReportesLst+'\'+ edEtiqueta1.Text);

//  DSEtiquetas.DataSet.First;
//  while Not(DSEtiquetas.DataSet.Eof) do
    begin
 //     if DSEtiquetas.DataSet.FieldByName('CANTIDAD').AsString<>'' then
  //      if DSEtiquetas.DataSet.FieldByName('CANTIDAD').Value>0 then
   //       begin
//            if Modo=1 then
//              frEtiquetas.PrintOptions.Copies     := DSEtiquetas.DataSet.FieldByName('CANTIDAD').AsInteger;

//            else
//              if Modo=0 then
//                frEtiquetas.PrintOptions.Copies     := 1;

       //     frEtiquetas.Variables['CODIGO']     := ''''+DSEtiquetas.DataSet.FieldByName('CODIGOARTICULO').AsString+'''';
       //     frEtiquetas.Variables['DETALLE']    := ''''+DSEtiquetas.DataSet.FieldByName('DETALLE').AsString+'''';
        //    frEtiquetas.Variables['PRECIO']     := ''''+FormatFloat(',0.00',DSEtiquetas.DataSet.FieldByName('MUESTRAPRECIOVTA').AsFloat)+'''';
        //    frEtiquetas.Variables['CODIGOBARRA']:= ''''+DSEtiquetas.DataSet.FieldByName('MUESTRACODIGOBARRA').AsString+'''';

            frEtiquetas.PrepareReport;
            if chPreview.Checked Then
              frEtiquetas.ShowReport
            else
              begin
                frEtiquetas.Print;
              end;
        //  end;
    //  DSEtiquetas.DataSet.Next;
    end;

end;

procedure TFormEtiquetasCompra.btPorRenglonClick(Sender: TObject);
begin
 DSEtiquetas.DataSet:=CDSEtiquetas;
 Modo:=0;//Por Renglon

end;

procedure TFormEtiquetasCompra.Button2Click(Sender: TObject);
var Valor:Extended;
Presicion:Integer;
begin
  Presicion:=0;
  dbgEtiquetas.DataSource.DataSet.First;
  while not(dbgEtiquetas.DataSource.DataSet.Eof) do
    begin
      Valor  :=dbgEtiquetas.DataSource.DataSet.FieldByName('MUESTRAPRECIOVTA').Value;
      dbgEtiquetas.DataSource.DataSet.Edit;
      dbgEtiquetas.DataSource.DataSet.FieldByName('MUESTRAPRECIOVTA').Value :=FloatToStr(DMMain_FD.Redondeo(Valor,Presicion));
      dbgEtiquetas.DataSource.DataSet.Post;
      dbgEtiquetas.DataSource.DataSet.next;
    end;
  dbgEtiquetas.DataSource.DataSet.First;
end;

procedure TFormEtiquetasCompra.AplicarCambiosExecute(Sender: TObject);
begin
 dbgEtiquetas.DataSource.DataSet.First;
  while not(dbgEtiquetas.DataSource.DataSet.Eof) do
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spActualizaPrecioVta.Close;
        spActualizaPrecioVta.ParamByName('CODIGO').AsString    := dbgEtiquetas.DataSource.DataSet.FieldByName('CODIGOARTICULO').Value;
        spActualizaPrecioVta.ParamByName('PRECIOVTA').AsFloat  := dbgEtiquetas.DataSource.DataSet.FieldByName('MUESTRAPRECIOVTA').Value;
        spActualizaPrecioVta.ParamByName('ID_LISTA').AsInteger := dbcLista.KeyValue;
        spActualizaPrecioVta.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spActualizaPrecioVta.Close;
      except
        ShowMessage('No se Gravo el cambio...');
        DMMain_FD.fdcGestion.Rollback;
      end;
      dbgEtiquetas.DataSource.DataSet.next;
    end;
  dbgEtiquetas.DataSource.DataSet.First;
end;

procedure TFormEtiquetasCompra.btAplicaPrecioClick(Sender: TObject);
begin
  if Modo=0 then
    begin
      CDSEtiquetas.First;
      while not(CDSEtiquetas.Eof) do
        begin
          QListaDet.Close;
          QListaDet.ParamByName('id').Value    := dbcLista.KeyValue;
          QListadet.ParamByName('codigo').Value:= CDSEtiquetas.FieldByName('CODIGOARTICULO').Value;
          QListaDet.Open;
          CDSEtiquetas.Edit;
          CDSEtiquetas.FieldByName('MUESTRAPRECIOVTA').AsFloat:=QListaDet.FieldByName('precio').AsFloat;
          CDSEtiquetas.Next;
        end;
      QListaDet.Close;
    end
  else
    ShowMessage('Pase a Modo x Renglon...');
end;

procedure TFormEtiquetasCompra.btHacer_x_CantidadClick(Sender: TObject);
var i:Integer;
Field:TField;
begin
  // DMMain_FD.CopyClientDataset(CDSEtiquetas,CDSEtiquetasReptidas);
   CDSEtiquetasReptidas.Close;
   CDSEtiquetasReptidas.Open;
   CDSEtiquetasReptidas.EmptyDataSet;
   CDSEtiquetas.First;
   CDSEtiquetas.IndexFieldNames        :='CODIGOARTICULO';
   CDSEtiquetasReptidas.IndexFieldNames:='CODIGOARTICULO';
   while not(CDSEtiquetas.Eof) do
     begin
       CDSEtiquetasReptidas.IndexDefs.Clear;

       for I := 1 to CDSEtiquetas.FieldByName('CANTIDAD').AsInteger do
         begin
           CDSEtiquetasReptidas.Append;
           CDSEtiquetasReptidasCODIGOARTICULO.Value      := CDSEtiquetas.FieldByName('CODIGOARTICULO').AsString;
           CDSEtiquetasReptidasDETALLE.Value             := CDSEtiquetas.FieldByName('DETALLE').AsString;
           CDSEtiquetasReptidasMUESTRAPRECIOVTA.AsString := FormatFloat(',0.00',CDSEtiquetas.FieldByName('MUESTRAPRECIOVTA').AsFloat);
           CDSEtiquetasReptidasMUESTRACODIGOBARRA.Value  := CDSEtiquetas.FieldByName('MUESTRACODIGOBARRA').AsString;
           CDSEtiquetasReptidasCANTIDAD.AsString         := IntToStr(CDSEtiquetas.FieldByName('CANTIDAD').AsInteger);
           CDSEtiquetasReptidasUNITARIO_TOTAL.AsString   := FormatFloat(',0.00',CDSEtiquetas.FieldByName('UNITARIO_TOTAL').AsFloat);

           CDSEtiquetasReptidasMUESTRAPRECIOVTA.Alignment := taRightJustify;
           CDSEtiquetasReptidasCANTIDAD.Alignment         := taRightJustify;
           CDSEtiquetasReptidasUNITARIO_TOTAL.Alignment   := taRightJustify;


         //  for Field in CDSEtiquetas.Fields do
         //    begin
         //      CDSEtiquetasReptidas.Fields[Field.Index].Required := False;
         //      CDSEtiquetasReptidas.Fields[Field.Index].Value := Field.Value;
         //    end;
           CDSEtiquetasReptidas.Post;
         end;
       CDSEtiquetas.Next;
     end;
  DSEtiquetas.DataSet:=CDSEtiquetasReptidas;
  Modo:=1;//Por Cantidad
end;

procedure TFormEtiquetasCompra.dbgEtiquetasColEnter(Sender: TObject);
begin
  if dbgEtiquetas.SelectedIndex<2 then
    dbgEtiquetas.SelectedIndex:=2;
end;

procedure TFormEtiquetasCompra.dbgEtiquetasDblClick(Sender: TObject);
begin
  if Not(Assigned(FormStock_2)) then
    formStock_2:=TFormStock_2.Create(Application);
  FormStock_2.DatoNew := dbgEtiquetas.DataSource.DataSet.FieldByName('CODIGOARTICULO').Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;

end;

procedure TFormEtiquetasCompra.dbgEtiquetasEnter(Sender: TObject);
begin
  if dbgEtiquetas.SelectedIndex>1 then
    dbgEtiquetas.SelectedIndex:=2;
end;

procedure TFormEtiquetasCompra.FormClose(Sender: TObject; var Action: TCloseAction);
var ArchivoIni:TIniFile;
begin
  CDSEtiquetas.Close;
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+'EtiqutetasCompra.Ini');
  ArchivoIni.WriteString('etiqueta', 'chica', edEtiqueta1.Text);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormEtiquetasCompra.FormCreate(Sender: TObject);
var ArchivoIni:TIniFile;
begin
  AutoSize :=True;
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+'EtiqutetasCompra.Ini');
  edEtiqueta1.Text := ArchivoIni.ReadString('etiqueta', 'chica', '');
  ArchivoIni.Free;
  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;
  QListaCab.Close;
  QListaCab.Open;
  dbcLista.KeyValue:=DMMain_FD.ListaPorDefecto(-1);
  Modo:=0;//Por Renglon
end;

procedure TFormEtiquetasCompra.FormDestroy(Sender: TObject);
begin
  FormEtiquetasCompra:=nil;
end;


procedure TFormEtiquetasCompra.pnBaseDblClick(Sender: TObject);
begin
 frEtiquetas.DesignReport;
end;

procedure TFormEtiquetasCompra.Redondeo_0Execute(Sender: TObject);
var Valor:Extended;
Presicion:Integer;
begin
  Presicion:=0;
  dbgEtiquetas.DataSource.DataSet.First;
  while not(dbgEtiquetas.DataSource.DataSet.Eof) do
    begin
      Valor  :=dbgEtiquetas.DataSource.DataSet.FieldByName('MUESTRAPRECIOVTA').Value;
      dbgEtiquetas.DataSource.DataSet.Edit;
      dbgEtiquetas.DataSource.DataSet.FieldByName('MUESTRAPRECIOVTA').Value :=FloatToStr(DMMain_FD.Redondeo(Valor,Presicion));
      dbgEtiquetas.DataSource.DataSet.Post;
      dbgEtiquetas.DataSource.DataSet.next;
    end;
  dbgEtiquetas.DataSource.DataSet.First;

end;

procedure TFormEtiquetasCompra.sbReporteClick(Sender: TObject);
var Lon1,Lon2:Integer;
begin
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

end.
