UNIT UTarjetaCredito;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXClock, RXCtrls, RXDBCtrl, rxAppEvent, rxrxPlacemnt, Wwintl,
   ActnList, StdCtrls, Mask, DBCtrls, wwSpeedButton,
  wwDBNavigator, dbTables, wwclearpanel, Buttons, ExtCtrls, wwDialog, wwidlg,
  rxToolEdit, ToolWin, Provider, Contnrs, wwClient, CDSUtil, ComCtrls;

TYPE
  TFormTCredito = CLASS(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    ActionList1: TActionList;
    Buscar: TAction;
    MPSAutoSize1: TMPSAutoSize;
    wwIntl1: TwwIntl;
    FormStorage1: TFormStorage;
    rxAppEvents1: TrxAppEvents;
    Panel2: TPanel;
    DBStatusLabel1: TDBStatusLabel;
    RxClock1: TRxClock;
    wwBuscadorTarjetas: TwwLookupDialog;
    ToolBar1: TToolBar;
    btNuevo: TBitBtn;
    btCancelar: TBitBtn;
    btConfirma: TBitBtn;
    btEditar: TBitBtn;
    btBuscar: TBitBtn;
    btBorrar: TBitBtn;
    dbeCodigo: TDBEdit;
    Agregar: TAction;
    Cancelar: TAction;
    Confirma: TAction;
    Modificar: TAction;
    Borrar: TAction;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE FormKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE AgregarExecute(Sender: TObject);
    PROCEDURE CancelarExecute(Sender: TObject);
    PROCEDURE ConfirmaExecute(Sender: TObject);
    PROCEDURE ModificarExecute(Sender: TObject);
    PROCEDURE BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    ArrayCds: TObjectList;
    ArrayDsp: TObjectList;
    OnApply: TAfterApply;
    { Public declarations }
  END;

VAR
  FormTCredito: TFormTCredito;

IMPLEMENTATION

USES DMTarjetasCredito, DMMainForm;

{$R *.DFM}

//*************** Procedimientos para el uso de Base de Datos *************

PROCEDURE AddClientDataSet(CDS: TwwClientDataSet; DSP: TDataSetProvider);
BEGIN
  FormTCredito.ArrayCds.Add(CDS);
  FormTCredito.ArrayDsp.Add(DSP);
END;

PROCEDURE GrabarDatos(DB: TDatabase);
BEGIN
  CDSApplyUpdates(DB, FormTCredito.ArrayCds, FormTCredito.ArrayDsp,
    FormTCredito.OnApply);
END;

PROCEDURE CancelarCambios;
BEGIN
  CDSCancelUpdates(FormTCredito.ArrayCds);
END;

//********* Fin de rutinas de Base de Datos ***************

PROCEDURE TFormTCredito.FormCreate(Sender: TObject);
BEGIN
  AutoSize := True;
  ArrayCds := TObjectList.Create;
  ArrayDsp := TObjectList.Create;
  IF NOT (Assigned(DatosTCredito)) THEN
    DatosTCredito := TDatosTCredito.Create(Application);
  WITH DatosTCredito DO
    BEGIN
      AddClientDataSet(wwCDSTCredito, DSPTCredito);
      wwCDSTCredito.Open;
    END;
END;

PROCEDURE TFormTCredito.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  WITH DatosTCredito DO
    BEGIN
      wwCDSTCredito.Close;
    END;
  FreeAndNil(FormTCredito.ArrayCds);
  FreeAndNil(FormTCredito.ArrayDsp);
  Action := caFree;
  FreeAndNil(DatosTCredito);
END;

PROCEDURE TFormTCredito.FormDestroy(Sender: TObject);
BEGIN
  FormTCredito := NIL;
END;

PROCEDURE TFormTCredito.FormKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF (Key = #13)
    THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
  IF Key = #27 THEN
    Cancelar.Execute;
END;

PROCEDURE TFormTCredito.BuscarExecute(Sender: TObject);
BEGIN
  DatosTCredito.QTCredito.Close;
  DatosTCredito.QTCredito.Open;
  IF wwBuscadorTarjetas.Execute THEN
    BEGIN
      DatosTCredito.wwCDSTCredito.Close;
      DatosTCredito.wwCDSTCredito.Params.ParamByName('Id').Value :=
        wwBuscadorTarjetas.LookupTable.fieldByName('Id_tc').Value;
      DatosTCredito.wwCDSTCredito.Open;
    END;
  DatosTCredito.QTCredito.Close;
END;

PROCEDURE TFormTCredito.AgregarExecute(Sender: TObject);
BEGIN
  DatosTCredito.wwCDSTCredito.Insert;
END;

PROCEDURE TFormTCredito.CancelarExecute(Sender: TObject);
BEGIN
  DatosTCredito.wwCDSTCredito.Cancel;
END;

PROCEDURE TFormTCredito.ConfirmaExecute(Sender: TObject);
BEGIN
  DatosTCredito.wwCDSTCredito.Post;
  GrabarDatos(DMMain.database);
  btNuevo.SetFocus;
END;

PROCEDURE TFormTCredito.ModificarExecute(Sender: TObject);
BEGIN
  IF NOT (DatosTCredito.wwCDSTCredito.IsEmpty) THEN
    DatosTCredito.wwCDSTCredito.edit
  ELSE
    ShowMessage('No hay registro activo');
END;

PROCEDURE TFormTCredito.BorrarExecute(Sender: TObject);
BEGIN
  IF NOT (DatosTCredito.wwCDSTCredito.IsEmpty) THEN
    BEGIN
      DatosTCredito.wwCDSTCredito.Delete;
      DatosTCredito.wwCDSTCredito.ApplyUpdates(0);
      DatosTCredito.wwCDSTCredito.EmptyDataSet;
    END
  ELSE
    ShowMessage('No hay registro activo');
END;

END.
