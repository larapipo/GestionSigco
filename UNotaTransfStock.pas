unit UNotaTransfStock;

interface

uses
  Windows, Messages, SysUtils, Variants, UABMBase, JvDBControls, JvExMask,
  JvToolEdit, Menus, frxExportText, frxExportXLS, frxExportImage, frxExportPDF,
  frxClass, frxDBSet, DB, JvArrowButton, ComCtrls,
  Dialogs,Graphics,Forms,
  DBCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Controls, StdCtrls, Mask,
  Grids, DBGrids, JvComponentBase, JvFormPlacement, ImgList,
  Classes, ActnList, JvLabel, JvExControls, JvGradient, Buttons,
  SqlExpr,DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, Vcl.ToolWin, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormNota_TransfStock = class(TFormABMBase)
    dbgDetalle: TDBGrid;
    lb11: TLabel;
    dbeOBSERVACION: TDBEdit;
    dbeOBSERVACION1: TDBEdit;
    pnCabecera: TPanel;
    Label3: TLabel;
    dbeSubNro: TDBEdit;
    dbeNROCPBTE: TDBEdit;
    Label2: TLabel;
    dbeMuestraOrigen: TDBEdit;
    pnSolicitante: TPanel;
    Label4: TLabel;
    dbeMuestraDestino: TDBEdit;
    lb3: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    lb4: TLabel;
    btnCerrarLote: TSpeedButton;
    btnAbrirLotes: TSpeedButton;
    cbLotes: TComboBox;
    lb5: TLabel;
    dbeEAN: TDBEdit;
    lb8: TLabel;
    dbeRto: TDBEdit;
    QUltimoCodigoMAX: TStringField;
    CierraLote: TAction;
    AbrirLotes: TAction;
    Clonar: TAction;
    lb2: TLabel;
    lb1: TLabel;
    dbeNombre: TDBEdit;
    ReAsignaDepositos: TAction;
    btn1: TToolButton;
    Imprimir: TAction;
    frxDBCab: TfrxDBDataset;
    frxDBDet: TfrxDBDataset;
    frReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    GenerarTransferencia: TAction;
    bt1: TBitBtn;
    lb9: TLabel;
    JvDBSearchEdit1: TJvDBSearchEdit;
    btnLogin: TSpeedButton;
    lbAutorizado: TLabel;
    dbnDetalle: TDBNavigator;
    Login: TAction;
    ModificaLinea: TAction;
    BuscarDeposito: TAction;
    FinalizarNV: TAction;
    lbNotaPedido: TLabel;
    dbt1: TDBText;
    BuscarNotaPedido: TAction;
    lbEstado: TLabel;
    pmImpresion: TPopupMenu;
    Imprimir1: TMenuItem;
    ImprimirporLote1: TMenuItem;
    ImprimirPendientes1: TMenuItem;
    btImpresion: TJvArrowButton;
    ImprimirLote: TAction;
    ImprimirPendientes: TAction;
    N1: TMenuItem;
    dbeFechaVta: TJvDBDateEdit;
    RxCDepositoOrigen: TJvDBComboEdit;
    RxCDepositoDestino: TJvDBComboEdit;
    RxCCodigo: TJvDBComboEdit;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    pmClonar: TPopupMenu;
    Clonar1: TMenuItem;
    FinalizarNV1: TMenuItem;
    btIngCantidad: TBitBtn;
    ComBuscadorDeposito: TComBuscador;
    DBText1: TDBText;
    RecuperarNV: TAction;
    PopupMenu1: TPopupMenu;
    RecuperarNV1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure dbgDetalleExit(Sender: TObject);
    procedure dbgDetalleTitleClick(Column: TColumn);
    procedure CierraLoteExecute(Sender: TObject);
    procedure AbrirLotesExecute(Sender: TObject);
    procedure ClonarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ReAsignaDepositosExecute(Sender: TObject);
    procedure cbLotesClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure GenerarTransferenciaExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure ModificaLineaExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure FinalizarNVExecute(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbEstadoClick(Sender: TObject);
    procedure lbNotaPedidoClick(Sender: TObject);
    procedure BuscarNotaPedidoExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ImprimirLoteExecute(Sender: TObject);
    procedure ImprimirPendientesExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btIngCantidadClick(Sender: TObject);
    procedure RecuperarNVExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    ListaLote:TStringList;
    Autorizado:Boolean;
    Entregado:Boolean;
    Cumplido:Boolean;
    SucursalComprobante:Integer;
    IDComprobante:Integer;

    procedure AbrirLote;
    procedure CerrarLote;
    procedure AgregarCabTx;
    procedure AgregarDetTx;
    { Public declarations }
  end;

var
  FormNota_TransfStock: TFormNota_TransfStock;



implementation

uses DMNotasTransf, UTransferencia,UDMain_FD,DMBuscadoresForm,
     UBuscadorNotaTransf, UBuscadorTipoCpbte, ULogin, UABMLineaNotaVta, UNotaPedido,
  UIngresoCantNT;

{$R *.dfm}


procedure TFormNota_TransfStock.AbrirLote;
var P:TBookmark;
begin
  p:=DatosNotaTransferencia.CDSNDet.GetBookmark;
  DatosNotaTransferencia.CDSNDet.DisableControls;
  DatosNotaTransferencia.CDSNDet.First;
  while not(DatosNotaTransferencia.CDSNDet.Eof) do
    begin
      DatosNotaTransferencia.CDSNDet.Edit;
      if DatosNotaTransferencia.CDSNDetLOTECERRADO.Value='S' then
        DatosNotaTransferencia.CDSNDetLOTECERRADO.Value:='N';
      DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.Value  :=DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.Value;
      DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.AsFloat :=0;
      DatosNotaTransferencia.CDSNDet.Next;
    end;
  DatosNotaTransferencia.CDSNDet.GotoBookmark(p);
  DatosNotaTransferencia.CDSNDet.FreeBookmark(p);
  DatosNotaTransferencia.CDSNDet.EnableControls;
  DatosNotaTransferencia.CDSNDet.Filtered:=False;
  DatosNotaTransferencia.CDSNDet.Filter:='';
  DatosNotaTransferencia.ArmarLotes;
end;


procedure TFormNota_TransfStock.CerrarLote;
var P:TBookmark;
begin
  p:=DatosNotaTransferencia.CDSNDet.GetBookmark;
  DatosNotaTransferencia.CDSNDet.DisableControls;
  DatosNotaTransferencia.CDSNDet.First;
  while not(DatosNotaTransferencia.CDSNDet.Eof) do
    begin
      DatosNotaTransferencia.CDSNDet.Edit;
      if ((DatosNotaTransferencia.CDSNDetID_TRANSFERNCIA.AsString='') or (DatosNotaTransferencia.CDSNDetID_TRANSFERNCIA.Value=0)) and
         (DatosNotaTransferencia.CDSNDetLOTE.AsString<>'') then
        begin
          if DatosNotaTransferencia.CDSNDetLOTECERRADO.Value='N' then
            DatosNotaTransferencia.CDSNDetLOTECERRADO.Value:='S'
        end;
      if DatosNotaTransferencia.CDSNDetLOTECERRADO.Value='N' then
        begin
          DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.Value   := DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.Value;
          DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat:= 0;
        end;
      DatosNotaTransferencia.CDSNDet.Next;
    end;
  DatosNotaTransferencia.CDSNDet.GotoBookmark(p);
  DatosNotaTransferencia.CDSNDet.FreeBookmark(p);
  DatosNotaTransferencia.CDSNDet.EnableControls;
  DatosNotaTransferencia.CDSNDet.Filtered:=False;
  DatosNotaTransferencia.CDSNDet.Filter:='';
  DatosNotaTransferencia.ArmarLotes;

end;


procedure TFormNota_TransfStock.CierraLoteExecute(Sender: TObject);
begin
  inherited;
 if not(DSBase.State in [dsBrowse]) then
    if MessageDlg('Esta por hacer un cierre de Lote, esta seguro',mtConfirmation,mbYesNo,0)=mrYes then
      CerrarLote;

end;

procedure TFormNota_TransfStock.ClonarExecute(Sender: TObject);
VAR i,sub:Integer;
Nombre:String;
begin
  inherited;
  DatosNotaTransferencia.CDSNCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NTCab.XML');
  DatosNotaTransferencia.CDSNDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NTDet.XML');

  DatosNotaTransferencia.CDSNCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NTCab.xml');
  DatosNotaTransferencia.CDSNDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NTDet.xml');

  Agregar.Execute;
  //DuplicarFc:=True;
  For i:=0 to DatosNotaTransferencia.CDSNCabXML.FieldCount-1 do
    begin
      if (DatosNotaTransferencia.CDSNCab.FindField(DatosNotaTransferencia.CDSNCabXML.Fields[i].FieldName)<>nil) Then
        begin
          try
            Nombre:=DatosNotaTransferencia.CDSNCabXML.Fields[i].FieldName;
            if (Nombre<>'ID') Then
              DatosNotaTransferencia.CDSNCab.FieldByName(Nombre).Value:=DatosNotaTransferencia.CDSNCabXML.FieldByName(Nombre).Value;
           Except
             ShowMessage(nombre);
           end;
        end;
    end;
   DatosNotaTransferencia.CDSNCabESTADO.Value :='N';
   DatosNotaTransferencia.CDSNCabID.Value     :=DatosNotaTransferencia.ibgCab.IncrementFD(1);
   sub:=DatosNotaTransferencia.CDSNCabXML.FieldByName('SubNumero').AsInteger+1;
   DatosNotaTransferencia.CDSNCabSUBNUMERO.Value :=Copy('00',1,length(IntToStr(sub)))+IntToStr(sub);

   while not(DatosNotaTransferencia.CDSNDetXML.Eof) do
     begin
       if (DatosNotaTransferencia.CDSNDetXML.FieldByName('CANTIDAD_FALTANTE').Value>0) Then
         begin
           DatosNotaTransferencia.CDSNDet.Append;
           For i:=0 to DatosNotaTransferencia.CDSNDetXML.FieldCount-1 do
             begin
               if (DatosNotaTransferencia.CDSNDet.FindField(DatosNotaTransferencia.CDSNDetXML.Fields[i].FieldName)<>nil) Then
                 begin
                   Nombre:=DatosNotaTransferencia.CDSNDetXML.Fields[i].FieldName;
                   if Nombre<>'ID' Then
                     DatosNotaTransferencia.CDSNDet.FieldByName(Nombre).Value:=DatosNotaTransferencia.CDSNDetXML.FieldByName(Nombre).Value;
                 end;
             end;
           DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.Value     := DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.Value;
           DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.Value  := DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.Value;
           DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.AsFloat := 0;
           DatosNotaTransferencia.CDSNDetID_TRANCAB.Value          := DatosNotaTransferencia.CDSNCabID.Value;
           DatosNotaTransferencia.CDSNDetID.Value                  := DatosNotaTransferencia.IbgDet.IncrementFD(1);
           DatosNotaTransferencia.CDSNDetLOTECERRADO.Value         := 'N';
           DatosNotaTransferencia.CDSNDetLOTE.Clear;
           DatosNotaTransferencia.CDSNDet.Post;
         end;
       DatosNotaTransferencia.CDSNDetXML.Next;
     end;
   Confirma.Execute;
end;

procedure TFormNota_TransfStock.ConfirmaExecute(Sender: TObject);
begin
  DatosNotaTransferencia.CDSNDet.Filtered:=False;
  DatoNew:=DatosNotaTransferencia.CDSNCabID.AsString;
  DatosNotaTransferencia.SumarEntregados;
  if (Entregado) and (DSBase.State in [dsEdit]) then
    DatosNotaTransferencia.CDSNCabESTADO.Value:='P';
  if (DatosNotaTransferencia.CDSNCabDEP_DESTINO.Value=DatosNotaTransferencia.CDSNCabDEP_ORIGEN.value) then
    raise Exception.Create('Los depositos no pueden ser iguales...');
 // if (Cumplido) and (DSBase.State in [dsEdit]) Then
 //   DatosNotaVenta.CDSNVCabESTADO.Value:='C';
  pnCabecera.Enabled:=True;

  inherited;
  DatosNotaTransferencia.CDSNDet.IndexDefs.Clear;
  Recuperar.Execute;
  Autorizado:=False;
  lbAutorizado.Caption:='Bloqueado';
  lbAutorizado.Font.Color:=clRed;
 // dbgDetalle.Columns[8].Visible:=Autorizado;
end;

procedure TFormNota_TransfStock.AbrirLotesExecute(Sender: TObject);
begin
  inherited;
  if not(DSBase.State in [dsBrowse]) then
    AbrirLote;
end;

procedure TFormNota_TransfStock.AgregarCabTx;
begin
  With FormTransferencias, DatosNotaTransferencia do
  begin
//    FormTransferencias.SucursalPorDefecto:= SucursalPorDefecto;
 //   FormTransferencias.DepositoPorDefecto:= Deposito;
    CDSTranCabSUCURSALSetText(CDSTranCabSUCURSAL, IntToStr(SucursalComprobante));
    CDSTranCabID_TIPOCOMPROBANTESetText(CDSTranCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));


    CDSTranCabDEPOSITO_ORIGENSetText(CDSTranCabDEPOSITO_ORIGEN,CDSNCabDEP_ORIGEN.AsString);
    CDSTranCabDEPOSITO_DESTINOSetText(CDSTranCabDEPOSITO_DESTINO,CDSNCabDEP_DESTINO.AsString);

    CDSTranCabOBS1.Value:=CDSNCabOBS1.Value;
    CDSTranCabOBS2.Value:=CDSNCabOBS2.Value;

    CDSTranCabNOTA_TX_ID.Value    :=CDSNCabID.Value;
    CDSTranCabNOTA_TX_NUMERO.Value:=CDSNCabNUMERO.Value;

    //wwCDSRtoCabZONA.Value                :=CDSNVCabZONA.Value;
   // wwCDSRtoCabNROENTREGA.Value        :=CDSNotaPedidoCabNROENTREGA.Value;


    CDSTranCabUSUARIO.Value        :=DMMain_FD.UsuarioActivo;
    CDSTranCabFECHA_HORA.AsDateTime:=Now;


  end;
end;

procedure  TFormNota_TransfStock.AgregarDetTx;

begin
  inherited;
  with FormTransferencias, DatosNotaTransferencia DO
    begin
      CDSTranDet.Append;
      CDSTranDetCODIGOSetText(CDSTranDetCODIGO,CDSNDetCODIGO.AsString);
      CDSTranDetDETALLE.Value        := CDSNDetDETALLE.Value;
      CDSTranDetCANTIDADSetText(CDSTranDetCANTIDAD,CDSNDetCANTIDAD_ENTREGADA.AsString);
      CDSTranDet.Post;
    end;
end;



procedure TFormNota_TransfStock.AgregarExecute(Sender: TObject);
begin
  WITH DatosNotaTransferencia DO
    BEGIN
      CDSNCab.Close;
      CDSNCab.Params.ParamByName('id').Clear;
      CDSNCab.Open;

      CDSNDet.Close;
      CDSNDet.Params.ParamByName('id').Clear;
      CDSNDet.Open;
    END;
   inherited;
 //  RxCDepositoOrigen.SetFocus;
end;

procedure TFormNota_TransfStock.BorrarExecute(Sender: TObject);
begin
  if (DatosNotaTransferencia.CDSNCabESTADO.Value<>'F') then
    inherited;

end;

procedure TFormNota_TransfStock.btIngCantidadClick(Sender: TObject);
begin
  inherited;
  FormIngresoCantidadNT.Show;
end;

procedure TFormNota_TransfStock.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosNotaTransferencia.CDSNCabDEP_ORIGENSetText(DatosNotaTransferencia.CDSNCabDEP_ORIGEN, IntToStr(comBuscadorDeposito.Id));
  CDSBuscaDeposito.Close;  //
end;

procedure TFormNota_TransfStock.BuscarExecute(Sender: TObject);
begin
  inherited;
  DatosNotaTransferencia.CDSNDet.IndexDefs.Clear;
  if not(Assigned(formBuscadorNotaTransferencia)) then
    formBuscadorNotaTransferencia:=TformBuscadorNotaTransferencia.Create(Self);
  formBuscadorNotaTransferencia.ShowModal;
  if formBuscadorNotaTransferencia.ModalResult=mrOk then
    begin
      DatoNew:=IntToStr(formBuscadorNotaTransferencia.Id);
      Recuperar.Execute;
    end;

end;

procedure TFormNota_TransfStock.BuscarNotaPedidoExecute(Sender: TObject);
begin
  inherited;
  if (DatosNotaTransferencia.CDSNCabNPEDIDO_ID.AsString<>'') and
    (DatosNotaTransferencia.CDSNCabNPEDIDO_ID.AsString<>'0') then
    begin
      if Not(Assigned(FormNotaPedido)) then
        FormNotaPedido:=TFormNotaPedido.Create(Self);
      FormNotaPedido.DatoNew:=DatosNotaTransferencia.CDSNCabNPEDIDO_ID.AsString;
      FormNotaPedido.TipoCpbte:='NP';
      FormNotaPedido.Recuperar.Execute;
    end;
end;

procedure TFormNota_TransfStock.CancelarExecute(Sender: TObject);
begin
  inherited;
  WITH DatosNotaTransferencia DO
    BEGIN
      CDSNCab.Close;
      CDSNCab.Params.ParamByName('id').Clear;
      CDSNCab.Open;

      CDSNDet.Close;
      CDSNDet.Params.ParamByName('id').Clear;
      CDSNDet.Open;
    END;

end;

procedure TFormNota_TransfStock.cbLotesClick(Sender: TObject);
begin
  inherited;
  DatosNotaTransferencia.CDSNDet.Filtered:=False;
  DatosNotaTransferencia.CDSNDet.Filter:='';
  if ( cbLotes.Text<>'-') then
    begin
      DatosNotaTransferencia.CDSNDet.Filter:='Lote = '+FormNota_TransfStock.cbLotes.Text;
      DatosNotaTransferencia.CDSNDet.Filtered:=True;
    end;
end;

procedure TFormNota_TransfStock.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
 if dbgDetalle.SelectedIndex<3 then
    dbgDetalle.SelectedIndex:=3
  else
    if (dbgDetalle.SelectedIndex=4) or (dbgDetalle.SelectedIndex=5)
       or (dbgDetalle.SelectedIndex=7) then
     dbgDetalle.SelectedIndex:=6;
end;

procedure TFormNota_TransfStock.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  ModificaLinea.Execute;
end;

procedure TFormNota_TransfStock.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if gdSelected in State Then
     begin
       dbgDetalle.Canvas.Font.Color:=clWhite;
       dbgDetalle.Canvas.Brush.Color:=clNavy ;
     end
  else
    begin
      if (Trunc(DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat*1000)) =
         (Trunc(DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat*1000)) then
        begin
          dbgDetalle.Canvas.Font.Color:=clYellow;
          dbgDetalle.Canvas.Brush.Color:=clGreen;
          if DataCol in [0,1,2,4,5,7] then
            begin
              dbgDetalle.Canvas.Brush.Color:=clInfoBk;
              dbgDetalle.Canvas.Font.Color:=clBlack;
            end;
         end
      else
        begin
          dbgDetalle.Canvas.Font.Color:=clBlack;
          dbgDetalle.Canvas.Brush.Color:=clWhite;
          if DataCol in [0,1,2,4,5,7] then
            begin
              dbgDetalle.Canvas.Brush.Color:=clInfoBk;
              dbgDetalle.Canvas.Font.Color:=clBlack;
            end;



         end;
    end;


    if (DatosNotaTransferencia.CDSNDetLOTECERRADO.Value = 'S') then
      dbgDetalle.Canvas.Font.Style:=[fsBold]
     else
      dbgDetalle.Canvas.Font.Style:=[];

//        Check := 0;
//        if DatosNotaVenta.CDSNVDetLOTECERRADO.Value = 'S' then
//          Check := DFCS_CHECKED;
//         dbgDetalle.Canvas.FillRect(Rect);
//         DrawFrameControl(dbgDetalle.Canvas.Handle, Rect,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
//      end;
    //else
    // dbgrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormNota_TransfStock.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=3;
  sbEstado.Panels[0].Text:='Dbl-Clik:Edita Renglon||Ctrl+Del:Borra Renglon ';

end;

procedure TFormNota_TransfStock.dbgDetalleExit(Sender: TObject);
begin
  inherited;
 sbEstado.Panels[0].Text:='';
end;

procedure TFormNota_TransfStock.dbgDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if ((Key=VK_DELETE) or (Key=VK_BACK)) and (dbgDetalle.SelectedIndex=6) and (not(DSBase.State in [dsBrowse])) then
    begin
      if ( dbgDetalle.DataSource.DataSet.State in [dsBrowse] )  then
        dbgDetalle.DataSource.DataSet.Edit;
      dbgDetalle.DataSource.DataSet.FieldByName('LOTE').Clear;
      dbgDetalle.DataSource.DataSet.Post;
    end;
end;

procedure TFormNota_TransfStock.dbgDetalleTitleClick(Column: TColumn);
var campo:string;
  i: Integer;
begin
  inherited;
 try
    for i := 0 to dbgDetalle.Columns.Count-1  do
      dbgDetalle.Columns[i].Title.Font.Style:=[];
    Column.Title.Font.Style:=[fsBold];
    Campo := Column.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

procedure TFormNota_TransfStock.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled          := True;
  pnCabecera.Enabled           := not(DSBase.State in [dsBrowse]) and (not(DSBase.DataSet.IsEmpty));
  dbgDetalle.ReadOnly          := DSBase.State in [dsBrowse];
  dbnDetalle.Enabled           := not(DSBase.State in [dsBrowse]);
  Imprimir.Enabled             := (not(DSBase.DataSet.IsEmpty)) and (DSBase.State in [dsBrowse]);
  Modificar.Enabled            := (DSBase.state in [dsBrowse]) and (DatosNotaTransferencia.CDSNCabESTADO.Value<>'F') and (not(DSBase.DataSet.IsEmpty));
  Borrar.Enabled               := (DSBase.state in [dsBrowse]) and (DatosNotaTransferencia.CDSNCabESTADO.Value<>'F') and (not(DSBase.DataSet.IsEmpty));
  CierraLote.Enabled           := (not(DSBase.DataSet.IsEmpty)) and (not(DSBase.State in [dsBrowse])) and
                                  (DatosNotaTransferencia.CDSNCabESTADO.Value<>'F') and (DatosNotaTransferencia.CDSNCabESTADO.Value<>'A') ;
  AbrirLotes.Enabled           := (not(DSBase.DataSet.IsEmpty)) and (not(DSBase.State in [dsBrowse])) and
                                  (DatosNotaTransferencia.CDSNCabESTADO.Value<>'F') and (DatosNotaTransferencia.CDSNCabESTADO.Value<>'A') ;
  Login.Enabled                := (not(DSBase.DataSet.IsEmpty)) and (not(DSBase.State in [dsBrowse])) and
                                  (DatosNotaTransferencia.CDSNCabESTADO.Value<>'F')  ;
  GenerarTransferencia.Enabled := (not(DSBase.DataSet.IsEmpty)) and (DSBase.State in [dsBrowse]) and
                                  (DatosNotaTransferencia.CDSNCabESTADO.Value<>'F');
  btIngCantidad.Enabled        := (DSBase.State=dsEdit) and (not(DSBase.DataSet.IsEmpty));
  RecuperarNV.Enabled          := (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsString='') or (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsInteger<=0);


end;

procedure TFormNota_TransfStock.FinalizarNVExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosNotaTransferencia.CDSNCabID.AsString;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosNotaTransferencia.CDSNCab.Edit;
    DatosNotaTransferencia.CDSNCabESTADO.Value:='F';
    DatosNotaTransferencia.CDSNCab.Post;
    DatosNotaTransferencia.CDSNCab.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo marcar como cumplido...');
  end;
  Recuperar.Execute;
end;


procedure TFormNota_TransfStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  WITH DatosNotaTransferencia DO
    BEGIN
      CDSNCab.Close;
      CDSNDet.Close;
    END;

  FreeAndNil(FormIngresoCantidadNT);
  FreeAndNil(DatosNotaTransferencia);
  Action:=caFree;
  inherited;

end;

procedure TFormNota_TransfStock.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=False;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';

  IF NOT (Assigned(DatosNotaTransferencia)) THEN
    DatosNotaTransferencia := TDatosNotaTransferencia.Create(Application);

  DSBase.DataSet:=DatosNotaTransferencia.CDSNCab;
  WITH DatosNotaTransferencia DO
    BEGIN
      AddClientDataset(CDSNCab, DSPNCab);
      AddClientDataset(CDSNDet, DSPNDet);
      CDSNCab.Close;
      CDSNCab.Params.ParamByName('id').Clear;
      CDSNCab.Open;

      CDSNDet.Close;
      CDSNDet.Params.ParamByName('id').Clear;
      CDSNDet.Open;
    END;
  ListaLote:=TStringList.Create;
  cbLotes.Clear;
  ListaLote.Clear;
  ListaLote.Add('-');
  Tabla:='NOTA_TRANSF_CAB';
  Campo:='id';
  Autorizado:=False;
  lbAutorizado.Caption:='Bloqueado';
  lbAutorizado.Font.Color:=clRed;
  dbgDetalle.Columns[8].Visible:=Autorizado;

  if Not(Assigned(FormIngresoCantidadNT)) then
    FormIngresoCantidadNT:=TFormIngresoCantidadNT.Create(self);


  pnSolicitante.BevelOuter:=bvNone;

end;

procedure TFormNota_TransfStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNota_TransfStock:=nil;
end;

procedure TFormNota_TransfStock.FormResize(Sender: TObject);
begin
  inherited;
  if FormNota_TransfStock<>nil then
    if FormNota_TransfStock.Width<>860 then
      FormNota_TransfStock.Width:=860;

end;

procedure TFormNota_TransfStock.FormShow(Sender: TObject);
begin
  inherited;
 //btNuevo.SetFocus;
end;

procedure TFormNota_TransfStock.GenerarTransferenciaExecute(Sender: TObject);
begin
  inherited;
   DatosNotaTransferencia.CDSNDet.Filtered:=False;
   DatosNotaTransferencia.CDSNDet.Filter  :='';
  if DatosNotaTransferencia.CDSNCab.IsEmpty Then
     Raise Exception.Create('No hay Datos para procesar....');

  if DatosNotaTransferencia.CDSNCabESTADO.AsString='A' Then
    Raise Exception.Create('Nota de Tx Anulada, no se puede hacer esta Operacion...');

  if (DatosNotaTransferencia.FaltaLote=True) Then
//    if MessageDlg('Hay Items , sin lote asignado, continua o asigna el lote que le corresponde...??',mtConfirmation,mbYesNo,0)=mrNo then
//      Exit;
    Raise Exception.Create('Hay Items sin lote asignado, no se puede hacer esta Operacion...');


  if DatosNotaTransferencia.HayParaFacturar Then
    begin
      Modificar.Execute;
      CerrarLote;
      Confirma.Execute;
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='TX';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  :=SucursalPorDefecto;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;

      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
          DatoOld  :=IntToStr(DatosNotaTransferencia.CDSNCabID.Value);
          if Not(Assigned(FormTransferencias)) Then
            FormTransferencias:=TFormTransferencias.Create(Application);
          FormTransferencias.SucursalPorDefecto:=SucursalComprobante;
          DatosNotaTransferencia.CDSNDet.First;
          while not(DatosNotaTransferencia.CDSNDet.Eof) do
            begin
              FormTransferencias.Agregar.Execute;
              AgregarCabTx;
              while Not(DatosNotaTransferencia.CDSNDet.Eof) do // Ingreso el detalle
                begin
                  if (Trunc(DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat*1000)>0) and
                     (DatosNotaTransferencia.CDSNDetLOTECERRADO.AsString='S') and
                     ((DatosNotaTransferencia.CDSNDetID_TRANSFERNCIA.AsString='') or (DatosNotaTransferencia.CDSNDetID_TRANSFERNCIA.Value=0))  Then
                    begin
                      AgregarDetTx;
                    end;
                  DatosNotaTransferencia.CDSNDet.Next;
                end;
            end;
           FormTransferencias.Confirma.Execute;
           if DatosNotaTransferencia.HayFaltantes then
             Clonar.Execute;
           DatoNew:= DatoOld;
           Recuperar.Execute;
           FinalizarNV.Execute;
        end;
     end
  else
    ShowMessage('No hay cantidades de entrega para Generar el Rto......!!!');

end;

procedure TFormNota_TransfStock.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frReport.PrintOptions.Printer:=PrNomListados;
  frReport.SelectPrinter;
  frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaNotaTransferencia.Fr3');
  frReport.ShowReport;
end;

procedure TFormNota_TransfStock.ImprimirLoteExecute(Sender: TObject);
begin
  inherited;
  frReport.PrintOptions.Printer:=PrNomListados;
  frReport.SelectPrinter;
  DatosNotaTransferencia.CDSNDet.IndexDefs.Clear;
  DatosNotaTransferencia.CDSNDet.IndexFieldNames:='LOTE';
  frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaNotaTransfLotes.Fr3');
  frReport.ShowReport;
end;

procedure TFormNota_TransfStock.ImprimirPendientesExecute(Sender: TObject);
begin
  inherited;
  frReport.PrintOptions.Printer:=PrNomListados;
  frReport.SelectPrinter;
  frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaNotaTransfPendientes.Fr3');
  frReport.ShowReport;
end;

procedure TFormNota_TransfStock.lbNotaPedidoClick(Sender: TObject);
begin
  inherited;
  BuscarNotaPedido.Execute;
end;

procedure TFormNota_TransfStock.LoginExecute(Sender: TObject);
begin
  inherited;
  if not (Assigned(FormLogin)) then
    FormLogin := TFormLogin.Create(Self);
  FormLogin.ShowModal;
  Autorizado:=FormLogin.Tag=1;
  if Autorizado then
    begin
      lbAutorizado.Caption:='Desbloqueado';
      lbAutorizado.Font.Color:=clGreen;
    end
  else
    begin
      lbAutorizado.Caption:='Bloqueado';
      lbAutorizado.Font.Color:=clRed;
    end;
 // dbgDetalle.Columns[8].Visible:=Autorizado;
end;

procedure TFormNota_TransfStock.ModificaLineaExecute(Sender: TObject);
begin
  inherited;
  if DatosNotaTransferencia.CDSNDetLOTECERRADO.Value='S' then
    raise Exception.Create('Lote Cerrdado, no se permite esta operación');
  if (DSBase.State in [dsBrowse]) then
    raise Exception.Create('Pulse modificar para hacer los cambios en el detalle...');

  if Autorizado then
    begin
      if not(Assigned(FormABMLineaNotavta)) then
        FormABMLineaNotavta:=TFormABMLineaNotavta.Create(self);
      FormABMLineaNotavta.Modo:='M';
      FormABMLineaNotavta.Codigo  :=DatosNotaTransferencia.CDSNDetCODIGO.Value;
      FormABMLineaNotavta.Detalle :=DatosNotaTransferencia.CDSNDetDETALLE.Value;
      FormABMLineaNotavta.Cantidad:=DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat;
      FormABMLineaNotavta.Lista   :=DMMain_FD.ListaPorDefecto(-1);
      FormABMLineaNotavta.ShowModal;
      if FormABMLineaNotavta.ModalResult=mrOk then
        begin
          DatosNotaTransferencia.CDSNDet.Edit;
          if FormABMLineaNotavta.Cantidad<DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat then
            begin
              DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat  := FormABMLineaNotavta.Cantidad;
              DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.Value := DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.Value;
              DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.AsFloat:= DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat-
                                                                        DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat;
            end
          else
            BEGIN
              DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFLoat   := FormABMLineaNotavta.Cantidad;
              DatosNotaTransferencia.CDSNDetCANTIDAD_FALTANTE.AsFloat := DatosNotaTransferencia.CDSNDetCANTIDAD_PEDIDA.AsFloat-
                                                                         DatosNotaTransferencia.CDSNDetCANTIDAD_ENTREGADA.AsFloat;
            end;
          DatosNotaTransferencia.CDSNDet.Post;
        end;
    end;

end;

procedure TFormNota_TransfStock.ReAsignaDepositosExecute(Sender: TObject);
var P:TBookmark;
begin
  DatosNotaTransferencia.CDSNDet.Filtered:=False;
  DatosNotaTransferencia.CDSNDet.Filter:='';

  p:=DatosNotaTransferencia.CDSNDet.GetBookmark;
  DatosNotaTransferencia.CDSNDet.DisableControls;
  DatosNotaTransferencia.CDSNDet.First;
  while not(DatosNotaTransferencia.CDSNDet.Eof) do
    begin
      DatosNotaTransferencia.CDSNDet.Edit;
      DatosNotaTransferencia.CDSNDetDEPOSITO_ORIGEN.Value := DatosNotaTransferencia.CDSNCabDEP_ORIGEN.Value;
      DatosNotaTransferencia.CDSNDetDEPOSITO_DESTINO.Value:= DatosNotaTransferencia.CDSNCabDEP_DESTINO.Value;
      DatosNotaTransferencia.CDSNDet.Next;
    end;
  DatosNotaTransferencia.CDSNDet.GotoBookmark(p);
  DatosNotaTransferencia.CDSNDet.FreeBookmark(p);
  DatosNotaTransferencia.CDSNDet.EnableControls;
end;

procedure TFormNota_TransfStock.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosNotaTransferencia.CDSNDet.Filtered:=False;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';
  WITH DatosNotaTransferencia DO
    BEGIN
      CDSNCab.Close;
      CDSNCab.Params.ParamByName('id').Value:=strtoInt(DatoNew);
      CDSNCab.Open;
      CDSNDet.Close;
      CDSNDet.Params.ParamByName('id').Value:=strtoInt(DatoNew);
      CDSNDet.Open;

      if CDSNCabESTADO.Value='N' then
        lbEstado.Caption:='Nueva'
      else
        if CDSNCabESTADO.Value='P' then
          lbEstado.Caption:='En Proceso'
        else
          if CDSNCabESTADO.Value='F' then
            lbEstado.Caption:='Finalizada';
      Borrar.Enabled:=not(CDSNCabESTADO.Value='F');

    END;

  DatosNotaTransferencia.ArmarLotes;
  sbEstado.Panels[1].Text:='TX:'+ DatosNotaTransferencia.CDSNCabNRO_TRANSFERENCIA.Value;
end;

procedure TFormNota_TransfStock.RecuperarNVExecute(Sender: TObject);
begin
  inherited;
  if (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsString='') or (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsInteger<=0)   then
    begin
      Modificar.Execute;
      DSBase.DataSet.Edit;
      DatosNotaTransferencia.CDSNCabESTADO.Value:='P';
      DSBase.DataSet.Post;
      Confirma.Execute;
    end;
end;

procedure TFormNota_TransfStock.sbEstadoClick(Sender: TObject);
begin
  inherited;
 if (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsString<>'') and
    (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsString<>'0') and (sbEstado.Cursor<>crDefault) then
    begin
      if Not(Assigned(FormTransferencias)) then
        FormTransferencias:=TFormTransferencias.Create(Self);
      FormTransferencias.DatoNew:=DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsString;
      FormTransferencias.TipoCpbte:='TX';
      FormTransferencias.Recuperar.Execute;
    end;
end;

procedure TFormNota_TransfStock.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReport.DesignReport;
end;

procedure TFormNota_TransfStock.sbEstadoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 if (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsString<>'') and
    (DatosNotaTransferencia.CDSNCabID_TRANSFERENCIA.AsString<>'0') then
    begin
      if x>(sbEstado.Panels[0].Width+10) then
        begin
          sbEstado.Cursor:= crHandPoint;
        end
      else
         sbEstado.Cursor:=crDefault;
    end;

end;

end.
