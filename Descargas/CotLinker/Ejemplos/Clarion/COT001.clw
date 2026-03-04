

   MEMBER('COTLINKER.clw')                                 ! This is a MEMBER module


   INCLUDE('ABTOOLBA.INC'),ONCE
   INCLUDE('ABWINDOW.INC'),ONCE

                     MAP
                       INCLUDE('COT001.INC'),ONCE        !Local module procedure declarations
                     END


Main PROCEDURE                                             ! Generated from procedure template - Frame

Resultado            CSTRING(20)                           !
Det                  CSTRING(20)                           !
Cab                  CSTRING(20)                           !
DisplayDayString STRING('Sunday   Monday   Tuesday  WednesdayThursday Friday   Saturday ')
DisplayDayText   STRING(9),DIM(7),OVER(DisplayDayString)
AppFrame             APPLICATION('Process Customer Orders'),AT(,,400,253),FONT('MS Sans Serif',8,COLOR:Black,),STATUS(-1,80,120,45),SYSTEM,MAX,RESIZE,IMM
                       TOOLBAR,AT(0,0,400,75)
                         OLE,AT(214,24,34,13),USE(?OLE),COMPATIBILITY(020H)
                         END
                       END
                     END

ThisWindow           CLASS(WindowManager)
Ask                    PROCEDURE(),DERIVED                 ! Method added to host embed code
Init                   PROCEDURE(),BYTE,PROC,DERIVED       ! Method added to host embed code
Kill                   PROCEDURE(),BYTE,PROC,DERIVED       ! Method added to host embed code
TakeWindowEvent        PROCEDURE(),BYTE,PROC,DERIVED       ! Method added to host embed code
                     END

Toolbar              ToolbarClass

  CODE
  GlobalResponse = ThisWindow.Run()                        ! Opens the window and starts an Accept Loop

!---------------------------------------------------------------------------
DefineListboxStyle ROUTINE
!|
!| This routine create all the styles to be shared in this window
!| It's called after the window open
!|
!---------------------------------------------------------------------------

ThisWindow.Ask PROCEDURE

  CODE
  IF NOT INRANGE(AppFrame{Prop:Timer},1,100)
    AppFrame{Prop:Timer} = 100
  END
    AppFrame{Prop:StatusText,3} = CLIP(DisplayDayText[(TODAY()%7)+1]) & ', ' & FORMAT(TODAY(),@D4)
    AppFrame{Prop:StatusText,4} = FORMAT(CLOCK(),@T3)
  PARENT.Ask


ThisWindow.Init PROCEDURE

ReturnValue          BYTE,AUTO

  CODE
  GlobalErrors.SetProcedureName('Main')
  SELF.Request = GlobalRequest                             ! Store the incoming request
  ReturnValue = PARENT.Init()
  IF ReturnValue THEN RETURN ReturnValue.
  SELF.FirstField = 1
  SELF.VCRRequest &= VCRRequest
  SELF.Errors &= GlobalErrors                              ! Set this windows ErrorManager to the global ErrorManager
  CLEAR(GlobalRequest)                                     ! Clear GlobalRequest after storing locally
  CLEAR(GlobalResponse)
  SELF.AddItem(Toolbar)
  OPEN(AppFrame)                                           ! Open window
  SELF.Opened=True
  Do DefineListboxStyle
  INIMgr.Fetch('Main',AppFrame)                            ! Restore window settings from non-volatile store
  SELF.SetAlerts()
  
  ?OLE{PROP:Create} = 'CotLinker.ClienteRE'
  
  ! Propiedad para elegir modo de testing o produccion (0 ó 1)
      ?OLE{'ModoProduccion'} = 0
  
      ?OLE{'CUIT'} = 20939802593
      ?OLE{'Password'} = 'bitingenieria'
      ?OLE{'NroPlanta'} = 0
      ?OLE{'NroPuerta'} = 1
      ?OLE{'Fecha'} = '20170816'
      ?OLE{'NroSecuencial'} = 10
  
      ?OLE{'Inicializar()'}
  
  
  ! Crea un nuevo remito. Repitiendo esto en una iteracion va anexando los mismos en el paquete a enviar
  Cab = ?OLE{'NuevoRemito'}
  
      ?OLE{Cab&'.CU_CODIGO_DGI'} = 91
      ?OLE{Cab&'.CU_TIPO'} = ' R'
      ?OLE{Cab&'.CU_PREFIJO'} = 0
      ?OLE{Cab&'.CU_NUMERO'} = 1
      ?OLE{Cab&'.FECHA_EMISION'} = '20170816'
      ?OLE{Cab&'.FECHA_SALIDA_TRANSPORTE'} = '20170816'
      ?OLE{Cab&'.SUJETO_GENERADOR'} = 'E'
      ?OLE{Cab&'.DESTINATARIO_CONSUMIDOR_FINAL'} = 0
      ?OLE{Cab&'.DESTINATARIO_TENEDOR'} = 1
      ?OLE{Cab&'.DESTINATARIO_CUIT'} = 20939802593
      ?OLE{Cab&'.DESTINATARIO_RAZON_SOCIAL'} = 'Razon Social'
      ?OLE{Cab&'.DESTINO_DOMICILIO_CALLE'} = 'calle'
      ?OLE{Cab&'.DESTINO_DOMICILIO_NUMERO'} = 1234
      ?OLE{Cab&'.DESTINO_DOMICILIO_CODIGO_POSTAL'} = '1234'
      ?OLE{Cab&'.DESTINO_DOMICILIO_LOCALIDAD'} = 'Capital Federal'
      ?OLE{Cab&'.DESTINO_DOMICILIO_PROVINCIA'} = 'B'
      ?OLE{Cab&'.ORIGEN_CUIT'} = '20939802593'
      ?OLE{Cab&'.ORIGEN_RAZON_SOCIAL'} = 'razon social'
      ?OLE{Cab&'.ORIGEN_DOMICILIO_CALLE'} = 'calle'
      ?OLE{Cab&'.ORIGEN_DOMICILIO_NUMERO'} = 1234
      ?OLE{Cab&'.ORIGEN_DOMICILIO_CODIGO_POSTAL'} = '1234'
      ?OLE{Cab&'.ORIGEN_DOMICILIO_LOCALIDAD'} = 'Avellaneda'
      ?OLE{Cab&'.ORIGEN_DOMICILIO_PROVINCIA'} = 'B'
      ?OLE{Cab&'.ENTREGA_DOMICILIO_ORIGEN'} = 'SI'
      ?OLE{Cab&'.TRANSPORTISTA_CUIT'} = 20939802593
      ?OLE{Cab&'.PATENTE_VEHICULO'} = 'AAA111'
      ?OLE{Cab&'.IMPORTE'} = '1000'
  
      ?OLE{'AgregaNuevoRemito()'}
  
  !  Los nuevos productos estan asociados al ultimo remito cargado
  Det = ?OLE{'NuevoProducto'}
  
      ?OLE{Det&'.CODIGO_UNICO_PRODUCTO'} = ' 010100' ! aqui le puse un espacio delante sino lo toma como numero y remueve el cero a la izquierda.
      ?OLE{Det&'.RENTAS_CODIGO_UNIDAD_MEDIDA'} = 1
      ?OLE{Det&'.CANTIDAD'} = 1000
      ?OLE{Det&'.PROPIO_CODIGO_PRODUCTO'} = 'prod1'
      ?OLE{Det&'.PROPIO_DESCRIPCION_PRODUCTO'} = 'producto 1'
      ?OLE{Det&'.PROPIO_DESCRIPCION_UNIDAD_MEDIDA'} = 'UNIDAD'
      ?OLE{Det&'.CANTIDAD_AJUSTADA'} = 1000
       
      ?OLE{'AgregaNuevoProducto()'}
  
      ?OLE{'Enviar()'}
  
      
  !Recupero el resultado
      Resultado = ?OLE{'Resultado'}
  
     If ?OLE{Resultado&'.TransactionOk'} <> 0
        Message(?OLE{Resultado&'.COT'})
      Else
        Message(?OLE{Resultado&'.Errores'})
      End
  RETURN ReturnValue


ThisWindow.Kill PROCEDURE

ReturnValue          BYTE,AUTO

  CODE
  ReturnValue = PARENT.Kill()
  IF ReturnValue THEN RETURN ReturnValue.
  IF SELF.Opened
    INIMgr.Update('Main',AppFrame)                         ! Save window data to non-volatile store
  END
  GlobalErrors.SetProcedureName
  RETURN ReturnValue


ThisWindow.TakeWindowEvent PROCEDURE

ReturnValue          BYTE,AUTO

Looped BYTE
  CODE
  LOOP                                                     ! This method receives all window specific events
    IF Looped
      RETURN Level:Notify
    ELSE
      Looped = 1
    END
  ReturnValue = PARENT.TakeWindowEvent()
    CASE EVENT()
    OF Event:Timer
      AppFrame{Prop:StatusText,3} = CLIP(DisplayDayText[(TODAY()%7)+1]) & ', ' & FORMAT(TODAY(),@D4)
      AppFrame{Prop:StatusText,4} = FORMAT(CLOCK(),@T3)
    ELSE
    END
    RETURN ReturnValue
  END
  ReturnValue = Level:Fatal
  RETURN ReturnValue

