object FormCodigosBarra: TFormCodigosBarra
  Left = 391
  Top = 112
  Caption = 'Codigos de Barra'
  ClientHeight = 342
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 241
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object dbgCodigosBarras: TJvDBGrid
      Left = 1
      Top = 1
      Width = 541
      Height = 178
      Align = alTop
      Ctl3D = False
      DataSource = DatosStock.DSCodigoBarra
      DrawingStyle = gdsClassic
      FixedColor = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clYellow
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOBARRA'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo Barra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 253
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAPRESENTACION'
          Title.Alignment = taCenter
          Title.Caption = 'Presentaci'#243'n'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRESENTACION_CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cant. x bulto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 280
      Top = 185
      Width = 225
      Height = 25
      DataSource = DatosStock.DSCodigoBarra
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Flat = True
      Ctl3D = True
      Hints.Strings = (
        'Insertar Nuevo'
        'Borrar'
        'Editar'
        'Gravar'
        'Cancelar')
      ParentCtl3D = False
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 1
      Top = 216
      Width = 541
      Height = 24
      Align = alBottom
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
    end
  end
end
