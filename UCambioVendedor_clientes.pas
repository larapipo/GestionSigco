unit UCambioVendedor_clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBLookup, CheckLst,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormClientes_Vendedor = class(TFormABMBase)
    QLstClientes: TFDQuery;
    DSPLstClientes: TDataSetProvider;
    CDSLstClientes: TClientDataSet;
    DSLstClientes: TDataSource;
    QLstClientesCODIGO: TStringField;
    QLstClientesNOMBRE: TStringField;
    QLstClientesRAZON_SOCIAL: TStringField;
    QLstClientesDIRECCION_COMERCIAL: TStringField;
    QLstClientesTELEFONO_COMERCIAL_1: TStringField;
    QLstClientesTELEFONO_COMERCIAL_2: TStringField;
    QLstClientesCPOSTAL: TStringField;
    QLstClientesLOCALIDAD: TStringField;
    QLstClientesSUCURSAL: TIntegerField;
    QLstClientesNRO_DE_CUIT: TStringField;
    QLstClientesZONA: TIntegerField;
    QLstClientesVENDEDOR: TStringField;
    QLstClientesMUESTRAVENDEDOR: TStringField;
    CDSLstClientesCODIGO: TStringField;
    CDSLstClientesNOMBRE: TStringField;
    CDSLstClientesRAZON_SOCIAL: TStringField;
    CDSLstClientesDIRECCION_COMERCIAL: TStringField;
    CDSLstClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSLstClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSLstClientesCPOSTAL: TStringField;
    CDSLstClientesLOCALIDAD: TStringField;
    CDSLstClientesSUCURSAL: TIntegerField;
    CDSLstClientesNRO_DE_CUIT: TStringField;
    CDSLstClientesZONA: TIntegerField;
    CDSLstClientesVENDEDOR: TStringField;
    CDSLstClientesMUESTRAVENDEDOR: TStringField;
    dbgClientes: TJvDBGrid;
    Label1: TLabel;
    DSPBuscaVendedores: TDataSetProvider;
    CDSBuscaVendedores: TClientDataSet;
    CDSBuscaVendedoresCODIGO: TStringField;
    CDSBuscaVendedoresNOMBRE: TStringField;
    DSBuscaVendedores: TDataSource;
    btAsignar: TButton;
    Label2: TLabel;
    AplFiltroLst: TButton;
    dbgVendedores: TJvDBGrid;
    chlVendedores: TCheckListBox;
    procedure btAsignarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AplFiltroLstClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientes_Vendedor: TFormClientes_Vendedor;

implementation

uses UDMain_FD,DMBuscadoresForm;

{$R *.dfm}

procedure TFormClientes_Vendedor.btAsignarClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  //if dbcVendedorNuevo.KeyValue<>'' then
    begin
      CDSLstClientes.DisableControls;
      for I := 0 to dbgClientes.SelectedRows.Count - 1 do
        begin
          {$IF CompilerVersion < 24}
            dbgClientes.DataSource.DataSet.GotoBookmark(Pointer(dbgClientes.SelectedRows.Items[i]));
          {$ELSE}
            dbgClientes.DataSource.DataSet.GotoBookmark((dbgClientes.SelectedRows.Items[i]));
          {$ENDIF}
          CDSLstClientes.Edit;
          CDSLstClientesVENDEDOR.Value       :=CDSBuscaVendedoresCODIGO.Value;
          CDSLstClientesMUESTRAVENDEDOR.Value:=CDSBuscaVendedoresNOMBRE.Value;
          CDSLstClientes.Post;
        end;
      CDSLstClientes.EnableControls;

    end;
end;

procedure TFormClientes_Vendedor.AplFiltroLstClick(Sender: TObject);
begin
  inherited;
  CDSLstClientes.ApplyUpdates(0);
  CDSLstClientes.Close;
  CDSLstClientes.Params.ParamByName('codigo').AsString:='******';
  CDSLstClientes.Open;

end;

procedure TFormClientes_Vendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormClientes_Vendedor.FormCreate(Sender: TObject);
var i:Integer;
begin
  inherited;
  AutoSize:=True;
  CDSBuscaVendedores.Close;
  CDSBuscaVendedores.Open;

  CDSLstClientes.Close;
  CDSLstClientes.Params.ParamByName('codigo').AsString:='******';
  CDSLstClientes.Open;
  chlVendedores.Clear;
  chlVendedores.Items.Add('------'+' - '+'SIN VENDEDOR');

  CDSBuscaVendedores.DisableControls;
  CDSBuscaVendedores.First;
  while not(CDSBuscaVendedores.Eof) do
    begin
      chlVendedores.Items.Add(CDSBuscaVendedoresCODIGO.AsString+' - '+CDSBuscaVendedoresNOMBRE.AsString);
      CDSBuscaVendedores.Next;
    end;
  CDSBuscaVendedores.First;
  CDSBuscaVendedores.EnableControls;
end;

procedure TFormClientes_Vendedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormClientes_Vendedor:=nil;
end;

procedure TFormClientes_Vendedor.FormResize(Sender: TObject);
begin
  inherited;
  if FormClientes_Vendedor<>nil then
    if FormClientes_Vendedor.Width<>1044 then
      FormClientes_Vendedor.Width:=1044;


end;

end.
