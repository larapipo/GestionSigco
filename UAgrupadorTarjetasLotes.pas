
unit UAgrupadorTarjetasLotes;

interface

uses
  System.SysUtils, System.Classes, AdvStringGrid, System.Generics.Collections;

type
  TLoteData = record
    MontoBruto, ArancelesCostos, IVAComercio, RetIIBB, RetAFAM,
    ImporteOriginal, DescFinanc, IVA_Financ, NetoFinal: Double;
  end;

procedure AgruparYSumarPorTarjetaYLote(advgMovimientosLotes, advgLotesTC: TAdvStringGrid);

implementation

function ParseFloatSafe(const S: string): Double;
begin
  Result := StrToFloatDef(StringReplace(S, ',', '.', [rfReplaceAll]), 0);
end;

function EsFilaDeDatos(const Grid: TAdvStringGrid; const Index: Integer): Boolean;
begin
  Result := not SameText(Trim(Grid.Cells[0, Index]), 'Terminal') and
            not SameText(Trim(Grid.Cells[0, Index]), 'Fecha') and
            not SameText(Trim(Grid.Cells[0, Index]), 'Lote') and
            not SameText(Trim(Grid.Cells[0, Index]), 'Ticket') and
            not SameText(Trim(Grid.Cells[0, Index]), 'Tarjeta') and
            not SameText(Trim(Grid.Cells[0, Index]), 'Autorización') and
            not SameText(Trim(Grid.Cells[0, Index]), 'Bruto s/propina') and
            not SameText(Trim(Grid.Cells[0, Index]), 'Propina') and
            (Trim(Grid.Cells[0, Index]) <> '');
end;

procedure AgruparYSumarPorTarjetaYLote(advgMovimientosLotes, advgLotesTC: TAdvStringGrid);
var
  i: Integer;
  key: string;
  data, current: TLoteData;
  LotesDict: TDictionary<string, TLoteData>;
  pair: TPair<string, TLoteData>;
  claves: TArray<string>;
begin
  LotesDict := TDictionary<string, TLoteData>.Create;
  try
    for i := 1 to advgMovimientosLotes.RowCount - 1 do
    begin
      if not EsFilaDeDatos(advgMovimientosLotes, i) then
        Continue;

      key := Trim(advgMovimientosLotes.Cells[1, i]) + '|' + Trim(advgMovimientosLotes.Cells[7, i]);

      data.MontoBruto       := ParseFloatSafe(advgMovimientosLotes.Cells[9, i]);
      data.ArancelesCostos  := ParseFloatSafe(advgMovimientosLotes.Cells[12, i]);
      data.IVAComercio      := ParseFloatSafe(advgMovimientosLotes.Cells[13, i]);
      data.RetIIBB          := ParseFloatSafe(advgMovimientosLotes.Cells[14, i]);
      data.RetAFAM          := ParseFloatSafe(advgMovimientosLotes.Cells[15, i]);
      data.ImporteOriginal  := ParseFloatSafe(advgMovimientosLotes.Cells[16, i]);
      data.DescFinanc       := ParseFloatSafe(advgMovimientosLotes.Cells[17, i]);
      data.IVA_Financ       := ParseFloatSafe(advgMovimientosLotes.Cells[18, i]);
      data.NetoFinal        := ParseFloatSafe(advgMovimientosLotes.Cells[19, i]);

      if LotesDict.TryGetValue(key, current) then
      begin
        current.MontoBruto      := current.MontoBruto + data.MontoBruto;
        current.ArancelesCostos := current.ArancelesCostos + data.ArancelesCostos;
        current.IVAComercio     := current.IVAComercio + data.IVAComercio;
        current.RetIIBB         := current.RetIIBB + data.RetIIBB;
        current.RetAFAM         := current.RetAFAM + data.RetAFAM;
        current.ImporteOriginal := current.ImporteOriginal + data.ImporteOriginal;
        current.DescFinanc      := current.DescFinanc + data.DescFinanc;
        current.IVA_Financ      := current.IVA_Financ + data.IVA_Financ;
        current.NetoFinal       := current.NetoFinal + data.NetoFinal;
        LotesDict[key] := current;
      end
      else
        LotesDict.Add(key, data);
    end;

    advgLotesTC.Clear;
    advgLotesTC.ColCount := 11;
    advgLotesTC.RowCount := 1;
    advgLotesTC.Cells[0,0]  := 'Tarjeta';
    advgLotesTC.Cells[1,0]  := 'Lote';
    advgLotesTC.Cells[2,0]  := 'MontoBruto';
    advgLotesTC.Cells[3,0]  := 'ArancelesCostos';
    advgLotesTC.Cells[4,0]  := 'IVAComercio';
    advgLotesTC.Cells[5,0]  := 'RetIIBB';
    advgLotesTC.Cells[6,0]  := 'RetAFAM';
    advgLotesTC.Cells[7,0]  := 'ImporteOriginal';
    advgLotesTC.Cells[8,0]  := 'DescFinanc';
    advgLotesTC.Cells[9,0]  := 'IVA_Financ';
    advgLotesTC.Cells[10,0] := 'NetoFinal';

    i := 1;
    for pair in LotesDict do
    begin
      claves := pair.Key.Split(['|']);
      advgLotesTC.RowCount := i + 1;
      advgLotesTC.Cells[0, i] := claves[0];
      advgLotesTC.Cells[1, i] := claves[1];
      advgLotesTC.Cells[2, i] := FloatToStrF(pair.Value.MontoBruto, ffFixed, 18, 2);
      advgLotesTC.Cells[3, i] := FloatToStrF(pair.Value.ArancelesCostos, ffFixed, 18, 2);
      advgLotesTC.Cells[4, i] := FloatToStrF(pair.Value.IVAComercio, ffFixed, 18, 2);
      advgLotesTC.Cells[5, i] := FloatToStrF(pair.Value.RetIIBB, ffFixed, 18, 2);
      advgLotesTC.Cells[6, i] := FloatToStrF(pair.Value.RetAFAM, ffFixed, 18, 2);
      advgLotesTC.Cells[7, i] := FloatToStrF(pair.Value.ImporteOriginal, ffFixed, 18, 2);
      advgLotesTC.Cells[8, i] := FloatToStrF(pair.Value.DescFinanc, ffFixed, 18, 2);
      advgLotesTC.Cells[9, i] := FloatToStrF(pair.Value.IVA_Financ, ffFixed, 18, 2);
      advgLotesTC.Cells[10,i] := FloatToStrF(pair.Value.NetoFinal, ffFixed, 18, 2);
      Inc(i);
    end;

  finally
    LotesDict.Free;
  end;
end;

end.
