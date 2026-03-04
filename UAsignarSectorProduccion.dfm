inherited FormAsignarSectorProduccion: TFormAsignarSectorProduccion
  Caption = 'Asignar Sector Produccion'
  ClientHeight = 772
  ClientWidth = 1104
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1122
  ExplicitHeight = 813
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1104
    Height = 561
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1104
    ExplicitHeight = 561
    object Splitter1: TSplitter
      Left = 497
      Top = 41
      Height = 520
      ExplicitLeft = 512
      ExplicitTop = 184
      ExplicitHeight = 100
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 1104
      Height = 41
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 41
      Width = 497
      Height = 520
      Align = alLeft
      Caption = 'Panel3'
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object dbgArt: TDBGrid
        Left = 6
        Top = 6
        Width = 485
        Height = 508
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object pnSec: TPanel
      Left = 500
      Top = 41
      Width = 604
      Height = 520
      Align = alClient
      Caption = 'Panel3'
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 2
      object dbgSectores: TDBGrid
        Left = 6
        Top = 6
        Width = 592
        Height = 508
        Align = alClient
        DataSource = DSEstacionSector
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MUESTRASECTOR'
            Title.Alignment = taCenter
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE'
            Title.Alignment = taCenter
            Width = 205
            Visible = True
          end>
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 561
    Width = 1104
    ExplicitTop = 561
    ExplicitWidth = 1104
  end
  inherited Panel1: TPanel
    Top = 591
    Width = 1104
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 591
    ExplicitWidth = 1104
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1015
      ExplicitWidth = 1015
    end
  end
  object QArticulosProduccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.rubro_stk,s.subrubro_stk fro' +
        'm stock s where s.deproduccion='#39'S'#39)
    Left = 336
    Top = 520
  end
  object QEstacionSector: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.*,s.detalle as MuestraSector from  ORDENPRODUCC_ESTACIO' +
        'N e'
      'left join ordenproduccion_sector s on s.id=e.sector')
    Left = 640
    Top = 608
    object QEstacionSectorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEstacionSectorDETALLE: TStringField
      DisplayLabel = 'Estacion'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QEstacionSectorSECTOR: TIntegerField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Required = True
    end
    object QEstacionSectorMUESTRASECTOR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sector'
      FieldName = 'MUESTRASECTOR'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DSEstacionSector: TDataSource
    DataSet = QEstacionSector
    Left = 792
    Top = 664
  end
end
