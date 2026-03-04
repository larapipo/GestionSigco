inherited FormPedidoCOT: TFormPedidoCOT
  Caption = 'Pedido de COT'
  ClientHeight = 570
  ExplicitHeight = 611
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 406
    ExplicitHeight = 406
    object Label1: TLabel
      Left = 15
      Top = 54
      Width = 72
      Height = 13
      Caption = 'Transporte Cuit'
    end
    object Label2: TLabel
      Left = 15
      Top = 8
      Width = 91
      Height = 13
      Caption = 'Transporte Patente'
    end
    object edTransporteCuit: TEdit
      Left = 15
      Top = 73
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edTransportePatente: TEdit
      Left = 15
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  inherited ToolBar1: TToolBar
    Top = 406
    ExplicitTop = 406
  end
  inherited Panel1: TPanel
    Top = 436
    ExplicitTop = 436
  end
  inherited ActionList1: TActionList
    object PedirCOT: TAction
      Caption = 'PedirCOT'
      OnExecute = PedirCOTExecute
    end
  end
end
