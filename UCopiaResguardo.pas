unit UCopiaResguardo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ZipMstr, ComCtrls, ExtCtrls, DBTables;

type
  TFormCopiaResguardo = class(TForm)
    ZipMaster: TZipMaster;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ZipMasterProgress(Sender: TObject; ProgrType: ProgressType;
      Filename: String; FileSize: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ZipMasterMessage(Sender: TObject; ErrCode: Integer;
      Message: String);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalSize1, TotalProgress1, TotalSize2, TotalProgress2: Int64;
  end;

var
  FormCopiaResguardo: TFormCopiaResguardo;

implementation

{$R *.DFM}

procedure TFormCopiaResguardo.Button1Click(Sender: TObject);
var Camino:string;
BEGIN
  Button2.Enabled:=True;
  Button1.Enabled:=False;
  Label1.Caption:='Iniciando motor de compresión....';
  ZipMaster.ZipFileName:='A:\Archios.zip';
  ZipMaster.FSpecArgs.Add(Camino);
  ZipMaster.Add;
  Label1.Caption:='Finalizado....';
  Button1.Enabled:=True;
  Button2.Enabled:=False;

end;


procedure TFormCopiaResguardo.ZipMasterProgress(Sender: TObject;
  ProgrType: ProgressType; Filename: String; FileSize: Integer);
var
   Step : Integer;
begin
   case ProgrType of
      TotalSize2Process:
         begin
           // ZipMaster1Message( self, 0, 'in OnProgress type TotalBytes, size= ' + IntToStr( FileSize ) );
          //  MsgForm.StatusBar1.Panels.Items[0].Text := 'Total size: ' + IntToStr( FileSize div 1024 ) + ' Kb';
            ProgressBar2.Position := 1;
            TotalSize2                    := FileSize;
            TotalProgress2                := 0;
         end;
      TotalFiles2Process:
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type TotalFiles, files= ' + IntToStr( FileSize ) );
            //MsgForm.StatusBar1.Panels.Items[1].Text := IntToStr( FileSize ) + ' files';
         end;
      NewFile:
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type NewFile, size= ' + IntToStr( FileSize ) );
            Label1.Caption := Filename;
            ProgressBar1.Position   := 1;         // Current position of bar.
            TotalSize1                      := FileSize;
            TotalProgress1                  := 0;
         end;
      ProgressUpdate:
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type Update, size= ' + IntToStr( FileSize ) );
            // FileSize gives now the bytes processed since the last call.
            TotalProgress1 := TotalProgress1 + FileSize;
            TotalProgress2 := TotalProgress2 + FileSize;
            if TotalSize1 <> 0 then
            begin
               {$IfDef VERD4+}  // D4
               Step := Integer( Int64(TotalProgress1) * Int64(10000) div Int64(TotalSize1) );
               {$Else}          // D2 and D3
               try
                  Step := Round( TotalProgress1 * 10000 / TotalSize1 );
               except
                  Step := 2147483647;
               end;
               
               // ZipMaster1Message( self, 0, 'Step = ' + IntToStr( Step ) );
               ProgressBar1.Position := 1 + Step;
            end else
               ProgressBar1.Position := 10001;
            if TotalSize2 <> 0 then
            begin
               {$IfDef VERD4+}
               Step := Integer( Int64(TotalProgress2) * Int64(10000) div Int64(TotalSize2) );
               {$Else}
               try
                  Step := Round( TotalProgress2 * 10000 / TotalSize2 );
               except
                  Step := 2147483647;
               end;
               
               ProgressBar2.Position := 1 + Step;
            end;
         end;
      EndOfBatch:    // Reset the progress bar and filename.
         begin
            // ZipMaster1Message( self, 0, 'in OnProgress type EndOfBatch' );
            //MsgForm.FileBeingZipped.Caption   := '';
            ProgressBar1.Position     := 0;
            //MsgForm.StatusBar1.Panels[0].Text := '';
            //MsgForm.StatusBar1.Panels[1].Text := '';
            ProgressBar2.Position     := 0;
         end;
   end;   // EOF Case
end;


procedure TFormCopiaResguardo.FormClose(Sender: TObject; var Action: TCloseAction);
BEGIN
  ZipMaster.Unload_Zip_Dll;
  ZipMaster.Unload_Unz_Dll;
  Action:=caFree;
end;

procedure TFormCopiaResguardo.ZipMasterMessage(Sender: TObject; ErrCode: Integer;
  Message: String);
BEGIN

  Memo1.Lines.Add('>'+Label1.Caption);
end;

procedure TFormCopiaResguardo.Button2Click(Sender: TObject);
BEGIN
  ZipMaster.Cancel:=True;
  Button2.Enabled:=False;
  Button1.Enabled:=True;
end;

procedure TFormCopiaResguardo.FormCreate(Sender: TObject);
BEGIN
  Button1.Enabled:=True;
  Button2.Enabled:=False;
  ZipMaster.Load_Zip_Dll;
  ZipMaster.Load_Unz_Dll;
  Label1.Caption:='Listo para inciar';
  AutoSize:=true;
end;

end.
