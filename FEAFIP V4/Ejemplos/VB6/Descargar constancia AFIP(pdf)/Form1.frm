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
   Begin VB.CommandButton Command2 
      Caption         =   "Descargar Constancia"
      Height          =   735
      Left            =   1320
      TabIndex        =   0
      Top             =   1080
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End Sub

Private Sub Command2_Click()

Dim lwsPadron As New FEAFIPLib.wsPadron
If lwsPadron.descargarConstancia(20939802593#, "constancia.pdf") Then
  MsgBox ("Constancia descargada")
Else
  MsgBox (lwsPadron.ErrorDesc)
End If

End Sub
