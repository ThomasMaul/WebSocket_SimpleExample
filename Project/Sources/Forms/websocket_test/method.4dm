If (FORM Event:C1606.code=On Load:K2:1)
	Form:C1466.data:=Random:C100%100
	CALL WORKER:C1389("WebSocketServer"; "WebSocketServer"; "INIT"; Current form window:C827; Form:C1466.data)
End if 