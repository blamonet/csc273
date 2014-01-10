VERSION 5.00
Begin VB.Form scramblermain 
   BackColor       =   &H00E0E0E0&
   Caption         =   "Scrambler"
   ClientHeight    =   4335
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7530
   LinkTopic       =   "Form1"
   ScaleHeight     =   4335
   ScaleWidth      =   7530
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Height          =   5295
      Left            =   0
      ScaleHeight     =   5235
      ScaleWidth      =   1155
      TabIndex        =   11
      Top             =   0
      Width           =   1215
   End
   Begin VB.PictureBox Picture4 
      Height          =   375
      Left            =   4080
      Picture         =   "scramblermain.frx":0000
      ScaleHeight     =   315
      ScaleWidth      =   435
      TabIndex        =   10
      Top             =   3600
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.PictureBox Picture3 
      Height          =   375
      Left            =   3480
      Picture         =   "scramblermain.frx":8B74
      ScaleHeight     =   315
      ScaleWidth      =   435
      TabIndex        =   9
      Top             =   3600
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.PictureBox Picture2 
      Height          =   375
      Left            =   2880
      Picture         =   "scramblermain.frx":FE5F
      ScaleHeight     =   315
      ScaleWidth      =   435
      TabIndex        =   8
      Top             =   3600
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Options"
      Height          =   255
      Left            =   6240
      TabIndex        =   2
      Top             =   1320
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1320
      TabIndex        =   1
      Top             =   1320
      Width           =   4095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Enter"
      Default         =   -1  'True
      Height          =   255
      Left            =   5520
      TabIndex        =   0
      Top             =   1320
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   6600
      Top             =   2400
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Height          =   375
      Left            =   1320
      TabIndex        =   7
      Top             =   1800
      Width           =   5655
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   1320
      TabIndex        =   6
      Top             =   360
      Width           =   5655
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   1320
      TabIndex        =   5
      Top             =   0
      Width           =   2295
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   3840
      TabIndex        =   4
      Top             =   0
      Width           =   1575
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   6480
      TabIndex        =   3
      Top             =   0
      Width           =   495
   End
End
Attribute VB_Name = "scramblermain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Rem Aaron Grant - Final Exam - Fall 2001

Dim words(1 To 84660) As String
Dim Style As String
Dim NameValue As String
Dim TimerValue As Integer
Dim TimerEnabled As Boolean
Dim Staticword As String
Dim score As Integer

Private Function getword(ct)
  Randomize Timer
  intword = Int(Rnd * ct)
  getword = UCase(words(intword))
End Function

Private Sub WordLoader()
  Dim ct As Integer
  ct = 1
  Open "a:\test.txt" For Input As #1
  Do While Not EOF(1)
  Input #1, words(ct)
  ct = Int(ct + 1)
  Loop
  Close #1
  wordmix = getword(ct)
  Staticword = wordmix
  wordmixfinal = jword(wordmix)
 
  Label2.Caption = wordmixfinal
End Sub

Public Sub InputOptions(Style, NameValue, TimerValue, TimerEnabled)
  Call WordLoader
  score = 0
  Text1.SetFocus
  Label3.Caption = "Player: " + NameValue
  Style = Style
  If (Style = "Moon") Then
    Picture1.Picture = Picture2.Picture
    scramblermain.BackColor = &HC0C0C0
  ElseIf (Style = "Blue") Then
    Picture1.Picture = Picture3.Picture
    scramblermain.BackColor = &H808000
  ElseIf (Style = "Red") Then
    Picture1.Picture = Picture4.Picture
    scramblermain.BackColor = &H8080FF
  End If
  

  TimerValue = TimerValue
  If (TimerValue = 0) Then
    TimerValue = 15
  ElseIf (TimerValue = 1) Then
   TimerValue = 30
  ElseIf (TimerValue = 2) Then
   TimerValue = 45
  End If
  Label5.Caption = Str(TimerValue)

  Label4.Caption = "Score: " + Str(0)

  If (TimerEnabled = 1) Then
   Label5.Visible = 1
  Else
   Label5.Visible = 0
  End If

End Sub

Private Sub Command3_Click()
 If (Staticword = UCase(Text1.Text)) Then
  answerb = True
  Call ScoreIt(answerb)
  Label4.Caption = "Score: " + Str(score)
  Label6.Caption = "Correct"
  Call WordLoader
  Text1.Text = ""
  Text1.SetFocus
 Else
  answerb = False
  Call ScoreIt(answerb)
  Label4.Caption = "Score: " + Str(score)
  Label6.Caption = "Incorect - " + Staticword
  Call WordLoader
  Text1.Text = ""
  Text1.SetFocus
 End If

End Sub

Private Sub Command2_Click()
  ControlForm.Show
  Unload Me
End Sub

Private Sub ScoreIt(answerb)
 If answerb = True Then
  score = score + 5 + Len(Staticword)
 Else
  score = score - 5
 End If
End Sub

Private Function jword(mixer)
  For i = 1 To (Len(mixer) - 1)
    swaper mixer, i, ranchar(i, Len(mixer))
  Next
  jword = mixer
End Function

Private Sub swaper(mixer, firstloc, secondloc)
  strtemp = Mid$(mixer, firstloc, 1)
  Mid$(mixer, firstloc, 1) = Mid$(mixer, secondloc, 1)
  Mid$(mixer, secondloc, 1) = strtemp
End Sub

Private Function ranchar(current, length)
  ranchar = Int((Int(length - current) + 1) * Rnd) + current
End Function


Private Sub Timer1_Timer()
  If Label5.Caption = 1 Or Label5.Caption = 0 Then
   Label5.Caption = 0
   Command3.Enabled = False
   MsgBox ("Game Over")
   Timer1.Enabled = False
  Else
   Label5.Caption = Str(Int(Label5.Caption) - 1)
  End If
End Sub
