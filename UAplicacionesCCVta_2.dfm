inherited FormAplicacionesCCVta_2: TFormAplicacionesCCVta_2
  Left = 233
  Top = 109
  Caption = 'Aplicaciones C.C. Clientes'
  ClientHeight = 706
  ClientWidth = 1030
  KeyPreview = False
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 1048
  ExplicitHeight = 747
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1030
    Height = 653
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    OnMouseMove = pnPrincipalMouseMove
    ExplicitWidth = 1030
    ExplicitHeight = 653
    object pcMovimientos: TPageControl
      Left = 0
      Top = 0
      Width = 1030
      Height = 653
      ActivePage = Pag1
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      object Pag1: TTabSheet
        Caption = 'Control Imputaciones'
        DesignSize = (
          1022
          627)
        object spAplicacionAuto: TSpeedButton
          Left = 938
          Top = 497
          Width = 22
          Height = 23
          Action = AplicacioAutomatica
          Anchors = [akLeft, akBottom]
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
            03030303030303030303030303030303030303030303030303FFFFFFFFFFFFFF
            FFFF030303030303030303030000000000000000000303030303030303030303
            F8F8F8F8F8F8F8F8F8FF0303030303030303030300FBFFFBFFFBFFFB00030303
            03FFFFFFFFFFFFFFF8FF03FFFFFFFFFFF8FF0303000000000000000000FFF8F8
            F8F8F8FF00030303F8F8F8F8F8F8F8F8F8FFF8F8F8F8F803F8FF030007FF07FF
            07FF07FF00FBFFFBFFFBFFFB000303F8FF03030303030303F8FF030303FFFFFF
            F8FF0300FF07FF07FF07FF0700FF0707F8F8F8FF000303F8FF03030303030303
            F8FFFFFFF8F8F803F8FF030007FF07FF07FF0704040404FBFFFBFFFB000303F8
            FF030303030303F8F8F8F8FF03FFFFFFF8FF0300FF07FF07FF07FF07FC040407
            F8F8F8FF000303F8FF03030303030303F8F8F8FFF8F8F803F8FF030007FF07FF
            07FF070404FC04FBFFFBFFFB000303F8FF030303030303F8F8F8F8FF030303FF
            F8FF0300FF07FF07FF07040404FF04FFFFFFF8F8000303F8FF0303030303F8F8
            F8FFF8030303F8F8F803030007FF07FF0704040400FBFFFBFFFBF800030303F8
            FF03030303F8F8F8F8FFFFFFFFFFF8F803030300FF07FF070404040700000000
            00000003030303F8FF030303F8F8F803F8F8F8F8F8F8F8030303030007FF07FF
            070407FF07FF000303030303030303F8FF03030303F803030303F8FF03030303
            03030300FF07FF07FF07FF07FF07000303030303030303F8FF03030303030303
            0303F8FF030303030303030007FF07FF07FF07FF07FF000303030303030303F8
            FF0303FFFFFFFFFFFF03F8FF0303030303030300FF07040404040404FF070003
            03030303030303F803FFF8F8F8F8F8F8FFFFF80303030303030303030000FEFC
            FCFCFC04000003030303030303030303F8F803F8F8F8F8F8F8F8030303030303
            030303030303FEFCFCFCFC04030303030303030303030303030303F8F8F8F8F8
            030303030303030303030303030303FEFEFEFE03030303030303030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            0303030303030303030303030303030303030303030303030303}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          ExplicitTop = 433
        end
        object Label1: TLabel
          Left = 667
          Top = 464
          Width = 97
          Height = 13
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Saldo en Cta.Cte'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 400
        end
        object DBText1: TDBText
          Left = 111
          Top = 607
          Width = 17
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRAGRUPO'
          DataSource = DSMovCC
          ExplicitTop = 492
        end
        object DBText2: TDBText
          Left = 134
          Top = 607
          Width = 17
          Height = 17
          Anchors = [akLeft, akBottom]
          DataField = 'MUESTRAGRUPO'
          DataSource = DSACta
          ExplicitTop = 492
        end
        object lbCliente: TJvLabel
          Left = 3
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Cliente'
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
        end
        object lbTitulo: TJvLabel
          Left = 559
          Top = 3
          Width = 193
          Height = 32
          Caption = 'Control de Aplicaciones en '#13#10'Cta.Corriente de Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object RxLabel1: TJvLabel
          Left = 14
          Top = 607
          Width = 76
          Height = 13
          Caption = 'Relacion Grupo'
          Anchors = [akLeft, akBottom]
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          ExplicitTop = 492
        end
        object spStop: TSpeedButton
          Left = 967
          Top = 497
          Width = 22
          Height = 23
          Hint = 'Detener Asignacion'
          Anchors = [akLeft, akBottom]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF521E156B25087D2C057E2D056D2607551F13FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF552117893204BF5C15E19855EF
            BD8AF0BF8CE29D5BC26218551F13541F16FF00FFFF00FFFF00FFFF00FFFF00FF
            6C290EAF4704EBB179FFFEF8FEF8F4F2DAC4F2D9C2FCF6F0FFFFFCEEBA87B64E
            07602311FF00FFFF00FFFF00FF732D0DB04602F4D0ABFFFEFED78E4FC05409BA
            4600BA4600BF5207D48644FCF8F4F8DDBDB64D05541F16FF00FFFF00FF732D0D
            E6AB72FFFFFFCF762CB73E00B84300BA4400BA4400B84200B53C00C96A1EFCFA
            F6EFBC88551F13FF00FF893406C05C11FFFCFAE1A36AC04B00FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFB63C00D58946FFFFFFC16016551F139A3B02DD9554
            FFFFFFD37628CC600DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB84100C053
            05FCF8F3E29D5A6D2607A94403EBBB8AFBF0E7D87A2BD77422FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFBA4400BB4600F2DAC2EFC08E7D2C04B04A06EEBF90
            FCF4EBE28A3EE18435FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA4400BB47
            00F3DEC7EFBD8A7B2C04B04905E9AA6EFFFFFFEDA462EA9346FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFB84200C15506FEFBF8E097526B2408AD4502DD893F
            FFFCF8FAD7B4F4A55CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB73E00D995
            56FFFFFEBD5A10521F16FF00FFB24701F8CEA5FFFFFFFED1A6F4A55BEA9346E1
            8435D77322CC600EC04B00D07931FFFFFFEAAF73521F16FF00FFFF00FFB24701
            E0873BFEE5CBFFFFFFFAD5B2EDA562E28A3FD97B2CD4782AE1A46CFFFFFFF3CC
            A4AC4402501F18FF00FFFF00FFFF00FFB64C04DE873BF8CEA3FFFAF3FFFFFFFE
            F6EEFCF3EAFFFFFFFEF7EEE6A56AAC44035A2214FF00FFFF00FFFF00FFFF00FF
            FF00FFAF4501AF4501DC8840E9A76CEEBB89EBB581DC914DBD590F752D0C5D23
            15FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA34103A54507A6
            46089E40068B3505752D0CFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = spStopClick
          ExplicitTop = 433
        end
        object DBText3: TDBText
          Left = 215
          Top = 608
          Width = 182
          Height = 15
          Anchors = [akLeft, akBottom]
          DataField = 'NROREMITOS'
          DataSource = DSMovCC
          ExplicitTop = 552
        end
        object JvLabel1: TJvLabel
          Left = 165
          Top = 607
          Width = 47
          Height = 13
          Caption = 'Nro.Rtos:'
          Anchors = [akLeft, akBottom]
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          ExplicitTop = 551
        end
        object edMuestraCliente: TEdit
          Left = 83
          Top = 24
          Width = 257
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 0
        end
        object chbSaldoCero: TCheckBox
          Left = 352
          Top = 23
          Width = 125
          Height = 17
          Caption = 'Muestra con Saldo 0'
          TabOrder = 1
          OnClick = chbSaldoCeroClick
        end
        object pnAplicacionGral: TPanel
          Left = 665
          Top = 510
          Width = 249
          Height = 59
          Anchors = [akLeft, akBottom]
          TabOrder = 2
          OnDblClick = pnAplicacionGralDblClick
          object lbMensajeAutomatico: TLabel
            Left = 109
            Top = 39
            Width = 101
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbMensajeAutomatico'
          end
          object spAplicacionGral: TSpeedButton
            Left = 220
            Top = 15
            Width = 24
            Height = 25
            Action = AplicacionGral
            Glyph.Data = {
              06020000424D0602000000000000760000002800000028000000140000000100
              0400000000009001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333333333333333333333333333333333333333333FFFFFFFFFFFFFF
              FFFF370000000000000000733777777777777777777F30911F11111111111103
              37F7737777777777777F3099F0F999999999910337F337FF33333333377F309F
              000F99999999910337F3777FF3333333377F30F00F00F9999999910337F77377
              FF333333377F309FF9F00F999999910337F333377FF33333377F30999F9F00F9
              9999910337FFF3F3773FFFFFF77F3011F0F1FF1111111103377737F733777777
              777F309F000F99999999910337F3777FF3FFFFFFF77F30F00F00F11111111103
              37F77377F7777777777F309FF9F00F999999910337FFFFF77FF3FFFFF77F3011
              111F00F1111111033777777377377777777F30999999FF999999990337FFFFFF
              FFFFFFFFFF7F3700000000000000007337777777777777777773333330033333
              300333333333377FFFFFF77F3333333337000000007333333333377777777773
              3333333333333333333333333333333333333333333333333333333333333333
              33333333333333333333}
            NumGlyphs = 2
          end
          object Label2: TLabel
            Left = 6
            Top = 4
            Width = 109
            Height = 13
            Caption = 'Re Asignacion General'
          end
          object pbAplicacionGral: TProgressBar
            Left = 6
            Top = 20
            Width = 209
            Height = 16
            TabOrder = 0
          end
        end
        object DBEdit1: TDBEdit
          Left = 667
          Top = 483
          Width = 151
          Height = 21
          Anchors = [akLeft, akRight, akBottom]
          Color = 16776176
          DataField = 'SALDO'
          DataSource = DSSAldoCtaCte
          Enabled = False
          TabOrder = 3
        end
        object edCodigo: TJvComboEdit
          Left = 3
          Top = 24
          Width = 73
          Height = 21
          ButtonHint = 'Activa Busqueda'
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          TabOrder = 4
          Text = ''
          OnButtonClick = BuscarClienteExecute
          OnKeyPress = edCodigoKeyPress
        end
        object ceSaldoACta: TJvValidateEdit
          Left = 867
          Top = 463
          Width = 128
          Height = 21
          Anchors = [akLeft, akRight, akBottom]
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisabledTextColor = clBlack
          DisplayFormat = dfFloat
          DecimalPlaces = 2
          Enabled = False
          TabOrder = 5
        end
        object chFiltrar: TCheckBox
          Left = 937
          Top = 531
          Width = 87
          Height = 16
          Anchors = [akLeft, akRight, akBottom]
          Caption = 'Filtrar'
          TabOrder = 6
          OnClick = chFiltrarClick
        end
        object cbbTipo: TComboBox
          Left = 937
          Top = 554
          Width = 52
          Height = 21
          Anchors = [akLeft, akRight, akBottom]
          TabOrder = 7
          Text = 'RC'
          OnChange = chFiltrarClick
          Items.Strings = (
            'RC'
            'NC'
            'AJ')
        end
        object chSumar: TCheckBox
          Left = 570
          Top = 607
          Width = 52
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Sumar'
          TabOrder = 8
        end
        object dbcGrupo: TJvDBLookupCombo
          Left = 665
          Top = 576
          Width = 282
          Height = 20
          DisplayAllFields = True
          Color = clWhite
          DisplayEmpty = 'Grupo de Cpbtes.'
          EmptyValue = '-1'
          FieldsDelimiter = ';'
          Anchors = [akLeft, akRight, akBottom]
          LookupField = 'ID'
          LookupDisplay = 'ID;DETALLE'
          LookupSource = DSFiltroCab
          TabOrder = 9
          OnClick = dbcGrupoClick
        end
        object chTipoVta: TCheckBox
          Left = 423
          Top = 607
          Width = 141
          Height = 17
          Action = FiltrarTipoServicio
          Anchors = [akLeft, akBottom]
          TabOrder = 10
        end
        object chIngoraGrupo: TCheckBox
          Left = 803
          Top = 603
          Width = 174
          Height = 16
          Anchors = [akLeft, akRight, akBottom]
          BiDiMode = bdRightToLeft
          Caption = 'Ignorar Control de Grupo'
          ParentBiDiMode = False
          TabOrder = 11
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 56
          Width = 649
          Height = 548
          Anchors = [akLeft, akTop, akBottom]
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 12
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnDblClick = VerComprobanteExecute
            OnDragDrop = cxGrid1DBTableView1DragDrop
            OnDragOver = cxGrid1DBTableView1DragOver
            OnKeyDown = cxGrid1DBTableView1KeyDown
            OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
            DataController.DataSource = DSMovCC
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'DEBE'
                Column = cxGrid1DBTableView1DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'SALDO'
                Column = cxGrid1DBTableView1SALDO
              end>
            DataController.OnDetailExpanding = cxGrid1DBTableView1DataControllerDetailExpanding
            OptionsData.Deleting = False
            OptionsSelection.CellSelect = False
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 20
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 31
            end
            object cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAVTA'
              HeaderAlignmentHorz = taCenter
              Width = 76
            end
            object cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAVTO'
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxGrid1DBTableView1NRO_CUOTA: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_CUOTA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Width = 130
            end
            object cxGrid1DBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              HeaderAlignmentHorz = taCenter
              Width = 104
            end
            object cxGrid1DBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              Width = 50
            end
            object cxGrid1DBTableView1SALDO: TcxGridDBColumn
              DataBinding.FieldName = 'SALDO'
              HeaderAlignmentHorz = taCenter
              Width = 93
            end
            object cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOVCCVTA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRAGRUPO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAGRUPO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRATIPOVTA: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRATIPOVTA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1MUESTRATOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRATOTAL'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1DBTableView2: TcxGridDBTableView
            PopupMenu = PopupMenu3
            OnDblClick = cxGrid1DBTableView2DblClick
            DataController.DataSource = DSBase
            DataController.DetailKeyFieldNames = 'ID_MOVCCVTA'
            DataController.KeyFieldNames = 'ID_MOV'
            DataController.MasterKeyFieldNames = 'ID_MOVCCVTA'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'IMPORTE'
                Column = cxGrid1DBTableView2IMPORTE
              end>
            OptionsView.NoDataToDisplayInfoText = 'Sin Datos'
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle1
            object cxGrid1DBTableView2FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2NUMEROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NUMEROCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2ID_MOVCCVTA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOVCCVTA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLIENTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2ID_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2APLICA_ID_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_ID_CPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2ID_MOV: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOV'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2APLICA_TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_TIPOCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2APLICA_CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2APLICA_NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_NROCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2CONCILIADO: TcxGridDBColumn
              DataBinding.FieldName = 'CONCILIADO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
            object cxGrid1DBTableView2IDMOVACTA: TcxGridDBColumn
              DataBinding.FieldName = 'IDMOVACTA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Grouping = False
              Options.Moving = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
            object cxGrid1Level2: TcxGridLevel
              GridView = cxGrid1DBTableView2
            end
          end
        end
        object dbgACta: TJvDBGrid
          Left = 658
          Top = 56
          Width = 361
          Height = 401
          Anchors = [akLeft, akTop, akBottom]
          DataSource = DSACta
          DragMode = dmAutomatic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 13
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = VerComprobante2Execute
          OnEndDrag = dbgACtaEndDrag
          OnMouseMove = dbgACtaMouseMove
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOCPBTE'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end>
        end
      end
      object pag2: TTabSheet
        Caption = 'Detalle x Comprobante'
        ImageIndex = 1
        object cxGridFC: TcxGrid
          Left = 0
          Top = 25
          Width = 517
          Height = 567
          Align = alLeft
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGridFCDBTableView1: TcxGridDBTableView
            DataController.DataSource = DSFacDet
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GroupByBox = False
            object cxGridFCDBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridFCDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridFCDBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridFCDBTableView1UNITARIO_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_TOTAL'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridFCDBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridFCDBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridFCDBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridFCDBTableView1CABECERA: TcxGridDBColumn
              Caption = 'Fc'
              DataBinding.FieldName = 'CABECERA'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridFCDBTableView1CONCATENATION: TcxGridDBColumn
              Caption = '-'
              DataBinding.FieldName = 'CABECERA'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridFCLevel1: TcxGridLevel
            GridView = cxGridFCDBTableView1
          end
        end
        object cxGridNC: TcxGrid
          Left = 517
          Top = 25
          Width = 505
          Height = 567
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGridNCDBTableView1: TcxGridDBTableView
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SyncMode = False
            DataController.DataSource = DSNcDet
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.CellMultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.GroupByBox = False
            object cxGridNCDBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Width = 59
            end
            object cxGridNCDBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridNCDBTableView1CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridNCDBTableView1UNITARIO_TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'UNITARIO_TOTAL'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridNCDBTableView1CABECERA: TcxGridDBColumn
              Caption = 'Nc'
              DataBinding.FieldName = 'CABECERA'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridNCLevel1: TcxGridLevel
            GridView = cxGridNCDBTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 592
          Width = 1022
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          object BitBtn1: TBitBtn
            Left = 896
            Top = 6
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 0
            OnClick = BitBtn1Click
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 3
          object Label3: TLabel
            Left = 185
            Top = 2
            Width = 72
            Height = 20
            Caption = 'Facturas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 712
            Top = 2
            Width = 136
            Height = 20
            Caption = 'Notas de Credito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 653
    Width = 1030
    Align = alBottom
    ExplicitTop = 653
    ExplicitWidth = 1030
    inherited btNuevo: TBitBtn
      Width = 17
      Visible = False
      ExplicitWidth = 17
    end
    inherited btCancelar: TBitBtn
      Left = 94
      ExplicitLeft = 94
    end
    inherited btModificar: TBitBtn
      Left = 169
      Width = 16
      Visible = False
      ExplicitLeft = 169
      ExplicitWidth = 16
    end
    inherited Pr: TSpeedButton
      Left = 185
      ExplicitLeft = 185
    end
    inherited btBuscar: TBitBtn
      Left = 200
      Width = 21
      Visible = False
      ExplicitLeft = 200
      ExplicitWidth = 21
    end
    inherited Ne: TSpeedButton
      Left = 221
      ExplicitLeft = 221
    end
    inherited btBorrar: TBitBtn
      Left = 236
      Visible = False
      ExplicitLeft = 236
    end
    inherited btSalir: TBitBtn
      Left = 311
      TabOrder = 10
      ExplicitLeft = 311
    end
    object ToolButton1: TToolButton
      Left = 386
      Top = 0
      Width = 15
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn2: TBitBtn
      Left = 401
      Top = 0
      Width = 75
      Height = 29
      Action = VerCCte
      Caption = '&Ver C.Cte'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        0000001C1F1C383F38383F38383F38383F38383F38FF00FFFF00FFFF00FF0000
        002F2F2F707F70707F70FF00FF0000000000A700006C383F38383F38383F3838
        3F38383F38FF00FF0000005F5F5FCFCFCF5F5F5F383F38FF00FFFF00FF000037
        0000DF0000A3000024FF00FFFF00FFFF00FF0000005F5F5FCFCFCFE0E0E0A8A8
        A85F5F5FFF00FFFF00FF0000000000A74C4FEF0000CB00006C0000000000005F
        5F5FCBCBCBDBDBDBE0E0E0A8A8A8E0E0E05F5F5FFF00FFFF00FF0000373434E7
        7C87FF0000A70000A3000024CFCFCFE0E0E0707070707070E0E0E0A8A8A8A8A8
        A85F5F5FFF00FFFF00FF181B3F606FFF4C4F7F0000000000CB00006C70707070
        7070E0E0E0707070E0E0E0E0E0E0A8A8A85F5F5FFF00FFFF00FFFF00FF000000
        00000000000000006F0000A338385C707070707070E0E0E0E0E0E0A8A8A8E0E0
        E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF0000007F7F7F0000CB00006CA8
        A8A8707070707070E0E0E0A8A8A8A8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
        FF00FF000000EFEFEF00006F3434BF181B3FE0E0E0E0E0E0E0E0E0EFEFEFDFDF
        DF5F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF3838387C87FF34
        3B5BA8A8A8EFEFEFDFDFDFCFCFCFA8A8A85F5F5FFF00FFFF00FFFF00FFFF00FF
        FF00FF000000EFEFEF707070707070EFEFEFDFDFDFCFCFCFE0E0E0A8A8A8E0E0
        E05F5F5FFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEFEFEFEFDFDFDFCF
        CFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FF
        FF00FF000000DFDFDFCFCFCF707070707070E0E0E0EFEFEF7F7F7F000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000EFEFEF707070E0E0E0EF
        EFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000000EFEFEFEFEFEF7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF000000FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 6
    end
    object btExportar: TBitBtn
      Left = 476
      Top = 0
      Width = 75
      Height = 29
      Action = Exportar
      Caption = '&Exportar'
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
      TabOrder = 7
    end
    object btImprimir: TBitBtn
      Left = 551
      Top = 0
      Width = 75
      Height = 29
      Action = Imprimir
      Caption = '&Imprimir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 8
    end
    object ToolButton2: TToolButton
      Left = 626
      Top = 0
      Width = 15
      Caption = 'ToolButton2'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object BitBtn3: TBitBtn
      Left = 641
      Top = 0
      Width = 90
      Height = 29
      Action = ImprimirDetalle
      Caption = 'Imp.&Detalle'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
        6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
        6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
        B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
        3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
        CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
        090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
        DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
        FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
        C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
        92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
        FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
        CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
        B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
        D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
        E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
        8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 9
    end
    object spRearnaCtaCte: TSpeedButton
      Left = 731
      Top = 0
      Width = 25
      Height = 29
      Action = ReArmarCtaCte
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00B48D
        8A00B28A8800B1888500B0878400AE858200AE848100AB817F00AA807D00A97F
        7B00A97D7A00A77B7800A77B7800A6797600FF00FF00FF00FF00FF00FF00B58F
        8C00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
        FD00FEFEFD00FEFEFD00FEFEFD00A77B7800FF00FF00FF00FF00FF00FF00B792
        8E00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
        FB00FEFCFB00FEFCFB00FEFCFB00A97D7900FF00FF00FF00FF00FF00FF00B994
        9200FEFAF600FEFAF600FEFAF600FEFAF600FEFAF600018A0200018A0200CBE4
        C500FEFAF600FEFAF600FEFAF600AA7F7C00FF00FF00FF00FF00FF00FF00BB97
        9300FEF9F400FEF9F400FEF9F4000B8F0B00CBE3C400CBE3C400FEF9F400018A
        0200CBE3C400FEF9F400FEF9F400AA807D00FF00FF00FF00FF00FF00FF00BD99
        9600FEF6EF00FEF6EF00FEF6EF00018A0200018A0200FEF6EF00FEF6EF00FEF6
        EF00018A0200FEF6EF00FEF6EF00AD838000FF00FF00FF00FF00FF00FF00BD9B
        9800FEF5ED00FEF5ED00FEF5ED00018A0200018A0200018A0200FEF5ED00FEF5
        ED00FEF5ED00FEF5ED00FEF5EC00AD848100FF00FF00FF00FF00FF00FF00C09E
        9B00FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800018A0200018A0200018A
        0200018A0200FDF2E700FDF2E700AF878400FF00FF00FF00FF00FF00FF00C1A0
        9C00FFF2E600FFF2E600FFF2E600FFF2E600FFF2E600FFF2E600018A0200018A
        0200018A0200FEF1E500FEF0E400B1888600FF00FF00FF00FF00FF00FF00C4A3
        9F00FFEFE100FFEFE100FFEFE100018A0200CCDBB400CCDBB400018A02000B8F
        0B00018A0200F8E8D800EFE0CE00B38C8900FF00FF00FF00FF00FF00FF00C4A4
        A100FFEEDF00FFEEDF00FFEEDF00CCDAB300018A0200018A0200CCDAB200FEED
        DE00018A0200EEDECB00E4D4BE00B58E8B00FF00FF00FF00FF00FF00FF00C6A7
        A300FFECDA00FFECDA00FFECDA00FFECDA00FFECDA00FEEBD900FEEBD900F6E3
        CF00EDDAC400D7C6AB00D9CBB400B38C8900FF00FF00FF00FF00FF00FF00C7A8
        A400FFEAD800FFEAD800FFEAD800FFEAD800FFEAD700FEE9D700FCE7D400F7EE
        E400FEFEFE00FEF8F200F2E0D600FF00FF00FF00FF00FF00FF00FF00FF00C8AA
        A700FFE8D300FFE8D300FFE8D300FEE7D200FEE7D200F3DDC600EAD5BB00FAF6
        F100FEF6EE00B38C8900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C9AB
        A800FFE7D100FFE7D100FFE6D000FEE6CF00FAE2CB00E9D3B800DEC9AC00FAF0
        E700D4B8B100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CAAC
        A900C4A4A100C4A4A100C4A4A100C4A4A100C4A4A100C4A4A100C4A4A100C4A4
        A100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object spArmarAplicaciones: TSpeedButton
      Left = 756
      Top = 0
      Width = 25
      Height = 29
      Caption = '<>'
      OnClick = spArmarAplicacionesClick
    end
  end
  inherited Panel1: TPanel
    Top = 683
    Width = 1030
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    OnDblClick = RpDetalleExecute
    ExplicitTop = 683
    ExplicitWidth = 1030
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
      Visible = False
    end
    object lbMensaje: TLabel [1]
      Left = 379
      Top = 5
      Width = 48
      Height = 13
      Caption = 'lbMensaje'
    end
    inherited sbEstado: TStatusBar
      Width = 941
      Panels = <
        item
          Width = 520
        end
        item
          Alignment = taRightJustify
          Text = '.'
          Width = 85
        end
        item
          Alignment = taRightJustify
          Text = '..'
          Width = 85
        end>
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 941
    end
  end
  inherited ActionList1: TActionList
    Left = 632
    Top = 168
    inherited Buscar: TAction
      Enabled = False
    end
    inherited Prev: TAction
      Visible = False
    end
    inherited Next: TAction
      Visible = False
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      ShortCut = 16397
      OnExecute = BuscarClienteExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object Exportar: TAction
      Caption = '&Exportar'
      OnExecute = ExportarExecute
    end
    object VerCCte: TAction
      Caption = '&Ver C.Cte'
      OnExecute = VerCCteExecute
    end
    object ImprimirDetalle: TAction
      Caption = 'Imp.&Detalle'
      OnExecute = ImprimirDetalleExecute
    end
    object VerComprobante: TAction
      Caption = 'Ver Comprobante'
      OnExecute = VerComprobanteExecute
    end
    object RpDetalle: TAction
      Caption = 'RpDetalle'
      OnExecute = RpDetalleExecute
    end
    object RpMovCC: TAction
      Caption = 'RpMovCC'
    end
    object VerComprobante2: TAction
      Caption = '&Ver Comprobante'
      OnExecute = VerComprobante2Execute
    end
    object BorrarUnaAplicacion: TAction
      Caption = 'Borra la Aplicaci'#243'n'
      OnExecute = BorrarUnaAplicacionExecute
    end
    object ActualizaMovACta: TAction
      Caption = 'Actualiza Mov.A.Cta.(Importe)'
      OnExecute = ActualizaMovACtaExecute
    end
    object AplicacioAutomatica: TAction
      OnExecute = AplicacioAutomaticaExecute
    end
    object AplicacionGral: TAction
      OnExecute = AplicacionGralExecute
    end
    object ConciliarTodos: TAction
      Caption = 'Conciliar Todos los Mov.'
      OnExecute = ConciliarTodosExecute
    end
    object ConciliarUnMov: TAction
      Caption = 'Conciliar Mov'
      OnExecute = ConciliarUnMovExecute
    end
    object ReArmarCtaCte: TAction
      Hint = 
        'Esta Rearma la Cta.Cte sin tener en cuenta los movimientos conci' +
        'liados'
      ImageIndex = 10
      OnExecute = ReArmarCtaCteExecute
    end
    object DesconciliarUno: TAction
      Caption = 'Desconciliar Uno'
      OnExecute = DesconciliarUnoExecute
    end
    object DesconciliarTodos: TAction
      Caption = 'Desconciliar Todos'
      OnExecute = DesconciliarTodosExecute
    end
    object BackUpAplicaciones: TAction
      Caption = 'BackUp Aplicaciones'
      OnExecute = BackUpAplicacionesExecute
    end
    object AplicacionGeneral: TAction
      Caption = 'Aplicacion General de Todas las Ctas.'
      OnExecute = AplicacionGeneralExecute
    end
    object CorregirMovCtaCte: TAction
      Caption = 'Corregir Saldo Mov.Cta.Cte'
      OnExecute = CorregirMovCtaCteExecute
    end
    object FiltrarTipoServicio: TAction
      Caption = 'Filtrar  Vta. de Servicios'
      OnExecute = FiltrarTipoServicioExecute
    end
  end
  inherited DSBase: TDataSource
    AutoEdit = True
    DataSet = CDSAplicaciones
    Left = 280
    Top = 152
  end
  inherited ImageList1: TImageList
    Left = 736
    Top = 48
    Bitmap = {
      494C01010B004400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      00000000000000000000000000000000000000000000B48D8A00B28A8800B188
      8500B0878400AE858200AE848100AB817F00AA807D00A97F7B00A97D7A00A77B
      7800A77B7800A679760000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A0000000000000000000000000000000000B58F8C00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00A77B780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A0000000000B7928E00FEFCFB00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00A97D790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A000000000000000000B9949200FEFAF600FEFA
      F600FEFAF600FEFAF600FEFAF600018A0200018A0200CBE4C500FEFAF600FEFA
      F600FEFAF600AA7F7C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A007673730000000000BB979300FEF9F400FEF9
      F400FEF9F4000B8F0B00CBE3C400CBE3C400FEF9F400018A0200CBE3C400FEF9
      F400FEF9F400AA807D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A7878007573730000000000BD999600FEF6EF00FEF6
      EF00FEF6EF00018A0200018A0200FEF6EF00FEF6EF00FEF6EF00018A0200FEF6
      EF00FEF6EF00AD83800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C69690000000000BD9B9800FEF5ED00FEF5
      ED00FEF5ED00018A0200018A0200018A0200FEF5ED00FEF5ED00FEF5ED00FEF5
      ED00FEF5EC00AD84810000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A0000000000C09E9B00FEF3E800FEF3
      E800FEF3E800FEF3E800FEF3E800018A0200018A0200018A0200018A0200FDF2
      E700FDF2E700AF87840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A000000000000000000C1A09C00FFF2E600FFF2
      E600FFF2E600FFF2E600FFF2E600FFF2E600018A0200018A0200018A0200FEF1
      E500FEF0E400B188860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A00000000000000000000000000C4A39F00FFEFE100FFEF
      E100FFEFE100018A0200CCDBB400CCDBB400018A02000B8F0B00018A0200F8E8
      D800EFE0CE00B38C890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      00000000000000000000000000000000000000000000C4A4A100FFEEDF00FFEE
      DF00FFEEDF00CCDAB300018A0200018A0200CCDAB200FEEDDE00018A0200EEDE
      CB00E4D4BE00B58E8B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      00000000000000000000000000000000000000000000C6A7A300FFECDA00FFEC
      DA00FFECDA00FFECDA00FFECDA00FEEBD900FEEBD900F6E3CF00EDDAC400D7C6
      AB00D9CBB400B38C890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      00000000000000000000000000000000000000000000C7A8A400FFEAD800FFEA
      D800FFEAD800FFEAD800FFEAD700FEE9D700FCE7D400F7EEE400FEFEFE00FEF8
      F200F2E0D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      00000000000000000000000000000000000000000000C8AAA700FFE8D300FFE8
      D300FFE8D300FEE7D200FEE7D200F3DDC600EAD5BB00FAF6F100FEF6EE00B38C
      8900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      00000000000000000000000000000000000000000000C9ABA800FFE7D100FFE7
      D100FFE6D000FEE6CF00FAE2CB00E9D3B800DEC9AC00FAF0E700D4B8B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      00000000000000000000000000000000000000000000CAACA900C4A4A100C4A4
      A100C4A4A100C4A4A100C4A4A100C4A4A100C4A4A100C4A4A100000000000000
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
      000000000000000000000000FFFFFF00F81FF33F80030000E007E00780030000
      C003C00080030000800180018003000080010000800300000000000080030000
      000000008003000000008000800300000000E001800300000000F00380030000
      0000F01F800300008001E03F800300008001E03F80070000C003C03F800F0000
      E007C07F801F0000F81FF8FF803F0000FFFFF81FF81FF81FC007E007E007E007
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
    Top = 192
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 8
    Top = 608
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 528
    Top = 192
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 440
    Top = 216
  end
  inherited QBrowse2: TFDQuery
    Left = 80
    Top = 664
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 56
    Top = 640
  end
  object PopupMenu1: TPopupMenu
    Left = 560
    Top = 184
    object VerComprpbante1: TMenuItem
      Action = VerComprobante
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object LimpiaraCero1: TMenuItem
      Caption = 'Limpiar a Cero'
      OnClick = LimpiaraCero1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object AplicacionGeneral2: TMenuItem
      Action = AplicacionGeneral
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object CorregirSaldoMovCtaCte1: TMenuItem
      Action = CorregirMovCtaCte
    end
    object AutoContraer: TMenuItem
      Caption = 'Auto Contraer Movimientos'
      Checked = True
      OnClick = AutoContraerClick
    end
    object NoRefrescarActivar: TMenuItem
      Caption = 'No Refrescar al Activar Pantalla'
      OnClick = NoRefrescarActivarClick
    end
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 283
    Top = 104
  end
  object DSACta: TDataSource
    DataSet = CDSACta
    Left = 272
    Top = 208
  end
  object DSPACta: TDataSetProvider
    DataSet = QACta
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 232
  end
  object DSPAplicaciones: TDataSetProvider
    DataSet = QAplicaciones
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 152
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 120
  end
  object IBGId_AplicacionCCVta: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_MOVAPLICACCCVTA'
    SystemGenerators = False
    Left = 367
    Top = 156
  end
  object frMovCC: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.734135555550000000
    ReportOptions.LastChange = 39638.734135555550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 312
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBAplicaciones: TfrxDBDataset
    UserName = 'frDBAplicaciones'
    CloseDataSource = False
    DataSet = CDSAplicaciones
    BCDToCurrency = False
    DataSetOptions = []
    Left = 760
    Top = 376
    FieldDefs = <
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
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
        FieldName = 'NUMEROCPBTE'
        FieldAlias = 'NUMEROCPBTE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_MOVCCVTA'
        FieldAlias = 'ID_MOVCCVTA'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'APLICA_ID_CPBTE'
        FieldAlias = 'APLICA_ID_CPBTE'
      end
      item
        FieldName = 'ID_MOV'
        FieldAlias = 'ID_MOV'
      end
      item
        FieldName = 'APLICA_TIPOCPBTE'
        FieldAlias = 'APLICA_TIPOCPBTE'
      end
      item
        FieldName = 'APLICA_CLASECPBTE'
        FieldAlias = 'APLICA_CLASECPBTE'
      end
      item
        FieldName = 'APLICA_NROCPBTE'
        FieldAlias = 'APLICA_NROCPBTE'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CONCILIADO'
        FieldAlias = 'CONCILIADO'
      end
      item
        FieldName = 'IDMOVACTA'
        FieldAlias = 'IDMOVACTA'
      end>
  end
  object frDBMovCC: TfrxDBDataset
    UserName = 'frDBMovCC'
    CloseDataSource = False
    DataSet = CDSMovCC
    BCDToCurrency = False
    DataSetOptions = []
    Left = 800
    Top = 344
    FieldDefs = <
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'NRO_CUOTA'
        FieldAlias = 'NRO_CUOTA'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'SALDO'
        FieldAlias = 'SALDO'
      end
      item
        FieldName = 'ID_MOVCCVTA'
        FieldAlias = 'ID_MOVCCVTA'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'MUESTRAGRUPO'
        FieldAlias = 'MUESTRAGRUPO'
      end
      item
        FieldName = 'MUESTRATIPOVTA'
        FieldAlias = 'MUESTRATIPOVTA'
      end
      item
        FieldName = 'MUESTRATOTAL'
        FieldAlias = 'MUESTRATOTAL'
      end
      item
        FieldName = 'FECHAVTA'
        FieldAlias = 'FECHAVTA'
      end
      item
        FieldName = 'FECHAVTO'
        FieldAlias = 'FECHAVTO'
      end
      item
        FieldName = 'NROREMITOS'
        FieldAlias = 'NROREMITOS'
      end>
  end
  object frDBACta: TfrxDBDataset
    UserName = 'frDBACta'
    CloseDataSource = False
    DataSet = CDSACta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 832
    Top = 392
    FieldDefs = <
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_MOV'
        FieldAlias = 'ID_MOV'
      end
      item
        FieldName = 'CLIENTE'
        FieldAlias = 'CLIENTE'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'NUMEROCPBTE'
        FieldAlias = 'NUMEROCPBTE'
      end
      item
        FieldName = 'MUESTRAGRUPO'
        FieldAlias = 'MUESTRAGRUPO'
      end>
  end
  object PopupMenu2: TPopupMenu
    Left = 80
    Top = 304
    object VerComprobante21: TMenuItem
      Action = VerComprobante2
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ActualizaMovACtaImporte1: TMenuItem
      Action = ActualizaMovACta
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object AplicacionGeneral3: TMenuItem
      Action = AplicacionGeneral
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 136
    Top = 304
    object BorraAplicacion1: TMenuItem
      Action = BorrarUnaAplicacion
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ConciliarUnMov1: TMenuItem
      Action = ConciliarUnMov
    end
    object ConciliarTodoslosMov1: TMenuItem
      Action = ConciliarTodos
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ConciliarMov1: TMenuItem
      Action = DesconciliarUno
    end
    object DesconciliarTodos1: TMenuItem
      Action = DesconciliarTodos
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object BackUpAplicaciones1: TMenuItem
      Action = BackUpAplicaciones
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object AplicacionGeneral1: TMenuItem
      Action = AplicacionGeneral
    end
  end
  object DSSAldoCtaCte: TDataSource
    DataSet = QSaldoCtaCte
    Left = 328
    Top = 488
  end
  object frDBDSEmpresa: TfrxDBDataset
    UserName = 'frDBDSEmpresa'
    CloseDataSource = False
    DataSet = CDSEmpresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 888
    Top = 392
    FieldDefs = <
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'ACTIVIDAD'
        FieldAlias = 'ACTIVIDAD'
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
        FieldName = 'CORREO'
        FieldAlias = 'CORREO'
      end
      item
        FieldName = 'TELEFONO1'
        FieldAlias = 'TELEFONO1'
      end
      item
        FieldName = 'TELEFONO2'
        FieldAlias = 'TELEFONO2'
      end
      item
        FieldName = 'CUIT'
        FieldAlias = 'CUIT'
      end
      item
        FieldName = 'CONDICIONIVA'
        FieldAlias = 'CONDICIONIVA'
      end
      item
        FieldName = 'NRO_AGTE_RET_INGBRUTOS'
        FieldAlias = 'NRO_AGTE_RET_INGBRUTOS'
      end
      item
        FieldName = 'LOGO'
        FieldAlias = 'LOGO'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'NRO_AGTE_RET_GANANCIA'
        FieldAlias = 'NRO_AGTE_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_GANANCIA'
        FieldAlias = 'AG_RET_GANANCIA'
      end
      item
        FieldName = 'AG_RET_ING_BRUTOS'
        FieldAlias = 'AG_RET_ING_BRUTOS'
      end
      item
        FieldName = 'AG_PERCEPCION_ING_BRUTOS'
        FieldAlias = 'AG_PERCEPCION_ING_BRUTOS'
      end
      item
        FieldName = 'TASA_PERCEPCION_IB'
        FieldAlias = 'TASA_PERCEPCION_IB'
      end
      item
        FieldName = 'MINO_IMP_PERCEP_IB'
        FieldAlias = 'MINO_IMP_PERCEP_IB'
      end
      item
        FieldName = 'PROVINCIA'
        FieldAlias = 'PROVINCIA'
      end>
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain_FD.QClientes
    Options = [poAllowCommandText]
    Left = 152
    Top = 72
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    Left = 233
    Top = 67
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object CDSClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
  end
  object frDBClientes: TfrxDBDataset
    UserName = 'frDBClientes'
    CloseDataSource = False
    DataSet = CDSClientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 780
    Top = 515
    FieldDefs = <
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'RAZON_SOCIAL'
        FieldAlias = 'RAZON_SOCIAL'
      end
      item
        FieldName = 'DIRECCION_PARTICULAR'
        FieldAlias = 'DIRECCION_PARTICULAR'
      end
      item
        FieldName = 'DIRECCION_COMERCIAL'
        FieldAlias = 'DIRECCION_COMERCIAL'
      end
      item
        FieldName = 'TELEFONO_PARTICULAR'
        FieldAlias = 'TELEFONO_PARTICULAR'
      end
      item
        FieldName = 'TELEFONO_COMERCIAL_1'
        FieldAlias = 'TELEFONO_COMERCIAL_1'
      end
      item
        FieldName = 'TELEFONO_COMERCIAL_2'
        FieldAlias = 'TELEFONO_COMERCIAL_2'
      end
      item
        FieldName = 'TELEFONO_CELULAR'
        FieldAlias = 'TELEFONO_CELULAR'
      end
      item
        FieldName = 'ID_COD_POSTAL'
        FieldAlias = 'ID_COD_POSTAL'
      end
      item
        FieldName = 'CPOSTAL'
        FieldAlias = 'CPOSTAL'
      end
      item
        FieldName = 'LOCALIDAD'
        FieldAlias = 'LOCALIDAD'
      end
      item
        FieldName = 'SALDOINICIAL'
        FieldAlias = 'SALDOINICIAL'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'FECHAULTIMACOMPRA'
        FieldAlias = 'FECHAULTIMACOMPRA'
      end
      item
        FieldName = 'FECHAALTA'
        FieldAlias = 'FECHAALTA'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'ZONA'
        FieldAlias = 'ZONA'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end>
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
    Left = 928
    Top = 568
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    AfterScroll = CDSMovCCAfterScroll
    OnCalcFields = CDSMovCCCalcFields
    Left = 232
    Top = 120
    object CDSMovCCCLIENTE: TStringField
      DisplayLabel = '+'
      DisplayWidth = 2
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object CDSMovCCNRO_CUOTA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Ct.'
      DisplayWidth = 5
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovCCDETALLE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Detalle'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      DisplayWidth = 11
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      DisplayWidth = 10
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 11
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCID_MOVCCVTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSMovCCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      DisplayWidth = 3
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSMovCCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 15
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Visible = False
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSMovCCID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Visible = False
    end
    object CDSMovCCCLASECPBTE: TStringField
      DisplayLabel = 'Cl.'
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSMovCCMUESTRAGRUPO: TIntegerField
      FieldName = 'MUESTRAGRUPO'
      Origin = 'MUESTRAGRUPO'
      ProviderFlags = []
      Visible = False
    end
    object CDSMovCCMUESTRATIPOVTA: TStringField
      FieldName = 'MUESTRATIPOVTA'
      Origin = 'MUESTRATIPOVTA'
      ProviderFlags = []
      Visible = False
      Size = 1
    end
    object CDSMovCCMUESTRATOTAL: TFloatField
      FieldName = 'MUESTRATOTAL'
      Origin = 'MUESTRATOTAL'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCFECHAVTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Vta'
      DisplayWidth = 10
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Vto'
      DisplayWidth = 10
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSMovCCNROREMITOS: TStringField
      FieldName = 'NROREMITOS'
      ProviderFlags = []
      Size = 100
    end
  end
  object CDSAplicaciones: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOVCCVTA'
    MasterFields = 'ID_MOVCCVTA'
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplicaciones'
    BeforeEdit = CDSAplicacionesBeforeEdit
    BeforePost = CDSAplicacionesBeforePost
    AfterPost = CDSAplicacionesAfterPost
    BeforeCancel = CDSAplicacionesBeforeCancel
    BeforeDelete = CDSAplicacionesBeforeDelete
    AfterScroll = CDSAplicacionesAfterScroll
    OnReconcileError = CDSAplicacionesReconcileError
    Left = 224
    Top = 168
    object CDSAplicacionesID_MOV: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSAplicacionesID_MOVCCVTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSAplicacionesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 3
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSAplicacionesCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 3
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionesNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 15
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSAplicacionesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 12
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAplicacionesCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Visible = False
      Size = 6
    end
    object CDSAplicacionesID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
      Visible = False
    end
    object CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
      Visible = False
    end
    object CDSAplicacionesAPLICA_TIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Visible = False
      Size = 2
    end
    object CDSAplicacionesAPLICA_CLASECPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSAplicacionesAPLICA_NROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Visible = False
      Size = 13
    end
    object CDSAplicacionesDETALLE: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Visible = False
    end
    object CDSAplicacionesCONCILIADO: TStringField
      DisplayWidth = 1
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSAplicacionesIDMOVACTA: TIntegerField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'IDMOVACTA'
      Visible = False
    end
    object CDSAplicacionesFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object CDSACta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPACta'
    AfterScroll = CDSACtaAfterScroll
    OnCalcFields = CDSACtaCalcFields
    Left = 208
    Top = 232
    object CDSACtaTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 4
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSACtaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 24
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSACtaID_MOV: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSACtaCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Visible = False
      Size = 6
    end
    object CDSACtaID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Visible = False
    end
    object CDSACtaCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 2
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Visible = False
      Size = 2
    end
    object CDSACtaNUMEROCPBTE: TStringField
      DisplayLabel = 'Numero'
      DisplayWidth = 16
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Visible = False
      Size = 13
    end
    object CDSACtaMUESTRATOTAL: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'MUESTRATOTAL'
      ProviderFlags = []
      Calculated = True
    end
    object CDSACtaMUESTRAGRUPO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAGRUPO'
      ProviderFlags = []
    end
    object CDSACtaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSACtaFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSACtaASOCIADO_ID_CPBTE: TIntegerField
      FieldName = 'ASOCIADO_ID_CPBTE'
      Origin = 'ASOCIADO_ID_CPBTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSACtaASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
      Origin = 'ASOCIADO_TIPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSACtaASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
      Origin = 'ASOCIADO_PTOVTA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSACtaASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Origin = 'ASOCIADO_NRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSACtaMUESTRATIPOASOCIADO: TStringField
      FieldName = 'MUESTRATIPOASOCIADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object CDSACtaMUESTRANROASOCIADO: TStringField
      FieldName = 'MUESTRANROASOCIADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    Left = 720
    Top = 224
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
  object DSPEmpresa: TDataSetProvider
    DataSet = DMMain_FD.QEmpresa
    Left = 776
    Top = 216
  end
  object DSPCli: TDataSetProvider
    DataSet = QCli
    Options = [poAllowCommandText]
    Left = 600
    Top = 120
  end
  object CDSCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCli'
    Left = 649
    Top = 115
    object CDSCliCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSCliNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
  end
  object DSPAplicaionGral: TDataSetProvider
    DataSet = QAPlicacionGral
    UpdateMode = upWhereKeyOnly
    Left = 616
    Top = 552
  end
  object CDSAplicacionGral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplicaionGral'
    Left = 864
    Top = 534
    object CDSAplicacionGralID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicacionGralID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      Required = True
    end
    object CDSAplicacionGralFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSAplicacionGralCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSAplicacionGralID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSAplicacionGralTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSAplicacionGralCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionGralNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSAplicacionGralAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSAplicacionGralAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSAplicacionGralAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionGralAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSAplicacionGralDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSAplicacionGralCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAplicacionGralIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object DSPFiltroCab: TDataSetProvider
    DataSet = QFiltroC
    Options = [poAllowCommandText]
    Left = 544
    Top = 352
  end
  object CDSFiltroCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFiltroCab'
    Left = 600
    Top = 360
    object CDSFiltroCabID: TIntegerField
      DisplayWidth = 6
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSFiltroCabDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 25
    end
  end
  object DSFiltroCab: TDataSource
    DataSet = CDSFiltroCab
    Left = 656
    Top = 368
  end
  object CDSMovGeneral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovGeneral'
    Left = 524
    Top = 76
    object CDSMovGeneralID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovGeneralID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSMovGeneralFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSMovGeneralFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSMovGeneralTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovGeneralCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovGeneralDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovGeneralID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = []
    end
    object CDSMovGeneralID_MOVCCVTA_1: TIntegerField
      FieldName = 'ID_MOVCCVTA_1'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = []
    end
    object CDSMovGeneralFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = []
    end
    object CDSMovGeneralCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      Size = 6
    end
    object CDSMovGeneralID_CPBTE_1: TIntegerField
      FieldName = 'ID_CPBTE_1'
      Origin = 'ID_CPBTE'
      ProviderFlags = []
    end
    object CDSMovGeneralTIPOCPBTE_1: TStringField
      FieldName = 'TIPOCPBTE_1'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovGeneralCLASECPBTE_1: TStringField
      FieldName = 'CLASECPBTE_1'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovGeneralNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSMovGeneralAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      ProviderFlags = []
    end
    object CDSMovGeneralAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovGeneralAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovGeneralAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSMovGeneralDETALLE_1: TStringField
      FieldName = 'DETALLE_1'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSMovGeneralCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSMovGeneralDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object CDSMovGeneralHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object CDSMovGeneralSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object CDSMovGeneralIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSPMovGeneral: TDataSetProvider
    DataSet = QMovGeneral
    Options = [poAllowCommandText]
    Left = 428
    Top = 116
  end
  object DSMovGeneral: TDataSource
    DataSet = CDSMovGeneral
    Left = 612
    Top = 44
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.*, ( select g.MuestraGrupo from mov_ctacte_vta_grupo ( ' +
        'm.id_movccvta ) g ) as MuestraGrupo,'
      
        '            ( select g.MuestraTotal from mov_ctacte_vta_grupo ( ' +
        'm.id_movccvta ) g ) as MuestraTotal ,'
      
        '            ( select g.MuestraTipoVta from mov_ctacte_vta_grupo ' +
        '( m.id_movccvta ) g ) As MuestraTipoVta,'
      
        '            ( select fc.nrorto from fcvtacab fc where fc.id_fc=m' +
        '.id_cpbte and fc.tipocpbte=m.tipocpbte) as NroRemitos'
      ''
      ''
      'from MovCCVta m where'
      '  ( m.cliente=:codigo) and'
      
        '  ( (m.tipoCpbte='#39'FC'#39') or (m.TipoCpbte='#39'ND'#39') or (m.TipoCpbte='#39'AJ' +
        #39') or (m.TipoCpbte='#39'XR'#39')) and (m.haber=0 )'
      '     and (m.Saldo>0.01)'
      '     order by m.ID_MOVCCVTA ,m.NroCpbte')
    Left = 84
    Top = 92
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMovCCID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovCCID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QMovCCCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QMovCCTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCCCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovCCNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QMovCCDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QMovCCHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QMovCCSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QMovCCDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMovCCNRO_CUOTA: TIntegerField
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovCCID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object QMovCCCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMovCCMUESTRAGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAGRUPO'
      Origin = 'MUESTRAGRUPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMovCCMUESTRATOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATOTAL'
      Origin = 'MUESTRATOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMovCCMUESTRATIPOVTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPOVTA'
      Origin = 'MUESTRATIPOVTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object QMovCCFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QMovCCFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QMovCCNROREMITOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROREMITOS'
      Origin = 'NRORTO'
      ProviderFlags = []
      Size = 100
    end
  end
  object QAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from MovAplicaCCVta  m where'
      'm.cliente = :codigo and'
      'm.Id_MovCCVta between :Id_desde and :Id_Hasta'
      'order by m.id_movccvta,m.fecha,m.tipocpbte')
    Left = 76
    Top = 148
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAplicacionesID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicacionesID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicacionesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QAplicacionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QAplicacionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAplicacionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QAplicacionesNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QAplicacionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QAplicacionesAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QAplicacionesAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QAplicacionesAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QAplicacionesAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QAplicacionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QAplicacionesCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAplicacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object QACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.*,f.asociado_id_cpbte,f.asociado_tipo,f.asociado_ptovta' +
        ',f.asociado_nro,nc.tipocpbte as MuestraTipoASociado,nc.nrocpbte ' +
        'as MuestraNroAsociado from MovACtaCCVta m'
      'left join fcvtacab f on f.id_fc=m.id_cpbte'
      'left join fcvtacab nc on nc.id_fc=f.asociado_id_cpbte'
      
        'where m.cliente=:codigo and Trunc(m.Importe*1000)<>0 and Trunc(m' +
        '.importe*1000)>0.001'
      'order by m.fecha,m.ID_MOV, m.numerocpbte')
    Left = 76
    Top = 228
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 80
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object QBorraUnAplicacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from movaplicaccvta m where m.id_mov = :id_mov'
      'and m.conciliado='#39'N'#39)
    Left = 284
    Top = 292
    ParamData = <
      item
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QImporteFC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.total,c.tipo_vta from fcVtacab c where c.id_fc=:id')
    Left = 268
    Top = 348
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QImporteAjustes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select a.haber,a.debe from ajuste_cc_clientes a where a.id=:id')
    Left = 372
    Top = 220
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QImporteAjustesHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QImporteAjustesDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
  end
  object QFiltroC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_CPBTE_CCVTA_CAB')
    Left = 492
    Top = 348
  end
  object QSaldoCtaCte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select (sum(m.debe)-sum(m.haber)) as Saldo from movccvta m where' +
        ' m.cliente=:codigo')
    Left = 276
    Top = 460
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QSaldoCtaCteSALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QImporteRC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rc.total from recibos rc where rc.id_rc=:id')
    Left = 372
    Top = 452
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QImporteRCTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
  end
  object QMarcarTodoConciliado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movaplicaccvta m set m.conciliado='#39'S'#39' where m.cliente=:co' +
        'digo'
      'and m.conciliado='#39'N'#39)
    Left = 484
    Top = 412
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QConciliarUno: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movaplicaccvta m set m.conciliado='#39'S'#39' where m.id_mov = :i' +
        'd_mov'
      'and m.conciliado='#39'N'#39)
    Left = 572
    Top = 436
    ParamData = <
      item
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QMovGeneral: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_movccvta,m.id_cpbte,m.fechavta,m.fechavto,m.tipocpbt' +
        'e,'
      
        '    m.clasecpbte,m.detalle,m.debe,m.haber,m.saldo,ma.* from movc' +
        'cvta m'
      'left join movaplicaccvta ma on ma.id_movccvta=m.id_movccvta'
      'where m.cliente=:codigo and m.tipocpbte in ('#39'FC'#39','#39'ND'#39')')
    Left = 372
    Top = 44
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QCli: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  codigo,nombre from clientes'
      'order by codigo')
    Left = 556
    Top = 116
  end
  object QAPlicacionGral: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovAplicaCCVta where cliente=:codigo ')
    Left = 552
    Top = 568
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spReAsignaSaldosFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REASIGNARSALDOMOVCTACTEVTA'
    Left = 640
    Top = 489
    ParamData = <
      item
        Position = 1
        Name = 'CODIGOCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
  end
  object QBorraAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from movaplicaccvta m where m.cliente=:codigo'
      'and m.conciliado='#39'N'#39)
    Left = 488
    Top = 568
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QDesconciliarTodos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movaplicaccvta m set m.conciliado='#39'N'#39' where m.cliente=:co' +
        'digo')
    Left = 392
    Top = 583
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QDesconciliarUnoFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movaplicaccvta m set m.conciliado='#39'N'#39' where m.id_mov = :i' +
        'd_mov')
    Left = 280
    Top = 560
    ParamData = <
      item
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QInactivaTriggerBorradoApliciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TBD_MOVAPLICACCVTA INACTIVE')
    Left = 168
    Top = 448
  end
  object QActivaTriggerBorradoApliciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER TBD_MOVAPLICACCVTA ACTIVE')
    Left = 232
    Top = 400
  end
  object QActualizaMovActaRecFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movactaccvta m set m.importe=(select r.total from recibos' +
        ' r where r.id_rc=m.id_cpbte and r.tipocpbte=m.tipocpbte and r.cl' +
        'asecpbte=m.clasecpbte)'
      'where m.id_mov=:idmov')
    Left = 44
    Top = 364
    ParamData = <
      item
        Name = 'IDMOV'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QActualizaMovACtaNcFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movactaccvta m set m.importe=(select f.total from fcvtaca' +
        'b f'
      
        '                                     where f.id_fc = m.id_cpbte ' +
        'and'
      
        '                                           f.tipocpbte = m.tipoc' +
        'pbte and'
      
        '                                           f.clasecpbte = m.clas' +
        'ecpbte)'
      'where m.id_mov=:idmov')
    Left = 44
    Top = 444
    ParamData = <
      item
        Name = 'IDMOV'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object SaveDialog1: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Archivo de Retenciones'
    Left = 352
    Top = 392
  end
  object QActualizaMovActaAj: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update movactaccvta m set m.importe=(select f.haber from ajuste_' +
        'cc_clientes f'
      '                                     where f.id = m.id_cpbte and'
      
        '                                           f.tipocpbte = m.tipoc' +
        'pbte and'
      
        '                                           f.clasecpbte = m.clas' +
        'ecpbte)'
      'where m.id_mov=:idmov')
    Left = 140
    Top = 372
    ParamData = <
      item
        Name = 'IDMOV'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QMaxMin: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(m.id_movccvta),Max(m.id_movccvta) from MovCCVta m whe' +
        're'
      
        ' ( m.cliente=:codigo) and ((m.tipoCpbte='#39'FC'#39') or (m.TipoCpbte='#39'N' +
        'D'#39') or (m.TipoCpbte='#39'AJ'#39') or (m.TipoCpbte='#39'XR'#39')) '
      ' and (m.haber=0) and (m.Saldo>:saldo)')
    Left = 20
    Top = 132
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
    object QMaxMinMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
    end
    object QMaxMinMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 984
    Top = 8
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 596
    Top = 284
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
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
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45896.811584131950000000
      ShrinkToPageWidth = True
      OptionsExpanding.ExpandGroupRows = True
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsOnEveryPage.Caption = False
      OptionsRefinements.TransparentGraphics = True
      OptionsView.Caption = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object QFacDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_cabfac,c.tipocpbte,c.clasecpbte,c.nrocpbte, d.c' +
        'odigoarticulo,d.detalle,d.cantidad,d.unitario_total,c.anulado,'
      
        'c.fechavta, c.tipocpbte||'#39'-'#39'||c.clasecpbte||'#39'-'#39'||c.nrocpbte||'#39' :' +
        ' '#39'||c.nombre  from fcvtadet d'
      'left join fcvtacab c on c.id_fc=d.id_cabfac'
      'where c.codigo=:codigo and c.tipocpbte<>'#39'NC'#39' AND C.anulado='#39'N'#39
      'order by c.fechavta asc')
    Left = 924
    Top = 36
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = ''
      end>
  end
  object DSPFacDet: TDataSetProvider
    DataSet = QFacDet
    Options = [poAllowCommandText]
    Left = 928
    Top = 80
  end
  object CDSFacDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPFacDet'
    OnCalcFields = CDSFacDetCalcFields
    Left = 932
    Top = 132
    object CDSFacDetFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHAVTA'
      ReadOnly = True
      OnGetText = CDSFacDetFECHAVTAGetText
    end
    object CDSFacDetTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      ReadOnly = True
      Size = 2
    end
    object CDSFacDetCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      ReadOnly = True
      Size = 2
    end
    object CDSFacDetNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      ReadOnly = True
      Size = 13
    end
    object CDSFacDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSFacDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSFacDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFacDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unitario'
      FieldName = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSFacDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Required = True
    end
    object CDSFacDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSFacDetCABECERA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CABECERA'
      OnGetText = CDSFacDetCABECERAGetText
      Size = 50
    end
  end
  object DSFacDet: TDataSource
    DataSet = CDSFacDet
    Left = 948
    Top = 180
  end
  object QNcDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_cabfac,c.tipocpbte,c.clasecpbte,c.nrocpbte, d.c' +
        'odigoarticulo,d.detalle,d.cantidad,d.unitario_total,c.anulado,'
      
        'c.fechavta, c.tipocpbte||'#39'-'#39'||c.clasecpbte||'#39'-'#39'||c.nrocpbte||'#39' :' +
        ' '#39'||c.nombre  from fcvtadet d'
      'left join fcvtacab c on c.id_fc=d.id_cabfac'
      'where c.codigo=:codigo and c.tipocpbte='#39'NC'#39' AND C.anulado='#39'N'#39
      'order by c.fechavta asc')
    Left = 804
    Top = 76
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object DSPNcDet: TDataSetProvider
    DataSet = QNcDet
    Options = [poAllowCommandText]
    Left = 856
    Top = 80
  end
  object CDSNcDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPNcDet'
    OnCalcFields = CDSNcDetCalcFields
    Left = 868
    Top = 132
    object CDSNcDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNcDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Required = True
    end
    object CDSNcDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object CDSNcDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object CDSNcDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object CDSNcDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSNcDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSNcDetCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSNcDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = 'Unitario'
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSNcDetANULADO: TStringField
      DisplayLabel = 'A'
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object CDSNcDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      ReadOnly = True
      OnGetText = CDSNcDetFECHAVTAGetText
    end
    object CDSNcDetCABECERA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CABECERA'
      OnGetText = CDSNcDetCABECERAGetText
      Size = 50
    end
  end
  object DSNcDet: TDataSource
    DataSet = CDSNcDet
    Left = 868
    Top = 188
  end
end
