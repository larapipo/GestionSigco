object FormLstCheRechazados: TFormLstCheRechazados
  Left = 0
  Top = 0
  Caption = 'Cheques Rechazados'
  ClientHeight = 533
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 425
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnBase'
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 790
    object Label1: TLabel
      Left = 10
      Top = 16
      Width = 330
      Height = 25
      Caption = 'Detalle de Cheques Rechazados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 687
      Top = 377
      Width = 83
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object lvCheques: TListView
      Left = 4
      Top = 47
      Width = 780
      Height = 324
      Columns = <
        item
          Caption = 'Nro Cheque'
          MinWidth = 100
          Width = 100
        end
        item
          Alignment = taCenter
          Caption = 'Fecha Rech.'
          MinWidth = 90
          Width = 90
        end
        item
          Alignment = taCenter
          Caption = 'Fecha Lev.'
          MinWidth = 90
          Width = 90
        end
        item
          Alignment = taRightJustify
          Caption = 'Monto'
        end
        item
          Caption = 'Pago Multa'
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'Causal'
          MinWidth = 200
          Width = 200
        end>
      TabOrder = 1
      ViewStyle = vsReport
    end
  end
end
