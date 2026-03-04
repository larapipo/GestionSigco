unit UPlanRubo_SubRubro_Stock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UPlanCuentaDeGastos, ActnList, ComCtrls, Buttons,
  ToolWin, StdCtrls, ExtCtrls,  frxDBSet, frxClass, ImgList, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, JvExControls, JvGradient, FMTBcd,
  SqlExpr, Provider, DBClient, JvBaseDlg, JvProgressDialog, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvThread, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IB, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Comp.UI, FireDAC.Phys.FBDef, FireDAC.Phys.IBDef, System.ImageList,
  frCoreClasses;

type
  TFormPlanRubro_SubRubro_Stock = class(TFormPlanCuentaGastos)
    JvThread: TJvThread;
    CargarItems: TAction;
    FDConnectionThread: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SelecionaItemExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ConsultarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CargarItemsExecute(Sender: TObject);
    procedure JvThreadExecute(Sender: TObject; Params: Pointer);
    procedure JvThreadFinishAll(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure JvThreadFinish(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cancelar:Boolean;
    procedure Progreso;
  end;

var
  FormPlanRubro_SubRubro_Stock: TFormPlanRubro_SubRubro_Stock;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormPlanRubro_SubRubro_Stock.CancelarExecute(Sender: TObject);
begin
  inherited;
  Cancelar:=True;
end;

procedure TFormPlanRubro_SubRubro_Stock.CargarItemsExecute(Sender: TObject);
var Nodo1: TTreeNode;
  N, M: Integer;
begin
   WHILE (NOT(QRubros.Eof)) and (Cancelar=False)  DO
     BEGIN
       //JvThread.Synchronize(Progreso);
       Nodo1 := tvListado.Items.Add(NIL, QRubrosCODIGO.AsString + '-' + QRubrosDETALLE.Value);
       tvListado.Selected := Nodo1;
       N := tvListado.Selected.AbsoluteIndex;
       QCuenta.Close;
       QCuenta.ParamByName('id').Value := QRubrosCODIGO.Value;
       QCuenta.Open;
       QCuenta.First;

       if QCuenta.RecordCount>1 then
         begin
           WHILE (Not(QCuenta.Eof)) and (Cancelar=False) DO
             BEGIN
               Nodo1              := tvListado.Items.AddChild(tvListado.Items[N], QCuentaCODIGO.AsString + '-' + QCuentaDETALLE.Value);
               tvListado.Selected := Nodo1;
               M                  := tvListado.Selected.AbsoluteIndex;
               QCuenta.Next;
             END;
         end
       else
         if QCuenta.RecordCount=1 then
           begin
              Nodo1              := tvListado.Items.AddChild(tvListado.Items[N], QCuentaCODIGO.AsString + '-' + QCuentaDETALLE.Value);
              tvListado.Selected := Nodo1;
              M                  := tvListado.Selected.AbsoluteIndex;
           end;

     // QCuenta.EnableControls;
      QRubros.Next;
     END;
  QRubros.Close;
  QCuenta.Close;


 // tvListado.Visible    := True;
 // ProgressBar.Position := 0;
//  BitBtn2.Enabled      := True;
 // btCancelar.Enabled:=False;
 // btBorrar.Enabled  :=True;
 // btSalir.Enabled   :=True;
end;

procedure TFormPlanRubro_SubRubro_Stock.ConsultarExecute(Sender: TObject);
VAR
  Nodo1: TTreeNode;
  N, M: Integer;
BEGIN
  Nodo1 := NIL;
  tvListado.Items.Clear;
  Cancelar:=False;

  QCuenta.Close;
  QCuenta.Open;

  QRubros.Close;
  QRubros.Open;
  QRubros.First;
  btlistar.Enabled   := False;
  btCancelar.Enabled := True;
  btSalir.Enabled    := False;


 // tvListado.Visible:=False;
 // Screen.Cursor             := crHourGlass;
//  btCancelar.Enabled        := False;
  JvThread.FreeOnTerminate  := True;
  JvThread.Execute(self);


 // WHILE (NOT(QRubros.Eof)) or (Cancelar=True) DO
//    BEGIN
//      pdProgress.Position:=pdProgress.Position+1;
//  //    Application.ProcessMessages;
//      Nodo1 := tvListado.Items.Add(NIL, QRubrosCODIGO.AsString + '-' +
//        QRubrosDETALLE.Value);
//      tvListado.Selected := Nodo1;
//      N := tvListado.Selected.AbsoluteIndex;
//      QCuenta.Close;
//      QCuenta.ParamByName('id').Value := QRubrosCODIGO.Value;
//      QCuenta.Open;
//      QCuenta.First;
//      QCuenta.DisableControls;
//      if QCuenta.RecordCount>1 then
//        begin
//          WHILE (Not(QCuenta.Eof)) or (Cancelar=True) DO
//            BEGIN
//              Nodo1 := tvListado.Items.AddChild(tvListado.Items[N],
//                QCuentaCODIGO.AsString + '-' + QCuentaDETALLE.Value);
//              tvListado.Selected := Nodo1;
//              M := tvListado.Selected.AbsoluteIndex;
//              QCuenta.Next;
//            END;
//        end
//      else
//        if QCuenta.RecordCount=1 then
//          begin
//             Nodo1 := tvListado.Items.AddChild(tvListado.Items[N],
//               QCuentaCODIGO.AsString + '-' + QCuentaDETALLE.Value);
//             tvListado.Selected := Nodo1;
//             M := tvListado.Selected.AbsoluteIndex;
//          end;
//
//      QCuenta.EnableControls;
//      QRubros.Next;
//    END;
//  QRubros.EnableControls;

 
END;

procedure TFormPlanRubro_SubRubro_Stock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  while not(JvThread.Terminated) do
    JvThread.Terminate;
  inherited;
  Action:=caFree;
end;

procedure TFormPlanRubro_SubRubro_Stock.FormCreate(Sender: TObject);
begin
  inherited;
 // Aca asigino los parametros del SQLConnections del Main
  begin
    FDConnectionThread.Connected := False;
    FDConnectionThread.Params.Values['Database']  := DMMain_FD.fdcGestion.Params.Values['Database'];
    FDConnectionThread.Params.Values['User_Name'] := DMMain_FD.fdcGestion.Params.Values['User_Name'];
    FDConnectionThread.Params.Values['Password']  := DMMain_FD.fdcGestion.Params.Values['Password'];
    FDConnectionThread.Params.Values['DriverID']  := DMMain_FD.fdcGestion.Params.Values['DriverID'];
    FDConnectionThread.Params.Values['SQLDialect']:= DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
    FDConnectionThread.Connected := True;
  end;

  AutoSize := False;
  Cancelar := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormPlanRubro_SubRubro_Stock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlanRubro_SubRubro_Stock:=nil;
end;

procedure TFormPlanRubro_SubRubro_Stock.FormShow(Sender: TObject);
begin
  inherited;
  tvListado.AutoExpand:=False;
end;

procedure TFormPlanRubro_SubRubro_Stock.ImprimirExecute(Sender: TObject);
begin
//  inherited;
  QListaCuenta.Close;
  QListaCuenta.Open;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaRubrosSubrubros.fr3');

  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
  QListaCuenta.Close;

end;

procedure TFormPlanRubro_SubRubro_Stock.JvThreadExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  CargarItems.Execute;
  JvThread.Terminate;
end;

procedure TFormPlanRubro_SubRubro_Stock.JvThreadFinish(Sender: TObject);
begin
  inherited;
  btlistar.Enabled   := True;
  btCancelar.Enabled := False;
  btSalir.Enabled    := True;
end;

procedure TFormPlanRubro_SubRubro_Stock.JvThreadFinishAll(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crDefault;
end;

procedure TFormPlanRubro_SubRubro_Stock.Progreso;
begin
//  ProgressBar.Position:=ProgressBar.Position+1;
  Application.ProcessMessages;
end;

procedure TFormPlanRubro_SubRubro_Stock.SalirExecute(Sender: TObject);
begin
  Cancelar:=True;
  while Not(JvThread.Terminated) do
    JvThread.Terminate;
  QCuenta.Close;
  QRubros.Close;
  //Cancelar:=True;
  inherited;
end;

procedure TFormPlanRubro_SubRubro_Stock.SelecionaItemExecute(Sender: TObject);
var Nodo:TTreeNode;
codigo,Detalle:String;
I:integer;
begin
  //inherited;
  Nodo       := tvListado.Items[tvListado.Selected.AbsoluteIndex];
  codigo     := Copy(Nodo.Text,1,pos('-',Nodo.Text)-1);
  Detalle    := Copy(Nodo.Text,pos('-',Nodo.Text)+1,100);
  Detalle    := Copy(Detalle,pos('-',Detalle)+1,100);
  Detalle    := Trim(Detalle);
  Edit1.Text := Codigo;
  Edit2.Text := Detalle;
  lbIndex.Caption:=inttostr(tvListado.Selected.AbsoluteIndex);
end;

procedure TFormPlanRubro_SubRubro_Stock.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  tvListado.FullExpand;
end;

procedure TFormPlanRubro_SubRubro_Stock.SpeedButton2Click(Sender: TObject);
begin
 // inherited;
  if  tvListado.Selected.Level=0 then
     begin
       QCambiarNombreRubro.Close;
       QCambiarNombreRubro.SQL.Clear;
       QCambiarNombreRubro.SQL.Text:= ' update rubros r set r.detalle_rubro=:descripcion  where r.codigo_rubro=:codigo ';
       QCambiarNombreRubro.ParamByName('Codigo').Value     := Edit1.Text;
       QCambiarNombreRubro.ParamByName('descripcion').Value:= Edit2.Text;
       QCambiarNombreRubro.ExecSQL;
       QCambiarNombreRubro.Close;
     end
   else
     if  tvListado.Selected.Level=1 then
       begin
         QCambiarNombreSub.Close;
         QCambiarNombreSub.SQL.Clear;
         QCambiarNombreSub.SQL.Text:= 'update subrubros r set r.detalle_subrubro=:descripcion  where r.codigo_subrubro=:codigo ';
         QCambiarNombreSub.ParamByName('Codigo').Value     := Edit1.Text;
         QCambiarNombreSub.ParamByName('descripcion').Value:= Edit2.Text;
         QCambiarNombreSub.ExecSQL;
         QCambiarNombreSub.Close;
       end;

   tvListado.Items[StrToInt(lbIndex.Caption)];
   tvListado.Selected.Text:=Edit1.text+'-'+Edit2.Text;
end;

procedure TFormPlanRubro_SubRubro_Stock.SpeedButton3Click(Sender: TObject);
begin
  inherited;
 tvListado.FullCollapse;
end;

end.
