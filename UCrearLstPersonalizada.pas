unit UCrearLstPersonalizada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCrearLstPersonalizada = class(TForm)
    edNombre: TLabeledEdit;
    btCrear: TBitBtn;
    spCrearLst: TFDStoredProc;
    spModificar: TFDStoredProc;
    procedure btCrearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    FModo :Integer;
    FLIsta:Integer;
    { Private declarations }
  public
    { Public declarations }
  published

    property Modo  :Integer read FModo Write FModo;
    property Lista :Integer read FLIsta Write FLIsta;

  end;

var
  FormCrearLstPersonalizada: TFormCrearLstPersonalizada;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormCrearLstPersonalizada.btCrearClick(Sender: TObject);
begin
  if FModo=0 then
    begin
      if Trim(edNombre.Text)='' then
        edNombre.Text:='Lista de Precios';

      Screen.Cursor:=crHourGlass;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        Application.ProcessMessages;
        Sleep(1);
        spCrearLst.close;
        spCrearLst.ParamByName('nombre').Value:= edNombre.Text;
        spCrearLst.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spCrearLst.Close;
        Application.ProcessMessages;
        ShowMessage('Esquema Terminado....');
      Except
        spCrearLst.Close;
        DMMain_FD.fdcGestion.Rollback;
        Application.ProcessMessages;
        ShowMessage('No se pudo generar el esquema....');
      end;
      Screen.Cursor:=crDefault;
      Close;
    end
  else
    if FModo=1 then
       begin
         Screen.Cursor:=crHourGlass;
         DMMain_FD.fdcGestion.StartTransaction;
         try
           Application.ProcessMessages;
           Sleep(1);
           spModificar.close;
           spModificar.ParamByName('nombre').Value:= edNombre.Text;
           spModificar.ParamByName('id').Value    := FLIsta;
           spModificar.ExecProc;
           DMMain_FD.fdcGestion.Commit;
           spModificar.Close;
           Application.ProcessMessages;
         Except
           spModificar.Close;
           DMMain_FD.fdcGestion.Rollback;
           Application.ProcessMessages;
           ShowMessage('No se pudo modificar esquema....');
         end;
         Screen.Cursor:=crDefault;
         Close;
       end;
end;

procedure TFormCrearLstPersonalizada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCrearLstPersonalizada.FormDestroy(Sender: TObject);
begin
  FormCrearLstPersonalizada:=nil;
end;

end.
