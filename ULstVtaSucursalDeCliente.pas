unit ULstVtaSucursalDeCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Mask, Grids, DBGrids,Librerias, 
  frxDBSet, frxClass, DBCtrls, Variants, ImgList, JvComponentBase, 
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, JvDBLookup, Provider, DBClient, JvBaseEdits,
  JvExDBGrids, JvDBGrid, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, frCoreClasses;

type
  TFormListadoVta_SucursalCliente = class(TFormABMBase)
    UpDown1: TUpDown;
    DSSucursal: TDataSource;
    DSVtaCliente: TDataSource;
    btImprimir: TBitBtn;
    Imrpimir: TAction;
    frxReport: TfrxReport;
    frDBVtaCliente: TfrxDBDataset;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    cbSucursal: TJvDBLookupCombo;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    CDSVtaCliente: TClientDataSet;
    DSPVtaCliente: TDataSetProvider;
    CDSVtaClienteID_FC: TIntegerField;
    CDSVtaClienteTIPOCPBTE: TStringField;
    CDSVtaClienteCLASECPBTE: TStringField;
    CDSVtaClienteNROCPBTE: TStringField;
    CDSVtaClienteCODIGO: TStringField;
    CDSVtaClienteSUCCPBTE: TIntegerField;
    CDSVtaClienteMUESTRASUCCPBTE: TStringField;
    CDSVtaClienteNOMBRE: TStringField;
    CDSVtaClienteRAZONSOCIAL: TStringField;
    CDSVtaClienteCUIT: TStringField;
    CDSVtaClienteANULADO: TStringField;
    CDSVtaClienteSUCCLIENTE: TIntegerField;
    CDSVtaClienteMUESTRASUCCLIENTE: TStringField;
    CDSSucursales: TClientDataSet;
    DSPSucursales: TDataSetProvider;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    edNetoExento: TJvCalcEdit;
    edNetoGrav: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    CDSVtaClienteTOTALCALCULADO: TFloatField;
    CDSVtaClienteEXENTOCALCULADO: TFloatField;
    CDSVtaClienteGRAVADOCALCULADO: TFloatField;
    dbgVentas: TJvDBGrid;
    QVtaCli: TFDQuery;
    CDSVtaClienteFECHAVTA: TSQLTimeStampField;
    CDSVtaClienteFECHAVTO: TSQLTimeStampField;
    CDSVtaClienteNETOGRAV2: TFloatField;
    CDSVtaClienteNETOEXEN2: TFloatField;
    CDSVtaClienteTOTAL: TFloatField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImrpimirExecute(Sender: TObject);
    procedure cbSucursalClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSVtaClienteCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Sumar;
    { Public declarations }
  end;

var
  FormListadoVta_SucursalCliente: TFormListadoVta_SucursalCliente;

implementation

uses DMBuscadoresForm, UDMain_FD;

{$R *.DFM}

procedure TFormListadoVta_SucursalCliente.Sumar;
VAR Puntero:TBookMark;
begin
  edNetoExento.Value :=0;
  edNetoGrav.Value   :=0;
  edTotal.Value      :=0;
  Puntero:=CDSVtaCliente.GetBookmark;
  CDSVtaCliente.DisableControls;
  CDSVtaCliente.First;
  while Not(CDSVtaCliente.Eof) do
    begin
      edNetoExento.Value := edNetoExento.Value + CDSVtaClienteEXENTOCALCULADO.Value;
      edNetoGrav.Value   := edNetoGrav.Value + CDSVtaClienteGRAVADOCALCULADO.Value;
      edTotal.Value      := edTotal.Value + CDSVtaClienteTOTALCALCULADO.Value;
      CDSVtaCliente.Next;
    end;

  CDSVtaCliente.GotoBookmark(Puntero);
  CDSVtaCliente.FreeBookmark(Puntero);
  CDSVtaCliente.EnableControls;
end;

procedure TFormListadoVta_SucursalCliente.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoVta_SucursalCliente.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSVtaCliente.Close;
  if VarIsNull(cbSucursal.KeyValue) Then
    CDSVtaCliente.Params.ParamByName('Sucursal').Value:=-1
  else
    CDSVtaCliente.Params.ParamByName('Sucursal').Value:=cbSucursal.KeyValue;
  CDSVtaCliente.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSVtaCliente.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSVtaCliente.Open;
  Sumar;
end;

procedure TFormListadoVta_SucursalCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSucursales.Close;
  CDSVtaCliente.Close;
  Action:=caFree;
end;

procedure TFormListadoVta_SucursalCliente.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSSucursales.Open;
  cbSucursal.KeyValue:= SucursalPorDefecto;
  cbSucursal.Enabled := DMMain_FD.ModificaSucursal;

end;

procedure TFormListadoVta_SucursalCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoVta_SucursalCliente:=Nil;
end;

procedure TFormListadoVta_SucursalCliente.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));

  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  Desde.SetFocus;
end;

procedure TFormListadoVta_SucursalCliente.ImrpimirExecute(Sender: TObject);
begin
  inherited;
  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtasSucursalCliente.fr3');
  frxReport.Variables['desde']   :=''''+Desde.Text+'''';
  frxReport.Variables['hasta']   :=''''+Hasta.Text+'''';
  frxReport.Variables['Sucursal']:=''''+cbSucursal.Text+'''';
  frxReport.ShowReport;
end;

procedure TFormListadoVta_SucursalCliente.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoVta_SucursalCliente.cbSucursalClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoVta_SucursalCliente.CDSVtaClienteCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSVtaClienteTOTALCALCULADO.Value:=CDSVtaClienteTOTAL.AsFloat;
  if CDSVtaClienteTIPOCPBTE.Value='NC' then
    CDSVtaClienteTOTALCALCULADO.Value:=CDSVtaClienteTOTAL.AsFloat * -1;

  CDSVtaClienteGRAVADOCALCULADO.Value:=CDSVtaClienteNETOGRAV2.AsFloat;
  if CDSVtaClienteTIPOCPBTE.Value='NC' then
    CDSVtaClienteGRAVADOCALCULADO.Value:=CDSVtaClienteNETOGRAV2.AsFloat * -1;

  CDSVtaClienteEXENTOCALCULADO.Value:=CDSVtaClienteNETOEXEN2.AsFloat;
  if CDSVtaClienteTIPOCPBTE.Value='NC' then
    CDSVtaClienteEXENTOCALCULADO.Value:=CDSVtaClienteNETOEXEN2.AsFloat * -1;

end;

end.