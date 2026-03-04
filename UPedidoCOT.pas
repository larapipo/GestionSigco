unit UPedidoCOT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFormPedidoCOT = class(TFormABMBase)
    PedirCOT: TAction;
    edTransporteCuit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edTransportePatente: TEdit;
    procedure PedirCOTExecute(Sender: TObject);
  private
    { Private declarations }
    FId_Cpbte         :Integer;
    FSucCpbte         :Integer;
    FNumero           :Integer;
    FCuitEmpresa      :Double;
    FCodigoAFIP       :Integer;
    FTipoComprobante  :string;

    FDestinatario_CUIT                :Double;
    FDestinatario_RAZON_SOCIAL        :String;
    FDestinatario_DOMICILIO_CALLE     :string;
    FDestinatario_DOMICILIO_NUMERO    :Integer;
    FDestinatario_DOMICILIO_CPOSTAL   :String;
    FDestinatario_DOMICILIO_LOCALIDAD :String;
    FDestinatario_DOMICILIO_PROVINCIA :String;
    FDestinatario_CONSUMIDOR_FINAL    :Boolean;

    FOrigen_CUIT                      :Double;
    FOrigen_RAZON_SOCIAL              :string;
    FOrigen_DOMICILIO_CALLE           :string;
    FOrigen_DOMICILIO_NUMERO          :Integer;
    FOrigen_DOMICILIO_CODIGO_POSTAL   :string;
    FOrigen_DOMICILIO_LOCALIDAD       :string;
    FOrigen_DOMICILIO_PROVINCIA       :string;
    FOrigen_ENTREGA_DOMICILIO_ORIGEN  :string;
    FOrigen_TRANSPORTISTA_CUIT        :double;
    FOrigen_PATENTE_VEHICULO          :string;
    FOrigen_IMPORTE                   :double;

    FDetalle :TClientDataSet;

    FCOT     :Integer;

  public
      { Public declarations }
  published
    property Id_Cpbte                         :Integer read FId_Cpbte write FId_Cpbte;
    property SucCpbte                         :Integer read FSucCpbte write FSucCpbte;
    property Numero                           :Integer read FNumero write FNumero;
    property CuitEmpresa                      :double read FCuitEmpresa write FCuitEmpresa;
    property CodigoAFIP                       :Integer read FCodigoAFIP write FCodigoAFIP;
    property TipoComprobante                  :string read FTipoComprobante write FTipoComprobante;

    property Destinatario_CUIT                :Double read FDestinatario_CUIT write FDestinatario_CUIT;
    property Destinatario_RAZON_SOCIAL        :String read FDestinatario_RAZON_SOCIAL write FDestinatario_RAZON_SOCIAL;
    property Destinatario_DOMICILIO_CALLE     :string read FDestinatario_DOMICILIO_CALLE write FDestinatario_DOMICILIO_CALLE;
    property Destinatario_DOMICILIO_NUMERO    :Integer read FDestinatario_DOMICILIO_NUMERO write FDestinatario_DOMICILIO_NUMERO;
    property Destinatario_DOMICILIO_CPOSTAL   :String read FDestinatario_DOMICILIO_CPOSTAL write FDestinatario_DOMICILIO_CPOSTAL;
    property Destinatario_DOMICILIO_LOCALIDAD :String read FDestinatario_DOMICILIO_LOCALIDAD write FDestinatario_DOMICILIO_LOCALIDAD;
    property Destinatario_DOMICILIO_PROVINCIA :String read FDestinatario_DOMICILIO_PROVINCIA write FDestinatario_DOMICILIO_PROVINCIA;
    property Destinatario_CONSUMIDOR_FINAL    :Boolean read FDestinatario_CONSUMIDOR_FINAL write  FDestinatario_CONSUMIDOR_FINAL;

    property Origen_CUIT                      :Double read FOrigen_CUIT write FOrigen_CUIT;
    property Origen_RAZON_SOCIAL              :string read FOrigen_RAZON_SOCIAL write FOrigen_RAZON_SOCIAL;
    property Origen_DOMICILIO_CALLE           :string read FOrigen_DOMICILIO_CALLE write FOrigen_DOMICILIO_CALLE;
    property Origen_DOMICILIO_NUMERO          :Integer read FOrigen_DOMICILIO_NUMERO write FOrigen_DOMICILIO_NUMERO;
    property Origen_DOMICILIO_CODIGO_POSTAL   :string read FOrigen_DOMICILIO_CODIGO_POSTAL write FOrigen_DOMICILIO_CODIGO_POSTAL;
    property Origen_DOMICILIO_LOCALIDAD       :string read FOrigen_DOMICILIO_LOCALIDAD write FOrigen_DOMICILIO_LOCALIDAD;
    property Origen_DOMICILIO_PROVINCIA       :string read FOrigen_DOMICILIO_PROVINCIA write FOrigen_DOMICILIO_PROVINCIA;
    property Origen_ENTREGA_DOMICILIO_ORIGEN  :string read FOrigen_ENTREGA_DOMICILIO_ORIGEN write FOrigen_ENTREGA_DOMICILIO_ORIGEN;
    property Origen_TRANSPORTISTA_CUIT        :Double read FOrigen_TRANSPORTISTA_CUIT write FOrigen_TRANSPORTISTA_CUIT;
    property Origen_PATENTE_VEHICULO          :string read FOrigen_PATENTE_VEHICULO write FOrigen_PATENTE_VEHICULO;
    property Origen_IMPORTE                   :double read FOrigen_IMPORTE write FOrigen_IMPORTE;

    property Detalle :TClientDataSet read FDetalle write FDetalle;

    property Cot:Integer read FCOT write FCOT;
  end;

var
  FormPedidoCOT: TFormPedidoCOT;

implementation

uses
  CotLinker_TLB;
{$R *.dfm}

procedure TFormPedidoCOT.PedirCOTExecute(Sender: TObject);
var
  cliente: ClienteRE;
  cab: IRemito;
  det: IProducto;
begin

    cliente                := CoClienteRE.Create;
    cliente.ModoProduccion := False; // Cambiar a true para trabajar en producción
    cliente.CUIT           := FCuitEmpresa; //20129063662;
    cliente.Password       := '764995'; // Obtenerla segun las instrucciones en www.bitingenieria.com.ar/cotlinker
    cliente.NroPlanta      := 0;
    cliente.NroPuerta      := 1;
    cliente.Fecha          := FormatDateTime('yyyymmdd', Now);
    cliente.NroSecuencial  := 10;
    cliente.Inicializar;

    cab := CoRemito.Create;

    cab.CU_CODIGO_DGI := FCodigoAFIP;// 91;
    cab.CU_TIPO       := FTipoComprobante;//  ' R';
    cab.CU_PREFIJO    := FSucCpbte;// 3;
    cab.CU_NUMERO     := FNumero;// 10;

    cab.FECHA_EMISION                   := FormatDateTime('yyyymmdd', Now);
    cab.FECHA_SALIDA_TRANSPORTE         := FormatDateTime('yyyymmdd', Now);
    cab.SUJETO_GENERADOR                := 'E';
    cab.DESTINATARIO_CONSUMIDOR_FINAL   := FDestinatario_CONSUMIDOR_FINAL;// false;
    cab.DESTINATARIO_TENEDOR            := true;
    cab.DESTINATARIO_CUIT               := FDestinatario_CUIT;// 20939802593;
    cab.DESTINATARIO_RAZON_SOCIAL       := FDestinatario_RAZON_SOCIAL;// 'Razon Social';
    cab.DESTINO_DOMICILIO_CALLE         := FDestinatario_DOMICILIO_CALLE;
    cab.DESTINO_DOMICILIO_NUMERO        := FDestinatario_DOMICILIO_NUMERO;// 1234;
    cab.DESTINO_DOMICILIO_CODIGO_POSTAL := FDestinatario_DOMICILIO_CPOSTAL;// '1234';
    cab.DESTINO_DOMICILIO_LOCALIDAD     := FDestinatario_DOMICILIO_LOCALIDAD;// 'Capital Federal';
    cab.DESTINO_DOMICILIO_PROVINCIA     := FDestinatario_DOMICILIO_PROVINCIA;// 'B';

    cab.ORIGEN_CUIT                     := FOrigen_CUIT;// 20939802593;
    cab.ORIGEN_RAZON_SOCIAL             := FOrigen_RAZON_SOCIAL;// 'razon social';
    cab.ORIGEN_DOMICILIO_CALLE          := FOrigen_DOMICILIO_CALLE;// 'calle';
    cab.ORIGEN_DOMICILIO_NUMERO         := FOrigen_DOMICILIO_NUMERO;// 1234;
    cab.ORIGEN_DOMICILIO_CODIGO_POSTAL  := FOrigen_DOMICILIO_CODIGO_POSTAL;// '1234';
    cab.ORIGEN_DOMICILIO_LOCALIDAD      := FOrigen_DOMICILIO_LOCALIDAD;// 'Avellaneda';
    cab.ORIGEN_DOMICILIO_PROVINCIA      := FOrigen_DOMICILIO_PROVINCIA;// 'B';
    cab.ENTREGA_DOMICILIO_ORIGEN        := FOrigen_ENTREGA_DOMICILIO_ORIGEN;// 'SI';
    cab.TRANSPORTISTA_CUIT              := FOrigen_TRANSPORTISTA_CUIT;// 20939802593;
    cab.PATENTE_VEHICULO                := FOrigen_PATENTE_VEHICULO;// 'AAA111';
    cab.IMPORTE                         := FOrigen_IMPORTE;// 1000;

    cliente.AgregaRemito(cab);

    Detalle.First;
    while not(Detalle.Eof) DO
      begin
        det := CoProducto.Create;
        det.CODIGO_UNICO_PRODUCTO            := Detalle.FieldByName('CODIGOARTICULO').AsString;
        det.RENTAS_CODIGO_UNIDAD_MEDIDA      := 1;
        det.CANTIDAD                         := Trunc(Detalle.FieldByName('CANTIDAD').AsFloat*100);
        det.PROPIO_CODIGO_PRODUCTO           := Detalle.FieldByName('CODIGOARTICULO').AsString;
        det.PROPIO_DESCRIPCION_PRODUCTO      := Detalle.FieldByName('DETALLE').AsString;
        det.PROPIO_DESCRIPCION_UNIDAD_MEDIDA := 'UNIDAD';
        det.CANTIDAD_AJUSTADA                := Trunc(Detalle.FieldByName('CANTIDAD').AsFloat*100);
        cliente.AgregaProducto(det);

        Detalle.Next;

      end;

    cliente.Enviar;


    if cliente.Resultado.TransactionOk then
      begin
        ShowMessage('COT obtenido: ' + IntToStr(cliente.Resultado.COT));
        FCOT:=cliente.Resultado.COT;
      end
    else
      begin
        FCOT:=-1;
        ShowMessage(cliente.Resultado.Errores);
      end;

end;

end.
