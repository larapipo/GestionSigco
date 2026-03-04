object FormLeerPDF: TFormLeerPDF
  Left = 0
  Top = 0
  Caption = 'Lector de PDF'
  ClientHeight = 621
  ClientWidth = 1153
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 449
    Top = 25
    Height = 555
    ExplicitLeft = 455
    ExplicitTop = 8
    ExplicitHeight = 472
  end
  object pnPie: TPanel
    Left = 0
    Top = 580
    Width = 1153
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 556
    ExplicitWidth = 1162
    DesignSize = (
      1153
      41)
    object btOpenPDF: TButton
      Left = 16
      Top = 9
      Width = 121
      Height = 25
      Caption = 'Open PDF'
      TabOrder = 0
      OnClick = btOpenPDFClick
    end
    object Memo1: TMemo
      Left = 192
      Top = 6
      Width = 185
      Height = 25
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
      Visible = False
    end
    object btnExtract: TButton
      Left = 476
      Top = 9
      Width = 209
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Extract info from invoice'
      Enabled = False
      TabOrder = 2
      OnClick = btnExtractClick
      ExplicitLeft = 485
    end
    object Enviar: TButton
      Left = 1045
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar'
      ModalResult = 1
      TabOrder = 3
      OnClick = EnviarClick
      ExplicitLeft = 1054
    end
  end
  object pnPDF: TPanel
    Left = 0
    Top = 25
    Width = 449
    Height = 555
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 531
    object AdvPDFViewer1: TAdvPDFViewer
      Left = 1
      Top = 1
      Width = 447
      Height = 553
      Align = alClient
      ParentDoubleBuffered = False
      Color = clWhitesmoke
      DoubleBuffered = True
      TabOrder = 0
      Fill.Color = clWhitesmoke
      Options.Footer = 'PDF Titulo'
      Options.HeaderFont.Charset = DEFAULT_CHARSET
      Options.HeaderFont.Color = clWindowText
      Options.HeaderFont.Height = -12
      Options.HeaderFont.Name = 'Segoe UI'
      Options.HeaderFont.Style = []
      Options.FooterFont.Charset = DEFAULT_CHARSET
      Options.FooterFont.Color = clWindowText
      Options.FooterFont.Height = -12
      Options.FooterFont.Name = 'Segoe UI'
      Options.FooterFont.Style = []
      Options.HeaderMargins.Left = 5.000000000000000000
      Options.HeaderMargins.Top = 5.000000000000000000
      Options.HeaderMargins.Right = 5.000000000000000000
      Options.HeaderMargins.Bottom = 5.000000000000000000
      Options.FooterMargins.Left = 5.000000000000000000
      Options.FooterMargins.Top = 5.000000000000000000
      Options.FooterMargins.Right = 5.000000000000000000
      Options.FooterMargins.Bottom = 5.000000000000000000
      Options.PageNumberMargins.Left = 10.000000000000000000
      Options.PageNumberMargins.Top = 5.000000000000000000
      Options.PageNumberMargins.Right = 10.000000000000000000
      Options.PageNumberMargins.Bottom = 5.000000000000000000
      Options.PageNumberFormat = '%d / %d'
      Options.PageNumberFont.Charset = DEFAULT_CHARSET
      Options.PageNumberFont.Color = clWindowText
      Options.PageNumberFont.Height = -12
      Options.PageNumberFont.Name = 'Segoe UI'
      Options.PageNumberFont.Style = []
      Options.PageMargins.Left = 5.000000000000000000
      Options.PageMargins.Top = 5.000000000000000000
      Options.PageMargins.Right = 5.000000000000000000
      Options.PageMargins.Bottom = 5.000000000000000000
      Options.DefaultThumbnail.Data = {
        1054544D53464E435356474269746D6170D20300003C3F786D6C207665727369
        6F6E3D22312E302220656E636F64696E673D2269736F2D383835392D31223F3E
        0D0A3C212D2D2055706C6F6164656420746F3A20535647205265706F2C207777
        772E7376677265706F2E636F6D2C2047656E657261746F723A20535647205265
        706F204D6978657220546F6F6C73202D2D3E0D0A3C7376672076657273696F6E
        3D22312E31222069643D224C617965725F312220786D6C6E733D22687474703A
        2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C69
        6E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B
        22200D0A092076696577426F783D2230203020343835203438352220786D6C3A
        73706163653D227072657365727665223E0D0A3C673E0D0A093C673E0D0A0909
        3C706F6C79676F6E207374796C653D2266696C6C3A234146423642423B222070
        6F696E74733D223333372E352C372E35203432322E352C39372E35203333372E
        352C39372E35200909222F3E0D0A09093C706F6C79676F6E207374796C653D22
        66696C6C3A234632463246323B2220706F696E74733D223432322E352C39372E
        35203432322E352C3437372E352036322E352C3437372E352036322E352C372E
        35203333372E352C372E35203333372E352C39372E35200909222F3E0D0A093C
        2F673E0D0A093C673E0D0A09093C673E0D0A0909093C7061746820643D224D33
        34302E3733322C3048353576343835683337355639342E3531384C3334302E37
        33322C307A204D3334352C32362E3336344C3430352E312C3930483334355632
        362E3336347A204D37302C343730563135683236307639306838357633363548
        37307A222F3E0D0A0909093C7265637420783D223130322E352220793D223139
        31222077696474683D2232383022206865696768743D223135222F3E0D0A0909
        093C7265637420783D223130322E352220793D22313431222077696474683D22
        31323022206865696768743D223135222F3E0D0A0909093C7265637420783D22
        3130322E352220793D22323431222077696474683D2232383022206865696768
        743D223135222F3E0D0A0909093C7265637420783D223130322E352220793D22
        323931222077696474683D2232383022206865696768743D223135222F3E0D0A
        0909093C7265637420783D223130322E352220793D2233343122207769647468
        3D2232383022206865696768743D223135222F3E0D0A0909093C726563742078
        3D223130322E352220793D22333931222077696474683D223238302220686569
        6768743D223135222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F673E0D
        0A3C2F7376673E}
      Options.ThumbnailFont.Charset = DEFAULT_CHARSET
      Options.ThumbnailFont.Color = clWindowText
      Options.ThumbnailFont.Height = -12
      Options.ThumbnailFont.Name = 'Segoe UI'
      Options.ThumbnailFont.Style = []
      Options.ThumbnailSelectedFont.Charset = DEFAULT_CHARSET
      Options.ThumbnailSelectedFont.Color = clWhite
      Options.ThumbnailSelectedFont.Height = -12
      Options.ThumbnailSelectedFont.Name = 'Segoe UI'
      Options.ThumbnailSelectedFont.Style = []
      ExplicitHeight = 529
    end
  end
  object pnResult: TPanel
    Left = 452
    Top = 25
    Width = 701
    Height = 555
    Align = alClient
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 2
    ExplicitWidth = 710
    ExplicitHeight = 531
    object mResult: TMemo
      Left = 11
      Top = 11
      Width = 679
      Height = 533
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitWidth = 688
      ExplicitHeight = 509
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1153
    Height = 25
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 1162
  end
  object TMSMCPCloudAI1: TTMSMCPCloudAI
    OnRequestsComplete = TMSMCPCloudAI1RequestsComplete
    Service = aiOpenAI
    Settings.GeminiModel = 'gemini-1.5-flash-latest'
    Settings.OpenAIModel = 'gpt-4o'
    Settings.GrokModel = 'grok-beta'
    Settings.ClaudeModel = 'claude-3-5-sonnet-20241022'
    Settings.OllamaModel = 'llama3.2:latest'
    Settings.DeepSeekModel = 'deepseek-chat'
    Settings.PerplexityModel = 'llama-3.1-sonar-small-128k-online'
    Settings.OllamaHost = 'localhost'
    Settings.OllamaPath = '/api/chat'
    Settings.MistralModel = 'mistral-large-latest'
    Settings.WebSearch = True
    Tools = <>
    OnExecuted = TMSMCPCloudAI1Executed
    OnFileUpload = TMSMCPCloudAI1FileUpload
    Left = 687
    Top = 352
  end
  object OpenDialog1: TOpenDialog
    Filter = 'PDF files|*.pdf'
    Left = 872
    Top = 320
  end
  object CDSCab: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 708
    Top = 225
  end
  object CDSDet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 716
    Top = 297
  end
end
