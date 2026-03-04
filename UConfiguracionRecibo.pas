unit UConfiguracionRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CheckLst, JvExControls, JvxCheckListBox,
  JvGradient, ExtCtrls,IniFiles;

type
  TFormConfiguracionRecibo = class(TForm)
    pnConfiguracion: TPanel;
    JvGradient3: TJvGradient;
    JvGradient4: TJvGradient;
    JvGradient5: TJvGradient;
    chbFoco: TJvxCheckListBox;
    chklstSecuencia: TCheckListBox;
    btCerrar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   ReciboIni   : TIniFile;
   Modo        : String;
   Foco        :Integer; // 0:fecha - 1:Codigo Cliente
   AplicacionAutomatica:String;
   UsarFiltrado:Boolean;
   TopProcentaje,TopDescto:Boolean;

  end;

var
  FormConfiguracionRecibo: TFormConfiguracionRecibo;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormConfiguracionRecibo.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormConfiguracionRecibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    ReciboIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_Recibo.ini')
  else
    ReciboIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_Recibo.ini');
  //*************************************************************
  ReciboIni.WriteString('Modo', 'Modo', Modo);
  ReciboIni.WriteString('Aplicacion', 'AplicaAuto', AplicacionAutomatica);
  ReciboIni.WriteInteger('Foco', 'Foco', chbFoco.CheckedIndex);
  ReciboIni.WriteBool('Secuencia','Porcentaje',chklstSecuencia.Checked[0]);
  ReciboIni.WriteBool('Secuencia','importe',chklstSecuencia.Checked[1]);
  ReciboIni.WriteBool('filtro','filtro',chklstSecuencia.Checked[2]);
  ReciboIni.WriteBool('filtro','Usarfiltro',chklstSecuencia.Checked[3]);

  ReciboIni.Free;
  Action:=cafree;
end;

procedure TFormConfiguracionRecibo.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormConfiguracionRecibo.FormDestroy(Sender: TObject);
begin
  FormConfiguracionRecibo:=nil;
end;

procedure TFormConfiguracionRecibo.FormShow(Sender: TObject);
begin
 if DMMain_FD.UsuarioActivo<>'' Then
    ReciboIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_Recibo.ini')
  else
    ReciboIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_Recibo.ini');
  //*************************************************************
  Modo                   := ReciboIni.ReadString('Modo', 'Modo', 'N');
  AplicacionAutomatica   := ReciboIni.ReadString('Aplicacion', 'AplicaAuto', 'N');
  chbFoco.ItemIndex      := ReciboIni.ReadInteger('Foco', 'Foco', 0);
  chklstSecuencia.Checked[0]:= ReciboIni.ReadBool('Secuencia','Porcentaje',False);
  chklstSecuencia.Checked[1]:=ReciboIni.ReadBool('Secuencia','importe',False);
  chklstSecuencia.Checked[2]:=ReciboIni.ReadBool('filtro','filtro',False);
  chklstSecuencia.Checked[3]:=ReciboIni.ReadBool('filtro','Usarfiltro',True);
  ReciboIni.Free;
end;

end.
