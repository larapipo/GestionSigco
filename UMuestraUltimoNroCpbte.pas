unit UMuestraUltimoNroCpbte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, JvExControls, JvGradient, DB,
  FMTBcd, SqlExpr,DBXCommon, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,StrUtils;

type
  TFormMuestraUltimoProximoNroCpbte = class(TForm)
    pnprincipal: TPanel;
    Label2: TLabel;
    edLetra2: TEdit;
    edSuc2: TEdit;
    edNro2: TEdit;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    edTipo: TEdit;
    edClase: TEdit;
    edLetra: TEdit;
    edSuc: TEdit;
    edNro: TEdit;
    chbActualizaNro: TCheckBox;
    spActualizaNroFD: TFDStoredProc;
    spVerificaNro: TFDStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edNro2Exit(Sender: TObject);
    procedure edNro2KeyPress(Sender: TObject; var Key: Char);
    procedure edNro2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FLetra,FSuc,FNro,FTipo,FClase:String;
    FSucursal:Integer;
  public
    { Public declarations }
  published
    property letra:string read FLetra write FLetra;
    property Suc:string read FSuc write FSuc;
    property Nro:string read FNro write FNro;
    property Tipo:string read FTipo write FTipo;
    property Clase:string read FClase write FClase;
    property Sucursal:integer read FSucursal write FSucursal;


  end;

var
  FormMuestraUltimoProximoNroCpbte: TFormMuestraUltimoProximoNroCpbte;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormMuestraUltimoProximoNroCpbte.btOkClick(Sender: TObject);
begin

  Fletra      := edLetra2.Text;
  FSuc        := AnsiRightStr('00000'+Trim(edSuc2.Text),4);
  FNro        := AnsiRightStr('00000000'+Trim(edNro2.Text),8);
  edSuc2.Text := FSuc;
  edNro2.Text := FNro;

  if (edLetra2.Text=edLetra.Text) and (edSuc2.Text=edSuc.Text) and (edNro2.Text=edNro.Text) then
    begin
      Fletra :='';
      FSuc   :='';
      FNro   :='';
      ModalResult:=mrNone;
      edNro2.SetFocus;
      edNro.SelectAll;
      Raise Exception.Create('No se puede poner el mismo numero...');
    end
  else
    if (chbActualizaNro.Checked) and (Trim(FNro)<>'') then
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        try
          spActualizaNroFD.Close;
          spActualizaNroFD.ParamByName('sucursal').Value     := FSucursal;
          spActualizaNroFD.ParamByName('Letra').Value        := FLetra;
          spActualizaNroFD.ParamByName('Numero').Value       := FNro;
          spActualizaNroFD.ParamByName('Clase_Comprob').Value:= FClase;
          spActualizaNroFD.ParamByName('Tipo_Comprob').Value := FTipo;
          spActualizaNroFD.ParamByName('Comp_Vta').Value     := 'V';
          spActualizaNroFD.ExecProc;
          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se Actualizo el Numero en el contador del Comprobante...');
        end;
        spActualizaNroFD.Close;
      end;

  //Close;
end;

procedure TFormMuestraUltimoProximoNroCpbte.btCancelarClick(Sender: TObject);
begin
  Fletra:='';
  FSuc  :='';
  FNro  :='';
 // Close;
end;

procedure TFormMuestraUltimoProximoNroCpbte.edNro2Exit(Sender: TObject);
begin
  edNro2.Text:=copy('00000000',1,8-length(trim(edNro2.Text)))+trim(edNro2.Text);
end;

procedure TFormMuestraUltimoProximoNroCpbte.edNro2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=vk_return then
    begin
      edNro2.Text:=copy('00000000',1,8-length(trim(edNro2.Text)))+trim(edNro2.Text);
    end;
end;

procedure TFormMuestraUltimoProximoNroCpbte.edNro2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    begin
      Key:=#0;
      edNro2.Text:=copy('00000000',1,8-length(trim(edNro2.Text)))+trim(edNro2.Text);
    end;
end;

procedure TFormMuestraUltimoProximoNroCpbte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=cafRee;
end;

procedure TFormMuestraUltimoProximoNroCpbte.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraUltimoProximoNroCpbte.FormDestroy(Sender: TObject);
begin
  FormMuestraUltimoProximoNroCpbte:=nil;
end;

procedure TFormMuestraUltimoProximoNroCpbte.FormShow(Sender: TObject);
Var Numero:String;
begin
  Numero       :='';
  edLetra.Text :=FLetra;
  edSuc.Text   :=FSuc;
  edNro.Text   :=FNro;
  edTipo.Text  :=FTipo;
  edClase.Text :=FClase;
  if (FLetra<>'') and (FSuc<>'') and (FNro<>'') then
    Numero:= DMMain_FD.TraerNro(FLetra, FSuc, FTipo, FClase, FSucursal);
  if Numero<>'' then
    begin
      edLetra2.Text:=edLetra.Text;
      edSuc2.Text  :=edSuc.Text;
      edNro2.Text  :=Numero;
    end;
end;

end.
