#tag Window
Begin Window settingsDialog
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   323
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   323
   MaximizeButton  =   True
   MaxWidth        =   212
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   323
   MinimizeButton  =   True
   MinWidth        =   212
   Placement       =   0
   Resizeable      =   True
   Title           =   "Settings"
   Visible         =   True
   Width           =   212
   Begin PushButton okayButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   112
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   283
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton cancelButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   283
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin RadioButton minesRadioButton
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "More mines"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   171
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   172
   End
   Begin RadioButton minesRadioButton
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Average mines"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   203
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   172
   End
   Begin RadioButton minesRadioButton
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Fewer mines"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   235
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   172
   End
   Begin Label rowsLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "15 cells down"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   88
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   172
   End
   Begin Label colsLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "15 cells across"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   172
   End
   Begin Slider colsSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   25
      Minimum         =   10
      PageStep        =   20
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   53
      Transparent     =   False
      Value           =   15
      Visible         =   True
      Width           =   147
   End
   Begin Slider rowsSlider
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   25
      Minimum         =   10
      PageStep        =   20
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   120
      Transparent     =   False
      Value           =   15
      Visible         =   True
      Width           =   147
   End
   Begin Separator Separator1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   74
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   155
      Transparent     =   False
      Visible         =   True
      Width           =   64
   End
   Begin Separator Separator2
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   74
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   267
      Transparent     =   False
      Visible         =   True
      Width           =   64
   End
   Begin UpDownArrows acrossUpDownArrows
      AcceptFocus     =   False
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   179
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   53
      Transparent     =   False
      Visible         =   True
      Width           =   13
   End
   Begin UpDownArrows downUpDownArrows
      AcceptFocus     =   False
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   179
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   120
      Transparent     =   False
      Visible         =   True
      Width           =   13
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub setOkay()
		  if mainWindow.cols = self.cols and mainWindow.rows = self.rows and mainWindow.emptiesToMines = self.emptiesToMines and mainWindow.minesToEmpties = self.minesToEmpties then
		    okayButton.Enabled = false
		  else
		    okayButton.Enabled = True
		  end
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cols As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		emptiesToMines As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		minesToEmpties As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		rows As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events okayButton
	#tag Event
		Sub Action()
		  mainWindow.cols = self.cols
		  mainWindow.rows = self.rows
		  mainWindow.emptiesToMines = self.emptiesToMines
		  mainWindow.minesToEmpties = self.minesToEmpties
		  mainWindow.settingsChanged = True
		  close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cancelButton
	#tag Event
		Sub Action()
		  mainWindow.settingsChanged = false
		  Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events minesRadioButton
	#tag Event
		Sub Action(index as Integer)
		  minesToEmpties = 2
		  emptiesToMines = (index*3)+6
		  setOkay
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events colsSlider
	#tag Event
		Sub ValueChanged()
		  self.cols = me.Value
		  colsLabel.Text = str(me.Value)+" cells across"
		  setOkay
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rowsSlider
	#tag Event
		Sub ValueChanged()
		  self.rows = me.Value
		  rowsLabel.Text = str(me.Value)+" cells down"
		  setOkay
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="cols"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="emptiesToMines"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="minesToEmpties"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="rows"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
