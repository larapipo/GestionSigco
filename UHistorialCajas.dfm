object FormHistorialCajas: TFormHistorialCajas
  Left = 0
  Top = 0
  Caption = 'Historial de Consultas de Caja'
  ClientHeight = 548
  ClientWidth = 818
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 818
    Height = 548
    ActivePage = pagCaja
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 511
    object pagCaja: TTabSheet
      Caption = 'Datos Caja'
      object PageControl2: TPageControl
        Left = 0
        Top = 144
        Width = 810
        Height = 376
        ActivePage = Ingresos
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 339
        object Ingresos: TTabSheet
          Caption = 'Ingresos'
          object dbgIngresos: TDBGrid
            Left = 0
            Top = 0
            Width = 802
            Height = 348
            Align = alClient
            DataSource = DSCajaDetIngresos
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object Egresos: TTabSheet
          Caption = 'Egresos'
          ImageIndex = 1
          object dbgEgresos: TDBGrid
            Left = 0
            Top = 0
            Width = 802
            Height = 348
            Align = alClient
            DataSource = DSCajaDetEgresos
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
      object pnCabecera: TPanel
        Left = 0
        Top = 0
        Width = 810
        Height = 144
        Align = alTop
        Caption = 'pnCabecera'
        TabOrder = 1
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 33
          Height = 18
          Caption = 'Caja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbArchivos: TListBox
          Left = 3
          Top = 27
          Width = 543
          Height = 110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnClick = lbArchivosClick
        end
      end
    end
  end
  object CDSCajaDetEgresos: TClientDataSet
    Aggregates = <>
    Filter = 'Tipo_Operacion='#39'E'#39' and tipo_cpbte<>'#39'CC'#39
    Filtered = True
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
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
    ProviderName = 'DSPCajaDetEgresos'
    Left = 648
    Top = 168
  end
  object DSCajaDetIngresos: TDataSource
    DataSet = CDSCajaDetIngresos
    Left = 752
    Top = 224
  end
  object DSCajaDetEgresos: TDataSource
    DataSet = CDSCajaDetEgresos
    Left = 736
    Top = 168
  end
  object DSCajaCab: TDataSource
    DataSet = CDSCajaCab
    Left = 236
    Top = 16
  end
  object CDSCajaDetIngresos: TClientDataSet
    Aggregates = <>
    Filter = 'Tipo_Operacion='#39'I'#39
    Filtered = True
    PacketRecords = 4
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
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
    ProviderName = 'DSPCajaDetIngresos'
    Left = 656
    Top = 224
  end
  object CDSCajaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'DSPCajaCab'
    Left = 168
    Top = 16
  end
  object ActionList1: TActionList
    Left = 620
    Top = 64
    object LeerArchivos: TAction
      Caption = 'LeerArchivos'
      OnExecute = LeerArchivosExecute
    end
    object Borrar: TAction
      Caption = 'Borrar'
      OnExecute = BorrarExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 452
    Top = 112
    object Borrar1: TMenuItem
      Action = Borrar
    end
  end
end
