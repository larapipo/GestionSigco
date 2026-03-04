unit UImportarMarcasExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, StdCtrls, Grids, DBGrids, ImgList,
  DB,   ActnList, ComCtrls, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls, ADODB, JvComponentBase,
  DBXCommon, Data.FMTBcd, Data.SqlExpr, JvAppStorage, JvAppIniStorage,
  JvFormPlacement, System.Actions, JvLabel, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormImportarMarcasExcel = class(TFormABMBase)
    edPath: TEdit;
    dbgrdStock: TDBGrid;
    btn1: TSpeedButton;
    btnAyudaFormato: TSpeedButton;
    pnAviso: TPanel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    ADOConnection: TADOConnection;
    ADODSStockXLS: TADODataSet;
    DSStockXLS: TDataSource;
    OpenDialog: TOpenDialog;
    Importar: TAction;
    btImportar: TBitBtn;
    spABMMarca: TFDStoredProc;
    QCodigoFree: TFDQuery;
    QBuscadorMarca: TFDQuery;
    QBuscadorMarcaMARCA_STK: TStringField;
    QBuscadorMarcaDESCRIPCION_MARCA: TStringField;
    QBuscadorMarcaOBSERVACION_MARCA: TStringField;
    procedure btn1Click(Sender: TObject);
    procedure btnAyudaFormatoClick(Sender: TObject);
    procedure ImportarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarMarcasExcel: TFormImportarMarcasExcel;

implementation

uses UAvisoProceso, UDMain_FD;

{$R *.dfm}

procedure TFormImportarMarcasExcel.btn1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
         edPath.Text:=OpenDialog.FileName;
        ADOConnection.Connected:=False;
        ADODSStockXLS.Active:=False;
        ADOConnection.ConnectionString:='';
        //ADODataSet1.CommandText:='';
        ADOConnection.ConnectionString:=
        'Provider = Microsoft.Jet.OLEDB.4.0; '+
        'User ID = Admin; '+
        'Data Source='+edPath.Text+'; '+
        'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
        'Persist Security Info=False; '+
        'Jet OLEDB:System database=""; '+
        'Jet OLEDB:Registry Path=""; '+
        'Jet OLEDB:Database Password=""; '+
        'Jet OLEDB:Engine Type=35; '+
        'Jet OLEDB:Database Locking Mode=0; '+
        'Jet OLEDB:Global Partial Bulk Ops=2; '+
        'Jet OLEDB:Global Bulk Transactions=1; '+
        'Jet OLEDB:New Database Password=""; '+
        'Jet OLEDB:Create System Database=False; '+
        'Jet OLEDB:Encrypt Database=False; '+
        'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
        'Jet OLEDB:Compact Without Replica Repair=False; '+
        'Jet OLEDB:SFP=False ';
        ADODSStockXLS.Connection :=ADOConnection;
        ADODSStockXLS.CommandType:=cmdTableDirect;
      //  ADODSStockXLS.CommandText:='Hoja1$';
        ADOConnection.Connected:=true;
        ADODSStockXLS.Active:=True;

      end;
 end;

procedure TFormImportarMarcasExcel.btnAyudaFormatoClick(Sender: TObject);
begin
  inherited;
 if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportarMarcasExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportarMarcasExcel.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormImportarMarcasExcel.FormDestroy(Sender: TObject);
begin
  inherited;
  FormimportarMarcasExcel:=nil;
end;

procedure TFormImportarMarcasExcel.ImportarExecute(Sender: TObject);
var codigo:string;
begin
 inherited;
 if Not(Assigned(FormProceso)) Then
    FormProceso:=TFormProceso.Create(Application);
  FormProceso.Mensaje:='Ingresando Datos....';
  FormProceso.Show;
  FormProceso.Close;
  ADODSStockXLS.First;
  while not ADODSStockXLS.Eof do
    begin
      if ADODSStockXLS.fieldbyName('CODIGO').AsString='' then
        begin
          QBuscadorMarca.Close;
          QBuscadorMarca.ParamByName('descripcion').Value:=trim(UpperCase(copy(ADODSStockXLS.fieldByName('Detalle').AsString,1,25)));
          QBuscadorMarca.Open;
          if QBuscadorMarcaMARCA_STK.AsString='' then
            begin
              QCodigoFree.Close;
              QCodigoFree.Open;
              if QCodigoFree.Fields[0].AsString<>'' then
                codigo:=Copy('0000',1,4-Length(QCodigoFree.Fields[0].AsString))+QCodigoFree.Fields[0].AsString
              else
                begin
                  QUltimoCodigo2.Close;
                  QUltimoCodigo2.Open;
                  if QUltimoCodigo2.Fields[0].AsString<>'' then
                    codigo:=Copy('0000',1,4-Length(IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)))+IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)
                  else
                    codigo:='0000';
                  QUltimoCodigo2.Open;
                end;
            end
          else
            codigo:=QBuscadorMarcaMARCA_STK.AsString;
          QBuscadorMarca.Close;
        end
      else
        codigo := Trim(ADODSStockXLS.fieldbyName('CODIGO').AsString);
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        Try
          spABMMarca.Close;
          spABMMarca.ParamByName('CODIGO').Value                := codigo;
          spABMMarca.ParamByName('Detalle').AsString            := trim(UpperCase(copy(ADODSStockXLS.fieldByName('Detalle').AsString,1,25)));
          spABMMarca.ExecProc;
          spABMMarca.Close;

          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('Transacción no finalizada....!');
        end;
      end;
    ADODSStockXLS.Next;
  end;
  ADOConnection.Connected:=False;
  ADODSStockXLS.Active:=False;
end;

end.
