unit UGeoPosicionClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, UABMBase, Provider, DB,
  DBClient, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  StdCtrls, ExtCtrls, Grids, DBGrids, ImgList, Controls, ActnList, ComCtrls,  JvExControls,
  JvGradient, Buttons, ToolWin,Forms,Dialogs,StrUtils, JvComponentBase,
  DBXCommon, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.FMTBcd, Data.SqlExpr, JvFormPlacement, JvLabel,
  JvDBControls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormPosicionGeoClientes = class(TFormABMBase)
    GeoPosicionar: TAction;
    IdHTTP2: TIdHTTP;
    dbg1: TDBGrid;
    DSClientes: TDataSource;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesPROVINCIA: TStringField;
    bt1: TBitBtn;
    CDSClientesLATITUD: TStringField;
    CDSClientesLONGITUD: TStringField;
    rgEstado: TRadioGroup;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesPROVINCIA: TStringField;
    QClientesLATITUD: TStringField;
    QClientesLONGITUD: TStringField;
    procedure GeoPosicionarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgEstadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPosicionGeoClientes: TFormPosicionGeoClientes;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormPosicionGeoClientes.BuscarExecute(Sender: TObject);
begin
 // inherited;
 CDSClientes.Close;
 CDSClientes.Open;
 CDSClientes.Filtered:=rgEstado.ItemIndex=1;

end;

procedure TFormPosicionGeoClientes.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
   DMMain_FD.fdcGestion.StartTransaction;
   try
     CDSClientes.ApplyUpdates(0);
     DMMain_FD.fdcGestion.Commit;
     ShowMessage('Datos Gravados, se Completo la operación.....');

   except
     DMMain_FD.fdcGestion.Rollback;
     ShowMessage('No se Completo la operación.....');
   end;
end;

procedure TFormPosicionGeoClientes.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormPosicionGeoClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPosicionGeoClientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  Buscar.Execute;
end;

procedure TFormPosicionGeoClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPosicionGeoClientes:=nil;
end;

procedure TFormPosicionGeoClientes.GeoPosicionarExecute(Sender: TObject);
const
  STR_WEB = 'http://maps.google.com/maps/geo?q=';
  STR_OUT = '&output=csv';    // formato de salida
  STR_KEY = '&key=ABQIAAAAFVb255bTSpn4DC0nkcIz3hTgmueMIh62ahlPS2dC-DIXqzciAxRZItsH3Fy4UcBpz0Q4D8XHzbxt3A';
var
  Stream: TStringStream;
  TextoBuscar,Str, res:string;
  code,lt,lg,presicion:string;
  begin
  // ini
  // proteccion para liberar
  try
    CDSClientes.First;
    while Not(CDSClientes.Eof) do
      begin
        TextoBuscar:=( CDSClientesPROVINCIA.Value+','+CDSClientesLOCALIDAD.Value+','+CDSClientesDIRECCION_COMERCIAL.Value );
        TextoBuscar:= AnsiReplaceText(TextoBuscar, ' ', '+');
        Stream := TStringStream.Create('');
        Str := STR_WEB +TextoBuscar + STR_OUT + STR_KEY;

//        idhttp2.Get(Str, Stream);
//        res := Stream.DataString;
       
    //    code:=Copy(res,1,pos(',',res)-1);
    //    Delete(res,1,Pos(',',res));
    //    if code='200' then
          begin
//            Delete(res,1,Pos(',',res));
//            lt:=Copy(res,1,pos(',',res)-1);
//            Delete(res,1,Pos(',',res));
//            if pos(',',res)>0 then
//              lg:=Copy(res,1,pos(',',res)-1)
//            else
//              lg:=res;
            if ((CDSClientesLONGITUD.Value='') and (CDSClientesLATITUD.Value='')) then
              begin
                CDSClientes.Edit;
                CDSClientesLATITUD.Clear;
                CDSClientesLONGITUD.Clear;

                CDSClientesLATITUD.Value :=lt;
                CDSClientesLONGITUD.Value:=lg;
              end;
          end;
        CDSClientes.Next;
        FreeAndNil(Stream);
      end;
    finally
      FreeAndNil(Stream);
  end;
end;



procedure TFormPosicionGeoClientes.rgEstadoClick(Sender: TObject);
begin
  inherited;
  CDSClientes.Filtered:=rgEstado.ItemIndex=1;
end;

end.
