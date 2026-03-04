VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7080
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8385
   LinkTopic       =   "Form1"
   ScaleHeight     =   7080
   ScaleWidth      =   8385
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "Desvincular con cuenta"
      Height          =   855
      Left            =   2280
      TabIndex        =   5
      Top             =   5760
      Width           =   3375
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Configurar lector Point"
      Height          =   855
      Left            =   2280
      TabIndex        =   4
      Top             =   2400
      Width           =   3375
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Vincular con cuenta"
      Height          =   855
      Left            =   2280
      TabIndex        =   3
      Top             =   240
      Width           =   3375
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Enviar pago Point"
      Height          =   855
      Left            =   2280
      TabIndex        =   2
      Top             =   4680
      Width           =   3375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Enviar pago QR"
      Height          =   855
      Left            =   2280
      TabIndex        =   1
      Top             =   3600
      Width           =   3375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Configurar cajas"
      Height          =   855
      Left            =   2280
      TabIndex        =   0
      Top             =   1320
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  ' Configure las cajas desde el módulo para poder usarlas con QR.
  ' Antes genere las sucursales desde la página de Mercadolibre
  ' Las cajas creadas desde la página de mercadopago no son válidas.
  Dim mp As mllib.MPService
  Set mp = New mllib.MPService
  mp.ConfigureStore
End Sub

Private Sub Command2_Click()
  Dim mp As mllib.MPService
  Dim Params As mllib.JsonObject
  Dim Item As mllib.JsonObject
  
  Set mp = New mllib.MPService
  Set Params = New mllib.JsonObject
  Params.Str("title") = "Pago QR"
  Params.Str("description") = "Pago mediante QR"
  Params.Dbl("total_amount") = 10.1
  Params.Str("external_reference") = mp.newUuid 'Se recomeienda que referencia externa debe ser unica para cada transaccion.
  Set Item = Params.Arr("items").Obj(0)
  Item.Str("title") = "Item 1"
  Item.Dbl("total_amount") = 10.1
  Item.Str("unit_measure") = "unit"
  Item.Dbl("quantity") = 1
  Item.Dbl("unit_price") = 10.1
  If mp.QRCreateOrder(Params) Then
    If mp.WaitQRPayment Then
      ' Obtengo informacion del pago. Json de ejemplo disponible en
      ' https://www.mercadopago.com.ar/developers/es/reference/payments/_payments_id/get
      Set oPayment = mp.GetPaymentResponseAsObj
      ' Guardar el id de pago en el sistema para consultarlo posteriormente en caso de ser necesario (mp.GetPayment(Id))
      id = oPayment.id
      Status = oPayment.Status ' approved, rejected, etc.
      If Status = "approved" Then
        date_approved = oPayment.date_approved
        transaction_amount = oPayment.transaction_amount
        ' Es el tipo de método de pago (tarjeta, transferencia bancaria, ticket, ATM, etc.)
        payment_type_id = oPayment.payment_type_id
        MsgBox ("Pago realizado con éxito. Id de operación  = " + id)
      ElseIf Status = "rejected" Then
        MsgBox ("El pago ha sido rechazado!")
      Else
        MsgBox ("El pago esta siendo procesado. Consulte el estado dentro de algunos minutos.")
      End If
    End If
  Else
    MsgBox (mp.ErrorDesc)
  End If

End Sub

Private Sub Command3_Click()
    Dim mp As mllib.MPService
    Set mp = New mllib.MPService
    If mp.CreatePaymentIntent(mp.DefaultPoint, 10.1, mp.newUuid, False, "F-234") Then
        Dim PaymentId As String
        PaymentId = mp.CreatePaymentIntentResponse.Str("id")
        If mp.WaitPaymentIntent Then
            ' Obtengo informacion del pago
            Dim oPayment As mllib.IPayment
            Set oPayment = mp.GetPaymentResponseAsObj
            Dim Status As String
            Status = oPayment.Status ' approved or rejected
            MessageBox.Show (oPayment.JsonObj.AsJson)
        Else
            MessageBox.Show (mp.ErrorDesc)
        End If
    Else
        MessageBox.Show (mp.ErrorDesc)
    End If

End Sub

Private Sub Command4_Click()
    Dim mp As mllib.MPService
    Set mp = New mllib.MPService
    mp.Authorize
End Sub

Private Sub Command5_Click()
    ' Configure las cajas desde el módulo para poder usarlas con uno de los lectores point de la cuenta.
    Dim mp As mllib.MPService
    Set mp = New mllib.MPService
    mp.ConfigurePoint
End Sub

Private Sub Command6_Click()
    Dim mp As mllib.MPService
    Set mp = New mllib.MPService
    mp.Logout
End Sub
