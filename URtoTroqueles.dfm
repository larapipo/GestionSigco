object FormRtoTroqueles: TFormRtoTroqueles
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Remitos - Troqueles'
  ClientHeight = 391
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 391
    Align = alTop
    Caption = 'Panel1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 198
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Troqueles '
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Troqueles Entregado'
    end
    object Label3: TLabel
      Left = 232
      Top = 341
      Width = 73
      Height = 13
      Caption = 'Nro.Troquel>>'
    end
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 15
      Top = 338
      Width = 96
      Height = 13
      DataSource = DatosRemitos.DSRtoTroqueles
      Style = lsRecordNo
      Transparent = True
    end
    object dbgTroqueles: TDBGrid
      Left = 198
      Top = 27
      Width = 323
      Height = 305
      DataSource = DatosRemitos.DSTroqueles
      DragMode = dmAutomatic
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = dbgTroquelesTitleClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NRO_TROQUEL'
          Title.Alignment = taCenter
          Width = 114
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_INGRESO'
          Title.Alignment = taCenter
          Width = 112
          Visible = True
        end>
    end
    object dbgRtoTRoqueles: TDBGrid
      Left = 15
      Top = 27
      Width = 177
      Height = 305
      DataSource = DatosRemitos.DSRtoTroqueles
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDragDrop = dbgRtoTRoquelesDragDrop
      OnDragOver = dbgRtoTRoquelesDragOver
      Columns = <
        item
          Expanded = False
          FieldName = 'NRO_TROQUEL'
          Title.Alignment = taCenter
          Width = 131
          Visible = True
        end>
    end
    object edBuscador: TJvDBFindEdit
      Left = 311
      Top = 338
      Width = 121
      Height = 21
      TabOrder = 2
      Text = ''
      OnChange = edBuscadorChange
      OnKeyDown = edBuscadorKeyDown
      DataField = 'NRO_TROQUEL'
      DataSource = DatosRemitos.DSTroqueles
      FindStyle = fsFilter
    end
  end
end
