unit UControlSaldoCtaCteVta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, ComCtrls, Buttons, System.StrUtils,
  StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, Mask,   DBCtrls,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvAppStorage,
  JvAppIniStorage, System.Actions, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, AdvOfficeButtons, AdvCustomControl,
  AdvTreeViewBase, AdvTreeViewData, AdvCustomTreeView, AdvTreeView;

type
  TFormControlSaldoCtaCteVta = class(TFormABMBase)
    DSFactura: TDataSource;
    DSPFactura: TDataSetProvider;
    CDSFactura: TClientDataSet;
    BuscarCliente: TAction;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    DSMovCtaCte: TDataSource;
    DSPMovCtaCte: TDataSetProvider;
    CDSMovCtaCte: TClientDataSet;
    CDSMovCtaCteID_MOVCCVTA: TIntegerField;
    CDSMovCtaCteNROCPBTE: TStringField;
    DSMovAplica: TDataSource;
    CDSMovAplica: TClientDataSet;
    DSPMovAplica: TDataSetProvider;
    CDSMovAplicaID_MOV: TIntegerField;
    CDSMovAplicaID_CPBTE: TIntegerField;
    CDSMovAplicaCLASECPBTE: TStringField;
    CDSMovAplicaNUMEROCPBTE: TStringField;
    DSTotalMov: TDataSource;
    CDSTotalMov: TClientDataSet;
    DSPTotalMov: TDataSetProvider;
    CDSMovAplicaTIPOCPBTE: TStringField;
    CDSTotalMovID_MOV: TIntegerField;
    CDSTotalMovID_CPBTE: TIntegerField;
    CDSTotalMovTIPOCPBTE: TStringField;
    CDSTotalMovCLASECPBTE: TStringField;
    CDSTotalMovNUMEROCPBTE: TStringField;
    DSRecibos: TDataSource;
    QFacturas: TFDQuery;
    CDSFacturaID_FC: TIntegerField;
    CDSFacturaFECHAVTA: TSQLTimeStampField;
    CDSFacturaTIPOCPBTE: TStringField;
    CDSFacturaCLASECPBTE: TStringField;
    CDSFacturaNROCPBTE: TStringField;
    CDSFacturaTOTAL: TFloatField;
    CDSFacturaANULADO: TStringField;
    QMovCtaCte: TFDQuery;
    CDSMovCtaCteDEBE: TFloatField;
    CDSMovCtaCteHABER: TFloatField;
    CDSMovCtaCteSALDO: TFloatField;
    QMovAplica: TFDQuery;
    CDSMovAplicaIMPORTE: TFloatField;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    QTotalMov: TFDQuery;
    CDSTotalMovIMPORTE: TFloatField;
    QRecibos: TFDQuery;
    QRecibosTOTAL: TFloatField;
    pnCliente: TPanel;
    Label1: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    pnFac: TPanel;
    dbgFc: TDBGrid;
    Panel4: TPanel;
    pnAplis: TPanel;
    pnApli: TPanel;
    Label4: TLabel;
    dbgMovCtaCte: TDBGrid;
    pnMovApl: TPanel;
    Label5: TLabel;
    dbgAplica: TDBGrid;
    DBGrid1: TDBGrid;
    edTotalAplicaciones: TEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    edAplicaciones: TEdit;
    Label3: TLabel;
    Panel8: TPanel;
    chFiltraNC: TAdvOfficeCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    twCta: TTreeView;
    Button1: TButton;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSFacturaAfterScroll(DataSet: TDataSet);
    procedure dbgFcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSMovCtaCteAfterScroll(DataSet: TDataSet);
    procedure CDSMovAplicaAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chFiltraNCClick(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgFcDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ArmarTreeView;

  public
    Lista:TStringList;

    { Public declarations }
  end;

var
  FormControlSaldoCtaCteVta: TFormControlSaldoCtaCteVta;

implementation

uses UBuscadorClientes,UDMain_FD, UFactura_2;

{$R *.DFM}

procedure TFormControlSaldoCtaCteVta.ArmarTreeView;
VAR  Nodo1,Nodo1_1: TTreeNode;
  N,X: Integer;
begin

  Nodo1 := NIL;
  CDSFactura.First;
  Screen.Cursor:=crHourGlass;
  twCta.AutoExpand:=False;
  twCta.Items.Clear;
  twCta.AutoExpand:=False;
  WHILE NOT (CDSFactura.Eof) DO
    BEGIN
      Application.ProcessMessages;
      Nodo1 := twCta.Items.Add(NIL, CDSFacturaNROCPBTE.AsString+'..........'+ FormatFloat(',0.00',CDSFacturaTOTAL.AsFloat));
      Nodo1.ImageIndex:=10;
      twCta.Selected := Nodo1;
      N := twCta.Selected.AbsoluteIndex;

      CDSMovCtaCte.First;
      WHILE NOT (CDSMovCtaCte.Eof) DO
        BEGIN
          Nodo1 := twCta.Items.AddChild( twCta.Items[N],CDSMovCtaCteNROCPBTE.AsString+'....'+FormatFloat(',0.00',CDSMovCtaCteDEBE.AsFloat)+'....'+FormatFloat(',0.00',CDSMovCtaCteSALDO.AsFloat));
          Nodo1.ImageIndex:=11;
          twCta.Selected := Nodo1;
          N := twCta.Selected.AbsoluteIndex;
          CDSMovAplica.First;
          while Not(CDSMovAplica.Eof) do
            begin
              Nodo1 := twCta.Items.AddChild( twCta.Items[N],CDSMovAplicaNUMEROCPBTE.AsString+'....'+FormatFloat(',0.00',CDSMovAplicaIMPORTE.AsFloat));
              Nodo1.ImageIndex:=11;
              twCta.Selected := Nodo1;
             // N := twCta.Selected.AbsoluteIndex;
              CDSMovAplica.Next;
            end;
          CDSMovCtaCte.Next;
        END;
      CDSFactura.Next;
    END;
  twCta.AutoExpand:=False;

  Screen.Cursor:=crDefault;
end;

procedure TFormControlSaldoCtaCteVta.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text  :=FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      edNombreCliente.Text:=CDSClientesNOMBRE.Value;
      Buscar.Execute;
    END;

end;

procedure TFormControlSaldoCtaCteVta.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFactura.Close;
  CDSFactura.Params.ParamByName('Codigo').Value:=ceCliente.Text;
  CDSFactura.Open;
  CDSFactura.First;
 end;


procedure TFormControlSaldoCtaCteVta.Button1Click(Sender: TObject);
begin
  inherited;
  ArmarTreeView;
end;

procedure TFormControlSaldoCtaCteVta.CDSFacturaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovCtaCte.Close;
  CDSMovCtaCte.Params.ParamByName('id').Value   :=CDSFacturaID_FC.Value;
  CDSMovCtaCte.Params.ParamByName('Tipo').Value :=CDSFacturaTIPOCPBTE.Value;
  CDSMovCtaCte.Params.ParamByName('Clase').Value:=CDSFacturaCLASECPBTE.Value;
  CDSMovCtaCte.Open;

end;

procedure TFormControlSaldoCtaCteVta.dbgFcDblClick(Sender: TObject);
begin
  inherited;
  if (CDSFacturaTIPOCPBTE.Value='FC') or (CDSFacturaTIPOCPBTE.Value='NC')  then
    begin
      if not(Assigned(formCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew:=CDSFacturaID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSFacturaTIPOCPBTE.AsString;
      FormCpbte_2.Show;
    end;
  if CDSFacturaTIPOCPBTE.Value='TK' then
    begin
      if not(Assigned(formCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew:=CDSFacturaID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSFacturaTIPOCPBTE.AsString;
      FormCpbte_2.Show;
    end;

end;

procedure TFormControlSaldoCtaCteVta.dbgFcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (gdSelected in State) Then
    begin
      dbgFc.Canvas.Font.Color :=clWhite;
      dbgFc.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if CDSFacturaANULADO.Value='S' Then
        dbgFc.Canvas.Font.Style :=[fsStrikeOut]
      else
        dbgfC.Canvas.Font.Style :=[];

      if (CDSFacturaTIPOCPBTE.Value<>'NC') then
        begin
          if (Trunc(CDSFacturaTOTAL.AsFloat*1000)<>Trunc(CDSMovCtaCteDEBE.AsFloat*1000))  Then
            dbgFc.Canvas.Brush.Color :=clLime
          else
            dbgFc.Canvas.Brush.Color :=clWindow;
        end;

      if (CDSFacturaTIPOCPBTE.Value='NC') then
        begin
          if (Trunc(CDSFacturaTOTAL.AsFloat*1000)<>Trunc(CDSMovCtaCteHABER.AsFloat*1000))   Then
            dbgFc.Canvas.Brush.Color :=clLime
          else
           dbgFc.Canvas.Brush.Color :=clWindow;
        end;

    end;

  dbgfC.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlSaldoCtaCteVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlSaldoCtaCteVta.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormControlSaldoCtaCteVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlSaldoCtaCteVta:=Nil;
end;

procedure TFormControlSaldoCtaCteVta.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(ActiveControl is TJvComboEdit) then
    inherited;

end;

procedure TFormControlSaldoCtaCteVta.FormShow(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormControlSaldoCtaCteVta.CDSMovCtaCteAfterScroll(
  DataSet: TDataSet);
Var Aux:Real;
begin
  inherited;
  CDSMovAplica.Close;
  CDSMovAplica.Params.ParamByName('id_mov').Value:=CDSMovCtaCteID_MOVCCVTA.Value;
  CDSMovAplica.Open;
  Aux:=0;
  CDSMovAplica.First;
  while Not(CDSMovAplica.Eof) Do
    begin
      Aux:=Aux+CDSMovAplicaIMPORTE.AsFloat;
      CDSMovAplica.Next;
    end;
  edAplicaciones.Text:=FormatFloat(',0.00',Aux);

  if edAplicaciones.Text<>FormatFloat(',0.00',CDSMovCtaCteDebe.AsFloat) Then
    edAplicaciones.Color:=clRed
  else
    edAplicaciones.Color:=clWindow;

end;

procedure TFormControlSaldoCtaCteVta.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      edNombreCliente.Text:=CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;

end;

procedure TFormControlSaldoCtaCteVta.chFiltraNCClick(Sender: TObject);
begin
  inherited;
  CDSFactura.Filter  :='TIPOCPBTE<>''NC''';
  CDSFactura.Filtered:=chFiltraNC.Checked;
end;

procedure TFormControlSaldoCtaCteVta.CDSMovAplicaAfterScroll(
  DataSet: TDataSet);
var Aux:Real;
begin
  inherited;
  CDSTotalMov.Close;
  CDSTotalMov.Params.ParamByName('id_cpbte').Value:=CDSMovAplicaID_CPBTE.Value;
  CDSTotalMov.Params.ParamByName('tipo').Value    :=CDSMovAplicaTIPOCPBTE.Value;
  CDSTotalMov.Params.ParamByName('clase').Value   :=CDSMovAplicaCLASECPBTE.Value;
  CDSTotalMov.Open;
  Aux:=0;
  CDSTotalMov.First;
  while not(CDSTotalMov.Eof) Do
    begin
      Aux:=Aux+CDSTotalMovIMPORTE.AsFloat;
      CDSTotalMov.Next;
    end;
  edTotalAplicaciones.Text:=FormatFloat(',0.00',Aux);
  QRecibos.Close;
  QRecibos.ParamByName('id').Value:=CDSMovAplicaID_CPBTE.Value;
  QRecibos.Open;

  if edTotalAplicaciones.Text<>FormatFloat(',0.00',QRecibosTOTAL.AsFloat) Then
    edTotalAplicaciones.Color:=clRed
  else
    edTotalAplicaciones.Color:=clWindow;

end;

end.