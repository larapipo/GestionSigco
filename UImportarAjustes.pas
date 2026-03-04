unit UImportarAjustes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, ExtCtrls, JvLabel, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,iniFiles,
  DBCtrls, Mask, JvExMask, JvToolEdit,DateUtils, Grids, DBGrids, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormPanelImportacionAjustesStock = class(TFormABMBase)
    JvLabel1: TJvLabel;
    edPathOrigen: TEdit;
    ListBox: TListBox;
    spConectar: TSpeedButton;
    imConectado: TImage;
    lbEstado: TLabel;
    SpeedButton1: TSpeedButton;
    Conectar: TAction;
    imDesconectado: TImage;
    RxLabel3: TJvLabel;
    dbcSucursal: TDBLookupComboBox;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel2: TJvLabel;
    chbPorDia: TCheckBox;
    UpDown1: TUpDown;
    dbgCab: TDBGrid;
    dbgDet: TDBGrid;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    Importar: TAction;
    BitBtn1: TBitBtn;
    JvLabel4: TJvLabel;
    dbcComprobante: TDBLookupComboBox;
    QComprobanteAjustes: TFDQuery;
    QComprobanteAjustesID_COMPROBANTE: TIntegerField;
    QComprobanteAjustesTIPO_COMPROB: TStringField;
    QComprobanteAjustesCLASE_COMPROB: TStringField;
    QComprobanteAjustesDENOMINACION: TStringField;
    QComprobanteAjustesSUCURSAL: TIntegerField;
    QComprobanteAjustesLETRA: TStringField;
    DSComprobanteAjustes: TDataSource;
    QBuscaSucursal: TFDQuery;
    QBuscaSucursalCODIGO: TIntegerField;
    QBuscaSucursalDETALLE: TStringField;
    QBuscaSucursalHOST: TStringField;
    DSSuc: TDataSource;
    procedure ListBoxClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ConectarExecute(Sender: TObject);
    procedure chbPorDiaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImportarExecute(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GeneralIni,ImportarIni:TIniFile;
    Path    :String;
    lista   :TStringList;
    Archivo :TextFile;
  end;

var
  FormPanelImportacionAjustesStock: TFormPanelImportacionAjustesStock;

implementation
uses  UDMain_FD, DMImportacion,  UAjusteMercaderia;
{$R *.dfm}

procedure TFormPanelImportacionAjustesStock.BuscarExecute(Sender: TObject);
var Max,Min:integer;
begin
 // inherited;
  if DatosImportacion.FDConnection.Connected=True then
    begin
      Screen.Cursor:=crHourGlass;
      sbEstado.SimpleText:='Inciando Consulta...';
      Application.ProcessMessages;
      DatosImportacion.QAjusteCab.Close;
      DatosImportacion.QAjusteCab.ParamByName('desde').Value    := desde.Date;
      DatosImportacion.QAjusteCab.ParamByName('hasta').Value    := hasta.Date;
      DatosImportacion.QAjusteCab.ParamByName('Sucursal').Value := dbcSucursal.KeyValue;
      DatosImportacion.QAjusteCab.Open;


      if Not(DatosImportacion.QAjusteCab.IsEmpty) then
        begin
          DatosImportacion.QAjusteCab.First;
          Min := DatosImportacion.QAjusteCab.FieldbyName('id_rto').Value;
          DatosImportacion.QAjusteCab.Last;
          Max:= DatosImportacion.QAjusteCab.FieldbyName('id_rto').Value;

          DatosImportacion.QAjusteDet.Close;
          DatosImportacion.QAjusteDet.ParamByName('id_desde').Value        := Min;
          DatosImportacion.QAjusteDet.ParamByName('id_hasta').Value        := Max;
          DatosImportacion.QAjusteDet.MasterSource                         := DatosImportacion.DSAjusteCab;
          DatosImportacion.QAjusteDet.MasterFields                         := 'id_rto';
          DatosImportacion.QAjusteDet.IndexFieldNames                      := 'id_rto_cab';

          DatosImportacion.QAjusteDet.Open;

          DatosImportacion.QAjusteSubDetalle.Close;
          DatosImportacion.QAjusteSubDetalle.ParamByName('id_desde').Value := Min;
          DatosImportacion.QAjusteSubDetalle.ParamByName('id_hasta').Value := Max;
          DatosImportacion.QAjusteSubDetalle.MasterSource                  := DatosImportacion.DSAjusteDet;
          DatosImportacion.QAjusteSubDetalle.MasterFields                  := 'id_RTO_Det';
          DatosImportacion.QAjusteSubDetalle.IndexFieldNames               := 'ID_rtodet';

          DatosImportacion.QAjusteSubDetalle.Open;
          // Caja_Mov - Moviemitnos de caja

          sbEstado.SimpleText:='';
          Application.ProcessMessages;
          Screen.Cursor:=crDefault;
        end
      else
        begin
          ShowMessage('No hay Movimientos Disponible....');
          Screen.Cursor:=crDefault;
          sbEstado.SimpleText:='';
          Application.ProcessMessages;
        end;

    end
  else
    begin
      ShowMessage('No hay Conección Disponible....');
      Screen.Cursor:=crDefault;
      sbEstado.SimpleText:='';
      Application.ProcessMessages;
   end;
end;


procedure TFormPanelImportacionAjustesStock.chbPorDiaClick(Sender: TObject);
begin
  inherited;
  if chbPorDia.Checked then
    begin
      Desde.Date:=Date;
      Hasta.Date:=Date;
    end;
end;

procedure TFormPanelImportacionAjustesStock.ConectarExecute(Sender: TObject);
begin
  inherited;
  if DatosImportacion.FDConnection.Connected=True then
    DatosImportacion.FDConnection.Connected:=False;
  begin
    path       := ExtractFilePath(ParamStr(0));
    GeneralIni := TIniFile.Create(path + 'General.Ini');
    // Base de datos
    DatosSinBDEPath    := GeneralIni.ReadString('Datos', 'DatosSinBDEPath','');
    TipoBaseDatos      := GeneralIni.ReadInteger('Datos', 'BaseDatos',0);  // 0 interbase -- 1 firebird
    GeneralIni.Free;

    if edPathOrigen.Text='' then
      edPathOrigen.Text:=DatosSinBDEPath;

    DatosImportacion.FDConnection.Connected                  := False;
    DatosImportacion.FDConnection.Params.Values['Database']  := edPathOrigen.Text;
    DatosImportacion.FDConnection.Params.Values['User_Name'] := 'sysdba';
    DatosImportacion.FDConnection.Params.Values['Password']  := 'regulador';
    if TipoBaseDatos=0 then
      DatosImportacion.FDConnection.Params.Values['DriverID']  := 'IB'
    else
      if TipoBaseDatos=0 then
        DatosImportacion.FDConnection.Params.Values['DriverID']  := 'FB';
    DatosImportacion.FDConnection.Params.Values['SQLDialect']:= '1';

    try
       DatosImportacion.FDConnection.Connected:=True;
    except
      on e: Exception do
        begin
          Application.MessageBox(pchar (e.ClassName + ';' + e.Message),'error',MB_ICONSTOP);
          ShowMessage('Verificar el Alias de la Base de Datos de Origen .....');
          DatosImportacion.FDConnection.Connected:=False;
        end;
    end;
  end;
  imConectado.Visible    := DatosImportacion.FDConnection.Connected=False;
  imDesconectado.Visible := DatosImportacion.FDConnection.Connected=False;
  if DatosImportacion.FDConnection.Connected then
    begin
      lbEstado.Font.Color  := clBlue;
      lbEstado.Caption     := 'Conectado';
      Conectar.ImageIndex  := 10;
      dbcSucursal.KeyValue := SucursalPorDefecto;
    end
  else
    begin
      lbEstado.Font.Color := clRed;
      Conectar.ImageIndex := 11;
      lbEstado.Caption    := 'Desconectado';
    end;
end;

procedure TFormPanelImportacionAjustesStock.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  QComprobanteAjustes.Close;
  QComprobanteAjustes.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  QComprobanteAjustes.Open;
end;

procedure TFormPanelImportacionAjustesStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ListBox.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
  ImportarIni := TIniFile.Create(path + 'PanelImportacion.Ini');
  ImportarIni.WriteString('Datos', 'DatosImportar',edPathOrigen.Text);
  ImportarIni.Free;
  Action:=caFree;
  inherited;


end;

procedure TFormPanelImportacionAjustesStock.FormCreate(Sender: TObject);
var S:String;
begin
  inherited;
  IF NOT (Assigned(DatosImportacion)) THEN
    DatosImportacion := TDatosImportacion.Create(Self);
 // IF NOT (Assigned(DatosImportacionInput)) THEN
//    DatosImportacionInput := TDatosImportacionInput.Create(Self);


  if FileExists(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT')=False then
    FileCreate(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
  AssignFile(Archivo,ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
  Reset(Archivo);
    while not(Eof(Archivo)) do
    begin
      ReadLn(Archivo,S);
      ListBox.Items.Add(s);
    end;
  CloseFile(Archivo);

  path := ExtractFilePath(ParamStr(0));

  ImportarIni        := TIniFile.Create(path + 'PanelImportacion.Ini');
  edPathOrigen.Text  := ImportarIni.ReadString('Datos', 'DatosImportar','');
  ImportarIni.Free;
  chbPorDia.OnClick(Sender);
 // Conectar.Execute;

  QBuscaSucursal.Close;
  QBuscaSucursal.Open;

  QComprobanteAjustes.Close;
  QComprobanteAjustes.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  QComprobanteAjustes.Open;

  Conectar.ImageIndex:=10;

end;

procedure TFormPanelImportacionAjustesStock.FormDestroy(Sender: TObject);
begin
  FormPanelImportacionAjustesStock:=nil;
  inherited;

end;

procedure TFormPanelImportacionAjustesStock.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
 // Buscar.Execute;
end;

procedure TFormPanelImportacionAjustesStock.ImportarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  if Not(DatosImportacion.QAjusteCab.IsEmpty) then
    begin
      Application.ProcessMessages;
      DatosImportacion.QAjusteCab.First;
      if Not(Assigned(FormAjustesStock)) then
        FormAjustesStock:=TFormAjustesStock.Create(Self);
      while Not(DatosImportacion.QAjusteCab.Eof) do
        begin
          FormAjustesStock.Agregar.Execute;
          FormAjustesStock.CDSAjusteCabFECHA.Value    :=DatosImportacion.QAjusteCabFECHA.Value;
          FormAjustesStock.CDSAjusteCabSUCURSAL.Value :=DatosImportacion.QAjusteCabSUCURSAL.Value;
          FormAjustesStock.CDSAjusteCabID_TIPOCOMPROBANTESetText(FormAjustesStock.CDSAjusteCabID_TIPOCOMPROBANTE,DatosImportacion.QAjusteCabID_TIPOCOMPROBANTE.AsString);
          FormAjustesStock.CDSAjusteCabDEPOSITO.Value:=DatosImportacion.QAjusteCabDEPOSITO.Value;
          FormAjustesStock.CDSAjusteCabSUCRTO.Value  :=DatosImportacion.QAjusteCabSUCRTO.Value;
          FormAjustesStock.CDSAjusteCabNUMRTO.Value  :=DatosImportacion.QAjusteCabNUMRTO.Value;
          FormAjustesStock.CDSAjusteCabNROCPBTE.Value:=DatosImportacion.QAjusteCabNROCPBTE.Value;
          FormAjustesStock.CDSAjusteCabAJUSTE_CERO_STOCK.Value:=DatosImportacion.QAjusteCabAJUSTE_CERO_STOCK.Value;
          FormAjustesStock.CDSAjusteCabMOTIVO.Value  :=DatosImportacion.QAjusteCabMOTIVO.Value;
          FormAjustesStock.CDSAjusteCabOBS.Value     :=DatosImportacion.QAjusteCabOBS.Value;
          DatosImportacion.QAjusteDet.First;
          while Not(DatosImportacion.QAjusteDet.Eof) do
            begin
              FormAjustesStock.CDSAjusteDet.Append;
              FormAjustesStock.CDSAjusteDetCODIGOSetText(FormAjustesStock.CDSAjusteDetCODIGO,DatosImportacion.QAjusteDetCODIGO.AsString);
              FormAjustesStock.CDSAjusteDetCANTIDADSetText(FormAjustesStock.CDSAjusteDetCANTIDAD,FloatToStr(DatosImportacion.QAjusteDetCANTIDAD.AsFloat));
              while Not(DatosImportacion.QAjusteSubDetalle.Eof) do
                begin
                  FormAjustesStock.CDSAjusteSubDetalle.Append;
                  FormAjustesStock.CDSAjusteSubDetalleSERIE.Value:=DatosImportacion.QAjusteSubDetalleSERIE.Value;
                  FormAjustesStock.CDSAjusteSubDetalle.Post;
                end;
               DatosImportacion.QAjusteDet.Next;
              Application.ProcessMessages;
            end;
          FormAjustesStock.Confirma.Execute;
          DatosImportacion.QAjusteCab.Next;

          Application.ProcessMessages;
        end;
      FormAjustesStock.Salir.Execute;

    end;

  Screen.Cursor:=crDefault;

end;

procedure TFormPanelImportacionAjustesStock.ListBoxClick(Sender: TObject);
begin
  inherited;
 if ListBox.Items[ListBox.ItemIndex]<>'' then
    edPathOrigen.Text:=ListBox.Items[ListBox.ItemIndex];
end;

procedure TFormPanelImportacionAjustesStock.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if edPathOrigen.Text<>'' then
    begin
      ListBox.Items.Add(edPathOrigen.Text);
      //edPathOrigen.Text:=''
    end;
end;

procedure TFormPanelImportacionAjustesStock.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
    begin
      DecodeDate(Desde.Date,y,m,d);
      if Button=btnext Then
        if m=12 Then
          begin
            m:=1;y:=y+1;
          end
        else
          m:=m+1
      else
        if Button=btPrev Then
          if m=1 Then
            begin
              m:=12;y:=y-1;
            end
          else
            m:=m-1;
      Desde.Date:=EncodeDate(y,m,1);
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;  
//  BUSCAR.Execute;
end;


end.
