UNIT UAcercaDe;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg;

TYPE
  TFormAcercaDe = CLASS(TForm)
    lbVersion: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Image1: TImage;
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormAcercaDe: TFormAcercaDe;

IMPLEMENTATION

uses UDistribuidores;

{$R *.DFM}

PROCEDURE TFormAcercaDe.FormClose(Sender: TObject; VAR Action: TCloseAction);
  BEGIN
    Action := caFree;
  END;

procedure TFormAcercaDe.FormCreate(Sender: TObject);

    function GetAppVersion: string;
      var
        Size, Size2: DWord;
        Pt, Pt2: Pointer;
      begin
        Size := GetFileVersionInfoSize(PChar(ParamStr(0)), Size2);
        if Size > 0 then
        begin
          GetMem(Pt, Size);
          try
            GetFileVersionInfo(PChar(ParamStr(0)), 0, Size, Pt);
            VerQueryValue(Pt, '\', Pt2, Size2);
            with TVSFixedFileInfo(Pt2^) do
            begin
              Result := ' Ver ' + IntToStr(HiWord(dwFileVersionMS)) + '.' +
                IntToStr(LoWord(dwFileVersionMS)) + '.' +
                IntToStr(HiWord(dwFileVersionLS)) + '.' +
                IntToStr(LoWord(dwFileVersionLS));
            end;
          finally
            FreeMem(Pt);
          end;
        end;
      end;

  begin
    AutoSize := True;
    lbVersion.Caption := GetAppVersion;
  end;

procedure TFormAcercaDe.FormDestroy(Sender: TObject);
  begin
    FormAcercaDe := nil;
  end;

procedure TFormAcercaDe.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
  begin
    if Not(Assigned(FormDistribuidores)) Then
      FormDistribuidores := TFormDistribuidores.Create(Application);
    FormDistribuidores.Show;
  end;

procedure TFormAcercaDe.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
  begin
    if Assigned(FormDistribuidores) Then
      FormDistribuidores.Close;
  end;

END.
