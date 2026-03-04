unit UBorradorInventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.Provider, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvExControls, JvDBLookup,IniFiles, JvLabel, JvDBControls;

type
  TFormBorradorInventario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QBorrador: TFDQuery;
    CDSBorrador: TClientDataSet;
    DSPBorrador: TDataSetProvider;
    DSBorrador: TDataSource;
    CDSBorradorDEPOSITO: TIntegerField;
    CDSBorradorCODIGO: TStringField;
    CDSBorradorCANTIDAD: TFloatField;
    CDSBorradorMUESTRASTOCK: TStringField;
    CDSBorradorMUESTRADEPOSITO: TStringField;
    CDSDepositos: TClientDataSet;
    DSDepositos: TDataSource;
    QDeposito: TFDQuery;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    dbcDeposito: TJvDBLookupCombo;
    Label2: TLabel;
    Pasar: TButton;
    CDSBorradorCLASE_ARTICULO: TIntegerField;
    QLimpiarTemporal: TFDQuery;
    JvDBStatusLabel1: TJvDBStatusLabel;
    CDSBorradorCONTROLASTOCK: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcDepositoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PasarClick(Sender: TObject);
    procedure CDSBorradorAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FIdDeposito:Integer;
  public
    { Public declarations }
  published
    Novedades:TStringList;
    ArchivoIni:TIniFile;
    property IdDeposito:Integer read FIdDeposito write FIdDeposito;
  end;

var
  FormBorradorInventario: TFormBorradorInventario;

implementation

uses UDMain_FD, UInventario, UStock_2, UListCpbteNoImportados;
{$R *.dfm}

procedure TFormBorradorInventario.PasarClick(Sender: TObject);
begin
  Novedades.Clear;
  CDSBorrador.First;
  while not(CDSBorrador.Eof)  do
    begin
      if (CDSBorradorCLASE_ARTICULO.Value<>0) and (CDSBorradorCONTROLASTOCK.Value='S') then
        begin
          FormInventario.CDSInvDet.Append;
          FormInventario.CDSInvDetCODIGOSetText(FormInventario.CDSInvDetCODIGO,CDSBorradorCODIGO.AsString);
          FormInventario.CDSInvDetSTOCKSetText(FormInventario.CDSInvDetSTOCK,CDSBorradorCANTIDAD.AsString);
          FormInventario.CDSInvDet.Post;
        end
      else
        begin
          Novedades.Add(CDSBorradorCODIGO.AsString+'-'+
                        CDSBorradorMUESTRASTOCK.AsString+'-'+
                        FormatFloat(',0.00',CDSBorradorCANTIDAD.AsFloat)+'   '+
                        CDSBorradorCLASE_ARTICULO.AsString+'-'+
                        CDSBorradorCONTROLASTOCK.AsString);
        end;
      CDSBorrador.Next;
    end;
  if (Novedades<>nil) and (Novedades.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Self);
      FormListaNoImportados.mLista.Lines:=( Novedades);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');

  if (CDSBorrador.IsEmpty=False) then
    if MessageDlg('Borrar Temporales ?',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
      begin
        QLimpiarTemporal.Close;
        QLimpiarTemporal.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
        QLimpiarTemporal.ExecSQL;
        QLimpiarTemporal.Close;
      end;


  Close;
end;

procedure TFormBorradorInventario.CDSBorradorAfterDelete(DataSet: TDataSet);
begin
  CDSBorrador.ApplyUpdates(0);
end;

procedure TFormBorradorInventario.dbcDepositoClick(Sender: TObject);
begin
  CDSBorrador.Close;
  CDSBorrador.Params.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
  CDSBorrador.Open;
end;

procedure TFormBorradorInventario.DBGrid1DblClick(Sender: TObject);
begin
 if not(Assigned(formStock_2)) then
    FormStock_2:=TFormStock_2.create(Self);
  FormStock_2.DatoNew:=CDSBorradorCODIGO.AsString;
   formstock_2.Recuperar.Execute;
   FormStock_2.Show;
end;

procedure TFormBorradorInventario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DataCol=5 then
    begin
      if CDSBorradorCONTROLASTOCK.Value='N' then
        DBGrid1.Canvas.Brush.Color:=clRed;
    end;
  if DataCol=4 then
    begin
      if (CDSBorradorCLASE_ARTICULO.Value=0) then
        DBGrid1.Canvas.Brush.Color:=clRed;
    end;

  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TFormBorradorInventario.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if True then

end;

procedure TFormBorradorInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeANdNil(Novedades);
  Action:=caFree;
end;

procedure TFormBorradorInventario.FormCreate(Sender: TObject);
begin
  CDSDepositos.Close;
  CDSDepositos.Open;
  ArchivoIni            := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  dbcdeposito.KeyValue  := ArchivoIni.ReadInteger('Deposito', 'Deposito', 0);
  ArchivoIni.Free;

  CDSBorrador.Close;
  CDSBorrador.Params.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
  CDSBorrador.Open;
  Novedades:=TStringList.Create;

end;

procedure TFormBorradorInventario.FormDestroy(Sender: TObject);
begin
  FormBorradorInventario:=nil;
end;

procedure TFormBorradorInventario.FormResize(Sender: TObject);
begin
  if FormBorradorInventario<>nil then
    if FormBorradorInventario.Width<>967 then
      FormBorradorInventario.Width:=967;
end;

procedure TFormBorradorInventario.FormShow(Sender: TObject);
begin
  dbcdeposito.KeyValue  := FIdDeposito;
  CDSBorrador.Close;
  CDSBorrador.Params.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
  CDSBorrador.Open;
end;

end.
