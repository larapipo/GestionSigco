object FormSucursalesExportacion: TFormSucursalesExportacion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Sucursales Exportacion'
  ClientHeight = 514
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnSucursales: TJvPanel
    Left = 0
    Top = 0
    Width = 294
    Height = 449
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 264
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
    end
    object Label6: TLabel
      Left = 8
      Top = 13
      Width = 125
      Height = 13
      Caption = 'Sucursales a Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvSucursales: TListView
      Left = 10
      Top = 33
      Width = 274
      Height = 406
      Align = alBottom
      Checkboxes = True
      Columns = <
        item
          Width = 30
        end
        item
          Alignment = taCenter
          Caption = 'Codigo'
        end
        item
          Alignment = taCenter
          Caption = 'Detalle'
          Width = 150
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      SortType = stData
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitLeft = 11
      ExplicitTop = 32
      ExplicitWidth = 272
    end
  end
end
