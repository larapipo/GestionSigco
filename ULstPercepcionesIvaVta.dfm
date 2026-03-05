inherited FormLstPercepcionesIvaVta: TFormLstPercepcionesIvaVta
  Caption = 'Listado Percepciones Iva en Ventas'
  ClientHeight = 616
  ClientWidth = 1021
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1039
  ExplicitHeight = 657
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1021
    Height = 563
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 936
    ExplicitHeight = 563
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1021
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 936
      DesignSize = (
        1021
        73)
      object RxLabel1: TJvLabel
        Left = 786
        Top = 6
        Width = 33
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 960
      end
      object RxLabel3: TJvLabel
        Left = 890
        Top = 6
        Width = 30
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 1064
      end
      object Label1: TLabel
        Left = 7
        Top = 0
        Width = 422
        Height = 29
        Caption = 'Listado Percepciones IVA en Ventas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object JvLabel1: TJvLabel
        Left = 7
        Top = 29
        Width = 146
        Height = 13
        Caption = 'Usar Cod.Reg. para los vacios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
      end
      object Hasta: TJvDateEdit
        Left = 890
        Top = 27
        Width = 97
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        ExplicitLeft = 805
      end
      object Desde: TJvDateEdit
        Left = 786
        Top = 27
        Width = 97
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
        ExplicitLeft = 701
      end
      object UpDown1: TUpDown
        Left = 990
        Top = 26
        Width = 18
        Height = 22
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
        ExplicitLeft = 905
      end
      object ComboBox: TComboBox
        Left = 7
        Top = 45
        Width = 522
        Height = 22
        Style = csOwnerDrawFixed
        DropDownCount = 10
        MaxLength = 900
        Sorted = True
        TabOrder = 3
        Items.Strings = (
          '172;302;Transferencia de Inmuebles;'#9
          
            '217;116;Profesiones Liberales, S'#237'ndicos y Director de Sociedad A' +
            'n'#243'nima.;'#9
          '217;124;Corredores, Viajantes y Despachantes de Aduana;'#9
          
            '217;159;Sueldos, jubilaciones y otros r'#233'ditos de car'#225'cter peri'#243'd' +
            'ico del trabajo personal.;'#9
          
            '217;160;Rentas del Trabajo Personal bajo Relaci'#243'n de Dependencia' +
            ';'#9
          
            '217;19;Intereses por operaciones realizadas en Entidades Financi' +
            'eras;'#9
          
            '217;191;Transferencia Inmuebles Op. Grav Ganancias - Art. 6'#186' inc' +
            '. 2;'#9
          
            '217;192;Transferencia Inmuebles Op. Grav Ganancias - Reducida al' +
            ' 50%;'#9
          
            '217;193;Transferencia Inmuebles Beneficiarios del Exterior - Art' +
            '. 21;'#9
          '217;20;Intereses por Financiaci'#243'n o Eventuales incumplimientos;'#9
          '217;21;Intereses por otro tipo de Operaciones;'#9
          '217;213;Usuarios del Sistema de Tarjetas de Cr'#233'dito;'#9
          '217;220;Dividendos en Acciones - Art. 70 inc. 2 al 4;'#9
          '217;221;Dividendos en Acciones - Art. 70 inc. 1;'#9
          '217;235;Nominatividad de t'#237'tulos valores - saldos impagos;'#9
          '217;240;Nominatividad de t'#237'tulos valores - saldos pagos;'#9
          '217;27;Alquileres de Bienes Muebles e Inmuebles;'#9
          
            '217;305;Transferencia Inmuebles Op. Grav Eventuales - Art. 6'#186' in' +
            'c. 1;'#9
          
            '217;306;Transferencia Inmuebles Op. Grav Eventuales - Reducida a' +
            'l 50%;'#9
          '217;35;Regal'#237'as;'#9
          
            '217;40;Intereses de Deudas, Incluidos los de Obligaciones Negoci' +
            'able. Art. 81 inc. a) de la Ley.;'#9
          
            '217;43;Utilidades e Intereses de Cooperativas excepto de consumo' +
            ';'#9
          
            '217;46;Dividendos o distribuci'#243'n de utilidades superior a gananc' +
            'ia impositiva (art. Incorporado a continuaci'#243'n del 69 de la Ley)' +
            ';'#9
          
            '217;51;Obl. de no hacer o por abandono o no ejercicio de una act' +
            'ividad;'#9
          
            '217;53;Operaciones Realizadas a Trav'#233's del mercado de Cereales a' +
            ' T'#233'rmino;'#9
          '217;531;Import. def. Bs. para Venta - Art. 4'#186' 1'#186' P'#225'rrafo;'#9
          '217;531;Importaci'#243'n definitiva de bienes;'#9
          
            '217;532;Import. def. Bs. para uso del Importador - Art. 4'#186' 2'#186' P'#225 +
            'rrafo;'#9
          
            '217;55;Locaci'#243'n de derechos de distribuci'#243'n de Pel'#237'culas cinemat' +
            'ogr'#225'ficas;'#9
          '217;691;Vales de Almuerzo y/o alimentarios de canasta familiar;'#9
          '217;78;Enajenaci'#243'n Bs de Cambio y Bs Muebles.;'#9
          '217;80;Importaci'#243'n de finitiva de bienes con C.V.D.I.;'#9
          
            '217;81;Importaci'#243'n de finitiva de bienes para uso de Importador ' +
            'con C.V.D.I.;'#9
          
            '217;82;Importaci'#243'n de finitiva de bienes para uso de Importador ' +
            'sin C.V.D.I.;'#9
          '217;83;Importaci'#243'n de finitiva de bienes sin C.V.D.I.;'#9
          
            '217;86;Transferencia de Llaves, Marcas, Patentes, Regal'#237'as, etc.' +
            ';'#9
          '217;94;Locaci'#243'n de Obras y/o Servicios;'#9
          
            '217;95;Transporte de Carga entre Argentina y Pa'#237'ses Extranjeros;' +
            #9
          '218;132;Transferencia de Ingresos a Fiscos Extranjeros;'#9
          
            '218;162;Contratos de Transferencia de Tecnolog'#237'a - Asistencia T'#233 +
            'cnica, Ingenier'#237'a o Consultor'#237'a;'#9
          
            '218;163;Contratos de Transferencia de Tecnolog'#237'a - Cesi'#243'n de der' +
            'echos o Licencias;'#9
          '218;164;Derechos de Autor;'#9
          
            '218;165;Intereses Pagados por Cr'#233'ditos obtenidos en el Exterior;' +
            #9
          '218;166;Intereses por Dep'#243'sitos;'#9
          '218;167;Beneficiarios del Exterior;'#9
          '218;168;Locaci'#243'n de Cosas Muebles;'#9
          
            '218;169;Alquileres o Arrendamientos de Inmuebles ubicados en el ' +
            'Pa'#237's;'#9
          
            '218;170;Transferencia onerosa de Bienes situados, colocados o ut' +
            'ilizados econ'#243'micamente en el pa'#237's.;'#9
          '218;171;Otras Ganancias no previstas;'#9
          
            '218;172;Transportes Internacionales, Fletamentos - Operaciones c' +
            'on Contenedores.;'#9
          '218;173;Agencias de Noticias Internacionales;'#9
          '218;174;Seguros y Reaseguros.;'#9
          
            '218;175;Honorarios u otras Remuneraciones recibidas del o en el ' +
            'exterior.;'#9
          
            '218;176;Pel'#237'culas cinematogr'#225'ficas, cintas magn'#233'ticas, transmisi' +
            #243'n de radio y T.V., telex, etc.;'#9
          
            '218;177;Sueldos y Honorarios derivados de Actividades Personales' +
            ' por actuaci'#243'n transitoria en el pa'#237's;'#9
          
            '218;47;Dividendos o distribuci'#243'n de utilidades superior a gananc' +
            'ia impositiva (art. Incorporado a continuaci'#243'n del 69 de la Ley)' +
            ';'#9
          '466;434;Premios por Juegos de Azar;'#9
          
            '64;715;Percepciones sobre el Impuesto de Emergencia sobre los Au' +
            'tomotores, Motocicletas y Motos, Embarcaciones y Aeronaves;'#9
          
            '64;716;Intereses sobre las Percepciones del Impuesto de Emergenc' +
            'ia sobre los Automotores, Motocicletas y Motos, Embarcaciones y ' +
            'Aeronaves;'#9
          '767;223;Locaciones y Prestaciones del Servicio Art. 8'#186' inc. b.;'#9
          '767;226;Trabajo sobre inmuebles ajenos Art. 8'#186' inc. d;'#9
          '767;226;Trabajos sobre Inmuebles ajenos Art. 8'#186' inc. c;'#9
          
            '767;228;Locaciones vinculada a la obtenci'#243'n de carnes y despojos' +
            ' comestibles de Bovinos y Frutas - Art. 8'#176' c);'#9
          
            '767;229;Locaci'#243'n y Prestaci'#243'n no inclu'#237'da en el art'#237'culo 8'#186' inci' +
            'sos b y d;'#9
          
            '767;229;Locaci'#243'n y Prestaci'#243'n no inclu'#237'da en el art'#237'culo 8'#186' inci' +
            'sos b y d;'#9
          
            '767;229;Obras, Locaciones y Prestaciones de Servicios vinculados' +
            ' a la obtenci'#243'n Bovinos, frutas, legumbres y Hortalizas - Art. 8' +
            ' inc. c;'#9
          '767;230;Locaci'#243'n y Prestaci'#243'n de Servicios - Art. 8'#176' inc. b;'#9
          
            '767;231;Locaciones vinculada a la obtenci'#243'n de carnes y despojos' +
            ' comestibles de Bovinos y Frutas - Art. 8'#176' c);'#9
          '767;232;Trabajo sobre Inmuebles ajenos - Art. 8'#176' inc c;'#9
          
            '767;233;R'#233'gimen de Percepci'#243'n  Operaciones de compraventa de che' +
            'ques de pago diferido y certificados de aval.;'#9
          
            '767;234;R'#233'gimen de Percepci'#243'n  Operaciones de compraventa de che' +
            'ques de pago diferido y certificados de aval.;'#9
          '767;241;Venta de Cosas Muebles y Locaciones;'#9
          '767;242;Locaci'#243'n y Prestaci'#243'n de Servicios - Art. 1'#186' inc. 2;'#9
          
            '767;243;Locaciones Vinculadas a la obtenci'#243'n de carnes y despojo' +
            's comestibles de bobinos y frutas Art. 8'#186' inc. b;'#9
          
            '767;244;Obras, locaciones y prestaciones de servicios no compren' +
            'didos en el art'#237'culo 8'#186' incs. b - c y e;'#9
          
            '767;245;Obras, Locaciones y Prestaciones de servicio vinculados ' +
            'a la obtenci'#243'n de frutas legumbres y hortalizas Art. 8'#186' inc. b;'#9
          
            '767;246;Trab sobre inm ajenos y Ob. sobre Inm propios - Art. 1'#186' ' +
            'inc. 3;'#9
          '767;247;Trabajos sobre inmuebles ajenos, Art'#237'culo 8'#186' inc. e;'#9
          '767;248;Compra de Cosas Muebles y Locaci'#243'n - Art. 1 inc. 1;'#9
          
            '767;248;Compra Venta de Cosas Muebles y Locaciones Art. 8'#186' inc. ' +
            'a.;'#9
          '767;250;Prestaciones del Exterior;'#9
          
            '767;258;Compraventa de leche fluida sin procesar. Art. 2'#176', inc. ' +
            'a). Adquirentes.;'#9
          
            '767;259;Compraventa de leche fluida sin procesar. Art. 2'#176', inc. ' +
            'b). Intermediarios.;'#9
          
            '767;263;Sistema de Tarjetas de Cr'#233'dito y/o Compra Art. 4 inc. a ' +
            'punto 2;'#9
          
            '767;264;Sistema de Tarjetas de Cr'#233'dito y/o Compra Art. 4 inc. a ' +
            'punto 1;'#9
          '767;264;Sistema de Tarjetas de Cr'#233'dito y/o Compra;'#9
          
            '767;265;Importaci'#243'n de Carnes y Despojos comestibles de bobinos;' +
            #9
          
            '767;265;Importaci'#243'n de Cosas Muebles, Frutas, Legumbres y Hortal' +
            'izas;'#9
          
            '767;266;Importaci'#243'n de Cosas Muebles que revisten el car'#225'cter de' +
            ' Bien de Uso;'#9
          
            '767;267;Importaci'#243'n de Cosas Muebles que no revisten el car'#225'cter' +
            ' de Bien de Uso;'#9
          
            '767;268;Sistema de Tarjetas de Cr'#233'dito y/o Compra Art. 4 inc. b;' +
            #9
          '767;270;Operaciones con Sujetos No Categorizados;'#9
          
            '767;272;Operaciones de compraventa de ganado, matanza y/o faenam' +
            'iento.;'#9
          '767;280;Pago de Honorarios Profesionales;'#9
          
            '767;299;Emp Prov. de Gas, Electricidad o Telecomunicaciones - Ar' +
            't. 3'#186' inc 1;'#9
          
            '767;300;Emp Prov. de Agua Corriente, Serv. Cloacales o Desag'#252'es ' +
            '- Art. 3'#186' inc. 2;'#9
          '767;450;R'#233'gimen especial de ingreso. Exportadores.;'#9
          
            '767;493;Venta de cosas Muebles, Locaciones y Prestaciones Gravad' +
            'as;'#9
          
            '767;494;Venta de granos, cereales y oleaginosas destinadas a la ' +
            'siembra, agroqu'#237'micos y fertilizantes.;'#9
          
            '767;495;Venta de semillas, agroqu'#237'micos y fertilizantes y determ' +
            'inadas obras , locaciones y prestaciones.;'#9
          
            '767;515;Reparaci'#243'n, reacondicionamiento y arreglo de Bienes sini' +
            'estrados;'#9
          
            '767;523;Cons. de Propietario - Locaci'#243'n de Obra, Locaciones y Pr' +
            'estaciones de Servicios;'#9
          
            '767;574;Matanza y/o faenamiento de ganado bovino de terceros - A' +
            'rt. 6 Pto. 1.;'#9
          
            '767;582;Venta de carne proveniente de la faena de hacienda bovin' +
            'a propia - Art. 6 Pto. 2.;'#9
          
            '767;590;Venta de carne bovina por matarife y consignatario direc' +
            'to.;'#9
          
            '767;604;Venta directa de carne por sujetos pasibles de la Percep' +
            'ci'#243'n del Art. 6, Pto.2 - Art. 8.;'#9
          
            '767;612;Compra de animales con destino directo a faena - Art. 10' +
            ' Pto. 1;'#9
          
            '767;620;Compra de animales no destinados a faena - Art. 10 Pto. ' +
            '2.;'#9
          
            '767;623;Matanza y/o faenamiento de ganado porcino de terceros - ' +
            'Art. 5 Pto. 1.;'#9
          
            '767;624;Venta de carne proveniente de la faena de hacienda porci' +
            'na propia - Art. 5 Pto. 2.;'#9
          '767;625;Venta de carne propia por matarife.;'#9
          
            '767;626;Compra de animales porcinos con destino directo a faena ' +
            '- Art. 10 Pto. 1.;'#9
          '767;627;Restaurant, Bares y Similares;'#9
          
            '767;628;Hoteles, Hoster'#237'as, Pensiones, Alojamientos y Similares;' +
            #9
          
            '767;629;Comisiones Cobradas por Bcos con Convenio de Recaudaci'#243'n' +
            ' con DGI;'#9
          
            '767;632;Venta de Carne Proveniente de Faenamiento efectuado entr' +
            'e Resp. Insc. - Matanza y Faenamiento;'#9
          
            '767;633;Venta de Carne Proveniente de Faenamiento efectuado entr' +
            'e Resp. Insc. - Venta de Carne;'#9
          
            '767;634;Venta de Carne Proveniente de Faenamiento efectuado entr' +
            'e Resp. Insc. - Usuarios del Srev de Faenamiento;'#9
          
            '767;635;Venta de Carne Proveniente de Faenamiento efectuado entr' +
            'e Resp. Insc. - Importadores;'#9
          
            '767;636;Venta de Carne Proveniente de Faenamiento efectuado entr' +
            'e Resp. Insc. - Distribuidores y/o Mayoristas;'#9
          
            '767;637;Venta de Carne Proveniente de Faenamiento efectuado entr' +
            'e Resp. Insc. - Intermediarios;'#9
          '767;638;Pollos Parrilleros - Adquisici'#243'n;'#9
          '767;639;Pollos Parrilleros - Servicio de recr'#237'a;'#9
          
            '767;642;Matanza y/o faenamiento de ganado porcino de terceros - ' +
            'Art. 6 Pto. 1.;'#9
          
            '767;643;Venta de carne proveniente de la faena de ganado porcino' +
            ' - Art. 6 Pto. 2.;'#9
          '767;644;Venta de carne porcina por matarife - Art. 8.;'#9
          
            '767;645;Compra de animales porcinos con destino directo a faena ' +
            '- Art. 10.;'#9
          '767;647;Venta de Cemento Portland;'#9
          
            '767;648;Ganado Ovino, Caprino y Equino - Faenamiento de Animales' +
            ' de terceros operaciones de redestino de Exportaci'#243'n a consumo y' +
            ' primera venta de Exportador a exportador. Vta de subproductos d' +
            'e faena;'#9
          '767;650;Faenamiento de Animales de Terceros;'#9
          '767;651;Compraventa de Ovinos, Caprinos y Equinos para faena;'#9
          '767;651;Ganado Ovino, Caprino y Equino - Compraventa;'#9
          '767;652;Venta subproducto faena ganado porcino.;'#9
          '767;653;Venta subproducto faena ganado bovino.;'#9
          
            '767;655;Harinas y Productos derivados del Trigo - Prestaci'#243'n del' +
            ' Servicio de elaboraci'#243'n de todo tipo de harinas - Ptos tipifica' +
            'dos en Art. 670 al 673 del C'#243'digo Alimentario Argentino;'#9
          
            '767;656;Harinas y Productos derivados del Trigo - Prestaci'#243'n del' +
            ' Servicio de elaboraci'#243'n de todo tipo de harinas - Ptos tipifica' +
            'dos en Art. 661, 662, 664 al 667 del C'#243'digo Alimentario Argentin' +
            'o;'#9
          
            '767;656;Harinas y Productos derivados del Trigo - Venta de harin' +
            'as y dem'#225's productos derivados del trigo - Ptos tipificados en A' +
            'rt. 670 al 673 del C'#243'digo Alimentario Argentino;'#9
          
            '767;657;Harinas y Productos derivados del Trigo - Prestaci'#243'n del' +
            ' Servicio de elaboraci'#243'n de todo tipo de harinas - Ptos tipifica' +
            'dos en Art. 661, 662, 664 al 667 del C'#243'digo Alimentario Argentin' +
            'o;'#9
          
            '767;660;Compra - Vta Granos no desti. a siembra de cereales, ole' +
            'aginosas, etc.;'#9
          
            '767;660;Compra Venta de Ca'#241'a de Az'#250'car y Algod'#243'n en Bruto. Art. ' +
            '2'#186' inc. a) - Adquirentes;'#9
          
            '767;660;Compra Venta de Ca'#241'a de Az'#250'car y Algod'#243'n en Bruto. Art. ' +
            '4'#186' inc. a pto 2 - Adquirentes;'#9
          
            '767;660;Compra Venta de Ca'#241'a de Az'#250'car y Algod'#243'n en Bruto. Art. ' +
            '4'#186' inc. a) pto. 2. - Adquirentes;'#9
          
            '767;661;Compra Venta de Ca'#241'a de Az'#250'car y Algod'#243'n en Bruto. Art. ' +
            '2'#186' inc. b) - Intermediarios;'#9
          
            '767;661;Compra Venta de Ca'#241'a de Az'#250'car y Algod'#243'n en Bruto. Art. ' +
            '4'#186' inc. a pto 2 - Intermediarios;'#9
          
            '767;661;Compra Venta de Ca'#241'a de Az'#250'car y Algod'#243'n en Bruto. Art. ' +
            '4'#186' inc. a) pto. 2. -Intermediarios;'#9
          '767;661;Operaciones de Compra - Venta de Granos;'#9
          
            '767;663;Compra de Cueros Art. 11 inc. c establecimientos faenado' +
            'res;'#9
          
            '767;666;Compra de Carnes Art. 11 inc. a usuarios del servicio de' +
            ' faena;'#9
          
            '767;667;Compra de Subproductos Art. 11 inc. b usuarios del servi' +
            'cio de faena;'#9
          
            '767;668;Compra de Cueros Art. 11 inc. c usuarios del servicio de' +
            ' faenadores;'#9
          '767;670;Compra de Animales - establecimientos faenadores;'#9
          
            '767;671;Compra de Carnes Art. 11 inc. a establecimientos faenado' +
            'res;'#9
          
            '767;672;Compra de Subproductos Art. 11 inc. b establecimientos f' +
            'aenadores;'#9
          '767;677;Compra de Porcinos - establecimientos faenadores;'#9
          '767;679;Compra de Porcinos - usuarios del servicio de faena;'#9
          
            '767;680;Compra Venta de Granos y Legumbres no Incluidos en el Re' +
            'gistro Fiscal Art. 4'#186' inc. b) - Adquirentes (no Exportadores);'#9
          
            '767;680;Compra Venta de Granos y Legumbres no Incluidos en el Re' +
            'gistro Fiscal Art. 4'#186' inc. b) - Adquirentes;'#9
          
            '767;680;Compra Venta de Granos y Legumbres no Incluidos en el Re' +
            'gistro Fiscal Art. 4'#186' inc. b;'#9
          
            '767;681;Compra Venta de Granos y Legumbres no Incluidos en el Re' +
            'gistro Fiscal Art. 4'#186' inc. b - Intermediarios;'#9
          
            '767;682;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a ' +
            'pto 1 - Adquirentes;'#9
          
            '767;682;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a)' +
            ' - Adquirentes (no Exportadores);'#9
          
            '767;682;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a)' +
            ' - Adquirentes (no Exportadores);'#9
          
            '767;682;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a)' +
            ' pto. 1. - Adquirentes;'#9
          
            '767;683;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a ' +
            'pto 1 - Intermediarios;'#9
          '767;684;Venta de Cemento de Alba'#241'iler'#237'a;'#9
          '767;685;Venta de Cal;'#9
          
            '767;686;Compraventa de animales de la especie equina Art. 2'#186' inc' +
            '. a)  Establecimientos faenadores.;'#9
          
            '767;686;Compraventa de animales de la especie equina Art. 2'#186' inc' +
            '. c)  Consignatarios directos.;'#9
          
            '767;687;Compraventa de animales de la especie equina Art. 2'#186' inc' +
            '. b)  Intermediarios.;'#9
          '767;689;Vales de Almuerzo;'#9
          '767;690;Vales de Alimentos;'#9
          '767;690;Vales de Almuerzo y alimentos;'#9
          
            '767;692;Compra de Carnes Art. 11 inc. a consignatarios de carne;' +
            #9
          
            '767;693;Compra de Subproductos Art. 11 inc. b consignatarios de ' +
            'carne;'#9
          
            '767;694;Compra de Cueros Art. 11 inc. c consignatarios de carne;' +
            #9
          '767;695;Compra de Carnes supermercados;'#9
          
            '767;696;Otras figuras encuadradas dentro de la Resoluci'#243'n Genera' +
            'l 3125. Compra de carne faenada.;'#9
          
            '767;697;Productores, Criadores y/o Invernaderos con I.V.A. Anual' +
            ';'#9
          '767;698;Compra de Subproductos supermercados;'#9
          
            '767;699;Otras figuras encuadradas dentro de la Resoluci'#243'n Genera' +
            'l 3125. Adquisici'#243'n de subproducto;'#9
          '767;701;Faenamiento de Subproductos de Terceros;'#9
          
            '767;702;Venta de Carne Proveniente de Faenamiento efectuado entr' +
            'e Resp. Insc. - Establecimientos faenadores;'#9
          
            '767;720;Mercado Mayorista Ptos Primarios - Operadores Mayoristas' +
            ' a los Comitentes;'#9
          
            '767;781;Compra Venta de Granos y Legumbres no Incluidos en el Re' +
            'gistro Fiscal Art. 4'#186' inc. b) - Intermediarios;'#9
          
            '767;782;Compra Venta de Granos y Legumbres no Incluidos en el Re' +
            'gistro Fiscal Art. 4'#186' inc. b) - Exportadores;'#9
          
            '767;783;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a)' +
            ' - Intermediarios;'#9
          
            '767;783;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a)' +
            ' - Intermediarios;'#9
          
            '767;784;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a)' +
            ' - Exportadores;'#9
          
            '767;784;Compra Venta de Granos y legumbres secas Art. 4'#186' inc. a)' +
            ' - Exportadores;'#9
          
            '767;785;Compra Venta de Granos y Legumbres - Operaciones Primari' +
            'as SUJETAS A REINTEGRO - Adquirentes (No Exportadores);'#9
          
            '767;785;Compra Venta de Granos y Legumbres - Operaciones Primari' +
            'as SUJETAS A REINTEGRO - Adquirentes (No Exportadores);'#9
          
            '767;786;Compra Venta de Granos y Legumbres - Operaciones Primari' +
            'as SUJETAS A REINTEGRO - Intermediarios;'#9
          
            '767;786;Compra Venta de Granos y Legumbres - Operaciones Primari' +
            'as SUJETAS A REINTEGRO - Intermediarios;'#9
          
            '767;787;Compra Venta de Granos y Legumbres - Operaciones Primari' +
            'as SUJETAS A REINTEGRO - Exportadores;'#9
          
            '767;787;Compra Venta de Granos y Legumbres - Operaciones Primari' +
            'as SUJETAS A REINTEGRO - Exportadores;'#9
          
            '767;788;Compra Venta de Arroz no incluidos en el Registro Fiscal' +
            ' Art. 4'#176' inc. b) - Adquirentes (no Exportadores);'#9
          
            '767;789;Compra Venta de Arroz no incluidos en el Registro Fiscal' +
            ' art. 4'#186' inc. b) - Intermediarios. Art. 2'#176' inc. c);'#9
          
            '767;790;Compra Venta de Arroz no Incluidos en el Registro Fiscal' +
            ' Art. 4'#186' inc. b) - Exportadores;'#9
          
            '767;791;Compra Venta de Arroz Art. 4'#186' inc. a) - Adquirentes (no ' +
            'Exportadores);'#9
          
            '767;792;Compra Venta de Arroz Art. 4'#186' inc. a) - Intermediarios A' +
            'rt. 2'#176' inc. c).;'#9
          '767;793;Compra Venta de Arroz Art. 4'#186' inc. a) - Exportadores;'#9
          
            '767;794;Compra Venta de Arroz - SUJETAS A REINTEGRO - Adquirente' +
            's (no Exportadores);'#9
          
            '767;795;Compra Venta de Arroz - SUJETAS A REINTEGRO - Intermedia' +
            'rios Art. 2'#176' inc. c);'#9
          
            '767;796;Compra Venta de Arroz - SUJETAS A REINTEGRO - Exportador' +
            'es;'#9)
      end
    end
    object dbgRetenciones: TDBGrid
      Left = 0
      Top = 73
      Width = 1021
      Height = 455
      TabStop = False
      Align = alClient
      DataSource = DSPercepciones
      FixedColor = 10930928
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgRetencionesDrawColumnCell
      OnDblClick = dbgRetencionesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHAVTA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRASUCURSAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZONSOCIAL'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 173
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Tc.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 32
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBackground
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.Retenci'#243'n'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUIT'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total Factura'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBackground
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCEPCIONDETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCEPCIONETO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCEPCIONTASA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCEPCIONIMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 0
      Top = 528
      Width = 1021
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Enabled = False
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 936
      DesignSize = (
        1021
        35)
      object JvLabel2: TJvLabel
        Left = 578
        Top = 10
        Width = 46
        Height = 13
        Caption = 'N.Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 767
      end
      object JvLabel3: TJvLabel
        Left = 379
        Top = 10
        Width = 43
        Height = 13
        Caption = 'Facturas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 568
      end
      object JvLabel4: TJvLabel
        Left = 814
        Top = 10
        Width = 25
        Height = 13
        Caption = 'Neto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akTop, akRight]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -12
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ExplicitLeft = 818
      end
      object edTotal: TEdit
        Left = 845
        Top = 6
        Width = 132
        Height = 21
        Alignment = taRightJustify
        Anchors = [akRight]
        TabOrder = 0
        Text = 'edTotal'
        ExplicitLeft = 760
      end
      object edNC: TEdit
        Left = 631
        Top = 6
        Width = 132
        Height = 21
        Alignment = taRightJustify
        Anchors = [akRight]
        TabOrder = 1
        TextHint = 'N.Credito'
        ExplicitLeft = 546
      end
      object edFc: TEdit
        Left = 431
        Top = 6
        Width = 132
        Height = 21
        Alignment = taRightJustify
        Anchors = [akRight]
        TabOrder = 2
        TextHint = 'Facturas'
        ExplicitLeft = 346
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 563
    Width = 1021
    Align = alBottom
    ButtonHeight = 27
    ExplicitTop = 563
    ExplicitWidth = 936
    inherited btConfirma: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btNuevo: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btCancelar: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btModificar: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited Pr: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBuscar: TBitBtn
      Height = 27
      ExplicitHeight = 27
    end
    inherited Ne: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBorrar: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btSalir: TBitBtn
      Height = 27
      ExplicitHeight = 27
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 52
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 609
      Top = 0
      Width = 75
      Height = 27
      Caption = '&Imprimir'
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303030303FFFFFF03030303
        030303030303FFFFFF0303030000000303030303030303030300000003030303
        F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
        00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
        070707070707070707070707000303F8FF030303030303030303030303030303
        F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
        0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
        FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
        F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
        03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
        FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
        03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
        F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
        0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
        FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
        0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
        F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = btImprimirClick
    end
    object ToolButton2: TToolButton
      Left = 684
      Top = 0
      Width = 53
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object Button1: TButton
      Left = 737
      Top = 0
      Width = 104
      Height = 27
      Action = ExportarCICORE
      TabOrder = 8
    end
    object Button2: TButton
      Left = 841
      Top = 0
      Width = 128
      Height = 27
      Action = ExportarContribuyente
      TabOrder = 9
    end
  end
  inherited Panel1: TPanel
    Top = 593
    Width = 1021
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 593
    ExplicitWidth = 936
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 932
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 847
    end
  end
  inherited ActionList1: TActionList
    Left = 424
    Top = 128
    object ExportarTXT: TAction
      Caption = 'Exportar TXT'
      OnExecute = ExportarTXTExecute
    end
    object ExportarCICORE: TAction
      Caption = 'Exportar CICORE'
      OnExecute = ExportarCICOREExecute
    end
    object ExportarContribuyente: TAction
      Caption = 'Exportar Contribuyente'
      OnExecute = ExportarContribuyenteExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 480
    Top = 136
  end
  inherited ImageList1: TImageList
    Left = 192
    Top = 160
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 312
    Top = 288
  end
  object QPercepciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.tipocpbte,f.clasecpbte,f.letrafac,f.razonsocial' +
        ',f.cuit,f.fechavta,'
      '       f.sucfac,f.numerofac,f.netograv2,f.total,'
      '       coalesce(piva.detalle,'#39#39') as PercepcionDetalle,'
      '       coalesce(piva.neto,0) as PercepcioNeto,'
      '       coalesce(piva.tasa,0) as PercepcionTasa,'
      '       Coalesce(piva.importe,0) as Percepcionimporte,'
      '       f.nrocpbte,s.detalle as MuestraSucursal,'
      '       cp.codigo_afip,'
      '       '#39'767'#39' as CodigoImpuesto,'
      '       '#39'602'#39' as CodigoRegimen,'
      '       '#39'2'#39' as CodigoOperacion,'
      '       '#39'13'#39' as CodigoCondicion,'
      '       '#39'80'#39' as TipoDocumentoRetenido,'
      '       f.tipoiva,f.direccion,f.localidad,pr.nombre as provincia'
      '       from fcvtacab f'
      'left join sucursal s on s.codigo=f.sucursal'
      'left join fcvtapercepcioniva piva on piva.id_fcvtacab=f.id_fc'
      'left join clientes cl on cl.codigo=f.codigo'
      'left join c_postal cpl on cpl.id_postal=cl.id_cod_postal'
      'left join provincia pr on pr.id_pro=cpl.provincia'
      'left join comprobantes cp on cp.clase_comprob=F.ClaseCpbte and'
      '          cp.letra=f.LetraFac and'
      '          cp.sucursal=f.sucursal and'
      '          cp.tipo_comprob=f.tipocpbte and'
      '          cp.compra_venta='#39'V'#39
      ''
      'where f.fechavta between :desde and :hasta and f.anulado<>'#39'S'#39
      'and f.percibe_iva='#39'S'#39' and piva.importe>0')
    Left = 336
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DSPPercepciones: TDataSetProvider
    DataSet = QPercepciones
    Options = []
    Left = 456
    Top = 384
  end
  object CDSPercepciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPercepciones'
    OnCalcFields = CDSPercepcionesCalcFields
    Left = 536
    Top = 384
    object CDSPercepcionesID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSPercepcionesCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSPercepcionesLETRAFAC: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPercepcionesRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSPercepcionesCUIT: TStringField
      DisplayLabel = 'Cuit'
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSPercepcionesFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Vta'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSPercepcionesSUCFAC: TStringField
      DisplayLabel = 'Suc.Fac'
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSPercepcionesNUMEROFAC: TStringField
      DisplayLabel = 'Numero Fac'
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSPercepcionesNETOGRAV2: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPercepcionesTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPercepcionesPERCEPCIONDETALLE: TStringField
      DisplayLabel = 'Percecpcion'
      FieldName = 'PERCEPCIONDETALLE'
      Origin = 'PERCEPCIONDETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSPercepcionesPERCEPCIONETO: TFloatField
      DisplayLabel = 'Percep.Base Impon.'
      FieldName = 'PERCEPCIONETO'
      Origin = 'PERCEPCIONETO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPercepcionesPERCEPCIONTASA: TFloatField
      DisplayLabel = 'Tasa %'
      FieldName = 'PERCEPCIONTASA'
      Origin = 'PERCEPCIONTASA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPercepcionesPERCEPCIONIMPORTE: TFloatField
      DisplayLabel = 'Percep.Importe'
      FieldName = 'PERCEPCIONIMPORTE'
      Origin = 'PERCEPCIONIMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSPercepcionesNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSPercepcionesMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSPercepcionesCODIGO_AFIP: TStringField
      DisplayLabel = 'Cod.AFIP'
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object CDSPercepcionesTOTAL_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_STR'
      Calculated = True
    end
    object CDSPercepcionesPERCEPCION_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'PERCEPCION_STR'
      Calculated = True
    end
    object CDSPercepcionesTASA_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'TASA_STR'
      Calculated = True
    end
    object CDSPercepcionesNETOPERCEP_STR: TStringField
      FieldKind = fkCalculated
      FieldName = 'NETOPERCEP_STR'
      Calculated = True
    end
    object CDSPercepcionesCODIGOIMPUESTO: TStringField
      FieldName = 'CODIGOIMPUESTO'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object CDSPercepcionesCODIGOREGIMEN: TStringField
      FieldName = 'CODIGOREGIMEN'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object CDSPercepcionesCODIGOOPERACION: TStringField
      FieldName = 'CODIGOOPERACION'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSPercepcionesCODIGOCONDICION: TStringField
      FieldName = 'CODIGOCONDICION'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CDSPercepcionesTIPODOCUMENTORETENIDO: TStringField
      FieldName = 'TIPODOCUMENTORETENIDO'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object CDSPercepcionesTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Required = True
    end
    object CDSPercepcionesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSPercepcionesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSPercepcionesPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      ReadOnly = True
    end
  end
  object DSPercepciones: TDataSource
    DataSet = CDSPercepciones
    Left = 632
    Top = 384
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Left = 616
    Top = 456
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 680
    Top = 456
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Origin = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Origin = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Origin = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Origin = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Origin = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Origin = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Origin = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
      Origin = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Origin = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Origin = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Origin = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
      Origin = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
      Origin = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = []
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Origin = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Origin = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaCODIGO_COT: TStringField
      FieldName = 'CODIGO_COT'
      Origin = 'CODIGO_COT'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Origin = 'DIRECCION_NRO'
      Size = 10
    end
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Origin = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Origin = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
  end
  object frPercepciones: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.834420023150000000
    ReportOptions.LastChange = 39638.834420023150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 184
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'Percepciones'
    Title = 'Archivo de Retenciones'
    Left = 320
    Top = 208
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 624
    Top = 288
  end
  object frDBDSPercepciones: TfrxDBDataset
    UserName = 'frDBDSPercepciones'
    CloseDataSource = False
    DataSource = DSPercepciones
    BCDToCurrency = False
    DataSetOptions = []
    Left = 512
    Top = 192
    FieldDefs = <
      item
        FieldName = 'ID_FC'
        FieldAlias = 'ID_FC'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'LETRAFAC'
        FieldAlias = 'LETRAFAC'
      end
      item
        FieldName = 'RAZONSOCIAL'
        FieldAlias = 'RAZONSOCIAL'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'SUCFAC'
        FieldAlias = 'SUCFAC'
      end
      item
        FieldName = 'NUMEROFAC'
        FieldAlias = 'NUMEROFAC'
      end
      item
        FieldName = 'NETOGRAV2'
        FieldAlias = 'NETOGRAV2'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'PERCEPCIONDETALLE'
        FieldAlias = 'PERCEPCIONDETALLE'
      end
      item
        FieldName = 'PERCEPCIONETO'
        FieldAlias = 'PERCEPCIONETO'
      end
      item
        FieldName = 'PERCEPCIONTASA'
        FieldAlias = 'PERCEPCIONTASA'
      end
      item
        FieldName = 'PERCEPCIONIMPORTE'
        FieldAlias = 'PERCEPCIONIMPORTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'MUESTRASUCURSAL'
        FieldAlias = 'MUESTRASUCURSAL'
      end
      item
        FieldName = 'CODIGO_AFIP'
        FieldAlias = 'CODIGO_AFIP'
      end
      item
        FieldName = 'TOTAL_STR'
        FieldAlias = 'TOTAL_STR'
      end
      item
        FieldName = 'PERCEPCION_STR'
        FieldAlias = 'PERCEPCION_STR'
      end
      item
        FieldName = 'TASA_STR'
        FieldAlias = 'TASA_STR'
      end
      item
        FieldName = 'NETOPERCEP_STR'
        FieldAlias = 'NETOPERCEP_STR'
      end
      item
        FieldName = 'CODIGOIMPUESTO'
        FieldAlias = 'CODIGOIMPUESTO'
      end
      item
        FieldName = 'CODIGOREGIMEN'
        FieldAlias = 'CODIGOREGIMEN'
      end
      item
        FieldName = 'CODIGOOPERACION'
        FieldAlias = 'CODIGOOPERACION'
      end
      item
        FieldName = 'CODIGOCONDICION'
        FieldAlias = 'CODIGOCONDICION'
      end
      item
        FieldName = 'TIPODOCUMENTORETENIDO'
        FieldAlias = 'TIPODOCUMENTORETENIDO'
      end
      item
        FieldName = 'TIPOIVA'
        FieldAlias = 'TIPOIVA'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'PROVINCIA'
        FieldAlias = 'PROVINCIA'
      end>
  end
  object DataToTxt_2: TDataToAscii
    DataSet = CDSPercepciones
    Separator = #0
    Quote = #0
    Fields = <
      item
        DataField = 'CODIGO_AFIP'
        FixedLength = 1
      end
      item
        DataField = 'FECHAVTA'
        FixedLength = 10
      end
      item
        DataField = 'NUMEROFAC'
        FixedLength = 8
      end
      item
        DataField = 'TOTAL_STR'
        FixedLength = 12
        Alignment = taRightJustify
        FillChar = '0'
      end
      item
        DataField = 'CUIT'
        FixedLength = 13
      end
      item
        DataField = 'LETRAFAC'
        FixedLength = 1
      end
      item
        DataField = 'SUCFAC'
        FixedLength = 4
      end
      item
        DataField = 'PERCEPCION_STR'
        FixedLength = 11
        Alignment = taRightJustify
        FillChar = '0'
      end>
    Left = 800
    Top = 184
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSPercepciones
    Columns = <
      item
        DataField = 'ID_FC'
        Title = 'ID_FC'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'TIPOCPBTE'
        Title = 'Tp'
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
      end
      item
        DataField = 'LETRAFAC'
        Title = 'Letra'
      end
      item
        DataField = 'RAZONSOCIAL'
        Title = 'Razon Social'
      end
      item
        DataField = 'CUIT'
        Title = 'Cuit'
      end
      item
        DataField = 'FECHAVTA'
        Title = 'Fecha Vta'
      end
      item
        DataField = 'SUCFAC'
        Title = 'Suc.Fac'
      end
      item
        DataField = 'NUMEROFAC'
        Title = 'Numero Fac'
      end
      item
        DataField = 'NETOGRAV2'
        Title = 'Neto'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'TOTAL'
        Title = 'Total'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PERCEPCIONDETALLE'
        Title = 'Percecpcion'
      end
      item
        DataField = 'PERCEPCIONETO'
        Title = 'Percep.Base Impon.'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PERCEPCIONTASA'
        Title = 'Tasa %'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'PERCEPCIONIMPORTE'
        Title = 'Percep.Importe'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
      end
      item
        DataField = 'MUESTRASUCURSAL'
        Title = 'Sucursal'
      end
      item
        DataField = 'CODIGO_AFIP'
        Title = 'Cod.AFIP'
      end>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Left = 880
    Top = 240
  end
end
