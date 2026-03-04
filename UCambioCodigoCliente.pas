unit UCambioCodigoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvGradient, ExtCtrls, DB, ActnList,
  Buttons, Mask, FMTBcd, SqlExpr, DBXCommon, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambioCodigoCliente = class(TForm)
    pn1: TPanel;
    pn2: TPanel;
    pn3: TPanel;
    pn4: TPanel;
    ed1: TEdit;
    ed2: TEdit;
    btn1: TButton;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    btn3: TButton;
    lb4: TLabel;
    btn4: TSpeedButton;
    actlst1: TActionList;
    Verificar: TAction;
    Cambiar: TAction;
    lbEstado: TLabel;
    lb5: TLabel;
    QCliente: TFDQuery;
    QTrigerInactivosFD: TFDQuery;
    QNombreTriggersFD: TFDQuery;
    QDriveTriggerFD: TFDQuery;
    QNombreTriggersFDRDBTRIGGER_NAME: TWideStringField;
    QNombreTriggersFDRDBTRIGGER_INACTIVE: TSmallintField;
    QClienteCODIGO: TStringField;
    QTrigerInactivosFDRDBTRIGGER_NAME: TWideStringField;
    QTrigerInactivosFDRDBTRIGGER_INACTIVE: TSmallintField;
    spcambiaCodigoFD: TFDStoredProc;
    QCodigoFree: TFDQuery;
    QCodigoFreeNEWCODIGO: TIntegerField;
    BuscadoCodigoFree: TAction;
    Salir: TAction;
    procedure ed2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure VerificarExecute(Sender: TObject);
    procedure CambiarExecute(Sender: TObject);
    procedure ed2Enter(Sender: TObject);
    procedure ed2KeyPress(Sender: TObject; var Key: Char);
    procedure ed2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BuscadoCodigoFreeExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
  private
    FCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property codigo:string read FCodigo write FCodigo;
  end;

var
  FormCambioCodigoCliente: TFormCambioCodigoCliente;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCambioCodigoCliente.BuscadoCodigoFreeExecute(Sender: TObject);
begin
  QCodigoFree.Close;
  QCodigoFree.Open;
  ed2.Text:=QCodigoFreeNEWCODIGO.AsString;
  QCodigoFree.Close;
  Verificar.Execute;
end;

procedure TFormCambioCodigoCliente.CambiarExecute(Sender: TObject);
var Fallo:Boolean;
begin
  ed2.Text:=copy('00000000',1,6-length(trim(ed2.Text)))+trim(ed2.Text);
  if MessageDlg('Esta por hacer un cambio de codigo, de cliente. está seguro..?',mtConfirmation,mbYesNo,0,mbYes)=mrYes Then
  begin
    Fallo:=False;

    if Fallo then
      Exit;

    DMMain_FD.fdcGestion.StartTransaction;
    try
      lbEstado.Caption:='Iniciando cambio de codigo';
      Application.ProcessMessages;
      spcambiaCodigoFD.Close;
      spcambiaCodigoFD.ParamByName('codigoold').Value:=ed1.Text;
      spcambiaCodigoFD.ParamByName('codigonew').Value:=ed2.Text;
      spcambiaCodigoFD.ExecProc;
      spcambiaCodigoFD.Close;
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo cambiar el codigo...');
    end;

 
    lbEstado.Caption:='Finalizado';
    Application.ProcessMessages;
  end;

end;

procedure TFormCambioCodigoCliente.ed2Enter(Sender: TObject);
begin
   Cambiar.Enabled:=False;
end;

procedure TFormCambioCodigoCliente.ed2Exit(Sender: TObject);
begin
  ed2.Text:=copy('00000000',1,6-length(trim(ed2.Text)))+trim(ed2.Text);
end;

procedure TFormCambioCodigoCliente.ed2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF (Key = VK_F12) THEN
    BuscadoCodigoFree.Execute;
end;

procedure TFormCambioCodigoCliente.ed2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    ed2.Text:=copy('00000000',1,6-length(trim(ed2.Text)))+trim(ed2.Text);

end;

procedure TFormCambioCodigoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QTrigerInactivosFD.Close;
  QTrigerInactivosFD.Open;
  if QTrigerInactivosFD.RecordCount>0 then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        lbEstado.Caption:='Verificando Re-Activacion d Triggers';
        Application.ProcessMessages;
        QNombreTriggersFD.Close;
        QNombreTriggersFD.Open;
        while not(QNombreTriggersFD.Eof) do
          begin
            QDriveTriggerFD.Close;
            QDriveTriggerFD.SQL.Clear;
            QDriveTriggerFD.SQL.Add('ALTER TRIGGER '+''+QNombreTriggersFD.Fields[0].AsString+''+' ACTIVE');
            QDriveTriggerFD.ExecSQL;
            QNombreTriggersFD.Next;
          end;
        QNombreTriggersFD.Close;
        QDriveTriggerFD.Close;

        lbEstado.Caption:='Finalizado';
        Application.ProcessMessages;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo Reacivar los Triggers....');
      end;
    end;
  QTrigerInactivosFD.Close;

  if ed2.Text<>'' then
    FCodigo:=ed2.Text
  else
    FCodigo:=ed1.Text;
  Action:=caFree;

end;

procedure TFormCambioCodigoCliente.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  lbEstado.Caption:='-';
end;

procedure TFormCambioCodigoCliente.FormDestroy(Sender: TObject);
begin
  FormCambioCodigoCliente:=nil;
end;

procedure TFormCambioCodigoCliente.FormShow(Sender: TObject);
begin
  ed1.Text        := FCodigo;
  Cambiar.Enabled := False;
  ed2.SetFocus;

  Verificar.Execute;
end;

procedure TFormCambioCodigoCliente.SalirExecute(Sender: TObject);
begin
 Close;
end;

procedure TFormCambioCodigoCliente.VerificarExecute(Sender: TObject);
begin
  Cambiar.Enabled:=True;
  ed2.Text:=copy('00000000',1,6-length(trim(ed2.Text)))+trim(ed2.Text);
  QCliente.Close;
  QCliente.ParamByName('codigo').Value:=ed2.Text;
  QCliente.Open;
  if QCliente.Fields[0].AsString<>'' then
    begin
//      ShowMessage('Codigo existente.... use otro..');
      ed2.Text:='';
      Cambiar.Enabled:=False;
    end;
  QCliente.Close;
end;

end.
