VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   855
      Left            =   1320
      TabIndex        =   0
      Top             =   1440
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Dim cliente As CotLinker.ClienteRE
Dim cab As CotLinker.Remito
Dim det As Producto

Set cliente = New CotLinker.ClienteRE
    cliente.ModoProduccion = False ' Cambiar a true para trabajar en producción
    cliente.CUIT = 20939802593#
    cliente.Password = "clave" ' Obtenerla segun las instrucciones en www.bitingenieria.com.ar/cotlinker
    cliente.NroPlanta = 0
    cliente.NroPuerta = 1
    cliente.Fecha = Format(Now, "yyyyMMdd")
    cliente.NroSecuencial = 11
    cliente.Inicializar

    Set cab = New CotLinker.Remito

'************ BLOQUE PARA 1 REMITO. REPETI PARA MAS DE UNO *****************************************
    
    cab.CU_CODIGO_DGI = 91
    cab.CU_TIPO = " R"
    cab.CU_PREFIJO = 3
    cab.CU_NUMERO = 12
    cab.FECHA_EMISION = Format(Now, "yyyyMMdd")
    cab.FECHA_SALIDA_TRANSPORTE = Format(Now, "yyyyMMdd")
    cab.SUJETO_GENERADOR = "E"
    cab.DESTINATARIO_CONSUMIDOR_FINAL = 0
    cab.DESTINATARIO_TENEDOR = 1
    cab.DESTINATARIO_CUIT = 20939802593#
    cab.DESTINATARIO_RAZON_SOCIAL = "Razon Social"
    cab.DESTINO_DOMICILIO_CALLE = "calle"
    cab.DESTINO_DOMICILIO_NUMERO = 1234
    cab.DESTINO_DOMICILIO_CODIGO_POSTAL = "1712"
    cab.DESTINO_DOMICILIO_LOCALIDAD = "Castelar"
    cab.DESTINO_DOMICILIO_PROVINCIA = "B"
    cab.ORIGEN_CUIT = 20939802593#
    cab.ORIGEN_RAZON_SOCIAL = "razon social"
    cab.ORIGEN_DOMICILIO_CALLE = "calle"
    cab.ORIGEN_DOMICILIO_NUMERO = 1234
    cab.ORIGEN_DOMICILIO_CODIGO_POSTAL = "1712"
    cab.ORIGEN_DOMICILIO_LOCALIDAD = "Avellaneda"
    cab.ORIGEN_DOMICILIO_PROVINCIA = "B"
    cab.ENTREGA_DOMICILIO_ORIGEN = "SI"
    cab.TRANSPORTISTA_CUIT = 20939802593#
    cab.PATENTE_VEHICULO = "AAA111"
    cab.IMPORTE = 1000

    cliente.AgregaRemito cab

'************ BLOQUE PARA 1 DETALLE. REPETI PARA MAS DE UNO *****************************************

    Set det = New CotLinker.Producto
    
    det.CODIGO_UNICO_PRODUCTO = "010100"
    det.RENTAS_CODIGO_UNIDAD_MEDIDA = 1
    det.CANTIDAD = 1000
    det.PROPIO_CODIGO_PRODUCTO = "prod1"
    det.PROPIO_DESCRIPCION_PRODUCTO = "producto 1"
    det.PROPIO_DESCRIPCION_UNIDAD_MEDIDA = "UNIDAD"
    det.CANTIDAD_AJUSTADA = 1000
    
    cliente.AgregaProducto det    ' Agrega un detalle al ultimo remito cargado
    
'*************************** FIN BLOQUE PARA 1 DETALLE *****************************************


'********************* FIN BLOQUE PARA 1 REMITO *****************************************
    
    
    cliente.Enviar
    
    
    If cliente.Resultado.TransactionOk Then
      MsgBox "Felicitaciones! COT obtenido: " + CStr(cliente.Resultado.COT)
    Else
      MsgBox cliente.Resultado.Errores
    End If
    
End Sub
