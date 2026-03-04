unit UBusca_Det_Ing_Egre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, Vcl.Buttons;

type
  TFormBusdadorDetIngEgr = class(TForm)
    pnDetalle: TPanel;
    dbgResultado: TDBGrid;
    pnPie: TPanel;
    pnCabecera: TPanel;
    QMovimientosEgre: TFDQuery;
    DSMovimientos: TDataSource;
    lbTitulo: TLabel;
    edFind: TJvDBFindEdit;
    Label2: TLabel;
    QMovimientosEgreCLASECPBTE: TStringField;
    QMovimientosEgreFECHA: TSQLTimeStampField;
    QMovimientosEgreNROCPBTE: TStringField;
    QMovimientosEgreDETALLE: TStringField;
    QMovimientosEgreIMPORTE: TFloatField;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    QMovimientosEgreID_EGRESO: TIntegerField;
    QMovimientosEgreTIPOCPBTE: TStringField;
    QMovimientosIngr: TFDQuery;
    QMovimientosIngrID_INGRESO: TIntegerField;
    QMovimientosIngrTIPOCPBTE: TStringField;
    QMovimientosIngrCLASECPBTE: TStringField;
    QMovimientosIngrFECHA: TSQLTimeStampField;
    QMovimientosIngrNROCPBTE: TStringField;
    QMovimientosIngrDETALLE: TStringField;
    QMovimientosIngrIMPORTE: TFloatField;
    procedure edFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbgResultadoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
  published
    property Id:Integer Read FId write FId;
  end;

var
  FormBusdadorDetIngEgr: TFormBusdadorDetIngEgr;

implementation

uses UDMain_FD, UEgresoCaja, UIngresoCaja;
{$R *.dfm}

procedure TFormBusdadorDetIngEgr.btCancelarClick(Sender: TObject);
begin
  fid   :=-1;
end;

procedure TFormBusdadorDetIngEgr.btOkClick(Sender: TObject);
begin
  if FormBusdadorDetIngEgr.Owner=FormIngresoCaja then
    FId   := QMovimientosIngrID_INGRESO.Value
  else
    if FormBusdadorDetIngEgr.Owner=FormEgresoCaja then
      FId   := QMovimientosEgreID_EGRESO.Value
end;

procedure TFormBusdadorDetIngEgr.dbgResultadoDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBusdadorDetIngEgr.edFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_DOWN then
      begin
        dbgResultado.SetFocus;
        if Not(dbgResultado.DataSource.DataSet.Eof) then
          dbgResultado.DataSource.DataSet.Next;
      end
   else
     if Key = VK_UP then
        begin
          dbgResultado.SetFocus;
          if Not(dbgResultado.DataSource.DataSet.Bof) then
            dbgResultado.DataSource.DataSet.Prior;
        end;
  edFind.SetFocus;

end;

procedure TFormBusdadorDetIngEgr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBusdadorDetIngEgr.FormCreate(Sender: TObject);
begin
 
  AutoSize:=True;
end;

procedure TFormBusdadorDetIngEgr.FormDestroy(Sender: TObject);
begin
  FormBusdadorDetIngEgr:=nil;
end;

procedure TFormBusdadorDetIngEgr.FormShow(Sender: TObject);
begin
  QMovimientosEgre.Close;
  QMovimientosIngr.Close;
  if FormBusdadorDetIngEgr.Owner=FormIngresoCaja then
    begin
      lbTitulo.caption:='Buscador x Detalle de Ingresos';
      DSMovimientos.DataSet:= QMovimientosIngr;
      QMovimientosIngr.Open;
    end
  else
  if FormBusdadorDetIngEgr.Owner=FormEgresoCaja then
    begin
      lbTitulo.caption:='Buscador x Detalle de Egresos';
      DSMovimientos.DataSet:= QMovimientosEgre;
      QMovimientosEgre.Open;
    end;
  edFind.SetFocus;
end;

end.
