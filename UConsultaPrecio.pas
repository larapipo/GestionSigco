unit UConsultaPrecio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, ExtCtrls, ActnList, FMTBcd, DB,
  SqlExpr, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBClient, Provider,
  JvExControls, JvGradient, Buttons, JvBaseEdits, DBCtrls,IniFiles, JvDBControls,
  System.Actions, Vcl.Menus,StrUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement;

type
  TFormConsultaPrecio = class(TForm)
    pnPrincipal: TPanel;
    ceCodigo: TJvComboEdit;
    edDetalle: TEdit;
    ActionList1: TActionList;
    BuscaArticulo: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Consulta: TAction;
    DSConsultaStock: TDataSource;
    DSPConsultaStock: TDataSetProvider;
    CDSConsultaStock: TClientDataSet;
    CDSConsultaStockCODIGO_STK: TStringField;
    CDSConsultaStockDETALLE_STK: TStringField;
    CDSConsultaStockMARCA_STK: TStringField;
    CDSConsultaStockRUBRO_STK: TStringField;
    CDSConsultaStockSUBRUBRO_STK: TStringField;
    CDSConsultaStockSIGNO: TStringField;
    CDSConsultaStockMODO_GRAVAMEN: TStringField;
    CDSConsultaStockPRECIO: TFloatField;
    CDSConsultaStockPRECIOCONIVA: TFloatField;
    pnDetalle: TPanel;
    CDSConsultaStockNROLISTA: TIntegerField;
    btSalir: TBitBtn;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    CDSConsultaStockPRECIO_CONDSCTO: TFloatField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    edDscto: TJvCalcEdit;
    Label5: TLabel;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSDeposito: TDataSource;
    Label6: TLabel;
    dbcDeposito: TDBLookupComboBox;
    dbgPrecios: TJvDBGrid;
    CDSConsultaStockPRECIO_2: TFloatField;
    CDSConsultaStockPRECIOCONIVA_2: TFloatField;
    Label7: TLabel;
    DBEdit3: TJvDBCalcEdit;
    Label8: TLabel;
    DBEdit4: TJvDBCalcEdit;
    edPSinIva: TJvCalcEdit;
    edPCIva: TJvCalcEdit;
    DBText1: TDBText;
    Label9: TLabel;
    dbgExitencias: TDBGrid;
    DBText2: TDBText;
    Label10: TLabel;
    CDSExistencia: TClientDataSet;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    CDSExistenciaFULTAJUSTE: TSQLTimeStampField;
    DSExistencia: TDataSource;
    DSPExistencia: TDataSetProvider;
    PopupMenu1: TPopupMenu;
    MarcarConciliado: TAction;
    DesmarcarConciliado: TAction;
    MarcarConciliado1: TMenuItem;
    DesmarcarConciliado1: TMenuItem;
    QStock: TFDQuery;
    QConsultaStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    CDSConsultaStockREC_DEPO: TFloatField;
    CDSConsultaStockCODIGO_DEPOSITO: TIntegerField;
    CDSConsultaStockRECARGO: TFloatField;
    CDSConsultaStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSConsultaStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSConsultaStockCOSTO_GRAVADO_STK: TFloatField;
    CDSConsultaStockCOSTO_EXENTO_STK: TFloatField;
    CDSConsultaStockTASA: TFloatField;
    CDSConsultaStockCOTIZACION: TFloatField;
    pmDetalle: TPopupMenu;
    VerCodigoAlternativo: TMenuItem;
    CDSConsultaStockREEMPLAZO_STK: TStringField;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    procedure BuscaArticuloExecute(Sender: TObject);
    procedure ceCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure ConsultaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPreciosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSConsultaStockCalcFields(DataSet: TDataSet);
    procedure edDsctoKeyPress(Sender: TObject; var Key: Char);
    procedure CDSConsultaStockAfterScroll(DataSet: TDataSet);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgExitenciasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MarcarConciliadoExecute(Sender: TObject);
    procedure DesmarcarConciliadoExecute(Sender: TObject);
    procedure CDSConsultaStockCODIGO_STKGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure VerCodigoAlternativoClick(Sender: TObject);
    procedure DSConsultaStockDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    BuscadorIni        :TIniFile;
    ListaPordefecto:Integer;
    function AsignarArticulo(Dato:String):Boolean;
  end;

var
  FormConsultaPrecio: TFormConsultaPrecio;

implementation

uses UBuscadorArticulos, DMBuscadoresForm, UMuestraListaCodBarra,UDMain_FD;

{$R *.dfm}

function TFormConsultaPrecio.AsignarArticulo(Dato:String):Boolean;
begin
  if Length(Dato)<=8 then
    begin
      QStock.Close;
      QStock.Params.ParamByName('codigo').Value:=dato;
      QStock.Open;
      if Not(QStock.IsEmpty) then
        begin
          Result:=True;
          ceCodigo.Text :=QStockCODIGO_STK.Value;
          edDetalle.Text:=QStockDETALLE_STK.Value;
          Consulta.Execute;
        end
      else
        Result:=False;
    end
  else
    Result:=False;

end;

procedure TFormConsultaPrecio.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultaPrecio.BuscaArticuloExecute(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
      AsignarArticulo(FormBuscadorArticulos.Codigo)
    end
  else
    begin
      edDetalle.Text:='';
      ceCodigo.Text :='';
    end
end;

procedure TFormConsultaPrecio.CDSConsultaStockAfterScroll(DataSet: TDataSet);
begin
  edPSinIva.Value := CDSConsultaStockPRECIOCONIVA.AsFloat*CDSConsultaStockCOTIZACION.AsFloat;
  edPCIva.Value   := CDSConsultaStockPRECIO_CONDSCTO.AsFloat*CDSConsultaStockCOTIZACION.AsFloat;
  CDSExistencia.Close;
  CDSExistencia.Params.ParamByName('Codigo').Value:=CDSConsultaStockCODIGO_STK.Value;
  CDSExistencia.Params.ParamByName('unidad').Value:='V';
  CDSExistencia.Params.ParamByName('fisico').Value:=1;
  CDSExistencia.Params.ParamByName('usuario').AsFloat:=DMMain_FD.UsuarioActivoId;
  CDSExistencia.Open;
end;

procedure TFormConsultaPrecio.CDSConsultaStockCalcFields(DataSet: TDataSet);
begin
  CDSConsultaStockPRECIO_CONDSCTO.Value:=CDSConsultaStockPRECIOCONIVA.AsFloat*((100-edDscto.Value)*0.01);
  CDSConsultaStockPRECIOCONIVA_2.Value :=CDSConsultaStockPRECIOCONIVA.AsFloat * (1 + CDSConsultaStockREC_DEPO.AsFloat * 0.01);
end;

procedure TFormConsultaPrecio.CDSConsultaStockCODIGO_STKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if FormConsultaPrecio<>nil then
    begin
      Text:=CDSConsultaStockCODIGO_STK.Value;
      if VerCodigoAlternativo.Checked then
        Text:=Trim(CDSConsultaStockREEMPLAZO_STK.Value);
    end;
end;

procedure TFormConsultaPrecio.ceCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_DOWN) and (Not(CDSConsultaStock.Eof)) then
    CDSConsultaStock.Next
  else
    if (key=VK_UP) and (Not(CDSConsultaStock.bof)) then
      CDSConsultaStock.Prior;
  Key:=0;

end;

procedure TFormConsultaPrecio.ceCodigoKeyPress(Sender: TObject; var Key: Char);
var s:String;
begin
  if (Key=#13) Then

    begin
      // Quitar enter de la cadena....
      AnsiReplaceStr(ceCodigo.Text, #13, '');
      s := DMMain_FD.SearchCodigo(ceCodigo.Text,DSConsultaStock,FormConsultaPrecio.VerCodigoAlternativo.Checked);

      IF AsignarArticulo(s) = False THEN
        BEGIN
         // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
          FormBuscadorArticulos.Esquema     :=-1;
          FormBuscadorArticulos.Dato              := ceCodigo.Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              AsignarArticulo(FormBuscadorArticulos.Codigo);
            end
        END;
  END;
end;

procedure TFormConsultaPrecio.ConsultaExecute(Sender: TObject);
begin
  CDSConsultaStock.Close;
  CDSConsultaStock.Params.ParamByName('Codigo').Value:=ceCodigo.Text;
  CDSConsultaStock.Params.ParamByName('id_lista').Value:=-1;
  CDSConsultaStock.Params.ParamByName('deposito').Value:=dbcDeposito.KeyValue;
  CDSConsultaStock.Open;
  CDSConsultaStock.Locate('NROLISTA',IntToStr(ListaPordefecto),[]);
  ceCodigo.SetFocus;
  ceCodigo.SelectAll;
end;

procedure TFormConsultaPrecio.dbgExitenciasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdFocused in State) then
    begin
      dbgExitencias.canvas.brush.color := clNavy;
      dbgExitencias.canvas.Font.color  := clWhite;
    end
  else
    begin
      if (dbgExitencias.DataSource.DataSet.FieldByName('FULTAJUSTE').AsDateTime)>Date-10 then
        begin
          dbgExitencias.Canvas.Font.Color:=clBlue;
          dbgExitencias.Canvas.Font.Style:=[fsBold];
        end;
    end;
    //Esta línea es nueva
    dbgExitencias.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormConsultaPrecio.dbgPreciosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

    if gdSelected in State Then
      begin
        dbgPrecios.Canvas.Font.Color:=clWhite;
        dbgPrecios.Canvas.Brush.Color:=clNavy;
      end
    else
      if CDSConsultaStockNROLISTA.Value=ListaPordefecto then
        dbgPrecios.Canvas.Brush.Color:=clYellow
       else
         dbgPrecios.Canvas.Brush.Color:=clWhite;

 // if (gdFocused in State) then
 //   begin
 //     dbgPrecios.Canvas.Brush.Color := clNavy;
  //    dbgPrecios.Canvas.Font.Color  := clWhite;
 //    end;

  dbgPrecios.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormConsultaPrecio.DesmarcarConciliadoExecute(Sender: TObject);
begin
  DMMain_fd.ConfirmaStock(CDSExistenciaDEPOSITO_STK.Value,CDSExistenciaCODIGO_STK.ASString,0);
  CDSExistencia.Refresh;
  dbgExitencias.Refresh;
end;

procedure TFormConsultaPrecio.DSConsultaStockDataChange(Sender: TObject;
  Field: TField);
begin
  edDscto.Enabled   :=  not DSConsultaStock.DataSet.IsEmpty;
end;

procedure TFormConsultaPrecio.edDsctoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      Key:=#0;
      CDSConsultaStock.Refresh;
      ceCodigo.SetFocus;
    end;
end;

procedure TFormConsultaPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_fd.UsuarioActivo+'_buscadorArticulos.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorArticulos.ini');
  //*************************************************************
   BuscadorIni.WriteBool ('codigo', 'alternativo', VerCodigoAlternativo.Checked);
   BuscadorIni.WriteFloat('dscto', 'dscto',edDscto.Value);
   BuscadorIni.Free;

   Action:=caFree;
end;

procedure TFormConsultaPrecio.FormCreate(Sender: TObject);
var DepositoPorDefecto:Integer;
 Sucursal:String;
 ArchivoIni  :TIniFile;
begin
  AutoSize   :=True;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  DepositoPorDefecto := ArchivoIni.ReadInteger('Deposito', 'Deposito', 0);
  sucursal           := ArchivoIni.ReadString('Sucursal', 'Sucursal', '1');
  ArchivoIni.Free;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorArticulos.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorArticulos.ini');
  //*************************************************************
   edDscto.Value               := BuscadorIni.ReadFloat('dscto', 'dscto',0);
   VerCodigoAlternativo.Checked:= BuscadorIni.ReadBool ('codigo', 'alternativo', False);

   BuscadorIni.Free;

  ListaPordefecto:=DMMain_FD.ListaPordefecto;

  //***********************************************************
  // Asigno la lista por sucursal
  //***********************************************************
  ListaPordefecto:= DMMain_FD.ListaPorDefecto(DMMain_FD.SucursalPorDef);
  //***********************************************************
  //***********************************************************

  CDSDepositos.Close;
  CDSDepositos.Open;
  dbcDeposito.KeyValue :=DepositoPorDefecto;
  CDSDepositos.Locate('id',IntToStr(DepositoPorDefecto),[]);

end;

procedure TFormConsultaPrecio.FormDestroy(Sender: TObject);
begin
  FormConsultaPrecio:=nil;
end;

procedure TFormConsultaPrecio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then
    Close;
end;

procedure TFormConsultaPrecio.MarcarConciliadoExecute(Sender: TObject);
begin
  DMMain_FD.ConfirmaStock(CDSExistenciaDEPOSITO_STK.Value,CDSExistenciaCODIGO_STK.ASString,1);
  CDSExistencia.Refresh;
  dbgExitencias.Refresh;
end;

procedure TFormConsultaPrecio.VerCodigoAlternativoClick(Sender: TObject);
begin
  VerCodigoAlternativo.Checked:=Not(VerCodigoAlternativo.Checked);
  dbgPrecios.Refresh;
end;

end.
