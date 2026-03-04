unit UInventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls,
  Buttons, ToolWin, ExtCtrls, Mask, DBCtrls, Grids, DBGrids,
  IBGenerator,  frxDBSet, frxClass,Variants, ImgList, ActnMan,
  ActnColorMaps, JvExControls, JvGradient, JvComponentBase, frxExportPDF,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup, 
  JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions,
  Datasnap.Provider, Datasnap.DBClient, Vcl.StdCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus,IniFiles,StrUtils, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormInventario = class(TFormABMBase)
    DSDepositos: TDataSource;
    CDSInvCab: TClientDataSet;
    DSPInvCab: TDataSetProvider;
    DSInvDet: TDataSource;
    DSPInvDet: TDataSetProvider;
    CDSInvDet: TClientDataSet;
    btInven: TBitBtn;
    ToolButton1: TToolButton;
    Inventariar: TAction;
    Ib_Id_det: TIBGenerator;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frInventario: TfrxReport;
    frDBMov: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    CDSInvCabID: TIntegerField;
    CDSInvCabDEPOSITO: TIntegerField;
    CDSInvCabTIPOCPBTE: TStringField;
    CDSInvCabCLASECPBTE: TStringField;
    CDSInvDetID: TIntegerField;
    CDSInvDetID_CAB: TIntegerField;
    CDSInvDetDEPOSITO: TIntegerField;
    CDSInvDetCODIGO: TStringField;
    CDSInvDetTIPOCPBTE: TStringField;
    CDSInvDetCLASECPBTE: TStringField;
    CDSInvDetMUESTRADETALLE: TStringField;
    CDSInvDetMUESTRARUBRO: TStringField;
    CDSInvDetMUESTRASUBRUBRO: TStringField;
    CDSInvDetMUESTRAMARCA: TStringField;
    DBGInventario: TDBGrid;
    PopupMenu1: TPopupMenu;
    VerPorCodigoAlternativo: TMenuItem;
    CDSInvDetMUESTRACODALTERNATIVO: TStringField;
    QInvDet: TFDQuery;
    QDepositoStk_: TFDQuery;
    QInvCab: TFDQuery;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QInvCabID: TIntegerField;
    QInvCabDEPOSITO: TIntegerField;
    QInvCabTIPOCPBTE: TStringField;
    QInvCabCLASECPBTE: TStringField;
    QInvDetID: TIntegerField;
    QInvDetID_CAB: TIntegerField;
    QInvDetDEPOSITO: TIntegerField;
    QInvDetCODIGO: TStringField;
    QInvDetSTOCK: TFloatField;
    QInvDetTIPOCPBTE: TStringField;
    QInvDetCLASECPBTE: TStringField;
    QInvDetCOSTO: TFloatField;
    QInvDetMUESTRADETALLE: TStringField;
    QInvDetMUESTRARUBRO: TStringField;
    QInvDetMUESTRASUBRUBRO: TStringField;
    QInvDetMUESTRAMARCA: TStringField;
    QInvDetMUESTRACODALTERNATIVO: TStringField;
    CDSInvDetSTOCK: TFloatField;
    CDSInvDetCOSTO: TFloatField;
    QBuscador: TFDQuery;
    QBuscadorID: TIntegerField;
    QBuscadorNOMBRE: TStringField;
    BuscarArticulo: TAction;
    QInvDetSTOCK_ACTUAL: TFloatField;
    CDSInvDetSTOCK_ACTUAL: TFloatField;
    QInvCabID_AJUSTE_STOCK: TIntegerField;
    CDSInvCabID_AJUSTE_STOCK: TIntegerField;
    QInvCabFECHA: TSQLTimeStampField;
    CDSInvCabFECHA: TSQLTimeStampField;
    QInvDetFECHA: TSQLTimeStampField;
    CDSInvDetFECHA: TSQLTimeStampField;
    QInvCabMUESTRANROAJUSTE: TStringField;
    QInvCabMUESTRAFECHAAJUSTE: TSQLTimeStampField;
    CDSInvCabMUESTRANROAJUSTE: TStringField;
    CDSInvCabMUESTRAFECHAAJUSTE: TSQLTimeStampField;
    QInvDetSTOCK_DIFERENCIA: TFloatField;
    CDSInvDetSTOCK_DIFERENCIA: TFloatField;
    btAjuste: TBitBtn;
    HacerAjuste: TAction;
    QInvDetMUESTRACONTROLASTOCK: TStringField;
    CDSInvDetMUESTRACONTROLASTOCK: TStringField;
    Panel2: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dbId_Ajuste: TDBText;
    Label3: TLabel;
    dbeNumero: TDBEdit;
    chbCero: TCheckBox;
    RxCDepositos: TJvDBLookupCombo;
    dbeFecha: TJvDBDateEdit;
    pbRegistros: TProgressBar;
    CDSDepositoStk: TClientDataSet;
    DSPDepositoStk: TDataSetProvider;
    CDSDepositoStkCODIGO_STK: TStringField;
    CDSDepositoStkDETALLE_STK: TStringField;
    CDSDepositoStkFISICO: TFloatField;
    CDSDepositoStkCOSTO_TOTAL_STK: TFloatField;
    CDSDepositoStkCODIGO_ALTERNATIVO: TStringField;
    CDSDepositoStkCONTROLASTOCK: TStringField;
    BitBtn2: TBitBtn;
    Borrador: TAction;
    QBuscadorFECHA: TDateField;
    QMotivos: TFDQuery;
    CDSMotivos: TClientDataSet;
    DSPMotivos: TDataSetProvider;
    CDSMotivosID: TIntegerField;
    CDSMotivosDETALLE: TStringField;
    QInvDetID_MOTIVO: TIntegerField;
    CDSInvDetID_MOTIVO: TIntegerField;
    CDSInvDetMUESTRAMOTIVO: TStringField;
    CDSDepositoStkCOMPROMETIDO: TFloatField;
    CDSDepositoStkEN_TRANSITO: TFloatField;
    QInvDetEN_TRANSITO: TFloatField;
    QInvDetCOMPROMETIDO: TFloatField;
    CDSInvDetEN_TRANSITO: TFloatField;
    CDSInvDetCOMPROMETIDO: TFloatField;
    chCOmprometido: TCheckBox;
    QBuscadorNROCPBTE: TStringField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    edReferencia: TDBEdit;
    Label5: TLabel;
    QInvCabREFERENCIA: TStringField;
    CDSInvCabREFERENCIA: TStringField;
    QBuscadorREFERENCIA: TStringField;
    procedure InventariarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSInvCabNewRecord(DataSet: TDataSet);
    procedure CDSInvDetNewRecord(DataSet: TDataSet);
    procedure DBGInventarioTitleClick(Column: TColumn);
    procedure ImprimirExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure chbCeroClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure CDSInvDetCODIGOSetText(Sender: TField; const Text: string);
    procedure VerPorCodigoAlternativoClick(Sender: TObject);
    procedure CDSInvDetCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGInventarioColEnter(Sender: TObject);
    procedure DBGInventarioEnter(Sender: TObject);
    procedure DBGInventarioKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure DBGInventarioEditButtonClick(Sender: TObject);
    procedure dbId_AjusteClick(Sender: TObject);
    procedure CDSInvDetSTOCKSetText(Sender: TField; const Text: string);
    procedure DBGInventarioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSInvDetBeforePost(DataSet: TDataSet);
    procedure HacerAjusteExecute(Sender: TObject);
    procedure dbId_AjusteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AgregarExecute(Sender: TObject);
    procedure RxCDepositosClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ormSInvCabReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure BorradorExecute(Sender: TObject);
    procedure DBGInventarioDblClick(Sender: TObject);
    procedure chCOmprometidoClick(Sender: TObject);
  private
    procedure Recalcular;
    { Private declarations }
  public
    { Public declarations }
    ListaDePrecio:Integer;
    Flag:Boolean;
    ArchivoIni    :TIniFile;
    cancela:Boolean;
    function AsignarArticulo(codigo:string):Boolean;
  end;

var
  FormInventario: TFormInventario;

implementation

uses UDMain_FD, UBuscadorArticulos, UAjusteMercaderia,
     UBorradorInventario,UStock_2;
{$R *.DFM}

procedure TFormInventario.Recalcular;
var p:TBookmark;
begin
  p:= CDSInvDet.GetBookmark;
  CDSInvDet.First;
  CDSInvDet.DisableControls;
  while not(CDSInvDet.Eof) do
    begin
      CDSInvDet.Edit;
      CDSInvDetSTOCK_DIFERENCIA.Value:= CDSInvDetSTOCK.Value-CDSInvDetSTOCK_ACTUAL.Value;
      if chCOmprometido.Checked then
        CDSInvDetSTOCK_DIFERENCIA.Value:= CDSInvDetSTOCK_DIFERENCIA.Value +
                                          CDSInvDetEN_TRANSITO.Value +
                                          CDSInvDetCOMPROMETIDO.Value;
      CDSInvDet.Next;
    end;

  CDSInvDet.GotoBookmark(P);
  CDSInvDet.EnableControls;
  CDSInvDet.FreeBookmark(p);
end;


procedure TFormInventario.InventariarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText  := '';
  pbRegistros.Position := 0;
  Cancelar.Enabled     := False;
  cancela:=False;
  Application.ProcessMessages;

  if (RxCDepositos.KeyValue<>null) and (RxCDepositos.KeyValue>-1) Then
    begin
      CDSDepositoStk.Close;
      CDSDepositoStk.Params.ParamByName('deposito').AsInteger := RxCDepositos.KeyValue;
      CDSDepositoStk.Params.ParamByName('Fecha').AsDate       := dbeFecha.Date;
      CDSDepositoStk.Params.ParamByName('Codigo').AsString    := '********';
      CDSDepositoStk.Open;

      pbRegistros.Min     := 1;
      pbRegistros.Max     := CDSDepositoStk.RecordCount-1;
      pbRegistros.Step    := 1;
      sbEstado.SimpleText := 'Procesando reg : '+IntToStr(pbRegistros.Position)+'/'+IntToStr(pbRegistros.Max);

      Application.ProcessMessages;
      Sleep(1);
      CDSDepositoStk.First;
      while Not(CDSDepositoStk.Eof) and (cancela=False) do
        begin
          CDSInvDet.Append;
          CDSInvDetFECHA.Value          := CDSInvCabFECHA.Value;
          CDSInvDetID_CAB.Value         := CDSInvCabID.Value;
          CDSInvDetCODIGO.Value         := CDSDepositoStkCODIGO_STK.Value;
          CDSInvDetMUESTRADETALLE.Value := CDSDepositoStkDETALLE_STK.Value;
          CDSInvDetSTOCK.Value          := CDSDepositoStkFISICO.Value;
          CDSInvDetSTOCK_ACTUAL.Value   := CDSDepositoStkFISICO.Value;
          CDSInvDetCOSTO.Value          := CDSDepositoStkCOSTO_TOTAL_STK.Value;
          sbEstado.SimpleText           := 'Esc:Salir -Procesando reg : '+IntToStr(pbRegistros.Position)+'/'+IntToStr(pbRegistros.Max);
          Application.ProcessMessages;
          Sleep(1);
          pbRegistros.Position:=pbRegistros.Position+1;
          CDSInvDet.Post;
          CDSDepositoStk.Next;
        end;
      sbEstado.SimpleText:='Finalizado';
      pbRegistros.Position:=0;
      Application.ProcessMessages;
      Sleep(1);

      CDSDepositoStk.Close;
    end
  else
    ShowMessage('Falta indicar Depósito') ;
  Cancelar.Enabled:=True;

end;



procedure TFormInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoIni      := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_Inventario.ini');
  ArchivoIni.WriteBool('codigo', 'codigo', VerPorCodigoAlternativo.Checked);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormInventario.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde    :=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize  :=False;

  ArchivoIni                       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_Inventario.ini');
  VerPorCodigoAlternativo.Checked  := ArchivoIni.ReadBool('codigo', 'codigo', False);
  ArchivoIni.Free;

  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  ListaDePrecio :=DMMain_FD.ListaPorDefecto;

  AddClientDataSet(CDSInvCab,DSPInvCab);
  AddClientDataSet(CDSInvDet,DSPInvDet);
  CDSInvCab.Open;
  CDSInvDet.Open;
  CDSMotivos.Close;
  CDSMotivos.Open;
  QDepositos.Close;
  QDepositos.Open;
  Tabla := 'Inventario_cab';
  Campo := 'id';
  Flag  := False;
end;

procedure TFormInventario.FormDestroy(Sender: TObject);
begin
  inherited;
  FormInventario:=nil;
end;

procedure TFormInventario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27  then
    cancela:=True;
  if Not(ActiveControl is TDBGrid) then
    inherited;
end;

procedure TFormInventario.FormResize(Sender: TObject);
begin
  inherited;
  if FormInventario<>nil then
    if FormInventario.Width<>1241 Then
      FormInventario.Width:=1241;
end;

procedure TFormInventario.FormShow(Sender: TObject);
begin
  inherited;
  if FormInventario<>nil then
    FormInventario.Width := 1241;
  sbEstado.SimpleText  :=  '';
  pbRegistros.Position :=  0;
 // Application.ProcessMessages;
end;

procedure TFormInventario.HacerAjusteExecute(Sender: TObject);
begin
  inherited;
  if (CDSInvCab.State=dsBrowse) and (CDSInvCab.IsEmpty=False) and ((CDSInvCabID_AJUSTE_STOCK.AsString='') or (CDSInvCabID_AJUSTE_STOCK.AsInteger<0)) then
    begin
      if Not(Assigned(FormAjustesStock)) then
        FormAjustesStock  := TFormAjustesStock.Create(Self);
      FormAjustesStock.Agregar.Execute;
      FormAjustesStock.CDSAjusteCabFECHA.AsDateTime    := CDSInvCabFECHA.AsDateTime;
      FormAjustesStock.CDSAjusteCabID_INVENTARIO.Value := CDSInvCabID.Value;
      FormAjustesStock.CDSAjusteCabOBS.Value           := 'Ajuste por toma de Inventario Nro.'+CDSInvCabID.AsString+'.. del '+FormatDateTime('dd/mm/yyyy',CDSInvCabFECHA.AsDateTime)+#13+
                                                          'Opcion Contabiliza Comprometido/Transferencia:'+IfThen(chCOmprometido.Checked,'Seleccionada','Sin Seleccionar');

      FormAjustesStock.CDSAjusteCabDEPOSITOSetText(FormAjustesStock.CDSAjusteCabDEPOSITO,IntToStr(RxCDepositos.KeyValue));

      CDSInvDet.First;
      while Not(CDSInvDet.Eof) do
        begin
          if (Abs(CDSInvDetSTOCK_DIFERENCIA.AsFloat)>0) and (CDSInvDetMUESTRACONTROLASTOCK.Value='S') then
            begin
              FormAjustesStock.CDSAjusteDet.Append;
              FormAjustesStock.CDSAjusteDetCODIGOSetText(FormAjustesStock.CDSAjusteDetCODIGO,CDSInvDetCODIGO.Value);
              FormAjustesStock.CDSAjusteDetCANTIDADSetText(FormAjustesStock.CDSAjusteDetCANTIDAD,CDSInvDetSTOCK_DIFERENCIA.AsString);
              if CDSInvDetID_MOTIVO.AsInteger>=0 then
                FormAjustesStock.CDSAjusteDetID_MOTIVO.Value:=CDSInvDetID_MOTIVO.Value;


              FormAjustesStock.CDSAjusteDet.Post;
            end;
          CDSInvDet.Next;
        end;
      FormAjustesStock.Show;

    end
  else
    SHowMessage('Ya hay un ajuste sobre este Inventario....');
end;

procedure TFormInventario.CancelarExecute(Sender: TObject);
begin
  if Not(CDSInvDet.State in [dsBrowse]) then
    CDSInvDet.Cancel;
  if Not(CDSInvCab.State in [dsBrowse]) then
    CDSInvCab.Cancel;
  sbEstado.SimpleText  := '';
  pbRegistros.Position := 0;
  Application.ProcessMessages;
  CDSInvDet.Close;
  CDSInvDet.Params.ParamByName('id_cab').Clear;
  CDSInvDet.Open;
  CDSInvCab.Close;
  CDSInvCab.Params.ParamByName('id').Clear;
  CDSInvCab.Open;
//  SysUtils.Abort;
//  inherited;

end;

procedure TFormInventario.CDSInvCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSInvCabID.Value:=1
  else
    CDSInvCabID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
  CDSInvCabFECHA.AsDateTime      := Date;
  CDSInvCabID_AJUSTE_STOCK.Value := -1;
end;

procedure TFormInventario.ormSInvCabReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TFormInventario.CDSInvDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (CDSInvDetCODIGO.AsString='') then
    begin
      CDSInvDet.Cancel;
      SysUtils.Abort;
    end;

end;

procedure TFormInventario.CDSInvDetCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if VerPorCodigoAlternativo.Checked then
    text:=CDSInvDetMUESTRACODALTERNATIVO.Value
  else
    Text:=CDSInvDetCODIGO.Value;
end;

procedure TFormInventario.CDSInvDetCODIGOSetText(Sender: TField;
  const Text: string);
VAR
  Enter:Char;
  Aux  :String;
BEGIN
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
//      Aux:='';
//      Aux:=CDSInvDet.Lookup('codigo',CDSInvDetCODIGO.AsString,'CODIGO');
//      if Aux<>'' then
//        raise Exception.Create('Articulo Ya Ingresado.....');
      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := Trim(DMMain_FD.SearchCodigo(Text,DSInvDet,FormInventario.VerPorCodigoAlternativo.Checked));

      IF AsignarArticulo(Sender.AsString) = False THEN
        BEGIN
          // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1            := 1;
          FormBuscadorArticulos.Param2            := 3;
          FormBuscadorArticulos.Esquema           := -1;
          FormBuscadorArticulos.ListaPrecio       := DMMain_FD.ListaPorDefecto(-1);
          FormBuscadorArticulos.Dato              := Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSInvDet.State = dsBrowse THEN
                CDSInvDet.Edit;
              CDSInvDetCODIGOSetText(CDSInvDetCODIGO,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        FormInventario.DBGInventario.OnKeyPress(FormInventario.DBGInventario,Enter);
    end;
end;

procedure TFormInventario.CDSInvDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSInvDetID_CAB.Value           := CDSInvCabID.Value;
  CDSInvDetID.Value               := Ib_Id_det.IncrementFD(1);
  CDSInvDetFECHA.Value            := CDSInvCabFECHA.Value;
  CDSInvDetSTOCK.Value            := 0;
  CDSInvDetSTOCK_ACTUAL.Value     := 0;
  CDSInvDetSTOCK_DIFERENCIA.Value := 0;
  CDSInvDetEN_TRANSITO.Value      := 0;
  CDSInvDetCOMPROMETIDO.Value     := 0;

  CDSInvDetDEPOSITO.Value         := CDSInvCabDEPOSITO.Value;
  CDSInvDetID_MOTIVO.Value        := -1;
end;

procedure TFormInventario.CDSInvDetSTOCKSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  CDSInvDetSTOCK.AsString  := Text;
  CDSInvDetSTOCK_DIFERENCIA.Value:= CDSInvDetSTOCK.Value-CDSInvDetSTOCK_ACTUAL.Value;
  if chCOmprometido.Checked then
  CDSInvDetSTOCK_DIFERENCIA.Value:= CDSInvDetSTOCK_DIFERENCIA.Value +
                                    CDSInvDetEN_TRANSITO.Value +
                                    CDSInvDetCOMPROMETIDO.Value;


end;

procedure TFormInventario.DBGInventarioColEnter(Sender: TObject);
begin
  inherited;
  IF DBGInventario.SelectedIndex in[2,3,4] THEN
      DBGInventario.SelectedIndex := 5
    else
        IF DBGInventario.SelectedIndex = 6 THEN
          DBGInventario.SelectedIndex := 7;
end;


procedure TFormInventario.DBGInventarioDblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=CDSInvDetCODIGO.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
  FormStock_2.BringToFront;
end;

procedure TFormInventario.DBGInventarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if DataCol=6 then
    begin
      if Trunc(CDSInvDetSTOCK_DIFERENCIA.AsFloat*100)=0 then
        DBGInventario.Canvas.Font.Color:=clGreen
      else
        if Trunc(CDSInvDetSTOCK_DIFERENCIA.AsFloat*100)<0 then
          DBGInventario.Canvas.Font.Color:=clRed
        else
         if Trunc(CDSInvDetSTOCK_DIFERENCIA.AsFloat*100)>0 then
           DBGInventario.Canvas.Font.Color:=clBlue;
        //Esta línea es nueva
      if (gdFocused in State) then
        begin
          DBGInventario.canvas.brush.color := clNavy;
          DBGInventario.canvas.Font.color  := clWhite;
        end;
//      DBGInventario.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  DBGInventario.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormInventario.DBGInventarioEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormInventario.DBGInventarioEnter(Sender: TObject);
begin
  inherited;
  if DBGInventario.SelectedIndex<0 then
    DBGInventario.SelectedIndex:=0;
  RxCDepositos.Enabled:=False;
end;

procedure TFormInventario.DBGInventarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 3;
      IF (DBGInventario.SelectedIndex < Top) THEN
        DBGInventario.SelectedIndex := DBGInventario.SelectedIndex + 1
      ELSE
        BEGIN
          IF (DBGInventario.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            DBGInventario.DataSource.DataSet.Append;
          DBGInventario.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorArticulos)) then
          begin
            IF DBGInventario.SelectedField = CDSInvDetCODIGO THEN
              BuscarArticulo.Execute;
          end;
      END
    else
      if (key = #27) then
        DBGInventario.DataSource.DataSet.Cancel;

end;

procedure TFormInventario.DBGInventarioTitleClick(Column: TColumn);
var I:Integer;
begin
  inherited;
  CDSInvDet.IndexFieldNames:=Column.FieldName;
  for i:=0 to  DBGInventario.Columns.Count-1 DO
    DBGInventario.Columns[I].Color:=clWindow;
  DBGInventario.Columns[Column.Index].Color:=clInfobk;

end;

procedure TFormInventario.dbId_AjusteClick(Sender: TObject);
begin
  inherited;
  if (CDSInvCabID_AJUSTE_STOCK.AsString<>'') and (CDSInvCabID_AJUSTE_STOCK.Value>0) then
    begin
      if Not(Assigned(FormAjustesStock)) then
        FormAjustesStock:=TFormAjustesStock.Create(Self);
      FormAjustesStock.DatoNew:=CDSInvCabID_AJUSTE_STOCK.AsString;
      FormAjustesStock.Recuperar.Execute;
      FormAjustesStock.Show;
    end;

end;

procedure TFormInventario.dbId_AjusteMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if CDSInvCabID_AJUSTE_STOCK.Value>0 then
    dbId_Ajuste.Cursor:=crHand
  else
    dbId_Ajuste.Cursor:=crDefault;

end;

procedure TFormInventario.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frInventario.PrintOptions.Printer:=PrNomListados;
  frInventario.SelectPrinter;
  frInventario.LoadFromFile(DMMain_FD.PathReportesLst+'\Inventario.fr3');

  frInventario.Variables['Deposito']:=''''+RxCDepositos.Text+'''';
  frInventario.Variables['Fecha']:=''''+dbeFecha.text+''''; ;
  // frCtaCte.PrepareReport;
  frInventario.ShowReport;
end;

procedure TFormInventario.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled       := DSBase.State=dsBrowse;
  Imprimir.Enabled       := DSBase.DataSet.State in [dsBrowse];
  Inventariar.Enabled    := DSBase.State in [dsInsert,dsEdit];
  HacerAjuste.Enabled    := (DSBase.State in [dsBrowse]) and (DSBase.DataSet.IsEmpty=False);
  pnPrincipal.Enabled    := True;
  DBGInventario.ReadOnly := DSBase.State=dsBrowse;
  Borrador.Enabled       := DSBase.State in [dsInsert,dsEdit];
end;

procedure TFormInventario.AgregarExecute(Sender: TObject);
begin
  CDSInvDet.Close;
  CDSInvDet.Params.ParamByName('id_cab').Clear;
  CDSInvDet.Open;
  CDSInvCab.Close;
  CDSInvCab.Params.ParamByName('id').Clear;
  CDSInvCab.Open;
  inherited;
  RxCDepositos.Enabled   := True;
  CDSInvCabDEPOSITO.Value:= DepositoPorDefecto;
  dbeFecha.SetFocus;
end;

function TFormInventario.AsignarArticulo(codigo: string):Boolean;
begin
  CDSDepositoStk.Close;
  CDSDepositoStk.Params.ParamByName('deposito').AsInteger := RxCDepositos.KeyValue;
  CDSDepositoStk.Params.ParamByName('Fecha').AsDate       := dbeFecha.Date;
  CDSDepositoStk.Params.ParamByName('Codigo').AsString    := Codigo;
  CDSDepositoStk.Open;
  if (Trim(CDSDepositoStkCODIGO_STK.Value)<>'') Then
    begin
      CDSInvDetCODIGO.Value                := CDSDepositoStkCODIGO_STK.Value;
      CDSInvDetMUESTRADETALLE.Value        := CDSDepositoStkDETALLE_STK.Value;
      CDSInvDetMUESTRACODALTERNATIVO.Value := CDSDepositoStkCODIGO_ALTERNATIVO.Value;
      CDSInvDetSTOCK.Value                 := CDSDepositoStkFISICO.Value;
      CDSInvDetSTOCK_ACTUAL.Value          := CDSDepositoStkFISICO.Value;
      CDSInvDetCOSTO.Value                 := CDSDepositoStkCOSTO_TOTAL_STK.Value;
      CDSInvDetMUESTRACONTROLASTOCK.Value  := CDSDepositoStkCONTROLASTOCK.Value;
      CDSInvDetEN_TRANSITO.Value           := CDSDepositoStkEN_TRANSITO.Value;
      CDSInvDetCOMPROMETIDO.Value          := CDSDepositoStkCOMPROMETIDO.Value;
      Result:=True;
    end
  else
    Result:=False;
end;

procedure TFormInventario.BorradorExecute(Sender: TObject);
begin
  inherited;
  if RxCDepositos.KeyValue>-1 then
    begin
      if not(Assigned(FormBorradorInventario)) then
        FormBorradorInventario:=TFormBorradorInventario.Create(Self);
      FormBorradorInventario.IdDeposito := RxCDepositos.KeyValue;
      FormBorradorInventario.showModal;
    end;

end;

procedure TFormInventario.BorrarExecute(Sender: TObject);
begin
  if ((CDSInvCabID_AJUSTE_STOCK.Value<=0) or VarIsNull(CDSInvCabID_AJUSTE_STOCK.Value)) then
    inherited
  else
    ShowMessage('No se puede Borrar');

end;

procedure TFormInventario.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);

      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos      := TFormBuscadorArticulos.Create(self);
      FormBuscadorArticulos.Param1      := 1;
      FormBuscadorArticulos.Param2      := 3;
      FormBuscadorArticulos.Esquema     := -1;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSInvDetCodigoSetText(CDSInvDetCodigo,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormInventario.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscador.Close;
  QBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  QBuscador.Close;
end;

procedure TFormInventario.RecuperarExecute(Sender: TObject);
begin
  CDSInvDet.Filtered:=False;

  inherited;

  CDSInvCab.Close;
  CDSInvCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSInvCab.Open;

  CDSInvDet.Close;
  CDSInvDet.Params.ParamByName('id_cab').Value:=StrToInt(DatoNew);
  CDSInvDet.Open;

  if chbCero.Checked Then
    begin
      CDSInvDet.Filter:= 'STOCK <> 0';
      CDSInvDet.Filtered:=True;
    end;
end;

procedure TFormInventario.RxCDepositosClick(Sender: TObject);
begin
  inherited;
  RxCDepositos.Enabled:= CDSInvDet.RecordCount=0;
end;

procedure TFormInventario.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frInventario.DesignReport;
end;

procedure TFormInventario.VerPorCodigoAlternativoClick(Sender: TObject);
begin
  inherited;
  VerPorCodigoAlternativo.Checked:=Not(VerPorCodigoAlternativo.Checked);
  DBGInventario.Refresh;
end;

procedure TFormInventario.chbCeroClick(Sender: TObject);
begin
  inherited;
  CDSInvDet.Filter:= 'STOCK <> 0';
  if chbCero.Checked Then
    CDSInvDet.Filtered:=True
  else
    CDSInvDet.Filtered:=False;
end;

procedure TFormInventario.chCOmprometidoClick(Sender: TObject);
begin
  inherited;
  Recalcular;
end;


procedure TFormInventario.ConfirmaExecute(Sender: TObject);
begin
  if (VarIsNull(CDSInvCabFECHA.AsDateTime)) or (CDSInvCabFECHA.AsString='  /  /    ')  or (CDSInvCabFECHA.AsString='') then
    CDSInvCabFECHA.AsDateTime:=Date;

  if CDSInvDet.State<>dsBrowse then
    CDSInvDet.Post;
  DatoNew:=CDSInvCabID.AsString;

  if CDSInvDet.RecordCount>0 then
  inherited;
  Recuperar.Execute;
 // Imprimir.Execute;
end;

end.

