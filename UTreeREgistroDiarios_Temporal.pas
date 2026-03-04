unit UTreeREgistroDiarios_Temporal;


procedure TFormReasignacionPartesDiarios.BuscarCopilot3Execute(Sender: TObject);
var
  CabNode, DetNode, DiarioNode: TTreeNode;
  QCab, QDet, QSubDet, QDiario: TFDQuery;
begin
  tvOrdenes.Items.BeginUpdate;
  tvOrdenes.Items.Clear;

  QCab := TFDQuery.Create(nil);
  try
    QCab.Connection := DMMain_FD.fdcGestion;
    QCab.SQL.Text :=
      'SELECT c.id, c.nrocpbte, c.cliente, cl.nombre ' +
      'FROM ordenproduccion_cab c ' +
      'LEFT JOIN clientes cl ON cl.codigo = c.cliente ' +
      'WHERE c.estado = ''P'' AND c.cliente <> ''''';
    QCab.Open;

    while not QCab.Eof do
    begin
      // Cabecera
      CabNode := tvOrdenes.Items.Add(nil,
        Format('Comprobante: %s | Cliente: %s',
          [QCab.FieldByName('NROCPBTE').AsString,
           QCab.FieldByName('NOMBRE').AsString]));
      CabNode.Data := Pointer(QCab.FieldByName('ID').AsInteger);

      // Detalles
      QDet := TFDQuery.Create(nil);
      try
        QDet.Connection := DMMain_FD.fdcGestion;
        QDet.SQL.Text :=
          'SELECT ID, CODIGO, DETALLE, CANTIDAD, CANT_ENTREGADA ' +
          'FROM ORDENPRODUCCION_DET WHERE ID_OPCAB = :ID';
        QDet.ParamByName('ID').AsInteger := QCab.FieldByName('ID').AsInteger;
        QDet.Open;

        while not QDet.Eof do
        begin
          // SubDetalle
          QSubDet := TFDQuery.Create(nil);
          try
            QSubDet.Connection := DMMain_FD.fdcGestion;
            QSubDet.SQL.Text :=
              'SELECT ID, CANTIDAD, CANTIDAD_SALDO ' +
              'FROM ORDENPRODUCCION_SUB_DET WHERE ID_DET_OP = :ID';
            QSubDet.ParamByName('ID').AsInteger := QDet.FieldByName('ID').AsInteger;
            QSubDet.Open;

            DetNode := tvOrdenes.Items.AddChild(CabNode,
              Format('Cod: %s | Desc: %s | Cant: %s | Entregada: %s | Saldo: %s',
                [QDet.FieldByName('CODIGO').AsString,
                 QDet.FieldByName('DETALLE').AsString,
                 FormatFloat('#,##0.000', QDet.FieldByName('CANTIDAD').AsFloat),
                 FormatFloat('#,##0.000', QDet.FieldByName('CANT_ENTREGADA').AsFloat),
                 FormatFloat('#,##0.000', QSubDet.FieldByName('CANTIDAD_SALDO').AsFloat)]));
            DetNode.Data := Pointer(QDet.FieldByName('ID').AsInteger);

            // Movimientos diarios
            QDiario := TFDQuery.Create(nil);
            try
              QDiario.Connection := DMMain_FD.fdcGestion;
              QDiario.SQL.Text :=
                'SELECT ID, FECHA, CANTIDAD, OBSERVACIONES ' +
                'FROM ORDENPRODUCCION_DIARIO WHERE ID_SUBDET_PROD = :ID';
              QDiario.ParamByName('ID').AsInteger := QSubDet.FieldByName('ID').AsInteger;
              QDiario.Open;

              while not QDiario.Eof do
              begin
                DiarioNode := tvOrdenes.Items.AddChild(DetNode,
                  Format('Fecha: %s | Cant: %s | Obs: %s',
                    [FormatDateTime('dd/mm/yyyy', QDiario.FieldByName('FECHA').AsDateTime),
                     FormatFloat('#,##0.000', QDiario.FieldByName('CANTIDAD').AsFloat),
                     QDiario.FieldByName('OBSERVACIONES').AsString]));
                DiarioNode.Data := Pointer(QDiario.FieldByName('ID').AsInteger);

                QDiario.Next;
              end;
            finally
              QDiario.Free;
            end;
          finally
            QSubDet.Free;
          end;

          QDet.Next;
        end;
      finally
        QDet.Free;
      end;

      QCab.Next;
    end;
  finally
    QCab.Free;
  end;

  tvOrdenes.Items.EndUpdate;
end;



end.
