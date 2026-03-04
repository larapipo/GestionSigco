unit UBuscaCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ActnList, DB,   StdCtrls, Mask,  
  JvExControls, JvGradient, Provider, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, FMTBcd, SqlExpr, JvExMask, JvToolEdit,IniFiles, System.Actions,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Buttons;

type
  TFormBuscadorCupones = class(TForm)
    Panel1: TPanel;
    JvGradient2: TJvGradient;
    Label1: TLabel;
    edNombreCliente: TEdit;
    ActionList1: TActionList;
    BuscarClientes: TAction;
    DSCupones: TDataSource;
    CDSCupones: TClientDataSet;
    DSPCupones: TDataSetProvider;
    CDSCuponesID: TIntegerField;
    CDSCuponesFACTURA_ID: TIntegerField;
    CDSCuponesFACTURA_CLASE: TStringField;
    CDSCuponesCODIGOBARRA1: TStringField;
    CDSCuponesFACTURA_TIPO: TStringField;
    CDSCuponesFACTURA_NROCPBTE: TStringField;
    CDSCuponesPAGADO: TStringField;
    CDSCuponesPERIODO: TStringField;
    CDSCuponesNUMERO: TStringField;
    TraerCupones: TAction;
    Aceptar: TAction;
    QCupones: TSQLQuery;
    QCuponesID: TIntegerField;
    QCuponesNUMERO: TStringField;
    QCuponesFACTURA_ID: TIntegerField;
    QCuponesFACTURA_CLASE: TStringField;
    QCuponesCODIGOBARRA1: TStringField;
    QCuponesFACTURA_TIPO: TStringField;
    QCuponesFACTURA_NROCPBTE: TStringField;
    QCuponesPAGADO: TStringField;
    QCuponesPERIODO: TStringField;
    QCuponesFACTURA_FECHA: TSQLTimeStampField;
    QCuponesIMPORTE_1: TFMTBCDField;
    QCuponesIMPORTE_2: TFMTBCDField;
    CDSCuponesFACTURA_FECHA: TSQLTimeStampField;
    CDSCuponesIMPORTE_1: TFMTBCDField;
    CDSCuponesIMPORTE_2: TFMTBCDField;
    QClientes: TSQLQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    ceCliente: TJvComboEdit;
    chbEstado: TCheckBox;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    dbgCupones: TcxGrid;
    dbgCuponesDBTableView1: TcxGridDBTableView;
    dbgCuponesLevel1: TcxGridLevel;
    dbgCuponesDBTableView1CODIGOBARRA1: TcxGridDBColumn;
    dbgCuponesDBTableView1FACTURA_NROCPBTE: TcxGridDBColumn;
    dbgCuponesDBTableView1PAGADO: TcxGridDBColumn;
    dbgCuponesDBTableView1PERIODO: TcxGridDBColumn;
    dbgCuponesDBTableView1NUMERO: TcxGridDBColumn;
    dbgCuponesDBTableView1FACTURA_FECHA: TcxGridDBColumn;
    dbgCuponesDBTableView1IMPORTE_1: TcxGridDBColumn;
    dbgCuponesDBTableView1IMPORTE_2: TcxGridDBColumn;
    CDSCuponesSeleccion: TBooleanField;
    dbgCuponesDBTableView1Column1: TcxGridDBColumn;
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarClientesExecute(Sender: TObject);
    procedure TraerCuponesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgCuponesDblClick(Sender: TObject);
    procedure chbEstadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbgCuponesDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    fCupon:Integer;
    fCodigoBarra:string;
  public
    ArchivoIni:TIniFile;
    { Public declarations }
  published
    property cupon :integer read fCupon write fCupon;
    property CodigoBarra :String read fCodigoBarra write fCodigoBarra;
  end;

var
  FormBuscadorCupones: TFormBuscadorCupones;

implementation

uses UBuscadorClientes,UDMain_FD, UBuscadorClientesAbonos;

{$R *.dfm}



procedure TFormBuscadorCupones.btCancelarClick(Sender: TObject);
begin
   FormBuscadorCupones.ModalResult:=mrCancel;
  //Close;
end;

procedure TFormBuscadorCupones.BuscarClientesExecute(Sender: TObject);
begin
 IF Not(Assigned(FormBuscadorClientesAbonados)) THEN
     FormBuscadorClientesAbonados:=TFormBuscadorClientesAbonados.Create(Self);
  FormBuscadorClientesAbonados.ShowModal;
  if (FormBuscadorClientesAbonados.Codigo<>'') and (FormBuscadorClientesAbonados.ModalResult=mrOk) Then
    BEGIN
      ceCliente.Text :=FormBuscadorClientesAbonados.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientesAbonados.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.Value;
          TraerCupones.Execute;
        END;
    END
  else
    btCancelar.Click;
end;

procedure TFormBuscadorCupones.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := QClientesNOMBRE.Value;
          TraerCupones.Execute;
          end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormBuscadorCupones.chbEstadoClick(Sender: TObject);
begin
  CDSCupones.Filtered:=False;
  CDSCupones.Filter:='';
  if (chbEstado.Checked) and (CDSCupones.Active=True) then
    begin
      CDSCupones.Filter:='PAGADO=''N''';
      CDSCupones.Filtered:=chbEstado.Checked;
    end;
end;

procedure TFormBuscadorCupones.dbgCuponesDblClick(Sender: TObject);
begin
  Aceptar.Execute;
end;

procedure TFormBuscadorCupones.dbgCuponesDBTableView1DblClick(Sender: TObject);
begin
  cupon:=CDSCuponesID.AsInteger;
  btOk.Click;
end;


procedure TFormBuscadorCupones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'CupoAbono.ini');
  ArchivoIni.WriteBool('Filtro', 'Modo', chbEstado.Checked);
  ArchivoIni.Free;

  Action:=caFree;

end;

procedure TFormBuscadorCupones.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'CupoAbono.ini');
  chbEstado.Checked         := ArchivoIni.ReadBool('Filtro', 'Modo', True);
  ArchivoIni.Free;

  fCodigoBarra:='*';
  fCupon:=-1;
end;

procedure TFormBuscadorCupones.FormDestroy(Sender: TObject);
begin
  FormBuscadorCupones:=nil;
end;

procedure TFormBuscadorCupones.FormShow(Sender: TObject);
begin
 // BuscarClientes.Execute;
  if (TForm(Self.Owner).Name<>'FormAbonosCupon') then ceCliente.Button.Click
end;

procedure TFormBuscadorCupones.TraerCuponesExecute(Sender: TObject);
begin
  CDSCupones.Close;
  CDSCupones.Params.ParamByName('cliente').Value:=ceCliente.Text;
  CDSCupones.Open;
  CDSCupones.Filtered:=False;
  CDSCupones.Filter:='';
  if chbEstado.Checked then
    begin
      CDSCupones.Filter:='PAGADO=''N''';
      CDSCupones.Filtered:=chbEstado.Checked;
    end;
  CDSCupones.First;
  CDSCupones.DisableControls;
  while not(CDSCupones.Eof) do
    begin
      CDSCupones.Edit;
      CDSCuponesSeleccion.Value:=False;
      CDSCupones.Next;
    end;
  CDSCupones.EnableControls;

end;

end.