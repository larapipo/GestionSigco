unit UBuscadorPorObs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, Grids, DBGrids, StdCtrls, ExtCtrls, Provider,
  DBClient, JvExDBGrids, JvDBGrid, Mask, DBCtrls, JvExControls, JvGradient,
  Buttons, JvLabel, JvDBControls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvFormPlacement, JvComponentBase, JvAppStorage, JvAppIniStorage;

type
  TFormBuscadorPorObs = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    DSBuscador: TDataSource;
    CDSBuscadorID_FC: TIntegerField;
    CDSBuscadorTIPOCPBTE: TStringField;
    CDSBuscadorCLASECPBTE: TStringField;
    CDSBuscadorLETRAFAC: TStringField;
    CDSBuscadorNROCPBTE: TStringField;
    CDSBuscadorCODIGO: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    dbgResultado: TJvDBGrid;
    Label1: TLabel;
    cxDBTextEdit1: TDBEdit;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    CDSBuscadorRAZONSOCIAL: TStringField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    CDSBuscadorOBSERVACIONES: TStringField;
    CDSBuscadorANULADO: TStringField;
    CDSBuscadorIDFACTURA: TIntegerField;
    chRtosFacturados: TCheckBox;
    DBText1: TDBText;
    QBuscador: TFDQuery;
    CDSBuscadorTOTAL: TFloatField;
    pnCabecera: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    edDato: TEdit;
    SpeedButton1: TSpeedButton;
    rgBuscarPor: TRadioGroup;
    CDSBuscadorNRORTOS: TStringField;
    Label4: TLabel;
    cxDBTextEdit2: TDBEdit;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edDatoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgResultadoDblClick(Sender: TObject);
    procedure dbgResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure rgBuscarPorClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chRtosFacturadosClick(Sender: TObject);
    procedure dbgResultadoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FId:integer;
    FTipo :String;
    FClase:String;
    FTipoComp:String;
    { Private decrations }
  public
    { Public declarations }
  published
    property id:integer read fid write fid;
    property Tipo:String read FTipo write FTipo;
    property Clase:String read FClase write FClase;
    property TipoComp:String read FTipoComp write FTipoComp;
  end;

var
  FormBuscadorPorObs: TFormBuscadorPorObs;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormBuscadorPorObs.btOkClick(Sender: TObject);
begin
  FId   := CDSBuscadorID_FC.Value;
  FTipo := CDSBuscadorTIPOCPBTE.Value;
  FClase:= CDSBuscadorCLASECPBTE.Value;
end;

procedure TFormBuscadorPorObs.chRtosFacturadosClick(Sender: TObject);
begin
  if chRtosFacturados.Checked then
    begin
      CDSBuscador.Filter:= 'IDFactura < 1';
      CDSBuscador.Filtered:=True;
    end
  else
    CDSBuscador.Filtered:=False;

end;

procedure TFormBuscadorPorObs.btCancelarClick(Sender: TObject);
begin
  fid   :=-1;
  FTipo :='';
  FClase:='';
end;

procedure TFormBuscadorPorObs.dbgResultadoDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorPorObs.dbgResultadoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (TipoCOmp='R') Then
    begin
//      if (gdFocused in State) then
//        dbgResultado.canvas.brush.color := clBlack
//      else
//        dbgResultado.canvas.brush.color := clPaleRed;
      dbgResultado.Canvas.Font.Style:=[];
      if (CDSBuscadorIDFACTURA.AsInteger>1) then
        dbgResultado.Canvas.Font.Style:=[fsBold];
    end;
    dbgResultado.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormBuscadorPorObs.dbgResultadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    begin
      Key:=#0;
      btOk.Click;
    end;
  edDato.SetFocus;
  edDato.SelectAll;
end;

procedure TFormBuscadorPorObs.edDatoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    begin
      CDSBuscador.Close;
      CDSBuscador.Params.ParamByName('dato').Value :=Trim(edDato.Text);
      CDSBuscador.Params.ParamByName('cpbte').Value:=FTipoComp;
      CDSBuscador.Params.ParamByName('modo').Value :=rgBuscarPor.ItemIndex;
      CDSBuscador.Open;
    end
 else
   if Key = VK_DOWN then
      begin
        dbgResultado.SetFocus;
        if Not(dbgResultado.DataSource.DataSet.Eof) then
          dbgResultado.DataSource.DataSet.Next;
      end
   else
     if Key = VK_UP then
        begin
          dbgResultado.SetFocus;
          if Not(dbgResultado.DataSource.DataSet.Bof) then
            dbgResultado.DataSource.DataSet.Prior;
        end

end;

procedure TFormBuscadorPorObs.edDatoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      Key:=#0;
      CDSBuscador.Close;
      CDSBuscador.Params.ParamByName('dato').Value :=Trim(edDato.Text);
      CDSBuscador.Params.ParamByName('cpbte').Value:=FTipoComp;
      CDSBuscador.Params.ParamByName('modo').Value :=rgBuscarPor.ItemIndex;
      CDSBuscador.Open;
    end;

end;

procedure TFormBuscadorPorObs.FormActivate(Sender: TObject);
begin
  edDato.SetFocus;
end;

procedure TFormBuscadorPorObs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorPorObs.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormBuscadorPorObs.FormDestroy(Sender: TObject);
begin
  FormBuscadorPorObs:=nil;
end;

procedure TFormBuscadorPorObs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((key=VK_LEFT) or (key=VK_RIGHT)) and (Shift=[ssAlt]) then
    begin
      if (key=VK_LEFT) Then
        begin
          if rgBuscarPor.ItemIndex<rgBuscarPor.Items.Count-1 then
            rgBuscarPor.ItemIndex:=rgBuscarPor.ItemIndex+1
          else
            rgBuscarPor.ItemIndex:=0;
        end
      else
        if (key=VK_RighT) Then
          begin
            if rgBuscarPor.ItemIndex>0 then
              rgBuscarPor.ItemIndex:=rgBuscarPor.ItemIndex-1
            else
              rgBuscarPor.ItemIndex:=rgBuscarPor.Items.Count-1;
          end;
    end;
  edDato.SetFocus;
//  edDato.SetFocus;
end;

procedure TFormBuscadorPorObs.FormShow(Sender: TObject);
begin
  BringToFront;
end;

procedure TFormBuscadorPorObs.rgBuscarPorClick(Sender: TObject);
begin
  CDSBuscador.Close;
  CDSBuscador.Params.ParamByName('dato').Value :=Trim(edDato.Text);
  CDSBuscador.Params.ParamByName('cpbte').Value:=FTipoComp;
  CDSBuscador.Params.ParamByName('modo').Value :=rgBuscarPor.ItemIndex;
  CDSBuscador.Open;

  edDato.SetFocus;
  edDato.SelectAll;

end;

procedure TFormBuscadorPorObs.SpeedButton1Click(Sender: TObject);
begin
  CDSBuscador.Close;
  CDSBuscador.Params.ParamByName('dato').Value  := Trim(edDato.Text);
  CDSBuscador.Params.ParamByName('cpbte').Value := FTipoComp;
  CDSBuscador.Params.ParamByName('modo').Value  := rgBuscarPor.ItemIndex;
  CDSBuscador.Open;
end;

end.
