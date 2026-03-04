UNIT UMovStock;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, db, DBFilter, Wwintl, StdCtrls,
  ExtCtrls, DBCtrls, wwdbedit, Wwdotdot, Wwdbcomb, wwSpeedButton,
  wwDBNavigator, wwclearpanel, Mask, wwdbdatetimepicker, Grids, Wwdbigrd,
  Wwdbgrid, RXClock, RXCtrls, RXDBCtrl, wwDialog, wwidlg, Buttons, Wwdbdlg,
  {};

TYPE
  TFormMovStock = CLASS(TForm)
    wwIntl1: TwwIntl;
    Panel3: TPanel;
    DBStatusLabel1: TDBStatusLabel;
    RxClock1: TRxClock;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    NuevoArticulo: TwwNavButton;
    wwNavButton6: TwwNavButton;
    EditaArticulo: TwwNavButton;
    ConfirmaArticulo: TwwNavButton;
    CancelaArticulo: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    wwDBComboBox1: TwwDBComboBox;
    DBRadioGroup1: TDBRadioGroup;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    FiltroCpbte: TRxDBFilter;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBStatusLabel2: TDBStatusLabel;
    RxLabel1: TRxLabel;
    wwDBNavigator2Button: TwwNavButton;
    wwSearchDialog1: TwwSearchDialog;
    BitBtn1: TBitBtn;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    MPSAutoSize1: TMPSAutoSize;
    PROCEDURE FormActivate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE DBRadioGroup1Change(Sender: TObject);
    PROCEDURE wwDBLookupCombo1Change(Sender: TObject);
    PROCEDURE ConfirmaArticuloClick(Sender: TObject);
    PROCEDURE CancelaArticuloClick(Sender: TObject);
    PROCEDURE FormKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE wwDBLookupCombo2Change(Sender: TObject);
    PROCEDURE wwDBLookupComboDlg1Exit(Sender: TObject);
    PROCEDURE wwDBGrid1KeyPress(Sender: TObject; VAR Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormMovStock: TFormMovStock;

IMPLEMENTATION

USES

  DMMovStock;

{$R *.DFM}

PROCEDURE TFormMovStock.FormActivate(Sender: TObject);
BEGIN
  AutoSize := True;
  WITH DatosMovStock DO
    BEGIN
      IF wwTTransferenciaCab.Active = False THEN
        BEGIN
          wwTTransferenciaCab.Active := True;
          wwTTransferenciaDet.Active := True;
          wwTDeposito.Active := True;
          wwTSucursal.Active := True;
          wwTStock.Active := True;
          wwTIva.Active := True;
          wwTInscripcion.Active := True;
          IF wwTTransferenciaCabTipoCpbte.AsString = 'AJ' THEN
            wwDBLookupCombo2.Enabled := False
          ELSE
            wwDBLookupCombo2.Enabled := True;
        END;
    END;
END;

PROCEDURE TFormMovStock.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  WITH DatosMovStock DO
    BEGIN
      IF (wwTTransferenciaCab.State IN [dsInsert, dsEdit]) OR
        (wwTTransferenciaDet.State IN [dsInsert, dsEdit]) OR
        (wwTDeposito.State IN [dsInsert, dsEdit]) THEN
        BEGIN
          IF (wwTTransferenciaCab.State IN [dsInsert, dsEdit]) THEN
            BEGIN
              wwTTransferenciaCab.Cancel;
              wwTTransferenciaCab.CancelUpdates
            END;
          IF (wwTTransferenciaDet.State IN [dsInsert, dsEdit]) THEN
            BEGIN
              wwTTransferenciaDet.Cancel;
              wwTTransferenciaDet.CancelUpdates
            END;
          IF (wwTDeposito.State IN [dsInsert, dsEdit]) THEN
            BEGIN
              wwTDeposito.Cancel;
              wwTDeposito.CancelUpdates
            END;
        END;
      wwTTransferenciaCab.Active := False;
      wwTTransferenciaDet.Active := False;
      wwTDeposito.Active := False;
      wwTSucursal.Active := False;
      wwTStock.Active := False;
      wwTIva.Active := False;
      wwTInscripcion.Active := False;
    END;
  Action := caFree;
END;

PROCEDURE TFormMovStock.DBRadioGroup1Change(Sender: TObject);
BEGIN
  IF DatosMovStock.wwDSTransferenciaCab.State IN [dsInsert, dsEdit] THEN
    BEGIN
      WITH DatosMovStock DO
        BEGIN
          IF DBRadioGroup1.Value = 'TX' THEN
            wwDBLookupCombo2.Enabled := True
          ELSE
            wwDBLookupCombo2.Enabled := False;
          wwTTransferenciaCabTipoCpbte.AsString := DBRadioGroup1.Value;
        END;
    END;
END;

PROCEDURE TFormMovStock.wwDBLookupCombo1Change(Sender: TObject);
VAR
  D: STRING;
  Numero: Integer;
BEGIN
  WITH DatosMovStock, wwDBLookupCombo1.LookupTable DO
    BEGIN
      IF wwDSTransferenciaCab.State IN [dsInsert, dsEdit] THEN
        BEGIN
          wwTTransferenciaCabSucFac.Value := FieldByName('Codigo').AsString;
          wwTTransferenciaCabNumeroFac.Value :=
            FieldByName('Transferencias').AsString;
          Numero := wwTTransferenciaCabNumeroFac.AsInteger + 1;
          D := IntToStr(Numero);
          D := Copy('00000000', 1, 8 - Length(D)) + D;
          wwTTransferenciaCabNumeroFac.AsString := D;
          wwTTransferenciaCabNroCpbte.AsString :=
            wwTTransferenciaCabLetraFac.AsString +
            wwTTransferenciaCabSucFac.AsString +
            wwTTransferenciaCabNumeroFac.AsString;
          wwtTransferenciaCabASucursal.Value := wwtTransferenciaCabSucFac.Value;
        END;
    END;
END;

PROCEDURE TFormMovStock.ConfirmaArticuloClick(Sender: TObject);
BEGIN
  TRY
    WITH DatosMovStock DO
      // wwTTransferenciaCab.Post;
      ShowMessage('Operación Realizada!!');
    //    FormMovStock.wwDBGrid1.Refresh;
  EXCEPT
    ON e: exception DO
      ShowMessage('Error: ' + e.Message);
  END;
  DatosMovStock.wwTTransferenciaCab.Edit;
END;

PROCEDURE TFormMovStock.CancelaArticuloClick(Sender: TObject);
BEGIN
  WITH DatosMovStock DO
    BEGIN
      wwTTransferenciaCab.Cancel;
      wwTTransferenciaDet.Cancel;
      wwTDeposito.Cancel;
      wwtTransferenciaCab.CancelUpdates;
      wwtTransferenciaDet.CancelUpdates;
      wwTDeposito.CancelUpdates;
    END;
END;

PROCEDURE TFormMovStock.FormKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF (Key = #13) AND (NOT (ActiveControl IS Tbutton))
    AND (NOT (ActiveControl IS TwwDBGrid)) THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
  IF Key = #27 THEN
    BEGIN
      WITH DatosMovStock DO
        BEGIN
          wwTTransferenciaCab.Cancel;
          wwTTransferenciaDet.Cancel;
          wwTDeposito.Cancel;
          wwtTransferenciaCab.CancelUpdates;
          wwtTransferenciaDet.CancelUpdates;
          wwTDeposito.CancelUpdates;
        END;
    END;
END;

PROCEDURE TFormMovStock.wwDBLookupCombo2Change(Sender: TObject);
BEGIN
  WITH DatosMovStock DO
    IF (wwTTransferenciaCabSucFac.AsString =
      wwTTransferenciaCabASucursal.AsString) AND
      (wwDBLookupCombo2.Enabled = True) THEN
      BEGIN
        IF (wwDSTransferenciaCab.State IN [dsInsert, dsEdit]) THEN
          BEGIN
            wwTTransferenciaCabASucursal.AsString := '';
            wwDBLookupCombo2.SetFocus;
          END;
      END;
END;

PROCEDURE TFormMovStock.wwDBLookupComboDlg1Exit(Sender: TObject);
BEGIN
  //  IF Not(DatosMovStock.wwTStock.Locate('Codigo_Stk',datosMovStock.wwTTransferenciaDetCodigoArticulo.AsString,[]))
  //  THEN
  //  IF DatosMovStock.wwTTransferenciaDet.State IN [dsInsert,dsEdit] THEN
  //  begin
  //    DatosMovStock.wwTTransferenciaDetCodigoArticulo.AsString:='';
  //    wwDBLookupComboDlg1.SetFocus;
  //  END;

END;

PROCEDURE TFormMovStock.wwDBGrid1KeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF Key = #46 THEN
    Key := #44;
END;

END.
