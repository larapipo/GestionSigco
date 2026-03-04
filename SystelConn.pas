unit SystelConn;

Interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  VaClasses, VaComm, VaControls, dxmdaset;

type

  TPesoActual=Record
     Peso   :currency;
     Estable:char;
     Tara   :Currency;
  end;

  TPaquetePLU=Record
    NroPLU            :string[4];     //numero del 1..4000
    VersionPLU        :String[1];     //Indica si el plu se creo en la balanza / pc
    NombrePLU         :String[18];    //Descripcion
    PrecioLista1      :String[6];     //precio sin punto
    PrecioLista2      :String[6];     //Precio sin punto
    CodigoPLU         :String[5];     //de 00000 a 99997
    NroSeccion        :String[2];     //01 a 99
    DiasVencimiento   :String[4];     //0000 sin vencimiento
    TipoVenta         :String[1];     //P=Pesable o U=Unitario
    TaraPLU           :String[6];     //000000 sin no tiene
    MantenerTotales   :string[1];     // N o M, Nuevo o una modificacion
    Ingredientes      :String[1];     // S o N
    IngredientesOtros :String[100];   //''
  End;

 TPaquetePLUEx=Record
    NroPLU              :string[4];     //numero del 1..8000
    NombrePLU           :String[18];    //Descripcion
    PrecioLista1        :String[6];     //precio sin punto
    PrecioLista2        :String[6];     //Precio sin punto
    CodigoPLU           :String[5];     //de 00000 a 99997
    NroSeccion          :String[2];     //01 a 99
    DiasVencimiento     :String[4];     //0000 sin vencimiento
    TipoVenta           :String[1];     //P=Pesable o U=Unitario E=Escurrido C=Congelado
    TaraPLU             :String[6];     //000000 sin no tiene
    PorcentajeAgua      :String[4];     //0000 sin vencimiento
    TablaNutricional_0  :String[1];     //S o N
    TablaNutricional_1  :String[30];    //Descripcion
    TablaNutricional_2  :String[4];     //KAlorias
    TablaNutricional_3  :String[4];     //CarboHidratos
    TablaNutricional_4  :String[4];     //Proteinas
    TablaNutricional_5  :String[4];     //Grasas Totales
    TablaNutricional_6  :String[4];     //Grasas Saturadas
    TablaNutricional_7  :String[4];     //Grasas Trans
    TablaNutricional_8  :String[4];     //Fibras
    TablaNutricional_9  :String[4];     //Sodio
    Origen              :String[4];     //Indica el Origen
    Conservacion        :String[4];     //Nro que asocia el mensaje de conservacion
    Recetas             :String[4];     //Nro asociacioon receta
    NroLote             :String[12];    //Nro Lote
    ConfiguracionEAN    :String[1];     //ean 0 genearl/1 del plu-2 no utilizable - 3 ean suma
    ConfiguracionEAN_N  :String[12];    //Persoanliza codigo barra ej 20999IIIII
    Ingredientes        :String[1];     //S/N si posee ingredientes
    IngredientesOtros   :String[100];   //''
  End;

  TPaqueteCambioPrecioPLU=record
    NroPLU       :String[4];
    VersionPLU   :String[1];
    PrecioLista1 :String[6];
    PrecioLista2 :String[6];
  end;

  TPaqueteSeccion=Record
    NroSeccion  :String[2];
    Descripcion :String[18];
  End;

  TPaqueteVendedores=record
    Nro    :String[1];
    Nombre :String[18];
  end;

  TPaqueteDatosComercio=record
    Linea1 :string[18];
    Linea2 :string[34];
  end;

  TPaqueteAccesoDirecto=record
    NroAcceso:string[2];
    NroPLU   :String[4];
  end;

  TConfigCodigoBarras=record
    TipoCodigo:String[1];  {S=Configuración del código de barras para suma de artículos
                            P=Configuración del código de barras para artículos de venta por Peso
                            U=Configuración del código de barras para artículos de venta por Unidad }
    DatosCodigo:String[12];{0,1,...,9= Números fijos
                            I=Importe
                            B=Balanza
                            P=Código del PLU (Solo Tipo de código =  “ I ”)
                            C=Cantidad (kg o unidades) (Solo Tipo de código =  “ I ”)
                            S=Sección (Solo Tipo  de código =  “I ”)
                            A=Cantidad de artículos sumados (Solo Tipo  de código = “ S ”)}
  end;

  TSystelConnect=class(tcomponent)
  private
    fComm        : TVAComm;
    fId          : integer;
    fPort        : integer;
    fError       : Integer;
    fRespuesta   : string;
    fMemData     : TDXMemData;
    fOnCargaPLU  : TNotifyEvent;
    fCoeficiente : Integer;
  protected
    procedure fCommError(Sender: TObject; Errors: Integer);
    Procedure fCommRxChar(Sender: TObject; Count: Integer);
    Function EsperaRespuesta:boolean;
  public
    Constructor Create(AOwner:TComponent); virtual;
    Procedure Connect;
    Procedure Disconnect;
    Procedure Ping;
    Procedure Apagar;
    Procedure ConfigCodigoBarras(Paquete:TConfigCodigoBarras);
    Procedure SetMarquesina(Texto:String);
    Procedure SetFechayHora;
    Procedure GetFechayHora;
    Procedure SetDatosComercio(Paquete:TPaqueteDatosComercio);
    Procedure ConfigPermisoPrecios(permiso:string);
    Procedure ConfiguracionGeneral(SumaEnEtiqueta:char; CodBarraxProd:char);

    Procedure PesoActual(var Resultado:TPesoActual);

    Procedure StartSinco;
    Procedure EndSincro;

    Procedure GrabaVendedor(Paquete:TPaqueteVendedores);

    Procedure EnvioPLU(Paquete:TPaquetePLU);
    Procedure EnvioPLUeX(Paquete:TPaquetePLUEx);
    Procedure GetPLUCargados;
    Procedure BorraPLU(Nro:String);
    Procedure CambioPrecioPLU(Paquete:TPaqueteCambioPrecioPLU);

    Procedure SetAccesoDirecto(Paquete:TPaqueteAccesoDirecto);
    Procedure GetAccesosDirectos;
    Procedure BorraAccesoDirecto(Nro:String);

    Procedure EnvioSeccion(Paquete:TPaqueteSeccion);
    Procedure GetSeccionesCargados;
    Procedure BorrarSeccion(Nro:String);

    Procedure SolicitudPLUEx(Nro:String);

    Procedure ShowForm;

  published
    Property Id:integer read fId write fId default 20;
    property Port:Integer read fPort write fPort default 1;
    Property Respuesta:string read fRespuesta;
    Property MemData:Tdxmemdata read fMemData write fMemData;
    Property OnCargaPLU:TNotifyEvent read fOnCargaPLU write fOnCargaPLU;
    Property Coeficiente:Integer read fCoeficiente write fCoeficiente;

  end;

implementation

uses SystelConnFrm;


FUNCTION  Cadena(Caracter:CHAR; Cuantos:BYTE):STRING;
VAR Cont1:INTEGER; Serie:STRING;
BEGIN
   Serie:='';
   FOR Cont1:=1 TO Cuantos DO Serie:=Serie+Caracter;
   Cadena:=Serie;
END;

FUNCTION StrFix(Serie:STRING; Caracter:CHAR;
                Cuanto:INTEGER; Sentido:BOOLEAN):STRING;
BEGIN
  serie:=copy(serie,1,cuanto);
  IF Sentido=TRUE THEN StrFix:=Serie+Cadena(Caracter,Cuanto-LENGTH(Serie))
    ELSE
      StrFix:=Cadena(Caracter,Cuanto-LENGTH(Serie))+Serie;
END;

Function CompletaPaquete(dato:string):string;
var
  x,a: Integer;
  r:byte;
begin
   r:=0;
   for x := 1 to length(dato) do
   begin
      a:=ord(dato[x]);
      r:=r xor a;
   end;
   result:=dato+chr(r);
end;

Function checkPaquete(dato:string):boolean;
var a:string;
begin
   a:=dato;
   delete(a,length(dato),1);
   result:=completapaquete(a)=dato;
end;

{ TSystelConnect }

procedure TSystelConnect.Apagar;  ////////////////////////////////// apagar el equipo
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#26);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
        end;
        Disconnect;
      end;
   end;
end;

procedure TSystelConnect.BorraAccesoDirecto(Nro: String);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#24+strfix(nro,'0',2,false));
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.BorraPLU(Nro: String);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta := '';
      mensaje    := chr(fid)+#5+strfix(nro,'0',4,false);
      Mensaje    := CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.BorrarSeccion(Nro: String);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta := '';
      mensaje    := chr(fid)+#9+strfix(Nro,'0',2,false);
      Mensaje    := CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.CambioPrecioPLU(Paquete: TPaqueteCambioPrecioPLU);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=chr(fid)+#33+strfix(Paquete.NroPLU,'0',4,false)+
                            Paquete.VersionPLU+
                            strfix(paquete.PrecioLista1,'0',6,false)+
                            strfix(paquete.PrecioLista2,'0',6,false);
      Mensaje:=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.ConfigCodigoBarras(Paquete: TConfigCodigoBarras);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=chr(fid)+#8+Paquete.TipoCodigo+
                           Paquete.DatosCodigo;
      Mensaje:=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.ConfigPermisoPrecios(permiso: string);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#40+Permiso);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.ConfiguracionGeneral(SumaEnEtiqueta,
  CodBarraxProd: char);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#7+sumaenetiqueta+codbarraxprod);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.Connect;
begin
   fComm.PortNum:=fPort;
   fComm.Open;
end;

constructor TSystelConnect.Create(AOwner: TComponent);
begin
   fComm:=tvacomm.Create(self);
   fComm.Baudrate    := br115200;
   fcomm.DirectWrite := true;
   fcomm.OnError     := fCommError;
   fComm.OnRxChar    := fCommRxChar;
end;



procedure TSystelConnect.Disconnect;
begin
  fcomm.Close;
end;

procedure TSystelConnect.EndSincro;
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#25);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.EnvioPLU(Paquete: TPaquetePLU);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje :=chr(fid)+#4+strfix(Paquete.NroPLU,'0',4,false)+
                           Paquete.VersionPLU+
                           strfix(Paquete.NombrePLU,' ',18,true)+
                           strfix(Paquete.PrecioLista1,'0',6,false)+
                           strfix(paquete.PrecioLista2,'0',6,false)+
                           strfix(paquete.CodigoPLU,'0',5,false)+
                           strfix(paquete.NroSeccion,'0',2,false)+
                           strfix(paquete.DiasVencimiento,'0',4,false)+
                           paquete.TipoVenta+
                           strfix(paquete.TaraPLU,'0',6,false)+
                           paquete.MantenerTotales+
                           paquete.Ingredientes+
                           paquete.IngredientesOtros;
      Mensaje  :=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.EnvioPLUeX(Paquete: TPaquetePLUEx);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje   :=chr(fid)+#61+strfix(Paquete.NroPLU,'0',4,false)+
                               strfix(Paquete.NombrePLU,' ',18,true)+
                               strfix(Paquete.PrecioLista1,'0',6,false)+
                               strfix(paquete.PrecioLista2,'0',6,false)+
                               strfix(paquete.CodigoPLU,'0',5,false)+
                               strfix(paquete.NroSeccion,'0',2,false)+
                               strfix(paquete.DiasVencimiento,'0',4,false)+

                               strfix(paquete.TipoVenta,'0',1,false)+
                               strfix(paquete.TaraPLU,'0',4,false)+
                               strfix(paquete.PorcentajeAgua,'0',4,false)+
                               strfix(paquete.TablaNutricional_0,'0',1,false)+
                               strfix(paquete.TablaNutricional_1,'0',4,false)+
                               strfix(paquete.TablaNutricional_2,'0',4,false)+
                               strfix(paquete.TablaNutricional_3,'0',4,false)+
                               strfix(paquete.TablaNutricional_4,'0',4,false)+
                               strfix(paquete.TablaNutricional_5,'0',4,false)+
                               strfix(paquete.TablaNutricional_6,'0',4,false)+
                               strfix(paquete.TablaNutricional_7,'0',4,false)+
                               strfix(paquete.TablaNutricional_8,'0',4,false)+
                               strfix(paquete.TablaNutricional_9,'0',4,false)+

                               strfix(paquete.Origen,'0',4,false)+
                               strfix(paquete.Conservacion,'0',4,false)+
                               strfix(paquete.ConfiguracionEAN,'0',1,false)+
                               strfix(paquete.ConfiguracionEAN_N,'0',12,false)+
                               strfix(paquete.Ingredientes,'0',4,false)+
                               strfix(paquete.IngredientesOtros,'0',100,false);
      Mensaje  :=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.EnvioSeccion(Paquete: TPaqueteSeccion);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=chr(fid)+#10+Paquete.NroSeccion+
                            Paquete.Descripcion;
      Mensaje:=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

Function TSystelConnect.EsperaRespuesta:boolean;
var start,actual:cardinal;
begin
   Result:=false;
   start:=GetTickCount;
   while ((GetTickCount-Start)/MSecsPerSec<1) do
   begin
      if (frespuesta<>'') and (checkpaquete(frespuesta)=true) then begin result:=true; exit; end;
      application.ProcessMessages;
   end;
   if (frespuesta<>'') and (checkPaquete(frespuesta)=true) then Result:=true;

end;

procedure TSystelConnect.fCommError(Sender: TObject; Errors: Integer);
begin
   fError:=errors;
   Disconnect;
end;


procedure TSystelConnect.fCommRxChar(Sender: TObject; Count: Integer);
begin
   fRespuesta:=fRespuesta+fcomm.ReadText;
end;

procedure TSystelConnect.GetAccesosDirectos;
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#19);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;


procedure TSystelConnect.GetFechayHora;
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#28);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.GetPLUCargados;
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#31);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.GetSeccionesCargados;
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#11);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.GrabaVendedor(Paquete: TPaqueteVendedores);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=chr(fid)+#38+strfix(Paquete.Nro,'0',1,false)+
                            strfix(Paquete.Nombre,' ',18,true);
      Mensaje:=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;
procedure TSystelConnect.PesoActual(var Resultado:TPesoActual);  //////////////////////////// peso actual;
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#1);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error'
           else
             begin
               Resultado.Peso    := strtofloat(copy(fRespuesta,3,6));
               resultado.Estable := fRespuesta[9];
               Resultado.Tara    := strtofloat(copy(frespuesta,10,6));
             end;
        end;
      end;
   end;
end;

procedure TSystelConnect.Ping;        /////////////////////////// ping
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#23);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
        end;
      end;
   end;
end;

procedure TSystelConnect.SetAccesoDirecto(Paquete: TPaqueteAccesoDirecto);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=chr(fid)+#18+strfix(Paquete.NroAcceso,'0',2,false)+
                            strfix(Paquete.NroPLU,'0',4,false);
      Mensaje:=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;


procedure TSystelConnect.SetDatosComercio(Paquete: TPaqueteDatosComercio);
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=chr(fid)+#17+strfix(Paquete.Linea1,' ',18,true)+
                            strfix(Paquete.Linea2,' ',34,true);
      Mensaje:=CompletaPaquete(Mensaje);

      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;


procedure TSystelConnect.SetFechayHora;
var mensaje:string; h,m,s,ms,d,mes,a:word;
begin
   decodedate(now,a,mes,d);
   decodeTime(now,h,m,s,ms);
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#16+strfix(inttostr(h),'0',2,false)+
                                            strfix(inttostr(m),'0',2,false)+
                                            strfix(inttostr(s),'0',2,false)+
                                            strfix(inttostr(d),'0',2,false)+
                                            strfix(inttostr(mes),'0',2,false)+
                                            strfix(copy(inttostr(a),3,2),'0',2,false));
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;

procedure TSystelConnect.SetMarquesina(Texto: String);  /////////////// set marquesina
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#6+copy(Texto,1,100));
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
        end;
      end;
   end;
end;

procedure TSystelConnect.ShowForm;
begin
   FormSystelConn:=TFormSystelConn.Create(self);
   FormSystelConn.SystelConnect:=self;
   fmemdata:=formSystelConn.memData;
   if assigned(fOnCargaPLU) then fOnCargaPLU(self);
   FormSystelConn.ShowModal;
   FormSystelConn.Release;
end;

procedure TSystelConnect.SolicitudPLUEx(Nro: String);
var mensaje:string;
begin
  fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#62+Nro);
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error'
        end;
      end;
   end;
end;

procedure TSystelConnect.StartSinco;
var mensaje:string;
begin
   fError:=0;
   if fcomm.Active then
   begin
      fRespuesta:='';
      mensaje:=completapaquete(chr(fid)+#35+'S');
      if fcomm.WriteText(mensaje) then
      begin
        if fError=0 then
        begin
           EsperaRespuesta;
           if checkPaquete(fRespuesta)=false then
             fRespuesta:=fRespuesta+'~Error';
        end;
      end;
   end;
end;
end.
