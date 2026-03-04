unit UControlAplicacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvGradient, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, Mask, rxToolEdit, Buttons, ExtCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel;

type
  TFormSumaAplicaciones = class(TForm)
    pnSuma: TJvPanel;
    pnBtn: TPanel;
    spCancel: TSpeedButton;
    spPegar: TSpeedButton;
    pnTotal: TPanel;
    ceSuma: TComboEdit;
    dbgSuma: TJvDBGrid;
    Panel3: TPanel;
    SpeedButton2: TSpeedButton;
    JvGradient1: TJvGradient;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSumaAplicaciones: TFormSumaAplicaciones;

implementation

uses DMOPagos,UOPago_2;
{$R *.dfm}

end.
