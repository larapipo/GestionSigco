unit URtoTroqueles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Datasnap.DBClient, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, Vcl.ExtCtrls, JvExControls, JvLabel, JvDBControls;

type
  TFormRtoTroqueles = class(TForm)
    dbgRtoTRoqueles: TDBGrid;
    dbgTroqueles: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    edBuscador: TJvDBFindEdit;
    Label3: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure dbgRtoTRoquelesDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgRtoTRoquelesDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgTroquelesTitleClick(Column: TColumn);
    procedure edBuscadorChange(Sender: TObject);
    procedure edBuscadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRtoTroqueles: TFormRtoTroqueles;

implementation

uses DMRemitos;
{$R *.dfm}

procedure TFormRtoTroqueles.dbgRtoTRoquelesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if DatosRemitos.CDSRtoCab.State<>dsBrowse then
    begin
      if (DatosRemitos.CDSRtoTroqueles.recordCount<DatosRemitos.CDSRtoDetCANTIDAD.AsInteger) then
        begin
          if Not(DatosRemitos.CDSRtoTroqueles.Locate('ID_TROQUEL',dbgTroqueles.DataSource.DataSet.FieldByName('ID').AsString,[])) Then
            begin
              DatosRemitos.CDSRtoTroqueles.Append;
              WITH (Source AS TDBGrid).DataSource.DataSet DO
                BEGIN
                  DatosRemitos.CDSRtoTroquelesID_TROQUEL.Value   := FieldByName('ID').Value;
                  DatosRemitos.CDSRtoTroquelesNRO_TROQUEL.Value  := FieldByName('NRO_TROQUEL').Value;
                END;
              DatosRemitos.CDSRtoTroqueles.Post;
            end;
        end;
    end
  else
    ShowMessage('Debe estar en modo Ingreso/Edicion');
  edBuscador.SetFocus;
  edBuscador.SelectAll;
end;

procedure TFormRtoTroqueles.dbgRtoTRoquelesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  IF Source = dbgTroqueles THEN
    accept := True
  ELSE
    Accept := False;

  if DatosRemitos.CDSRtoCab.State=dsBrowse then
    Accept:=False;

end;

procedure TFormRtoTroqueles.dbgTroquelesTitleClick(Column: TColumn);
var Campo:String;
begin
 try
    Campo := Column.FieldName;
    with dbgTroqueles.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormRtoTroqueles.edBuscadorChange(Sender: TObject);
var Aux:String;
begin
  if Trim(EdBuscador.Text)<>'' then
    begin
      //Aux:=Copy('00000000',1,8-(Length(Trim(EdBuscador.Text))))+Trim(EdBuscador.Text);
      DatosRemitos.CDSTroqueles.Locate('NRO_TROQUEL',Trim(Aux),[loPartialKey]);
    end;
end;

procedure TFormRtoTroqueles.edBuscadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then
    begin
      key:=0;
      dbgRtoTRoquelesDragDrop(Sender, dbgTroqueles,10,10);
      EdBuscador.Text:='';
      EdBuscador.SetFocus;
    end
end;

procedure TFormRtoTroqueles.FormShow(Sender: TObject);
begin
  edBuscador.SetFocus;
  edBuscador.SelectAll;
  BringToFront;
end;

end.
