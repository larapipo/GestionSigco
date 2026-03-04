object FormPrintVirtual: TFormPrintVirtual
  Left = 0
  Top = 0
  Caption = 'Print Virtual UI'
  ClientHeight = 216
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 15
      Width = 109
      Height = 13
      Caption = 'Impresoras Habilitadas'
    end
    object lbArchivo: TLabel
      Left = 10
      Top = 123
      Width = 44
      Height = 13
      Caption = 'lbArchivo'
    end
    object cmbPrinters: TComboBox
      Left = 125
      Top = 12
      Width = 261
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cmbPrintersChange
    end
    object btPrintPDF: TButton
      Left = 264
      Top = 57
      Width = 97
      Height = 25
      Caption = 'Print PDF'
      TabOrder = 1
      OnClick = btPrintPDFClick
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 142
      Width = 400
      Height = 19
      Panels = <
        item
          Width = 100
        end>
    end
    object Button1: TButton
      Left = 264
      Top = 96
      Width = 97
      Height = 25
      Caption = 'Test'
      TabOrder = 3
      Visible = False
      OnClick = Button1Click
    end
  end
end
