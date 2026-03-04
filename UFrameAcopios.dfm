object FrameAcopios: TFrameAcopios
  Left = 0
  Top = 0
  Width = 495
  Height = 308
  Padding.Left = 5
  Padding.Top = 5
  Padding.Right = 5
  Padding.Bottom = 5
  TabOrder = 0
  object Panel1: TPanel
    Left = 5
    Top = 5
    Width = 485
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 428
    object lbCliente: TLabel
      Left = 8
      Top = 6
      Width = 42
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbFact: TLabel
      Left = 224
      Top = 6
      Width = 18
      Height = 13
      Caption = 'Fc.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbFecha: TLabel
      Left = 224
      Top = 21
      Width = 36
      Height = 13
      Caption = 'Fecha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 46
    Width = 485
    Height = 160
    Align = alTop
    Padding.Left = 2
    Padding.Top = 2
    Padding.Right = 2
    Padding.Bottom = 2
    TabOrder = 1
    ExplicitWidth = 428
    object lvArticulos: TListView
      Left = 3
      Top = 3
      Width = 479
      Height = 154
      Align = alClient
      Columns = <
        item
          Caption = 'Detalle'
          Width = 150
        end
        item
          Alignment = taRightJustify
          Caption = 'Pedido'
          Width = 55
        end
        item
          Alignment = taRightJustify
          Caption = 'Entregado'
          Width = 55
        end
        item
          Alignment = taRightJustify
          Caption = 'Pendiente'
          Width = 55
        end>
      FlatScrollBars = True
      HotTrack = True
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitWidth = 422
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 206
    Width = 485
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 428
  end
end
