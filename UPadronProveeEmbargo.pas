unit UPadronProveeEmbargo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, ComCtrls,
  Buttons, StdCtrls, ToolWin, ExtCtrls, ADODB, ImgList,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, JvAnimatedImage, JvGIFCtrl,
  JvExComCtrls, JvAnimate, DBXCommon, Datasnap.Provider, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, JvAppStorage, JvAppIniStorage, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, REST.Backend.EMSServices, REST.Backend.EMSFireDAC,
  System.ImageList;

type
  TFormPadronEmbargos = class(TFormABMBase)
    CDSPadron: TClientDataSet;
    DSPPadron: TDataSetProvider;
    OpenDialog: TOpenDialog;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    CDSPadronCUIT: TStringField;
    CDSPadronNOMBRE: TStringField;
    Label2: TLabel;
    MemoText: TMemo;
    Label3: TLabel;
    lbReg: TLabel;
    Label4: TLabel;
    lbNroReg: TLabel;
    BitBtn1: TBitBtn;
    CDSPadronFECHA: TSQLTimeStampField;
    GifCarga: TJvAnimate;
    GifProceso: TJvGIFAnimator;
    dbgPadron: TJvDBGrid;
    QPadron: TFDQuery;
    QPadronCUIT: TStringField;
    QPadronNOMBRE: TStringField;
    QPadronFECHA: TSQLTimeStampField;
    QBorrarPadron: TFDQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgPadronTitleClick(Column: TColumn);
    procedure RxDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cancelado:Boolean;
  ArchiTxt:TextFile;
  I:Integer;
  FormPadronEmbargos: TFormPadronEmbargos;

implementation


uses UDMain_FD, UAvisoProceso;
{$R *.DFM}

procedure TFormPadronEmbargos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        GifCarga.Visible:=True;
        GifCarga.Active :=True;
        edPath.Text:=OpenDialog.FileName;
        AssignFile(ArchiTxt, OpenDialog.FileName);
        Reset(ArchiTxt);
        MemoText.Lines.LoadFromFile(OpenDialog.FileName);
        lbReg.Caption:=IntToStr(MemoText.Lines.Count-1);
      end
    else
      ShowMessage('No hay archivo Seleccionado');
  GifCarga.Visible:=False;
  GifCarga.Active :=False;
end;

procedure TFormPadronEmbargos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSPadron.Close;
  Action:=caFree;
end;

procedure TFormPadronEmbargos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
 // AddClientDataSet(CDSPadron,DSPPadron);
  CDSPadron.Open;
end;

procedure TFormPadronEmbargos.AgregarExecute(Sender: TObject);

begin
 // inherited;
  
end;

procedure TFormPadronEmbargos.DSBaseStateChange(Sender: TObject);
begin
  //inherited;
   pnPrincipal.Enabled:=True;
end;

procedure TFormPadronEmbargos.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
   if Not(CDSPadron.IsEmpty) Then
     begin
       if Not(Assigned(FormProceso)) Then
         FormProceso:=TFormProceso.Create(Application);
       FormProceso.Mensaje:='Gravando padron....';
       FormProceso.Show;
       DMMain_FD.fdcGestion.StartTransaction;
       Try
         CDSPadron.ApplyUpdates(-1);
         DMMain_FD.fdcGestion.Commit;
         FormProceso.Close;
       except
         DMMain_FD.fdcGestion.Rollback;
         FormProceso.Close;
         ShowMessage('Transacción no finalizada....!');
       end;
     end;
end;

procedure TFormPadronEmbargos.BorrarExecute(Sender: TObject);
begin
 // inherited;
 if Not(CDSPadron.IsEmpty) Then
  begin
    QBorrarPadron.close;
    QBorrarPadron.ExecSQL;
    QBorrarPadron.close;
  end;

end;

procedure TFormPadronEmbargos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPadronEmbargos:=nil;
end;

procedure TFormPadronEmbargos.dbgPadronTitleClick(Column: TColumn);
begin
  inherited;
  CDSPadron.IndexFieldNames:=Column.FieldName;
end;

procedure TFormPadronEmbargos.RxDBGrid1TitleClick(Column: TColumn);
var i:byte;
begin
  inherited;
  for i := 0 to dbgPadron.Columns.Count-1 do
    dbgPadron.Columns[i].Title.font.Color:=clBlack;
  CDSPadron.IndexFieldNames:=Column.FieldName;
  Column.Title.Font.Color:=clBlue;
end;

procedure TFormPadronEmbargos.BitBtn1Click(Sender: TObject);
VAR S:String;
aux:Real;
posicion:Integer;
begin
  inherited;
  if MemoText.Lines.Count<=0 Then
    Raise Exception.Create('No hay datos para procesar .....');
  if Not(Assigned(FormProceso)) Then
    FormProceso:=TFormProceso.Create(Application);
  FormProceso.Mensaje:='Borrando datos Anteriores....';
  FormProceso.Show;
  QBorrarPadron.Close;
  QBorrarPadron.ExecSQL;
  QBorrarPadron.Close;
  FormProceso.Close;
  CDSPadron.Close;
  CDSPadron.Open;
  for posicion:=0 to MemoText.Lines.Count-1 do
    begin
     Application.ProcessMessages;
      if Cancelado Then
         exit;
      lbNroReg.Caption:=IntToStr(posicion);
      sleep(2);
      s:=MemoText.Lines[posicion];
      CDSPadron.Append;
      CDSPadronFECHA.AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',StrToDate( (Copy(s,7,2)  +'/'+ Copy(s,5,2)  +'/'+ Copy(s,1,4) ))));
      CDSPadronCUIT.Value       := Copy(s,9,2)+'-'+Copy(s,11,8)+'-'+copy(s,19,1);
      CDSPadronNOMBRE.Value     := Copy(s,33,35);
      CDSPadron.Post;
    end;
end;

procedure TFormPadronEmbargos.FormShow(Sender: TObject);
begin
  inherited;
   MemoText.Clear;
end;

end.
