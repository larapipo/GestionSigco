unit UCambiaFechaNroChe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, ExtCtrls, FMTBcd, DB, SqlExpr,
  Buttons, DBXCommon, JvExControls, JvDBLookup, DBClient, Provider,
  AdvDBLookupComboBox, AdvCombo, ColCombo, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormModificarDatosChPropio = class(TForm)
    Panel1: TPanel;
    Emision: TJvDateEdit;
    Cobro: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edNumero: TEdit;
    Label3: TLabel;
    lbId: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    dbcBancos: TJvDBLookupCombo;
    DSPBancos: TDataSetProvider;
    CDSBancos: TClientDataSet;
    CDSBancosID_CUENTA: TIntegerField;
    CDSBancosID_TIPO_CTA: TIntegerField;
    CDSBancosNOMBRE: TStringField;
    CDSBancosNRO_CUENTA: TStringField;
    CDSBancosID_BANCO: TIntegerField;
    CDSBancosCUIT: TStringField;
    CDSBancosRAZONSOCIAL: TStringField;
    DSBancos: TDataSource;
    DSPChequera: TDataSetProvider;
    CDSChequera: TClientDataSet;
    DSChequera: TDataSource;
    dbcChequera: TJvDBLookupCombo;
    Label5: TLabel;
    CDSChequeraID_CHEQUERA: TIntegerField;
    CDSChequeraID_CUENTA: TIntegerField;
    CDSChequeraNRO_CUENTA: TStringField;
    CDSChequeraNUMERO_INCIAL: TIntegerField;
    CDSChequeraNUMERO_FINAL: TIntegerField;
    CDSChequeraULTIMO_NUMERO: TIntegerField;
    CDSChequeraDIFERIDO: TSmallintField;
    CDSChequeraNOMBRE: TStringField;
    CDSChequeraID_BANCO: TIntegerField;
    CDSChequeraMONEDA: TIntegerField;
    CDSChequeraCANT_CHE_EMITIDOS: TIntegerField;
    CDSChequeraCHEQUERA_TERMINADA: TStringField;
    rgEstados: TRadioGroup;
    Label6: TLabel;
    Label7: TLabel;
    QBanc: TFDQuery;
    QChequera: TFDQuery;
    spModificaCheFD: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbcBancosChange(Sender: TObject);
    procedure rgEstadosClick(Sender: TObject);
  private
    { Private declarations }
    FFechaEmision:TDateTime;
    FFechaCobro  :TDateTime;
    FNumero:Integer;
    FId:Integer;
    FId_Cta_Bco:Integer;
    FId_Chequera:Integer;

  public
    { Public declarations }

  published
    property FechaEmision:TDateTime read FFechaEmision write FFechaEmision;
    property FechaCobro:TDateTime read FFechaCobro write FFechaCobro;
    property Numero:Integer read FNumero write FNumero;
    property id:Integer read Fid write Fid;
    property Id_Cta_Bco:Integer read FId_Cta_Bco write FId_Cta_Bco;
    property Id_Chequera:Integer read FId_Chequera write FId_Chequera;

   end;

var
  FormModificarDatosChPropio: TFormModificarDatosChPropio;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormModificarDatosChPropio.BitBtn1Click(Sender: TObject);
begin
  if (VarIsNull(dbcBancos.KeyValue)) or (dbcBancos.KeyValue <=0)  then
    raise Exception.Create('No hay Cta. seleccionada');
  
  if (VarIsNull(dbcChequera.KeyValue)) or (dbcChequera.KeyValue <=0)  then
    raise Exception.Create('No hay Chequera seleccionada');

  DMMain_FD.fdcGestion.StartTransaction;
  try
    spModificaCheFD.Close;
    spModificaCheFD.ParamByName('id').Value          := StrToInt(lbId.Caption);
    spModificaCheFD.ParamByName('emision').Value     := Emision.Date;
    spModificaCheFD.ParamByName('cobro').Value       := Cobro.Date;
    spModificaCheFD.ParamByName('numero').Value      := StrToInt(edNumero.Text);
    spModificaCheFD.ParamByName('ID_CTA_BCO').Value  := StrToInt(dbcBancos.KeyValue);
    spModificaCheFD.ParamByName('ID_CHEQUERA').Value := StrToInt(dbcChequera.KeyValue);
    spModificaCheFD.ExecProc;
    DMMain_FD.LogFileFD(0,2,'Actualizacion Cheque Propio: '+
                        ' >>Fecha: '+ DateToStr(Emision.Date)+
                        ' >>Cobro: '+ DateToStr(Cobro.Date)+
                        ' >>Numero  : '+edNumero.Text+
                        ' >>Cta Bco : '+dbcBancos.KeyValue+
                        ' >>Chequera: '+dbcChequera.KeyValue,
                        ' ACTCCHEQ');

    DMMain_FD.fdcGestion.Commit;
    spModificaCheFD.Close
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se modificaron los datos...');
  end;
  Close;
end;

procedure TFormModificarDatosChPropio.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormModificarDatosChPropio.dbcBancosChange(Sender: TObject);
begin
  CDSChequera.Close;
  CDSChequera.Params.ParamByName('idCta_banco').AsInteger:=dbcBancos.KeyValue;
  case rgEstados.ItemIndex of
    0:CDSChequera.Params.ParamByName('estado').Value:='N';
    1:CDSChequera.Params.ParamByName('estado').Value:='S';
    2:CDSChequera.Params.ParamByName('estado').Value:='*';
  end;
  CDSChequera.Open;
end;

procedure TFormModificarDatosChPropio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormModificarDatosChPropio.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  edNumero.Text:=IntToStr(FNumero);
  lbId.Caption :=IntToStr(Fid);
  Emision.Date :=FFechaEmision;
  Cobro.Date   :=FFechaCobro;
  CDSBancos.Close;
  CDSBancos.Open;
  dbcBancos.KeyValue:=FId_Cta_Bco;
  CDSChequera.Close;
  CDSChequera.Params.ParamByName('idCta_banco').Value:=FId_Cta_Bco;
  case rgEstados.ItemIndex of
    0:CDSChequera.Params.ParamByName('estado').Value:='N';
    1:CDSChequera.Params.ParamByName('estado').Value:='S';
    2:CDSChequera.Params.ParamByName('estado').Value:='*';
  end;
  CDSChequera.Open;

end;

procedure TFormModificarDatosChPropio.FormDestroy(Sender: TObject);
begin
  FormModificarDatosChPropio:=nil;
end;

procedure TFormModificarDatosChPropio.FormShow(Sender: TObject);
begin
  edNumero.Text:=IntToStr(FNumero);
  lbId.Caption :=IntToStr(Fid);
  Emision.Date :=FFechaEmision;
  Cobro.Date   :=FFechaCobro;
  dbcBancos.KeyValue:=FId_Cta_Bco;

  edNumero.Text:=IntToStr(FNumero);
  lbId.Caption :=IntToStr(Fid);
  Emision.Date :=FFechaEmision;
  Cobro.Date   :=FFechaCobro;
  CDSBancos.Close;
  CDSBancos.Open;
  dbcBancos.KeyValue:=FId_Cta_Bco;
  CDSChequera.Close;
  CDSChequera.Params.ParamByName('idCta_banco').Value:=FId_Cta_Bco;
  case rgEstados.ItemIndex of
    0:CDSChequera.Params.ParamByName('estado').Value:='N';
    1:CDSChequera.Params.ParamByName('estado').Value:='S';
    2:CDSChequera.Params.ParamByName('estado').Value:='*';
  end;
  CDSChequera.Open;
  dbcChequera.KeyValue:=FId_Chequera;
end;

procedure TFormModificarDatosChPropio.rgEstadosClick(Sender: TObject);
begin
  CDSChequera.Close;
  CDSChequera.Params.ParamByName('idCta_banco').AsInteger:=dbcBancos.KeyValue;
  case rgEstados.ItemIndex of
    0:CDSChequera.Params.ParamByName('estado').Value:='N';
    1:CDSChequera.Params.ParamByName('estado').Value:='S';
    2:CDSChequera.Params.ParamByName('estado').Value:='*';
  end;
  CDSChequera.Open;
end;

end.
