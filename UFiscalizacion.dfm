object FormFiscalizacion: TFormFiscalizacion
  Left = 307
  Top = 221
  BorderIcons = [biSystemMenu]
  Caption = 'Fiscalizaci'#243'n'
  ClientHeight = 539
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object sbEstado: TStatusBar
    Left = 0
    Top = 513
    Width = 871
    Height = 23
    Align = alTop
    Panels = <
      item
        Bevel = pbRaised
        Width = 450
      end
      item
        Bevel = pbRaised
        Width = 50
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 871
    Height = 249
    ActivePage = pFiscalizar
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object pFiscalizar: TTabSheet
      Caption = 'Fiscalizaci'#243'n'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 863
        Height = 218
        Align = alTop
        ParentBackground = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        object Label1: TLabel
          Left = 443
          Top = 74
          Width = 98
          Height = 18
          Caption = 'Nro.de Cpbte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 443
          Top = 106
          Width = 39
          Height = 18
          Caption = 'C.A.E'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 106
          Width = 92
          Height = 18
          Caption = 'Vencimiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 15
          Width = 99
          Height = 18
          Caption = 'Punto de Vta.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 443
          Top = 15
          Width = 95
          Height = 18
          Caption = 'Nro.Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCAEAnterior: TLabel
          Left = 224
          Top = 44
          Width = 39
          Height = 18
          Caption = 'CAE.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbVtoAnterior: TLabel
          Left = 503
          Top = 44
          Width = 35
          Height = 18
          Caption = 'Vto.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 186
          Top = 15
          Width = 120
          Height = 18
          Caption = 'Nro.A Fiscalizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edNumero: TEdit
          Left = 544
          Top = 71
          Width = 113
          Height = 26
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '00000000'
        end
        object edCAE: TEdit
          Left = 544
          Top = 103
          Width = 153
          Height = 26
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = 'CAE'
        end
        object edVencimiento: TEdit
          Left = 113
          Top = 103
          Width = 129
          Height = 26
          Alignment = taCenter
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object btCerrar: TButton
          Left = 625
          Top = 140
          Width = 75
          Height = 25
          Caption = 'Cerrar'
          TabOrder = 3
          OnClick = btCerrarClick
        end
        object btFiscalizar: TBitBtn
          Left = 544
          Top = 140
          Width = 75
          Height = 25
          Caption = 'Fiscalizar'
          Default = True
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
          NumGlyphs = 2
          TabOrder = 4
          OnClick = btFiscalizarClick
        end
        object edPuntoVta: TEdit
          Left = 113
          Top = 12
          Width = 41
          Height = 26
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Text = '0'
        end
        object edAnterior: TEdit
          Left = 544
          Top = 12
          Width = 113
          Height = 26
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Text = '00000000'
        end
        object chbCerrar: TCheckBox
          Left = 736
          Top = 11
          Width = 115
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Cerrar al Fiscalizar'
          TabOrder = 7
        end
        object chFecha: TCheckBox
          Left = 674
          Top = 34
          Width = 177
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Usar Fecha la Actual al Fiscalizar'
          TabOrder = 8
        end
        object ChImprimir: TCheckBox
          Left = 528
          Top = 171
          Width = 193
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Imprimir Despues Fiscalizar y Cerrar'
          TabOrder = 9
        end
        object chVerLog: TCheckBox
          Left = 736
          Top = 193
          Width = 115
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Ver Log de Proceso'
          TabOrder = 10
          OnClick = chVerLogClick
        end
        object chAplicaAjuste: TCheckBox
          Left = 606
          Top = 194
          Width = 115
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Aplica Ajuste IVA'
          TabOrder = 11
        end
        object edNroFactura: TEdit
          Left = 312
          Top = 12
          Width = 113
          Height = 26
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Text = '00000000'
        end
        object chbControlaNumeracion: TCheckBox
          Left = 673
          Top = 57
          Width = 178
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Controla la Numeraci'#243'n'
          Checked = True
          State = cbChecked
          TabOrder = 13
        end
        object chbNCRechazada_OLD: TCheckBox
          Left = 248
          Top = 110
          Width = 177
          Height = 15
          Alignment = taLeftJustify
          Caption = 'No.Credito Mi Pyme Rechazada'
          TabOrder = 14
          Visible = False
        end
        object btProxy: TButton
          Left = 8
          Top = 73
          Width = 81
          Height = 25
          Caption = 'Cambio Proxy'
          TabOrder = 15
          Visible = False
          OnClick = btProxyClick
        end
        object cbProxys: TColumnComboBox
          Left = 95
          Top = 76
          Width = 211
          Height = 21
          Color = clWindow
          Version = '1.7.2.4'
          Visible = False
          Columns = <
            item
              Width = 100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            item
              Width = 100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end>
          ComboItems = <>
          EditColumn = -1
          EditHeight = 15
          EmptyText = ''
          EmptyTextStyle = [fsBold]
          DropWidth = 0
          DropHeight = 200
          Enabled = True
          ButtonWidth = 17
          ItemIndex = -1
          LookupColumn = 0
          LookupBkColor = clBlack
          LookupTextColor = clBlack
          LabelCaption = ''
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          SortColumn = 0
          TabOrder = 16
        end
        object rgModoNC_MiPyme: TRadioGroup
          Left = 8
          Top = 151
          Width = 177
          Height = 58
          Caption = 'Modo NC. MiPyme'
          ItemIndex = 0
          Items.Strings = (
            'Nota de Credito por Rechazo'
            'Nota de Credito Por ajuste')
          TabOrder = 17
        end
        object rgModoFacturacion_MiPyme: TRadioGroup
          Left = 191
          Top = 151
          Width = 234
          Height = 58
          Caption = 'Modo Facturacion MiPyme'
          ItemIndex = 0
          Items.Strings = (
            'SCA - Trans. al Sist.de Circulacion Abierta'
            'ADC - Agente de Deposito Colectivo')
          TabOrder = 18
        end
      end
    end
    object pRevision: TTabSheet
      Caption = 'Revisi'#243'n'
      ImageIndex = 1
      object Label6: TLabel
        Left = 416
        Top = 22
        Width = 98
        Height = 18
        Caption = 'Nro.de Cpbte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 392
        Top = 66
        Width = 39
        Height = 18
        Caption = 'C.A.E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 22
        Width = 92
        Height = 18
        Caption = 'Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btAsignar: TBitBtn
        Left = 512
        Top = 134
        Width = 75
        Height = 25
        Caption = 'Asignar'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
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
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = btAsignarClick
      end
      object edNumeroActual: TEdit
        Left = 536
        Top = 19
        Width = 129
        Height = 26
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edCaeOtorgado: TEdit
        Left = 512
        Top = 63
        Width = 153
        Height = 26
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edVto: TEdit
        Left = 136
        Top = 19
        Width = 129
        Height = 26
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = 'Vencimiento'
      end
      object btBuscar: TBitBtn
        Left = 593
        Top = 135
        Width = 75
        Height = 24
        Hint = 'Buscar un regsitro'
        Caption = '&Buscar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF008080800080808000FF00FF00FF00
          FF00008080000080800000808000008080000080800000808000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF008080800000808000A4A0A000FF00FF000080
          800000FFFF0000FFFF0000FFFF00C0DCC000C0DCC00000FFFF0000808000FF00
          FF00FF00FF00FF00FF00808080000080800000FFFF00A4A0A00000808000C0DC
          C00000FFFF0000FFFF0000FFFF00C0DCC000C0DCC00000FFFF00008080000080
          8000FF00FF00808080000080800000FFFF00A4A0A000FF00FF0000808000C0DC
          C00000FFFF0000FFFF0000FFFF00C0DCC000A4A0A000A4A0A000A4A0A0008080
          8000808080008080800000FFFF0000FFFF00FF00FF00FF00FF0000808000C0DC
          C00000FFFF0000FFFF0000FFFF00A4A0A000F0CAA600FFFFFF00FFFFFF00F0FB
          FF00C0C0C000A4A0A00000FFFF00FF00FF00FF00FF00FF00FF0000808000F0FB
          FF00F0FBFF00F0FBFF00A4A0A000C0DCC000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F0CAA600A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0000808000C0DC
          C00000FFFF0000808000A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F0CAA600F0CAA600A4A0A000FF00FF00FF00FF00FF00FF000080800000FF
          FF0000FFFF0000FFFF00A4A0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0CA
          A600F0CAA600F0CAA600A4A0A000FF00FF00FF00FF00FF00FF0000808000C0DC
          C00000FFFF0000FFFF00A4A0A000FFFFFF00FFFFFF00FFFFFF00F0CAA600F0CA
          A600F0CAA600F0CAA600A4A0A000FF00FF00FF00FF00FF00FF0000808000C0DC
          C00000FFFF0000FFFF00A4A0A000F0CAA600F0CAA600F0CAA600F0CAA600FFFF
          FF00FFFFFF00A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0000808000C0DC
          C00000FFFF0000FFFF0000FFFF00A4A0A000A4A0A000F0CAA600F0CAA600F0CA
          A600A4A0A000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0000808000C0DC
          C000C0DCC000C0DCC000C0DCC000C0DCC000C0C0C000A4A0A000808080008080
          8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000808000FFFF
          FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00C0DCC0000080
          8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000080
          8000F0FBFF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC00000808000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00008080000080800000808000008080000080800000808000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 4
        OnClick = btBuscarClick
      end
    end
    object pConsulta: TTabSheet
      Caption = 'Consulta Comprobantes'
      ImageIndex = 2
      object MemoConsulta: TMemo
        Left = 3
        Top = 16
        Width = 726
        Height = 169
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object btConsultaCpbtes: TBitBtn
        Left = 448
        Top = 191
        Width = 121
        Height = 25
        Caption = 'Consulta Cpbtes'
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
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btConsultaCpbtesClick
      end
    end
    object pagOtros: TTabSheet
      Caption = 'Otros'
      ImageIndex = 3
      object mActividades: TMemo
        Left = 11
        Top = 24
        Width = 702
        Height = 169
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object btConsultaActividades: TBitBtn
        Left = 552
        Top = 194
        Width = 161
        Height = 25
        Caption = 'Consulta Actividades'
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
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btConsultaActividadesClick
      end
    end
    object pagMonedas: TTabSheet
      Caption = 'Monedas'
      ImageIndex = 4
      object mMonedas: TMemo
        Left = 3
        Top = 16
        Width = 502
        Height = 153
        Lines.Strings = (
          'mMonedas')
        TabOrder = 0
      end
      object ConsultarMonedas: TBitBtn
        Left = 368
        Top = 175
        Width = 137
        Height = 25
        Caption = 'Consultar Monedas'
        TabOrder = 1
        OnClick = ConsultarMonedasClick
      end
    end
    object pagPuntosVtas: TTabSheet
      Caption = 'pagPuntosVtas'
      ImageIndex = 5
      object mPuntosVenta: TMemo
        Left = 3
        Top = 3
        Width = 502
        Height = 153
        Lines.Strings = (
          'mMonedas')
        TabOrder = 0
      end
      object btPuntosVtas: TBitBtn
        Left = 360
        Top = 178
        Width = 145
        Height = 25
        Caption = 'Consultar Puntos de Vta'
        TabOrder = 1
        OnClick = btPuntosVtasClick
      end
    end
  end
  object mLog: TMemo
    Left = 0
    Top = 249
    Width = 871
    Height = 264
    Align = alTop
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object IdIcmpClient: TIdIcmpClient
    Protocol = 1
    ProtocolIPv6 = 58
    Left = 168
    Top = 336
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 336
    object VerificarConeccion1: TMenuItem
      Caption = 'Verificar Coneccion'
      Checked = True
      OnClick = VerificarConeccion1Click
    end
  end
  object JvHiloConsulta: TJvThread
    Exclusive = True
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    Left = 632
    Top = 424
  end
end
