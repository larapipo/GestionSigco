unit uBasicLog;

interface


procedure DebugLog(Msg: string);

implementation
uses IOUtils, SysUtils, Windows, SyncObjs;

var
  CS: TCriticalSection;

procedure DebugLog(Msg: string);
{$ifdef debug}
var
  FN: string;
  F: TextFile;
begin
  OutputDebugString(Pchar(Msg));
  CS.Enter;
  try
    try
      FN := TPath.ChangeExtension(ParamStr(0), '.log');
      AssignFile(F, FN);
      if TFile.Exists(FN) then
        Append(F)
      else
        ReWrite(F);
      try
        Writeln(F, DateTimeToStr(Now) + ' ' +  Msg);
      finally
        CloseFile(F);
      end;
    except
      ; //nunca hacer esto en casa.
    end;
  finally
    CS.Leave;
  end;
end;
{$else}
begin

end;
{$endif}

initialization
  {$ifdef debug}
  CS := TCriticalSection.Create;
  {$endif}
finalization
  {$ifdef debug}
  FreeAndNil(CS);
  {$endif}
end.
