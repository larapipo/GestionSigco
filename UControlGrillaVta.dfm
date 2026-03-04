object FormControlDetalle: TFormControlDetalle
  Left = 146
  Top = 141
  BorderIcons = [biSystemMenu]
  Caption = 'Control Detalle'
  ClientHeight = 489
  ClientWidth = 1054
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 1
    Width = 1025
    Height = 440
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrillaDetalle_2: TDBGrid
      Left = 1
      Top = 1
      Width = 1023
      Height = 400
      Align = alTop
      DataSource = DatosVentas.DSVentaDet
      FixedColor = clAqua
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = DBGrillaDetalle_2ColEnter
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'NRO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = '#'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEM_OCOMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'It.OC'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CODIGOARTICULO'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 332
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_ADICIONAL'
          Title.Alignment = taCenter
          Title.Caption = 'Det.Adicional'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 490
          Visible = True
        end>
    end
    object btCerrar: TButton
      Left = 928
      Top = 407
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = btCerrarClick
    end
  end
end
