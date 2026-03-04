object FormNovedadesDetVentas: TFormNovedadesDetVentas
  Left = 0
  Top = 0
  Caption = 'Novedades Ventas'
  ClientHeight = 514
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 473
    Align = alClient
    BevelOuter = bvNone
    Color = clHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object dbgNovedades: TDBGrid
      Left = 5
      Top = 5
      Width = 849
      Height = 463
      Align = alClient
      DataSource = DSNovedades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 473
    Width = 859
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 20
    Padding.Top = 5
    Padding.Right = 20
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 1
    object btCerrar: TBitBtn
      Left = 20
      Top = 5
      Width = 819
      Height = 31
      Align = alClient
      Caption = 'Cerrar'
      TabOrder = 0
      OnClick = btCerrarClick
    end
  end
  object DSNovedades: TDataSource
    Left = 336
    Top = 208
  end
end
