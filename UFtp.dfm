object FormFTP: TFormFTP
  Left = 321
  Top = 361
  Caption = 'Transferencia de archivos'
  ClientHeight = 446
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 313
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Estados'
    end
    object btSend: TBitBtn
      Left = 8
      Top = 224
      Width = 75
      Height = 25
      Action = Send
      Caption = 'Enviar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 0
    end
    object mEstados: TMemo
      Left = 8
      Top = 80
      Width = 481
      Height = 137
      Lines.Strings = (
        'mEstados')
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 345
      Height = 49
      Caption = 'Host de Envio'
      Enabled = False
      TabOrder = 2
      object edHost: TEdit
        Left = 8
        Top = 16
        Width = 329
        Height = 21
        Color = clInfoBk
        TabOrder = 0
      end
    end
    object btSalir: TBitBtn
      Left = 432
      Top = 272
      Width = 75
      Height = 25
      Action = Salir
      Caption = '&Salir'
      TabOrder = 3
    end
  end
  object ActionList1: TActionList
    Left = 440
    Top = 32
    object Send: TAction
      Caption = 'Enviar'
      OnExecute = SendExecute
    end
    object Salir: TAction
      Caption = '&Salir'
      OnExecute = SalirExecute
    end
  end
end
