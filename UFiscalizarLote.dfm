inherited FormFiscalizacionLote: TFormFiscalizacionLote
  Left = 218
  Top = 81
  Caption = 'Fiscalizacion por Lote'
  ClientHeight = 734
  ClientWidth = 1838
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  ExplicitWidth = 1856
  ExplicitHeight = 775
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1838
    Height = 681
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1838
    ExplicitHeight = 681
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 1838
      Height = 681
      ActivePage = pag1
      Align = alClient
      TabOrder = 0
      object pag1: TTabSheet
        Caption = 'Comprobantes Sin Fiscalizar'
        DesignSize = (
          1830
          653)
        object dbgFacturas: TDBGrid
          Left = 0
          Top = 0
          Width = 1830
          Height = 610
          Align = alTop
          Anchors = [akTop, akRight, akBottom]
          DataSource = DSBase
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgFacturasDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHAVTA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Title.Caption = 'Clase'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LETRAFAC'
              Title.Alignment = taCenter
              Title.Caption = 'Let'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUCFAC'
              Title.Alignment = taCenter
              Title.Caption = 'Suc.'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMEROFAC'
              Title.Alignment = taCenter
              Title.Caption = 'Numero'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAE'
              Title.Alignment = taCenter
              Width = 161
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAE_VENCIMIENTO'
              Title.Alignment = taCenter
              Width = 127
              Visible = True
            end>
        end
        object chFecha: TCheckBox
          Left = 1512
          Top = 620
          Width = 180
          Height = 21
          Anchors = [akRight, akBottom]
          Caption = 'Actualizar Fecha Al Fiscalizar'
          TabOrder = 1
        end
      end
      object Listados: TTabSheet
        Caption = 'Datos AFIP'
        ImageIndex = 2
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1830
          Height = 54
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 5
            Top = 2
            Width = 37
            Height = 13
            Caption = 'Numero'
          end
          object Label3: TLabel
            Left = 173
            Top = 2
            Width = 31
            Height = 13
            Caption = 'Desde'
          end
          object Label4: TLabel
            Left = 237
            Top = 2
            Width = 28
            Height = 13
            Caption = 'Hasta'
          end
          object Label5: TLabel
            Left = 527
            Top = 2
            Width = 63
            Height = 13
            Caption = 'Comprobante'
          end
          object Label6: TLabel
            Left = 304
            Top = 2
            Width = 87
            Height = 13
            Caption = 'Sucursal de Venta'
          end
          object DBText1: TDBText
            Left = 434
            Top = 4
            Width = 87
            Height = 17
            Alignment = taCenter
            DataField = 'CUIT'
            DataSource = DSSucursales
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edDesde: TEdit
            Left = 173
            Top = 21
            Width = 58
            Height = 21
            HideSelection = False
            MaxLength = 8
            TabOrder = 0
            Text = '00000000'
          end
          object edHasta: TEdit
            Left = 237
            Top = 21
            Width = 64
            Height = 21
            HideSelection = False
            MaxLength = 8
            TabOrder = 1
            Text = '00000000'
          end
          object dbcComprobante: TJvDBLookupCombo
            Left = 527
            Top = 21
            Width = 503
            Height = 21
            DropDownCount = 12
            DropDownWidth = 500
            DisplayAllFields = True
            DisplayEmpty = 'Sin Comprobante'
            EmptyValue = '-1'
            LookupField = 'ID_COMPROBANTE'
            LookupDisplay = 'DENOMINACION;LETRA;PREFIJO;NUMERO;MUESTRASUCURSAL;CODIGO_AFIP'
            LookupSource = DSBuscadorComp
            TabOrder = 2
            OnChange = dbcComprobanteChange
            OnClick = dbcComprobanteClick
          end
          object Panel3: TPanel
            Left = 5
            Top = 17
            Width = 162
            Height = 29
            Enabled = False
            TabOrder = 3
            object edClase: TEdit
              Left = 51
              Top = 4
              Width = 26
              Height = 21
              MaxLength = 4
              TabOrder = 0
              Text = '--'
            end
            object edLetra: TEdit
              Left = 83
              Top = 4
              Width = 26
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 4
              TabOrder = 1
              Text = 'X'
            end
            object edPrefijo: TEdit
              Left = 115
              Top = 4
              Width = 38
              Height = 21
              MaxLength = 4
              TabOrder = 2
              Text = '0000'
            end
            object edTipo: TEdit
              Left = 19
              Top = 4
              Width = 26
              Height = 21
              CharCase = ecUpperCase
              MaxLength = 4
              TabOrder = 3
              Text = '--'
            end
          end
          object dbcSucursal: TJvDBLookupCombo
            Left = 304
            Top = 21
            Width = 217
            Height = 21
            DropDownCount = 12
            DisplayEmpty = 'Todas las Sucursales'
            EmptyValue = '-1'
            LookupField = 'CODIGO'
            LookupDisplay = 'DETALLE'
            LookupSource = DSSucursales
            TabOrder = 4
            OnChange = dbcSucursalChange
            OnClick = dbcSucursalClick
            OnEnter = dbcSucursalEnter
          end
          object chbActivos: TCheckBox
            Left = 840
            Top = 0
            Width = 152
            Height = 19
            Alignment = taLeftJustify
            Caption = 'Solo los Que estan Activos'
            Checked = True
            State = cbChecked
            TabOrder = 5
            OnClick = chbActivosClick
          end
        end
        object pnPieListado: TPanel
          Left = 0
          Top = 603
          Width = 1830
          Height = 50
          Align = alBottom
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 1
          DesignSize = (
            1830
            50)
          object lbReg: TLabel
            Left = 368
            Top = 8
            Width = 17
            Height = 13
            Cursor = crHandPoint
            Caption = '0/0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = lbRegClick
          end
          object lbNovedad: TLabel
            Left = 14
            Top = 8
            Width = 58
            Height = 13
            Caption = 'Novedades:'
          end
          object lbCertificado: TLabel
            Left = 3
            Top = 35
            Width = 58
            Height = 13
            Caption = 'lbCertificado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbClave: TLabel
            Left = 620
            Top = 35
            Width = 35
            Height = 13
            Caption = 'lbClave'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object btListarComprob: TBitBtn
            Left = 1310
            Top = 3
            Width = 85
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'Consulta'
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000E000600000001F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A100851510428A29C208200000001F7C
              1F7C1F7C1F7C1F7C1F7C000063000815CE391042524ACE398C31482102096000
              00001F7C1F7C0000630008158C318C31524ABC73FE7B7A6B9452CE391042CA29
              42096000000042088C318C31104235463967FE7BFE7B7A6B3967FE7B175F1042
              10420821000000001042F75EF75E3546732DBC52FE5ABC35FE7BFE7BFE7BFE7B
              175F08210000200060006B2DF75EF75EB114732DFE1C0F00692D672DFE7BB452
              A51400001F7C0000A10CE01460006B2D3546B114BC73EF3DB37BE069600C0000
              1F7C1F7C1F7C1F7C21002015600D2001A0006B2D3967B452A21C0D7BE069600C
              1F7C1F7C1F7C1F7C0000E1006005600D60016001600000001F7CA21C0D7BE069
              600C1F7C1F7C1F7C1F7C210060056001A001E001600100001F7C1F7CA21C0D7B
              E069600C1F7C1F7C1F7C0000E104A001E001E001E001A0001F7C1F7C1F7CA21C
              0D7BE069600C1F7C1F7C1F7C6000E001E001E001E001A00100001F7C1F7C1F7C
              A21C0D7BE03C1F7C1F7C1F7C1F7C0000E000E00120022002A0001F7C1F7C1F7C
              1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C0000E0006002A00100001F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000600200001F7C1F7C
              1F7C1F7C1F7C}
            TabOrder = 0
            OnClick = btListarComprobClick
          end
          object chSincroniza: TCheckBox
            Left = 1422
            Top = -1
            Width = 134
            Height = 29
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Sincronizar con el CAE'
            Enabled = False
            TabOrder = 1
          end
          object ProgressBar: TProgressBar
            Left = 102
            Top = 6
            Width = 225
            Height = 17
            TabOrder = 2
          end
          object BitBtn1: TBitBtn
            Left = 1651
            Top = 3
            Width = 81
            Height = 25
            Hint = 'Cancelar los Cambios'
            Anchors = [akTop, akRight]
            Cancel = True
            Caption = 'Ca&ncelar'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0001079F000313A9000418AE000419AE000313
              A9000108A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0001049D00041CB1000730C0000734C4000735C5000735C5000734
              C3000731C100041FB30001069E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000109A100052BC3000735C7000733C2000732C2000732C2000732C2000732
              C2000733C3000735C400062DBE00020CA400FF00FF00FF00FF00FF00FF000104
              9B00052BCA000636D8000431CD000027C400032EC1000732C2000732C2000430
              C1000027BF00042FC1000735C400072EBE0001069E00FF00FF00FF00FF00031A
              BA000537E7000331DD00123DD8006480E0001840CB00002CC100022DC0000F38
              C4006580D9001B43C700052FC1000735C500051FB300FF00FF0001049E000430
              E4000436F100002AE4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2
              E800FFFFFF006984DA000026BE000733C3000731C1000108A000020FAF000336
              FA000335F8000232EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFF
              FF00A7B7E900133AC400052FC1000732C2000734C4000313AA000619BC001747
              FE00093AFC000435F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBA
              EF00062FC500022DC0000732C2000732C2000736C5000419AE000B1DBE004168
              FE001C49FC000335FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6
              F2000D36D000002CC6000732C2000732C2000736C5000418AD000613B4005B7C
              FC00486CFD000133FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFF
              FF00B6C4F2001A41D300042FC8000732C4000734C3000212A9000003A0004A6A
              F3008FA6FF001F46FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2
              F600FFFFFF00627FE7000028D0000734CC000730C30000069F00FF00FF001A2F
              CB0099AFFF008BA2FE00214DFB004D71FC000E3DFB000030FB000031F7000636
              F1004C6EF100103CE3000432DB000636D700041CB500FF00FF00FF00FF000004
              A000415EEC00B8C7FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133
              F900052FF2000635EB000537E900052CCD0000049C00FF00FF00FF00FF00FF00
              FF000309A5004260EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6E
              FD003961FD001444F900042CD7000109A200FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000004A0001E32CD005876F600859EFE008BA3FF007994FE005376
              FC00234AF000051EC50001049C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000004A0000917B6001022C3000D1FC2000311
              B40001059F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            TabOrder = 3
            OnClick = BitBtn1Click
          end
          object btImprimir: TBitBtn
            Left = 1738
            Top = 3
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Imprimir'
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
            TabOrder = 4
            OnClick = btImprimirClick
          end
          object btListar: TBitBtn
            Left = 1562
            Top = 3
            Width = 85
            Height = 25
            Anchors = [akTop, akRight]
            Caption = 'Consultar'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF006D7C94006F7C8800FF00FF00FF00
              FF000D7FA9000E80AA000D7FA9000E80AA000E80AA001081AB00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00788295001F89E00059A9DC00FF00FF00048C
              B90048D5EE0022D7FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA00FF00
              FF00FF00FF00FF00FF00788295002087DE004EB7FF0057AEF400048CB9008CFA
              FD0058E9FD0022D7FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180
              A700FF00FF008B8697001F7ECE004EB7FF0057AEF400FF00FF00088EBC008CFA
              FD0058E9FD0022D7FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE87
              7C008C6B6C006092BD004EB7FF004EB7FF00FF00FF00FF00FF00088EBC008CFA
              FD0058E9FD0024D8FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2
              D900CFB7A100AD8580004EB7FF00FF00FF00FF00FF00FF00FF00048CB900B4FF
              FF00B6F6FF00C6F5FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFE
              D600FFF2BA00CAA08C00FF00FF00FF00FF00FF00FF00FF00FF00048CB900B8ED
              F60030BCDC0011A7D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5
              CD00F8D09800ECD1AC00AD858000FF00FF00FF00FF00FF00FF00088EBC004BC6
              DC0058E9FD0022D7FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DA
              AB00F3BE8000F5DEB500AD858000FF00FF00FF00FF00FF00FF00048CB9008CFA
              FD0058E9FD0024D8FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB
              9A00FEEAB900E4CCA900AD858000FF00FF00FF00FF00FF00FF00048CB9008CFA
              FD0058E9FD0024D8FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7
              E000F9F6F200AD858000FF00FF00FF00FF00FF00FF00FF00FF00048CB9008CFA
              FD0058E9FD0024D8FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5
              B700AD858000AD858000FF00FF00FF00FF00FF00FF00FF00FF00088EBC008CFA
              FD0081F8FE0071F9FE007BFFFF0097FCFD00A1C6C8008F989B00868388008770
              7000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00048CB900FBFF
              FF00F5FFFE00D2FFFF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80
              AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A91
              C100F5FFFE00E3FEFF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00088EBC00088EBC00048CB900088EBC00088EBC00088EBC00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            TabOrder = 5
            Visible = False
            OnClick = btListarClick
          end
        end
        object pcListado: TPageControl
          Left = 0
          Top = 54
          Width = 1830
          Height = 549
          ActivePage = pgGeneral
          Align = alClient
          TabOrder = 2
          object pgGeneral: TTabSheet
            Caption = 'Listado General'
            object lvGeneral: TListView
              Left = 0
              Top = 0
              Width = 1822
              Height = 521
              Align = alClient
              Checkboxes = True
              Columns = <
                item
                  Caption = 'V'
                  MinWidth = 20
                  Width = 20
                end
                item
                  Caption = 'Fecha'
                  MinWidth = 20
                  Width = 80
                end
                item
                  Alignment = taCenter
                  Caption = 'CodAFIP'
                  MinWidth = 20
                end
                item
                  Caption = 'Tipo'
                  MinWidth = 20
                  Width = 35
                end
                item
                  Caption = 'Clase'
                  MinWidth = 20
                  Width = 40
                end
                item
                  Caption = 'Letra'
                  MinWidth = 20
                  Width = 40
                end
                item
                  Caption = 'Prefijo'
                  MinWidth = 20
                end
                item
                  Caption = 'Numero'
                  MinWidth = 20
                  Width = 70
                end
                item
                  Caption = 'Nro.Cuit'
                  MinWidth = 20
                  Width = 65
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Neto'
                  MinWidth = 20
                  Width = 70
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Exento'
                  MinWidth = 20
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Iva'
                  MinWidth = 20
                  Width = 80
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Alic.IIBB%'
                  MinWidth = 20
                  Width = 90
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Impor.IIBB'
                  MinWidth = 20
                  Width = 90
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Perc.IVA%'
                  MinWidth = 20
                  Width = 90
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Importe Perc.'
                  Width = 90
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Perc.IVA% 2'
                  Width = 90
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Importe Percep 2'
                  Width = 90
                end
                item
                  Alignment = taRightJustify
                  Caption = 'Importe'
                  MinWidth = 20
                  Width = 100
                end
                item
                  Alignment = taCenter
                  Caption = 'CAE'
                  MinWidth = 20
                  Width = 100
                end
                item
                  Alignment = taCenter
                  Caption = 'CAE Vto'
                  MinWidth = 20
                  Width = 70
                end
                item
                  Caption = 'Causa'
                  MinWidth = 20
                  Width = 65
                end
                item
                  Alignment = taCenter
                  Caption = 'Tp.Ajust Liq'
                  MinWidth = 20
                end
                item
                  Alignment = taCenter
                  Caption = 'CompAjustado'
                  MinWidth = 20
                end
                item
                  Alignment = taRightJustify
                  AutoSize = True
                  Caption = 'Retencion IVA'
                  MinWidth = 20
                end>
              HotTrack = True
              HotTrackStyles = [htUnderlineCold]
              Items.ItemData = {050000000000000000}
              RowSelect = True
              PopupMenu = PopupMenu1
              SortType = stData
              TabOrder = 0
              ViewStyle = vsReport
              OnDblClick = lvGeneralDblClick
              OnMouseMove = lvGeneralMouseMove
            end
          end
          object pagNovedades: TTabSheet
            Caption = 'Novedades'
            ImageIndex = 1
          end
        end
      end
      object pag3: TTabSheet
        Caption = 'Consultas'
        ImageIndex = 1
        object btConsulta: TBitBtn
          Left = 700
          Top = 327
          Width = 90
          Height = 29
          Caption = 'Consulta'
          Glyph.Data = {
            42020000424D4202000000000000420000002800000010000000100000000100
            1000030000000002000000000000000000000000000000000000007C0000E003
            00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000E000600000001F7C1F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A100851510428A29C208200000001F7C
            1F7C1F7C1F7C1F7C1F7C000063000815CE391042524ACE398C31482102096000
            00001F7C1F7C0000630008158C318C31524ABC73FE7B7A6B9452CE391042CA29
            42096000000042088C318C31104235463967FE7BFE7B7A6B3967FE7B175F1042
            10420821000000001042F75EF75E3546732DBC52FE5ABC35FE7BFE7BFE7BFE7B
            175F08210000200060006B2DF75EF75EB114732DFE1C0F00692D672DFE7BB452
            A51400001F7C0000A10CE01460006B2D3546B114BC73EF3DB37BE069600C0000
            1F7C1F7C1F7C1F7C21002015600D2001A0006B2D3967B452A21C0D7BE069600C
            1F7C1F7C1F7C1F7C0000E1006005600D60016001600000001F7CA21C0D7BE069
            600C1F7C1F7C1F7C1F7C210060056001A001E001600100001F7C1F7CA21C0D7B
            E069600C1F7C1F7C1F7C0000E104A001E001E001E001A0001F7C1F7C1F7CA21C
            0D7BE069600C1F7C1F7C1F7C6000E001E001E001E001A00100001F7C1F7C1F7C
            A21C0D7BE03C1F7C1F7C1F7C1F7C0000E000E00120022002A0001F7C1F7C1F7C
            1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C0000E0006002A00100001F7C1F7C
            1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000600200001F7C1F7C
            1F7C1F7C1F7C}
          TabOrder = 0
          OnClick = btConsultaClick
        end
        object DBGrid1: TDBGrid
          Left = 472
          Top = 3
          Width = 425
          Height = 158
          DataSource = DSBase
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Caption = 'Cl'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NROCPBTE'
              Title.Caption = 'Nro.Cpbte'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Width = 219
              Visible = True
            end>
        end
        object lwFacturas: TListView
          Left = 7
          Top = 2
          Width = 450
          Height = 640
          Align = alCustom
          Anchors = [akLeft, akTop, akBottom]
          Columns = <
            item
              Width = 20
            end
            item
              Caption = 'Campo'
              Width = 150
            end
            item
              AutoSize = True
              Caption = 'Valor'
            end>
          HotTrack = True
          RowSelect = True
          SortType = stData
          TabOrder = 2
          ViewStyle = vsReport
        end
        object rgBuscarPor: TRadioGroup
          Left = 589
          Top = 167
          Width = 185
          Height = 57
          Caption = 'Buscar por'
          ItemIndex = 1
          Items.Strings = (
            'En Listado General'
            'Por un Numero')
          TabOrder = 3
          OnClick = rgBuscarPorClick
        end
        object pnNumero: TPanel
          Left = 489
          Top = 286
          Width = 312
          Height = 35
          TabOrder = 4
          object Label1: TLabel
            Left = 16
            Top = 7
            Width = 37
            Height = 13
            Caption = 'Numero'
          end
          object sbGravar: TSpeedButton
            Left = 276
            Top = 3
            Width = 23
            Height = 20
            Caption = '>>'
            OnClick = sbGravarClick
          end
          object cbTipo: TComboBox
            Left = 79
            Top = 4
            Width = 38
            Height = 21
            TabOrder = 0
            Text = 'FC'
            Items.Strings = (
              'FC'
              'FO'
              'NC'
              'ND'
              'LQ'
              'FP'
              'NP'
              'DP'
              'FL')
          end
          object cbLetra: TComboBox
            Left = 123
            Top = 4
            Width = 38
            Height = 21
            TabOrder = 1
            Text = 'A'
            Items.Strings = (
              'A'
              'B'
              'C'
              'M'
              'E')
          end
          object edSuc: TEdit
            Left = 167
            Top = 4
            Width = 38
            Height = 21
            MaxLength = 4
            TabOrder = 2
            Text = '0000'
          end
          object edNumero: TEdit
            Left = 211
            Top = 4
            Width = 58
            Height = 21
            MaxLength = 8
            TabOrder = 3
            Text = '00000000'
          end
        end
        object chGuardaXML: TCheckBox
          Left = 489
          Top = 327
          Width = 96
          Height = 44
          Caption = 'Grabar Archivo de Consulta XML'
          TabOrder = 5
          WordWrap = True
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Otros'
        ImageIndex = 3
        object Label7: TLabel
          Left = 6
          Top = 9
          Width = 51
          Height = 13
          Caption = 'Cliente C.F'
          ParentShowHint = False
          ShowHint = True
        end
        object Label8: TLabel
          Left = 6
          Top = 93
          Width = 64
          Height = 13
          Caption = 'Articulo (21%)'
        end
        object Label9: TLabel
          Left = 6
          Top = 133
          Width = 73
          Height = 13
          Caption = 'Articulo (10.5%)'
        end
        object Label10: TLabel
          Left = 3
          Top = 53
          Width = 58
          Height = 13
          Caption = 'Articulo (0%)'
        end
        object ceCliente: TJvComboEdit
          Left = 6
          Top = 28
          Width = 73
          Height = 21
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          TabOrder = 0
          Text = ''
          OnButtonClick = ceClienteButtonClick
        end
        object edNombreCliente: TEdit
          Left = 87
          Top = 28
          Width = 257
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 1
        end
        object ceCodigo: TJvComboEdit
          Left = 6
          Top = 112
          Width = 73
          Height = 21
          Action = BuscarArticulos
          ButtonWidth = 16
          ClickKey = 0
          Color = clBtnFace
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          Images = ImageList1
          TabOrder = 2
          Text = ''
          OnButtonClick = BuscarArticulosExecute
        end
        object ceCodigo105: TJvComboEdit
          Left = 6
          Top = 152
          Width = 73
          Height = 21
          Action = BuscarArticulos
          ButtonWidth = 16
          ClickKey = 0
          Color = clBtnFace
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          Images = ImageList1
          TabOrder = 3
          Text = ''
          OnButtonClick = BuscarArticulosExecute
        end
        object edDetalle2: TEdit
          Left = 87
          Top = 152
          Width = 312
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 4
        end
        object edDetalle: TEdit
          Left = 87
          Top = 112
          Width = 312
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 5
        end
        object ceCodigoCero: TJvComboEdit
          Left = 6
          Top = 72
          Width = 73
          Height = 21
          Action = BuscarArticulos
          ButtonWidth = 16
          ClickKey = 0
          Color = clBtnFace
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          Images = ImageList1
          TabOrder = 6
          Text = ''
          OnButtonClick = BuscarArticulosExecute
        end
        object edDetalleCero: TEdit
          Left = 87
          Top = 72
          Width = 312
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 7
        end
        object chAutoconfirmarFc: TCheckBox
          Left = 10
          Top = 200
          Width = 279
          Height = 17
          Caption = 'Confirmar Factura Autoamticamente al Rehacerla'
          TabOrder = 8
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 681
    Width = 1838
    Align = alBottom
    ButtonHeight = 30
    ExplicitTop = 681
    ExplicitWidth = 1838
    inherited btConfirma: TBitBtn
      Width = 47
      Height = 30
      Visible = False
      ExplicitWidth = 47
      ExplicitHeight = 30
    end
    inherited btNuevo: TBitBtn
      Left = 49
      Width = 32
      Height = 30
      Visible = False
      ExplicitLeft = 49
      ExplicitWidth = 32
      ExplicitHeight = 30
    end
    inherited btCancelar: TBitBtn
      Left = 81
      Width = 30
      Height = 30
      Visible = False
      ExplicitLeft = 81
      ExplicitWidth = 30
      ExplicitHeight = 30
    end
    inherited btModificar: TBitBtn
      Left = 111
      Width = 34
      Height = 30
      Visible = False
      ExplicitLeft = 111
      ExplicitWidth = 34
      ExplicitHeight = 30
    end
    inherited Pr: TSpeedButton
      Left = 145
      Height = 30
      Visible = False
      ExplicitLeft = 145
      ExplicitHeight = 30
    end
    inherited btBuscar: TBitBtn
      Left = 160
      Height = 30
      ExplicitLeft = 160
      ExplicitHeight = 30
    end
    inherited Ne: TSpeedButton
      Left = 235
      Height = 30
      Visible = False
      ExplicitLeft = 235
      ExplicitHeight = 30
    end
    inherited btBorrar: TBitBtn
      Left = 250
      Width = 23
      Height = 30
      Visible = False
      ExplicitLeft = 250
      ExplicitWidth = 23
      ExplicitHeight = 30
    end
    inherited btSalir: TBitBtn
      Left = 273
      Height = 30
      ExplicitLeft = 273
      ExplicitHeight = 30
    end
    object btFiscalizar: TBitBtn
      Left = 348
      Top = 0
      Width = 90
      Height = 30
      Action = Fiscalizar
      Caption = 'Fiscalizar'
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000E000600000001F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A100851510428A29C208200000001F7C
        1F7C1F7C1F7C1F7C1F7C000063000815CE391042524ACE398C31482102096000
        00001F7C1F7C0000630008158C318C31524ABC73FE7B7A6B9452CE391042CA29
        42096000000042088C318C31104235463967FE7BFE7B7A6B3967FE7B175F1042
        10420821000000001042F75EF75E3546732DBC52FE5ABC35FE7BFE7BFE7BFE7B
        175F08210000200060006B2DF75EF75EB114732DFE1C0F00692D672DFE7BB452
        A51400001F7C0000A10CE01460006B2D3546B114BC73EF3DB37BE069600C0000
        1F7C1F7C1F7C1F7C21002015600D2001A0006B2D3967B452A21C0D7BE069600C
        1F7C1F7C1F7C1F7C0000E1006005600D60016001600000001F7CA21C0D7BE069
        600C1F7C1F7C1F7C1F7C210060056001A001E001600100001F7C1F7CA21C0D7B
        E069600C1F7C1F7C1F7C0000E104A001E001E001E001A0001F7C1F7C1F7CA21C
        0D7BE069600C1F7C1F7C1F7C6000E001E001E001E001A00100001F7C1F7C1F7C
        A21C0D7BE03C1F7C1F7C1F7C1F7C0000E000E00120022002A0001F7C1F7C1F7C
        1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C0000E0006002A00100001F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000600200001F7C1F7C
        1F7C1F7C1F7C}
      TabOrder = 7
    end
    object chbCorreo: TCheckBox
      Left = 438
      Top = 0
      Width = 104
      Height = 30
      Caption = 'Enviar Por Correo'
      TabOrder = 8
    end
    object ToolButton1: TToolButton
      Left = 542
      Top = 0
      Width = 27
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btLote: TBitBtn
      Left = 569
      Top = 0
      Width = 90
      Height = 30
      Action = FiscalizarLote
      Caption = 'Fisc. Lote'
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C0000E000600000001F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000A100851510428A29C208200000001F7C
        1F7C1F7C1F7C1F7C1F7C000063000815CE391042524ACE398C31482102096000
        00001F7C1F7C0000630008158C318C31524ABC73FE7B7A6B9452CE391042CA29
        42096000000042088C318C31104235463967FE7BFE7B7A6B3967FE7B175F1042
        10420821000000001042F75EF75E3546732DBC52FE5ABC35FE7BFE7BFE7BFE7B
        175F08210000200060006B2DF75EF75EB114732DFE1C0F00692D672DFE7BB452
        A51400001F7C0000A10CE01460006B2D3546B114BC73EF3DB37BE069600C0000
        1F7C1F7C1F7C1F7C21002015600D2001A0006B2D3967B452A21C0D7BE069600C
        1F7C1F7C1F7C1F7C0000E1006005600D60016001600000001F7CA21C0D7BE069
        600C1F7C1F7C1F7C1F7C210060056001A001E001600100001F7C1F7CA21C0D7B
        E069600C1F7C1F7C1F7C0000E104A001E001E001E001A0001F7C1F7C1F7CA21C
        0D7BE069600C1F7C1F7C1F7C6000E001E001E001E001A00100001F7C1F7C1F7C
        A21C0D7BE03C1F7C1F7C1F7C1F7C0000E000E00120022002A0001F7C1F7C1F7C
        1F7C000000001F7C1F7C1F7C1F7C1F7C1F7C0000E0006002A00100001F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000600200001F7C1F7C
        1F7C1F7C1F7C}
      TabOrder = 9
    end
    object ToolButton2: TToolButton
      Left = 659
      Top = 0
      Width = 27
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
  end
  inherited Panel1: TPanel
    Top = 711
    Width = 1838
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 711
    ExplicitWidth = 1838
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1749
      Panels = <
        item
          Width = 600
        end
        item
          Width = 50
        end>
      OnDblClick = sbEstadoDblClick
      OnMouseMove = sbEstadoMouseMove
      ExplicitWidth = 1749
    end
  end
  inherited ActionList1: TActionList
    Left = 400
    Top = 160
    object Fiscalizar: TAction
      Caption = 'Fiscalizar'
      OnExecute = FiscalizarExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
    end
    object FiscalizarLote: TAction
      Caption = 'Fisc. Lote'
      OnExecute = FiscalizarLoteExecute
    end
    object FiscalizarLote_2: TAction
      Caption = 'FiscalizarLote_2'
      OnExecute = FiscalizarLote_2Execute
    end
    object BuscarCpbte: TAction
      Caption = 'Buscar Cpbte'
      OnExecute = BuscarCpbteExecute
    end
    object BuscaCpbtePorCAE: TAction
      Caption = 'Busca Cpbte Por Nro.de CAE'
      OnExecute = BuscaCpbtePorCAEExecute
    end
    object IgualarCaePorNroFac: TAction
      Caption = 'IgualarCaePorNroFac'
      OnExecute = IgualarCaePorNroFacExecute
    end
    object Facturar: TAction
      Caption = 'Generar Facturar'
      ShortCut = 115
      OnExecute = FacturarExecute
    end
    object BuscarArticulos: TAction
      Caption = 'BuscarArticulos'
      OnExecute = BuscarArticulosExecute
    end
    object Duplicar: TAction
      Caption = 'Duplicar'
      ShortCut = 16452
      OnExecute = DuplicarExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSFacturas
    Left = 520
    Top = 136
  end
  inherited ImageList1: TImageList
    Left = 344
    Top = 184
    Bitmap = {
      494C01010A000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001079F000313A9000418AE000419AE000313A9000108A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D2C05006B250800521E1500551F13006D2607007E2D05000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521E15006B2508007D2C05007E2D05006D260700551F13000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E000000000000000000000000000000000000000000000000008932
      040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C2621800541F
      1600903503000000000000000000000000000000000000000000000000005521
      170089320400BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C26218009035
      0300541F16000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA400000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E07006023110000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E000000000000000000732D0D00B0460200F4D0
      AB00FFFFFE00D4884600BD4E0400BA470000BA460000C0530700D4844200FCF8
      F300F8DDBD00B64D0500903502000000000000000000732D0D00B0460200F4D0
      AB00FFFEFE00D78C4E00C0540900BA460000BA460000BD4F0400D07E3900FCF8
      F400F8DDBD00B64D0500541F1600000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D030000660000000000000000000000000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000009A380000E6AB7200FFFF
      FF00CC732800C9682000CE752A00BB480000BC4B0000B8430000B8420000CA6C
      1F00FCF8F400EFBC8800541F160000000000000000009A380000E6AB7200FFFF
      FF00CF762D00B8410000BA430000BC4A0000BB470000C6631500CE753100C96B
      1F00FCF8F400EFBC880090350200000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D030000660000000000000000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000A9440300C05C1100FFFCFA00E1A3
      6A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C2000E9BD9300BA46
      0000D4884300FFFFFF00C16016007B2C040089340600C05C1100FFFCFA00E1A3
      6A00C04C0000FFFFFF00D3803800BC470000B8420000DC995E00FFFFFF00B843
      0000D4874300FFFFFF00C1601600551F13000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA009A3B0200DD955400FFFFFF00D376
      2800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2E900F7E7D900BC4B
      0000BF510300FCF8F300E29D5A006D2607009A3B0200DD955400FFFFFF00D376
      2800CC600D00FFFFFF00FFFFFF00DC955400BC450000DA965800FFFFFF00BC4B
      0000BF510300FCF8F300E29D5A006D260700000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE0089340600EBBB8A00FBF0E700D87A
      2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFFFF00F3DEC700BD4D
      0100BA450000F2DAC200EFC08E00551F1300A9440300EBBB8A00FBF0E700D87A
      2B00D7742200FFFFFF00FFFFFF00FFFFFF00E5AF7B00E0A16800FFFFFF00BD4D
      0100BA450000F2DAC200EFC08E007D2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD00AD450200EEBF9000FCF4EB00E28A
      3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFFFF00F3DEC900BD4D
      0100BA460000F3DEC700EFBD8A00521F1600B04A0600EEBF9000FCF4EB00E28A
      3E00E1843500FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7500FFFFFF00BD4D
      0100BA460000F3DEC700EFBD8A007B2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900B0490500E9AA6E00FFFFFF00EDA4
      6200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3D100F7EADC00BC4B
      0000C0540500FEFBF800E09752006B240800B0490500E9AA6E00FFFFFF00EDA4
      6200EA934600FFFFFF00FFFFFF00EDBA8800D0671300E3A66D00FFFFFF00BC4B
      0000C0540500FEFBF800E09752006B240800000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00B04A0600DD893F00FFFCF800FAD7
      B400F4A35900FCE6D000F8E3CE00E1843500D7722000D3752700E3AC7800BB47
      0000D9935400FFFFFE00BD5A10007B2C0400AD450200DD893F00FFFCF800FAD7
      B400F4A55B00FFFFFF00F0BB8700DE813000D56E1D00E7AF7A00FFFFFF00BA44
      0000D9935300FFFFFE00BD5A1000521F1600000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB5000000000000000000C9651800F8CEA500FFFF
      FF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE651200C04C0000D07A
      3100FFFFFF00EAAF7300501F18000000000000000000C9651800F8CEA500FFFF
      FF00FED1A600F6A96300EB964800E2893C00D8772600D77B2E00D1782D00D07A
      3200FFFFFF00EAAF73008931030000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F90000990000006600000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D4782A00E1A46B00FFFF
      FF00F3CCA400AC440200893103000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD5B100EDA56300E28B3F00D97B2D00D3752600DE9D6200FFFF
      FF00F3CCA400AC440200501F180000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A20000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A22140000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A2214000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F005D23
      150090340200000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F009034
      02005D2315000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC0000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      00000000000000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF40000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF40000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE0099330000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC0097330400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A000000000000000000088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB0064345900000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C0000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB00000000000000000000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB0000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB0000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF33F00000000E007E00700000000
      C003C00000000000800180010000000080010000000000000000000000000000
      000000000000000000008000000000000000E001000000000000F00300000000
      0000F01F000000008001E03F000000008001E03F00000000C003C03F00000000
      E007C07F00000000F81FF8FF00000000FFFFF81FF81FF81FC007E007E007E007
      8003C003C003C003800380018001800180038001800180018003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800380018001800180038001800180018003C003C003C003
      C007E007E007E007FFFFF81FF81FF81FFFFCFF87FC03FFFFC0F8C087C003E07F
      807080078003C03F002100000003800300030000000380030007000000038003
      000F000000038003000700070001801F00070007003C801F00070007003E801F
      000F003F003F801F000F003F003F801F003F003F003F801F003F003F003F801F
      807F807F807FC03FC0FFC0FFC0FFE07F00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 456
    Top = 344
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 24
    Top = 400
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 392
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 480
    Top = 440
  end
  inherited QBrowse2: TFDQuery
    Left = 8
    Top = 568
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 24
    Top = 576
  end
  object CDSFacturas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFacturas'
    AfterScroll = CDSFacturasAfterScroll
    Left = 792
    Top = 320
    object CDSFacturasID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFacturasTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CDSFacturasCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object CDSFacturasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSFacturasNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSFacturasLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacturasSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object CDSFacturasNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object CDSFacturasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSFacturasRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSFacturasDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSFacturasCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSFacturasLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSFacturasTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      Required = True
    end
    object CDSFacturasCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSFacturasCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object CDSFacturasFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacturasNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      Required = True
    end
    object CDSFacturasNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
    end
    object CDSFacturasNETONOGRAV1: TFloatField
      FieldName = 'NETONOGRAV1'
      Origin = 'NETONOGRAV1'
      Required = True
    end
    object CDSFacturasNETONOGRAV2: TFloatField
      FieldName = 'NETONOGRAV2'
      Origin = 'NETONOGRAV2'
      Required = True
    end
    object CDSFacturasDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      Required = True
    end
    object CDSFacturasNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
      Required = True
    end
    object CDSFacturasNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
      Required = True
    end
    object CDSFacturasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSFacturasDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      Required = True
    end
    object CDSFacturasPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Origin = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object CDSFacturasPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Origin = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object CDSFacturasPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Origin = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFacturasPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object CDSFacturasFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSFacturasFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSFacturasCAE_VENCIMIENTO: TSQLTimeStampField
      DisplayLabel = 'Cae Vencimiento'
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object CDSFacturasFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Origin = 'FECHA_FISCAL'
    end
    object CDSFacturasMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSFacturasMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
    end
    object CDSFacturasCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSFacturasASOCIADO_ID_CPBTE: TIntegerField
      FieldName = 'ASOCIADO_ID_CPBTE'
      Required = True
    end
    object CDSFacturasASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
    end
    object CDSFacturasASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
    end
    object CDSFacturasASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Required = True
    end
    object CDSFacturasASOCIADO_CPTEFCH: TStringField
      FieldName = 'ASOCIADO_CPTEFCH'
      Size = 8
    end
  end
  object DSPFacturas: TDataSetProvider
    DataSet = QFacturas
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 712
    Top = 320
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 712
    Top = 259
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 786
    Top = 256
    object CDSEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 30
    end
    object CDSEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Size = 30
    end
    object CDSEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 30
    end
    object CDSEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 30
    end
    object CDSEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Size = 30
    end
    object CDSEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 10
    end
    object CDSEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 10
    end
    object CDSEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Size = 15
    end
    object CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object CDSEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object CDSEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object CDSEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
    end
    object CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
    end
    object CDSEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
    object CDSEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Required = True
    end
    object CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object CDSEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Required = True
    end
    object CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
    end
    object CDSEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
    end
    object CDSEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
    end
    object CDSEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object CDSEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object CDSEmpresaCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSEmpresaID_CPOSTAL: TIntegerField
      FieldName = 'ID_CPOSTAL'
    end
    object CDSEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Size = 10
    end
    object CDSEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object CDSEmpresaCODIGO_COT: TStringField
      FieldName = 'CODIGO_COT'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Size = 10
    end
    object CDSEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
    object CDSEmpresaTASA_LEY15311: TFloatField
      FieldName = 'TASA_LEY15311'
      Required = True
    end
    object CDSEmpresaDIRECCION_OPERACION: TStringField
      FieldName = 'DIRECCION_OPERACION'
      Size = 150
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 536
    Top = 480
    DOMVendorDesc = 'MSXML'
  end
  object DSPImpuestos: TDataSetProvider
    DataSet = QImpuesto
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 140
    Top = 504
  end
  object CDSImpuestos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPImpuestos'
    Left = 208
    Top = 512
    object CDSImpuestosID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSImpuestosID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
    end
    object CDSImpuestosCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object CDSImpuestosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSImpuestosNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object CDSImpuestosTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object CDSImpuestosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object DSPBuscadorComp: TDataSetProvider
    DataSet = QBuscadorCo
    Options = []
    Left = 685
    Top = 120
  end
  object CDSBuscadorComp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscadorComp'
    Left = 773
    Top = 128
    object CDSBuscadorCompTIPO_COMPROB: TStringField
      DisplayLabel = 'Tip.'
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscadorCompCLASE_COMPROB: TStringField
      DisplayLabel = 'Cla.'
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscadorCompDETALLE: TStringField
      DisplayLabel = 'Tipo Comp.'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSBuscadorCompDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscadorCompLETRA: TStringField
      DisplayLabel = 'Letra'
      DisplayWidth = 5
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompPREFIJO: TStringField
      DisplayLabel = 'Prefijo'
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSBuscadorCompNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSBuscadorCompMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      DisplayWidth = 15
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSBuscadorCompCOMPRA_VENTA: TStringField
      DisplayLabel = 'C / V'
      DisplayWidth = 1
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSBuscadorCompSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Visible = False
    end
    object CDSBuscadorCompNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
      Visible = False
    end
    object CDSBuscadorCompAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object CDSBuscadorCompCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
  end
  object DSBuscadorComp: TDataSource
    DataSet = CDSBuscadorComp
    Left = 892
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Left = 908
    Top = 384
    object BuscarCpbte1: TMenuItem
      Action = BuscarCpbte
    end
    object BuscaCpbtePorCAE1: TMenuItem
      Action = BuscaCpbtePorCAE
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object IgualarCaePorNroFac1: TMenuItem
      Action = IgualarCaePorNroFac
      Caption = 'Igualar Cae Por Nro.de Fac'
    end
    object Facturar1: TMenuItem
      Action = Facturar
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Duplicar1: TMenuItem
      Action = Duplicar
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 712
    Top = 208
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 784
    Top = 208
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
    object CDSSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Required = True
      Size = 100
    end
    object CDSSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Required = True
      Size = 13
    end
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 856
    Top = 208
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_2.QClientes
    Left = 592
    Top = 24
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClientes'
    Left = 656
    Top = 24
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43252.473956469900000000
    ReportOptions.LastChange = 43252.496684895840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReportGetValue
    Left = 468
    Top = 176
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 22.677180000000000000
        Width = 740.787880000000000000
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[element]')
        end
      end
    end
  end
  object frxUserDataListado: TfrxUserDataSet
    UserName = 'frxUserDataListado'
    Left = 564
    Top = 216
  end
  object jvHiloConsulta: TJvThread
    Exclusive = False
    MaxCount = 0
    RunOnCreate = True
    FreeOnTerminate = True
    OnExecute = jvHiloConsultaExecute
    Left = 968
    Top = 536
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 260
    Top = 144
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxListViewReportLink
      Active = True
      Component = lvGeneral
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 6350
      PrinterPage.Margins.Left = 6000
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.RightTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.CenterTitle.Strings = (
        'Listado de Facturas Fiscalizadas')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 46027.667869918980000000
      TimeFormat = 0
      AutoWidth = True
      EndEllipsis = True
      RowAutoHeight = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object QBuscaLocalidad: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.* from c_postal c where c.detalle_postal containing :da' +
        'to')
    Left = 92
    Top = 408
    ParamData = <
      item
        Name = 'DATO'
        DataType = ftString
        ParamType = ptInput
        Size = 25
        Value = Null
      end>
    object QBuscaLocalidadID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaLocalidadCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Origin = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object QBuscaLocalidadDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Origin = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
  end
  object QControlComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_comprobante from comprobantes where '
      'tipo_comprob   = :tipo and '
      'clase_comprob  = :clase and '
      'sucursal       = :sucursal and'
      'compra_venta   = '#39'V'#39' and '
      'letra          = :letra')
    Left = 248
    Top = 456
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LETRA'
        DataType = ftOraInterval
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
    object QControlComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QBuscarFacturaLQ: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.cae,(f.total-f.retencion_iva) AS Total,f.fechac' +
        'ompra, f.tipocpbte,f.nrocpbte  from fccompcab f where'
      ' f.letrafac = :letra and'
      ' f.sucfac = :suc and'
      ' f.numerofac = :Numero and'
      ' f.sucursalcompra = :sucursal and'
      ' f.tipocpbte = :tipo and'
      'f.clasecpbte = :clase')
    Left = 384
    Top = 520
    ParamData = <
      item
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QBuscarFacturaLQID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscarFacturaLQCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QBuscarFacturaLQTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscarFacturaLQTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QBuscarFacturaLQNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QBuscarFacturaLQFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
  end
  object QBuscaCpbteRelacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.clase_comprob,c.tipo_comprob from comprobantes c'
      'where c.toma_nro_de = :id and'
      '      c.compra_venta='#39'V'#39' and'
      '      c.facturaelectronica='#39'S'#39)
    Left = 792
    Top = 576
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscaCpbteRelacionCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QBuscaCpbteRelacionTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
  end
  object QBuscaCpbte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.id_fc from fcvtacab f'
      'where f.letrafac=:letra and'
      '      f.sucfac=:suc and'
      '      f.numerofac=:numero and'
      '      f.tipocpbte=:tipo and '
      '      f.factura_electronica='#39'S'#39)
    Left = 672
    Top = 576
    ParamData = <
      item
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QBuscaCpbteID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QActualizaCompAjustado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fccompcab f set f.observacion1=:dato where f.id_fc=:id')
    Left = 600
    Top = 552
    ParamData = <
      item
        Name = 'DATO'
        DataType = ftString
        ParamType = ptInput
        Size = 60
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscarFact: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.cae,f.total,f.fechavta, f.tipocpbte,f.clasecpbt' +
        'e,c.codigo_afip from fcvtacab f'
      'left join comprobantes c on c.tipo_comprob=f.tipocpbte and'
      '                            c.clase_comprob=f.clasecpbte and'
      '                            c.letra=f.letrafac and'
      '                            c.sucursal=f.sucursal and'
      '                            c.compra_venta='#39'V'#39
      'where'
      ' f.sucursal   = :sucursal and'
      ' f.tipocpbte  = :tipo and'
      ' f.letrafac   = :letra and'
      ' f.sucfac     = :suc and'
      ' f.numerofac  = :Numero '
      '')
    Left = 656
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 5
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object QActualizaUltimoNro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update comprobantes c set '
      'c.ultimonro= :UltimoNro '
      'where c.id_comprobante = :id')
    Left = 528
    Top = 549
    ParamData = <
      item
        Name = 'ULTIMONRO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscadorCo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*, s.detalle as MuestraSucursal,t.detalle from comproba' +
        'ntes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join tipo_comprobante t on t.sigla=c.tipo_comprob'
      'where (c.compra_venta = '#39'V'#39'  or c.compra_venta = '#39'C'#39' )'
      '      and c.facturaelectronica='#39'S'#39' and c.numerarcion_propia='#39'S'#39
      '      and (c.sucursal = :sucursal or :sucursal = -1)'
      '      and (c.en_uso = :estado or :estado = '#39'*'#39' )'
      
        'order by c.sucursal, c.compra_venta,c.tipo_comprob,c.letra,c.den' +
        'ominacion')
    Left = 596
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end>
    object QBuscadorCoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorCoTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QBuscadorCoCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QBuscadorCoDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QBuscadorCoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QBuscadorCoLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QBuscadorCoNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QBuscadorCoTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QBuscadorCoAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QBuscadorCoREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QBuscadorCoIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QBuscadorCoPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QBuscadorCoCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QBuscadorCoDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QBuscadorCoID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QBuscadorCoCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QBuscadorCoFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QBuscadorCoULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QBuscadorCoEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QBuscadorCoMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QBuscadorCoDETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QFacturas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.* from fcvtacab f where f.factura_electronica='#39'S'#39' and'
      '                                 (f.cae='#39#39' or f.cae='#39'0'#39') and'
      
        '                                  (f.cae_vencimiento is null) an' +
        'd f.anulado<>'#39'S'#39
      'order by fechavta,nrocpbte')
    Left = 636
    Top = 320
  end
  object QBuscaCpbtePorCAE: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.tipocpbte,f.clasecpbte,f.cae from fcvtacab f wh' +
        'ere'
      ' f.cae = :cae')
    Left = 652
    Top = 384
    ParamData = <
      item
        Name = 'CAE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QBuscaCpbtePorCAEID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaCpbtePorCAETIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QBuscaCpbtePorCAECLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QBuscaCpbtePorCAECAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
  end
  object QBuscarCuit: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Max(codigo) from clientes where nro_de_cuit = :cuit')
    Left = 788
    Top = 384
    ParamData = <
      item
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end>
  end
  object QImpuesto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'Select * from FcVtaImpuesto Where Id_FcVtaCab=:id')
    Left = 72
    Top = 505
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDesactivaTrigerDelfd: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TBD_MOVAPLICACCVTA  INACTIVE')
    Left = 52
    Top = 160
  end
  object QBorrarAplTem: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from MOVAPLICACCVTA_TEMP')
    Left = 76
    Top = 112
  end
  object spBorraAplicacionesFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_APLICACIONES_A_FCVTA'
    Left = 164
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QActivaTrigerDelFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TBD_MOVAPLICACCVTA  ACTIVE')
    Left = 156
    Top = 168
  end
  object QBKAplicacionesFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'INSERT INTO MOVAPLICACCVTA_TEMP (ID_MOV,ID_MOVCCVTA,FECHA,CLIENT' +
        'E,ID_CPBTE,'
      
        '                                 TIPOCPBTE,CLASECPBTE,NUMEROCPBT' +
        'E,IMPORTE,'
      
        '                                 APLICA_ID_CPBTE,APLICA_TIPOCPBT' +
        'E,APLICA_CLASECPBTE,'
      
        '                                 APLICA_NROCPBTE,DETALLE,CONCILI' +
        'ADO)'
      'select m.ID_MOV,m.ID_MOVCCVTA,m.FECHA,m.CLIENTE,m.ID_CPBTE,'
      
        '                                 m.TIPOCPBTE,m.CLASECPBTE,m.NUME' +
        'ROCPBTE,m.IMPORTE,'
      
        '                                 m.APLICA_ID_CPBTE,m.APLICA_TIPO' +
        'CPBTE,m.APLICA_CLASECPBTE,'
      
        '                                 m.APLICA_NROCPBTE,m.DETALLE,m.C' +
        'ONCILIADO from movaplicaccvta m'
      '    where m.aplica_id_cpbte = :id and m.aplica_tipocpbte = :tipo')
    Left = 44
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QRsAplicacionesFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'INSERT INTO MOVAPLICACCVTA (ID_MOV,ID_MOVCCVTA,FECHA,CLIENTE,ID_' +
        'CPBTE,'
      
        '                            TIPOCPBTE,CLASECPBTE,NUMEROCPBTE,IMP' +
        'ORTE,'
      
        '                            APLICA_ID_CPBTE,APLICA_TIPOCPBTE,APL' +
        'ICA_CLASECPBTE,'
      '                            APLICA_NROCPBTE,DETALLE,CONCILIADO)'
      'select m.ID_MOV,m.ID_MOVCCVTA,m.FECHA,m.CLIENTE,m.ID_CPBTE,'
      '       m.TIPOCPBTE,m.CLASECPBTE,m.NUMEROCPBTE,m.IMPORTE,'
      '       m.APLICA_ID_CPBTE,m.APLICA_TIPOCPBTE,m.APLICA_CLASECPBTE,'
      
        '       m.APLICA_NROCPBTE,m.DETALLE,m.CONCILIADO from movaplicacc' +
        'vta_temp m')
    Left = 52
    Top = 336
  end
  object spIngresarClienteFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_CLIENTE'
    Left = 140
    Top = 336
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
        Name = 'CODIGO_ALTA'
        DataType = ftString
        ParamType = ptOutput
        Size = 6
      end>
  end
  object QControlSaldoMovFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movccvta m set m.saldo = m.saldo - (select sum(ma.importe' +
        ') from movaplicaccvta_temp ma )'
      'where m.id_cpbte = :id and m.tipocpbte = :tipo')
    Left = 140
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QSincronizaPorCAEFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcvtacab f set  f.cae_vencimiento  = :vencimiento,'
      '                                     f.fechavta  = :fecha,'
      '                                     f.NUMEROFAC = :numero'
      'where f.cae = :NroCae')
    Left = 252
    Top = 280
    ParamData = <
      item
        Name = 'VENCIMIENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'NROCAE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object QActualizaCAEFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcvtacab f set f.cae = :cae , '
      '                           f.cae_vencimiento = :vencimiento,'
      '                           f.fechavta = :fecha,'
      '                           f.fecha_fiscal = :fecha,'
      '                           f.NUMEROFAC= :numero '
      'where f.id_fc = :id')
    Left = 236
    Top = 344
    ParamData = <
      item
        Name = 'CAE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'VENCIMIENTO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaFactura: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.cae,f.total,f.fechavta, f.tipocpbte,f.clasecpbt' +
        'e from fcvtacab f where'
      ' f.letrafac   = :letra and'
      ' f.sucfac     = :suc and'
      ' f.numerofac  = :Numero and'
      ' f.sucursal   = :sucursal and'
      ' f.tipocpbte  = :tipo and'
      ' f.clasecpbte = :Clase'
      '')
    Left = 384
    Top = 448
    ParamData = <
      item
        Position = 1
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 2
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 3
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 4
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 6
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QBuscaFacturaID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaFacturaCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QBuscaFacturaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object QBuscaFacturaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QBuscaFacturaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QBuscaFacturaFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
  end
  object CDSBuscarFactura: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SUCURSAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'LETRA'
        ParamType = ptInput
        Size = 1
      end
      item
        DataType = ftString
        Name = 'SUC'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPBuscarFactura'
    Left = 888
    Top = 470
    object CDSBuscarFacturaID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object CDSBuscarFacturaCAE: TStringField
      FieldName = 'CAE'
      Required = True
      Size = 50
    end
    object CDSBuscarFacturaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
    end
    object CDSBuscarFacturaFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSBuscarFacturaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSBuscarFacturaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSBuscarFacturaCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      ReadOnly = True
      Size = 3
    end
  end
  object DSPBuscarFactura: TDataSetProvider
    DataSet = QBuscarFact
    Options = []
    Left = 760
    Top = 470
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = QPercepcionIvaVta
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 148
    Top = 552
  end
  object CDSPercepcionIVA: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPercepcionIVA'
    Left = 216
    Top = 560
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSPercepcionIVAID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      Required = True
    end
    object CDSPercepcionIVANETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSPercepcionIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QPercepcionIvaVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fcvtapercepcioniva i where i.id_fcvtacab=:id')
    Left = 78
    Top = 559
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
