VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Demo FEAFIP"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Iniciar Demo"
      Height          =   735
      Left            =   1320
      TabIndex        =   0
      Top             =   1560
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  ' Ver documentacion en http://www.bitingenieria.com.ar/doc/feafip/FEAFIPLib_TLB/IBarcode.html
  
  Dim oBarcode As FEAFIPLib.Barcode
  Set oBarcode = New FEAFIPLib.Barcode
  oBarcode.TamanioFuente = 8
  oBarcode.GenerarCodigo 20939802593#, 1, 3, "12345678901234", "20171101", "C:\datos\codigobarras.bmp"
  MsgBox (oBarcode.Texto)

End Sub

