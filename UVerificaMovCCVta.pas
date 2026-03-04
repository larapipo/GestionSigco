UNIT UVerificaMovCCVta;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls;

TYPE
  TFormVerificaMovCCVta = CLASS(TForm)
    QMov: TQuery;
    DSMov: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    PROCEDURE Button1Click(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormVerificaMovCCVta: TFormVerificaMovCCVta;

IMPLEMENTATION

{$R *.DFM}
USES DMMainForm;

PROCEDURE TFormVerificaMovCCVta.Button1Click(Sender: TObject);
BEGIN
  QMov.Open;
END;

PROCEDURE TFormVerificaMovCCVta.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  QMov.Close;
  Action := caFree;
END;

PROCEDURE TFormVerificaMovCCVta.FormDestroy(Sender: TObject);
BEGIN
  FormVerificaMovCCVta := NIL;
END;

END.
