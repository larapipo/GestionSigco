unit UImportarSubRubroExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, ADODB, DBXCommon, JvAppStorage, JvAppIniStorage,
  JvComponentBase, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, System.ImageList, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid;

type
  TFormImportarSubRubroExcel = class(TFormABMBase)
    btn1: TSpeedButton;
    edPath: TEdit;
    pnAviso: TPanel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    btImportar: TBitBtn;
    btnAyudaFormato: TSpeedButton;
    DSSubRubrosXLS: TDataSource;
    OpenDialog: TOpenDialog;
    QUltimoCodigoMAX: TStringField;
    chArmarCodigo: TCheckBox;
    spABMSubRubro: TFDStoredProc;
    QCodigoFree: TFDQuery;
    QBuscadorSubRubro: TFDQuery;
    QBuscadorSubRubroCODIGO_SUBRUBRO: TStringField;
    QBuscadorSubRubroDETALLE_SUBRUBRO: TStringField;
    QBuscadorSubRubroCODIGO_RUBRO: TStringField;
    QBuscadorSubRubroCONTROL_SUBRUBRO: TStringField;
    QBuscadorSubRubroFUERA_PROMO: TStringField;
    QCodigoFreeNEWCODIGO: TIntegerField;
    dbgrdStock: TDBAdvGrid;
    mtSubRubroXLS: TFDMemTable;
    stgSubRubros: TAdvStringGrid;
    procedure btnAyudaFormatoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportarSubRubroExcel: TFormImportarSubRubroExcel;

implementation

uses  UDMain_FD;

{$R *.dfm}

procedure TFormImportarSubRubroExcel.btImportarClick(Sender: TObject);
var codigo:string;
begin
 inherited;
 
  mtSubRubroXLS.First;
  while not mtSubRubroXLS.Eof do
    begin
      if mtSubRubroXLS.fieldbyName('CODIGO').AsString='' then
        begin
          QBuscadorSubRubro.Close;
          QBuscadorSubRubro.ParamByName('descripcion').Value:=trim(UpperCase(copy(mtSubRubroXLS.fieldByName('Detalle').AsString,1,25)));
          QBuscadorSubRubro.Open;
          if QBuscadorSubRubroDETALLE_SUBRUBRO.AsString='' then
            begin
              QCodigoFree.Close;
              QCodigoFree.ParamByName('rubro').Value:=mtSubRubroXLS.fieldbyName('RUBRO').AsString;
              QCodigoFree.Open;
              if QCodigoFree.Fields[0].AsString<>'' then
                codigo:=Copy('00000',1,5-Length(QCodigoFree.Fields[0].AsString))+QCodigoFree.Fields[0].AsString
              else
                begin
                  QUltimoCodigo2.Close;
                  QUltimoCodigo2.ParamByName('rubro').Value:=mtSubRubroXLS.fieldbyName('RUBRO').AsString;
                  QUltimoCodigo2.Open;
                  if QUltimoCodigo2.Fields[0].AsString<>'' then
                    codigo:=Copy('00000',1,5-Length(IntToStr(QUltimoCodigo2.Fields[0].AsInteger)))+IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)
                  else
                    begin
                      if chArmarCodigo.Checked then //ca arma el codigo con el rubro
                        codigo:=mtSubRubroXLS.fieldbyName('RUBRO').AsString+'00'
                      else    // si no toma el codigo que viene
                        codigo:=Copy('00000',1,5-length(mtSubRubroXLS.fieldbyName('CODIGO').AsString))+mtSubRubroXLS.fieldbyName('CODIGO').AsString;

                    end;
                  QUltimoCodigo2.Close;
                end;
            end
          else
            codigo:=QBuscadorSubRubroCODIGO_SUBRUBRO.AsString;
          QBuscadorSubRubro.Close;
        end
      else
        codigo := Copy('00000',1,5-Length(Trim(mtSubRubroXLS.fieldbyName('CODIGO').AsString)))+Trim(mtSubRubroXLS.fieldbyName('CODIGO').AsString);
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        Try
          spABMSubRubro.Close;
          spABMSubRubro.ParamByName('CODIGO').Value          := codigo;
          spABMSubRubro.ParamByName('Detalle').AsString      := trim(UpperCase(copy(mtSubRubroXLS.fieldByName('Detalle').AsString,1,35)));
          spABMSubRubro.ParamByName('codigo_Rubro').AsString := trim(copy(mtSubRubroXLS.fieldByName('Rubro').AsString,1,3));
          spABMSubRubro.ExecProc;
          spABMSubRubro.Close;

          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('Transacción no finalizada....!');
        end;
      end;
    mtSubRubroXLS.Next;
  end;
  mtSubRubroXLS.Active:=False;
end;

procedure TFormImportarSubRubroExcel.btn1Click(Sender: TObject);
var c,r:Integer;
ColName:String;
begin
  inherited;
  mtSubRubroXLS.Active:=False;
  Screen.Cursor:=crHourGlass;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;
        stgSubRubros.LoadFromXLS(edPath.Text);

         mtSubRubroXLS.Close;
         mtSubRubroXLS.FieldDefs.Clear;
         for c:= 0 to stgSubRubros.ColCount - 1 do
           begin
             stgSubRubros.Cells[c,0];
             if stgSubRubros.Cells[c,0]<>'' Then
               mtSubRubroXLS.FieldDefs.Add(stgSubRubros.Cells[c,0],ftString,50,False);
           end;
         mtSubRubroXLS.Open;

         mtSubRubroXLS.DisableControls;
         for r:= 1 to stgSubRubros.RowCount - 1 do
           begin
             mtSubRubroXLS.Append;
             for c:= 0 to stgSubRubros.ColCount - 1 do
               begin
                 if stgSubRubros.Cells[c,0]<>'' Then
                   begin
                     ColName       :=stgSubRubros.Cells[c,0];
                     if mtSubRubroXLS.FindField(ColName)<>nil then
                        mtSubRubroXLS.FieldByName(ColName).Value:=stgSubRubros.Cells[c,r];
                   end;
               end;
             mtSubRubroXLS.Post;
           end;
         mtSubRubroXLS.EnableControls;
         mtSubRubroXLS.First;
         mtSubRubroXLS.Refresh;
         FormImportarSubRubroExcel.Height:=FormImportarSubRubroExcel.Height-5;
         FormImportarSubRubroExcel.Height:=FormImportarSubRubroExcel.Height+5;

      end;
  Screen.Cursor:=crDefault;


end;

procedure TFormImportarSubRubroExcel.btnAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportarSubRubroExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportarSubRubroExcel.FormCreate(Sender: TObject);
begin
  inherited;
  aUTOsiZE:=fALSE;
end;

procedure TFormImportarSubRubroExcel.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarSubRubroExcel:=nil;
end;

procedure TFormImportarSubRubroExcel.FormResize(Sender: TObject);
begin
  inherited;
  IF FormImportarSubRubroExcel<>Nil Then
    if FormImportarSubRubroExcel.Width<>585 Then
      FormImportarSubRubroExcel.Width:=585;
end;

end.
