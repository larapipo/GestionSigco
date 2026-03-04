unit UImportarDsctos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, Grids, DBGrids, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, ADODB,DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid;

type
  TFormImpDscto = class(TFormABMBase)
    edPath: TEdit;
    BuscarArchivo: TSpeedButton;
    spAyudaFormato: TSpeedButton;
    pnAviso: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ADOConnection: TADOConnection;
    ADODSClientesXLS: TADODataSet;
    DSClientesXLS: TDataSource;
    QActualizaDscto: TSQLQuery;
    BitBtn1: TBitBtn;
    OpenDialog: TOpenDialog;
    dbgClientesXLS: TDBAdvGrid;
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure BuscarArchivoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpDscto: TFormImpDscto;

implementation

{$R *.dfm}
uses UDMain_FD, UAvisoProceso;

procedure TFormImpDscto.BitBtn1Click(Sender: TObject);
VAR i:Byte;
Nombre,Codigo,cuit,Importe:String;
Condicion:Integer;
begin
 inherited;
 if Not(Assigned(FormProceso)) Then
    FormProceso:=TFormProceso.Create(Application);
  FormProceso.Mensaje:='Ingresando Datos....';
  FormProceso.Show;
  FormProceso.Close;
  Application.ProcessMessages;

  ADODSClientesXLS.First;
  while not ADODSClientesXLS.Eof do
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      Try

        codigo:='';
        codigo:=Copy(Trim(ADODSClientesXLS.FieldByName('Codigo').AsString),1,6);
        codigo:=copy('0000000',1,6-length(codigo))+codigo;
        Importe:=ADODSClientesXLS.FieldByName('Dscto').AsString;

        if Importe=''  then Importe:='0';

        QActualizaDscto.close;
        QActualizaDscto.ParamByName('codigo').Value := codigo;
        QActualizaDscto.ParamByName('Dscto').Value  := StrToFloat(Importe);
        QActualizaDscto.ExecSQL();


        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transacción no finalizada....!');
        exit;
      end;
      ADODSClientesXLS.Next;
    end;
    ADOConnection.Connected:=False;
    ADODSClientesXLS.Active:=False;;

end;

procedure TFormImpDscto.BuscarArchivoClick(Sender: TObject);
begin
  inherited;
if pnAviso.Visible=True Then
    pnAviso.Visible:=False;

  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
         edPath.Text:=OpenDialog.FileName;
        ADOConnection.Connected:=False;
        ADODSClientesXLS.Active:=False;
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
        ADODSClientesXLS.Connection:=ADOConnection;
        ADODSClientesXLS.CommandType:=cmdTableDirect;
        ADODSClientesXLS.CommandText:='Hoja1$';
        ADOConnection.Connected:=true;
        ADODSClientesXLS.Active:=True;
      end;
end;

procedure TFormImpDscto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormImpDscto.FormDestroy(Sender: TObject);
begin
  inherited;
 FormImpDscto:=nil;
end;

procedure TFormImpDscto.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;

end;

end.
