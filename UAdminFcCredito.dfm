object FormAdministracionFcCredito: TFormAdministracionFcCredito
  Left = 0
  Top = 0
  Caption = 'Administracion Facturas de Credito'
  ClientHeight = 461
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 877
    Height = 379
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 877
      Height = 379
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        object Panel1: TPanel
          Left = 0
          Top = 317
          Width = 869
          Height = 34
          Align = alBottom
          Color = clGreen
          ParentBackground = False
          TabOrder = 0
          DesignSize = (
            869
            34)
          object btConsultaComporbantes: TBitBtn
            Left = 764
            Top = 5
            Width = 75
            Height = 25
            Anchors = [akTop, akRight, akBottom]
            Caption = 'Consultar'
            TabOrder = 0
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 420
    Width = 877
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
  end
  object pnCabezera: TPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 444
    Top = 129
    object ConsultarComprobantes: TAction
      Caption = 'Consultar Comprobantes'
      OnExecute = ConsultarComprobantesExecute
    end
  end
end
