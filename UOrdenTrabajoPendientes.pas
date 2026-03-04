unit UOrdenTrabajoPendientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, ExtCtrls, DB,  frxClass, Data.FMTBcd,
  frxDBSet, Datasnap.DBClient, Datasnap.Provider, JvExControls, JvDBLookup,
  Vcl.StdCtrls, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, Vcl.Buttons, Vcl.ToolWin, JvGradient,
  JvAppStorage, JvAppIniStorage, JvExStdCtrls, JvCombobox, JvDBCombobox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, frCoreClasses;


type
  TFormListadoOTrabajoPendientes = class(TFormABMBase)
    dbgOrdenes: TDBGrid;
    DSOTrabajo: TDataSource;
    DSPOTrabajo: TDataSetProvider;
    CDSOTrabajo: TClientDataSet;
    CDSOTrabajoID_OT: TIntegerField;
    CDSOTrabajoTIPOCPBTE: TStringField;
    CDSOTrabajoNOMBRE: TStringField;
    CDSOTrabajoPRIORIDAD: TSmallintField;
    CDSOTrabajoESTADO: TIntegerField;
    CDSOTrabajoMuestraEstado: TStringField;
    DSResponsable: TDataSource;
    DSAsignada: TDataSource;
    CDSOTrabajoRESPONSABLE_TURNO: TStringField;
    CDSOTrabajoRESPONSABLE_OT: TStringField;
    CDSOTrabajoMUESTRARESPONSABLETURNO: TStringField;
    CDSOTrabajoMUESTRARESPONSABLEOT: TStringField;
    CDSOTrabajoNROCPBTE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    CDSOTrabajoMUESTRAIDENTIFICACION: TStringField;
    Label3: TLabel;
    frxReportOT: TfrxReport;
    frDBOT: TfrxDBDataset;
    DSPEmpresa: TDataSetProvider;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    Temporizador: TTimer;
    rxcResponsable: TJvDBLookupCombo;
    rxcRespDeTurno: TJvDBLookupCombo;
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
    CDSAsignada: TClientDataSet;
    DSPAsignada: TDataSetProvider;
    CDSResponsable: TClientDataSet;
    DSPResponsable: TDataSetProvider;
    CDSResponsableCODIGO: TStringField;
    CDSResponsableNOMBRE: TStringField;
    CDSAsignadaCODIGO: TStringField;
    CDSAsignadaNOMBRE: TStringField;
    RxCEstados: TJvDBComboBox;
    Label4: TLabel;
    QOTrabajo: TFDQuery;
    CDSOTrabajoFECHAINICIO: TSQLTimeStampField;
    CDSOTrabajoFECHAESTIMADA: TSQLTimeStampField;
    QAsig: TFDQuery;
    QResp: TFDQuery;
    procedure dbgOrdenesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure dbgOrdenesDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgOrdenesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CDSOTrabajoCalcFields(DataSet: TDataSet);
    procedure dbgOrdenesTitleClick(Column: TColumn);
    procedure BuscarExecute(Sender: TObject);
    procedure rxcResponsableClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure TemporizadorTimer(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoOTrabajoPendientes: TFormListadoOTrabajoPendientes;

implementation

uses UOrdenDeTrabajo,UDMain_FD;
{$R *.DFM}

procedure TFormListadoOTrabajoPendientes.dbgOrdenesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  // con esto hago que cuando esta seleccionado el renglon
  // se pueda ver con letras blancas el texto,
  // pues cuando cambio de color las filas y el texto
  // es de otro color, no se ve lo que dice....

  if gdSelected in State Then
    begin
      dbgOrdenes.Canvas.Font.Color:=clWhite;
      dbgOrdenes.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if CDSOTrabajoFECHAESTIMADA.AsDateTime<=Date Then
         dbgOrdenes.Canvas.Font.Style:=[fsBold]
      else
        dbgOrdenes.Canvas.Font.Style:=[];
      if (CDSOTrabajoPRIORIDAD.Value>=0) and (CDSOTrabajoPRIORIDAD.Value<=3) Then
        dbgOrdenes.Canvas.Font.Color:=clblack
      else
        if (CDSOTrabajoPRIORIDAD.Value>=4) and (CDSOTrabajoPRIORIDAD.Value<=6) Then
          dbgOrdenes.Canvas.Font.Color:=clBlue
        else
          if (CDSOTrabajoPRIORIDAD.Value>=7) and (CDSOTrabajoPRIORIDAD.Value<=9) Then
            dbgOrdenes.Canvas.Font.Color:=clGreen
          else
            if (CDSOTrabajoPRIORIDAD.Value>=10) Then
              dbgOrdenes.Canvas.Font.Color:=clRed;
    end;
  dbgOrdenes.DefaultDrawColumnCell(Rect,0,Column,State);


end;

procedure TFormListadoOTrabajoPendientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSResponsable.Open;
  CDSAsignada.Open;
  CDSOTrabajo.Open;
  CDSEmpresa.Open;
 // dbgOrdenes.Columns[0].Width:=107;
//  dbgOrdenes.Columns[1].Width:=74;
//  dbgOrdenes.Columns[2].Width:=76;
//  dbgOrdenes.Columns[3].Width:=185;
//  dbgOrdenes.Columns[4].Width:=35;
//  dbgOrdenes.Columns[5].Width:=109;
//  dbgOrdenes.Columns[6].Width:=80;
//  dbgOrdenes.Columns[7].Width:=70;
//  dbgOrdenes.Columns[8].Width:=70;
  rxcResponsable.Value:=DMMain_FD.EmpleadoPorDefecto;
  rxcResponsableClick(Sender);
end;

procedure TFormListadoOTrabajoPendientes.dbgOrdenesDblClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormOrdenDeTrabajo)) Then
     FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(Application);
   FormOrdenDeTrabajo.DatoNew  :=CDSOTrabajoID_OT.AsString;
   FormOrdenDeTrabajo.TipoCpbte:=CDSOTrabajoTIPOCPBTE.AsString;

//   if (FMenu.OrdenTrabajoSup.Enabled=True) and
//      (FMenu.OrdenTrabajoSup.Visible=True) and
//      (FMenu.OrdenDeTrabajoSup1.Visible=True)
//        Then
//          begin
//            FormOrdenDeTrabajo.Caption:='Orden de Trabajo en Modo Supervisor';
//            FormOrdenDeTrabajo.Tag:=0;
//            FormOrdenDeTrabajo.btborrar.Visible:=True;
//          end
//   else
//    if (FMenu.OrdenTrabajoSup.Enabled=False) or
//      (FMenu.OrdenTrabajoSup.Visible=False) or
//      (FMenu.OrdenDeTrabajoSup1.Visible=False)
//
//      Then //e:='No Habilitado';
//          begin
//            FormOrdenDeTrabajo.Caption:='Orden de Trabajo en Modo Operador';
//            FormOrdenDeTrabajo.Tag:=1;
//            FormOrdenDeTrabajo.btborrar.Visible:=False;
//          end;

   FormOrdenDeTrabajo.Recuperar.Execute;
   FormOrdenDeTrabajo.Show;
end;

procedure TFormListadoOTrabajoPendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSAsignada.Close;
  CDSResponsable.Close;
  CDSOTrabajo.Close;
  CDSEmpresa.CLose;

  Action:=caFree;
end;

procedure TFormListadoOTrabajoPendientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoOTrabajoPendientes:=nil;
end;

procedure TFormListadoOTrabajoPendientes.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoOTrabajoPendientes<>nil then
    if FormListadoOTrabajoPendientes.Width<>940 then
      FormListadoOTrabajoPendientes.Width:=940;


end;

procedure TFormListadoOTrabajoPendientes.dbgOrdenesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='Doble clik en la linea llama el comprobante';
end;

procedure TFormListadoOTrabajoPendientes.pnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='';

end;

procedure TFormListadoOTrabajoPendientes.CDSOTrabajoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  Case CDSOTrabajoESTADO.Value of
    0:CDSOTrabajoMuestraEstado.Value:='Presupuesto';
    1:CDSOTrabajoMuestraEstado.Value:='Aceptada';
    2:CDSOTrabajoMuestraEstado.Value:='Reparada';
    3:CDSOTrabajoMuestraEstado.Value:='Reclamo';
    4:CDSOTrabajoMuestraEstado.Value:='Garantia';
    5:CDSOTrabajoMuestraEstado.Value:='No Aceptado Pres';
    6:CDSOTrabajoMuestraEstado.Value:='Sin Reparacion';
    7:CDSOTrabajoMuestraEstado.Value:='Retirada';
    8:CDSOTrabajoMuestraEstado.Value:='Finalizada';

//0  PRESUPUESTO
//1  ACEPTADO
//2  REPARADO
//3  RECLAMO
//4  GARANTIA
//5  NO ACEPTADO PRES.
//6  SIN REPARACION
//7  RETIRADA
//8  FINALIZADA

  end;
end;

procedure TFormListadoOTrabajoPendientes.dbgOrdenesTitleClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName<>'MuestraEstado' Then
    CDSOTrabajo.IndexFieldNames:=Column.FieldName;
  if Column.FieldName='PRIORIDAD' Then
    CDSOTrabajo.IndexName:='PRIORIDAD';

end;

procedure TFormListadoOTrabajoPendientes.BuscarExecute(Sender: TObject);
begin
 // inherited;
 CDSOTrabajo.Close;
 CDSOTrabajo.Params.parambyName('estado').Value:=RxCEstados.ItemIndex;
 CDSOTrabajo.Open;
 rxcResponsable.OnClick(sender);
end;

procedure TFormListadoOTrabajoPendientes.rxcResponsableClick(Sender: TObject);
begin
  inherited;
  CDSOTrabajo.Filtered:=False;
  CDSOTrabajo.Filter:='';
  if (rxcResponsable.Value<>'*') and (rxcRespDeTurno.Value<>'*') Then
    begin
      CDSOTrabajo.Filter:='RESPONSABLE_OT='+rxcResponsable.LookupSource.DataSet.FieldByName('codigo').AsString
                          +' and RESPONSABLE_TURNO='+rxcRespDeTurno.LookupSource.DataSet.FieldByName('codigo').AsString;
      CDSOTrabajo.Filtered:=True;
    end
  else
    if (rxcResponsable.Value='*') and (rxcRespDeTurno.Value<>'*') Then
      begin
        CDSOTrabajo.Filter:='RESPONSABLE_TURNO='+rxcRespDeTurno.LookupSource.DataSet.FieldByName('codigo').AsString;
        CDSOTrabajo.Filtered:=True;
      end
    else
      if (rxcResponsable.Value<>'*') and (rxcRespDeTurno.Value='*') Then
        begin
          CDSOTrabajo.Filter:='RESPONSABLE_OT='+rxcResponsable.LookupSource.DataSet.FieldByName('codigo').AsString;
          CDSOTrabajo.Filtered:=True;
        end;

   //dbgOrdenes.SetFocus;
end;

procedure TFormListadoOTrabajoPendientes.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReportOT.DesignReport;
end;

procedure TFormListadoOTrabajoPendientes.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReportOT.PrintOptions.Printer:=PrNomListados;
  frxReportOT.SelectPrinter;
  frxReportOT.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoOT.fr3');
  frxReportOT.Variables['Responsable']:=''''+rxcResponsable.Text+'''';
  frxReportOT.Variables['Asignado']:=''''+rxcRespDeTurno.Text+'''';
  frxReportOT.ShowReport;
end;

procedure TFormListadoOTrabajoPendientes.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frxReportOT.DesignReport;
end;

procedure TFormListadoOTrabajoPendientes.TemporizadorTimer(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.