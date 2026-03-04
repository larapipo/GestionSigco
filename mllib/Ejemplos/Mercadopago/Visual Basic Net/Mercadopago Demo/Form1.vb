Public Class Form1

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ' Configure las cajas desde el módulo para poder usarlas con QR.
        ' Antes genere las sucursales desde la página de Mercadolibre
        ' Las cajas creadas desde la página de mercadopago no son válidas.
        Dim mp As mllib.MPService
        mp = New mllib.MPService()
        mp.ConfigureStore()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim mp As mllib.IMPService
        Dim Params As mllib.IJsonObject
        Dim Item As mllib.IJsonObject
        Dim oPayment As mllib.IPayment
        Dim id, status, date_approved, payment_type_id As String
        Dim transaction_amount As Double

        mp = New mllib.MPService
        Params = New mllib.JsonObject
        Params.Str("title") = "Pago QR"
        Params.Str("description") = "Pago mediante QR"
        Params.Dbl("total_amount") = 10.1
        Params.Str("external_reference") = mp.newUuid 'Se recomeienda que referencia externa debe ser unica para cada transaccion.
        Item = Params.Arr("items").Obj(0)
        Item.Str("title") = "Item 1"
        Item.Dbl("total_amount") = 10.1
        Item.Str("unit_measure") = "unit"
        Item.Dbl("quantity") = 1
        Item.Dbl("unit_price") = 10.1
        If mp.QRCreateOrder(Params) Then
            If mp.WaitQRPayment Then
                ' Obtengo informacion del pago. Json de ejemplo disponible en
                ' https://www.mercadopago.com.ar/developers/es/reference/payments/_payments_id/get
                oPayment = mp.GetPaymentResponseAsObj
                ' Guardar el id de pago en el sistema para consultarlo posteriormente en caso de ser necesario (mp.GetPayment(Id))
                id = oPayment.id
                Status = oPayment.Status ' approved, rejected, etc.
                If status = "approved" Then
                    date_approved = oPayment.date_approved
                    transaction_amount = oPayment.transaction_amount
                    ' Es el tipo de método de pago (tarjeta, transferencia bancaria, ticket, ATM, etc.)
                    payment_type_id = oPayment.payment_type_id
                    MsgBox("Pago realizado con éxito. Id de operación  = " + id)
                ElseIf status = "rejected" Then
                    MsgBox("El pago ha sido rechazado!")
                Else
                    MsgBox("El pago esta siendo procesado. Consulte el estado dentro de algunos minutos.")
                End If
            End If
        Else
            MsgBox(mp.ErrorDesc)
        End If

    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        ' Configure las cajas desde el módulo para poder usarlas con uno de los lectores point de la cuenta.
        Dim mp As mllib.MPService
        mp = New mllib.MPService()
        mp.ConfigurePoint()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim mp As mllib.MPService = New mllib.MPService()
        If mp.CreatePaymentIntent(mp.DefaultPoint, 10.1, mp.newUuid, False, "F-234") Then
            Dim PaymentId As String = mp.CreatePaymentIntentResponse.Str("id")
            If mp.WaitPaymentIntent Then
                ' Obtengo informacion del pago
                Dim oPayment As mllib.IPayment
                oPayment = mp.GetPaymentResponseAsObj
                Dim Status As String = oPayment.status ' approved or rejected
                MessageBox.Show(oPayment.JsonObj.AsJson)
            Else
                MessageBox.Show(mp.ErrorDesc)
            End If
        Else
            MessageBox.Show(mp.ErrorDesc)
        End If
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim mp As mllib.MPService
        mp = New mllib.MPService()
        mp.Logout()
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Dim mp As mllib.MPService
        mp = New mllib.MPService()
        mp.Authorize()
    End Sub
End Class
