inherited FormComposicionIngresos: TFormComposicionIngresos
  Left = 209
  Top = 97
  Caption = 'Composicion de los Ingresos'
  ClientHeight = 657
  ClientWidth = 1069
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1087
  ExplicitHeight = 698
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1069
    Height = 604
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1069
    ExplicitHeight = 604
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1069
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Left = 1
      Padding.Right = 1
      Padding.Bottom = 2
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1069
        51)
      object Label1: TLabel
        Left = 765
        Top = 0
        Width = 41
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 876
        Top = 0
        Width = 36
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 9
        Top = 1
        Width = 109
        Height = 16
        Caption = 'Sucursal de Venta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 656
        Top = 1
        Width = 93
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Periodo de Vta.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 255
        Top = 7
        Width = 346
        Height = 27
        Caption = 'Composicion Ingresos/Egresos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object desde: TJvDateEdit
        Left = 765
        Top = 15
        Width = 105
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
      end
      object hasta: TJvDateEdit
        Left = 876
        Top = 15
        Width = 105
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
      end
      object UpDown1: TUpDown
        Left = 987
        Top = 15
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Min = -32600
        Max = 32600
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 9
        Top = 18
        Width = 217
        Height = 21
        DisplayEmpty = 'Todas las Sucursales'
        EmptyValue = '-1'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursales
        TabOrder = 3
        OnClick = BuscarExecute
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 51
      Width = 1069
      Height = 553
      ActivePage = TabSheet2
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 1
      object TabSheet2: TTabSheet
        Caption = 'Composicion Ingresos'
        object Label10: TLabel
          Left = 824
          Top = 16
          Width = 37
          Height = 13
          Caption = 'Nombre'
        end
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1061
          Height = 484
          Align = alClient
          DataSource = DSIngresos
          Groups = <>
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Silver'
          OptionsView.ColumnGrandTotalText = 'Total Gral'
          OptionsView.ColumnGrandTotalWidth = 107
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'Tp.Cpbte.'
            DataBinding.FieldName = 'TIPO_CPBTE'
            MinWidth = 5
            SummaryVariation = svAbsolute
            Visible = True
            UniqueName = 'Tp.Cpbte.'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'DEBE'
            DisplayFormat = ',0.00'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Visible = True
            UniqueName = 'Debe'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'FECHA'
            MinWidth = 16
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            AreaIndex = 2
            IsCaptionAssigned = True
            Caption = 'Tp.Pago'
            DataBinding.FieldName = 'TIPOPPAGO'
            Visible = True
            UniqueName = 'Tp.Pago'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Tp.Oper.'
            DataBinding.FieldName = 'TIPOOP'
            Visible = True
            UniqueName = 'Tp.Oper.'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'F.de Pago'
            DataBinding.FieldName = 'FPAGO'
            Visible = True
            UniqueName = 'F.de Pago'
          end
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CLASE_CPBTE'
            Visible = True
            UniqueName = 'Cl.Cpbte'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'NOM_CPBTE'
            Visible = True
            UniqueName = 'Comprobante'
          end
          object cxDBPivotGrid1Field11: TcxDBPivotGridField
            AreaIndex = 8
            IsCaptionAssigned = True
            Caption = 'Cta.Caja'
            DataBinding.FieldName = 'ID_CTA_CAJA'
            Visible = True
            UniqueName = 'Cta.Caja'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            AreaIndex = 9
            IsCaptionAssigned = True
            Caption = 'Nombre Caja'
            DataBinding.FieldName = 'NOMBRE_CAJA'
            Visible = True
            UniqueName = 'Nombre Caja'
          end
          object cxDBPivotGrid1Field13: TcxDBPivotGridField
            AreaIndex = 7
            IsCaptionAssigned = True
            Caption = 'Nro.Caja'
            DataBinding.FieldName = 'NUMERO_CAJA'
            Visible = True
            UniqueName = 'Nro.Caja'
          end
          object cxDBPivotGrid1Field14: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'NRO_CPBTE'
            DisplayFormat = 'a-0000-00000000;0'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1Field15: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'NOMBRE'
            Visible = True
            UniqueName = 'Nombre'
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 484
          Width = 1061
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1061
            41)
          object Label5: TLabel
            Left = 16
            Top = 4
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label5Click
          end
          object SpeedButton1: TSpeedButton
            Left = 126
            Top = 3
            Width = 23
            Height = 22
            Hint = 'Expandir Campos'
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000010000FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FD00FD00FD00FD00FB00
              FB00F900F900F601F600F102F100EA03EA00E005E000C60EC6008D258F006137
              6400354C3A00155E1B000B66120009681000096A1000096C1000086F10000871
              0F0008710F0008710F0008700F00086E0F00086C1000096A1000096A10000969
              1000096A11000A6C12000B6F14000D7317000E781900107D1D0012822100168C
              270018922C0019942E001A962F001A972F001B99310019952E0018942C001791
              2A00168E2700158C260013892300128520000F7C1B000C741600096C11000661
              0B000358050002530300014F0200004D0100004C0000004B0000004B0000004C
              0000004C0000004C0000004B0000004B0000004B0000014B0100014B0100034B
              0300064C06000B4D0B00104F1000155015001B521B00245424002C572C00365A
              36003E5D3E0048604800536453005F685F00676B67006F6F6F00707070007171
              7100727272007373730074747400757575007676760077777700787878007979
              79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
              8100828282008383830084848400858585008686860087878700888888008989
              89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
              9100929292009393930094949400959595009696960097979700989898009999
              99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
              A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
              A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
              B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
              B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
              C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
              C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
              D100D2D2D200D3D3D300CAD1D600C2CFD900BBCDDD00B4CBDF00AECAE200A4C6
              E3009BC2E30095BFE4008FBCE4008BBBE40088B9E40083B8E5007CB0E90077A2
              E9006E99E3006491DC005989D5005283CC004C7EC3004479BA003D73B100346C
              A5002A659C00236197001D5C94001856900013518C000E4B88000D4A8B000D4A
              8D000C4990000C4992000C4993000C4894000C4895000B4896000B4896000B48
              97000B4897000B4897000B4897000B4897000B4897000B489700111111111111
              1111111111111111111139393939393939393939393911111111393939393939
              39393939393911111111111111111111111111111111111111111111FA111111
              115E5E5E5E5E5E1111111111FAFA1111115E46454C335E111111FAFAE4E3FA11
              115E5E5E5E5E5E111111FADBE0E1E6FA11111111111111111111FAFAE3E0FA11
              115E5E5E5E5E5E5E5E5E1111FAFA1111115E46464646484C4D521111FA111111
              115E5E5E5E5E5E5E5E5E11111111111111111111111111111111393939393939
              3939393939391111111139393939393939393939393911111111111111111111
              1111111111111111111111111111111111111111111111111111}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object btImpIngresos: TBitBtn
            Left = 940
            Top = 11
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '&Imprimir'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = btImpIngresosClick
          end
          object btExcIng: TBitBtn
            Left = 864
            Top = 11
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Excel'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
              000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
              4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
              7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
              7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
              77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
              000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
              E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
              67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
              00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
              FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
              77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
              FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
              D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
              97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
              FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
              FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
              B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
              37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
              00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
              FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
            TabOrder = 1
            OnClick = btExcIngClick
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Composicion Egresos'
        ImageIndex = 1
        object cxDBPivotGrid2: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1061
          Height = 474
          Align = alClient
          DataSource = DSEgresos
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Silver'
          OptionsView.ColumnGrandTotalText = 'Total Gral'
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnLayoutChanged = cxDBPivotGrid2LayoutChanged
          OnMouseDown = cxDBPivotGrid2MouseDown
          OnMouseMove = cxDBPivotGrid2MouseMove
          OnMouseUp = cxDBPivotGrid2MouseUp
          object cxDBPivotGridField1: TcxDBPivotGridField
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'Tp.Cpbte.'
            DataBinding.FieldName = 'TIPO_CPBTE'
            MinWidth = 5
            SummaryVariation = svAbsolute
            Visible = True
            UniqueName = 'Tp.Cpbte.'
          end
          object cxDBPivotGridField2: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'HABER'
            DisplayFormat = ',0.00'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Visible = True
            UniqueName = 'Haber'
          end
          object cxDBPivotGridField3: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'FECHA'
            MinWidth = 16
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGridField4: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'TIPOPPAGO'
            Visible = True
            UniqueName = 'Tp.Pago'
          end
          object cxDBPivotGridField5: TcxDBPivotGridField
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Tp.Oper.'
            DataBinding.FieldName = 'TIPOOP'
            Visible = True
            UniqueName = 'Tp.Oper.'
          end
          object cxDBPivotGridField6: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'FPAGO'
            Visible = True
            UniqueName = 'F.de Pago'
          end
          object cxDBPivotGridField7: TcxDBPivotGridField
            AreaIndex = 3
            IsCaptionAssigned = True
            Caption = 'Mes'
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGridField8: TcxDBPivotGridField
            AreaIndex = 4
            IsCaptionAssigned = True
            Caption = 'A'#241'o'
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGridField9: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CLASE_CPBTE'
            Visible = True
            UniqueName = 'Cl.Cpbte'
          end
          object cxDBPivotGridField10: TcxDBPivotGridField
            AreaIndex = 6
            IsCaptionAssigned = True
            Caption = 'Comprobante'
            DataBinding.FieldName = 'NOM_CPBTE'
            Visible = True
            UniqueName = 'Comprobante'
          end
          object cxDBPivotGrid2Field1: TcxDBPivotGridField
            AreaIndex = 7
            IsCaptionAssigned = True
            Caption = 'Nro.Caja'
            DataBinding.FieldName = 'NUMERO_CAJA'
            Visible = True
            UniqueName = 'Nro.Caja'
          end
          object cxDBPivotGrid2Field2: TcxDBPivotGridField
            AreaIndex = 8
            IsCaptionAssigned = True
            Caption = 'Cta.Caja'
            DataBinding.FieldName = 'ID_CTA_CAJA'
            Visible = True
            UniqueName = 'Cta.Caja'
          end
          object cxDBPivotGrid2Field3: TcxDBPivotGridField
            AreaIndex = 9
            IsCaptionAssigned = True
            Caption = 'Nombre Caja'
            DataBinding.FieldName = 'NOMBRE_CAJA'
            Visible = True
            UniqueName = 'Nombre Caja'
          end
          object cxDBPivotGrid2Field4: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'NRO_CPBTE'
            DisplayFormat = 'a-0000-00000000;0'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid2Field5: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'NOMBRE'
            Visible = True
            UniqueName = 'Nombre'
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 474
          Width = 1061
          Height = 51
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1061
            51)
          object Label6: TLabel
            Left = 5
            Top = 13
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label6Click
          end
          object SpeedButton2: TSpeedButton
            Left = 141
            Top = 11
            Width = 23
            Height = 22
            Hint = 'Expandir Campos'
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000010000FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FD00FD00FD00FD00FB00
              FB00F900F900F601F600F102F100EA03EA00E005E000C60EC6008D258F006137
              6400354C3A00155E1B000B66120009681000096A1000096C1000086F10000871
              0F0008710F0008710F0008700F00086E0F00086C1000096A1000096A10000969
              1000096A11000A6C12000B6F14000D7317000E781900107D1D0012822100168C
              270018922C0019942E001A962F001A972F001B99310019952E0018942C001791
              2A00168E2700158C260013892300128520000F7C1B000C741600096C11000661
              0B000358050002530300014F0200004D0100004C0000004B0000004B0000004C
              0000004C0000004C0000004B0000004B0000004B0000014B0100014B0100034B
              0300064C06000B4D0B00104F1000155015001B521B00245424002C572C00365A
              36003E5D3E0048604800536453005F685F00676B67006F6F6F00707070007171
              7100727272007373730074747400757575007676760077777700787878007979
              79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
              8100828282008383830084848400858585008686860087878700888888008989
              89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
              9100929292009393930094949400959595009696960097979700989898009999
              99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
              A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
              A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
              B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
              B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
              C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
              C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
              D100D2D2D200D3D3D300CAD1D600C2CFD900BBCDDD00B4CBDF00AECAE200A4C6
              E3009BC2E30095BFE4008FBCE4008BBBE40088B9E40083B8E5007CB0E90077A2
              E9006E99E3006491DC005989D5005283CC004C7EC3004479BA003D73B100346C
              A5002A659C00236197001D5C94001856900013518C000E4B88000D4A8B000D4A
              8D000C4990000C4992000C4993000C4894000C4895000B4896000B4896000B48
              97000B4897000B4897000B4897000B4897000B4897000B489700111111111111
              1111111111111111111139393939393939393939393911111111393939393939
              39393939393911111111111111111111111111111111111111111111FA111111
              115E5E5E5E5E5E1111111111FAFA1111115E46454C335E111111FAFAE4E3FA11
              115E5E5E5E5E5E111111FADBE0E1E6FA11111111111111111111FAFAE3E0FA11
              115E5E5E5E5E5E5E5E5E1111FAFA1111115E46464646484C4D521111FA111111
              115E5E5E5E5E5E5E5E5E11111111111111111111111111111111393939393939
              3939393939391111111139393939393939393939393911111111111111111111
              1111111111111111111111111111111111111111111111111111}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object btExcEgre: TBitBtn
            Left = 808
            Top = 11
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Excel'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
              000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
              4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
              7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
              7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
              77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
              000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
              E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
              67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
              00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
              FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
              77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
              FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
              D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
              97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
              FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
              FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
              B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
              37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
              00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
              FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
            TabOrder = 0
            OnClick = btExcEgreClick
          end
          object btImprEgresos: TBitBtn
            Left = 884
            Top = 11
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '&Imprimir'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 1
            OnClick = btImprEgresosClick
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Ingresos Con Movimientos'
        ImageIndex = 2
        object cxDBPivotGrid3: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1061
          Height = 484
          Align = alClient
          DataSource = DSIngresosConMov
          Groups = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Silver'
          OptionsView.ColumnGrandTotalText = 'Total Gral'
          OptionsView.ColumnGrandTotalWidth = 107
          OptionsView.RowGrandTotalText = 'Total'
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid3MouseDown
          OnMouseMove = cxDBPivotGrid3MouseMove
          OnMouseUp = cxDBPivotGrid3MouseUp
          object cxDBPivotGridField11: TcxDBPivotGridField
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = 'Tp.Cpbte.'
            DataBinding.FieldName = 'TIPO_CPBTE'
            MinWidth = 5
            SummaryVariation = svAbsolute
            Visible = True
            UniqueName = 'Tp.Cpbte.'
          end
          object cxDBPivotGridField12: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'DEBE'
            DisplayFormat = ',0.00'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00;-'
            Visible = True
            UniqueName = 'Debe'
          end
          object cxDBPivotGridField13: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'FECHA'
            MinWidth = 16
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGridField14: TcxDBPivotGridField
            AreaIndex = 2
            IsCaptionAssigned = True
            Caption = 'Tp.Pago'
            DataBinding.FieldName = 'TIPOPPAGO'
            Visible = True
            UniqueName = 'Tp.Pago'
          end
          object cxDBPivotGridField15: TcxDBPivotGridField
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'Tp.Oper.'
            DataBinding.FieldName = 'TIPOOP'
            Visible = True
            UniqueName = 'Tp.Oper.'
          end
          object cxDBPivotGridField16: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = 'F.de Pago'
            DataBinding.FieldName = 'FPAGO'
            Visible = True
            UniqueName = 'F.de Pago'
          end
          object cxDBPivotGridField17: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGridField18: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGridField19: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CLASE_CPBTE'
            Visible = True
            UniqueName = 'Cl.Cpbte'
          end
          object cxDBPivotGridField20: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'NOM_CPBTE'
            Visible = True
            UniqueName = 'Comprobante'
          end
          object cxDBPivotGridField21: TcxDBPivotGridField
            AreaIndex = 8
            IsCaptionAssigned = True
            Caption = 'Cta.Caja'
            DataBinding.FieldName = 'ID_CTA_CAJA'
            Visible = True
            UniqueName = 'Cta.Caja'
          end
          object cxDBPivotGridField22: TcxDBPivotGridField
            AreaIndex = 9
            IsCaptionAssigned = True
            Caption = 'Nombre Caja'
            DataBinding.FieldName = 'NOMBRE_CAJA'
            Visible = True
            UniqueName = 'Nombre Caja'
          end
          object cxDBPivotGridField23: TcxDBPivotGridField
            AreaIndex = 7
            IsCaptionAssigned = True
            Caption = 'Nro.Caja'
            DataBinding.FieldName = 'NUMERO_CAJA'
            Visible = True
            UniqueName = 'Nro.Caja'
          end
          object cxDBPivotGridField24: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'NRO_CPBTE'
            DisplayFormat = 'a-0000-00000000;0'
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid3Field1: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'APLICA_TIPOCPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Tp.Apl'
          end
          object cxDBPivotGrid3Field2: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'APLICA_CLASECPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Cl.Apli'
          end
          object cxDBPivotGrid3Field3: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'APLICA_NROCPBTE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Nro.Cpbte Apl-'
          end
          object cxDBPivotGrid3Field4: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.ValueType = 'Float'
            DataBinding.FieldName = 'IMPORTE'
            DataVisibility = dvCrossAndTotalCells
            DisplayFormat = ',0.00'
            PropertiesClassName = 'TcxCalcEditProperties'
            GroupExpanded = False
            SortOrder = soDescending
            TotalsVisibility = tvCustom
            Visible = True
            UniqueName = 'Imp.Aplicacion'
          end
          object cxDBPivotGrid3Field5: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'NOMBRE'
            Visible = True
            UniqueName = 'Nombre'
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 484
          Width = 1061
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            1061
            41)
          object Label8: TLabel
            Left = 12
            Top = 13
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label8Click
          end
          object SpeedButton3: TSpeedButton
            Left = 134
            Top = 6
            Width = 23
            Height = 22
            Hint = 'Expandir Campos'
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000010000FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FD00FD00FD00FD00FB00
              FB00F900F900F601F600F102F100EA03EA00E005E000C60EC6008D258F006137
              6400354C3A00155E1B000B66120009681000096A1000096C1000086F10000871
              0F0008710F0008710F0008700F00086E0F00086C1000096A1000096A10000969
              1000096A11000A6C12000B6F14000D7317000E781900107D1D0012822100168C
              270018922C0019942E001A962F001A972F001B99310019952E0018942C001791
              2A00168E2700158C260013892300128520000F7C1B000C741600096C11000661
              0B000358050002530300014F0200004D0100004C0000004B0000004B0000004C
              0000004C0000004C0000004B0000004B0000004B0000014B0100014B0100034B
              0300064C06000B4D0B00104F1000155015001B521B00245424002C572C00365A
              36003E5D3E0048604800536453005F685F00676B67006F6F6F00707070007171
              7100727272007373730074747400757575007676760077777700787878007979
              79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
              8100828282008383830084848400858585008686860087878700888888008989
              89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
              9100929292009393930094949400959595009696960097979700989898009999
              99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
              A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
              A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
              B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
              B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
              C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
              C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
              D100D2D2D200D3D3D300CAD1D600C2CFD900BBCDDD00B4CBDF00AECAE200A4C6
              E3009BC2E30095BFE4008FBCE4008BBBE40088B9E40083B8E5007CB0E90077A2
              E9006E99E3006491DC005989D5005283CC004C7EC3004479BA003D73B100346C
              A5002A659C00236197001D5C94001856900013518C000E4B88000D4A8B000D4A
              8D000C4990000C4992000C4993000C4894000C4895000B4896000B4896000B48
              97000B4897000B4897000B4897000B4897000B4897000B489700111111111111
              1111111111111111111139393939393939393939393911111111393939393939
              39393939393911111111111111111111111111111111111111111111FA111111
              115E5E5E5E5E5E1111111111FAFA1111115E46454C335E111111FAFAE4E3FA11
              115E5E5E5E5E5E111111FADBE0E1E6FA11111111111111111111FAFAE3E0FA11
              115E5E5E5E5E5E5E5E5E1111FAFA1111115E46464646484C4D521111FA111111
              115E5E5E5E5E5E5E5E5E11111111111111111111111111111111393939393939
              3939393939391111111139393939393939393939393911111111111111111111
              1111111111111111111111111111111111111111111111111111}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object btExcMov: TBitBtn
            Left = 835
            Top = 11
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Excel'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
              000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
              4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
              7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
              7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
              77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
              000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
              E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
              67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
              00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
              FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
              77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
              FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
              D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
              97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
              FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
              FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
              B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
              37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
              00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
              FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
            TabOrder = 0
            OnClick = btExcMovClick
          end
          object BitBtn1: TBitBtn
            Left = 911
            Top = 11
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '&Imprimir'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
              8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
              8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
              8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 1
            OnClick = btImpIngresosClick
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 604
    Width = 1069
    Align = alBottom
    ExplicitTop = 604
    ExplicitWidth = 1069
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
  end
  inherited Panel1: TPanel
    Top = 634
    Width = 1069
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 634
    ExplicitWidth = 1069
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 980
      ExplicitWidth = 980
    end
  end
  inherited ActionList1: TActionList
    Left = 568
    Top = 136
  end
  inherited DSBase: TDataSource
    Left = 656
    Top = 128
  end
  inherited ImageList1: TImageList
    Left = 48
    Top = 232
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
    Top = 144
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 8
    Top = 376
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 528
    Top = 288
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 888
    Top = 184
  end
  inherited QBrowse2: TFDQuery
    Left = 32
    Top = 456
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 160
    Top = 496
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 592
    Top = 472
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
    Left = 520
    Top = 464
  end
  object DSSucursales: TDataSource
    DataSet = CDSSucursal
    Left = 680
    Top = 464
  end
  object DSPSaldosMov: TDataSetProvider
    DataSet = QSaldosMov
    Left = 200
    Top = 208
  end
  object CDSSaldoMov_I: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSaldosMov'
    Left = 288
    Top = 200
    object CDSSaldoMov_ITIPOPPAGO: TStringField
      DisplayLabel = 'Tipo Pago'
      FieldName = 'TIPOPPAGO'
      Origin = 'TIPOPPAGO'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_IFPAGO: TStringField
      DisplayLabel = 'Forma Pag.'
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_ITIPOOP: TStringField
      DisplayLabel = 'Tipo.Op'
      FieldName = 'TIPOOP'
      Origin = 'TIPOOP'
      ProviderFlags = []
      Size = 25
    end
    object CDSSaldoMov_ITIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      Size = 1
    end
    object CDSSaldoMov_IDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSSaldoMov_IHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSSaldoMov_ITIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      ProviderFlags = []
      Size = 2
    end
  end
  object DSSaldoMov_I: TDataSource
    DataSet = CDSSaldoMov_I
    Left = 376
    Top = 200
  end
  object CDSIngresos: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIngresos'
    OnCalcFields = CDSIngresosCalcFields
    Left = 292
    Top = 331
    object CDSIngresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSIngresosTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp.Compr.'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSIngresosNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSIngresosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIngresosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIngresosSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSIngresosTIPOPPAGO: TStringField
      DisplayLabel = 'Tipo Pago'
      FieldName = 'TIPOPPAGO'
      Origin = 'TIPOPPAGO'
      Size = 25
    end
    object CDSIngresosFPAGO: TStringField
      DisplayLabel = 'F.Pago'
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
      Size = 25
    end
    object CDSIngresosTIPOOP: TStringField
      DisplayLabel = 'T.Oper.'
      FieldName = 'TIPOOP'
      Origin = 'TIPOOP'
      Size = 25
    end
    object CDSIngresosTIPO: TStringField
      DisplayLabel = 'I/O'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object CDSIngresosID_CPBTE: TIntegerField
      DisplayLabel = 'Id.Cpbte'
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSIngresosSUCURSAL: TIntegerField
      DisplayLabel = 'Cod.Suc'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSIngresosMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Size = 15
      Calculated = True
    end
    object CDSIngresosANIO: TStringField
      DisplayLabel = 'A'#241'o'
      FieldKind = fkCalculated
      FieldName = 'ANIO'
      Calculated = True
    end
    object CDSIngresosCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl.Cpbte'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSIngresosNOM_CPBTE: TStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'NOM_CPBTE'
      Origin = 'NOM_CPBTE'
    end
    object CDSIngresosID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
    end
    object CDSIngresosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
    end
    object CDSIngresosNOMBRE_CAJA: TStringField
      FieldName = 'NOMBRE_CAJA'
      Origin = 'NOMBRE_CAJA'
      Size = 25
    end
    object CDSIngresosNUMERO_CAJA: TIntegerField
      DisplayLabel = 'Nro.caja'
      FieldName = 'NUMERO_CAJA'
      Origin = 'NUMERO_CAJA'
    end
    object CDSIngresosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSPIngresos: TDataSetProvider
    DataSet = QIngresos
    Left = 220
    Top = 331
  end
  object DSIngresos: TDataSource
    DataSet = CDSIngresos
    Left = 396
    Top = 331
  end
  object dxComponentPrinterIngr: TdxComponentPrinter
    CurrentLink = dxComponentPrinterIngrLink1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 781
    Top = 304
    PixelsPerInch = 96
    object dxComponentPrinterIngrLink1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45916.492661412030000000
      OptionsExpanding.AutoExpandColumns = True
      OptionsExpanding.AutoExpandRows = True
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 784
    Top = 184
  end
  object DSPEgresos: TDataSetProvider
    DataSet = QEgresos
    Left = 228
    Top = 411
  end
  object CDSEgresos: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPEgresos'
    OnCalcFields = CDSEgresosCalcFields
    Left = 300
    Top = 411
    object CDSEgresosTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp.Cpbte'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSEgresosCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl.Cpbte'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSEgresosNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSEgresosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSEgresosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSEgresosSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSEgresosTIPOPPAGO: TStringField
      DisplayLabel = 'Tp.Pago'
      FieldName = 'TIPOPPAGO'
      Origin = 'TIPOPPAGO'
      Size = 25
    end
    object CDSEgresosFPAGO: TStringField
      DisplayLabel = 'F.de Pago'
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
      Size = 25
    end
    object CDSEgresosTIPOOP: TStringField
      DisplayLabel = 'Tp.Operc.'
      FieldName = 'TIPOOP'
      Origin = 'TIPOOP'
      Size = 25
    end
    object CDSEgresosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object CDSEgresosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSEgresosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSEgresosNOM_CPBTE: TStringField
      FieldName = 'NOM_CPBTE'
      Origin = 'NOM_CPBTE'
    end
    object CDSEgresosMES: TStringField
      FieldKind = fkCalculated
      FieldName = 'MES'
      Calculated = True
    end
    object CDSEgresosANIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'ANIO'
      Calculated = True
    end
    object CDSEgresosID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
    end
    object CDSEgresosID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
    end
    object CDSEgresosNOMBRE_CAJA: TStringField
      FieldName = 'NOMBRE_CAJA'
      Origin = 'NOMBRE_CAJA'
      Size = 25
    end
    object CDSEgresosNUMERO_CAJA: TIntegerField
      DisplayLabel = 'Nro.Caja'
      FieldName = 'NUMERO_CAJA'
      Origin = 'NUMERO_CAJA'
    end
    object CDSEgresosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSEgresosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSEgresos: TDataSource
    DataSet = CDSEgresos
    Left = 412
    Top = 411
  end
  object DSPMovAplicaCCVta: TDataSetProvider
    DataSet = DMMain_FD.QMovAplicaCCVta
    UpdateMode = upWhereKeyOnly
    Left = 600
    Top = 230
  end
  object CDSMovAplicaCCVta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CPBTE;TIPOCPBTE'
    MasterFields = 'ID_CPBTE;TIPO_CPBTE'
    MasterSource = DSIngresos
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovAplicaCCVta'
    Left = 704
    Top = 232
    object CDSMovAplicaCCVtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCVtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSMovAplicaCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMovAplicaCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovAplicaCCVtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NUMEROCPBTE'
      Required = True
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSMovAplicaCCVtaIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      EditMask = 'a-####-########;0;_'
      Size = 13
    end
    object CDSMovAplicaCCVtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSMovAplicaCCVtaCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovAplicaCCVtaMUESTRAFECHACPBTE: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACPBTE'
      ProviderFlags = []
    end
    object CDSMovAplicaCCVtaMUESTRATOTALFC: TFMTBCDField
      FieldName = 'MUESTRATOTALFC'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = CDSMovAplicaCCVta
    Left = 796
    Top = 235
  end
  object dxComponentPrinterEgre: TdxComponentPrinter
    CurrentLink = dxComponentPrinterEgrecxPivotGridReportLink1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 781
    Top = 360
    PixelsPerInch = 96
    object dxComponentPrinterEgrecxPivotGridReportLink1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid2
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45916.492661412030000000
      OptionsExpanding.AutoExpandColumns = True
      OptionsExpanding.AutoExpandRows = True
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object DSPIngresosConMov: TDataSetProvider
    DataSet = QIngresosConMov
    Left = 220
    Top = 275
  end
  object CDSIngresosConMov: TClientDataSet
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
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIngresosConMov'
    OnCalcFields = CDSIngresosConMovCalcFields
    Left = 292
    Top = 267
    object CDSIngresosConMovFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSIngresosConMovTIPO_CPBTE: TStringField
      DisplayLabel = 'Tp.Cpbte'
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSIngresosConMovCLASE_CPBTE: TStringField
      DisplayLabel = 'Cl.Cpbte'
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSIngresosConMovNRO_CPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_CPBTE'
      Origin = 'NRO_CPBTE'
      Size = 13
    end
    object CDSIngresosConMovDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSIngresosConMovHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIngresosConMovSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSIngresosConMovTIPOPPAGO: TStringField
      DisplayLabel = 'Tp.Pago'
      FieldName = 'TIPOPPAGO'
      Origin = 'TIPOPPAGO'
      Size = 25
    end
    object CDSIngresosConMovFPAGO: TStringField
      DisplayLabel = 'F.de Pago'
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
      Size = 25
    end
    object CDSIngresosConMovTIPOOP: TStringField
      DisplayLabel = 'Tp.Oper.'
      FieldName = 'TIPOOP'
      Origin = 'TIPOOP'
      Size = 25
    end
    object CDSIngresosConMovTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object CDSIngresosConMovID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSIngresosConMovSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSIngresosConMovNOM_CPBTE: TStringField
      DisplayLabel = 'Comprobante'
      FieldName = 'NOM_CPBTE'
      Origin = 'NOM_CPBTE'
    end
    object CDSIngresosConMovID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
    end
    object CDSIngresosConMovID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
    end
    object CDSIngresosConMovNOMBRE_CAJA: TStringField
      DisplayLabel = 'Nombre Caja'
      FieldName = 'NOMBRE_CAJA'
      Origin = 'NOMBRE_CAJA'
      Size = 25
    end
    object CDSIngresosConMovNUMERO_CAJA: TIntegerField
      FieldName = 'NUMERO_CAJA'
      Origin = 'NUMERO_CAJA'
    end
    object CDSIngresosConMovAPLICA_ID_CPBTE: TIntegerField
      DisplayLabel = 'Id Apl'
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      ProviderFlags = []
    end
    object CDSIngresosConMovAPLICA_TIPOCPBTE: TStringField
      DisplayLabel = 'Tp.Apl'
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSIngresosConMovAPLICA_CLASECPBTE: TStringField
      DisplayLabel = 'Cl.Apli'
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSIngresosConMovAPLICA_NROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte Apl-'
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSIngresosConMovMES: TStringField
      DisplayLabel = 'Mes'
      FieldKind = fkCalculated
      FieldName = 'MES'
      Size = 15
      Calculated = True
    end
    object CDSIngresosConMovANIO: TStringField
      DisplayLabel = 'A'#241'o'
      FieldKind = fkCalculated
      FieldName = 'ANIO'
      Size = 4
      Calculated = True
    end
    object CDSIngresosConMovIMPORTE: TFloatField
      DisplayLabel = 'Imp.Aplicacion'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSIngresosConMovNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSIngresosConMov: TDataSource
    DataSet = CDSIngresosConMov
    Left = 380
    Top = 267
  end
  object dxComponentPrinterMov: TdxComponentPrinter
    CurrentLink = dxComponentPrinterMovcxPivotGridReportLink1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 877
    Top = 368
    PixelsPerInch = 96
    object dxComponentPrinterMovcxPivotGridReportLink1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid3
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45916.492661423610000000
      OptionsExpanding.AutoExpandColumns = True
      OptionsExpanding.AutoExpandRows = True
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object QSaldosMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.tipoppago,s.fpago,s.tipoop,s.tipo_cpbte,s.tipo,sum (s.d' +
        'ebe) as debe, sum(s.haber) as haber from sumar_valores_gral (:de' +
        'sde,:hasta) s'
      'where s.tipo = :tipo and ( s.sucursal = :suc or :suc = -1 ) '
      'group by s.tipoppago,s.fpago,s.tipoop,s.tipo_cpbte,s.tipo'
      'order by s.tipoppago,s.fpago,s.tipoop')
    Left = 132
    Top = 203
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
      end
      item
        Position = 3
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QIngresosConMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,'
      ' m.aplica_id_cpbte,'
      ' m.aplica_tipocpbte,'
      ' m.aplica_clasecpbte,'
      ' m.aplica_nrocpbte,'
      ' m.importe from sumar_valores_gral (:desde,:hasta) c'
      
        'left join movaplicaccvta m on m.id_cpbte=c.id_cpbte and c.tipo_c' +
        'pbte='#39'RC'#39
      
        'where c.tipo='#39'I'#39' and ( c.sucursal = :sucursal or :sucursal = -1 ' +
        ')')
    Left = 140
    Top = 267
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
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QIngresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from sumar_valores_gral (:desde,:hasta) c'
      
        'where c.tipo='#39'I'#39' and ( c.sucursal = :sucursal or :sucursal = -1 ' +
        ')')
    Left = 140
    Top = 339
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
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QEgresos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from sumar_valores_gral (:desde,:hasta) c'
      
        'where c.tipo='#39'E'#39' and ( c.sucursal = :sucursal or :sucursal = -1 ' +
        ')')
    Left = 156
    Top = 403
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
      end
      item
        Position = 3
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 845
    Top = 272
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
end
