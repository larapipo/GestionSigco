object FormCpbte_Produccion: TFormCpbte_Produccion
  Left = 325
  Top = 105
  BorderIcons = [biSystemMenu]
  Caption = 'Planilla de Produccion en Fc.de Vtas.'
  ClientHeight = 470
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poOwnerFormCenter
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 83
    Width = 591
    Height = 310
    Align = alTop
    TabOrder = 1
    object pnPie: TPanel
      Left = 1
      Top = 254
      Width = 589
      Height = 55
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 218
      object btSalir: TBitBtn
        Left = 486
        Top = 9
        Width = 75
        Height = 30
        Hint = 'Cerrar la ventana actual'
        Caption = '&Salir'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00008000000080000000800000008000000080
          000000800000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000080000000800000008000000080000000800000008000000080
          0000008000000080000000800000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00008000000080000000800000008000000080000000800000008000000080
          000000800000008000000080000000800000FF00FF00FF00FF00FF00FF000080
          0000008000000080000000800000008000000080000000800000008000000080
          00000080000000800000008000000080000000800000FF00FF00FF00FF000080
          00000080800000808000008000000080000000800000F0FBFF00F0FBFF008080
          80000080000000800000008000000080000000800000FF00FF00008000000080
          00000080800000808000008000000080000000800000C0DCC000FFFFFF00F0FB
          FF00808080000080000000800000008000000080000000800000008000000080
          8000008080000080800000800000008000000080000000800000A4A0A000FFFF
          FF00F0FBFF008080800000800000008000000080000000800000008000000080
          800000808000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000FFFF
          FF00FFFFFF00F0FBFF00A4A0A000008000000080000000800000008000008080
          800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C0DCC00000800000008000000080000000800000A4A0
          A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000C0DCC000FFFF
          FF00FFFFFF00C0DCC00000808000008000000080000000800000008000008080
          8000C0DCC00000808000008080000080800000808000A4A0A000F0FBFF00FFFF
          FF00C0DCC0000080800000800000008000000080000000800000FF00FF000080
          0000C0DCC000C0DCC000008080000080800080808000F0FBFF00FFFFFF00C0DC
          C00000808000008080000080000000FF000000800000FF00FF00FF00FF000080
          0000A4A0A000F0FBFF00C0DCC0000080800000808000C0DCC000C0DCC0000080
          8000008080000080800000FF00000080000000800000FF00FF00FF00FF00FF00
          FF0000800000A4A0A000F0FBFF00C0DCC000A4A0A00080808000808080008080
          800080808000008080000080800000800000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000080000000800000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
          C000A4A0A0000080800000808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00008080000080000000800000008000000080
          000000808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
        OnClick = btSalirClick
      end
    end
    object dbgDetalle: TJvDBGrid
      Left = 1
      Top = 1
      Width = 589
      Height = 253
      Align = alClient
      DataSource = DatosVentas.DSFc_Prod_Mov
      FixedColor = clInfoBk
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgDetalleColEnter
      OnEditButtonClick = BuscarArticuloExecute
      OnKeyPress = dbgDetalleKeyPress
      BevelInner = bvNone
      BevelOuter = bvNone
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 369
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD_REAL'
          Title.Alignment = taCenter
          Title.Caption = 'Cant.Real'
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end>
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 83
    Align = alTop
    Caption = 'pnCabecera'
    Enabled = False
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 2
    object lbCodigo: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label1: TLabel
      Left = 103
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Detalle'
    end
    object Label2: TLabel
      Left = 456
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object edCodigo: TDBEdit
      Left = 16
      Top = 35
      Width = 81
      Height = 21
      DataField = 'CODIGO'
      DataSource = DatosVentas.DSFc_Prod_Det
      TabOrder = 0
    end
    object edDetalle: TDBEdit
      Left = 103
      Top = 35
      Width = 338
      Height = 21
      DataField = 'DETALLE'
      DataSource = DatosVentas.DSFc_Prod_Det
      TabOrder = 1
    end
  end
  object edCantidad: TDBEdit
    Left = 456
    Top = 35
    Width = 106
    Height = 21
    DataField = 'CANTIDAD'
    DataSource = DatosVentas.DSFc_Prod_Det
    TabOrder = 0
    OnExit = edCantidadExit
  end
  object ActionList1: TActionList
    Left = 456
    Top = 384
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
  end
end
