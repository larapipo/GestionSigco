unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, JvExControls, JvGradient, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    lbComprobante: TLabel;
    lbArchivos: TListBox;
    dbgDet: TJvDBGrid;
    Panel1: TPanel;
    JvGradient1: TJvGradient;
    btLeer: TBitBtn;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    ActionList1: TActionList;
    LeerArchivos: TAction;
    procedure btLeerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbArchivosClick(Sender: TObject);
    procedure LeerArchivosExecute(Sender: TObject);
  private
    FCDSDetalle : TClientDataSet;
    FCDSCabecera: TClientDataSet;
    FDirectorio: string;
    { Private declarations }
  public
    sDirectorio:String;
    { Public declarations }
  published
    property CDSCabecera:TClientDataSet read FCDSCabecera write FCDSCabecera;
    property CDSDetalle :TClientDataSet read FCDSDetalle write FCDSDetalle;
    property Directorio :string read FDirectorio write FDirectorio;

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}



procedure TForm2.FormShow(Sender: TObject);
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

procedure TForm2.lbArchivosClick(Sender: TObject);
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

procedure TForm2.LeerArchivosExecute(Sender: TObject);
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
