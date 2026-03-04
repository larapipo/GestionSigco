
# Unidad Delphi - Firebird + OpenAI

Esta unidad te permite enviar prompts en lenguaje natural para obtener consultas SQL y ejecutarlas sobre una base de datos Firebird usando FireDAC.

## Requisitos
- Delphi con soporte a FireDAC y TNetHTTPClient
- Conexión TFDConnection configurada
- API Key de OpenAI

## Uso básico

```delphi
uses UFirebirdSQLFromIA;

var
  IA: TIA_SQL_Firebird;
  Q: TFDQuery;
begin
  IA := TIA_SQL_Firebird.Create(FDConnection1, 'TU_API_KEY');
  if IA.EjecutarPrompt('ventas del mes pasado', Q) then
    DBGrid1.DataSource := TDataSource.Create(Self).SetDataSet(Q);
end;
```

## Seguridad sugerida
- Validar SQL antes de ejecutarlo
- Hacer log de las consultas
- Trabajar en modo solo lectura si es necesario
