unit UPruebaCheckTreew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, JvBaseDlg, JvProgressDialog, ComCtrls,
  JvExComCtrls, JvComCtrls, JvCheckTreeView, DB, DBClient, Provider, SqlExpr,
  Wwintl, JvComponentBase, JvFormPlacement, ImgList, wwDialog, wwidlg, ActnList,
  JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin,
  ExtCtrls;

type
  TFormABMBase1 = class(TFormABMBase)
    QCuenta: TSQLQuery;
    DSPCuenta: TDataSetProvider;
    CDSCuenta: TClientDataSet;
    CDSCuentaCODIGO: TStringField;
    CDSCuentaCODIGO_RUBRO: TStringField;
    CDSCuentaDETALLE: TStringField;
    CDSRubros: TClientDataSet;
    CDSRubrosCODIGO: TStringField;
    CDSRubrosDETALLE: TStringField;
    DSPRubros: TDataSetProvider;
    QRubros: TSQLQuery;
    tvListado: TJvCheckTreeView;
    pdProgress: TJvProgressDialog;
    ilFlatChecks: TImageList;
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABMBase1: TFormABMBase1;

implementation

{$R *.dfm}

procedure TFormABMBase1.BuscarExecute(Sender: TObject);
VAR
  Nodo1: TTreeNode;
  N, M: Integer;
BEGIN
  Nodo1 := NIL;
  tvListado.Items.Clear;

  CDSCuenta.Close;
  CDSRubros.Close;
  CDSRubros.Open;
  CDSRubros.First;
  pdProgress.Min:=0;
  pdProgress.Max:=CDSRubros.RecordCount-1;
  pdProgress.Position:=0;
  pdProgress.Show;
  WHILE NOT (CDSRubros.Eof) DO
    BEGIN
      pdProgress.Position:=pdProgress.Position+1;
      Application.ProcessMessages;
      Nodo1 := tvListado.Items.Add(NIL, CDSRubrosCODIGO.AsString + '-' +
        CDSRubrosDETALLE.Value);
     // Nodo1.ImageIndex:=1;
      tvListado.CheckBox[Nodo1] := True;
      tvListado.Checked[Nodo1]  := False;
      tvListado.Selected := Nodo1;
     // Nodo1.MakeVisible;
      N := tvListado.Selected.AbsoluteIndex;
      CDSCuenta.Close;
      CDSCuenta.Params.ParamByName('id').Value := CDSRubrosCODIGO.Value;
      CDSCuenta.Open;
      WHILE NOT (CDSCuenta.Eof) DO
        BEGIN
          Nodo1 := tvListado.Items.AddChild(tvListado.Items[N],
            CDSCuentaCODIGO.AsString + '-' + CDSCuentaDETALLE.Value);
          tvListado.Selected := Nodo1;
          M := tvListado.Selected.AbsoluteIndex;
          CDSCuenta.Next;
        END;
      CDSRubros.Next;
    END;
  pdProgress.Hide;
end;

end.
