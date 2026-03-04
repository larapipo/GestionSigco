object FormLoteProduccion: TFormLoteProduccion
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'FormLoteProduccion'
  ClientHeight = 441
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 48
    ExplicitWidth = 185
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 147
      Height = 21
      Caption = 'Lote de Produccion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 400
    Width = 420
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 8
    ExplicitWidth = 624
  end
  object pnBase: TPanel
    Left = 0
    Top = 41
    Width = 420
    Height = 359
    Align = alClient
    TabOrder = 2
    ExplicitTop = 35
    ExplicitWidth = 624
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 96
      Height = 15
      Caption = 'Fecha Elaboracion'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 100
      Height = 15
      Caption = 'Fecha Vencimiento'
    end
    object Label3: TLabel
      Left = 16
      Top = 120
      Width = 46
      Height = 15
      Caption = 'Lote Nro'
    end
    object Label4: TLabel
      Left = 16
      Top = 160
      Width = 48
      Height = 15
      Caption = 'Cantidad'
    end
    object edLote: TEdit
      Left = 133
      Top = 117
      Width = 121
      Height = 23
      TabOrder = 0
      Text = 'edLote'
    end
    object edFecha: TDateTimePicker
      Left = 157
      Top = 6
      Width = 97
      Height = 23
      Date = 45532.000000000000000000
      Time = 0.674334768518747300
      TabOrder = 1
    end
    object edFechaVto: TDateTimePicker
      Left = 157
      Top = 56
      Width = 97
      Height = 23
      Date = 45532.000000000000000000
      Time = 0.674334768518747300
      TabOrder = 2
    end
    object edCantidad: TEdit
      Left = 133
      Top = 157
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'Edit1'
    end
    object AdvBadgeGlowButton1: TAdvBadgeGlowButton
      Left = 232
      Top = 304
      Width = 145
      Height = 41
      Caption = 'Aceptar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = True
      TabOrder = 4
      OnClick = AdvBadgeGlowButton1Click
      Appearance.BorderColor = 11382963
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.Color = clWhite
      Appearance.ColorTo = clWhite
      Appearance.ColorChecked = 13744549
      Appearance.ColorCheckedTo = 13744549
      Appearance.ColorDisabled = clWhite
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 11565130
      Appearance.ColorDownTo = 11565130
      Appearance.ColorHot = 16444643
      Appearance.ColorHotTo = 16444643
      Appearance.ColorMirror = clWhite
      Appearance.ColorMirrorTo = clWhite
      Appearance.ColorMirrorHot = 16444643
      Appearance.ColorMirrorHotTo = 16444643
      Appearance.ColorMirrorDown = 11565130
      Appearance.ColorMirrorDownTo = 11565130
      Appearance.ColorMirrorChecked = 13744549
      Appearance.ColorMirrorCheckedTo = 13744549
      Appearance.ColorMirrorDisabled = clWhite
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = 3750459
      Appearance.TextColorDown = 2303013
      Appearance.TextColorHot = 2303013
      Appearance.TextColorDisabled = 13948116
    end
    object AdvBadgeGlowButton2: TAdvBadgeGlowButton
      Left = 40
      Top = 304
      Width = 145
      Height = 41
      Caption = 'Cancelar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = True
      TabOrder = 5
      Appearance.BorderColor = 11382963
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.Color = clWhite
      Appearance.ColorTo = clWhite
      Appearance.ColorChecked = 13744549
      Appearance.ColorCheckedTo = 13744549
      Appearance.ColorDisabled = clWhite
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 11565130
      Appearance.ColorDownTo = 11565130
      Appearance.ColorHot = 16444643
      Appearance.ColorHotTo = 16444643
      Appearance.ColorMirror = clWhite
      Appearance.ColorMirrorTo = clWhite
      Appearance.ColorMirrorHot = 16444643
      Appearance.ColorMirrorHotTo = 16444643
      Appearance.ColorMirrorDown = 11565130
      Appearance.ColorMirrorDownTo = 11565130
      Appearance.ColorMirrorChecked = 13744549
      Appearance.ColorMirrorCheckedTo = 13744549
      Appearance.ColorMirrorDisabled = clWhite
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = 3750459
      Appearance.TextColorDown = 2303013
      Appearance.TextColorHot = 2303013
      Appearance.TextColorDisabled = 13948116
    end
  end
  object QLote: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      
        'insert into ordenproducc_lotes (id,id_det,id_op,id_lote,codigo,l' +
        'ote,despacho,cantidad,fecha,fechavto,deposito,tipo_comprob)'
      
        '  values (gen_id(next_id_ordenproducc_lotes,1),:id_det,:id_op,:i' +
        'd_lote,:codigo,:lote,:despacho,:cantidad,:fecha,:fechavto,:depos' +
        'ito,:tipo_comprob)'
      '')
    Left = 336
    Top = 233
    ParamData = <
      item
        Name = 'ID_DET'
        ParamType = ptInput
      end
      item
        Name = 'ID_OP'
        ParamType = ptInput
      end
      item
        Name = 'ID_LOTE'
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'LOTE'
        ParamType = ptInput
      end
      item
        Name = 'DESPACHO'
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        ParamType = ptInput
      end
      item
        Name = 'FECHA'
        ParamType = ptInput
      end
      item
        Name = 'FECHAVTO'
        ParamType = ptInput
      end
      item
        Name = 'DEPOSITO'
        ParamType = ptInput
      end
      item
        Name = 'TIPO_COMPROB'
        ParamType = ptInput
      end>
  end
  object spAltaStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ALTASTOCK_DESDE_PARTE_DIARIO'
    Left = 336
    Top = 149
    ParamData = <
      item
        Position = 1
        Name = 'ID_PARTE_DIARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CANTIDAD'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
