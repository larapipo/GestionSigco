object FormCambiarNro: TFormCambiarNro
  Left = 563
  Top = 304
  BorderIcons = [biSystemMenu]
  Caption = 'Cambiar Nro de Comprobante'
  ClientHeight = 250
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 11
      Width = 184
      Height = 18
      Caption = 'Numero de Comprobante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edLetra: TEdit
      Left = 24
      Top = 35
      Width = 33
      Height = 26
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'EDSUC'
    end
    object edSuc: TEdit
      Left = 63
      Top = 35
      Width = 77
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      Text = 'edSuc'
      OnExit = edSucExit
    end
    object edNum: TEdit
      Left = 146
      Top = 35
      Width = 124
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
      Text = 'edNum'
      OnExit = edNumExit
    end
    object btOk: TBitBtn
      Left = 276
      Top = 31
      Width = 38
      Height = 37
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btOkClick
    end
    object btcancelar: TBitBtn
      Left = 316
      Top = 31
      Width = 38
      Height = 37
      Cancel = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btcancelarClick
    end
  end
  object QCambiarNroRet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update cpbte_ret_ingbr_cab ret set ret.numero=:numero,ret.suc=:s' +
        'uc where ret.id=:id')
    Left = 112
    Top = 112
    ParamData = <
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCambiarNroOpago: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update ordenpago op set op.sucop=:suc , op.numeroop= :nro where ' +
        'op.id_op=:id')
    Left = 112
    Top = 176
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'NRO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
