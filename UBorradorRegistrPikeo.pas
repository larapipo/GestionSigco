unit UBorradorRegistrPikeo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, AdvUtil,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Buttons, AdvOfficeButtons, Vcl.Menus;

type
  TFormBorradoRegistroPikeo = class(TForm)
    Panel1: TPanel;
    pnCabecera: TPanel;
    pnPie: TPanel;
    Label1: TLabel;
    QRegistroPikeo: TFDQuery;
    DBAdvGrid1: TDBAdvGrid;
    DSRegistroPikeo: TDataSource;
    CDSRegistroPikeo: TClientDataSet;
    DSPRegistroPikeo: TDataSetProvider;
    CDSRegistroPikeoID_LOTE: TIntegerField;
    CDSRegistroPikeoFECHA: TSQLTimeStampField;
    CDSRegistroPikeoCLIENTE: TStringField;
    CDSRegistroPikeoNOMBRE: TStringField;
    CDSRegistroPikeoCODIGO: TStringField;
    CDSRegistroPikeoDETALLE_STK: TStringField;
    CDSRegistroPikeoCANTIDAD: TFloatField;
    CDSRegistroPikeoCODIGO_ALTERNATIVO: TStringField;
    CDSRegistroPikeoID: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CDSRegistroPikeoLOTE: TStringField;
    chFiltros: TAdvOfficeCheckBox;
    CDSRegistroPikeoNOMBRECLIENTE: TStringField;
    PopupMenu1: TPopupMenu;
    Borrar: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBAdvGrid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure DBAdvGrid1FilterSelect(Sender: TObject; Column,
      ItemIndex: Integer; FriendlyName: string; var FilterCondition: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure chFiltrosClick(Sender: TObject);
    procedure BorrarClick(Sender: TObject);
  private
    { Private declarations }
    FCodigo:string;
  public
    { Public declarations }
  published
    property Cliente:String write FCodigo;
  end;

var
  FormBorradoRegistroPikeo: TFormBorradoRegistroPikeo;

implementation

{$R *.dfm}
uses UDMain_FD;

{$D+}

procedure TFormBorradoRegistroPikeo.BorrarClick(Sender: TObject);
var Q:TFdquery;
Id:Integer;
begin
  Q               := TFDQuery.Create(nil);
  Q.Connection    := DMMain_FD.fdcGestion;
  CDSRegistroPikeo.First;

//  DMMain_FD.fdcGestion.StartTransaction;
//  try
    while not CDSRegistroPikeo.Eof Do
      begin
        id:=CDSRegistroPikeoID.AsInteger;
        Q.ExecSQL('delete from borrador_registro r where r.id = '+QuotedStr(IntToStr(id)));
        Q.Close;
        CDSRegistroPikeo.Next;
      end;

//    DMMain_FD.fdcGestion.Commit;
//  except
//    DMMain_FD.fdcGestion.Rollback;
//  end;

  FreeAndNil(Q);
  CDSRegistroPikeo.Close;
  CDSRegistroPikeo.Params.ParamByName('CLIENTE').Value:=FCodigo;
  CDSRegistroPikeo.open;
end;

procedure TFormBorradoRegistroPikeo.chFiltrosClick(Sender: TObject);
begin
  DBAdvGrid1.PageMode:=Not(ChFiltros.Checked);
  DBAdvGrid1.FilterDropDownAuto:=ChFiltros.Checked;
  if Not(ChFiltros.Checked) Then
    CDSRegistroPikeo.Filtered := False;
end;

procedure TFormBorradoRegistroPikeo.DBAdvGrid1FilterSelect(Sender: TObject;
  Column, ItemIndex: Integer; FriendlyName: string;
  var FilterCondition: string);
var
  FieldName: string;
begin
  FieldName := DBAdvGrid1.Columns[Column].FieldName;

  if FriendlyName <> '' then
    begin
      // Aplica el filtro al dataset CDSRegistroPikeo
      CDSRegistroPikeo.Filter   := Format('%s = ''%s''', [FieldName, FriendlyName]);
      CDSRegistroPikeo.Filtered := True;
      // Opcional: también puedes modificar el filtro interno del grid
      //FilterCondition := Format('%s = ''%s''', [FieldName, FriendlyName]);
    end
  else
    begin
      CDSRegistroPikeo.Filtered := False;
      //FilterCondition := ''; // limpia el filtro del grid
    end;
end;


procedure TFormBorradoRegistroPikeo.DBAdvGrid1GetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
   if Acol=7 Then
     HAlign:= taRightJustify;
end;

procedure TFormBorradoRegistroPikeo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBorradoRegistroPikeo.FormDestroy(Sender: TObject);
begin
  FormBorradoRegistroPikeo:=nil;
end;

procedure TFormBorradoRegistroPikeo.FormResize(Sender: TObject);
begin
  if FormBorradoRegistroPikeo<>nil then
    if FormBorradoRegistroPikeo.Width<>1230 then
      FormBorradoRegistroPikeo.Width:=1230;
end;

procedure TFormBorradoRegistroPikeo.FormShow(Sender: TObject);
begin
  cDSRegistroPikeo.Close;
  CDSRegistroPikeo.Params.ParamByName('CLIENTE').Value:=FCodigo;
  CDSRegistroPikeo.open;
end;

end.
