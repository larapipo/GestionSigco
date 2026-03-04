unit UImportarEmpleadosExcel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Data.DB, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  Data.DBXCommon, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid;

type
  TFormImportarEmpleadosXLS = class(TFormABMBase)
    ADOConnection: TADOConnection;
    ADODSStockXLS: TADODataSet;
    DSStockXLS: TDataSource;
    edPath: TEdit;
    btn1: TSpeedButton;
    btnAyudaFormato: TSpeedButton;
    pnAviso: TPanel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    btImportar: TBitBtn;
    OpenDialog: TOpenDialog;
    Importar: TAction;
    spABMPersonal: TFDStoredProc;
    dbgrdStock: TDBAdvGrid;
    procedure ImportarExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnAyudaFormatoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarEmpleadosXLS: TFormImportarEmpleadosXLS;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormImportarEmpleadosXLS.btn1Click(Sender: TObject);
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
        'Provider=Microsoft.Jet.OLEDB.4.0; '+
        'User ID=Admin; '+
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

procedure TFormImportarEmpleadosXLS.btnAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportarEmpleadosXLS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportarEmpleadosXLS.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=true;
end;

procedure TFormImportarEmpleadosXLS.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarEmpleadosXLS:=nil;
end;

procedure TFormImportarEmpleadosXLS.ImportarExecute(Sender: TObject);
var codigo,Cuil:string;
begin
 inherited;
  ADODSStockXLS.First;
  while not ADODSStockXLS.Eof do
    begin
      if ADODSStockXLS.fieldbyName('codigo').AsString<>'' then
        begin
          codigo:=Copy('000000',1,6-Length(ADODSStockXLS.fieldbyName('codigo').AsString))+ADODSStockXLS.fieldbyName('codigo').AsString;
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            spABMPersonal.Close;
            spABMPersonal.ParamByName('CODIGO').Value       := codigo;
            spABMPersonal.ParamByName('NOMBRE').AsString    := trim(UpperCase(copy(ADODSStockXLS.fieldByName('Nombre').AsString,1,45)));

            if ADODSStockXLS.FindField('DOMICILIO') <> nil Then
              spABMPersonal.ParamByName('DOMICILIO').AsString := trim(UpperCase(copy(ADODSStockXLS.fieldByName('domicilio').AsString,1,45)))
            ELSE
              spABMPersonal.ParamByName('DOMICILIO').AsString := '';

            spABMPersonal.ParamByName('FINGRESO').AsDateTime:= StrToDateTime(ADODSStockXLS.fieldByName('fechaingreso').AsString);

            if ADODSStockXLS.FindField('CUIL') <> nil Then
              begin
                Cuil:=ADODSStockXLS.fieldByName('cuil').AsString;
                while Pos('-',Cuil)>0 do
                  delete(Cuil,Pos('-',Cuil),1);

                if length(Cuil)<11 Then
                 cuil:=Copy('0000000000000',1,11-length(cuil))+cuil;
                cuil:=Copy(Cuil,1,2)+'-'+Copy(Cuil,3,8)+'-'+copy(cuil,11,1);

                spABMPersonal.ParamByName('CUIL').AsString      := Cuil;
              end
            else
              spABMPersonal.ParamByName('CUIL').AsString      := '00-00000000-0';


            spABMPersonal.ExecProc;
            spABMPersonal.Close;

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
