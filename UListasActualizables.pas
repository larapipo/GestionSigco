unit UListasActualizables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient;

type
  TFormListasActualizanPrecio = class(TFormABMBase)
    QListas: TFDQuery;
    DSPLista: TDataSetProvider;
    CDSLista: TClientDataSet;
    Panel2: TPanel;
    DSLista: TDataSource;
    QListasID: TIntegerField;
    QListasNOMBRE: TStringField;
    QListasACTUALIZA_EXCEPCION: TStringField;
    CDSListaID: TIntegerField;
    CDSListaNOMBRE: TStringField;
    CDSListaACTUALIZA_EXCEPCION: TStringField;
    lwListas: TListView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSListaAfterOpen(DataSet: TDataSet);
    procedure CDSListaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListasActualizanPrecio: TFormListasActualizanPrecio;

implementation

uses
  UDMain_FD;

{$R *.dfm}

procedure TFormListasActualizanPrecio.CDSListaAfterOpen(DataSet: TDataSet);
var Lista:TListItem;
begin
  inherited;
  lwListas.Clear;
  CDSLista.First;
  while Not( CDSLista.Eof) do
    begin
      Lista:=lwListas.Items.Add;
      Lista.Checked:=CDSListaACTUALIZA_EXCEPCION.Value='S';
      Lista.SubItems.Add(CDSLista.FieldByName('NOMBRE').AsString);
      Lista.SubItems.Add(CDSLista.FieldByName('Id').AsString);
      CDSLista.Next;
    end;
end;

procedure TFormListasActualizanPrecio.CDSListaAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSLista.ApplyUpdates(0);
end;

procedure TFormListasActualizanPrecio.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormListasActualizanPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:Integer;
lista:TListItem;
begin
  inherited;
  for I := 0 to lwListas.Items.Count - 1 do
    begin
      lista:=lwListas.Items[i];
//      Cadena:=Lista.SubItems.Strings[1];
      if CDSLista.Locate('id',Lista.SubItems.Strings[1],[]) Then
        begin
          CDSLista.Edit;
          if lista.Checked then
            CDSListaACTUALIZA_EXCEPCION.Value:='S'
          else
            CDSListaACTUALIZA_EXCEPCION.Value:='N';
          CDSLista.Post;
        end;
    end;

  Action:=caFree;
end;

procedure TFormListasActualizanPrecio.FormCreate(Sender: TObject);
begin
  inherited;
  CDSLista.Open;

end;

procedure TFormListasActualizanPrecio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListasActualizanPrecio:=nil;
end;

end.
