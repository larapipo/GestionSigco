unit UCambioFechaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB,
  SqlExpr,DBXCommon, ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormFechaFiscal = class(TForm)
    Panel1: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    Mcalendario: TMonthCalendar;
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FId:Integer;
    FFecha:TDateTime;
    FDetalle:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Fecha:TDateTime read FFecha write FFecha;
    property Id:Integer read Fid write FId;
    property Detalle:String read FDetalle write FDetalle;
  end;

var
  FormFechaFiscal: TFormFechaFiscal;

implementation

uses  DMStoreProcedureForm,UDMain_FD;

{$R *.dfm}

procedure TFormFechaFiscal.btOkClick(Sender: TObject);
var FQuery:TFDQuery;
Detalle:String;
begin
  DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value:=Mcalendario.Date;
  DMStoreProcedure.QVerificaPeriodoFiscal.Open;
  if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
    begin
      ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
      Close;
    end
  else
    begin
      if (Fecha<>Mcalendario.Date) then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            FQuery:=TFDQuery.Create(nil);
            FQuery.Connection:=DMMain_FD.fdcGestion;
            FQuery.SQL.Text:='update fccompcab f set '+
                             ' f.fechafiscal = '+''''+FormatDateTime('mm/dd/yyyy',Mcalendario.Date)+''''+
                             ' where f.id_fc = '+IntToStr(Fid);

            FQuery.ExecSQL;
            FQuery.Close;


            Detalle:= 'Cambio Fecha Fiscal Fc.Compra: '+
                      ' Original:'+dateToStr(Fecha)+
                      ' Nuevo   :'+dateToStr(Mcalendario.Date)+' '+FDetalle;

            DMMain_FD.LogFileFD(0,2,Detalle,'CAMBIONRO');

            DMMain_FD.fdcGestion.Commit;
          Except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se cambio la Fecha......');
          end;
          FreeAndNil(FQuery);
        end;
    end;
end;

procedure TFormFechaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormFechaFiscal.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  
end;

procedure TFormFechaFiscal.FormDestroy(Sender: TObject);
begin
  FormFechaFiscal:=nil;
end;

procedure TFormFechaFiscal.FormShow(Sender: TObject);
begin
  Mcalendario.Date:=Fecha;
end;

end.
