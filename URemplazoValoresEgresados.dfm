object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 512
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnValoresActuales: TPanel
    Left = 0
    Top = 18
    Width = 1006
    Height = 401
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 126
      Height = 16
      Caption = 'Valores Ingresados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 31
      Width = 273
      Height = 330
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Enabled = False
        Navigator.Buttons.Post.Enabled = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'DEBE'
            Column = cxGrid1DBTableView1DEBE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1MODOPAGO: TcxGridDBColumn
          DataBinding.FieldName = 'MODOPAGO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 162
        end
        object cxGrid1DBTableView1DEBE: TcxGridDBColumn
          DataBinding.FieldName = 'DEBE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 87
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object TPanel
      Left = 287
      Top = 5
      Width = 705
      Height = 356
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        705
        356)
      inline FrameMovValoresEgresos1: TFrameMovValoresEgresos
        Left = 4
        Top = 6
        Width = 702
        Height = 316
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 702
        ExplicitHeight = 316
        inherited pcValores: TPageControl
          inherited tsEfectivo: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 419
            ExplicitHeight = 206
          end
          inherited tsChe3: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 419
            ExplicitHeight = 206
          end
          inherited tsCheques: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 419
            ExplicitHeight = 206
          end
        end
        inherited QBuscaTCredito: TSQLQuery
          Left = 648
        end
      end
    end
    object BitBtn1: TBitBtn
      Left = 782
      Top = 367
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 880
      Top = 367
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 3
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 18
    Align = alTop
    TabOrder = 1
  end
end
