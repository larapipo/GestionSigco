unit UPanificacionProduccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PlannerWaitList, Planner, DBPlanner, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, IBGenerator, Vcl.Samples.Spin,IniFiles, AdvSmoothProgressBar,
  Vcl.Buttons, System.Actions, Vcl.ActnList,DateUtils, AdvSmoothPageSlider,
  Vcl.Menus, Vcl.ComCtrls, JvExControls, JvDBLookup, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvOfficeButtons;

type
  TFormPlanificacion_Produccion = class(TForm)
    pwListaTareas: TPlannerWaitList;
    CDSEstacion: TClientDataSet;
    DSMov: TDataSource;
    CDSMov: TClientDataSet;
    DSPEstacion: TDataSetProvider;
    CDSEstacionID: TIntegerField;
    CDSEstacionDETALLE: TStringField;
    Panel1: TPanel;
    lbTrabajos: TLabel;
    Splitter1: TSplitter;
    DSPMov: TDataSetProvider;
    Label3: TLabel;
    DSPSubMov: TDataSetProvider;
    CDSSubMov: TClientDataSet;
    DSSubMov: TDataSource;
    CDSSubMovID: TIntegerField;
    CDSSubMovID_DET_OP: TIntegerField;
    CDSSubMovCODIGO: TStringField;
    CDSSubMovDETALLE: TStringField;
    CDSSubMovTIPOCPBTE: TStringField;
    CDSSubMovCLASECPBTE: TStringField;
    CDSSubMovNROCPBTE: TStringField;
    CDSSubMovESTADO: TStringField;
    CDSSubMovESTACION: TIntegerField;
    CDSSubMovKEY_ESTACION: TStringField;
    ibgNextId: TIBGenerator;
    CDSMovID: TIntegerField;
    CDSMovID_OPCAB: TIntegerField;
    CDSMovCODIGO: TStringField;
    CDSMovDETALLE: TStringField;
    CDSMovUNIDAD: TStringField;
    CDSMovDEPOSITO_DESTINO: TIntegerField;
    CDSMovSUCURSAL: TIntegerField;
    CDSMovTIPOCPBTE: TStringField;
    CDSMovCLASECPBTE: TStringField;
    CDSMovNROCPBTE: TStringField;
    CDSMovAFECTA_STOCK: TStringField;
    CDSMovESTADO: TStringField;
    CDSMovEN_PLANIFICACION: TStringField;
    CDSMovPRODUCTOR: TStringField;
    CDSMovRAZON_SOCIAL: TStringField;
    lbDetMovimientos: TLabel;
    spMes: TSpinEdit;
    spAnio: TSpinEdit;
    DBPeriodSource1: TDBPeriodSource;
    CDSSubMovRAZON_SOCIAL: TStringField;
    pnPie: TPanel;
    spCoef: TSpinEdit;
    Label1: TLabel;
    lbItems: TLabel;
    lbIntemEspera: TLabel;
    DBPPlanificacion: TDBPlanner;
    btSalir: TBitBtn;
    btRefresh: TBitBtn;
    ActionList1: TActionList;
    Refresh: TAction;
    Insertar: TAction;
    Deletear: TAction;
    Particion: TAction;
    PopupMenu1: TPopupMenu;
    Particion1: TMenuItem;
    ibgOProdDet: TIBGenerator;
    stBar: TStatusBar;
    CDSEstacionSECTOSDETALLE: TStringField;
    CDSMovESPECIFICACION: TStringField;
    CDSMovPARTICION: TStringField;
    CDSSubMovMUESTRASECTOR: TIntegerField;
    QMovAux: TFDQuery;
    QMovAuxID: TIntegerField;
    QMovAuxID_OPCAB: TIntegerField;
    QMovAuxCODIGO: TStringField;
    QMovAuxDETALLE: TStringField;
    QMovAuxUNIDAD: TStringField;
    QMovAuxCANTIDAD: TFloatField;
    QMovAuxDEPOSITO_DESTINO: TIntegerField;
    QMovAuxSUCURSAL: TIntegerField;
    QMovAuxTIPOCPBTE: TStringField;
    QMovAuxCLASECPBTE: TStringField;
    QMovAuxNROCPBTE: TStringField;
    QMovAuxAFECTA_STOCK: TStringField;
    QMovAuxESTADO: TStringField;
    QMovAuxCOSTO: TFloatField;
    QMovAuxEN_PLANIFICACION: TStringField;
    QMovAuxESPECIFICACION: TStringField;
    QMovAuxPARTICION: TStringField;
    QMovAuxID_PRESU_CAB: TIntegerField;
    QMovAuxID_PRESU_DET: TIntegerField;
    QMov: TFDQuery;
    QMovID: TIntegerField;
    QMovID_OPCAB: TIntegerField;
    QMovCODIGO: TStringField;
    QMovDETALLE: TStringField;
    QMovUNIDAD: TStringField;
    QMovCANTIDAD: TFloatField;
    QMovDEPOSITO_DESTINO: TIntegerField;
    QMovSUCURSAL: TIntegerField;
    QMovTIPOCPBTE: TStringField;
    QMovCLASECPBTE: TStringField;
    QMovNROCPBTE: TStringField;
    QMovAFECTA_STOCK: TStringField;
    QMovESTADO: TStringField;
    QMovCOSTO: TFloatField;
    QMovEN_PLANIFICACION: TStringField;
    QMovESPECIFICACION: TStringField;
    QMovPARTICION: TStringField;
    QMovID_PRESU_CAB: TIntegerField;
    QMovID_PRESU_DET: TIntegerField;
    QMovPRODUCTOR: TStringField;
    QMovRAZON_SOCIAL: TStringField;
    CDSMovCANTIDAD: TFloatField;
    CDSMovCOSTO: TFloatField;
    CDSMovID_PRESU_CAB: TIntegerField;
    CDSMovID_PRESU_DET: TIntegerField;
    QEstaciones: TFDQuery;
    QOProduccion: TFDQuery;
    QOProduccionID_OPCAB: TIntegerField;
    QBorrarMov: TFDQuery;
    QSubMOv: TFDQuery;
    QSubMOvID: TIntegerField;
    QSubMOvID_DET_OP: TIntegerField;
    QSubMOvCODIGO: TStringField;
    QSubMOvDETALLE: TStringField;
    QSubMOvCANTIDAD: TFloatField;
    QSubMOvCANTIDAD_SALDO: TFloatField;
    QSubMOvTIPOCPBTE: TStringField;
    QSubMOvCLASECPBTE: TStringField;
    QSubMOvNROCPBTE: TStringField;
    QSubMOvESTADO: TStringField;
    QSubMOvESTACION: TIntegerField;
    QSubMOvKEY_ESTACION: TStringField;
    QSubMOvRAZON_SOCIAL: TStringField;
    QSubMOvMUESTRASECTOR: TIntegerField;
    CDSSubMovCANTIDAD: TFloatField;
    CDSSubMovCANTIDAD_SALDO: TFloatField;
    QSubMovAux: TFDQuery;
    QSubMovAuxID: TIntegerField;
    QSubMovAuxID_DET_OP: TIntegerField;
    QSubMovAuxCODIGO: TStringField;
    QSubMovAuxDETALLE: TStringField;
    QSubMovAuxCANTIDAD: TFloatField;
    QSubMovAuxCANTIDAD_SALDO: TFloatField;
    QSubMovAuxFECHA: TSQLTimeStampField;
    QSubMovAuxTIPOCPBTE: TStringField;
    QSubMovAuxCLASECPBTE: TStringField;
    QSubMovAuxNROCPBTE: TStringField;
    QSubMovAuxESTADO: TStringField;
    QSubMovAuxFECHAINICO: TSQLTimeStampField;
    QSubMovAuxFECHAFINAL: TSQLTimeStampField;
    QSubMovAuxESTACION: TIntegerField;
    QSubMovAuxKEY_ESTACION: TStringField;
    QSubActualizaCant: TFDQuery;
    QMovMUESTRAALTERNATIVO: TStringField;
    CDSMovMUESTRAALTERNATIVO: TStringField;
    QSubMOvMUESTRACODGOALTERNATIVO: TStringField;
    CDSSubMovMUESTRACODGOALTERNATIVO: TStringField;
    QSubMOvFECHA: TDateField;
    QSubMOvFECHAINICO: TDateField;
    QSubMOvFECHAFINAL: TDateField;
    CDSSubMovFECHA: TDateField;
    CDSSubMovFECHAINICO: TDateField;
    CDSSubMovFECHAFINAL: TDateField;
    QMovFECHA: TDateField;
    QMovFECHA_ENTREGA: TDateField;
    CDSMovFECHA: TDateField;
    CDSMovFECHA_ENTREGA: TDateField;
    QMovAuxFECHA: TDateField;
    QMovAuxFECHA_ENTREGA: TDateField;
    GenerarParteDiario: TAction;
    GenerarParteDiario1: TMenuItem;
    FDEventAlerter1: TFDEventAlerter;
    chbModoIntervalo: TAdvOfficeCheckBox;
    procedure Planner1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBPPlanificacionDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBPPlanificacionDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure lbTrabajosClick(Sender: TObject);
    procedure CDSSubMovNewRecord(DataSet: TDataSet);
    procedure lbDetMovimientosClick(Sender: TObject);
    procedure spMesChange(Sender: TObject);
    procedure spAnioChange(Sender: TObject);
    procedure CDSSubMovAfterPost(DataSet: TDataSet);
    procedure DBPeriodSource1ItemToFields(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPeriodSource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DBPPlanificacionItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure pwListaTareasItemClick(Sender: TObject; Item: TPlannerItem);
    procedure btSalirClick(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure DBPPlanificacionItemSelect(Sender: TObject; Item: TPlannerItem);
    procedure InsertarExecute(Sender: TObject);
    procedure DeletearExecute(Sender: TObject);
    procedure CDSSubMovBeforeInsert(DataSet: TDataSet);
    procedure ParticionExecute(Sender: TObject);
    procedure CDSMovAfterPost(DataSet: TDataSet);
    procedure pwListaTareasItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure pwListaTareasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBPPlanificacionPlannerMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure DBPPlanificacionItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure FormActivate(Sender: TObject);
    procedure CDSMovNewRecord(DataSet: TDataSet);
    procedure GenerarParteDiarioExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Id_Mov:Integer;
    ArchivoIni:TIniFile;
    Posicion,
    Comienzo,
    Fin,Inx           :Integer;

    ID,ID_DET_OP      :integer;
    CODIGO,DETALLE :String;
    CANTIDAD,
    CANTIDAD_SALDO    :Extended;
    FECHA,FECHAINICIO :TDateTime;
    TIPOCPBTE,
    CLASECPBTE,
    NROCPBTE,
    ESTADO         :String;
    ESTACION       :Integer;
    ItemSaldo      :Extended;
    procedure CargarWaitList;
  end;

var
  FormPlanificacion_Produccion: TFormPlanificacion_Produccion;

implementation

uses UDMain_FD,UDetalleMovProduccion, UControlDuplicadoProduccion,
     UOrdenProduccion, UProduccion_PDiario;


{$R *.dfm}

//procedure TFormPlanificacion_Produccion.btRefreshClick(Sender: TObject);
//begin
//  CDSEstacion.Close;
//  CDSEstacion.Open;
//  CDSEstacion.First;
//  Posicion:=0;
//  While NOT CDSEstacion.Eof Do
//  Begin
//    With DBPeriodSource1.ResourceMap.Add Do
//    Begin
//       ResourceIndex := CDSEstacion.FieldByName('ID').AsInteger;
//       PositionIndex := Posicion;
//       DisplayName   := CDSEstacionSECTOSDETALLE.AsString+#13+CDSEstacion.FieldByName('DETALLE').AsString;
//       inc(Posicion);
//    End;
//    CDSEstacion.Next;
//  End;
//
//  CDSEstacion.Close;
//  DBPeriodSource1.NumberOfResources := Posicion;
//  DBPeriodSource1.Active:=True;
//
//  CargarWaitList;
//
//  CDSSubMov.Close;
//  CDSSubMov.Open;
//
//  DBPPlanificacion.Display.DisplayEnd := 120;
//  if Not(Assigned(FormDetalleMovimientosProduccion)) Then
//    FormDetalleMovimientosProduccion:=TFormDetalleMovimientosProduccion.Create(Self);
//  FormDetalleMovimientosProduccion.Visible:=False;
//
//end;

procedure TFormPlanificacion_Produccion.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPlanificacion_Produccion.CargarWaitList;
var i:Integer;
Paso:Boolean;
begin
  pwListaTareas.Items.ClearAll;
  CDSMov.Close;
  CDSMov.Open;
  CDSMov.First;
  i:=CDSMovID_OPCAB.Value;
  Paso:=False;
  while not(CDSMov.Eof) do
    begin
      with pwListaTareas.Items.Add do
        begin
          if Paso then
            begin
              CaptionBkg       :=clBlue;
              CaptionFont.Color:=clWhite;
            end
          else
            begin
              CaptionBkg       :=clGreen;
              CaptionFont.Color:=clWhite;
            end;
         // CaptionType:= ctText;
          CaptionText:= CDSMovRAZON_SOCIAL.Value;
          Text.Text  := CDSMovDETALLE.AsString+'- OT.:'+CDSMovNROCPBTE.AsString+#13+
                        'Cant : '+FormatFloat('0.00',CDSMovCANTIDAD.AsFloat);
          ImageID    := CDSMovID.Value;
        end;
      CDSMov.Next;
      if I<>CDSMovID_OPCAB.Value then
        begin
          Paso:=Not(Paso);
          i:=CDSMovID_OPCAB.Value;
        end;
      pwListaTareas.Update;
    end;
  if pwListaTareas.Items.Count<=0 Then
    pwListaTareas.Visible:=False
  else
    if pwListaTareas.Items.Count>0 Then
      pwListaTareas.Visible:=True;

  lbItems.Caption:='Reg.:'+IntToStr(CDSMov.RecordCount);

end;

procedure TFormPlanificacion_Produccion.ParticionExecute(Sender: TObject);
var i:integer;
begin
  QSubMovAux.Close;
  QSubMovAux.ParamByName('id').Value:=Id_Mov;
  QSubMovAux.Open;

  ItemSaldo:=QSubMovAuxCANTIDAD_SALDO.AsFloat;

  QMovAux.Close;
  QMovAux.ParamByName('id').Value:=QSubMovAuxID_DET_OP.Value;// Id_Mov;
  QMovAux.Open;


  CDSMov.Insert;
  CDSMovID.Value               := ibgOProdDet.IncrementFD(1);//  QMovAuxID.Value;
  CDSMovID_OPCAB.Value         := QMovAuxID_OPCAB.Value;
  CDSMovCODIGO.Value           := QMovAuxCODIGO.Value;
  CDSMovDETALLE.AsString       := QMovAuxDETALLE.Value;
  CDSMovUNIDAD.Value           := QMovAuxUNIDAD.Value;
  CDSMovCANTIDAD.AsFloat       := ItemSaldo;//  QMovAuxCANTIDAD.AsFloat;
  CDSMovDEPOSITO_DESTINO.Value := QMovAuxDEPOSITO_DESTINO.Value;
  CDSMovSUCURSAL.Value         := QMovAuxSUCURSAL.Value;
  CDSMovFECHA.ASDateTime       := QMovAuxFECHA.AsDateTime;
  CDSMovTIPOCPBTE.Value        := QMovAuxTIPOCPBTE.Value;
  CDSMovCLASECPBTE.Value       := QMovAuxCLASECPBTE.Value;
  CDSMovNROCPBTE.Value         := QMovAuxNROCPBTE.Value;
  CDSMovAFECTA_STOCK.Value     := QMovAuxAFECTA_STOCK.Value;
  CDSMovESTADO.Value           := 'P';
  CDSMovCOSTO.ASFloat          := QMovAuxCOSTO.AsFloat;
  CDSMovPARTICION.Value        := 'S';
  CDSMovESPECIFICACION.Value   := QMovAuxESPECIFICACION.Value;
  CDSMovFECHA_ENTREGA.Value    := QMovAuxFECHA_ENTREGA.Value;
  CDSMovEN_PLANIFICACION.Value := 'N';

  if Not(Assigned(FormControlDuplicadoProduccion)) then
    FormControlDuplicadoProduccion:=TFormControlDuplicadoProduccion.Create(Self);
  FormControlDuplicadoProduccion.Disponible:=ItemSaldo;// CANTIDAD_SALDO;
  FormControlDuplicadoProduccion.Asigando  :=ItemSaldo;//;
  FormControlDuplicadoProduccion.ShowModal;

  if FormControlDuplicadoProduccion.ModalResult=mrOk then
    begin
     CDSMovCANTIDAD.AsFloat   := FormControlDuplicadoProduccion.Asigando;
     CDSMov.Post;
     QSubActualizaCant.Close;
     QSubActualizaCant.ParamByName('id').Value             := Id_mov;
     QSubActualizaCant.ParamByName('cantidad').AsFloat     := FormControlDuplicadoProduccion.Asigando;
     QSubActualizaCant.ParamByName('NuevaFecha').AsDateTime:= QSubMovAuxFECHAINICO.AsDateTime + Trunc(FormControlDuplicadoProduccion.DifCantidad/spCoef.Value)-1;

     QSubActualizaCant.ExecSQL();
     QSubActualizaCant.Close;
    end
  else
    CDSMov.Cancel;
  CDSMov.Close;
  CDSMov.Open;
  CDSSubMov.Close;
  CDSSubMov.Open;
  CargarWaitList;
  DBPPlanificacion.Refresh;
end;

procedure TFormPlanificacion_Produccion.Planner1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (source is tplannerwaitlist);
end;

procedure TFormPlanificacion_Produccion.pwListaTareasItemClick(Sender: TObject;
  Item: TPlannerItem);
begin
  id_mov:=Item.ImageID;
  CDSMov.Locate('ID',Id_Mov,[]);
  lbIntemEspera.Caption:= 'Id:'+CDSMovID.AsString+' - '+ 'Codigo.:' + CDSMovCODIGO.AsString+' '+CDSMovDETALLE.AsString+'//'+'Cliente: '+CDSMovRAZON_SOCIAL.VAlue;
end;

procedure TFormPlanificacion_Produccion.pwListaTareasItemDblClick(Sender: TObject;
  Item: TPlannerItem);
var IdAux:String;
begin
  if Item.ImageID>0 then
    begin
      QMovAux.Close;
      QMovAux.ParamByName('id').Value:=Item.ImageID;
      QMovAux.Open;
      IdAux:=QMovAuxID_OPCAB.ASString;
      QMovAux.Close;
      if Not(Assigned(FormOrdenProduccion)) Then
        FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
      FormOrdenProduccion.DatoNew:=IdAux;
      FormOrdenProduccion.recuperar.Execute;

    end;
end;

procedure TFormPlanificacion_Produccion.pwListaTareasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (X>0) and (X<200) then
    stBar.Panels[0].Text:='Doble Click >> Abre Orde. De Prod.'
  else
    stBar.Panels[0].Text:='';

end;

procedure TFormPlanificacion_Produccion.RefreshExecute(Sender: TObject);
var  i,Posicion: integer;
begin
  CDSEstacion.Close;
  CDSEstacion.Open;
  CDSEstacion.First;
  Posicion:=0;
  While NOT CDSEstacion.Eof Do
  Begin
    With DBPeriodSource1.ResourceMap.Add Do
    Begin
       ResourceIndex := CDSEstacion.FieldByName('ID').AsInteger;
       PositionIndex := Posicion;
       DisplayName   := CDSEstacionSECTOSDETALLE.AsString+#13+CDSEstacion.FieldByName('DETALLE').AsString;
       inc(Posicion);
    End;
    CDSEstacion.Next;
  End;

  CDSEstacion.Close;
  DBPeriodSource1.NumberOfResources := Posicion;
  DBPeriodSource1.Active:=True;

  CargarWaitList;

  CDSSubMov.Close;
  CDSSubMov.Open;

  DBPPlanificacion.Display.DisplayEnd := 120;
  if Not(Assigned(FormDetalleMovimientosProduccion)) Then
    FormDetalleMovimientosProduccion:=TFormDetalleMovimientosProduccion.Create(Self);
  FormDetalleMovimientosProduccion.Visible:=False;
end;

procedure TFormPlanificacion_Produccion.spAnioChange(Sender: TObject);
var A,M,D:Word;
begin
  DecodeDate(Date,a,m,d);
  DBPeriodSource1.Active    := False;
  DBPeriodSource1.StartDate := EncodeDate(spAnio.Value,spMes.Value,1);
  DBPeriodSource1.EndDate   := EncodeDate(spAnio.Value,spMes.Value,1)+120;
  DBPeriodSource1.Active    := True;
end;

procedure TFormPlanificacion_Produccion.spMesChange(Sender: TObject);
var A,M,D:Word;
begin
  DecodeDate(Date,a,m,d);
  DBPeriodSource1.Active    := False;
  DBPeriodSource1.StartDate := EncodeDate(spAnio.Value,spMes.Value,1);
  DBPeriodSource1.EndDate   := EncodeDate(spAnio.Value,spMes.Value,1)+120;
  DBPeriodSource1.Active    := True;
end;

procedure TFormPlanificacion_Produccion.CDSMovAfterPost(DataSet: TDataSet);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSMov.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormPlanificacion_Produccion.CDSMovNewRecord(DataSet: TDataSet);
begin
  CDSMovID_PRESU_CAB.Value := -1;
  CDSMovID_PRESU_DET.Value := -1;
end;

procedure TFormPlanificacion_Produccion.CDSSubMovAfterPost(DataSet: TDataSet);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSSubMov.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;


procedure TFormPlanificacion_Produccion.CDSSubMovBeforeInsert(DataSet: TDataSet);
begin
  ID             := CDSSubMovID.Value;
  ID_DET_OP      := CDSSubMovID_DET_OP.Value;
  CODIGO         := CDSSubMovCODIGO.Value;
  DETALLE        := CDSSubMovDETALLE.Value;
  CANTIDAD       := CDSSubMovCANTIDAD.AsFloat;
  CANTIDAD_SALDO := CDSSubMovCANTIDAD_SALDO.AsFloat;
  FECHA          := CDSSubMovFECHA.AsDateTime;
  TIPOCPBTE      := CDSSubMovTIPOCPBTE.Value;
  CLASECPBTE     := CDSSubMovCLASECPBTE.Value;
  NROCPBTE       := CDSSubMovNROCPBTE.Value;
  ESTADO         := CDSSubMovESTADO.Value;
  ESTACION       := CDSSubMovESTACION.Value;
  FECHAINICIO    := CDSSubMovFECHAINICO.AsDateTime;
end;

procedure TFormPlanificacion_Produccion.CDSSubMovNewRecord(DataSet: TDataSet);
begin
  CDSSubMovID.Value               := ibgNextId.IncrementFD(1);
  CDSSubMovID_DET_OP.Value        := CDSMovID.Value;
  CDSSubMovCODIGO.Value           := CDSMovCODIGO.Value;
  CDSSubMovDETALLE.Value          := CDSMovDETALLE.Value;
  CDSSubMovCANTIDAD.AsFloat       := CDSMovCANTIDAD.AsFloat;
  CDSSubMovCANTIDAD_SALDO.AsFloat := CDSMovCANTIDAD.AsFloat;
  CDSSubMovFECHA.Value            := CDSMovFECHA.Value;
  CDSSubMovTIPOCPBTE.Value        := CDSMovTIPOCPBTE.Value;
  CDSSubMovCLASECPBTE.Value       := CDSMovCLASECPBTE.Value;
  CDSSubMovNROCPBTE.Value         := CDSMovNROCPBTE.Value;
  CDSSubMovESTADO.Value           := 'P';
  CDSSubMovKEY_ESTACION.Value     := '1';
  CDSSubMovESTACION.Value         := -1;
end;

procedure TFormPlanificacion_Produccion.DBPeriodSource1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
var Dividendo:Real;
begin
  Item.CaptionText   := Fields.FieldByName('RAZON_SOCIAL').AsString +' Nro.'+Copy(Fields.FieldByName('NROCPBTE').AsString,9,5);
  Item.Text.Text     := Fields.FieldByName('DETALLE').AsString+#13+
                        'Cant.:'+FormatFloat('0.00',Fields.FieldByName('CANTIDAD').AsFloat)+#13+
                        'Saldo:'+FormatFloat('0.00',Fields.FieldByName('CANTIDAD_SALDO').AsFloat);
  Dividendo          := Fields.FieldByName('CANTIDAD').AsFloat - Fields.FieldByName('CANTIDAD_SALDO').AsFloat;
  item.Completion    := Trunc( Dividendo / Fields.FieldByName('CANTIDAD').AsFloat*100);
  Item.ImageID       := Fields.FieldByName('ID').AsInteger;
  Item.ItemStartTime := Fields.FieldByName('FECHAINICO').AsDateTime;
  Item.ItemEndTime   := Fields.FieldByName('FECHAFINAL').AsDateTime;
  ItemSaldo          := Fields.FieldByName('CANTIDAD_SALDO').AsFloat;
 // Item.Update;
end;

procedure TFormPlanificacion_Produccion.DBPeriodSource1ItemToFields(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  Fields.FieldByName('FECHAINICO').AsDateTime  := Item.ItemStartTime;
  Fields.FieldByName('FECHAFINAL').AsDateTime  := Item.ItemEndTime;
end;

procedure TFormPlanificacion_Produccion.DBPPlanificacionDragDrop(Sender, Source: TObject; X, Y: Integer);
var PlaIt:TPlannerItem;
FechaTestigo:TDateTime;
NoHabil:Integer;
dato:string[40];
begin
  dato:=GUIDToString(TGUID.NewGuid);
  if (source is tplannerwaitlist) then
    begin
      If pwListaTareas.ItemIndex>=0 Then
        begin
          PlaIt:=(source as tplannerwaitlist).movetoplanner(DBPPlanificacion,(source as TPlannerWaitlist).itemIndex,x,y);

          CDSSubMov.Edit;
          CDSSubMovFECHAFINAL.AsDateTime  := IncDay(CDSSubMovFECHAFINAL.AsDateTime,Trunc(CDSSubMovCANTIDAD.AsFloat/spCoef.Value));
          if chbModoIntervalo.Checked then
            CDSSubMovFECHAFINAL.AsDateTime  := IncDay(CDSSubMovFECHAINICO.AsDateTime,spCoef.Value);

          NoHabil:=0;
          FechaTestigo:=CDSSubMovFECHAINICO.AsDateTime;
          while (FechaTestigo <= CDSSubMovFECHAFINAL.AsDateTime) and (Not(chbModoIntervalo.Checked)) do
            begin
              //1 lunes, 5 viernes, 6 sabado, 7 domingo
              if ((DayOfTheWeek(FechaTestigo) > 1) and (DayOfTheWeek(FechaTestigo) < 5)) then
                Inc(NoHabil);
//             para otra etapa....
//             else
//               begin // si no es fin de semana, checamos si es feriado
//                 for I := 0 to Length(Feriados) - 1 do
//                   if Feriados[I] = Fini then
//                   Inc(NoHabil);
//                end;
              FechaTestigo := FechaTestigo + 1;
            end;
          CDSSubMovFECHAFINAL.AsDateTime  := CDSSubMovFECHAFINAL.AsDateTime + NoHabil;

     //   if ((DayOfTheWeek(CDSSubMovFECHAFINAL.AsDateTime) <= 6) or (DayOfTheWeek(CDSSubMovFECHAFINAL.AsDateTime) <= 7)) then
     //     CDSSubMovFECHAFINAL.AsDateTime  := CDSSubMovFECHAFINAL.AsDateTime - 1;
     //   if ((DayOfTheWeek(CDSSubMovFECHAFINAL.AsDateTime) <= 6) or (DayOfTheWeek(CDSSubMovFECHAFINAL.AsDateTime) <= 7)) then
     //     CDSSubMovFECHAFINAL.AsDateTime  := CDSSubMovFECHAFINAL.AsDateTime - 1;

          CDSSubMov.Post;
          CargarWaitList;
          DBPPlanificacion.Refresh;
        end;
    end;
end;

procedure TFormPlanificacion_Produccion.DBPPlanificacionDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   Accept := (source is tplannerwaitlist);
end;


procedure TFormPlanificacion_Produccion.DBPPlanificacionItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
  QOProduccion.Close;
  QOProduccion.ParamByName('id').Value:=Item.ImageID;
  QOProduccion.Open;
  if Not(Assigned(FormOrdenProduccion)) then
    FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
  FormOrdenProduccion.DatoNew:=  IntToStr(QOProduccionID_OPCAB.Value);
  FormORdenProduccion.Recuperar.Execute;
  FormOrdenProduccion.Show;
  FormOrdenProduccion.BringToFront;
  QOProduccion.Close;

end;

procedure TFormPlanificacion_Produccion.DBPPlanificacionItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
  if MessageDlg('Esta por Borrar Item ' + IntToStr(Item.ImageID) + #13 + Item.CaptionText,mtConfirmation,mbYesNo,0,mbNo) = mrYes Then
    begin
      QBorrarMov.Close;
      QBorrarMov.ParamByName('id').Value:=Item.ImageID;
      QBorrarMov.ExecSQL();
      QBorrarMov.Close;
    //  DBPlanner1.Items.Delete(Item.Index);
      DBPPlanificacion.FreeItem(Item);

      CargarWaitList;

      CDSSubMov.Close;
      CDSSubMov.Open;
    end;
end;

procedure TFormPlanificacion_Produccion.DBPPlanificacionItemSelect(Sender: TObject;
  Item: TPlannerItem);
var i:Integer;
begin
  Posicion:=Item.ItemPos;
  Comienzo:=Item.ItemBegin;
  Fin     :=Item.ItemEnd;
  Inx     :=Item.Index;
  Id_Mov  :=Item.ImageID;
  stBar.Panels[0].Text:=Item.ItemText;
  for I := 0 to DBPPlanificacion.Items.Count-1 do
    begin
      if DBPPlanificacion.Items.Items[i].ImageID=Item.ImageID Then
        DBPPlanificacion.Items.Items[i].Color:=clRed
      else
        DBPPlanificacion.Items.Items[i].Color:=clWhite;

    end;
 // ShowMessage(CDSSubMovDETALLE.Value);
end;


procedure TFormPlanificacion_Produccion.DBPPlanificacionPlannerMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if (x>1) and (X<500) then
    stBar.Panels[1].Text:='('+IntToStr(X)+'-'+IntToStr(Y)+')'+'  May+Ins=Insertar -- May+Del=Elimin.Espacio'
  else
    stBar.Panels[1].Text:='';
  if (x<=1) then
    stBar.Panels[1].Text:='';

end;

procedure TFormPlanificacion_Produccion.FormActivate(Sender: TObject);
begin
  if FormPlanificacion_Produccion<>nil then
    if Not(CDSSubMov.IsEmpty) then
      btRefresh.Click;
end;

procedure TFormPlanificacion_Produccion.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  ArchivoINI            := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PlanificacioProduccio.ini');
  ArchivoINI.WriteInteger('datos', 'coef', spCoef.Value);
  ArchivoINI.WriteBool('datos', 'IntervaloFijo', chbModoIntervalo.Checked);

  ArchivoINI.Free;
  Action:=caFree;
end;

procedure TFormPlanificacion_Produccion.FormCreate(Sender: TObject);
var
  Paso:Boolean;
  i,Posicion: integer;
  ItemsPla:TPlannerItem;
  Dia,Mes,Ano:Word;
begin

  DBPeriodSource1.Active:=False;

  ArchivoINI               := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PlanificacioProduccio.ini');
  spCoef.Value             := ArchivoINI.ReadInteger('datos', 'coef', 1);
  chbModoIntervalo.Checked := ArchivoINI.ReadBool('datos', 'IntervaloFijo', false);
  ArchivoINI.Free;

  DecodeDate(Date,Ano,Mes,Dia);
  spMes.Value  :=Mes;
  spAnio.Value :=Ano;

  CDSEstacion.Close;
  CDSEstacion.Open;


  CDSEstacion.First;
  Posicion:=0;
  While NOT CDSEstacion.Eof Do
  Begin
    With DBPeriodSource1.ResourceMap.Add Do
    Begin
       ResourceIndex := CDSEstacion.FieldByName('ID').AsInteger;
       PositionIndex := Posicion;
       DisplayName   := CDSEstacionSECTOSDETALLE.AsString+#13+CDSEstacion.FieldByName('DETALLE').AsString;
       inc(Posicion);
    End;
    CDSEstacion.Next;
  End;

  CDSEstacion.Close;
  DBPeriodSource1.NumberOfResources := Posicion;
  DBPeriodSource1.Active            := True;

//  DBPPlanificacion.Positions:=CDSEstacion.RecordCount;
//  DBPPlanificacion.Header.Captions.Clear;
//  DBPPlanificacion.Header.Captions.Add('Estaciones');
//
//  while not(CDSEstacion.Eof) do
//    begin
//      DBPPlanificacion.Header.Captions.Add(CDSEstacionDETALLE.Value);
//      CDSEstacion.Next;
//   end;
//  DBPPlanificacion.Positions:=CDSEstacion.RecordCount;
//
//  DBPeriodSource1.NumberOfResources:=DBPPlanificacion.Positions;

  CargarWaitList;

  CDSSubMov.Close;
  CDSSubMov.Open;

  DBPPlanificacion.Display.DisplayEnd := 120;

  if Not(Assigned(FormDetalleMovimientosProduccion)) Then
    FormDetalleMovimientosProduccion:=TFormDetalleMovimientosProduccion.Create(Self);
  FormDetalleMovimientosProduccion.Visible:=False;

 
 // DBPlanner1.Mode.PlannerType:=plMonth;

end;

procedure TFormPlanificacion_Produccion.FormDestroy(Sender: TObject);
begin
  FormPlanificacion_Produccion :=nil;
end;

procedure TFormPlanificacion_Produccion.GenerarParteDiarioExecute(
  Sender: TObject);
begin
  ID             := CDSSubMovID.Value;
  ID_DET_OP      := CDSSubMovID_DET_OP.Value;
  CODIGO         := CDSSubMovCODIGO.Value;
  DETALLE        := CDSSubMovDETALLE.Value;
  CANTIDAD       := CDSSubMovCANTIDAD.AsFloat;
  CANTIDAD_SALDO := CDSSubMovCANTIDAD_SALDO.AsFloat;
  FECHA          := CDSSubMovFECHA.AsDateTime;
  TIPOCPBTE      := CDSSubMovTIPOCPBTE.Value;
  CLASECPBTE     := CDSSubMovCLASECPBTE.Value;
  NROCPBTE       := CDSSubMovNROCPBTE.Value;
  ESTADO         := CDSSubMovESTADO.Value;
  ESTACION       := CDSSubMovESTACION.Value;
  FECHAINICIO    := CDSSubMovFECHAINICO.AsDateTime;

{  QOProduccion.Close;
  QOProduccion.ParamByName('id').Value:=CDSSubMovID.Value;
  QOProduccion.Open;
  if Not(Assigned(FormOrdenProduccion)) then
    FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
  FormOrdenProduccion.DatoNew:= IntToStr(QOProduccionID_OPCAB.Value);
  FormORdenProduccion.Recuperar.Execute;
  FormOrdenProduccion.Show;
  FormOrdenProduccion.BringToFront;
  QOProduccion.Close;
 }
   if (Assigned(FormProducc_Diario)) then
     FreeAndNil(FormProducc_Diario);

   if Not(Assigned(FormProducc_Diario)) then
     FormProducc_Diario:=TFormProducc_Diario.Create(Self);
   FormProducc_Diario.Agregar.Execute;
   FormProducc_Diario.CDSDiarioESTACION.Value:= ESTACION;
   FormProducc_Diario.CDSDiarioID_SUBDET_PRODSetText(FormProducc_Diario.CDSDiarioID_SUBDET_PROD,CDSSubMovID.AsString);

end;

procedure TFormPlanificacion_Produccion.InsertarExecute(Sender: TObject);
var TotalItems:Integer;
I,Ii,Selec: Integer;
Aux:TStringList;
begin
  Selec:=Inx;
  Aux:=TStringList.Create;
  TotalItems:=DBPPlanificacion.Items.Count-1;
  for I := 0 to TotalItems do
    begin
      if DBPPlanificacion.Items[i].ItemPos=Posicion then
        begin
          if DBPPlanificacion.Items[i].ItemBegin>=Fin then
            Aux.Add(IntToStr(i));
        end;
    end;
  for I := 0 to Aux.Count -1 do
    begin
      Ii:=StrToInt(Aux[i]);
      DBPPlanificacion.Items[Ii].ItemStartTime:=DBPPlanificacion.Items[Ii].ItemStartTime+1;
      DBPPlanificacion.Items[Ii].ItemEndTime  :=DBPPlanificacion.Items[Ii].ItemEndTime+1;
      DBPPlanificacion.Items[Ii].Update;
    end;
  FreeAndNil(Aux);
  DBPPlanificacion.Items[Selec].Selected:=True;
  DBPPlanificacion.Items[Selec].Update;

end;

procedure TFormPlanificacion_Produccion.DeletearExecute(Sender: TObject);
var TotalItems:Integer;
I,Ii,Selec: Integer;
Aux:TStringList;
begin
  Selec:=Inx;
  Aux:=TStringList.Create;
  TotalItems:=DBPPlanificacion.Items.Count-1;
  for I := 0 to TotalItems do
    begin
      if DBPPlanificacion.Items[i].ItemPos=Posicion then
        begin
          if DBPPlanificacion.Items[i].ItemBegin>=Fin then
            Aux.Add(IntToStr(i));
        end;
    end;
  for I := 0 to Aux.Count -1 do
    begin
      Ii:=StrToInt(Aux[i]);
      DBPPlanificacion.Items[Ii].ItemStartTime:=DBPPlanificacion.Items[Ii].ItemStartTime-1;
      DBPPlanificacion.Items[Ii].ItemEndTime  :=DBPPlanificacion.Items[Ii].ItemEndTime-1;
      DBPPlanificacion.Items[Ii].Update;
    end;
  FreeAndNil(Aux);
  DBPPlanificacion.Items[Selec].Selected:=True;
  DBPPlanificacion.Items[Selec].Update;

end;

procedure TFormPlanificacion_Produccion.lbDetMovimientosClick(Sender: TObject);
begin
  FormDetalleMovimientosProduccion.Visible:=Not(FormDetalleMovimientosProduccion.Visible);
end;

procedure TFormPlanificacion_Produccion.lbTrabajosClick(Sender: TObject);
begin
  pwListaTareas.Visible:=Not(pwListaTareas.Visible);
end;



end.
