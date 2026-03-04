object FormDetalleEntregas: TFormDetalleEntregas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Detalle de Entregas'
  ClientHeight = 524
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 819
  end
  object pnPie: TPanel
    Left = 0
    Top = 483
    Width = 838
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 819
    DesignSize = (
      838
      41)
    object BitBtn1: TBitBtn
      Left = 646
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 648
    end
    object BitBtn2: TBitBtn
      Left = 742
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 744
    end
  end
  object pnDetalle: TPanel
    Left = 0
    Top = 41
    Width = 838
    Height = 442
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 819
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 836
      Height = 440
      Align = alClient
      DataSource = DSDetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
    end
  end
  object DSDetalle: TDataSource
    Left = 240
    Top = 377
  end
end
