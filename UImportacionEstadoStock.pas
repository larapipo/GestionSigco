unit UImportacionEstadoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, WideStrings, Menus, DB, SqlExpr, ExtCtrls,
  StdCtrls, JvLabel, JvComponentBase, JvFormPlacement, ImgList, Types,
  ActnList, ComCtrls, JvDBControls, JvExControls, JvGradient,
  Buttons, ToolWin,IniFiles, DBClient, Provider, JvDBLookup, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, DataExport, DataToXLS,Math, Data.DBXInterBase,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormImportacionExistencias = class(TFormABMBase)
    JvLabel1: TJvLabel;
    edPathOrigen: TEdit;
    ListBox: TListBox;
    imConectado: TImage;
    spConectar: TSpeedButton;
    spAlias: TSpeedButton;
    SQLConectionImportacion: TSQLConnection;
    PopupMenu1: TPopupMenu;
    BorrarItem1: TMenuItem;
    Conectar: TAction;
    imDesconectado: TImage;
    lbEstado: TLabel;
    Label1: TLabel;
    dbcDeopositoDestino: TJvDBLookupCombo;
    DSDepositos: TDataSource;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    QDepositos: TFDQuery;
    DSPExStock: TDataSetProvider;
    QExStock: TFDQuery;
    CDSExStock: TClientDataSet;
    DSExStock: TDataSource;
    CDSExStockCODIGO_STK: TStringField;
    CDSExStockDETALLE_STK: TStringField;
    CDSExStockFISICO: TFloatField;
    dbgstock: TJvDBGrid;
    spExportarXLS: TSpeedButton;
    Hoja1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    GenerarAjuste: TAction;
    VerNovedades: TAction;
    btVerNovedades: TBitBtn;
    Label2: TLabel;
    dbcDepositoOrigen: TJvDBLookupCombo;
    QDepositoOrigen: TFDQuery;
    DSPDepositoOrigen: TDataSetProvider;
    CDSDepositoOrigen: TClientDataSet;
    DSDepositoOrigen: TDataSource;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Label3: TLabel;
    procedure spAliasClick(Sender: TObject);
    procedure ListBoxClick(Sender: TObject);
    procedure ListBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BorrarItem1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConectarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure spExportarXLSClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GenerarAjusteExecute(Sender: TObject);
    procedure VerNovedadesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    GeneralIni,ImportarIni:TIniFile;
    Path:String;
    lista:TStringList;
    Archivo   :TextFile;
  end;

var
  FormImportacionExistencias: TFormImportacionExistencias;

implementation

uses UDMain_FD, UAjusteMercaderia, UListCpbteNoImportados;
{$R *.dfm}

procedure TFormImportacionExistencias.BorrarItem1Click(Sender: TObject);
begin
  inherited;
  ListBox.Items.Delete(ListBox.ItemIndex);
end;

procedure TFormImportacionExistencias.BuscarExecute(Sender: TObject);
begin
  inherited;
  if (dbcDepositoOrigen.KeyValue>0) and (imConectado.Visible) then
    begin
      Screen.Cursor:=crHourGlass;
      CDSExStock.Close;
      CDSExStock.Params.ParamByName('lista').Value :=-1;
      CDSExStock.Params.ParamByName('deposito').Value :=dbcDepositoOrigen.KeyValue;
      CDSExStock.Params.ParamByName('Unidad').Value :='V';
      CDSExStock.Params.ParamByName('fecha').Value :=Date;

      CDSExStock.Params.ParamByName('rubro').AsString    :='***';
      CDSExStock.Params.ParamByName('subrubro').AsString :='*****';
      CDSExStock.Params.ParamByName('marca').AsString    :='****';

      CDSExStock.IndexDefs.Clear;
      CDSExStock.IndexFieldNames:='';
      CDSExStock.IndexName:='';
      CDSExStock.Open;
      Screen.Cursor:=crDefault;
    end
  else
    ShowMessage('Falta Deposito o no hay conección activa....');
end;

procedure TFormImportacionExistencias.ConectarExecute(Sender: TObject);
begin
  inherited;
  if SQLConectionImportacion.ConnectionState in [csStateOpen] then
    SQLConectionImportacion.Connected:=False
  else
    begin
      path := ExtractFilePath(ParamStr(0));
      GeneralIni := TIniFile.Create(path + 'General.Ini');
      // Base de datos
      DatosSinBDEPath    := GeneralIni.ReadString('Datos', 'DatosSinBDEPath','');
      GeneralIni.Free;

      if edPathOrigen.Text='' then
        edPathOrigen.Text:=DatosSinBDEPath;

      SQLConectionImportacion.Connected:=False;

      SQLConectionImportacion.Params.Clear;
      SQLConectionImportacion.DriverName:='INTRBASE';
      SQLConectionImportacion.Params.Add('Database='+edPathOrigen.Text);
      SQLConectionImportacion.Params.Add('RoleName=RoleName');
      SQLConectionImportacion.Params.Add('User_Name=sysdba');
      SQLConectionImportacion.Params.Add('Password=regulador');
      SQLConectionImportacion.Params.Add('ServerCharSet=');
      SQLConectionImportacion.Params.Add('SQLDialect=1');
      SQLConectionImportacion.Params.Add('ErrorResourceFile=');
      SQLConectionImportacion.Params.Add('LocaleCode=0000');
      SQLConectionImportacion.Params.Add('BlobSize=-1');
      SQLConectionImportacion.Params.Add('CommitRetain=False');
      SQLConectionImportacion.Params.Add('WaitOnLocks=True');
      SQLConectionImportacion.Params.Add('Interbase TransIsolation=ReadCommited');
      SQLConectionImportacion.Params.Add('Trim Char=False');
      try
        SQLConectionImportacion.Connected:=True;

      except
        on e: Exception do
          begin
            Application.MessageBox(pchar (e.ClassName + ';' + e.Message),'error',MB_ICONSTOP);
            ShowMessage('Verificar el Alias de la Base de Datos de Origen .....');
            SQLConectionImportacion.Connected:=False;
          end;
      end;
    end;
  imConectado.Visible   :=SQLConectionImportacion.ConnectionState in [csStateOpen];
  imDesconectado.Visible:=SQLConectionImportacion.ConnectionState in [csStateClosed];
  if imConectado.Visible then
    begin
      lbEstado.Font.Color:=clBlue;
      lbEstado.Caption   :='Conectado';
      Conectar.ImageIndex:=10;
      CDSDepositoOrigen.Open;
    end
  else
    begin
      CDSDepositoOrigen.Close;
      lbEstado.Font.Color:=clRed;
      Conectar.ImageIndex:=11;
      lbEstado.Caption:='Desconectado';
    end;


end;

procedure TFormImportacionExistencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ListBox.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'ALIASIMPORTACION.TXT');
  ImportarIni := TIniFile.Create(path + 'PanelImportacion.Ini');
  ImportarIni.WriteString('Datos', 'DatosImportar',edPathOrigen.Text);
  ImportarIni.Free;
  inherited;
  Action:=caFree;
end;

procedure TFormImportacionExistencias.FormCreate(Sender: TObject);
var S:String;
begin
  inherited;
  AutoSize:=True;
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

  ImportarIni := TIniFile.Create(path + 'PanelImportacion.Ini');
  edPathOrigen.Text  := ImportarIni.ReadString('Datos', 'DatosImportar','');
  ImportarIni.Free;

 // Conectar.Execute;
  Conectar.ImageIndex:=11;

  CDSDepositos.Close;
  CDSDepositos.Open;
end;

procedure TFormImportacionExistencias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportacionExistencias:=nil;
end;

procedure TFormImportacionExistencias.GenerarAjusteExecute(Sender: TObject);
var Ajuste:Extended;
Estado: TValueRelationship;
OldDepositoDefecto:Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  OldDepositoDefecto:=DepositoPorDefecto;
  if (dbcDeopositoDestino.KeyValue<=0) then
    Raise Exception.Create('Falta el deposito Destino...');

  if Not(CDSExStock.IsEmpty) and (dbcDeopositoDestino.KeyValue>0) then
    begin
      lista:=TStringList.Create;
      Lista.Clear;
      Application.ProcessMessages;
      if Not(Assigned(FormAjustesStock)) then
        FormAjustesStock:=TFormAjustesStock.Create(Self);
      FormAjustesStock.Show;
        begin
          FormAjustesStock.Agregar.Execute;
          OldDepositoDefecto:=DepositoPorDefecto;
          DepositoPorDefecto:=dbcDeopositoDestino.KeyValue;
          FormAjustesStock.CDSAjusteCabFECHA.AsDateTime  :=Date;
          FormAjustesStock.CDSAjusteCabSUCURSAL.Value    :=SucursalPorDefecto;
          FormAjustesStock.CDSAjusteCabDEPOSITOSetText(FormAjustesStock.CDSAjusteCabDEPOSITO,IntToStr(dbcDeopositoDestino.KeyValue));
          FormAjustesStock.CDSAjusteCabAJUSTE_CERO_STOCK.Value:='N';
          FormAjustesStock.CDSAjusteCabMOTIVO.Value  :=3;
          FormAjustesStock.CDSAjusteCabOBS.Value     :='Ajuste de Conciliacion ';
          CDSExStock.First;
          while Not(CDSExStock.Eof) do
            begin
              Ajuste:=0;
              FormAjustesStock.CDSStock.Close;
              FormAjustesStock.CDSStock.Params.ParamByName('Codigo').Value   := CDSExStockCODIGO_STK.AsString;
              FormAjustesStock.CDSStock.Params.ParamByName('Deposito').Value := dbcDeopositoDestino.KeyValue;
              FormAjustesStock.CDSStock.Open;

              if FormAjustesStock.CDSStockCODIGO_STK.AsString<>'' then
                begin
                  if ( CDSExStockFISICO.AsFloat > FormAjustesStock.CDSStockMUESTRAFISICO.AsFloat) then
                    Ajuste:= CDSExStockFISICO.AsFloat - FormAjustesStock.CDSStockMUESTRAFISICO.AsFloat
                  else
                    if (CDSExStockFISICO.AsFloat < FormAjustesStock.CDSStockMUESTRAFISICO.AsFloat) then
                      Ajuste := CDSExStockFISICO.AsFloat - FormAjustesStock.CDSStockMUESTRAFISICO.AsFloat
                    else
                       begin
                         Estado:=CompareValue(CDSExStockFISICO.AsFloat,FormAjustesStock.CDSStockMUESTRAFISICO.AsFloat);
                         if (Estado=EqualsValue) Then Ajuste := 0;
                       end;
                  Ajuste:=RoundTo(Ajuste,-3);
                  if Not(IsZero(Ajuste)) then
                    begin
                      FormAjustesStock.CDSAjusteDet.Append;
                      FormAjustesStock.CDSAjusteDetCODIGOSetText(FormAjustesStock.CDSAjusteDetCODIGO,CDSExStockCODIGO_STK.Value);
                      FormAjustesStock.CDSAjusteDetCANTIDADSetText( FormAjustesStock.CDSAjusteDetCANTIDAD,FormatFloat('0.000', Ajuste));
                      Application.ProcessMessages;
                    end;
                end
              else
                begin
                  lista.Add( CDSExStockCODIGO_STK.AsString+'-'+
                             CDSExStockDETALLE_STK.ASString+'-'+
                            FormatFloat('0,00',CDSExStockFISICO.AsFloat) );
                end;

              CDSExStock.Next;
            end;
          Application.ProcessMessages;
        end;
    end;
  DepositoPorDefecto:=OldDepositoDefecto;
  Screen.Cursor:=crDefault;

end;

procedure TFormImportacionExistencias.ListBoxClick(Sender: TObject);
begin
  inherited;
  if ListBox.Items[ListBox.ItemIndex]<>'' then
    edPathOrigen.Text:=ListBox.Items[ListBox.ItemIndex];
end;

procedure TFormImportacionExistencias.ListBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_delete then
    ListBox.Items.Delete(ListBox.ItemIndex);
end;

procedure TFormImportacionExistencias.spAliasClick(Sender: TObject);
begin
  inherited;
  if edPathOrigen.Text<>'' then
    begin
      ListBox.Items.Add(edPathOrigen.Text);
      //edPathOrigen.Text:=''
    end;
end;

procedure TFormImportacionExistencias.spExportarXLSClick(Sender: TObject);
begin
  inherited;
  if Not(CDSExStock.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          Hoja1.SaveToFile(SaveDialog1.FileName);
    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormImportacionExistencias.VerNovedadesExecute(Sender: TObject);
begin
  inherited;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

end.
