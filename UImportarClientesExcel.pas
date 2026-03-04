unit UImportarClientesExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, Db, ADODB, StdCtrls, Grids, DBGrids,  
  JvComponentBase, ImgList, ActnList, ComCtrls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvExControls, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, DBXCommon, System.Actions, JvAppStorage, JvAppIniStorage,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid ;

type
  TFormImportarClientesExcel = class(TFormABMBase)
    edPath: TEdit;
    btBuscarArchivo: TSpeedButton;
    DSClientesXLS: TDataSource;
    spAyudaFormato: TSpeedButton;
    OpenDialog: TOpenDialog;
    ImportarClientes: TAction;
    BitBtn1: TBitBtn;
    pnAviso: TPanel;
    Label3: TLabel;
    dbgHelp: TDBGrid;
    pbEstado: TProgressBar;
    QBuscaCliente: TFDQuery;
    spIngresarCliente: TFDStoredProc;
    spIngresarConVenta: TFDStoredProc;
    spLdr: TFDStoredProc;
    dbgClientesXLS: TDBAdvGrid;
    mtClientesXLS: TFDMemTable;
    BuscarArchivo: TAction;
    pnCabecera: TPanel;
    Label1: TLabel;
    stgCLientes: TAdvStringGrid;
    procedure ImportarClientesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure BuscarArchivoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarClientesExcel: TFormImportarClientesExcel;

implementation

uses UAvisoProceso, UDMain_FD;

{$R *.DFM}


procedure TFormImportarClientesExcel.ImportarClientesExecute(Sender: TObject);
VAR i:Byte;
Nombre,Codigo,cuit:String;
Condicion:Integer;
begin
 inherited;
  pbEstado.Min:=0;
  if mtClientesXLS.RecordCount-1>0 then
   pbEstado.Max:=mtClientesXLS.RecordCount-1;
  pbEstado.Position:=0;

  Application.ProcessMessages;

  mtClientesXLS.First;
  while not mtClientesXLS.Eof do
    begin
      DMMain_FD.fdcGestion.StartTransaction;

      Try
        codigo:='';
        codigo:=Copy(Trim(mtClientesXLS.FieldByName('Codigo').AsString),1,6);
        codigo:=copy('0000000',1,6-length(codigo))+codigo;

        QBuscaCliente.close;
        QBuscaCliente.ParamByName('codigo').Value:=codigo;
        QBuscaCliente.OPen;

        if QBuscaCliente.Fields[0].AsString='' Then
          begin
            spIngresarCliente.Close;
            spIngresarCliente.ParamByName('CODIGO').Value            :=Trim(Codigo);
            spIngresarCliente.ParamByName('NOMBRE').Value            :=UpperCase( Copy(mtClientesXLS.FieldByName('Nombre').AsString,1,35));
            if (mtClientesXLS.FindField('RAZONSOCIAL')<>Nil) then
              spIngresarCliente.ParamByName('RAZON_SOCIAL').AsString :=UpperCase( Copy(mtClientesXLS.FieldByName('RAZONSOCIAL').AsString,1,35))
            else
              spIngresarCliente.ParamByName('RAZON_SOCIAL').AsString :=UpperCase( Copy(mtClientesXLS.FieldByName('Nombre').AsString,1,35));

            spIngresarCliente.ParamByName('DIRECCION').AsString      :=UpperCase( Copy(mtClientesXLS.FieldByName('DIRECCION').AsString,1,35));

            if mtClientesXLS.FindField('TIPOIVA') = nil Then
              Raise Exception.Create('no se encuantra columna TIPOIVA');

            spIngresarCliente.ParamByName('TIPO_IVA').AsInteger  :=StrToInt(mtClientesXLS.FieldByName('TIPOIVA').AsString);

            if mtClientesXLS.FindField('OBSERVACIONES') <> nil Then
              spIngresarCliente.ParamByName('OBSERVACIONES').AsString :=mtClientesXLS.FieldByName('OBSERVACIONES').AsString
            else
              spIngresarCliente.ParamByName('OBSERVACIONES').AsString :='.';


            if (mtClientesXLS.FindField('ZONA')<>Nil) then
              begin
//                if VarIsNull(mtClientesXLS.FieldByName('ZONA').Value) then
//                  spIngresarCliente.ParamByName('ZONA').Value          := -1
//                else
                  spIngresarCliente.ParamByName('ZONA').Value          := mtClientesXLS.FieldByName('ZONA').Value;
              end
            else
              spIngresarCliente.ParamByName('ZONA').Value          :=-1;

            if (mtClientesXLS.FindField('ID_POSTAL')<>Nil) then
              spIngresarCliente.ParamByName('ID_POSTAL').Value     :=mtClientesXLS.FieldByName('ID_POSTAL').Value
            else
              spIngresarCliente.ParamByName('ID_POSTAL').Value     :=-1;

            if (mtClientesXLS.FindField('SUCURSAL')<>Nil) then
              spIngresarCliente.ParamByName('SUCURSAL').Value          :=mtClientesXLS.FieldByName('SUCURSAL').Value
            else
              spIngresarCliente.ParamByName('SUCURSAL').Value          :=-1;

            if (mtClientesXLS.FindField('ID_ADMINISTRACION')<>Nil) then
              spIngresarCliente.ParamByName('ID_ADMINISTRACION').Value   :=mtClientesXLS.FieldByName('ID_ADMINISTRACION').Value
            else
              spIngresarCliente.ParamByName('ID_ADMINISTRACION').Value   :=-1;

            cuit:='';

            cuit:=Copy(mtClientesXLS.FieldByName('CUIT').AsString,1,13);
            while pos('-',cuit)<>0 do
              delete(cuit,pos('-',cuit),1);
            if  length(Cuit)<11 Then
              cuit:=Copy('0000000000000',1,11-length(cuit))+cuit;

            cuit:=Copy(Cuit,1,2)+'-'+Copy(Cuit,3,8)+'-'+copy(cuit,11,1);

            spIngresarCliente.ParamByName('CUIT').Value        :=Cuit;

            if (mtClientesXLS.FindField('CPOSTAL')<>Nil) then
              spIngresarCliente.ParamByName('C_POSTAL').Value    :=Copy(mtClientesXLS.FieldByName('CPOSTAL').AsString,1,8)
            else
              spIngresarCliente.ParamByName('C_POSTAL').Value    :='7600';

             if (mtClientesXLS.FindField('LOCALIDAD')<>Nil) then
              spIngresarCliente.ParamByName('LOCALIDAD').Value   :=UpperCase( Trim(Copy(mtClientesXLS.FieldByName('LOCALIDAD').AsString,1,15)))
            else
              spIngresarCliente.ParamByName('LOCALIDAD').Value   :='';

            if (mtClientesXLS.FindField('TELEFONO')<>Nil) then
              spIngresarCliente.ParamByName('TELEFONO').Value    :=Copy(mtClientesXLS.FieldByName('TELEFONO').AsString,1,10)
            else
              spIngresarCliente.ParamByName('TELEFONO').Value    :='';

            if (mtClientesXLS.FindField('VENDEDOR')<>Nil) then
              spIngresarCliente.ParamByName('VENDEDOR').Value    :=Copy(mtClientesXLS.FieldByName('VENDEDOR').AsString,1,6)
            else
              spIngresarCliente.ParamByName('VENDEDOR').Value    :='';

            if (mtClientesXLS.FindField('MAIL')<>Nil) then
              spIngresarCliente.ParamByName('MAIL').AsString        := LowerCase( mtClientesXLS.FieldByName('MAIL').AsString)
            else
              spIngresarCliente.ParamByName('MAIL').Value        :='';

            if (mtClientesXLS.FindField('CODIGOOPERATIVO')<>Nil) then
              spIngresarCliente.ParamByName('CUENTA_OP').AsString   := mtClientesXLS.FieldByName('CODIGOOPERATIVO').AsString
            else
              spIngresarCliente.ParamByName('CUENTA_OP').AsString   := Codigo;

            if (StrToInt(mtClientesXLS.FieldByName('TIPOIVA').AsString)=3) and (Cuit<>'00-00000000-0') then
              begin
                spIngresarCliente.ParamByName('TIPODOC').AsInteger     := 1;
                spIngresarCliente.ParamByName('NRODOCUMENTO').AsString := Copy(mtClientesXLS.FieldByName('CUIT').AsString,1,13);
              end;

            spIngresarCliente.ParamByName('CELULAR').AsString     := '';

            spIngresarCliente.ExecProc;


            if codigo='' then
              codigo:='1';

            spIngresarConVenta.Close;
            spIngresarConVenta.ParamByName('CODIGO').Value       := codigo;

            if (mtClientesXLS.FindField('CONDICION')<>Nil) then
              if mtClientesXLS.FieldByName('CONDICION').AsString<>'' then
                spIngresarConVenta.ParamByName('CONDICION').Value    :=mtClientesXLS.FieldByName('CONDICION').AsInteger
            else
              spIngresarConVenta.ParamByName('CONDICION').Value    :=1;

            spIngresarConVenta.ExecProc;

            spLdr.Close;
            spLdr.ParamByName('CODIGO').Value      := codigo;
            spLdr.ParamByName('NOMBRE').Value      := UpperCase( Copy(mtClientesXLS.FieldByName('Nombre').AsString,1,35));
            spLdr.ParamByName('DIRECCION').Value   := UpperCase( Copy(mtClientesXLS.FieldByName('DIRECCION').AsString,1,35));

            if (mtClientesXLS.FindField('CPOSTAL')<>Nil) then
              spLdr.ParamByName('CPOSTAL').Value     := Copy(mtClientesXLS.FieldByName('CPOSTAL').AsString,1,8)
            else
              spLdr.ParamByName('CPOSTAL').Value     := '0000';

            spLdr.ExecProc;
          end
        else
          begin
            spIngresarCliente.Close;
            spIngresarCliente.ParamByName('CODIGO').Value        :=Codigo;
            spIngresarCliente.ParamByName('NOMBRE').Value        :=UpperCase( Copy(mtClientesXLS.FieldByName('Nombre').AsString,1,35));
            spIngresarCliente.ParamByName('RAZON_SOCIAL').Value  :=UpperCase( Copy(mtClientesXLS.FieldByName('RAZONSOCIAL').AsString,1,35));
            spIngresarCliente.ParamByName('DIRECCION').Value     :=UpperCase( Copy(mtClientesXLS.FieldByName('DIRECCION').AsString,1,35));
            spIngresarCliente.ParamByName('TIPO_IVA').Value      :=mtClientesXLS.FieldByName('TIPOIVA').AsInteger;

            if (mtClientesXLS.FindField('OBSERVACIONES')<>Nil) then
              spIngresarCliente.ParamByName('OBSERVACIONES').Value :=mtClientesXLS.FieldByName('OBSERVACIONES').Value;

            if (mtClientesXLS.FindField('ZONA')<>Nil) then
              spIngresarCliente.ParamByName('ZONA').Value          :=mtClientesXLS.FieldByName('ZONA').Value
            else
              spIngresarCliente.ParamByName('ZONA').Value          :=-1;

            cuit:='';
            cuit:=Copy(mtClientesXLS.FieldByName('CUIT').AsString,1,13);
            while pos('-',cuit)<>0 do
              delete(cuit,pos('-',cuit),1);
            if  length(Cuit)<11 Then
              cuit:=Copy('0000000000000',1,11-length(cuit))+cuit;
            begin
              cuit:=Copy(Cuit,1,2)+'-'+Copy(Cuit,3,8)+'-'+copy(cuit,11,1);
            end;
            spIngresarCliente.ParamByName('CUIT').Value        :=Cuit;

            if (mtClientesXLS.FindField('CPOSTAL')<>Nil) then
              spIngresarCliente.ParamByName('C_POSTAL').Value    :=Copy(mtClientesXLS.FieldByName('CPOSTAL').AsString,1,8);

            if (mtClientesXLS.FindField('LOCALIDAD')<>Nil) then
              spIngresarCliente.ParamByName('LOCALIDAD').Value   :=UpperCase( Copy(mtClientesXLS.FieldByName('LOCALIDAD').AsString,1,15))
            else
              spIngresarCliente.ParamByName('LOCALIDAD').Value   :='';

            if (mtClientesXLS.FindField('TELEFONO')<>Nil) then
              spIngresarCliente.ParamByName('TELEFONO').Value    :=Copy(mtClientesXLS.FieldByName('TELEFONO').AsString,1,10)
            else
              spIngresarCliente.ParamByName('TELEFONO').Value    :='';

            if (mtClientesXLS.FindField('VENDEDOR')<>Nil) then
              spIngresarCliente.ParamByName('VENDEDOR').Value    :=Copy(mtClientesXLS.FieldByName('VENDEDOR').AsString,1,6)
            else
              spIngresarCliente.ParamByName('VENDEDOR').Value    :='';

            if (mtClientesXLS.FindField('MAIL')<>Nil) then
              spIngresarCliente.ParamByName('MAIL').Value    :=LowerCase( mtClientesXLS.FieldByName('MAIL').AsString)
            else
              spIngresarCliente.ParamByName('MAIL').Value    :='';

            if (mtClientesXLS.FindField('ID_ADMINISTRACION')<>Nil) then
              spIngresarCliente.ParamByName('ID_ADMINISTRACION').Value :=mtClientesXLS.FieldByName('ID_ADMINISTRACION').Value
            else
              spIngresarCliente.ParamByName('ID_ADMINISTRACION').Value          :=-1;


            spIngresarCliente.ParamByName('CUENTA_OP').Value    :='';
            spIngresarCliente.ParamByName('CELULAR').AsString    := '';
            spIngresarCliente.ExecProc;
          end;

        if pbEstado.Position<pbEstado.Max then
          pbEstado.Position:=pbEstado.Position+1;
        Application.ProcessMessages;
        DMMain_FD.fdcGestion.Commit;

      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transacción no finalizada....!');
        exit;
      end;
      mtClientesXLS.Next;
    end;
    mtClientesXLS.Active:=False;
end;

procedure TFormImportarClientesExcel.BuscarArchivoExecute(Sender: TObject);
var c,r:Integer;
ColName:String;
begin
  inherited;
  if pnAviso.Visible=True Then
    pnAviso.Visible:=False;

  mtClientesXLS.Close;
  Screen.Cursor:=crHourGlass;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;

         stgCLientes.LoadFromXLS(edPath.Text);

         mtClientesXLS.Close;
         mtClientesXLS.FieldDefs.Clear;
         for c:= 0 to stgCLientes.ColCount - 1 do
           begin
             stgCLientes.Cells[c,0];
             if stgCLientes.Cells[c,0]<>'' Then
               mtClientesXLS.FieldDefs.Add(stgCLientes.Cells[c,0],ftString,50,False);
           end;
         mtClientesXLS.Open;

         mtClientesXLS.DisableControls;
         for r:= 1 to stgCLientes.RowCount - 1 do
           begin
             mtClientesXLS.Append;
             for c:= 0 to stgCLientes.ColCount - 1 do
               begin
                 if stgCLientes.Cells[c,0]<>'' Then
                   begin
                     ColName       :=stgCLientes.Cells[c,0];
                     if mtClientesXLS.FindField(ColName)<>nil then
                        mtClientesXLS.FieldByName(ColName).Value:=stgCLientes.Cells[c,r];
                   end;
               end;
             mtClientesXLS.Post;
           end;
         mtClientesXLS.EnableControls;
         mtClientesXLS.First;
         mtClientesXLS.Refresh;
         FormImportarClientesExcel.Height:=FormImportarClientesExcel.Height-5;
         FormImportarClientesExcel.Height:=FormImportarClientesExcel.Height+5;

      end;
   Screen.Cursor:=crDefault;
end;

procedure TFormImportarClientesExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportarClientesExcel.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarClientesExcel:=nil;
end;

procedure TFormImportarClientesExcel.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormImportarClientesExcel.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;

end;

end.
