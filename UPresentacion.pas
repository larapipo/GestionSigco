UNIT UPresentacion;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, jpeg, dxGDIPlusClasses;

TYPE
  TFormPresentacion = CLASS(TForm)
    Label2: TLabel;
    lbVersion: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormPresentacion: TFormPresentacion;

IMPLEMENTATION

{$R *.DFM}

procedure TFormPresentacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Action:=cafree;
end;

procedure TFormPresentacion.FormCreate(Sender: TObject);

  function  GetAppVersion:string;
  var
   Size, Size2: DWord;
   Pt, Pt2: Pointer;
  begin
    Size := GetFileVersionInfoSize(PChar (ParamStr (0)), Size2);
    if Size > 0 then
    begin
      GetMem (Pt, Size);
      try
         GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
         VerQueryValue (Pt, '\', Pt2, Size2);
         with TVSFixedFileInfo (Pt2^) do
         begin
           Result:= ' Ver '+
                    IntToStr (HiWord (dwFileVersionMS)) + '.' +
                    IntToStr (LoWord (dwFileVersionMS)) + '.' +
                    IntToStr (HiWord (dwFileVersionLS)) + '.' +
                    IntToStr (LoWord (dwFileVersionLS));
        end;
      finally
        FreeMem (Pt);
      end;
    end;
  end;

begin
  AutoSize:=True;
  lbVersion.Caption:=GetAppVersion;
end;

procedure TFormPresentacion.FormDestroy(Sender: TObject);
begin
  FormPresentacion:=nil;
end;

END.
