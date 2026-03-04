unit ULibroIvaBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, frxExportXLS, frxExportRTF, frxClass,
  frxDBSet, Db, DBClient, Provider, ComCtrls, Grids, DBGrids,
  Librerias,  ActnList,
  Buttons, ToolWin, ImgList, JvExControls, JvGradient, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvExMask,
  JvToolEdit, JvBaseEdits, System.Actions, JvAppStorage, JvAppIniStorage,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvCircularProgress,
  System.ImageList, frCoreClasses;

type
  TFormLibroIvaBase = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rgOrden: TRadioGroup;
    dbgTotales: TDBGrid;
    UpDown1: TUpDown;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    frLibroIva: TfrxReport;
    DSSucursal: TDataSource;
    ChangePeriodo: TAction;
    Imprimir: TAction;
    CierreFiscal: TAction;
    IniciarLibro: TAction;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    cbSucursales: TJvDBLookupCombo;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    ceNroHoja: TJvCalcEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    spGeneraLibro_FD: TFDStoredProc;
    spCierreFiscal_FD: TFDStoredProc;
    Query4_FD: TFDQuery;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImprimirExecute(Sender: TObject);
    procedure CierreFiscalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure frLibroIvaBeginDoc(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  d,m,y:word;

    procedure   ErrorAfip(idComp:Integer);
    constructor Create(AOwner: TComponent); overload; override;

  published

    constructor Create(AOwner: TComponent; H:Boolean); overload;


  end;

var
  FormLibroIvaBase: TFormLibroIvaBase;

implementation

uses  DMBuscadoresForm,UDMain_FD,UComprobantes;

{$R *.DFM}

procedure TFormLibroIvaBase.ErrorAfip(idComp: Integer);
var X :Integer;    //var FormCpbtes: TFormComprobantes;
begin
  if MessageDlg('No hay código de AFIP declarado para el comprobante. ¿Desea salir para corregirlo?',mtWarning,[mbYes,mbNo],0)=mrYes then
    begin
      X := idComp;
      if not Assigned(FormComprobantes) then
        FormComprobantes  :=  TFormComprobantes.Create(Self);
      try
        FormComprobantes.AbreComprob(IntToStr(idComp));
        FormComprobantes.Show;
      finally
        FormComprobantes.Free;
      end;
    end;

  MessageDlg('EXPORTACIÓN INTERRUMPIDA',mtWarning,[],0);
end;

constructor TFormLibroIvaBase.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

constructor TFormLibroIvaBase.Create(AOwner: TComponent; H:Boolean);
begin
    inherited Create(AOwner);
    if not H then FormLibroIvaBase.Show;
end;


procedure TFormLibroIvaBase.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.SetFocus;

end;

procedure TFormLibroIvaBase.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frLibroIva.PrintOptions.Printer:=PrNomListados;
  frLibroIva.SelectPrinter;

end;

procedure TFormLibroIvaBase.CierreFiscalExecute(Sender: TObject);
begin
  DecodeDate(hasta.date,y,m,d);
end;

procedure TFormLibroIvaBase.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := True;
  CDSSucursal.Open;
end;

procedure TFormLibroIvaBase.BuscarExecute(Sender: TObject);
begin
 // inherited;
  sbEstado.SimpleText := 'Preparando Archivos...';


end;

procedure TFormLibroIvaBase.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;

procedure TFormLibroIvaBase.frLibroIvaBeginDoc(Sender: TObject);
begin
  inherited;
  frLibroIva.Variables['desde']:=''''+Desde.Text+'''';
  frLibroIva.Variables['Hasta']:=''''+Hasta.Text+'''';
  frLibroIva.Variables['sucursal']:=''''+cbSucursales.Text+'''';
  frLibroIva.Variables['NroPagina'] :=ceNroHoja.Value;
end;

procedure TFormLibroIvaBase.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frLibroIva.DesignReport;
end;

end.