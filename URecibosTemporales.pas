unit URecibosTemporales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TFormReciboTemporal = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    pnBase: TPanel;
    QRecibos: TFDQuery;
    dgRecibos: TDBGrid;
    DSRecibos: TDataSource;
    QRecibosID: TIntegerField;
    QRecibosCLIENTE: TStringField;
    QRecibosNOMBRE: TStringField;
    QRecibosFECHAPAGO: TSQLTimeStampField;
    QRecibosIMPORTE: TFloatField;
    BitBtn1: TBitBtn;
    QBorrarRc: TFDQuery;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    BorrarItem: TAction;
    BorrarItem1: TMenuItem;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dgRecibosDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BorrarItemExecute(Sender: TObject);
  private
    { Private declarations }
    FID:Integer;
    FCodigo:string;
    FImporte:Extended;
  public
    { Public declarations }
  published
    property ID:Integer read FID write FID;
    property Importe:Extended read FImporte write FImporte;
    property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormReciboTemporal: TFormReciboTemporal;

implementation

uses
  UDMain_FD;

{$R *.dfm}

procedure TFormReciboTemporal.BitBtn1Click(Sender: TObject);
begin
  FID      := -1;
  FImporte := 0;
  FCodigo  := '';

end;

procedure TFormReciboTemporal.BorrarItemExecute(Sender: TObject);
begin
  if (QRecibosID.AsString<>'') and (QRecibosID.Value>0) then
    if MessageDlg('Boorar Item...??',TMsgDlgType.mtConfirmation,mbYesNo,0,mbNo)=mrYes then
      begin
        QBorrarRc.Close;
        QBorrarRc.ParamByName('id').Value:=QRecibosID.Value;
        QBorrarRc.ExecSQL;
        QBorrarRc.Close;
        QRecibos.Close;
        QRecibos.Open;
      end;
end;

procedure TFormReciboTemporal.dgRecibosDblClick(Sender: TObject);
begin
  FID      := QRecibosID.Value;
  FImporte := QRecibosIMPORTE.Value;
  FCodigo  := QRecibosCLIENTE.Value;
  if FID>0 Then BorrarItem.Execute;

  Close;
end;

procedure TFormReciboTemporal.FormDestroy(Sender: TObject);
begin
  FormReciboTemporal:=nil;
end;

procedure TFormReciboTemporal.FormShow(Sender: TObject);
begin
  QRecibos.Close;
  QRecibos.Open;
end;

end.
