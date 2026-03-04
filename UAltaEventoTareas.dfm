object FormAltaEventoTareas: TFormAltaEventoTareas
  Left = 0
  Top = 0
  Caption = 'Alta Evento Tareas'
  ClientHeight = 641
  ClientWidth = 1264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    PopupMenu = pmOpciones
    TabOrder = 0
    object lbTitulo: TLabel
      Left = 16
      Top = 8
      Width = 139
      Height = 23
      Caption = 'Alta de Evento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = lbTituloClick
    end
    object edTitulo: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 335
      Height = 35
      Align = alLeft
      AutoSize = False
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Alta de Evento'
      Visible = False
      OnExit = edTituloExit
      OnKeyPress = edTituloKeyPress
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 41
    Width = 649
    Height = 559
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 543
    object Label3: TLabel
      Left = 447
      Top = 5
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 447
      Top = 53
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object Label5: TLabel
      Left = 510
      Top = 53
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label6: TLabel
      Left = 9
      Top = 161
      Width = 31
      Height = 14
      Caption = 'Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 381
      Top = 240
      Width = 25
      Height = 14
      Caption = 'Area'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 9
      Top = 289
      Width = 92
      Height = 14
      Caption = 'Usuario Asignado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 9
      Top = 115
      Width = 40
      Height = 13
      Caption = 'Asunto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 211
      Top = 289
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label13: TLabel
      Left = 10
      Top = 239
      Width = 63
      Height = 16
      Caption = 'Profesional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edFecha: TJvDateEdit
      Left = 447
      Top = 24
      Width = 90
      Height = 21
      DefaultToday = True
      ShowNullDate = False
      TabOrder = 0
    end
    object edtDesde: TJvTimeEdit
      Left = 447
      Top = 72
      Width = 57
      Height = 21
      TabOrder = 1
      OnChange = edtDesdeChange
    end
    object edtHasta: TJvTimeEdit
      Left = 510
      Top = 72
      Width = 58
      Height = 21
      TabOrder = 2
    end
    object edNotas: TEdit
      Left = 9
      Top = 177
      Width = 615
      Height = 43
      AutoSize = False
      TabOrder = 3
    end
    object cbArea: TJvDBLookupCombo
      Left = 381
      Top = 257
      Width = 243
      Height = 21
      DisplayEmpty = 'Sin Seleccion'
      EmptyValue = '-1'
      LookupField = 'ID'
      LookupDisplay = 'DETALLE'
      LookupSource = DSArea
      TabOrder = 4
    end
    object cbUsuarios: TJvDBLookupCombo
      Left = 9
      Top = 308
      Width = 194
      Height = 21
      DisplayEmpty = 'SIn Usuario'
      EmptyValue = '-1'
      LookupField = 'USER_ID'
      LookupDisplay = 'USER_NAME'
      LookupSource = DSUsuario
      TabOrder = 5
    end
    object edAsunto: TEdit
      Left = 9
      Top = 134
      Width = 615
      Height = 21
      TabOrder = 6
    end
    object Panel1: TPanel
      Left = 0
      Top = 490
      Width = 649
      Height = 69
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 7
      ExplicitTop = 474
      object chGeneraEventos: TCheckBox
        Left = 19
        Top = 24
        Width = 97
        Height = 17
        Caption = 'Generar Eventos Aut.'
        TabOrder = 0
        OnClick = chGeneraEventosClick
      end
      object pnRepeticion: TPanel
        Left = 152
        Top = 8
        Width = 249
        Height = 53
        Enabled = False
        TabOrder = 1
        object Label11: TLabel
          Left = 8
          Top = 4
          Width = 43
          Height = 13
          Caption = 'Cantidad'
        end
        object Label12: TLabel
          Left = 136
          Top = 4
          Width = 57
          Height = 13
          Caption = 'Recurrencia'
        end
        object udCantidad: TUpDown
          Left = 65
          Top = 23
          Width = 16
          Height = 21
          Associate = edCantidad
          Min = 1
          Max = 20
          Position = 1
          TabOrder = 0
          Thousands = False
        end
        object udPerirodo: TUpDown
          Left = 203
          Top = 23
          Width = 16
          Height = 21
          Associate = edIntervalo
          Min = 1
          Max = 60
          Position = 30
          TabOrder = 1
          Thousands = False
        end
        object edCantidad: TEdit
          Left = 8
          Top = 23
          Width = 57
          Height = 21
          TabOrder = 2
          Text = '1'
        end
        object edIntervalo: TEdit
          Left = 136
          Top = 23
          Width = 67
          Height = 21
          TabOrder = 3
          Text = '30'
        end
      end
      object btEventosAsoc: TBitBtn
        Left = 504
        Top = 32
        Width = 120
        Height = 25
        Caption = 'Eventos Asociads'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000333333FF333333FF0000
          0000000000000000000000000000000000000000000000000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF0F0F0F4D0F0F0F4D3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
          33FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000333333FF00000000000000003333
          33FF00000000242424B3242424B3242424B3242424B300000000000000002424
          24B3242424B3242424B3242424B300000000333333FF00000000000000003333
          33FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000333333FF00000000000000003333
          33FF00000000242424B3242424B3242424B3242424B300000000000000002424
          24B3242424B3242424B3242424B300000000333333FF00000000000000003333
          33FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000333333FF00000000000000003333
          33FF00000000242424B3242424B3242424B3242424B300000000000000002424
          24B3242424B3242424B3242424B300000000333333FF00000000000000003333
          33FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000333333FF00000000000000003333
          33FF00000000242424B3242424B3242424B3242424B300000000000000002424
          24B3242424B3242424B3242424B300000000333333FF00000000000000003333
          33FF0000000000000000000000000000000000000000333333FF333333FF0000
          000000000000000000000000000000000000333333FF00000000000000003333
          33FF333333FF333333FF333333FF333333FF333333FF0F0F0F4D0F0F0F4D3333
          33FF333333FF333333FF333333FF333333FF333333FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 2
        Visible = False
        OnClick = btEventosAsocClick
      end
    end
    object dbcProfesional: TJvDBLookupCombo
      Left = 9
      Top = 257
      Width = 366
      Height = 21
      DropDownCount = 15
      DropDownWidth = 400
      DisplayAllFields = True
      DisplayEmpty = 'Sin Profesional'
      EmptyValue = '-1'
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE;ESPECIALIDAD'
      LookupSource = DSProfesionales
      TabOrder = 8
      OnClick = dbcProfesionalClick
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 209
      Top = 308
      Width = 267
      Height = 21
      DisplayEmpty = 'Sin Seleccion'
      EmptyValue = '-1'
      LookupField = 'ID'
      LookupDisplay = 'DETALLE'
      LookupSource = DSEstados
      TabOrder = 9
    end
    object gbComplementarios: TGroupBox
      Left = 0
      Top = 416
      Width = 649
      Height = 74
      Align = alBottom
      Caption = 'Datos Complementarios'
      TabOrder = 10
      Visible = False
      ExplicitTop = 400
      object Label14: TLabel
        Left = 14
        Top = 15
        Width = 60
        Height = 14
        Caption = 'Obra Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 349
        Top = 15
        Width = 95
        Height = 14
        Caption = 'Entidad Pagadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 213
        Top = 19
        Width = 55
        Height = 13
        Caption = 'Nro Afiliado'
        FocusControl = edNroAfiliado
      end
      object cbOSocial: TJvDBLookupCombo
        Left = 13
        Top = 35
        Width = 194
        Height = 21
        DisplayEmpty = 'Obra Social'
        EmptyValue = '-1'
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSOSocial
        TabOrder = 0
      end
      object cbEntidad: TJvDBLookupCombo
        Left = 349
        Top = 35
        Width = 275
        Height = 21
        DisplayEmpty = 'Entidad'
        EmptyValue = '-1'
        LookupField = 'ID'
        LookupDisplay = 'DENOMINACION'
        LookupSource = DSEntidadPaga
        TabOrder = 1
      end
      object edNroAfiliado: TEdit
        Left = 213
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'edNroAfiliado'
      end
    end
    object pcModos: TPageControl
      Left = 3
      Top = 11
      Width = 438
      Height = 63
      ActivePage = pagCliente
      HotTrack = True
      TabOrder = 11
      object pagCliente: TTabSheet
        Caption = 'Cliente'
        object ceCliente: TJvComboEdit
          Left = 4
          Top = 4
          Width = 73
          Height = 21
          AlwaysEnableButton = True
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          MaxLength = 6
          TabOrder = 0
          Text = ''
          OnButtonClick = ceClienteButtonClick
          OnKeyPress = ceClienteKeyPress
        end
        object edNombreCliente: TEdit
          Left = 83
          Top = 4
          Width = 281
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 1
        end
      end
      object pagProveedor: TTabSheet
        Caption = 'Proveedor'
        ImageIndex = 1
        object ceProveedor: TJvComboEdit
          Left = 6
          Top = 4
          Width = 73
          Height = 21
          AlwaysEnableButton = True
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          MaxLength = 6
          TabOrder = 0
          Text = ''
          OnButtonClick = ceProveedorButtonClick
          OnKeyPress = ceProveedorKeyPress
        end
        object edNombreProveedor: TEdit
          Left = 83
          Top = 4
          Width = 281
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 1
        end
      end
      object pagPacientes: TTabSheet
        Caption = 'Pacientes'
        ImageIndex = 2
        object edPaciente: TJvComboEdit
          Left = 2
          Top = 4
          Width = 73
          Height = 21
          AlwaysEnableButton = True
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          MaxLength = 6
          TabOrder = 0
          Text = ''
          OnButtonClick = edPacienteButtonClick
          OnKeyPress = edPacienteKeyPress
        end
        object edPacienteNombre: TEdit
          Left = 79
          Top = 4
          Width = 281
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 1
        end
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 600
    Width = 1264
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 584
    object Label2: TLabel
      Left = 147
      Top = 11
      Width = 58
      Height = 13
      Caption = 'Nro.Factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 214
      Top = 11
      Width = 97
      Height = 17
      Cursor = crHandPoint
      DataField = 'MUESTRANROCPBTE'
      DataSource = DSPlaner
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = DBText1Click
    end
    object btOk: TBitBtn
      Left = 1179
      Top = 5
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 1104
      Top = 5
      Width = 75
      Height = 31
      Align = alRight
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object btFacturar: TButton
      Left = 19
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Facturar'
      TabOrder = 2
      OnClick = btFacturarClick
    end
  end
  object pnDerecho: TPanel
    Left = 649
    Top = 41
    Width = 615
    Height = 559
    Align = alClient
    Caption = 'pnDerecho'
    TabOrder = 3
    ExplicitHeight = 543
    object DBPlannerMonthView1: TDBPlannerMonthView
      Left = 1
      Top = 1
      Width = 367
      Height = 557
      Cursor = crDefault
      Align = alClient
      AttachementGlyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888700078888888888708880788888888808808808888888880808080
        8888888880808080888888888080808088888888808080808888888880808080
        8888888880808080888888888080808088888888808080808888888888808080
        8888888888808880888888888888000888888888888888888888}
      AutoThemeAdapt = True
      BevelOuter = bvNone
      BorderWidth = 1
      CaptionColor = 13993046
      CaptionColorTo = 9714695
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWhite
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = []
      Color = 13696253
      Completion.Font.Charset = DEFAULT_CHARSET
      Completion.Font.Color = clWindowText
      Completion.Font.Height = -11
      Completion.Font.Name = 'Arial'
      Completion.Font.Style = []
      DateFormat = 'dd/mm/yyyy'
      DayFont.Charset = DEFAULT_CHARSET
      DayFont.Color = clWhite
      DayFont.Height = -11
      DayFont.Name = 'Tahoma'
      DayFont.Style = []
      DefaultItem.BorderColor = 11250603
      DefaultItem.CaptionBkg = 16575193
      DefaultItem.CaptionBkgTo = 14984316
      DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
      DefaultItem.CaptionFont.Color = clWindowText
      DefaultItem.CaptionFont.Height = -11
      DefaultItem.CaptionFont.Name = 'Tahoma'
      DefaultItem.CaptionFont.Style = []
      DefaultItem.Color = 16575193
      DefaultItem.ColorTo = 14984316
      DefaultItem.Cursor = -1
      DefaultItem.Font.Charset = DEFAULT_CHARSET
      DefaultItem.Font.Color = clWindowText
      DefaultItem.Font.Height = -11
      DefaultItem.Font.Name = 'Tahoma'
      DefaultItem.Font.Style = []
      DefaultItem.ItemBegin = 16
      DefaultItem.ItemEnd = 17
      DefaultItem.ItemPos = 0
      DefaultItem.Name = 'PlannerItem0'
      DefaultItem.SelectColor = 8506617
      DefaultItem.SelectColorTo = 6206458
      DefaultItem.Shadow = False
      DefaultItem.TrackSelectColor = 14925219
      DeleteGlyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
        0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
        161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
        56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
        075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
        EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
        EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
        5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
        0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      GradientStartColor = clNone
      HintPrevYear = 'Previous Year'
      HintPrevMonth = 'Previous Month'
      HintNextMonth = 'Next Month'
      HintNextYear = 'Next Year'
      InActiveColor = clWhite
      InversColor = clGray
      InversBkColor = 12121599
      Items = <>
      Line3D = False
      MonthGradientStartColor = 16572875
      MonthGradientEndColor = 14722429
      NameOfDays.Monday = 'lun.'
      NameOfDays.Tuesday = 'mar.'
      NameOfDays.Wednesday = 'mi'#233'.'
      NameOfDays.Thursday = 'jue.'
      NameOfDays.Friday = 'vie.'
      NameOfDays.Saturday = 's'#225'b.'
      NameOfDays.Sunday = 'dom.'
      NameOfDays.UseIntlNames = True
      NameOfMonths.January = 'ene.'
      NameOfMonths.February = 'feb.'
      NameOfMonths.March = 'mar.'
      NameOfMonths.April = 'abr.'
      NameOfMonths.May = 'may.'
      NameOfMonths.June = 'jun.'
      NameOfMonths.July = 'jul.'
      NameOfMonths.August = 'ago.'
      NameOfMonths.September = 'sep.'
      NameOfMonths.October = 'oct.'
      NameOfMonths.November = 'nov.'
      NameOfMonths.December = 'dic.'
      NameOfMonths.UseIntlNames = True
      PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
      PrintOptions.FooterFont.Color = clWindowText
      PrintOptions.FooterFont.Height = -11
      PrintOptions.FooterFont.Name = 'Tahoma'
      PrintOptions.FooterFont.Style = []
      PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
      PrintOptions.HeaderFont.Color = clWindowText
      PrintOptions.HeaderFont.Height = -11
      PrintOptions.HeaderFont.Name = 'Tahoma'
      PrintOptions.HeaderFont.Style = []
      SelectColor = clHighlight
      TextColor = 4474440
      TabOrder = 0
      TodayColor = 14024703
      TodayColorTo = 6278907
      URLGlyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
        0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
        0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
        88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
        888887F8F8222208888888776888208888888887777778888888}
      WeekFont.Charset = DEFAULT_CHARSET
      WeekFont.Color = clWindowText
      WeekFont.Height = -11
      WeekFont.Name = 'Tahoma'
      WeekFont.Style = []
      WeekName = 'Wk'
      WeekendTextColor = clHighlight
      Day = 8
      Month = 12
      Year = 2021
      Version = '3.2.3.0'
      DataBinding.StartTimeField = 'STARTIME'
      DataBinding.EndTimeField = 'ENDTIME'
      DataBinding.KeyField = 'ID_KEY'
      DataBinding.MinTimeField = 'MINTIME'
      DataBinding.MaxTimeField = 'MAXTIME'
      DataBinding.NotesField = 'NOTES'
      DataBinding.RecurrencyField = 'RECURRENCY'
      DataBinding.SubjectField = 'SUBJECT'
      DataBinding.UpdateByQuery = True
      DataSource = DSTurnosProfes
      ExplicitHeight = 541
      TMSStyle = 8
    end
    object AdvToolPanelTab1: TAdvToolPanelTab
      Left = 368
      Top = 1
      Width = 246
      Height = 557
      Alignment = taRightJustify
      Color = clWhite
      ColorTo = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4474440
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Position = ppRight
      Style = esCustom
      TabBorderColor = clWhite
      TabColor = clWhite
      TabColorTo = clWhite
      TabHoverColor = 15917525
      TabHoverColorTo = 15917525
      Version = '1.8.5.1'
      ExplicitHeight = 541
      object AdvToolPanel1: TAdvToolPanel
        Left = 0
        Top = 0
        Width = 223
        Height = 557
        BackgroundTransparent = False
        BackGroundPosition = bpTopLeft
        Button3D = False
        HoverButtonColor = 15917525
        HoverButtonColorTo = 15917525
        DownButtonColor = 14925219
        DownButtonColorTo = 14925219
        CaptionButton = False
        Color = clWhite
        ColorTo = clWhite
        GradientDirection = gdVertical
        DockDots = True
        Caption = 'AdvToolPanel1'
        CaptionGradientDirection = gdVertical
        FocusCaptionFontColor = clBlack
        FocusCaptionColor = 15917525
        FocusCaptionColorTo = 15917525
        NoFocusCaptionFontColor = 4474440
        NoFocusCaptionColor = clWhite
        NoFocusCaptionColorTo = clWhite
        CloseHint = 'Close panel'
        LockHint = 'Lock panel'
        UnlockHint = 'Unlock panel'
        Sections = <>
        SectionLayout.CaptionColor = clWhite
        SectionLayout.CaptionColorTo = clWhite
        SectionLayout.CaptionFontColor = 4474440
        SectionLayout.CaptionRounded = False
        SectionLayout.Corners = scRectangle
        SectionLayout.BackGroundColor = clWhite
        SectionLayout.BackGroundColorTo = clWhite
        SectionLayout.BorderColor = 11250603
        SectionLayout.BorderWidth = 1
        SectionLayout.CaptionGradientDir = gdVertical
        SectionLayout.BackGroundGradientDir = gdVertical
        SectionLayout.Indent = 4
        SectionLayout.Spacing = 4
        SectionLayout.ItemFontColor = 4474440
        SectionLayout.ItemHoverTextColor = clBlack
        SectionLayout.ItemHoverUnderline = True
        SectionLayout.UnderLineCaption = False
        ShowCaptionBorder = False
        Style = esCustom
        Version = '1.8.5.1'
        object Planner1: TPlanner
          Left = 1
          Top = 24
          Width = 221
          Height = 300
          Align = alTop
          AttachementGlyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888700078888888888708880788888888808808808888888880808080
            8888888880808080888888888080808088888888808080808888888880808080
            8888888880808080888888888080808088888888808080808888888888808080
            8888888888808880888888888888000888888888888888888888}
          Caption.Title = 'TMS software <b>TPlanner</b>'
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = 4474440
          Caption.Font.Height = -13
          Caption.Font.Name = 'Verdana'
          Caption.Font.Style = []
          Caption.Background = 16575452
          Caption.BackgroundTo = 16571329
          DayNames.Strings = (
            'Sun'
            'Mon'
            'Tue'
            'Wed'
            'Thu'
            'Fri'
            'Sat')
          DefaultItem.BorderColor = 11250603
          DefaultItem.CaptionBkg = 14925219
          DefaultItem.CaptionBkgTo = 14925219
          DefaultItem.CaptionFont.Charset = DEFAULT_CHARSET
          DefaultItem.CaptionFont.Color = 4474440
          DefaultItem.CaptionFont.Height = -11
          DefaultItem.CaptionFont.Name = 'Tahoma'
          DefaultItem.CaptionFont.Style = []
          DefaultItem.ColorTo = clWhite
          DefaultItem.Cursor = -1
          DefaultItem.Font.Charset = DEFAULT_CHARSET
          DefaultItem.Font.Color = 4474440
          DefaultItem.Font.Height = -11
          DefaultItem.Font.Name = 'Tahoma'
          DefaultItem.Font.Style = []
          DefaultItem.ItemBegin = 16
          DefaultItem.ItemEnd = 17
          DefaultItem.ItemPos = 0
          DefaultItem.Name = 'PlannerItem0'
          DefaultItem.SelectColor = 14925219
          DefaultItem.SelectColorTo = 14925219
          DefaultItem.SelectFontColor = 3881787
          DefaultItem.Shadow = False
          DefaultItem.TrackColor = 11565130
          DefaultItem.TrackSelectColor = 11565130
          DeleteGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D9ED07070707
            0707070707070707ECD9EC5E5E5E5E5E5E5E5E5E5E5E5E5E5DED070D0E161616
            161616160E0E0E0E5E07070D161656561616161616160E0E5E07070D16AF075E
            56561657B7EF0E0E5E07070D56AFF6075F565FAFF6AF160E5E07070D565EAFF6
            075FEFF6AF17160E5E07070D5E5E5EAFF607F6AF161616165E07070D5E5E5E5E
            EFF60756161616165E07070D5E5E5FEFF6EFF6075E1616165E07070D5F5F07F6
            EF5EAFF6075616165E07070D6707F6075E5656AFF60716165E07070DA7AF075F
            5E5E5E5EAFAF56165E07070DA7A7675F5F5E5E5E5E5E56165E07EDAF0D0D0D0D
            0D0D0D0D0D0D0D0D5EECD9ED070707070707070707070707EDD1}
          Display.ActiveEnd = 40
          Display.ColorActive = 16575452
          Display.ColorNonActive = clWhite
          Display.HourLineColor = 13542013
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Footer.CompletionFormat = '%d%%'
          Footer.Color = clWhite
          Footer.Completion.Font.Charset = DEFAULT_CHARSET
          Footer.Completion.Font.Color = clWindowText
          Footer.Completion.Font.Height = -11
          Footer.Completion.Font.Name = 'Arial'
          Footer.Completion.Font.Style = []
          Footer.Flat = True
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -11
          Footer.Font.Name = 'Tahoma'
          Footer.Font.Style = []
          Footer.LineColor = 16444643
          GridLeftCol = 1
          GridLineColor = clSilver
          GridTopRow = 0
          Header.ActiveColor = 16575452
          Header.ActiveColorTo = 16571329
          Header.Color = 16645114
          Header.ColorTo = 16643051
          Header.CustomGroups = <>
          Header.Font.Charset = DEFAULT_CHARSET
          Header.Font.Color = 4474440
          Header.Font.Height = -11
          Header.Font.Name = 'Tahoma'
          Header.Font.Style = []
          Header.GroupHeight = 0
          Header.GroupFont.Charset = DEFAULT_CHARSET
          Header.GroupFont.Color = clWindowText
          Header.GroupFont.Height = -11
          Header.GroupFont.Name = 'Tahoma'
          Header.GroupFont.Style = []
          HintPause = 2500
          HTMLOptions.CellFontStyle = []
          HTMLOptions.HeaderFontStyle = []
          HTMLOptions.SidebarFontStyle = []
          Items = <>
          Mode.Month = 12
          Mode.PeriodStartDay = 9
          Mode.PeriodStartMonth = 12
          Mode.PeriodStartYear = 2021
          Mode.PeriodEndDay = 26
          Mode.PeriodEndMonth = 1
          Mode.PeriodEndYear = 2022
          Mode.TimeLineStart = 44539.000000000000000000
          Mode.TimeLineNVUBegin = 0
          Mode.TimeLineNVUEnd = 0
          Mode.Year = 2021
          Mode.Day = 9
          Sidebar.ActiveColor = 16575452
          Sidebar.ActiveColorTo = 16571329
          Sidebar.Background = 16645114
          Sidebar.BackgroundTo = 16643051
          Sidebar.Border = False
          Sidebar.Font.Charset = DEFAULT_CHARSET
          Sidebar.Font.Color = 4474440
          Sidebar.Font.Height = -11
          Sidebar.Font.Name = 'Arial'
          Sidebar.Font.Style = []
          Sidebar.HourFontRatio = 1.800000000000000000
          Sidebar.LineColor = 14925219
          Sidebar.Occupied = clWhite
          Sidebar.OccupiedTo = clWhite
          Sidebar.OccupiedFontColor = 3881787
          Sidebar.SeparatorLineColor = 16444643
          PositionProps = <>
          PrintOptions.LineWidth = 0
          PrintOptions.FooterFont.Charset = DEFAULT_CHARSET
          PrintOptions.FooterFont.Color = clWindowText
          PrintOptions.FooterFont.Height = -11
          PrintOptions.FooterFont.Name = 'Tahoma'
          PrintOptions.FooterFont.Style = []
          PrintOptions.HeaderFont.Charset = DEFAULT_CHARSET
          PrintOptions.HeaderFont.Color = clWindowText
          PrintOptions.HeaderFont.Height = -11
          PrintOptions.HeaderFont.Name = 'Tahoma'
          PrintOptions.HeaderFont.Style = []
          SelectColor = 15917525
          TrackColor = 11565130
          URLGlyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000800
            0088888808F8F0F8F80888808000000000808880F070888070F0888080000000
            0080880408F8F0F8F80880CCC0000400008874CCC2222C4788887CCCC22226C0
            88887CC822222CC088887C822224642088887C888422C220888877CF8CCCC227
            888887F8F8222208888888776888208888888887777778888888}
          Version = '3.6.2.0'
          TMSStyle = 0
        end
      end
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.* FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 376
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesOBRA_SOCIAL: TIntegerField
      FieldName = 'OBRA_SOCIAL'
      Origin = 'OBRA_SOCIAL'
    end
    object QClientesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
  end
  object QArea: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  areas_sector '
      'order by detalle')
    Left = 452
    Top = 151
    ParamData = <
      item
        Position = 1
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAreaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAreaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 60
    end
  end
  object DSPArea: TDataSetProvider
    DataSet = QArea
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 551
    Top = 135
  end
  object CDSArea: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArea'
    Left = 503
    Top = 135
    object CDSAreaID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
    object CDSAreaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 60
    end
  end
  object DSArea: TDataSource
    DataSet = CDSArea
    Left = 599
    Top = 127
  end
  object QPlaner: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.*,f.nrocpbte as MuestraNroCpbte from  PLANER_TAREAS s '
      'left join fcvtacab f on f.id_fc=s.id_Factura'
      'where s.id_Key=:idkey')
    Left = 308
    Top = 65
    ParamData = <
      item
        Position = 1
        Name = 'IDKEY'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end>
    object QPlanerID_KEY: TStringField
      FieldName = 'ID_KEY'
      Origin = 'ID_KEY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object QPlanerSTARTIME: TSQLTimeStampField
      FieldName = 'STARTIME'
      Origin = 'STARTIME'
    end
    object QPlanerENDTIME: TSQLTimeStampField
      FieldName = 'ENDTIME'
      Origin = 'ENDTIME'
    end
    object QPlanerNOTES: TMemoField
      FieldName = 'NOTES'
      Origin = 'NOTES'
      BlobType = ftMemo
    end
    object QPlanerSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Origin = 'SUBJECT'
      Size = 100
    end
    object QPlanerCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object QPlanerIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = 'IMAGE'
    end
    object QPlanerCAPTION: TIntegerField
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
    end
    object QPlanerRESOURCE: TIntegerField
      FieldName = 'RESOURCE'
      Origin = 'RESOURCE'
    end
    object QPlanerRECURRENCY: TStringField
      FieldName = 'RECURRENCY'
      Origin = 'RECURRENCY'
      Size = 200
    end
    object QPlanerMINTIME: TSQLTimeStampField
      FieldName = 'MINTIME'
      Origin = 'MINTIME'
    end
    object QPlanerMAXTIME: TSQLTimeStampField
      FieldName = 'MAXTIME'
      Origin = 'MAXTIME'
    end
    object QPlanerID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QPlanerTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QPlanerCLASECPTE: TStringField
      FieldName = 'CLASECPTE'
      Origin = 'CLASECPTE'
      Size = 2
    end
    object QPlanerID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object QPlanerCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QPlanerPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QPlanerAREA: TIntegerField
      FieldName = 'AREA'
      Origin = 'AREA'
    end
    object QPlanerESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object QPlanerID_REFERENCIAL: TStringField
      FieldName = 'ID_REFERENCIAL'
      Origin = 'ID_REFERENCIAL'
      Size = 40
    end
    object QPlanerNRO_EVENTO: TIntegerField
      FieldName = 'NRO_EVENTO'
      Origin = 'NRO_EVENTO'
      Required = True
    end
    object QPlanerPROFESIONAL: TIntegerField
      FieldName = 'PROFESIONAL'
      Origin = 'PROFESIONAL'
      Required = True
    end
    object QPlanerID_OBRA_SOCIAL: TIntegerField
      FieldName = 'ID_OBRA_SOCIAL'
      Origin = 'ID_OBRA_SOCIAL'
    end
    object QPlanerID_ENTIDAD_PAGADORA: TIntegerField
      FieldName = 'ID_ENTIDAD_PAGADORA'
      Origin = 'ID_ENTIDAD_PAGADORA'
    end
    object QPlanerNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
    object QPlanerID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Origin = 'ID_PACIENTE'
    end
    object QPlanerID_FACTURA2: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object QPlanerMUESTRANROCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
  end
  object DSPPlaner: TDataSetProvider
    DataSet = QPlaner
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 367
    Top = 65
  end
  object CDSPlaner: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'IDKEY'
        ParamType = ptInput
        Size = 40
      end>
    ProviderName = 'DSPPlaner'
    OnNewRecord = CDSPlanerNewRecord
    OnPostError = CDSPlanerPostError
    OnReconcileError = CDSPlanerReconcileError
    Left = 415
    Top = 65
    object CDSPlanerID_KEY: TStringField
      FieldName = 'ID_KEY'
      Required = True
      Size = 40
    end
    object CDSPlanerSTARTIME: TSQLTimeStampField
      FieldName = 'STARTIME'
    end
    object CDSPlanerENDTIME: TSQLTimeStampField
      FieldName = 'ENDTIME'
    end
    object CDSPlanerNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object CDSPlanerSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Size = 100
    end
    object CDSPlanerCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object CDSPlanerIMAGE: TIntegerField
      FieldName = 'IMAGE'
    end
    object CDSPlanerCAPTION: TIntegerField
      FieldName = 'CAPTION'
    end
    object CDSPlanerRESOURCE: TIntegerField
      FieldName = 'RESOURCE'
    end
    object CDSPlanerRECURRENCY: TStringField
      FieldName = 'RECURRENCY'
      Size = 200
    end
    object CDSPlanerMINTIME: TSQLTimeStampField
      FieldName = 'MINTIME'
    end
    object CDSPlanerMAXTIME: TSQLTimeStampField
      FieldName = 'MAXTIME'
    end
    object CDSPlanerID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSPlanerTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSPlanerCLASECPTE: TStringField
      FieldName = 'CLASECPTE'
      Size = 2
    end
    object CDSPlanerID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object CDSPlanerCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSPlanerPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object CDSPlanerAREA: TIntegerField
      FieldName = 'AREA'
    end
    object CDSPlanerESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object CDSPlanerID_REFERENCIAL: TStringField
      FieldName = 'ID_REFERENCIAL'
      Size = 40
    end
    object CDSPlanerNRO_EVENTO: TIntegerField
      FieldName = 'NRO_EVENTO'
      Required = True
    end
    object CDSPlanerPROFESIONAL: TIntegerField
      FieldName = 'PROFESIONAL'
      Required = True
    end
    object CDSPlanerID_OBRA_SOCIAL: TIntegerField
      FieldName = 'ID_OBRA_SOCIAL'
    end
    object CDSPlanerID_ENTIDAD_PAGADORA: TIntegerField
      FieldName = 'ID_ENTIDAD_PAGADORA'
    end
    object CDSPlanerNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
    end
    object CDSPlanerID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object CDSPlanerMUESTRANROCPBTE: TStringField
      FieldName = 'MUESTRANROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSPlanerID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Required = True
    end
  end
  object QProveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*  FROM poveedor C'
      ''
      'where (c.codigo=:codigo)')
    Left = 496
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object QUsuarios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select user_id, user_name from  ucs_users')
    Left = 424
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPUsuarios: TDataSetProvider
    DataSet = QUsuarios
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 495
    Top = 297
  end
  object CDSUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPUsuarios'
    OnNewRecord = CDSPlanerNewRecord
    Left = 575
    Top = 297
    object CDSUsuarioUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Required = True
    end
    object CDSUsuarioUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 30
    end
  end
  object DSUsuario: TDataSource
    DataSet = CDSUsuario
    Left = 631
    Top = 303
  end
  object DSPlaner: TDataSource
    DataSet = CDSPlaner
    Left = 488
    Top = 65
  end
  object QEstados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  PLANER_ESTADOs'
      'order by detalle')
    Left = 84
    Top = 281
    ParamData = <
      item
        Position = 1
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QEstadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEstadosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QEstadosCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Required = True
    end
  end
  object DSPEstados: TDataSetProvider
    DataSet = QEstados
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 127
    Top = 281
  end
  object CDSEstados: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEstados'
    Left = 175
    Top = 281
    object CDSEstadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSEstadosDETALLE: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSEstadosCOLOR: TIntegerField
      DisplayLabel = 'Color'
      FieldName = 'COLOR'
      Origin = 'COLOR'
      Required = True
    end
  end
  object DSEstados: TDataSource
    DataSet = CDSEstados
    Left = 223
    Top = 281
  end
  object QProfesionales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select pr.*,p.nombre,es.especialidad,es.turnos_adicionales from ' +
        ' PLANER_PROFESIONALES pr'
      'left join poveedor p on p.codigo = pr.codigo'
      'left join PLANER_ESPECIALIDAD es on es.id=pr.id_especialidad'
      'order by nombre')
    Left = 60
    Top = 121
    ParamData = <
      item
        Position = 1
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPProfesionales: TDataSetProvider
    DataSet = QProfesionales
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 121
  end
  object CDSProfesionales: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProfesionales'
    Left = 151
    Top = 121
    object CDSProfesionalesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSProfesionalesNOMBRE: TStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSProfesionalesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSProfesionalesID_ESPECIALIDAD: TIntegerField
      FieldName = 'ID_ESPECIALIDAD'
      Origin = 'ID_ESPECIALIDAD'
      Required = True
    end
    object CDSProfesionalesESPECIALIDAD: TStringField
      FieldName = 'ESPECIALIDAD'
      Origin = 'ESPECIALIDAD'
      ProviderFlags = []
      Size = 50
    end
    object CDSProfesionalesTURNOS_ADICIONALES: TIntegerField
      FieldName = 'TURNOS_ADICIONALES'
      Origin = 'TURNOS_ADICIONALES'
      ProviderFlags = []
    end
  end
  object DSProfesionales: TDataSource
    DataSet = CDSProfesionales
    Left = 223
    Top = 121
  end
  object QOSocial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from obras_sociales')
    Left = 60
    Top = 177
    ParamData = <
      item
        Position = 1
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPOSocial: TDataSetProvider
    DataSet = QOSocial
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 193
  end
  object CDSOSocial: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOSocial'
    Left = 151
    Top = 177
    object CDSOSocialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSOSocialNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSOSocial: TDataSource
    DataSet = CDSOSocial
    Left = 223
    Top = 177
  end
  object QEntidadPaga: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from planer_entidad_pagadora')
    Left = 60
    Top = 225
    ParamData = <
      item
        Position = 1
        Name = 'IDUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPEntidadPaga: TDataSetProvider
    DataSet = QEntidadPaga
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 108
    Top = 225
  end
  object CDSEntidadPaga: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDUSUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEntidadPaga'
    Left = 151
    Top = 225
    object CDSEntidadPagaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSEntidadPagaDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 50
    end
    object CDSEntidadPagaDEIRECCION: TStringField
      FieldName = 'DEIRECCION'
      Size = 50
    end
    object CDSEntidadPagaTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 50
    end
    object CDSEntidadPagaOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
  end
  object DSEntidadPaga: TDataSource
    DataSet = CDSEntidadPaga
    Left = 223
    Top = 225
  end
  object pmOpciones: TPopupMenu
    Left = 504
    Top = 376
    object ModoPacientes1: TMenuItem
      Caption = 'Modo Pacientes'
      OnClick = ModoPacientes1Click
    end
    object ModoClientesProveedor1: TMenuItem
      Caption = 'Modo Clientes/Proveedor'
      Checked = True
      OnClick = ModoClientesProveedor1Click
    end
  end
  object ComBuscadorPacientes: TComBuscador
    Data = CDSPacientesBuscador
    Campo = 'ID'
    rOk = False
    Left = 568
    Top = 73
  end
  object QPacientesBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from pacientes p order by p.nombre')
    Left = 384
    Top = 436
  end
  object DSPPacientesBuscador: TDataSetProvider
    DataSet = QPacientesBuscador
    Options = []
    Left = 480
    Top = 436
  end
  object CDSPacientesBuscador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPacientesBuscador'
    Left = 584
    Top = 428
    object StringField1: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 100
    end
    object StringField2: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Size = 150
    end
    object StringField3: TStringField
      DisplayLabel = 'Nr.Documento'
      FieldName = 'NRO_DOCUMENTO'
      Size = 12
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
  end
  object QPacientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from pacientes p where p.id=:id')
    Left = 392
    Top = 480
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPacientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPacientesTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 25
    end
    object QPacientesTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
    object QPacientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 50
    end
    object QPacientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 10
    end
    object QPacientesID_OSOCIAL: TIntegerField
      FieldName = 'ID_OSOCIAL'
      Origin = 'ID_OSOCIAL'
    end
    object QPacientesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
    object QPacientesMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 150
    end
    object QPacientesTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
      Size = 3
    end
    object QPacientesNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Origin = 'NRO_DOCUMENTO'
      Size = 12
    end
    object QPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object QPacientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 150
    end
    object QPacientesID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
    end
    object QPacientesFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
  end
  object DSPPacientes: TDataSetProvider
    DataSet = QPacientes
    Options = []
    Left = 480
    Top = 480
  end
  object CDSPacientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPacientes'
    Left = 600
    Top = 472
    object CDSPacientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPacientesTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 25
    end
    object CDSPacientesTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
    object CDSPacientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 50
    end
    object CDSPacientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 10
    end
    object CDSPacientesID_OSOCIAL: TIntegerField
      FieldName = 'ID_OSOCIAL'
      Origin = 'ID_OSOCIAL'
    end
    object CDSPacientesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
    object CDSPacientesMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 150
    end
    object CDSPacientesTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
      Size = 3
    end
    object CDSPacientesNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Origin = 'NRO_DOCUMENTO'
      Size = 12
    end
    object CDSPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSPacientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 150
    end
    object CDSPacientesID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
    end
    object CDSPacientesFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
  end
  object QTurnosProfes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.*,e.color as colorestado,cl.nombre as MuestraCliente,pa' +
        '.nombre as MuestraPaciente,pa.direccion as MuestraPacienteDir,pa' +
        '.id_osocial as MuestraId_OSOCIAL,'
      
        'pa.nro_afiliado as MuestraNroAfiliado,os.nombre as MuestraOSocia' +
        'l from  PLANER_TAREAS s'
      'left join PLANER_ESTADOs e on e.id=s.estado '
      'left join clientes cl on cl.codigo =s.cliente'
      'left join Pacientes pa on pa.id = s.id_paciente'
      'left join obras_sociales os on os.id = pa.id_osocial'
      ''
      'where ( s.profesional = :profesional or :profesional = -1)')
    Left = 720
    Top = 186
    ParamData = <
      item
        Position = 1
        Name = 'PROFESIONAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTurnosProfesID_KEY: TStringField
      FieldName = 'ID_KEY'
      Origin = 'ID_KEY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object QTurnosProfesSTARTIME: TSQLTimeStampField
      FieldName = 'STARTIME'
      Origin = 'STARTIME'
    end
    object QTurnosProfesENDTIME: TSQLTimeStampField
      FieldName = 'ENDTIME'
      Origin = 'ENDTIME'
    end
    object QTurnosProfesNOTES: TMemoField
      FieldName = 'NOTES'
      Origin = 'NOTES'
      BlobType = ftMemo
    end
    object QTurnosProfesSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Origin = 'SUBJECT'
      Size = 100
    end
    object QTurnosProfesCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object QTurnosProfesIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = 'IMAGE'
    end
    object QTurnosProfesCAPTION: TIntegerField
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
    end
    object QTurnosProfesRESOURCE: TIntegerField
      FieldName = 'RESOURCE'
      Origin = 'RESOURCE'
    end
    object QTurnosProfesRECURRENCY: TStringField
      FieldName = 'RECURRENCY'
      Origin = 'RECURRENCY'
      Size = 200
    end
    object QTurnosProfesMINTIME: TSQLTimeStampField
      FieldName = 'MINTIME'
      Origin = 'MINTIME'
    end
    object QTurnosProfesMAXTIME: TSQLTimeStampField
      FieldName = 'MAXTIME'
      Origin = 'MAXTIME'
    end
    object QTurnosProfesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QTurnosProfesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QTurnosProfesCLASECPTE: TStringField
      FieldName = 'CLASECPTE'
      Origin = 'CLASECPTE'
      Size = 2
    end
    object QTurnosProfesID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object QTurnosProfesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QTurnosProfesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QTurnosProfesAREA: TIntegerField
      FieldName = 'AREA'
      Origin = 'AREA'
    end
    object QTurnosProfesESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object QTurnosProfesID_REFERENCIAL: TStringField
      FieldName = 'ID_REFERENCIAL'
      Origin = 'ID_REFERENCIAL'
      Size = 40
    end
    object QTurnosProfesNRO_EVENTO: TIntegerField
      FieldName = 'NRO_EVENTO'
      Origin = 'NRO_EVENTO'
      Required = True
    end
    object QTurnosProfesPROFESIONAL: TIntegerField
      FieldName = 'PROFESIONAL'
      Origin = 'PROFESIONAL'
      Required = True
    end
    object QTurnosProfesID_OBRA_SOCIAL: TIntegerField
      FieldName = 'ID_OBRA_SOCIAL'
      Origin = 'ID_OBRA_SOCIAL'
    end
    object QTurnosProfesID_ENTIDAD_PAGADORA: TIntegerField
      FieldName = 'ID_ENTIDAD_PAGADORA'
      Origin = 'ID_ENTIDAD_PAGADORA'
    end
    object QTurnosProfesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
    object QTurnosProfesID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
      Origin = 'ID_PACIENTE'
    end
    object QTurnosProfesID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object QTurnosProfesCOLORESTADO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLORESTADO'
      Origin = 'COLOR'
      ProviderFlags = []
    end
    object QTurnosProfesMUESTRACLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACLIENTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QTurnosProfesMUESTRAPACIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPACIENTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 100
    end
    object QTurnosProfesMUESTRAPACIENTEDIR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPACIENTEDIR'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 150
    end
    object QTurnosProfesMUESTRAID_OSOCIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_OSOCIAL'
      Origin = 'ID_OSOCIAL'
      ProviderFlags = []
    end
    object QTurnosProfesMUESTRANROAFILIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROAFILIADO'
      Origin = 'NRO_AFILIADO'
      ProviderFlags = []
    end
    object QTurnosProfesMUESTRAOSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOSOCIAL'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
  end
  object DSPTurnosProfes: TDataSetProvider
    DataSet = QTurnosProfes
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 796
    Top = 186
  end
  object CDSTurnosProfes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PROFESIONAL'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTurnosProfes'
    AfterPost = CDSTurnosProfesAfterPost
    Left = 876
    Top = 178
    object CDSTurnosProfesID_KEY: TStringField
      FieldName = 'ID_KEY'
      Required = True
      Size = 40
    end
    object CDSTurnosProfesSTARTIME: TSQLTimeStampField
      FieldName = 'STARTIME'
    end
    object CDSTurnosProfesENDTIME: TSQLTimeStampField
      FieldName = 'ENDTIME'
    end
    object CDSTurnosProfesNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object CDSTurnosProfesSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Size = 100
    end
    object CDSTurnosProfesCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object CDSTurnosProfesIMAGE: TIntegerField
      FieldName = 'IMAGE'
    end
    object CDSTurnosProfesCAPTION: TIntegerField
      FieldName = 'CAPTION'
    end
    object CDSTurnosProfesRESOURCE: TIntegerField
      FieldName = 'RESOURCE'
    end
    object CDSTurnosProfesRECURRENCY: TStringField
      FieldName = 'RECURRENCY'
      Size = 200
    end
    object CDSTurnosProfesMINTIME: TSQLTimeStampField
      FieldName = 'MINTIME'
    end
    object CDSTurnosProfesMAXTIME: TSQLTimeStampField
      FieldName = 'MAXTIME'
    end
    object CDSTurnosProfesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSTurnosProfesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSTurnosProfesCLASECPTE: TStringField
      FieldName = 'CLASECPTE'
      Size = 2
    end
    object CDSTurnosProfesID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object CDSTurnosProfesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSTurnosProfesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object CDSTurnosProfesAREA: TIntegerField
      FieldName = 'AREA'
    end
    object CDSTurnosProfesESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object CDSTurnosProfesID_REFERENCIAL: TStringField
      FieldName = 'ID_REFERENCIAL'
      Size = 40
    end
    object CDSTurnosProfesNRO_EVENTO: TIntegerField
      FieldName = 'NRO_EVENTO'
      Required = True
    end
    object CDSTurnosProfesPROFESIONAL: TIntegerField
      FieldName = 'PROFESIONAL'
      Required = True
    end
    object CDSTurnosProfesID_OBRA_SOCIAL: TIntegerField
      FieldName = 'ID_OBRA_SOCIAL'
    end
    object CDSTurnosProfesID_ENTIDAD_PAGADORA: TIntegerField
      FieldName = 'ID_ENTIDAD_PAGADORA'
    end
    object CDSTurnosProfesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
    end
    object CDSTurnosProfesID_PACIENTE: TIntegerField
      FieldName = 'ID_PACIENTE'
    end
    object CDSTurnosProfesID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Required = True
    end
    object CDSTurnosProfesCOLORESTADO: TIntegerField
      FieldName = 'COLORESTADO'
      ProviderFlags = []
    end
    object CDSTurnosProfesMUESTRACLIENTE: TStringField
      FieldName = 'MUESTRACLIENTE'
      ProviderFlags = []
      Size = 35
    end
    object CDSTurnosProfesMUESTRAPACIENTE: TStringField
      FieldName = 'MUESTRAPACIENTE'
      ProviderFlags = []
      Size = 100
    end
    object CDSTurnosProfesMUESTRAPACIENTEDIR: TStringField
      FieldName = 'MUESTRAPACIENTEDIR'
      ProviderFlags = []
      Size = 150
    end
    object CDSTurnosProfesMUESTRAID_OSOCIAL: TIntegerField
      FieldName = 'MUESTRAID_OSOCIAL'
      ProviderFlags = []
    end
    object CDSTurnosProfesMUESTRANROAFILIADO: TStringField
      FieldName = 'MUESTRANROAFILIADO'
      ProviderFlags = []
    end
    object CDSTurnosProfesMUESTRAOSOCIAL: TStringField
      FieldName = 'MUESTRAOSOCIAL'
      ProviderFlags = []
      Size = 50
    end
  end
  object DSTurnosProfes: TDataSource
    DataSet = CDSTurnosProfes
    Left = 948
    Top = 177
  end
  object DBDaySource1: TDBDaySource
    AutoIncKey = False
    DataSource = DSTurnosProfes
    ResourceMap = <>
    StartTimeField = 'STARTIME'
    EndTimeField = 'ENDTIME'
    KeyField = 'ID_KEY'
    ReadOnly = False
    SubjectField = 'SUBJECT'
    NotesField = 'NOTES'
    UpdateByQuery = False
    DateFormat = 'mm/dd/yyyy'
    Mode = dmMultiDay
    RecurrencyField = 'RECURRENCY'
    MinTimeField = 'MINTIME'
    MaxTimeField = 'MAXTIME'
    Left = 1122
    Top = 258
  end
end
