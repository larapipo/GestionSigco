inherited FormListadoGastoRefContable: TFormListadoGastoRefContable
  Left = 238
  Top = 94
  Caption = ''
  ClientHeight = 715
  ClientWidth = 1366
  KeyPreview = False
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1384
  ExplicitHeight = 756
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1366
    Height = 662
    Align = alClient
    Color = clMenuHighlight
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1366
    ExplicitHeight = 662
    object Label1: TLabel
      Left = 720
      Top = 2
      Width = 106
      Height = 13
      Caption = 'Per'#237'odo Seleccionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 576
      Top = 18
      Width = 74
      Height = 26
      Caption = 'Intervalo entre'#13#10'Fechas (meses)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 14
      Width = 376
      Height = 29
      Caption = 'Gastos Por Referencia Contable'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Desde: TJvDateEdit
      Left = 720
      Top = 20
      Width = 89
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
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 0
    end
    object Hasta: TJvDateEdit
      Left = 816
      Top = 20
      Width = 89
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
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 1
    end
    object UpDown1: TUpDown
      Left = 907
      Top = 21
      Width = 16
      Height = 20
      Hint = 'Cambia el Per'#237'odo'
      Max = 10000
      ParentShowHint = False
      Position = 100
      ShowHint = True
      TabOrder = 2
      OnClick = UpDown1Click
    end
    object spMeses: TUpDown
      Left = 684
      Top = 20
      Width = 16
      Height = 21
      Associate = edMeses
      Min = 1
      Position = 1
      TabOrder = 3
      OnClick = spMesesClick
    end
    object edMeses: TEdit
      Left = 656
      Top = 20
      Width = 28
      Height = 21
      TabOrder = 4
      Text = '1'
    end
    object chbSincro: TAdvOfficeCheckBox
      Left = 407
      Top = 18
      Width = 132
      Height = 17
      Hint = 
        'Cuando se incremente el desde , el hasta tambien lo hace, usando' +
        ' el incremental'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = True
      Alignment = taRightJustify
      Caption = 'Fechas Sincronizadas'
      ReturnIsTab = False
      Version = '1.8.4.2'
    end
    object pcResultados: TPageControl
      Left = 0
      Top = 56
      Width = 1366
      Height = 606
      ActivePage = pag1
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      HotTrack = True
      TabOrder = 6
      object pag1: TTabSheet
        Caption = 'Listado de Gastos por Egresos'
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 5
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1358
          Height = 578
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = BuscarCtaContableExecute
            OnKeyPress = cxGrid1DBTableView1KeyPress
            DataController.DataSource = DatosLstRefContable.DSSaldosGastos
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'IMPORTE'
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid1DBTableView1MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid1DBTableView1CODIGOGASTO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOGASTO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 129
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 519
            end
            object cxGrid1DBTableView1CTA_CONTABLE: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid1DBTableView1CTA_CONTABLE_COD: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE_COD'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid1DBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 89
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CENTROCOSTO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Listado de Ingresos'
        ImageIndex = 8
        object cxGrid7: TcxGrid
          Left = 0
          Top = 0
          Width = 1358
          Height = 578
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGridDBTableView3: TcxGridDBTableView
            OnDblClick = BuscarCtaContableExecute
            OnKeyPress = cxGrid1DBTableView1KeyPress
            DataController.DataSource = DatosLstRefContable.DSSaldoIng
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'IMPORTE'
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView3ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGridDBTableView3MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGridDBTableView3CODIGOINGRESO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOINGRESO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 128
            end
            object cxGridDBTableView3DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 439
            end
            object cxGridDBTableView3CTA_CONTABLE: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 238
            end
            object cxGridDBTableView3CTA_CONTABLE_COD: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE_COD'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 130
            end
            object cxGridDBTableView3IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 134
            end
            object cxGridDBTableView3Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CENTROCOSTO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
      object pag2: TTabSheet
        Caption = 'Listado de Gastos por Fc.Compras'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1358
          Height = 578
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGrid2DBTableView1: TcxGridDBTableView
            OnDblClick = BuscarCtaContableExecute
            OnKeyPress = cxGrid2DBTableView1KeyPress
            DataController.DataSource = DatosLstRefContable.DSGastosFcCompra
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL'
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid2DBTableView1MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid2DBTableView1CODIGOARTICULO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGOARTICULO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 104
            end
            object cxGrid2DBTableView1DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 324
            end
            object cxGrid2DBTableView1CTA_CONTABLE: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid2DBTableView1CTA_CONTABLE_COD: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE_COD'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 113
            end
            object cxGrid2DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid2DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CENTROCOSTO'
              HeaderAlignmentHorz = taCenter
              Width = 322
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object pag7: TTabSheet
        Caption = 'Listado Personal'
        ImageIndex = 6
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 1358
          Height = 578
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = BuscarCtaContableExecute
            OnKeyPress = cxGrid2DBTableView1KeyPress
            DataController.DataSource = DatosLstRefContable.DSPersonal
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL'
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView1ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 76
            end
            object cxGridDBTableView1MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGridDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 79
            end
            object cxGridDBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 338
            end
            object cxGridDBTableView1CTA_CONTABLE: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 234
            end
            object cxGridDBTableView1CTA_CONTABLE_COD: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE_COD'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 149
            end
            object cxGridDBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 92
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CENTROCOSTO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Listado de Gastos Bancarios'
        ImageIndex = 7
        object cxGrid6: TcxGrid
          Left = 0
          Top = 0
          Width = 1358
          Height = 578
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGridDBTableView2: TcxGridDBTableView
            OnDblClick = BuscarCtaContableExecute
            OnKeyPress = cxGrid2DBTableView1KeyPress
            DataController.DataSource = DatosLstRefContable.DSGastosBco
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'TOTAL'
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBTableView2ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 94
            end
            object cxGridDBTableView2MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 101
            end
            object cxGridDBTableView2CODIGO_CONCEPTO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_CONCEPTO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 100
            end
            object cxGridDBTableView2DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 309
            end
            object cxGridDBTableView2CTA_CONTABLE: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 277
            end
            object cxGridDBTableView2CTA_CONTABLE_COD: TcxGridDBColumn
              DataBinding.FieldName = 'CTA_CONTABLE_COD'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGridDBTableView2TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 97
            end
            object cxGridDBTableView2Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CENTROCOSTO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object pag9: TTabSheet
        Caption = 'Gastos de Tarjeta de Credito'
        ImageIndex = 9
        object Splitter1: TSplitter
          Left = 646
          Top = 25
          Height = 450
          ExplicitLeft = 625
          ExplicitTop = 0
          ExplicitHeight = 502
        end
        object cxGrid8: TcxGrid
          Left = 0
          Top = 25
          Width = 646
          Height = 450
          Align = alLeft
          TabOrder = 0
          object cxGrid8DBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosLstRefContable.DSGastoAranceles
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'ARANCEL'
                Column = cxGrid8DBTableView1ARANCEL
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid8DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object cxGrid8DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 34
            end
            object cxGrid8DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 38
            end
            object cxGrid8DBTableView1NUMEROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NUMEROCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 86
            end
            object cxGrid8DBTableView1NRO_LIQUIDACION: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_LIQUIDACION'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGrid8DBTableView1ARANCEL: TcxGridDBColumn
              DataBinding.FieldName = 'ARANCEL'
              HeaderAlignmentHorz = taCenter
              Width = 111
            end
            object cxGrid8DBTableView1MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid8DBTableView1ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid8Level1: TcxGridLevel
            GridView = cxGrid8DBTableView1
          end
        end
        object cxGrid9: TcxGrid
          Left = 649
          Top = 25
          Width = 709
          Height = 450
          Align = alClient
          TabOrder = 1
          object cxGrid9DBTableView1: TcxGridDBTableView
            DataController.DataSource = DatosLstRefContable.DSTCGastoFinaciero
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00;-,0.00;-'
                Kind = skSum
                FieldName = 'COSTO_FINANCIERO'
                Column = cxGrid9DBTableView1COSTO_FINANCIERO
              end>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid9DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Width = 93
            end
            object cxGrid9DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 51
            end
            object cxGrid9DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
              Width = 68
            end
            object cxGrid9DBTableView1NUMEROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NUMEROCPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid9DBTableView1NRO_LIQUIDACION: TcxGridDBColumn
              DataBinding.FieldName = 'NRO_LIQUIDACION'
              HeaderAlignmentHorz = taCenter
              Width = 104
            end
            object cxGrid9DBTableView1COSTO_FINANCIERO: TcxGridDBColumn
              DataBinding.FieldName = 'COSTO_FINANCIERO'
              HeaderAlignmentHorz = taCenter
              Width = 105
            end
            object cxGrid9DBTableView1MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid9DBTableView1ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid9Level1: TcxGridLevel
            GridView = cxGrid9DBTableView1
          end
        end
        object pnPieTarjetas: TPanel
          Left = 0
          Top = 475
          Width = 1358
          Height = 103
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          object Label9: TLabel
            Left = 21
            Top = 7
            Width = 105
            Height = 16
            Caption = 'Cod.Cta.Contable'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 148
            Top = 6
            Width = 77
            Height = 16
            Caption = 'Cta.Contable'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 669
            Top = 7
            Width = 105
            Height = 16
            Caption = 'Cod.Cta.Contable'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 805
            Top = 6
            Width = 77
            Height = 16
            Caption = 'Cta.Contable'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 65
            Top = 67
            Width = 54
            Height = 16
            Caption = 'Ctr.Costo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 720
            Top = 67
            Width = 54
            Height = 16
            Caption = 'Ctr.Costo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edCodCtaAranceles: TEdit
            Left = 21
            Top = 26
            Width = 121
            Height = 21
            TabOrder = 0
            Text = 'edCodCtaAranceles'
          end
          object edCtaAranceles: TEdit
            Left = 148
            Top = 26
            Width = 377
            Height = 21
            TabOrder = 1
            Text = 'edCtaAranceles'
          end
          object edCostoFinanciero: TEdit
            Left = 805
            Top = 26
            Width = 377
            Height = 21
            TabOrder = 2
            Text = 'Edit2'
          end
          object edCodFinanciero: TEdit
            Left = 669
            Top = 26
            Width = 121
            Height = 21
            TabOrder = 3
            Text = 'Edit1'
          end
          object spAsignarCta: TBitBtn
            Left = 531
            Top = 24
            Width = 31
            Height = 25
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000002000000070000
              000D0000000F0000000D00000007000000020000000000000000000000020000
              00090000000F00000010000000110000001100000014020101214C28168E8648
              27DAA55831FF854627DB4A28158C020100150000000400000000000000098B63
              56C1C18977FFC08976FFC08875FFC59584FFCFAFA3FFB0704EFFC07C4AFFDEA6
              69FFF4D3A1FFDEA76AFFBF7C4BFF844728D406030217000000020000000CC38E
              79FFFDFBFAFFFBF7F4FFFCF6F3FFF7F4F1FFC8A28CFFC48656FFEDBC7CFFEEBF
              7FFF83400EFFF2CC94FFEFC181FFC38657FF58321C93000000070000000DC591
              7EFFFDFCFBFFF8EFE8FFF7EEE8FFF2EDE9FFBA7D57FFE4B377FFF5D9ABFFF5DA
              AFFF8B4914FFF7E3BEFFF6DBB2FFE5B77FFF995C36E30000000B0000000CC794
              81FFFEFCFBFFF9F0EAFFF8F0EAFFF3EFECFFBC784FFFF1CE95FF995420FF9752
              1DFF934F1CFF904C19FF8D4917FFF5DBAEFFB16F45FA0000000B0000000BC997
              86FFFEFDFCFFF9F2EDFFF9F2EDFFF5F0EDFFC68C65FFEFDDB7FFF3CF98FFF5D5
              9FFF9B5622FFF7E0B2FFF5D7A4FFEFDDB8FFA46942E2000000080000000ACB9C
              8BFFFEFDFDFFFAF3EFFFFAF4EEFFF8F3F0FFDBB9A4FFD8AE86FFF9F3D1FFF8E1
              B5FFA35D28FFFAEAC6FFFAF6D5FFD8AF89FF5E3E29850000000400000009CFA0
              8DFFFEFEFDFFFBF5F1FFFBF5F0FFFAF4F1FFF6F2EFFFD5A785FFDCB48DFFF2E9
              CAFFFAFDE1FFF2E9CAFFDCB38CFF996B4AC80202010A0000000100000009D0A3
              93FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF6F2FFF8F4F0FFE4C9B4FFDAAF
              8AFFD8A578FFDBAE8AFFD7B098FF02020117000000010000000000000008D3A8
              97FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF5F4FFFAF6F3FFFAF6
              F3FFF8F6F3FFFBF9F8FFDAB9ADFF0000000E000000000000000000000007D3AB
              9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6
              F2FFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
              9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7F5FFFBF7
              F4FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
              A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
              F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
              A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
              FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
              7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
              A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
            TabOrder = 4
            OnClick = spAsignarCtaClick
          end
          object spAsignaCta: TBitBtn
            Left = 1188
            Top = 23
            Width = 31
            Height = 25
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000002000000070000
              000D0000000F0000000D00000007000000020000000000000000000000020000
              00090000000F00000010000000110000001100000014020101214C28168E8648
              27DAA55831FF854627DB4A28158C020100150000000400000000000000098B63
              56C1C18977FFC08976FFC08875FFC59584FFCFAFA3FFB0704EFFC07C4AFFDEA6
              69FFF4D3A1FFDEA76AFFBF7C4BFF844728D406030217000000020000000CC38E
              79FFFDFBFAFFFBF7F4FFFCF6F3FFF7F4F1FFC8A28CFFC48656FFEDBC7CFFEEBF
              7FFF83400EFFF2CC94FFEFC181FFC38657FF58321C93000000070000000DC591
              7EFFFDFCFBFFF8EFE8FFF7EEE8FFF2EDE9FFBA7D57FFE4B377FFF5D9ABFFF5DA
              AFFF8B4914FFF7E3BEFFF6DBB2FFE5B77FFF995C36E30000000B0000000CC794
              81FFFEFCFBFFF9F0EAFFF8F0EAFFF3EFECFFBC784FFFF1CE95FF995420FF9752
              1DFF934F1CFF904C19FF8D4917FFF5DBAEFFB16F45FA0000000B0000000BC997
              86FFFEFDFCFFF9F2EDFFF9F2EDFFF5F0EDFFC68C65FFEFDDB7FFF3CF98FFF5D5
              9FFF9B5622FFF7E0B2FFF5D7A4FFEFDDB8FFA46942E2000000080000000ACB9C
              8BFFFEFDFDFFFAF3EFFFFAF4EEFFF8F3F0FFDBB9A4FFD8AE86FFF9F3D1FFF8E1
              B5FFA35D28FFFAEAC6FFFAF6D5FFD8AF89FF5E3E29850000000400000009CFA0
              8DFFFEFEFDFFFBF5F1FFFBF5F0FFFAF4F1FFF6F2EFFFD5A785FFDCB48DFFF2E9
              CAFFFAFDE1FFF2E9CAFFDCB38CFF996B4AC80202010A0000000100000009D0A3
              93FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF6F2FFF8F4F0FFE4C9B4FFDAAF
              8AFFD8A578FFDBAE8AFFD7B098FF02020117000000010000000000000008D3A8
              97FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF5F4FFFAF6F3FFFAF6
              F3FFF8F6F3FFFBF9F8FFDAB9ADFF0000000E000000000000000000000007D3AB
              9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6
              F2FFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
              9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7F5FFFBF7
              F4FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
              A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
              F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
              A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
              FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
              7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
              A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
            TabOrder = 5
            OnClick = spAsignarCtaClick
          end
          object cbCtroCostoAranceles: TJvDBLookupCombo
            Left = 148
            Top = 64
            Width = 377
            Height = 21
            EmptyValue = '-1'
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DatosLstRefContable.DSCtrCostoAranceles
            TabOrder = 6
          end
          object cbCtroCostoFinanciero: TJvDBLookupCombo
            Left = 805
            Top = 64
            Width = 377
            Height = 21
            EmptyValue = '-1'
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DatosLstRefContable.DSCtroCostoFinanciero
            TabOrder = 7
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1358
          Height = 25
          Align = alTop
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 3
          object Label14: TLabel
            Left = 256
            Top = 3
            Width = 81
            Height = 20
            Caption = 'Aranceles'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 952
            Top = 3
            Width = 155
            Height = 20
            Caption = 'Costos Financieros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object pag3: TTabSheet
        Caption = 'Listado Resultado'
        ImageIndex = 2
        object pnPie2: TPanel
          Left = 0
          Top = 529
          Width = 1358
          Height = 49
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object pbResultado: TProgressBar
            Left = 243
            Top = 16
            Width = 214
            Height = 17
            TabOrder = 0
          end
          object btGeneraResumen: TBitBtn
            Left = 12
            Top = 9
            Width = 123
            Height = 25
            Action = GenerarResumen
            Caption = 'Generar Resumen'
            TabOrder = 1
          end
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1358
          Height = 529
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGrid3DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSTablaResumen
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'DEBE'
                Column = cxGrid3DBTableView1DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'HABER'
                Column = cxGrid3DBTableView1HABER
              end>
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid3DBTableView1ANIO: TcxGridDBColumn
              DataBinding.FieldName = 'ANIO'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 68
            end
            object cxGrid3DBTableView1MES: TcxGridDBColumn
              DataBinding.FieldName = 'MES'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
            end
            object cxGrid3DBTableView1COD_CTA: TcxGridDBColumn
              DataBinding.FieldName = 'COD_CTA'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 152
            end
            object cxGrid3DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 284
            end
            object cxGrid3DBTableView1CTACONTABLE: TcxGridDBColumn
              DataBinding.FieldName = 'CTACONTABLE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 153
            end
            object cxGrid3DBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 96
            end
            object cxGrid3DBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 102
            end
            object cxGrid3DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Options.Focusing = False
              Width = 107
            end
            object cxGrid3DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'CENTROCOSTO'
              HeaderAlignmentHorz = taCenter
              Width = 213
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
      object Pag4: TTabSheet
        Caption = 'Resulatdo Agrupado'
        ImageIndex = 3
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1358
          Height = 529
          Align = alClient
          DataSource = DSTablaResumen
          Groups = <>
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'iMaginary'
          OptionsView.ColumnGrandTotalText = 'Totales'
          OptionsView.FilterSeparator = False
          OptionsView.RowGrandTotalText = 'Totales'
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1CTACONTABLE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'CTACONTABLE'
            Visible = True
            UniqueName = 'Cta.Contable'
          end
          object cxDBPivotGrid1DETALLE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'DETALLE'
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid1DEBE: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'DEBE'
            Visible = True
            UniqueName = 'Debe'
          end
          object cxDBPivotGrid1HABER: TcxDBPivotGridField
            Area = faData
            AreaIndex = 1
            DataBinding.FieldName = 'HABER'
            Visible = True
            UniqueName = 'Haber'
          end
          object cxDBPivotGrid1ID_ORIGEN: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'ID_ORIGEN'
            Visible = True
            UniqueName = 'Id.Orig.'
          end
          object cxDBPivotGrid1TIPO_CPBTE: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'TIPO_CPBTE'
            Visible = True
            UniqueName = 'Tp.'
          end
          object cxDBPivotGrid1CLASE_CPBTE: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'CLASE_CPBTE'
            Visible = True
            UniqueName = 'Clase'
          end
          object cxDBPivotGrid1FECHA: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid1COD_CTA: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'COD_CTA'
            Visible = True
            UniqueName = 'Codigo Cta.'
          end
          object cxDBPivotGrid1ANIO: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'ANIO'
            Visible = True
            UniqueName = 'A'#241'o'
          end
          object cxDBPivotGrid1MES: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MES'
            Visible = True
            UniqueName = 'Mes'
          end
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'CENTROCOSTO'
            Visible = True
            UniqueName = 'Centro de Costo'
          end
        end
        object pnTotales: TJvPanel
          Left = 27
          Top = 269
          Width = 320
          Height = 125
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Label5: TLabel
            Left = 11
            Top = 9
            Width = 113
            Height = 13
            Caption = 'Mostrar Los Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 288
            Top = 5
            Width = 23
            Height = 22
            Hint = 'Cerrar'
            Caption = 'X'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object chOpSumas: TCheckListBox
            Left = 11
            Top = 28
            Width = 300
            Height = 77
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Total General Columnas'
              'Totales por Columnas'
              'Total General Linea'
              'Totales Por Linea')
            ParentFont = False
            TabOrder = 0
            OnClick = chOpSumasClick
          end
        end
        object pnPie: TPanel
          Left = 0
          Top = 529
          Width = 1358
          Height = 49
          Align = alBottom
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 2
          DesignSize = (
            1358
            49)
          object Label6: TLabel
            Left = 27
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label6Click
          end
          object Label7: TLabel
            Left = 134
            Top = 12
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clAqua
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label7Click
          end
          object btDatosCruzados: TBitBtn
            Left = 1185
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
            OnClick = btDatosCruzadosClick
          end
          object btBuscarAnual: TBitBtn
            Left = 1261
            Top = 11
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            TabOrder = 1
          end
          object btExcelAgrupado: TBitBtn
            Left = 1109
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
            TabOrder = 2
            OnClick = btExcelAgrupadoClick
          end
        end
      end
      object pag6: TTabSheet
        Caption = 'Tabla Resumen'
        ImageIndex = 5
        DesignSize = (
          1358
          578)
        object btExcel: TBitBtn
          Left = 887
          Top = 510
          Width = 90
          Height = 25
          Anchors = [akLeft, akBottom]
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
          OnClick = btExcelClick
        end
        object pnContable: TPanel
          Left = 0
          Top = 0
          Width = 605
          Height = 578
          Align = alLeft
          TabOrder = 1
          object cxGrid4: TcxGrid
            Left = 1
            Top = 1
            Width = 598
            Height = 576
            Align = alLeft
            PopupMenu = PopupMenu1
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            object cxGrid4DBTableView1: TcxGridDBTableView
              DataController.DataSource = DSTablaGrafico
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'IMPORTE'
                  Column = cxGrid4DBTableView1IMPORTE
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.00;-,0.00;-'
                  Kind = skSum
                  FieldName = 'IMPORTE'
                  Column = cxGrid4DBTableView1IMPORTE
                end>
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.GroupFooters = gfAlwaysVisible
              object cxGrid4DBTableView1COD_CTA: TcxGridDBColumn
                DataBinding.FieldName = 'COD_CTA'
                HeaderAlignmentHorz = taCenter
                Options.Focusing = False
                Width = 136
              end
              object cxGrid4DBTableView1DETALLE_CTA: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE_CTA'
                HeaderAlignmentHorz = taCenter
                Options.Focusing = False
              end
              object cxGrid4DBTableView1IMPORTE: TcxGridDBColumn
                DataBinding.FieldName = 'IMPORTE'
                HeaderAlignmentHorz = taCenter
                Options.Focusing = False
                Width = 121
              end
            end
            object cxGrid4Level1: TcxGridLevel
              GridView = cxGrid4DBTableView1
            end
          end
        end
        object Panel3: TPanel
          Left = 605
          Top = 0
          Width = 753
          Height = 578
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 2
          object cxGrid10: TcxGrid
            Left = 1
            Top = 1
            Width = 736
            Height = 576
            Align = alLeft
            PopupMenu = PopupMenu1
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            object cxGridDBTableView4: TcxGridDBTableView
              DataController.DataSource = DSTablaGrafico
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skSum
                  Position = spFooter
                  FieldName = 'IMPORTE'
                  Column = cxGridDBTableView4IMPORTE
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.00;-,0.00;-'
                  Kind = skSum
                  FieldName = 'IMPORTE'
                  Column = cxGridDBTableView4IMPORTE
                end>
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupFooterMultiSummaries = True
              OptionsView.GroupFooters = gfAlwaysVisible
              object cxGridDBTableView4CENTROCOSTO: TcxGridDBColumn
                DataBinding.FieldName = 'CENTROCOSTO'
                Visible = False
                GroupIndex = 0
                HeaderAlignmentHorz = taCenter
                Width = 190
              end
              object cxGridDBTableView4DETALLE_CTA: TcxGridDBColumn
                DataBinding.FieldName = 'DETALLE_CTA'
                HeaderAlignmentHorz = taCenter
                Width = 472
              end
              object cxGridDBTableView4IMPORTE: TcxGridDBColumn
                DataBinding.FieldName = 'IMPORTE'
                HeaderAlignmentHorz = taCenter
                Width = 158
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridDBTableView4
            end
          end
        end
      end
      object pag5: TTabSheet
        Caption = 'Grafico'
        ImageIndex = 4
        object pcGraficos: TAdvPageControl
          Left = 0
          Top = 0
          Width = 1358
          Height = 578
          ActivePage = pagCtroCosto
          ActiveFont.Charset = DEFAULT_CHARSET
          ActiveFont.Color = clWindowText
          ActiveFont.Height = -11
          ActiveFont.Name = 'Tahoma'
          ActiveFont.Style = [fsBold]
          Align = alClient
          DoubleBuffered = True
          ActiveColor = clLime
          TabBackGroundColor = clBtnFace
          TabMargin.RightMargin = 0
          TabOverlap = 0
          Version = '2.1.3.1'
          PersistPagesState.Location = plRegistry
          PersistPagesState.Enabled = False
          TabOrder = 0
          object pagContable: TAdvTabSheet
            Caption = 'Ref.Contable'
            Color = clMenuHighlight
            ColorTo = clNone
            TabColor = clBtnFace
            TabColorTo = clNone
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object fncChartContable: TTMSFNCChart
              Left = 0
              Top = 0
              Width = 1350
              Height = 550
              Appearance.ColorList = <
                item
                  Color = 16105559
                end
                item
                  Color = 5644279
                end
                item
                  Color = 7936771
                end
                item
                  Color = 12275349
                end
                item
                  Color = 1296366
                end
                item
                  Color = 4350195
                end
                item
                  Color = 16544551
                end
                item
                  Color = 5820321
                end
                item
                  Color = 10922240
                end
                item
                  Color = 16376965
                end>
              Appearance.GlobalFont.Color = -1
              Appearance.GlobalFont.Scale = 1.000000000000000000
              Appearance.GlobalFont.Style = []
              Appearance.ColorScheme = ccsColorList
              Appearance.MonochromeColor = clSteelblue
              ClickMargin = 10.000000000000000000
              InteractionOptions.ScaleMode = smNone
              Legend.Fill.Kind = gfkSolid
              Legend.Stroke.Kind = gskSolid
              Legend.Font.Charset = DEFAULT_CHARSET
              Legend.Font.Color = clWindowText
              Legend.Font.Height = -11
              Legend.Font.Name = 'Tahoma'
              Legend.Font.Style = []
              Legend.Left = 10.000000000000000000
              Legend.Top = 10.000000000000000000
              SeriesMargins.Left = 0
              SeriesMargins.Top = 0
              SeriesMargins.Right = 0
              SeriesMargins.Bottom = 0
              DrawOrder = csdoNormal
              Series = <
                item
                  AnimationFactor = 4.000000000000000000
                  AutoXRange = arCommonZeroBased
                  AutoYRange = arCommon
                  Bar.Width = 65.000000000000000000
                  Bar.Spacing = 20.000000000000000000
                  MultiPoint.Width = 65.000000000000000000
                  Pie.Size = 229.000000000000000000
                  Pie.InnerSize = 4.000000000000000000
                  Pie.Margins.Left = 5
                  Pie.Margins.Top = 5
                  Pie.Margins.Right = 5
                  Pie.Margins.Bottom = 5
                  Pie.SweepAngle = 360.000000000000000000
                  Pie.Stacked = True
                  ChartType = ctPie
                  Fill.Color = clLightslategray
                  GroupIndex = 1
                  LegendText = 'Gastos'
                  Labels.Font.Charset = DEFAULT_CHARSET
                  Labels.Font.Color = clWindowText
                  Labels.Font.Height = -11
                  Labels.Font.Name = 'Tahoma'
                  Labels.Font.Style = []
                  Labels.Format = '%.2f'
                  Labels.OffsetY = -10.000000000000000000
                  Labels.Visible = True
                  Markers.Fill.Color = clLightslategray
                  Markers.Height = 10.000000000000000000
                  Markers.Stroke.Color = 4259584
                  Markers.Visible = True
                  Markers.Width = 10.000000000000000000
                  MaxX = 10.000000000000000000
                  MaxY = 10.000000000000000000
                  MaxYOffsetPercentage = 10.000000000000000000
                  Offset3DX = 15.000000000000000000
                  Offset3DY = 15.000000000000000000
                  Points = <
                    item
                      Annotations = <>
                      Color = 16105559
                      YValue = 52.000000000000000000
                      YValueSecond = 12.000000000000000000
                      YValueVariable = 32.000000000000000000
                      YValueLow = 46.000000000000000000
                      YValueClose = 44.000000000000000000
                      YValueHigh = 52.000000000000000000
                      YValueOpen = 59.000000000000000000
                      YValueMedian = 57.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 5644279
                      XValue = 1.000000000000000000
                      YValue = 136.000000000000000000
                      YValueSecond = 96.000000000000000000
                      YValueVariable = 116.000000000000000000
                      YValueLow = 72.000000000000000000
                      YValueClose = 130.000000000000000000
                      YValueHigh = 136.000000000000000000
                      YValueOpen = 143.000000000000000000
                      YValueMedian = 145.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 7936771
                      XValue = 2.000000000000000000
                      YValue = 53.000000000000000000
                      YValueSecond = 13.000000000000000000
                      YValueVariable = 33.000000000000000000
                      YValueLow = 23.000000000000000000
                      YValueClose = 46.000000000000000000
                      YValueHigh = 53.000000000000000000
                      YValueOpen = 47.000000000000000000
                      YValueMedian = 47.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 12275349
                      XValue = 3.000000000000000000
                      YValue = 98.000000000000000000
                      YValueSecond = 58.000000000000000000
                      YValueVariable = 78.000000000000000000
                      YValueLow = -5.000000000000000000
                      YValueClose = 105.000000000000000000
                      YValueHigh = 98.000000000000000000
                      YValueOpen = 104.000000000000000000
                      YValueMedian = 101.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 1296366
                      XValue = 4.000000000000000000
                      YValue = 92.000000000000000000
                      YValueSecond = 52.000000000000000000
                      YValueVariable = 72.000000000000000000
                      YValueLow = 76.000000000000000000
                      YValueClose = 95.000000000000000000
                      YValueHigh = 92.000000000000000000
                      YValueOpen = 97.000000000000000000
                      YValueMedian = 95.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 4350195
                      XValue = 5.000000000000000000
                      YValue = 137.000000000000000000
                      YValueSecond = 97.000000000000000000
                      YValueVariable = 117.000000000000000000
                      YValueLow = 39.000000000000000000
                      YValueClose = 137.000000000000000000
                      YValueHigh = 137.000000000000000000
                      YValueOpen = 130.000000000000000000
                      YValueMedian = 131.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 16544551
                      XValue = 6.000000000000000000
                      YValue = 119.000000000000000000
                      YValueSecond = 79.000000000000000000
                      YValueVariable = 99.000000000000000000
                      YValueLow = 63.000000000000000000
                      YValueClose = 117.000000000000000000
                      YValueHigh = 119.000000000000000000
                      YValueOpen = 111.000000000000000000
                      YValueMedian = 109.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 5820321
                      XValue = 7.000000000000000000
                      YValue = 154.000000000000000000
                      YValueSecond = 114.000000000000000000
                      YValueVariable = 134.000000000000000000
                      YValueLow = -6.000000000000000000
                      YValueClose = 146.000000000000000000
                      YValueHigh = 154.000000000000000000
                      YValueOpen = 163.000000000000000000
                      YValueMedian = 164.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 10922240
                      XValue = 8.000000000000000000
                      YValue = 39.000000000000000000
                      YValueSecond = -1.000000000000000000
                      YValueVariable = 19.000000000000000000
                      YValueLow = 26.000000000000000000
                      YValueClose = 30.000000000000000000
                      YValueHigh = 39.000000000000000000
                      YValueOpen = 48.000000000000000000
                      YValueMedian = 51.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 16376965
                      XValue = 9.000000000000000000
                      YValue = 45.000000000000000000
                      YValueSecond = 5.000000000000000000
                      YValueVariable = 25.000000000000000000
                      YValueLow = 20.000000000000000000
                      YValueClose = 52.000000000000000000
                      YValueHigh = 45.000000000000000000
                      YValueOpen = 36.000000000000000000
                      YValueMedian = 35.000000000000000000
                    end
                    item
                      Annotations = <>
                      Color = 10810476
                      XValue = 10.000000000000000000
                      YValue = 56.000000000000000000
                      YValueSecond = 16.000000000000000000
                      YValueVariable = 36.000000000000000000
                      YValueLow = 56.000000000000000000
                      YValueClose = 65.000000000000000000
                      YValueHigh = 56.000000000000000000
                      YValueOpen = 57.000000000000000000
                      YValueMedian = 61.000000000000000000
                    end>
                  Legend.Font.Charset = DEFAULT_CHARSET
                  Legend.Font.Color = clWindowText
                  Legend.Font.Height = -11
                  Legend.Font.Name = 'Tahoma'
                  Legend.Font.Style = []
                  Legend.Left = -10.000000000000000000
                  Stroke.Color = clDarkslategray
                  XGrid.Visible = True
                  XValues.AutoUnits = True
                  XValues.MajorUnit = 1.000000000000000000
                  XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
                  XValues.MajorUnitFont.Color = clWindowText
                  XValues.MajorUnitFont.Height = -11
                  XValues.MajorUnitFont.Name = 'Tahoma'
                  XValues.MajorUnitFont.Style = []
                  XValues.MajorUnitFormat = '%.0f'
                  XValues.MajorUnitSpacing = 5.000000000000000000
                  XValues.MajorUnitTickMarkSize = 8.000000000000000000
                  XValues.MajorUnitTickMarkColor = clSilver
                  XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
                  XValues.MinorUnitFont.Color = clWindowText
                  XValues.MinorUnitFont.Height = -11
                  XValues.MinorUnitFont.Name = 'Tahoma'
                  XValues.MinorUnitFont.Style = []
                  XValues.MinorUnitFormat = '%.0f'
                  XValues.MinorUnitSpacing = 5.000000000000000000
                  XValues.MinorUnitTickMarkSize = 7.000000000000000000
                  XValues.MinorUnitTickMarkColor = clSilver
                  XValues.Title.Font.Charset = DEFAULT_CHARSET
                  XValues.Title.Font.Color = clWindowText
                  XValues.Title.Font.Height = -11
                  XValues.Title.Font.Name = 'Tahoma'
                  XValues.Title.Font.Style = []
                  XValues.Title.TextMargins.Left = 0
                  XValues.Title.TextMargins.Top = 0
                  XValues.Title.TextMargins.Right = 0
                  XValues.Title.TextMargins.Bottom = 0
                  XValues.Title.Text = 'Ctas.'
                  XValues.Positions = [xpCenter]
                  YGrid.Visible = True
                  YGrid.SpiderLegend = True
                  YValues.MajorUnit = 1.000000000000000000
                  YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
                  YValues.MajorUnitFont.Color = clWindowText
                  YValues.MajorUnitFont.Height = -11
                  YValues.MajorUnitFont.Name = 'Tahoma'
                  YValues.MajorUnitFont.Style = []
                  YValues.MajorUnitFormat = '%.2f'
                  YValues.MajorUnitSpacing = 3.000000000000000000
                  YValues.MajorUnitTickMarkSize = 10.000000000000000000
                  YValues.MajorUnitTickMarkColor = clSilver
                  YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
                  YValues.MinorUnitFont.Color = clWindowText
                  YValues.MinorUnitFont.Height = -11
                  YValues.MinorUnitFont.Name = 'Tahoma'
                  YValues.MinorUnitFont.Style = []
                  YValues.MinorUnitFormat = '%.2f'
                  YValues.MinorUnitSpacing = 3.000000000000000000
                  YValues.MinorUnitTickMarkSize = 7.000000000000000000
                  YValues.MinorUnitTickMarkColor = clSilver
                  YValues.Title.Font.Charset = DEFAULT_CHARSET
                  YValues.Title.Font.Color = clWindowText
                  YValues.Title.Font.Height = -11
                  YValues.Title.Font.Name = 'Tahoma'
                  YValues.Title.Font.Style = []
                  YValues.Title.TextMargins.Left = 0
                  YValues.Title.TextMargins.Top = 0
                  YValues.Title.TextMargins.Right = 0
                  YValues.Title.TextMargins.Bottom = 0
                  YValues.Title.Text = 'Monto'
                  Crosshair.XTextStroke.Color = 16105559
                  Crosshair.XTextFill.Color = 16105559
                  Crosshair.XTextFont.Charset = DEFAULT_CHARSET
                  Crosshair.XTextFont.Color = clWhite
                  Crosshair.XTextFont.Height = -11
                  Crosshair.XTextFont.Name = 'Segoe UI'
                  Crosshair.XTextFont.Style = []
                  Crosshair.YTextStroke.Color = 16105559
                  Crosshair.YTextFill.Color = 16105559
                  Crosshair.YTextFont.Charset = DEFAULT_CHARSET
                  Crosshair.YTextFont.Color = clWhite
                  Crosshair.YTextFont.Height = -11
                  Crosshair.YTextFont.Name = 'Segoe UI'
                  Crosshair.YTextFont.Style = []
                  Crosshair.HorizontalLineStroke.Color = 16105559
                  Crosshair.VerticalLineStroke.Color = 16105559
                end>
              Title.Stroke.Kind = gskSolid
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Title.Height = 35.000000000000000000
              Title.TextMargins.Left = 3
              Title.TextMargins.Top = 3
              Title.TextMargins.Right = 3
              Title.TextMargins.Bottom = 3
              Title.Text = 'Gastos'
              XAxis.Stroke.Kind = gskSolid
              XAxis.Height = 35.000000000000000000
              XAxis.Positions = [xpTop]
              YAxis.Stroke.Kind = gskSolid
              YAxis.DisplayAtReferenceValue = True
              YAxis.ReferenceValue = 10.000000000000000000
              YAxis.Positions = [ypLeft]
              YAxis.Width = 30.000000000000000000
              DefaultLoadOptions.XValuesFormatString = '%.0f'
              DefaultLoadOptions.YValuesFormatString = '%.2f'
              DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
              OnSerieSliceClick = fncChartContableSerieSliceClick
              Align = alClient
              TabOrder = 0
            end
          end
          object pagCtroCosto: TAdvTabSheet
            Caption = 'CtroCosto'
            Color = clMenuHighlight
            ColorTo = clNone
            TabColor = clBtnFace
            TabColorTo = clNone
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object fncChartCtroCosto: TTMSFNCChart
              Left = 0
              Top = 0
              Width = 1350
              Height = 550
              Appearance.ColorList = <
                item
                  Color = 16105559
                end
                item
                  Color = 5644279
                end
                item
                  Color = 7936771
                end
                item
                  Color = 12275349
                end
                item
                  Color = 1296366
                end
                item
                  Color = 4350195
                end
                item
                  Color = 16544551
                end
                item
                  Color = 5820321
                end
                item
                  Color = 10922240
                end
                item
                  Color = 16376965
                end>
              Appearance.GlobalFont.Color = -1
              Appearance.GlobalFont.Scale = 1.000000000000000000
              Appearance.GlobalFont.Style = []
              Appearance.ColorScheme = ccsColorList
              Appearance.MonochromeColor = clSteelblue
              ClickMargin = 10.000000000000000000
              Legend.Fill.Kind = gfkSolid
              Legend.Stroke.Kind = gskSolid
              Legend.Font.Charset = DEFAULT_CHARSET
              Legend.Font.Color = clWindowText
              Legend.Font.Height = -11
              Legend.Font.Name = 'Tahoma'
              Legend.Font.Style = []
              Legend.Left = 10.000000000000000000
              Legend.Top = 10.000000000000000000
              SeriesMargins.Left = 0
              SeriesMargins.Top = 0
              SeriesMargins.Right = 0
              SeriesMargins.Bottom = 0
              Series = <
                item
                  AnimationFactor = 4.000000000000000000
                  AutoYRange = arCommonZeroBased
                  Bar.Width = 65.000000000000000000
                  Bar.Spacing = 20.000000000000000000
                  MultiPoint.Width = 65.000000000000000000
                  Pie.Size = 200.000000000000000000
                  Pie.Margins.Left = 10
                  Pie.Margins.Top = 10
                  Pie.Margins.Right = 10
                  Pie.Margins.Bottom = 10
                  Pie.SweepAngle = 360.000000000000000000
                  ChartType = ctStackedBar
                  Fill.Color = clLightslategray
                  LegendText = 'Serie 1'
                  Labels.Font.Charset = DEFAULT_CHARSET
                  Labels.Font.Color = clWindowText
                  Labels.Font.Height = -11
                  Labels.Font.Name = 'Tahoma'
                  Labels.Font.Style = []
                  Labels.Format = '%.2f'
                  Labels.OffsetY = -10.000000000000000000
                  Markers.Fill.Color = clLightslategray
                  Markers.Height = 10.000000000000000000
                  Markers.Stroke.Color = clDarkslategray
                  Markers.Visible = True
                  Markers.Width = 10.000000000000000000
                  MaxX = 10.000000000000000000
                  MaxY = 10.000000000000000000
                  MaxYOffsetPercentage = 10.000000000000000000
                  Offset3DX = 15.000000000000000000
                  Offset3DY = 15.000000000000000000
                  Points = <
                    item
                      Annotations = <>
                      YValue = 75.000000000000000000
                      YValueSecond = 35.000000000000000000
                      YValueVariable = 55.000000000000000000
                      YValueLow = 53.000000000000000000
                      YValueClose = 68.000000000000000000
                      YValueHigh = 75.000000000000000000
                      YValueOpen = 76.000000000000000000
                      YValueMedian = 79.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 1.000000000000000000
                      YValue = 112.000000000000000000
                      YValueSecond = 72.000000000000000000
                      YValueVariable = 92.000000000000000000
                      YValueLow = -3.000000000000000000
                      YValueClose = 114.000000000000000000
                      YValueHigh = 112.000000000000000000
                      YValueOpen = 118.000000000000000000
                      YValueMedian = 113.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 2.000000000000000000
                      YValue = 73.000000000000000000
                      YValueSecond = 33.000000000000000000
                      YValueVariable = 53.000000000000000000
                      YValueLow = 3.000000000000000000
                      YValueClose = 70.000000000000000000
                      YValueHigh = 73.000000000000000000
                      YValueOpen = 65.000000000000000000
                      YValueMedian = 61.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 3.000000000000000000
                      YValue = 105.000000000000000000
                      YValueSecond = 65.000000000000000000
                      YValueVariable = 85.000000000000000000
                      YValueLow = 49.000000000000000000
                      YValueClose = 103.000000000000000000
                      YValueHigh = 105.000000000000000000
                      YValueOpen = 104.000000000000000000
                      YValueMedian = 99.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 4.000000000000000000
                      YValue = 140.000000000000000000
                      YValueSecond = 100.000000000000000000
                      YValueVariable = 120.000000000000000000
                      YValueLow = 25.000000000000000000
                      YValueClose = 137.000000000000000000
                      YValueHigh = 140.000000000000000000
                      YValueOpen = 138.000000000000000000
                      YValueMedian = 141.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 5.000000000000000000
                      YValue = 83.000000000000000000
                      YValueSecond = 43.000000000000000000
                      YValueVariable = 63.000000000000000000
                      YValueLow = 51.000000000000000000
                      YValueClose = 73.000000000000000000
                      YValueHigh = 83.000000000000000000
                      YValueOpen = 88.000000000000000000
                      YValueMedian = 83.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 6.000000000000000000
                      YValue = 152.000000000000000000
                      YValueSecond = 112.000000000000000000
                      YValueVariable = 132.000000000000000000
                      YValueLow = 4.000000000000000000
                      YValueClose = 151.000000000000000000
                      YValueHigh = 152.000000000000000000
                      YValueOpen = 148.000000000000000000
                      YValueMedian = 147.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 7.000000000000000000
                      YValue = 44.000000000000000000
                      YValueSecond = 4.000000000000000000
                      YValueVariable = 24.000000000000000000
                      YValueLow = 58.000000000000000000
                      YValueClose = 42.000000000000000000
                      YValueHigh = 44.000000000000000000
                      YValueOpen = 51.000000000000000000
                      YValueMedian = 47.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 8.000000000000000000
                      YValue = 66.000000000000000000
                      YValueSecond = 26.000000000000000000
                      YValueVariable = 46.000000000000000000
                      YValueLow = 20.000000000000000000
                      YValueClose = 64.000000000000000000
                      YValueHigh = 66.000000000000000000
                      YValueOpen = 73.000000000000000000
                      YValueMedian = 72.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 9.000000000000000000
                      YValue = 61.000000000000000000
                      YValueSecond = 21.000000000000000000
                      YValueVariable = 41.000000000000000000
                      YValueLow = 77.000000000000000000
                      YValueClose = 67.000000000000000000
                      YValueHigh = 61.000000000000000000
                      YValueOpen = 67.000000000000000000
                      YValueMedian = 70.000000000000000000
                    end
                    item
                      Annotations = <>
                      XValue = 10.000000000000000000
                      YValue = 35.000000000000000000
                      YValueSecond = -5.000000000000000000
                      YValueVariable = 15.000000000000000000
                      YValueLow = 49.000000000000000000
                      YValueClose = 36.000000000000000000
                      YValueHigh = 35.000000000000000000
                      YValueOpen = 40.000000000000000000
                      YValueMedian = 44.000000000000000000
                    end>
                  Legend.Font.Charset = DEFAULT_CHARSET
                  Legend.Font.Color = clWindowText
                  Legend.Font.Height = -11
                  Legend.Font.Name = 'Tahoma'
                  Legend.Font.Style = []
                  Legend.Left = -10.000000000000000000
                  Stroke.Color = clDarkslategray
                  XGrid.Visible = True
                  XValues.MajorUnit = 1.000000000000000000
                  XValues.MajorUnitFont.Charset = DEFAULT_CHARSET
                  XValues.MajorUnitFont.Color = clWindowText
                  XValues.MajorUnitFont.Height = -11
                  XValues.MajorUnitFont.Name = 'Tahoma'
                  XValues.MajorUnitFont.Style = []
                  XValues.MajorUnitFormat = '%.0f'
                  XValues.MajorUnitSpacing = 5.000000000000000000
                  XValues.MajorUnitTickMarkSize = 10.000000000000000000
                  XValues.MajorUnitTickMarkColor = clSilver
                  XValues.MinorUnitFont.Charset = DEFAULT_CHARSET
                  XValues.MinorUnitFont.Color = clWindowText
                  XValues.MinorUnitFont.Height = -11
                  XValues.MinorUnitFont.Name = 'Tahoma'
                  XValues.MinorUnitFont.Style = []
                  XValues.MinorUnitFormat = '%.0f'
                  XValues.MinorUnitSpacing = 5.000000000000000000
                  XValues.MinorUnitTickMarkSize = 7.000000000000000000
                  XValues.MinorUnitTickMarkColor = clSilver
                  XValues.Title.Font.Charset = DEFAULT_CHARSET
                  XValues.Title.Font.Color = clWindowText
                  XValues.Title.Font.Height = -11
                  XValues.Title.Font.Name = 'Tahoma'
                  XValues.Title.Font.Style = []
                  XValues.Title.TextMargins.Left = 0
                  XValues.Title.TextMargins.Top = 0
                  XValues.Title.TextMargins.Right = 0
                  XValues.Title.TextMargins.Bottom = 0
                  XValues.Title.Text = 'X-Axis Serie 1'
                  YGrid.Visible = True
                  YValues.MajorUnit = 1.000000000000000000
                  YValues.MajorUnitFont.Charset = DEFAULT_CHARSET
                  YValues.MajorUnitFont.Color = clWindowText
                  YValues.MajorUnitFont.Height = -11
                  YValues.MajorUnitFont.Name = 'Tahoma'
                  YValues.MajorUnitFont.Style = []
                  YValues.MajorUnitFormat = '%.2f'
                  YValues.MajorUnitSpacing = 5.000000000000000000
                  YValues.MajorUnitTickMarkSize = 10.000000000000000000
                  YValues.MajorUnitTickMarkColor = clSilver
                  YValues.MinorUnitFont.Charset = DEFAULT_CHARSET
                  YValues.MinorUnitFont.Color = clWindowText
                  YValues.MinorUnitFont.Height = -11
                  YValues.MinorUnitFont.Name = 'Tahoma'
                  YValues.MinorUnitFont.Style = []
                  YValues.MinorUnitFormat = '%.2f'
                  YValues.MinorUnitSpacing = 5.000000000000000000
                  YValues.MinorUnitTickMarkSize = 7.000000000000000000
                  YValues.MinorUnitTickMarkColor = clSilver
                  YValues.Title.Font.Charset = DEFAULT_CHARSET
                  YValues.Title.Font.Color = clWindowText
                  YValues.Title.Font.Height = -11
                  YValues.Title.Font.Name = 'Tahoma'
                  YValues.Title.Font.Style = []
                  YValues.Title.TextMargins.Left = 0
                  YValues.Title.TextMargins.Top = 0
                  YValues.Title.TextMargins.Right = 0
                  YValues.Title.TextMargins.Bottom = 0
                  YValues.Title.Text = 'Y-Axis Serie 1'
                  Crosshair.XTextStroke.Color = 16105559
                  Crosshair.XTextFill.Color = 16105559
                  Crosshair.XTextFont.Charset = DEFAULT_CHARSET
                  Crosshair.XTextFont.Color = clWhite
                  Crosshair.XTextFont.Height = -11
                  Crosshair.XTextFont.Name = 'Segoe UI'
                  Crosshair.XTextFont.Style = []
                  Crosshair.YTextStroke.Color = 16105559
                  Crosshair.YTextFill.Color = 16105559
                  Crosshair.YTextFont.Charset = DEFAULT_CHARSET
                  Crosshair.YTextFont.Color = clWhite
                  Crosshair.YTextFont.Height = -11
                  Crosshair.YTextFont.Name = 'Segoe UI'
                  Crosshair.YTextFont.Style = []
                  Crosshair.HorizontalLineStroke.Color = 16105559
                  Crosshair.VerticalLineStroke.Color = 16105559
                end>
              Title.Stroke.Kind = gskSolid
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Title.Height = 35.000000000000000000
              Title.TextMargins.Left = 3
              Title.TextMargins.Top = 3
              Title.TextMargins.Right = 3
              Title.TextMargins.Bottom = 3
              Title.Text = 'TMS FNC Chart'
              XAxis.Stroke.Kind = gskSolid
              XAxis.Height = 35.000000000000000000
              YAxis.Stroke.Kind = gskSolid
              YAxis.Width = 35.000000000000000000
              DefaultLoadOptions.XValuesFormatString = '%.0f'
              DefaultLoadOptions.YValuesFormatString = '%.2f'
              DefaultLoadOptions.MaxYOffsetPercentage = 5.000000000000000000
              Align = alClient
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 662
    Width = 1366
    Align = alBottom
    ExplicitTop = 662
    ExplicitWidth = 1366
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
      Height = 29
      Action = Imprimir
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
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 692
    Width = 1366
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 692
    ExplicitWidth = 1366
    inherited sbEstado: TStatusBar
      Width = 1277
      SimplePanel = True
      SimpleText = '...'
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1277
    end
  end
  inherited ActionList1: TActionList
    Left = 544
    Top = 160
    inherited Buscar: TAction
      ShortCut = 0
    end
    object GenerarResumen: TAction
      Caption = 'Generar Resumen'
      OnExecute = GenerarResumenExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarCtaContable: TAction
      Caption = 'BuscarCtaContable'
      OnExecute = BuscarCtaContableExecute
    end
    object ExportarExcel: TAction
      Caption = 'Exportar Excel'
      OnExecute = ExportarExcelExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 696
    Top = 8
  end
  inherited ImageList1: TImageList
    Left = 352
    Top = 200
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
    Left = 488
    Top = 400
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 456
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 472
    Top = 504
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 544
    Top = 240
  end
  inherited QBrowse2: TFDQuery
    Left = 32
    Top = 640
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 112
    Top = 632
  end
  object DSTablaResumen: TDataSource
    DataSet = memTable
    Left = 967
    Top = 214
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40910.608602303240000000
    ReportOptions.LastChange = 40910.608602303240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 703
    Top = 302
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frGastosFc: TfrxDBDataset
    UserName = 'frGastosFc'
    CloseDataSource = False
    DataSource = DatosLstRefContable.DSGastosFcCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 719
    Top = 118
    FieldDefs = <
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE_STK'
        FieldAlias = 'DETALLE_STK'
      end
      item
        FieldName = 'SUCURSALCOMPRA'
        FieldAlias = 'SUCURSALCOMPRA'
      end
      item
        FieldName = 'CTA_CONTABLE'
        FieldAlias = 'CTA_CONTABLE'
      end
      item
        FieldName = 'CTA_CONTABLE_COD'
        FieldAlias = 'CTA_CONTABLE_COD'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end>
  end
  object frGastos: TfrxDBDataset
    UserName = 'frGastos'
    CloseDataSource = False
    DataSource = DatosLstRefContable.DSSaldosGastos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 663
    Top = 118
    FieldDefs = <
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_EGRESO'
        FieldAlias = 'ID_EGRESO'
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
        FieldName = 'RUBROGASTO'
        FieldAlias = 'RUBROGASTO'
      end
      item
        FieldName = 'CODIGOGASTO'
        FieldAlias = 'CODIGOGASTO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRAIDCOMPROBANTE'
        FieldAlias = 'MUESTRAIDCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRACTA'
        FieldAlias = 'MUESTRACTA'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'CTA_CONTABLE'
        FieldAlias = 'CTA_CONTABLE'
      end
      item
        FieldName = 'CTA_CONTABLE_COD'
        FieldAlias = 'CTA_CONTABLE_COD'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end>
  end
  object frResumen: TfrxDBDataset
    UserName = 'frResumen'
    CloseDataSource = False
    DataSource = DSTablaResumen
    BCDToCurrency = False
    DataSetOptions = []
    Left = 783
    Top = 246
    FieldDefs = <
      item
        FieldName = 'CTACONTABLE'
        FieldAlias = 'CTACONTABLE'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'ID_ORIGEN'
        FieldAlias = 'ID_ORIGEN'
      end
      item
        FieldName = 'TIPO_CPBTE'
        FieldAlias = 'TIPO_CPBTE'
      end
      item
        FieldName = 'CLASE_CPBTE'
        FieldAlias = 'CLASE_CPBTE'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'COD_CTA'
        FieldAlias = 'COD_CTA'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end>
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 613
    Top = 272
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
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
      ReportDocument.CreationDate = 44621.366464224530000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.Prefilter = pfvNever
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object memTable: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'CTACONTABLE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_ORIGEN'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_CPBTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASE_CPBTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'COD_CTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ANIO'
        DataType = ftInteger
      end
      item
        Name = 'MES'
        DataType = ftInteger
      end
      item
        Name = 'DEBE'
        DataType = ftFloat
      end
      item
        Name = 'HABER'
        DataType = ftFloat
      end
      item
        Name = 'CENTROCOSTO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 884
    Top = 208
    Content = {
      414442531000000003060000FF00010001FF02FF030400100000006D0065006D
      005400610062006C00650005000A0000005400610062006C0065000600000000
      00070000080032000000090000FF0AFF0B04001600000043005400410043004F
      004E005400410042004C00450005001600000043005400410043004F004E0054
      00410042004C0045000C00010000000E000D000F001400000010000111000112
      00011300180000004300740061002E0043006F006E007400610062006C006500
      14000115000116000117001600000043005400410043004F004E005400410042
      004C004500180014000000FEFF0B04000E00000044004500540041004C004C00
      450005000E00000044004500540041004C004C0045000C00020000000E000D00
      0F001400000010000111000112000113000E00000044006500740061006C006C
      00650014000115000116000117000E00000044004500540041004C004C004500
      180014000000FEFF0B040012000000490044005F004F0052004900470045004E
      00050012000000490044005F004F0052004900470045004E000C00030000000E
      001900100001110001120001130012000000490064002E004F00720069006700
      65006E00140001150001160001170012000000490044005F004F005200490047
      0045004E00FEFF0B0400140000005400490050004F005F004300500042005400
      45000500140000005400490050004F005F00430050004200540045000C000400
      00000E000D000F0002000000100001110001120001130012000000540070002E
      004F0072006900670065006E0014000115000116000117001400000054004900
      50004F005F0043005000420054004500180002000000FEFF0B04001600000043
      004C004100530045005F004300500042005400450005001600000043004C0041
      00530045005F00430050004200540045000C00050000000E000D000F00020000
      0010000111000112000113001200000043006C002E004F007200690067006500
      6E0014000115000116000117001600000043004C004100530045005F00430050
      00420054004500180002000000FEFF0B04000A00000046004500430048004100
      05000A000000460045004300480041000C00060000000E001A00100001110001
      12000113000A0000004600650063006800610014000115000116000117000A00
      000046004500430048004100FEFF0B04000E00000043004F0044005F00430054
      00410005000E00000043004F0044005F004300540041000C00070000000E000D
      000F001400000010000111000112000113001600000043006F00640069006700
      6F0020004300740061002E0014000115000116000117000E00000043004F0044
      005F00430054004100180014000000FEFF0B04000800000041004E0049004F00
      05000800000041004E0049004F000C00080000000E0019001000011100011200
      011300060000004100F1006F0014000115000116000117000800000041004E00
      49004F00FEFF0B0400060000004D00450053000500060000004D00450053000C
      00090000000E0019001000011100011200011300060000004D00650073001400
      011500011600011700060000004D0045005300FEFF0B04000800000044004500
      4200450005000800000044004500420045000C000A0000000E001B0010000111
      0001120001130008000000440065006200650014000115000116000117000800
      00004400450042004500FEFF0B04000A0000004800410042004500520005000A
      000000480041004200450052000C000B0000000E001B00100001110001120001
      13000A0000004800610062006500720014000115000116000117000A00000048
      004100420045005200FEFF0B040016000000430045004E00540052004F004300
      4F00530054004F00050016000000430045004E00540052004F0043004F005300
      54004F000C000C0000000E000D000F001400000010000111000112000113001E
      000000430065006E00740072006F00200064006500200043006F00730074006F
      00140001150001160001170016000000430045004E00540052004F0043004F00
      530054004F00180014000000FEFEFF1CFEFF1DFEFF1EFEFEFEFF1FFEFF20FF21
      FEFEFE0E004D0061006E0061006700650072001E005500700064006100740065
      0073005200650067006900730074007200790012005400610062006C0065004C
      006900730074000A005400610062006C00650008004E0061006D006500140053
      006F0075007200630065004E0061006D0065000A005400610062004900440024
      0045006E0066006F0072006300650043006F006E00730074007200610069006E
      00740073001E004D0069006E0069006D0075006D004300610070006100630069
      0074007900180043006800650063006B004E006F0074004E0075006C006C0014
      0043006F006C0075006D006E004C006900730074000C0043006F006C0075006D
      006E00100053006F0075007200630065004900440018006400740041006E0073
      00690053007400720069006E0067001000440061007400610054007900700065
      000800530069007A0065001400530065006100720063006800610062006C0065
      00120041006C006C006F0077004E0075006C006C00080042006100730065000E
      00430061007000740069006F006E0014004F0041006C006C006F0077004E0075
      006C006C0012004F0049006E0055007000640061007400650010004F0049006E
      00570068006500720065001A004F0072006900670069006E0043006F006C004E
      0061006D006500140053006F007500720063006500530069007A0065000E0064
      00740049006E007400330032000C006400740044006100740065001000640074
      0044006F00750062006C0065001C0043006F006E00730074007200610069006E
      0074004C00690073007400100056006900650077004C006900730074000E0052
      006F0077004C006900730074001800520065006C006100740069006F006E004C
      006900730074001C0055007000640061007400650073004A006F00750072006E
      0061006C000E004300680061006E00670065007300}
    object memTableCTACONTABLE: TStringField
      DisplayLabel = 'Cta.Contable'
      FieldName = 'CTACONTABLE'
    end
    object memTableDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object memTableID_ORIGEN: TIntegerField
      DisplayLabel = 'Id.Origen'
      FieldName = 'ID_ORIGEN'
    end
    object memTableTIPO_ORIGEN: TStringField
      DisplayLabel = 'Tp.Origen'
      FieldName = 'TIPO_CPBTE'
      Size = 2
    end
    object memTableCLASE_ORIGEN: TStringField
      DisplayLabel = 'Cl.Origen'
      FieldName = 'CLASE_CPBTE'
      Size = 2
    end
    object memTableFECHA: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object memTableCOD_CTA: TStringField
      DisplayLabel = 'Codigo Cta.'
      FieldName = 'COD_CTA'
    end
    object memTableANIO: TIntegerField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
    end
    object memTableMES: TIntegerField
      DisplayLabel = 'Mes'
      FieldName = 'MES'
    end
    object memTableDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object memTableHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object memTableCENTROCOSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'CENTROCOSTO'
    end
  end
  object memTGrafico: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 884
    Top = 272
    object memTGraficoCOD_CTA: TStringField
      DisplayLabel = 'Codigo Cuenta'
      FieldName = 'COD_CTA'
    end
    object memTGraficoDETALLE_CTA: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_CTA'
      Size = 50
    end
    object memTGraficoIMPORTE: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object memTGraficoCENTROCOSTO: TStringField
      DisplayLabel = 'Centro de Costo'
      FieldName = 'CENTROCOSTO'
    end
    object memTGraficoTotal: TAggregateField
      FieldName = 'Total'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(IMPORTE)'
    end
  end
  object spAsignaCtaContable: TFDStoredProc
    Connection = DMContable.fdcContables
    StoredProcName = 'ASIGNA_CTACONTABLE'
    Left = 892
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'COD_ELEMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Position = 2
        Name = 'CTA_CONTABLE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'TABLA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSTablaGrafico: TDataSource
    DataSet = memTGrafico
    Left = 983
    Top = 270
  end
  object frPersonal: TfrxDBDataset
    UserName = 'frPersonal'
    CloseDataSource = False
    DataSource = DatosLstRefContable.DSPersonal
    BCDToCurrency = False
    DataSetOptions = []
    Left = 852
    Top = 120
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
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'CTA_CONTABLE'
        FieldAlias = 'CTA_CONTABLE'
      end
      item
        FieldName = 'CTA_CONTABLE_COD'
        FieldAlias = 'CTA_CONTABLE_COD'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end>
  end
  object frGastosBco: TfrxDBDataset
    UserName = 'frGastosBco'
    CloseDataSource = False
    DataSource = DatosLstRefContable.DSGastosBco
    BCDToCurrency = False
    DataSetOptions = []
    Left = 932
    Top = 113
    FieldDefs = <
      item
        FieldName = 'CODIGO_CONCEPTO'
        FieldAlias = 'CODIGO_CONCEPTO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'SUCURSAL'
        FieldAlias = 'SUCURSAL'
      end
      item
        FieldName = 'CTA_CONTABLE'
        FieldAlias = 'CTA_CONTABLE'
      end
      item
        FieldName = 'CTA_CONTABLE_COD'
        FieldAlias = 'CTA_CONTABLE_COD'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end>
  end
  object frAranceles: TfrxDBDataset
    UserName = 'frAranceles'
    CloseDataSource = False
    DataSource = DatosLstRefContable.DSGastoAranceles
    BCDToCurrency = False
    DataSetOptions = []
    Left = 775
    Top = 462
    FieldDefs = <
      item
        FieldName = 'CONSTANT'
        FieldAlias = 'CONSTANT'
      end
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
        FieldName = 'NRO_LIQUIDACION'
        FieldAlias = 'NRO_LIQUIDACION'
      end
      item
        FieldName = 'ARANCEL'
        FieldAlias = 'ARANCEL'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end>
  end
  object frFinancieros: TfrxDBDataset
    UserName = 'frFinancieros'
    CloseDataSource = False
    DataSource = DatosLstRefContable.DSTCGastoFinaciero
    BCDToCurrency = False
    DataSetOptions = []
    Left = 847
    Top = 462
    FieldDefs = <
      item
        FieldName = 'CONSTANT'
        FieldAlias = 'CONSTANT'
      end
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
        FieldName = 'NRO_LIQUIDACION'
        FieldAlias = 'NRO_LIQUIDACION'
      end
      item
        FieldName = 'COSTO_FINANCIERO'
        FieldAlias = 'COSTO_FINANCIERO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end>
  end
  object frIngresos: TfrxDBDataset
    UserName = 'frIngresos'
    CloseDataSource = False
    DataSource = DatosLstRefContable.DSSaldoIng
    BCDToCurrency = False
    DataSetOptions = []
    Left = 775
    Top = 110
    FieldDefs = <
      item
        FieldName = 'ANIO'
        FieldAlias = 'ANIO'
      end
      item
        FieldName = 'MES'
        FieldAlias = 'MES'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'ID_INGRESO'
        FieldAlias = 'ID_INGRESO'
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
        FieldName = 'RUBROINGRESO'
        FieldAlias = 'RUBROINGRESO'
      end
      item
        FieldName = 'CODIGOINGRESO'
        FieldAlias = 'CODIGOINGRESO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'MUESTRARUBRO'
        FieldAlias = 'MUESTRARUBRO'
      end
      item
        FieldName = 'MUESTRAIDCOMPROBANTE'
        FieldAlias = 'MUESTRAIDCOMPROBANTE'
      end
      item
        FieldName = 'MUESTRACTA'
        FieldAlias = 'MUESTRACTA'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ID_CUENTA_CAJA'
        FieldAlias = 'ID_CUENTA_CAJA'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'CTA_CONTABLE'
        FieldAlias = 'CTA_CONTABLE'
      end
      item
        FieldName = 'CTA_CONTABLE_COD'
        FieldAlias = 'CTA_CONTABLE_COD'
      end>
  end
  object DataToXLS: TDataToXLS
    DataSet = memTGrafico
    Columns = <
      item
        DataField = 'COD_CTA'
        Title = 'Codigo Cuenta'
      end
      item
        DataField = 'DETALLE_CTA'
        Title = 'Detalle'
      end
      item
        DataField = 'IMPORTE'
        Title = 'Saldo'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'CENTROCOSTO'
        Title = 'Centro de Costo'
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
    Left = 928
    Top = 456
  end
  object SaveDialog: TSaveDialog
    Left = 788
    Top = 352
  end
  object PopupMenu1: TPopupMenu
    Left = 428
    Top = 160
    object MostrarAgrupamiento1: TMenuItem
      Caption = 'Mostrar Agrupamiento'
      OnClick = MostrarAgrupamiento1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportaraExcelcx1: TMenuItem
      Action = ExportarExcel
    end
  end
  object memTGraficoCtroCosto: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 892
    Top = 320
    object memTGraficoCtroCostoCENTROCOSTO: TStringField
      FieldName = 'CENTROCOSTO'
    end
    object memTGraficoCtroCostoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object AggregateField1: TAggregateField
      FieldName = 'Total'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(IMPORTE)'
    end
  end
  object DSGraficoCtroCosto: TDataSource
    DataSet = memTGraficoCtroCosto
    Left = 999
    Top = 318
  end
end
