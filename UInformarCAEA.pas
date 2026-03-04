unit UInformarCAEA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  AdvUtil, tmsAdvGridExcel, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,IniFiles,System.StrUtils;

type
  TFormInformarCAEA = class(TFormABMBase)
    InformarCAEA: TAction;
    sgFacturas: TAdvStringGrid;
    AdvGridExcelIO: TAdvGridExcelIO;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    CargarExcel: TAction;
    OpenDialog1: TOpenDialog;
    lbCAE: TLabel;
    edCAEA: TEdit;
    procedure InformarCAEAExecute(Sender: TObject);
    procedure CargarExcelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Certificado,Clave:String;
    ArchivoIni       :TIniFile;
    { Public declarations }
  end;

var
  FormInformarCAEA: TFormInformarCAEA;

implementation

uses FEAFIPLib_TLB, UDMain_FD;
{$R *.dfm}

procedure TFormInformarCAEA.CargarExcelExecute(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    if OpenDialog1.FileName<>'' then
      AdvGridExcelIO.XLSImport(OpenDialog1.FileName);

end;

procedure TFormInformarCAEA.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormInformarCAEA.FormShow(Sender: TObject);
begin
  inherited;
  ArchivoIni                    := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.NombreIni);
  Clave                         := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  Certificado                   := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  ArchivoIni.free;
end;

procedure TFormInformarCAEA.InformarCAEAExecute(Sender: TObject);
var
  Nro              : double;

  Vencimiento      : widestring;
  Resultado        : widestring;
  Reproceso        : widestring;
  FechaComprobante : widestring;
  TipoComp,I   : integer;
  lwsfev1      : wsfev1;
  Aux          : String;

  PtoVta     : integer;
  CAE        : widestring;
  CAEA       : widestring;
  DocTipo    : Integer;
  DocNumero  : Integer;
  ImpTotal   : Double;
  ImpNeto    : Double;
  ImpIva :Double;
begin
  TipoComp  := 1;  // Factura A
  PtoVta    := 10;

  Aux:= Trim( DMMain_FD.GetCuitEmpresa);

  Aux:= AnsiReplaceText(Aux,'-','');
  Aux:= AnsiReplaceText(Aux,'.','');
  Aux:= AnsiReplaceStr(Aux,'_','');

  lwsfev1   := Cowsfev1.Create;

  lwsfev1.CUIT := StrToFloat(Aux); // Cuit del vendedor
  lwsfev1.URL  := URLWSW;
  If lwsfev1.login(Certificado, clave, FormInformarCAEA.URLWSW) Then
    begin
      If Not lwsfev1.RecuperaLastCMP(PtoVta, TipoComp, nro) Then
          ShowMessage (lwsfev1.ErrorDesc)
      Else
        begin
          for i:=0 to sgFacturas.RowCount-1 do
            begin
              {
               if Tasa='00.00' then Alicuota:='0003'
               if Tasa='10.50' then Alicuota:='0004'
               if Tasa='21.00' then Alicuota:='0005'
               if Tasa='27.00' then Alicuota:='0006'
               if Tasa='05.00' then Alicuota:='0008'
               if Tasa='02.50' then Alicuota:='0009';
              }

              if  sgFacturas.cells[6,i]='RI' then
                DocTipo:=80
              else
               if  sgFacturas.cells[6,i]='CF' then
                 DocTipo:=96;

              DocNumero        := StrToInt(sgFacturas.cells[5,i]);
              FechaComprobante := FormatDateTime('yyyymmdd', StrToDate(sgFacturas.cells[9,i]));
              ImpTotal         := StrToFloat(sgFacturas.cells[14,i]);
              ImpIva           := StrToFloat(sgFacturas.cells[13,i]);
              ImpNeto          := StrToFloat(sgFacturas.cells[12,i]);
              Nro              := StrToFloat(sgFacturas.cells[7,i]);
              PtoVta           := StrToInt(sgFacturas.cells[8,i]);
              CAEA             := sgFacturas.cells[10,i];

              lwsfev1.AgregaFactura(1, DocTipo, DocNumero, Nro, Nro, FechaComprobante, ImpTotal, 0, ImpNeto, 0, '', '', '', 'PES', 1);
              lwsfev1.AgregaIVA(5, ImpNeto, ImpIva); // Ver Excel de referencias de codigos AFIP
              If lwsfev1.CAEAInformar(PtoVta, TipoComp, CAEA) Then
                begin
                  lwsfev1.AutorizarRespuesta( 0, CAE, Vencimiento, Resultado, Reproceso);
                  If Resultado = 'A' Then
                    ShowMessage( 'Felicitaciones! Si ve este mensaje instalo correctamente FEAFIP. CAE y Vencimiento: ' + CAE + ' ' + Vencimiento)
                  Else
                    ShowMessage( lwsfev1.AutorizarRespuestaObs(0) );
                end;
            end;
          ShowMessage( lwsfev1.ErrorDesc );
        end;
    End
  Else
    ShowMessage( lwsfev1.ErrorDesc );
end;

end.
