object FormVerificaMovCCVta: TFormVerificaMovCCVta
  Left = 194
  Top = 189
  Width = 544
  Height = 375
  HorzScrollBar.Position = 21
  Caption = 'Verifica Movimientos de Cc.Vta.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = -5
    Top = 89
    Width = 320
    Height = 120
    DataSource = DSMov
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 331
    Top = 88
    Width = 320
    Height = 120
    DataSource = DSMov
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 299
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object QMov: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select fcvta.tipocpbte,fcvta.nrocpbte, fcvta.total,mov.detalle,m' +
        'ov.debe,mov.haber,mov.saldo from fcvtacab fcvta'
      
        'left join movccvta mov on mov.id_cpbte=fcvta.id_fc and mov.Tipoc' +
        'pbte=fcvta.tipocpbte'
      'where fcvta.codigo='#39'000001'#39
      'order by fcvta.tipocpbte')
    Left = 160
    Top = 32
  end
  object DSMov: TDataSource
    DataSet = QMov
    Left = 232
    Top = 24
  end
end
