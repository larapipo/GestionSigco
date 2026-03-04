unit UCuentas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, wwDialog, wwidlg, rxrxPlacemnt, Db,
  DBTables, Wwintl, ActnList, ImgList, RXClock, Buttons, ToolWin, ComCtrls,
  ExtCtrls, RXCtrls, RXDBCtrl;

type
  TFormCuentas = class(TFormABMBase)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCuentas: TFormCuentas;

implementation

{$R *.DFM}

end.
