unit ULogFile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, ComCtrls, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, Menus, ImgList,
  DBGrids, JvComponentBase, JvExControls, JvGradient, DataExport,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid,
  Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, DBXCommon, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, Data.DB,
  Vcl.ActnList, CompBuscador, Vcl.DBCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox,
   System.ImageList, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, System.Rtti, VCL.TMSFNCDataGridCell,
  VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase, VCL.TMSFNCDataGridCore,
  VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, VCL.TMSFNCCustomControl, VCL.TMSFNCDataGrid,
  AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, tmsAdvGridExcel;

type
  TFormLog = class(TFormABMBase)
    DSLog: TDataSource;
    rgTipo: TRadioGroup;
    BorrarUna: TAction;
    BorrarTodas: TAction;
    PopupMenu1: TPopupMenu;
    BorrarLinea1: TMenuItem;
    BorrarTodas1: TMenuItem;
    N1: TMenuItem;
    MarcarLog: TAction;
    MarcarLinea1: TMenuItem;
    ToolButton1: TToolButton;
    ExportaXLS: TAction;
    SaveDialog: TSaveDialog;
    btExcel: TBitBtn;
    pnPie: TPanel;
    edBuscador: TJvDBFindEdit;
    DBText1: TDBText;
    Depurar: TAction;
    N2: TMenuItem;
    Depurar1: TMenuItem;
    pnCabecera: TPanel;
    spBorrar: TFDStoredProc;
    spMarcar: TFDStoredProc;
    DSPLog: TDataSetProvider;
    QLogin: TFDQuery;
    CDSLog: TClientDataSet;
    CDSLogID: TIntegerField;
    CDSLogFECHA: TSQLTimeStampField;
    CDSLogDETALLE: TStringField;
    CDSLogTIPOLOG: TSmallintField;
    CDSLogORIGEN: TStringField;
    CDSLogUSUARIO: TStringField;
    CDSLogREVISADO: TStringField;
    CDSLogNIVEL: TIntegerField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    pnBase: TPanel;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    DBAdvGrid1: TDBAdvGrid;
    CheckBox1: TCheckBox;
    AdvGridExcelIO1: TAdvGridExcelIO;
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BorrarUnaExecute(Sender: TObject);
    procedure BorrarTodasExecute(Sender: TObject);
    procedure MarcarLogExecute(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure dbgLogKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridLogDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DepurarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLog: TFormLog;

implementation

uses UDMain_FD,UDepurarLog;
{$R *.DFM}

procedure TFormLog.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSLog.Close;
  case rgTipo.ItemIndex of
    0:CDSLog.Params.ParamByName('revisado').Value:='S';
    1:CDSLog.Params.ParamByName('revisado').Value:='N';
    2:CDSLog.Params.ParamByName('revisado').Value:='*';
  end;
  CDSLog.Open;

 
 //  TMSFNCDataGrid1.AutoSizeGrid(gamVisibleCells,5,5);
end;

procedure TFormLog.CheckBox1Click(Sender: TObject);
begin
  inherited;
  DBAdvGrid1.PageMode:=CheckBox1.Checked;
  FormLog.Height     :=FormLog.Height+15;
  FormLog.Height     :=FormLog.Height-15;
  edBuscador.Text    :='';
  edBuscador.Enabled :=CheckBox1.Checked;
end;

procedure TFormLog.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
 
end;

procedure TFormLog.cxGridLogDBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_delete then
    BorrarUna.Execute;
end;

procedure TFormLog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormLog.FormCreate(Sender: TObject);
begin
  inherited;
  Autosize:=False;
 // edBuscador.FindStyle:=fsFilter;
 // edBuscador.FindMode :=fmAnyPos;
end;

procedure TFormLog.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLog:=nil;
end;

procedure TFormLog.FormShow(Sender: TObject);
begin
 // inherited;
  edBuscador.EditText  := '';
  edBuscador.FindStyle := fsFilter;
  edBuscador.FindMode  := fmAnyPos;
  Buscar.Execute;
  DBAdvGrid1.Height:= DBAdvGrid1.Height+25;
  DBAdvGrid1.Height:= DBAdvGrid1.Height-25;
end;

procedure TFormLog.BorrarUnaExecute(Sender: TObject);
var Puntero:TBookmark;
begin
  inherited;
  if Not(CDSLog.IsEmpty) then
    begin
      if (DMMain_FD.UsuarioAdministrador) and (CDSLogID.Value>0) Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spBorrar.Close;
            spBorrar.ParamByName('id').Value := CDSLogID.Value;
            spBorrar.ExecProc;
            spBorrar.Close;
            // **** Ingreso en el Log File  **************
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No pudo realicar la operacion....!');
          end;
        end;
    end;
end;

procedure TFormLog.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSLog.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='LogFile';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              //DataToXLS.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
              AdvGridExcelIO1.XLSExport(SaveDialog.FileName)
            else
//              DataToXLS.SaveToFile(SaveDialog.FileName);
              AdvGridExcelIO1.XLSExport(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles')
end;

procedure TFormLog.BorrarTodasExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
       spBorrar.Close;
       spBorrar.ParamByName('id').Value:=-1;
       spBorrar.ExecProc;
       spBorrar.Close;
       // **** Ingreso en el Log File  **************
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No pudo realicar la operacion....!');
      end;
    end;
 // Buscar.Execute;
end;

procedure TFormLog.dbgLogKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_delete then
    BorrarUna.Execute;
end;



procedure TFormLog.DepurarExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador) and (CDSLogID.Value>0) Then
    begin
      If Not(Assigned(FormDepurarLog)) Then
        FormDepurarLog:=TFormDepurarLog.Create(Self);
      FormDepurarLog.ShowModal;
    end;
end;

procedure TFormLog.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
end;

procedure TFormLog.MarcarLogExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador) and (CDSLogID.Value>0) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
       spMarcar.Close;
       spMarcar.ParamByName('id').Value := CDSLogID.Value;;
       spMarcar.ExecProc;
       spMarcar.Close;
       // **** Ingreso en el Log File  **************
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No pudo realicar la operacion....!');
      end;
      Buscar.Execute;
    end;
end;

end.
