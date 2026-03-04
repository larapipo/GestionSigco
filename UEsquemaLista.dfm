object FormEsquemaPrecios: TFormEsquemaPrecios
  Left = 0
  Top = 0
  Caption = 'Esquemas de Lista de Precios'
  ClientHeight = 681
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object AdvPageControl1: TAdvPageControl
    Left = 0
    Top = 0
    Width = 557
    Height = 681
    ActivePage = AdvTabSheet2
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    Align = alClient
    DoubleBuffered = True
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.5.0'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    TabPosition = tpBottom
    object AdvTabSheet1: TAdvTabSheet
      Caption = 'Grillas'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object pnTitulo: TPanel
        Left = 0
        Top = 0
        Width = 549
        Height = 655
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object cxGridRubros_Sub: TcxGrid
          Left = 0
          Top = 0
          Width = 549
          Height = 589
          Align = alClient
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2013White'
          object cxGridRubros_SubDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSLstRubros
            DataController.DetailKeyFieldNames = 'RUBRO'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnDetailExpanding = cxGridRubros_SubDBTableView1DataControllerDetailExpanding
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridRubros_SubDBTableView1RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Sorting = False
              Width = 84
            end
            object cxGridRubros_SubDBTableView1DETALLE_RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_RUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Focusing = False
              Options.Sorting = False
              Width = 249
            end
            object cxGridRubros_SubDBTableView1ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ESTADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 85
            end
            object cxGridRubros_SubDBTableView1ID_LST: TcxGridDBColumn
              DataBinding.FieldName = 'ID_LST'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 79
            end
          end
          object cxGridRubros_SubDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSLstSubRubros
            DataController.DetailKeyFieldNames = 'RUBRO'
            DataController.KeyFieldNames = 'SUBRUBRO'
            DataController.MasterKeyFieldNames = 'RUBRO'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnDetailExpanding = cxGridRubros_SubDBTableView2DataControllerDetailExpanding
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridRubros_SubDBTableView2RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView2SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'SUBRUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView2DETALLE_SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_SUBRUBRO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView2ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ESTADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 85
            end
            object cxGridRubros_SubDBTableView2ID_LST: TcxGridDBColumn
              DataBinding.FieldName = 'ID_LST'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
            end
          end
          object cxGridRubros_SubDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSLstArticulos
            DataController.DetailKeyFieldNames = 'SUBRUBRO'
            DataController.KeyFieldNames = 'DETALLE_STK'
            DataController.MasterKeyFieldNames = 'SUBRUBRO'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridRubros_SubDBTableView3ID_LST: TcxGridDBColumn
              DataBinding.FieldName = 'ID_LST'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView3CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView3DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView3RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView3SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'SUBRUBRO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Focusing = False
              Options.Sorting = False
            end
            object cxGridRubros_SubDBTableView3ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ESTADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.Sorting = False
              Width = 85
            end
          end
          object cxGridRubros_SubLevel1: TcxGridLevel
            GridView = cxGridRubros_SubDBTableView1
            object cxGridRubros_SubLevel2: TcxGridLevel
              GridView = cxGridRubros_SubDBTableView2
              object cxGridRubros_SubLevel3: TcxGridLevel
                GridView = cxGridRubros_SubDBTableView3
              end
            end
          end
        end
        object pnPieRub: TPanel
          Left = 0
          Top = 589
          Width = 549
          Height = 47
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object spAll: TSpeedButton
            Left = 5
            Top = 19
            Width = 23
            Height = 22
            Hint = 'Seleccionar Todos'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000002000000070000
              000D0000000F0000000D00000007000000020000000000000000000000020000
              00090000000F00000010000000110000001100000014020101214C28168E8648
              27DAA55831FF854627DB4A28158C020100150000000400000000000000098B63
              56C1C18977FFC08976FFC08875FFC59584FFCFAFA3FFB0704EFFC07C4AFFDEA6
              69FFF4D3A1FFDEA76AFFBF7C4BFF844728D406030217000000020000000CC38E
              79FFFDFBFAFFFBF7F4FFFCF6F3FFF7F4F1FFC8A28CFFC48656FFEDBC7CFFEEBF
              7FFF83400EFFF2CC94FFEFC181FFC38657FF58321C93000000070000000DC591
              7EFFFDFCFBFFF8EFE8FFF7EEE8FFF2EDE9FFBA7D57FFE4B377FFF5D9ABFFF5DA
              AFFF8B4914FFF7E3BEFFF6DBB2FFE5B77FFF995C36E30000000B0000000CC794
              81FFFEFCFBFFF9F0EAFFF8F0EAFFF3EFECFFBC784FFFF1CE95FF995420FF9752
              1DFF934F1CFF904C19FF8D4917FFF5DBAEFFB16F45FA0000000B0000000BC997
              86FFFEFDFCFFF9F2EDFFF9F2EDFFF5F0EDFFC68C65FFEFDDB7FFF3CF98FFF5D5
              9FFF9B5622FFF7E0B2FFF5D7A4FFEFDDB8FFA46942E2000000080000000ACB9C
              8BFFFEFDFDFFFAF3EFFFFAF4EEFFF8F3F0FFDBB9A4FFD8AE86FFF9F3D1FFF8E1
              B5FFA35D28FFFAEAC6FFFAF6D5FFD8AF89FF5E3E29850000000400000009CFA0
              8DFFFEFEFDFFFBF5F1FFFBF5F0FFFAF4F1FFF6F2EFFFD5A785FFDCB48DFFF2E9
              CAFFFAFDE1FFF2E9CAFFDCB38CFF996B4AC80202010A0000000100000009D0A3
              93FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF6F2FFF8F4F0FFE4C9B4FFDAAF
              8AFFD8A578FFDBAE8AFFD7B098FF02020117000000010000000000000008D3A8
              97FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF5F4FFFAF6F3FFFAF6
              F3FFF8F6F3FFFBF9F8FFDAB9ADFF0000000E000000000000000000000007D3AB
              9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6
              F2FFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
              9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7F5FFFBF7
              F4FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
              A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
              F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
              A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
              FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
              7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
              A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object spDesAll: TSpeedButton
            Left = 26
            Top = 19
            Width = 23
            Height = 22
            Hint = 'Deselccionar Todos'
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000001000000030000
              0007000000060000000300000006000000080000000400000001000000000000
              00000000000000000000000000000000000000000000000000030B082C4D2619
              99EA110A58A2010003160F0855A3160C7EEA0603244F00000004000000000000
              0001000000060000000A0000000B0000000B0000000B000000112E23A2EA6F85
              EAFF4150CBFF1F1689E63B48C9FF5C74E4FF180E82E700000007000000000000
              000680574CBDB37B69FFB37A68FFB37A68FFB27968FFDCC6BEFF756BC0FF7780
              DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F00000005000000000000
              0008B57D6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFAF5F3FFEFECEFFF4D46
              BDFF6A85EBFF7494F2FF6079E7FF262094E40101041300000002000000000000
              0008B67F6DFFFCF8F5FFF8EFECFFF7EEEAFFF7EEEAFFF9F5F3FF807DD4FF6B7E
              E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000000000
              0008B8826FFFFCF9F6FFF8F0ECFFF8F0ECFFF7EFECFFFAF8F7FF6261D8FFB1C3
              F6FF8D99EAFF5F5DD2FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
              0007BA8473FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6564
              DEFF9291E2FFF2F1F3FF8982D3FF4340BCE71212334600000002000000000000
              0007BB8776FFFDFBF9FFF9F1EFFFF9F2EEFFF8F1EEFFF8F0EDFFFAF5F3FFFAF8
              F7FFFAF7F6FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
              0006BD8A78FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
              EEFFF8F0EDFFFDFAF8FFBB8675FF000000080000000000000000000000000000
              0006BF8D7BFFFEFCFBFFFAF4F1FFFAF4F1FFFAF2F1FFFAF2F0FFF9F2EFFFF9F2
              EEFFF8F1EEFFFDFBF9FFBD8978FF000000080000000000000000000000000000
              0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
              F1FFFAF3F1FFFEFCFBFFC18F7EFF000000070000000000000000000000000000
              0004C69887FFFFFEFEFFFBF7F6FFFCF6F6FFFBF6F5FFFBF6F4FFFBF5F4FFFAF5
              F3FFFAF5F3FFFEFDFDFFC59684FF000000060000000000000000000000000000
              0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
              F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
              0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
              FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
              00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
              99FFCEA899FFCFA898FF997B71C0000000030000000000000000}
            ParentShowHint = False
            ShowHint = True
          end
        end
        object StatusBar1: TStatusBar
          Left = 0
          Top = 636
          Width = 549
          Height = 19
          Panels = <
            item
              Text = 'Estado'
              Width = 50
            end>
          ParentShowHint = False
          ShowHint = False
          SimplePanel = True
          SimpleText = 'Esquemas'
        end
      end
    end
    object AdvTabSheet2: TAdvTabSheet
      Caption = 'Tree'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object twEsquema: TAdvCheckTreeView
        Left = 0
        Top = 31
        Width = 549
        Height = 585
        Align = alClient
        Color = clWhite
        HideSelection = False
        HotTrack = True
        Indent = 25
        RowSelect = True
        TabOrder = 0
        StyleName = 'Luna'
        OnNodeCheckedChanged = twEsquemaNodeCheckedChanged
        Version = '1.0.3.0'
        UIStyle = tsWindows10
      end
      object Panel1: TPanel
        Left = 0
        Top = 616
        Width = 549
        Height = 39
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          549
          39)
        object ChAll: TSpeedButton
          Left = 5
          Top = 6
          Width = 23
          Height = 22
          Hint = 'Seleccionar Todos'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000002000000070000
            000D0000000F0000000D00000007000000020000000000000000000000020000
            00090000000F00000010000000110000001100000014020101214C28168E8648
            27DAA55831FF854627DB4A28158C020100150000000400000000000000098B63
            56C1C18977FFC08976FFC08875FFC59584FFCFAFA3FFB0704EFFC07C4AFFDEA6
            69FFF4D3A1FFDEA76AFFBF7C4BFF844728D406030217000000020000000CC38E
            79FFFDFBFAFFFBF7F4FFFCF6F3FFF7F4F1FFC8A28CFFC48656FFEDBC7CFFEEBF
            7FFF83400EFFF2CC94FFEFC181FFC38657FF58321C93000000070000000DC591
            7EFFFDFCFBFFF8EFE8FFF7EEE8FFF2EDE9FFBA7D57FFE4B377FFF5D9ABFFF5DA
            AFFF8B4914FFF7E3BEFFF6DBB2FFE5B77FFF995C36E30000000B0000000CC794
            81FFFEFCFBFFF9F0EAFFF8F0EAFFF3EFECFFBC784FFFF1CE95FF995420FF9752
            1DFF934F1CFF904C19FF8D4917FFF5DBAEFFB16F45FA0000000B0000000BC997
            86FFFEFDFCFFF9F2EDFFF9F2EDFFF5F0EDFFC68C65FFEFDDB7FFF3CF98FFF5D5
            9FFF9B5622FFF7E0B2FFF5D7A4FFEFDDB8FFA46942E2000000080000000ACB9C
            8BFFFEFDFDFFFAF3EFFFFAF4EEFFF8F3F0FFDBB9A4FFD8AE86FFF9F3D1FFF8E1
            B5FFA35D28FFFAEAC6FFFAF6D5FFD8AF89FF5E3E29850000000400000009CFA0
            8DFFFEFEFDFFFBF5F1FFFBF5F0FFFAF4F1FFF6F2EFFFD5A785FFDCB48DFFF2E9
            CAFFFAFDE1FFF2E9CAFFDCB38CFF996B4AC80202010A0000000100000009D0A3
            93FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF6F2FFF8F4F0FFE4C9B4FFDAAF
            8AFFD8A578FFDBAE8AFFD7B098FF02020117000000010000000000000008D3A8
            97FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF5F4FFFAF6F3FFFAF6
            F3FFF8F6F3FFFBF9F8FFDAB9ADFF0000000E000000000000000000000007D3AB
            9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6
            F2FFFBF6F1FFFDFBF9FFD0A493FF0000000C000000000000000000000006D8AE
            9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7F5FFFBF7
            F4FFFCF7F3FFFDFCFAFFD2A897FF0000000B000000000000000000000006D8B0
            A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8F6FFFBF7
            F6FFFCF7F5FFFEFCFCFFD5AA9AFF0000000B000000000000000000000005D9B3
            A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFE
            FEFFFEFEFEFFFEFEFDFFD7AE9EFF00000009000000000000000000000003A386
            7AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3A2FFD9B2
            A2FFD8B2A2FFD8B1A1FFA08277C2000000060000000000000000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = ChAllClick
        end
        object UnChAll: TSpeedButton
          Left = 26
          Top = 6
          Width = 23
          Height = 22
          Hint = 'Deselccionar Todos'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000030000
            0007000000060000000300000006000000080000000400000001000000000000
            00000000000000000000000000000000000000000000000000030B082C4D2619
            99EA110A58A2010003160F0855A3160C7EEA0603244F00000004000000000000
            0001000000060000000A0000000B0000000B0000000B000000112E23A2EA6F85
            EAFF4150CBFF1F1689E63B48C9FF5C74E4FF180E82E700000007000000000000
            000680574CBDB37B69FFB37A68FFB37A68FFB27968FFDCC6BEFF756BC0FF7780
            DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F00000005000000000000
            0008B57D6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFAF5F3FFEFECEFFF4D46
            BDFF6A85EBFF7494F2FF6079E7FF262094E40101041300000002000000000000
            0008B67F6DFFFCF8F5FFF8EFECFFF7EEEAFFF7EEEAFFF9F5F3FF807DD4FF6B7E
            E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000000000
            0008B8826FFFFCF9F6FFF8F0ECFFF8F0ECFFF7EFECFFFAF8F7FF6261D8FFB1C3
            F6FF8D99EAFF5F5DD2FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
            0007BA8473FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6564
            DEFF9291E2FFF2F1F3FF8982D3FF4340BCE71212334600000002000000000000
            0007BB8776FFFDFBF9FFF9F1EFFFF9F2EEFFF8F1EEFFF8F0EDFFFAF5F3FFFAF8
            F7FFFAF7F6FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
            0006BD8A78FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
            EEFFF8F0EDFFFDFAF8FFBB8675FF000000080000000000000000000000000000
            0006BF8D7BFFFEFCFBFFFAF4F1FFFAF4F1FFFAF2F1FFFAF2F0FFF9F2EFFFF9F2
            EEFFF8F1EEFFFDFBF9FFBD8978FF000000080000000000000000000000000000
            0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
            F1FFFAF3F1FFFEFCFBFFC18F7EFF000000070000000000000000000000000000
            0004C69887FFFFFEFEFFFBF7F6FFFCF6F6FFFBF6F5FFFBF6F4FFFBF5F4FFFAF5
            F3FFFAF5F3FFFEFDFDFFC59684FF000000060000000000000000000000000000
            0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
            F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
            0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
            FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
            00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
            99FFCEA899FFCFA898FF997B71C0000000030000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = UnChAllClick
        end
        object btArbol: TButton
          Left = 432
          Top = 6
          Width = 92
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Armar Tree'
          TabOrder = 0
          OnClick = btArbolClick
        end
        object Edit1: TEdit
          Left = 96
          Top = 6
          Width = 193
          Height = 21
          TabOrder = 1
        end
        object GuardarTreeView: TButton
          Left = 336
          Top = 6
          Width = 75
          Height = 25
          Caption = 'Guardar'
          TabOrder = 2
          OnClick = GuardarTreeViewClick
        end
      end
      object pnCab: TPanel
        Left = 0
        Top = 0
        Width = 549
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 2
        object spNueva: TSpeedButton
          Left = 402
          Top = 1
          Width = 23
          Height = 25
          Hint = 'Nuevo Esquema de Precios'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
            25D0522C17931209053000000009000000010000000000000000000000000000
            00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
            6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
            0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
            82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
            2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
            59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
            47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
            45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
            6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
            44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
            83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
            47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
            8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
            F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
            A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
            D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
            ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
            3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
            9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
            3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
            6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
            3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
            3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
            5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
            0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
            CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
            00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
            B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
            000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
            60CD6C543F8B16110D2200000003000000010000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = spNuevaClick
        end
        object spBorrar: TSpeedButton
          Left = 424
          Top = 3
          Width = 23
          Height = 22
          Hint = 'Borrar esquema Actual'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
            76E4120852AD06031B4D0000000E000000030000000000000000000000000000
            000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
            C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
            03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
            D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
            5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
            BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
            A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
            CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
            BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
            EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
            CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
            E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
            D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
            E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
            D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
            E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
            DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
            EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
            DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
            D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
            D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
            A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
            79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
            BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
            050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
            EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
            000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
            EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
            000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
            B5D040437D951212223000000004000000010000000000000000}
          OnClick = spBorrarClick
        end
        object spModificar: TSpeedButton
          Left = 446
          Top = 3
          Width = 23
          Height = 22
          Hint = 'Modificar Nombre'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000040000000F000000110000
            000B000000040000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000E431B10FF31130BE1190A
            0598030407420000000C00000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000D673C29DCB8C7D2FF7789
            A3FF224084FF040F34960000000F000000020000000000000000000000000000
            0000000000000000000000000000000000000000000841261A91869AB3FFC7E3
            F6FF1B65B9FF286BABFF041237950000000E0000000200000000000000000000
            000000000000000000000000000000000000000000031013163E458BC6FFDDFE
            FDFF4DB4E6FF1B67BAFF2E73B1FF051439940000000D00000002000000000000
            00000000000000000000000000000000000000000001000000081B44628D439F
            D5FFDDFEFDFF55C0ECFF1D6ABCFF337BB6FF06163B920000000CA5A5A5A7A1A1
            A1A9A1A1A1A9A5A5A5A74C4C4C4DBBBBBBC0B8B8B8C1B8B8B8C1B1B1B1C46D96
            B5E348A5D8FFDDFEFDFF5DCBF2FF206EBFFF3883BCFF07193E90A1A1A1A8744E
            42F7744E42F7B8B8B8C18989898E94847EDC6A4132FF978883D86A4032FF7457
            4DF04F6981FC4BABDAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FFA2A2A2A89275
            6BE86E4332FFA6A19ECCB2B2B2C38C695CF0734737FFAAA7A6C97B4E3EFF7D51
            3FFF917C76E259758FF64EAFDDFFDDFEFDFF6BDEFBFF287AC5FF72727275A79A
            95D3744534FF704232FF7E4F3CFF845342FF7C584BF4B2B2B2C4835342FF8563
            56F0B5B5B5C2ABA8A6C853667DFF51B2DFFFDDFEFDFF4CA7D7FF33333334B5B1
            B0C6895541FF8F6556F49A8279E182513EFF8E756CE3B5B5B5C27F4F3DFF7F5D
            52F0B7B7B7C2B1AEACC77B4E3CFF58728AF8327FBFFF163A5A860D0D0D0DBBBB
            BBC1916A5BEF855848F79F8A82DC804D3AFFA49792D2B8B8B8C284503DFF7443
            32FF947E76E0937366EC7F4E3DFF927D75DF8888889000000003000000008A8A
            8A8DA2887EDF824C37FF956D5DF0804F3DFBBABABAC1BABABAC18B5540FF8558
            48F78C6253F38C5C48FB916F62EBBBBBBBC15959595A00000000000000005959
            595AB0A5A1CD8B533CFF8E5740FF8B6154EFAFAFAFB3BBBBBBC18A543FFF926A
            5CEFACACACB5AFAFAFB4AFAFAFB37F7F7F800000000000000000000000002626
            2626BCBCBCC0966450F78B523BFFA18A83DA8B8B8B8DBCBCBCC08B513DFF8C63
            54EF8A8A8A8D0000000000000000000000000000000000000000000000000000
            0000A5A5A5A6BDBDBDC0BDBDBDC0BEBEBEC04C4C4C4CBEBEBEBFBDBDBDC0BDBD
            BDC08B8B8B8C0000000000000000000000000000000000000000}
          OnClick = spModificarClick
        end
        object dbcLst: TJvDBLookupCombo
          Left = 9
          Top = 4
          Width = 387
          Height = 21
          DropDownCount = 12
          DisplayAllFields = True
          DisplayEmpty = 'Sin Seleccion'
          EmptyValue = '-1'
          FieldsDelimiter = ';'
          LookupField = 'ID'
          LookupDisplay = 'id;NOMBRE'
          LookupSource = DSLstCab
          TabOrder = 0
          OnClick = dbcLstClick
        end
      end
    end
  end
  object DSLstCab: TDataSource
    DataSet = QLstCab
    Left = 168
    Top = 288
  end
  object QLstCab: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  lst_precios')
    Left = 48
    Top = 288
    object QLstCabID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLstCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object QLstRubros: TFDQuery
    BeforeInsert = QLstRubrosBeforeInsert
    AfterPost = QLstRubrosAfterPost
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select r.id_lst,r.rubro,rb.detalle_rubro,r.estado from lst_preci' +
        'os_rubros r'
      'left join rubros rb on rb.codigo_rubro=r.rubro'
      'where r.id_lst=:id order by r.rubro')
    Left = 48
    Top = 352
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLstRubrosRUBRO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QLstRubrosDETALLE_RUBRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QLstRubrosESTADO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Selec.'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      OnSetText = QLstRubrosESTADOSetText
      FixedChar = True
      Size = 1
    end
    object QLstRubrosID_LST: TIntegerField
      FieldName = 'ID_LST'
      Origin = 'ID_LST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSLstRubros: TDataSource
    DataSet = QLstRubros
    Left = 168
    Top = 353
  end
  object QLstSubRubros: TFDQuery
    BeforeInsert = QLstSubRubrosBeforeInsert
    AfterPost = QLstSubRubrosAfterPost
    CachedUpdates = True
    IndexFieldNames = 'RUBRO'
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select sr.id_lst,sr.subrubro,sr.rubro,srb.detalle_subrubro,sr.es' +
        'tado from lst_precios_subrub sr'
      'left join subrubros srb on srb.codigo_subrubro=sr.subrubro'
      'where sr.id_lst=:id'
      'order by sr.rubro,sr.subrubro')
    Left = 48
    Top = 424
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLstSubRubrosRUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QLstSubRubrosSUBRUBRO: TStringField
      DisplayLabel = 'Cod.'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QLstSubRubrosDETALLE_SUBRUBRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QLstSubRubrosESTADO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Selec.'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QLstSubRubrosID_LST: TIntegerField
      FieldName = 'ID_LST'
      Origin = 'ID_LST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSLstSubRubros: TDataSource
    DataSet = QLstSubRubros
    Left = 168
    Top = 424
  end
  object QLstArticulos: TFDQuery
    BeforeInsert = QLstArticulosBeforeInsert
    CachedUpdates = True
    IndexFieldNames = 'SUBRUBRO'
    Connection = DMMain_FD.fdcGestion
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    SQL.Strings = (
      
        'Select ar.id_lst,ar.codigo,s.detalle_stk,ar.rubro,ar.subrubro,ar' +
        '.estado from lst_precios_articulos ar'
      'left join stock s on s.codigo_stk=ar.codigo'
      'where ar.id_lst=:id'
      'order by ar.rubro,ar.subrubro,s.detalle_stk')
    Left = 48
    Top = 488
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLstArticulosID_LST: TIntegerField
      FieldName = 'ID_LST'
      Origin = 'ID_LST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object QLstArticulosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object QLstArticulosDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object QLstArticulosRUBRO: TStringField
      DisplayLabel = 'Rub'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      ProviderFlags = []
      Visible = False
      Size = 3
    end
    object QLstArticulosSUBRUBRO: TStringField
      DisplayLabel = 'Sub'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      ProviderFlags = []
      Visible = False
      Size = 5
    end
    object QLstArticulosESTADO: TStringField
      DisplayLabel = 'Selecc.'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      OnSetText = QLstArticulosESTADOSetText
      FixedChar = True
      Size = 1
    end
  end
  object DSLstArticulos: TDataSource
    DataSet = QLstArticulos
    Left = 168
    Top = 480
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 274
    Top = 96
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 202
    Top = 120
  end
  object spLimpiarEsquema: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'LIMPIAR_ESQUEMA'
    Left = 420
    Top = 508
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
