unit UListarFacturasFrezadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, DBClient, StdCtrls, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, DBCtrls, JvExControls, JvGradient,
  System.Actions;

type
  TFormListadoFacturasClonadas = class(TForm)
    pnPrincipal: TPanel;
    lbArchivos: TListBox;
    CDSCab: TClientDataSet;
    CDSDet: TClientDataSet;
    ActionList1: TActionList;
    LeerArchivos: TAction;
    DSCab: TDataSource;
    DSDet: TDataSource;
    dbgDet: TJvDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Borrar: TAction;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    btLeer: TBitBtn;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    JvGradient1: TJvGradient;
    lbComprobante: TLabel;
    procedure LeerArchivosExecute(Sender: TObject);
    procedure lbArchivosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure lbArchivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FCDSCabecera:TClientDataSet;
    FCDSDetalle :TClientDataSet;
    FDirectorio:String;
  public
    { Public declarations }
    sDirectorio:String;
  published
    property CDSCabecera:TClientDataSet read FCDSCabecera write FCDSCabecera;
    property CDSDetalle :TClientDataSet read FCDSDetalle write FCDSDetalle;
    property Directorio :string read FDirectorio write FDirectorio;
  end;

var
  FormListadoFacturasClonadas: TFormListadoFacturasClonadas;

implementation

{$R *.dfm}


procedure TFormListadoFacturasClonadas.btOkClick(Sender: TObject);
begin
  FCDSCabecera:=CDSCab;
  FCDSDetalle :=CDSDet;
end;

procedure TFormListadoFacturasClonadas.BorrarExecute(Sender: TObject);
var cab,det:string;
begin
  Cab:=sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  Det:=Copy(Cab,1,Pos('-',Cab)-1)+'.xm_';
  DeleteFile(cab);
  DeleteFile(det);

  lbArchivos.DeleteSelected;
  lbArchivos.Clear;
  LeerArchivos.Execute;
  if lbArchivos.Count>0 Then
    begin
     lbArchivos.ItemIndex:=0;
     lbArchivosClick(Sender);
    end
  else
    begin
      CDSDet.EmptyDataSet;

    end;
end;

procedure TFormListadoFacturasClonadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action:=caFree;
end;

procedure TFormListadoFacturasClonadas.FormCreate(Sender: TObject);
begin
  AutoSize:=True;

end;

procedure TFormListadoFacturasClonadas.FormKeyPress(Sender: TObject;
  var Key: Char);
var Cab,Det:String;
i:integer;
begin
  Cab:=sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  Det:=Copy(Cab,1,Pos('-',Cab)-1)+'.xm_';
  DeleteFile(cab);
  DeleteFile(det);

  lbArchivos.DeleteSelected;
  lbArchivos.Clear;
  LeerArchivos.Execute;
  if lbArchivos.Count>0 Then
    begin
     lbArchivos.ItemIndex:=0;
     lbArchivosClick(Sender);
    end
  else
    begin
      CDSDet.EmptyDataSet;
    end;
end;

procedure TFormListadoFacturasClonadas.FormShow(Sender: TObject);
begin
  lbArchivos.Clear;
  LeerArchivos.Execute;
  if lbArchivos.Items.Count>0 then
    begin
      lbArchivos.SetFocus;
      //lbArchivos.ItemIndex:=0;
      lbArchivos.ItemIndex:=0;
      lbArchivosClick(Sender);
    end;
end;

procedure TFormListadoFacturasClonadas.lbArchivosClick(Sender: TObject);
var Cab,Det:String;
i:integer;
begin
  Cab:=sDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  Det:=Copy(Cab,1,Pos('-',Cab)-1)+'.xm_';
  CDSCab.LoadFromFile(Cab);
  CDSDet.LoadFromFile(Det);
//  for I := 0 to dbgCab.Columns.Count - 1 do
//    begin
//      dbgCab.Columns.Items[i].Visible:=False;
//      if dbgCab.Columns.Items[i].FieldName='CODIGO' then
//        begin
//          dbgCab.Columns.Items[i].Visible:=True;
//          dbgCab.Columns.Items[i].Title.Caption:='Codigo';
//          dbgCab.Columns.Items[i].Title.Alignment:=taCenter;
//        end;
//      if dbgCab.Columns.Items[i].FieldName='NOMBRE' then
//        begin
//          dbgCab.Columns.Items[i].Visible:=True;
//          dbgCab.Columns.Items[i].Title.Caption:='Nombre';
//          dbgCab.Columns.Items[i].Title.Alignment:=taCenter;
//        end;
//      if dbgCab.Columns.Items[i].FieldName='TOTAL' then
//        begin
//          dbgCab.Columns.Items[i].Visible:=True;
//          dbgCab.Columns.Items[i].Title.Caption :='Total';
//          dbgCab.Columns.Items[i].Title.Alignment:=taCenter;
//          TNumericField(dbgCab.Fields[i]).DisplayFormat := ',0.00';
//    //      CDSCab.Fields[i].DisplayText:=',0.00';
//        end;
//    end;
//
   for I := 0 to dbgDet.Columns.Count - 1 do
    begin
      dbgDet.Columns.Items[i].Visible:=False;
      if dbgDet.Columns.Items[i].FieldName='CODIGOARTICULO' then
        begin
          dbgDet.Columns.Items[i].Visible:=True;
          dbgDet.Columns.Items[i].Title.Caption:='Codigo';
          dbgDet.Columns.Items[i].Title.Alignment:=taCenter;
        end;
      if dbgDet.Columns.Items[i].FieldName='DETALLE' then
        begin
          dbgDet.Columns.Items[i].Visible:=True;
          dbgDet.Columns.Items[i].Title.Caption:='Nombre';
          dbgDet.Columns.Items[i].Title.Alignment:=taCenter;
        end;
      if dbgDet.Columns.Items[i].FieldName='CANTIDAD' then
        begin
          dbgDet.Columns.Items[i].Visible:=True;
          dbgDet.Columns.Items[i].Title.Caption :='Cant.';
          dbgDet.Columns.Items[i].Title.Alignment:=taCenter;
          TNumericField(dbgDet.Fields[i]).DisplayFormat := ',0.00';
          dbgdet.Columns.Items[i].Width :=90;
    //      CDSCab.Fields[i].DisplayText:=',0.00';
        end;
    end;

  lbComprobante.Caption:=CDSCab.FieldByName('TipoCpbte').Value+' '+
                         CDSCab.FieldByName('ClaseCpbte').Value+' '+
                         Copy(CDSCab.FieldByName('NroCpbte').Value,1,1)+'-'+
                         Copy(CDSCab.FieldByName('NroCpbte').Value,2,4)+'-'+
                         Copy(CDSCab.FieldByName('NroCpbte').Value,6,8);

                      
end;

procedure TFormListadoFacturasClonadas.lbArchivosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_DELETE then
    Borrar.Execute;
end;

procedure TFormListadoFacturasClonadas.LeerArchivosExecute(Sender: TObject);
var
  Busqueda   : TSearchRec;
  iResultado : Integer;
begin
  // Nos aseguramos que termine en contrabarra
  lbComprobante.Caption:='...';
  lbArchivos.Clear;
  sDirectorio := FDirectorio+'\';
  iResultado :=  FindFirst( sDirectorio + '*.xml', faAnyFile, Busqueda );

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
