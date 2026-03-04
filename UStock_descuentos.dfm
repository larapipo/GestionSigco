inherited FormStock_Dstos: TFormStock_Dstos
  Left = 173
  Top = 127
  Caption = 'Descuentos Especiales de Stock '
  ClientHeight = 622
  ClientWidth = 1098
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1116
  ExplicitHeight = 663
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1098
    Height = 569
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1098
    ExplicitHeight = 569
    object Panel2: TPanel
      Left = 0
      Top = 535
      Width = 1098
      Height = 34
      Align = alBottom
      TabOrder = 0
      object JvGradient3: TJvGradient
        Left = 1
        Top = 1
        Width = 1096
        Height = 32
        Style = grVertical
        StartColor = clWhite
        EndColor = clActiveCaption
        ExplicitLeft = 77
        ExplicitTop = -5
        ExplicitWidth = 712
        ExplicitHeight = 39
      end
      object Label2: TLabel
        Left = 475
        Top = 10
        Width = 29
        Height = 13
        Caption = 'Rubro'
      end
      object BitBtn1: TBitBtn
        Left = 840
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Listar'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object JvDBFindEdit1: TJvDBFindEdit
        Left = 7
        Top = 7
        Width = 359
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Text = ''
        DataField = 'DETALLE_STK'
        DataSource = DSListado
        FindStyle = fsFilter
        FindMode = fmAnyPos
      end
      object dbcRubro: TJvDBLookupCombo
        Left = 510
        Top = 7
        Width = 225
        Height = 21
        DisplayEmpty = 'Todos los Rubros'
        EmptyValue = '***'
        LookupField = 'CODIGO_RUBRO'
        LookupDisplay = 'DETALLE_RUBRO'
        LookupSource = DSRubro
        TabOrder = 2
      end
      object chExpandir: TCheckBox
        Left = 381
        Top = 11
        Width = 68
        Height = 17
        Caption = 'Expandir'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = chExpandirClick
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1098
      Height = 41
      Align = alTop
      TabOrder = 1
      object JvGradient1: TJvGradient
        Left = 1
        Top = 1
        Width = 1096
        Height = 39
        Style = grVertical
        StartColor = clActiveCaption
        EndColor = clWhite
        ExplicitLeft = 4
        ExplicitTop = -4
        ExplicitWidth = 1031
      end
      object Label1: TLabel
        Left = 7
        Top = 9
        Width = 349
        Height = 20
        Caption = 'Descto. Max por Articulos o Precio Especial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pcPromociones: TPageControl
      Left = 0
      Top = 41
      Width = 1098
      Height = 494
      ActivePage = pagListado
      Align = alClient
      TabOrder = 2
      object pagListado: TTabSheet
        Caption = 'Listado'
        ImageIndex = 1
        object cxgListado: TcxGrid
          Left = 0
          Top = 0
          Width = 1090
          Height = 466
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxgListadoDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataModeController.GridModeBufferCount = 200
            DataController.DataSource = DSListado
            DataController.DetailKeyFieldNames = 'CODIGO_STK'
            DataController.KeyFieldNames = 'CODIGO_STK'
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxgListadoDBTableView1CODIGO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_STK'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
              Width = 63
            end
            object cxgListadoDBTableView1DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxgListadoDBTableView1RUBRO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO_STK'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxgListadoDBTableView1SUBRUBRO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'SUBRUBRO_STK'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxgListadoDBTableView1MARCA_STK: TcxGridDBColumn
              DataBinding.FieldName = 'MARCA_STK'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxgListadoDBTableView1DETALLE_RUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_RUBRO'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxgListadoDBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_SUBRUBRO'
              Visible = False
              GroupIndex = 1
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxgListadoDBTableView1DESCRIPCION_MARCA: TcxGridDBColumn
              DataBinding.FieldName = 'DESCRIPCION_MARCA'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.Moving = False
            end
            object cxgListadoDBTableView1DESCUENTO: TcxGridDBColumn
              DataBinding.FieldName = 'DESCUENTO'
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxgListadoDBTableView1PRECIO: TcxGridDBColumn
              DataBinding.FieldName = 'PRECIO'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1DESDE: TcxGridDBColumn
              DataBinding.FieldName = 'DESDE'
              HeaderAlignmentHorz = taCenter
              Width = 83
            end
            object cxgListadoDBTableView1HASTA: TcxGridDBColumn
              DataBinding.FieldName = 'HASTA'
              HeaderAlignmentHorz = taCenter
              Width = 82
            end
            object cxgListadoDBTableView1HORA_DESDE: TcxGridDBColumn
              DataBinding.FieldName = 'HORA_DESDE'
              PropertiesClassName = 'TcxTimeEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebNever
              Width = 69
            end
            object cxgListadoDBTableView1HORA_HASTA: TcxGridDBColumn
              DataBinding.FieldName = 'HORA_HASTA'
              PropertiesClassName = 'TcxTimeEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.ShowEditButtons = isebNever
              Width = 62
            end
            object cxgListadoDBTableView1SOLOCLIENTES_BOOL: TcxGridDBColumn
              DataBinding.FieldName = 'SOLOCLIENTES'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              Options.Moving = False
              Width = 35
            end
            object cxgListadoDBTableView1TODOS: TcxGridDBColumn
              Caption = 'T'
              DataBinding.FieldName = 'TODOS'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1LUNES: TcxGridDBColumn
              Caption = 'L'
              DataBinding.FieldName = 'LUNES'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1MARTES: TcxGridDBColumn
              Caption = 'M'
              DataBinding.FieldName = 'MARTES'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1MIERCOLES: TcxGridDBColumn
              Caption = 'Mi'
              DataBinding.FieldName = 'MIERCOLES'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1JUEVES: TcxGridDBColumn
              Caption = 'J'
              DataBinding.FieldName = 'JUEVES'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1VIERNES: TcxGridDBColumn
              Caption = 'V'
              DataBinding.FieldName = 'VIERNES'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1SABADO: TcxGridDBColumn
              Caption = 'S'
              DataBinding.FieldName = 'SABADO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
            object cxgListadoDBTableView1DOMINGO: TcxGridDBColumn
              Caption = 'D'
              DataBinding.FieldName = 'DOMINGO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxgListadoLevel1: TcxGridLevel
            GridView = cxgListadoDBTableView1
          end
        end
      end
      object pagPromociones: TTabSheet
        Caption = 'Promiciones'
        object dbgDetalle: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1090
          Height = 466
          Align = alClient
          DataSource = DSArticulos
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgDetalleColEnter
          OnDrawColumnCell = dbgDetalleDrawColumnCell
          OnDblClick = dbgDetalleDblClick
          OnTitleBtnClick = dbgDetalleTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          OnCheckIfBooleanField = dbgDetalleCheckIfBooleanField
          Columns = <
            item
              ButtonStyle = cbsNone
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 77
              Visible = True
            end
            item
              ButtonStyle = cbsNone
              Color = clInfoBk
              Expanded = False
              FieldName = 'MUESTRASTOCK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 282
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCUENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESDE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HASTA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECIO'
              Title.Alignment = taCenter
              Width = 93
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SOLOCLIENTES'
              Title.Alignment = taCenter
              Title.Caption = 'Solo Clientes'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICA_ALL_DAYS'
              Title.Alignment = taCenter
              Width = 19
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICA_LUNES'
              Title.Alignment = taCenter
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICA_MARTES'
              Title.Alignment = taCenter
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICA_MIERCOLES'
              Title.Alignment = taCenter
              Width = 17
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'APLICA_JUEVES'
              Title.Alignment = taCenter
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICA_VIERNES'
              Title.Alignment = taCenter
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICA_SABADOS'
              Title.Alignment = taCenter
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICA_DOMINGO'
              Title.Alignment = taCenter
              Width = 20
              Visible = True
            end>
        end
      end
      object pagHistorico: TTabSheet
        Caption = 'Historico'
        ImageIndex = 2
        DesignSize = (
          1090
          466)
        object BitBtn2: TBitBtn
          Left = 916
          Top = 438
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Ver Historial'
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 3
          Top = 438
          Width = 86
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Limpiar Historial'
          TabOrder = 2
          OnClick = BitBtn3Click
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1090
          Height = 432
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          PopupMenu = PopupMenu2
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataModeController.GridModeBufferCount = 200
            DataController.DataSource = DSArtHis
            DataController.DetailKeyFieldNames = 'CODIGO'
            DataController.KeyFieldNames = 'CODIGO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.CellMerging = True
              Options.Moving = False
              Width = 142
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRASTOCK'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.Focusing = False
              Options.CellMerging = True
              Options.Moving = False
              Width = 429
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Descuento'
              DataBinding.FieldName = 'DESCUENTO'
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'PRECIO'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'DESDE'
              HeaderAlignmentHorz = taCenter
              Width = 130
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'HASTA'
              HeaderAlignmentHorz = taCenter
              Width = 130
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 569
    Width = 1098
    Align = alBottom
    ExplicitTop = 569
    ExplicitWidth = 1098
    inherited btConfirma: TBitBtn
      Width = 79
      ExplicitWidth = 79
    end
    inherited btNuevo: TBitBtn
      Left = 81
      Visible = False
      ExplicitLeft = 81
    end
    inherited btCancelar: TBitBtn
      Left = 156
      Visible = False
      ExplicitLeft = 156
    end
    inherited btModificar: TBitBtn
      Left = 231
      Visible = False
      ExplicitLeft = 231
    end
    inherited Pr: TSpeedButton
      Left = 306
      Visible = False
      ExplicitLeft = 306
    end
    inherited btBuscar: TBitBtn
      Left = 321
      ExplicitLeft = 321
    end
    inherited Ne: TSpeedButton
      Left = 396
      Visible = False
      ExplicitLeft = 396
    end
    inherited btBorrar: TBitBtn
      Left = 411
      Visible = False
      ExplicitLeft = 411
    end
    inherited btSalir: TBitBtn
      Left = 486
      ExplicitLeft = 486
    end
  end
  inherited Panel1: TPanel
    Top = 599
    Width = 1098
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 599
    ExplicitWidth = 1098
    inherited sbEstado: TStatusBar
      Width = 936
      SimplePanel = True
      ExplicitWidth = 936
    end
  end
  inherited ActionList1: TActionList
    Left = 520
    Top = 120
    inherited Agregar: TAction
      Enabled = False
    end
    inherited Borrar: TAction
      Enabled = False
    end
    inherited Modificar: TAction
      Enabled = False
    end
    inherited Cancelar: TAction
      Enabled = False
    end
    inherited Buscar: TAction
      Enabled = False
      ShortCut = 0
      Visible = False
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      ShortCut = 16397
      OnExecute = BuscarArticuloExecute
    end
    object AplicarAllSubRubro: TAction
      Caption = 'Aplicar Al SubRubro'
      OnExecute = AplicarAllSubRubroExecute
    end
    object LimpiarAllSubRubros: TAction
      Caption = 'Limpiar All SubRubros'
      OnExecute = LimpiarAllSubRubrosExecute
    end
    object BorrarHistorialUno: TAction
      Caption = 'Borrar Historial de este Articulo'
      OnExecute = BorrarHistorialUnoExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 576
  end
  inherited ImageList1: TImageList
    Left = 240
    Top = 152
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
    Left = 480
    Top = 320
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 440
    Top = 248
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 520
    Top = 224
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sd.codigo,s.detalle_stk as MuestraStock, sd.descuento,'
      'sd.desde,sd.hasta,sd.precio,sd.soloclientes,'
      'sd.aplica_lunes,'
      'sd.aplica_martes,'
      'sd.aplica_miercoles,'
      'sd.aplica_jueves,'
      'sd.aplica_viernes,'
      'sd.aplica_sabados,'
      'sd.aplica_domingo,'
      'sd.aplica_all_days'
      ' from stock_dsto_especial sd'
      'left join stock s on s.codigo_stk=sd.codigo')
    Left = 336
    Top = 440
    object QArticulosCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticulosMUESTRASTOCK: TStringField
      FieldName = 'MUESTRASTOCK'
      ProviderFlags = []
      Size = 45
    end
    object QArticulosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Required = True
    end
    object QArticulosDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Required = True
    end
    object QArticulosHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Required = True
    end
    object QArticulosPRECIO: TFloatField
      FieldName = 'PRECIO'
      Required = True
    end
    object QArticulosSOLOCLIENTES: TStringField
      FieldName = 'SOLOCLIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_LUNES: TStringField
      FieldName = 'APLICA_LUNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_MARTES: TStringField
      FieldName = 'APLICA_MARTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_MIERCOLES: TStringField
      FieldName = 'APLICA_MIERCOLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_JUEVES: TStringField
      FieldName = 'APLICA_JUEVES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_VIERNES: TStringField
      FieldName = 'APLICA_VIERNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_SABADOS: TStringField
      FieldName = 'APLICA_SABADOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_ALL_DAYS: TStringField
      FieldName = 'APLICA_ALL_DAYS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QArticulosAPLICA_DOMINGO: TStringField
      FieldName = 'APLICA_DOMINGO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSArticulos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPArticulos'
    BeforeInsert = CDSArticulosBeforeInsert
    AfterPost = CDSArticulosAfterPost
    AfterDelete = CDSArticulosAfterDelete
    OnNewRecord = CDSArticulosNewRecord
    Left = 472
    Top = 432
    object CDSArticulosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSArticulosCODIGOSetText
      Size = 8
    end
    object CDSArticulosMUESTRASTOCK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRASTOCK'
      ProviderFlags = []
      Size = 45
    end
    object CDSArticulosDESCUENTO: TFloatField
      DisplayLabel = '% Dsto'
      FieldName = 'DESCUENTO'
      Required = True
      OnSetText = CDSArticulosDESCUENTOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSArticulosDESDE: TSQLTimeStampField
      DisplayLabel = 'Desde'
      FieldName = 'DESDE'
      Required = True
    end
    object CDSArticulosHASTA: TSQLTimeStampField
      DisplayLabel = 'Hasta'
      FieldName = 'HASTA'
      Required = True
    end
    object CDSArticulosPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Required = True
      OnSetText = CDSArticulosPRECIOSetText
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSArticulosSOLOCLIENTES: TStringField
      DisplayLabel = 'S.Cli'
      FieldName = 'SOLOCLIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_ALL_DAYS: TStringField
      DisplayLabel = 'T'
      FieldName = 'APLICA_ALL_DAYS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_LUNES: TStringField
      DisplayLabel = 'L'
      FieldName = 'APLICA_LUNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_MARTES: TStringField
      DisplayLabel = 'M'
      FieldName = 'APLICA_MARTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_MIERCOLES: TStringField
      DisplayLabel = 'Mi'
      FieldName = 'APLICA_MIERCOLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_JUEVES: TStringField
      DisplayLabel = 'J'
      FieldName = 'APLICA_JUEVES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_VIERNES: TStringField
      DisplayLabel = 'V'
      FieldName = 'APLICA_VIERNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_SABADOS: TStringField
      DisplayLabel = 'S'
      FieldName = 'APLICA_SABADOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSArticulosAPLICA_DOMINGO: TStringField
      DisplayLabel = 'D'
      FieldName = 'APLICA_DOMINGO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPArticulos: TDataSetProvider
    DataSet = QArticulos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 416
    Top = 432
  end
  object DSArticulos: TDataSource
    DataSet = CDSArticulos
    Left = 560
    Top = 432
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 424
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 216
    Top = 416
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
  object QListado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from LST_PARA_PEDIDO( :rubro )'
      'order by detalle_stk')
    Left = 200
    Top = 528
    ParamData = <
      item
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPListado: TDataSetProvider
    DataSet = QListado
    Options = [poAllowMultiRecordUpdates, poPropogateChanges, poUseQuoteChar]
    Left = 264
    Top = 528
  end
  object CDSListado: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListado'
    OnNewRecord = CDSListadoNewRecord
    Left = 336
    Top = 536
    object CDSListadoCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object CDSListadoDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSListadoRUBRO_STK: TStringField
      DisplayLabel = 'Rub'
      FieldName = 'RUBRO_STK'
      Size = 3
    end
    object CDSListadoSUBRUBRO_STK: TStringField
      DisplayLabel = 'Sub'
      FieldName = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSListadoMARCA_STK: TStringField
      DisplayLabel = 'Marc.'
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object CDSListadoDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      Size = 35
    end
    object CDSListadoDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Size = 45
    end
    object CDSListadoDESCRIPCION_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object CDSListadoDESCUENTO: TFloatField
      DisplayLabel = 'Dsto.'
      FieldName = 'DESCUENTO'
      OnSetText = CDSListadoDESCUENTOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSListadoPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      OnSetText = CDSListadoPRECIOSetText
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSListadoDESDE: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Desde'
      FieldName = 'DESDE'
      OnSetText = CDSListadoDESDESetText
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CDSListadoHASTA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Hasta'
      FieldName = 'HASTA'
      OnSetText = CDSListadoHASTASetText
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CDSListadoSOLOCLIENTES: TStringField
      DisplayLabel = 'Cli'
      FieldName = 'SOLOCLIENTES'
      FixedChar = True
      Size = 1
    end
    object CDSListadoHORA_DESDE: TSQLTimeStampField
      Alignment = taRightJustify
      DisplayLabel = 'H.Desde'
      FieldName = 'HORA_DESDE'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object CDSListadoHORA_HASTA: TSQLTimeStampField
      Alignment = taRightJustify
      DisplayLabel = 'H.Hasta'
      FieldName = 'HORA_HASTA'
      DisplayFormat = 'hh:mm'
      EditMask = 'hh:mm'
    end
    object CDSListadoLUNES: TStringField
      FieldName = 'LUNES'
      FixedChar = True
      Size = 1
    end
    object CDSListadoMARTES: TStringField
      FieldName = 'MARTES'
      FixedChar = True
      Size = 1
    end
    object CDSListadoMIERCOLES: TStringField
      FieldName = 'MIERCOLES'
      FixedChar = True
      Size = 1
    end
    object CDSListadoJUEVES: TStringField
      FieldName = 'JUEVES'
      FixedChar = True
      Size = 1
    end
    object CDSListadoVIERNES: TStringField
      FieldName = 'VIERNES'
      FixedChar = True
      Size = 1
    end
    object CDSListadoSABADO: TStringField
      FieldName = 'SABADO'
      FixedChar = True
      Size = 1
    end
    object CDSListadoTODOS: TStringField
      FieldName = 'TODOS'
      OnSetText = CDSListadoTODOSSetText
      FixedChar = True
      Size = 1
    end
    object CDSListadoDOMINGO: TStringField
      FieldName = 'DOMINGO'
      FixedChar = True
      Size = 1
    end
  end
  object DSListado: TDataSource
    DataSet = CDSListado
    Left = 408
    Top = 536
  end
  object DSRubro: TDataSource
    DataSet = CDSRubro
    Left = 744
    Top = 208
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 696
    Top = 208
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Size = 35
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Options = []
    Left = 648
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 1004
    Top = 281
    object AplicarAlRubro1: TMenuItem
      Action = AplicarAllSubRubro
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object LimpiarAllSubRubros1: TMenuItem
      Action = LimpiarAllSubRubros
    end
  end
  object DSPArtHis: TDataSetProvider
    DataSet = QArtiHis
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 112
  end
  object CDSArtHis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPArtHis'
    BeforeInsert = CDSArticulosBeforeInsert
    AfterPost = CDSArticulosAfterPost
    AfterDelete = CDSArticulosAfterDelete
    OnNewRecord = CDSArticulosNewRecord
    Left = 744
    Top = 112
    object StringField14: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSArticulosCODIGOSetText
      Size = 8
    end
    object StringField15: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRASTOCK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object SQLTimeStampField5: TSQLTimeStampField
      DisplayLabel = 'Desde'
      FieldName = 'DESDE'
      Origin = 'DESDE'
      Required = True
    end
    object SQLTimeStampField6: TSQLTimeStampField
      DisplayLabel = 'Hasta'
      FieldName = 'HASTA'
      Origin = 'HASTA'
      Required = True
    end
    object FloatField3: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
      OnSetText = CDSArticulosPRECIOSetText
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSArtHisDESCUENTO: TFloatField
      DisplayLabel = 'Dsct %'
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = '0.00'
    end
  end
  object DSArtHis: TDataSource
    DataSet = CDSArtHis
    Left = 784
    Top = 112
  end
  object PopupMenu2: TPopupMenu
    Left = 956
    Top = 281
    object BorrarHistorialdeesteArticulo1: TMenuItem
      Action = BorrarHistorialUno
    end
  end
  object QArtiHis: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sd.codigo,s.detalle_stk as MuestraStock, sd.descuento,'
      'sd.desde,sd.hasta,sd.precio'
      ' from stock_dsto_especial_his sd'
      'left join stock s on s.codigo_stk=sd.codigo'
      'order by s.detalle_stk,sd.desde')
    Left = 644
    Top = 113
  end
  object QlimpiarHistorialFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from stock_dsto_especial_his ')
    Left = 996
    Top = 161
  end
  object QLimpiarHistorialUnoFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from  stock_dsto_especial_his  where codigo = :codigo')
    Left = 284
    Top = 249
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object QLimpiarArticulosFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from stock_dsto_especial ')
    Left = 276
    Top = 313
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_rubro,detalle_rubro from rubros order by detalle_r' +
        'ubro')
    Left = 588
    Top = 209
  end
end
