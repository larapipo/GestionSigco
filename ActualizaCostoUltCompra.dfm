object frmActualizaCostoUltCompra: TfrmActualizaCostoUltCompra
  Left = 0
  Top = 0
  Caption = 'Actualizar costo por ultima comp.'
  ClientHeight = 520
  ClientWidth = 780
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  object pnlFilters: TPanel
    Align = alTop
    Height = 120
    BevelOuter = bvNone
    ParentColor = False
    Color = clBtnFace
    object lblRubro: TLabel
      Left = 16
      Top = 16
      Caption = 'Rubro:'
    end
    object dbLookupRubro: TDBLookupComboBox
      Left = 88
      Top = 14
      Width = 220
      Height = 21
      KeyField = 'CODIGO_RUBRO'
      ListField = 'DETALLE_RUBRO'
    end
    object lblSubRubro: TLabel
      Left = 340
      Top = 16
      Caption = 'Subrubro:'
    end
    object dbLookupSubRubro: TDBLookupComboBox
      Left = 420
      Top = 14
      Width = 220
      Height = 21
      KeyField = 'CODIGO_SUBRUBRO'
      ListField = 'DETALLE_SUBRUBRO'
    end
    object lblFechaDesde: TLabel
      Left = 16
      Top = 52
      Caption = 'Fecha desde:'
    end
    object dtpDesde: TDateTimePicker
      Left = 88
      Top = 50
      Width = 160
      Kind = dtkDate
    end
    object btnEjecutar: TButton
      Caption = 'Actualizar costos'
      Left = 360
      Top = 48
      Width = 144
      Height = 28
      OnClick = btnEjecutarClick
    end
    object btnRollback: TButton
      Caption = 'Revertir últimos cambios'
      Left = 520
      Top = 48
      Width = 184
      Height = 28
      OnClick = btnRollbackClick
    end
    object btnCerrar: TButton
      Caption = 'Cerrar'
      Left = 520
      Top = 86
      Width = 184
      Height = 25
      OnClick = btnCerrarClick
    end
  end
  object pnlLog: TPanel
    Align = alLeft
    Width = 360
    Caption = ''
    object lblHistorial: TLabel
      Align = alTop
      Height = 24
      Caption = 'Historial de ejecución'
    end
    object memoLog: TMemo
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      WantReturns = True
    end
  end
  object splitterMain: TSplitter
    Align = alLeft
    Left = 360
  end
  object pnlChanges: TPanel
    Align = alClient
    object lblCambios: TLabel
      Align = alTop
      Height = 24
      Caption = 'Cambios detectados'
    end
    object lvCambios: TListView
      Align = alClient
      ViewStyle = vsReport
      RowSelect = True
      GridLines = True
      ShowColumnHeaders = True
      HideSelection = False
      MultiSelect = False
      Columns = <
        item
          Caption = 'Codigo'
          Width = 100
        end
        item
          Caption = 'Detalle'
          Width = 150
        end
        item
          Caption = 'Costo anterior'
          Width = 110
        end
        item
          Caption = 'Costo nuevo'
          Width = 110
        end
        item
          Caption = 'Fecha anterior'
          Width = 100
        end
        item
          Caption = 'Fecha nueva'
          Width = 100
        end>
    end
  end
  object pnlBottom: TPanel
    Align = alBottom
    Height = 72
    BevelOuter = bvNone
    Color = clBtnFace
    ParentColor = False
    object pbProgress: TProgressBar
      Left = 16
      Top = 12
      Width = 520
      Height = 18
    end
    object lblStatus: TLabel
      Left = 16
      Top = 36
      Caption = 'Estado'
    end
  end
  object TimerProgress: TTimer
    Enabled = False
    Interval = 250
    OnTimer = TimerProgressTimer
  end
end