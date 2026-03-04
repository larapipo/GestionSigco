object FormBuscaDirectorio: TFormBuscaDirectorio
  Left = 282
  Top = 72
  Caption = 'Directorio'
  ClientHeight = 375
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 129
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object lbDirectorio: TLabel
      Left = 8
      Top = 33
      Width = 172
      Height = 13
      Caption = 'Seleccion de Directorio u /o Archivo'
    end
    object Panel1: TPanel
      Left = 1
      Top = 102
      Width = 560
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 63
      Width = 560
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object btCancelar: TBitBtn
        Left = 389
        Top = 7
        Width = 75
        Height = 25
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btCancelarClick
      end
      object btOk: TBitBtn
        Left = 470
        Top = 7
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btOkClick
      end
    end
  end
  object edDiretorio: TJvDirectoryEdit
    Left = 8
    Top = 8
    Width = 537
    Height = 19
    OnButtonClick = edDiretorioButtonClick
    DisplayLocalizedName = True
    BevelInner = bvNone
    BevelOuter = bvNone
    Flat = True
    ParentFlat = False
    DialogOptionsWin32 = [odBrowseForComputer, odOnlyDirectory, odStatusAvailable, odIncludeFiles, odIncludeUrls, odEditBox, odNewDialogStyle, odShareable, odUsageHint, odNoNewButtonFolder]
    InitialDir = 'C:\Users\Usuario\Desktop'
    MultipleDirs = True
    ButtonFlat = True
    TabOrder = 1
    Text = ''
    OnChange = edDiretorioChange
  end
end
