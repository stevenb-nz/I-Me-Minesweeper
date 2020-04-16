#tag Window
Begin Window mainWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   830
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   830
   MaximizeButton  =   True
   MaxWidth        =   950
   MenuBar         =   1626683391
   MenuBarVisible  =   True
   MinHeight       =   830
   MinimizeButton  =   True
   MinWidth        =   950
   Placement       =   0
   Resizeable      =   True
   Title           =   "I Me Minesweeper"
   Visible         =   True
   Width           =   950
   Begin PushButton newButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "New"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   850
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   790
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton settingsButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Settings"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   850
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   758
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label minesLabel
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
      Left            =   850
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0 Mines"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label flagsLabel
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
      Left            =   850
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0 Flags"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim goodClick as boolean
		  dim clickCellX,clickCellY,clickInCellX,clickInCellY as integer
		  
		  if activeGame then
		    goodClick = true
		    
		    clickCellX = x\xsquareSize
		    clickCellY = y\ysquareSize
		    clickInCellX = x mod xsquareSize
		    clickInCellY = y mod ysquareSize
		    if x < 10 or y < 10 then
		      goodClick = false
		    end
		    if x > xsquareSize*cols or y > ysquareSize*rows then
		      goodClick = False
		    end
		    if clickInCellx < 10 or clickInCellY < 10 then
		      goodClick = False
		    end
		    if goodClick then
		      if mineField(clickCellX+1,clickCellY+1).cleared then
		        goodClick = false
		      end
		    end
		    if goodClick then
		      if mineField(clickCellX+1,clickCellY+1).flagged then
		        mineField(clickCellX+1,clickCellY+1).flagged = false
		        flagged = flagged - 1
		        flagsLabel.text = str(flagged)+if(flagged=1," Flag"," Flags")
		      else
		        if (clickInCellx-10)/(xsquareSize-10)+(clickInCelly-10)/(ysquareSize-10) < 1 then
		          mineField(clickCellX+1,clickCellY+1).flagged = true
		          flagged = flagged + 1
		          flagsLabel.text = str(flagged)+if(flagged=1," Flag"," Flags")
		        else
		          if firstClick then
		            newGame(clickCellX,clickCellY)
		            firstClick = false
		          end
		          if mineField(clickCellX+1,clickCellY+1).mine then
		            MsgBox "You Lose!"
		            activeGame = false
		          else
		            clearClick(clickCellX,clickCellY)
		          end
		        end
		      end
		    end
		  end
		  refresh
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  dim i,j,cp1,rp1 as integer
		  
		  'get settings from DB
		  
		  xsquareSize = floor((self.height-10)/cols)
		  ysquareSize = floor((self.height-10)/rows)
		  
		  cp1 = cols+1
		  rp1 = rows+1
		  
		  redim mineField(cp1,rp1)
		  
		  for i = 0 to cp1
		    for j = 0 to rp1
		      mineField(i,j) = new Cell
		    next
		  next
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  dim i,j,xlimit,ylimit as integer
		  dim fontSize as integer
		  dim sw as Double
		  dim points() As Double
		  dim ps As String
		  
		  xlimit = xsquareSize*cols+10
		  ylimit = ysquareSize*rows+10
		  fontSize = (ysquareSize-10)/11*9
		  
		  g.PenWidth = 10
		  g.PenHeight = 10
		  g.DrawRect(0,0,xlimit,ylimit)
		  for i = 1 to cols
		    g.DrawLine(i*xsquareSize,0,i*xsquareSize,ylimit-10)
		  next
		  for j = 1 to rows
		    g.DrawLine(0,j*ysquareSize,xlimit-10,j*ysquareSize)
		  next
		  
		  for i = 1 to cols
		    for j = 1 to rows
		      if mineField(i,j).cleared then
		        g.ForeColor = Color.Green
		        points = Array(0.0,i*xsquareSize,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,j*ysquareSize,i*xsquareSize,j*ysquareSize)
		        g.FillPolygon(points)
		        if mineField(i,j).neighbours > 0 then
		          g.ForeColor = Color.Black
		          g.TextSize = fontsize
		          ps = str(mineField(i,j).neighbours)
		          sw = g.StringWidth(ps)
		          g.DrawString(ps,i*xsquareSize-(xsquaresize-10+sw)/2,j*ysquareSize-(ysquaresize-(fontsize+10))/2)
		        end
		      else
		        if mineField(i,j).flagged then
		          g.ForeColor = Color.Orange
		          points = Array(0.0,i*xsquareSize,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,j*ysquareSize,i*xsquareSize,j*ysquareSize)
		          g.FillPolygon(points)
		        else
		          if activeGame or not mineField(i,j).mine then
		            g.ForeColor = Color.Orange
		            points = Array(0.0,i*xsquareSize,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,j*ysquareSize)
		            g.FillPolygon(points)
		            g.ForeColor = Color.Green
		            points = Array(0.0,i*xsquareSize,(j-1)*ysquareSize+10,i*xsquareSize,j*ysquareSize,(i-1)*xsquareSize+10,j*ysquareSize )
		            g.FillPolygon(points)
		          else
		            g.ForeColor = Color.Red
		            points = Array(0.0,i*xsquareSize,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,(j-1)*ysquareSize+10,(i-1)*xsquareSize+10,j*ysquareSize,i*xsquareSize,j*ysquareSize)
		            g.FillPolygon(points)
		          end
		        end
		      end
		    next
		  next
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub clearClick(clickCellX As Integer, clickcellY As Integer)
		  mineField(clickCellX+1,clickcellY+1).cleared = true
		  cleared = cleared + 1
		  if cleared = rows*cols-round((rows*cols)/mineRatio) then
		    MsgBox "You Win!"
		    activeGame = False
		  end
		  if mineField(clickCellX+1,clickcellY+1).flagged then
		    mineField(clickCellX+1,clickcellY+1).flagged = false
		    flagged = flagged - 1
		    flagsLabel.text = str(flagged)+if(flagged=1," Flag"," Flags")
		  end
		  if mineField(clickCellX+1,clickcellY+1).neighbours = 0 then
		    if not mineField(clickCellX,clickcellY).cleared then
		      clearClick(clickCellX-1,clickcellY-1)
		    end
		    if not mineField(clickCellX,clickcellY+1).cleared then
		      clearClick(clickCellX-1,clickcellY)
		    end
		    if not mineField(clickCellX,clickcellY+2).cleared then
		      clearClick(clickCellX-1,clickcellY+1)
		    end
		    if not mineField(clickCellX+1,clickcellY+2).cleared then
		      clearClick(clickCellX,clickcellY+1)
		    end
		    if not mineField(clickCellX+2,clickcellY+2).cleared then
		      clearClick(clickCellX+1,clickcellY+1)
		    end
		    if not mineField(clickCellX+2,clickcellY+1).cleared then
		      clearClick(clickCellX+1,clickcellY)
		    end
		    if not mineField(clickCellX+2,clickcellY).cleared then
		      clearClick(clickCellX+1,clickcellY-1)
		    end
		    if not mineField(clickCellX+1,clickcellY).cleared then
		      clearClick(clickCellX,clickcellY-1)
		    end
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub newGame(clickCellX As Integer, clickcellY As Integer)
		  dim mineSetup(-1) as Boolean
		  dim i,j,mines,opening,unclickedcells as integer
		  
		  unclickedcells = rows*cols
		  mines = round(unclickedcells/mineRatio)
		  for i=1 to mines
		    mineSetup.Append true
		  next
		  if (clickCellX=0 or clickCellX=cols-1) and (clickCellY=0 or clickCellY=rows-1) then
		    opening = 4
		  ElseIf clickCellX=0 or clickCellX=cols-1 or clickCellY=0 or clickCellY=rows-1 then
		    opening = 6
		  else
		    opening = 9
		  end
		  for i=1 to unclickedcells-(mines+opening)
		    mineSetup.Append false
		  next
		  mineSetup.Shuffle
		  for i=1 to cols
		    for j=1 to rows
		      if abs(i-(clickCellX+1)) < 2 and abs(j-(clickCellY+1)) < 2 then
		        mineField(i,j).mine = false
		      else
		        mineField(i,j).mine = mineSetup.Pop
		      end
		      mineField(i,j).neighbours = 0
		    next
		  next
		  for i=1 to cols
		    for j=1 to rows
		      if mineField(i,j).mine then
		        mineField(i+1,j).neighbours = mineField(i+1,j).neighbours+1
		        mineField(i+1,j+1).neighbours = mineField(i+1,j+1).neighbours+1
		        mineField(i,j+1).neighbours = mineField(i,j+1).neighbours+1
		        mineField(i-1,j+1).neighbours = mineField(i-1,j+1).neighbours+1
		        mineField(i-1,j).neighbours = mineField(i-1,j).neighbours+1
		        mineField(i-1,j-1).neighbours = mineField(i-1,j-1).neighbours+1
		        mineField(i,j-1).neighbours = mineField(i,j-1).neighbours+1
		        mineField(i+1,j-1).neighbours = mineField(i+1,j-1).neighbours+1
		      end
		    next
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		activeGame As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		cleared As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		cols As Integer = 15
	#tag EndProperty

	#tag Property, Flags = &h0
		firstClick As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		flagged As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		mineField(-1,-1) As Cell
	#tag EndProperty

	#tag Property, Flags = &h0
		mineRatio As Integer = 6
	#tag EndProperty

	#tag Property, Flags = &h0
		rows As Integer = 15
	#tag EndProperty

	#tag Property, Flags = &h0
		xsquareSize As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ysquareSize As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events newButton
	#tag Event
		Sub Action()
		  dim i,j as integer
		  
		  minesLabel.Text = str(round((rows*cols)/mineRatio))+" Mines"
		  for i=1 to cols
		    for j=1 to rows
		      mineField(i,j).cleared = false
		      mineField(i,j).flagged = false
		    next
		  next
		  cleared = 0
		  flagged = 0
		  flagsLabel.text = str(flagged)+if(flagged=1," Flag"," Flags")
		  activeGame = true
		  firstClick = true
		  Refresh
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events settingsButton
	#tag Event
		Sub Action()
		  activeGame = false
		  Refresh
		  
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
		Name="mineRatio"
		Group="Behavior"
		InitialValue="5"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="cols"
		Group="Behavior"
		InitialValue="15"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="rows"
		Group="Behavior"
		InitialValue="15"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="activeGame"
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="xsquareSize"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ysquareSize"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="firstClick"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="cleared"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="flagged"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
