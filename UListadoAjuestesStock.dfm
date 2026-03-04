inherited FormListadoAjustesStock: TFormListadoAjustesStock
  Left = 306
  Top = 93
  Caption = 'Listado de Ajustes de Stock'
  ClientHeight = 688
  ClientWidth = 1142
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1160
  ExplicitHeight = 729
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1142
    Height = 635
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1142
    ExplicitHeight = 635
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 76
      Width = 1136
      Height = 556
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet3: TTabSheet
        Caption = 'Listado General'
        ImageIndex = 2
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1128
          Height = 528
          Align = alClient
          DataSource = DSRtoAjustes
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NROCPBTE'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEPOSITO'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRAMOTIVO'
              Title.Alignment = taCenter
              Width = 584
              Visible = True
            end>
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Listado'
        DesignSize = (
          1128
          528)
        object DBText1: TDBText
          Left = 104
          Top = 316
          Width = 599
          Height = 42
          DataField = 'OBS'
          DataSource = DSAjustes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RxLabel6: TJvLabel
          Left = 17
          Top = 505
          Width = 73
          Height = 13
          Caption = 'Observaciones'
          Anchors = [akLeft, akBottom]
          ShadowSize = 1
          ShadowPos = spLeftTop
          Transparent = True
          ExplicitTop = 508
        end
        object JvDBGrid1: TJvDBGrid
          Left = 0
          Top = 3
          Width = 1094
          Height = 485
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSAjustes
          DrawingStyle = gdsClassic
          FixedColor = clMaroon
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASECPBTE'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NROCPBTE'
              Title.Alignment = taCenter
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Width = 312
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_TOTAL'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MUESTRAEMPLEADO'
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object pn1: TPanel
          Left = 546
          Top = 494
          Width = 259
          Height = 31
          Anchors = [akLeft, akBottom]
          TabOrder = 1
          object edTotal: TJvCalcEdit
            Left = 131
            Top = 5
            Width = 121
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            TabStop = False
            AutoSize = False
            DisplayFormat = ',0.00 ;-,0.00 '
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Agrupado'
        ImageIndex = 1
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1128
          Height = 487
          Align = alClient
          DataSource = DSAjustes
          Groups = <>
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          ExplicitHeight = 402
          object cxDBPivotGrid1CODIGO: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'CODIGO'
            Visible = True
            UniqueName = 'Codigo'
          end
          object cxDBPivotGrid1DETALLE: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            DataBinding.FieldName = 'DETALLE'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid1UNIDAD: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'UNIDAD'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Visible = True
            UniqueName = 'Unidad'
          end
          object cxDBPivotGrid1NROCPBTE: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'NROCPBTE'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Visible = True
            UniqueName = 'Nro.Cpbte'
          end
          object cxDBPivotGrid1DEPOSITO: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'DEPOSITO'
            Visible = True
            UniqueName = 'Deposito'
          end
          object cxDBPivotGrid1CLASECPBTE: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'CLASECPBTE'
            Visible = True
            UniqueName = 'Cl.Cpbte'
          end
          object cxDBPivotGrid1TIPOCPBTE: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'TIPOCPBTE'
            Visible = True
            UniqueName = 'Tp.Cpbte'
          end
          object cxDBPivotGrid1MUESTRADEPOSITO: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'MUESTRADEPOSITO'
            Visible = True
            UniqueName = 'Deposito'
          end
          object cxDBPivotGrid1OBS: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'OBS'
            Visible = True
            UniqueName = 'Observaciones'
          end
          object cxDBPivotGrid1FECHA: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'FECHA'
            Visible = True
            UniqueName = 'Fecha'
          end
          object cxDBPivotGrid1PRECIO_UNITARIO: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'PRECIO_UNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Precio Unit.'
          end
          object cxDBPivotGrid1PRECIO_TOTAL: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'PRECIO_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Precio Total'
          end
          object cxDBPivotGrid1FECHACAB: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'FECHACAB'
            Visible = True
            UniqueName = 'Fecha Cpbte'
          end
          object cxDBPivotGrid1DETALLEMOTIVO: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLEMOTIVO'
            Visible = True
            UniqueName = 'Motivo Ajuste'
          end
          object cxDBPivotGrid1CODIGO_DETALLE: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'CODIGO_DETALLE'
            Visible = True
            UniqueName = 'Codigo/Detalle'
          end
          object cxDBPivotGrid1COSTO_UNITARIO: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'COSTO_UNITARIO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = True
            UniqueName = 'Costo Unit.'
          end
          object cxDBPivotGrid1COSTO_TOTAL: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'COSTO_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = True
            UniqueName = 'Costo Total'
          end
          object cxDBPivotGrid1CANTIDAD: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'CANTIDAD'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Visible = True
            UniqueName = 'Cantidad'
          end
          object cxDBPivotGrid1MUESTRAEMPLEADO: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'MUESTRAEMPLEADO'
            Visible = True
            UniqueName = 'Empleado'
          end
          object cxDBPivotGrid1DETALLE_RUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'DETALLE_RUBRO'
            Visible = True
            UniqueName = 'Detalle Rubro'
          end
          object cxDBPivotGrid1DETALLE_SUBRUBRO: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'DETALLE_SUBRUBRO'
            Visible = True
            UniqueName = 'Detalle SubRubro'
          end
        end
        object pnPie: TPanel
          Left = 0
          Top = 487
          Width = 1128
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 968
          ExplicitTop = 408
          ExplicitWidth = 185
          object Label2: TLabel
            Left = 9
            Top = 9
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label2Click
          end
          object Label5: TLabel
            Left = 109
            Top = 9
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Muestra Totales'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label5Click
          end
        end
        object pnTotales: TJvPanel
          Left = 19
          Top = 314
          Width = 320
          Height = 127
          Color = clTeal
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 2
          Visible = False
          object Label4: TLabel
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
            Left = 286
            Top = 4
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
            Top = 32
            Width = 300
            Height = 77
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 17
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
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1142
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object RxLabel1: TJvLabel
        Left = 825
        Top = 14
        Width = 33
        Height = 13
        Caption = 'Desde'
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
      object RxLabel2: TJvLabel
        Left = 537
        Top = 12
        Width = 49
        Height = 13
        Caption = 'Dep'#243'sitos'
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
      object RxLabel3: TJvLabel
        Left = 956
        Top = 14
        Width = 30
        Height = 13
        Caption = 'Hasta'
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
      object RxLabel4: TJvLabel
        Left = 89
        Top = 14
        Width = 58
        Height = 13
        Caption = 'Descripci'#243'n'
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
      object RxLabel5: TJvLabel
        Left = 9
        Top = 14
        Width = 35
        Height = 13
        Caption = 'Codigo'
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
      object UpDown1: TUpDown
        Left = 1051
        Top = 32
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 0
        OnClick = UpDown1Click
      end
      object Hasta: TJvDateEdit
        Left = 956
        Top = 31
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
      object edDetalle: TEdit
        Left = 89
        Top = 31
        Width = 273
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 2
      end
      object Desde: TJvDateEdit
        Left = 825
        Top = 31
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
        TabOrder = 3
      end
      object dbcDeposito: TJvDBLookupCombo
        Left = 537
        Top = 31
        Width = 208
        Height = 21
        DisplayEmpty = 'Todos los Depositos'
        EmptyValue = '-1'
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSDepositos
        TabOrder = 4
        OnClick = BuscarExecute
      end
      object ceCodigo: TJvComboEdit
        Left = 9
        Top = 31
        Width = 73
        Height = 21
        ButtonWidth = 16
        Color = clBtnFace
        Enabled = False
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        TabOrder = 6
        Text = ''
        OnButtonClick = BucarArticuloExecute
        OnKeyDown = ceCodigoKeyDown
      end
      object chbPorArticulo: TAdvOfficeCheckBox
        Left = 249
        Top = 5
        Width = 113
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        TabStop = True
        OnClick = chbPorArticuloClick
        Alignment = taRightJustify
        Caption = 'Busca por Articulo'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 635
    Width = 1142
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 635
    ExplicitWidth = 1142
    inherited btConfirma: TBitBtn
      Width = 31
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitWidth = 31
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Left = 33
      Width = 34
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 33
      ExplicitWidth = 34
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Left = 67
      Width = 36
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 67
      ExplicitWidth = 36
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Left = 103
      Width = 38
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 103
      ExplicitWidth = 38
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Left = 141
      Height = 28
      Visible = False
      ExplicitLeft = 141
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 156
      Height = 28
      DoubleBuffered = True
      ExplicitLeft = 156
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 231
      Height = 28
      Visible = False
      ExplicitLeft = 231
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 246
      Width = 31
      Height = 28
      DoubleBuffered = True
      Visible = False
      ExplicitLeft = 246
      ExplicitWidth = 31
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 277
      Height = 28
      DoubleBuffered = True
      ExplicitLeft = 277
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 352
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object BitBtn1: TBitBtn
      Left = 360
      Top = 0
      Width = 75
      Height = 28
      Action = Imprimir
      Caption = 'Imprimir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF006C6A6A006C6A6A00FF00FF00FF00FF006C6A6A006C6A
        6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006C6A6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3
        E3006C6A6A006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006C6A6A00DAD9D900A19F9F00A19F9F00A19F9F0037363600353535006C6D
        6D00BFBFBF00E1E2E200B7B6B6006C6A6A006C6A6A006C6A6A00FF00FF006C6A
        6A00D4D3D300CACACA008E8C8C008E8C8C008E8C8C003C3B3B000A090A000707
        07000B0B0B00070707007A7A7A00BBBBBB006C6A6A00FF00FF006C6A6A00CACA
        CA00CACACA008E8C8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A0008886
        86005E5B5C000707070009090900080808006C6A6A00767373006C6A6A00CACA
        CA008E8C8C00EFEEEE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCE
        CE00BDBCBC00ADABAB008B898900585656007A787800757373006C6A6A008E8C
        8C00FFFFFF00FEFCFC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0
        C100D7D7D700D8D8D800C7C6C600B7B6B600918F8F006C696900FF00FF006C6A
        6A006C6A6A00EDEBEB00B1A6A7007A6F72008A83880096929500969091009D97
        98009A9395009E989900BBBABA00D1D1D100C2C2C2006C6A6A00FF00FF00FF00
        FF00FF00FF006C6A6A00BB897F00A7876D008B6F64007D6760006F6265007973
        79008F8B8E00A9A3A400CBCACA00C1C1C1006C6A6A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BD828100FFE3B400FFD39F00E9B28100C9997300BA91
        6C00BD828100807D7E006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC6
        8800BD828100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0868300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD828100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BD828100FFFFF200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BD828100BD828100BD828100FBEFE200FBE3CF00FBDDC200BD828100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD828100BD828100BD828100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 7
    end
    object BitBtn4: TBitBtn
      Left = 435
      Top = 0
      Width = 96
      Height = 28
      Action = ExportarXLS
      Caption = 'Exportar XLS'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
        078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
        BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
        CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
        FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
        D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
        CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
        FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
        A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
        EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
        FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
        1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
        87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
        FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
        750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
        FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
        FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
        D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
        00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
        C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
        89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 8
    end
  end
  inherited Panel1: TPanel
    Top = 665
    Width = 1142
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 665
    ExplicitWidth = 1142
    inherited DBStatusLabel1: TJvDBStatusLabel
      Visible = False
    end
    inherited sbEstado: TStatusBar
      Width = 1053
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 1053
    end
  end
  inherited ActionList1: TActionList
    Left = 480
    Top = 48
    object BucarArticulo: TAction
      Caption = 'BucarArticulo'
      OnExecute = BucarArticuloExecute
    end
    object Imprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ImprimirExecute
    end
    object ExportarXLS: TAction
      Caption = 'Exportar XLS'
      OnExecute = ExportarXLSExecute
    end
    object Sumar: TAction
      Caption = 'Sumar'
      OnExecute = SumarExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 584
    Top = 152
  end
  inherited ImageList1: TImageList
    Left = 224
    Top = 40
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
    Top = 280
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 24
    Top = 344
  end
  inherited ImageListDos: TImageList
    Left = 208
    Top = 224
  end
  object DSAjustes: TDataSource
    DataSet = CDSAjustes
    Left = 272
    Top = 248
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
    Left = 496
    Top = 352
  end
  object frAjustes: TfrxDBDataset
    UserName = 'frAjustes'
    CloseDataSource = False
    DataSet = CDSAjustes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 376
    FieldDefs = <
      item
        FieldName = 'ID_RTO_DET'
        FieldAlias = 'ID_RTO_DET'
      end
      item
        FieldName = 'ID_RTO_CAB'
        FieldAlias = 'ID_RTO_CAB'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'DEPOSITO'
        FieldAlias = 'DEPOSITO'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'AFECTASTOCK'
        FieldAlias = 'AFECTASTOCK'
      end
      item
        FieldName = 'CON_NRO_SERIE'
        FieldAlias = 'CON_NRO_SERIE'
      end
      item
        FieldName = 'MUESTRADEPOSITO'
        FieldAlias = 'MUESTRADEPOSITO'
      end
      item
        FieldName = 'OBS'
        FieldAlias = 'OBS'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'PRECIO_UNITARIO'
        FieldAlias = 'PRECIO_UNITARIO'
      end
      item
        FieldName = 'PRECIO_TOTAL'
        FieldAlias = 'PRECIO_TOTAL'
      end
      item
        FieldName = 'FECHACAB'
        FieldAlias = 'FECHACAB'
      end
      item
        FieldName = 'DETALLEMOTIVO'
        FieldAlias = 'DETALLEMOTIVO'
      end
      item
        FieldName = 'CODIGO_DETALLE'
        FieldAlias = 'CODIGO_DETALLE'
      end
      item
        FieldName = 'COSTO_UNITARIO'
        FieldAlias = 'COSTO_UNITARIO'
      end
      item
        FieldName = 'COSTO_TOTAL'
        FieldAlias = 'COSTO_TOTAL'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'STOCK_ACTUAL_COMPRA'
        FieldAlias = 'STOCK_ACTUAL_COMPRA'
      end
      item
        FieldName = 'STOCK_ACTUAL_VTA'
        FieldAlias = 'STOCK_ACTUAL_VTA'
      end
      item
        FieldName = 'MUESTRAEMPLEADO'
        FieldAlias = 'MUESTRAEMPLEADO'
      end>
  end
  object frxReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39785.472305046300000000
    ReportOptions.LastChange = 39785.472305046300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'AjustesStock'
    InitialDir = 'c:\'
    Title = 'Archivo de Retenciones'
    Left = 360
    Top = 192
  end
  object DataToXLS: TDataToXLS
    DataSet = CDSAjustes
    Columns = <
      item
        DataField = 'ID_RTO_DET'
        Title = 'ID_RTO_DET'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'ID_RTO_CAB'
        Title = 'ID_RTO_CAB'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'CODIGO'
        Title = 'Codigo'
      end
      item
        DataField = 'DETALLE'
        Title = 'Detalle'
      end
      item
        DataField = 'UNIDAD'
        Title = 'Unidad'
      end
      item
        DataField = 'CANTIDAD'
        Title = 'Cantidad'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'NROCPBTE'
        Title = 'Nro.Cpbte'
      end
      item
        DataField = 'DEPOSITO'
        Title = 'Dep.'
        Alignment = taRightJustify
        DataType = ctInteger
      end
      item
        DataField = 'CLASECPBTE'
        Title = 'Cl'
      end
      item
        DataField = 'TIPOCPBTE'
        Title = 'TIPOCPBTE'
      end
      item
        DataField = 'AFECTASTOCK'
        Title = 'AFECTASTOCK'
      end
      item
        DataField = 'STOCK_ACTUAL_COMPRA'
        Title = 'STOCK_ACTUAL_COMPRA'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'STOCK_ACTUAL_VTA'
        Title = 'STOCK_ACTUAL_VTA'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'CON_NRO_SERIE'
        Title = 'CON_NRO_SERIE'
      end
      item
        DataField = 'MUESTRADEPOSITO'
        Title = 'Deposito'
      end
      item
        DataField = 'OBS'
        Title = 'OBS'
      end
      item
        DataField = 'FECHA'
        Title = 'Fecha'
      end
      item
        DataField = 'COSTO_UNITARIO'
        Title = 'C.Unit.'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'COSTO_TOTAL'
        Title = 'C.Total'
        Alignment = taRightJustify
        DataType = ctDouble
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
    Left = 360
    Top = 384
  end
  object CDSAjustes: TClientDataSet
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
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAjustes'
    OnCalcFields = CDSAjustesCalcFields
    Left = 216
    Top = 280
    object CDSAjustesID_RTO_DET: TIntegerField
      FieldName = 'ID_RTO_DET'
      Origin = 'ID_RTO_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSAjustesID_RTO_CAB: TIntegerField
      FieldName = 'ID_RTO_CAB'
      Origin = 'ID_RTO_CAB'
    end
    object CDSAjustesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSAjustesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSAjustesUNIDAD: TStringField
      DisplayLabel = 'Unidad'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSAjustesNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSAjustesDEPOSITO: TIntegerField
      DisplayLabel = 'Deposito'
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSAjustesCLASECPBTE: TStringField
      DisplayLabel = 'Cl.Cpbte'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSAjustesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.Cpbte'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSAjustesAFECTASTOCK: TStringField
      FieldName = 'AFECTASTOCK'
      Origin = 'AFECTASTOCK'
      Size = 1
    end
    object CDSAjustesCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      FixedChar = True
      Size = 1
    end
    object CDSAjustesMUESTRADEPOSITO: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'MUESTRADEPOSITO'
      Size = 25
    end
    object CDSAjustesOBS: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 120
    end
    object CDSAjustesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSAjustesPRECIO_UNITARIO: TFloatField
      DisplayLabel = 'Precio Unit.'
      FieldName = 'PRECIO_UNITARIO'
      Origin = 'PRECIO_UNITARIO'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSAjustesPRECIO_TOTAL: TFloatField
      DisplayLabel = 'Precio Total'
      FieldName = 'PRECIO_TOTAL'
      Origin = 'PRECIO_TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
      EditFormat = ',0.00'
    end
    object CDSAjustesDETALLEMOTIVO: TStringField
      DisplayLabel = 'Motivo Ajuste'
      FieldName = 'DETALLEMOTIVO'
      Origin = 'DETALLEMOTIVO'
      Size = 50
    end
    object CDSAjustesCODIGO_DETALLE: TStringField
      DisplayLabel = 'Codigo/Detalle'
      FieldKind = fkCalculated
      FieldName = 'CODIGO_DETALLE'
      ProviderFlags = []
      Size = 80
      Calculated = True
    end
    object CDSAjustesCOSTO_UNITARIO: TFloatField
      DisplayLabel = 'Costo Unit.'
      FieldName = 'COSTO_UNITARIO'
      Origin = 'COSTO_UNITARIO'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAjustesCOSTO_TOTAL: TFloatField
      DisplayLabel = 'Costo Total'
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAjustesCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAjustesSTOCK_ACTUAL_COMPRA: TFloatField
      FieldName = 'STOCK_ACTUAL_COMPRA'
      Origin = 'STOCK_ACTUAL_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAjustesSTOCK_ACTUAL_VTA: TFloatField
      FieldName = 'STOCK_ACTUAL_VTA'
      Origin = 'STOCK_ACTUAL_VTA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSAjustesMUESTRAEMPLEADO: TStringField
      DisplayLabel = 'Empleado'
      FieldName = 'MUESTRAEMPLEADO'
      Origin = 'MUESTRAEMPLEADO'
      Size = 50
    end
    object CDSAjustesDETALLE_RUBRO: TStringField
      DisplayLabel = 'Detalle Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Size = 35
    end
    object CDSAjustesDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Detalle SubRubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object CDSAjustesFECHACAB: TSQLTimeStampField
      DisplayLabel = 'Fecha Cpbte'
      FieldName = 'FECHACAB'
      Origin = 'FECHACAB'
    end
  end
  object DSPAjustes: TDataSetProvider
    DataSet = QAjustes
    Left = 88
    Top = 224
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 179
    Top = 405
  end
  object DSPBuscadorMov: TDataSetProvider
    DataSet = QBuscadorMov
    Left = 762
    Top = 152
  end
  object CDSBuscadorMov: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorMov'
    Left = 858
    Top = 152
    object CDSBuscadorMovDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 30
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object CDSBuscadorMovID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object CDSRtoAjustes: TClientDataSet
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
    ProviderName = 'DSPRtoAjustes'
    AfterInsert = CDSRtoAjustesAfterInsert
    AfterPost = CDSRtoAjustesAfterPost
    Left = 888
    Top = 296
    object CDSRtoAjustesID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRtoAjustesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSRtoAjustesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object CDSRtoAjustesSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Origin = 'SUCRTO'
      Size = 4
    end
    object CDSRtoAjustesNUMRTO: TStringField
      FieldName = 'NUMRTO'
      Origin = 'NUMRTO'
      Size = 8
    end
    object CDSRtoAjustesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object CDSRtoAjustesNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSRtoAjustesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSRtoAjustesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSRtoAjustesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 120
    end
    object CDSRtoAjustesDEPOSITO: TIntegerField
      DisplayLabel = 'Deposito'
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSRtoAjustesAJUSTE_CERO_STOCK: TStringField
      FieldName = 'AJUSTE_CERO_STOCK'
      Origin = 'AJUSTE_CERO_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRtoAjustesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSRtoAjustesFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSRtoAjustesLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object CDSRtoAjustesMOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Required = True
    end
    object CDSRtoAjustesMUESTRAMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldKind = fkLookup
      FieldName = 'MUESTRAMOTIVO'
      LookupDataSet = CDSBuscadorMov
      LookupKeyFields = 'ID'
      LookupResultField = 'DETALLE'
      KeyFields = 'MOTIVO'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object CDSRtoAjustesTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object CDSRtoAjustesTOTAL_VTA: TFloatField
      FieldName = 'TOTAL_VTA'
      Origin = 'TOTAL_VTA'
      Required = True
    end
  end
  object DSPRtoAjustes: TDataSetProvider
    DataSet = QRtoAjustes
    Left = 792
    Top = 304
  end
  object DSRtoAjustes: TDataSource
    DataSet = CDSRtoAjustes
    Left = 896
    Top = 384
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 136
    Top = 216
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_stk, detalle_stk From Stock where codigo_stk=:Codi' +
        'go')
    Left = 230
    Top = 466
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QArticulosCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticulosDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object QRtoAjustes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select rc.* from rtomercacab rc where (rc.fecha between :desde a' +
        'nd :hasta)')
    Left = 702
    Top = 250
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
  object QBuscadorMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_MOTIVO_AJ_STOCK')
    Left = 678
    Top = 170
    object QBuscadorMovID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorMovDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos order by nombre')
    Left = 102
    Top = 402
    object QDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QAjustes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rc.fecha as FechaCab, rd.*,d.nombre as MuestraDeposito,'
      
        '       rc.obs,tm.detalle as DetalleMotivo,rc.personal_retira,pe.' +
        'nombre as MuestraEmpleado,'
      '       s.rubro_stk,s.subrubro_stk,'
      '       r.detalle_rubro,sr.detalle_subrubro from rtomercadet rd'
      'left join rtomercacab rc on rc.id_rto=rd.id_rto_cab'
      'left join depositos d on d.id=rc.deposito'
      'left join tabla_motivo_aj_stock tm on tm.id=rc.motivo'
      'left join personal pe on pe.codigo=rc.personal_retira'
      'left join stock s on s.codigo_stk=rd.codigo'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where (rc.fecha between :desde and :hasta)'
      '  and ( rc.deposito = :deposito or :deposito = -1 )'
      '  and ( rd.codigo = :codigo or :codigo = '#39'********'#39' )')
    Left = 38
    Top = 225
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
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 652
    Top = 329
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
end
