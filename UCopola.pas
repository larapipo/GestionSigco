unit UCopola;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Data.DB, Data.Win.ADODB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, FireDAC.Stan.StorageBin,
  Datasnap.DBClient, Vcl.DBGrids, DBAdvGrid, Vcl.Mask, JvExMask, JvToolEdit,IniFiles,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCProgressBar;

type
  TFormLeerCopola = class(TFormABMBase)
    mtCabecera: TFDMemTable;
    ClientDataSet1: TClientDataSet;
    pcImportacion: TPageControl;
    pagBorrador: TTabSheet;
    pagTablas: TTabSheet;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    sgCabecera: TAdvStringGrid;
    sgProveedores: TAdvStringGrid;
    Splitter2: TSplitter;
    sgDetalle: TAdvStringGrid;
    DSCabecera: TDataSource;
    dbgDetalle: TDBAdvGrid;
    dbgCabecera: TDBAdvGrid;
    mtLinea: TFDMemTable;
    DSLinea: TDataSource;
    mtProveedor: TFDMemTable;
    DSProveedor: TDataSource;
    pnProveedor: TPanel;
    dbgProveedor: TDBAdvGrid;
    pnPieTablas: TPanel;
    pagResultado: TTabSheet;
    sgResultado: TAdvStringGrid;
    pnConfiguracion: TPanel;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edCabecera: TJvFilenameEdit;
    edDetalle: TJvFilenameEdit;
    edProveedores: TJvFilenameEdit;
    JvDBStatusLabel1: TJvDBStatusLabel;
    SaveDialog1: TSaveDialog;
    pnPieResultado: TPanel;
    btExportarExcel: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter4: TSplitter;
    Splitter3: TSplitter;
    pcGeneral: TPageControl;
    pagCompras: TTabSheet;
    pagVentas: TTabSheet;
    pnIzq: TPanel;
    pnPieVenta: TPanel;
    pnDer: TPanel;
    Splitter5: TSplitter;
    pnCab_1: TPanel;
    Splitter6: TSplitter;
    Panel7: TPanel;
    pnCabVentas: TPanel;
    pnDetVentas: TPanel;
    sgCabeceraVentas: TAdvStringGrid;
    sgVentasDetalle: TAdvStringGrid;
    Panel8: TPanel;
    sgClientes: TAdvStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edCabecerasVta: TJvFilenameEdit;
    edDetalleVentas: TJvFilenameEdit;
    edClientes: TJvFilenameEdit;
    PageControl1: TPageControl;
    pgaBorradorVentas: TTabSheet;
    TabSheet1: TTabSheet;
    spIngresarCliente: TFDStoredProc;
    AltaClientes: TAction;
    pgProgreso: TTMSFNCProgressBar;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    spIngresarProveedor: TFDStoredProc;
    AltaProveedores: TAction;
    BitBtn2: TBitBtn;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btExportarExcelClick(Sender: TObject);
    procedure sgResultadoFooterCalc(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure sgCabeceraGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure AltaClientesExecute(Sender: TObject);
    procedure AltaProveedoresExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista : TStringList;
  end;

var
  FormLeerCopola: TFormLeerCopola;

implementation

{$R *.dfm}
uses UDMain_FD, DMImportacion_Input;

procedure TFormLeerCopola.AltaClientesExecute(Sender: TObject);
var     r:Integer;
Localidad:TLocalidad;
begin
  inherited;
  if sgClientes.RowCount>1 then
    begin
      lista          := TStringList.Create;
      pgProgreso.Minimum := 0;
      pgProgreso.Minimum := sgClientes.RowCount-1;
      lista.Clear;
      for r := 1 to sgClientes.RowCount-1 do
        begin
          pgProgreso.Value:=r;
          Application.ProcessMessages;
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spIngresarCliente.Close;
            spIngresarCliente.ParamByName('CODIGO').AsString       := sgClientes.Cells[0,r];
            spIngresarCliente.ParamByName('NOMBRE').AsString       := sgClientes.Cells[1,r];
            spIngresarCliente.ParamByName('RAZON_SOCIAL').AsString := sgClientes.Cells[1,r];
            spIngresarCliente.ParamByName('DIRECCION').AsString    := sgClientes.Cells[3,r];
            CASE StrToInt(sgClientes.Cells[13,r]) OF
              1:spIngresarCliente.ParamByName('TIPO_IVA').AsInteger    :=1;
              2:spIngresarCliente.ParamByName('TIPO_IVA').AsInteger    :=2;
              3:spIngresarCliente.ParamByName('TIPO_IVA').AsInteger    :=3;
              4:spIngresarCliente.ParamByName('TIPO_IVA').AsInteger    :=4;
              5:spIngresarCliente.ParamByName('TIPO_IVA').AsInteger    :=3;
              6:spIngresarCliente.ParamByName('TIPO_IVA').AsInteger    :=3;
            END;
            spIngresarCliente.ParamByName('CUIT').Value            := sgClientes.Cells[9,r];

            if DMMain_FD.GetLocalidad_Nombre(sgClientes.Cells[4,r],Localidad) then
              begin
                spIngresarCliente.ParamByName('C_POSTAL').Value    := Localidad.Codigo_Postal;
                spIngresarCliente.ParamByName('LOCALIDAD').Value   := AnsiLeftStr(Localidad.Detalle,15);
                spIngresarCliente.ParamByName('ID_POSTAL').Value   := Localidad.ID;
              end
            else
              if DMMain_FD.GetLocalidad_Nombre('MAR DEL PLATA',Localidad) then
                begin
                  spIngresarCliente.ParamByName('C_POSTAL').Value    := '7600';
                  spIngresarCliente.ParamByName('LOCALIDAD').Value   := 'MAR DEL PLATA';
                  spIngresarCliente.ParamByName('ID_POSTAL').Value   := Localidad.ID;
                 end;


            spIngresarCliente.ParamByName('SUCURSAL').AsInteger    := DMMain_FD.SucursalPorDef;

            spIngresarCliente.ParamByName('TELEFONO').Value        := AnsiLeftStr(sgClientes.Cells[6,r],10);
            spIngresarCliente.ParamByName('OBSERVACIONES').Value   := '';
            spIngresarCliente.ParamByName('VENDEDOR').Value        := '';
            spIngresarCliente.ParamByName('MAIL').Value            := '';

            spIngresarCliente.ExecProc;

            DMMain_FD.fdcGestion.Commit;

            spIngresarCliente.Close;
          except
            lista.Add('Fallo de Gravacion ...'+
                       AnsiRightStr('000000'+sgClientes.Cells[ 0,r],6)+'-'+
                       sgClientes.Cells[ 1,r]);
            DMMain_FD.fdcGestion.Rollback;
            spIngresarCliente.Close;
          end;
        end;
      if Assigned(Lista) then
        FreeAndNil(Lista);
    end;
  pgProgreso.Value:=0;

end;



procedure TFormLeerCopola.AltaProveedoresExecute(Sender: TObject);
var     r:Integer;
Localidad:TLocalidad;
begin
  inherited;
  if sgProveedores.RowCount>1 then
    begin
      lista          := TStringList.Create;
      pgProgreso.Minimum := 0;
      pgProgreso.Minimum := sgProveedores.RowCount-1;
      lista.Clear;
      for r := 1 to sgProveedores.RowCount-1 do
        begin
          pgProgreso.Value:=r;
          Application.ProcessMessages;
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spIngresarProveedor.Close;
            spIngresarProveedor.ParamByName('CODIGO').AsString       := sgProveedores.Cells[0,r];
            spIngresarProveedor.ParamByName('NOMBRE').AsString       := sgProveedores.Cells[1,r];
            spIngresarProveedor.ParamByName('RAZONSOCIAL').AsString  := sgProveedores.Cells[1,r];
            spIngresarProveedor.ParamByName('DIRECCION').AsString    := sgProveedores.Cells[3,r];
            CASE StrToInt(sgProveedores.Cells[13,r]) OF
              1:spIngresarProveedor.ParamByName('CON_IVA').AsInteger    :=1;
              2:spIngresarProveedor.ParamByName('CON_IVA').AsInteger    :=2;
              3:spIngresarProveedor.ParamByName('CON_IVA').AsInteger    :=3;
              4:spIngresarProveedor.ParamByName('CON_IVA').AsInteger    :=4;
              5:spIngresarProveedor.ParamByName('CON_IVA').AsInteger    :=3;
              6:spIngresarProveedor.ParamByName('CON_IVA').AsInteger    :=3;
            END;
            spIngresarProveedor.ParamByName('CUIT').Value            := sgProveedores.Cells[8,r];

            if DMMain_FD.GetLocalidad_Nombre(sgProveedores.Cells[4,r],Localidad) then
              begin
                spIngresarProveedor.ParamByName('CPOSTAL').Value        := Localidad.Codigo_Postal;
              end
            else
              begin
                spIngresarProveedor.ParamByName('CPOSTAL').Value        := '7600';
              end;

            spIngresarProveedor.ParamByName('OBSERVACIONES').Value   :='';
            spIngresarProveedor.ParamByName('MAIL').Value            :='';

            spIngresarProveedor.ExecProc;

            DMMain_FD.fdcGestion.Commit;
            spIngresarProveedor.Close;
          except
            lista.Add('Fallo de Gravacion ...'+
                          AnsiRightStr('000000'+sgClientes.Cells[ 0,r],6)+'-'+
                          sgClientes.Cells[ 1,r]);
            DMMain_FD.fdcGestion.Rollback;
            spIngresarProveedor.Close;
          end;
        end;
    end;
  pgProgreso.Value:=0;
end;

procedure TFormLeerCopola.btExportarExcelClick(Sender: TObject);
begin
  inherited;
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      sgResultado.SaveToXLS(SaveDialog1.FileName);
end;

procedure TFormLeerCopola.BuscarExecute(Sender: TObject);
var r,c:integer;
    i  :integer;

begin
  inherited;
  Screen.Cursor:=crHourGlass;
  if pcGeneral.ActivePageIndex=0 then
    begin

      sgCabecera.LoadFromCSV(edCabecera.Text);
      sgDetalle.LoadFromCSV(edDetalle.text);
      sgProveedores.LoadFromCSV(edProveedores.Text);

      mtCabecera.Close;
      mtCabecera.FieldDefs.Clear;
      for c:= 0 to sgCabecera.ColCount - 1 do
        begin
          sgCabecera.Cells[c,0];
          mtCabecera.FieldDefs.Add(sgCabecera.Cells[c,0],ftString,50,False);
        end;
      mtCabecera.Open;
      for r:= 1 to sgCabecera.RowCount - 1 do
      begin
        mtCabecera.Append;
        for c:= 0 to sgCabecera.ColCount - 1 do
          begin
            mtCabecera.Fields[c].Value:=sgCabecera.Cells[c,r];
          end;
        mtCabecera.Post;
      end;

      mtLinea.Close;
      mtLinea.FieldDefs.Clear;
      for c:= 0 to sgDetalle.ColCount - 1 do
        begin
          sgDetalle.Cells[c,0];
          mtLinea.FieldDefs.Add(sgDetalle.Cells[c,0],ftString,50,False);
        end;
      mtLinea.Open;
      for r:= 1 to sgDetalle.RowCount - 1 do
      begin
        mtLinea.Append;
        for c:= 0 to sgDetalle.ColCount - 1 do
          begin
            mtLinea.Fields[c].Value:=sgDetalle.Cells[c,r];
          end;
        mtLinea.Post;
      end;

      mtProveedor.Close;
      mtProveedor.FieldDefs.Clear;
      for c:= 0 to sgProveedores.ColCount - 1 do
        begin
          sgProveedores.Cells[c,0];
          mtProveedor.FieldDefs.Add(sgProveedores.Cells[c,0],ftString,50,False);
        end;
      mtProveedor.Open;
      for r:= 1 to sgProveedores.RowCount - 1 do
      begin
        mtProveedor.Append;
        for c:= 0 to sgProveedores.ColCount - 1 do
          begin
            mtProveedor.Fields[c].Value:=sgProveedores.Cells[c,r];
          end;
        mtProveedor.Post;
      end;

      mtCabecera.IndexFieldNames := 'CODPROV;BOCA;FACTURA';

      mtLinea.MasterSource       := DSCabecera;
      mtLinea.MasterFields       := 'CODPROV;BOCA;FACTURA';;
      mtLinea.IndexFieldNames    := 'PROVEED;BOCA;FACTURA';

      mtProveedor.MasterSource       := DSCabecera;
      mtProveedor.MasterFields       := 'CODPROV';;
      mtProveedor.IndexFieldNames    := 'CODIGO';

      // comienzo de generar archivo de exportacion

      mtCabecera.First;
      mtCabecera.IndexFieldNames:= 'FECHA';
      sgResultado.Row           := 0;
      r:= sgResultado.Row;
      while not(mtCabecera.Eof) do
        begin
          sgResultado.AddRow;
          if mtCabecera.FieldByName('tipo_compr').AsString = 'FA' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'FC'
          else
          if mtCabecera.FieldByName('tipo_compr').AsString = 'FC' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'FC'
          else
          if mtCabecera.FieldByName('tipo_compr').AsString = 'FB' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'FC'
          else
          if mtCabecera.FieldByName('tipo_compr').AsString = 'CA' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'NC'
          else
          if mtCabecera.FieldByName('tipo_compr').AsString = 'CB' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'NC'
          else
          if mtCabecera.FieldByName('tipo_compr').AsString = 'DA' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'ND'
          else
          if mtCabecera.FieldByName('tipo_compr').AsString = 'DB' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'ND'
          else
          if mtCabecera.FieldByName('tipo_compr').AsString = 'DC' Then
            sgResultado.Cells[sgResultado.ColumnByHeader('tp'),r] := 'ND';

          sgResultado.Cells[sgResultado.ColumnByHeader('letra'),r]        := Copy(mtCabecera.FieldByName('tipo_compr').Value,2,1);
          sgResultado.Cells[sgResultado.ColumnByHeader('prefijo'),r]      := mtCabecera.FieldByName('boca').Value;
          sgResultado.Cells[sgResultado.ColumnByHeader('numero'),r]       := mtCabecera.FieldByName('factura').Value;
          sgResultado.Cells[sgResultado.ColumnByHeader('fecha'),r]        := mtCabecera.FieldByName('fecha').Value;
          sgResultado.Cells[sgResultado.ColumnByHeader('nombre'),r]       := mtProveedor.FieldByName('RAZONSOC').Value;
          sgResultado.Cells[sgResultado.ColumnByHeader('cuit'),r]         := mtProveedor.FieldByName('cuit').Value;
          sgResultado.Cells[sgResultado.ColumnByHeader('condicioniva'),r] := mtProveedor.FieldByName('categiva').Value;
          if mtProveedor.FieldByName('categiva').Value=0 then
            sgResultado.Cells[sgResultado.ColumnByHeader('condicioniva'),r] := '1';


          sgResultado.Cells[sgResultado.ColumnByHeader('iva21'),r]        := '0';
          sgResultado.Cells[sgResultado.ColumnByHeader('iva105'),r]       := '0';
          sgResultado.Cells[sgResultado.ColumnByHeader('exento'),r]       := '0';
          sgResultado.Cells[sgResultado.ColumnByHeader('iva27'),r]        := '0';
          sgResultado.Cells[sgResultado.ColumnByHeader('iibb'),r]         := '0';
          sgResultado.Cells[sgResultado.ColumnByHeader('periva'),r]       := '0';

          mtLinea.First;
          while not(mtLinea.Eof) do
            begin
              if Trunc(StrToFloat(mtLinea.FieldByName('Iva').Value))=21 then
                sgResultado.Cells[sgResultado.ColumnByHeader('iva21'),r]        := mtLinea.FieldByName('IMPORTEIVA').Value;
              if Trunc(StrToFloat(mtLinea.FieldByName('Iva').Value)*10)=105 then
                sgResultado.Cells[sgResultado.ColumnByHeader('iva105'),r]       := mtLinea.FieldByName('IMPORTEIVA').Value;
              if Trunc(StrToFloat(mtLinea.FieldByName('Iva').Value))=27 then
                sgResultado.Cells[sgResultado.ColumnByHeader('iva27'),r]        := mtLinea.FieldByName('IMPORTEIVA').Value;
              if Trunc(StrToFloat(mtLinea.FieldByName('PRECIO').Value))=0 then
                begin
                  if AnsiPos('bruto',AnsiLowerCase(mtLinea.FieldByName('DESCRIP').Value))>0 then
                    sgResultado.Cells[sgResultado.ColumnByHeader('iibb'),r]         := mtLinea.FieldByName('NETO').Value;
                  if AnsiPos('iva',AnsiLowerCase(mtLinea.FieldByName('DESCRIP').Value))>0 then
                    sgResultado.Cells[sgResultado.ColumnByHeader('periva'),r]       := mtLinea.FieldByName('NETO').Value;
                  if AnsiPos('interno',AnsiLowerCase(mtLinea.FieldByName('DESCRIP').Value))>0 then
                    sgResultado.Cells[sgResultado.ColumnByHeader('exento'),r]       := mtLinea.FieldByName('NETO').Value;
                end;
              mtLinea.Next;
            end;

          sgResultado.Cells[sgResultado.ColumnByHeader('total'),r]        := mtCabecera.FieldByName('total').Value;

          r := r + 1;

          mtCabecera.Next;
        end;


      for I := 0 to sgCabecera.ColCount-1 do
        sgCabecera.AutoSizeCol(I,5);
      for I := 0 to sgDetalle.ColCount-1 do
        sgDetalle.AutoSizeCol(I,5);
      for I := 0 to sgProveedores.ColCount-1 do
        sgProveedores.AutoSizeCol(I,5);
      for I := 0 to dbgCabecera.ColCount-1 do
        dbgCabecera.AutoSizeCol(I,5);
      for I := 0 to dbgDetalle.ColCount-1 do
        dbgDetalle.AutoSizeCol(I,5);
      for I := 0 to dbgProveedor.ColCount-1 do
        dbgProveedor.AutoSizeCol(I,5);
    end
  else
    begin
      sgCabeceraVentas.LoadFromCSV(edCabecerasVta.Text);
      sgVentasDetalle.LoadFromCSV(edDetalleVentas.text);
      sgClientes.LoadFromCSV(edClientes.Text);
      for I := 0 to sgCabeceraVentas.ColCount-1 do
        sgCabeceraVentas.AutoSizeCol(I,5);
      for I := 0 to sgVentasDetalle.ColCount-1 do
        sgVentasDetalle.AutoSizeCol(I,5);
      for I := 0 to sgClientes.ColCount-1 do
       sgClientes.AutoSizeCol(I,5);

    end;

  Screen.Cursor:=crDefault;

end;

procedure TFormLeerCopola.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ConfiguracionCopola.ini');
  ArchivoIni.WriteString('cabecera', 'path', edCabecera.Text);
  ArchivoIni.WriteString('detalle', 'path', edDetalle.Text);
  ArchivoIni.WriteString('proveedores', 'path', edProveedores.Text);

  ArchivoIni.WriteString('cabeceraVta', 'path', edCabecerasVta.Text);
  ArchivoIni.WriteString('detalleVta', 'path', edDetalleVentas.Text);
  ArchivoIni.WriteString('Clientes', 'path', edClientes.Text);

  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormLeerCopola.FormCreate(Sender: TObject);
begin
  inherited;
  AUtoSize:=False;
  ArchivoIni            := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ConfiguracionCopola.ini');
  edCabecera.Text       := ArchivoIni.ReadString('cabecera', 'path', '');
  edDetalle.Text        := ArchivoIni.ReadString('detalle', 'path', '');
  edProveedores.Text    := ArchivoIni.ReadString('proveedores', 'path', '');

  edCabecerasVta.Text   := ArchivoIni.ReadString('cabeceraVta', 'path', '');
  edDetalleVentas.Text  := ArchivoIni.ReadString('detalleVta', 'path', '');
  edClientes.Text       := ArchivoIni.ReadString('clientes', 'path', '');

  ArchivoIni.Free;

  sgResultado.FloatingFooter.Visible        := true;
  sgResultado.FloatingFooter.ColumnCalc[8]  := acSum;
  sgResultado.FloatingFooter.ColumnCalc[9]  := acSum;
  sgResultado.FloatingFooter.ColumnCalc[10] := acSum;
  sgResultado.FloatingFooter.ColumnCalc[11] := acSum;
  sgResultado.FloatingFooter.ColumnCalc[12] := acSum;
  sgResultado.FloatingFooter.ColumnCalc[13] := acSum;
  sgResultado.FloatingFooter.ColumnCalc[14] := acSUM;

  pcGeneral.ActivePageIndex     := 0;
  pcImportacion.ActivePageIndex := 0;
end;

procedure TFormLeerCopola.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLeerCopola:=nil;
end;

procedure TFormLeerCopola.sgResultadoFooterCalc(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
var I:Integer;
m:extended;
begin
  inherited;
   m := 0;
   for i := sgResultado.FixedRows to ARow do
     begin
       m := m + sgResultado.Floats[ACol,i];
     end;
    Value := FormatFloat(',0.00',m);
end;

procedure TFormLeerCopola.sgCabeceraGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  inherited;
  case ACol of
    10..15:HAlign:=taRightJustify;
  end;
end;

end.
