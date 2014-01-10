VERSION 5.00
Begin VB.Form FormEnter 
   Caption         =   "Input Data"
   ClientHeight    =   2850
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5055
   LinkTopic       =   "Form1"
   ScaleHeight     =   2850
   ScaleWidth      =   5055
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text9 
      Height          =   375
      Left            =   3240
      TabIndex        =   13
      Top             =   1560
      Width           =   1575
   End
   Begin VB.TextBox Text8 
      Height          =   375
      Left            =   3240
      TabIndex        =   12
      Top             =   1080
      Width           =   1575
   End
   Begin VB.TextBox Text7 
      Height          =   375
      Left            =   3240
      TabIndex        =   11
      Top             =   600
      Width           =   1575
   End
   Begin VB.TextBox Text6 
      Height          =   375
      Left            =   720
      TabIndex        =   8
      Top             =   1560
      Width           =   2295
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   720
      TabIndex        =   7
      Top             =   1080
      Width           =   2295
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   720
      TabIndex        =   6
      Top             =   600
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1560
      Width           =   375
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Width           =   375
   End
   Begin VB.CommandButton CommandCls 
      Caption         =   "Clear"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   2160
      Width           =   2175
   End
   Begin VB.CommandButton CommandContinue 
      Caption         =   "Continue"
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   2160
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   375
   End
   Begin VB.Label Label3 
      Caption         =   "Price"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3240
      TabIndex        =   10
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Item Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   720
      TabIndex        =   9
      Top             =   120
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Qty"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4800
      Y1              =   480
      Y2              =   480
   End
End
Attribute VB_Name = "FormEnter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub CommandCls_Click()

  Text1.Text = ""
  Text2.Text = ""
  Text3.Text = ""
  Text4.Text = ""
  Text5.Text = ""
  Text6.Text = ""
  Text7.Text = ""
  Text8.Text = ""
  Text9.Text = ""
End Sub

Private Sub CommandContinue_Click()

  If Not FormEnter.Text1.Text = "" Then
    Qty1 = FormEnter.Text1.Text
  End If
  
  If Not FormEnter.Text2.Text = "" Then
    Qty2 = FormEnter.Text2.Text
  End If
  
  If Not FormEnter.Text3.Text = "" Then
    Qty3 = FormEnter.Text3.Text
  End If
  
  If Not FormEnter.Text7.Text = "" Then
    Price1 = FormEnter.Text7.Text
    FormOut.Label8.Caption = Format(Price1, "$0.00")
    Total1 = Price1 * Qty1
    FormOut.Label11.Caption = Format(Total1, "$0.00")
  Else
    Price1 = 0
    FormOut.Label8.Caption = ""
    Total1 = 0
    FormOut.Label11.Caption = ""
  End If
  
  If Not FormEnter.Text8.Text = "" Then
    Price2 = FormEnter.Text8.Text
    FormOut.Label9.Caption = Format(Price2, "$0.00")
    Total2 = Price2 * Qty2
    FormOut.Label12.Caption = Format(Total2, "$0.00")
  Else
    Price2 = 0
    FormOut.Label9.Caption = ""
    Total2 = 0
    FormOut.Label12.Caption = ""
  End If
  
  If Not FormEnter.Text9.Text = "" Then
    Price3 = FormEnter.Text9.Text
    FormOut.Label10.Caption = Format(Price3, "$0.00")
    Total3 = Qty3 * Price3
    FormOut.Label13.Caption = Format(Total3, "$0.00")
  Else
    Price3 = 0
    FormOut.Label10.Caption = ""
    Total3 = 0
    FormOut.Label13.Caption = ""
  End If

  Subtotal = Total1 + Total2 + Total3
  FormOut.Label14.Caption = Format(Subtotal, "$0.00")
  TotalTax = Round(Subtotal * 0.06, 2)
  FormOut.Label15.Caption = Format(TotalTax, "$0.00")
  GrandTotal = Subtotal + TotalTax
  FormOut.Label16.Caption = Format(GrandTotal, "$0.00")

  FormOut.Label2.Caption = Qty1
  FormOut.Label3.Caption = Qty2
  FormOut.Label4.Caption = Qty3
  FormOut.Label5.Caption = FormEnter.Text4.Text
  FormOut.Label6.Caption = FormEnter.Text5.Text
  FormOut.Label7.Caption = FormEnter.Text6.Text
  FormOut.Show
End Sub

