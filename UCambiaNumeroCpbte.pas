unit UCambiaNumeroCpbte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB,   ComCtrls, FMTBcd, SqlExpr,
  DBXCommon,DateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCambiaNroCpbte = class(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    edLetra: TEdit;
    edSuc: TEdit;
    edNum: TEdit;
    btOk: TBitBtn;
    btcancelar: TBitBtn;
    edFecha: TDateTimePicker;
    lb1: TLabel;
    Label2: TLabel;
    edFecha2: TDateTimePicker;
    QVerificaNroComp: TFDQuery;
    QVerificaNroCompNROCPBTE: TStringField;
    QVerificaNroCompID_FC: TIntegerField;
    QVerificaNroCompTIPOCPBTE: TStringField;
    QVerificaNroCompCLASECPBTE: TStringField;
    procedure edSucExit(Sender: TObject);
    procedure edNumExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure edFecha2Change(Sender: TObject);
  private
    FId  :Integer;
    FTipo:String;
    FClase:String;
    FSuc :String;
    FNum :String;
    FLet :String;
    FCV  :String;
    FCodigo:String;
    FFecha:TDateTime;
    FFecha2:TDateTime;
    FSucursal:Integer;
    { Private declarations }
  public
    { Public declarations }
    ModificaNro:Boolean;
    ModificaFecha:Boolean;
  published
    property Id:Integer read FId write FId;
    property Tipo:String read FTipo write FTipo;
    property Clase:String read FClase write FClase;
    property Suc:String read FSuc write FSuc;
    property Num:String read FNum write FNum;
    property Let:String read FLet write FLet;
    property CV:String read FCV write FCV;
    property Fecha:TDateTime read FFecha write FFecha;
    property Fecha2:TDateTime read FFecha2 write FFecha2;
    property Codigo:String read FCodigo write FCodigo;
    property Sucursal:Integer read FSucursal write FSucursal;
  end;

var
  FormCambiaNroCpbte: TFormCambiaNroCpbte;

implementation

uses DMStoreProcedureForm,UDMain_FD
;
{$R *.dfm}

procedure TFormCambiaNroCpbte.btcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFormCambiaNroCpbte.btOkClick(Sender: TObject);
var
  Existe     : Boolean;
  Actualizar : Boolean;
  Detalle    : String;
begin
  Existe      := False;
  Actualizar  := True;
  edNum.Text  := copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
  edSuc.Text  := copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
  ModificaNro := edSuc.Text<>FSuc;
  if ModificaNro=False then
    ModificaNro:=edNum.Text<>FNum;
//*************************************************************************************
//*************************************************************************************
  if FCV='C' then
    begin
      Actualizar:=True;
      ModificaFecha:=edFecha2.Date<>Fecha2;
      if ModificaFecha then
        ModificaFecha:=Not((Monthof(edFecha2.Date)=MonthOf(Fecha)) and (Yearof(edFecha2.Date)=YearOf(Fecha)));

      if ModificaFecha then
        begin
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value:=edFecha2.Date;
          DMStoreProcedure.QVerificaPeriodoFiscal.Open;
          if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
            begin
              ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
              Actualizar:=False;
              DMStoreProcedure.QVerificaPeriodoFiscal.Close;
              Close;
            end;
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        end;


      if ModificaNro then
        begin
          QVerificaNroComp.Close;
          QVerificaNroComp.ParamByName('Nro').Value   := edLetra.Text+edSuc.Text+edNum.Text;
          QVerificaNroComp.ParamByName('codigo').Value:= FCodigo;
          QVerificaNroComp.ParamByName('Tipo').Value  := FTipo;
          QVerificaNroComp.Open;
          Existe:= QVerificaNroCompID_FC.AsString<>'';
          Actualizar:= QVerificaNroCompID_FC.AsString='';
          QVerificaNroComp.Close;
        end;

      if (Actualizar) then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMStoreProcedure.spcambiaNroFD.Close;
            DMStoreProcedure.spcambiaNroFD.ParamByName('ID').Value           := FId;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Tipo').Value         := FTipo;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Prefijo').Value      := edSuc.Text;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Numero').Value       := edNum.Text;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Compra_venta').Value := FCV;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha').Value        := edFecha.DateTime;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha2').Value       := edFecha2.DateTime;
            DMStoreProcedure.spcambiaNroFD.ExecProc;

            DMMain_FD.LogFileFD(0,2,'Cambio Fecha/Nro Fc.Compra: Original:'+FLet+'-'+FSuc+'-'+FNum+'..Fecha Fiscal:'+dateToStr(Fecha2)+
                                 ' Nuevo   :'+edLetra.Text+'-'+edSuc.Text+'-'+edNum.Text+'..Fecha Fiscal:'+dateToStr(edFecha2.Date),
                                 'CAMBIONRO');

            DMStoreProcedure.spcambiaNroFD.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            DMStoreProcedure.spcambiaNroFD.Close;
            ShowMessage('No se pudo hacer el cambio...');
          end;
        end
      ELSE
        ShowMessage('Numero Registrado.... Verificar...');
     Close;
    end;
//*************************************************************************************
//*************************************************************************************
  if (FCV='V') and (FTipo<>'RE') then
    begin
      ModificaFecha:=edFecha.Date<>Fecha;
      if ModificaFecha then
        ModificaFecha:=Not((Monthof(edFecha.Date)=MonthOf(Fecha)) and (Yearof(edFecha.Date)=YearOf(Fecha)));

      if ModificaFecha then
        begin
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value := 'V';
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value        := edFecha.Date;
          DMStoreProcedure.QVerificaPeriodoFiscal.Open;
          if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='V' Then
            begin
              DMStoreProcedure.QVerificaPeriodoFiscal.Close;
              ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
              Actualizar:=False;
              Close;
            end;
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        end;
      if (ModificaNro and DMMain_FD.VerificaNro(edLetra.Text,edSuc.Text,edNum.Text,FTipo,FClase,FSucursal)) Then
        begin
          //ShowMessage('Numero Registrado.... Verificar...');
          Actualizar:=False;
          Close;
        end;
      if Actualizar then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMStoreProcedure.spcambiaNroFD.Close;
            DMStoreProcedure.spcambiaNroFD.ParamByName('ID').Value           := FId;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Tipo').Value         := FTipo;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Prefijo').Value      := edSuc.Text;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Numero').Value       := edNum.Text;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Compra_venta').Value := FCV;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha').Value        := edFecha.DateTime;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha2').Value       := edFecha2.DateTime;
            DMStoreProcedure.spcambiaNroFD.ExecProc;
            DMStoreProcedure.spcambiaNroFD.Close;

            Detalle:= 'Cambio Fecha/Nro Fac.Vta: '+
                      ' Original:'+FLet+'-'+FSuc+'-'+FNum+'..Fecha :'+dateToStr(Fecha)+
                      ' Nuevo   :'+edLetra.Text+'-'+edSuc.Text+'-'+edNum.Text+'..Fecha :'+dateToStr(edFecha.Date);

            DMMain_FD.LogFileFD(0,2,Detalle,'CAMBIONRO');

            DMMain_FD.fdcGestion.Commit;

          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo hacer el cambio de Numero...');
          end;
        end;
      Close;
    end;
//*************************************************************************************
//*************************************************************************************
  if (FCV='V') and (FTipo='RE') then
    begin
      if (ModificaNro and DMMain_FD.VerificaNroRto(edLetra.Text,edSuc.Text,edNum.Text,FTipo,FClase,FSucursal)) Then
        begin
         // ShowMessage('Numero Registrado.... Verificar...');
          Actualizar:=False;
        end
      else
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMStoreProcedure.spcambiaNroFD.Close;
            DMStoreProcedure.spcambiaNroFD.ParamByName('ID').Value           := FId;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Tipo').Value         := FTipo;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Prefijo').Value      := edSuc.Text;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Numero').Value       := edNum.Text;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Compra_venta').Value := FCV;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha').Value        := edFecha.DateTime;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha2').Value       := edFecha2.DateTime;
            DMStoreProcedure.spcambiaNroFD.ExecProc;

            Detalle:= 'Cambio Fecha/Nro Rtos: '+
                     ' Original:'+FLet+'-'+FSuc+'-'+FNum+'..Fecha :'+dateToStr(Fecha)+
                     ' Nuevo   :'+edLetra.Text+'-'+edSuc.Text+'-'+edNum.Text+'..Fecha :'+dateToStr(edFecha.Date);

            DMMain_FD.LogFileFD(0,2,Detalle,'CAMBIONRO');

            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo hacer el cambio...');
          end;
        end;
      Close;
    end;
//************************************************************************************************************************
  if (FCV='V') and (FTipo='PR') then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DMStoreProcedure.spcambiaNroFD.Close;
        DMStoreProcedure.spcambiaNroFD.ParamByName('ID').Value           := FId;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Tipo').Value         := FTipo;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Prefijo').Value      := edSuc.Text;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Numero').Value       := edNum.Text;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Compra_venta').Value := FCV;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha').Value        := edFecha.DateTime;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha2').Value       := edFecha2.DateTime;
        DMStoreProcedure.spcambiaNroFD.ExecProc;
        Detalle:= 'Cambio Fecha/Nro Presupuesto: '+
                  ' Original:'+FLet+'-'+FSuc+'-'+FNum+'..Fecha :'+dateToStr(Fecha)+
                  ' Nuevo   :'+edLetra.Text+'-'+edSuc.Text+'-'+edNum.Text+'..Fecha :'+dateToStr(edFecha.Date);

        DMMain_FD.LogFileFD(0,2,Detalle,'CAMBIONRO');
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo hacer el cambio...');
      end;
      Close;
    end;

end;

procedure TFormCambiaNroCpbte.edFecha2Change(Sender: TObject);
begin
  DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value := 'C';
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value        := edFecha2.Date;
  DMStoreProcedure.QVerificaPeriodoFiscal.Open;
  if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
    begin
      ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
      edFecha2.Date:=FFecha2;
    end;
end;

procedure TFormCambiaNroCpbte.edNumExit(Sender: TObject);
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
end;

procedure TFormCambiaNroCpbte.edSucExit(Sender: TObject);
begin
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
end;

procedure TFormCambiaNroCpbte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormCambiaNroCpbte.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  ModificaNro:=False;

end;

procedure TFormCambiaNroCpbte.FormDestroy(Sender: TObject);
begin
  FormCambiaNroCpbte:=nil;
end;

procedure TFormCambiaNroCpbte.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame))  then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TFormCambiaNroCpbte.FormShow(Sender: TObject);
begin
  try
    edFecha.DateTime  := FFecha;
    edFecha2.DateTime := FFecha2;
    edLetra.Text      := FLet;
    edSuc.Text        := FSuc;
    edNum.Text        := FNum;
    edSuc.SetFocus;
  except
    edFecha.DateTime :=Date;
    edFecha2.DateTime:=Date;
  end;

 // edFecha2.Visible:=FCV='C';
 // label2.Visible  :=FCV='C'
end;

end.
