unit UConfiguraPath;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,IniFiles, Vcl.ExtCtrls, AdvCombo, ColCombo,Librerias;

type
  TFormConfiguraPath = class(TForm)
    Label31: TLabel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    rgBaseDatos: TRadioGroup;
    colbAlias: TColumnComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
//    procedure CheckBox1Click(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
    FPath                 : String;
    FTipo                 : Integer;
    ContIntentos,
    MaxIntentos           : Integer;
    FConectado            : Boolean;
    procedure Cancelar;
  public
    { Public declarations }
    Archivo   :TextFile;
    function Conectar     : Boolean;
  published
    property Path         : String      read FPath          write FPath;
    property Tipo         : Integer     read FTipo          write FTipo;
    property Conectado    : Boolean     read FConectado;

  end;

var
  FormConfiguraPath: TFormConfiguraPath;

implementation

{$R *.dfm}
uses
  UDMain_FD;

procedure TFormConfiguraPath.Cancelar;
begin
  ModalResult :=  mrCancel;
end;


function  TFormConfiguraPath.Conectar       : Boolean;
var
  GeneralIni:TIniFile;
  ClaveAux:String;
  I:Integer;
begin
  colbAlias.EditColumn := 1;
  FPath                := colbAlias.EditText;
  FTipo                := rgBaseDatos.ItemIndex;

  GeneralIni := TIniFile.Create(DMMain_FD.MainPath+'General.Ini');
  GeneralIni.WriteInteger('Datos','DatosSinBDEKey', colbAlias.ItemIndex);
  GeneralIni.WriteInteger('Datos', 'BaseDatos', rgBaseDatos.ItemIndex);
  GeneralIni.WriteString('Datos', 'DatosSinBDEPath',colbAlias.EditText);
  GeneralIni.WriteInteger('Datos', 'BaseDatos', rgBaseDatos.ItemIndex);
  GeneralIni.Free;

  Inc(ContIntentos);
  FConectado  := DMMain_FD.Conectar;
  if (not FConectado) and (not Visible) then   ShowModal;
  Result  :=  FConectado;
//    if (ContIntentos < MaxIntentos) then
//      begin
//        ShowMessage('Verificar el Alias de la Base de Datos...');
//      end
//    else
//      begin
//        Result      :=  False;
//        ModalResult :=  mrCancel;
//      end;
end;

procedure TFormConfiguraPath.btCancelClick(Sender: TObject);
begin
  Cancelar;
end;

procedure TFormConfiguraPath.btOkClick(Sender: TObject);
begin
  if Conectar then
    ModalResult  :=  mrOk
  else
    if (ContIntentos >= MaxIntentos) then
      Cancelar
    else
      ShowMessage('Verificar el Alias de la Base de Datos...');
end;

//procedure TFormConfiguraPath.CheckBox1Click(Sender: TObject);
//begin
//  cbAlias.Sorted:=CheckBox1.Checked;
//end;

procedure TFormConfiguraPath.FormCreate(Sender: TObject);
var s:String;
dato1,dato2:String;
AItemGestion: TComboItem;
begin
  ContIntentos  :=  0;
  MaxIntentos   :=  5;
//
// if FileExists(ExtractFilePath(ParamStr(0))+'ALIAS.TXT')=False then
//    FileCreate(ExtractFilePath(ParamStr(0))+'ALIAS.TXT');
//  AssignFile(Archivo,ExtractFilePath(ParamStr(0))+'ALIAS.TXT');
//  Reset(Archivo);
//  while not(Eof(Archivo)) do
//    begin
//      ReadLn(Archivo,S);
//      cbAlias.Items.Add(s);
//    end;
//
//
//
//  CloseFile(Archivo);
//  cbAlias.ItemIndex  := 0;
//

 if FileExists(ExtractFilePath(ParamStr(0))+'ALIAS.CSV')=False then
    FileCreate(ExtractFilePath(ParamStr(0))+'ALIAS.CSV');
  AssignFile(Archivo,ExtractFilePath(ParamStr(0))+'ALIAS.CSV');
  Reset(Archivo);

  // alias de Gestion************************************
  //****************************************************
  colbAlias.Columns.Clear;
  colbAlias.ComboItems.Clear;


  with colbAlias.Columns.Add do
    begin
      Width:=110;
      Font.Style:=[fsBold];
    end;
  with colbAlias.Columns.Add do
    begin
      Width := 350;
      Color := clAqua;
     end;

  while not(Eof(Archivo)) do
    begin
      ReadLn(Archivo, S);
      s:=QuitarCaracteres(s);

      dato1  := Copy(s, 1,Pos(',',s)-1);
      dato2  := Copy(s, Pos(',',s)+1, length(s));

      AItemGestion  := colbAlias.ComboItems.Add;//TComboItem.Create(colbAlias.ComboItems);
      AItemGestion.Strings.Add(dato1);
      AItemGestion.Strings.Add(dato2);
      AItemGestion   :=  nil;
    end;


end;

end.
