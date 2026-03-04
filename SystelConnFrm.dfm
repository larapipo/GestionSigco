object FormSystelConn: TFormSystelConn
  Left = 0
  Top = 0
  Caption = 'Configuracion Balanzas Systel'
  ClientHeight = 582
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 77
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 12
      Top = 12
      Caption = 'Puerto'
      Transparent = True
    end
    object ePuerto: TcxSpinEdit
      Left = 76
      Top = 11
      TabOrder = 1
      Value = 1
      Width = 55
    end
    object btnBuscaEquipo: TcxButton
      Left = 200
      Top = 15
      Width = 97
      Height = 25
      Caption = 'Busca Equipo'
      TabOrder = 2
      Visible = False
      OnClick = btnBuscaEquipoClick
    end
    object cxLabel2: TcxLabel
      Left = 12
      Top = 46
      Caption = '#ID Equipo'
    end
    object eID: TcxSpinEdit
      Left = 76
      Top = 45
      TabOrder = 4
      Value = 5
      Width = 81
    end
    object Sincroniza: TcxButton
      Left = 768
      Top = 9
      Width = 93
      Height = 25
      Caption = 'Sincroniza'
      TabOrder = 5
      OnClick = SincronizaClick
    end
    object ProgressBar: TcxProgressBar
      Left = 327
      Top = 8
      Properties.PeakValue = 3.000000000000000000
      StyleFocused.TextColor = clBlack
      StyleHot.TextColor = clBlack
      TabOrder = 6
      Visible = False
      Width = 121
    end
    object chCuoraMax: TCheckBox
      Left = 766
      Top = 35
      Width = 73
      Height = 17
      Caption = 'Cuora Max'
      TabOrder = 7
    end
    object btBorrar: TButton
      Left = 576
      Top = 9
      Width = 83
      Height = 25
      Caption = 'Borrar PLUs'
      TabOrder = 8
      OnClick = btBorrarClick
    end
    object btConectar: TButton
      Left = 200
      Top = 46
      Width = 97
      Height = 25
      Caption = 'Test Coneccion'
      TabOrder = 9
      OnClick = btConectarClick
    end
    object chBorrar: TCheckBox
      Left = 766
      Top = 54
      Width = 121
      Height = 17
      Caption = 'Borrar antes de Sinc'
      TabOrder = 10
    end
  end
  object MainPageControl: TcxPageControl
    Left = 0
    Top = 77
    Width = 891
    Height = 387
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 383
    ClientRectLeft = 4
    ClientRectRight = 887
    ClientRectTop = 24
    object cxTabSheet2: TcxTabSheet
      Caption = 'Grilla PLU'
      ImageIndex = 1
      object Grid: TcxGrid
        Left = 0
        Top = 0
        Width = 883
        Height = 359
        Align = alClient
        TabOrder = 0
        object tvData: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsMemData
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object tvDataRecId: TcxGridDBColumn
            DataBinding.FieldName = 'RecId'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object tvDataPLU: TcxGridDBColumn
            DataBinding.FieldName = 'PLU'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object tvDataDESCRIPCION: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'DESCRIPCION'
            HeaderAlignmentHorz = taCenter
            Width = 260
          end
          object tvDataVERSION_PLU: TcxGridDBColumn
            Caption = 'Version PLU'
            DataBinding.FieldName = 'VERSION_PLU'
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object tvDataPRECIOLISTA1: TcxGridDBColumn
            Caption = 'Lista 1'
            DataBinding.FieldName = 'PRECIOLISTA1'
            HeaderAlignmentHorz = taCenter
            Width = 120
          end
          object tvDataPRECIOLISTA2: TcxGridDBColumn
            Caption = 'Lista 2'
            DataBinding.FieldName = 'PRECIOLISTA2'
            HeaderAlignmentHorz = taCenter
            Width = 121
          end
          object tvDataNRO_SECCION: TcxGridDBColumn
            Caption = '#Seccion'
            DataBinding.FieldName = 'NRO_SECCION'
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object tvDataTIPO_VENTA: TcxGridDBColumn
            Caption = 'Tipo Prod'
            DataBinding.FieldName = 'TIPO_VENTA'
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object tvDataSINCRO: TcxGridDBColumn
            Caption = 'Sincro'
            DataBinding.FieldName = 'SINCRO'
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
        end
        object GridLevel: TcxGridLevel
          GridView = tvData
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Configuracion'
      ImageIndex = 0
      object CfgPageControl: TcxPageControl
        Left = 0
        Top = 0
        Width = 883
        Height = 359
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet8
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 355
        ClientRectLeft = 4
        ClientRectRight = 879
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = 'Datos Comercio'
          ImageIndex = 2
          object cxLabel4: TcxLabel
            Left = 72
            Top = 28
            Caption = 'Linea # 1'
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 72
            Top = 65
            Caption = 'Linea # 2'
            Transparent = True
          end
          object eDatosComercio1: TcxTextEdit
            Left = 144
            Top = 27
            Properties.MaxLength = 18
            TabOrder = 2
            Width = 149
          end
          object eDatosComercio2: TcxTextEdit
            Left = 144
            Top = 64
            Properties.MaxLength = 34
            TabOrder = 3
            Width = 261
          end
          object btnGrabaDatosComercio: TcxButton
            Left = 451
            Top = 62
            Width = 75
            Height = 25
            Caption = 'Enviar'
            TabOrder = 4
            OnClick = btnGrabaDatosComercioClick
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Marquesina'
          ImageIndex = 0
          object cxLabel3: TcxLabel
            Left = 36
            Top = 28
            Caption = 'Texto de la Marquesina: '
            Transparent = True
          end
          object eTextoMarquesina: TcxTextEdit
            Left = 165
            Top = 27
            TabOrder = 1
            Width = 389
          end
          object BtnGrabaMarquesina: TcxButton
            Left = 479
            Top = 68
            Width = 75
            Height = 25
            Caption = 'Enviar'
            TabOrder = 2
            OnClick = BtnGrabaMarquesinaClick
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Fecha Y Hora'
          ImageIndex = 1
          object btnGetFecha: TcxButton
            Left = 92
            Top = 36
            Width = 433
            Height = 25
            Caption = 'Muestra fecha y hora en balanza'
            TabOrder = 0
            OnClick = btnGetFechaClick
          end
          object btnSetFecha: TcxButton
            Left = 92
            Top = 80
            Width = 433
            Height = 25
            Caption = 'Setea fecha y hora en balanza de acuerdo con esta PC'
            TabOrder = 1
            OnClick = btnSetFechaClick
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = 'Codigo de Barras'
          ImageIndex = 3
          object cxLabel6: TcxLabel
            Left = 46
            Top = 36
            Caption = 'Productos Venta por Peso'
            Transparent = True
          end
          object cxLabel7: TcxLabel
            Left = 46
            Top = 68
            Caption = 'Productos Venta por Unidad'
            Transparent = True
          end
          object cxLabel8: TcxLabel
            Left = 46
            Top = 104
            Caption = 'Suma de Productos'
            Transparent = True
          end
          object ePVPP1: TcxTextEdit
            Left = 215
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 3
            Text = '2'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP2: TcxTextEdit
            Left = 238
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 4
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP3: TcxTextEdit
            Left = 260
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 5
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP4: TcxTextEdit
            Left = 282
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 6
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP5: TcxTextEdit
            Left = 304
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 7
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP6: TcxTextEdit
            Left = 326
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 8
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP7: TcxTextEdit
            Left = 348
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 9
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP8: TcxTextEdit
            Left = 370
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 10
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP9: TcxTextEdit
            Left = 392
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 11
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP10: TcxTextEdit
            Left = 414
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 12
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP11: TcxTextEdit
            Left = 436
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 13
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPP12: TcxTextEdit
            Left = 458
            Top = 36
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 14
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU1: TcxTextEdit
            Left = 216
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 15
            Text = '2'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU2: TcxTextEdit
            Left = 238
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 16
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU3: TcxTextEdit
            Left = 260
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 17
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU4: TcxTextEdit
            Left = 282
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 18
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU5: TcxTextEdit
            Left = 304
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 19
            Text = 'P'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU6: TcxTextEdit
            Left = 326
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 20
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU7: TcxTextEdit
            Left = 348
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 21
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU8: TcxTextEdit
            Left = 370
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 22
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU9: TcxTextEdit
            Left = 392
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 23
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU10: TcxTextEdit
            Left = 414
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 24
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU11: TcxTextEdit
            Left = 436
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 25
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object ePVPU12: TcxTextEdit
            Left = 458
            Top = 63
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 26
            Text = 'I'
            OnExit = ePVPP1Exit
            OnKeyPress = ePVPP1KeyPress
            Width = 21
          end
          object eSDP1: TcxTextEdit
            Left = 216
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 27
            Text = '2'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP2: TcxTextEdit
            Left = 238
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 28
            Text = '0'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP3: TcxTextEdit
            Left = 260
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 29
            Text = '0'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP4: TcxTextEdit
            Left = 282
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 30
            Text = '3'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP5: TcxTextEdit
            Left = 304
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 31
            Text = '0'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP6: TcxTextEdit
            Left = 326
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 32
            Text = 'I'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP7: TcxTextEdit
            Left = 348
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 33
            Text = 'I'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP8: TcxTextEdit
            Left = 370
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 34
            Text = 'I'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP9: TcxTextEdit
            Left = 392
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 35
            Text = 'I'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP10: TcxTextEdit
            Left = 414
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 36
            Text = 'I'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP11: TcxTextEdit
            Left = 436
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 37
            Text = 'I'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object eSDP12: TcxTextEdit
            Left = 458
            Top = 103
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 1
            TabOrder = 38
            Text = 'I'
            OnExit = eSDP1Exit
            OnKeyPress = eSDP1KeyPress
            Width = 21
          end
          object cxLabel9: TcxLabel
            Left = 218
            Top = 148
            AutoSize = False
            Caption = 
              '0,1..9 : Numeros Fijos'#13#10'"I" Para el importe'#13#10'"B" Balanza'#13#10'"P" Co' +
              'digo PLU'#13#10'"C" Para cantidad (Kg o Uni)'#13#10'"S" Para Seccion'#13#10'"A" Pa' +
              'ra Cantidad de Articulos en Ticket'
            Transparent = True
            Height = 101
            Width = 217
          end
          object btnEnviaCodigoBarrascfg: TcxButton
            Left = 496
            Top = 212
            Width = 75
            Height = 25
            Caption = 'Enviar'
            TabOrder = 40
            OnClick = btnEnviaCodigoBarrascfgClick
          end
          object spTipoEan: TcxSpinEdit
            Left = 776
            Top = 32
            TabOrder = 41
            Value = 1
            Width = 55
          end
          object cxLabel16: TcxLabel
            Left = 784
            Top = 9
            Caption = 'Tipo EAN'
            Transparent = True
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'Vendedores'
          ImageIndex = 4
          object cxLabel10: TcxLabel
            Left = 90
            Top = 29
            Caption = 'Vendedor 1'
            Transparent = True
          end
          object cxLabel11: TcxLabel
            Left = 90
            Top = 56
            Caption = 'Vendedor 2'
            Transparent = True
          end
          object cxLabel12: TcxLabel
            Left = 90
            Top = 83
            Caption = 'Vendedor 3'
            Transparent = True
          end
          object cxLabel13: TcxLabel
            Left = 90
            Top = 110
            Caption = 'Vendedor 4'
            Transparent = True
          end
          object eVendedor1: TcxTextEdit
            Left = 172
            Top = 28
            TabOrder = 4
            Width = 121
          end
          object eVendedor2: TcxTextEdit
            Left = 172
            Top = 55
            TabOrder = 5
            Width = 121
          end
          object eVendedor3: TcxTextEdit
            Left = 172
            Top = 82
            TabOrder = 6
            Width = 121
          end
          object eVendedor4: TcxTextEdit
            Left = 172
            Top = 109
            TabOrder = 7
            Width = 121
          end
          object btnGrabaVendedores: TcxButton
            Left = 364
            Top = 107
            Width = 75
            Height = 25
            Caption = 'Envia'
            TabOrder = 8
            OnClick = btnGrabaVendedoresClick
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Generales'
          ImageIndex = 5
          DesignSize = (
            875
            331)
          object cxLabel14: TcxLabel
            Left = 72
            Top = 28
            Caption = 'Permisos de Precio'
            Transparent = True
          end
          object ePermisoPrecios: TcxComboBox
            Left = 184
            Top = 27
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Solo Lista de Precios 1'#11
              'Lista de Precios 1 y 2'#11
              'Lista de Precios 1 y 2, y precios manuales')
            TabOrder = 1
            Text = 'Lista de Precios 1 y 2, y precios manuales'
            Width = 233
          end
          object BtnEnviaCfgPrecios: TcxButton
            Left = 456
            Top = 25
            Width = 75
            Height = 25
            Caption = 'Envia'
            TabOrder = 2
            OnClick = BtnEnviaCfgPreciosClick
          end
          object cxLabel15: TcxLabel
            Left = 72
            Top = 96
            Caption = 'Codigo de Barras en cada producto'
            Transparent = True
          end
          object eCodBarraxProd: TcxComboBox
            Left = 260
            Top = 95
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Si'
              'No')
            TabOrder = 4
            Text = 'Si'
            Width = 45
          end
          object btnEnviaCfgCodBarras: TcxButton
            Left = 328
            Top = 93
            Width = 75
            Height = 25
            Caption = 'Envia'
            TabOrder = 5
            OnClick = btnEnviaCfgCodBarrasClick
          end
          object btnLeePeso: TcxButton
            Left = 634
            Top = 25
            Width = 75
            Height = 25
            Caption = 'Lee peso'
            TabOrder = 6
            OnClick = btnLeePesoClick
          end
          object cxButton1: TcxButton
            Left = 135
            Top = 137
            Width = 75
            Height = 25
            Caption = 'Lee PLU'
            TabOrder = 7
            OnClick = cxButton1Click
          end
          object Memo1: TMemo
            Left = 216
            Top = 139
            Width = 637
            Height = 181
            Anchors = [akLeft, akTop, akRight, akBottom]
            ScrollBars = ssVertical
            TabOrder = 8
          end
          object EDplu: TEdit
            Left = 135
            Top = 168
            Width = 75
            Height = 21
            TabOrder = 9
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 464
    Width = 891
    Height = 118
    Align = alBottom
    TabOrder = 2
    object eResultado: TcxMemo
      Left = 1
      Top = 21
      Align = alClient
      Properties.ReadOnly = False
      Properties.ScrollBars = ssVertical
      TabOrder = 0
      Height = 96
      Width = 889
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 889
      Height = 20
      Align = alTop
      Caption = 'Resultado'
      TabOrder = 1
    end
  end
  object memData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 584
    Top = 348
    object memDataPLU: TStringField
      FieldName = 'PLU'
      Size = 5
    end
    object memDataDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 18
    end
    object memDataVERSION_PLU: TStringField
      FieldName = 'VERSION_PLU'
      Size = 1
    end
    object memDataPRECIOLISTA1: TCurrencyField
      FieldName = 'PRECIOLISTA1'
    end
    object memDataPRECIOLISTA2: TCurrencyField
      FieldName = 'PRECIOLISTA2'
    end
    object memDataNRO_SECCION: TStringField
      FieldName = 'NRO_SECCION'
      Size = 2
    end
    object memDataTIPO_VENTA: TStringField
      FieldName = 'TIPO_VENTA'
      Size = 1
    end
    object memDataSINCRO: TStringField
      FieldName = 'SINCRO'
      Size = 5
    end
    object memDataDETALLE_SECC: TStringField
      FieldName = 'DETALLE_SECC'
      Size = 18
    end
  end
  object dsMemData: TDataSource
    DataSet = memData
    Left = 452
    Top = 20
  end
  object PropertyStore: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = eCodBarraxProd
        Properties.Strings = (
          'Text')
      end
      item
        Component = eDatosComercio1
        Properties.Strings = (
          'Text')
      end
      item
        Component = eDatosComercio2
        Properties.Strings = (
          'Text')
      end
      item
        Component = eID
        Properties.Strings = (
          'Value')
      end
      item
        Component = ePermisoPrecios
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePuerto
        Properties.Strings = (
          'Value')
      end
      item
        Component = ePVPP1
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP10
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP11
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP12
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP2
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP3
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP4
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP5
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP6
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP7
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP8
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPP9
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU1
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU10
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU11
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU12
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU2
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU3
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU4
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU5
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU6
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU7
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU8
        Properties.Strings = (
          'Text')
      end
      item
        Component = ePVPU9
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP1
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP10
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP11
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP12
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP2
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP3
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP4
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP5
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP6
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP7
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP8
        Properties.Strings = (
          'Text')
      end
      item
        Component = eSDP9
        Properties.Strings = (
          'Text')
      end
      item
        Component = eTextoMarquesina
        Properties.Strings = (
          'Text')
      end
      item
        Component = eVendedor1
        Properties.Strings = (
          'Text')
      end
      item
        Component = eVendedor2
        Properties.Strings = (
          'Text')
      end
      item
        Component = eVendedor3
        Properties.Strings = (
          'Text')
      end
      item
        Component = eVendedor4
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'Systel.ini'
    StorageType = stStream
    Left = 352
    Top = 21
  end
  object QStock: TFDQuery
    SQL.Strings = (
      'select from  stock')
    Left = 360
    Top = 371
  end
  object ComBuscador1: TComBuscador
    rOk = False
    Left = 232
    Top = 120
  end
end
