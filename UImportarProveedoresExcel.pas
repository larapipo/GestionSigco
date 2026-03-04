unit UImportarProveedoresExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, ADODB, StdCtrls, Grids, DBGrids, JvComponentBase,
  ImgList,   ActnList, ComCtrls, JvExControls, JvGradient,
  Buttons, ToolWin,  ExtCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormImportarProveedoresExcel = class(TFormABMBase)
    dbgProveedoresXLS: TDBGrid;
    BitBtn1: TBitBtn;
    pnAviso: TPanel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    ADOConnection: TADOConnection;
    ADODSProveeXLS: TADODataSet;
    DSProveeXLS: TDataSource;
    OpenDialog: TOpenDialog;
    OpenDialog1: TOpenDialog;
    spIngresaProvee_old: TSQLStoredProc;
    pnCabecera: TPanel;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    spAyudaFormato: TSpeedButton;
    QBuscaProvee: TFDQuery;
    QBuscaProveeCODIGO: TStringField;
    spIngresaProveeFD: TFDStoredProc;
    QUltimoCodigo2CODIGO: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
    ContErr:  Integer;
    ContOK:   Integer;
    Cancela:  Boolean;

  public
    { Public declarations }
  end;

var
  FormImportarProveedoresExcel: TFormImportarProveedoresExcel;

implementation

uses UAvisoProceso, UDMain_FD;

{$R *.dfm}

procedure TFormImportarProveedoresExcel.BitBtn1Click(Sender: TObject);
VAR i:Byte;
Nombre, Razon,Codigo,cuit:String;
Condicion:Integer;
begin
  inherited;
 { if Not(Assigned(FormProceso)) Then
    FormProceso:=TFormProceso.Create(Application);

  FormProceso.Mensaje:='Ingresando Datos....';
  FormProceso.Show;
  FormProceso.Close;   }
  ContErr :=  0;
  ContOK  :=  0;
  Cancela :=  False;
  btCancelar.Enabled  :=  True;
  ADODSProveeXLS.DisableControls;
  ADODSProveeXLS.First;
  DMMain_FD.fdcGestion.StartTransaction;

  while (not ADODSProveeXLS.Eof) and (not Cancela) do
    begin

      Try
        codigo:='';
        if (not ADODSProveeXLS.FindField('Codigo').IsNull) and (ADODSProveeXLS.FieldByName('Codigo').AsString<>'') then
          begin
            codigo:=Copy(ADODSProveeXLS.FieldByName('Codigo').AsString,1,6);
            codigo:=copy('0000000',1,6-length(codigo))+codigo;
            QBuscaProvee.close;
            QBuscaProvee.ParamByName('codigo').Value:=codigo;
            QBuscaProvee.OPen;
            if QBuscaProvee.Fields[0].AsString<>'' Then Codigo  :=  '';
          end
        else
          begin
            QUltimoCodigo2.Close;
            QUltimoCodigo2.Open;
            if (QUltimoCodigo2.IsEmpty) and ((Not ADODSProveeXLS.FindField('Nombre').IsNull) or (not ADODSProveeXLS.FindField('RAZONSOCIAL').IsNull)) then
              Codigo  :=  '000001'
            else
              begin
                Codigo  :=  IntToStr(QUltimoCodigo2CODIGO.AsInteger +1);
                codigo:=copy('0000000',1,6-length(codigo))+codigo;
              end;
            QUltimoCodigo2.Close;
          end;

        if Codigo<>'' then
          begin
            spIngresaProveeFD.Close;
            spIngresaProveeFD.ParamByName('CODIGO').Value        := Codigo;

            try
                Nombre   := ADODSProveeXLS.FieldByName('NOMBRE').AsString
            except
                Nombre   := ADODSProveeXLS.FieldByName('RAZONSOCIAL').AsString;
            end;

            try
              Razon    := ADODSProveeXLS.FieldByName('RAZONSOCIAL').AsString;
            except
              Razon   := ADODSProveeXLS.FieldByName('Nombre').AsString;
            end;

            spIngresaProveeFD.ParamByName('NOMBRE').Value           := Copy(Nombre,1,35);
            spIngresaProveeFD.ParamByName('RAZONSOCIAL').Value      := Copy(Razon,1,35);

            try
              spIngresaProveeFD.ParamByName('DIRECCION').Value     := Copy(ADODSProveeXLS.FieldByName('DIRECCION').AsString,1,35)
            except
              spIngresaProveeFD.ParamByName('DIRECCION').Value     := '';
            end;

            try
              Condicion     := ADODSProveeXLS.FieldByName('TIPOIVA').AsInteger
            except
              Condicion     :=  3;
            end;
            spIngresaProveeFD.ParamByName('con_IVA').Value          := Condicion;

            try
              spIngresaProveeFD.ParamByName('OBSERVACIONES').Value  := ADODSProveeXLS.FieldByName('OBSERVACIONES').Value
            except
              spIngresaProveeFD.ParamByName('OBSERVACIONES').Value  :=  '';
            end;

            try
              spIngresaProveeFD.ParamByName('MAIL').AsString        := ADODSProveeXLS.FieldByName('MAIL').AsString
            except
              spIngresaProveeFD.ParamByName('MAIL').AsString        := '';
            end;

            try
              cuit  := StringReplace(Copy(ADODSProveeXLS.FieldByName('CUIT').AsString,1,13),'-','',[rfReplaceAll]);
            except
              cuit  :='0000000000000';
            end;

            cuit:=Copy(Cuit,1,2)+'-'+Copy(Cuit,3,8)+'-'+copy(cuit,11,1);

            spIngresaProveeFD.ParamByName('CUIT').Value         := Cuit;


            try
              spIngresaProveeFD.ParamByName('CPOSTAL').Value    := Copy(ADODSProveeXLS.FieldByName('CPOSTAL').AsString,1,8)
            except
              spIngresaProveeFD.ParamByName('CPOSTAL').Value    := '';
            end;

          {  try
              spIngresaProveeFD.ParamByName('LOCALIDAD').Value  :=  Copy(ADODSProveeXLS.FieldByName('LOCALIDAD').AsString,1,15)
            except
              spIngresaProveeFD.ParamByName('LOCALIDAD').Value  :=  '';
            end;  }

            try
              spIngresaProveeFD.ParamByName('TELEFONO').Value   := Copy(ADODSProveeXLS.FieldByName('TELEFONO').AsString,1,10)
            except
              spIngresaProveeFD.ParamByName('TELEFONO').Value   :=  '';
            end;

            spIngresaProveeFD.ExecProc;
            Inc(ContOK);

          {  if (not ADODSProveeXLS.FindField('SALDO').IsNull) and (ADODSProveeXLS.FieldByName('SALDO').AsString<>'' then
              begin
                AGREGA AJUSTE CC PROVEEDOR
              end;
                        }
          end;
      except
        inc(ContErr);
      end;
      ADODSProveeXLS.Next;
    end;
    if (Not Cancela) then
      DMMain_FD.fdcGestion.Commit
    else
      DMMain_FD.fdcGestion.RollBack;
    btCancelar.Enabled  :=  False;
    ADODSProveeXLS.EnableControls;
    ADOConnection.Connected:=False;
    ADODSProveeXLS.Active:=False;

    if ContErr>0 then
      Showmessage('Importación finalizada. ' + IntToStr(ContOK) + ' Proveedores ingresados OK, ' + intToStr(ContErr) + ' ERRORES.')
    else
      Showmessage('Importación finalizada con éxito. ' + IntToStr(ContOK) + ' Proveedores ingresados OK');
end;

procedure TFormImportarProveedoresExcel.CancelarExecute(Sender: TObject);
begin
  inherited;
  Cancela :=  True;
end;

procedure TFormImportarProveedoresExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportarProveedoresExcel.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormImportarProveedoresExcel.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarProveedoresExcel:=Nil;
end;

procedure TFormImportarProveedoresExcel.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
 if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportarProveedoresExcel.SpeedButton1Click(Sender: TObject);
begin
  inherited;
if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
         edPath.Text:=OpenDialog.FileName;
        ADOConnection.Connected:=False;
        ADODSProveeXLS.Active:=False;
        ADOConnection.ConnectionString:='';
        //ADODataSet1.CommandText:='';
        ADOConnection.ConnectionString:=
        'Provider=Microsoft.Jet.OLEDB.4.0; '+
        'User ID=Admin; '+
        'Data Source='+edPath.Text+'; '+
        'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
        'Persist Security Info=False; '+
        'Jet OLEDB:System database=""; '+
        'Jet OLEDB:Registry Path=""; '+
        'Jet OLEDB:Database Password=""; '+
        'Jet OLEDB:Engine Type=35; '+
        'Jet OLEDB:Database Locking Mode=0; '+
        'Jet OLEDB:Global Partial Bulk Ops=2; '+
        'Jet OLEDB:Global Bulk Transactions=1; '+
        'Jet OLEDB:New Database Password=""; '+
        'Jet OLEDB:Create System Database=False; '+
        'Jet OLEDB:Encrypt Database=False; '+
        'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
        'Jet OLEDB:Compact Without Replica Repair=False; '+
        'Jet OLEDB:SFP=False ';
        ADODSProveeXLS.Connection:=ADOConnection;
        ADODSProveeXLS.CommandType:=cmdTableDirect;
        ADODSProveeXLS.CommandText:='Hoja1$';
        ADOConnection.Connected:=true;
        ADODSProveeXLS.Active:=True;
      end;
end;

end.
