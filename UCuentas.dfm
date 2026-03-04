inherited FormCuentas: TFormCuentas
  Left = 309
  Top = 283
  Caption = 'FormCuentas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 89
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 104
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Descripción'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 32
      Width = 241
      Height = 21
      TabOrder = 1
    end
  end
  inherited ToolBar1: TToolBar
    Top = 89
  end
  inherited Panel1: TPanel
    Top = 122
  end
  inherited QUltimoCodigo: TQuery
    Left = 56
    Top = 192
  end
end
