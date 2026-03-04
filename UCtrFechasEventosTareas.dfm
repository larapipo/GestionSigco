object FormGestionFechasEventos: TFormGestionFechasEventos
  Left = 0
  Top = 0
  Caption = 'Gestion Fechas de Eventos'
  ClientHeight = 514
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 674
    Height = 431
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 725
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 672
      Height = 400
      Align = alTop
      DataSource = DSPlaner
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <
        item
          ControlName = 'edFecha'
          FieldName = 'DESDE'
          FitCell = fcCellSize
          LeaveOnEnterKey = True
          LeaveOnUpDownKey = True
        end
        item
          ControlName = 'edHora'
          FieldName = 'HORAINCIO'
          FitCell = fcCellSize
          LeaveOnEnterKey = True
          LeaveOnUpDownKey = True
        end>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'SUBJECT'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 412
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESDE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORAINCIO'
          Title.Alignment = taCenter
          Title.Caption = 'Hora'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end>
    end
    object edFecha: TJvDBDateTimePicker
      Left = 216
      Top = 96
      Width = 89
      Height = 21
      Date = 44179.027332442130000000
      Time = 44179.027332442130000000
      TabOrder = 1
      Visible = False
      DropDownDate = 44178.000000000000000000
      DataField = 'DESDE'
      DataSource = DSPlaner
    end
    object edHora: TJvDBDateTimePicker
      Left = 434
      Top = 104
      Width = 89
      Height = 21
      Date = 44179.027332418980000000
      Time = 44179.027332418980000000
      Kind = dtkTime
      TabOrder = 2
      Visible = False
      DropDownDate = 44178.000000000000000000
      DataField = 'HORAINCIO'
      DataSource = DSPlaner
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 472
    Width = 674
    Height = 42
    Align = alBottom
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 725
    object btOk: TBitBtn
      Left = 593
      Top = 6
      Width = 75
      Height = 30
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 644
    end
    object btCancelar: TBitBtn
      Left = 518
      Top = 6
      Width = 75
      Height = 30
      Align = alRight
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 569
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 674
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 725
    object lbControl: TLabel
      Left = 11
      Top = 11
      Width = 145
      Height = 24
      Align = alLeft
      Caption = 'Control de Fechas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 19
    end
  end
  object QPlaner: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from  PLANER_TAREAS s '
      'where s.id_referencial =:idkey')
    Left = 20
    Top = 209
    ParamData = <
      item
        Position = 1
        Name = 'IDKEY'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end>
    object QPlanerID_KEY: TStringField
      FieldName = 'ID_KEY'
      Origin = 'ID_KEY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object QPlanerID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QPlanerNOTES: TMemoField
      FieldName = 'NOTES'
      Origin = 'NOTES'
      BlobType = ftMemo
    end
    object QPlanerSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Origin = 'SUBJECT'
      Size = 100
    end
    object QPlanerCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object QPlanerIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = 'IMAGE'
    end
    object QPlanerCAPTION: TIntegerField
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
    end
    object QPlanerRESOURCE: TIntegerField
      FieldName = 'RESOURCE'
      Origin = 'RESOURCE'
    end
    object QPlanerRECURRENCY: TStringField
      FieldName = 'RECURRENCY'
      Origin = 'RECURRENCY'
      Size = 200
    end
    object QPlanerID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QPlanerTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QPlanerCLASECPTE: TStringField
      FieldName = 'CLASECPTE'
      Origin = 'CLASECPTE'
      Size = 2
    end
    object QPlanerCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QPlanerPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QPlanerAREA: TIntegerField
      FieldName = 'AREA'
      Origin = 'AREA'
    end
    object QPlanerSTARTIME: TSQLTimeStampField
      FieldName = 'STARTIME'
      Origin = 'STARTIME'
    end
    object QPlanerENDTIME: TSQLTimeStampField
      FieldName = 'ENDTIME'
      Origin = 'ENDTIME'
    end
    object QPlanerMINTIME: TSQLTimeStampField
      FieldName = 'MINTIME'
      Origin = 'MINTIME'
    end
    object QPlanerMAXTIME: TSQLTimeStampField
      FieldName = 'MAXTIME'
      Origin = 'MAXTIME'
    end
    object QPlanerESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object QPlanerID_REFERENCIAL: TStringField
      FieldName = 'ID_REFERENCIAL'
      Origin = 'ID_REFERENCIAL'
      Size = 40
    end
  end
  object DSPPlaner: TDataSetProvider
    DataSet = QPlaner
    UpdateMode = upWhereKeyOnly
    Left = 95
    Top = 209
  end
  object CDSPlaner: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'IDKEY'
        ParamType = ptInput
        Size = 40
      end>
    ProviderName = 'DSPPlaner'
    BeforeEdit = CDSPlanerBeforeEdit
    BeforePost = CDSPlanerBeforePost
    AfterPost = CDSPlanerAfterPost
    AfterDelete = CDSPlanerAfterDelete
    OnCalcFields = CDSPlanerCalcFields
    Left = 159
    Top = 217
    object CDSPlanerID_KEY: TStringField
      FieldName = 'ID_KEY'
      Origin = 'ID_KEY'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object CDSPlanerID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPlanerNOTES: TMemoField
      FieldName = 'NOTES'
      Origin = 'NOTES'
      BlobType = ftMemo
    end
    object CDSPlanerSUBJECT: TStringField
      DisplayLabel = 'Asunto'
      FieldName = 'SUBJECT'
      Origin = 'SUBJECT'
      Size = 100
    end
    object CDSPlanerCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object CDSPlanerIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = 'IMAGE'
    end
    object CDSPlanerCAPTION: TIntegerField
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
    end
    object CDSPlanerRESOURCE: TIntegerField
      FieldName = 'RESOURCE'
      Origin = 'RESOURCE'
    end
    object CDSPlanerRECURRENCY: TStringField
      FieldName = 'RECURRENCY'
      Origin = 'RECURRENCY'
      Size = 200
    end
    object CDSPlanerID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSPlanerTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSPlanerCLASECPTE: TStringField
      FieldName = 'CLASECPTE'
      Origin = 'CLASECPTE'
      Size = 2
    end
    object CDSPlanerCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object CDSPlanerPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object CDSPlanerAREA: TIntegerField
      FieldName = 'AREA'
      Origin = 'AREA'
    end
    object CDSPlanerSTARTIME: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Inicio'
      FieldName = 'STARTIME'
      Origin = 'STARTIME'
    end
    object CDSPlanerENDTIME: TSQLTimeStampField
      DisplayLabel = 'Fecha Final'
      FieldName = 'ENDTIME'
      Origin = 'ENDTIME'
    end
    object CDSPlanerMINTIME: TSQLTimeStampField
      FieldName = 'MINTIME'
      Origin = 'MINTIME'
    end
    object CDSPlanerMAXTIME: TSQLTimeStampField
      FieldName = 'MAXTIME'
      Origin = 'MAXTIME'
    end
    object CDSPlanerESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object CDSPlanerID_REFERENCIAL: TStringField
      FieldName = 'ID_REFERENCIAL'
      Origin = 'ID_REFERENCIAL'
      Size = 40
    end
    object CDSPlanerDESDE: TDateField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'DESDE'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object CDSPlanerHORAINCIO: TTimeField
      Alignment = taCenter
      FieldKind = fkInternalCalc
      FieldName = 'HORAINCIO'
      ProviderFlags = []
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
  end
  object DSPlaner: TDataSource
    DataSet = CDSPlaner
    Left = 242
    Top = 225
  end
end
