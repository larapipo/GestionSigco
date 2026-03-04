program Demo;

uses
  Forms,
  demoMain in 'demoMain.pas' {Form1},
  CotLinker_TLB in 'CotLinker_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
