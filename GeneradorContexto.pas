
procedure GenerarContextoTablas(AConnection: TFDConnection; AMemo: TMemo);
var
  Q: TFDQuery;
  Tabla, Campo, UltTabla: string;
begin
  AMemo.Clear;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text := 'SELECT rdb$relation_name AS tabla, rdb$field_name AS campo ' +
                  'FROM rdb$relation_fields ' +
                  'WHERE rdb$system_flag IS DISTINCT FROM 1 ' +
                  'ORDER BY rdb$relation_name, rdb$field_position';
    Q.Open;
    UltTabla := '';
    while not Q.Eof do
    begin
      Tabla := Trim(Q.FieldByName('tabla').AsString);
      Campo := Trim(Q.FieldByName('campo').AsString);
      if Tabla <> UltTabla then
      begin
        if UltTabla <> '' then
          AMemo.Lines[AMemo.Lines.Count - 1] := AMemo.Lines[AMemo.Lines.Count - 1] + ')';
        AMemo.Lines.Add(Tabla + '(' + Campo);
        UltTabla := Tabla;
      end
      else
        AMemo.Lines[AMemo.Lines.Count - 1] := AMemo.Lines[AMemo.Lines.Count - 1] + ', ' + Campo;
      Q.Next;
    end;
    if AMemo.Lines.Count > 0 then
      AMemo.Lines[AMemo.Lines.Count - 1] := AMemo.Lines[AMemo.Lines.Count - 1] + ')';
  finally
    Q.Free;
  end;
end;
