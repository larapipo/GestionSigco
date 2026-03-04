Imports mllib

Public Class Form1

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cl As mllib.IMPService = New mllib.MPService()
        '- Instale en el dispositivo POS la app Network Pay Display
        If cl.CLConnect("ws://192.168.68.113:12345/remote_pay") Then
            Dim NewOrder As mllib.ICLOrder = cl.CLNewOrder
            NewOrder.subtotal = 10
            NewOrder.tax = 0.21
            NewOrder.total = 12.1
            NewOrder.addItem("Remera azul S", 4.69, 1.5)
            NewOrder.addItem("Pantalon verde XL", 2.3, 1)
            cl.CLShowOrderScreen()
            If cl.CLWaitPayment Then
                Dim Tarjeta As String = cl.GetPaymentResponse.Obj("cardTransaction").Str("cardType")
                Dim Ultimos4Digitos As String = cl.GetPaymentResponse.Obj("cardTransaction").Str("last4")
                Dim Primero6Digitos As String = cl.GetPaymentResponse.Obj("cardTransaction").Str("last4")
                Dim DetalleTarjeta As String = cl.GetPaymentResponse.Obj("transactionInfo").Str("cardTypeLabel")
                Dim NumeroCupon As String = cl.GetPaymentResponse.Obj("transactionInfo").Str("receiptNumber")
                MessageBox.Show("Tarjeta = " & Tarjeta & "\n" _
                    & "Ultimos4Digitos = " & Ultimos4Digitos & "\n" _
                    & "Primero6Digitos = " & Primero6Digitos & "\n" _
                    & "DetalleTarjeta = " & DetalleTarjeta & "\n" _
                    & "NumeroCupon = " & NumeroCupon & "\n")
            End If
        Else
            MessageBox.Show(cl.ErrorDesc)
        End If

    End Sub
End Class
