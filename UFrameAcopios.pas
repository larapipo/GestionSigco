unit UFrameAcopios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TFrameAcopios = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    lvArticulos: TListView;
    Panel3: TPanel;
    lbCliente: TLabel;
    lbFact: TLabel;
    lbFecha: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
