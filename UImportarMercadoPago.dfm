inherited FormImportarMercadoPago: TFormImportarMercadoPago
  Caption = 'FormImportarMercadoPago'
  ClientHeight = 680
  ClientWidth = 960
  OnResize = FormResize
  ExplicitWidth = 978
  ExplicitHeight = 721
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 960
    Height = 627
    Align = alClient
    ExplicitWidth = 960
    ExplicitHeight = 627
    DesignSize = (
      960
      627)
    object lbl2: TLabel
      Left = 504
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Novedades'
    end
    object Label1: TLabel
      Left = 744
      Top = 314
      Width = 107
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Registros Rechazados'
      ExplicitTop = 340
    end
    object Label2: TLabel
      Left = 744
      Top = 336
      Width = 98
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Registros Aceptados'
      ExplicitTop = 362
    end
    object lbRegProcesados: TLabel
      Left = 922
      Top = 336
      Width = 12
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      Caption = '(0)'
      ExplicitTop = 362
    end
    object lbRegFallidos: TLabel
      Left = 922
      Top = 314
      Width = 12
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      Caption = '(0)'
      ExplicitTop = 340
    end
    object lbRegRecibidos: TLabel
      Left = 333
      Top = 407
      Width = 12
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      Caption = '(0)'
    end
    object Label3: TLabel
      Left = 208
      Top = 407
      Width = 94
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Registros Recibidos'
    end
    object btnBuscarArchivo: TSpeedButton
      Left = 431
      Top = 20
      Width = 23
      Height = 22
      Action = BuscarArchivo
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
        9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
        034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
        06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A03
        9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
        10AC300DAB2809A41C039E0F16AA20D5F2D8E9F8EA48C052039E0C039E0C039F
        0C03A70C024C04FF00FF0357060D822317B6410EA92D05A013049F0D07A01182
        D589FFFFFFF4FCF640BC4A039E0C039E0C03A50C037B0801420303570617A341
        18B54A11AB3406A011039E0C049F0D039E0C74D07DFCFEFCF3FBF43EBC48039E
        0C03A10C03960A01420306680D21B1511EB751BFEDCFBAEAC6B7E9C2B8EAC5B5
        E9C2B7E9C1F6FCF7FFFFFFEEFAEF54C55E03A00C039F0C014A040874123EBD69
        2ABA5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFCFFFFFFFFFFFFAAE3
        B003A00C039F0C02520506780E54C57A44C67452C77D57CA8156CA8057CA8149
        C57379D592FAFEFAFFFFFF97DDA51AAD3307A518039D0C01460306780E4CBD69
        83DDA722B6551CB24E22B55422B55455CA7FE1F6E9FFFFFF88D99D10AB2F0CA6
        2706A716038C0A014603FF00FF139923AAE7C568D08E16AF481BB14C39BF68F4
        FCF7FFFFFF84D99E11AA320EA7290BA42009AF1C036B0AFF00FFFF00FF139923
        56C573C5F0D866CF8C20B45223B554AAE6C096DEB119B14813AC3C12AA340FB0
        2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
        BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
        FF00FF13992313992398E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43513992313
        9923139923139923138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
    end
    object lbl4: TLabel
      Left = 7
      Top = 2
      Width = 82
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Archivo de Datos'
    end
    object Label4: TLabel
      Left = 7
      Top = 418
      Width = 120
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Columna de Fecha Cobro'
    end
    object Label5: TLabel
      Left = 7
      Top = 461
      Width = 109
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Columna de NickName'
    end
    object Label6: TLabel
      Left = 7
      Top = 504
      Width = 91
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Columna del Monto'
    end
    object lbCtaMercadoPago: TLabel
      Left = 496
      Top = 500
      Width = 104
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Cta de Mercado Pago'
      ExplicitTop = 520
    end
    object Label7: TLabel
      Left = 496
      Top = 454
      Width = 66
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Form Pago Tx'
      ExplicitTop = 474
    end
    object Label8: TLabel
      Left = 496
      Top = 407
      Width = 24
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Caja '
      ExplicitTop = 427
    end
    object RxLabel2: TLabel
      Left = 496
      Top = 315
      Width = 75
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Sucursal de Vta'
      Transparent = True
      ExplicitTop = 335
    end
    object RxLabel6: TLabel
      Left = 496
      Top = 361
      Width = 102
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Tipo de Comprobante'
      Transparent = True
      ExplicitTop = 381
    end
    object Label9: TLabel
      Left = 7
      Top = 546
      Width = 113
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Columna Nro Operacion'
    end
    object mNovedades: TMemo
      Left = 496
      Top = 21
      Width = 451
      Height = 289
      Anchors = [akLeft, akTop, akBottom]
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object btPasarPagos: TBitBtn
      Left = 815
      Top = 356
      Width = 132
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Gravar Novedades'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF97433F97433FB59A9BB59A9BB59A9BB5
        9A9BB59A9BB59A9BB59A9B93303097433FFF00FFFF00FFFF00FFFF00FF97433F
        D66868C66060E5DEDF92292A92292AE4E7E7E0E3E6D9DFE0CCC9CC8F201FAF46
        4697433FFF00FFFF00FFFF00FF97433FD06566C25F5FE9E2E292292A92292AE2
        E1E3E2E6E8DDE2E4CFCCCF8F2222AD464697433FFF00FFFF00FFFF00FF97433F
        D06565C15D5DECE4E492292A92292ADFDDDFE1E6E8E0E5E7D3D0D28A1E1EAB44
        4497433FFF00FFFF00FFFF00FF97433FD06565C15B5CEFE6E6EDE5E5E5DEDFE0
        DDDFDFE0E2E0E1E3D6D0D2962A2AB24A4A97433FFF00FFFF00FFFF00FF97433F
        CD6263C86060C96767CC7272CA7271C66969C46464CC6D6CCA6667C55D5DCD65
        6597433FFF00FFFF00FFFF00FF97433FB65553C27B78D39D9CD7A7A5D8A7A6D8
        A6A5D7A09FD5A09FD7A9A7D8ABABCC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
        CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
        6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FFFF00FF
        97433FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F99743
        3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
    end
    object dbcCtaCaja: TJvDBLookupCombo
      Left = 496
      Top = 426
      Width = 258
      Height = 23
      DisplayEmpty = 'Seleccionar caja'
      EmptyValue = '-1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Anchors = [akLeft, akBottom]
      LookupField = 'ID_CUENTA_CAJA'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSCajas
      ParentFont = False
      TabOrder = 2
    end
    object dbcSucursal: TJvDBLookupCombo
      Left = 496
      Top = 334
      Width = 217
      Height = 21
      EmptyValue = '-1'
      Anchors = [akLeft, akBottom]
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucursal
      TabOrder = 3
      OnClick = dbcSucursalClick
    end
    object dbcComprobante: TJvDBLookupCombo
      Left = 496
      Top = 380
      Width = 217
      Height = 21
      DisplayAllFields = True
      EmptyValue = '-1'
      Anchors = [akLeft, akBottom]
      LookupField = 'ID_COMPROBANTE'
      LookupDisplay = 'DENOMINACION'
      LookupSource = DSComprobante
      TabOrder = 4
    end
    object edArchivo: TEdit
      Left = 7
      Top = 21
      Width = 418
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 5
      Text = 'Archivo a Procesar'
    end
    object btPasar: TBitBtn
      Left = 832
      Top = 596
      Width = 102
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Pasar Pagos'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF00035A
        050006900E00089511000A9915000C9D19000DA01C0010A5210011A6240013AB
        270014AC290017B02E0018B230001BB735001CBA38001FBF3E0020C1400022C4
        430023C5450025C7470027CB4B0028CC4D0029CF52002CD355002DD4580030D9
        5E0034DE65000565930005669500086B9A000268A3000274A9000479AF001479
        AD000788BC00108ABB001F91BF000385C000058BC7000791C5001CAAD3002CA7
        D30031B5D30030B0DA0012CBFE0030C9E90020CDFD003FE3FE0079C0DC0048CF
        F20051D7F60051D8F70054DEFF0055F6FE005FFEFF0074E0F80068F6FF0073FA
        FE0078FBFE007FFEFF0083FAFB0089FBFE0092FFFF009FFBFE0098FFFF00A7E9
        F300A3F3FF00A0FFFF00B6F2FF00B7FFFF00C6FFFF00DAF8FF00DCFFFF00E2F7
        FC00EDFAFC00F0FFFF00FBFFFF00000000000000000000000000000000000000
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
        0000000101010100000000001C1C1C1C1C1C0001030201000000001F2D2C2E34
        37291C010504010000001F392F2C2E32010101010806010101011F392F2C2E32
        0113130D0D09080604011F392F2C2E33011714130E0D0B0908011F3F42444749
        010101011413010101011F4128272223242130011716010000001F2A2F2C2E34
        372B1E011A19010000001F392F2C2E34372B25010101010000001F392F2C2E34
        372B251C0000000000001F392F2C2E34372B251C0000000000001F3A3835363A
        3D31261C0000000000001F4C4B46433F3F3E351C00000000000000204A47453F
        3D3C1D0000000000000000001F1F1F1F1F1F0000000000000000}
      TabOrder = 6
      OnClick = btPasarClick
    end
    object chFecha: TCheckBox
      Left = 682
      Top = 600
      Width = 144
      Height = 17
      Anchors = [akLeft, akBottom]
      Caption = 'Aplicar con Fecha del Dia '
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object dbgMercadoPago: TAdvStringGrid
      Left = 2
      Top = 56
      Width = 475
      Height = 345
      Anchors = [akLeft, akTop, akBottom]
      Ctl3D = True
      DrawingStyle = gdsClassic
      FixedCols = 0
      RowCount = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      ControlLook.ToggleSwitch.BackgroundBorderWidth = 1.000000000000000000
      ControlLook.ToggleSwitch.ButtonBorderWidth = 1.000000000000000000
      ControlLook.ToggleSwitch.CaptionFont.Charset = DEFAULT_CHARSET
      ControlLook.ToggleSwitch.CaptionFont.Color = clWindowText
      ControlLook.ToggleSwitch.CaptionFont.Height = -12
      ControlLook.ToggleSwitch.CaptionFont.Name = 'Segoe UI'
      ControlLook.ToggleSwitch.CaptionFont.Style = []
      ControlLook.ToggleSwitch.Shadow = False
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Larger than'
        'Smaller than'
        'Clear')
      FixedRowHeight = 22
      FixedRowAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HTMLSettings.ImageFolder = 'images'
      HTMLSettings.ImageBaseName = 'img'
      Look = glClassic
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.Color = clBtnFace
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SelectionColor = clHighlight
      SelectionTextColor = clWindowText
      Version = '9.0.0.0'
      ColWidths = (
        64
        64
        64
        64
        64)
      RowHeights = (
        22)
    end
    object cbFecha: TComboBox
      Left = 7
      Top = 434
      Width = 377
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 9
    end
    object cbNick: TComboBox
      Left = 7
      Top = 477
      Width = 377
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 10
    end
    object cbMonto: TComboBox
      Left = 7
      Top = 523
      Width = 377
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 11
    end
    object dbcMercadoPago: TJvDBLookupCombo
      Left = 496
      Top = 519
      Width = 258
      Height = 21
      Hint = 'Tarjetas de credito'
      EmptyValue = '-1'
      Anchors = [akLeft, akBottom]
      LookupField = 'ID_CUENTA'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSCtaMercadoPago
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object dbcFormaPago: TJvDBLookupCombo
      Left = 496
      Top = 473
      Width = 258
      Height = 21
      Hint = 'Tarjetas de credito'
      EmptyValue = '-1'
      Anchors = [akLeft, akBottom]
      LookupField = 'ID_FPAGO'
      LookupDisplay = 'DESCRIPCION'
      LookupSource = DSTxBco
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object cbNroOp: TComboBox
      Left = 7
      Top = 565
      Width = 377
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 14
    end
    object edSuma: TJvCalcEdit
      Left = 356
      Top = 407
      Width = 121
      Height = 21
      DisplayFormat = ',0.00'
      Enabled = False
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 15
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
  end
  inherited ToolBar1: TToolBar
    Top = 627
    Width = 960
    Align = alBottom
    ExplicitTop = 627
    ExplicitWidth = 960
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 657
    Width = 960
    Align = alBottom
    ExplicitTop = 657
    ExplicitWidth = 960
    inherited sbEstado: TStatusBar
      Width = 798
      ExplicitWidth = 798
    end
  end
  inherited ActionList1: TActionList
    object BuscarArchivo: TAction
      ImageIndex = 8
      OnExecute = BuscarArchivoExecute
    end
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 424
    Top = 248
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 480
    Top = 216
  end
  object OpenDialog: TOpenDialog
    Left = 808
    Top = 400
  end
  object dlgSave1: TSaveDialog
    Left = 864
    Top = 392
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 608
    Top = 24
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 672
    Top = 32
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 744
    Top = 32
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobante'
    Left = 744
    Top = 192
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
  end
  object DSPComprobante: TDataSetProvider
    DataSet = QComproba
    Options = []
    Left = 688
    Top = 184
  end
  object DSComprobante: TDataSource
    DataSet = CDSComprobantes
    Left = 848
    Top = 200
  end
  object DSPCajas: TDataSetProvider
    DataSet = QCajas
    Options = []
    Left = 680
    Top = 107
  end
  object CDSCajas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCajas'
    Left = 744
    Top = 107
    object CDSCajasID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCajasNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajasFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object CDSCajasFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object CDSCajasID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object CDSCajasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSCajas: TDataSource
    DataSet = CDSCajas
    Left = 792
    Top = 107
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_caja,c.numerocaja, c.fecha_incio,c.fecha_cierre,c.id' +
        '_cuenta_caja,cc.nombre from caja_cab c'
      'left join cuenta_caja cc on cc.id_cuenta=c.id_cuenta_caja'
      'where c.estado=0 '
      'order By c.id_caja desc')
    Left = 616
    Top = 112
  end
  object QComproba: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select   ID_COMPROBANTE,TIPO_COMPROB,'
      '    CLASE_COMPROB, DENOMINACION,SUCURSAL from comprobantes'
      'where tipo_comprob in ('#39'RC'#39','#39'AJ'#39') and'
      '      sucursal=:sucursal and'
      '      compra_venta= '#39'V'#39)
    Left = 624
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QTxBco: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.* from formapago f where f.id_tpago=5')
    Left = 488
    Top = 496
  end
  object DSPTxBco: TDataSetProvider
    DataSet = QTxBco
    Options = []
    Left = 552
    Top = 488
  end
  object CDSTxBco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTxBco'
    Left = 624
    Top = 488
    object CDSTxBcoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object CDSTxBcoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Required = True
    end
    object CDSTxBcoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object CDSTxBcoCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSTxBcoSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSTxBcoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object CDSTxBcoACUMULABLE: TStringField
      FieldName = 'ACUMULABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSTxBco: TDataSource
    DataSet = CDSTxBco
    Left = 680
    Top = 496
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.codigo from clientes c'
      'where c.NICKNAME_MERCADOPAGO = :Nick')
    Left = 848
    Top = 472
    ParamData = <
      item
        Name = 'NICK'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
  end
  object QCtaMercadoPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from cuenta_caja c where c.id_tipo_cta=2')
    Left = 432
    Top = 512
  end
  object DSPCtaMercadoPago: TDataSetProvider
    DataSet = QCtaMercadoPago
    Options = []
    Left = 552
    Top = 536
  end
  object CDSCtaMercadoPago: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaMercadoPago'
    Left = 624
    Top = 544
    object CDSCtaMercadoPagoID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object CDSCtaMercadoPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSCtaMercadoPagoNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
  end
  object DSCtaMercadoPago: TDataSource
    DataSet = CDSCtaMercadoPago
    Left = 696
    Top = 504
  end
end
