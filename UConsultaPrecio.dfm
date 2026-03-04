object FormConsultaPrecio: TFormConsultaPrecio
  Left = 153
  Top = 93
  BorderStyle = bsDialog
  Caption = 'Consulta de Precio'
  ClientHeight = 665
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 553
    Align = alTop
    Caption = 'pnPrincipal'
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 4
      Width = 50
      Height = 19
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 145
      Top = 4
      Width = 55
      Height = 19
      Caption = 'Articulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 734
      Top = 24
      Width = 155
      Height = 32
      Alignment = taRightJustify
      DataField = 'PRECIOCONIVA'
      DataSource = DSConsultaStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 800
      Top = 4
      Width = 43
      Height = 19
      Alignment = taCenter
      Caption = 'Precio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ceCodigo: TJvComboEdit
      Left = 13
      Top = 29
      Width = 126
      Height = 27
      ButtonWidth = 20
      ClickKey = 16397
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnButtonClick = BuscaArticuloExecute
      OnKeyDown = ceCodigoKeyDown
      OnKeyPress = ceCodigoKeyPress
    end
    object edDetalle: TEdit
      Left = 145
      Top = 29
      Width = 583
      Height = 27
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object pnDetalle: TPanel
      Left = 1
      Top = 80
      Width = 911
      Height = 472
      Align = alBottom
      Caption = 'pnDetalle'
      TabOrder = 2
      object Label3: TLabel
        Left = 332
        Top = 351
        Width = 63
        Height = 19
        Caption = 'Pr. C/Iva'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 568
        Top = 351
        Width = 111
        Height = 19
        Caption = 'Precio C/Descto'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 463
        Top = 351
        Width = 58
        Height = 19
        Caption = '% Dsto.'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 4
        Top = 351
        Width = 158
        Height = 19
        Caption = 'Deposito (Recargo)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 71
        Top = 408
        Width = 79
        Height = 13
        Caption = 'Pr + Rec x Depo'
        FocusControl = DBEdit3
      end
      object Label8: TLabel
        Left = 12
        Top = 424
        Width = 33
        Height = 13
        Caption = 'Rec.%'
        FocusControl = DBEdit4
      end
      object DBText1: TDBText
        Left = 697
        Top = 376
        Width = 65
        Height = 17
        DataField = 'SIGNO'
        DataSource = DSConsultaStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 697
        Top = 409
        Width = 12
        Height = 23
        Caption = '$'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btSalir: TBitBtn
        Left = 768
        Top = 367
        Width = 105
        Height = 46
        Hint = 'Cerrar la ventana actual'
        Caption = '&Salir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF044A
          07044A07044806034306034006034006034006034306FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF045007045007045007067C
          11067C11078613067E12067A1106751005650E065B0C034006034006034006FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF045007045007078C1208A317089D160791
          14078E14078B14078913078613078212067C11067510056C0F05650E04560B03
          3C05034006FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF045007067C1109AB1809AF1909A81808A51708A3
          1708A51708A61708A61708A61708A317089E16089615078B14067C1106701005
          650E044E0A033C05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0556090B8F1A0DB4220BB31D09B11A09AF1909AF1909B1
          1909B11909B11909B21909B11909B11909B11909AD1809A818089D16078B1406
          7510066A0E04560B034006FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF05560912A42A13B62D10B5270EB4230CB31E0AB21A09B21909B2
          1909B21909B21909B21909B21909B21909B21909B21909B11909AF1909A81808
          9A16078212066D0F05630E034006FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF04500713932919B93916B83313B62E11B5280EB4230CB3200AB21A09B2
          1909B21912B52217B62647C55337C04409B21909B21909B21909B21909B11909
          AD18089D16078212067010055C0C034006FF00FFFF00FFFF00FFFF00FFFF00FF
          045007107F231DBB421BBA3D19B93916B83514B72F11B62A0FB5250DB4210BB3
          1D0CB31B18B727D1F1D4FFFFFFFFFFFF65CF6F09B21909B21909B21909B21909
          B21909AD18089E1607861306701004580B044806FF00FFFF00FFFF00FFFF00FF
          04500723B44B20BC491EBB431BBA3E19B93A16B83514B72F12B62B10B5270DB4
          220BB31D75D47EFFFFFFFFFFFFFFFFFFFFFFFF65CF6F09B21909B21909B21909
          B21909B11909AD18089A16067D12067510034607FF00FFFF00FFFF00FF055C0A
          199B3725BE5323BD4F20BC491EBB451CBA401AB93B17B83615B73113B62D10B5
          280EB42386D98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65CF6F09B21909B21909
          B21909B21909B11909A818079114067C11056C0F044A07FF00FFFF00FF055C0A
          28BA5928C05926BF5424BE4F21BD4B1FBC471CBA401ABA3C18B93715B73313B6
          2E11B5291EB932D2F1D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65CF6F09B21909
          B21909B21909B21909AF1908A117078913078212044D07FF00FFFF00FF055C0A
          2EC2642BC16029C05B26BF5424BE5122BD4C1FBC471DBB421BBA3D18B93916B8
          3414B72F11B62A1EB933D2F1D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65CF6F09
          B21909B21909B21909B11909AB18089615078913044D07FF00FF086E0E22A548
          30C3692EC2642BC16029C05B27BF5725BE5222BD4D20BC481EBB431BBA3F19B9
          3A17B83514B73012B62B1FBA34D2F1D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65
          CF6F09B21909B21909B21909AF1908A117079114067C11044F0706751026AF53
          32C36A32C36A30C2672BC1602AC05D28BF5825BE5323BD4E21BC491EBB441CBA
          4019B93B17B83615B73112B62C1FBA35A5E3ADFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF65CF6F09B21909B21909B11909A818089A16078C12044F07097B1132C36A
          39C66F3BC67134C46C3AC56FCAF0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF47C55315B62409B21909AD1808A51709A818044F07097B1134C46C
          45C9784CCB7E3BC67198E1B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF0FAF128BC3609B21909B11909AD1809AD180450070B851437C56E
          55CE8365D28F48CA7B98E1B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF47C55309B21909B11909B11909B1190450070B891537C56E
          5FD18B7AD89F59CF8764D28FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFA3E2A909B21909B21909B21909B21909B2190450070B8D162EB759
          62D18D8EDEAD72D79930C36964D28F98E1B498E1B498E1B497E1B496E0B195E0
          AF94DFAD93DFAA92DEA890DEA58FDDA3D5F2DCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA5E3AD0CB31F0DB31D09B21909B21909B219089A160450070C921725AD4B
          5BCF889BE2B691DFAF57CE8530C36930C36930C36930C36930C3692FC3682DC2
          642BC15F29C05A26BF5524BE5090DEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7
          E4B111B62A0FB5250DB4210BB31D09B21909B219078C12045007FF00FF0E9D1B
          4FCC7F91DFAFADE7C47DD9A138C56E30C36930C36930C36930C36930C36930C3
          682EC2652CC16029C05BAEE7C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FD38416
          B83514B73012B62B0FB5250DB4210BB31D09B219045007FF00FFFF00FF0E9D1B
          40C6717AD89FB5EAC9ADE7C465D29033C46B30C36930C36930C36930C36930C3
          6930C3693BC66FD7F3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72D58A1CBA3F19
          B93A17B83615B73112B62B10B5270DB4220BAD1C045007FF00FFFF00FF0E9D1B
          2AB6515DD089A6E5BECBF0DA9BE2B65BD08834C46C30C36930C36930C36930C3
          6930C36998E1B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76D69121BC4A1FBB451C
          BA401ABA3C17B83615B73213B62D11B5280B8F1A045007FF00FFFF00FFFF00FF
          12A32140C6717DD9A1C1EDD3C9EFD89BE2B662D28D39C67030C36930C36930C3
          6930C36998E1B4FFFFFFFFFFFFFFFFFFFFFFFF79D89826BF5524BE5022BD4B1F
          BC471DBB421BBA3D19B93916B83313B02C055609FF00FFFF00FFFF00FFFF00FF
          0EA31B23B34255CE8496E1B3CBF0DAD1F2DEA2E4BB67D39145C97932C46B30C3
          6930C3694ACB7CE5F8ECFFFFFFF2FBF662D18C2CC16029C05B27BF5724BE5122
          BD4C20BC491DBB421BBA3E19B9390C7D1B045007FF00FFFF00FFFF00FFFF00FF
          FF00FF0EA31B2CB9535DD0899EE3B9D1F2DED7F3E2BAEBCD8ADDAA61D18C46CA
          7A35C46D31C36930C36964D28F30C36930C3692FC2672FC26531C3622FC15D28
          BF5423BD4F20BC491EBB43139329045007FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF11A52137C16463D28E9BE2B6C7EFD6DAF4E5CBF0DAADE7C48ADD
          AA6CD4955DD08A50CD804CCB7E4BCB7C4BCB7C4FCC7F50CD7F4CCB793FC76D2F
          C15D26BF5423BD4F1CA83B065B0CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF11A5212EBB5555CE8483DBA5B2E9C7D1F2DEDAF4E5D1F2
          DEC1EDD3ADE7C49EE3B996E1B38EDEAD8ADDAA84DBA677D89D60D18B43C87531
          C3622AC05B199B3708630FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0FA31C23B34245C97865D28F8ADDAAA6E5BEBAEB
          CDC1EDD3C1EDD3BAEBCDB5EAC9A6E5BE96E1B380DAA367D3914BCB7C39C66F2D
          C06117903107660CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF0EA31B0EA31B2BBA5243C87559CF876CD4
          957AD89F83DBA584DBA67DD9A172D79960D18B4CCB7E3EC77330C26722A54808
          6E0E086E0EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0EA31B11A5210EA31B2CB9
          5334BE5F3FC7743FC7743FC7743BC6712EB75925AD4B0C83180C8318097B11FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0EA3
          1B0EA11B0E9D1B0D9A190D97180C92170C8F160B8915FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        TabOrder = 0
        OnClick = btSalirClick
      end
      object DBEdit1: TDBEdit
        Left = 304
        Top = 376
        Width = 145
        Height = 27
        DataField = 'PRECIOCONIVA'
        DataSource = DSConsultaStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 542
        Top = 376
        Width = 149
        Height = 27
        DataField = 'PRECIO_CONDSCTO'
        DataSource = DSConsultaStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edDscto: TJvCalcEdit
        Left = 455
        Top = 376
        Width = 81
        Height = 27
        DisplayFormat = ',0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
        OnKeyPress = edDsctoKeyPress
      end
      object dbcDeposito: TDBLookupComboBox
        Left = 4
        Top = 376
        Width = 275
        Height = 27
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'NOMBRE'
        ListSource = DSDeposito
        NullValueKey = 46
        ParentFont = False
        TabOrder = 4
        OnClick = ConsultaExecute
      end
      object dbgPrecios: TJvDBGrid
        Left = 1
        Top = 1
        Width = 909
        Height = 208
        TabStop = False
        Align = alTop
        Ctl3D = True
        DataSource = DSConsultaStock
        DefaultDrawing = False
        DrawingStyle = gdsClassic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = pmDetalle
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgPreciosDrawColumnCell
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 23
        TitleRowHeight = 23
        Columns = <
          item
            Expanded = False
            FieldName = 'NROLISTA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_STK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE_STK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 413
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TASA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGNO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = 'PRECIOCONIVA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object DBEdit3: TJvDBCalcEdit
        Left = 71
        Top = 424
        Width = 134
        Height = 21
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 6
        DecimalPlacesAlwaysShown = False
        DataField = 'PRECIOCONIVA_2'
        DataSource = DSConsultaStock
      end
      object DBEdit4: TJvDBCalcEdit
        Left = 4
        Top = 424
        Width = 53
        Height = 21
        DisplayFormat = ',0.00'
        ShowButton = False
        TabOrder = 7
        DecimalPlacesAlwaysShown = False
        DataField = 'REC_DEPO'
        DataSource = DSConsultaStock
      end
      object edPSinIva: TJvCalcEdit
        Left = 304
        Top = 409
        Width = 145
        Height = 31
        Color = clNavy
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 8
        DecimalPlacesAlwaysShown = False
        OnKeyPress = edDsctoKeyPress
      end
      object edPCIva: TJvCalcEdit
        Left = 542
        Top = 409
        Width = 149
        Height = 31
        Color = clNavy
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 9
        DecimalPlacesAlwaysShown = False
        OnKeyPress = edDsctoKeyPress
      end
      object dbgExitencias: TDBGrid
        Left = 240
        Top = 217
        Width = 663
        Height = 128
        Hint = 'Hacer Doble Clik para ver los pendientes'
        Ctl3D = True
        DataSource = DSExistencia
        DefaultDrawing = False
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgExitenciasDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DEPOSITO_STK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEPOSITO_NOMBRE'
            Title.Alignment = taCenter
            Title.Caption = 'Dep'#243'sito'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FISICO'
            Title.Alignment = taCenter
            Title.Caption = 'Real'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPROMETIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Compr.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 76
            Visible = True
          end
          item
            Color = 16776176
            Expanded = False
            FieldName = 'EN_TRANSITO'
            Title.Caption = 'En Transit'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Color = clMoneyGreen
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Existencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end>
      end
    end
  end
  object ActionList1: TActionList
    Left = 640
    Top = 264
    object BuscaArticulo: TAction
      Caption = 'BuscaArticulo'
      ShortCut = 16397
      OnExecute = BuscaArticuloExecute
    end
    object Consulta: TAction
      Caption = 'Consulta'
      OnExecute = ConsultaExecute
    end
    object MarcarConciliado: TAction
      Caption = 'Marcar Conciliado'
      OnExecute = MarcarConciliadoExecute
    end
    object DesmarcarConciliado: TAction
      Caption = 'Desmarcar Conciliado'
      OnExecute = DesmarcarConciliadoExecute
    end
  end
  object DSConsultaStock: TDataSource
    DataSet = CDSConsultaStock
    OnDataChange = DSConsultaStockDataChange
    Left = 376
    Top = 256
  end
  object DSPConsultaStock: TDataSetProvider
    DataSet = QConsultaStock
    Left = 168
    Top = 248
  end
  object CDSConsultaStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    ProviderName = 'DSPConsultaStock'
    AfterScroll = CDSConsultaStockAfterScroll
    OnCalcFields = CDSConsultaStockCalcFields
    Left = 272
    Top = 247
    object CDSConsultaStockNROLISTA: TIntegerField
      DisplayLabel = 'N.Lista'
      FieldName = 'NROLISTA'
      Origin = 'ID_CAB'
      ProviderFlags = []
    end
    object CDSConsultaStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = CDSConsultaStockCODIGO_STKGetText
      Size = 8
    end
    object CDSConsultaStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSConsultaStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSConsultaStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSConsultaStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSConsultaStockSIGNO: TStringField
      DisplayLabel = 'M'
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSConsultaStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSConsultaStockPRECIO: TFloatField
      DisplayLabel = 'Pr. S/Iva'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSConsultaStockPRECIOCONIVA: TFloatField
      DisplayLabel = 'Pr. C/Iva'
      FieldName = 'PRECIOCONIVA'
      Origin = 'PRECIOCONIVA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSConsultaStockPRECIO_CONDSCTO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRECIO_CONDSCTO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSConsultaStockPRECIO_2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRECIO_2'
    end
    object CDSConsultaStockPRECIOCONIVA_2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PRECIOCONIVA_2'
    end
    object CDSConsultaStockREC_DEPO: TFloatField
      FieldName = 'REC_DEPO'
      Origin = 'RECARGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSConsultaStockCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSConsultaStockRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSConsultaStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSConsultaStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSConsultaStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSConsultaStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSConsultaStockTASA: TFloatField
      DisplayLabel = 'Iva'
      FieldName = 'TASA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object CDSConsultaStockCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSConsultaStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 512
    Top = 384
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 672
    Top = 408
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSDeposito: TDataSource
    DataSet = CDSDepositos
    Left = 752
    Top = 400
  end
  object CDSExistencia: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPExistencia'
    Left = 280
    Top = 344
    object CDSExistenciaCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object CDSExistenciaDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSExistenciaSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      DisplayFormat = '0.00;-0.00;-'
      EditFormat = '0.00'
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'DEPOSITO_STK'
      Origin = 'DEPOSITO_STK'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'DEPOSITO_NOMBRE'
      Origin = 'DEPOSITO_NOMBRE'
      Size = 25
    end
    object CDSExistenciaFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object CDSExistenciaFISICO: TFloatField
      DisplayLabel = 'Fisico'
      FieldName = 'FISICO'
      Origin = 'FISICO'
      DisplayFormat = '0.00;-0.00;-'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      DisplayLabel = 'Comp.'
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
      DisplayFormat = '0.00;-0.00;-'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      DisplayLabel = 'Trans.'
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
      DisplayFormat = '0.00;-0.00;-'
    end
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 341
    Top = 345
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Left = 212
    Top = 349
  end
  object PopupMenu1: TPopupMenu
    Left = 641
    Top = 359
    object MarcarConciliado1: TMenuItem
      Action = MarcarConciliado
    end
    object DesmarcarConciliado1: TMenuItem
      Action = DesmarcarConciliado
    end
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk from stock s where s.codigo_st' +
        'k=:codigo')
    Left = 281
    Top = 55
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object QConsultaStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.marca_stk,s.rubro_stk,s.subr' +
        'ubro_stk,m.signo,'
      's.fijacion_precio_gravado,s.fijacion_precio_exento,m.cotizacion,'
      's.costo_gravado_stk,s.costo_exento_stk,s.Modo_gravamen,'
      'l.id_cab as NroLista,l.recargo,g.tasa,'
      
        '((l.precio_gravado/s.contenido_compra+l.precio_exento/contenido_' +
        'compra)) as Precio,'
      '((l.precio/contenido_compra)) as PrecioConIva,'
      'd.recargo as Rec_depo,d.codigo_deposito,s.reemplazo_stk'
      'from stock s'
      'left join monedas m on m.id=s.moneda'
      'left join gravamen g on g.codigo=s.tasa_iva'
      
        'left join listaprecioespecialart l on l.codigoarticulo=s.codigo_' +
        'stk'
      'left join depositostk d on d.codigo_stk = s.codigo_stk'
      
        'where (s.clase_articulo=3 or s.clase_articulo=1) and (s.codigo_s' +
        'tk=:codigo) and (l.id_cab = :id_lista or :id_lista = -1)'
      ' and (d.codigo_deposito = :deposito or :deposito = -1 )'
      'order by l.id_cab')
    Left = 97
    Top = 255
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id_lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'id_lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object pmDetalle: TPopupMenu
    Left = 577
    Top = 183
    object VerCodigoAlternativo: TMenuItem
      Caption = 'Ver Codigo Alternativo'
      OnClick = VerCodigoAlternativoClick
    end
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    PreventResize = True
    StoredValues = <>
    Left = 496
    Top = 568
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 560
    Top = 568
  end
end
