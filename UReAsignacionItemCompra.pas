unit UReAsignacionItemCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, vcl.wwintl, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, vcl.wwDialog, vcl.wwIDlg, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, JvDBLookup, Vcl.Mask,
  JvExMask, JvToolEdit;

type
  TFormReASignacionItemsCompras = class(TFormABMBase)
    Panel2: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    Label2: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReASignacionItemsCompras: TFormReASignacionItemsCompras;

implementation

{$R *.dfm}

end.
