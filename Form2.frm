VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Without this trick"
   ClientHeight    =   4830
   ClientLeft      =   1695
   ClientTop       =   7005
   ClientWidth     =   11190
   LinkTopic       =   "Form2"
   ScaleHeight     =   4830
   ScaleWidth      =   11190
   Begin VB.Timer Timer1 
      Interval        =   15
      Left            =   7080
      Top             =   1920
   End
   Begin VB.Image Image1 
      Height          =   2295
      Left            =   1440
      Picture         =   "Form2.frx":0000
      Top             =   1320
      Width           =   8130
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Single


Private Sub Form_Load()
Form1.Show
End Sub

Private Sub Timer1_Timer()
a = a + 0.1
Image1.Left = Cos(a) * 1000 + 1000
Image1.Top = Sin(a) * 1000 + 1000
If a >= 6 Then a = 0: Form2.BackColor = RGB(Rnd * 255, Rnd * 255, Rnd * 255)
End Sub
