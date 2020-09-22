VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "With this trick"
   ClientHeight    =   4860
   ClientLeft      =   1440
   ClientTop       =   1545
   ClientWidth     =   11220
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4860
   ScaleWidth      =   11220
   Begin VB.Timer Timer1 
      Interval        =   15
      Left            =   5040
      Top             =   840
   End
   Begin VB.Image Image1 
      Height          =   2295
      Left            =   1200
      Picture         =   "Form1.frx":0000
      Top             =   1200
      Width           =   8130
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Type POINTAPI
        X As Long
        Y As Long
End Type


Dim a As Single

Private Sub Form_Load()
SetWindowPos Me.hwnd, -1, 100, 100, Form1.Width * 0.06, Form1.Height * 0.06, 0
Ret = GetWindowLong(Me.hwnd, -20)
Ret = Ret Or &H80000
SetWindowLong Me.hwnd, -20, Ret
SetLayeredWindowAttributes Me.hwnd, vbBlack, 255, &H2
End Sub

Private Sub Timer1_Timer()
a = a + 0.1
Image1.Left = Cos(a) * 1000 + 1000
Image1.Top = Sin(a) * 1000 + 1000
If a >= 6 Then a = 0: Form1.BackColor = RGB(Rnd * 255, Rnd * 255, Rnd * 255)
End Sub

