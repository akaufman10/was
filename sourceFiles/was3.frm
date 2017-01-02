VERSION 5.00
Begin VB.Form WAS30 
   BackColor       =   &H00C0C000&
   Caption         =   "WAS v3.6"
   ClientHeight    =   7410
   ClientLeft      =   2445
   ClientTop       =   1635
   ClientWidth     =   8985
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   13.5
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   FontTransparent =   0   'False
   Icon            =   "was3.frx":0000
   LinkTopic       =   "Form1"
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   7410
   ScaleWidth      =   8985
   Begin VB.CheckBox JerusalemDC 
      BackColor       =   &H00FFFFFF&
      Caption         =   "JerDC"
      Height          =   345
      Left            =   8280
      TabIndex        =   60
      Top             =   3840
      Value           =   1  'Checked
      Width           =   250
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Scenario Summary"
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
      Left            =   480
      TabIndex        =   41
      Top             =   5280
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OPTIMIZE"
      Height          =   495
      Left            =   480
      MouseIcon       =   "was3.frx":0442
      TabIndex        =   32
      Top             =   6480
      Width           =   1935
   End
   Begin VB.ComboBox Pls 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      ItemData        =   "was3.frx":0884
      Left            =   6840
      List            =   "was3.frx":0898
      Style           =   2  'Dropdown List
      TabIndex        =   20
      Top             =   3360
      Width           =   1695
   End
   Begin VB.ComboBox Jor 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      ItemData        =   "was3.frx":08F9
      Left            =   6840
      List            =   "was3.frx":090D
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Top             =   3000
      Width           =   1695
   End
   Begin VB.ComboBox Isr 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      ItemData        =   "was3.frx":096E
      Left            =   6840
      List            =   "was3.frx":0982
      Style           =   2  'Dropdown List
      TabIndex        =   18
      Top             =   2640
      Width           =   1695
   End
   Begin VB.ComboBox Countrified 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      ItemData        =   "was3.frx":09E3
      Left            =   6840
      List            =   "was3.frx":09F3
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   2280
      Width           =   1710
   End
   Begin VB.ComboBox Year 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   1
      ItemData        =   "was3.frx":0A1D
      Left            =   1320
      List            =   "was3.frx":0A2B
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   1920
      Width           =   1695
   End
   Begin VB.Label Label47 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Jerusalem-DC"
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
      Left            =   6840
      TabIndex        =   59
      Top             =   3840
      Width           =   1455
   End
   Begin VB.Label Label40 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2400
      TabIndex        =   58
      Tag             =   "E"
      Top             =   4320
      Width           =   600
   End
   Begin VB.Label Label8 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Intra-district Leakage"
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
      Left            =   360
      TabIndex        =   57
      Top             =   4320
      Width           =   1935
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Special Users"
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
      Left            =   6840
      TabIndex        =   56
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label editsup 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2400
      TabIndex        =   55
      Tag             =   "E"
      Top             =   3240
      Width           =   600
   End
   Begin VB.Label Labelsup 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Supply of Water"
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
      Left            =   360
      TabIndex        =   54
      Top             =   3240
      Width           =   1935
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   53
      Top             =   3720
      Width           =   495
   End
   Begin VB.Label Label6 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Env. Charges + Setasides"
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
      Left            =   3480
      TabIndex        =   52
      Top             =   3720
      Width           =   2295
   End
   Begin VB.Label frc_edit 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   51
      Top             =   4080
      Width           =   495
   End
   Begin VB.Label FR_Constraint 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Recycled Constraints"
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
      Left            =   3480
      TabIndex        =   50
      Top             =   4080
      Width           =   2295
   End
   Begin VB.Label Label41 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Recycled Water Links"
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
      Left            =   3480
      TabIndex        =   49
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label Label48 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2400
      TabIndex        =   48
      Top             =   2400
      Width           =   600
   End
   Begin VB.Label alpha 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Demand Properties"
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
      Left            =   360
      TabIndex        =   47
      Top             =   2400
      Width           =   1935
   End
   Begin VB.Label Label46 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   46
      Top             =   3000
      Width           =   495
   End
   Begin VB.Label Label45 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Rec. Trns. Costs/Bounds"
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
      Left            =   3480
      TabIndex        =   45
      Top             =   3000
      Width           =   2295
   End
   Begin VB.Label Label44 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Transport Costs/Bounds"
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
      Left            =   3480
      TabIndex        =   44
      Top             =   2280
      Width           =   2295
   End
   Begin VB.Label Label43 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   43
      Top             =   2280
      Width           =   495
   End
   Begin VB.Label Label42 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   42
      Top             =   2640
      Width           =   495
   End
   Begin VB.Label Label39 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "District Names"
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
      Left            =   6960
      TabIndex        =   40
      Top             =   6240
      Width           =   1575
   End
   Begin VB.Label Label38 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "About WAS"
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
      Left            =   6960
      TabIndex        =   39
      Top             =   6720
      Width           =   1575
   End
   Begin VB.Label Label37 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Using WAS v.3.3"
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
      Left            =   6960
      TabIndex        =   38
      Top             =   5280
      Width           =   1575
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackColor       =   &H008080FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "WAS Updates"
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
      Left            =   6960
      TabIndex        =   37
      Top             =   5760
      Width           =   1575
   End
   Begin VB.Label Label36 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Delete Scenario"
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
      Left            =   4800
      TabIndex        =   36
      Top             =   6240
      Width           =   1575
   End
   Begin VB.Label Label34 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Load Scenario"
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
      Left            =   4800
      TabIndex        =   35
      Top             =   5880
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00808000&
      BorderWidth     =   2
      Height          =   855
      Left            =   600
      Top             =   120
      Width           =   7815
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   34
      Top             =   1920
      Width           =   495
   End
   Begin VB.Label Label11 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Fresh Water Links"
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
      Left            =   3480
      TabIndex        =   33
      Top             =   1920
      Width           =   2295
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00808000&
      X1              =   4560
      X2              =   4560
      Y1              =   5040
      Y2              =   7200
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00808000&
      X1              =   2640
      X2              =   2640
      Y1              =   5040
      Y2              =   7200
   End
   Begin VB.Label Label35 
      BackColor       =   &H00C0C000&
      BackStyle       =   0  'Transparent
      Caption         =   "Model Input "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   375
      Left            =   240
      TabIndex        =   31
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label Label32 
      BackColor       =   &H00C0C000&
      BackStyle       =   0  'Transparent
      Caption         =   "Model Output"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   255
      Left            =   240
      TabIndex        =   30
      Top             =   4680
      Width           =   1815
   End
   Begin VB.Label Label31 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF80&
      Caption         =   "When scenario editing is complete, please click below."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      TabIndex        =   29
      Top             =   5880
      Width           =   1935
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00808000&
      BorderWidth     =   2
      Height          =   2175
      Left            =   240
      Top             =   5040
      Width           =   6375
   End
   Begin VB.Label Label29 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   " Cost-Benefit Calculations"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2880
      TabIndex        =   28
      Top             =   5880
      Width           =   1455
   End
   Begin VB.Label Label30 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Schematic: Program Results"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2880
      TabIndex        =   27
      Top             =   6480
      Width           =   1455
   End
   Begin VB.Label Label28 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Tabular"
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
      Left            =   2880
      TabIndex        =   26
      Top             =   5520
      Width           =   1455
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Year"
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
      Index           =   1
      Left            =   360
      TabIndex        =   25
      Top             =   1920
      Width           =   855
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00808000&
      X1              =   3240
      X2              =   240
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00808000&
      X1              =   3240
      X2              =   3240
      Y1              =   1440
      Y2              =   4560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808000&
      X1              =   6600
      X2              =   6600
      Y1              =   1440
      Y2              =   4560
   End
   Begin VB.Shape Shape8 
      BackColor       =   &H00C00000&
      BorderColor     =   &H00808000&
      BorderWidth     =   2
      FillColor       =   &H00400000&
      Height          =   3255
      Left            =   240
      Top             =   1440
      Width           =   8535
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0FFFF&
      Caption         =   "WATER ALLOCATION SYSTEM (WAS v3.6)"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   375
      Index           =   3
      Left            =   600
      TabIndex        =   24
      Top             =   600
      Width           =   7815
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00E0FFFF&
      Caption         =   "Water Economics Project"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   495
      Index           =   1
      Left            =   600
      TabIndex        =   23
      Top             =   120
      Width           =   7815
   End
   Begin VB.Label Label26 
      BackColor       =   &H00C0C000&
      BackStyle       =   0  'Transparent
      Caption         =   "Help"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   375
      Left            =   6720
      TabIndex        =   22
      Top             =   4680
      Width           =   855
   End
   Begin VB.Shape Shape7 
      BorderColor     =   &H00808000&
      BorderWidth     =   2
      Height          =   2175
      Left            =   6720
      Top             =   5040
      Width           =   2055
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C000&
      Caption         =   "Results"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2880
      TabIndex        =   21
      Top             =   5160
      Width           =   975
   End
   Begin VB.Label Label33 
      BackColor       =   &H00C0C000&
      Caption         =   "File"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4800
      TabIndex        =   17
      Top             =   5160
      Width           =   615
   End
   Begin VB.Label Label27 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Social Policy"
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
      Left            =   6840
      TabIndex        =   16
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label25 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Countrified Status"
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
      Left            =   6840
      TabIndex        =   15
      Top             =   1920
      Width           =   1695
   End
   Begin VB.Label Label24 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Quit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4800
      TabIndex        =   13
      Top             =   6600
      Width           =   1575
   End
   Begin VB.Label Label23 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "List Scenarios"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   10440
      TabIndex        =   12
      Top             =   240
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Load Scenario"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   135
      Left            =   10440
      TabIndex        =   11
      Top             =   480
      Visible         =   0   'False
      Width           =   135
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Save Scenario"
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
      Left            =   4800
      TabIndex        =   10
      Top             =   5520
      Width           =   1575
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   9
      Top             =   3360
      Width           =   495
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Edit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2400
      TabIndex        =   8
      Tag             =   "E"
      Top             =   3960
      Width           =   600
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "1.0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2400
      TabIndex        =   7
      Top             =   3600
      Width           =   600
   End
   Begin VB.Label Label16 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Supply Multiplier"
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
      Left            =   360
      TabIndex        =   6
      Top             =   3600
      Width           =   1935
   End
   Begin VB.Label Label15 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Desalination Plants"
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
      Left            =   360
      TabIndex        =   5
      Top             =   3960
      Width           =   1935
   End
   Begin VB.Label Label13 
      BackColor       =   &H00C0C000&
      Caption         =   "Demands"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label Label12 
      BackColor       =   &H00C0C000&
      Caption         =   "Supply"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   3
      Top             =   2880
      Width           =   855
   End
   Begin VB.Label Label10 
      BackColor       =   &H00C0C000&
      Caption         =   "Infrastructure"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3480
      TabIndex        =   2
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label9 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Recycling Plants"
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
      Left            =   3480
      TabIndex        =   1
      Top             =   3360
      Width           =   2295
   End
End
Attribute VB_Name = "WAS30"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private linestuff As String

Sub alphup()

'write the demand elasticities to a file to be read by gams

    Open RootDir + "alpha_mod.inc" For Output As #1
    For iloop! = 1 To DistCount
        For jloop! = 1 To 3
            If alphadef(iloop!, jloop!) - alpha2(iloop!, jloop!) <> 0 Then
                If jloop! = 1 Then
                    Print #1, "ALPHA('" & DistN(iloop!) & "','URB') = -" & Format(1 / alpha2(iloop!, 1), "0.00") & ";"
                Else
                    If jloop! = 2 Then
                        Print #1, "ALPHA('" & DistN(iloop!) & "','IND') = -" & Format(1 / alpha2(iloop!, 2), "0.00") & ";"
                    Else
                        Print #1, "ALPHA('" & DistN(iloop!) & "','AGR') = -" & Format(1 / alpha2(iloop!, 3), "0.00") & ";"
                    End If
                End If
            End If
        Next
    Next
    Close #1

End Sub
Sub costenvup()

'write the demand elasticities to a file to be read by gams
'and write the setaside quantities for environmental purposes

Open RootDir + "ce_mod.inc" For Output As #1
    For iloop! = 1 To DistCount
        Print #1, "CE('"; DistN(iloop!); "',"; "'URB') ="; ce(iloop!, 1); ";"
        Print #1, "CE('"; DistN(iloop!); "',"; "'IND') ="; ce(iloop!, 2); ";"
        Print #1, "CE('"; DistN(iloop!); "',"; "'AGR') ="; ce(iloop!, 3); ";"
    Next
Close #1

Open RootDir + "setaside.inc" For Output As #1
    For iloop! = 1 To DistCount
        If setaside(iloop!) <> 0 Then
            Print #1, "SETASIDE('"; DistN(iloop!); "') ="; setaside(iloop!); ";"
            Print #1, "PR_UNPAID('"; DistN(iloop!); "','URB') ="; pr_unpaid(iloop!, 1) / 100; ";"
            Print #1, "PR_UNPAID('"; DistN(iloop!); "','IND') ="; pr_unpaid(iloop!, 2) / 100; ";"
        End If
    Next
Close #1


End Sub
Sub leakup()

Open RootDir + "leak.inc" For Output As #1
    For iloop! = 1 To DistCount
        Print #1, "DL('"; DistN(iloop!); "') ="; DL(iloop!); ";"
    Next
Close #1


End Sub
Sub popup()

Open RootDir + "pop_mod.inc" For Output As #1
    For iloop! = 1 To DistCount
        If (pop(iloop!) - popdef(iloop!)) <> 0 Then
            Print #1, "POP('"; DistN(iloop!); "') ="; pop(iloop!); ";"
        End If
    Next
Close #1

End Sub



Sub specialup()

'write the special conditions  to a file to be read by gams

Open RootDir + "qrequired.inc" For Output As #1
    For iloop! = 1 To DistCount
        Print #1, "QREQUIRED('"; DistN(iloop!); "',"; "'URB') ="; qrequired(iloop!, 1); ";"
        Print #1, "QREQUIRED('"; DistN(iloop!); "',"; "'IND') ="; qrequired(iloop!, 2); ";"
        Print #1, "QREQUIRED('"; DistN(iloop!); "',"; "'AGR') ="; qrequired(iloop!, 3); ";"
    Next
Close #1

Open RootDir + "minq.inc" For Output As #1
    For iloop! = 1 To DistCount
        Print #1, "MINQ('"; DistN(iloop!); "',"; "'URB') ="; minq(iloop!, 1); ";"
        Print #1, "MINQ('"; DistN(iloop!); "',"; "'IND') ="; minq(iloop!, 2); ";"
        Print #1, "MINQ('"; DistN(iloop!); "',"; "'AGR') ="; minq(iloop!, 3); ";"
    Next
Close #1

Open RootDir + "losses.inc" For Output As #1
    For iloop! = 1 To DistCount
        Print #1, "LOSSES('"; DistN(iloop!); "',"; "'URB') ="; losses(iloop!, 1); ";"
        Print #1, "LOSSES('"; DistN(iloop!); "',"; "'IND') ="; losses(iloop!, 2); ";"
        Print #1, "LOSSES('"; DistN(iloop!); "',"; "'AGR') ="; losses(iloop!, 3); ";"
    Next
Close #1

End Sub

Sub supplyup()


' Write supcost.inc file for GAMS:

Open RootDir + "supcostadd.inc" For Output As #1
'Print #1, "TABLE CS(i,s) Unit cost for supplying water"
'Print #1, "* from source s in node i in dollars per m3"
'Print #1, "     "; Tab; "S1 "; Tab; "S2"; Tab; "S3"; Tab; "S4"; Tab; "S5"

For iloop! = 0 To (Israel.D_length - 1)
'    For sloop! = 0 To 4
        Print #1, "CS('"; DistN(iloop! + 1); "',"; "'S1') ="; CSISR(iloop!, 0); ";"
        Print #1, "CS('"; DistN(iloop! + 1); "',"; "'S2') ="; CSISR(iloop!, 1); ";"
        Print #1, "CS('"; DistN(iloop! + 1); "',"; "'S3') ="; CSISR(iloop!, 2); ";"
        Print #1, "CS('"; DistN(iloop! + 1); "',"; "'S4') ="; CSISR(iloop!, 3); ";"
        Print #1, "CS('"; DistN(iloop! + 1); "',"; "'S5') ="; CSISR(iloop!, 4); ";"
'    Print #1, DistN(iloop! + 1); Tab; Format(CSISR(iloop!, 0), "0.00"); Tab; Format(CSISR(iloop!, 1), "0.00"); Tab; Format(CSISR(iloop!, 2), "0.00"); Tab; Format(CSISR(iloop!, 3), "0.00"); Tab; Format(CSISR(iloop!, 4), "0.00")
'    Next
Next

For iloop! = 0 To (Jordan.D_length - 1)
    offset = Israel.D_length
'    Print #1, DistN(iloop! + offset + 1); Tab; Format(CSJRD(iloop!, 0), "0.00"); Tab; Format(CSJRD(iloop!, 1), "0.00"); Tab; Format(CSJRD(iloop!, 2), "0.00"); Tab; Format(CSJRD(iloop!, 3), "0.00"); Tab; Format(CSJRD(iloop!, 4), "0.00")
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S1') ="; CSJRD(iloop!, 0); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S2') ="; CSJRD(iloop!, 1); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S3') ="; CSJRD(iloop!, 2); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S4') ="; CSJRD(iloop!, 3); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S5') ="; CSJRD(iloop!, 4); ";"
Next

For iloop! = 0 To (PNA.D_length - 1)
    offset = Israel.D_length + Jordan.D_length
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S1') ="; CSPNA(iloop!, 0); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S2') ="; CSPNA(iloop!, 1); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S3') ="; CSPNA(iloop!, 2); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S4') ="; CSPNA(iloop!, 3); ";"
        Print #1, "CS('"; DistN(iloop! + offset + 1); "',"; "'S5') ="; CSPNA(iloop!, 4); ";"
'    Print #1, DistN(iloop! + offset + 1); Tab; Format(CSPNA(iloop!, 0), "0.00"); Tab; Format(CSPNA(iloop!, 1), "0.00"); Tab; Format(CSPNA(iloop!, 2), "0.00"); Tab; Format(CSPNA(iloop!, 3), "0.00"); Tab; Format(CSPNA(iloop!, 4), "0.00")
Next
Print #1, ";"
Close #1


Open RootDir + "supplyadd.inc" For Output As #1
'Print #1, "TABLE QSMAX(i,s)  Upper Bound on Water Supply from Source s in node i in MCM"
'Print #1, "     "; Tab; "S1 "; Tab; "S2"; Tab; "S3"; Tab; "S4"; Tab; "S5"

For iloop! = 0 To (Israel.D_length - 1)
'    Print #1, DistN(iloop! + 1); Tab; Format(QSMAXISR(iloop!, 0), "0.00"); Tab; Format(QSMAXISR(iloop!, 1), "0.00"); Tab; Format(QSMAXISR(iloop!, 2), "0.00"); Tab; Format(QSMAXISR(iloop!, 3), "0.00"); Tab; Format(QSMAXISR(iloop!, 4), "0.00")
        Print #1, "QSMAX('"; DistN(iloop! + 1); "',"; "'S1') ="; QSMAXISR(iloop!, 0); ";"
        Print #1, "QSMAX('"; DistN(iloop! + 1); "',"; "'S2') ="; QSMAXISR(iloop!, 1); ";"
        Print #1, "QSMAX('"; DistN(iloop! + 1); "',"; "'S3') ="; QSMAXISR(iloop!, 2); ";"
        Print #1, "QSMAX('"; DistN(iloop! + 1); "',"; "'S4') ="; QSMAXISR(iloop!, 3); ";"
        Print #1, "QSMAX('"; DistN(iloop! + 1); "',"; "'S5') ="; QSMAXISR(iloop!, 4); ";"
Next

For iloop! = 0 To (Jordan.D_length - 1)
    offset = Israel.D_length
'    Print #1, DistN(iloop! + offset + 1); Tab; Format(QSMAXJRD(iloop!, 0), "0.00"); Tab; Format(QSMAXJRD(iloop!, 1), "0.00"); Tab; Format(QSMAXJRD(iloop!, 2), "0.00"); Tab; Format(QSMAXJRD(iloop!, 3), "0.00"); Tab; Format(QSMAXJRD(iloop!, 4), "0.00")
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S1') ="; QSMAXJRD(iloop!, 0); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S2') ="; QSMAXJRD(iloop!, 1); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S3') ="; QSMAXJRD(iloop!, 2); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S4') ="; QSMAXJRD(iloop!, 3); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S5') ="; QSMAXJRD(iloop!, 4); ";"
Next

For iloop! = 0 To (PNA.D_length - 1)
    offset = Israel.D_length + Jordan.D_length
'    Print #1, DistN(iloop! + offset + 1); Tab; Format(QSMAXPNA(iloop!, 0), "0.00"); Tab; Format(QSMAXPNA(iloop!, 1), "0.00"); Tab; Format(QSMAXPNA(iloop!, 2), "0.00"); Tab; Format(QSMAXPNA(iloop!, 3), "0.00"); Tab; Format(QSMAXPNA(iloop!, 4), "0.00")
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S1') ="; QSMAXPNA(iloop!, 0); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S2') ="; QSMAXPNA(iloop!, 1); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S3') ="; QSMAXPNA(iloop!, 2); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S4') ="; QSMAXPNA(iloop!, 3); ";"
        Print #1, "QSMAX('"; DistN(iloop! + offset + 1); "',"; "'S5') ="; QSMAXPNA(iloop!, 4); ";"
Next
Print #1, ";"
Close #1
End Sub



Sub substitup()

'write the files related to recycled and fresh substition
'to be read by gams
'ath
    
    Open RootDir + "subqon.inc" For Output As #1
    Print #1, "PARAMETER SUBQON(i) Indicator for whether a recycled max q has been specified"
    Print #1, "/"
    For iloop! = 1 To DistCount
        Print #1, DistN(iloop!) & "      " & SUBQON(iloop!)
    Next
    Print #1, "/"
    Print #1, ";"
    Close #1

    Open RootDir + "subpon.inc" For Output As #1
    Print #1, "PARAMETER SUBPON(i) Indicator for whether a recycled max q has been specified"
    Print #1, "/"
    For iloop! = 1 To DistCount
        Print #1, DistN(iloop!) & "      " & SUBPON(iloop!)
    Next
    Print #1, "/"
    Print #1, ";"
    Close #1

    Open RootDir + "substitutc.inc" For Output As #1
    Print #1, "PARAMETER CUSEREC(i) Indicator for whether a recycled max q has been specified"
    Print #1, "/"
    For iloop! = 1 To DistCount
        Print #1, DistN(iloop!) & "      " & CUSEREC(iloop!)
    Next
    Print #1, "/"
    Print #1, ";"
    Close #1

    Open RootDir + "substitutp.inc" For Output As #1
    Print #1, "PARAMETER PRECMAX(i) Indicator for whether a recycled max q has been specified"
    Print #1, "/"
    For iloop! = 1 To DistCount
        Print #1, DistN(iloop!) & "      " & PRECMAX(iloop!)
    Next
    Print #1, "/"
    Print #1, ";"
    Close #1

    Open RootDir + "substitutq.inc" For Output As #1
    Print #1, "PARAMETER QRECMAX(i) Indicator for whether a recycled max q has been specified"
    Print #1, "/"
    For iloop! = 1 To DistCount
        Print #1, DistN(iloop!) & "      " & QRECMAX(iloop!)
    Next
    Print #1, "/"
    Print #1, ";"
    Close #1

End Sub
Sub commonpoolup()
'write common pool data for input to gams
'ath

If COMPNUM > 1 Then
    Open RootDir + "compleq.inc" For Output As #1
    For I = 1 To COMPNUM - 1
        Print #1, "COMPL" & I & "      common pool constraint number" & I
    Next
    Close #1

    Open RootDir + "complcon.inc" For Output As #1
    For I = 1 To COMPNUM - 1
        Print #1, "COMPL" & I & "..   " & COMPSOURCE(I) & " =L= " & COMPQUANT(I) & "*SUPMULT;"
    Next
    Close #1
    
    Dim dist_number
    Dim step_number
    
    Open RootDir + "commonpool.inc" For Output As 1
    For I = 1 To COMPNUM - 1
        Print #1, "QSHARED('cp" & I & "') = " & COMPQUANT(I) & ";"
        Print #1, "OWNI('cp" & I & "') = " & ownership(1, I) & ";"
        Print #1, "OWNJ('cp" & I & "') = " & ownership(2, I) & ";"
        Print #1, "OWNP('cp" & I & "') = " & ownership(3, I) & ";"
    Next

'     For I = 1 To 20
   For I = 1 To COMPNUM - 1
        For J = 1 To 20
        dist_number = (commonpool(I, J) + 5) \ 5
        step_number = commonpool(I, J) - (dist_number - 1) * 5
        If step_number = 0 Then
            step_number = 5
            dist_number = dist_number - 1
        End If
        If commonpool(I, J) <> 0 Then
            indcp(I, dist_number, step_number) = 1
            Print #1, "indcp('cp" & I & " ','" & DistN(dist_number) & "','s" & Format(step_number) & "') = 1;"
            If J = 1 Then
'                Print #1, "CP_PROFITS('cp" & I & "') = " & "QS.L('" & DistN(dist_number) & "', 'S" & Format(step_number) & "') * (PS('" & DistN(dist_number) & "', 'AGR')*(1-DL('" & DistN(dist_number) & "'))-CS('" & DistN(dist_number) & "','s" & Format(step_number) & "'))"
'                cp_profits(I) = "QS.L('" + DistN(dist_number) + "', 'S" + Format(step_number) + "') * PS('" + DistN(dist_number) + "', 'AGR')*(1-DL('" + DistN(dist_number) + "'))-CS('" + DistN(dist_number) + "','s" + Format(step_number) + "')"
            Else
'                Print #1, "                 + QS.L('" & DistN(dist_number) & "', 'S" & Format(step_number) & "') * (PS('" & DistN(dist_number) & "', 'AGR')*(1-DL('" & DistN(dist_number) & "'))-CS('" & DistN(dist_number) & "','s" & Format(step_number) & "'))"
'                cp_profits(I) = cp_profits(I) + " + QS.L('" + DistN(dist_number) + "', 'S" + Format(step_number) + "') * PS('" + DistN(dist_number) + "', 'AGR')*(1-DL('" + DistN(dist_number) + "'))-CS('" + DistN(dist_number) + "','s" + Format(step_number) + "')"
            End If
        End If
    Next
'               Print #1, ";"

Next

For m = 1 To 20
    For J = 1 To DistCount
        For I = 1 To 5
            If indcp(m, J, I) <> 0 Then
'                Print #1, "indcp('cp" & I & " ','" & DistN(J) & "','s" & I & "') = " & indcp(m, J, I) & ";"
            End If
        Next
    Next
Next
Close #1

Open RootDir + "scarcity.inc" For Output As #1
    For I = 1 To COMPNUM - 1
        Print #1, "scarcity('cp" & I & " ') = COMPL" & I & ".m;"
    Next
Close #1

End If

End Sub

Sub cnct()

Open RootDir + "connect.inc" For Output As #1
For iloop! = 1 To TotalCount
    For jloop! = 1 To TotalCount
'        If ARCEDIT(iloop!, jloop!) <> 2 Then
            If (ARCDEF(iloop!, jloop!) - ARC0(iloop!, jloop!)) = -1 Then
                Print #1, "ARC("""; DistN(iloop!); ""","""; ""; DistN(jloop!); """) = 1;"
            End If
            If (ARCDEF(iloop!, jloop!) - ARC0(iloop!, jloop!)) = 1 Then
                Print #1, "ARC("""; DistN(iloop!); ""","""; ""; DistN(jloop!); """) = 0;"
            End If
'        End If
    Next
Next
Close #1
End Sub

Sub cncty()

Open RootDir + "connecty.inc" For Output As #1
For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
'        If ARCEDITY(iloop!, jloop!) <> 2 Then
            If (ARCDEFY(iloop!, jloop!) - ARCR0(iloop!, jloop!)) = -1 Then
                Print #1, "ARCR("""; DistN(iloop!); ""","""; ""; DistN(jloop!); """) = 1;"
            End If
            If (ARCDEFY(iloop!, jloop!) - ARCR0(iloop!, jloop!)) = 1 Then
                Print #1, "ARCR("""; DistN(iloop!); ""","""; ""; DistN(jloop!); """) = 0;"
            End If
'        End If
    Next
Next
Close #1

End Sub
Sub ctradd()

'write data for conveyance that has been edited by the
'user: costs, capacities and leakage rates

Open RootDir + "ctradd.inc" For Output As #1

For iloop! = 1 To TotalCount
    For jloop! = 1 To TotalCount
        If CTREDIT(iloop!, jloop!) <> -10 Or CTRDEF(iloop!, jloop!) - CTR(iloop!, jloop!) <> 0 And ARC0(iloop!, jloop!) = 1 Then
            Print #1, "CTR(""" & DistN(iloop!) & """,""" & DistN(jloop!) & """) = " & CTR(iloop!, jloop!); ";"
        End If
        If QTRUPEDIT(iloop!, jloop!) <> -10 Or QTRUPDEF(iloop!, jloop!) - QTRUP(iloop!, jloop!) <> 0 And ARC0(iloop!, jloop!) = 1 Then
            Print #1, "QTRUP(""" & DistN(iloop!) & """,""" & DistN(jloop!) & """) = " & QTRUP(iloop!, jloop!); ";"
        End If
        If TLEDIT(iloop!, jloop!) <> -10 Or tldef(iloop!, jloop!) - TL(iloop!, jloop!) <> 0 And ARC0(iloop!, jloop!) = 1 Then
            Print #1, "TL(""" & DistN(iloop!) & """,""" & DistN(jloop!) & """) = " & TL(iloop!, jloop!); ";"
        End If
   
    Next
Next

Close #1

End Sub

Sub ctryadd()

Open RootDir + "ctryadd.inc" For Output As #1

For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
        If CTRYEDIT(iloop!, jloop!) <> -10 Or CTRYDEF(iloop!, jloop!) - CTRY(iloop!, jloop!) <> 0 Then
            Print #1, "CTRY(""" & DistN(iloop!) & """,""" & DistN(jloop!) & """) = " & CTRY(iloop!, jloop!); ";"
        End If
        If QTRYUPEDIT(iloop!, jloop!) <> -10 Or QTRYUPDEF(iloop!, jloop!) - QTRYUP(iloop!, jloop!) <> 0 Then
            Print #1, "QTRYUP(""" & DistN(iloop!) & """,""" & DistN(jloop!) & """) = " & QTRYUP(iloop!, jloop!); ";"
        End If
        If TLREDIT(iloop!, jloop!) <> -10 Or tlrdef(iloop!, jloop!) - TLR(iloop!, jloop!) <> 0 Then
            Print #1, "TLR(""" & DistN(iloop!) & """,""" & DistN(jloop!) & """) = " & TLR(iloop!, jloop!); ";"
        End If
    Next
Next

Close #1

End Sub



Sub initcptns()
Year(1).Text = "1995"
'Label4.Caption = "250"
Label17.Caption = "1.0"
Countrified(1).Text = "Click to Select"

End Sub

Sub initvars()

'the following reads in alpha from the file "alpha2.inc"
'(for the three demands for all the districts to an array "ce")
    

For jloop! = 1 To DistCount
    For dmloop! = 1 To 3
        beta(jloop!, dmloop!) = 1
    Next
Next

DEM = 1995
YARMOUK = 250
SUPMULT = 1
Country = 4
fppagain = 1

For I = 1 To 20
    For J = 1 To 20
        commonpool(I, J) = 0
    Next
Next
    
'initialize setasides to zero
    For J = 1 To DistCount
        setaside(J) = 0
    Next

'Initialize Desalination Cost Variables
For jloop! = 1 To 13
    D(jloop!) = 0
Next
DCDEF = 1.5
DMAXDEF = 1000


'Initialize Recycling Plants Costs and %'s and Subsidies
For rcloop! = 1 To DistCount
    R(rcloop!) = 0
    RC(rcloop!) = 0
    RP(rcloop!) = 0
    RCAP(rcloop!) = 0
    RDEF(rcloop!) = 0
    RCDEF(rcloop!) = 0.1
    RPDEF(rcloop!) = 66
    RCAPDEF(rcloop!) = 0
    For dloop! = 1 To 3
        SubRate(rcloop!, dloop!) = 0
        SubAmt(rcloop!, dloop!) = 0
    Next
Next


'Initialize Quotas to zero
For qloop! = 1 To DistCount
    Q(qloop!) = 0
    QR(qloop!) = 0
    QI(qloop!) = 0
    QU(qloop!) = 0
Next

For qloop! = 1 To DistCount
    For sloop! = 1 To 5
        QP(qloop!, sloop!) = 0
        QQ(qloop!, sloop!) = 0
        QPR(qloop!, sloop!) = 0
        QQR(qloop!, sloop!) = 0
        QPI(qloop!, sloop!) = 0
        QQI(qloop!, sloop!) = 0
        QPU(qloop!, sloop!) = 0
        QQU(qloop!, sloop!) = 0
        QPIR(dloop!, sloop!) = 0
        QQIR(dloop!, sloop!) = 0
        QPUR(dloop!, sloop!) = 0
        QQUR(dloop!, sloop!) = 0
    Next
Next

'initialize special user conditions to zero

For I = 1 To DistCount
    For J = 1 To 3
        losses(I, J) = 0
        minq(I, J) = 0
        qrequired(I, J) = 0
    Next
Next

''' ====> This might want to be put into a file and loaded up

End Sub

Sub scensummary()

Open RootDir + "scensum.txt" For Output As #1

Print #1, "SCENARIO NAME:      " & ScenNm
Print #1, " "

Print #1, "COUNTRIFIED STATUS"

Select Case MODE
Case "Regional"
    Print #1, "Regional"
Case "Israel"
    Print #1, "Israeli Model"
Case "Jordan"
    Print #1, "Jordanian Model"
Case "PNA"
    Print #1, "Palestinian Model"


End Select

Print #1, ""
Select Case DEM
Case 1
    Print #1, "YEAR:               1995"
Case 2
    Print #1, "YEAR:               2010"
Case 3
    Print #1, "YEAR:               2020"
End Select

Print #1, ""
Print #1, "DEMAND MULTIPLIERS CHANGED FROM DEFAULT :"
betachng = 0
For jloop! = 1 To DistCount
    For dloop! = 1 To 3
        If beta(jloop!, dloop!) <> 1 Then
            betachng = 1
            If dloop! = 1 Then
                Print #1, DistName(jloop!) & " urban demand multiplier:" & beta(jloop!, dloop!)
            Else
                If dloop! = 2 Then
                    Print #1, DistName(jloop!) & " industrial demand multiplier:" & beta(jloop!, dloop!)
                Else
                    Print #1, DistName(jloop!) & " agricultural demand multiplier:" & beta(jloop!, dloop!)
                End If
            End If
        End If
    Next
Next
If betachng = 0 Then
    Print #1, "None"
End If

Print #1, " "


Print #1, "DEMAND ELASTICITIES CHANGED FROM DEFAULT :"
alphachng = 0
For jloop! = 1 To DistCount
    For dloop! = 1 To 3
        If alphadef(jloop!, dloop!) - alpha2(jloop!, dloop!) <> 0 Then
            alphachng = 1
            If dloop! = 1 Then
                Print #1, DistName(jloop!) & " urban demand elasticity:" & alpha2(jloop!, dloop!)
            Else
                If dloop! = 2 Then
                    Print #1, DistName(jloop!) & " industrial demand elasticity:" & alpha2(jloop!, dloop!)
                Else
                    Print #1, DistName(jloop!) & " agricultural demand elasticity:" & alpha2(jloop!, dloop!)
                End If
            End If
        End If
    Next
Next
If alphachng = 0 Then
    Print #1, "None"
End If

Print #1, ""

Print #1, "SUPPLIES CHANGED FROM DEFAULT :"
supplychng = 0
For jloop! = 1 To DistCount
    For dloop! = 1 To 5
        If qsdef(jloop!, dloop!) - QS(jloop!, dloop!) <> 0 Then
            supplychng = 1
            Print #1, DistName(jloop!) & " supply step #" & dloop! & ": " & QS(jloop!, dloop!) & "MCM"
        End If
    Next
Next
If supplychng = 0 Then
    Print #1, "None"
End If

Print #1, ""
Print #1, "SUPPLY COSTS CHANGED FROM DEFAULT :"
supcostchng = 0
For jloop! = 1 To DistCount
    For dloop! = 1 To 5
        If csdef(jloop!, dloop!) - CS(jloop!, dloop!) <> 0 Then
            supcostchng = 1
            Print #1, DistName(jloop!) & " supply step #" & dloop! & ": " & CS(jloop!, dloop!) & "$/m3"
        End If
    Next
Next
If supcostchng = 0 Then
    Print #1, "None"
End If

Print #1, " "

Print #1, "SUPPLY MULTIPLIER:  " & SUPMULT

Print #1, " "

Print #1, "COMMON POOL RESOURCES CHANGED FROM DEFAULT :"

If COMPNUM > 1 Then
    For I = 1 To COMPNUM - 1
        Print #1, "COMPL" & I & "..   " & COMPSOURCE(I) & " =L= " & COMPQUANT(I) & ";"
    Next
Else
    Print #1, "None"
End If

Print #1, ""

Print #1, "INTRA-DISTRICT LEAKAGE CHANGED FROM DEFAULT :"
leakchng = 0
For jloop! = 1 To DistCount
        If DLDEF(jloop!) - DL(jloop!) <> 0 Then
            leakchng = 1
            Print #1, DistName(jloop!) & " leakage" & ": " & DL(jloop!) * 100 & "%"
        End If
    Next

If leakchng = 0 Then
    Print #1, "None"
End If


Print #1, " "
Print #1, "DESALINATION PLANTS"
DesYes = 0
For jloop! = 1 To 13
    If D(jloop!) = 1 Then
        DesYes = 1
        Print #1, DesalN(jloop!) & " @ $" & DC(jloop!) & "/cuM"
    End If
Next

If DesYes = 0 Then Print #1, "None"
    
Print #1, " "
        
Print #1, "FRESHWATER CONNECTIONS CHANGED FROM DEFAULT"
ConYes = 0
For iloop! = 1 To TotalCount
    For jloop! = 1 To TotalCount
        If ARCDEF(iloop!, jloop!) - ARC0(iloop!, jloop!) = 1 Then
            Print #1, "Connection from " & DistName(iloop!) & " to " & DistName(jloop!) & " removed"
            ConYes = 1
        Else
            If ARCDEF(iloop!, jloop!) - ARC0(iloop!, jloop!) = -1 Then
                Print #1, "Connection from " & DistName(iloop!) & " to " & DistName(jloop!) & " added"
                ConYes = 1
            End If
        End If
    Next
Next
If ConYes = 0 Then Print #1, "None"


Print #1, " "

Print #1, "FRESHWATER CAPACITIES CHANGED FROM DEFAULT"
CapYes = 0
For iloop! = 1 To TotalCount
    For jloop! = 1 To TotalCount
        If QTRUPDEF(iloop!, jloop!) - QTRUP(iloop!, jloop!) <> 0 Then
            Print #1, "Connection capacity from " & DistName(iloop!) & " to " & DistName(jloop!) & ": " & QTRUP(iloop!, jloop!) & "MCM"
            CapYes = 1
        End If
    Next
Next
If CapYes = 0 Then Print #1, "None"

Print #1, " "


Print #1, "COST OF FRESHWATER CONNECTIONS CHANGED FROM DEFAULT"
CostYes = 0
For iloop! = 1 To TotalCount
    For jloop! = 1 To TotalCount
        If CTRDEF(iloop!, jloop!) - CTR(iloop!, jloop!) <> 0 Then
            Print #1, "Connection cost from " & DistName(iloop!) & " to " & DistName(jloop!) & ": " & CTR(iloop!, jloop!) & "$/m3"
            CostYes = 1
        End If
    Next
Next
If CostYes = 0 Then Print #1, "None"

Print #1, " "

Print #1, "LEAKAGE OF FRESHWATER CONNECTIONS CHANGED FROM DEFAULT"
leakYes = 0
For iloop! = 1 To TotalCount
    For jloop! = 1 To TotalCount
        If tldef(iloop!, jloop!) - TL(iloop!, jloop!) <> 0 And ARC0(iloop!, jloop!) = 1 Then
            Print #1, "Leakage from " & DistName(iloop!) & " to " & DistName(jloop!) & ": " & TL(iloop!, jloop!) * 100 & "%"
            leakYes = 1
        End If
    Next
Next
If leakYes = 0 Then Print #1, "None"

Print #1, " "

Print #1, "RECYCLED CONNECTIONS CHANGED FROM DEFAULT"
ConYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
        If ARCDEFY(iloop!, jloop!) - ARCR0(iloop!, jloop!) = 1 Then
            Print #1, "Connection from " & DistName(iloop!) & " to " & DistName(jloop!) & " removed"
            ConYes = 1
        Else
            If ARCDEFY(iloop!, jloop!) - ARCR0(iloop!, jloop!) = -1 Then
                Print #1, "Connection from " & DistName(iloop!) & " to " & DistName(jloop!) & " added"
                ConYes = 1
            End If
        End If
    Next
Next
If ConYes = 0 Then Print #1, "None"

Print #1, " "

Print #1, "RECYCLED CAPACITIES CHANGED FROM DEFAULT"
CapYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
        If QTRYUPDEF(iloop!, jloop!) - QTRYUP(iloop!, jloop!) <> 0 Then
            Print #1, "Connection capacity from " & DistName(iloop!) & " to " & DistName(jloop!) & ": " & QTRYUP(iloop!, jloop!) & "MCM"
            CapYes = 1
        End If
    Next
Next
If CapYes = 0 Then Print #1, "None"

Print #1, " "


Print #1, "COST OF RECYCLED CONNECTIONS CHANGED FROM DEFAULT"
CostYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
        If CTRYDEF(iloop!, jloop!) - CTRY(iloop!, jloop!) <> 0 Then
            Print #1, "Connection cost from " & DistName(iloop!) & " to " & DistName(jloop!) & ": " & CTRY(iloop!, jloop!) & "$/m3"
            CostYes = 1
        End If
    Next
Next
If CostYes = 0 Then Print #1, "None"

Print #1, " "

Print #1, "LEAKAGE OF RECYCLED CONNECTIONS CHANGED FROM DEFAULT"
leakYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
        If tlrdef(iloop!, jloop!) - TLR(iloop!, jloop!) <> 0 Then
            Print #1, "Leakage from " & DistName(iloop!) & " to " & DistName(jloop!) & ": " & TLR(iloop!, jloop!) * 100 & "%"
            leakYes = 1
        End If
    Next
Next
If leakYes = 0 Then Print #1, "None"

Print #1, " "
    
Print #1, "RECYCLING PLANTS"
RecYes = 0
For jloop! = 1 To DistCount
    If R(jloop!) = 1 Then
        RecYes = 1
        Print #1, DistName(jloop!) & " @ $" & RC(jloop!) & "/cuM with maximum " & RP(jloop!) & "% and maximum capacity (MCM) " & RCAP(jloop!)
    End If
Next
If RecYes = 0 Then Print #1, "None"

Print #1, " "

Print #1, "RECYCLING CONDITIONS CHANGED FROM DEFAULTS"
setYes = 0
    For iloop! = 1 To DistCount
        If CUSEREC(iloop!) <> 0 Then
            setYes = 1
            Print #1, DistName(iloop!) & " cost or benefit from recycled water use: " & CUSEREC(iloop!) & " $/m3"
        End If
        If SUBPON(iloop!) <> 0 Then
            setYes = 1
            Print #1, DistName(iloop!) & " maximum percent of recycled water use: " & PRECMAX(iloop!)
        End If
        If SUBQON(iloop!) <> 0 Then
            setYes = 1
            Print #1, DistName(iloop!) & " maximum quantity of recycled water use: " & QRECMAX(iloop!) & " MCM"
        End If
    Next
If setYes = 0 Then Print #1, "None"

Print #1, " "

Print #1, "ENVIRONMENTAL COSTS CHANGED FROM DEFAULTS"
ceYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To 3
        If ceDEF(iloop!, jloop!) - ce(iloop!, jloop!) <> 0 Then
           ceYes = 1
           If jloop! = 1 Then
               Print #1, DistName(iloop!) & " urban environmental cost:" & ce(iloop!, 1)
           Else
               If jloop! = 2 Then
                    Print #1, DistName(iloop!) & " industrial environmental cost:" & ce(iloop!, 2)
               Else
                    Print #1, DistName(iloop!) & " agricultural environmental cost:" & ce(iloop!, 3)
               End If
            End If
        End If
    Next
Next
If ceYes = 0 Then Print #1, "None"

Print #1, " "

Print #1, "SETASIDES CHANGED FROM DEFAULTS"
setYes = 0
    For iloop! = 1 To DistCount
        If setaside(iloop!) <> 0 Then
            setYes = 1
            Print #1, DistName(iloop!) & " setaside:" & setaside(iloop!) & " MCM"
        End If
    Next
If setYes = 0 Then Print #1, "None"

        
Print #1, " "

Print #1, "AGRICULTURAL SYSTEM OF FIXED PRICES: FRESH WATER"
QuoYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To 5
        If QQ(iloop!, jloop!) > 0.0001 Then
            Print #1, DistName(iloop!) & " Price = $" & QP(iloop!, jloop!) & "/cuM and Supply = " & QQ(iloop!, jloop!) & " MCM"
            QuoYes = 1
        End If
    Next
Next
If QuoYes = 0 Then Print #1, "None"
Print #1, " "

Print #1, " "
Print #1, "AGRICULTURAL SYSTEM OF FIXED PRICES: RECYCLED WATER"
QuoYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To 5
        If QQR(iloop!, jloop!) > 0.0001 Then
            Print #1, DistName(iloop!) & " Price = $" & QPR(iloop!, jloop!) & "/cuM and Supply = " & QQR(iloop!, jloop!) & " MCM"
            QuoYes = 1
        End If
    Next
Next
If QuoYes = 0 Then Print #1, "None"
Print #1, " "

Print #1, "INDUSTRIAL SYSTEM OF FIXED PRICES"
QuoYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To 5
        If QQI(iloop!, jloop!) > 0.0001 Then
            Print #1, DistName(iloop!) & " Price = $" & QPI(iloop!, jloop!) & "/cuM and Supply = " & QQI(iloop!, jloop!) & " MCM"
            QuoYes = 1
        End If
    Next
Next
If QuoYes = 0 Then Print #1, "None"
Print #1, " "


Print #1, "URBAN SYSTEM OF FIXED PRICES"
QuoYes = 0
For iloop! = 1 To DistCount
    For jloop! = 1 To 5
        If QQU(iloop!, jloop!) > 0.0001 Then
            Print #1, DistName(iloop!) & " Price = $" & QPU(iloop!, jloop!) & "/cuM and Supply = " & QQU(iloop!, jloop!) & " MCM"
            QuoYes = 1
        End If
    Next
Next
If QuoYes = 0 Then Print #1, "None"
Print #1, " "



Print #1, "SUBSIDIES BY PERCENTAGE"
SubYes = 0
For jloop! = 1 To DistCount
For dloop! = 1 To 3
If SubRate(jloop!, dloop!) <> 0 Then
   If dloop! = 1 Then
   Print #1, "Subsidy of " & SubRate(jloop!, dloop!) & " percent in district " & DistName(jloop!) & " to agricultural users"
     Else
     If dloop! = 2 Then
     Print #1, "Subsidy of " & SubRate(jloop!, dloop!) & " percent in district " & DistName(jloop!) & " to industrial users"
        Else
        Print #1, "Subsidy of " & SubRate(jloop!, dloop!) & " percent in district " & DistName(jloop!) & " to urban users"
        End If
     End If
SubYes = 1
End If
Next
Next

If SubYes = 0 Then Print #1, "None"
Print #1, " "



Print #1, "SUBSIDIES BY AMOUNT"
SubYes = 0
For jloop! = 1 To DistCount
    For dloop! = 1 To 3
        If SubAmt(jloop!, dloop!) <> 0 Then
        SubYes = 1
          If dloop! = 1 Then
          Print #1, "Subsidy of amount $" & SubAmt(jloop!, dloop!) & " in district " & DistName(jloop!) & " to agricultural users"
          Else
            If dloop! = 2 Then
            Print #1, "Subsidy of amount $" & SubAmt(jloop!, dloop!) & " in district " & DistName(jloop!) & " to industrial users"
            Else
               Print #1, "Subsidy of amount $" & SubAmt(jloop!, dloop!) & " in district " & DistName(jloop!) & " to urban users"
            End If
          End If
        End If
    Next
Next
If SubYes = 0 Then Print #1, "None"

Print #1, " "



Print #1, "SPECIAL USER CONDITIONS CHANGED FROM DEFAULTS"
setYes = 0
    For iloop! = 1 To DistCount
        For jloop! = 1 To 3
            If losses(iloop!, jloop!) <> 0 Then
                setYes = 1
                Print #1, DistName(iloop!) & " losses:" & losses(iloop!, jloop!) & " $/m3 for quantities below " & minq(iloop!, jloop!) & "MCM"
            End If
        Next
    Next
If setYes = 0 Then Print #1, "None"


Close #1

End Sub

Private Sub SCH1()

'modified by ath 5/1/98

SchMenuOpt = 1

Open RootDir + "was.sc8" For Input As #1
For All = 1 To 24
    Input #1, nwcfl(All)
Next
Close #1

Open RootDir + "was.sc1" For Input As #1
For All = 1 To DistCount
Input #1, fprice(All), rprice(All), purb(All), pind(All), pagr(All), fpricel(All)
Next
' Input #1, DP1
' Input #1, DP2
Close #1

'For cases when the artificial supply step was used, display
'the word infeasible

For All = 1 To DistCount
    If fprice(All) >= 990 Then
        fprice(All) = "INFEASIBLE"
    End If
    If purb(All) >= 990 Then
        purb(All) = "INFEASIBLE"
    End If
    If pind(All) >= 990 Then
        pind(All) = "INFEASIBLE"
    End If
    If pagr(All) >= 990 Then
        pagr(All) = "INFEASIBLE"
    End If
    If rprice(All) >= 990 Then
        rprice(All) = "INFEASIBLE"
    End If
    If fpricel(All) >= 990 Then
        fpricel(All) = "INFEASIBLE"
    End If
Next



Open RootDir + "was.sc2" For Input As #1
For All = 1 To DistCount
Input #1, prodn(All), netexp(All), urbdem(All), inddem(All), agrdem(All)
prodn(All) = Fix(prodn(All))
netexp(All) = Fix(netexp(All))
urbdem(All) = Fix(urbdem(All))
inddem(All) = Fix(inddem(All))
agrdem(All) = Fix(agrdem(All))
Next
Close #1

Open RootDir + "was.sc3" For Input As #1
For All = 1 To DistCount
Input #1, rfrmurb(All), rfrmind(All), rfrmagr(All), rtoagr(All), rnetexp(All)
Next
Close #1

Open RootDir + "was.sc4" For Input As #1
For All = 1 To DistCount
Input #1, profits(All), govt_costs(All), buyr_surp(All), soc_wel(All)
profits(All) = Fix(profits(All))
govt_costs(All) = Fix(govt_costs(All))
buyr_surp(All) = Fix(buyr_surp(All))
soc_wel(All) = Fix(soc_wel(All))
Next
Close #1

End Sub


Sub Desal()
Open RootDir + "D.inc" For Output As #1

If D(1) = 1 Then
 Print #1, "QSMAX(""I5"", ""S5"") = " & DESALMAX(1) & ";"
 Print #1, "CS(""I5"", ""S5"") = " & DC(1) & ";"
 Print #1, "DESAL('I5') = 1;"
Else
 Print #1, "QSMAX(""I5"", ""S5"") = 0;"
End If
If D(2) = 1 Then
 Print #1, "QSMAX(""I12"", ""S5"") = " & DESALMAX(2) & ";"
 Print #1, "CS(""I12"", ""S5"")= " & DC(2) & ";"
 Print #1, "DESAL('I12') = 1;"
Else
 Print #1, "QSMAX(""I12"", ""S5"") = 0;"
End If
If D(3) = 1 Then
 Print #1, "QSMAX(""I13"", ""S5"") = " & DESALMAX(3) & ";"
 Print #1, "CS(""I13"", ""S5"") = " & DC(3) & ";"
 Print #1, "DESAL('I13') = 1;"
Else
 Print #1, "QSMAX(""I13"", ""S5"") = 0;"
End If
If D(4) = 1 Then
 Print #1, "QSMAX(""I14"", ""S5"") = " & DESALMAX(4) & ";"
 Print #1, "CS(""I14"", ""S5"") = " & DC(4) & ";"
 Print #1, "DESAL('I14') = 1;"
Else
 Print #1, "QSMAX(""I14"", ""S5"") = 0;"
End If
If D(5) = 1 Then
 Print #1, "QSMAX(""I16"", ""S5"") = " & DESALMAX(5) & ";"
 Print #1, "CS(""I16"", ""S5"") = " & DC(5) & ";"
 Print #1, "DESAL('I16') = 1;"
Else
 Print #1, "QSMAX(""I16"", ""S5"") = 0;"
End If
If D(6) = 1 Then
 Print #1, "QSMAX(""I19"", ""S5"") = " & DESALMAX(6) & ";"
 Print #1, "CS(""I19"", ""S5"") = " & DC(6) & ";"
 Print #1, "DESAL('I19') = 1;"
Else
 Print #1, "QSMAX(""I19"", ""S5"") = 0;"
End If
If D(7) = 1 Then
 Print #1, "QSMAX(""J12"", ""S5"") = " & DESALMAX(7) & ";"
 Print #1, "CS(""J12"", ""S5"") = " & DC(7) & ";"
 Print #1, "DESAL('J12') = 1;"
Else
 Print #1, "QSMAX(""J12"", ""S5"") = 0;"
End If
If D(8) = 1 Then
 Print #1, "QSMAX(""P5"", ""S5"") = " & DESALMAX(8) & ";"
 Print #1, "CS(""P5"", ""S5"") = " & DC(8) & ";"
 Print #1, "DESAL('P5') = 1;"
Else
 Print #1, "QSMAX(""P5"", ""S5"") = 0;"
End If
If D(9) = 1 Then
 Print #1, "QSMAX(""P9"", ""S5"") = " & DESALMAX(9) & ";"
 Print #1, "CS(""P9"", ""S5"") = " & DC(9) & ";"
 Print #1, "DESAL('P9') = 1;"
Else
 Print #1, "QSMAX(""P9"", ""S5"") = 0;"
End If
If D(10) = 1 Then
 Print #1, "QSMAX(""P10"", ""S5"") = " & DESALMAX(10) & ";"
 Print #1, "CS(""P10"", ""S5"") = " & DC(10) & ";"
 Print #1, "DESAL('P10') = 1;"
Else
 Print #1, "QSMAX(""P10"", ""S5"") = 0;"
End If
If D(11) = 1 Then
 Print #1, "QSMAX(""P11"", ""S5"") = " & DESALMAX(11) & ";"
 Print #1, "CS(""P11"", ""S5"") = " & DC(11) & ";"
 Print #1, "DESAL('P11') = 1;"
Else
 Print #1, "QSMAX(""P11"", ""S5"") = 0;"
End If
If D(12) = 1 Then
 Print #1, "QSMAX(""P12"", ""S5"") = " & DESALMAX(12) & ";"
 Print #1, "CS(""P12"", ""S5"") = " & DC(12) & ";"
 Print #1, "DESAL('P12') = 1;"
Else
 Print #1, "QSMAX(""P12"", ""S5"") = 0;"
End If
If D(13) = 1 Then
 Print #1, "QSMAX(""P13"", ""S5"") = " & DESALMAX(13) & ";"
 Print #1, "CS(""P13"", ""S5"") = " & DC(13) & ";"
 Print #1, "DESAL('P13') = 1;"
Else
 Print #1, "QSMAX(""P13"", ""S5"") = 0;"
End If



Close #1

End Sub


Sub quotas()


For ploop! = 1 To DistCount

QQTot(ploop!) = QQ(ploop!, 1) + QQ(ploop!, 2) + QQ(ploop!, 3) + QQ(ploop!, 4) + QQ(ploop!, 5) + QQR(ploop!, 1) + QQR(ploop!, 2) + QQR(ploop!, 3) + QQR(ploop!, 4) + QQR(ploop!, 5)

If (IndUnpaid(ploop!) * setaside(ploop!) > 0) And (QQI(ploop!, 1) > 0) Then
    QQITot(ploop!) = IndUnpaid(ploop!) * setaside(ploop!) + QQI(ploop!, 1) + QQI(ploop!, 2) + QQI(ploop!, 3) + QQI(ploop!, 4)
Else
    QQITot(ploop!) = QQI(ploop!, 1) + QQI(ploop!, 2) + QQI(ploop!, 3) + QQI(ploop!, 4) + QQI(ploop!, 5)
End If

If (UrbUnpaid(ploop!) * setaside(ploop!) > 0) And (QQU(ploop!, 1) > 0) Then
    QQUTot(ploop!) = UrbUnpaid(ploop!) * setaside(ploop!) + QQU(ploop!, 1) + QQU(ploop!, 2) + QQU(ploop!, 3) + QQU(ploop!, 4)
Else
    QQUTot(ploop!) = QQU(ploop!, 1) + QQU(ploop!, 2) + QQU(ploop!, 3) + QQU(ploop!, 4) + QQU(ploop!, 5)
End If

Next


Open RootDir + "qfbar.inc" For Output As #1
Open RootDir + "pfbar.inc" For Output As #2
Print #1, "TABLE QFBAR(i,d,st)  Input from VB giving quota step information: fresh water"
Print #1, "               1             2             3             4             5"
Print #2, "TABLE PFBAR(i,d,st)  Input from VB giving quota price information: fresh water"
Print #2, "               1             2             3             4             5"

For qloop! = 1 To DistCount
    Print #1, DistN(qloop!) & ".AGR ", QQ(qloop!, 1), QQ(qloop!, 2), QQ(qloop!, 3), QQ(qloop!, 4), QQ(qloop!, 5)
Next
For qloop! = 1 To DistCount
    Print #2, DistN(qloop!) & ".AGR ", QP(qloop!, 1), QP(qloop!, 2), QP(qloop!, 3), QP(qloop!, 4), QP(qloop!, 5)
Next

For qloop! = 1 To DistCount
    If (UrbUnpaid(qloop!) * setaside(qloop!) > 0) And (QQI(qloop!, 1) > 0) Then
        Print #1, DistN(qloop!) & ".URB ", UrbUnpaid(qloop!) * setaside(qloop!), QQU(qloop!, 1), QQU(qloop!, 2), QQU(qloop!, 3), QQU(qloop!, 4)
    Else
        Print #1, DistN(qloop!) & ".URB ", QQU(qloop!, 1), QQU(qloop!, 2), QQU(qloop!, 3), QQU(qloop!, 4), QQU(qloop!, 5)
    End If
Next

For qloop! = 1 To DistCount
    If (UrbUnpaid(qloop!) * setaside(qloop!) > 0) And (QQI(qloop!, 1) > 0) Then
        Print #2, DistN(qloop!) & ".URB ", 0, QPU(qloop!, 1), QPU(qloop!, 2), QPU(qloop!, 3), QPU(qloop!, 4)
    Else
        Print #2, DistN(qloop!) & ".URB ", QPU(qloop!, 1), QPU(qloop!, 2), QPU(qloop!, 3), QPU(qloop!, 4), QPU(qloop!, 5)
    End If
Next

For qloop! = 1 To DistCount
    If (IndUnpaid(qloop!) * setaside(qloop!) > 0) And (QQI(qloop!, 1) > 0) Then
        Print #1, DistN(qloop!) & ".IND ", IndUnpaid(qloop!) * setaside(qloop!), QQI(qloop!, 1), QQI(qloop!, 2), QQI(qloop!, 3), QQI(qloop!, 4)
    Else
        Print #1, DistN(qloop!) & ".IND ", QQI(qloop!, 1), QQI(qloop!, 2), QQI(qloop!, 3), QQI(qloop!, 4), QQI(qloop!, 5)
    End If
Next

For qloop! = 1 To DistCount
    If (IndUnpaid(qloop!) * setaside(qloop!) > 0) And (QQI(qloop!, 1) > 0) Then
        Print #2, DistN(qloop!) & ".IND ", 0, QPI(qloop!, 1), QPI(qloop!, 2), QPI(qloop!, 3), QPI(qloop!, 4)
    Else
        Print #2, DistN(qloop!) & ".IND ", QPI(qloop!, 1), QPI(qloop!, 2), QPI(qloop!, 3), QPI(qloop!, 4), QPI(qloop!, 5)
    End If
Next

Print #1, ";"
Print #2, ";"

Close #1
Close #2


Open RootDir + "qrbar.inc" For Output As #1
Open RootDir + "prbar.inc" For Output As #2
Print #1, "TABLE QRBAR(i,d,st)  Input from VB giving quota step information: recycled water"
Print #1, "               1             2             3             4             5"
Print #2, "TABLE PRBAR(i,d,st)  Input from VB giving quota price information: recycled water"
Print #2, "               1             2             3             4             5"

For qloop! = 1 To DistCount
    Print #1, DistN(qloop!) & ".AGR ", QQR(qloop!, 1), QQR(qloop!, 2), QQR(qloop!, 3), QQR(qloop!, 4), QQR(qloop!, 5)
Next
For qloop! = 1 To DistCount
    Print #2, DistN(qloop!) & ".AGR ", QPR(qloop!, 1), QPR(qloop!, 2), QPR(qloop!, 3), QPR(qloop!, 4), QPR(qloop!, 5)
Next

For qloop! = 1 To DistCount
    Print #1, DistN(qloop!) & ".URB ", QQUR(qloop!, 1), QQUR(qloop!, 2), QQUR(qloop!, 3), QQUR(qloop!, 4), QQUR(qloop!, 5)
Next
For qloop! = 1 To DistCount
    Print #2, DistN(qloop!) & ".URB ", QPUR(qloop!, 1), QPUR(qloop!, 2), QPUR(qloop!, 3), QPUR(qloop!, 4), QPUR(qloop!, 5)
Next

For qloop! = 1 To DistCount
    Print #1, DistN(qloop!) & ".IND ", QQIR(qloop!, 1), QQIR(qloop!, 2), QQIR(qloop!, 3), QQIR(qloop!, 4), QQIR(qloop!, 5)
Next
For qloop! = 1 To DistCount
Print #2, DistN(qloop!) & ".IND ", QPIR(qloop!, 1), QPIR(qloop!, 2), QPIR(qloop!, 3), QPIR(qloop!, 4), QPIR(qloop!, 5)
Next

Print #1, ";"
Print #2, ";"

Close #1
Close #2

Open RootDir + "qqtot.inc" For Output As #3
Print #3, "TABLE QQTOT(i,d)  Input from VB giving total quota quantity information"
Print #3, "             URB           IND            AGR"
For jloop! = 1 To DistCount
Print #3, DistN(jloop!), QQUTot(jloop!), QQITot(jloop!), QQTot(jloop!)
Next
Print #3, ";"
Close #3

End Sub


Sub Recy()

Open RootDir + "Recyplnt.inc" For Output As #1
Open RootDir + "Recyp.inc" For Output As #2
Open RootDir + "Recycap.inc" For Output As #3

For ircloop! = 1 To DistCount
If R(ircloop!) = 1 Then
 Print #1, "PRMAX(""" & DistN(ircloop!) & """, ""URB"") = " & (RP(ircloop!) / 100) & ";"
 Print #1, "PRMAX(""" & DistN(ircloop!) & """, ""IND"") = " & (RP(ircloop!) / 100) & ";"
 Print #2, "CR(""" & DistN(ircloop!) & """, ""URB"") = " & RC(ircloop!) & ";"
 Print #2, "CR(""" & DistN(ircloop!) & """, ""IND"") = " & RC(ircloop!) & ";"
 Print #3, "RECYCAP(""" & DistN(ircloop!) & """) = " & RCAP(ircloop!) & ";"
Else
 Print #1, "PRMAX(""" & DistN(ircloop!) & """, ""URB"") = 0.0; "
 Print #1, "PRMAX(""" & DistN(ircloop!) & """, ""IND"") = 0.0; "
 Print #3, "RECYCAP(""" & DistN(ircloop!) & """) = 0.0;"
End If
Next


Close #1
Close #2
Close #3
End Sub


Sub spmlt()
Open RootDir + "SUPMULT.inc" For Output As #1
Print #1, "SCALAR SUPMULT supply multiplier for drought and wet years /" & SUPMULT & "/;"
Close #1
End Sub



Sub yr()

Select Case DEM
   Case 1
    FileCopy RootDir + "d1995.inc", RootDir + "dem.inc"
    FileCopy RootDir + "p1995.inc", RootDir + "pop.inc"
   Case 2
    'Function to address whether Jerusalem is double-counted or not.
    If JerusalemDC.Value = 1 Then
        FileCopy RootDir + "d2010.dc", RootDir + "dem.inc"
    Else
        FileCopy RootDir + "d2010.sc", RootDir + "dem.inc"
    End If
    FileCopy RootDir + "p2010.inc", RootDir + "pop.inc"
   Case 3
    If JerusalemDC.Value = 1 Then
        FileCopy RootDir + "d2020.dc", RootDir + "dem.inc"
    Else
        FileCopy RootDir + "d2020.sc", RootDir + "dem.inc"
    End If
    FileCopy RootDir + "p2020.inc", RootDir + "pop.inc"
End Select

End Sub

Private Sub alpha_Click()

    helpind = 1
    helpout.Show

End Sub

Private Sub Check1_Click()

End Sub

Private Sub Command1_Click()
  
Optimize = 1

Dim DefVal, msg, Title  ' Declare variables.
    msg = "Enter a result scenario name of less than 20 characters (with no blanks)"  ' Set prompt.
    Title = "SET SCENARIO NAME" ' Set title.
    DefVal = ScenNm    ' Set default return value.
    Do
        fn$ = InputBox(msg, Title, DefVal)   ' Get user input.
    Loop Until Len(fn$) <= 30
 
ScenNm = fn$
ScenDt = Now

'Describe.Show
ChDir RootDir

'Function to update alphas
WAS30.alphup

'Function to update the demand multiplier
WAS30.demmltup

WAS30.costenvup

'function to update leakage rates
WAS30.leakup

'Function to update substitution of recycled and fresh
'ath
WAS30.substitup

'Function to update special user conditions
WAS30.specialup

'Function to update Year Include Files
WAS30.yr

'Function to update Supmult and supply and supcost Include File
WAS30.supplyup
WAS30.spmlt

'Function to update common pool Include Files
'ath
WAS30.commonpoolup

'Function to update population File

WAS30.popup

'Function to update Quotas
WAS30.quotas

'Function to update Desalination
WAS30.Desal

'Function to update subsidy rates and amounts
WAS30.subs

'Function to update connection links freshwater
'WAS30.uparcs
WAS30.cnct

'Function to update Recycling
WAS30.Recy


'Function to update connection links recycled
WAS30.cncty

'Function to update countrified output files
'WAS30.cntrfd

'Function to update cost of transport fresh
WAS30.ctradd

'Function to update cost of transport recycled
WAS30.ctryadd

'Function to write out the scenario summary file
WAS30.scensummary

Optimize = 0


X = Shell(RootDir + "was.bat ", 1)

MsgBox "YOU CAN NOW CHECK THE RESULTS OF YOUR RUN"
 
Open RootDir + "redlight.inp" For Input As #1
Input #1, REDLIGHT
Close #1
 
If REDLIGHT > 0 Then
MsgBox "WARNING! THE SYSTEM OF FIXED PRICES HAS GENERATED SOME POSSIBLY MISLEADING RESULTS. PLEASE CONSULT THE TABULAR OUTPUT AND THE USER MANUAL."
End If

End Sub

Private Sub Command2_Click()
    
    scensummary
    scensum.Show
End Sub

Private Sub countrified_Click(index As Integer)
Isr(1).Visible = False
Isr(1).Enabled = False
Jor(1).Visible = False
Jor(1).Enabled = False
Pls(1).Visible = False
Pls(1).Enabled = False
Select Case Countrified(1).Text
    
    Case "Israel"
        Country = 1
        Isr(1).Top = 2760
        Isr(1).Visible = True
        Isr(1).Enabled = True
        Isr(1).Text = "Select Policy"
'        ic.Show
    Case "Jordan"
        Country = 2
        Jor(1).Top = 2760
        Jor(1).Visible = True
        Jor(1).Enabled = True
        Jor(1).Text = "Select Policy"

'        jc.Show
    Case "PNA"
        Country = 3
        Pls(1).Top = 2760
        Pls(1).Visible = True
        Pls(1).Enabled = True
        Pls(1).Text = "Select Policy"
    
    Case "Click To Select"
        Country = 0
'        pc.Show
'   Case "Uncountrified"
'        unc.Show
    End Select
End Sub

Private Sub editsup_Click()

    supply.Show

End Sub

Private Sub Form_Activate()

Label17.Caption = SUPMULT
        

Select Case DEM
    Case 1
        Year(1).Text = 1995
    Case 2
        Year(1).Text = "2010"
    Case 3
        Year(1).Text = "2020"
End Select

End Sub

Private Sub Form_Load()
' call init file manage from start form
'    Call Init_FileManagement

    Caption = Version + "         " + MODE + " Mode"

'Initialize the Demands Include Files

    
'the following reads alpha from the file "alpha2.inc"
'(for the three demands for all the districts to an array "ce")
    
    Dim Line1, Line2
    
    Open RootDir + "alpha2.inc" For Input As #1
    Line Input #1, Line1
    Line Input #1, Line2

    For I = 1 To DistCount
     ' Input #1, EOL
      d_id = Input(3, #1)
      Input #1, urb, ind, agr


      '  Input #1, d_id, urb, ind, agr

        alpha2(I, 1) = Format((-1 / Val(urb)), "0.00")
        alpha2(I, 2) = Format((-1 / Val(ind)), "0.00")
        alpha2(I, 3) = Format((-1 / Val(agr)), "0.00")

    Next
    Close #1

    For I = 1 To DistCount
        For sloop! = 1 To 3
        alphadef(I, sloop!) = alpha2(I, sloop!)
        Next
    Next

FileCopy RootDir + "d1995.inc", RootDir + "dem.inc"
FileCopy RootDir + "p1995.inc", RootDir + "pop.inc"


'Modify code to allow for users to directly edit the
'population data

    Open RootDir + "pop.inc" For Input As #1
    Line Input #1, linestuff
    Line Input #1, linestuff
    
    For I = 1 To DistCount
        d_id = Input(3, #1)
        Input #1, pop(I)
        popdef(I) = pop(I)
    Next
    
    
    Close #1
'Initialize the Supply State, both quantities and costs
'ath

 
    
    Open RootDir + "supply.inc" For Input As #1
    Line Input #1, Line1
    Line Input #1, Line2

    For I = 1 To DistCount
     ' Input #1, EOL
      d_id = Input(3, #1)
      Input #1, s1, s2, s3, s4, s5
      
      QS(I, 1) = Val(s1)
      QS(I, 2) = Val(s2)
      QS(I, 3) = Val(s3)
      QS(I, 4) = Val(s4)
      QS(I, 5) = Val(s5)

    Next
    Close #1

    For I = 1 To DistCount
        For sloop! = 1 To 5
            qsdef(I, sloop!) = QS(I, sloop!)
        Next
    Next


    
    Open RootDir + "supcost.inc" For Input As #1
    Line Input #1, Line1
    Line Input #1, Line2

    For I = 1 To DistCount
     ' Input #1, EOL
      d_id = Input(3, #1)
      Input #1, s1, s2, s3, s4, s5
      
      CS(I, 1) = Val(s1)
      CS(I, 2) = Val(s2)
      CS(I, 3) = Val(s3)
      CS(I, 4) = Val(s4)
      CS(I, 5) = Val(s5)

    Next
    Close #1

    For I = 1 To DistCount
        For sloop! = 1 To 5
            csdef(I, sloop!) = CS(I, sloop!)
        Next
    Next
    

' Now these variables should get the values of cost and quantity
' from the current include file
'ath
    
    
For iloop! = 0 To (Israel.D_length - 1)
    For jloop! = 0 To 4
        CSISR(iloop!, jloop!) = CS(iloop! + 1, jloop! + 1)
        QSMAXISR(iloop!, jloop!) = QS(iloop! + 1, jloop! + 1)
    Next
Next

For iloop! = 0 To (Jordan.D_length - 1)
    For jloop! = 0 To 4
        offset = Israel.D_length
        CSJRD(iloop!, jloop!) = CS(iloop! + 1 + offset, jloop! + 1)
        QSMAXJRD(iloop!, jloop!) = QS(iloop! + 1 + offset, jloop! + 1)
    Next
Next

For iloop! = 0 To (PNA.D_length - 1)
    For jloop! = 0 To 4
        offset = Israel.D_length + Jordan.D_length
        CSPNA(iloop!, jloop!) = CS(iloop! + 1 + offset, jloop! + 1)
        QSMAXPNA(iloop!, jloop!) = QS(iloop! + 1 + offset, jloop! + 1)
    Next
Next

FileCopy RootDir + "SUPMULT1.inc", RootDir + "SUPMULT.inc"

'read in leakage rates
    
    Open RootDir + "leakage.inc" For Input As #1
    Line Input #1, Line1
    Line Input #1, Line2

    For I = 1 To DistCount
     ' Input #1, EOL
        d_id = Input(3, #1)
        Input #1, DL(I)
        DLDEF(I) = DL(I)
    Next
    Close #1

    

'Initialize the common pool data
'ath
    
COMPNUM = 1

'the following dumps the contents of the file "ce.inc"
'(for the three demands for all the districts to an array "ce")
'ath

Open RootDir + "ce.inc" For Input As #1
    
    Line Input #1, Line1
    Line Input #1, Line2


    For iloop! = 1 To DistCount
        'Input #1, EOL
        d_id = Input(3, #1)
        Input #1, urb, ind, agr

        ce(iloop!, 1) = Val(urb)
        ce(iloop!, 2) = Val(ind)
        ce(iloop!, 3) = Val(agr)
    
    Next

    For I = 1 To DistCount
        For J = 1 To 3
            ceDEF(I, J) = ce(I, J)
        Next
    Next

Close #1

'Initialize the common pool files
FileCopy RootDir + "blank.inc", RootDir + "compleq.inc"
FileCopy RootDir + "blank.inc", RootDir + "complcon.inc"
FileCopy RootDir + "blank.inc", RootDir + "commonpool.inc"
FileCopy RootDir + "blank.inc", RootDir + "scarcity.inc"


'Initialize extra connections include file
FileCopy RootDir + "connect0.inc", RootDir + "connect.inc"

'Initialize the cost of trans and qtr.up inc file
FileCopy RootDir + "blank.inc", RootDir + "ctradd.inc"
FileCopy RootDir + "blank.inc", RootDir + "ctryadd.inc"

'Initialize Desalination district names
DesalN(1) = "I5: Acco"
DesalN(2) = "I12: Hadera"
DesalN(3) = "I13: Raanana"
DesalN(4) = "I14: Rehovot"
DesalN(5) = "I16: Lachish"
DesalN(6) = "I19: Arava"
DesalN(7) = "J12: Aqaba"
DesalN(8) = "P5: Fashkha-Jehrico"
DesalN(9) = "P9: Gaza North"
DesalN(10) = "P10: Gaza"
DesalN(11) = "P11: Deir al-Balah"
DesalN(12) = "P12: Khan Yunis"
DesalN(13) = "P13: Rafah"

'INPUT ARC DATA to ARC
'ath

Open RootDir + "arc.inc" For Input As #1

For arcloop! = 0 To 6
    
    Line Input #1, Line1
    Line Input #1, Line2

    For nloop! = 1 To TotalCount

        d_id = Input(4, #1)
        Input #1, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10
        
        ARC(nloop!, arcloop! * 10 + 1) = Val(s1)
        ARC(nloop!, arcloop! * 10 + 2) = Val(s2)
        ARC(nloop!, arcloop! * 10 + 3) = Val(s3)
        ARC(nloop!, arcloop! * 10 + 4) = Val(s4)
        ARC(nloop!, arcloop! * 10 + 5) = Val(s5)
        ARC(nloop!, arcloop! * 10 + 6) = Val(s6)
        ARC(nloop!, arcloop! * 10 + 7) = Val(s7)
        ARC(nloop!, arcloop! * 10 + 8) = Val(s8)
        ARC(nloop!, arcloop! * 10 + 9) = Val(s9)
        ARC(nloop!, arcloop! * 10 + 10) = Val(s10)
        
    Next
    
Next

Close #1

'read in transfer leakage rates

Open RootDir + "arcleak.inc" For Input As #1

For arcloop! = 0 To 6
    
    Line Input #1, Line1
    Line Input #1, Line2

    For nloop! = 1 To TotalCount

        d_id = Input(4, #1)
        Input #1, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10
        
        TL(nloop!, arcloop! * 10 + 1) = Val(s1)
        TL(nloop!, arcloop! * 10 + 2) = Val(s2)
        TL(nloop!, arcloop! * 10 + 3) = Val(s3)
        TL(nloop!, arcloop! * 10 + 4) = Val(s4)
        TL(nloop!, arcloop! * 10 + 5) = Val(s5)
        TL(nloop!, arcloop! * 10 + 6) = Val(s6)
        TL(nloop!, arcloop! * 10 + 7) = Val(s7)
        TL(nloop!, arcloop! * 10 + 8) = Val(s8)
        TL(nloop!, arcloop! * 10 + 9) = Val(s9)
        TL(nloop!, arcloop! * 10 + 10) = Val(s10)
        
    Next
    
Next

Close #1


'read in recycled links

Open RootDir + "arcy.inc" For Input As #1

For arcloop! = 0 To 4
    
    Line Input #1, Line1
    Line Input #1, Line2

    For nloop! = 1 To DistCount

        d_id = Input(4, #1)
        If arcloop! <> 4 Then
            Input #1, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10
            ARCR(nloop!, arcloop! * 10 + 1) = Val(s1)
            ARCR(nloop!, arcloop! * 10 + 2) = Val(s2)
            ARCR(nloop!, arcloop! * 10 + 3) = Val(s3)
            ARCR(nloop!, arcloop! * 10 + 4) = Val(s4)
            ARCR(nloop!, arcloop! * 10 + 5) = Val(s5)
            ARCR(nloop!, arcloop! * 10 + 6) = Val(s6)
            ARCR(nloop!, arcloop! * 10 + 7) = Val(s7)
            ARCR(nloop!, arcloop! * 10 + 8) = Val(s8)
            ARCR(nloop!, arcloop! * 10 + 9) = Val(s9)
            ARCR(nloop!, arcloop! * 10 + 10) = Val(s10)
        Else
            Input #1, s1, s2, s3, s4
            ARCR(nloop!, arcloop! * 10 + 1) = Val(s1)
            ARCR(nloop!, arcloop! * 10 + 2) = Val(s2)
            ARCR(nloop!, arcloop! * 10 + 3) = Val(s3)
            ARCR(nloop!, arcloop! * 10 + 4) = Val(s4)
        End If
        
        
    Next
    
Next

Close #1

'Initialize ARCDEF - Never Changes!
'Initialize ARCEDIT to no edits (all two's)

For iloop! = 1 To TotalCount
    For jloop! = 1 To TotalCount
        ARC0(iloop!, jloop!) = ARC(iloop!, jloop!)
        ARCDEF(iloop!, jloop!) = ARC(iloop!, jloop!)
        ARCEDIT(iloop!, jloop!) = 2
    Next
Next


For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
        ARCR0(iloop!, jloop!) = ARCR(iloop!, jloop!)
        ARCDEFY(iloop!, jloop!) = ARCR(iloop!, jloop!)
        ARCEDITY(iloop!, jloop!) = 2
    Next
Next

'INPUT Cost DATA to CTR
'ath

Open RootDir + "ctr.inc" For Input As #1

For arcloop! = 0 To 6
    
    Line Input #1, Line1
    Line Input #1, Line2

    For nloop! = 1 To TotalCount

        d_id = Input(4, #1)
        Input #1, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10
        
        CTR(nloop!, arcloop! * 10 + 1) = Val(s1)
        CTR(nloop!, arcloop! * 10 + 2) = Val(s2)
        CTR(nloop!, arcloop! * 10 + 3) = Val(s3)
        CTR(nloop!, arcloop! * 10 + 4) = Val(s4)
        CTR(nloop!, arcloop! * 10 + 5) = Val(s5)
        CTR(nloop!, arcloop! * 10 + 6) = Val(s6)
        CTR(nloop!, arcloop! * 10 + 7) = Val(s7)
        CTR(nloop!, arcloop! * 10 + 8) = Val(s8)
        CTR(nloop!, arcloop! * 10 + 9) = Val(s9)
        CTR(nloop!, arcloop! * 10 + 10) = Val(s10)
        
    Next
    
Next

Close #1

Open RootDir + "ctry.inc" For Input As #1

For arcloop! = 0 To 4
    
    Line Input #1, Line1
    Line Input #1, Line2

    For nloop! = 1 To DistCount

        d_id = Input(4, #1)
        If arcloop! <> 4 Then
            Input #1, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10
            CTRY(nloop!, arcloop! * 10 + 1) = Val(s1)
            CTRY(nloop!, arcloop! * 10 + 2) = Val(s2)
            CTRY(nloop!, arcloop! * 10 + 3) = Val(s3)
            CTRY(nloop!, arcloop! * 10 + 4) = Val(s4)
            CTRY(nloop!, arcloop! * 10 + 5) = Val(s5)
            CTRY(nloop!, arcloop! * 10 + 6) = Val(s6)
            CTRY(nloop!, arcloop! * 10 + 7) = Val(s7)
            CTRY(nloop!, arcloop! * 10 + 8) = Val(s8)
            CTRY(nloop!, arcloop! * 10 + 9) = Val(s9)
            CTRY(nloop!, arcloop! * 10 + 10) = Val(s10)
        Else
            Input #1, s1, s2, s3, s4, s5, s6
            CTRY(nloop!, arcloop! * 10 + 1) = Val(s1)
            CTRY(nloop!, arcloop! * 10 + 2) = Val(s2)
            CTRY(nloop!, arcloop! * 10 + 3) = Val(s3)
            CTRY(nloop!, arcloop! * 10 + 4) = Val(s4)
            CTRY(nloop!, arcloop! * 10 + 5) = Val(s5)
            CTRY(nloop!, arcloop! * 10 + 6) = Val(s6)
        End If
        
    Next
    
Next

Close #1

'Open files related to the substitution of fresh and recycled water
'ath
'modify on 8/2/98 to read in these files as blanks

FileCopy RootDir + "blank.inc", RootDir + "subqon.inc"
FileCopy RootDir + "blank.inc", RootDir + "subpon.inc"
FileCopy RootDir + "blank.inc", RootDir + "substitutc.inc"
FileCopy RootDir + "blank.inc", RootDir + "substitutp.inc"
FileCopy RootDir + "blank.inc", RootDir + "substitutq.inc"
    
'Initialize the variables to zero

For I = 1 To DistCount
    SUBQON(I) = 0
    SUBPON(I) = 0
    CUSEREC(I) = 0
    PRECMAX(I) = 0
    QRECMAX(I) = 0
Next

'    Open RootDir + "subqon.inc" For Input As #1
'    Open RootDir + "subpon.inc" For Input As #2
'    Open RootDir + "substitutc.inc" For Input As #3
'    Open RootDir + "substitutp.inc" For Input As #4
'    Open RootDir + "substitutq.inc" For Input As #5
    
'    Line Input #1, Line1
'    Line Input #1, Line2
'    For I = 1 To DistCount
'      d_id = Input(3, #1)
'      Input #1, SUBQON(I)
'    Next
'    Close #1

'    Line Input #2, Line1
'    Line Input #2, Line2
'    For I = 1 To DistCount
'      d_id = Input(3, #2)
'      Input #2, SUBPON(I)
'    Next
'    Close #2


'    Line Input #3, Line1
'    Line Input #3, Line2
'    For I = 1 To DistCount
'      d_id = Input(3, #3)
'      Input #3, CUSEREC(I)
'    Next
'    Close #3

'    Line Input #4, Line1
'    Line Input #4, Line2
'    For I = 1 To DistCount
'      d_id = Input(3, #4)
'      Input #4, prec
'      PRECMAX(I) = Val(prec)
'    Next
'    Close #4

'    Line Input #5, Line1
'    Line Input #5, Line2
'    For I = 1 To DistCount
'      d_id = Input(3, #5)
'      Input #5, QRECMAX(I)
'    Next
'    Close #5


initvars
initcptns

For jloop! = 1 To TotalCount
    For iloop! = 1 To TotalCount
        QTRUP(iloop!, jloop!) = 999
        QTRUPDEF(iloop!, jloop!) = 999
        QTRUPEDIT(iloop!, jloop!) = -10
        CTRDEF(iloop!, jloop!) = CTR(iloop!, jloop!)
        CTREDIT(iloop!, jloop!) = -10
        TLEDIT(iloop!, jloop!) = -10
        tldef(iloop!, jloop!) = TL(iloop!, jloop!)
'        ARCNOTC(iloop!, jloop!) = ARC(iloop!, jloop!)
'        ARCBAK(iloop!, jloop!) = ARC(iloop!, jloop!)
    Next
Next

For jloop! = 1 To DistCount
    For iloop! = 1 To DistCount
        QTRYUP(iloop!, jloop!) = 999
        QTRYUPDEF(iloop!, jloop!) = 999
        QTRYUPEDIT(iloop!, jloop!) = -10
        CTRYEDIT(iloop!, jloop!) = -10
        CTRYDEF(iloop!, jloop!) = CTRY(iloop!, jloop!)
        TLREDIT(iloop!, jloop!) = -10
        tlrdef(iloop!, jloop!) = TLR(iloop!, jloop!)
'        ARCNOTCY(jloop!, iloop!) = ARCY(jloop!, iloop!)
'        ARCBAKY(iloop!, jloop!) = ARCY(iloop!, jloop!)
    Next
Next

For iloop! = 1 To DistCount
    For jloop! = 1 To DistCount
        CTRY0(iloop!, jloop!) = CTRY(iloop!, jloop!)
        QTRUPY0(iloop!, jloop!) = 999
    Next
Next

ScenNm = "def1995"
ScenDt = FileDateTime(RootDir + "saved\" & ScenNm)
FileCopy RootDir + "def1995\was.ot0", RootDir + "was.ot0"
FileCopy RootDir + "def1995\was.ot1", RootDir + "was.ot1"
FileCopy RootDir + "def1995\was.ot2", RootDir + "was.ot2"
FileCopy RootDir + "def1995\was.ot3", RootDir + "was.ot3"
FileCopy RootDir + "def1995\was.ot4", RootDir + "was.ot4"
FileCopy RootDir + "def1995\was.ot5", RootDir + "was.ot5"
FileCopy RootDir + "def1995\was.ot6", RootDir + "was.ot6"
FileCopy RootDir + "def1995\was.ot7", RootDir + "was.ot7"
FileCopy RootDir + "def1995\was.ot8", RootDir + "was.ot8"
FileCopy RootDir + "def1995\was.ot9", RootDir + "was.ot9"
FileCopy RootDir + "def1995\was.sc1", RootDir + "was.sc1"
FileCopy RootDir + "def1995\was.sc2", RootDir + "was.sc2"
FileCopy RootDir + "def1995\was.sc3", RootDir + "was.sc3"
FileCopy RootDir + "def1995\was.sc4", RootDir + "was.sc4"
FileCopy RootDir + "def1995\was.sc8", RootDir + "was.sc8"
FileCopy RootDir + "def1995\was.scn", RootDir + "was.scn"
FileCopy RootDir + "def1995\scensum.txt", RootDir + "scensum.txt"
FileCopy RootDir + "def1995\descript.txt", RootDir + "descript.txt"

'!---> start mode code for Social Policy
Call Social_ModeSelect
'!---> End mode code for Social Policy

End Sub
'!-----> Start mode code for social policy
'======================================================
' name: Social_ModeSelect()
' desc: mode select main function
'======================================================
Sub Social_ModeSelect()
If MODE <> "Regional" Then
    Label25.Visible = False
    Label25.Enabled = False
    Countrified(1).Text = MODE
    Call countrified_Click(1)
    Countrified(1).Visible = False
    Countrified(1).Enabled = False
    Select Case MODE
        Case "Israel"
            Isr(1).Top = 1920
        Case "Jordan"
            Jor(1).Top = 1920
        Case "PNA"
            Pls(1).Top = 1920
    End Select
End If

End Sub
'!---> end mode code for social policies


Sub subs()
Open RootDir + "subrate.inc" For Output As #1
Open RootDir + "subamt.inc" For Output As #2

For jloop! = 1 To DistCount
For dloop! = 1 To 3
If SubRate(jloop!, dloop!) <> 0 Then
  If dloop! = 1 Then
  Print #1, "SUBRATE(""" & DistN(jloop!) & ""","; """AGR"""; ") = " & SubRate(jloop!, dloop!) & ";"
  Else
     If dloop! = 2 Then
     Print #1, "SUBRATE(""" & DistN(jloop!) & ""","; """IND"""; ") = " & SubRate(jloop!, dloop!) & ";"
        Else
        Print #1, "SUBRATE(""" & DistN(jloop!) & ""","; """URB"""; ") = " & SubRate(jloop!, dloop!) & ";"
     End If
  End If
End If


If SubAmt(jloop!, dloop!) <> 0 Then
   If dloop! = 1 Then
   Print #2, "SUBAMT(""" & DistN(jloop!) & ""","; """AGR"""; ") = " & SubAmt(jloop!, dloop!) & ";"
   Else
       If dloop! = 2 Then
       Print #2, "SUBAMT(""" & DistN(jloop!) & ""","; """IND"""; ") = " & SubAmt(jloop!, dloop!) & ";"
           Else
           Print #2, "SUBAMT(""" & DistN(jloop!) & ""","; """URB"""; ") = " & SubAmt(jloop!, dloop!) & ";"
       End If
   End If
End If

Next
Next

Close #1
Close #2
End Sub


Private Sub FR_Constraint_Click()

    helpind = 12
    helpout.Show

End Sub

Private Sub frc_edit_Click()

    Substitute.Show

End Sub

Private Sub Isr_Click(index As Integer)

Natpol = "Israel"
Select Case Isr(1).Text

Case "Agr. Price Policy"
    Polsect = "agricultural"
    Policy.Show
Case "Ind. Price Policy"
    Polsect = "industrial"
    Policy.Show
Case "Urb. Price Policy"
    Polsect = "urban"
    Policy.Show
Case "Remove All Policies"
    Uinput = MsgBox("Remove All Policies?", vbOKCancel, "WAS")
    If Uinput <> vbCancel Then
        For jloop! = 1 To Israel.D_length
            For Polnumb = 1 To 3
                SubRate(jloop!, Polnumb) = 0
                SubAmt(jloop!, Polnumb) = 0
            Next
            QU(jloop!) = 0
            QI(jloop!) = 0
            Q(jloop!) = 0
            QR(jloop!) = 0
            For sloop! = 1 To 5
                QPU(jloop!, sloop!) = 0
                QQU(jloop!, sloop!) = 0
                QPI(jloop!, sloop!) = 0
                QQI(jloop!, sloop!) = 0
                QP(jloop!, sloop!) = 0
                QQ(jloop!, sloop!) = 0
                QPR(jloop!, sloop!) = 0
                QQR(jloop!, sloop!) = 0
            Next
        Next
    End If
    WAS30.Isr(1).Text = "Select Policy"
End Select



End Sub
Private Sub Jor_Click(index As Integer)
Natpol = "Jordan"
Select Case Jor(1).Text

Case "Agr. Price Policy"
    Policy.Show
    Polsect = "agricultural"
Case "Ind. Price Policy"
    Policy.Show
    Polsect = "industrial"
Case "Urb. Price Policy"
    Policy.Show
    Polsect = "urban"
Case "Remove All Policies"
    Uinput = MsgBox("Remove All Policies?", vbOKCancel, "WAS")
    If Uinput <> vbCancel Then
        For jloop! = 1 To Jordan.D_length
            For Polnumb = 1 To 3
                SubRate(jloop! + Israel.D_length, Polnumb) = 0
                SubAmt(jloop! + Israel.D_length, Polnumb) = 0
            Next
            QU(jloop! + Israel.D_length) = 0
            QI(jloop! + Israel.D_length) = 0
            Q(jloop! + Israel.D_length) = 0
            QR(jloop! + Israel.D_length) = 0
            For sloop! = 1 To 5
                QPU(jloop! + Israel.D_length, sloop!) = 0
                QQU(jloop! + Israel.D_length, sloop!) = 0
                QPI(jloop! + Israel.D_length, sloop!) = 0
                QQI(jloop! + Israel.D_length, sloop!) = 0
                QP(jloop! + Israel.D_length, sloop!) = 0
                QQ(jloop! + Israel.D_length, sloop!) = 0
                QPR(jloop! + Israel.D_length, sloop!) = 0
                QQR(jloop! + Israel.D_length, sloop!) = 0
            Next
        Next
    End If
    WAS30.Jor(1).Text = "Select Policy"
End Select

End Sub
Private Sub label11_Click()
    
    helpind = 6
    helpout.Show

End Sub

Private Sub Label14_Click()
    
    helpind = 17
    helpout.Show

End Sub

Private Sub Label15_Click()

    helpind = 4
    helpout.Show

End Sub

Private Sub Label16_Click()
    
    helpind = 3
    helpout.Show

End Sub

Private Sub Label17_Click()
Proceed = 0
MinVal = 0.1
MaxVal = 3
DefVal = SUPMULT  ' Set default return value.
Title = "Input supply multiplier " ' Set title.
Do
    msg = "Enter the supply multiplier [" & MinVal & " - " & MaxVal & "]: "  ' Set prompt.
    msg = msg + Chr$(10) + Chr$(13) + "(Regular year = 1, Drought Year < 1, Wet Year > 1)"
    UserInput = Val(InputBox(msg, Title, DefVal))
    If (UserInput >= MinVal And UserInput <= MaxVal) Then
        Proceed = 1
        SUPMULT = UserInput
    ElseIf UserInput = 0 Then
        Proceed = 1
    Else
        MsgBox "You have entered an incorrect value for " + _
               "the Supply Multiplier."
    End If
Loop Until Proceed = 1
Label17.Caption = SUPMULT
End Sub

Private Sub Label18_Click()
    Desalination.Show
End Sub

Private Sub Label19_Click()
    Recycling2.Show
End Sub

Private Sub Label20_Click()

    Connections.Show

End Sub

Private Sub Label21_Click()
On Error Resume Next
    Dim DefVal, msg, Title  ' Declare variables.
    msg = "Enter a result scenario name of less than 20 characters (with no blanks)"  ' Set prompt.
    Title = "SAVE CURRENT RESULT" ' Set title.
    DefVal = ScenNm    ' Set default return value.
    Do
        fn$ = InputBox(msg, Title, DefVal)   ' Get user input.
    Loop Until Len(fn$) <= 30

fnpath = RootDir & fn$

If fn$ <> "" Then

'    MsgBox "Results Saved in """ & fnpath & """" ' Display message.
MkDir fnpath


FileCopy RootDir + "summary.out", fnpath & "\summary.out"
FileCopy RootDir + "was.ot0", fnpath & "\was.ot0"
FileCopy RootDir + "was.ot1", fnpath & "\was.ot1"
FileCopy RootDir + "was.ot2", fnpath & "\was.ot2"
FileCopy RootDir + "was.ot3", fnpath & "\was.ot3"
FileCopy RootDir + "was.ot4", fnpath & "\was.ot4"
FileCopy RootDir + "was.ot5", fnpath & "\was.ot5"
FileCopy RootDir + "was.ot6", fnpath & "\was.ot6"
FileCopy RootDir + "was.ot7", fnpath & "\was.ot7"
FileCopy RootDir + "was.ot8", fnpath & "\was.ot8"
FileCopy RootDir + "was.ot9", fnpath & "\was.ot9"
FileCopy RootDir + "was.it0", fnpath & "\was.it0"
FileCopy RootDir + "was.it1", fnpath & "\was.it1"
FileCopy RootDir + "was.it2", fnpath & "\was.it2"
FileCopy RootDir + "was.it3", fnpath & "\was.it3"
FileCopy RootDir + "was.it4", fnpath & "\was.it4"
FileCopy RootDir + "was.it5", fnpath & "\was.it5"
FileCopy RootDir + "was.it6", fnpath & "\was.it6"
FileCopy RootDir + "was.it8", fnpath & "\was.it8"
FileCopy RootDir + "was.it9", fnpath & "\was.it9"
FileCopy RootDir + "was.jt0", fnpath & "\was.jt0"
FileCopy RootDir + "was.jt1", fnpath & "\was.jt1"
FileCopy RootDir + "was.jt2", fnpath & "\was.jt2"
FileCopy RootDir + "was.jt3", fnpath & "\was.jt3"
FileCopy RootDir + "was.jt4", fnpath & "\was.jt4"
FileCopy RootDir + "was.jt5", fnpath & "\was.jt5"
FileCopy RootDir + "was.jt6", fnpath & "\was.jt6"
FileCopy RootDir + "was.jt8", fnpath & "\was.jt8"
FileCopy RootDir + "was.jt9", fnpath & "\was.jt9"
FileCopy RootDir + "was.pt0", fnpath & "\was.pt0"
FileCopy RootDir + "was.pt1", fnpath & "\was.pt1"
FileCopy RootDir + "was.pt2", fnpath & "\was.pt2"
FileCopy RootDir + "was.pt3", fnpath & "\was.pt3"
FileCopy RootDir + "was.pt4", fnpath & "\was.pt4"
FileCopy RootDir + "was.pt5", fnpath & "\was.pt5"
FileCopy RootDir + "was.pt6", fnpath & "\was.pt6"
FileCopy RootDir + "was.pt8", fnpath & "\was.pt8"
FileCopy RootDir + "was.pt9", fnpath & "\was.pt9"
FileCopy RootDir + "was.sc1", fnpath & "\was.sc1"
FileCopy RootDir + "was.sc2", fnpath & "\was.sc2"
FileCopy RootDir + "was.sc3", fnpath & "\was.sc3"
FileCopy RootDir + "was.sc4", fnpath & "\was.sc4"
FileCopy RootDir + "was.sc8", fnpath & "\was.sc8"
FileCopy RootDir + "was.scn", fnpath & "\was.scn"
'FileCopy RootDir + "alpha2.inc", fnpath & "\alpha2.inc"
Copy PYTHON
Copy BAT
RUN BAT


ScenNm = fn$
ScenDt = FileDateTime(RootDir + "saved\" & ScenNm)

scensummary

FileCopy RootDir + "scensum.txt", fnpath & "\scensum.txt"
FileCopy RootDir + "scensum.txt", RootDir + "saved\" & fn$


Open fnpath & "\" & fn$ & ".inp" For Output As #1

'add in mode of run--whether countrified or Regional

Print #1, MODE

Print #1, DEM
Print #1, SUPMULT

For jloop! = 1 To DistCount
    For dloop! = 1 To 3
        Print #1, beta(jloop!, dloop!)
    Next
Next

'This code has been modified to allow for alpha to be
'specified for each district
'ath

For I = 1 To DistCount
    For sloop! = 1 To 3
        Print #1, alpha2(I, sloop!)
    Next
Next

'this writes the supply information

For I = 0 To Israel.D_length - 1
    For sloop! = 0 To 4
        Print #1, QSMAXISR(I, sloop!)
        Print #1, CSISR(I, sloop!)
    Next
Next

offset = 0
For I = 0 To Jordan.D_length - 1
    For sloop! = 0 To 4
        Print #1, QSMAXJRD(I + offset, sloop!)
        Print #1, CSJRD(I + offset, sloop!)
    Next
Next

offset = 0
For I = 0 To PNA.D_length - 1
    For sloop! = 0 To 4
        Print #1, QSMAXPNA(I + offset, sloop!)
        Print #1, CSPNA(I + offset, sloop!)
    Next
Next

'this writes the desalination information

For jloop! = 1 To 13
    Print #1, D(jloop!)
Next

For jloop! = 1 To 13
    Print #1, DC(jloop!)
Next

For jloop! = 1 To DistCount
    Print #1, R(jloop!), RC(jloop!), RP(jloop!), RCAP(jloop!)
Next

For jloop! = 1 To DistCount
    Print #1, Q(jloop!)
Next

For jloop! = 1 To DistCount
    Print #1, QQ(jloop!, 1), QQ(jloop!, 2), QQ(jloop!, 3), QQ(jloop!, 4), QQ(jloop!, 5)
Next

For jloop! = 1 To DistCount
    Print #1, QP(jloop!, 1), QP(jloop!, 2), QP(jloop!, 3), QP(jloop!, 4), QP(jloop!, 5)
Next

For jloop! = 1 To DistCount
    Print #1, QR(jloop!)
Next

For jloop! = 1 To DistCount
    Print #1, QQR(jloop!, 1), QQR(jloop!, 2), QQR(jloop!, 3), QQR(jloop!, 4), QQR(jloop!, 5)
Next

For jloop! = 1 To DistCount
    Print #1, QPR(jloop!, 1), QPR(jloop!, 2), QPR(jloop!, 3), QPR(jloop!, 4), QPR(jloop!, 5)
Next

For jloop! = 1 To DistCount
    Print #1, QU(jloop!)
Next

For jloop! = 1 To DistCount
    Print #1, QQU(jloop!, 1), QQU(jloop!, 2), QQU(jloop!, 3), QQU(jloop!, 4), QQU(jloop!, 5)
Next

For jloop! = 1 To DistCount
    Print #1, QPU(jloop!, 1), QPU(jloop!, 2), QPU(jloop!, 3), QPU(jloop!, 4), QPU(jloop!, 5)
Next

For jloop! = 1 To DistCount
    Print #1, QI(jloop!)
Next

For jloop! = 1 To DistCount
    Print #1, QQI(jloop!, 1), QQI(jloop!, 2), QQI(jloop!, 3), QQI(jloop!, 4), QQI(jloop!, 5)
Next

For jloop! = 1 To DistCount
    Print #1, QPI(jloop!, 1), QPI(jloop!, 2), QPI(jloop!, 3), QPI(jloop!, 4), QPI(jloop!, 5)
Next

For iloop! = 1 To DistCount
    For dloop! = 1 To 3
        Print #1, SubRate(iloop!, dloop!), SubAmt(iloop!, dloop!)
    Next
Next


Print #1, Country


' Set up arrays for changes in connections

For jloop! = 1 To TotalCount
    For iloop! = 1 To TotalCount
        Print #1, ARC0(jloop!, iloop!)
    Next
Next

For jloop! = 1 To DistCount
    For iloop! = 1 To DistCount
        Print #1, ARCR0(jloop!, iloop!)
    Next
Next

For jloop! = 1 To TotalCount
    For iloop! = 1 To TotalCount
        Print #1, CTR(jloop!, iloop!)
    Next
Next

For jloop! = 1 To DistCount
    For iloop! = 1 To DistCount
        Print #1, CTRY(jloop!, iloop!)
    Next
Next

For jloop! = 1 To TotalCount
    For iloop! = 1 To TotalCount
        Print #1, QTRUP(jloop!, iloop!)
    Next
Next

For jloop! = 1 To DistCount
    For iloop! = 1 To DistCount
        Print #1, QTRYUP(jloop!, iloop!)
    Next
Next

'write cost of treatment or environmental discharges

For jloop! = 1 To DistCount
    For iloop! = 1 To 3
        Print #1, ce(jloop!, iloop!)
    Next
Next

'write environmental setaside quantities and unpaid-for water

For jloop! = 1 To DistCount
    Print #1, setaside(jloop!)
        For iloop! = 1 To 3
            Print #1, pr_unpaid(jloop!, iloop!)
        Next
Next

'write values for the common pool resources

Print #1, COMPNUM
For iloop! = 1 To 20
    Print #1, COMPQUANT(iloop!)
    For jloop! = 1 To 20
        Print #1, commonpool(iloop!, jloop!)
    Next
    For jloop! = 1 To 3
        Print #1, ownership(jloop!, iloop!)
    Next
Next

'write values related to the substitutability of recycled water

For I = 1 To DistCount
    Print #1, SUBQON(I)
    Print #1, SUBPON(I)
    Print #1, CUSEREC(I)
    Print #1, PRECMAX(I)
    Print #1, QRECMAX(I)
Next

'write the values related to special users

For I = 1 To DistCount
    For J = 1 To 3
        Print #1, qrequired(I, J)
        Print #1, minq(I, J)
        Print #1, losses(I, J)
    Next
Next

'write the values for leakage

For I = 1 To DistCount
    Print #1, DL(I)
Next

For jloop! = 1 To TotalCount
    For iloop! = 1 To TotalCount
        Print #1, TL(jloop!, iloop!)
    Next
Next

For jloop! = 1 To DistCount
    For iloop! = 1 To DistCount
        Print #1, TLR(jloop!, iloop!)
    Next
Next

For jloop! = 1 To 13
    Print #1, DESALMAX(jloop!)
Next


Close #1

Describe.Show
End If
End Sub
Private Sub Label22_Click()
On Error Resume Next
    Dim DefVal, msg, Title  ' Declare variables.
    msg = "Enter a result scenario name of less than 8 characters (with no blanks)"  ' Set prompt.
    Title = "Load Results" ' Set title.
    DefVal = "RES1"    ' Set default return value.
    Do
        fn$ = InputBox(msg, Title, DefVal)   ' Get user input.
    Loop Until Len(fn$) <= 8
fnpath = RootDir & fn$
    MsgBox "Results loaded from """ & fnpath & """" ' Display message.
MkDir fnpath
FileCopy fnpath & "\was.ot0", RootDir + "was.ot0"
FileCopy fnpath & "\was.ot1", RootDir + "was.ot1"
FileCopy fnpath & "\was.ot2", RootDir + "was.ot2"
FileCopy fnpath & "\was.ot3", RootDir + "was.ot3"
FileCopy fnpath & "\was.ot4", RootDir + "was.ot4"
FileCopy fnpath & "\was.ot5", RootDir + "was.ot5"
FileCopy fnpath & "\was.ot6", RootDir + "was.ot6"
FileCopy fnpath & "\was.ot7", RootDir + "was.ot7"
FileCopy fnpath & "\was.ot8", RootDir + "was.ot8"
FileCopy fnpath & "\was.ot9", RootDir + "was.ot9"
FileCopy fnpath & "\was.sc1", RootDir + "was.sc1"
FileCopy fnpath & "\was.sc2", RootDir + "was.sc2"
FileCopy fnpath & "\was.sc3", RootDir + "was.sc3"
FileCopy fnpath & "\was.sc4", RootDir + "was.sc4"
FileCopy fnpath & "\was.sc8", RootDir + "was.sc8"
FileCopy fnpath & "\was.scn", RootDir + "was.scn"
FileCopy fnpath & "\titlepg.txt", RootDir + "titlepg.txt"

Describe.Show

End Sub
Private Sub Label23_Click()
    Scenarios.Show
End Sub
Private Sub Label24_Click()

alphup
demmltup
quotas
Recy
quit.Show

End Sub
Private Sub Label25_Click()

    helpind = 15
    helpout.Show

End Sub





Private Sub Label27_Click()
    
    helpind = 14
    helpout.Show

End Sub

Private Sub Label28_Click()

    dispres.Show

End Sub

Private Sub Label29_Click()

' Show cost-benefit form
   
   costbenefit.Show

End Sub
Private Sub Label3_Click(index As Integer)

    helpind = 0
    helpout.Show
    
End Sub

Private Sub Label30_Click()
    SCH1
    Prg_Schem_mdi.Show

End Sub

Private Sub Label34_Click()
    LoadRes.Show
End Sub

Private Sub Label36_Click()
    del.Show
End Sub

Private Sub Label37_Click()
    helpind = 16
    helpout.Show
End Sub
Private Sub Label38_Click()
    helpind = 19
    helpout.Show
End Sub
Private Sub Label39_Click()

'modify for country mode of the program
Select Case MODE
    Case "Regional"
        helpind = 18
    Case "Israel"
        helpind = 21
    Case "Jordan"
        helpind = 22
    Case "PNA"
        helpind = 23
End Select
' create help file with all current district names
'Header = "List of Districts in the " + Chr(13) + _
'         "Water Allocation System Model" + Chr(13) + Chr(13)

    helpout.Show

End Sub

Private Sub Label4_Click()
    
    special.Show
    
End Sub

Private Sub Label40_Click()
    Leak.Show
End Sub

Private Sub Label41_Click()
    
    helpind = 8
    helpout.Show

End Sub

Private Sub Label42_Click()

    ConnectionsY.Show

End Sub

Private Sub Label43_Click()

    TrnsCst.Show

End Sub

Private Sub Label44_Click()

    helpind = 7
    helpout.Show

End Sub

Private Sub Label45_Click()

    helpind = 9
    helpout.Show

End Sub

Private Sub Label46_Click()

    TrnsCstY.Show

End Sub

Private Sub Label48_Click()

    alp.Show

End Sub

Private Sub Label5_Click(index As Integer)
helpind = 17
helpout.Show
End Sub

Private Sub Label6_Click()

    helpind = 11
    helpout.Show

End Sub
Private Sub Label8_Click()
    helpind = 20
    helpout.Show
End Sub
Private Sub Label7_Click()
    env_charge.Show
End Sub
Private Sub label9_Click()
    helpind = 9
    helpout.Show
End Sub
Private Sub Labelsup_Click()
    helpind = 2
    helpout.Show
End Sub
Private Sub Pls_Click(index As Integer)

Natpol = "PNA"
Select Case Pls(1).Text

Case "Agr. Price Policy"
    Policy.Show
    Polsect = "agricultural"
Case "Ind. Price Policy"
    Policy.Show
    Polsect = "industrial"
Case "Urb. Price Policy"
    Policy.Show
    Polsect = "urban"
Case "Remove All Policies"
    Uinput = MsgBox("Remove All Policies?", vbOKCancel, "WAS")
    If Uinput <> vbCancel Then
        offset = Israel.D_length + Jordan.D_length
        For jloop! = 1 To PNA.D_length
            For Polnumb = 1 To 3
                SubRate(jloop! + offset, Polnumb) = 0
                SubAmt(jloop! + offset, Polnumb) = 0
            Next
            QU(jloop! + offset) = 0
            QI(jloop! + offset) = 0
            Q(jloop! + offset) = 0
            QR(jloop! + offset) = 0
            For sloop! = 1 To 5
                QPU(jloop! + offset, sloop!) = 0
                QQU(jloop! + offset, sloop!) = 0
                QPI(jloop! + offset, sloop!) = 0
                QQI(jloop! + offset, sloop!) = 0
                QP(jloop! + offset, sloop!) = 0
                QQ(jloop! + offset, sloop!) = 0
                QPR(jloop! + offset, sloop!) = 0
                QQR(jloop! + offset, sloop!) = 0
            Next
        Next
    End If
    WAS30.Pls(1).Text = "Select Policy"
End Select



End Sub
Private Sub Year_Click(index As Integer)

Select Case Year(1).Text
   Case "1995"
        DEM = 1
   Case "2010"
        DEM = 2
   Case "2020"
        DEM = 3
End Select

Select Case DEM
   Case 1
    FileCopy RootDir + "d1995.inc", RootDir + "dem.inc"
    FileCopy RootDir + "p1995.inc", RootDir + "pop.inc"
   Case 2
    FileCopy RootDir + "d2010.inc", RootDir + "dem.inc"
    FileCopy RootDir + "p2010.inc", RootDir + "pop.inc"
    Open RootDir + "pop.inc" For Input As #1
    Line Input #1, linestuff
    Line Input #1, linestuff

    For I = 1 To DistCount
        d_id = Input(3, #1)
        Input #1, pop(I)
        popdef(I) = pop(I)
    Next

    Close #1
   Case 3
    FileCopy RootDir + "d2020.inc", RootDir + "dem.inc"
    FileCopy RootDir + "p2020.inc", RootDir + "pop.inc"
    Open RootDir + "pop.inc" For Input As #1
    Line Input #1, linestuff
    Line Input #1, linestuff

    For I = 1 To DistCount
        d_id = Input(3, #1)
        Input #1, pop(I)
        popdef(I) = pop(I)
    Next

    Close #1
End Select

End Sub
Sub demmltup()

    Open RootDir + "demmult.inc" For Output As #1
    Print #1, "TABLE DEMMULT(i,d) Demand Multiplier"
    Print #1, "             URB           IND            AGR"
    For jloop! = 1 To DistCount
        Print #1, DistN(jloop!), beta(jloop!, 1), beta(jloop!, 2), beta(jloop!, 3)
    Next
    Print #1, ";"
    Close #1

End Sub

