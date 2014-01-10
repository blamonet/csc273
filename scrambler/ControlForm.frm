VERSION 5.00
Begin VB.Form ControlForm 
   Caption         =   "Scrambler"
   ClientHeight    =   3630
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5970
   LinkTopic       =   "Form1"
   ScaleHeight     =   3630
   ScaleWidth      =   5970
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2880
      TabIndex        =   8
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Display Time?"
      Height          =   255
      Left            =   4200
      TabIndex        =   7
      Top             =   2520
      Value           =   1  'Checked
      Width           =   1455
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "ControlForm.frx":0000
      Left            =   120
      List            =   "ControlForm.frx":000D
      Sorted          =   -1  'True
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1920
      Width           =   2655
   End
   Begin VB.PictureBox Picture1 
      Height          =   1575
      Left            =   120
      Picture         =   "ControlForm.frx":0022
      ScaleHeight     =   1515
      ScaleWidth      =   5640
      TabIndex        =   5
      Top             =   0
      Width           =   5700
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Easy"
      Height          =   255
      Index           =   2
      Left            =   2160
      TabIndex        =   3
      Top             =   2520
      Width           =   855
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Medium"
      Height          =   255
      Index           =   1
      Left            =   1080
      TabIndex        =   2
      Top             =   2520
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Hard"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   1
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Load Game"
      Height          =   375
      Left            =   4680
      TabIndex        =   0
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "Difficulty"
      Height          =   615
      Left            =   120
      TabIndex        =   4
      Top             =   2280
      Width           =   5655
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Name"
      Height          =   255
      Left            =   2880
      TabIndex        =   10
      Top             =   1680
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "Display Settings"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1680
      Width           =   2415
   End
End
Attribute VB_Name = "ControlForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ct As Integer

Private Sub Command1_Click()
scramblermain.Show

Style = Combo1
NameValue = Text1.Text
TimerValue = ct
TimerEnabled = Check1.Value

Call scramblermain.InputOptions(Style, NameValue, TimerValue, TimerEnabled)
Unload Me
End Sub


Private Sub Option1_Click(Index As Integer)
ct = Index
End Sub

