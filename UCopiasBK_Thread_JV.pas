unit UCopiasBK_Thread_JV;

interface

implementation

{
procedure TFMenu.JvHiloPedidoExecute(Sender: TObject; Params: Pointer);
VAR
  QConection: TFDConnection;
  Query:TFDQuery;
  SQLText:string;
  r:Integer;
begin
  TimerPedido.Enabled:=False;
  QConection := TFDConnection.Create(NIL);
  with QConection do
    begin
      ConnectionName                         := 'PlantillaPedidos';
      QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
      QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
      QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
      QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
      QConection.Params.Values['SQLDialect'] :=DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
      LoginPrompt          := False;
      QConection.Connected := True;
    end;
  SQLText:='select p.fecha,p.id,p.cliente,coalesce(c.nombre,''Sin Nombre'') from plantilla_pedido_cab p '+
           'left join clientes c on c.codigo=p.cliente where p.facturado=''N'' ';
  Query                := TFDQuery.Create(nil);
  Query.ConnectionName := QConection.ConnectionName;
 // Query.SQL.Text:='select Count(*) from plantilla_pedido_cab p where p.facturado = ''N'' and p.pedido_prevision=''N'' ';
  Query.SQL.Text:=SQLText;
  Query.Close;
  Query.Open;
  dskAlertPedido.MessageText:='';
  dskAlertPedido.HeaderText :='';
  dskAlertPedido.HeaderText :='Pedidos desde Notas de Pedido..';
  r:=0;
  sgPedidos.ClearAll;
  sgPedidos.RowCount := Query.RecordCount;
  if Query.RecordCount > 0 then
    begin
      while not(Query.Eof) do
        begin
          sgPedidos.Cells[0,r]:=Query.Fields[0].AsString;
          sgPedidos.Cells[1,r]:=Query.Fields[3].AsString;
          sgPedidos.Cells[2,r]:=Query.Fields[1].AsString;

          dskAlertPedido.MessageText:='Pedido de .. '+  Query.Fields[3].AsString+'..'+Query.Fields[3].AsString;

          Query.Next;
          Inc(r);
        end;
    end;
  Query.Close;
  QConection.Close;
  FreeAndNil(Query);
  FreeAndNil(QConection);;
  jvHiloPedido.Terminate;
  Sleep(5000);

end;


procedure TFMenu.JvHiloPedidoFinish(Sender: TObject);
begin
  if dskAlertPedido.MessageText<>'' then
    begin
      dskAlertPedido.Execute();
      pnPedidos.Visible:=True;
    end;

 // TimerPedido.Enabled := True;
end;


procedure TFMenu.JvHiloMinimosExecute(Sender: TObject; Params: Pointer);
var
  QConection: TFDConnection;
  MsgTxt:String;
  Query:TFDQuery;
begin
  TimerMinimo.Enabled:=False;
  if (QConection=nil) then
    begin
      QConection := TFDConnection.Create(Application);
      with QConection do
        begin
          ConnectionName                         := 'Minimo_2';
          QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt                            := False;
          QConection.Connected                   := True;
        end;

      Query:=TFDQuery.Create(nil);
      Query.ConnectionName:=QConection.ConnectionName;
      Query.SQL.Text:='select s.codigo_stk, s.detalle_stk, d.fisico from depositostk d '+
                    '  left join stock s on s.codigo_stk=d.codigo_stk '+
                    '  left join depositos dep on dep.id=d.codigo_deposito '+
                    'where d.aviso_minimostock=''S'' and d.fisico <= d.minimo ';
      Query.Open;


      DskAlertMinimo.MessageText:='';
      if Query.RecordCount>0 then
        MsgTxt:='<P align="center"><B>Stock por Debajo del Minimo</B></P>';
      MsgTxt:='';
      if (Query.RecordCount > 0) Then
        begin
          Query.First;
          while Not(Query.Eof) do
            begin
              MsgTxt:= MsgTxt + Query.FieldByName('CODIGO_STK').AsString + '-' + Query.FieldByName('DETALLE_STK').AsString +#9+' .... '+FormatFloat(',0.00', Query.FieldByName('FISICO').AsFloat)+#13;
              Query.Next;
            end;
          DskAlertMinimo.MessageText:=MsgTxt;
        end;

      Query.Close;
      QConection.Close;
      FreeAndNil(Query);
      FreeAndNil(QConection);

    end;
  JvHiloMinimos.Terminate;

end;


procedure TFMenu.JvHiloMinimosFinish(Sender: TObject);
begin
  //if DskAlertMinimo.MessageText<>'' Then
//    DskAlertMinimo.Execute;
  TimerMinimo.Enabled    := True;
end;


procedure TFMenu.jvHiloVencimientosExecute(Sender: TObject; Params: Pointer);
VAR
  Control    : Boolean;
  QConection : TFDConnection;
  Query:TFDQuery;
  MsgAux:String;
begin
  control                  := False;
  TimerVencimientos.Enabled:= False;
  if AdministradordeVencimientos1.Enabled then
    begin

      QConection := TFDConnection.Create(NIL);
      with QConection do
        begin
          ConnectionName := 'Vencimiento';
          Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt                 := False;
          Open;
        end;

      Query                := TFDQuery.Create(nil);
      Query.ConnectionName := QConection.ConnectionName;
      Query.SQL.Text:= 'select v.id, v.asunto, v.importe, v.fecha_incio, v.fecha_finalizacion from  vencimientos v '+
                       'where ( v.avisa_inicio between :desde-5 and :desde+5)'+
                       '          and v.finalizado<>''S''';

      Query.Close;

      Query.ParamByName('desde').AsDateTime:=Date;

      Query.Open;


      DskAlertVencimientos.MessageText:='';
     // AdvAlertVencimientos.AlertMessages.Clear;
      if Query.RecordCount > 0 then
        begin
          control := True;
          MsgAux  := '';
          while Not(Query.Eof) do
            begin
              MsgAux := MsgAux + Copy(Query.FieldByName('ASUNTO').AsString, 1, 25) + '....' +
                                 FormatFloat(',0.00', Query.FieldByName('IMPORTE').AsFloat) + ' //// Vto.: ' + FormatDateTime('dd/mm/yyyy',
                                 Query.FieldByName('FECHA_INCIO').AsDateTime) + #13;//'<br>';
              Query.Next;
            end;
          DskAlertVencimientos.MessageText:=MsgAux;
          //AdvAlertVencimientos.AlertMessages.Add.Text.Text:=MsgAux;
        end;
      Query.Close;
      QConection.Close;
      FreeAndNil(Query);
      FreeAndNil(QConection);
    end;
  jvHiloVencimientos.Terminate;
  // le pongo el valor de Control
  TimerVencimientos.Enabled := Control;
  if FinalizarAvisoVencimiento then
    TimerVencimientos.Enabled := False;
end;

procedure TFMenu.jvHiloVencimientosFinish(Sender: TObject);
begin
//  if AdvAlertVencimientos.AlertMessages.Count>0 then
//    AdvAlertVencimientos.Show;
  if DskAlertVencimientos.MessageText<>'' then
    DskAlertVencimientos.Execute;
 end;


 procedure TFMenu.jvHiloTxExecute(Sender: TObject; Params: Pointer);
var
  Busqueda: TSearchRec;
  iResultado: Integer;
  aux, SDirectorio: string;
  QConection: TFDConnection;
begin
  TimerTx_Stock.Enabled:=False;
  try
    with QConection do
      begin
        if QConection = nil then
          begin
            QConection := TFDConnection.Create(NIL);

            ConnectionName              := 'Transferencia';
            Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
            Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
            Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
            Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
            Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
            LoginPrompt                 := False;
          end;

        Connected                       := True;
      end;

      DMMain_FD.QDeposito.Connection := QConection;
      DMMain_FD.QDeposito.Close;
      DMMain_FD.QDeposito.ParamByName('Id').Value := DepositoEnUso;
      DMMain_FD.QDeposito.Open;

      SDirectorio := PathTx + '\';
      aux := SDirectorio + '*_a_' + '' + DMMain_FD.QDepositoNOMBRE.AsString + ''
              + '*.xml';
      iResultado := FindFirst(aux, faAnyFile, Busqueda);
      if (iResultado = 0) Then
        begin
          jvHiloTx.Synchronize(VerTx);
          Sleep(3000);
        end;
  finally
    DMMain_FD.QDeposito.Close;
    QConection.Connected    :=  False;
    FreeAndNil(QConection);;
    jvHiloTx.Terminate;
    Sleep(3000);
  end;

end;


      }
end.
