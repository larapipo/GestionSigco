unit UHoras_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, Grids, DBGrids, ImgList, Provider, DBClient,
  ActnList, ComCtrls, StdCtrls, Buttons, ToolWin,
  ExtCtrls, IBGenerator, JvExControls,
  JvButton, JvTransparentButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Actions, CompBuscador, System.ImageList,
  Data.FMTBcd, JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, JvGradient;

type
  TFormIngresoHoras = class(TFormABMBase)
    dbgHoras: TDBGrid;
    ibgIdHoras: TIBGenerator;
    BuscarEmpleado: TAction;
    BuscarLugar: TAction;
    QBuscadorLugar: TFDQuery;
    QBuscadorEmpleado: TFDQuery;
    QLugar: TFDQuery;
    QLugarID: TIntegerField;
    QLugarDETALLE: TStringField;
    QLugarVALORHORA: TFloatField;
    QEmpleados: TFDQuery;
    QEmpleadosID: TIntegerField;
    QEmpleadosNOMBRE: TStringField;
    QEmpleadosLEGAJO: TIntegerField;
    QEmpleadosIDEMPLEADOR: TIntegerField;
    QEmpleadosCATEGORIA: TIntegerField;
    ComBuscadorLugar: TComBuscador;
    ComBuscadorEmpleado: TComBuscador;
    QBuscadorEmpleadoID: TIntegerField;
    QBuscadorEmpleadoNOMBRE: TStringField;
    QBuscadorEmpleadoLEGAJO: TIntegerField;
    QBuscadorEmpleadoMUESTRAEMPLEADOR: TStringField;
    QBuscadorLugarID: TIntegerField;
    QBuscadorLugarDETALLE: TStringField;
    QBuscadorLugarVALORHORA: TFloatField;
    QHoras: TFDQuery;
    CDSHoras: TClientDataSet;
    DSPHoras: TDataSetProvider;
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSBaseIDEMPLEADOSetText(Sender: TField; const Text: String);
    procedure CDSBaseIDLUGARSetText(Sender: TField; const Text: String);
    procedure CDSBaseENTRADASetText(Sender: TField; const Text: String);
    procedure CDSBaseSALIDASetText(Sender: TField; const Text: String);
    procedure CDSBaseNewRecord(DataSet: TDataSet);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure BuscarLugarExecute(Sender: TObject);
    procedure dbgHorasKeyPress(Sender: TObject; var Key: Char);
    procedure CDSBaseINGRESOSetText(Sender: TField; const Text: String);
    procedure CDSBaseSALIOSetText(Sender: TField; const Text: String);
    procedure dbgHorasColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSBaseBeforePost(DataSet: TDataSet);
    procedure dbgHorasEditButtonClick(Sender: TObject);
    procedure CDSBaseLEGAJOSetText(Sender: TField; const Text: String);
    procedure dbgHorasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSBaseFECHASetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    Horas:TDateTime;
    function AsignarEmpleado(dato:Integer):Boolean;
    function AsignarLugar(dato:Integer):Boolean;

  end;

var
  FormIngresoHoras: TFormIngresoHoras;

implementation

uses UDMain_FD;

{$R *.DFM}


function TFormIngresoHoras.AsignarEmpleado(dato:Integer):Boolean;
begin
  QEmpleados.CLose;
  QEmpleados.ParamByName('legajo').Value    :=  dato;
  QEmpleados.Open;
  if Not(QEmpleados.IsEmpty) Then
    begin
      Result:=True;
    //  CDSBaseMUESTRAEMPLEADO.AsString       :=  QEmpleadosNOMBRE.AsString;
      //CDSBaseIDEMPLEADO.AsInteger           :=  QEmpleadosID.AsInteger;
      //CDSBaseLEGAJO.AsInteger               :=  QEmpleadosLEGAJO.AsInteger;
    end
  else
    begin
      Result:=False;
     // CDSBaseMUESTRAEMPLEADO.Clear;
     // CDSBaseIDEMPLEADO.Clear;
     // CDSBaseLEGAJO.Clear;
    end;
  QEmpleados.CLose;

end;

function TFormIngresoHoras.AsignarLugar(dato:Integer):Boolean;
begin
  QLugar.CLose;
  QLugar.ParamByName('id').Value:=dato;
  QLugar.Open;
  if Not(QLugar.IsEmpty) Then
    begin
      Result:=True;
      //CDSBaseMUESTRALUGARTRABAJO.Value:=QLugarDETALLE.Value;
    end
  else
    begin
      Result:=False;
      //CDSBaseMUESTRALUGARTRABAJO.Clear;
    end;
  QLugar.CLose;

end;

procedure TFormIngresoHoras.DSBaseStateChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFormIngresoHoras.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  //DBMain.FDCSueldos.StartTransaction;
  Try
  //  if CDSBase.state<>dsBrowse Then
  //    CDSBase.Post;
  //  CDSBase.ApplyUpdates(0);
   // DBMain.FDCSueldos.Commit;
  Except
    ShowMessage('Operacion no Realizada...');
 //   DBMain.FDCSueldos.Rollback;
  end;
  //CDSBase.Close;
 // CDSBase.Params.ParamByName('id').Clear;
 // CDSBase.Open;
end;

procedure TFormIngresoHoras.CDSBaseIDEMPLEADOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
      //if CDSBase.State=dsBrowse Then
      //  CDSBase.Edit;
      Sender.AsString:=Text;
      if Not(AsignarEmpleado(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Valido...');
        end;
    end;
end;

procedure TFormIngresoHoras.CDSBaseIDLUGARSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
      //if CDSBase.State=dsBrowse Then
      //  CDSBase.Edit;
      Sender.AsString:=Text;
      if Not(AsignarLugar(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Valido...');
        end;
    end;

end;

procedure TFormIngresoHoras.CDSBaseENTRADASetText(Sender: TField;
  const Text: String);
var h,m,s,ss:Word;
  Aux: TDateTime;
begin
  //inherited;
  if TryStrToDateTime(Text,Aux) then
    begin
//      if Aux > CDSBaseSALIDA.AsDateTime Then CDSBaseSALIDA.AsDateTime   := Aux;
      Sender.AsDateTime :=  Aux;
    end
  else
    Sender.AsDateTime   :=  Date;


 // Horas                 :=  CDSBaseSALIDA.AsDateTime - CDSBaseENTRADA.AsDateTime;
  DecodeTime(Horas,h,m,s,ss);
 // CDSBaseCANITDADHORAS.AsFloat  :=h+(m*0.017);
end;

procedure TFormIngresoHoras.CDSBaseFECHASetText(Sender: TField;
  const Text: string);
Var
  Aux: TDateTime;
begin
  //inherited;
  if TryStrToDateTime(Text,Aux) then
    Sender.AsDateTime :=  Aux
  else
    Sender.AsDateTime :=  Date;
end;

procedure TFormIngresoHoras.CDSBaseSALIDASetText(Sender: TField;
  const Text: String);
var h,m,s,ss:Word;
    Aux: TDateTime;
begin
  //inherited;
  if TryStrToDateTime(Text,Aux) then
    begin
  //    if Aux > CDSBaseSALIDA.AsDateTime Then CDSBaseSALIDA.AsDateTime   := Aux;
      Sender.AsDateTime :=  Aux;
    end
  else
    Sender.AsDateTime   :=  Date;
//  Horas:=CDSBaseSALIDA.AsDateTime-CDSBaseENTRADA.AsdateTime;
  decodeTime(Horas,h,m,s,ss);
  //CDSBaseCANITDADHORAS.Value:=h+(m*0.01);
end;

procedure TFormIngresoHoras.CDSBaseNewRecord(DataSet: TDataSet);

begin
  inherited;
 // CDSBaseID.AsInteger           := ibgIdHoras.IncrementFD(1);
 // CDSBaseFECHA.AsDateTime       := Date;
 // CDSBaseENTRADA.AsDateTime     := Now;
 // CDSBaseSALIDA.AsDateTime      := Now;
 // CDSBaseCANITDADHORAS.AsFloat  := 0;
 // CDSBaseLIQUIDADO.AsString     := 'N';
end;

procedure TFormIngresoHoras.BuscarEmpleadoExecute(Sender: TObject);
begin
  inherited;
//  QBuscadorEmpleado.Close;
//  QBuscadorEmpleado.ParamByName('idempleador').Value:=StrToInt(FMenu.ceEmpleador.Text);
//  QBuscadorEmpleado.Open;
  comBuscadorEmpleado.Execute;
//  if ComBuscadorEmpleado.rOk then
 //   CDSBaseIDEMPLEADOSetText(CDSBaseIDEMPLEADO,IntToStr(ComBuscadorEmpleado.Id));
  QBuscadorEmpleado.Close;

end;

procedure TFormIngresoHoras.BuscarLugarExecute(Sender: TObject);
begin
  inherited;
  QBuscadorLugar.Close;
  QBuscadorLugar.Open;
  comBuscadorLugar.Execute;
//  if comBuscadorLugar.rOk Then
//    CDSBaseIDLUGARSetText(CDSBaseIDLUGAR,IntToStr(ComBuscadorLugar.Id));
  QBuscadorLugar.Close;

end;

procedure TFormIngresoHoras.dbgHorasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#10 Then
    begin
      Key:=#0;
      if dbgHoras.SelectedIndex=0 Then
        BuscarEmpleado.Execute;
      if dbgHoras.SelectedIndex=6 Then
        BuscarLugar.Execute;
    end;

  if Key=#13 Then
    begin
      Key:=#0;
      if dbgHoras.SelectedIndex<6 Then
        dbgHoras.SelectedIndex:=dbgHoras.SelectedIndex+1
      else
        begin
          dbgHoras.DataSource.DataSet.Append;
          dbgHoras.SelectedIndex:=0;
        end;
    end;
end;

procedure TFormIngresoHoras.CDSBaseINGRESOSetText(Sender: TField;
  const Text: String);
var h,m,s,ss:Word;
aux,hora,minuto:String;
posicion:integer;
begin
  inherited;
  aux      :=Trim(Text);
  posicion :=pos(':',Aux);
  hora     :=Trim(copy(aux,1,posicion-1));
  minuto   :=Trim(Copy(aux,posicion+1,2));
  if minuto='' then
    Minuto:='00';
  if hora='' Then
    hora:='00';
  hora  :=copy('00',1,length(hora))+Hora;
  minuto:=copy('00',1,length(minuto))+minuto;

  aux:=hora+':'+minuto;
//  if (Copy(Hora,length(Text),1)=':') Then
//    Insert('00',Hora,length(Text)+1);


  Sender.AsString:=aux;
//  if CDSBaseENTRADA.Value>CDSBaseSALIDA.Value Then
//    Sender.AsString:=CDSBaseENTRADA.AsString;

//  Horas:=CDSBaseENTRADA.AsDateTime-CDSBaseSALIDA.AsdateTime;
  decodeTime(Horas,h,m,s,ss);
//  CDSBaseCANITDADHORAS.Value:=h+(m*0.01);
//  CDSBaseENTRADA.Value:=CDSBaseENTRADA.Value;
end;

procedure TFormIngresoHoras.CDSBaseSALIOSetText(Sender: TField;
  const Text: String);
var h,m,s,ss:Word;
aux,hora,minuto:String;
posicion:integer;
begin
  inherited;
  aux      :=Trim(Text);
  posicion :=pos(':',Aux);
  hora     :=Trim(copy(aux,1,posicion-1));
  minuto   :=Trim(Copy(aux,posicion+1,2));
  if minuto='' then
    Minuto:='00';
  if hora='' Then
    hora:='00';
  hora  :=copy('00',1,length(hora))+Hora;
  minuto:=copy('00',1,length(minuto))+minuto;

  aux:=hora+':'+minuto;
 
  Sender.AsString:=Aux;
 // if CDSBaseENTRADA.Value>CDSBaseSALIDA.Value Then
 //   Sender.AsString:=CDSBaseSALIDA.AsString;

 // Horas:=CDSBaseSALIDA.AsDateTime-CDSBaseENTRADA.AsdateTime;
  decodeTime(Horas,h,m,s,ss);
 // CDSBaseCANITDADHORAS.Value:=h+(m*0.01);
 // CDSBaseSALIDA.Value:=CDSBaseSALIDA.Value;

end;


procedure TFormIngresoHoras.dbgHorasColEnter(Sender: TObject);
begin
  inherited;
  if dbgHoras.SelectedIndex=1 Then
    dbgHoras.SelectedIndex:=2;
  if dbgHoras.SelectedIndex=5 Then
    dbgHoras.SelectedIndex:=6;
  if dbgHoras.SelectedIndex>6Then
    dbgHoras.SelectedIndex:=6;


end;


procedure TFormIngresoHoras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormIngresoHoras.FormDestroy(Sender: TObject);
begin
  inherited;
  FormIngresoHoras:=nil;
end;

procedure TFormIngresoHoras.CDSBaseBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if (CDSBaseIDEMPLEADO.AsString='') or (CDSBaseIDLUGAR.AsString='') Then
    begin
      ShowMessage('Los campos empleado y Lugar no pueden ser vacios...');
      sysutils.abort;
    end
end;

procedure TFormIngresoHoras.dbgHorasEditButtonClick(Sender: TObject);
begin
  inherited;
  if dbgHoras.SelectedIndex=0 Then
    BuscarEmpleado.Execute;
  if dbgHoras.SelectedIndex=6 Then
    BuscarLugar.Execute;

end;

procedure TFormIngresoHoras.CDSBaseLEGAJOSetText(Sender: TField;
  const Text: String);
Var
  Aux: integer;
begin
 // inherited;
  if( Text<>'') and (text<>#13) Then
    begin
  //    if CDSBase.State=dsBrowse Then
  //      CDSBase.Edit;
      //Sender.AsString:=Text;
      if TryStrToInt(Text,Aux) then
        begin
          if Not(AsignarEmpleado(Aux)) Then
            begin
             // Sender.Clear;
              ShowMessage('Dato no Valido...');
          //    dbgHoras.SelectedIndex     :=  0;
            end;
        end;
    end;
end;
{begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
      if CDSBase.State=dsBrowse Then
        CDSBase.Edit;
      Sender.AsString:=Text;
      if Not(AsignarEmpleado(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Valido...');
          dbgHoras.SelectedIndex:=0;
        end;
    end;
end;   }

procedure TFormIngresoHoras.dbgHorasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

//  if Key=vk_left Then
//    begin
//      dbgHoras.SelectedIndex:=dbgHoras.SelectedIndex-1;
//      if dbgHoras.SelectedIndex=2 Then
//        dbgHoras.SelectedIndex:=0;
//    end;
end;

end.
