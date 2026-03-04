unit DMMainForm;

interface

uses
  Wwquery, Db, DBTables, DBClient,Windows,
  wwclient, Provider, Classes, Forms,SysUtils,Dialogs;

type
  TDMMain = class(TDataModule)
    DatabaseContable: TDatabase;
    Database: TDatabase;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public

      { Public declarations }
  end;

var
  DMMain: TDMMain;


implementation

{$R *.DFM}







procedure TDMMain.DataModuleDestroy(Sender: TObject);
begin
  DMMain := nil;
end;

end.

