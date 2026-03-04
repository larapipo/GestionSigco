unit UAltaObraSocial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, JvExControls, JvDBLookup, CompBuscador, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TFormObraSocial = class(TForm)
    Panel2: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    Panel1: TPanel;
    edNombre: TDBEdit;
    QObrasSocial: TFDQuery;
    DSPObraSocial: TDataSetProvider;
    CDSObraSocial: TClientDataSet;
    DSObrasSocial: TDataSource;
    QObrasSocialID: TIntegerField;
    QObrasSocialNOMBRE: TStringField;
    CDSObraSocialID: TIntegerField;
    CDSObraSocialNOMBRE: TStringField;
    QNextID: TFDQuery;
    QObrasSocialENTIDAD_PAGADORA: TIntegerField;
    QObrasSocialMODO_PRESENTACION: TIntegerField;
    CDSObraSocialENTIDAD_PAGADORA: TIntegerField;
    CDSObraSocialMODO_PRESENTACION: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    cbEntidad: TJvDBLookupCombo;
    QEntidadPaga: TFDQuery;
    DSPEntidadPaga: TDataSetProvider;
    CDSEntidadPaga: TClientDataSet;
    CDSEntidadPagaID: TIntegerField;
    CDSEntidadPagaDENOMINACION: TStringField;
    CDSEntidadPagaDEIRECCION: TStringField;
    CDSEntidadPagaTELEFONOS: TStringField;
    CDSEntidadPagaOBS: TStringField;
    DSEntidadPaga: TDataSource;
    Label3: TLabel;
    btBorrar: TBitBtn;
    btBuscar: TBitBtn;
    btNuevo: TBitBtn;
    ComBuscador: TComBuscador;
    QBuscadorOS: TFDQuery;
    DSPBuscadorOS: TDataSetProvider;
    CDSBuscadorOS: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    DSBuscadorOS: TDataSource;
    btModificar: TBitBtn;
    dbModo: TJvDBComboBox;
    procedure CDSObraSocialNewRecord(DataSet: TDataSet);
    procedure btOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSObrasSocialStateChange(Sender: TObject);
    procedure btBorrarClick(Sender: TObject);
    procedure CDSObraSocialAfterDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btNuevoClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure btModificarClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
   FIdObra:Integer;
   FModo:Char;
  public
    { Public declarations }
  published
    property idObra :Integer read FIdObra write FIdObra;
    property Modo   :Char read FModo write FModo;

  end;

var
  FormObraSocial: TFormObraSocial;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormObraSocial.btBorrarClick(Sender: TObject);
begin
  CDSObraSocial.Delete;
end;

procedure TFormObraSocial.btBuscarClick(Sender: TObject);
begin
  CDSBuscadorOS.Close;
  CDSBuscadorOS.Open;
  ComBuscador.Execute;
  if ComBuscador.rOk then
    begin
      CDSObraSocial.Close;
      CDSObraSocial.Params.ParamByName('id').Value:=ComBuscador.Id;
      CDSObraSocial.Open;
    end;
  CDSBuscadorOS.Close;

end;

procedure TFormObraSocial.btCancelClick(Sender: TObject);
begin
  CDSObraSocial.Cancel;
end;

procedure TFormObraSocial.btModificarClick(Sender: TObject);
begin
  CDSObraSocial.Edit;
end;

procedure TFormObraSocial.btNuevoClick(Sender: TObject);
begin
  CDSObraSocial.Append;
  edNombre.SetFocus;
end;

procedure TFormObraSocial.btOkClick(Sender: TObject);
begin
  if CDSObraSocial.State<>dsBrowse then
    CDSObraSocial.Post;
  FIdObra:=CDSObraSocialID.Value;
  CDSObraSocial.ApplyUpdates(0);
end;

procedure TFormObraSocial.CDSObraSocialAfterDelete(DataSet: TDataSet);
begin
  CDSObraSocial.ApplyUpdates(0);
end;

procedure TFormObraSocial.CDSObraSocialNewRecord(DataSet: TDataSet);
begin
  QNextID.Close;
  QNextID.Open;
  if QNextID.Fields[0].AsString<>'' then
    CDSObraSocialID.Value:=QNextID.Fields[0].AsInteger
  else
    CDSObraSocialID.Value:=1;
  CDSObraSocialMODO_PRESENTACION.Value:=0;
  QNextID.Close;

end;

procedure TFormObraSocial.DSObrasSocialStateChange(Sender: TObject);
begin
  if CDSObraSocial.Active then
    begin
      btNuevo.Enabled     := DSObrasSocial.State in [dsBrowse];
      btModificar.Enabled := (DSObrasSocial.State in [dsBrowse]) and  (not(DSObrasSocial.DataSet.IsEmpty));
      btCancel.Enabled    := DSObrasSocial.State in [dsInsert,dsEdit];
      btOk.Enabled        := DSObrasSocial.State in [dsInsert,dsEdit];
      btBorrar.Enabled    := (DSObrasSocial.State in [dsBrowse]) and (not(DSObrasSocial.DataSet.IsEmpty)) ;
      btBuscar.Enabled    := DSObrasSocial.State in [dsBrowse];
    end;
end;

procedure TFormObraSocial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSEntidadPaga.Close;
  CDSObraSocial.Close;
  Action:=caFree;
end;

procedure TFormObraSocial.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSObraSocial.Close;
  CDSObraSocial.Open;
  CDSEntidadPaga.Open;
end;

procedure TFormObraSocial.FormDestroy(Sender: TObject);
begin
  FormObraSocial:=nil;
end;

end.
