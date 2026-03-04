unit UImportarLoteCheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBGrids, JvExExtCtrls,
  JvExtComponent, JvPanel, Vcl.Menus, Vcl.Mask, JvExMask, JvToolEdit, DBAdvGrid;

type
  TFormImportarLoteChePropios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btOk: TBitBtn;
    edPath: TEdit;
    spLeerExcel: TSpeedButton;
    mtCheques: TFDMemTable;
    spAyudaFormato: TSpeedButton;
    OpenDialog: TOpenDialog;
    PopupMenu1: TPopupMenu;
    ExportarGrilladeFormato1: TMenuItem;
    ceChequera: TJvComboEdit;
    edChequera: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    dbgCheques: TDBAdvGrid;
    DataSource1: TDataSource;
    pnAviso: TJvPanel;
    Label2: TLabel;
    sgPlantilla: TAdvStringGrid;
    sgCheques: TAdvStringGrid;
    procedure spLeerExcelClick(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure ExportarGrilladeFormato1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ceChequeraButtonClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure ceChequeraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
  private
    FId_caja :Integer;
    FOrden_de:String;
    FIDChequera:Integer;
    { Private declarations }
  public

  published
    property IDChequera:Integer read fIDChequera write FIDChequera;  { Public declarations }
  end;

var
  FormImportarLoteChePropios: TFormImportarLoteChePropios;

implementation

{$R *.dfm}

uses UBuscadorChequeras;

procedure TFormImportarLoteChePropios.btOkClick(Sender: TObject);
begin
  if Trim(ceChequera.Text)='' then
    FIDChequera:=-1;

end;

procedure TFormImportarLoteChePropios.ceChequeraButtonClick(Sender: TObject);
begin
  if Not(Assigned(FormBuscadorChequeras)) Then
    FormBuscadorChequeras:=TFormBuscadorChequeras.Create(Application);
  FormBuscadorChequeras.ShowModal;
  if FormBuscadorChequeras.IdChequera>=0 Then
    begin
      ceChequera.Text:= IntToStr(FormBuscadorChequeras.IdChequera);
      edChequera.Text:= FormBuscadorChequeras.Chequera;
      FIdChequera:=FormBuscadorChequeras.IdChequera;
    end;
end;

procedure TFormImportarLoteChePropios.ceChequeraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_BACK) or (Key=VK_DELETE) then
    begin
      ceChequera.Text:='';
      edChequera.text:='';
    end;
end;

procedure TFormImportarLoteChePropios.ExportarGrilladeFormato1Click(
  Sender: TObject);
begin
  if OpenDialog.execute then
    begin
      sgPlantilla.SaveToXLS(OpenDialog.FileName);
    end;
end;

procedure TFormImportarLoteChePropios.FormCreate(Sender: TObject);
begin
  AutoSize    := False;
  FIDChequera := -1;
end;

procedure TFormImportarLoteChePropios.FormResize(Sender: TObject);
begin
  if FormImportarLoteChePropios<>nil then
    if FormImportarLoteChePropios.Width<>686 then
      FormImportarLoteChePropios.Width := 686;

end;

procedure TFormImportarLoteChePropios.spAyudaFormatoClick(Sender: TObject);
begin
 if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportarLoteChePropios.spLeerExcelClick(Sender: TObject);
var Nombre:String;
c,r:Integer;
ColName:String;
begin
  inherited;
  pnAviso.Visible:=False;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;

        sgCheques.LoadFromXLS(edPath.Text);
        Screen.Cursor:=crHourGlass;
        mtCheques.Close;
        mtCheques.FieldDefs.Clear;
        for c:= 0 to sgCheques.ColCount - 1 do
          begin
            if Trim(sgCheques.Cells[c,0])<>'' Then
            mtCheques.FieldDefs.Add(sgCheques.Cells[c,0],ftString,50,False);
          end;
        mtCheques.Open;

        mtCheques.DisableControls;
        for r:= 1 to sgCheques.RowCount - 1 do
          begin
            if Trim(sgCheques.Cells[1,r])<>'' then
              begin
                mtCheques.Append;
                for c:= 0 to sgCheques.ColCount - 1 do
                  begin
                    ColName       :=sgCheques.Cells[c,0];
                    if mtCheques.FindField(ColName)<>nil then
                      mtCheques.FieldByName(ColName).Value:=sgCheques.Cells[c,r];
                  end;
                mtCheques.Post;
              end;
          end;
        mtCheques.EnableControls;
      end;
  Screen.Cursor:=crDefault;

end;

end.
