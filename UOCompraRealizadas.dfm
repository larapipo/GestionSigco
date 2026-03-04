inherited FormOCompraRealizadas: TFormOCompraRealizadas
  Left = 161
  Top = 151
  Caption = 'Listado de O.Compras Realizadas'
  ClientHeight = 765
  ClientWidth = 1070
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1088
  ExplicitHeight = 806
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1070
    Height = 712
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1052
    ExplicitHeight = 536
    object TMSFNCDataGrid1: TTMSFNCDataGrid
      Left = 0
      Top = 0
      Width = 1070
      Height = 652
      Align = alClient
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 0
      ShowAcceleratorChar = False
      Footer.Bar.Buttons = <>
      Header.VisualGrouping.Layout.Font.Charset = DEFAULT_CHARSET
      Header.VisualGrouping.Layout.Font.Color = clWindowText
      Header.VisualGrouping.Layout.Font.Height = -12
      Header.VisualGrouping.Layout.Font.Name = 'Segoe UI'
      Header.VisualGrouping.Layout.Font.Style = []
      Header.Size = 26
      Header.Bar.Fill.Color = clMenuHighlight
      Header.Bar.Buttons = <>
      Adapter = TMSFNCDataGridDatabaseAdapter1
      CellAppearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.FilterMatchLayout.Font.Color = clWindowText
      CellAppearance.FilterMatchLayout.Font.Height = -12
      CellAppearance.FilterMatchLayout.Font.Name = 'Segoe UI'
      CellAppearance.FilterMatchLayout.Font.Style = []
      CellAppearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.FilterInverseMatchLayout.Font.Color = clWindowText
      CellAppearance.FilterInverseMatchLayout.Font.Height = -12
      CellAppearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
      CellAppearance.FilterInverseMatchLayout.Font.Style = []
      CellAppearance.BandLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.BandLayout.Font.Color = clBlack
      CellAppearance.BandLayout.Font.Height = -12
      CellAppearance.BandLayout.Font.Name = 'Segoe UI'
      CellAppearance.BandLayout.Font.Style = []
      CellAppearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.FixedLayout.Font.Color = clBlack
      CellAppearance.FixedLayout.Font.Height = -12
      CellAppearance.FixedLayout.Font.Name = 'Segoe UI'
      CellAppearance.FixedLayout.Font.Style = []
      CellAppearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.FixedSelectedLayout.Font.Color = clBlack
      CellAppearance.FixedSelectedLayout.Font.Height = -12
      CellAppearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
      CellAppearance.FixedSelectedLayout.Font.Style = []
      CellAppearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.FocusedLayout.Font.Color = clBlack
      CellAppearance.FocusedLayout.Font.Height = -12
      CellAppearance.FocusedLayout.Font.Name = 'Segoe UI'
      CellAppearance.FocusedLayout.Font.Style = []
      CellAppearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.GroupLayout.Font.Color = clBlack
      CellAppearance.GroupLayout.Font.Height = -12
      CellAppearance.GroupLayout.Font.Name = 'Segoe UI'
      CellAppearance.GroupLayout.Font.Style = []
      CellAppearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.NormalLayout.Font.Color = clBlack
      CellAppearance.NormalLayout.Font.Height = -12
      CellAppearance.NormalLayout.Font.Name = 'Segoe UI'
      CellAppearance.NormalLayout.Font.Style = []
      CellAppearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.SelectedLayout.Font.Color = clBlack
      CellAppearance.SelectedLayout.Font.Height = -12
      CellAppearance.SelectedLayout.Font.Name = 'Segoe UI'
      CellAppearance.SelectedLayout.Font.Style = []
      CellAppearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
      CellAppearance.SummaryLayout.Font.Color = clBlack
      CellAppearance.SummaryLayout.Font.Height = -12
      CellAppearance.SummaryLayout.Font.Name = 'Segoe UI'
      CellAppearance.SummaryLayout.Font.Style = []
      ColumnCount = 10
      Columns = <
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Tp'
          Width = 55.000000000000000000
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Cl'
          Width = 55.000000000000000000
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Nro.Cpbte'
          Width = 100.000000000000000000
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Fecha Autorizada'
          Width = 100.000000000000000000
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Fecha Cumplida'
          Width = 100.000000000000000000
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Codigo'
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Nombre'
          Width = 200.000000000000000000
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Razon Social'
          Width = 200.000000000000000000
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Total'
        end
        item
          Appearance.FilterMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterMatchLayout.Font.Color = clWindowText
          Appearance.FilterMatchLayout.Font.Height = -12
          Appearance.FilterMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterMatchLayout.Font.Style = []
          Appearance.FilterInverseMatchLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FilterInverseMatchLayout.Font.Color = clWindowText
          Appearance.FilterInverseMatchLayout.Font.Height = -12
          Appearance.FilterInverseMatchLayout.Font.Name = 'Segoe UI'
          Appearance.FilterInverseMatchLayout.Font.Style = []
          Appearance.BandLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.BandLayout.Font.Color = clWindowText
          Appearance.BandLayout.Font.Height = -12
          Appearance.BandLayout.Font.Name = 'Segoe UI'
          Appearance.BandLayout.Font.Style = []
          Appearance.FixedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedLayout.Font.Color = clWindowText
          Appearance.FixedLayout.Font.Height = -12
          Appearance.FixedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedLayout.Font.Style = []
          Appearance.FixedSelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FixedSelectedLayout.Font.Color = clWindowText
          Appearance.FixedSelectedLayout.Font.Height = -12
          Appearance.FixedSelectedLayout.Font.Name = 'Segoe UI'
          Appearance.FixedSelectedLayout.Font.Style = []
          Appearance.FocusedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.FocusedLayout.Font.Color = clWindowText
          Appearance.FocusedLayout.Font.Height = -12
          Appearance.FocusedLayout.Font.Name = 'Segoe UI'
          Appearance.FocusedLayout.Font.Style = []
          Appearance.GroupLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.GroupLayout.Font.Color = clWindowText
          Appearance.GroupLayout.Font.Height = -12
          Appearance.GroupLayout.Font.Name = 'Segoe UI'
          Appearance.GroupLayout.Font.Style = []
          Appearance.NormalLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.NormalLayout.Font.Color = clWindowText
          Appearance.NormalLayout.Font.Height = -12
          Appearance.NormalLayout.Font.Name = 'Segoe UI'
          Appearance.NormalLayout.Font.Style = []
          Appearance.SelectedLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SelectedLayout.Font.Color = clWindowText
          Appearance.SelectedLayout.Font.Height = -12
          Appearance.SelectedLayout.Font.Name = 'Segoe UI'
          Appearance.SelectedLayout.Font.Style = []
          Appearance.SummaryLayout.Font.Charset = DEFAULT_CHARSET
          Appearance.SummaryLayout.Font.Color = clWindowText
          Appearance.SummaryLayout.Font.Height = -12
          Appearance.SummaryLayout.Font.Name = 'Segoe UI'
          Appearance.SummaryLayout.Font.Style = []
          Header = 'Estado'
        end>
      DefaultRowHeight = 22.000000000000000000
      Designer = False
      FilterActions = <>
      FilterAppearance.Font.Charset = DEFAULT_CHARSET
      FilterAppearance.Font.Color = clBlack
      FilterAppearance.Font.Height = -12
      FilterAppearance.Font.Name = 'Segoe UI'
      FilterAppearance.Font.Style = []
      Icons.ExpandIcon.Data = {
        1054544D53464E435356474269746D6170080200003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
        74683D22333222206865696768743D223332222076696577426F783D22302030
        203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
        6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
        3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
        637420636C6173733D22636C732D312220783D22372220793D22313522207769
        6474683D22313822206865696768743D2231222F3E3C72656374200D0A636C61
        73733D22636C732D312220783D2231352220793D2237222077696474683D2231
        22206865696768743D223138222F3E3C7265637420636C6173733D22636C732D
        312220783D223122200D0A793D2231222077696474683D223122206865696768
        743D223330222F3E3C7265637420636C6173733D22636C732D312220783D2231
        2220793D2231222077696474683D22333022200D0A6865696768743D2231222F
        3E3C7265637420636C6173733D22636C732D312220783D2233302220793D2231
        222077696474683D223122206865696768743D223330222F3E3C72656374200D
        0A636C6173733D22636C732D312220783D22312220793D223330222077696474
        683D22333022206865696768743D2231222F3E3C2F673E3C2F7376673E}
      Icons.CollapseIcon.Data = {
        1054544D53464E435356474269746D6170CE0100003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220776964
        74683D22333222206865696768743D223332222076696577426F783D22302030
        203332200D0A3332223E3C646566733E3C7374796C653E2E636C732D317B6669
        6C6C3A2330303030303B7D3C2F7374796C653E3C2F646566733E3C7469746C65
        3E506C75733C2F7469746C653E203C67200D0A69643D2249636F6E223E3C7265
        637420636C6173733D22636C732D312220783D22372220793D22313522207769
        6474683D22313822206865696768743D2231222F3E3C7265637420636C617373
        3D22636C732D312220783D223122200D0A793D2231222077696474683D223122
        206865696768743D223330222F3E3C7265637420636C6173733D22636C732D31
        2220783D22312220793D2231222077696474683D22333022200D0A6865696768
        743D2231222F3E3C7265637420636C6173733D22636C732D312220783D223330
        2220793D2231222077696474683D223122206865696768743D223330222F3E3C
        72656374200D0A636C6173733D22636C732D312220783D22312220793D223330
        222077696474683D22333022206865696768743D2231222F3E3C2F673E3C2F73
        76673E}
      Icons.FilterIcon.Data = {
        1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
        6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
        2F786C696E6B222077696474683D22333222206865696768743D223332222076
        696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
        2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2366
        61666166613B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
        65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
        33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
        7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
        747465726E205377617463682032222077696474683D22363822206865696768
        743D22363822207061747465726E556E6974733D227573657253706163654F6E
        557365222076696577426F783D22302030203638203638223E3C726563742063
        6C6173733D22636C732D31222077696474683D22363822206865696768743D22
        3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
        363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
        733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
        6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
        733D22312E3520362031322E352031352031322E352033302E352031382E3520
        33302E352031382E352031352032392E3520362032392E3520312E3520312E35
        20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
        20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
        2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
        56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
      Icons.FilterActiveIcon.Data = {
        1054544D53464E435356474269746D6170E30200003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
        6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
        2F786C696E6B222077696474683D22333222206865696768743D223332222076
        696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
        2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2334
        36383242343B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
        65726E5F5377617463685F32293B7D2E636C732D347B66696C6C3A2333613361
        33383B7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174
        7465726E5F5377617463685F322220646174612D6E616D653D224E6577205061
        747465726E205377617463682032222077696474683D22363822206865696768
        743D22363822207061747465726E556E6974733D227573657253706163654F6E
        557365222076696577426F783D22302030203638203638223E3C726563742063
        6C6173733D22636C732D31222077696474683D22363822206865696768743D22
        3638222F3E3C7265637420636C6173733D22636C732D32222077696474683D22
        363822206865696768743D223638222F3E3C2F7061747465726E3E3C2F646566
        733E3C7469746C653E46696C7465723C2F7469746C653E3C672069643D224963
        6F6E223E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E74
        733D22312E3520362031322E352031352031322E352033302E352031382E3520
        33302E352031382E352031352032392E3520362032392E3520312E3520312E35
        20312E3520312E352036222F3E3C7061746820636C6173733D22636C732D3422
        20643D224D31392C33314831325631352E32346C2D31312D3956314833305636
        2E32346C2D31312C395A6D2D362D3168355631342E37366C31312D3956324832
        56352E37366C31312C395A222F3E3C2F673E3C2F7376673E}
      Icons.FilterClearIcon.Data = {
        1054544D53464E435356474269746D61709D0400003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
        6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
        2F786C696E6B222077696474683D22333222206865696768743D223332222076
        696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
        2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
        37346162303B7D2E636C732D337B66696C6C3A236433393464363B7D2E636C73
        2D347B66696C6C3A236661666166613B7D2E636C732D357B66696C6C3A75726C
        28234E65775F5061747465726E5F5377617463685F38293B7D2E636C732D367B
        66696C6C3A75726C28234E65775F5061747465726E5F5377617463685F37293B
        7D3C2F7374796C653E3C7061747465726E2069643D224E65775F506174746572
        6E5F5377617463685F382220646174612D6E616D653D224E6577205061747465
        726E205377617463682038222077696474683D22363822206865696768743D22
        363822207061747465726E556E6974733D227573657253706163654F6E557365
        222076696577426F783D22302030203638203638223E3C7265637420636C6173
        733D22636C732D31222077696474683D22363822206865696768743D22363822
        2F3E3C7265637420636C6173733D22636C732D33222077696474683D22363822
        206865696768743D223638222F3E3C2F7061747465726E3E3C7061747465726E
        2069643D224E65775F5061747465726E5F5377617463685F372220646174612D
        6E616D653D224E6577205061747465726E205377617463682037222077696474
        683D22363822206865696768743D22363822207061747465726E556E6974733D
        227573657253706163654F6E557365222076696577426F783D22302030203638
        203638223E3C7265637420636C6173733D22636C732D31222077696474683D22
        363822206865696768743D223638222F3E3C7265637420636C6173733D22636C
        732D32222077696474683D22363822206865696768743D223638222F3E3C2F70
        61747465726E3E3C2F646566733E3C7469746C653E436C6561723C2F7469746C
        653E3C672069643D2249636F6E223E3C7265637420636C6173733D22636C732D
        342220783D22312E38362220793D2231302E3334222077696474683D2232382E
        323822206865696768743D2231312E333122207472616E73666F726D3D227472
        616E736C617465282D362E36332031362920726F74617465282D343529222F3E
        3C706F6C79676F6E20636C6173733D22636C732D352220706F696E74733D2232
        2E37312032322031302032392E32392031352E37392032332E3520382E352031
        362E323120322E3731203232222F3E3C7061746820636C6173733D22636C732D
        362220643D224D31302E37312C33306C32302D32304C32322C312E32392C312E
        32392C32322C31302C33302E37315633314833315633305A4D32322C322E3731
        2C32392E32392C31302C31362E352C32322E37392C392E32312C31352E355A4D
        322E37312C32322C382E352C31362E32316C372E32392C372E32394C31302C32
        392E32395A222F3E3C2F673E3C2F7376673E}
      Icons.FilterTypeIcon.Data = {
        1054544D53464E435356474269746D6170CB0700003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
        6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
        2F786C696E6B222077696474683D22333222206865696768743D223332222076
        696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
        2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2337
        39373737343B7D2E636C732D337B66696C6C3A236661666166613B7D2E636C73
        2D347B66696C6C3A233361336133383B7D2E636C732D357B66696C6C3A75726C
        28234E65775F5061747465726E5F5377617463685F34293B7D3C2F7374796C65
        3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
        5F342220646174612D6E616D653D224E6577205061747465726E205377617463
        682034222077696474683D22363822206865696768743D223638222070617474
        65726E556E6974733D227573657253706163654F6E557365222076696577426F
        783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
        222077696474683D22363822206865696768743D223638222F3E3C7265637420
        636C6173733D22636C732D32222077696474683D22363822206865696768743D
        223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E5465
        78742D46696C7465723C2F7469746C653E3C672069643D224D61736B223E3C70
        6F6C79676F6E20636C6173733D22636C732D332220706F696E74733D2232352E
        35203920313920322E3520313920392032352E352039222F3E3C706174682063
        6C6173733D22636C732D332220643D224D31382C313056324836563330483231
        5632362E31384C31392E38342C323548385632344831382E38356C2D322D3248
        3856323168385631394838563138683856313648385631354832347631683256
        31305A4D382C396838763148385A6D302C3456313248323476315A222F3E3C70
        6F6C79676F6E20636C6173733D22636C732D342220706F696E74733D22352031
        2035203331203620333120323120333120323120333020362033302036203220
        313820322031382E352032203139203220313920322E352032352E3520392032
        36203920323620392E3520323620313020323620313620323720313620323720
        392E372032372039203139203120352031222F3E3C706F6C79676F6E20636C61
        73733D22636C732D342220706F696E74733D22323620313020323620392E3520
        323620392032352E352039203139203920313920322E3520313920322031382E
        3520322031382032203138203130203236203130222F3E3C7265637420636C61
        73733D22636C732D332220783D22382220793D2239222077696474683D223822
        206865696768743D2231222F3E3C7265637420636C6173733D22636C732D3522
        20783D22382220793D2239222077696474683D223822206865696768743D2231
        222F3E3C7265637420636C6173733D22636C732D332220783D22382220793D22
        3132222077696474683D22313622206865696768743D2231222F3E3C72656374
        20636C6173733D22636C732D352220783D22382220793D223132222077696474
        683D22313622206865696768743D2231222F3E3C706F6C79676F6E20636C6173
        733D22636C732D332220706F696E74733D223820313520382031362031362031
        362032342031362032342031352038203135222F3E3C706F6C79676F6E20636C
        6173733D22636C732D352220706F696E74733D22382031352038203136203136
        2031362032342031362032342031352038203135222F3E3C7265637420636C61
        73733D22636C732D332220783D22382220793D223138222077696474683D2238
        22206865696768743D2231222F3E3C7265637420636C6173733D22636C732D35
        2220783D22382220793D223138222077696474683D223822206865696768743D
        2231222F3E3C706F6C79676F6E20636C6173733D22636C732D332220706F696E
        74733D22382032322031362E38372032322031362032312E3132203136203231
        20382032312038203232222F3E3C706F6C79676F6E20636C6173733D22636C73
        2D352220706F696E74733D22382032322031362E38372032322031362032312E
        313220313620323120382032312038203232222F3E3C706F6C79676F6E20636C
        6173733D22636C732D332220706F696E74733D22382032352031392E38342032
        352031382E383520323420382032342038203235222F3E3C706F6C79676F6E20
        636C6173733D22636C732D352220706F696E74733D22382032352031392E3834
        2032352031382E383520323420382032342038203235222F3E3C2F673E3C6720
        69643D224F7665726C6179223E3C706F6C79676F6E20636C6173733D22636C73
        2D332220706F696E74733D2233312E352031372E352031372E352031372E3520
        31372E352032302E352032322E352032352E35362032322E352033312E352032
        362E352033312E352032362E352032352E35362033312E352032302E35203331
        2E352031372E35222F3E3C7061746820636C6173733D22636C732D342220643D
        224D32372C33324832325632352E37376C2D352D352E30365631374833327633
        2E37316C2D352C352E30365A6D2D342D3168335632352E33366C352D352E3037
        56313848313876322E32396C352C352E30375A222F3E3C2F673E3C2F7376673E}
      Icons.SortAscendingIcon.Data = {
        1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
        6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
        2F786C696E6B222077696474683D22333222206865696768743D223332222076
        696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
        2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
        37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
        65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
        63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
        3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
        5F372220646174612D6E616D653D224E6577205061747465726E205377617463
        682037222077696474683D22363822206865696768743D223638222070617474
        65726E556E6974733D227573657253706163654F6E557365222076696577426F
        783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
        222077696474683D22363822206865696768743D223638222F3E3C7265637420
        636C6173733D22636C732D32222077696474683D22363822206865696768743D
        223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
        72742D415A3C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
        636C6173733D22636C732D332220643D224D322C32392E36346C372D31305632
        304833563138683976312E34344C352C32392E33365632396837763248325A22
        2F3E3C7061746820636C6173733D22636C732D342220643D224D352E372C3131
        2C342E35322C313548312E39334C362E33332C3148392E35344C31342C313568
        2D322E376C2D312E32342D345A4D392E36342C392E31312C382E35362C352E36
        36632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E
        322E38312D2E342C312E37382D2E36352C322E36314C362E31312C392E31315A
        222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
        3D2232332032352E3132203233203620323220362032322032352E3132203136
        2E34342031392E35362031352E35362032302E34342032322E352032372E3338
        2032392E34342032302E34342032382E35362031392E35362032332032352E31
        32222F3E3C2F673E3C2F7376673E}
      Icons.SortDescendingIcon.Data = {
        1054544D53464E435356474269746D6170990300003C73766720786D6C6E733D
        22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C
        6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F31393939
        2F786C696E6B222077696474683D22333222206865696768743D223332222076
        696577426F783D22302030203332203332223E3C646566733E3C7374796C653E
        2E636C732D317B66696C6C3A6E6F6E653B7D2E636C732D327B66696C6C3A2361
        37346162303B7D2E636C732D337B66696C6C3A75726C28234E65775F50617474
        65726E5F5377617463685F37293B7D2E636C732D347B66696C6C3A2331653862
        63643B7D2E636C732D357B66696C6C3A233361336133383B7D3C2F7374796C65
        3E3C7061747465726E2069643D224E65775F5061747465726E5F537761746368
        5F372220646174612D6E616D653D224E6577205061747465726E205377617463
        682037222077696474683D22363822206865696768743D223638222070617474
        65726E556E6974733D227573657253706163654F6E557365222076696577426F
        783D22302030203638203638223E3C7265637420636C6173733D22636C732D31
        222077696474683D22363822206865696768743D223638222F3E3C7265637420
        636C6173733D22636C732D32222077696474683D22363822206865696768743D
        223638222F3E3C2F7061747465726E3E3C2F646566733E3C7469746C653E536F
        72742D5A413C2F7469746C653E3C672069643D2249636F6E223E3C7061746820
        636C6173733D22636C732D332220643D224D322C31322E36346C372D31305633
        48335631683956322E34344C352C31322E33365631326837763248325A222F3E
        3C7061746820636C6173733D22636C732D342220643D224D352E372C32372C34
        2E35322C333148312E39336C342E342D313448392E35344C31342C3331682D32
        2E376C2D312E32342D345A6D332E39342D312E39334C382E35362C32312E3636
        632D2E32372D2E38352D2E34392D312E382D2E36392D322E36316830632D2E32
        2E38312D2E342C312E37382D2E36352C322E36314C362E31312C32352E31315A
        222F3E3C706F6C79676F6E20636C6173733D22636C732D352220706F696E7473
        3D2232332032352E3132203233203620323220362032322032352E3132203136
        2E34342031392E35362031352E35362032302E34342032322E352032372E3338
        2032392E34342032302E34342032382E35362031392E35362032332032352E31
        32222F3E3C2F673E3C2F7376673E}
      Icons.CloseIcon.Data = {
        1054544D53464E435356474269746D6170180400003C21444F43545950452073
        7667205055424C494320222D2F2F5733432F2F4454442053564720312E312F2F
        454E222022687474703A2F2F7777772E77332E6F72672F47726170686963732F
        5356472F312E312F4454442F73766731312E647464223E0A0D3C212D2D205570
        6C6F6164656420746F3A20535647205265706F2C207777772E7376677265706F
        2E636F6D2C205472616E73666F726D65642062793A20535647205265706F204D
        6978657220546F6F6C73202D2D3E0A3C7376672077696474683D223634707822
        206865696768743D2236347078222076696577426F783D223020302032342032
        34222066696C6C3D226E6F6E652220786D6C6E733D22687474703A2F2F777777
        2E77332E6F72672F323030302F73766722207374726F6B653D22233030303030
        30223E0A0D3C672069643D225356475265706F5F626743617272696572222073
        74726F6B652D77696474683D2230222F3E0A0D3C672069643D22535647526570
        6F5F7472616365724361727269657222207374726F6B652D6C696E656361703D
        22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E64222F
        3E0A0D3C672069643D225356475265706F5F69636F6E43617272696572223E20
        3C706174682066696C6C2D72756C653D226576656E6F64642220636C69702D72
        756C653D226576656E6F64642220643D224D352E323932383920352E32393238
        3943352E363833343220342E393032333720362E333136353820342E39303233
        3720362E373037313120352E32393238394C31322031302E353835384C31372E
        3239323920352E32393238394331372E3638333420342E39303233372031382E
        3331363620342E39303233372031382E3730373120352E32393238394331392E
        3039373620352E36383334322031392E3039373620362E33313635382031382E
        3730373120362E37303731314C31332E343134322031324C31382E3730373120
        31372E323932394331392E303937362031372E363833342031392E3039373620
        31382E333136362031382E373037312031382E373037314331382E3331363620
        31392E303937362031372E363833342031392E303937362031372E3239323920
        31382E373037314C31322031332E343134324C362E37303731312031382E3730
        373143362E33313635382031392E3039373620352E36383334322031392E3039
        373620352E32393238392031382E3730373143342E39303233372031382E3331
        363620342E39303233372031372E3638333420352E32393238392031372E3239
        32394C31302E353835382031324C352E323932383920362E373037313143342E
        393032333720362E333136353820342E393032333720352E363833343220352E
        323932383920352E32393238395A222066696C6C3D2223304631373239222F3E
        203C2F673E0A0D3C2F7376673E}
      Icons.FirstPageIcon.Data = {
        1054544D53464E435356474269746D6170800300003C3F786D6C207665727369
        6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
        20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
        703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
        4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
        726F756E643D226E65772030203020333220333222206865696768743D223332
        7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
        222076696577426F783D22302030203332203332222077696474683D22333270
        782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
        7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
        3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
        6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F4C656674
        223E3C7061746820643D224D31302E3435362C31366C362E3139362D362E3238
        3563302E3339312D302E3339342C302E3339312D312E3033342C302D312E3432
        38632D302E3339312D302E3339342D312E3032342D302E3339342D312E343134
        2C306C2D362E3839392C362E393939202020632D302E3337352C302E3337392D
        302E3337372C312E3034382C302C312E3432396C362E392C362E39393963302E
        33392C302E3339342C312E3032342C302E3339342C312E3431342C3063302E33
        39312D302E3339342C302E3339312D312E3033342C302D312E3432384C31302E
        3435362C31367A222066696C6C3D2223313231333133222F3E3C706174682064
        3D224D31372E3435362C31366C362E3139362D362E32383563302E3339312D30
        2E3339342C302E3339312D312E3033342C302D312E343238632D302E3339312D
        302E3339342D312E3032342D302E3339342D312E3431342C306C2D362E383939
        2C362E393939202020632D302E3337352C302E3337392D302E3337372C312E30
        34382C302C312E3432396C362E3839392C362E39393963302E3339312C302E33
        39342C312E3032342C302E3339342C312E3431342C3063302E3339312D302E33
        39342C302E3339312D312E3033342C302D312E3432384C31372E3435362C3136
        7A222066696C6C3D2223313231333133222F3E3C2F673E3C672F3E3C672F3E3C
        672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
      Icons.LastPageIcon.Data = {
        1054544D53464E435356474269746D6170A60300003C3F786D6C207665727369
        6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
        20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
        703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
        4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
        726F756E643D226E65772030203020333220333222206865696768743D223332
        7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
        222076696577426F783D22302030203332203332222077696474683D22333270
        782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
        7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
        3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
        6C696E6B223E3C672069643D22446F75626C655F43686576726F6E5F52696768
        74223E3C7061746820643D224D32332E3636322C31352E3238366C2D362E392D
        362E393939632D302E33392D302E3339342D312E3032342D302E3339342D312E
        3431342C30632D302E3339312C302E3339342D302E3339312C312E3033342C30
        2C312E3432384C32312E3534342C31362020206C2D362E3139362C362E323835
        632D302E3339312C302E3339342D302E3339312C312E3033342C302C312E3432
        3863302E3339312C302E3339342C312E3032342C302E3339342C312E3431342C
        306C362E3839392D362E3939392020204332342E3033382C31362E3333352C32
        342E3033392C31352E3636362C32332E3636322C31352E3238367A222066696C
        6C3D2223313231333133222F3E3C7061746820643D224D31362E3636322C3135
        2E3238364C392E3736332C382E323837632D302E3339312D302E3339342D312E
        3032342D302E3339342D312E3431342C30632D302E3339312C302E3339342D30
        2E3339312C312E3033342C302C312E3432384C31342E3534342C31362020206C
        2D362E3139362C362E323835632D302E3339312C302E3339342D302E3339312C
        312E3033342C302C312E34323863302E3339312C302E3339342C312E3032342C
        302E3339342C312E3431342C306C362E3839392D362E3939392020204331372E
        3033382C31362E3333352C31372E3033392C31352E3636362C31362E3636322C
        31352E3238367A222066696C6C3D2223313231333133222F3E3C2F673E3C672F
        3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C2F7376673E}
      Icons.NextPageIcon.Data = {
        1054544D53464E435356474269746D6170B50200003C3F786D6C207665727369
        6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
        20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
        703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
        4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
        726F756E643D226E65772030203020333220333222206865696768743D223332
        7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
        222076696577426F783D22302030203332203332222077696474683D22333270
        782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
        7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
        3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
        6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
        643D224D32312E3639382C31352E3238366C2D392E3030322D382E3939392020
        632D302E3339352D302E3339342D312E3033352D302E3339342D312E3433312C
        30632D302E3339352C302E3339342D302E3339352C312E3033342C302C312E34
        32384C31392E3535332C31366C2D382E3238372C382E323835632D302E333935
        2C302E3339342D302E3339352C312E3033342C302C312E343239202063302E33
        39352C302E3339342C312E3033362C302E3339342C312E3433312C306C392E30
        30322D382E3939394332322E3038382C31362E3332352C32322E3038382C3135
        2E3637352C32312E3639382C31352E3238367A222066696C6C3D222331323133
        3133222066696C6C2D72756C653D226576656E6F6464222069643D2243686576
        726F6E5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E
        3C672F3E3C2F7376673E}
      Icons.PreviousPageIcon.Data = {
        1054544D53464E435356474269746D6170B20200003C3F786D6C207665727369
        6F6E3D22312E3022203F3E3C21444F43545950452073766720205055424C4943
        20272D2F2F5733432F2F4454442053564720312E312F2F454E27202027687474
        703A2F2F7777772E77332E6F72672F47726170686963732F5356472F312E312F
        4454442F73766731312E647464273E3C73766720656E61626C652D6261636B67
        726F756E643D226E65772030203020333220333222206865696768743D223332
        7078222069643D22D0A1D0BBD0BED0B95F31222076657273696F6E3D22312E31
        222076696577426F783D22302030203332203332222077696474683D22333270
        782220786D6C3A73706163653D2270726573657276652220786D6C6E733D2268
        7474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E73
        3A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F78
        6C696E6B223E3C7061746820636C69702D72756C653D226576656E6F64642220
        643D224D31312E3236322C31362E3731346C392E3030322C382E393939202063
        302E3339352C302E3339342C312E3033352C302E3339342C312E3433312C3063
        302E3339352D302E3339342C302E3339352D312E3033342C302D312E3432384C
        31332E3430372C31366C382E3238372D382E32383563302E3339352D302E3339
        342C302E3339352D312E3033342C302D312E3432392020632D302E3339352D30
        2E3339342D312E3033362D302E3339342D312E3433312C306C2D392E3030322C
        382E3939394331302E3837322C31352E3637352C31302E3837322C31362E3332
        352C31312E3236322C31362E3731347A222066696C6C3D222331323133313322
        2066696C6C2D72756C653D226576656E6F6464222069643D2243686576726F6E
        5F5269676874222F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F3E3C672F
        3E3C2F7376673E}
      OnCellDblClick = TMSFNCDataGrid1CellDblClick
      OnGetCellFormatting = TMSFNCDataGrid1GetCellFormatting
      OnGetCellLayout = TMSFNCDataGrid1GetCellLayout
      Options.Mouse.ColumnSizing = True
      Options.Selection.Mode = gsmSingleRow
      RowCount = 1
      ExplicitWidth = 1052
      ExplicitHeight = 553
      object TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter
        Left = 688
        Top = 136
        Width = 26
        Height = 26
        Visible = True
        AutoCreateColumns = False
        AutoRemoveColumns = False
        Columns = <
          item
            FieldName = 'TIPOCPBTE'
            Header = 'Tp'
            AutoCreated = False
          end
          item
            FieldName = 'CLASECPBTE'
            Header = 'Cl'
            AutoCreated = False
          end
          item
            FieldName = 'NROCPBTE'
            Header = 'Nro.Cpbte'
            AutoCreated = False
          end
          item
            FieldName = 'FECHAAUTORIZACION'
            Header = 'Fecha Autorizada'
            AutoCreated = False
          end
          item
            FieldName = 'FECHACUMPLIDA'
            Header = 'Fecha Cumplida'
            AutoCreated = False
          end
          item
            FieldName = 'CODIGO'
            Header = 'Codigo'
            AutoCreated = False
          end
          item
            FieldName = 'NOMBRE'
            Header = 'Nombre'
            AutoCreated = False
          end
          item
            FieldName = 'RAZONSOCIAL'
            Header = 'Razon Social'
            AutoCreated = False
          end
          item
            FieldName = 'TOTAL'
            Header = 'Total'
            AutoCreated = False
          end
          item
            CheckBoxField = True
            FieldName = 'ESTADO'
            Header = 'Estado'
            AutoCreated = False
          end>
        DataSource = DSCompra
      end
    end
    object pnPie: TPanel
      Left = 0
      Top = 652
      Width = 1070
      Height = 60
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 667
      ExplicitWidth = 1052
      DesignSize = (
        1070
        60)
      object Label1: TLabel
        Left = 843
        Top = 3
        Width = 106
        Height = 13
        Anchors = [akLeft]
        Caption = 'Per'#237'odo Seleccionado'
        ExplicitTop = 10
      end
      object UpDown1: TUpDown
        Left = 1004
        Top = 23
        Width = 24
        Height = 22
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akLeft]
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 0
        OnClick = UpDown1Click
      end
      object Desde: TJvDateEdit
        Left = 756
        Top = 22
        Width = 118
        Height = 24
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akLeft]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
      end
      object Hasta: TJvDateEdit
        Left = 880
        Top = 22
        Width = 118
        Height = 24
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akLeft]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 2
      end
      object chFiltro: TCheckBox
        Left = 23
        Top = 19
        Width = 98
        Height = 17
        Anchors = [akLeft]
        Caption = 'Filtros'
        TabOrder = 3
        OnClick = chFiltroClick
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 712
    Width = 1070
    Align = alBottom
    ExplicitTop = 536
    ExplicitWidth = 1052
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
      Visible = False
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 20
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 577
      Top = 0
      Width = 75
      Height = 29
      Action = Imprimir
      Caption = '&Imprimir'
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303030303FFFFFF03030303
        030303030303FFFFFF0303030000000303030303030303030300000003030303
        F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
        00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
        070707070707070707070707000303F8FF030303030303030303030303030303
        F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
        0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
        FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
        F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
        03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
        FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
        03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
        F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
        0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
        FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
        0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
        F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 742
    Width = 1070
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 566
    ExplicitWidth = 1052
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 981
      OnDblClick = sbEstadoDblClick
      ExplicitWidth = 963
    end
  end
  inherited ActionList1: TActionList
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 504
    Top = 0
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C01010A000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A00767373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A787800757373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C6969000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001079F000313A9000418AE000419AE000313A9000108A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D2C05006B250800521E1500551F13006D2607007E2D05000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521E15006B2508007D2C05007E2D05006D260700551F13000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E000000000000000000000000000000000000000000000000008932
      040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C2621800541F
      1600903503000000000000000000000000000000000000000000000000005521
      170089320400BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C26218009035
      0300541F16000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA400000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E07006023110000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E000000000000000000732D0D00B0460200F4D0
      AB00FFFFFE00D4884600BD4E0400BA470000BA460000C0530700D4844200FCF8
      F300F8DDBD00B64D0500903502000000000000000000732D0D00B0460200F4D0
      AB00FFFEFE00D78C4E00C0540900BA460000BA460000BD4F0400D07E3900FCF8
      F400F8DDBD00B64D0500541F1600000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D030000660000000000000000000000000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000009A380000E6AB7200FFFF
      FF00CC732800C9682000CE752A00BB480000BC4B0000B8430000B8420000CA6C
      1F00FCF8F400EFBC8800541F160000000000000000009A380000E6AB7200FFFF
      FF00CF762D00B8410000BA430000BC4A0000BB470000C6631500CE753100C96B
      1F00FCF8F400EFBC880090350200000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D030000660000000000000000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000A9440300C05C1100FFFCFA00E1A3
      6A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C2000E9BD9300BA46
      0000D4884300FFFFFF00C16016007B2C040089340600C05C1100FFFCFA00E1A3
      6A00C04C0000FFFFFF00D3803800BC470000B8420000DC995E00FFFFFF00B843
      0000D4874300FFFFFF00C1601600551F13000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA009A3B0200DD955400FFFFFF00D376
      2800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2E900F7E7D900BC4B
      0000BF510300FCF8F300E29D5A006D2607009A3B0200DD955400FFFFFF00D376
      2800CC600D00FFFFFF00FFFFFF00DC955400BC450000DA965800FFFFFF00BC4B
      0000BF510300FCF8F300E29D5A006D260700000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE0089340600EBBB8A00FBF0E700D87A
      2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFFFF00F3DEC700BD4D
      0100BA450000F2DAC200EFC08E00551F1300A9440300EBBB8A00FBF0E700D87A
      2B00D7742200FFFFFF00FFFFFF00FFFFFF00E5AF7B00E0A16800FFFFFF00BD4D
      0100BA450000F2DAC200EFC08E007D2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD00AD450200EEBF9000FCF4EB00E28A
      3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFFFF00F3DEC900BD4D
      0100BA460000F3DEC700EFBD8A00521F1600B04A0600EEBF9000FCF4EB00E28A
      3E00E1843500FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7500FFFFFF00BD4D
      0100BA460000F3DEC700EFBD8A007B2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900B0490500E9AA6E00FFFFFF00EDA4
      6200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3D100F7EADC00BC4B
      0000C0540500FEFBF800E09752006B240800B0490500E9AA6E00FFFFFF00EDA4
      6200EA934600FFFFFF00FFFFFF00EDBA8800D0671300E3A66D00FFFFFF00BC4B
      0000C0540500FEFBF800E09752006B240800000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00B04A0600DD893F00FFFCF800FAD7
      B400F4A35900FCE6D000F8E3CE00E1843500D7722000D3752700E3AC7800BB47
      0000D9935400FFFFFE00BD5A10007B2C0400AD450200DD893F00FFFCF800FAD7
      B400F4A55B00FFFFFF00F0BB8700DE813000D56E1D00E7AF7A00FFFFFF00BA44
      0000D9935300FFFFFE00BD5A1000521F1600000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB5000000000000000000C9651800F8CEA500FFFF
      FF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE651200C04C0000D07A
      3100FFFFFF00EAAF7300501F18000000000000000000C9651800F8CEA500FFFF
      FF00FED1A600F6A96300EB964800E2893C00D8772600D77B2E00D1782D00D07A
      3200FFFFFF00EAAF73008931030000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F90000990000006600000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D4782A00E1A46B00FFFF
      FF00F3CCA400AC440200893103000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD5B100EDA56300E28B3F00D97B2D00D3752600DE9D6200FFFF
      FF00F3CCA400AC440200501F180000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A20000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A22140000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A2214000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F005D23
      150090340200000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F009034
      02005D2315000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC0000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      00000000000000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF40000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF40000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE0099330000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC0097330400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A000000000000000000088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB0064345900000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C0000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB00000000000000000000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB0000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB0000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF33F00000000E007E00700000000
      C003C00000000000800180010000000080010000000000000000000000000000
      000000000000000000008000000000000000E001000000000000F00300000000
      0000F01F000000008001E03F000000008001E03F00000000C003C03F00000000
      E007C07F00000000F81FF8FF00000000FFFFF81FF81FF81FC007E007E007E007
      8003C003C003C003800380018001800180038001800180018003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800380018001800180038001800180018003C003C003C003
      C007E007E007E007FFFFF81FF81FF81FFFFCFF87FC03FFFFC0F8C087C003E07F
      807080078003C03F002100000003800300030000000380030007000000038003
      000F000000038003000700070001801F00070007003C801F00070007003E801F
      000F003F003F801F000F003F003F801F003F003F003F801F003F003F003F801F
      807F807F807FC03FC0FFC0FFC0FFE07F00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 80
    Top = 304
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 800
    Top = 288
  end
  object DSCompra: TDataSource
    DataSet = CDSOCompra
    Left = 408
    Top = 352
  end
  object DSPOCompra: TDataSetProvider
    DataSet = QOCompra
    Left = 384
    Top = 408
  end
  object CDSOCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOCompra'
    Left = 440
    Top = 408
    object CDSOCompraID_OC: TIntegerField
      FieldName = 'ID_OC'
      Origin = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOCompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSOCompraCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSOCompraNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSOCompraCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSOCompraNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSOCompraRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSOCompraESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSOCompraTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSOCompraFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSOCompraFECHAAUTORIZACION: TSQLTimeStampField
      DisplayLabel = 'F.Autorizada'
      FieldName = 'FECHAAUTORIZACION'
      Origin = 'FECHAAUTORIZACION'
    end
    object CDSOCompraFECHACUMPLIDA: TSQLTimeStampField
      DisplayLabel = 'F.Cumplida'
      FieldName = 'FECHACUMPLIDA'
      Origin = 'FECHACUMPLIDA'
    end
  end
  object frConsulta: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.806900856480000000
    ReportOptions.LastChange = 39638.806900856480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 496
    Top = 408
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDBDatos: TfrxDBDataset
    UserName = 'frDBDatos'
    CloseDataSource = False
    DataSet = CDSOCompra
    BCDToCurrency = False
    DataSetOptions = []
    Left = 568
    Top = 416
  end
  object QOCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_oc,tipocpbte,clasecpbte,nrocpbte,codigo,'
      
        'nombre,razonsocial,fecha,fechaautorizacion,fechacumplida,total,E' +
        'stado from ordencompracab'
      'where fecha>=:Desde and fecha<=:hasta'
      'order by nrocpbte')
    Left = 304
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'Desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
