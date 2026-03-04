unit demoMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  CotLinker_TLB;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  cliente: ClienteRE;
  cab: IRemito;
  det: IProducto;
begin

    cliente                := CoClienteRE.Create;
    cliente.ModoProduccion := false; // Cambiar a true para trabajar en producción
    cliente.CUIT           := 20129063662;//20939802593;
    cliente.Password       := '724791'; // Obtenerla segun las instrucciones en www.bitingenieria.com.ar/cotlinker
    cliente.NroPlanta      := 0;
    cliente.NroPuerta      := 1;
    cliente.Fecha          := FormatDateTime('yyyymmdd', Now);
    cliente.NroSecuencial  := 10;
    cliente.Inicializar;

    cab := CoRemito.Create;

    cab.CU_CODIGO_DGI :=  91;
    cab.CU_TIPO       := ' R';
    cab.CU_PREFIJO    := 5;
    cab.CU_NUMERO     := 10;

    cab.FECHA_EMISION                   := FormatDateTime('yyyymmdd', Now);
    cab.FECHA_SALIDA_TRANSPORTE         := FormatDateTime('yyyymmdd', Now);
    cab.SUJETO_GENERADOR                := 'E';
    cab.DESTINATARIO_CONSUMIDOR_FINAL   :=  false;
    cab.DESTINATARIO_TENEDOR            := true;
    cab.DESTINATARIO_CUIT               := 20939802593;
    cab.DESTINATARIO_RAZON_SOCIAL       := 'Razon Social';
    cab.DESTINO_DOMICILIO_CALLE         := 'calle';
    cab.DESTINO_DOMICILIO_NUMERO        := 1234;
    cab.DESTINO_DOMICILIO_CODIGO_POSTAL := '1234';
    cab.DESTINO_DOMICILIO_LOCALIDAD     := 'Capital Federal';
    cab.DESTINO_DOMICILIO_PROVINCIA     := 'B';
    cab.ORIGEN_CUIT                     :=  20939802593;
    cab.ORIGEN_RAZON_SOCIAL             := 'razon social';
    cab.ORIGEN_DOMICILIO_CALLE          := 'calle';
    cab.ORIGEN_DOMICILIO_NUMERO         := 1234;
    cab.ORIGEN_DOMICILIO_CODIGO_POSTAL  := '1234';
    cab.ORIGEN_DOMICILIO_LOCALIDAD      := 'Avellaneda';
    cab.ORIGEN_DOMICILIO_PROVINCIA      := 'B';
    cab.ENTREGA_DOMICILIO_ORIGEN        := 'SI';
    cab.TRANSPORTISTA_CUIT              := 20939802593;
    cab.PATENTE_VEHICULO                := 'AAA111';
    cab.IMPORTE                         := 1000;

    cliente.AgregaRemito(cab);

    det := CoProducto.Create;

    det.CODIGO_UNICO_PRODUCTO            := '010100';
    det.RENTAS_CODIGO_UNIDAD_MEDIDA      := 1;
    det.CANTIDAD                         := 1000;
    det.PROPIO_CODIGO_PRODUCTO           := 'prod1';
    det.PROPIO_DESCRIPCION_PRODUCTO      := 'producto 1';
    det.PROPIO_DESCRIPCION_UNIDAD_MEDIDA := 'UNIDAD';
    det.CANTIDAD_AJUSTADA                := 1000;

    cliente.AgregaProducto(det);

    cliente.Enviar;


    if cliente.Resultado.TransactionOk then
      ShowMessage('Felicitaciones! COT obtenido: ' + IntToStr(cliente.Resultado.COT))
    else
      ShowMessage(cliente.Resultado.Errores);
end;

end.
