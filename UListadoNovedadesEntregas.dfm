inherited FormEntregasPedidos: TFormEntregasPedidos
  Caption = 'Listado de Novedades entregas  Pedidos'
  ClientHeight = 454
  ClientWidth = 630
  ExplicitWidth = 648
  ExplicitHeight = 495
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 630
    Height = 329
    ExplicitWidth = 630
    ExplicitHeight = 329
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 630
      Height = 257
      Align = alTop
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  inherited ToolBar1: TToolBar
    Top = 329
    Width = 630
    ExplicitTop = 329
    ExplicitWidth = 630
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 359
    Width = 630
    ExplicitTop = 359
    ExplicitWidth = 630
    inherited sbEstado: TStatusBar
      Width = 468
      ExplicitWidth = 468
    end
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 296
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 432
    Top = 280
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 136
    Top = 312
  end
end
