object FormPlantillasNoFacturables: TFormPlantillasNoFacturables
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Plantiilas No Facturables'
  ClientHeight = 428
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 2
  Padding.Top = 2
  Padding.Right = 2
  Padding.Bottom = 2
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnNoFacturables: TJvPanel
    Left = 2
    Top = 2
    Width = 680
    Height = 424
    Movable = True
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      680
      424)
    object dbgPlantillasNo: TJvDBGrid
      Left = 6
      Top = 15
      Width = 665
      Height = 368
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = FormFacturaPlantillas.DSPlantillaNo
      DrawingStyle = gdsGradient
      FixedColor = clInfoBk
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgPlantillasNoDblClick
      MultiSelect = True
      TitleButtons = True
      TitleArrow = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRANOMBRE'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 290
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRACOMPROB'
          Title.Alignment = taCenter
          Title.Caption = 'Comprobante'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRATIPOABONO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Abono Tipo'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MES_ABONOANUAL'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Mes Anual'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end>
    end
    object btCerrar: TBitBtn
      Left = 596
      Top = 389
      Width = 75
      Height = 25
      Anchors = [akBottom]
      Caption = '&Cerrar'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCerrarClick
    end
  end
end
