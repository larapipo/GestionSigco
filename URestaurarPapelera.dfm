object FormRestaurarPapelera: TFormRestaurarPapelera
  Left = 0
  Top = 0
  Caption = 'Restaurar Papelera'
  ClientHeight = 576
  ClientWidth = 1147
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 8
    Top = 8
    Width = 329
    Height = 521
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 177
      Height = 19
      Caption = 'Papelera de Reciclaje'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 247
      Top = 16
      Width = 59
      Height = 19
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lbComprobante: TLabel
      Left = 8
      Top = 399
      Width = 313
      Height = 42
      AutoSize = False
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lbArchivos: TListBox
      Left = 8
      Top = 41
      Width = 313
      Height = 352
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = lbArchivosClick
      OnKeyDown = lbArchivosKeyDown
    end
    object dbgDet: TJvDBGrid
      Left = 128
      Top = 49
      Width = 179
      Height = 80
      DataSource = DSDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Visible = False
      TitleButtonAllowMove = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
    end
    object Panel1: TPanel
      Left = 1
      Top = 488
      Width = 327
      Height = 32
      Align = alBottom
      TabOrder = 2
      object JvGradient1: TJvGradient
        Left = 41
        Top = 1
        Width = 63
        Height = 30
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 123
        ExplicitWidth = 6
        ExplicitHeight = 63
      end
      object btLeer: TBitBtn
        Left = 1
        Top = 1
        Width = 40
        Height = 30
        Action = LeerArchivos
        Align = alLeft
        Caption = 'LeerArchivos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
      end
      object btCancel: TBitBtn
        Left = 104
        Top = 1
        Width = 112
        Height = 30
        Align = alRight
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = bkCancel
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
      object btOk: TBitBtn
        Left = 216
        Top = 1
        Width = 110
        Height = 30
        Align = alRight
        Caption = 'Restaurar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = bkOK
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object ActionList1: TActionList
    Left = 656
    Top = 328
    object LeerArchivos: TAction
      Caption = 'LeerArchivos'
      OnExecute = LeerArchivosExecute
    end
    object Borrar: TAction
      Caption = 'Borrar'
      OnExecute = BorrarExecute
    end
  end
  object CDSCab: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 232
  end
  object CDSDet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 304
  end
  object DSDet: TDataSource
    DataSet = CDSDet
    Left = 456
    Top = 304
  end
  object DSCab: TDataSource
    DataSet = CDSCab
    Left = 488
    Top = 232
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select estado from caja_cab where id_caja=:id ')
    Left = 392
    Top = 472
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCajaESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
  end
end
