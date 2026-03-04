object FormCronogramaOT: TFormCronogramaOT
  Left = 158
  Top = 183
  Caption = 'Cronograma de Orden de Trabajo'
  ClientHeight = 521
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 393
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = -16
    ExplicitWidth = 737
    object mtMes: TMonthCalendar
      Left = 1
      Top = 1
      Width = 273
      Height = 391
      Align = alLeft
      Date = 38472.000000000000000000
      TabOrder = 0
      WeekNumbers = True
      OnClick = RecuperarExecute
      OnDblClick = mtMesDblClick
      ExplicitHeight = 735
    end
    object cxGrid1: TcxGrid
      Left = 280
      Top = 44
      Width = 552
      Height = 307
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = DSOTrabajo
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object cxGrid1DBTableView1FECHAINICIO: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAINICIO'
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object cxGrid1DBTableView1FECHAFINAL: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAFINAL'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Width = 185
        end
        object cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn
          DataBinding.FieldName = 'DESCRIPCION'
          HeaderAlignmentHorz = taCenter
          Width = 107
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object DSOTrabajo: TDataSource
    DataSet = CDSOTrabajo
    Left = 360
    Top = 88
  end
  object ActionList1: TActionList
    Left = 440
    Top = 16
    object Recuperar: TAction
      Caption = 'Recuperar'
      OnExecute = RecuperarExecute
    end
  end
  object CDSOTrabajo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'Fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOTrabajo'
    Left = 424
    Top = 96
    object CDSOTrabajoCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 13
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSOTrabajoNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSOTrabajoDESCRIPCION: TMemoField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 14
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      BlobType = ftMemo
    end
    object CDSOTrabajoFECHAINICIO: TSQLTimeStampField
      DisplayLabel = 'F.Inicio'
      DisplayWidth = 22
      FieldName = 'FECHAINICIO'
      Origin = 'FECHAINICIO'
      Required = True
    end
    object CDSOTrabajoFECHAESTIMADA: TSQLTimeStampField
      DisplayLabel = 'F.Estimada'
      DisplayWidth = 25
      FieldName = 'FECHAESTIMADA'
      Origin = 'FECHAESTIMADA'
    end
    object CDSOTrabajoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 35
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSOTrabajoFECHAFINAL: TSQLTimeStampField
      DisplayLabel = 'F.Final.'
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object CDSOTrabajoCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSOTrabajoRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSOTrabajoID_OT: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_OT'
      Origin = 'ID_OT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOTrabajoTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPOTrabajo: TDataSetProvider
    DataSet = QOTrabajo
    Left = 352
    Top = 152
  end
  object QOTrabajo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ordentrabajocab where fechaestimada = :Fecha')
    Left = 304
    Top = 96
    ParamData = <
      item
        Position = 1
        Name = 'Fecha'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
