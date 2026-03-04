UNIT UParametros;

INTERFACE

USES
    Windows,RXClock, RXCtrls, RXDBCtrl, ExtCtrls, wwSpeedButton,
    wwDBNavigator, Controls, wwclearpanel, StdCtrls, Mask, DBCtrls, ComCtrls,
    Classes,Forms,Messages;



TYPE
  TFormParametros = CLASS(TForm)
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton37: TwwNavButton;
    wwNavButton38: TwwNavButton;
    wwNavButton39: TwwNavButton;
    wwNavButton40: TwwNavButton;
    wwNavButton41: TwwNavButton;
    wwNavButton42: TwwNavButton;
    wwNavButton43: TwwNavButton;
    wwNavButton44: TwwNavButton;
    wwNavButton45: TwwNavButton;
    Panel1: TPanel;
    RxClock1: TRxClock;
    DBStatusLabel1: TDBStatusLabel;
    MPSAutoSize1: TMPSAutoSize;
    wwDBNavigator4Button: TwwNavButton;
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE PageControl1Change(Sender: TObject);
    PROCEDURE FormKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE wwDBNavigator1ButtonClick(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormParametros: TFormParametros;

IMPLEMENTATION

USES DMParametros;

{$R *.DFM}

PROCEDURE TFormParametros.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  WITH DatosParametros DO
    BEGIN
      wwTVendedor.Active := False;
      wwTGenerico.Active := False;
    END;
  Action := caFree;
END;

PROCEDURE TFormParametros.PageControl1Change(Sender: TObject);
BEGIN
  WITH FormParametros, DatosParametros DO
    BEGIN
      wwTGenerico.Active := False;
      CASE PageControl1.ActivePage.PageIndex OF
        0:
          BEGIN
            // Vendedores
            DBStatusLabel1.DataSource := wwDSVendedor;
            wwTGenerico.TableName := 'Vendedores';
          END;
      END;
      wwtGenerico.Active := True;
    END;
END;

PROCEDURE TFormParametros.FormKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
  IF (Key = #13) AND (NOT (ActiveControl IS Tbutton)) THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
END;
//***************************************************************
//***************************************************************

PROCEDURE TFormParametros.FormCreate(Sender: TObject);
BEGIN
  IF NOT (Assigned(DatosParametros)) THEN
    Application.CreateForm(TDatosParametros, DatosParametros);
  WITH DatosParametros DO
    BEGIN
      wwTVendedor.Active := True;
      wwTGenerico.TableName := 'Gravamen';
      wwTGenerico.Active := True;
    END;
  PageControl1.ActivePageIndex := 0;
  AutoSize := True;
END;

PROCEDURE TFormParametros.wwDBNavigator1ButtonClick(Sender: TObject);
BEGIN
  Close;
END;

PROCEDURE TFormParametros.FormDestroy(Sender: TObject);
BEGIN
  FormParametros := NIL;
  DatosParametros.Free;
END;

PROCEDURE TFormParametros.FormShow(Sender: TObject);
BEGIN
  PageControl1.ActivePageIndex := 0;
END;

END.
