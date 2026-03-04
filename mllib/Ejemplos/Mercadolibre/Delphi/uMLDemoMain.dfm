object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Demo mllib'
  ClientHeight = 682
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1070
    Height = 682
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1072
    ExplicitHeight = 676
    object TabSheet3: TTabSheet
      Caption = 'Mercadolibre'
      ImageIndex = 2
      object Label1: TLabel
        Left = 13
        Top = 79
        Width = 95
        Height = 13
        Caption = 'Respuesta en JSON'
      end
      object Label2: TLabel
        Left = 536
        Top = 79
        Width = 81
        Height = 13
        Caption = 'Datos parseados'
      end
      object btListarArticulos: TButton
        Left = 13
        Top = 34
        Width = 85
        Height = 25
        Caption = 'Listar articulos'
        TabOrder = 0
        OnClick = btListarArticulosClick
      end
      object btOrdenesRecientes: TButton
        Left = 12
        Top = 3
        Width = 162
        Height = 25
        Caption = 'Obtener Ordenes Recientes'
        TabOrder = 1
        OnClick = btOrdenesRecientesClick
      end
      object Memo1: TMemo
        Left = 13
        Top = 98
        Width = 500
        Height = 538
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 2
      end
      object btCargarFactura: TButton
        Left = 366
        Top = 3
        Width = 121
        Height = 25
        Caption = 'Cargar Factura'
        TabOrder = 3
        OnClick = btCargarFacturaClick
      end
      object btIdFactura: TButton
        Left = 493
        Top = 3
        Width = 121
        Height = 25
        Caption = 'Obtener Id Factura'
        TabOrder = 4
        OnClick = btIdFacturaClick
      end
      object btObtenerFactura: TButton
        Left = 622
        Top = 3
        Width = 121
        Height = 25
        Caption = 'Obtener Factura'
        TabOrder = 5
        OnClick = btObtenerFacturaClick
      end
      object btActualizaStock: TButton
        Left = 105
        Top = 34
        Width = 161
        Height = 25
        Caption = 'Actualizar stock de articulo'
        TabOrder = 6
        OnClick = btActualizaStockClick
      end
      object btObtenerInfFactura: TButton
        Left = 180
        Top = 3
        Width = 180
        Height = 25
        Caption = 'Obtener Informacion facturacion'
        TabOrder = 7
        OnClick = btObtenerInfFacturaClick
      end
      object btInfoUsuario: TButton
        Left = 269
        Top = 34
        Width = 218
        Height = 25
        Caption = 'Informaci'#243'n del usuario autenticado'
        TabOrder = 8
        OnClick = btInfoUsuarioClick
      end
      object Memo2: TMemo
        Left = 536
        Top = 98
        Width = 510
        Height = 535
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 9
      end
      object btCerrarSesion: TButton
        Left = 493
        Top = 34
        Width = 75
        Height = 25
        Caption = 'Cerrar Sesion'
        TabOrder = 10
        OnClick = btCerrarSesionClick
      end
    end
  end
end
