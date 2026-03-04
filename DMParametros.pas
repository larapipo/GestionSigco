UNIT DMParametros;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  DBTables, Db, Wwtable, Wwdatsrc, Librerias, Wwquery, DBClient, wwclient,
  Provider;

TYPE
  TDatosParametros = CLASS(TDataModule)
    wwDSVendedor: TwwDataSource;
    wwTVendedor: TwwTable;
    wwTVendedorCodigo: TStringField;
    wwTVendedorNombre: TStringField;
    wwTVendedorDireccion: TStringField;
    wwTVendedorTelefono: TStringField;
    wwTVendedorCelular: TStringField;
    wwTVendedorComision: TFloatField;
    wwTGenerico: TwwTable;
    PROCEDURE wwTVendedorBeforeInsert(DataSet: TDataSet);
    PROCEDURE wwTVendedorAfterInsert(DataSet: TDataSet);
    //    procedure wwTSucursalAfterInsert(DataSet: TDataSet);
    //    procedure wwTSucursalFacturaAGetText(Sender: TField; var Text: String;
    //      DisplayText: Boolean);
    PROCEDURE wwTVendedorNewRecord(DataSet: TDataSet);
    PROCEDURE DataModuleDestroy(Sender: TObject);
    //    procedure wwTSucursalBeforeInsert(DataSet: TDataSet);
    {    procedure wwDSFPagoStateChange(Sender: TObject);}
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  DatosParametros: TDatosParametros;
  Dato: STRING;
IMPLEMENTATION

USES UParametros,DMMainForm;

{$R *.DFM}

PROCEDURE TDatosParametros.wwTVendedorBeforeInsert(DataSet: TDataSet);
BEGIN
  Dato := UltimoCodigoStr(DatosParametros.wwTVendedor);
END;

PROCEDURE TDatosParametros.wwTVendedorAfterInsert(DataSet: TDataSet);
BEGIN
  FormParametros.DBEdit1.SetFocus;
  FormParametros.DBEdit1.EditText := Dato;
END;



{*** Con este evento puedo completar ceros a la izquierda en lo datos AlfaNumericos ***}




PROCEDURE TDatosParametros.wwTVendedorNewRecord(DataSet: TDataSet);
BEGIN
  FormParametros.DBEdit1.SetFocus;
END;



PROCEDURE TDatosParametros.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosParametros := NIL;
END;

END.
