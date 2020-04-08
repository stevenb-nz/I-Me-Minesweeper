#tag Class
Protected Class Cell
	#tag Method, Flags = &h0
		Sub Constructor()
		  cleared = false
		  flagged = false
		  mine = false
		  neighbours = 0
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		cleared As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		flagged As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		mine As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		neighbours As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="neighbours"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
