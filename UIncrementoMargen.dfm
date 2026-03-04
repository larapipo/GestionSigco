object FormIncrementoMargen: TFormIncrementoMargen
  Left = 0
  Top = 0
  Caption = 'Incremento de Margen'
  ClientHeight = 230
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 185
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 66
      Top = 50
      Width = 192
      Height = 32
      Caption = 'Valor Incremental'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edValor: TEdit
      Left = 337
      Top = 43
      Width = 160
      Height = 45
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
    end
    object pnPie: TPanel
      Left = 1
      Top = 136
      Width = 553
      Height = 48
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      Padding.Left = 4
      Padding.Top = 4
      Padding.Right = 4
      Padding.Bottom = 4
      TabOrder = 1
      object btCancel: TBitBtn
        Left = 5
        Top = 5
        Width = 256
        Height = 38
        Align = alLeft
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ModalResult = 2
        ParentFont = False
        TabOrder = 0
        OnClick = btCancelClick
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 39
      end
      object btOk: TBitBtn
        Left = 292
        Top = 5
        Width = 256
        Height = 38
        Align = alRight
        Caption = 'Aplicar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 1
        OnClick = btOkClick
        ExplicitLeft = 296
        ExplicitTop = 1
        ExplicitHeight = 39
      end
    end
  end
end
