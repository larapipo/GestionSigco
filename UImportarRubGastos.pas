unit UImportarRubGastos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  AdvUtil, Vcl.DBGrids, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid;

type
  TFormImportarRubGastos = class(TFormABMBase)
    btn1: TSpeedButton;
    btnAyudaFormato: TSpeedButton;
    dbgRubros: TDBAdvGrid;
    edPath: TEdit;
    pnAviso: TPanel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    btImportar: TBitBtn;
    mtRubrosXLS: TFDMemTable;
    DSRubrosXLS: TDataSource;
    OpenDialog: TOpenDialog;
    QCodigoFree: TFDQuery;
    QCodigoFreeNEWCODIGO: TIntegerField;
    QBuscadorRubro: TFDQuery;
    QBuscadorRubroCODIGO_RUBRO: TStringField;
    QBuscadorRubroDETALLE_RUBRO: TStringField;
    QBuscadorRubroCONTROL_RUBRO: TStringField;
    QBuscadorRubroFUERA_PROMO: TStringField;
    QBuscadorRubroORDEN: TIntegerField;
    spABMRubro: TFDStoredProc;
    stgRubros: TAdvStringGrid;
    procedure btn1Click(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarRubGastos: TFormImportarRubGastos;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormImportarRubGastos.btImportarClick(Sender: TObject);
var codigo,Detalle:string;
begin
 inherited;
  mtRubrosXLS.First;
  while not mtRubrosXLS.Eof do
    begin
      Detalle:=Trim(UpperCase(mtRubrosXLS.fieldByName('Detalle').AsString));
      if mtRubrosXLS.fieldbyName('CODIGO').AsString='' then
        begin
          QBuscadorRubro.Close;
          QBuscadorRubro.ParamByName('descripcion').Value:=Copy(Detalle,1,50);
          QBuscadorRubro.Open;
          if QBuscadorRubroDETALLE_RUBRO.AsString='' then
            begin
              QCodigoFree.Close;
              QCodigoFree.Open;
              if QCodigoFree.Fields[0].AsString<>'' then
                codigo:=Copy('000',1,3-Length(QCodigoFree.Fields[0].AsString))+QCodigoFree.Fields[0].AsString
              else
                begin
                  QUltimoCodigo2.Close;
                  QUltimoCodigo2.Open;
                  if QUltimoCodigo2.Fields[0].AsString<>'' then
                    codigo:=Copy('000',1,3-Length(IntToStr(QUltimoCodigo2.Fields[0].AsInteger)))+IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)
                  else
                    codigo:='000';
                  QUltimoCodigo2.Close;
                end;
            end
          else
            codigo:=QBuscadorRubroCODIGO_RUBRO.AsString;
          QBuscadorRubro.Close;
        end
      else
        codigo := Trim(mtRubrosXLS.fieldbyName('CODIGO').AsString);
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        Try
          spABMRubro.Close;
          spABMRubro.ParamByName('CODIGO').Value                := codigo;
          spABMRubro.ParamByName('Detalle').AsString            := copy(Detalle,1,50);
          spABMRubro.ExecProc;
          spABMRubro.Close;
          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('Transacción no finalizada....!');
        end;
      end;
    mtRubrosXLS.Next;
  end;
  mtRubrosXLS.Active:=False;
end;

procedure TFormImportarRubGastos.btn1Click(Sender: TObject);
var c,r:Integer;
ColName:String;
begin
  inherited;
  mtRubrosXLS.Active:=False;
  Screen.Cursor:=crHourGlass;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;
        stgRubros.LoadFromXLS(edPath.Text);

         mtRubrosXLS.Close;
         mtRubrosXLS.FieldDefs.Clear;
         for c:= 0 to stgRubros.ColCount - 1 do
           begin
             stgRubros.Cells[c,0];
             if stgRubros.Cells[c,0]<>'' Then
               mtRubrosXLS.FieldDefs.Add(stgRubros.Cells[c,0],ftString,50,False);
           end;
         mtRubrosXLS.Open;

         mtRubrosXLS.DisableControls;
         for r:= 1 to stgRubros.RowCount - 1 do
           begin
             mtRubrosXLS.Append;
             for c:= 0 to stgRubros.ColCount - 1 do
               begin
                 if stgRubros.Cells[c,0]<>'' Then
                   begin
                     ColName       :=stgRubros.Cells[c,0];
                     if mtRubrosXLS.FindField(ColName)<>nil then
                        mtRubrosXLS.FieldByName(ColName).Value:=stgRubros.Cells[c,r];
                   end;
               end;
             mtRubrosXLS.Post;
           end;
         mtRubrosXLS.EnableControls;
         mtRubrosXLS.First;
         mtRubrosXLS.Refresh;
         FormImportarRubGastos.Height:=FormImportarRubGastos.Height-5;
         FormImportarRubGastos.Height:=FormImportarRubGastos.Height+5;

      end;
  Screen.Cursor:=crDefault;


end;

procedure TFormImportarRubGastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;
end;

procedure TFormImportarRubGastos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormImportarRubGastos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarRubGastos:=nil;
end;

end.
