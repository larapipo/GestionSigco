unit UListadoArtGravEnIngBrutosVentas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, StdCtrls, Buttons, ToolWin, ComCtrls,
  ExtCtrls, Mask, Grids, DBGrids,Librerias,  frxDBSet,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask,
  JvToolEdit, Provider, DBClient, JvBaseEdits, JvAppStorage, JvAppIniStorage,
  System.Actions, frxClass, JvComponentBase, Vcl.ImgList, JvExControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, frCoreClasses;

type
  TFormListadoArtGravIngBrutosVentas = class(TFormABMBase)
    DSConsulta: TDataSource;
    dbgConsulta: TDBGrid;
    btImprimir: TBitBtn;
    frConsulta: TfrxReport;
    frDBConsulta: TfrxDBDataset;
    Imprimir: TAction;
    UpDown1: TUpDown;
    CDSConsulta: TClientDataSet;
    DSPConsulta: TDataSetProvider;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    CDSConsultaCODIGOARTICULO: TStringField;
    CDSConsultaDETALLE: TStringField;
    CDSConsultaTIPOCPBTE: TStringField;
    CDSConsultaCLASECPBTE: TStringField;
    CDSConsultaEXENTOORIG: TFloatField;
    CDSConsultaGRAVADOORIG: TFloatField;
    CDSConsultaTOTALEXENTO: TFloatField;
    CDSConsultaTOTALGRAVADO: TFloatField;
    CDSConsultaTOTALGENERAL: TFloatField;
    edTotal: TJvCalcEdit;
    chNoGravados: TCheckBox;
    chbTipo: TCheckBox;
    QConsulta: TFDQuery;
    CDSConsultaTASAIB: TFloatField;
    CDSConsultaCANTIDAD: TFloatField;
    CDSConsultaTOTALORIG: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure sumar;
  end;

var
  FormListadoArtGravIngBrutosVentas: TFormListadoArtGravIngBrutosVentas;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormListadoArtGravIngBrutosVentas.sumar;
var CDSClone:TClientDataSet;
begin
  edTotal.Value:=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSConsulta,true);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSClone.FieldByName('TotalGeneral').Asfloat;
      CDSClone.Next;
    end;
  CDSClone.Close;
  CDSClone.Free;

end;


procedure TFormListadoArtGravIngBrutosVentas.FormShow(Sender: TObject);
var d,m,y:word;
Mes,Anio:Word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));

  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  Desde.SetFocus;

end;

procedure TFormListadoArtGravIngBrutosVentas.BuscarExecute(Sender: TObject);
VAR i:Byte;
begin
//  inherited;
  CDSConsulta.Close;
  CDSConsulta.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSConsulta.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  if chNoGravados.Checked then
    CDSConsulta.Params.ParamByName('estado').Value:='N'
  else
    if Not(chNoGravados.Checked) then
      CDSConsulta.Params.ParamByName('estado').Value:='S';

  if chbTipo.Checked then
    CDSConsulta.Params.ParamByName('Tipo').Value:='NC'
  else
    if Not(chbTipo.Checked) then
      CDSConsulta.Params.ParamByName('Tipo').Value:='**';

  CDSConsulta.Open;

  for i:= 0 to dbgConsulta.Columns.Count-1 do
    begin
      if dbgConsulta.Fields[i].DataType=ftFloat Then
        TFloatField(dbgConsulta.Fields[i]).DisplayFormat:=',0.00';
    end;
   sumar;
end;

procedure TFormListadoArtGravIngBrutosVentas.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSConsulta.IsEmpty) Then
    begin
      if PrListados<0 Then PrListados:=0;
      frConsulta.PrintOptions.Printer:=PrNomListados;
      frConsulta.SelectPrinter;
      frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoArtGravadosIB.fr3');
      frConsulta.Variables['Desde']:=''''+Desde.Text+'''';
      frConsulta.Variables['Hasta']:=''''+Hasta.Text+'''';
  // frCtaCte.PrepareReport;
      frConsulta.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');    

end;

procedure TFormListadoArtGravIngBrutosVentas.CDSConsultaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSConsultaTotalExento.Value := CDSConsultaEXENTOORIG.AsFloat;
  CDSConsultaTotalGravado.Value:= CDSConsultaGRAVADOORIG.AsFloat;
  CDSConsultaTotalGeneral.Value:= CDSConsultaTOTALORIG.AsFloat;
  if CDSConsultaTIPOCPBTE.Value='NC' Then
    begin
      CDSConsultaTotalExento.Value :=CDSConsultaEXENTOORIG.AsFloat*-1;
      CDSConsultaTotalGravado.Value:=CDSConsultaGRAVADOORIG.AsFloat*-1;
      CDSConsultaTotalGeneral.Value:=CDSConsultaTOTALORIG.AsFloat*-1;
    end;
end;

procedure TFormListadoArtGravIngBrutosVentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoArtGravIngBrutosVentas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoArtGravIngBrutosVentas:=nil;
end;

procedure TFormListadoArtGravIngBrutosVentas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormListadoArtGravIngBrutosVentas.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;

procedure TFormListadoArtGravIngBrutosVentas.UpDown1Click(Sender: TObject;
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
end;

end.