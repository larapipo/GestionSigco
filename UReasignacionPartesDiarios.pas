unit UReasignacionPartesDiarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ComCtrls, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCTreeViewBase, VCL.TMSFNCTreeViewData, VCL.TMSFNCCustomTreeView,
  VCL.TMSFNCTreeView, System.ImageList, Vcl.ImgList;

type
  TFormReasignacionPartesDiarios = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    pnBase: TPanel;
    DSPartesDiarios: TDataSource;
    QPartesDiarios: TFDQuery;
    tvOrdenes: TTreeView;
    QSearch: TFDQuery;
    QSearchID: TIntegerField;
    QSearchID_DET_OP: TIntegerField;
    QSearchCODIGO: TStringField;
    QSearchDETALLE: TStringField;
    QSearchCANTIDAD: TFloatField;
    QSearchCANTIDAD_SALDO: TFloatField;
    QSearchFECHA: TSQLTimeStampField;
    QSearchTIPOCPBTE: TStringField;
    QSearchCLASECPBTE: TStringField;
    QSearchNROCPBTE: TStringField;
    QSearchESTADO: TStringField;
    QSearchFECHAINICO: TSQLTimeStampField;
    QSearchFECHAFINAL: TSQLTimeStampField;
    QSearchESTACION: TIntegerField;
    QSearchKEY_ESTACION: TStringField;
    QSearchMUESTRAID_CAB: TIntegerField;
    QSearchMUESTRAID_DET: TIntegerField;
    QSearchNOMBRE: TStringField;
    DSSearch: TDataSource;
    QProdCab: TFDQuery;
    QProdDet: TFDQuery;
    ActionList1: TActionList;
    BuscarOP: TAction;
    QProdCabID: TIntegerField;
    QProdCabFECHA_INICIADA: TSQLTimeStampField;
    QProdCabNROCPBTE: TStringField;
    QProdCabCLIENTE: TStringField;
    QProdDetID: TIntegerField;
    QProdDetID_OPCAB: TIntegerField;
    QProdDetCODIGO: TStringField;
    QProdDetDETALLE: TStringField;
    QProdDetUNIDAD: TStringField;
    QProdDetCANTIDAD: TFloatField;
    QProdDetDEPOSITO_DESTINO: TIntegerField;
    QProdDetSUCURSAL: TIntegerField;
    QProdDetFECHA: TSQLTimeStampField;
    QProdDetTIPOCPBTE: TStringField;
    QProdDetCLASECPBTE: TStringField;
    QProdDetNROCPBTE: TStringField;
    QProdDetAFECTA_STOCK: TStringField;
    QProdDetESTADO: TStringField;
    QProdDetCOSTO: TFloatField;
    QProdDetEN_PLANIFICACION: TStringField;
    QProdDetFECHA_ENTREGA: TSQLTimeStampField;
    QProdDetESPECIFICACION: TStringField;
    QProdDetPARTICION: TStringField;
    QProdDetID_PRESU_CAB: TIntegerField;
    QProdDetID_PRESU_DET: TIntegerField;
    QProdDetFECHA_INIC_PRODUCC: TSQLTimeStampField;
    QProdDetITEM_DETALLE: TStringField;
    QProdDetCANT_ENTREGADA: TFloatField;
    QProdDetP_VOLUMEN: TFloatField;
    QProdDetP_PATS: TFloatField;
    QProdDetP_AROS: TFloatField;
    QProdDetP_TRENZA: TFloatField;
    QProdDetP_CANIOS: TFloatField;
    QProdDetP_ARMADURA: TFloatField;
    QPartesDiariosID: TIntegerField;
    QPartesDiariosID_SUBDET_PROD: TIntegerField;
    QPartesDiariosFECHA: TSQLTimeStampField;
    QPartesDiariosNROCPBTE: TStringField;
    QPartesDiariosTURNO: TIntegerField;
    QPartesDiariosTIPO_MATERIAL: TIntegerField;
    QPartesDiariosESTACION: TIntegerField;
    QPartesDiariosCANTIDAD: TFloatField;
    QPartesDiariosOBSERVACIONES: TStringField;
    QPartesDiariosNRORTO: TStringField;
    QPartesDiariosID_AJUSTE_STOCK: TIntegerField;
    QPartesDiariosMODO_TRAZABILIDAD: TStringField;
    QPartesDiariosNRO_LOTE: TStringField;
    QPartesDiariosID_DET_PARTE_DIARIO: TIntegerField;
    QPartesDiariosARTICULO_CODIGO: TStringField;
    QPartesDiariosARTICULO_DESCRIPCION: TStringField;
    QProdSub: TFDQuery;
    QProdCabFECHA_INCIO_PROD: TSQLTimeStampField;
    QProdCabNOMBRE: TStringField;
    QProdSubID: TIntegerField;
    QProdSubID_DET_OP: TIntegerField;
    QProdSubCODIGO: TStringField;
    QProdSubDETALLE: TStringField;
    QProdSubCANTIDAD: TFloatField;
    QProdSubCANTIDAD_SALDO: TFloatField;
    QProdSubFECHA: TSQLTimeStampField;
    QProdSubTIPOCPBTE: TStringField;
    QProdSubCLASECPBTE: TStringField;
    QProdSubNROCPBTE: TStringField;
    QProdSubESTADO: TStringField;
    QProdSubFECHAINICO: TSQLTimeStampField;
    QProdSubFECHAFINAL: TSQLTimeStampField;
    QProdSubESTACION: TIntegerField;
    QProdSubKEY_ESTACION: TStringField;
    Button1: TButton;
    lbLevel: TLabel;
    QProdDia: TFDQuery;
    SeleccionaItem: TAction;
    ImageList1: TImageList;
    QProdDiaID: TIntegerField;
    QProdDiaID_SUBDET_PROD: TIntegerField;
    QProdDiaFECHA: TSQLTimeStampField;
    QProdDiaNROCPBTE: TStringField;
    QProdDiaTURNO: TIntegerField;
    QProdDiaTIPO_MATERIAL: TIntegerField;
    QProdDiaESTACION: TIntegerField;
    QProdDiaCANTIDAD: TFloatField;
    QProdDiaNRORTO: TStringField;
    QProdDiaID_AJUSTE_STOCK: TIntegerField;
    QProdDiaMODO_TRAZABILIDAD: TStringField;
    QProdDiaNRO_LOTE: TStringField;
    QProdDiaID_DET_PARTE_DIARIO: TIntegerField;
    QProdDiaOBSERVACIONES: TStringField;
    QProdDiaMUESTRA_IDTROQUEL: TIntegerField;
    QProdDiaNRO_TROQUEL: TStringField;
    QProdDiaCODIGO: TStringField;
    pnIzq: TPanel;
    pnDer: TPanel;
    Splitter1: TSplitter;
    QAsignacion: TFDQuery;
    tvMovimientos: TTreeView;
    QAsignacionID: TIntegerField;
    QAsignacionID_SUBDET_PROD: TIntegerField;
    QAsignacionFECHA: TSQLTimeStampField;
    QAsignacionNROCPBTE: TStringField;
    QAsignacionTURNO: TIntegerField;
    QAsignacionTIPO_MATERIAL: TIntegerField;
    QAsignacionESTACION: TIntegerField;
    QAsignacionCANTIDAD: TFloatField;
    QAsignacionNRORTO: TStringField;
    QAsignacionID_AJUSTE_STOCK: TIntegerField;
    QAsignacionMODO_TRAZABILIDAD: TStringField;
    QAsignacionNRO_LOTE: TStringField;
    QAsignacionID_DET_PARTE_DIARIO: TIntegerField;
    QAsignacionOBSERVACIONES: TStringField;
    QAsignacionMUESTRA_IDTROQUEL: TIntegerField;
    QAsignacionNRO_TROQUEL: TStringField;
    QAsignacionCODIGO: TStringField;
    lbItem: TLabel;
    RecuperarAsignaciones: TAction;
    lbTitulo2: TLabel;
    lbTitulo1: TLabel;
    lbFiltro: TLabel;
    dbBuscadorCliente: TDBAdvSearchEdit;
    QClientes: TFDQuery;
    QClientesCLIENTE: TStringField;
    QClientesNOMBRE: TStringField;
    DSClientes: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure BuscarOPExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvOrdenesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvOrdenesCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvOrdenesClick(Sender: TObject);
    procedure tvOrdenesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure tvOrdenesDblClick(Sender: TObject);
    procedure tvOrdenesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RecuperarAsignacionesExecute(Sender: TObject);
    procedure dbBuscadorClienteSelect(Sender: TObject);
    procedure dbBuscadorClienteKeyPress(Sender: TObject; var Key: Char);
  private
    procedure MoveNodo(TargetNodo, SourceNodo: TTreeNode);
    { Private declarations }
  public
    { Public declarations }
    Lista:TStringList;
  end;

var
  FormReasignacionPartesDiarios: TFormReasignacionPartesDiarios;

implementation

uses UDMain_FD, UOrdenProduccion;

{$R *.dfm}


procedure TFormReasignacionPartesDiarios.BuscarOPExecute(Sender: TObject);
VAR
  N,X: Integer;
  NodoCab, NodoDet, NodoSub, NodoDia,NodoTMP: TTreeNode;
  Codigo,Detalle,Cantidad,Nombre:string;

  function FormatearCodigo(const Valor: string): string;
  var
    Letra, Sucursal, Numero: string;
  begin
    if Length(Valor) < 12 then
      raise Exception.Create('El código no tiene el formato esperado');

    Letra    := Copy(Valor, 1, 1);
    Sucursal := Copy(Valor, 2, 4);
    Numero   := Copy(Valor, 6, Length(Valor) - 5);
    Result   := Format('%s-%s-%s', [Letra, Sucursal, Numero]);
  end;


begin
  Screen.Cursor := crHourGlass;
  tvOrdenes.Items.BeginUpdate;

  try
    tvOrdenes.Items.Clear;
    tvMovimientos.Items.Clear;

    tvOrdenes.Font.Name:='Consolas';
    tvOrdenes.Font.Size:=12;
    tvOrdenes.ShowHint:=False;

    tvMovimientos.Font.Name:='Consolas';
    tvMovimientos.Font.Size:=12;
    tvMovimientos.ShowHint:=False;


    Lista.Clear;
    QProdCab.First;
    while not QProdCab.Eof do
      begin
        // CABECERA
        Lista.Add(QProdCabNROCPBTE.Value);
        Nombre  := QProdCabNOMBRE.AsString.PadRight(40);

        NodoCab            := tvOrdenes.Items.Add(nil, Format('%s %s [ID:]%d', [(FormatearCodigo(QProdCabNROCPBTE.AsString)), Nombre, QProdCabID.AsInteger]));
        NodoCab.ImageIndex := 0;
        NodoCab.Data       := Pointer(QProdCabID.AsInteger);
        // DETALLES
        QProdDet.Close;
        QProdDet.ParamByName('id').Value := QProdCabID.Value;
        QProdDet.Open;
        QProdDet.First;
        QProdDet.DisableControls;
        while not QProdDet.Eof do
          begin
            Codigo   := QProdDetCODIGO.AsString.PadRight(12);
            Detalle  := QProdDetDETALLE.AsString.PadRight(46);
            Cantidad := FormatFloat('###,##0.00', QProdDetCANTIDAD.Value);

            NodoDet            := tvOrdenes.Items.AddChild(NodoCab, Codigo+ Detalle + Cantidad +' [ID:]'+QProdDetID.AsString);
            NodoDet.ImageIndex := 1;
            NodoDet.Data       := Pointer(QProdDetID.AsInteger);

            // SUBDETALLES
            QProdSub.Close;
            QProdSub.ParamByName('id_det').Value := QProdDetID.Value;
            QProdSub.Open;
            QProdSub.First;
            while not QProdSub.Eof do
              begin
                NodoSub            := tvOrdenes.Items.AddChild(NodoDet, Format('%s %s ... Cant:%s [ID:%d]', [QProdSubCODIGO.AsString, QProdSubDETALLE.AsString, QProdSubCANTIDAD.AsString, QProdSubID.AsInteger]));
                NodoSub.ImageIndex := 2;
                NodoSub.Data       := Pointer(QProdSubID.AsInteger);

                // MOVIMIENTOS DIARIOS
                QProdDia.Close;
                QProdDia.ParamByName('id_det').Value := QProdSubID.Value;
                QProdDia.Open;
                QProdDia.First;
                while not QProdDia.Eof do
                  begin
                    NodoDia := tvOrdenes.Items.AddChild(NodoSub, Format('Codigo:%s .. | Cant:%s | Troquel:%d [ID:%d] | Nro.Troquel:%s ',
                                                                        [QProdDiaCODIGO.Asstring, QProdDiaCANTIDAD.AsString,
                                                                        QProdDiaMUESTRA_IDTROQUEL.AsInteger, QProdDiaID.AsInteger,QProdDiaNRO_TROQUEL.AsString ]));
                    NodoDia.ImageIndex  := 3;
                    NodoDia.Data        := Pointer(QProdDiaID.AsInteger);
                    QProdDia.Next;
                  end;
                QProdSub.Next;
              end;
            QProdSub.Close;
            QProdDet.Next;
          end;
        QProdDet.EnableControls;
        QProdCab.Next;
      end;
    tvOrdenes.AutoExpand := False;
  finally
    tvOrdenes.Items.EndUpdate;
    Screen.Cursor := crDefault;
  end;

  var i:Integer;
  for I := 0 to tvOrdenes.Items.Count - 1 do
    if tvOrdenes.Items[I].Level = 0 then
      tvOrdenes.Items[I].Expand(True); // True = expandir hijos también

  if tvOrdenes.Items.Count > 0 then
  begin
    tvOrdenes.Selected := tvOrdenes.Items[0];   // selecciona el primer nodo
    tvOrdenes.TopItem  := tvOrdenes.Items[0];   // lo muestra en la parte superior
    tvOrdenes.Items[0].Focused := True;         // asegura el foco en ese nodo
  end;


  // MOVIMIENTOS DIARIOS Huerfanos
  QAsignacion.Close;
  QAsignacion.Open;
  QAsignacion.First;
  while not QAsignacion.Eof do
    begin
      NodoTMP := tvMovimientos.Items.AddChild(nil, Format('Codigo:%s .. | Cant:%s | Troquel:%d [ID:%d] | Nro.Troquel:%s ',
                                                          [QAsignacionCODIGO.Asstring, QAsignacionCANTIDAD.AsString,
                                                          QAsignacionMUESTRA_IDTROQUEL.AsInteger, QAsignacionID.AsInteger,QAsignacionNRO_TROQUEL.AsString ]));
      NodoTMP.ImageIndex  := 0;
      NodoTMP.Data        := Pointer(QAsignacionID.AsInteger);
      QAsignacion.Next;
    end;

end;


procedure TFormReasignacionPartesDiarios.dbBuscadorClienteKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (Trim(dbBuscadorCliente.Text)='') then
    begin
      QProdCab.Filtered := False;
      QProdCab.Filter   := '';
      BuscarOP.Execute;
      tvOrdenes.SetFocus;
    end;
end;

procedure TFormReasignacionPartesDiarios.dbBuscadorClienteSelect(
  Sender: TObject);
var Codigo:String;
begin
  QProdCab.Filtered := False;
  QProdCab.Filter   := '';
  Codigo:=dbBuscadorCliente.SearchList.SelectedItem.Captions[1];
  if Codigo<>'' then
    begin
      QProdCab.Filter:='CLIENTE='+Codigo;
      QProdCab.Filtered:=True;
    end
  else
    QProdCab.Filtered := False;

  BuscarOP.Execute;
end;

procedure TFormReasignacionPartesDiarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QPartesDiarios.Close;
  QProdCab.Close;
  QProdDet.Close;
  QProdSub.Close;
  QProdDia.Close;

  Action  := TCloseAction.caFree;
end;

procedure TFormReasignacionPartesDiarios.FormCreate(Sender: TObject);
begin
  Lista   :=TStringList.Create;
  QPartesDiarios.Close;
  QPartesDiarios.Open;
end;

procedure TFormReasignacionPartesDiarios.FormDestroy(Sender: TObject);
begin
  FormReasignacionPartesDiarios:=nil;
end;

procedure TFormReasignacionPartesDiarios.FormShow(Sender: TObject);
begin
  QProdCab.Close;
  QProdCab.Open;
  BuscarOP.Execute;
  QClientes.Close;
  QClientes.Open;
end;


procedure TFormReasignacionPartesDiarios.MoveNodo(TargetNodo,SourceNodo:TTreeNode);
var nodeTmp : TTreeNode;
    i,IDSubDetalle_Destino,Id_DiarioOrigen,Id_troquel : Integer;
    CodigoOrigen,CodigoDestino,Troquel:String;
    Q1,Q2:TFDQuery;
    PosIni,PosFin:Integer;
begin
  with tvordenes do
    begin
      NodeTmp              := Items.AddChild(TargetNodo,SourceNodo.Text);
      Id_DiarioOrigen      := Integer(SourceNodo.Data);
      IDSubDetalle_Destino := Integer(TargetNodo.Data);

      PosIni    := Pos('Troquel',SourceNodo.Text)+8;
      PosFin    := Pos('[',SourceNodo.Text);
      troquel   := Copy(SourceNodo.Text,Pos('Troquel',SourceNodo.Text)+8,PosFin-PosIni);
      Id_troquel:= StrToInt(Trim(Troquel));
      DMMain_FD.fdcGestion.StartTransaction;
      try
        Q2:=TFDQuery.Create(nil);
        Q2.Connection:=DMMain_FD.fdcGestion;
        Q2.SQL.Text:='execute procedure reasignar_prod_diaria (:id_pro_diaria,:new_id_oprod_sub)';
        Q2.ParamByName('id_Pro_diaria').AsInteger   := Id_DiarioOrigen;
        Q2.ParamByName('new_id_oprod_sub').AsInteger:= IDSubDetalle_Destino;
        Q2.ExecSQL;
        Q2.Close;

        Q1:=TFDQuery.Create(nil);
        Q1.Connection:=DMMain_FD.fdcGestion;
        q1.SQL.Text:='execute procedure altastock_desde_parte_diario (:v_id_parte_diario,1, 1)';
        Q1.ParamByName('v_id_parte_diario').Value :=Id_DiarioOrigen;
        Q1.ExecSQL;
        Q1.Close;


        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se gravan los movimientos..');
      end;


    end;
  FreeAndNil(Q1);
  FreeAndNil(Q2);

end;


procedure TFormReasignacionPartesDiarios.RecuperarAsignacionesExecute(
  Sender: TObject);
var  NodoTMP: TTreeNode;
  begin
 // MOVIMIENTOS DIARIOS Huerfanos
  tvMovimientos.Items.Clear;
  tvMovimientos.Font.Name:='Consolas';
  tvMovimientos.Font.Size:=12;
  tvMovimientos.ShowHint :=False;
  QAsignacion.Close;
  QAsignacion.Open;
  QAsignacion.First;
  while not QAsignacion.Eof do
    begin
      NodoTMP := tvMovimientos.Items.AddChild(nil, Format('Codigo:%s .. | Cant:%s | Troquel:%d [ID:%d] | Nro.Troquel:%s ',
                                                          [QAsignacionCODIGO.Asstring, QAsignacionCANTIDAD.AsString,
                                                          QAsignacionMUESTRA_IDTROQUEL.AsInteger, QAsignacionID.AsInteger,QAsignacionNRO_TROQUEL.AsString ]));
      NodoTMP.ImageIndex  := 0;
      NodoTMP.Data        := Pointer(QAsignacionID.AsInteger);
      QAsignacion.Next;
    end;
end;

procedure TFormReasignacionPartesDiarios.tvOrdenesClick(Sender: TObject);
var Nodo:TTreeNode;
   N, M, O: Integer;
begin
  inherited;
  Nodo            := tvOrdenes.Selected;
  lbLevel.Caption := IntToStr(Nodo.Level);
end;

procedure TFormReasignacionPartesDiarios.tvOrdenesCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  if Node.Level=0 then
    begin
      Sender.Canvas.Font.Size:=11;
      Sender.Canvas.Font.Color:=clBlue;
      Sender.Canvas.Font.Style:=[fsBold];
     end
 else
   if Node.Level=1 then
      begin
        Sender.Canvas.Font.Size:=11;
        Sender.Canvas.Font.Color:=clGreen;
        Sender.Canvas.Font.Style:=[fsBold];
      end
   else
   if Node.Level=2 then
      begin
        Sender.Canvas.Font.Size:=11;
        Sender.Canvas.Font.Color:=clWebIndigo;
        Sender.Canvas.Font.Style:=[fsBold];
      end
   else
      begin
        Sender.Canvas.Font.Size  :=11;
        Sender.Canvas.Font.Color :=clBlack;
        Sender.Canvas.Font.Style :=[];
        Sender.Canvas.Brush.Color:=clInfoBk;
      end;

  if cdsFocused in State then
    Sender.Canvas.Font.Color:=clWhite;
end;

procedure TFormReasignacionPartesDiarios.tvOrdenesDblClick(Sender: TObject);
var Nodo:TTreeNode;
begin
  Nodo:=tvOrdenes.Selected;
  if Nodo.Level=0 then
    begin
      if Not(Assigned(FormOrdenProduccion)) then
        FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
      FormOrdenProduccion.datoNew:=IntToStr(Integer(Nodo.Data));
      FormOrdenProduccion.recuperar.execute;
      FormOrdenProduccion.Show;

    end;
end;

procedure TFormReasignacionPartesDiarios.tvOrdenesDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  TargetNode, SourceNode : TTreeNode;
  CodigoOrigen,CodigoDestino :string;
  Fuente:TTreeView;
begin
  with tvOrdenes do
    begin
      Fuente:=TTreeView(Source);

      TargetNode := GetNodeAt(X,Y); // Get target node
      SourceNode := Selected;

      if Fuente.Name='tvMovimientos' then
        SourceNode := tvMovimientos.Selected;

      CodigoOrigen := Copy(SourceNode.Text,8,8);
      CodigoDestino:= copy(TargetNode.Text,1,8);

      //if Fuente.Name='tvMovimientos' then
      //  CodigoOrigen := Copy(SourceNode.Text,1,8);

      if ((Fuente.Name='tvMovimientos') and (TargetNode.Level=2) and (CodigoOrigen = CodigoDestino ))
          or ((SourceNode.Level=3) and (TargetNode.Level=2) and (CodigoOrigen = CodigoDestino )) then
       begin
         if (TargetNode = nil) then
           begin
             EndDrag(False);
             Exit;
           end;
         MoveNodo(TargetNode,SourceNode);
         SourceNode.Free;
       end;
    end;
end;


procedure TFormReasignacionPartesDiarios.tvOrdenesDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
  inherited;
  lbItem.Caption:='Item:';

  if ((Sender = tvOrdenes) or (Sender = tvMovimientos)) then
    Accept:=True;

  if tvOrdenes.Selected<>nil then
    begin
      Nodo:=tvOrdenes.Selected;
      if (y < 9) then {On the upper edge - should scroll up }
        SendMessage(tvOrdenes.Handle, WM_VSCROLL, SB_LINEUP, 0)
      else
        if (tvOrdenes.Height - y < 9) then { On the lower edge - should scroll down }
          SendMessage(tvOrdenes.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
       lbItem.Caption:='Item:'+Nodo.Text+' - Y:'+IntToStr(y);
    end;

  if Nodo.Level=2 then
    Accept:=True
  else
    Accept:=False;
end;

procedure TFormReasignacionPartesDiarios.tvOrdenesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Id_DiarioOrigen    :Integer;
Nro,dato1:String;
TargetNode:TTreeNode;
Q1:TFDQuery;
begin
  if Key=VK_DELETE then
    begin
      TargetNode := tvOrdenes.Selected;//(X,Y); // Get target node
      if TargetNode.Level=3 then
        begin
          Nro              := TargetNode.Text;
          Id_DiarioOrigen  := Integer(TargetNode.Data);
          Q1               := TFDQuery.Create(nil);
          Q1.Connection    := DMMain_FD.fdcGestion;
          DMMain_FD.fdcGestion.StartTransaction;
           try
             Q1:=TFDQuery.Create(nil);
             Q1.Connection:=DMMain_FD.fdcGestion;
             q1.SQL.Text:='delete from ordenproduccion_diario o where o.id=:id_diario';
             Q1.ParamByName('id_diario').Value:=Id_DiarioOrigen;
             Q1.ExecSQL;
             Q1.Close;
             DMMain_FD.fdcGestion.Commit;
           Except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('No se Hizo el Borrado del movimiento..');
            end;
          FreeAndNil(Q1);
          tvMovimientos.Items.Add(nil,Nro);

          tvOrdenes.Selected.Delete;
          RecuperarAsignaciones.Execute;
        end;
    end;
end;

end.
