object FormControlOP: TFormControlOP
  Left = 319
  Top = 67
  BorderStyle = bsSingle
  Caption = 'Control de O.de Pago'
  ClientHeight = 654
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 570
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 426
      Top = 104
      Width = 62
      Height = 13
      Caption = 'Neto O.Pago'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 537
      Top = 104
      Width = 51
      Height = 13
      Caption = 'Desceunto'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 651
      Top = 104
      Width = 52
      Height = 13
      Caption = 'Porcentaje'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 426
      Top = 236
      Width = 63
      Height = 13
      Caption = 'Total O.Pago'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 428
      Top = 143
      Width = 76
      Height = 13
      Caption = 'Nota de Credito'
      FocusControl = DBEdit5
    end
    object Label9: TLabel
      Left = 786
      Top = 141
      Width = 38
      Height = 13
      Caption = 'Importe'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 701
      Top = 174
      Width = 89
      Height = 13
      Caption = 'Suma de Mov Caja'
      FocusControl = dbeValores
    end
    object Label11: TLabel
      Left = 684
      Top = 196
      Width = 106
      Height = 13
      Caption = 'Retenciones Ganancia'
      FocusControl = dbeGan
    end
    object Label7: TLabel
      Left = 749
      Top = 219
      Width = 41
      Height = 13
      Caption = 'Ret.IIBB'
      FocusControl = dbgIIBB
    end
    object SpeedButton1: TSpeedButton
      Left = 886
      Top = 251
      Width = 45
      Height = 22
      Hint = 'Pasa los Saldos Segun lo Movimientos'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
        9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
        034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
        06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A03
        9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
        10AC300DAB2809A41C039E0F48C052E9F8EAD5F2D816AA20039E0C039E0C039F
        0C03A70C024C04FF00FF0357060D822317B6410EA92D05A01341BD4BF4FCF6FF
        FFFF82D58907A010039E0C039E0C039E0C03A50C037B0801420303570617A341
        18B54A11AB3441BD4EF3FBF4FCFEFC75D07D039E0C039E0C039E0C039E0C039E
        0C03A10C03960A01420306680D21B1511EB75170D392F0FBF3FFFFFFF7FCF8B7
        E9C5B4E7BDADE5B2ADE5B2AFE5B4B1E6B603A00C039F0C014A040874123EBD69
        2ABA5CBAEACCFFFFFFFFFFFFFCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03A00C039F0C02520506780E54C57A44C6742CBA5CA4E3BCFFFFFFFAFEFB82
        D9A03EBF5E41C05B41BF5B41BF5841BF5707A518039D0C01460306780E4CBD69
        83DDA722B6551DB24F95DEB0FFFFFFE2F7EA4FC67511AB340FAA300FAA2E0CA6
        2706A716038C0A014603FF00FF139923AAE7C568D08E16AF481CB14D8EDCABFF
        FFFFF4FCF72DB85310A9310EA7290BA42009AF1C036B0AFF00FFFF00FF139923
        56C573C5F0D866CF8C20B4521CB24F95DEB0ABE6C11FB44E13AC3C12AA340FB0
        2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
        BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
        FF00FF13992313992398E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43513992313
        9923139923139923138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 786
      Top = 104
      Width = 63
      Height = 13
      Caption = 'Total O.Pago'
      FocusControl = DBEdit9
    end
    object Label12: TLabel
      Left = 427
      Top = 61
      Width = 29
      Height = 13
      Caption = 'Fecha'
      FocusControl = DBEdit10
    end
    object Label13: TLabel
      Left = 426
      Top = 187
      Width = 61
      Height = 13
      Caption = 'Saldo Aplicar'
      FocusControl = DBEdit11
    end
    object spAgregaEfectivo: TSpeedButton
      Left = 859
      Top = 76
      Width = 29
      Height = 22
      Hint = 'Inserta Movimiento de caja'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
        9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
        034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
        06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A03
        9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
        10AC300DAB2809A41C039E0F48C052E9F8EAD5F2D816AA20039E0C039E0C039F
        0C03A70C024C04FF00FF0357060D822317B6410EA92D05A01341BD4BF4FCF6FF
        FFFF82D58907A010039E0C039E0C039E0C03A50C037B0801420303570617A341
        18B54A11AB3441BD4EF3FBF4FCFEFC75D07D039E0C039E0C039E0C039E0C039E
        0C03A10C03960A01420306680D21B1511EB75170D392F0FBF3FFFFFFF7FCF8B7
        E9C5B4E7BDADE5B2ADE5B2AFE5B4B1E6B603A00C039F0C014A040874123EBD69
        2ABA5CBAEACCFFFFFFFFFFFFFCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF03A00C039F0C02520506780E54C57A44C6742CBA5CA4E3BCFFFFFFFAFEFB82
        D9A03EBF5E41C05B41BF5B41BF5841BF5707A518039D0C01460306780E4CBD69
        83DDA722B6551DB24F95DEB0FFFFFFE2F7EA4FC67511AB340FAA300FAA2E0CA6
        2706A716038C0A014603FF00FF139923AAE7C568D08E16AF481CB14D8EDCABFF
        FFFFF4FCF72DB85310A9310EA7290BA42009AF1C036B0AFF00FFFF00FF139923
        56C573C5F0D866CF8C20B4521CB24F95DEB0ABE6C11FB44E13AC3C12AA340FB0
        2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
        BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
        FF00FF13992313992398E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
        3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43513992313
        9923139923139923138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = spAgregaEfectivoClick
    end
    object Label14: TLabel
      Left = 712
      Top = 61
      Width = 42
      Height = 13
      Caption = 'Cta Caja'
      FocusControl = DBEdit1
    end
    object Label15: TLabel
      Left = 772
      Top = 61
      Width = 35
      Height = 13
      Caption = 'Id Caja'
      FocusControl = DBEdit1
    end
    object Label16: TLabel
      Left = 580
      Top = 236
      Width = 100
      Height = 13
      Caption = 'Total de Aplicaciones'
      FocusControl = DBEdit4
    end
    object Label17: TLabel
      Left = 767
      Top = 528
      Width = 20
      Height = 13
      Caption = 'Tipo'
      FocusControl = DBEdit12
    end
    object Label18: TLabel
      Left = 800
      Top = 528
      Width = 26
      Height = 13
      Caption = 'Clase'
      FocusControl = DBEdit13
    end
    object Label19: TLabel
      Left = 832
      Top = 528
      Width = 69
      Height = 13
      Caption = 'Numero Cpbte'
      FocusControl = DBEdit14
    end
    object Label20: TLabel
      Left = 805
      Top = 238
      Width = 62
      Height = 13
      Caption = 'Total Valores'
      FocusControl = dbeValores
    end
    object Label21: TLabel
      Left = 59
      Top = 375
      Width = 67
      Height = 13
      Caption = 'Mov A Cta NC'
      FocusControl = DBEdit10
    end
    object Label22: TLabel
      Left = 686
      Top = 272
      Width = 101
      Height = 13
      Caption = 'B.Kp de Aplicaciones '
      FocusControl = DBEdit10
    end
    object dbgOPago: TJvDBGrid
      Left = 6
      Top = 63
      Width = 414
      Height = 302
      DataSource = DSOPago
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgOPagoDblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_OP'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Width = 147
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Width = 93
          Visible = True
        end>
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 948
      Height = 56
      Align = alTop
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 50
        Height = 13
        Caption = 'Proveedor'
      end
      object RxLabel1: TJvLabel
        Left = 498
        Top = 2
        Width = 32
        Height = 13
        Caption = 'Desde'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object RxLabel3: TJvLabel
        Left = 596
        Top = 2
        Width = 30
        Height = 13
        Caption = 'Hasta'
        ShadowSize = 1
        ShadowPos = spLeftTop
        Transparent = True
      end
      object edNombreProveedor: TEdit
        Left = 87
        Top = 18
        Width = 257
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 0
      end
      object ceProveedor: TJvComboEdit
        Left = 8
        Top = 19
        Width = 73
        Height = 21
        ButtonWidth = 16
        ClickKey = 16397
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        MaxLength = 6
        TabOrder = 1
        Text = ''
        OnButtonClick = ceProveedorButtonClick
        OnKeyPress = ceProveedorKeyPress
      end
      object Button1: TButton
        Left = 761
        Top = 2
        Width = 75
        Height = 25
        Caption = 'Traer'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 761
        Top = 29
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 3
        OnClick = Button2Click
      end
      object chTodas: TCheckBox
        Left = 360
        Top = 6
        Width = 126
        Height = 17
        Caption = 'Todas la OP con NC'
        TabOrder = 4
        OnClick = chTodasClick
      end
      object chbGravar: TCheckBox
        Left = 842
        Top = 18
        Width = 97
        Height = 17
        Caption = 'Grav.Autoamtico'
        TabOrder = 5
      end
      object Desde: TJvDateEdit
        Left = 498
        Top = 15
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
        TabOrder = 6
      end
      object Hasta: TJvDateEdit
        Left = 593
        Top = 15
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
        TabOrder = 7
      end
      object UpDown1: TUpDown
        Left = 688
        Top = 16
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 8
        OnClick = UpDown1Click
      end
      object chbTodosLosProvee: TCheckBox
        Left = 208
        Top = 1
        Width = 136
        Height = 17
        Caption = 'Todos Los Proveedores'
        TabOrder = 9
      end
    end
    object DBEdit1: TDBEdit
      Left = 426
      Top = 120
      Width = 89
      Height = 21
      DataField = 'TOTAL_NETO'
      DataSource = DSOPago
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 537
      Top = 120
      Width = 106
      Height = 21
      Color = clInfoBk
      DataField = 'DESCUENTO'
      DataSource = DSOPago
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 651
      Top = 120
      Width = 114
      Height = 21
      DataField = 'DESCUENTO_PORCENTAJE'
      DataSource = DSOPago
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 426
      Top = 252
      Width = 129
      Height = 21
      Color = clBlue
      DataField = 'TOTAL'
      DataSource = DSOPago
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 428
      Top = 160
      Width = 30
      Height = 21
      Color = clInfoBk
      DataField = 'TIPOCPBTE'
      DataSource = DSNc
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 463
      Top = 160
      Width = 30
      Height = 21
      Color = clInfoBk
      DataField = 'CLASECPBTE'
      DataSource = DSNc
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 499
      Top = 160
      Width = 92
      Height = 21
      Color = clInfoBk
      DataField = 'NROCPBTE'
      DataSource = DSNc
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 597
      Top = 160
      Width = 79
      Height = 21
      Color = clInfoBk
      DataField = 'TOTAL'
      DataSource = DSNc
      TabOrder = 9
    end
    object dbeGan: TJvDBCalcEdit
      Left = 796
      Top = 193
      Width = 72
      Height = 21
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 11
      DecimalPlacesAlwaysShown = False
      DataField = 'IMPUESTO_RETENIDO'
      DataSource = DSRet
    end
    object dbeValores: TJvDBCalcEdit
      Left = 796
      Top = 171
      Width = 72
      Height = 21
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 10
      DecimalPlacesAlwaysShown = False
      DataField = 'SUM'
      DataSource = DSMovCaja
    end
    object dbgIIBB: TJvDBCalcEdit
      Left = 796
      Top = 216
      Width = 72
      Height = 21
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 13
      DecimalPlacesAlwaysShown = False
      DataField = 'TOTAL'
      DataSource = DSRetIngBr
    end
    object edTotalValores: TJvCalcEdit
      Left = 769
      Top = 252
      Width = 99
      Height = 21
      Color = clBlue
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 12
      DecimalPlacesAlwaysShown = False
    end
    object dbgAplicaciones: TDBGrid
      Left = 426
      Top = 288
      Width = 254
      Height = 201
      DataSource = DSMovAplicaCCCompra
      FixedColor = clMaroon
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDragDrop = dbgAplicacionesDragDrop
      OnDragOver = dbgAplicacionesDragOver
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'APLICA_CLASECPBTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 31
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'APLICA_NROCPBTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Numero'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Caption = 'Importe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end>
    end
    object edTotalApl: TJvCalcEdit
      Left = 559
      Top = 252
      Width = 121
      Height = 21
      Color = clBlue
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 15
      DecimalPlacesAlwaysShown = False
    end
    object btActivar: TButton
      Left = 426
      Top = 527
      Width = 75
      Height = 25
      Caption = 'Activa Tr'
      TabOrder = 16
      OnClick = btActivarClick
    end
    object btInactive: TButton
      Left = 507
      Top = 527
      Width = 75
      Height = 25
      Caption = 'Inactiva Tr'
      TabOrder = 17
      OnClick = btInactiveClick
    end
    object dbgClon: TDBGrid
      Left = 686
      Top = 288
      Width = 254
      Height = 201
      DataSource = DSClone
      DragMode = dmAutomatic
      FixedColor = clMaroon
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 18
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'APLICA_CLASECPBTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 31
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'APLICA_NROCPBTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Numero'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Caption = 'Importe'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end>
    end
    object btGuardarAplicaciones: TButton
      Left = 818
      Top = 495
      Width = 122
      Height = 25
      Caption = 'Guardar Aplicaciones'
      TabOrder = 19
      OnClick = btGuardarAplicacionesClick
    end
    object DBEdit9: TDBEdit
      Left = 786
      Top = 120
      Width = 129
      Height = 21
      Color = clBlue
      DataField = 'TOTAL'
      DataSource = DSOPago
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object DBEdit10: TDBEdit
      Left = 426
      Top = 77
      Width = 89
      Height = 21
      DataField = 'FECHA'
      DataSource = DSOPago
      TabOrder = 21
    end
    object DBEdit11: TDBEdit
      Left = 426
      Top = 206
      Width = 129
      Height = 21
      Color = clMoneyGreen
      DataField = 'SALDO_APLICAR'
      DataSource = DSOPago
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object btCaja: TButton
      Left = 651
      Top = 76
      Width = 55
      Height = 22
      Hint = 'Busaca una caja para insertar el mov.'
      Caption = 'Caja'
      TabOrder = 23
      OnClick = btCajaClick
    end
    object edIdCaja: TEdit
      Left = 771
      Top = 77
      Width = 82
      Height = 21
      TabOrder = 24
    end
    object edIdCtaCaja: TEdit
      Left = 712
      Top = 77
      Width = 53
      Height = 21
      TabOrder = 25
    end
    object DBNavigator1: TDBNavigator
      Left = 426
      Top = 492
      Width = 120
      Height = 25
      DataSource = DSMovAplicaCCCompra
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbRefresh]
      ConfirmDelete = False
      TabOrder = 26
    end
    object edTotalApl_2: TJvCalcEdit
      Left = 559
      Top = 495
      Width = 121
      Height = 21
      Color = clBlue
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 27
      DecimalPlacesAlwaysShown = False
    end
    object DBEdit12: TDBEdit
      Left = 766
      Top = 544
      Width = 28
      Height = 21
      DataField = 'TIPOCPBTE'
      DataSource = DSFcComp
      TabOrder = 28
    end
    object DBEdit13: TDBEdit
      Left = 800
      Top = 544
      Width = 26
      Height = 21
      DataField = 'CLASECPBTE'
      DataSource = DSFcComp
      TabOrder = 29
    end
    object DBEdit14: TDBEdit
      Left = 832
      Top = 544
      Width = 108
      Height = 21
      DataField = 'NUMEROFAC'
      DataSource = DSFcComp
      TabOrder = 30
    end
    object Button3: TButton
      Left = 627
      Top = 522
      Width = 100
      Height = 20
      Caption = 'Borrar Mov Acta'
      TabOrder = 31
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 627
      Top = 542
      Width = 100
      Height = 19
      Caption = 'Gen. Mov a Cta'
      TabOrder = 32
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 712
      Top = 495
      Width = 100
      Height = 25
      Caption = 'Carga Temporal'
      TabOrder = 33
      OnClick = Button5Click
    end
    object DBGrid1: TDBGrid
      Left = 59
      Top = 394
      Width = 361
      Height = 122
      DataSource = DSACta
      TabOrder = 34
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMEROCPBTE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAFACTURA'
          Title.Alignment = taCenter
          Width = 98
          Visible = True
        end>
    end
    object Button6: TButton
      Left = 334
      Top = 522
      Width = 75
      Height = 21
      Caption = 'Borrar'
      TabOrder = 35
      OnClick = Button6Click
    end
  end
  object DSPProveedor: TDataSetProvider
    DataSet = DMMain_FD.QProveedores
    Left = 120
    Top = 80
  end
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProveedor'
    Left = 184
    Top = 88
    object CDSProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSProveedorN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Size = 14
    end
    object CDSProveedorID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSProveedorCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object CDSProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSProveedorTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object CDSProveedorTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object CDSProveedorCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object CDSProveedorN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object CDSProveedorACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object CDSProveedorRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Size = 1
    end
    object CDSProveedorRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Size = 1
    end
    object CDSProveedorRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object CDSProveedorIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Size = 1
    end
    object CDSProveedorPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object CDSProveedorOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSProveedorNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object CDSProveedorTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object CDSProveedorTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSProveedorFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object CDSProveedorSALDO_INICIAL: TFMTBCDField
      FieldName = 'SALDO_INICIAL'
      Precision = 15
      Size = 3
    end
    object CDSProveedorID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
    end
    object CDSProveedorID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
    end
    object CDSProveedorID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
    end
    object CDSProveedorRUBRO: TIntegerField
      FieldName = 'RUBRO'
    end
    object CDSProveedorID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object CDSProveedorEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Required = True
    end
    object CDSProveedorEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object CDSProveedorNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
    object CDSProveedorCORREO: TStringField
      FieldName = 'CORREO'
      Size = 100
    end
    object CDSProveedorCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSProveedorMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
    end
    object CDSProveedorTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object CDSProveedorDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
    end
    object CDSProveedorDESPERIB: TStringField
      FieldName = 'DESPERIB'
    end
    object CDSProveedorDESPERIB2: TStringField
      FieldName = 'DESPERIB2'
    end
    object CDSProveedorMUESTRADETALLERETIIBB: TStringField
      FieldName = 'MUESTRADETALLERETIIBB'
      Size = 25
    end
    object CDSProveedorMUESTRATASARETIIBB: TFMTBCDField
      FieldName = 'MUESTRATASARETIIBB'
      Precision = 15
      Size = 3
    end
    object CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
      Precision = 15
      Size = 3
    end
  end
  object CDSOPago: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_nc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_nc'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOPago'
    AfterPost = CDSOPagoAfterPost
    AfterScroll = CDSOPagoAfterScroll
    Left = 200
    Top = 152
    object CDSOPagoID_OP: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOPagoTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 4
    end
    object CDSOPagoCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 4
    end
    object CDSOPagoNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSOPagoNC_ID_FC: TIntegerField
      FieldName = 'NC_ID_FC'
      Origin = 'NC_ID_FC'
    end
    object CDSOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSOPagoLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Origin = 'LETRAOP'
      Size = 1
    end
    object CDSOPagoSUCOP: TStringField
      FieldName = 'SUCOP'
      Origin = 'SUCOP'
      Size = 4
    end
    object CDSOPagoNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Origin = 'NUMEROOP'
      Size = 8
    end
    object CDSOPagoTOTAL_NETO: TFloatField
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
      DisplayFormat = ',0.000'
    end
    object CDSOPagoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      DisplayFormat = ',0.000'
    end
    object CDSOPagoDESCUENTO_PORCENTAJE: TFloatField
      FieldName = 'DESCUENTO_PORCENTAJE'
      Origin = 'DESCUENTO_PORCENTAJE'
      DisplayFormat = ',0.000'
    end
    object CDSOPagoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.000'
    end
    object CDSOPagoSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
      DisplayFormat = ',0.000'
    end
  end
  object DSPOPago: TDataSetProvider
    DataSet = QOPago
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 152
  end
  object DSOPago: TDataSource
    DataSet = CDSOPago
    Left = 248
    Top = 160
  end
  object DSNc: TDataSource
    DataSet = QNc
    Left = 864
    Top = 32
  end
  object DSMovCaja: TDataSource
    DataSet = QMovcaja
    Left = 320
    Top = 240
  end
  object DSRet: TDataSource
    DataSet = QRet
    Left = 304
    Top = 312
  end
  object ActionList1: TActionList
    Left = 592
    Top = 424
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object DSRetIngBr: TDataSource
    DataSet = QRetIngBrCab
    Left = 632
    Top = 40
  end
  object DSPMovAplicaCCCompra: TDataSetProvider
    DataSet = DMMain_FD.QMovAplicaCCCompra
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 338
  end
  object CDSMovAplicaCCCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovAplicaCCCompra'
    AfterPost = CDSMovAplicaCCCompraAfterDelete
    AfterDelete = CDSMovAplicaCCCompraAfterDelete
    OnNewRecord = CDSMovAplicaCCCompraNewRecord
    Left = 472
    Top = 336
    object CDSMovAplicaCCCompraID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovAplicaCCCompraFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovAplicaCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSMovAplicaCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSMovAplicaCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSMovAplicaCCCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACPBTE'
      Origin = 'FECHACOMPRA'
      ProviderFlags = []
    end
    object CDSMovAplicaCCCompraCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovAplicaCCCompraIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSMovAplicaCCCompraAPLICA_NETO: TFloatField
      FieldName = 'APLICA_NETO'
      Origin = 'APLICA_NETO'
      DisplayFormat = ',0.00'
    end
    object CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFloatField
      FieldName = 'MUESTRATOTALFACTURA'
      Origin = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
  end
  object DSMovAplicaCCCompra: TDataSource
    DataSet = CDSMovAplicaCCCompra
    Left = 560
    Top = 341
  end
  object CDSClone: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovAplicaCCCompra'
    AfterScroll = CDSCloneAfterScroll
    Left = 792
    Top = 344
  end
  object DSClone: TDataSource
    DataSet = CDSClone
    Left = 848
    Top = 341
  end
  object CDSACta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPACta'
    Left = 272
    Top = 408
    object CDSACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSACtaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSACtaTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSACtaCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSACtaNUMEROCPBTE: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSACtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSACtaMUESTRAFACTURA: TStringField
      DisplayLabel = 'Muestra Comp'
      FieldName = 'MUESTRAFACTURA'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSACtaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object DSPACta: TDataSetProvider
    DataSet = QACta
    Left = 216
    Top = 408
  end
  object DSFcComp: TDataSource
    DataSet = QFcComp
    Left = 288
    Top = 589
  end
  object DSACta: TDataSource
    DataSet = CDSACta
    Left = 312
    Top = 405
  end
  object QRetIngBrCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cab.* from CPBTE_RET_INGBR_CAB cab'
      'where cab.tipocpbte_origen=:Tipo and'
      'cab.id_cpbte_Origen=:id'
      '')
    Left = 568
    Top = 56
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRetIngBrCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRetIngBrCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QRetIngBrCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QRetIngBrCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QRetIngBrCabCODIGOPOSTAL: TStringField
      FieldName = 'CODIGOPOSTAL'
      Origin = 'CODIGOPOSTAL'
      Size = 8
    end
    object QRetIngBrCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QRetIngBrCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QRetIngBrCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QRetIngBrCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QRetIngBrCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRetIngBrCabLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QRetIngBrCabSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      Size = 4
    end
    object QRetIngBrCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QRetIngBrCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QRetIngBrCabID_CPBTE_ORIGEN: TIntegerField
      FieldName = 'ID_CPBTE_ORIGEN'
      Origin = 'ID_CPBTE_ORIGEN'
    end
    object QRetIngBrCabTIPOCPBTE_ORIGEN: TStringField
      FieldName = 'TIPOCPBTE_ORIGEN'
      Origin = 'TIPOCPBTE_ORIGEN'
      Size = 2
    end
    object QRetIngBrCabCLASECPBTE_ORIGEN: TStringField
      FieldName = 'CLASECPBTE_ORIGEN'
      Origin = 'CLASECPBTE_ORIGEN'
      Size = 2
    end
    object QRetIngBrCabNROCPBTE_ORIGEN: TStringField
      FieldName = 'NROCPBTE_ORIGEN'
      Origin = 'NROCPBTE_ORIGEN'
      Size = 13
    end
    object QRetIngBrCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRetIngBrCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QRetIngBrCabNOMBRE_AGTE_RET: TStringField
      FieldName = 'NOMBRE_AGTE_RET'
      Origin = 'NOMBRE_AGTE_RET'
      Size = 35
    end
    object QRetIngBrCabDIRECCION_AGTE_RET: TStringField
      FieldName = 'DIRECCION_AGTE_RET'
      Origin = 'DIRECCION_AGTE_RET'
      Size = 35
    end
    object QRetIngBrCabCUIT_AGTE_RET: TStringField
      FieldName = 'CUIT_AGTE_RET'
      Origin = 'CUIT_AGTE_RET'
      Size = 13
    end
    object QRetIngBrCabCPOSTAL_AGTE_RET: TStringField
      FieldName = 'CPOSTAL_AGTE_RET'
      Origin = 'CPOSTAL_AGTE_RET'
      Size = 8
    end
    object QRetIngBrCabLOCALIDAD_AGTE_RET: TStringField
      FieldName = 'LOCALIDAD_AGTE_RET'
      Origin = 'LOCALIDAD_AGTE_RET'
      Size = 15
    end
    object QRetIngBrCabNRO_AGTE_RET: TStringField
      FieldName = 'NRO_AGTE_RET'
      Origin = 'NRO_AGTE_RET'
      Size = 15
    end
    object QRetIngBrCabNETO_GRAVADO: TFloatField
      FieldName = 'NETO_GRAVADO'
      Origin = 'NETO_GRAVADO'
      Required = True
    end
    object QRetIngBrCabTASA_RETENCION: TFloatField
      FieldName = 'TASA_RETENCION'
      Origin = 'TASA_RETENCION'
      Required = True
    end
    object QRetIngBrCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIngBrCabESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRetIngBrCabNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Origin = 'NRO_IIBB'
      Size = 15
    end
  end
  object QACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' select m.*,f.nrocpbte as MuestraFactura from movactacccompra m'
      
        ' left join fccompcab f on f.id_fc=m.id_cpbte and f.tipocpbte=m.t' +
        'ipocpbte'
      ' where m.proveedor=:codigo'
      'and m.tipocpbte='#39'NC'#39
      '')
    Left = 152
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QACtaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object QACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QACtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QACtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QACtaMUESTRAFACTURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFACTURA'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object QRet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.impuesto_retenido from retenciones_ganancia r where r.i' +
        'd_op=:id'
      '')
    Left = 256
    Top = 312
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRetIMPUESTO_RETENIDO: TFloatField
      FieldName = 'IMPUESTO_RETENIDO'
      Origin = 'IMPUESTO_RETENIDO'
    end
  end
  object QMovcaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sum(c.haber) from '
      'caja_mov c where c.id_comprobante= :id and c.tipo_comprob=:tipo'
      '')
    Left = 248
    Top = 240
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QMovcajaSUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUM'
      Origin = '"SUM"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QOPago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select o.fecha,o.id_op,o.tipocpbte,o.clasecpbte,o.nrocpbte, o.co' +
        'digo,o.nombre,o.total_neto,'
      
        '  o.descuento,o.descuento_porcentaje,o.letraop,o.sucop,o.numeroo' +
        'p,'
      '  o.total,o.Nc_id_fc,o.saldo_aplicar from ordenpago o'
      'where ( o.codigo = :codigo or :codigo = '#39'******'#39' ) and '
      
        '           ( (o.nc_id_fc>:id_nc and Not(o.nc_id_fc is null)) or ' +
        ':id_nc = -2 ) '
      'and o.fecha between :desde and :hasta'
      '')
    Left = 64
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'id_nc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'id_nc'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOPagoID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QOPagoTOTAL_NETO: TFloatField
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
    end
    object QOPagoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QOPagoDESCUENTO_PORCENTAJE: TFloatField
      FieldName = 'DESCUENTO_PORCENTAJE'
      Origin = 'DESCUENTO_PORCENTAJE'
    end
    object QOPagoLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Origin = 'LETRAOP'
      Size = 1
    end
    object QOPagoSUCOP: TStringField
      FieldName = 'SUCOP'
      Origin = 'SUCOP'
      Size = 4
    end
    object QOPagoNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Origin = 'NUMEROOP'
      Size = 8
    end
    object QOPagoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QOPagoNC_ID_FC: TIntegerField
      FieldName = 'NC_ID_FC'
      Origin = 'NC_ID_FC'
    end
    object QOPagoSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
    end
  end
  object QMovACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Insert into movactacccompra (id_mov,proveedor,detalle,fecha,id_c' +
        'pbte,'
      
        '                                        importe,numerocpbte,tipo' +
        'cpbte,clasecpbte)'
      '           values(gen_id(next_id_movactacccompra,1),'
      '                  :codigo,'
      '                :dato,:fecha,'
      '                :id_op,'
      '                :saldo_aplicar,'
      '                :nrocpbte,'
      '                :tipocpbte,'
      '                :clasecpbte)'
      '')
    Left = 672
    Top = 584
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'DATO'
        ParamType = ptInput
      end
      item
        Name = 'FECHA'
        ParamType = ptInput
      end
      item
        Name = 'ID_OP'
        ParamType = ptInput
      end
      item
        Name = 'SALDO_APLICAR'
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE'
        ParamType = ptInput
      end
      item
        Name = 'TIPOCPBTE'
        ParamType = ptInput
      end
      item
        Name = 'CLASECPBTE'
        ParamType = ptInput
      end>
  end
  object QFcComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select f.* from  fccompcab f where f.id_fc = :id'
      '')
    Left = 216
    Top = 584
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFcCompID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcCompTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcCompCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcCompCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcCompNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QFcCompLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object QFcCompSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QFcCompNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QFcCompNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QFcCompRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcCompDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QFcCompCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QFcCompLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QFcCompTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QFcCompCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QFcCompFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
    object QFcCompFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QFcCompCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Origin = 'CONDICIONCOMPRA'
      Required = True
    end
    object QFcCompANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Origin = 'ORDENCOMPRA'
      Size = 8
    end
    object QFcCompN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QFcCompNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QFcCompDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QFcCompDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QFcCompNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QFcCompNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QFcCompNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QFcCompIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
      Origin = 'IMPORTEEXCLUIDO2'
    end
    object QFcCompIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
      Origin = 'IMPORTEEXCLUIDO1'
    end
    object QFcCompRETENCION_IVA: TFloatField
      FieldName = 'RETENCION_IVA'
      Origin = 'RETENCION_IVA'
      Required = True
    end
    object QFcCompTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QFcCompDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QFcCompAPLICA: TStringField
      FieldName = 'APLICA'
      Origin = 'APLICA'
      Size = 13
    end
    object QFcCompOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QFcCompOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QFcCompSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      Required = True
    end
    object QFcCompZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QFcCompDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QFcCompDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      Required = True
    end
    object QFcCompNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
      Origin = 'NETOMONOTRIBUTO1'
    end
    object QFcCompNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
      Origin = 'NETOMONOTRIBUTO2'
    end
    object QFcCompCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Origin = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Origin = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QFcCompTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object QFcCompJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
      Origin = 'JURIDICCION'
    end
    object QFcCompPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
    end
    object QFcCompFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QFcCompUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QFcCompTOTAL_UNIDADES: TFloatField
      FieldName = 'TOTAL_UNIDADES'
      Origin = 'TOTAL_UNIDADES'
    end
    object QFcCompMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object QFcCompMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object QFcCompNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QFcCompCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QFcCompCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object QFcCompFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCOD_OPERACION_AFIP: TSingleField
      FieldName = 'COD_OPERACION_AFIP'
      Origin = 'COD_OPERACION_AFIP'
    end
    object QFcCompTIPOCOMP_AFIP: TStringField
      FieldName = 'TIPOCOMP_AFIP'
      Origin = 'TIPOCOMP_AFIP'
      Size = 3
    end
    object QFcCompCOD_CARACT_RECP_AFIP: TIntegerField
      FieldName = 'COD_CARACT_RECP_AFIP'
      Origin = 'COD_CARACT_RECP_AFIP'
    end
    object QFcCompCOD_CARACT_EMIS_AFIP: TIntegerField
      FieldName = 'COD_CARACT_EMIS_AFIP'
      Origin = 'COD_CARACT_EMIS_AFIP'
    end
    object QFcCompNRO_IIBB_RECEP: TStringField
      FieldName = 'NRO_IIBB_RECEP'
      Origin = 'NRO_IIBB_RECEP'
    end
    object QFcCompNRO_RENSPA_EMISOR: TStringField
      FieldName = 'NRO_RENSPA_EMISOR'
      Origin = 'NRO_RENSPA_EMISOR'
    end
    object QFcCompNRO_RENSPA_RECEP: TStringField
      FieldName = 'NRO_RENSPA_RECEP'
      Origin = 'NRO_RENSPA_RECEP'
    end
    object QFcCompFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object QFcCompLUGAR_REALIZA_AFIP: TStringField
      FieldName = 'LUGAR_REALIZA_AFIP'
      Origin = 'LUGAR_REALIZA_AFIP'
      Size = 30
    end
    object QFcCompCOD_MOTIVO_AFIP: TIntegerField
      FieldName = 'COD_MOTIVO_AFIP'
      Origin = 'COD_MOTIVO_AFIP'
    end
    object QFcCompNRO_RUCA_EMISOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_EMISOR_AFIP'
      Origin = 'NRO_RUCA_EMISOR_AFIP'
    end
    object QFcCompNRO_RUCA_RECEPTOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_RECEPTOR_AFIP'
      Origin = 'NRO_RUCA_RECEPTOR_AFIP'
    end
    object QFcCompFECHA_FAENA_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_FAENA_AFIP'
      Origin = 'FECHA_FAENA_AFIP'
    end
    object QFcCompFECHA_RECEP_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_RECEP_AFIP'
      Origin = 'FECHA_RECEP_AFIP'
    end
    object QFcCompDATOS_ADIC_AFIP: TStringField
      FieldName = 'DATOS_ADIC_AFIP'
      Origin = 'DATOS_ADIC_AFIP'
      Size = 100
    end
    object QFcCompFECHA_INCIO_ACTIV: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_ACTIV'
      Origin = 'FECHA_INCIO_ACTIV'
    end
    object QFcCompCODIGOBARRA_AFIP: TStringField
      FieldName = 'CODIGOBARRA_AFIP'
      Origin = 'CODIGOBARRA_AFIP'
      Size = 40
    end
    object QFcCompCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object QFcCompNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object QFcCompTIPO_LIQUIDACION: TStringField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcCompCUIT_AUTORIZADO_RECEP: TStringField
      FieldName = 'CUIT_AUTORIZADO_RECEP'
      Origin = 'CUIT_AUTORIZADO_RECEP'
      Size = 13
    end
    object QFcCompID_CPBTE_ANULADO_LIQ: TIntegerField
      FieldName = 'ID_CPBTE_ANULADO_LIQ'
      Origin = 'ID_CPBTE_ANULADO_LIQ'
    end
    object QFcCompLOTE_AFIP: TStringField
      FieldName = 'LOTE_AFIP'
      Origin = 'LOTE_AFIP'
      Size = 8
    end
    object QFcCompID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object QFcCompNC_POR_DIFERENCIA: TStringField
      FieldName = 'NC_POR_DIFERENCIA'
      Origin = 'NC_POR_DIFERENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QBorrarMovACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from movactacccompra m where m.id_cpbte=:id and m.tipocpb' +
        'te=:tipo')
    Left = 184
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        ParamType = ptInput
      end>
  end
  object QActiveTr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER  TAU_ORDENPAGO  ACTIVE')
    Left = 432
    Top = 592
  end
  object QInactiveTr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'ALTER TRIGGER  TAU_ORDENPAGO  INACTIVE'
      '')
    Left = 520
    Top = 584
  end
  object QNc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.tipocpbte,f.clasecpbte,f.nrocpbte,f.total from fccompca' +
        'b f where f.id_fc=:id'
      '')
    Left = 816
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNcTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QNcCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QNcNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QNcTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
  end
  object spCajaMov: TFDStoredProc
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AG_MOV_CAJA_EFEC_CERRADA'
    Left = 728
    Top = 408
  end
end
