unit URestaurarPapelera;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, JvExControls, JvGradient, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvComponentBase, JvFormMagnet,
  Xml.XMLDoc, Xml.XMLIntf;

type
  TFormRestaurarPapelera = class(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
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
    CDSCab: TClientDataSet;
    CDSDet: TClientDataSet;
    DSDet: TDataSource;
    DSCab: TDataSource;
    Borrar: TAction;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure lbArchivosClick(Sender: TObject);
    procedure LeerArchivosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure lbArchivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

    FCCDSVentaCab,
    FCDSVentaDet,
    FCDSImpuestos,
    FCDSPercepcion,
    FCDSVtaSubDetalle,
    FCDSVtaDetConsig,
    FCDSMov_Carnes,
    FCDSFc_Prod_Det,
    FCDSFc_Prod_Mov,
    FCDSRegFacturas,
    FCDSVentaLote  :TClientDataSet;

    FCDSCajaMov,
    FCDSChe3,
    FCDSMovEfectivo,
    FCDSMovTCredito,
    FCDSTransBco,
    FCDSAjustes    :TClientDataSet;

    FDirectorio: string;
    { Private declarations }
  public
   // sDirectorio:String;
    { Public declarations }
   // procedure CopyClientDataset(Origen, Destino: TClientDataset);
  published
    procedure EnsureFieldsExist(RefDS, TargetDS: TClientDataSet;ArchivoXML:String);

    property CDSVentaCab:TClientDataSet read FCCDSVentaCab write FCCDSVentaCab;
    property CDSVentaDet:TClientDataSet read FCDSVentaDet write FCDSVentaDet;
    property CDSImpuestos:TClientDataSet read FCDSImpuestos write FCDSImpuestos;
    property CDSPercepcion:TClientDataSet read FCDSPercepcion write FCDSPercepcion;
    property CDSVtaSubDetalle:TClientDataSet read FCDSVtaSubDetalle write FCDSVtaSubDetalle;
    property CDSVtaDetConsig:TClientDataSet read FCDSVtaDetConsig write FCDSVtaDetConsig;
    property CDSMov_Carnes:TClientDataSet read FCDSMov_Carnes write FCDSMov_Carnes;
    property CDSFc_Prod_Det:TClientDataSet read FCDSFc_Prod_Det write FCDSFc_Prod_Det;
    property CDSFc_Prod_Mov:TClientDataSet read FCDSFc_Prod_Mov write FCDSFc_Prod_Mov;
    property CDSRegFacturas:TClientDataSet read FCDSRegFacturas write FCDSRegFacturas;
    property CDSVentaLote :TClientDataSet read FCDSVentaLote write FCDSVentaLote;

    property CDSCajaMov :TClientDataSet read FCDSCajaMov write FCDSCajaMov;
    property CDSChe3 :TClientDataSet read FCDSChe3 write FCDSChe3;
    property CDSMovEfectivo :TClientDataSet read FCDSMovEfectivo write FCDSMovEfectivo;
    property CDSMovTCredito :TClientDataSet read FCDSMovTCredito write FCDSMovTCredito;
    property CDSTransBco :TClientDataSet read FCDSTransBco write FCDSTransBco;
    property CDSAjustes :TClientDataSet read FCDSAjustes write FCDSAjustes;



    property Directorio :string read FDirectorio write FDirectorio;
  end;

var
  FormRestaurarPapelera: TFormRestaurarPapelera;

implementation

{$R *.dfm}
uses UDMain_FD;




procedure TFormRestaurarPapelera.BorrarExecute(Sender: TObject);
var cab,det,Id_Str:string;
begin
  Cab     := FDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  Id_str := Copy(Cab,Pos('(',Cab), (Pos(')',Cab)+1) - Pos('(',Cab));

  DeleteFile(cab);
  if Tag=0 then
    begin
      DeleteFile(FDirectorio+'\'+Id_str+'FcVtaDet.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FcVtaImp.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FcPercepcion.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FCVtaSubDetalle.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FcVtaDetConsig.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FCPMov_Carnes.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FC_Prod_Det.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'Fc_Prod_Mov.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FCRegFacturas.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'FCVentaLote.bin');

      DeleteFile(FDirectorio+'\'+Id_str+'CajaMov.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'Che3.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'Efectivo.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'TCredito.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'TXBanco.bin');
      DeleteFile(FDirectorio+'\'+Id_str+'Ajuste.bin');
    end
  else
    if Tag>0 then
      begin
        DeleteFile(FDirectorio+'\'+Id_str+'ReVtaDet.bin');
        DeleteFile(FDirectorio+'\'+Id_str+'ReVtaImp.bin');
      end;

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


procedure TFormRestaurarPapelera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRestaurarPapelera.FormCreate(Sender: TObject);
begin
  AutoSize         := True;
end;

procedure TFormRestaurarPapelera.FormDestroy(Sender: TObject);
begin
  FormRestaurarPapelera:=nil;
end;

procedure TFormRestaurarPapelera.FormShow(Sender: TObject);
begin
  lbArchivos.Clear;
  LeerArchivos.Execute;
  if lbArchivos.Items.Count>0 then
    begin
      lbArchivos.SetFocus;
      lbArchivos.ItemIndex:=0;
    end;
end;

{
procedure TFormRestaurarPapelera.EnsureFieldsExist(RefDS, TargetDS: TClientDataSet);
var
  I: Integer;
  FieldDef: TFieldDef;
  SourceFieldDef: TFieldDef;
   NewField: TField;
begin
  if TargetDS.Active=True then TargetDS.Active:=False;
  TargetDS.FieldDefs.Update;
  for I := 0 to RefDS.FieldDefs.Count - 1 do
    begin
      FieldDef := RefDS.FieldDefs[I];
      if TargetDS.FindField(FieldDef.Name) = nil then
        begin
          SourceFieldDef := RefDS.FieldDefs[I];
          if TargetDS.FindField(SourceFieldDef.Name) = nil then
            begin
              TargetDS.FieldDefs.Add(
               SourceFieldDef.Name,     // Nombre del campo
               SourceFieldDef.DataType, // Tipo de datos
               SourceFieldDef.Size,     // Tamaño (para strings)
               SourceFieldDef.Required  // Si es obligatorio o no
               );
            end;
        end;

    end;
 TargetDS.FieldDefs.Update;
  // Verificar que hay campos antes de llamar a CreateDataSet
  if TargetDS.FieldDefs.Count > 0 then
    TargetDS.CreateDataSet;
//  else
//    raise Exception.Create('No hay campos definidos en el dataset destino.');


 //   end;
  TargetDS.Active:=True;

end;
 }
{
procedure TFormRestaurarPapelera.EnsureFieldsExist(RefDS, TargetDS: TClientDataSet;ArchivoXML:String);
var
  I: Integer;
  FieldDef: TFieldDef;
  CDSAux:TClientDataSet;
begin
  CDSAux := TClientDataSet.Create(nil);
  CDSAux.CloneCursor(TargetDS,False,True);
  TargetDS.Close;
  for I := 0 to RefDS.FieldDefs.Count - 1 do
  begin
    FieldDef := RefDS.FieldDefs[I];
    if TargetDS.FindField(FieldDef.Name) = nil then
    begin
      TargetDS.FieldDefs.Add(FieldDef.Name, FieldDef.DataType, FieldDef.Size, FieldDef.Required);
    end;
  end;
  TargetDS.Close;
  TargetDS.CreateDataSet;
  TargetDS.Open;
  TargetDS.LoadFromFile(ArchivoXML);
end;
}

{procedure TFormRestaurarPapelera.EnsureFieldsExist(RefDS, TargetDS: TClientDataSet;ArchivoXML:String);
var
  I: Integer;
  FieldDef: TFieldDef;
  CDSAux:TClientDataSet;
begin
  CDSAux:=TClientDataSet.Create(nil);
  CDSAux.CloneCursor(TargetDS,false,true);
  for I := 0 to RefDS.FieldDefs.Count - 1 do
  begin
    FieldDef := RefDS.FieldDefs[I];
    if TargetDS.FindField(FieldDef.Name) = nil then
    begin
      TargetDS.FieldDefs.Add(FieldDef.Name, FieldDef.DataType, FieldDef.Size, FieldDef.Required);
    end;
  end;
//  TargetDS.CreateDataSet;
//  TargetDS.Close;

  TargetDS.Open;
  TargetDS.LoadFromFile(ArchivoXML);
end;
}

procedure TFormRestaurarPapelera.EnsureFieldsExist(RefDS, TargetDS: TClientDataSet; ArchivoXML: String);
var
  I: Integer;
  FieldDef: TFieldDef;
  TempDS: TClientDataSet;
begin
  // Asegurar que `TargetDS` esté abierto SOLO para clonar datos
  if not TargetDS.Active then
  begin
    if FileExists(ArchivoXML) then
      TargetDS.LoadFromFile(ArchivoXML)
    else
      TargetDS.Open;
  end;

  // Clonar datos en un dataset temporal ANTES de cerrar `TargetDS`
  TempDS := TClientDataSet.Create(nil);
  try
    TempDS.CloneCursor(TargetDS, True); // Clonamos los datos mientras está abierto

    // Ahora sí, cerrar `TargetDS` antes de modificar su estructura
    TargetDS.Close;
    TargetDS.FieldDefs.Clear;
    TargetDS.Fields.Clear;

    // Agregar campos que faltan
    for I := 0 to RefDS.FieldDefs.Count - 1 do
    begin
      FieldDef := RefDS.FieldDefs[I];
      if TargetDS.FieldDefs.IndexOf(FieldDef.Name) = -1 then
        TargetDS.FieldDefs.Add(FieldDef.Name, FieldDef.DataType, FieldDef.Size, FieldDef.Required);
    end;

    // Crear la nueva estructura con los nuevos campos
    TargetDS.CreateDataSet;

    // Restaurar los datos desde `TempDS`
    TempDS.First;
    while not TempDS.Eof do
    begin
      TargetDS.Append;
      for I := 0 to TempDS.FieldCount - 1 do
      begin
        if TargetDS.FindField(TempDS.Fields[I].FieldName) <> nil then
          TargetDS.FieldByName(TempDS.Fields[I].FieldName).Value := TempDS.Fields[I].Value;
      end;
      TargetDS.Post;
      TempDS.Next;
    end;

    // Guardar la nueva estructura en el XML
    TargetDS.SaveToFile(ArchivoXML);

  finally
    TempDS.Free;
  end;

  // Reabrir el dataset después de los cambios
  TargetDS.Open;
end;



procedure TFormRestaurarPapelera.lbArchivosClick(Sender: TObject);
var Cab,Id_str,AuxTxt,PathDet:String;
i:integer;
CDSTemporal,CDSTemporal2,CDSTemp3  :TClientDataSet;
begin
  CDSTemporal  :=TClientDataSet.Create(nil);
  CDSTemporal2 :=TClientDataSet.Create(nil);
  CDSTemp3     :=TClientDataSet.Create(nil);

  Cab    := FDirectorio+lbArchivos.Items[lbArchivos.ItemIndex];
  Id_str := Copy(Cab,Pos('(',Cab), (Pos(')',Cab)+1) - Pos('(',Cab));

  if Tag=0 then
    begin
      CDSTemporal.LoadFromFile(Cab);
      EnsureFieldsExist(FCCDSVentaCab,CDSTemporal,Cab);
      FCCDSVentaCab.Data := CDSTemporal.Data;

//      FCCDSVentaCab.LoadFromFile(Cab);

      if FileExists(FDirectorio+'\'+Id_str+'FCVtaDet.bin') then
        FCDSVentaDet.LoadFromFile(FDirectorio+'\'+Id_str+'FcVtaDet.bin');
//      if FileExists(FDirectorio+'\'+Id_str+'FCVtaDet.bin') then
//        begin
//          CDSTemp3.LoadFromFile(FDirectorio+'\'+Id_str+'FcVtaDet.bin');
//          CDSTemp3.Close;
//          CDSTemp3.CreateDataSet;
//          CDSTemp3.SaveToFile(FDirectorio+'\'+Id_str+'FCVtaDet.xml');
//          CDSTemporal2.LoadFromFile(FDirectorio+'\'+Id_str+'FcVtaDet.xml');
//        end;
//      EnsureFieldsExist(FCDSVentaDet,CDSTemporal2,FDirectorio+'\'+Id_str+'FcVtaDet.xml');

//      FCDSVentaDet.Data := CDSTemporal2.Data;

     // FCDSVentaDet.LoadFromFile(FDirectorio+'\'+Id_str+'FcVtaDet.xml');
//      DeleteFile(FDirectorio+'\'+Id_str+'FCVtaDet.xml');

      if FileExists(FDirectorio+'\'+Id_str+'FCVtaImp.bin') then
        FCDSImpuestos.LoadFromFile(FDirectorio+'\'+Id_str+'FcVtaImp.bin');

      if FileExists(FDirectorio+'\'+Id_str+'FcPercepcion.bin') then
        FCDSPercepcion.LoadFromFile(FDirectorio+'\'+Id_str+'FcPercepcion.bin');
      if FileExists(FDirectorio+'\'+Id_str+'FCVtaSubDetalle.bin') then
        FCDSVtaSubDetalle.LoadFromFile(FDirectorio+'\'+Id_str+'FCVtaSubDetalle.bin');
      if FileExists(FDirectorio+'\'+Id_str+'FcVtaDetConsig.bin') then
        FCDSVtaDetConsig.LoadFromFile(FDirectorio+'\'+Id_str+'FcVtaDetConsig.bin');

      if FileExists(FDirectorio+'\'+Id_str+'FCPMov_Carnes.bin') then
        FCDSMov_Carnes.LoadFromFile(FDirectorio+'\'+Id_str+'FCPMov_Carnes.bin');

      FCDSFc_Prod_Det.LoadFromFile(FDirectorio+'\'+Id_str+'FC_Prod_Det.bin');
      FCDSFc_Prod_Mov.LoadFromFile(FDirectorio+'\'+Id_str+'Fc_Prod_Mov.bin');
      FCDSVentaLote.LoadFromFile(FDirectorio+'\'+Id_str+'FCVentaLote.bin');

      if FileExists(FDirectorio+'\'+Id_str+'FCRegFacturas.bin') then
        FCDSRegFacturas.LoadFromFile(FDirectorio+'\'+Id_str+'FCRegFacturas.bin');

      if FileExists(FDirectorio+'\'+Id_str+'CajaMov.bin') then
        FCDSCajaMov.LoadFromFile(FDirectorio+'\'+Id_str+'CajaMov.bin');

      if FileExists(FDirectorio+'\'+Id_str+'Che3.bin') then
        FCDSChe3.LoadFromFile(FDirectorio+'\'+Id_str+'Che3.bin');

      if FileExists(FDirectorio+'\'+Id_str+'Efectivo.bin') then
        FCDSMovEfectivo.LoadFromFile(FDirectorio+'\'+Id_str+'Efectivo.bin');

      if FileExists(FDirectorio+'\'+Id_str+'TCredito.bin') then
        FCDSMovTCredito.LoadFromFile(FDirectorio+'\'+Id_str+'TCredito.bin');

      if FileExists(FDirectorio+'\'+Id_str+'TXBanco.bin') then
        FCDSTransBco.LoadFromFile(FDirectorio+'\'+Id_str+'TXBanco.bin');

      if FileExists(FDirectorio+'\'+Id_str+'Ajuste.bin') then
        FCDSAjustes.LoadFromFile(FDirectorio+'\'+Id_str+'Ajuste.bin');

    end
  else
    if Tag>0 then
      begin
        FCCDSVentaCab.LoadFromFile(Cab);
        FCDSVentaDet.LoadFromFile(FDirectorio+'\'+Id_str+'ReVtaDet.bin');

        if FileExists(FDirectorio+'\'+Id_str+'ReVtaImp.bin') then
          FCDSImpuestos.LoadFromFile(FDirectorio+'\'+Id_str+'ReVtaImp.bin');

      end;

  DMMain_FD.CopyClientDataset(FCDSVentaDet,CDSDet);
  //DMMain_FD.CopyClientDataset(CDSVentaCab,CDSCab);

  CDSCab.Data:=FCCDSVentaCab.Data;
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
  AuxTxt:='';
  lbComprobante.Font.Color:=clBlue;

  if FileExists(FDirectorio+'\'+Id_str+'CajaMov.bin') then
    begin
      AuxTxt:= #13+CDSCajaMov.FieldByName('MUESTRACAJA').AsString+'- Nro.:'+CDSCajaMov.FieldByName('MUESTRANROCAJA').AsString;
        // VERIFICO SI LA CAJA ESTA CERRADA
      btOk.Enabled := True;
      QCaja.Close;
      QCaja.ParamByName('id').Value:=CDSCajaMov.FieldByName('ID_CAJA').Value;
      QCaja.Open;

      if QCajaESTADO.Value=1 Then
        begin
          btOk.Enabled := False;
          AuxTxt       := AuxTxt+'-Caja Cerrada-';
          lbComprobante.Font.Color:=clRed;
        end;
    end;

  if Not(VarIsNull(CDSCab.FieldByName('MUESTRASUCURSAL').Value)) then

  lbComprobante.Caption:=CDSCab.FieldByName('MUESTRASUCURSAL').Value+' '+
                         CDSCab.FieldByName('TipoCpbte').Value+' '+
                         CDSCab.FieldByName('ClaseCpbte').Value+' '+
                         DateToStr(CDSCab.FieldByName('FechaVta').AsDateTime)+' '+
                         CDSCab.FieldByName('Nombre').Value+' - '+
                         Copy(CDSCab.FieldByName('NroCpbte').Value,1,1)+'-'+
                         Copy(CDSCab.FieldByName('NroCpbte').Value,2,4)+'-'+
                         Copy(CDSCab.FieldByName('NroCpbte').Value,6,8)+'....'+
                         FormatFloat(',0.00',CDSCab.FieldByName('Total').AsFloat)+AuxTxt;
  FreeAndNil(CDSTemporal);
  FreeAndNil(CDSTemporal2);
  FreeAndNil(CDSTemp3);


end;

procedure TFormRestaurarPapelera.lbArchivosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key=VK_DELETE then
    Borrar.Execute;
end;

procedure TFormRestaurarPapelera.LeerArchivosExecute(Sender: TObject);
var
  Busqueda   : TSearchRec;
  iResultado : Integer;
begin
  // Nos aseguramos que termine en contrabarra
  lbComprobante.Caption:='...';
  lbArchivos.Clear;
  FDirectorio := FDirectorio+'\';
  iResultado  :=  FindFirst( FDirectorio + '*.xml', faAnyFile, Busqueda );

  while iResultado = 0 do
    begin
      // ¿Ha encontrado un archivo y no es un directorio?
      if ( Busqueda.Attr and faArchive = faArchive ) and
         ( Busqueda.Attr and faDirectory <> faDirectory ) then
        lbArchivos.Items.Add(Busqueda.Name);
      iResultado := FindNext( Busqueda );
    end;
  FindClose( Busqueda );
  lbArchivos.Sorted:=True;
end;

end.
