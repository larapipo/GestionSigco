object FormReproWeb: TFormReproWeb
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Reproweb'
  ClientHeight = 365
  ClientWidth = 508
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
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 508
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 24
      Top = 8
      Width = 64
      Height = 16
      Caption = 'Nro de Cuit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 147
      Top = 8
      Width = 107
      Height = 16
      Caption = 'Perido de Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edCuitProveedor: TEdit
      Left = 24
      Top = 27
      Width = 97
      Height = 24
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 0
      Text = '20102255047'
    end
    object edPerido: TEdit
      Left = 160
      Top = 27
      Width = 73
      Height = 24
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 1
      Text = '01/2018'
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 65
    Width = 508
    Height = 260
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      508
      260)
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 113
      Height = 13
      Caption = 'Codigo Respuesta AFIP'
    end
    object edRespuesta: TEdit
      Left = 9
      Top = 33
      Width = 476
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object Memo: TMemo
      Left = 9
      Top = 79
      Width = 476
      Height = 168
      Anchors = [akLeft, akTop, akRight, akBottom]
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 325
    Width = 508
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      508
      40)
    object btConsultar: TButton
      Left = 410
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      TabOrder = 0
      OnClick = btConsultarClick
    end
  end
end
