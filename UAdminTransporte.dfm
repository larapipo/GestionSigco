inherited FormAdminTransporte: TFormAdminTransporte
  Caption = 'Administracion de Transporte'
  ClientHeight = 635
  ClientWidth = 922
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 940
  ExplicitHeight = 676
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 922
    Height = 582
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 922
    ExplicitHeight = 582
    object pcMovimientos: TPageControl
      Left = 0
      Top = 105
      Width = 922
      Height = 477
      ActivePage = tsGastos
      Align = alClient
      TabOrder = 0
      object tsGastos: TTabSheet
        Caption = 'Gastos'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 30
          Width = 914
          Height = 419
          Align = alBottom
          Anchors = [akTop, akBottom]
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'McSkin'
          object cxGrid1DBTableView1: TcxGridDBTableView
            OnDblClick = cxGrid1DBTableView1DblClick
            DataController.DataSource = DSGastos
            DataController.Filter.AutoDataSetFilter = True
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'DEBE'
                Column = cxGrid1DBTableView1DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'HABER'
                Column = cxGrid1DBTableView1HABER
              end
              item
                Format = ',0.00'
                Kind = skSum
                Position = spFooter
                FieldName = 'SALDOCALCULADO'
                Column = cxGrid1DBTableView1SALDOCALCULADO
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1DEBE
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1HABER
              end
              item
                Format = ',0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1SALDOCALCULADO
              end>
            DataController.Summary.SummaryGroups = <
              item
                SummaryItems = <
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    FieldName = 'DEBE'
                    Column = cxGrid1DBTableView1DEBE
                  end
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    FieldName = 'HABER'
                    Column = cxGrid1DBTableView1HABER
                  end
                  item
                    Format = ',0.00'
                    Kind = skSum
                    Position = spFooter
                    FieldName = 'SALDOCALCULADO'
                    Column = cxGrid1DBTableView1SALDOCALCULADO
                  end>
              end>
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = 'Sin Datos'
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid1DBTableView1TIPODETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPODETALLE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1RUBRO_DET: TcxGridDBColumn
              DataBinding.FieldName = 'RUBRO_DET'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1SUBRUB_DET: TcxGridDBColumn
              DataBinding.FieldName = 'SUBRUB_DET'
              Visible = False
              GroupIndex = 0
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Options.CellMerging = True
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 81
            end
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
              MinWidth = 15
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 34
            end
            object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NROCPBTE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 95
            end
            object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 50
            end
            object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 285
            end
            object cxGrid1DBTableView1NETO_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NETO_CPBTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1IMPORTE_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE_CPBTE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'TOTAL'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
            end
            object cxGrid1DBTableView1DEBE: TcxGridDBColumn
              DataBinding.FieldName = 'DEBE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 118
            end
            object cxGrid1DBTableView1HABER: TcxGridDBColumn
              DataBinding.FieldName = 'HABER'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 104
            end
            object cxGrid1DBTableView1SALDOCALCULADO: TcxGridDBColumn
              DataBinding.FieldName = 'SALDOCALCULADO'
              HeaderAlignmentHorz = taCenter
              Width = 97
            end
            object cxGrid1DBTableView1PORCENTAJE: TcxGridDBColumn
              DataBinding.FieldName = 'PORCENTAJE'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = ',0.00'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Options.ShowEditButtons = isebNever
              Width = 60
            end
          end
          object cxGrid1TableView1: TcxGridTableView
            object cxGrid1TableView1Column1: TcxGridColumn
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object Desde: TJvDateEdit
          Left = 700
          Top = 3
          Width = 89
          Height = 21
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
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 1
        end
        object Hasta: TJvDateEdit
          Left = 795
          Top = 3
          Width = 89
          Height = 21
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
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 2
        end
        object UpDown1: TUpDown
          Left = 890
          Top = 3
          Width = 17
          Height = 20
          Min = -32000
          Max = 32000
          TabOrder = 3
          OnClick = UpDown1Click
        end
        object chbPorDia: TCheckBox
          Left = 607
          Top = 5
          Width = 75
          Height = 17
          Caption = 'Inc.por Dia'
          TabOrder = 4
        end
      end
      object tsVencimientos: TTabSheet
        Caption = 'Vencimientos'
        ImageIndex = 2
        object dbgVencimientos: TJvDBGrid
          Left = 0
          Top = 0
          Width = 914
          Height = 449
          Align = alClient
          DataSource = DSVencimientos
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = dbgAnexosEditButtonClick
          OnKeyPress = dbgVencimientosKeyPress
          TitleButtons = True
          OnTitleBtnClick = dbgVencimientosTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          OnCheckIfBooleanField = dbgVencimientosCheckIfBooleanField
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHAVTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOTIVO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 701
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTADO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object tsDocumentos: TTabSheet
        Caption = 'Documentos'
        object Label9: TLabel
          Left = 3
          Top = 3
          Width = 99
          Height = 13
          Caption = 'Documentos en PDF'
        end
        object dbgAnexos: TJvDBGrid
          Left = 3
          Top = 22
          Width = 577
          Height = 307
          DataSource = DSAnexos
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgAnexosDblClick
          OnEditButtonClick = dbgAnexosEditButtonClick
          TitleButtons = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'ARCHIVO'
              Title.Alignment = taCenter
              Title.Caption = 'Archivo'
              Width = 543
              Visible = True
            end>
        end
        object dbnContratos: TDBNavigator
          Left = 352
          Top = 342
          Width = 228
          Height = 25
          DataSource = DSAnexos
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
          TabOrder = 1
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 922
      Height = 105
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label2: TLabel
        Left = 95
        Top = 8
        Width = 56
        Height = 13
        Caption = 'Descripcion'
      end
      object Label3: TLabel
        Left = 15
        Top = 56
        Width = 38
        Height = 13
        Caption = 'Dominio'
        FocusControl = dbeDominio
      end
      object Label4: TLabel
        Left = 117
        Top = 56
        Width = 30
        Height = 13
        Caption = 'Marca'
        FocusControl = dbeMarca
      end
      object Label5: TLabel
        Left = 244
        Top = 56
        Width = 35
        Height = 13
        Caption = 'Modelo'
        FocusControl = dbeModelo
      end
      object Label6: TLabel
        Left = 341
        Top = 56
        Width = 81
        Height = 13
        Caption = 'Kilometraje Inicial'
        FocusControl = dbeKm
      end
      object Label7: TLabel
        Left = 383
        Top = 5
        Width = 73
        Height = 13
        Caption = 'Tipo de Unidad'
      end
      object Label8: TLabel
        Left = 646
        Top = 56
        Width = 76
        Height = 13
        Caption = 'Centro de Costo'
      end
      object Label10: TLabel
        Left = 557
        Top = 5
        Width = 143
        Height = 13
        Caption = 'Color Identificador Planificador'
      end
      object Label11: TLabel
        Left = 457
        Top = 53
        Width = 73
        Height = 13
        Caption = 'Capacidad (Kg)'
        FocusControl = JvDBCalcEdit1
      end
      object DBEdit1: TDBEdit
        Left = 15
        Top = 24
        Width = 62
        Height = 21
        Color = clInfoBk
        DataField = 'ID'
        DataSource = DSBase
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 95
        Top = 24
        Width = 282
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRIPCION'
        DataSource = DSBase
        TabOrder = 1
      end
      object JvDBComboBox1: TJvDBComboBox
        Left = 383
        Top = 24
        Width = 145
        Height = 21
        DataField = 'TIPO_UNIDAD'
        DataSource = DSBase
        Items.Strings = (
          'CAMION'
          'ACOPLADO'
          'AUTO/CAMIONETA'
          'SIN DEFINIR')
        TabOrder = 2
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object dbeDominio: TDBEdit
        Left = 15
        Top = 72
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DOMINIO'
        DataSource = DSBase
        TabOrder = 3
      end
      object dbeMarca: TDBEdit
        Left = 117
        Top = 72
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MARCA'
        DataSource = DSBase
        TabOrder = 4
      end
      object dbeModelo: TDBEdit
        Left = 244
        Top = 72
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MODELO'
        DataSource = DSBase
        TabOrder = 5
      end
      object dbeKm: TJvDBCalcEdit
        Left = 341
        Top = 72
        Width = 100
        Height = 21
        DisplayFormat = ',0.00'
        ShowButton = False
        TabOrder = 6
        ZeroEmpty = False
        DecimalPlacesAlwaysShown = False
        DataField = 'KILOMETRAJE'
        DataSource = DSBase
      end
      object dbcCentroCosto: TJvDBLookupCombo
        Left = 646
        Top = 72
        Width = 265
        Height = 21
        DataField = 'ID_CTROCOSTO'
        DataSource = DSBase
        LookupField = 'ID'
        LookupDisplay = 'DESCRIPCION'
        LookupSource = DSCtroCosto
        TabOrder = 8
      end
      object cbColor: TJvColorButton
        Left = 557
        Top = 24
        Width = 73
        OtherCaption = '&Other...'
        Options = []
        Color = clSilver
        TabOrder = 9
      end
      object JvDBCalcEdit1: TJvDBCalcEdit
        Left = 457
        Top = 72
        Width = 100
        Height = 21
        DisplayFormat = ',0.00'
        ShowButton = False
        TabOrder = 7
        ZeroEmpty = False
        DecimalPlacesAlwaysShown = False
        DataField = 'CAPACIDAD'
        DataSource = DSBase
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 582
    Width = 922
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 582
    ExplicitWidth = 922
    inherited btConfirma: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Height = 28
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Height = 28
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 36
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImprimir: TBitBtn
      Left = 593
      Top = 0
      Width = 75
      Height = 28
      Caption = 'Imprimir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF006C6A6A006C6A6A00FF00FF00FF00FF006C6A6A006C6A
        6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006C6A6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3
        E3006C6A6A006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006C6A6A00DAD9D900A19F9F00A19F9F00A19F9F0037363600353535006C6D
        6D00BFBFBF00E1E2E200B7B6B6006C6A6A006C6A6A006C6A6A00FF00FF006C6A
        6A00D4D3D300CACACA008E8C8C008E8C8C008E8C8C003C3B3B000A090A000707
        07000B0B0B00070707007A7A7A00BBBBBB006C6A6A00FF00FF006C6A6A00CACA
        CA00CACACA008E8C8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A0008886
        86005E5B5C000707070009090900080808006C6A6A00767373006C6A6A00CACA
        CA008E8C8C00EFEEEE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCE
        CE00BDBCBC00ADABAB008B898900585656007A787800757373006C6A6A008E8C
        8C00FFFFFF00FEFCFC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0
        C100D7D7D700D8D8D800C7C6C600B7B6B600918F8F006C696900FF00FF006C6A
        6A006C6A6A00EDEBEB00B1A6A7007A6F72008A83880096929500969091009D97
        98009A9395009E989900BBBABA00D1D1D100C2C2C2006C6A6A00FF00FF00FF00
        FF00FF00FF006C6A6A00BB897F00A7876D008B6F64007D6760006F6265007973
        79008F8B8E00A9A3A400CBCACA00C1C1C1006C6A6A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BD828100FFE3B400FFD39F00E9B28100C9997300BA91
        6C00BD828100807D7E006C6A6A006C6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC6
        8800BD828100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0868300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BD828100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BD828100FFFFF200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD82
        8100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BD828100BD828100BD828100FBEFE200FBE3CF00FBDDC200BD828100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD828100BD828100BD828100FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 7
      OnClick = btImprimirClick
    end
  end
  inherited Panel1: TPanel
    Top = 612
    Width = 922
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 612
    ExplicitWidth = 922
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 833
      ExplicitWidth = 833
    end
  end
  inherited ActionList1: TActionList
    Left = 496
    Top = 192
    object TraerGastos: TAction
      Caption = 'TraerGastos'
      OnExecute = TraerGastosExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSTrans
    Left = 664
    Top = 72
  end
  inherited ImageList1: TImageList
    Left = 280
    Top = 80
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
    Left = 88
    Top = 424
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscadorTrans
    Campo = 'ID'
    Titulo = 'Transportes'
    Left = 744
    Top = 16
  end
  inherited QBrowse2: TFDQuery
    Left = 80
    Top = 480
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(id) from transp_propio'
      '')
    Left = 192
    Top = 456
    object QUltimoCodigo2MAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CDSAnexos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAnexos'
    BeforeInsert = CDSAnexosBeforeInsert
    OnNewRecord = CDSAnexosNewRecord
    OnReconcileError = CDSAnexosReconcileError
    Left = 176
    Top = 351
    object CDSAnexosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnexosID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAnexosARCHIVO: TStringField
      FieldName = 'ARCHIVO'
      Origin = 'ARCHIVO'
      Size = 200
    end
  end
  object DSPAnexos: TDataSetProvider
    DataSet = QAnexos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 344
  end
  object CDSTrans: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTransp'
    OnNewRecord = CDSTransNewRecord
    OnReconcileError = CDSTransReconcileError
    Left = 160
    Top = 207
    object CDSTransID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTransTIPO_UNIDAD: TIntegerField
      FieldName = 'TIPO_UNIDAD'
      Origin = 'TIPO_UNIDAD'
    end
    object CDSTransDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object CDSTransDOMINIO: TStringField
      DisplayLabel = 'Dominio'
      FieldName = 'DOMINIO'
      Origin = 'DOMINIO'
      Size = 15
    end
    object CDSTransMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 25
    end
    object CDSTransMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 6
    end
    object CDSTransID_CTROCOSTO: TIntegerField
      FieldName = 'ID_CTROCOSTO'
      Origin = 'ID_CTROCOSTO'
    end
    object CDSTransMUESTRACTROCOSTO: TStringField
      FieldName = 'MUESTRACTROCOSTO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object CDSTransCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object CDSTransCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      Required = True
    end
    object CDSTransKILOMETRAJE: TFloatField
      FieldName = 'KILOMETRAJE'
      Origin = 'KILOMETRAJE'
    end
  end
  object DSPTransp: TDataSetProvider
    DataSet = QTransp
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 200
  end
  object DSPBuscaCtro: TDataSetProvider
    DataSet = QBuscaCtro
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 240
  end
  object CDSBuscaCtro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCtro'
    Left = 640
    Top = 240
    object StringField2: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Cod'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSCtroCosto: TDataSource
    DataSet = CDSBuscaCtro
    Left = 736
    Top = 216
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.pdf'
    Filter = 'Acrobat File|*.pdf'
    Title = 'Archivos Pdf'
    Left = 656
    Top = 434
  end
  object DSAnexos: TDataSource
    DataSet = CDSAnexos
    Left = 544
    Top = 472
  end
  object DSPBuscadorTrans: TDataSetProvider
    DataSet = QBuscadorTrans
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 592
    Top = 328
  end
  object CDSBuscadorTrans: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscadorTrans'
    OnNewRecord = CDSTransNewRecord
    Left = 688
    Top = 327
    object CDSBuscadorTransDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 50
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object CDSBuscadorTransTIPO_UNIDAD: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_UNIDAD'
      Origin = 'TIPO_UNIDAD'
      Visible = False
    end
    object CDSBuscadorTransMARCA: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 25
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 25
    end
    object CDSBuscadorTransMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 6
    end
    object CDSBuscadorTransDOMINIO: TStringField
      DisplayLabel = 'Dominio'
      DisplayWidth = 15
      FieldName = 'DOMINIO'
      Origin = 'DOMINIO'
      Size = 15
    end
    object CDSBuscadorTransID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPGastos: TDataSetProvider
    DataSet = QGastos
    Options = []
    Left = 528
    Top = 128
  end
  object CDSGastos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ingresos'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'vtas'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'personal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ct'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ct'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGastos'
    Left = 584
    Top = 112
    object CDSGastosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object CDSGastosCTROCOSTO: TIntegerField
      DisplayLabel = 'Ctro.Costo'
      FieldName = 'CTROCOSTO'
      Origin = 'CTROCOSTO'
    end
    object CDSGastosDETALLE: TStringField
      DisplayLabel = 'Desc.Ctro.Costo'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 46
    end
    object CDSGastosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSGastosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSGastosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSGastosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
    object CDSGastosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSGastosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSGastosRUBRO: TStringField
      DisplayLabel = 'Rub.'
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object CDSGastosSUBRUBRO: TStringField
      DisplayLabel = 'Sub.R'
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 6
    end
    object CDSGastosRUBRO_DET: TStringField
      DisplayLabel = 'Rubro Det.'
      FieldName = 'RUBRO_DET'
      Origin = 'RUBRO_DET'
      Size = 35
    end
    object CDSGastosSUBRUB_DET: TStringField
      DisplayLabel = 'Sub Rub.Det'
      FieldName = 'SUBRUB_DET'
      Origin = 'SUBRUB_DET'
      Size = 50
    end
    object CDSGastosIDCPBTE: TIntegerField
      DisplayLabel = 'Id.Cpbte'
      FieldName = 'IDCPBTE'
      Origin = 'IDCPBTE'
    end
    object CDSGastosTIPODETALLE: TStringField
      DisplayLabel = 'Tipo Op.'
      FieldKind = fkInternalCalc
      FieldName = 'TIPODETALLE'
      Size = 15
    end
    object CDSGastosIMPORTE_CPBTE: TFloatField
      DisplayLabel = 'Imp.Cpbte'
      FieldName = 'IMPORTE_CPBTE'
      Origin = 'IMPORTE_CPBTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosTOTAL: TFloatField
      DisplayLabel = 'Im.Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosNETO_CPBTE: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO_CPBTE'
      Origin = 'NETO_CPBTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSGastosSALDOCALCULADO: TFloatField
      DisplayLabel = 'Saldo Calc'
      FieldKind = fkInternalCalc
      FieldName = 'SALDOCALCULADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSGastos: TDataSource
    DataSet = CDSGastos
    Left = 616
    Top = 112
  end
  object frListado: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.121858252300000000
    ReportOptions.LastChange = 39643.014895462960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 273
    Datasets = <
      item
        DataSet = frDBMov
        DataSetName = 'frDBMov'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 6.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 62.000000000000000000
        Top = 18.897650000000000000
        Width = 771.024120000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 2.204700000000000000
          Width = 264.000000000000000000
          Height = 26.000000000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          Memo.UTF8W = (
            'Movimientos de stock')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 405.000000000000000000
          Top = 37.984230000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 573.000000000000000000
          Top = 37.984230000000000000
          Width = 96.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 49.881880000000000000
          Top = 37.984230000000000000
          Width = 240.000000000000000000
          Height = 18.000000000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          HideZeros = True
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 878.000000000000000000
        Top = 139.842610000000000000
        Width = 771.024120000000000000
        Columns = 1
        ColumnWidth = 200.000000000000000000
        ColumnGap = 20.000000000000000000
        DataSet = frDBMov
        DataSetName = 'frDBMov'
        RowCount = 0
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = -7.000000000000000000
          Top = 0.157390000000000000
          Width = 724.000000000000000000
          Height = 870.000000000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67333038327B5C666F6E7474626C7B5C66
            305C666E696C205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F7220
            52696368656432302031302E302E31393034317D5C766965776B696E64345C75
            6331200D0A5C706172645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object frDBMov: TfrxDBDataset
    UserName = 'frDBMov'
    CloseDataSource = False
    DataSet = CDSGastos
    BCDToCurrency = False
    DataSetOptions = []
    Left = 824
    Top = 256
    FieldDefs = <
      item
        FieldName = 'TIPO'
        FieldAlias = 'TIPO'
      end
      item
        FieldName = 'CTROCOSTO'
        FieldAlias = 'CTROCOSTO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'TOTAL'
        FieldAlias = 'TOTAL'
      end
      item
        FieldName = 'PORCENTAJE'
        FieldAlias = 'PORCENTAJE'
      end
      item
        FieldName = 'IMPORTE_CPBTE'
        FieldAlias = 'IMPORTE_CPBTE'
      end
      item
        FieldName = 'NETO_CPBTE'
        FieldAlias = 'NETO_CPBTE'
      end
      item
        FieldName = 'DEBE'
        FieldAlias = 'DEBE'
      end
      item
        FieldName = 'HABER'
        FieldAlias = 'HABER'
      end
      item
        FieldName = 'RUBRO'
        FieldAlias = 'RUBRO'
      end
      item
        FieldName = 'SUBRUBRO'
        FieldAlias = 'SUBRUBRO'
      end
      item
        FieldName = 'RUBRO_DET'
        FieldAlias = 'RUBRO_DET'
      end
      item
        FieldName = 'SUBRUB_DET'
        FieldAlias = 'SUBRUB_DET'
      end
      item
        FieldName = 'IDCPBTE'
        FieldAlias = 'IDCPBTE'
      end
      item
        FieldName = 'TIPODETALLE'
        FieldAlias = 'TIPODETALLE'
      end
      item
        FieldName = 'SALDOCALCULADO'
        FieldAlias = 'SALDOCALCULADO'
      end>
  end
  object DSPVencimientos: TDataSetProvider
    DataSet = QVencimientos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 272
  end
  object CDSVencimientos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVencimientos'
    OnNewRecord = CDSVencimientosNewRecord
    OnReconcileError = CDSVencimientosReconcileError
    Left = 176
    Top = 271
    object CDSVencimientosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVencimientosID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSVencimientosESTADO: TStringField
      DisplayLabel = 'Cumplido'
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSVencimientosMOTIVO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Size = 200
    end
    object CDSVencimientosFECHAVTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Vto'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object DSVencimientos: TDataSource
    DataSet = CDSVencimientos
    Left = 240
    Top = 264
  end
  object ibgVenc: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_TRANS_PROPIO_VENCI'
    SystemGenerators = False
    Left = 212
    Top = 201
  end
  object QTransp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.*,cc.descripcion as MuestraCtroCosto from transp_propio' +
        ' t'
      'left join centro_costo cc on cc.id=t.id_ctrocosto'
      'where t.id = :id')
    Left = 44
    Top = 201
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTranspID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTranspTIPO_UNIDAD: TIntegerField
      FieldName = 'TIPO_UNIDAD'
      Origin = 'TIPO_UNIDAD'
    end
    object QTranspDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object QTranspDOMINIO: TStringField
      FieldName = 'DOMINIO'
      Origin = 'DOMINIO'
      Size = 15
    end
    object QTranspMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 25
    end
    object QTranspMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 6
    end
    object QTranspKILOMETRAJE: TFloatField
      FieldName = 'KILOMETRAJE'
      Origin = 'KILOMETRAJE'
    end
    object QTranspID_CTROCOSTO: TIntegerField
      FieldName = 'ID_CTROCOSTO'
      Origin = 'ID_CTROCOSTO'
    end
    object QTranspCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object QTranspCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      Required = True
    end
    object QTranspMUESTRACTROCOSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTROCOSTO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
  end
  object QVencimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select v.* from TRANSP_PROPIO_VENCI v where v.id_transporte = :i' +
        'd'
      'order by v.fechavto')
    Left = 44
    Top = 265
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVencimientosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVencimientosID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QVencimientosMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Size = 200
    end
    object QVencimientosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QVencimientosFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object QAnexos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from transp_propio_anexo t where t.id_transporte = :id')
    Left = 28
    Top = 329
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAnexosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnexosID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnexosARCHIVO: TStringField
      FieldName = 'ARCHIVO'
      Origin = 'ARCHIVO'
      Size = 200
    end
  end
  object QBuscadorTrans: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.*  from transp_propio t')
    Left = 508
    Top = 345
  end
  object QBuscaCtro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from centro_costo')
    Left = 492
    Top = 249
  end
  object QGastos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from LST_POR_CTRO_COSTO_new(:desde,:hasta,:ingresos,:vt' +
        'as,:personal) where ctrocosto= :ct or :ct = -1'
      '      order by tipo,ctrocosto,fecha')
    Left = 488
    Top = 128
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ingresos'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'vtas'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'personal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ct'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ct'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
