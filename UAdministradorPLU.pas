unit UAdministradorPLU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  VaComm, VaControls, SystelConn,StrUtils,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  JvDBLookup, Vcl.Grids, Vcl.DBGrids,IniFiles, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, AdvGaugeCircle, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  dxSkinWXI;

type
  TFormAdministradorPLU = class(TFormABMBase)
    btPLU: TBitBtn;
    QListasPre: TFDQuery;
    dbcLista1: TJvDBLookupCombo;
    dbcLista2: TJvDBLookupCombo;
    DSLista1: TDataSource;
    DSLista2: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DSLista: TDataSource;
    edLimite: TEdit;
    Label3: TLabel;
    QListaTope: TFDQuery;
    QListaTopeCODIGO_STK: TStringField;
    QListaTopeDETALLE_STK: TStringField;
    QListaTopeUNIDAD: TStringField;
    QListaTopePLU: TStringField;
    QListaTopePRECIO_1: TFloatField;
    QListaTopePRECIO_2: TFloatField;
    chPrecio2Cero: TCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1PLU: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_1: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO_2: TcxGridDBColumn;
    cxGrid1DBTableView1SECCION: TcxGridDBColumn;
    QListaTopeDETALLESEC: TStringField;
    cxGrid1DBTableView1DETALLESEC: TcxGridDBColumn;
    gaCarga: TAdvGaugeCircle;
    QListaTopeRUBRO_STK: TStringField;
    cxGrid1DBTableView1RUBRO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    QListaTopeDETALLE_RUBRO: TStringField;
    mtLista1: TFDMemTable;
    mtLista2: TFDMemTable;
    mtLista1ID: TIntegerField;
    mtLista1NOMBRE: TStringField;
    mtLista2ID: TIntegerField;
    mtLista2NOMBRE: TStringField;
    QListasPreID: TIntegerField;
    QListasPreNOMBRE: TStringField;
    QListaTopeSECCION: TStringField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure btPLUClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbcLista1Click(Sender: TObject);
    procedure dbcLista2Click(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    bal:tSystelConnect;
    Procedure CargaPlus(sender:tobject);

  public
    { Public declarations }
  end;

var
  FormAdministradorPLU: TFormAdministradorPLU;

implementation

uses UDMain_FD,UStock_2;
{$R *.dfm}

procedure TFormAdministradorPLU.btPLUClick(Sender: TObject);
begin
  inherited;
  if Not(QListaTope.IsEmpty) then
    begin
      bal:=tsystelconnect.Create(self);
      bal.OnCargaPLU  :=cargaplus;
      if DMMain_FD.PluDecimales>0 then
        bal.Coeficiente :=100
      else
        bal.Coeficiente :=1;
      bal.ShowForm;
      bal.Free;
    end
  else
    ShowMessage('No hay datos disponibles....');
end;

procedure TFormAdministradorPLU.BuscarExecute(Sender: TObject);
begin
 // inherited;
  if (dbcLista1.KeyValue>-1) and (dbcLista2.KeyValue>-1) then
    begin
      QListaTope.Close;
      QListaTope.ParamByName('Lista_1').Value := dbcLista1.KeyValue;
      QListaTope.ParamByName('Lista_2').Value := dbcLista2.KeyValue;
      QListaTope.ParamByName('Lte').AsString  := edLimite.Text;

      QListaTope.Open;
    end
  ELSE
    begin
      if (dbcLista1.KeyValue<0) then ShowMessage('Falta Lista 1 ...');
      if (dbcLista2.KeyValue<0) then ShowMessage('Falta Lista 2 ...');
    end;
end;

procedure TFormAdministradorPLU.CargaPlus(sender: tobject);
begin
  gaCarga.Minimum  := 0;
  gaCarga.Position := 0;
  gaCarga.Maximum  := QListaTope.RecordCount;
  gaCarga.Text:='Cargar '+ IntToStr(QListaTope.RecordCount)+' PLUs';
  gaCarga.Visible  := True;
  if Not(QListaTope.IsEmpty) then
    begin
      QListaTope.First;
      while Not(QListaTope.Eof) do
        begin
          gaCarga.Position:=gaCarga.Position+1;
          Application.ProcessMessages;
          bal.MemData.Append;
          bal.memData['plu']         := AnsiRightStr(QListaTopePLU.AsString,4);        //  '0002';                 // de 0001 a 4000
          bal.memData['descripcion'] :=  Copy(QListaTopeDETALLE_STK.AsString,1,18);// 'Torta por kg'; // 18 caracteres
          bal.memdata['version_plu'] := '1';            // no se usa, un caracter

          if DMMain_FD.PluDecimales>0 then
             bal.coeficiente:=100;

          bal.memdata['preciolista1']:= FormatFloat('0.00', QListaTopePRECIO_1.AsFloat);
          bal.memdata['preciolista2']:= FormatFloat('0.00', QListaTopePRECIO_2.AsFloat);

          if chPrecio2Cero.Checked then
            bal.memdata['preciolista2']:= '0.00';

          begin
            bal.memdata['nro_seccion']  := COpy('00',1,2-length(IntToStr(QListaTopeRUBRO_STK.AsInteger)))+IntToStr(QListaTopeRUBRO_STK.AsInteger);         // de 01 a 99
            bal.MemData['DETALLE_SECC'] := Copy(QListaTopeDETALLE_RUBRO.AsString+'                ',1,18);
          end;
          if QListaTopeUNIDAD.Value='KGR' then
            bal.memdata['tipo_venta']  :='P'
          else
            bal.memdata['tipo_venta']  :='U';      // (P)eso o (U)nidad
          bal.MemData['Sincro']      :='NoYet';   // Siempre asi
          bal.memdata.Post;
          QListaTope.Next;
        end;

     end;
  gaCarga.Visible  := False;

end;

procedure TFormAdministradorPLU.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=QListaTopeCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormAdministradorPLU.dbcLista1Click(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;

procedure TFormAdministradorPLU.dbcLista2Click(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;


procedure TFormAdministradorPLU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   inherited;
   mtLista1.Close;
   mtLista2.Close;
   ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ConfiguracionPLU.ini');
   ArchivoIni.WriteInteger('Lista', 'lista1', dbcLista1.KeyValue);
   ArchivoIni.WriteInteger('Lista', 'lista2', dbcLista2.KeyValue);
   ArchivoIni.WriteString('Lista', 'Limite', edLimite.Text);

   ArchivoIni.Free;
   Action:=caFree;
end;

procedure TFormAdministradorPLU.FormCreate(Sender: TObject);
begin
  inherited;
  QListasPre.Close;
  QListasPre.Open;
  mtLista1.Open;
  mtLista2.Open;
  QListasPre.First;
  while Not(QListasPre.Eof) do
    begin
      mtLista1.Append;
      mtLista1ID.Value      := QListasPreID.AsInteger;        //  '0002';                 // de 0001 a 4000
      mtLista1NOMBRE.Value  := QListasPreNOMBRE.AsString;        //  '0002';                 // de 0001 a 4000
      mtLista1.Post;

      mtLista2.Append;
      mtLista2ID.Value      := QListasPreID.AsInteger;        //  '0002';                 // de 0001 a 4000
      mtLista2NOMBRE.Value  := QListasPreNOMBRE.AsString;        //  '0002';                 // de 0001 a 4000
      mtLista2.Post;
      QListasPre.Next;
    end;
  QListasPre.Close;

  ArchivoIni                    := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ConfiguracionPLU.ini');
  dbcLista1.KeyValue            := ArchivoIni.ReadInteger('Lista', 'lista1', -1);
  dbcLista2.KeyValue            := ArchivoIni.ReadInteger('Lista', 'lista2', -1);
  edLimite.Text                 := ArchivoIni.ReadString('Lista', 'Limite','00000');
  JvAppIniFileStorage1.FileName := (sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  ArchivoIni.Free;
  AutoSize:=False;
end;

procedure TFormAdministradorPLU.FormDestroy(Sender: TObject);
begin
  inherited;
   FormAdministradorPLU:=nil;
end;

procedure TFormAdministradorPLU.RecuperarExecute(Sender: TObject);
begin
//  inherited;

end;

end.
