unit ULogin;
// Este logion sirve para autorizar cambios de precios
// el usuario debe ser administrador, segun los prefiles de
// usuario, debe tener tildado Administrador
// del componenete de permisos
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Buttons,
  tcSecHash,
  ExtCtrls, Mask,
  JvExControls, JvGradient, FMTBcd, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLogin = class(TForm)
    pnPcpal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edNombre: TEdit;
    edPasword: TEdit;
    btOk: TBitBtn;
    btNo: TBitBtn;
    JvGradient1: TJvGradient;
    FDQUser: TFDQuery;
    FDQAutorizados: TFDQuery;
    FDQUserUSER_NAME: TStringField;
    FDQUserREAL_NAME: TStringField;
    FDQUserUSER_PWD: TStringField;
    FDQUserUSER_ID: TIntegerField;
    FDQUserLAST_PWD_CHANGE: TSingleField;
    FDQUserAUDIT_MODE: TStringField;
    FDQUserGUID: TStringField;
    FDQUserEMAIL: TStringField;
    FDQAutorizadosUSUARIO: TStringField;
    FDQAutorizadosID: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btNoClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FModo   :Integer;
    FUsuario:string;
  public
    { Public declarations }
  published
    property Modo:Integer read FModo write FModo;   // 0=Validacion de Aoroizados
                                                    // 1=Validacion de Usuario
    property Usuario:string read FUsuario write FUsuario;
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.DFM}

uses UDmain_FD;

procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  if Key = #27 then
     begin
      Tag:=0;
      Close;
     end;
    //if btCancelar.Enabled Then
     // Cancelar.Execute;

end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
 if FModo=1 then
   begin
     edNombre.Text:=FUsuario;
     edPasword.SetFocus;
   end
 else
   if FModo=0 then
     edNombre.SetFocus;
end;

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormLogin.FormDestroy(Sender: TObject);
begin
  FormLogin:=nil;
end;

procedure TFormLogin.btNoClick(Sender: TObject);
begin
  //FormLogin.ModalResult:=False;
  FormLogin.Tag:=0;
  Close;
end;

procedure TFormLogin.btOkClick(Sender: TObject);
begin
  {$IF CompilerVersion <= 26}
    FDQUser.close;
    FDQUser.ParamByName('nombre').Value := Trim(edNombre.Text);
    FDQUser.ParamByName('clave').Value  := Encrypt(Trim(edPasword.Text));
    FDQUser.Open;
  {$ELSE}
    FDQUser.close;
    FDQUser.ParamByName('nombre').Value := Trim(edNombre.Text);
    FDQUser.ParamByName('clave').Value  := GeneratePasswordHash(Trim(edPasword.Text));
    FDQUser.Open;
  {$ENDIF}

  if FDQUser.IsEmpty Then
    begin
      FDQUser.close;
      ShowMessage('Clave inválida..... ');
      FormLogin.Tag:=0;
      edNombre.SetFocus;
    end
  else
    begin
      if FModo=0 then // Busca Usuario de AUTORIZACION
        begin
          FDQUser.close;
          FDQAutorizados.Close;
          FDQAutorizados.ParamByName('usuario').Value:=Trim(edNombre.Text);
          FDQAutorizados.Open;
          if not(FDQAutorizados.IsEmpty) then
            begin
              FormLogin.Tag:=1;
              FDQAutorizados.Close;
              close;
            end
          else
            begin
              FormLogin.Tag:=0;
              ShowMessage('Este usuario no puede validar esta operación..... ');
              FDQAutorizados.Close;
              close;
            end;
        end
      else
        if FModo=1 then   // Valida el Usuario
          begin
            FormLogin.Tag:=1;
            FUsuario:=Trim(edNombre.Text);
            Close;
          end;
    end;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  edNombre.Text:=FUsuario;

end;

end.