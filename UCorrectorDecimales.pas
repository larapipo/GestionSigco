unit UCorrectorDecimales;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, StdCtrls, Buttons, ToolWin,
  ComCtrls, ExtCtrls, Grids, DBGrids,Librerias, Provider, DBClient, 
  JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions, JvLabel, JvExControls,
  JvGradient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormCorrectorDecimales = class(TFormABMBase)
    btDesactiva: TButton;
    btActiva: TButton;
    cbTablas: TComboBox;
    DataSource1: TDataSource;
    dbgDatos: TDBGrid;
    btAplicar: TButton;
    cbMascara: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DSAntes: TDataSource;
    dbgAntes: TDBGrid;
    Label3: TLabel;
    dbgDespues: TDBGrid;
    DSDespues: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    CDSAntes: TClientDataSet;
    DSPAntes: TDataSetProvider;
    CDSDespues: TClientDataSet;
    DSPDespues: TDataSetProvider;
    CDSNombreTriggers: TClientDataSet;
    DSPNombreTriggers: TDataSetProvider;
    QNombreTriggers: TFDQuery;
    CDSNombreTriggersRDBTRIGGER_NAME: TWideStringField;
    CDSNombreTriggersRDBTRIGGER_INACTIVE: TSmallintField;
    QDriveTrigger: TFDQuery;
    QDespues: TFDQuery;
    QAntes: TFDQuery;
    FDQuery1: TFDQuery;
    procedure btDesactivaClick(Sender: TObject);
    procedure btActivaClick(Sender: TObject);
    procedure btAplicarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure cbTablasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCorrectorDecimales: TFormCorrectorDecimales;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormCorrectorDecimales.btDesactivaClick(Sender: TObject);
begin
  inherited;
  CDSNombreTriggers.Close;
  CDSNombreTriggers.Open;
  while not(QNombreTriggers.Eof) do
    begin
      QDriveTrigger.Close;
      QDriveTrigger.SQL.Clear;
      QDriveTrigger.SQL.Add('ALTER TRIGGER '+''+CDSNombreTriggers.Fields[0].AsString+''+' INACTIVE');
      QDriveTrigger.ExecSQL;
      CDSNombreTriggers.Next;
    end;
  CDSNombreTriggers.Close;
  //QNombreTriggers.Open;
  btActiva.Enabled   :=True;
  btDesactiva.Enabled:=False;

end;

procedure TFormCorrectorDecimales.cbTablasChange(Sender: TObject);
begin
  inherited;
  CDSAntes.close;
  CDSAntes.CommandText:='';
  CDSAntes.CommandText:='select * from '+''+cbTablas.Text+'';
  CDSAntes.open;
end;

procedure TFormCorrectorDecimales.btActivaClick(Sender: TObject);
begin
  inherited;
  CDSNombreTriggers.Close;
  CDSNombreTriggers.Open;
  while not(CDSNombreTriggers.Eof) do
    begin
      QDriveTrigger.Close;
      QDriveTrigger.SQL.Text:='';
      QDriveTrigger.SQL.Text:='ALTER TRIGGER '+''+CDSNombreTriggers.Fields[0].AsString+''+' ACTIVE';
      QDriveTrigger.ExecSQL;
      CDSNombreTriggers.Next;
    end;
  CDSNombreTriggers.Close;
  //QNombreTriggers.Open;
  btActiva.Enabled   :=False;
  btDesactiva.Enabled:=True;
end;

procedure TFormCorrectorDecimales.btAplicarClick(Sender: TObject);
var r,i:integer;
numero:real;
begin
  inherited;
//  DMMain.Database.StartTransaction;
  CDSAntes.close;
  CDSAntes.CommandText:='';
  CDSAntes.CommandText:='select * from '+''+cbTablas.Text+'';
  CDSAntes.open;
  ClientDataSet1.Close;
  ClientDataSet1.CommandText:='';
  ClientDataSet1.CommandText:='select * from '+''+cbTablas.Text+'';
  ClientDataSet1.Open;
 // for i:=0 to dbgDatos.Columns.Count-1 Do
 //   begin
 //     if dbgDatos.DataSource.DataSet.Fields[i].DataType=ftFloat Then
 //       TFloatField(dbgDatos.Fields[i]).DisplayFormat:=cbMascara.Text;
 //   end;
  ClientDataSet1.First;
  while not(ClientDataSet1.eof) Do
    begin
      for i:=0 to ClientDataSet1.FieldCount-1 DO
        begin
          if ClientDataSet1.Fields[i].DataType=ftfloat Then
            begin
              ClientDataSet1.Edit;
              numero:=Moneda3D(' ',cbMascara.Text,ClientDataSet1.Fields[i].AsFloat);
              ClientDataSet1.Fields[i].AsFloat:=0;
              ClientDataSet1.Fields[i].AsFloat:=Moneda3D(' ',cbMascara.Text,Numero);
              ClientDataSet1.Post;
              ClientDataSet1.ApplyUpdates(0);
            end;
        end;
      ClientDataSet1.Next;
    end;
  CDSDespues.close;
  CDSDespues.CommandText:='';
  CDSDespues.CommandText:='select * from '+''+cbTablas.Text+'';
  CDSDespues.open;
end;

procedure TFormCorrectorDecimales.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;

end;

procedure TFormCorrectorDecimales.SalirExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFormCorrectorDecimales.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  ClientDataSet1.ApplyUpdates(0);
 // DMMain.Database.Commit;
end;

procedure TFormCorrectorDecimales.FormCreate(Sender: TObject);
VAR ListaTablas:TStringList;
begin
  inherited;
  AutoSize:=True;
  ListaTablas:=TStringList.Create;
  DMMain_FD.fdcGestion.GetTableNames('','','',ListaTablas,[osMy],[tkTable]);
  cbTablas.Items:=ListaTablas;
  cbTablas.ItemIndex:=0;
  cbMascara.ItemIndex:=0;
  
end;

procedure TFormCorrectorDecimales.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCorrectorDecimales:=nil;
end;

procedure TFormCorrectorDecimales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  btActiva.Click;
  Action:=caFree;
  CDSDespues.Close;
  CDSAntes.Close;
  ClientDataSet1.Close;
  inherited;

end;

end.
