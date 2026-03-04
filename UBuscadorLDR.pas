unit UBuscadorLDR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, System.Actions,
  Vcl.ActnList, JvExMask, JvToolEdit, JvDBControls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, JvExControls, JvGradient,
  Vcl.ExtCtrls, CompBuscador, JvExStdCtrls, JvCombobox, JvDBCombobox,
  Vcl.ImgList, Vcl.Menus, System.ImageList;

type
  TFormBuscadorLDR = class(TForm)
    pnPrincipal: TPanel;
    JvGradient1: TJvGradient;
    btAceptar: TBitBtn;
    btCancelar: TBitBtn;
    pnCliente: TPanel;
    dbeMuestraCliente: TDBEdit;
    Label1: TLabel;
    dbgLDR: TJvDBGrid;
    DSClientes: TDataSource;
    CDSClientes: TClientDataSet;
    CDSClientesNOMBRE: TStringField;
    CDSClientesCODIGO: TStringField;
    DSPClientes: TDataSetProvider;
    QClientes: TFDQuery;
    Qsucursal: TFDQuery;
    QsucursalCODIGO: TIntegerField;
    QsucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    QLDR: TFDQuery;
    DSPLDR: TDataSetProvider;
    CDSLDR: TClientDataSet;
    DSLDR: TDataSource;
    CDSLDRCODIGO_CLIENTE: TStringField;
    CDSLDRCODIGO_LDR: TIntegerField;
    CDSLDRNOMBRE: TStringField;
    CDSLDRDIRECCION: TStringField;
    CDSLDRCPOSTAL: TStringField;
    CDSLDRLOCALIDAD: TStringField;
    CDSLDRPROVINCIA: TIntegerField;
    dbcCliente: TJvDBComboEdit;
    ActionList1: TActionList;
    BuscarCliente: TAction;
    pnNuevoLDR: TPanel;
    dbeNombre: TDBEdit;
    dbeDireccion: TDBEdit;
    dbeCPostal: TDBEdit;
    dbcbProvincia: TJvDBComboBox;
    DSProvincias: TDataSource;
    BuscarLocalidad: TAction;
    ComBuscadorLocalidades: TComBuscador;
    QProvincias: TFDQuery;
    QLocalidad: TFDQuery;
    DataSource1: TDataSource;
    QLocalidadID_POSTAL: TIntegerField;
    QLocalidadCODIGO_POSTAL: TStringField;
    QLocalidadDETALLE_POSTAL: TStringField;
    QLocalidadTELEDISCADO: TStringField;
    QLocalidadPROVINCIA: TIntegerField;
    DSPLocalidad: TDataSetProvider;
    CDSLocalidad: TClientDataSet;
    DSLocalidad: TDataSource;
    CDSLocalidadID_POSTAL: TIntegerField;
    CDSLocalidadCODIGO_POSTAL: TStringField;
    CDSLocalidadDETALLE_POSTAL: TStringField;
    CDSLocalidadTELEDISCADO: TStringField;
    CDSLocalidadPROVINCIA: TIntegerField;
    QProvinciasID_PRO: TIntegerField;
    QProvinciasNOMBRE: TStringField;
    QLocalidadMUESTRAPROV: TStringField;
    CDSLocalidadMUESTRAPROV: TStringField;
    dbeLocalidad: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btNuevoLDROK: TBitBtn;
    btNuevoLDRCancel: TBitBtn;
    NuevoLDR: TAction;
    QUltCodLDR: TFDQuery;
    QUltCodLDRULTCOD: TIntegerField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    dbcLocalidad: TJvComboEdit;
    btNuevoLDR: TButton;
    ImageList: TImageList;
    ppmEdit: TPopupMenu;
    ppiEditar: TMenuItem;
    ppiNuevo: TMenuItem;
    Panel1: TPanel;
    QBuscadorLocalidades: TFDQuery;
    QBuscadorLocalidadesID_POSTAL: TIntegerField;
    QBuscadorLocalidadesCODIGO_POSTAL: TStringField;
    QBuscadorLocalidadesDETALLE_POSTAL: TStringField;
    QBuscadorLocalidadesTELEDISCADO: TStringField;
    QBuscadorLocalidadesPROVINCIA: TIntegerField;
    QBuscadorLocalidadesMUESTRAPROV: TStringField;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure dbcClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbgLDRDblClick(Sender: TObject);
    procedure BuscarLocalidadExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcLocalidadEnter(Sender: TObject);
    procedure dbcLocalidadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NuevoLDRExecute(Sender: TObject);
    procedure btNuevoLDROKClick(Sender: TObject);
    procedure btNuevoLDRCancelClick(Sender: TObject);
    procedure CDSLDRNewRecord(DataSet: TDataSet);
    procedure pnNuevoLDRKeyPress(Sender: TObject; var Key: Char);
    procedure ppiEditarClick(Sender: TObject);
    procedure ppiNuevoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
      FCodigo :string;
      FLDR    :string;
  public
    { Public declarations }
  published

    property Codigo :string  read FCodigo write FCodigo;
    property LDR    :string  read FLDR write FLDR;

  end;

var
  FormBuscadorLDR: TFormBuscadorLDR;



implementation

uses
   UDMain_FD, UBuscadorClientes, DMClientes;

{$R *.dfm}

procedure TFormBuscadorLDR.btAceptarClick(Sender: TObject);
begin
  if CDSLDR.State in [dsInsert,dsEdit] then CDSLDR.Post;
  CDSLDR.ApplyUpdates(0);
  FCodigo     :=  CDSLDRCODIGO_CLIENTE.AsString;
  FLDR        :=  CDSLDRCODIGO_LDR.AsString;
  ModalResult :=  mrOk;
  Close;
end;

procedure TFormBuscadorLDR.btCancelarClick(Sender: TObject);
begin
  CDSLDR.CancelUpdates;
  FCodigo     :=  '';
  FLDR        :=  '';
  ModalResult := mrCancel;
  Close;
end;


procedure TFormBuscadorLDR.btNuevoLDRCancelClick(Sender: TObject);
begin
  CDSLDR.Cancel;
  pnNuevoLDR.Visible  :=  False;
end;

procedure TFormBuscadorLDR.btNuevoLDROKClick(Sender: TObject);
begin
  CDSLDR.Post;
  pnNuevoLDR.Visible  :=  False;
  btAceptar.SetFocus;
end;

procedure TFormBuscadorLDR.NuevoLDRExecute(Sender: TObject);
begin
  pnNuevoLDR.Visible  :=  True;
  CDSLDR.Append;
  dbeDireccion.SetFocus;
end;

procedure TFormBuscadorLDR.BuscarClienteExecute(Sender: TObject);
begin

  dbcCliente.Text := Copy('000000', 1, 6 - Length(dbcCliente.Text)) +  dbcCliente.Text;
  if not Assigned(FormBuscadorClientes) then
    FormBuscadorClientes  :=  TFormBuscadorClientes.Create(Self);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.Codigo := dbcCliente.Text;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    begin
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('codigo').AsString :=  FormBuscadorClientes.Codigo;
      CDSClientes.Open;
    end;

end;

procedure TFormBuscadorLDR.BuscarLocalidadExecute(Sender: TObject);
begin
  if not CDSLocalidad.Active then CDSLocalidad.Open;

  if dbcLocalidad.Text='' then
    begin
      QBuscadorLocalidades.Open;
      ComBuscadorLocalidades.Execute;
      if (ComBuscadorLocalidades.ID<>-1)then
        dbcLocalidad.Text   :=  IntToStr(ComBuscadorLocalidades.ID);
      QBuscadorLocalidades.Close;
    end;

  if CDSLocalidad.Locate('ID_POSTAL',StrToInt(dbcLocalidad.Text),[]) then
    begin
      if CDSLDR.State=dsBrowse then CDSLDR.Edit;
      CDSLDRLOCALIDAD.AsString  :=  CDSLocalidadDETALLE_POSTAL.AsString;
      CDSLDRCPOSTAL.AsString    :=  CDSLocalidadCODIGO_POSTAL.AsString;
      CDSLDRPROVINCIA.AsInteger :=  CDSLocalidadPROVINCIA.AsInteger;
    end
  else
    dbcLocalidad.Text:='';

end;

procedure TFormBuscadorLDR.CDSLDRNewRecord(DataSet: TDataSet);
var
  UltNombre,Ch :string;   i: integer;
begin
  QUltCodLDR.Close;
  QUltCodLDR.Params[0].AsString :=  CDSClientesCODIGO.AsString;
  QUltCodLDR.Open;
  CDSLDRCODIGO_CLIENTE.AsString :=  CDSClientesCODIGO.AsString;
  CDSLDRCODIGO_LDR.AsInteger    :=  QUltCodLDRUltCod.AsInteger + 1;
  CDSLDRNOMBRE.AsString         :=  Copy(CDSClientesNOMBRE.AsString,1,29) + ' ' + CDSLDRCODIGO_LDR.AsString;
  CDSLDRCPOSTAL.AsString        :=  CDSClientesCPOSTAL.AsString;
  CDSLDRLOCALIDAD.AsString      :=  CDSClientesLOCALIDAD.AsString;
  QUltCodLDR.Close;

end;


procedure TFormBuscadorLDR.dbcClienteKeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    BuscarCliente.Execute;

end;

procedure TFormBuscadorLDR.dbcLocalidadEnter(Sender: TObject);
begin
  dbcLocalidad.Text :=  '';
end;

procedure TFormBuscadorLDR.dbcLocalidadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    begin
      BuscarLocalidad.Execute;
      SelectNext(Screen.ActiveControl,True,True);
    end
  else
    if Key in [VK_BACK,VK_DELETE] then
      dbcLocalidad.Text :=  '';

end;

procedure TFormBuscadorLDR.pnNuevoLDRKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then
    SelectNext(Screen.ActiveControl,True,True);
end;

procedure TFormBuscadorLDR.ppiEditarClick(Sender: TObject);
begin
  CDSLDR.Edit;
  pnNuevoLDR.Visible  :=  True;
end;

procedure TFormBuscadorLDR.ppiNuevoClick(Sender: TObject);
begin
  btNuevoLDR.Click;
end;

procedure TFormBuscadorLDR.dbgLDRDblClick(Sender: TObject);
begin
  btAceptar.Click;
end;

procedure TFormBuscadorLDR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QBuscadorLocalidades.Close;
  QProvincias.Close;
  CDSLocalidad.Close;
end;

procedure TFormBuscadorLDR.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QProvincias.Open;
  CDSLDR.Open;
end;



procedure TFormBuscadorLDR.FormDestroy(Sender: TObject);
begin
  FormBuscadorLDR:=nil;
end;

procedure TFormBuscadorLDR.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (Key=107) then
    NuevoLDR.Execute;

end;

procedure TFormBuscadorLDR.FormShow(Sender: TObject);
begin
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('codigo').AsString :=  FCodigo;
  CDSClientes.Open;

  {if not CDSLDR.IsEmpty then
    CDSLDR.Locate('CODIGO_LDR',FLDR,[]);   }
end;

end.
