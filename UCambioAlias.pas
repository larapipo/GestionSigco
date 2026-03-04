UNIT UCambioAlias;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, DBTables, ExtCtrls;

TYPE
  TFormAlias = CLASS(TForm)
    Panel1: TPanel;
    Dir: TDirectoryListBox;
    ListBox1: TListBox;
    Button1: TButton;
    Label1: TLabel;
    PROCEDURE DirChange(Sender: TObject);
    PROCEDURE Button1Click(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormAlias: TFormAlias;

IMPLEMENTATION

{$R *.DFM}

PROCEDURE TFormAlias.DirChange(Sender: TObject);
BEGIN
  // Si Puede ser=  Label1.Caption:=Dir.Items.CommaText;
  Label1.Caption := Dir.Directory;
END;

PROCEDURE TFormAlias.Button1Click(Sender: TObject);
BEGIN
  Session.GetAliasParams('Gestion', ListBox1.Items);
  ListBox1.Items[0] := 'path=' + Dir.Directory;
  Session.ModifyAlias('Gestion', ListBox1.Items);
  Session.SaveConfigFile;
  Session.GetAliasParams('Gestion', ListBox1.Items);
  Session.Close;
END;

PROCEDURE TFormAlias.FormCreate(Sender: TObject);
BEGIN
  AutoSize := True;
  Session.GetAliasParams('Gestion', ListBox1.Items);
END;

PROCEDURE TFormAlias.FormClose(Sender: TObject; VAR Action: TCloseAction);
BEGIN
  Action := caFree;
END;

END.
