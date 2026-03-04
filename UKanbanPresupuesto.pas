unit UKanbanPresupuesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvCustomControl, AdvCustomScrollControl,
  AdvKanbanBoard, AdvCustomComponent, AdvKanbanBoardDatabaseAdapter,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvExControls, JvLabel, JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomComponent, VCL.TMSFNCKanbanBoard,
  VCL.TMSFNCKanbanBoardDatabaseAdapter, VCL.TMSFNCCustomControl,
  VCL.TMSFNCCustomScrollControl, Datasnap.Provider, Datasnap.DBClient, Vcl.Mask,
  JvExMask, JvToolEdit,System.DateUtils, Vcl.DBCtrls, JvDBLookup;

type
  TFormKanbanPrespuesto = class(TFormABMBase)
    pnCab: TPanel;
    fncKPresupuestos: TTMSFNCKanbanBoard;
    TMSFNCKDatabaseAdapter: TTMSFNCKanbanBoardDatabaseAdapter;
    pnPie: TPanel;
    QPrespuestos: TFDQuery;
    DSPPrespuestos: TDataSetProvider;
    QPrespuestosID_PR: TIntegerField;
    QPrespuestosCODIGO: TStringField;
    QPrespuestosSUB_NRO: TStringField;
    QPrespuestosNOMBRE: TStringField;
    QPrespuestosRAZONSOCIAL: TStringField;
    QPrespuestosDIRECCION: TStringField;
    QPrespuestosK_COLUMNA: TIntegerField;
    QPrespuestosTOTAL: TFloatField;
    QPrespuestosUSUARIO: TStringField;
    CDSPrespuestos: TClientDataSet;
    CDSPrespuestosID_PR: TIntegerField;
    CDSPrespuestosCODIGO: TStringField;
    CDSPrespuestosSUB_NRO: TStringField;
    CDSPrespuestosNOMBRE: TStringField;
    CDSPrespuestosRAZONSOCIAL: TStringField;
    CDSPrespuestosDIRECCION: TStringField;
    CDSPrespuestosK_COLUMNA: TIntegerField;
    CDSPrespuestosTOTAL: TFloatField;
    CDSPrespuestosUSUARIO: TStringField;
    DSPresupuesto: TDataSource;
    Label1: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label2: TLabel;
    UpDown1: TUpDown;
    QUsuarios: TFDQuery;
    DSPUsuarios: TDataSetProvider;
    CDSUsuarios: TClientDataSet;
    DSUsuarios: TDataSource;
    CDSUsuariosUSER_NAME: TStringField;
    CDSUsuariosREAL_NAME: TStringField;
    CDSUsuariosUSER_ID: TIntegerField;
    Label3: TLabel;
    cbUsuarios: TJvDBLookupCombo;
    QPrespuestosFECHAVTA: TSQLTimeStampField;
    CDSPrespuestosFECHAVTA: TSQLTimeStampField;
    QPrespuestosNROPBTE_PRESU: TStringField;
    QPrespuestosMUESTRA_IDFC: TIntegerField;
    QPrespuestosMUESTRATIPOFC: TStringField;
    QPrespuestosMUESTRANRO_FAC: TStringField;
    QPrespuestosMUESTRA_IDRTO: TIntegerField;
    QPrespuestosMUESTRATIPORTO: TStringField;
    QPrespuestosMUESTRANRO_RTO: TStringField;
    QPrespuestosMUESTRA_IDPED: TIntegerField;
    QPrespuestosMUESTRATIPONP: TStringField;
    QPrespuestosMUESTRANRO_NPED: TStringField;
    CDSPrespuestosNROPBTE_PRESU: TStringField;
    CDSPrespuestosMUESTRA_IDFC: TIntegerField;
    CDSPrespuestosMUESTRATIPOFC: TStringField;
    CDSPrespuestosMUESTRANRO_FAC: TStringField;
    CDSPrespuestosMUESTRA_IDRTO: TIntegerField;
    CDSPrespuestosMUESTRATIPORTO: TStringField;
    CDSPrespuestosMUESTRANRO_RTO: TStringField;
    CDSPrespuestosMUESTRA_IDPED: TIntegerField;
    CDSPrespuestosMUESTRATIPONP: TStringField;
    CDSPrespuestosMUESTRANRO_NPED: TStringField;
    QPrespuestosMUESTRA_ID_OPROD: TIntegerField;
    QPrespuestosMUESTRATIOPOPROD: TStringField;
    QPrespuestosMUESTRANRO_OPROD: TStringField;
    CDSPrespuestosMUESTRA_ID_OPROD: TIntegerField;
    CDSPrespuestosMUESTRATIOPOPROD: TStringField;
    CDSPrespuestosMUESTRANRO_OPROD: TStringField;
    QPrespuestosMUESTRA_IDRTO_P: TIntegerField;
    QPrespuestosMUESTRATIPORTO_P: TStringField;
    QPrespuestosMUESTRANRO_RTO_P: TStringField;
    CDSPrespuestosMUESTRA_IDRTO_P: TIntegerField;
    CDSPrespuestosMUESTRATIPORTO_P: TStringField;
    CDSPrespuestosMUESTRANRO_RTO_P: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSPrespuestosAfterPost(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure fncKPresupuestosItemDblClick(Sender: TObject;
      AColumn: TTMSFNCKanbanBoardColumn; AItem: TTMSFNCKanbanBoardItem);
    procedure FormShow(Sender: TObject);
    procedure TMSFNCKDatabaseAdapterFieldsToItem(Sender: TObject;
      AFields: TFields; AItem: TTMSFNCKanbanBoardItem);
    procedure cbUsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKanbanPrespuesto: TFormKanbanPrespuesto;

implementation

uses UDMain_FD, UPresupuesto_2;

{$R *.dfm}

procedure TFormKanbanPrespuesto.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSPrespuestos.Close;
  CDSPrespuestos.Params.ParamByName('desde').AsDateTime:= desde.Date;
  CDSPrespuestos.Params.ParamByName('hasta').AsDateTime:= hasta.Date;
  CDSPrespuestos.Params.ParamByName('usuario').AsString:= cbUsuarios.DisplayValue;
  CDSPrespuestos.Open;
end;

procedure TFormKanbanPrespuesto.cbUsuariosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormKanbanPrespuesto.CDSPrespuestosAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSPrespuestos.ApplyUpdates(-1);
end;

procedure TFormKanbanPrespuesto.desdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormKanbanPrespuesto.fncKPresupuestosItemDblClick(Sender: TObject;
  AColumn: TTMSFNCKanbanBoardColumn; AItem: TTMSFNCKanbanBoardItem);
begin
  inherited;
  if not(Assigned(FormPresupuesto_2)) Then
    FormPresupuesto_2:=TFormPresupuesto_2.Create(Self);
  FormPresupuesto_2.DatoNew   := AItem.DBKey;
  FormPresupuesto_2.TipoCpbte := 'PR';
  FormPresupuesto_2.Recuperar.Execute;
  FormPresupuesto_2.Show;
end;

procedure TFormKanbanPrespuesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSPrespuestos.Close;
  Action:=TCloseAction.caFree;
end;

procedure TFormKanbanPrespuesto.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  fncKPresupuestos.ClearItems;
  CDSUsuarios.Open;
  cbUsuarios.Enabled:=DMMain_FD.UsuarioAdministrador;

end;

procedure TFormKanbanPrespuesto.FormDestroy(Sender: TObject);
begin
  inherited;
  FormKanbanPrespuesto:=nil;
end;

procedure TFormKanbanPrespuesto.FormResize(Sender: TObject);
begin
  inherited;
  if FormKanbanPrespuesto<>nil then
    if FormKanbanPrespuesto.Width>1310 then
     FormKanbanPrespuesto.Width:=1310;

end;

procedure TFormKanbanPrespuesto.FormShow(Sender: TObject);
begin
  inherited;
  cbUsuarios.KeyValue:=DMMain_FD.UsuarioActivoId;
end;

procedure TFormKanbanPrespuesto.hastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormKanbanPrespuesto.TMSFNCKDatabaseAdapterFieldsToItem(
  Sender: TObject; AFields: TFields; AItem: TTMSFNCKanbanBoardItem);
var Dato:string;
begin
  inherited;
  AItem.Title:='<b><font color="Blue">' +  AFields.DataSet.FieldByName('NOMBRE').AsString + '</font></b>';
  Dato:= Copy(AFields.DataSet.FieldByName('NROPBTE_PRESU').AsString,1,1)+'-'+
         Copy(AFields.DataSet.FieldByName('NROPBTE_PRESU').AsString,2,4)+'-'+
         Copy(AFields.DataSet.FieldByName('NROPBTE_PRESU').AsString,7,8)+'/'+
         Copy(AFields.DataSet.FieldByName('NROPBTE_PRESU').AsString,14,2);

//  AItem.Text:= '<b><font color=clBlue>'+Dato+'</font></b>';
//  AItem.Text:= AItem.Text+' Fecha .... '+DateToStr(AFields.DataSet.FieldByName('FECHAVTA').AsDateTime)+#13;
//  AItem.Text:= AItem.Text+'<code>'+'Remito       :'+AFields.DataSet.FieldByName('MUESTRANRO_RTO').AsString+'</code>'+ #13;
//  AItem.Text:= AItem.Text+'<code>'+'Factura      :'+AFields.DataSet.FieldByName('MUESTRANRO_FAC').AsString+'</code>'+ #13;
//  AItem.Text:= AItem.Text+'<code>'+'N.Pedido     :'+AFields.DataSet.FieldByName('MUESTRANRO_NPED').AsString+'</code>'+ #13;
//  AItem.Text:= AItem.Text+'<code>'+'O.Produccion :'+AFields.DataSet.FieldByName('MUESTRANRO_OPROD').AsString+'</code>';

  AItem.Text := '<b><font color="Blue">' + Dato + '</font></b>' + sLineBreak;
  AItem.Text := AItem.Text + 'Fecha .... ' + DateToStr(AFields.DataSet.FieldByName('FECHAVTA').AsDateTime) + sLineBreak;
  AItem.Text := AItem.Text + Format('<font color="Green"><code>%-17s: %s</code></font>' + sLineBreak, ['Remito      ', AFields.DataSet.FieldByName('MUESTRANRO_RTO').AsString]);
  AItem.Text := AItem.Text + Format('<font color="Green"><code>%-17s: %s</code></font>' + sLineBreak, ['Remito Pres ', AFields.DataSet.FieldByName('MUESTRANRO_RTO_P').AsString]);
  AItem.Text := AItem.Text + Format('<font color="black"><code>%-17s: %s</code>' + sLineBreak, ['Factura     ', AFields.DataSet.FieldByName('MUESTRANRO_FAC').AsString]);
  AItem.Text := AItem.Text + Format('<code>%-17s: %s</code>' + sLineBreak, ['N.Pedido    ', AFields.DataSet.FieldByName('MUESTRANRO_NPED').AsString]);
  AItem.Text := AItem.Text + Format('<code>%-17s: %s</code></font>',              ['O.Produccion', AFields.DataSet.FieldByName('MUESTRANRO_OPROD').AsString]);
end;

procedure TFormKanbanPrespuesto.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    begin
      desde.Date := IncMonth(Desde.Date,(1));
      hasta.Date:=IncMonth(hasta.Date,1);
    end
  else
    if Button=btPrev Then
      begin
        desde.Date := IncMonth(Desde.Date,(-1));
        hasta.Date := IncMonth(hasta.Date,-1);

      end;
  Buscar.Execute;
end;

end.
