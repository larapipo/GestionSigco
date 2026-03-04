unit ULstOTrabajoArchivada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, StdCtrls, Mask, Grids, DBGrids,
  ActnList,Buttons, ToolWin, ExtCtrls, 
  DBClient, Provider,Librerias, frxClass,  frxDBSet, Menus, ImgList,
  JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, JvExControls,
  JvGradient, FMTBcd, SqlExpr, JvToolEdit, JvExMask, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons, System.ImageList, frCoreClasses;

type
  TFormOrdenTrabajoArchivadas = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edNombreCliente: TEdit;
    UpDown1: TUpDown;
    DSOt: TDataSource;
    DSPOt: TDataSetProvider;
    CDSOt: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    TraerMov: TAction;
    dbgOrdenes: TDBGrid;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frDBOTr: TfrxDBDataset;
    frMov: TfrxReport;
    Desarchivar: TAction;
    PopupMenu: TPopupMenu;
    Desarchivar1: TMenuItem;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    ceCliente: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSOtID_OT: TIntegerField;
    CDSOtTIPOCPBTE: TStringField;
    CDSOtRESPONSABLE_OT: TStringField;
    CDSOtCLASECPBTE: TStringField;
    CDSOtNROCPBTE: TStringField;
    CDSOtNOMBRE: TStringField;
    DSPBuscaEmpleados: TDataSetProvider;
    CDSBuscaEmpleados: TClientDataSet;
    CDSBuscaEmpleadosNOMBRE: TStringField;
    CDSBuscaEmpleadosCODIGO: TStringField;
    CDSOtMUESTRARESPONSABLE: TStringField;
    QOt: TFDQuery;
    CDSOtFECHAINICIO: TSQLTimeStampField;
    CDSOtFECHAESTIMADA: TSQLTimeStampField;
    CDSOtFECHAFINAL: TSQLTimeStampField;
    CDSOtPUNTOS: TFloatField;
    QPersonal: TFDQuery;
    QPersonalCODIGO: TStringField;
    QPersonalNOMBRE: TStringField;
    QDesarchivar: TFDQuery;
    chbFiltrado: TAdvOfficeCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure TraerMovExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DesarchivarExecute(Sender: TObject);
    procedure chbFiltradoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrdenTrabajoArchivadas: TFormOrdenTrabajoArchivadas;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormOrdenTrabajoArchivadas.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize := False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
  Desde.Date := IncMonth(Hasta.Date,(-1* RangoFechasEmpleado));
  ceCliente.Enabled:=False;
  CDSOt.Open;
  TraerMov.Execute;
end;

procedure TFormOrdenTrabajoArchivadas.ceClienteButtonClick(
  Sender: TObject);
begin
  inherited;
  CDSBuscaEmpleados.Close;
  CDSBuscaEmpleados.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
    begin
      ceCliente.Text:=ComBuscadorBase.Id;
      QPersonal.Close;
      QPersonal.ParamByName('Codigo').AsString:=ComBuscadorBase.Id;
      QPersonal.Open;
      edNombreCliente.Text:=QPersonalNOMBRE.AsString;
      QPersonal.Close;
      TraerMov.Execute;
    end;

  CDSBuscaEmpleados.Close;
end;

procedure TFormOrdenTrabajoArchivadas.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
begin
  inherited;
    IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QPersonal.Close;
      QPersonal.ParamByName('Codigo').Value := Dato;
      QPersonal.Open;
      IF NOT(QPersonal.eof) THEN
        begin
          edNombreCliente.Text := QPersonalNOMBRE.Value;
          TraerMov.Execute;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END
      else
        begin
          ceCliente.Text:='';
          edNombreCliente.Text :='' ;
        end;
    END;

end;

procedure TFormOrdenTrabajoArchivadas.TraerMovExecute(Sender: TObject);
BEGIN
  if (Hasta.Date>=Desde.Date) Then
    begin
      CDSOt.Close;
      CDSOt.CommandText:='';
      if chbFiltrado.Checked=True Then
        CDSOt.CommandText:='select ot.id_ot,ot.tipocpbte,ot.responsable_ot,ot.clasecpbte,ot.nrocpbte,ot.nombre, '+
                           'ot.fechainicio,ot.fechaestimada,ot.fechaFinal,ot.puntos,p.nombre as MuestraResponsable '+
                           'from ordentrabajocab ot '+
                           'left join personal p on p.codigo=ot.responsable_ot '+
                           'where ot.responsable_ot='+''''+ceCliente.Text+''''+' '+
                           'and ot.fechainicio>='+''''+FormatDateTime('mm/dd/yyyy',Desde.date)+''''+' and ot.fechainicio<='+''''+FormatDateTime('mm/dd/yyyy',hasta.Date)+''''+' '+
                           'and ot.archivada=''S'''
      else
        CDSOt.CommandText:='select ot.id_ot,ot.tipocpbte,ot.responsable_ot,ot.clasecpbte,ot.nrocpbte,ot.nombre, '+
                           'ot.fechainicio,ot.fechaestimada,ot.fechaFinal,ot.puntos,p.nombre as MuestraResponsable '+
                           'from ordentrabajocab ot '+
                           'left join personal p on p.codigo=ot.responsable_ot '+
                           'where ot.fechainicio>='+''''+FormatDateTime('mm/dd/yyyy',Desde.date)+''''+' and ot.fechainicio<='+''''+FormatDateTime('mm/dd/yyyy',hasta.Date)+''''+' '+
                           'and ot.archivada=''S''';

      CDSOt.Open;
      CDSOt.First;
    end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');
END;

procedure TFormOrdenTrabajoArchivadas.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(1))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-1));
  TraerMov.Execute;

end;

procedure TFormOrdenTrabajoArchivadas.ImprimirExecute(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;
  frMov.PrintOptions.Printer:=PrNomListados;
  frMov.SelectPrinter;
  frMov.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoOTArchivadas.fr3');
  frMov.Variables['Empleado'] := ''''+edNombreCliente.Text+'''';
  frMov.Variables['Desde']    := ''''+Desde.Text+'''';
  frMov.Variables['Hasta']    := ''''+Hasta.Text+'''';
  // frCtaCte.PrepareReport;
  frMov.ShowReport;
  CDSEmpresa.Close;
  if ceCliente.Enabled Then
    begin
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    end;
end;

procedure TFormOrdenTrabajoArchivadas.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frMov.DesignReport;
end;

procedure TFormOrdenTrabajoArchivadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormOrdenTrabajoArchivadas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOrdenTrabajoArchivadas:=Nil;
end;

procedure TFormOrdenTrabajoArchivadas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (not (ActiveControl is TJvComboEdit)) Then
    inherited;
end;

procedure TFormOrdenTrabajoArchivadas.FormResize(Sender: TObject);
begin
  inherited;
  if FormOrdenTrabajoArchivadas<>nil then
    if FormOrdenTrabajoArchivadas.Width<>992 then
      FormOrdenTrabajoArchivadas.Width:=992;

end;

procedure TFormOrdenTrabajoArchivadas.BuscarExecute(Sender: TObject);
begin
 // inherited;
 TraerMov.Execute;
end;

procedure TFormOrdenTrabajoArchivadas.FormShow(Sender: TObject);
begin
  inherited;
  if ceCliente.Enabled Then
    ceCliente.SetFocus;
end;

procedure TFormOrdenTrabajoArchivadas.DesarchivarExecute(Sender: TObject);
begin
  inherited;
  QDesarchivar.Close;
  QDesarchivar.ParamByName('id').Value:=CDSOtID_OT.Value;
  QDesarchivar.ExecSQL;
  QDesarchivar.Close;
  TraerMov.Execute;
end;

procedure TFormOrdenTrabajoArchivadas.chbFiltradoClick(Sender: TObject);
begin
  inherited;
  ceCliente.Enabled:=chbFiltrado.Checked;
  TraerMov.Execute;
end;

end.