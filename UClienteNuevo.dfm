object FormClienteNuevo: TFormClienteNuevo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Nuevo Cliente'
  ClientHeight = 299
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnHide = FormHide
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 51
    Width = 586
    Height = 211
    Align = alClient
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object eNombre: TDBAdvEdit
      Left = 8
      Top = 16
      Width = 282
      Height = 21
      EditType = etUppercase
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      FullTextSearch = True
      ReturnIsTab = True
      LabelCaption = 'Nombre'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'ENOMBRE'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'NOMBRE'
      DataSource = DSClientes
    end
    object eRazonSocial: TDBAdvEdit
      Left = 296
      Top = 16
      Width = 272
      Height = 21
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'Raz'#243'n Social'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'ERAZONSOCIAL'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'RAZON_SOCIAL'
      DataSource = DSClientes
    end
    object eDireccion: TDBAdvEdit
      Left = 8
      Top = 54
      Width = 282
      Height = 21
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'Domicilio'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'EDIRECCION'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'DIRECCION_COMERCIAL'
      DataSource = DSClientes
    end
    object eTelefono1: TDBAdvEdit
      Left = 56
      Top = 132
      Width = 90
      Height = 21
      EditType = etValidChars
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'Tel'#233'fono 1'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
      ValidChars = '0123456789-'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'TELEFONO_COMERCIAL_1'
      DataSource = DSClientes
    end
    object eTelefono2: TDBAdvEdit
      Left = 56
      Top = 167
      Width = 90
      Height = 21
      TabStop = False
      EditType = etValidChars
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'Tel'#233'fono 2'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Text = '0'
      ValidChars = '0123456789-'
      Visible = False
      Version = '4.0.4.4'
      DataField = 'TELEFONO_COMERCIAL_2'
      DataSource = DSClientes
    end
    object cbCondIva: TAdvDBLookupComboBox
      Left = 296
      Top = 54
      Width = 121
      Height = 21
      Enabled = True
      FilterField = 'DETALLE'
      LabelCaption = 'Cond. IVA'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      LabelWidth = 0
      LookupColumn = 1
      LookupLoad = llAlways
      LookupInAllColumns = True
      TabOrder = 3
      OnChange = cbCondIvaChange
      Columns = <
        item
          FixedColor = clBtnFace
          FixedColorTo = clNone
          GradientDir = gdVertical
          Width = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ListField = 'CODIGO'
          Name = 'Column0'
          Title = 'ID'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        item
          FixedColor = clBtnFace
          FixedColorTo = clNone
          GradientDir = gdVertical
          Width = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ListField = 'DETALLE'
          Name = 'Column1'
          Title = 'Condici'#243'n'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end>
      DataField = 'CONDICION_IVA'
      DataSource = DSClientes
      DropWidth = 250
      DropStretchColumn = -1
      DropHeight = 150
      DropFont.Charset = DEFAULT_CHARSET
      DropFont.Color = clWindowText
      DropFont.Height = -11
      DropFont.Name = 'Tahoma'
      DropFont.Style = []
      DropSizeable = True
      KeyField = 'CODIGO'
      ListSource = DSBuscaInscripcion
      ReturnIsTab = True
      SortUpGlyph.Data = {
        36010000424D3601000000000000360000002800000008000000080000000100
        2000000000000001000000000000000000000000000000000000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C0008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
        800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
        C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
        C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000}
      SortDownGlyph.Data = {
        36010000424D3601000000000000360000002800000008000000080000000100
        2000000000000001000000000000000000000000000000000000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
        C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C0008080
        800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C0008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000808080008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00808080008080
        8000808080008080800080808000808080008080800080808000}
      ShowGridTitleRow = True
      Version = '2.0.2.15'
    end
    object eEMail: TDBAdvEdit
      Left = 296
      Top = 132
      Width = 272
      Height = 21
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'E-Mail'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = 'eEMail'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'CORREOELECTRONICO'
      DataSource = DSClientes
    end
    object eDocumento: TDBAdvEdit
      Left = 423
      Top = 92
      Width = 145
      Height = 21
      EditType = etValidChars
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'Nro. Documento'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '0'
      ValidChars = '0123456789-./'
      Visible = False
      Version = '4.0.4.4'
      DataField = 'NRODOCUMENTO'
      DataSource = DSClientes
    end
    object eCelular: TDBAdvEdit
      Left = 152
      Top = 132
      Width = 138
      Height = 21
      TabStop = False
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'Celular'
      LabelPosition = lpTopLeft
      LabelMargin = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = 'eCelular'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'TELEFONO_CELULAR'
      DataSource = DSClientes
    end
    object ePrefijo: TDBAdvEdit
      Left = 8
      Top = 132
      Width = 42
      Height = 21
      TabStop = False
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      Text = 'ePrefijo'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'MUESTRATELEDISCADO'
      DataSource = DSCpostal
    end
    object eIdCpostal: TDBAdvEditBtn
      Left = 8
      Top = 92
      Width = 66
      Height = 21
      TabStop = False
      AllowNumericNullValue = True
      BorderColor = 10724259
      EmptyTextFocused = True
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      ReturnIsTab = True
      LabelCaption = 'Localidad'
      LabelPosition = lpTopLeft
      LabelMargin = 1
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShortCut = 0
      TabOrder = 11
      Text = ''
      Visible = True
      Version = '1.7.1.3'
      ButtonStyle = bsButton
      ButtonWidth = 16
      Flat = False
      Etched = False
      ButtonCaption = '...'
      OnClickBtn = BuscaCPostalExecute
      ButtonColor = clBtnShadow
      ButtonColorHot = clMedGray
      ButtonColorDown = 14925219
      ButtonTextColor = 4474440
      ButtonTextColorHot = 2303013
      ButtonTextColorDown = 2303013
      DataField = 'ID_COD_POSTAL'
      DataSource = DSCpostal
    end
    object eCUIT: TDBEdit
      Left = 423
      Top = 54
      Width = 145
      Height = 21
      DataField = 'NRO_DE_CUIT'
      DataSource = DSClientes
      TabOrder = 4
    end
  end
  object pnFooter: TPanel
    Left = 0
    Top = 262
    Width = 586
    Height = 37
    Align = alBottom
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object bitBtOk: TAeroBitBtn
      AlignWithMargins = True
      Left = 442
      Top = 2
      Width = 142
      Height = 33
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Action = Confirma
      Align = alRight
      Caption = 'Confirma'
      Default = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDFF4EAFF97DCBBFF67CA9CFF4DC18CFF4EC28FFF68CC
        9DFF99DCBDFFE1F5ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9FDFBFF95DBBBFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C1
        8AFF49C18AFF4ABF88FF98DCBDFFFAFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFF9FD
        FBFF77D1A7FF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C1
        8AFF49C18AFF49C18AFF49C18AFF7AD2AAFFFAFDFCFFFFFFFFFFFFFFFFFF93D9
        B9FF49C18AFF49C18AFF49C18AFF49C18AFF61C99AFF4DC28CFF49C18AFF49C1
        8AFF49C18AFF49C18AFF49C18AFF49C18AFF98DCBCFFFFFFFFFFDDF3E9FF49C1
        8AFF49C18AFF49C18AFF49C18AFF85D5B1FFFCFEFDFFC9EDDDFF4EC38DFF49C1
        8AFF49C18AFF49C18AFF49C18AFF49C18AFF4ABF88FFE1F5ECFF93DABAFF49C1
        8AFF49C18AFF49C18AFF85D5B1FFFCFEFDFFFFFFFFFFFFFFFFFFC9EDDDFF4EC3
        8DFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF99DCBDFF62C99BFF49C1
        8AFF49C18AFF85D5B1FFFCFEFDFFFFFFFFFFE8F7F0FFFFFFFFFFFFFFFFFFCAED
        DDFF4EC38DFF49C18AFF49C18AFF49C18AFF49C18AFF68CC9DFF4DC08AFF49C1
        8AFF5EC898FFFCFEFDFFFFFFFFFFD9F2E7FF54C591FF96DBBCFFFFFFFFFFFFFF
        FFFFCBEDDEFF4EC38DFF49C18AFF49C18AFF49C18AFF4EC28FFF4DC08AFF49C1
        8AFF54C591FFE2F5ECFFD1EFE1FF54C591FF49C18AFF49C18AFF96DBBCFFFFFF
        FFFFFFFFFFFFCBEDDEFF4EC38DFF49C18AFF49C18AFF4DC18CFF63CA9BFF49C1
        8AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF96DB
        BCFFFFFFFFFFFFFFFFFFCCEDDEFF4BC28BFF49C18AFF67CA9CFF92DAB9FF49C1
        8AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C1
        8AFF96DBBCFFFFFFFFFFFFFFFFFF69CC9FFF49C18AFF97DCBBFFDBF3E8FF49C1
        8AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C1
        8AFF49C18AFF86D6B1FF99DCBDFF49C18AFF49C18AFFDFF4EAFFFFFFFFFF8FD9
        B7FF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C1
        8AFF49C18AFF49C18AFF49C18AFF49C18AFF95DBBBFFFFFFFFFFFFFFFFFFF8FD
        FAFF74D0A6FF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C1
        8AFF49C18AFF49C18AFF49C18AFF77D1A7FFF9FDFBFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8FDFAFF8FD9B7FF49C18AFF49C18AFF49C18AFF49C18AFF49C18AFF49C1
        8AFF49C18AFF49C18AFF93D9B9FFF9FDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDBF3E8FF92DAB9FF63CA9BFF4DC08AFF4DC08AFF62C9
        9BFF93DABAFFDDF3E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ModalResult = 1
      TabOrder = 0
      Version = '1.0.0.2'
    end
    object bitBtCancel: TAeroBitBtn
      AlignWithMargins = True
      Left = 314
      Top = 2
      Width = 126
      Height = 33
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Action = Cancelar
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDFDBF6FF978AE2FF6855D4FF4E38CEFF4F39CCFF6855
        D5FF998DE2FFE1DDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9F9FDFF9588E1FF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33
        CCFF4A33CCFF4B34CAFF998CE2FFFAF9FEFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8
        FDFF7765D9FF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33
        CCFF4A33CCFF4A33CCFF4A33CCFF7B69DAFFFAF9FEFFFFFFFFFFFFFFFFFF9385
        E1FF4A33CCFF4B35CCFF8575DDFF5F4BD2FF4A33CCFF4A33CCFF4A33CCFF4A33
        CCFF614DD2FF8475DCFF4B34CCFF4A33CCFF988AE1FFFFFFFFFFDDD9F5FF4A33
        CCFF4A33CCFF8879DDFFFFFFFFFFEEECFAFF6653D4FF4A33CCFF4A33CCFF6955
        D5FFEFEDFBFFFFFFFFFF8475DCFF4A33CCFF4B34CAFFE1DDF7FF9486E1FF4A33
        CCFF4A33CCFF634FD3FFF1EFFBFFFFFFFFFFEEECFAFF6653D4FF6956D5FFF0EE
        FBFFFFFFFFFFEFEDFBFF614DD2FF4A33CCFF4A33CCFF998DE2FF6551D4FF4A33
        CCFF4A33CCFF4A33CCFF6B58D5FFF2F0FBFFFFFFFFFFEEECFAFFF0EEFBFFFFFF
        FFFFF0EEFBFF6955D5FF4A33CCFF4A33CCFF4A33CCFF6855D5FF4E35CBFF4A33
        CCFF4A33CCFF4A33CCFF4A33CCFF6B59D5FFF2F0FBFFFFFFFFFFFFFFFFFFF0EE
        FBFF6956D5FF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4F39CCFF4E35CBFF4A33
        CCFF4A33CCFF4A33CCFF4A33CCFF6855D4FFEFEDFBFFFFFFFFFFFFFFFFFFEEEC
        FAFF6653D4FF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4E38CEFF6450D1FF4A33
        CCFF4A33CCFF4A33CCFF6855D4FFEFEDFBFFFFFFFFFFEFEDFBFFF2F0FBFFFFFF
        FFFFEEECFAFF6653D4FF4A33CCFF4A33CCFF4A33CCFF6855D4FF9285E0FF4A33
        CCFF4A33CCFF614DD2FFEFEDFBFFFFFFFFFFEFEDFBFF6855D4FF6B59D5FFF1EF
        FBFFFFFFFFFFEEECFAFF5F4BD2FF4A33CCFF4A33CCFF978AE2FFDBD6F5FF4A33
        CCFF4A33CCFF8879DDFFFFFFFFFFEFEDFBFF6855D4FF4A33CCFF4A33CCFF6B58
        D5FFF1EFFBFFFFFFFFFF8575DDFF4A33CCFF4A33CCFFDFDBF6FFFFFFFFFF9081
        E0FF4A33CCFF4B35CCFF8879DDFF614DD2FF4A33CCFF4A33CCFF4A33CCFF4A33
        CCFF634FD3FF8879DDFF4B35CCFF4A33CCFF9588E1FFFFFFFFFFFFFFFFFFF8F7
        FDFF7561D6FF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33
        CCFF4A33CCFF4A33CCFF4A33CCFF7765D9FFF9F9FDFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F7FDFF9081E0FF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33CCFF4A33
        CCFF4A33CCFF4A33CCFF9385E1FFF9F8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDBD6F5FF9285E0FF6450D1FF4E35CBFF4E35CBFF6551
        D4FF9486E1FFDDD9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ModalResult = 2
      TabOrder = 1
      Version = '1.0.0.2'
    end
    object bitBtGuardar: TAeroBitBtn
      AlignWithMargins = True
      Left = 182
      Top = 2
      Width = 130
      Height = 33
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Action = GuardarCambios
      Align = alRight
      Cancel = True
      Caption = 'Guardar en Clientes'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000040000
        00130000001E0000002000000020000000200000002100000021000000210000
        002200000022000000220000002300000021000000160000000500000012281E
        16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
        3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
        21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
        79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
        24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
        6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
        26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
        EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
        29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
        EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
        2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
        2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
        4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
        32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
        3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
        35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
        CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
        36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
        3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
        39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
        38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
        3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
        36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
        3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
        F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
        2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
        64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
        0002000000030000000400000004000000040000000400000005000000050000
        0005000000050000000500000006000000060000000400000001}
      ModalResult = 11
      TabOrder = 2
      Version = '1.0.0.2'
      WordWrap = True
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 51
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    object eCodigo: TDBAdvEdit
      AlignWithMargins = True
      Left = 4
      Top = 18
      Width = 121
      Height = 21
      Margins.Top = 0
      Margins.Bottom = 28
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      LabelCaption = 'Codigo'
      LabelPosition = lpTopLeft
      LabelMargin = 1
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindow
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = [fsBold]
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Align = alLeft
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = 'eCodigo'
      Visible = True
      Version = '4.0.4.4'
      DataField = 'CODIGO'
      DataSource = DSClientes
      ExplicitTop = 35
    end
    object cbSucursal: TAdvDBLookupComboBox
      AlignWithMargins = True
      Left = 372
      Top = 19
      Width = 210
      Height = 21
      Margins.Top = 18
      Margins.Bottom = 10
      Align = alRight
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LabelCaption = 'Sucursal'
      LabelPosition = lpTopLeft
      LabelMargin = 1
      LabelTransparent = False
      LabelAlwaysEnabled = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindow
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = [fsBold]
      LabelWidth = 0
      LookupColumn = 1
      LookupLoad = llAlways
      LookupInAllColumns = True
      ParentFont = False
      TabOrder = 1
      Columns = <
        item
          FixedColor = clBtnFace
          FixedColorTo = clNone
          GradientDir = gdVertical
          Width = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ListField = 'CODIGO'
          Name = 'Column0'
          Title = 'ID'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        item
          FixedColor = clBtnFace
          FixedColorTo = clNone
          GradientDir = gdVertical
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ListField = 'DETALLE'
          Name = 'Column1'
          Title = 'Sucursal'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end>
      DataField = 'SUCURSAL'
      DataSource = DSClientes
      DropWidth = 250
      DropStretchColumn = -1
      DropFont.Charset = DEFAULT_CHARSET
      DropFont.Color = clWindowText
      DropFont.Height = -11
      DropFont.Name = 'Tahoma'
      DropFont.Style = []
      KeyField = 'CODIGO'
      ListSource = DSSucursales
      SortUpGlyph.Data = {
        36010000424D3601000000000000360000002800000008000000080000000100
        2000000000000001000000000000000000000000000000000000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C0008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
        800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
        C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
        C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000}
      SortDownGlyph.Data = {
        36010000424D3601000000000000360000002800000008000000080000000100
        2000000000000001000000000000000000000000000000000000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C00080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C0008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
        C00080808000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C0008080
        800080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C0008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000808080008080
        8000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00808080008080
        8000808080008080800080808000808080008080800080808000}
      ShowGridTitleRow = True
      Version = '2.0.2.15'
    end
  end
  object cbTipoDoc: TAdvDBComboBox
    Left = 362
    Top = 143
    Width = 55
    Height = 21
    Color = clWindow
    Version = '1.0.6.0'
    Visible = True
    ButtonWidth = 17
    DataField = 'TIPODOCUMENTO'
    DataSource = DSClientes
    DropWidth = 0
    Enabled = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'DNI'
      'CI'
      'LC'
      'LE'
      'PAS')
    Items.StoredStrings = (
      '1'
      '2'
      '3'
      '4'
      '5')
    LabelCaption = 'Tipo Doc.'
    LabelPosition = lpTopLeft
    LabelMargin = 0
    LabelAlwaysEnabled = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    ParentFont = False
    ReturnIsTab = True
    TabOrder = 3
    TabStop = False
  end
  object seLocalidad: TDBAdvSearchEdit
    Left = 80
    Top = 143
    Width = 210
    Height = 21
    Appearance.CategoryControlFont = False
    Appearance.CategoryFont.Charset = DEFAULT_CHARSET
    Appearance.CategoryFont.Color = clWindowText
    Appearance.CategoryFont.Height = -11
    Appearance.CategoryFont.Name = 'Tahoma'
    Appearance.CategoryFont.Style = []
    Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
    Appearance.DescriptionFont.Color = clWindowText
    Appearance.DescriptionFont.Height = -11
    Appearance.DescriptionFont.Name = 'Tahoma'
    Appearance.DescriptionFont.Style = []
    Appearance.DescriptionControlFont = False
    Appearance.SelectionColor = 15914434
    Appearance.SelectionTextColor = 3881787
    Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
    Appearance.FilterCountFont.Color = clWindowText
    Appearance.FilterCountFont.Height = -11
    Appearance.FilterCountFont.Name = 'Tahoma'
    Appearance.FilterCountFont.Style = []
    Appearance.FilterCountFormat = '(%d)'
    Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
    Appearance.ItemCategoryFont.Color = clOrange
    Appearance.ItemCategoryFont.Height = -11
    Appearance.ItemCategoryFont.Name = 'Tahoma'
    Appearance.ItemCategoryFont.Style = []
    Appearance.ItemCategoryFormat = 'in %s'
    BorderColor = 10724259
    Categories = <>
    CategoryButton.Appearance.BorderColor = 11382963
    CategoryButton.Appearance.BorderColorHot = 11565130
    CategoryButton.Appearance.BorderColorCheckedHot = 11565130
    CategoryButton.Appearance.BorderColorDown = 11565130
    CategoryButton.Appearance.BorderColorChecked = 13744549
    CategoryButton.Appearance.BorderColorDisabled = 13948116
    CategoryButton.Appearance.Color = clWhite
    CategoryButton.Appearance.ColorTo = clWhite
    CategoryButton.Appearance.ColorChecked = 13744549
    CategoryButton.Appearance.ColorCheckedTo = 13744549
    CategoryButton.Appearance.ColorDisabled = clWhite
    CategoryButton.Appearance.ColorDisabledTo = clNone
    CategoryButton.Appearance.ColorDown = 11565130
    CategoryButton.Appearance.ColorDownTo = 11565130
    CategoryButton.Appearance.ColorHot = 16444643
    CategoryButton.Appearance.ColorHotTo = 16444643
    CategoryButton.Appearance.ColorMirror = clWhite
    CategoryButton.Appearance.ColorMirrorTo = clWhite
    CategoryButton.Appearance.ColorMirrorHot = 16444643
    CategoryButton.Appearance.ColorMirrorHotTo = 16444643
    CategoryButton.Appearance.ColorMirrorDown = 11565130
    CategoryButton.Appearance.ColorMirrorDownTo = 11565130
    CategoryButton.Appearance.ColorMirrorChecked = 13744549
    CategoryButton.Appearance.ColorMirrorCheckedTo = 13744549
    CategoryButton.Appearance.ColorMirrorDisabled = clWhite
    CategoryButton.Appearance.ColorMirrorDisabledTo = clNone
    CategoryButton.Appearance.GradientHot = ggVertical
    CategoryButton.Appearance.GradientMirrorHot = ggVertical
    CategoryButton.Appearance.GradientDown = ggVertical
    CategoryButton.Appearance.GradientMirrorDown = ggVertical
    CategoryButton.Appearance.GradientChecked = ggVertical
    CategoryButton.Appearance.TextColorChecked = 3750459
    CategoryButton.Appearance.TextColorDown = 2303013
    CategoryButton.Appearance.TextColorHot = 2303013
    CategoryButton.Appearance.TextColorDisabled = 13948116
    CategoryButton.Visible = False
    Columns = <
      item
        ControlFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 200
        DataField = 'DETALLE_POSTAL'
      end
      item
        Alignment = gtaCenter
        ControlFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Trimming = True
        Width = 40
        DataField = 'CODIGO_POSTAL'
      end
      item
        Alignment = gtaCenter
        ControlFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Trimming = True
        Width = 50
        DataField = 'TELEDISCADO'
      end
      item
        Alignment = gtaTrailing
        ControlFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Trimming = True
        Width = 100
        DataField = 'ID_POSTAL'
      end>
    DropDownHeader.Color = clWhite
    DropDownHeader.ColorTo = clNone
    DropDownHeader.Caption = 
      '<B>    Localidad                                          Cod.Po' +
      'stal  </B>'
    DropDownHeader.Font.Charset = DEFAULT_CHARSET
    DropDownHeader.Font.Color = clGreen
    DropDownHeader.Font.Height = -11
    DropDownHeader.Font.Name = 'Tahoma'
    DropDownHeader.Font.Style = [fsBold]
    DropDownHeader.Visible = True
    DropDownHeader.BorderColor = 11250603
    DropDownHeader.Buttons = <>
    DropDownFooter.Color = clWhite
    DropDownFooter.ColorTo = clNone
    DropDownFooter.Font.Charset = DEFAULT_CHARSET
    DropDownFooter.Font.Color = 6184542
    DropDownFooter.Font.Height = -11
    DropDownFooter.Font.Name = 'Tahoma'
    DropDownFooter.Font.Style = []
    DropDownFooter.Visible = True
    DropDownFooter.BorderColor = 11250603
    DropDownFooter.BorderWidth = 0
    DropDownFooter.Buttons = <>
    DropDownShadow = True
    DropDownWidth = 425
    EmptyText = 'Localidad...'
    EmptyTextFocused = True
    FilterCondition.AllColumns = True
    FilterCondition.AutoSelect = True
    FocusFontColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4474440
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 20
    Items = <>
    SearchButton.Appearance.BorderColor = 11382963
    SearchButton.Appearance.BorderColorHot = 11565130
    SearchButton.Appearance.BorderColorCheckedHot = 11565130
    SearchButton.Appearance.BorderColorDown = 11565130
    SearchButton.Appearance.BorderColorChecked = 13744549
    SearchButton.Appearance.BorderColorDisabled = 13948116
    SearchButton.Appearance.Color = clWhite
    SearchButton.Appearance.ColorTo = clWhite
    SearchButton.Appearance.ColorChecked = 13744549
    SearchButton.Appearance.ColorCheckedTo = 13744549
    SearchButton.Appearance.ColorDisabled = clWhite
    SearchButton.Appearance.ColorDisabledTo = clNone
    SearchButton.Appearance.ColorDown = 11565130
    SearchButton.Appearance.ColorDownTo = 11565130
    SearchButton.Appearance.ColorHot = 16444643
    SearchButton.Appearance.ColorHotTo = 16444643
    SearchButton.Appearance.ColorMirror = clWhite
    SearchButton.Appearance.ColorMirrorTo = clWhite
    SearchButton.Appearance.ColorMirrorHot = 16444643
    SearchButton.Appearance.ColorMirrorHotTo = 16444643
    SearchButton.Appearance.ColorMirrorDown = 11565130
    SearchButton.Appearance.ColorMirrorDownTo = 11565130
    SearchButton.Appearance.ColorMirrorChecked = 13744549
    SearchButton.Appearance.ColorMirrorCheckedTo = 13744549
    SearchButton.Appearance.ColorMirrorDisabled = clWhite
    SearchButton.Appearance.ColorMirrorDisabledTo = clNone
    SearchButton.Appearance.GradientHot = ggVertical
    SearchButton.Appearance.GradientMirrorHot = ggVertical
    SearchButton.Appearance.GradientDown = ggVertical
    SearchButton.Appearance.GradientMirrorDown = ggVertical
    SearchButton.Appearance.GradientChecked = ggVertical
    SearchButton.Appearance.TextColorChecked = 3750459
    SearchButton.Appearance.TextColorDown = 2303013
    SearchButton.Appearance.TextColorHot = 2303013
    SearchButton.Appearance.TextColorDisabled = 13948116
    SearchButton.Visible = False
    TabOrder = 4
    Text = ''
    Version = '1.1.5.7'
    OnSelect = seLocalidadSelect
    DropDownColor = clBlack
    DataField = 'LOCALIDAD'
    DataSource = DSCpostal
    ListSource = DSLocalidades
  end
  object DSClientes: TDataSource
    DataSet = CDSCliente
    OnStateChange = DSClientesStateChange
    Left = 296
  end
  object ActionList1: TActionList
    Left = 536
    Top = 144
    object Agregar: TAction
      Caption = 'Agregar'
      OnExecute = AgregarExecute
    end
    object Modificar: TAction
      Caption = 'Modificar'
      OnExecute = ModificarExecute
    end
    object Borrar: TAction
      Caption = 'Borrar'
      OnExecute = BorrarExecute
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      OnExecute = CancelarExecute
    end
    object Salir: TAction
      Caption = 'Salir'
      OnExecute = SalirExecute
    end
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object Confirma: TAction
      Caption = 'Confirma'
      Hint = 'Solo Guarda los datos de cabecera'
      OnExecute = ConfirmaExecute
    end
    object BuscaCPostal: TAction
      Caption = 'BuscaCPostal'
      OnExecute = BuscaCPostalExecute
    end
    object GuardarCambios: TAction
      Caption = 'Guardar en Clientes'
      Hint = 'Guarda los Datos Cargados en el la Ficha del Cliente'
      Visible = False
      OnExecute = GuardarCambiosExecute
    end
  end
  object DSLocalidades: TDataSource
    DataSet = CDSBuscaCPostal
    Left = 496
    Top = 208
  end
  object DSSucursales: TDataSource
    DataSet = CDSBuscaSucursal
    Left = 184
    Top = 259
  end
  object comBuscadorLocalidades: TComBuscador
    Data = CDSBuscaCPostal
    Campo = 'ID_POSTAL'
    rOk = False
    Left = 520
    Top = 67
  end
  object CDSCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = CDSClienteNewRecord
    Left = 216
    Top = 3
    object CDSClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      OnSetText = CDSClienteNOMBRESetText
      Size = 35
    end
    object CDSClienteRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClienteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSClienteDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClienteTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClienteTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClienteTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClienteCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object CDSClienteNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      EditMask = '00-00000000-0;1;_'
      Size = 13
    end
    object CDSClienteTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
    end
    object CDSClienteNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSClienteCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
  end
  object spIngresarCliente: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_CLIENTE'
    Left = 128
    Top = 2
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'NOMBRE'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 3
        Name = 'RAZON_SOCIAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 4
        Name = 'DIRECCION'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 35
      end
      item
        Position = 5
        Name = 'TIPO_IVA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'CUIT'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 7
        Name = 'C_POSTAL'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 8
        Name = 'LOCALIDAD'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 9
        Name = 'TELEFONO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 10
        Name = 'VENDEDOR'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 11
        Name = 'ZONA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'OBSERVACIONES'
        DataType = ftMemo
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'MAIL'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 14
        Name = 'CUENTA_OP'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 15
        Name = 'TIPODOC'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'NRODOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 17
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'CELULAR'
        DataType = ftString
        ParamType = ptInput
        Size = 11
      end
      item
        Position = 19
        Name = 'ID_POSTAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'ID_ADMINISTRACION'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 21
        Name = 'CODIGO_ALTA'
        DataType = ftString
        ParamType = ptOutput
        Size = 6
      end>
  end
  object DSPBuscaInscripcion: TDataSetProvider
    DataSet = QBuscaInscripcion
    Left = 80
    Top = 206
  end
  object CDSBuscaInscripcion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaInscripcion'
    Left = 136
    Top = 208
    object CDSBuscaInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Origin = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Origin = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
  end
  object DSBuscaInscripcion: TDataSource
    DataSet = CDSBuscaInscripcion
    Left = 192
    Top = 204
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = QBuscaSucursal
    Left = 96
    Top = 230
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 120
    Top = 256
    object CDSBuscaSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
  end
  object CDSBuscaCPostal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCPostal'
    Left = 424
    Top = 225
    object CDSBuscaCPostalDETALLE_POSTAL: TStringField
      DisplayLabel = 'Localidad'
      DisplayWidth = 40
      FieldName = 'DETALLE_POSTAL'
      Origin = 'DETALLE_POSTAL'
      Size = 25
    end
    object CDSBuscaCPostalCODIGO_POSTAL: TStringField
      DisplayLabel = 'C.Postal'
      DisplayWidth = 12
      FieldName = 'CODIGO_POSTAL'
      Origin = 'CODIGO_POSTAL'
      Size = 8
    end
    object CDSBuscaCPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      Size = 6
    end
    object CDSBuscaCPostalID_POSTAL: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaCPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
      Visible = False
    end
  end
  object DSPBuscaCPostal: TDataSetProvider
    DataSet = QBuscaCPostalFD
    Left = 368
    Top = 225
  end
  object DSBuscaCliente: TDataSetProvider
    DataSet = QClientes
    Left = 368
    Top = 184
  end
  object CDSBuscaCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSBuscaCliente'
    Left = 424
    Top = 184
    object CDSBuscaClienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSBuscaClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSBuscaClienteRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSBuscaClienteDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSBuscaClienteTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSBuscaClienteTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSBuscaClienteID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object CDSBuscaClienteCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSBuscaClienteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSBuscaClienteCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object CDSBuscaClienteNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSBuscaClienteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSBuscaClienteTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object CDSBuscaClienteNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object CDSBuscaClienteCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
  end
  object CDSCpostal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 64
    object CDSCpostalID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      OnSetText = CDSCpostalID_COD_POSTALSetText
    end
    object CDSCpostalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSCpostalCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSCpostalMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      Size = 6
    end
  end
  object DSCpostal: TDataSource
    DataSet = CDSCpostal
    Left = 224
    Top = 64
  end
  object QBuscaInscripcion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Codigo,Detalle,AplicaPercepcionIva,AplicaPercepcionIIBB f' +
        'rom Inscripcion')
    Left = 24
    Top = 195
  end
  object QBuscaSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal')
    Left = 272
    Top = 203
  end
  object QBuscaCPostalFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from C_Postal order by detalle_postal,Codigo_postal')
    Left = 240
    Top = 187
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.* ,'
      '  p.telediscado as MuestraTelediscado,'
      '  v.nombre as MuestraVendedor,'
      '  vc.nombre as MuestraCobrador,'
      '  cl.nombre as MuestraCtaCoorporativa,'
      '  g.id as MuestraIDGarante'
      'FROM Clientes C'
      '  left join personal v on v.codigo=c.vendedor'
      '  left join personal vc on vc.codigo=c.cobrador'
      '  left join c_postal p on c.id_cod_postal=p.id_postal'
      '  left join clientes cl on cl.codigo=c.codigo_coorporativo'
      
        '  left join clientes_garantes g on g.codigocliente=c.codigo and ' +
        'g.por_defecto='#39'S'#39
      'where (c.codigo=:codigo)')
    Left = 312
    Top = 179
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
