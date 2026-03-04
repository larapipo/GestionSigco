inherited FormPedidosMorphi: TFormPedidosMorphi
  Left = 463
  Top = 48
  Caption = 'Lector Pedidod Morphi'
  ClientHeight = 713
  ClientWidth = 798
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 816
  ExplicitHeight = 754
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 798
    Height = 660
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 798
    ExplicitHeight = 660
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 798
      Height = 660
      ActivePage = pgPedidos
      Align = alClient
      TabOrder = 0
      object pgPedidos: TTabSheet
        Caption = 'Pedidos'
        DesignSize = (
          790
          632)
        object Label3: TLabel
          Left = 3
          Top = 539
          Width = 168
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Rubro para Dar de Alta los Articulos'
          ExplicitTop = 559
        end
        object Label2: TLabel
          Left = 555
          Top = 539
          Width = 51
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Sub Rubro'
          ExplicitTop = 559
        end
        object Label1: TLabel
          Left = 266
          Top = 539
          Width = 34
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Rubros'
          ExplicitTop = 559
        end
        object Label4: TLabel
          Left = 3
          Top = 585
          Width = 165
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Directorio Archivo de Datos Morphi'
          ParentShowHint = False
          ShowHint = True
          ExplicitTop = 605
        end
        object sbClaveElect: TSpeedButton
          Left = 381
          Top = 604
          Width = 19
          Height = 21
          Anchors = [akLeft, akBottom]
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BE078DBEFF00FFFF00FF078DBE63CBF8078DBEA3E1FB66CDF965CDF865CDF965
            CDF965CDF865CDF965CDF866CDF83AADD8ACE7F5078DBEFF00FF078DBE6AD1F9
            078DBEA8E5FC6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9B1EAF5078DBEFF00FF078DBE72D6FA078DBEAEEAFC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9B6EEF6078DBEFF00FF078DBE79DDFB
            078DBEB5EEFD83E4FB84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DABBF2F6078DBEFF00FF078DBE82E3FC078DBEBAF3FD8DEBFC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDABEF4F7078DBEFF00FF078DBE8AEAFC
            078DBEFFFFFFC9F7FEC8F7FEC9F7FEC9F7FEC9F7FEC8F7FEC9F7FEC8F7FE9BD5
            E7DEF9FB078DBEFF00FF078DBE93F0FE078DBE078DBE078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBEFF00FF078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = sbClaveElectClick
          ExplicitTop = 624
        end
        object Label5: TLabel
          Left = 3
          Top = 3
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object JvDBStatusLabel1: TJvDBStatusLabel
          Left = 689
          Top = 174
          Width = 96
          Height = 13
          Style = lsRecordNo
          Alignment = taRightJustify
          Transparent = True
        end
        object JvDBStatusLabel2: TJvDBStatusLabel
          Left = 689
          Top = 512
          Width = 96
          Height = 13
          Style = lsRecordNo
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Transparent = True
          ExplicitTop = 505
        end
        object DBText1: TDBText
          Left = 21
          Top = 175
          Width = 65
          Height = 15
          DataField = 'INDICE'
        end
        object Label6: TLabel
          Left = 478
          Top = 0
          Width = 144
          Height = 13
          Caption = 'Deposito Origen Transferencia'
        end
        object lbModo: TLabel
          Left = 432
          Top = 587
          Width = 329
          Height = 33
          Alignment = taCenter
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = 'En Modo Facturaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = 612
        end
        object dbgCabecera: TJvDBGrid
          Left = 3
          Top = 44
          Width = 782
          Height = 129
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = dbgCabeceraCellClick
          OnDrawColumnCell = dbgCabeceraDrawColumnCell
          OnDblClick = FacturarExecute
          TitleButtons = True
          OnTitleBtnClick = dbgCabeceraTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_SUCURSAL_PIDE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nombre'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 383
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PIDE_NTACTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 29
              Visible = True
            end
            item
              Color = clSkyBlue
              Expanded = False
              FieldName = 'COD_SUCURSAL_ENTREGA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlue
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end>
        end
        object dbgDetalle: TJvDBGrid
          Left = 3
          Top = 191
          Width = 782
          Height = 320
          Anchors = [akLeft, akTop, akBottom]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgDetalleDrawColumnCell
          OnDblClick = AgregarArticuloExecute
          TitleButtons = True
          OnTitleBtnClick = dbgDetalleTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_ARTICU'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 478
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTREGADO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end>
        end
        object cbRubro: TJvDBLookupCombo
          Left = 3
          Top = 558
          Width = 297
          Height = 21
          DisplayEmpty = 'Todos Los Rubros'
          EmptyValue = '***'
          Anchors = [akLeft, akBottom]
          LookupField = 'CODIGO_RUBRO'
          LookupDisplay = 'DETALLE_RUBRO'
          LookupSource = DSRubros
          TabOrder = 2
          OnChange = cbRubroChange
        end
        object cbSubRubro: TJvDBLookupCombo
          Left = 309
          Top = 558
          Width = 297
          Height = 21
          DisplayEmpty = 'Todos los Subrubros'
          EmptyValue = '*****'
          Anchors = [akLeft, akBottom]
          LookupField = 'CODIGO_SUBRUBRO'
          LookupDisplay = 'DETALLE_SUBRUBRO'
          LookupSource = DSSubRubro
          TabOrder = 3
          OnEnter = cbSubRubroEnter
        end
        object edBase: TEdit
          Left = 3
          Top = 604
          Width = 372
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 4
          Text = 'Base de Datos'
        end
        object ceCliente: TJvComboEdit
          Left = 3
          Top = 17
          Width = 73
          Height = 21
          AlwaysEnableButton = True
          ButtonWidth = 16
          ClickKey = 16397
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          MaxLength = 6
          TabOrder = 5
          Text = ''
          OnButtonClick = ceClienteButtonClick
          OnKeyPress = ceClienteKeyPress
        end
        object edNombreCliente: TEdit
          Left = 96
          Top = 17
          Width = 321
          Height = 21
          Color = clInfoBk
          Enabled = False
          TabOrder = 6
        end
        object chVerificaArticulos: TCheckBox
          Left = 114
          Top = 0
          Width = 199
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Verificar Articulos Antes de Facturar'
          TabOrder = 7
        end
        object edSucursales: TEdit
          Left = 638
          Top = 558
          Width = 147
          Height = 21
          Hint = 'Sucursales separado por ComAS (1,2,...)'
          Anchors = [akLeft, akBottom]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          TextHint = 'Sucursales Origen'
        end
        object chbFiltraSucursal: TCheckBox
          Left = 636
          Top = 537
          Width = 147
          Height = 19
          Anchors = [akLeft, akBottom]
          BiDiMode = bdRightToLeft
          Caption = 'Filtrar Sucursales'
          ParentBiDiMode = False
          TabOrder = 9
          OnClick = chbFiltraSucursalClick
        end
        object chbGeneraTX: TCheckBox
          Left = 445
          Top = 514
          Width = 147
          Height = 19
          Alignment = taLeftJustify
          Anchors = [akLeft, akBottom]
          BiDiMode = bdRightToLeft
          Caption = 'Generar Transferencia'
          ParentBiDiMode = False
          TabOrder = 10
          OnClick = chbGeneraTXClick
        end
        object dbcDeposito: TJvDBLookupCombo
          Left = 477
          Top = 17
          Width = 308
          Height = 20
          DisplayEmpty = 'Sin Deposito'
          EmptyValue = '***'
          LookupField = 'ID'
          LookupDisplay = 'NOMBRE'
          LookupSource = DSDepositos
          TabOrder = 11
        end
      end
      object pgRelaciones: TTabSheet
        Caption = 'Relaciones'
        ImageIndex = 1
        object dbgRelacion: TJvDBGrid
          Left = 0
          Top = 25
          Width = 790
          Height = 594
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = DSRelacion
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgRelacionColEnter
          OnEditButtonClick = dbgRelacionEditButtonClick
          OnKeyPress = dbgRelacionKeyPress
          ShowTitleHint = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Codigo'
              Title.Color = clGradientActiveCaption
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'NOMNRECLIENTE'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Nombre'
              Title.Color = clGradientActiveCaption
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 321
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Title.Caption = 'Sucursal'
              Title.Color = clGradientActiveCaption
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 790
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          object Label7: TLabel
            Left = 9
            Top = 6
            Width = 139
            Height = 13
            Caption = 'Codigo del Cliente en Gestion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 413
            Top = 6
            Width = 123
            Height = 13
            Caption = 'CodigoSucursal de Origen'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Pedidos Facturados'
        ImageIndex = 2
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 790
          Height = 632
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Coffee'
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = PopupMenu2
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1INDICE: TcxGridDBColumn
              DataBinding.FieldName = 'INDICE'
              Width = 66
            end
            object cxGrid1DBTableView1CTE_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CTE_CODIGO'
              Width = 89
            end
            object cxGrid1DBTableView1PREFIJO: TcxGridDBColumn
              DataBinding.FieldName = 'PREFIJO'
            end
            object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
              DataBinding.FieldName = 'NUMERO'
            end
            object cxGrid1DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
            end
            object cxGrid1DBTableView1HORA: TcxGridDBColumn
              DataBinding.FieldName = 'HORA'
            end
            object cxGrid1DBTableView1FECHA_LIMITE: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_LIMITE'
            end
            object cxGrid1DBTableView1COD_SUCURSAL_PIDE: TcxGridDBColumn
              DataBinding.FieldName = 'COD_SUCURSAL_PIDE'
            end
            object cxGrid1DBTableView1COD_SUCURSAL_ENTREGA: TcxGridDBColumn
              DataBinding.FieldName = 'COD_SUCURSAL_ENTREGA'
            end
            object cxGrid1DBTableView1OBSERVACIONES: TcxGridDBColumn
              DataBinding.FieldName = 'OBSERVACIONES'
            end
            object cxGrid1DBTableView1USUARIO: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIO'
            end
            object cxGrid1DBTableView1ESTADO: TcxGridDBColumn
              DataBinding.FieldName = 'ESTADO'
            end
            object cxGrid1DBTableView1USUARIO_MODIFICO: TcxGridDBColumn
              DataBinding.FieldName = 'USUARIO_MODIFICO'
            end
            object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
            end
            object cxGrid1DBTableView1PIDE_NTACTO: TcxGridDBColumn
              DataBinding.FieldName = 'PIDE_NTACTO'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 660
    Width = 798
    Align = alBottom
    ButtonHeight = 27
    ExplicitTop = 660
    ExplicitWidth = 798
    inherited btConfirma: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btNuevo: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btCancelar: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btModificar: TBitBtn
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited Pr: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBuscar: TBitBtn
      Height = 27
      ExplicitHeight = 27
    end
    inherited Ne: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBorrar: TBitBtn
      Width = 74
      Height = 27
      Visible = False
      ExplicitWidth = 74
      ExplicitHeight = 27
    end
    inherited btSalir: TBitBtn
      Left = 481
      Height = 27
      ExplicitLeft = 481
      ExplicitHeight = 27
    end
  end
  inherited Panel1: TPanel
    Top = 690
    Width = 798
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 690
    ExplicitWidth = 798
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 709
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 709
    end
  end
  inherited ActionList1: TActionList
    Left = 472
    Top = 96
    object Facturar: TAction
      Caption = 'Facturar'
      OnExecute = FacturarExecute
    end
    object HacerFactura: TAction
      Caption = 'HacerFactura'
      OnExecute = HacerFacturaExecute
    end
    object MarcarFacturado: TAction
      Caption = 'Marcar Facturado'
      OnExecute = MarcarFacturadoExecute
    end
    object AgregarArticulo: TAction
      Caption = 'AgregarArticulo'
      OnExecute = AgregarArticuloExecute
    end
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object DesmarcarPedido: TAction
      Caption = 'Desmarcar Pedido'
      OnExecute = DesmarcarPedidoExecute
    end
    object VerFactura: TAction
      Caption = 'Ver Factura Asociada'
      OnExecute = VerFacturaExecute
    end
    object HacerTxStock: TAction
      Caption = 'HacerTxStock'
      OnExecute = HacerTxStockExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 536
    Top = 112
  end
  inherited ImageList1: TImageList
    Left = 416
    Top = 112
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
    Left = 504
    Top = 400
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 448
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    FileName = 'FormPedidosMorphi.ini'
    Left = 568
    Top = 464
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 408
    Top = 280
  end
  inherited QBrowse2: TFDQuery
    Left = 152
    Top = 280
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(codigo_stk) from stock'
      '')
    Left = 80
    Top = 520
  end
  object QTraeCodigo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.Detalle_stk,'
      '       s.rubro_stk,s.subrubro_stk,s.clase_articulo from stock s'
      'where s.reemplazo_stk = :codigo')
    Left = 432
    Top = 344
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QTraeCodigoCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QTraeCodigoDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QTraeCodigoRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QTraeCodigoSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QTraeCodigoCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
  end
  object spABMStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ABM_STOCK'
    Left = 512
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Precision = 45
        ParamType = ptInput
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'RUBRO'
        DataType = ftString
        Precision = 3
        ParamType = ptInput
      end
      item
        Name = 'SUBRUBRO'
        DataType = ftString
        Precision = 5
        ParamType = ptInput
      end
      item
        Name = 'MODO_GRAVAMEN'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end
      item
        Name = 'TASA_IVA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'SOBRETASA_IVA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'COSTO_GRAVADO'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'COSTO_EXENTO'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'DETALLE_ADICIONAL'
        DataType = ftString
        Precision = 200
        ParamType = ptInput
      end
      item
        Name = 'CODIGO_ALTERNATIVO'
        DataType = ftString
        Precision = 20
        ParamType = ptInput
      end
      item
        Name = 'PRESENTACION_CANTIDAD'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'PRESENTACION_UNIDAD'
        DataType = ftString
        Precision = 3
        ParamType = ptInput
      end
      item
        Name = 'MONEDA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object DSRubros: TDataSource
    DataSet = CDSRubro
    Left = 48
    Top = 88
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 96
    Top = 88
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Options = []
    Left = 144
    Top = 88
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = QSubRubros
    Options = []
    Left = 152
    Top = 144
  end
  object CDSSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSubRubro'
    Left = 96
    Top = 144
    object CDSSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRubro
    Left = 48
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 144
    object MarcacFacturado1: TMenuItem
      Action = MarcarFacturado
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VerFacturaAsociada1: TMenuItem
      Action = VerFactura
    end
  end
  object DSRelacion: TDataSource
    Left = 164
    Top = 392
  end
  object QFacturado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.id_fc,f.nrocpbte from fcvtacab f'
      'where f.id_pedido_morphi = :pedido')
    Left = 220
    Top = 288
    ParamData = <
      item
        Name = 'pedido'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFacturadoID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object QFacturadoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 276
    Top = 88
    object DesmarcarPedido1: TMenuItem
      Action = DesmarcarPedido
    end
  end
  object QNCPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id_notacreditopordefecto,cp.denominacion,'
      
        '          cp.clase_comprob,cp.tipo_comprob,cp.sucursal from clie' +
        'ntes c'
      
        '  left join comprobantes cp on cp.id_comprobante=c.id_notacredit' +
        'opordefecto'
      'where c.codigo=:codigo')
    Left = 568
    Top = 408
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QNCPorDefectoID_NOTACREDITOPORDEFECTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QNCPorDefectoDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QNCPorDefectoCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QNCPorDefectoTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QNCPorDefectoSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
    end
  end
  object DSPComprobantePorDefecto: TDataSetProvider
    DataSet = DMMain_FD.QComprobantePorDefecto
    Left = 288
    Top = 459
  end
  object CDSComprobantePorDefecto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DesglozaIva'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantePorDefecto'
    Left = 424
    Top = 459
  end
  object QRubro: TFDQuery
    MasterSource = DSRubros
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from rubros')
    Left = 204
    Top = 88
  end
  object QSubRubros: TFDQuery
    MasterSource = DSRubros
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from subrubros s where s.codigo_rubro = :rubro')
    Left = 204
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos')
    Left = 700
    Top = 328
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 700
    Top = 384
  end
end
