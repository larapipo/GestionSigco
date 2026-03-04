object FormFiltrosMarcas: TFormFiltrosMarcas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Filtros de Marcas'
  ClientHeight = 526
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 398
    Height = 492
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBlue
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 465
    object chlFiltroMarcas: TCheckListBox
      Left = 6
      Top = 6
      Width = 386
      Height = 466
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 17
      ParentFont = False
      TabOrder = 0
      OnClickCheck = chlFiltroMarcasClickCheck
      ExplicitHeight = 441
    end
  end
end
