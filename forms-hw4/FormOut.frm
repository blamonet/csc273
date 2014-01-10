VERSION 5.00
Begin VB.Form FormOut 
   Caption         =   "Reciept"
   ClientHeight    =   3720
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4710
   LinkTopic       =   "Reciept"
   ScaleHeight     =   3720
   ScaleWidth      =   4710
   StartUpPosition =   3  'Windows Default
   Begin VB.Line Line2 
      X1              =   120
      X2              =   4440
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Label Label22 
      Caption         =   "Grand Total"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   21
      Top             =   3120
      Width           =   1695
   End
   Begin VB.Label Label21 
      Caption         =   "Sales Tax"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   20
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Label Label20 
      Caption         =   "Subtotal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   19
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label Label19 
      Caption         =   "Total"
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
      Left            =   3600
      TabIndex        =   18
      Top             =   120
      Width           =   855
   End
   Begin VB.Label Label18 
      Caption         =   "CPI"
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
      Left            =   2760
      TabIndex        =   17
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label17 
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
      Left            =   600
      TabIndex        =   16
      Top             =   120
      Width           =   2055
   End
   Begin VB.Label Label4 
      Height          =   375
      Left            =   120
      TabIndex        =   15
      Top             =   1560
      Width           =   375
   End
   Begin VB.Label Label16 
      Height          =   375
      Left            =   3600
      TabIndex        =   14
      Top             =   3120
      Width           =   855
   End
   Begin VB.Label Label15 
      Height          =   375
      Left            =   3600
      TabIndex        =   13
      Top             =   2640
      Width           =   855
   End
   Begin VB.Label Label14 
      Height          =   375
      Left            =   3600
      TabIndex        =   12
      Top             =   2160
      Width           =   855
   End
   Begin VB.Label Label13 
      Height          =   375
      Left            =   3600
      TabIndex        =   11
      Top             =   1560
      Width           =   855
   End
   Begin VB.Label Label12 
      Height          =   375
      Left            =   3600
      TabIndex        =   10
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label Label11 
      Height          =   375
      Left            =   3600
      TabIndex        =   9
      Top             =   600
      Width           =   855
   End
   Begin VB.Label Label10 
      Height          =   375
      Left            =   2760
      TabIndex        =   8
      Top             =   1560
      Width           =   735
   End
   Begin VB.Label Label9 
      Height          =   375
      Left            =   2760
      TabIndex        =   7
      Top             =   1080
      Width           =   735
   End
   Begin VB.Label Label8 
      Height          =   375
      Left            =   2760
      TabIndex        =   6
      Top             =   600
      Width           =   735
   End
   Begin VB.Label Label7 
      Height          =   375
      Left            =   600
      TabIndex        =   5
      Top             =   1560
      Width           =   2055
   End
   Begin VB.Label Label6 
      Height          =   375
      Left            =   600
      TabIndex        =   4
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Label Label5 
      Height          =   375
      Left            =   600
      TabIndex        =   3
      Top             =   600
      Width           =   2055
   End
   Begin VB.Label Label3 
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label Label2 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   375
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
      Width           =   375
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      X1              =   120
      X2              =   4440
      Y1              =   480
      Y2              =   480
   End
End
Attribute VB_Name = "FormOut"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
