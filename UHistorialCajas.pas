unit UHistorialCajas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Grids, Vcl.DBGrids,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, Vcl.ComCtrls,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Menus;

type
  TFormHistorialCajas = class(TForm)
    PageControl1: TPageControl;
    pagCaja: TTabSheet;
    Label1: TLabel;
    CDSCajaDetEgresos: TClientDataSet;
    DSCajaDetIngresos: TDataSource;
    DSCajaDetEgresos: TDataSource;
    DSCajaCab: TDataSource;
    CDSCajaDetIngresos: TClientDataSet;
    CDSCajaCab: TClientDataSet;
    PageControl2: TPageControl;
    Ingresos: TTabSheet;
    Egresos: TTabSheet;
    ActionList1: TActionList;
    LeerArchivos: TAction;
    lbArchivos: TListBox;
    dbgEgresos: TDBGrid;
    dbgIngresos: TDBGrid;
    pnCabecera: TPanel;
    Borrar: TAction;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    procedure LeerArchivosExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbArchivosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sDirectorio:String;
    FDirectorio:String;
    FCaja      :String;
    FIDCaja   :Integer;
  published
    property Directorio :string read FDirectorio write FDirectorio;
    property IDCaja :Integer read FIDCaja write FIDCaja;

  end;

var
  FormHistorialCajas: TFormHistorialCajas;

implementation

{$R *.dfm}

procedure TFormHistorialCajas.BorrarExecute(Sender: TObject);
var cab,Egr,Ing,Id_Str:string;
begin
  Cab      := sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  Egr:=Copy(Cab,1,Pos('_',Cab)-1)+'_EGR.xm_';
  Ing:=Copy(Cab,1,Pos('_',Cab)-1)+'_ING.xm_';

  DeleteFile(cab);
  DeleteFile(Egr);
  DeleteFile(Ing);

  lbArchivos.DeleteSelected;
  lbArchivos.Clear;
  LeerArchivos.Execute;
  if lbArchivos.Count>0 Then
    begin
     lbArchivos.ItemIndex:=0;
     lbArchivosClick(Sender);
    end
end;

procedure TFormHistorialCajas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFormHistorialCajas.FormCreate(Sender: TObject);
begin
//  AutoSize:=True;
end;

procedure TFormHistorialCajas.FormDestroy(Sender: TObject);
begin
  FormHistorialCajas:=nil;
end;

procedure TFormHistorialCajas.FormShow(Sender: TObject);
begin
  BringToFront;
  lbArchivos.Clear;
  LeerArchivos.Execute;
  if lbArchivos.Items.Count>0 then
    begin
      lbArchivos.SetFocus;
      lbArchivos.ItemIndex:=0;
      lbArchivosClick(Sender);
    end;
end;

procedure TFormHistorialCajas.lbArchivosClick(Sender: TObject);
var Cab,Egr,Ing:String;
i:integer;
begin
  Cab:=sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  Egr:=Copy(Cab,1,Pos('_',Cab)-1)+'_EGR.xm_';
  Ing:=Copy(Cab,1,Pos('_',Cab)-1)+'_ING.xm_';

  CDSCajaCab.LoadFromFile(Cab);
  CDSCajaCab.Filtered:=False;
  CDSCajaCab.Filter:='ID_CAJA='+IntToStr(FIDCaja);
  CDSCajaCab.Filtered:=True;


  CDSCajaDetEgresos.LoadFromFile(Egr);
  CDSCajaDetIngresos.LoadFromFile(Ing);

  for I := 0 to CDSCajaDetIngresos.FieldCount - 1 do
    begin
      CDSCajaDetIngresos.Fields[I].Visible:=False;
      if CDSCajaDetIngresos.Fields[I].FieldName='FECHA' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='Fecha';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=10;
        end
      else
      if CDSCajaDetIngresos.Fields[I].FieldName='TIPO_CPBTE' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='Tp';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=5;
        end
      else
      if CDSCajaDetIngresos.Fields[I].FieldName='CLASE_CPBTE' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='Cl';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=5;
        end
      else
      if CDSCajaDetIngresos.Fields[I].FieldName='NRO_CPBTE' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='Nro.Cpbte';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=14;
        end
      else
      if CDSCajaDetIngresos.Fields[I].FieldName='DETALLE' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='Detalle';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=50;
        end
      else
      if CDSCajaDetIngresos.Fields[I].FieldName='DEBE' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='Debe';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=12;
          TNumericField(CDSCajaDetIngresos.Fields[I]).DisplayFormat := ',0.00;,0.00;-';
        end
      else
      if CDSCajaDetIngresos.Fields[I].FieldName='HABER' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='Haber';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=12;
          TNumericField(CDSCajaDetIngresos.Fields[I]).DisplayFormat := ',0.00;,0.00;-';
        end
      else
      if CDSCajaDetIngresos.Fields[I].FieldName='ID_COMPROBANTE' then
        begin
          CDSCajaDetIngresos.Fields[I].Visible     :=True;
          CDSCajaDetIngresos.Fields[I].DisplayLabel:='ID Cpbte';
          CDSCajaDetIngresos.Fields[I].DisplayWidth:=12;
        end;

    end;

  for I := 0 to CDSCajaDetEgresos.FieldCount - 1 do
    begin
      CDSCajaDetEgresos.Fields[I].Visible:=False;
      if CDSCajaDetEgresos.Fields[I].FieldName='FECHA' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible     :=True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel:='Fecha';
          CDSCajaDetEgresos.Fields[I].DisplayWidth:=10;
        end
      else
      if CDSCajaDetEgresos.Fields[I].FieldName='TIPO_CPBTE' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible     :=True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel:='Tp';
          CDSCajaDetEgresos.Fields[I].DisplayWidth:=5;
        end
      else
      if CDSCajaDetEgresos.Fields[I].FieldName='CLASE_CPBTE' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible     :=True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel:='Cl';
          CDSCajaDetEgresos.Fields[I].DisplayWidth:=5;
        end
      else
      if CDSCajaDetEgresos.Fields[I].FieldName='NRO_CPBTE' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible     :=True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel:='Nro.Cpbte';
          CDSCajaDetEgresos.Fields[I].DisplayWidth:=14;
        end
      else
      if CDSCajaDetEgresos.Fields[I].FieldName='DETALLE' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible     :=True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel:='Detalle';
          CDSCajaDetEgresos.Fields[I].DisplayWidth:=50;
        end
      else
      if CDSCajaDetEgresos.Fields[I].FieldName='DEBE' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible     :=True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel:='Debe';
          CDSCajaDetEgresos.Fields[I].DisplayWidth:=12;
          TNumericField(CDSCajaDetEgresos.Fields[I]).DisplayFormat := ',0.00;,0.00;-';
        end
      else
      if CDSCajaDetEgresos.Fields[I].FieldName='HABER' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible     :=True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel:='Haber';
          CDSCajaDetEgresos.Fields[I].DisplayWidth:=12;
          TNumericField(CDSCajaDetEgresos.Fields[I]).DisplayFormat := ',0.00;,0.00;-';
        end
      else
      if CDSCajaDetEgresos.Fields[I].FieldName='ID_COMPROBANTE' then
        begin
          CDSCajaDetEgresos.Fields[I].Visible      := True;
          CDSCajaDetEgresos.Fields[I].DisplayLabel := 'ID Cpbte';
          CDSCajaDetEgresos.Fields[I].DisplayWidth := 12;
        end

    end;

end;

procedure TFormHistorialCajas.LeerArchivosExecute(Sender: TObject);
var
  Busqueda: TSearchRec;
  iResultado: Integer;
begin
  // Nos aseguramos que termine en contrabarra
 // lbComprobante.Caption:='...';
  lbArchivos.Clear;
  sDirectorio := FDirectorio+'\';
  iResultado  := FindFirst( sDirectorio + IntToStr(IDCaja)+'(*.xml', faAnyFile, Busqueda );

  while iResultado = 0 do
  begin
    // ¿Ha encontrado un archivo y no es un directorio?
    if ( Busqueda.Attr and faArchive = faArchive ) and
       ( Busqueda.Attr and faDirectory <> faDirectory ) then
      lbArchivos.Items.Add(Busqueda.Name);
    iResultado := FindNext( Busqueda );
  end;
  FindClose( Busqueda );

end;


end.
